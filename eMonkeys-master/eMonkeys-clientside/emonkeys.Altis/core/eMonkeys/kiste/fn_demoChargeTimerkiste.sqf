/*
	READ THE FILE NAME!
*/
private["_uiDisp","_time","_timer"];
disableSerialization;
6 cutRsc ["EMonkeys_timer","PLAIN"];
_uiDisp = uiNamespace getVariable "EMonkeys_timer";
_timer = _uiDisp displayCtrl 38301;
_time = time + (5 * 60);
while {true} do {
	if(isNull _uiDisp) then {
		6 cutRsc ["EMonkeys_timer","PLAIN"];
		_uiDisp = uiNamespace getVariable "EMonkeys_timer";
		_timer = _uiDisp displayCtrl 38301;
	};
	if(round(_time - time) < 1) exitWith {};
	if(!(airdrop_kiste getVariable["chargeplacedkiste",false])) exitWith {};
	_timer ctrlSetText format["%1",[(_time - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
	uisleep 0.08;
};
6 cutText["","PLAIN"];