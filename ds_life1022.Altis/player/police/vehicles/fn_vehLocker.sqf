#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	Darkside Life

	Author: Shawn "Huntah" Macgillivray

	Description:
	Police Weapons Locker
*/

private["_titleImg","_value","_onList","_type","_config","_img","_vehMaxWeight","_vehCurWeight","_vehData","_dialog","_title","_list1","_list2","_vehicle","_img1","_img2","_vehTitle","_playerTitle","_vehicleWeight","_takeAmount","_storeAmount","_storedItems","_index","_string","_amount","_short","_btnStore","_btnTake"];

closeDialog 0;
createDialog "bootMenu";

disableSerialization;

_vehicle = DS_locker;;

_onList = [];
_onListSmall = [];

_dialog = findDisplay 666668;
_list1 = _dialog displayCtrl 1500;
_list2 = _dialog displayCtrl 1501;
_img1 = _dialog displayCtrl 1200;
_img2 = _dialog displayCtrl 1201;
_vehTitle = _dialog displayCtrl 1000;
_playerTitle = _dialog displayCtrl 1001;
_vehicleWeight = _dialog displayCtrl 1002;
_takeAmount = _dialog displayCtrl 1400;
_storeAmount = _dialog displayCtrl 1401;
_btnStore = _dialog displayCtrl 1203;
_btnTake = _dialog displayCtrl 1204;
_titleImg = _dialog displayCtrl 1277;
_titleImg ctrlSetText "extras\textures\menus\policeBanner.jpg";
//Text
_playerTitle ctrlSetStructuredText parseText "<t color='#FFFFFF'>Players Inventory</t>";
_vehTitle ctrlSetStructuredText parseText "<t color='#FFFFFF'>Locker Inventory</t>";

//list
lbClear _list1;
lbClear _list2;

_storedItems = (_vehicle select 0);
_vehMaxWeight = (DS_copLevel*20);
if((DS_infoArray select 21) > 24)then{_vehMaxWeight = _vehMaxWeight + 100;};
_vehCurWeight = (_vehicle select 1);
_vehicleWeight ctrlSetStructuredText parseText format ["<t color='#FFFFFF'>%1 / %2</t>",_vehCurWeight,_vehMaxWeight];

_counter = 0;
{
	if(_x in _onListSmall)then
		{
		_index = _onListSmall find _x;
		_counter = (_onlist select _index) select 1;
		_counter = _counter + 1;
		_onlist set [_index,[_x,_counter]];
		}
		else
		{
		_onList pushBack [_x,1];
		_onListSmall pushBack _x;
		};
}forEach _storedItems;
{
	if((_x select 0) != "")then
		{
		switch (true) do
			{
			case (isClass (configFile >> "CfgMagazines" >> (_x select 0))) : {_type = "CfgMagazines"};
			case (isClass (configFile >> "CfgWeapons" >> (_x select 0))) : {_type = "CfgWeapons"};
			case (isClass (configFile >> "CfgGlasses" >> (_x select 0))) : {_type = "CfgGlasses"};
			case (isClass (configFile >> "CfgVehicles" >> (_x select 0))) : {_type = "CfgVehicles"};
			};

		switch (_type) do
			{
			case "CfgMagazines":
				{
				_config = configFile >> "CfgMagazines" >> (_x select 0);
				};
			case "CfgWeapons":
				{
				_config = configFile >> "CfgWeapons" >> (_x select 0);
				};
			case "CfgGlasses":
				{
				_config = configFile >> "CfgGlasses" >> (_x select 0);
				};
			case "CfgVehicles":
				{
				_config = configFile >> "CfgVehicles" >> (_x select 0);
				};
			};
		_img = getText(_config >> "picture");
		_name = getText(_config >> "displayName");
		_desc = getText(_config >> "descriptionshort");
		_desc = [_desc,"<br />"," "] call DS_fnc_strReplace;
		_desc = [_desc,"<br/>"," "] call DS_fnc_strReplace;
		_toolTip = format ["%1",_desc];
		if((_x select 1) > 1)then
			{
			_list1 lbAdd format ["%1 [%2]",_name,(_x select 1)];
			}
			else
			{
			_list1 lbAdd format ["%1",_name];
			};
		_list1 lbSetTooltip [(lbSize _list1)-1, _toolTip];
		_list1 lbSetPicture [(lbSize _list1)-1, _img];
		_list1 lbSetColor [(lbSize _list1)-1, [0, 1, 0, 0.5]];
		_list1 lbSetData [(lbSize _list1)-1,(_x select 0)];
		};
}forEach _onList;

_playersItems = [];
if((!(primaryWeapon player isEqualTo ""))&&(((currentWeapon player) == (primaryWeapon player))))then{_playersItems pushBack (primaryWeapon player)};
if((!(secondaryWeapon player isEqualTo ""))&&(((currentWeapon player) == (secondaryWeapon player))))then{_playersItems pushBack (secondaryWeapon player)};
if((!(handgunWeapon player isEqualTo ""))&&(((currentWeapon player) == (handGunWeapon player))))then{_playersItems pushBack (handgunWeapon player)};
if(!(backpack player isEqualTo ""))then{_playersItems pushBack (backpack player)};
if(!(uniform player isEqualTo ""))then{_playersItems pushBack (uniform player)};
if(!(vest player isEqualTo ""))then{_playersItems pushBack (vest player)};
_playersItems = _playersItems + (primaryWeaponItems player);
_playersItems = _playersItems + (uniformItems player);
_playersItems = _playersItems + (vestItems player);
_playersItems = _playersItems + (backpackItems player);
_onList = [];
_onListSmall = [];
_counter = 0;
{
	if(_x in _onListSmall)then
		{
		_index = _onListSmall find _x;
		_counter = (_onlist select _index) select 1;
		_counter = _counter + 1;
		_onlist set [_index,[_x,_counter]];
		}
		else
		{
		_onList pushBack [_x,1];
		_onListSmall pushBack _x;
		};
}forEach _playersItems;

{
	if((_x select 0) != "")then
		{
		switch (true) do
			{
			case (isClass (configFile >> "CfgMagazines" >> (_x select 0))) : {_type = "CfgMagazines"};
			case (isClass (configFile >> "CfgWeapons" >> (_x select 0))) : {_type = "CfgWeapons"};
			case (isClass (configFile >> "CfgGlasses" >> (_x select 0))) : {_type = "CfgGlasses"};
			case (isClass (configFile >> "CfgVehicles" >> (_x select 0))) : {_type = "CfgVehicles"};
			};

		switch (_type) do
			{
			case "CfgMagazines":
				{
				_config = configFile >> "CfgMagazines" >> (_x select 0);
				};
			case "CfgWeapons":
				{
				_config = configFile >> "CfgWeapons" >> (_x select 0);
				};
			case "CfgGlasses":
				{
				_config = configFile >> "CfgGlasses" >> (_x select 0);
				};
			case "CfgVehicles":
				{
				_config = configFile >> "CfgVehicles" >> (_x select 0);
				};
			};
		_img = getText(_config >> "picture");
		_name = getText(_config >> "displayName");
		_desc = getText(_config >> "descriptionshort");
		_desc = [_desc,"<br />"," "] call DS_fnc_strReplace;
		_desc = [_desc,"<br/>"," "] call DS_fnc_strReplace;
		_toolTip = format ["%1",_desc];
		if((_x select 1) > 1)then
			{
			_list2 lbAdd format ["%1 [%2]",_name,(_x select 1)];
			}
			else
			{
			_list2 lbAdd format ["%1",_name];
			};
		_list2 lbSetTooltip [(lbSize _list2)-1, _toolTip];
		_list2 lbSetPicture [(lbSize _list2)-1, _img];
		_list2 lbSetColor [(lbSize _list2)-1, [0, 1, 0, 0.5]];
		_list2 lbSetData [(lbSize _list2)-1,(_x select 0)];
		};
}forEach _onList;

_btnStore buttonSetAction "[] spawn DS_cop_lockerStore;";
_btnTake buttonSetAction "[] spawn DS_cop_lockerTake;";