/*
Darkside Life

Author: Shawn "Huntah" Macgillivray

Description:
	Sets up the list in the license shops
*/
disableSerialization;
private["_shop","_dialog","_vehicleListPrice","_vehicleListStr","_className","_price","_weight","_img","_toolTip","_maxSpeed","_armorRating","_shopArray"];

if(DS_doingStuff)exitwith{};
DS_doingStuff = true;

_shop = _this select 0;
disableSerialization;
_dialog = findDisplay 666667;
_vehicleList = _dialog displayCtrl 1501;

ctrlShow[66653,false];
ctrlShow[778,false];
ctrlShow[777,false];
ctrlShow[66654,false];

_shopArray = [_shop] call DS_fnc_licenseShopConfig;

lbClear _vehicleList;

{
	_className = (_x select 0);
	_price = (_x select 1);
	_img = (_x select 2);
	_img = format ["extras\icons\%1.jpg",_img];
	_name = (_x select 3);
	_toolTip = (_x select 4);
	_vehicleList lbAdd format ["%1",_name];
	_vehicleList lbSetTooltip [(lbSize _vehicleList)-1, _toolTip];
	_vehicleList lbSetPicture [(lbSize _vehicleList)-1, _img];
	if(DS_coin >= _price)then
		{
		_vehicleList lbSetColor [(lbSize _vehicleList)-1, [0, 1, 0, 0.5]];
		}
		else
		{
		_vehicleList lbSetColor [(lbSize _vehicleList)-1, [1, 0, 0, 0.5]];
		};
	_vehicleList lbSetData [(lbSize _vehicleList)-1,_className];
} foreach _shopArray;

sleep 0.2;
DS_doingStuff = false;