#include "..\..\macros.hpp"
/*
			file: fn_robShops.sqf
			Author: MrKraken
			Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
			Description:
			Executes the rob shob action!
			Idea developed by PEpwnzya v2.0

*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip"];
_shop = param [0,ObjNull,[ObjNull]];
_robber = param [1,ObjNull,[ObjNull]];
_action = param [2];

if !(alive _robber) exitWith {};

_rip = true;
_kassa = 30000 + round(random 720000);
[_shop,_robber,_action,-1] remoteExec ["DWF_fnc_bankState",(if (DWEV_HC_isActive && DWEV_HC_VALID) then {hc_1} else {2})]; //sending information to the server so the animations and removeaction can be performed for all players if the checks clear.

[1] remoteExec ["DWF_fnc_lockBanks",2];

[2,format["€€€ ALARM! - %1 WIRD GERADE AUSGERAUBT! - ALARM! €€€", _shop]] remoteExec ["DWEV_fnc_broadcast",west];
	format["%1 wurde gesehen wie er in %2 einbrechen moechte.",getMyDName, _shop] remoteExec ["systemChat",-2];

//Maker setzten
_Pos = position player;
                _marker = createMarker ["Marker200", _Pos];
                "Marker200" setMarkerColor "ColorRed";
                "Marker200" setMarkerText "!ACHTUNG! BANKRAEUBER !ACHTUNG!";
                "Marker200" setMarkerType "mil_warning";

//Setup our progress bar.
disableSerialization;
5 cutRsc ["DWEV_progress","PLAIN"];
_ui = uiNameSpace getVariable "DWEV_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Bankraub läuft, in der nähe bleiben (5Meter) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
	while{true} do
	{
		uisleep  9.00;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Bankraub läuft, in der nähe bleiben (5Meter) (%1%2)...",round(_cP * 100),"%"];
		if(_cP >= 1) exitWith {};
		if(_robber distance _shop > 5) exitWith { };
		if!(alive _robber) exitWith {};
		if (DWEV_istazed) exitWith {};
		if (DWEV_isdowned) exitWith {};
	};

	if!(alive _robber) exitWith
	{
		_rip = false;
		hint "Bankraub gescheitert, weil du getoetet wurdest";
		[2,format["Überfall auf %1 ist gescheitert!", _shop]] remoteExec ["DWEV_fnc_broadcast",west];
	 };

	if (DWEV_istazed || DWEV_isdowned) exitWith
	{
		_rip = false;
		hint "Bankraub gescheitert, weil du von einem Polizisten niedergestreckt wurdest";
		[2,format["Überfall auf %1 ist gescheitert!", _shop]] remoteExec ["DWEV_fnc_broadcast",west];
		[getPlayerUID _robber,getPlayerName(_robber),"59"] remoteExec ["DWEV_fnc_wantedAdd",2];
	};

	if(_robber distance _shop > 5) exitWith
	{
		_rip = false;
		hint "Du hast dich zu weit entfernt!.";
		[2,format["Überfall auf %1 ist gescheitert!", _shop]] remoteExec ["DWEV_fnc_broadcast",west];
		[getPlayerUID _robber,getPlayerName(_robber),"59"] remoteExec ["DWEV_fnc_wantedAdd",2];
	};

	5 cutText ["","PLAIN"];
	titleText[format["Du hast %1€ geklaut, Hau ab bevor die Polizei kommt.",[_kassa] call DWEV_fnc_numberText],"PLAIN"];
	dwf_cash = dwf_cash + _kassa;
	_rip = false;
	DWEV_use_atm = false;
	sleep (20 + random(10));
	if!(alive _robber) exitWith {};

	format["Polizeinews - %2 wurde von %1 ausgeraubt und er hat %3€ erbeutet.",getPlayerDName(_robber), _shop, [_kassa] call DWEV_fnc_numberText] remoteExec ["systemChat",west];

	format["NEWS: %1 wurde ausgeraubt. Der Täter hat %2€ geklaut.", _shop, [_kassa] call DWEV_fnc_numberText] remoteExec ["systemChat",civilian];

	[getPlayerUID _robber,getPlayerName(_robber),"59"] remoteExec ["DWEV_fnc_wantedAdd",2];
};
deleteMarker "Marker200";
5 cutText ["","PLAIN"];
[_shop,_robber,_action,0] remoteExec ["DWF_fnc_bankState",0]; //We are now calling the serverside script again to tell it about the fact that robbery script is finnished clientside and the outcome.
sleep 450;
DWEV_use_atm = true;
