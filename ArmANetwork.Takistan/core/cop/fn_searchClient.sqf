#include <macro.h>

/*
	File: fn_searchClient.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Searches the player and he returns information back to the player.
*/
private["_cop","_inv","_val","_var","_robber"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};
_inv = [];
_robber = false;

//Illegal items
{
	_var = configName(_x);
	_val = ITEM_VALUE(_var);
	if(_val > 0) then {
		_inv pushBack [_var,_val];
		[false,_var,_val] call life_fnc_handleInv;
	};
} foreach ("getNumber(_x >> 'illegal') isEqualTo 1" configClasses (missionConfigFile >> "VirtualItems"));

if(!life_use_atm) then  {
	CASH = 0;
	_robber = true;
};

[[player,_inv,_robber],"life_fnc_copSearch",_cop,false] call life_fnc_MP;