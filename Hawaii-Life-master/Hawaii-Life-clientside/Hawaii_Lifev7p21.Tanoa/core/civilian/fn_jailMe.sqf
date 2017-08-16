#include "..\..\script_macros.hpp"
/*
	Author Bryan "Tonic" Boardwine
	
	Description:
	Once word is received by the server the rest of the jail execution is completed.
*/
private["_time","_bail","_esc","_countDown"];

params [
	["_ret",[],[[]]],
	["_bad",false,[false]],
	["_time",15,[0]]
];

_time = time + (_time * 60);

if(count _ret > 0) then { life_bail_amount = SEL(_ret,3); } else { life_bail_amount = 999999;};
_esc = false;
_bail = false;

life_canpay_bail = false;
/*
[_bad] spawn {
	life_canpay_bail = false;
	if !(_this select 0) then {
		sleep (5 * 60);
		life_canpay_bail = nil;
	};
};
*/


player SVAR["restrained",true,true];

while {true} do {
	if((round(_time - time)) > 0) then {
		_countDown = [(_time - time),"MM:SS.MS"] call BIS_fnc_secondsToString;
		hintSilent parseText format[(localize "STR_Jail_Time")+ "<br/> <t size='2'><t color='#FF0000'>%1</t></t><br/><br/>" +(localize "STR_Jail_Pay")+ " %3<br/>" +(localize "STR_Jail_Price")+ " $%2",_countDown,[life_bail_amount] call life_fnc_numberText,if(isNil "life_canpay_bail") then {"Yes"} else {"No"}];
	};
	
	if(player distance (getMarkerPos "jail_marker") > 50) exitWith {
		_esc = true;
	};
	
	if(player distance (getMarkerPos "jail_marker") > 32) then {
		if(vehicle player isEqualTo player) then {
			player setPos (getMarkerPos "jail_marker");
			player setPosATL [getPosATL player select 0, getPosATL player select 1,((getPosATL player select 2) + 2.3)];
			0 cutText["Wie bist du denn ohne Fahrzeug da raus gekommen??","PLAIN"];
		};
	};
	
	if(life_bail_paid) exitWith {
		_bail = true;
	};
	
	if((round(_time - time)) < 1) exitWith {hint ""};
	if(!alive player && ((round(_time - time)) > 0)) exitWith {};
	sleep 0.1;
};


switch (true) do {
	case (_bail): {
		life_is_arrested = false;
		life_bail_paid = false;
		hint localize "STR_Jail_Paid";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		player SVAR ["restrained",false,true];
		if (life_HC_isActive) then {
			[getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_Life];
		} else {
			[getPlayerUID player] remoteExecCall ["life_fnc_wantedRemove",RSERV];
		};
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (_esc): {
		life_is_arrested = false;
		hint localize "STR_Jail_EscapeSelf";
		player SVAR ["restrained",false,true];
		[0,"STR_Jail_EscapeNOTF",true,[profileName]] remoteExecCall ["life_fnc_broadcast",RCLIENT];
		if (life_HC_isActive) then {
			[getPlayerUID player,profileName,"901"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
		} else {
			[getPlayerUID player,profileName,"901"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
		};
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (alive player && !_esc && !_bail): {
		life_is_arrested = false;
		hint localize "STR_Jail_Released";
		if (life_HC_isActive) then {
			[getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_Life];
		} else {
			[getPlayerUID player] remoteExecCall ["life_fnc_wantedRemove",RSERV];
		};
		player setPos (getMarkerPos "jail_release");
		player SVAR ["restrained",false,true];
		[5] call SOCK_fnc_updatePartial;
	};
};