#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	File: fn_vehTakeAllItem.sqf
	Author: Skrow & Skyfezzer

	Description:
  Utilisé dans le coffre d'un véhicule, prend tout les items selectionnés et le place dans l'inventaire virtuel du joureur si celui-ci à de la place.
*/
private["_ctrl","_itemstotake", "_itemstotake_float", "_index","_data","_old","_value","_weight","_diff", "_freeweight", "_itemweight"];
disableSerialization;

if(isNull life_trunk_vehicle OR !alive life_trunk_vehicle) exitWith {hint "Le véhicule n'existe pas ou à été détruit."};
if(!alive player) exitwith {closeDialog 0;};

if((lbCurSel 3502) == -1) exitWith {hint "Vous devez selectionner un item.";};
_ctrl = ctrlSelData(3502);
//this doesn't deal with money for now to keep it simple
if(_ctrl == "money") exitWith {hint "Cela ne fonctionne pas avec de l'argent."};

_index = [_ctrl,((life_trunk_vehicle getVariable "Trunk") select 0)] call TON_fnc_index;
_data = (life_trunk_vehicle getVariable "Trunk") select 0;
_old = life_trunk_vehicle getVariable "Trunk";
if(_index == -1) exitWith { };
_value = _data select _index select 1;
_freeweight = life_maxWeight - life_carryWeight;
_itemweight = ([_ctrl] call life_fnc_itemWeight);
_itemstotake_float = _freeweight / _itemweight;
//ok and now we need to round it down
_itemstotake = round _itemstotake_float;
//but we need to round down not just round
if (_itemstotake_float < _itemstotake) then {_itemstotake = _itemstotake - 1;};

//if we can take more items then there are we just take as many as possible
if( _value < _itemstotake ) then {
	_itemstotake = _value;
};

// if there is less than 1 item to take we can already stop here
if( _itemstotake == 0 ) exitWith
{
	hint localize "STR_MISC_NotEnough";
};

_weight = ([_ctrl] call life_fnc_itemWeight) * _itemstotake;

if([true,_ctrl,_itemstotake] call life_fnc_handleInv) then {
	if(_itemstotake == _value) then	{
		_data set[_index,-1];
		_data = _data - [-1];
	}	else {
		_data set[_index,[_ctrl,(_value - _itemstotake)]];
	};
	life_trunk_vehicle setVariable["Trunk",[_data,(_old select 1) - (_weight)],true];
	[life_trunk_vehicle] call life_fnc_vehInventory;
}	else {
	hint localize "STR_NOTF_InvFull";
};
