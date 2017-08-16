#include "..\..\script_macros.hpp"
/*
	File: fn_adminTpHere.sqf
	Author: ColinM9991
	
	Description:
	Teleport selected player to you.
*/
if(FETCH_CONST(life_adminlevel) < 5) exitWith {closeDialog 0; [localize "STR_ANOTF_ErrorLevel",5,"gray"] call RPG_Fnc_Msg;};

private["_target"];
_target = lbData[2902,lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
//if(_target == player) exitWith {hint localize "STR_ANOTF_Error";};

_target setVariable["restrained",FALSE,TRUE];
_target setVariable["Escorting",FALSE,TRUE];
_target setVariable["transporting",FALSE,TRUE];
detach _target;
[_target,"handcuffs"] spawn life_fnc_nearestSound;
_target switchMove "";