
#include <macro.h>
 private["_bklrrptrmuoeffxzukykvoxjdsydaezhelpipzbpktsivwfcbqfkkhydnzycbxftgl","_cxvkugifjvzinucchepwfrxxdardhpnvicdtofhbuvrdahlluhbgqapsrbfokniw","_cxvkugifjvzinucchepwfrxxdardhpnvicdtofhbuvrdahlluhbgqapsrbfokniwenses","_lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz","_lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz_units","_temulmopezauhjneotomqsrznsihfqdsznviejkrdyveoxxrserhlhudqebzmqqwwdpgdv","_kykoobnjvminkawdywmsmcvyrdkqnyztfvkvdwykpbfmcxouonzkrkevaexdsxjkhna","_zrigvxbbvdewpoghibxbvdqkfgkcjeiyvjikvnrhjmbostxqifbstbcykdrenfsde","_ofdvsgwhonvoiyaocejyjisovowcxphyjasjajuvjnzpbflnyzkoilknkjcyycao"]; disableSerialization;  _zrigvxbbvdewpoghibxbvdqkfgkcjeiyvjikvnrhjmbostxqifbstbcykdrenfsde = switch(playerSide) do {case west:{"cop"}; case civilian:{"civ"}; case independent:{"med"};};  _bklrrptrmuoeffxzukykvoxjdsydaezhelpipzbpktsivwfcbqfkkhydnzycbxftgl = CONTROL(2001,2005); _cxvkugifjvzinucchepwfrxxdardhpnvicdtofhbuvrdahlluhbgqapsrbfokniw = CONTROL(2001,2014); _lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz = CONTROL(2001,2022); _lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz_i = CONTROL(2001,2023); _temulmopezauhjneotomqsrznsihfqdsznviejkrdyveoxxrserhlhudqebzmqqwwdpgdv = CONTROL(2001,2015); _ofdvsgwhonvoiyaocejyjisovowcxphyjasjajuvjnzpbflnyzkoilknkjcyycao = ""; lbClear _bklrrptrmuoeffxzukykvoxjdsydaezhelpipzbpktsivwfcbqfkkhydnzycbxftgl; lbClear _lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz; lbClear _lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz_i;   _lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz_units = []; { if((player distance _x < 10) && !(player getVariable ["invisible",false])) then {_lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz_units pushBack _x};} foreach playableUnits; { 	if(!isNull _x && alive _x && player distance _x < 10 && _x != player && !(_x getVariable ["invisible",false])) then { 		_lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz lbAdd format["%1 - %2",_x GVAR ["realname",name _x], side _x]; 		_lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz lbSetData [(lbSize _lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz)-1,str(_x)]; 		_lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz_i lbAdd format["%1 - %2",_x GVAR ["realname",name _x], side _x]; 		_lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz_i lbSetData [(lbSize _lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz)-1,str(_x)]; 	}; } foreach _lcskzgyvpikmzhgxerslwhfhhiqlsaqatbvsyfdejslnshubiomltjwjecvqsqlnvz_units;  _temulmopezauhjneotomqsrznsihfqdsznviejkrdyveoxxrserhlhudqebzmqqwwdpgdv ctrlSetStructuredText parseText format["<img size='1.3' image='icons\bank.paa'/> <t size='0.8px'>$%1</t><br/><img size='1.2' image='icons\money.paa'/> <t size='0.8'>$%2</t>",[BANK] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq,[CASH] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq]; ctrlSetText[2009,format["Weight: %1 / %2", life_carryWeight, life_maxWeight]];  { 	if(ITEM_VALUE(configName _x) > 0) then { 		_bklrrptrmuoeffxzukykvoxjdsydaezhelpipzbpktsivwfcbqfkkhydnzycbxftgl lbAdd format["%2 [x%1]",ITEM_VALUE(configName _x),localize (getText(_x >> "displayName"))]; 		_bklrrptrmuoeffxzukykvoxjdsydaezhelpipzbpktsivwfcbqfkkhydnzycbxftgl lbSetData [(lbSize _bklrrptrmuoeffxzukykvoxjdsydaezhelpipzbpktsivwfcbqfkkhydnzycbxftgl)-1,configName _x]; 		_icon = M_CONFIG(getText,"VirtualItems",configName _x,"icon"); 		if(!(EQUAL(_icon,""))) then { 			_bklrrptrmuoeffxzukykvoxjdsydaezhelpipzbpktsivwfcbqfkkhydnzycbxftgl lbSetPicture [(lbSize _bklrrptrmuoeffxzukykvoxjdsydaezhelpipzbpktsivwfcbqfkkhydnzycbxftgl)-1,_icon]; 		}; 	}; } foreach ("true" configClasses (missionConfigFile >> "VirtualItems"));  { 	_displayName = getText(_x >> "displayName"); 	 	if(LICENSE_VALUE(configName _x,_zrigvxbbvdewpoghibxbvdqkfgkcjeiyvjikvnrhjmbostxqifbstbcykdrenfsde)) then { 		_ofdvsgwhonvoiyaocejyjisovowcxphyjasjajuvjnzpbflnyzkoilknkjcyycao = _ofdvsgwhonvoiyaocejyjisovowcxphyjasjajuvjnzpbflnyzkoilknkjcyycao + format["%1<br/>",localize _displayName]; 	}; } foreach (format["getText(_x >> 'side') isEqualTo '%1'",_zrigvxbbvdewpoghibxbvdqkfgkcjeiyvjikvnrhjmbostxqifbstbcykdrenfsde] configClasses (missionConfigFile >> "Licenses"));  if(EQUAL(_ofdvsgwhonvoiyaocejyjisovowcxphyjasjajuvjnzpbflnyzkoilknkjcyycao,"")) then { 	_ofdvsgwhonvoiyaocejyjisovowcxphyjasjajuvjnzpbflnyzkoilknkjcyycao = "No Licenses"; };  _cxvkugifjvzinucchepwfrxxdardhpnvicdtofhbuvrdahlluhbgqapsrbfokniw ctrlSetStructuredText parseText format[" <t size='0.8px'> %1 </t> ",_ofdvsgwhonvoiyaocejyjisovowcxphyjasjajuvjnzpbflnyzkoilknkjcyycao]; 