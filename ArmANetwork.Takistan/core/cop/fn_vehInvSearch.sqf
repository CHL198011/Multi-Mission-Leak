#include <macro.h>

/*
	File: fn_vehInvSearch.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by [midgetgrimm]
	Description:
	Searches the vehicle for illegal items.
*/
private["_vehicle","_vehicleInfo","_value","_list"];
_vehicle = cursorTarget;
_list = ["Air","Ship","LandVehicle"];
if(isNull _vehicle OR {!(KINDOF_ARRAY(_vehicle,_list))}) exitWith {};

_vehicleInfo = _vehicle GVAR ["Trunk",[]];
if(_vehicle getVariable["purpose",""] == "truck_mission") then {
	_type = _vehicle getVariable["type","legal"];
	if (_type == "legal") then {
		hint format["This truck is a humanitarian truck working for Global Savant Nutrition Agency. Nothing illegal here."];
	} else {
		if(_vehicle getVariable["goodsRemoved","1"] == "1") then
		{
			hint "The goods in this truck have already been submitted to evidence. Impound the damn thing...";
		}	else {
			_vehicle setVariable["goodsRemoved","1",true];
			_price = 500;
			hint format["You have searched an illegal delivery truck and discovered $%1 worth of stolen electronics!",_price];
			ADD(BANK,_price);
		};
	};
} else {
	if(EQUAL(count _vehicleInfo,0)) exitWith {hint localize "STR_Cop_VehEmpty"};

	_value = 0;
	_illegalValue = 0;
	{
		_var = SEL(_x,0);
		_val = SEL(_x,1);
		_illegalItemVar = M_CONFIG(getText,"VirtualItems",_var,"variable");
		_illegalPrice = M_CONFIG(getNumber,"VirtualItems",_var,"sellPrice");
		_isIllegalItem = M_CONFIG(getNumber,"VirtualItems",_var,"illegal");
		if(_isIllegalItem == 1 ) then{
			_illegalValue = _illegalValue + (round(_val * _illegalPrice / 2));
		};
	} foreach (SEL(_vehicleInfo,0));
	_value = _illegalValue;
	if(_value > 0) then {
		[[0,"STR_NOTF_VehContraband",true,[[_value] call life_fnc_numberText]],"life_fnc_broadcast",true,false] call life_fnc_MP;
		ADD(BANK,_value);
		_vehicle SVAR ["Trunk",[],true];
	} else {
		if (!isNull _vehicle) then {
			closeDialog 0;
			sleep 0.01;
			[_vehicle] call life_fnc_openInventory;
			hintSilent "Force opened the inventory of the vehicle";
		} else {
			hintSilent "Trunk must be jammed..";
		};
	};
};
