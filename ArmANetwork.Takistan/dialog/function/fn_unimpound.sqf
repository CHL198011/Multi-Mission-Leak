#include <macro.h>

/*
	File: fn_unimpound.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Yeah... Gets the vehicle from the garage.
*/
private["_vehicle","_vid","_pid","_unit","_price"];
disableSerialization;
if(EQUAL(lbCurSel 2802,-1)) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = steamid;
_unit = player;

if(isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};

_price = switch(playerSide) do {
	case civilian: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_vehicle,"storageFee"),0)};
	case west: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_vehicle,"storageFee"),1)};
	case independent: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_vehicle,"storageFee"),2)};
	case east: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_vehicle,"storageFee"),4)};
};

if(!(EQUAL(typeName _price,typeName 0)) OR _price < 1) then {_price = 1000};
if(BANK < _price) exitWith {hint format[(localize "STR_Garage_CashError"),[_price] call life_fnc_numberText];};

if(EQUAL(typeName life_garage_sp,typeName [])) then {
	[[_vid,_pid,SEL(life_garage_sp,0),_unit,_price,SEL(life_garage_sp,1)],"TON_fnc_spawnVehicle",false,false] call life_fnc_MP;
} else {
	if(life_garage_sp in ["medic_spawn_1","medic_spawn_2","medic_spawn_3"]) then {
		[[_vid,_pid,life_garage_sp,_unit,_price],"TON_fnc_spawnVehicle",false,false] call life_fnc_MP;
	} else {
		[[_vid,_pid,(getMarkerPos life_garage_sp),_unit,_price,markerDir life_garage_sp],"TON_fnc_spawnVehicle",false,false] call life_fnc_MP;
	};
};
_price = 0;

hint localize "STR_Garage_SpawningVeh";

if ((typeOf _vehicle) in ["Cha_Mi24_D"]) then
{
	_vehicle setVehicleAmmo 0.5;

};

if ((typeOf _vehicle) in ["O_MRAP_02_F"]) then
{
	_vehicle setVehicleAmmo 0;

};

if ((typeOf _vehicle) in ["O_APC_Wheeled_02_rcws_F"]) then
{
	_vehicle setVehicleAmmo 0.4;

};

if ((typeOf _vehicle) in ["O_MBT_02_cannon_F"]) then
{
	_vehicle setVehicleAmmo 0.4;

};

if ((typeOf _vehicle) in ["sab_UN_UGV_armed"]) then
{
	_vehicle setVehicleAmmo 0.4;

};

_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.

SUB(BANK,_price);