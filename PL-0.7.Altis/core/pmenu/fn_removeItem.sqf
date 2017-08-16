#include "..\..\script_macros.hpp"
/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;

if(EQUAL(_data,"")) exitWith {hint "You didn't select anything to remove.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "You didn't enter an actual number format."};
if(parseNumber(_value) <= 0) exitWith {hint "You need to enter an actual amount you want to remove."};
if(EQUAL(ITEM_ILLEGAL(_data),1) && ([west,getPosWorld player,100] call life_fnc_nearUnits)) exitWith {titleText["Il s'agit d'un article illégal et les flics sont à proximité, vous ne pouvez pas supprimer items pour l'instant","PLAIN"]};
if(player != vehicle player) exitWith {titleText["You cannot remove an item when you are in a vehicle.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Couldn't remove that much of that item, maybe you don't have that amount?"};

hint format["Vous avez supprimé avec succès %1 %2 de votre inventaire.",(parseNumber _value),(localize ITEM_NAME(_data))];

[] call life_fnc_p_updateMenu;