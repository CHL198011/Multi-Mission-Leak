/* 
	Author: Maximum
	Description: Placeables for the cop\medic sides.
	Disclaimer: Don't be a asshole and pass this off as your own or become a KAI and sell it for profit, Im releasing this for FREE... Credits: Killerty69 for a second pare of eyes when mine got to sleepy
	P.S. - Don't be a faggot like i know some of you all will be.
	
	edited by: blackfisch
*/
disableSerialization;
if (count DWEV_bar_placey >= DWEV_bar_limit) exitWith
{ 
	hint "Du hast die maximale Anzahl Objekten erreicht!";
	closeDialog 0;
};

_display = findDisplay 20000;
_placeables = _display displayCtrl 20001;
_className = lbData[20001, lbCurSel (20001)];
closeDialog 0;
_check = nearestObjects[player,["LandVehicle","Air"],6];
if(count _check > 0) exitWith {	hint "Du kannst das Objekt hier nicht aufstellen";};
DWEV_barrier_active = true;
_allowMoveDistance = 50;
_object = _className createVehicle (position player);
DWEV_barrier_activeObj = _object;
_attachPos = [0, 3, 0.5];
_object attachTo[player, _attachPos];
_object enableSimulationGlobal false;
_originalPos = position _object;
_playerOriginalPos = position player;

waitUntil
{
	if (DWEV_barrier_activeObj distance _originalPos > _allowMoveDistance || player distance _playerOriginalPos > _allowMoveDistance) then
	{
		[true] call DWEV_fnc_placeableCancel;
    };
    sleep 1;
    !DWEV_barrier_active;
};