#include <macro.h>

/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Retrains the client.
*/
private["_cop","_player"];
_cop = param [0,Objnull,[Objnull]];
_player = player;
if(isNull _cop) exitWith {};

//Monitor excessive restrainment
[] spawn {
	private "_time";
	while {true} do {
		_time = time;
		waitUntil {(time - _time) > (10 * 60)};

		if(!(player GVAR ["restrained",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player GVAR ["restrained",FALSE]) && vehicle player == player) exitWith {
			player SVAR ["restrained",FALSE,TRUE];
			player setVariable["restrainedtype",nil];
			player SVAR ["Escorting",FALSE,TRUE];
			player SVAR ["transporting",false,true];
			player setVariable ["tf_unable_to_use_radio", true];
			detach player;
			titleText[localize "STR_Cop_ExcessiveRestrain","PLAIN"];
		};
	};
};

if((player GVAR["surrender",FALSE])) then { player SVAR["surrender",FALSE,TRUE]; player switchMove ""; };

titleText[format[localize "STR_Cop_Retrained",_cop GVAR ["realname",name _cop]],"PLAIN"];

while {player GVAR  "restrained"} do {
	if(vehicle player == player) then {
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};

	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player GVAR "restrained") || vehicle player != _state};

	if(!alive player) exitWith {
		player setVariable ["restrained", nil, true];
		player setVariable ["Escorting", nil, true];
		player setVariable ["transporting", nil, true];
		detach _player;
	};

	if(!alive _cop) exitWith {
		player setVariable ["Escorting", nil, true];
		detach player;
	};

	if(vehicle player != player) then {
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	};
};

//disableUserInput false;

if(alive player) then {
	player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
	player SVAR ["Escorting",false,true];
	player SVAR ["transporting",false,true];
	detach player;
};
