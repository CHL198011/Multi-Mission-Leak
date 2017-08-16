#include "..\..\script_macros.hpp"
/*
	File: fn_storeVehicle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Stores the vehicle in the garage.
*/
private["_nearVehicles","_vehicle"];
if(vehicle player != player) then {
	_vehicle = vehicle player;
} else {
	_nearVehicles = nearestObjects[getPos SEL(_this ,0),["Car","Air","Ship"],30]; //Fetch vehicles within 30m.
	if(count _nearVehicles > 0) then {
		{
			if(!isNil "_vehicle") exitWith {}; //Kill the loop.
			_vehData = _x GVAR ["vehicle_info_owners",[]];
			if(count _vehData  > 0) then {
				_vehOwner = SEL(SEL(_vehData,0),0);
				if((getPlayerUID player) isEqualTo _vehOwner) exitWith {
					_vehicle = _x;
				};
			};
		} foreach _nearVehicles;
	};
};

if(isNil "_vehicle") exitWith {hint localize "STR_Garage_NoNPC"};
if(isNull _vehicle) exitWith {};

if (life_HC_isActive) then {
	[_vehicle,false,(_this select 1)] remoteExec ["HC_fnc_vehicleStore",HC_Life];
} else {
	[_vehicle,false,(_this select 1)] remoteExec ["TON_fnc_vehicleStore",RSERV];
};
hint localize "STR_Garage_Store_Server";
life_garage_store = true;