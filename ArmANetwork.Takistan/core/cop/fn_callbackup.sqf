/*
	Script file made by: Maximum
	Idea based off: Liemans script - did way to much to achieve the same thing.
	Description: Lets a officer request backup VIA scroll menu, made for AltisLifeRPG.com
*/
private["_backupTime","_msg"];
if(!life_callBackup) exitWith {hint "You're not able to make a new call again so fast!"};
_backupTime = 60;
_msg = mapGridPosition player;
[objNull,_msg,player,9] remoteExecCall ["TON_fnc_handleMessages",2];
[player,_backupTime] remoteExec ["life_fnc_backupCall",west];
life_callBackup = false;
[] spawn
{
	uiSleep 320;
	life_callBackup = true;
};
hint format ["%1 You can now call for backup again",name player];
