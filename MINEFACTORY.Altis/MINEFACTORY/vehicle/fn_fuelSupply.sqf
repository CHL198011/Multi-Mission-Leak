
/*
	File: fn_fuelSupply.sqf
	Author: Ulrich "Zero" Werren
	
	Description:
	Fuel Tank Job, Fill Gas Station with Fuel.
*/


private["_vehicle","_fuelSpace","_fuelState","_fuelFeedState","_fuelLevel","_distance","_shortest","_random","_another","_ui","_progress","_pgText","_win","_price","_pricem"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};
if(!isNil {_vehicle getVariable "fuelTankWork"}) exitWith {titleText[ "Tankwagen wird bereits benutzt","PLAIN"];};
closeDialog 0;

life_action_inUse = true;

if(isNil {_vehicle getVariable "fuelTank"}) then{
	_fuelSpace = getNumber(missionConfigFile >> "LifeCfgVehicles" >> (typeOf _vehicle) >> "vFuelSpace");
	_fuelState = 0;
	_vehicle setVariable ["fuelTank",[_fuelSpace,_fuelState],true];
}else{
	_fuelSpace = (_vehicle getVariable "fuelTank") select 0;
	_fuelState = (_vehicle getVariable "fuelTank") select 1;
};

_another = false;
{
	if(!isNil {_x getVariable "fuelTankWork"}) exitwith {_another};
} foreach (nearestObjects [_vehicle, ["C_Van_01_fuel_F","I_Truck_02_fuel_F","B_Truck_01_fuel_F"], 100]);

if(_another)exitwith{titleText[ "Tankstelle wird bereits beliefert","PLAIN"];life_action_inUse = false;};

if(_fuelState <= 0) exitwith {
	titleText[ "Treibstofftank ist leer","PLAIN"];
	life_action_inUse = false;
};


_fuelFeedState = 0;
_random = floor((random 11000) + 1500);

{
	if(isNil {_x getVariable "fuelTank"}) then{
		_x setVariable ["fuelTank",[_random,time],true];
		_fuelFeedState = _random;
	}else{
		_fuelFeedState = (_x getVariable "fuelTank") select 0;
		if(_fuelFeedState <= 0) then {
			if(time >= ((_x getVariable "fuelTank") select 1)) then {
				_x setVariable ["fuelTank",[_random,time],true];
				_fuelFeedState = _random;
			};
		};
	};
} foreach (nearestObjects [_vehicle, ["Land_FuelStation_Feed_F","Land_fs_feed_F"], 100]);

if(_fuelFeedState <= 0) exitwith {titleText [ "Tankstelle hat genug Treibstoff","PLAIN"]; life_action_inUse = false;};

_shortest = 100000;
{
	_distance = _vehicle distance (getMarkerPos _x);
	if(_distance < _shortest) then { _shortest = _distance};
} foreach ["fuel_storage_1","fuel_storage_2"];

if(_distance < 1000) exitwith {titleText [ "Diese Tankstelle wird über eine Pipeline versorgt","PLAIN"]; life_action_inUse = false;};

_pricem = getNumber(missionConfigFile >> "Life_Settings" >> "FuelTank_WinMultiplier");
_price = floor((((floor(_shortest / 100) * 100) / 1337) * _pricem) * 100) / 100;
_win = 0;

_vehicle setVariable ["fuelTankWork",true,true];
_vehicle remoteExec ["life_fnc_soundDevice",-2];
life_action_inUse = false;

disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Tank  %1 Ltr / %2 Ltr",_fuelState,_fuelSpace];
_fuelLevel = (1 / _fuelSpace) * _fuelState;
_progress progressSetPosition _fuelLevel;

waitUntil {
	if(!alive _vehicle OR isNull _vehicle) exitWith {true};
	if(isEngineOn _vehicle) exitWith {titleText[ "Vorgang abgebrochen","PLAIN"]; true};
	if(isNil {_vehicle getVariable "fuelTankWork"}) exitWith {titleText[ "Vorgang abgebrochen","PLAIN"]; true};
	if(player distance _vehicle > 20) exitwith {titleText[ "Vorgang abgebrochen","PLAIN"]; true};

	_fuelState = _fuelState - 100;
	_fuelFeedState = _fuelFeedState - 100;
	
	_win = _win + (_price * 100);
	_vehicle setVariable ["fuelTank",[_fuelSpace,_fuelState],true];

	_fuelLevel = (1 / _fuelSpace) * _fuelState;
	_progress progressSetPosition _fuelLevel;
	_pgText ctrlSetText format["Tank  %1 Ltr / %2 Ltr  ( $ %3 / Ltr )",_fuelState,_fuelSpace,_price];

	if(_fuelState == 0 || _fuelFeedState <= 0) exitWith {true};

	sleep 1;
	false
};


{
	if(_fuelFeedState <= 0) then{
		_x setVariable ["fuelTank",[0,(time + 1800)],true];
	}else{
		_x setVariable ["fuelTank",[_fuelFeedState,time],true];
	};
} foreach (nearestObjects [_vehicle, ["Land_FuelStation_Feed_F","Land_fs_feed_F"], 100]);

if(_fuelFeedState <= 0) then {titleText [ "Tankstelle hat genug Treibstoff","PLAIN"]};
if(_fuelState <= 0) then {titleText [ "Treibstofftank ist leer","PLAIN"]};
sleep 2;

life_cash = life_cash + _win;
[0] call SOCK_fnc_updatePartial;

titleText [format[ "Dein Anteil beträgt $%1", _win], "PLAIN"];
5 cutText ["","PLAIN"];
_vehicle setVariable ["fuelTankWork",nil,true];