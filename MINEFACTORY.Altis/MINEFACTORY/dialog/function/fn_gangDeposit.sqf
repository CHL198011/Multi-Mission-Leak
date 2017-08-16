#include "..\..\..\script_macros.hpp"
/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Deposits money into the players gang bank.
*/
private["_value"];
_value = parseNumber(ctrlText 2702);
grpPlayer setVariable["gbank_in_use_by",player,true];

//Series of stupid checks
if(_value > 999999) exitWith {hint  "Du kannst nicht mehr als $999,999 gleichzeitig einzahlen";};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint  "Die eingegebene Zahl ist keine richtige Zahl"};
if(_value > CASH) exitWith {hint  "Du hast nicht so viel Geld bei dir."};
if((grpPlayer getVariable ["gbank_in_use_by",player]) != player) exitWith {hint  "AbhebenMin"}; //Check if it's in use.

SUB(CASH,_value);
_gFund = GANG_FUNDS;
ADD(_gFund,_value);
grpPlayer SVAR ["gang_bank",_gFund,true];

if(life_HC_isActive) then {
	[1,grpPlayer] remoteExecCall ["HC_fnc_updateGang",HC_Life];
} else {
	[1,grpPlayer] remoteExecCall ["TON_fnc_updateGang",RSERV];
};

hint format[ "EinzahlenSuccessG",[_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial; //Silent Sync