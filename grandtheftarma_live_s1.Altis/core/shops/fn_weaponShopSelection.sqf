﻿#include <macro.h>
/*
	File: fn_weaponShopSelection.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks the weapon & adds the price tag.
*/

private [ "_control", "_index", "_priceTag", "_ctrlButtonBuy", "_price", "_item" ];
_control = [ _this, 0, controlNull, [controlNull] ] call GTA_fnc_param;
_index = [ _this, 1, -1, [0] ] call GTA_fnc_param;
if ( isNull _control OR _index == -1 ) exitWith { closeDialog 0 };

_priceTag = ( ( findDisplay 38400 ) displayCtrl 38404 );
_ctrlButtonBuy = ( ( findDisplay 38400 ) displayCtrl 38405 );
_item = _control lbData _index;

if ( ( uiNamespace getVariable [ "Weapon_Shop_Filter", 0 ] ) == 1) then {

	_iS = [ _item, __GETC__( life_weapon_shop_array ) ] call fnc_index;

	if(_iS == -1) then {

		_price = 0;

	} else {

		_price = ( __GETC__( life_weapon_shop_array ) select _iS ) select 1;

	};
	
	if ( playerSide == west ) then { _price = 0; };
	if ( playerSide == independent ) then { _price = 0; };
	
	_priceTag ctrlSetStructuredText parseText format [ "<t size='1'>Price: <t color='#8cff9b'>£%1</t></t>", [ _price ] call life_fnc_numberText ];
	_control lbSetValue [ _index, _price ];

} else {

	_price = _control lbValue _index;

	if ( _price > GTA_money_cash ) then {

		_priceTag ctrlSetStructuredText parseText format [ "<t size='1'>Price: <t color='#ff0000'>£%1</t><br/>You lack: <t color='#8cff9b'>£%2</t></t>", [ _price ] call life_fnc_numberText, [ _price - GTA_money_cash ] call life_fnc_numberText ];

	} else {

		_priceTag ctrlSetStructuredText parseText format [ "<t size='1'>Price: <t color='#8cff9b'>£%1</t></t>",[ _price ] call life_fnc_numberText];

	};

	//--- Check if DLC weapon
	/*if ( [ configFile >> "CfgWeapons" >> _item ] call GTA_fnc_hasDLC ) then {

		_ctrlButtonBuy ctrlEnable true;
		_ctrlButtonBuy ctrlSetTooltip "";

	} else {

		_ctrlButtonBuy ctrlEnable false;
		_ctrlButtonBuy ctrlSetTooltip "You do not own the required DLC";

	};*/

};