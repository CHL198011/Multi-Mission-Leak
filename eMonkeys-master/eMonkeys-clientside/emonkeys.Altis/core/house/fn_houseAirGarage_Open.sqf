/*
*
* houseGarage_Open [player]
*/

private["_name", "_exdata", "_setarr", "_price", "_canbuy", "_car_spawn"];

_exdata = missionNamespace getVariable "house_current_exdata";

if(isNil "_exdata") exitWith
{
	hint "Error: exdata is NULL. Cancelling.";
};

if( ! ([_exdata, "VIP"] call EMonkeys_fnc_houseExtractDataVal) ) exitWith { hint "Das ist kein VIP-Haus!"; };

_name = [_exdata, "name"] call EMonkeys_fnc_houseExtractDataVal;
_car_spawn = [_exdata, "marker_car_spawn"] call EMonkeys_fnc_houseExtractDataVal;

closeDialog 0;

//Call vehicle Garage
["","","",["air",_car_spawn,["air"],[civilian,opfor]]] call EMonkeys_fnc_vehicleGarageMenu;
