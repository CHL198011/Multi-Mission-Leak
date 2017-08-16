
#include <macro.h>
disableSerialization; private ["_lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj","_number","_rcrbcssstnaywqyspkcuzcyafastsmwoxckftydvvymlyinwaecgubxgkjgvudabzcgn","_rckyzccxbevwbsleumpldmskmixleibfqiulrlguymtuvwajuntvekwvsoepuyodch"];  createDialog "perksMenu"; waitUntil {!(isNull (findDisplay 3000))};  [] spawn { 	private ["_yhnmehlwdexmherrrocvlxpebqmjcodryahtyokeptlxxkdsqvnamqwbkhyuymm"]; 	while {true} do { 		if(isNull (findDisplay 3000)) exitWith {}; 		sleep 0.1; 	}; 	 	if(isNil "perks_tempSpent") exitWith {}; 	_yhnmehlwdexmherrrocvlxpebqmjcodryahtyokeptlxxkdsqvnamqwbkhyuymm = false; 	{ 		if(_x > 0) exitWith { 			_yhnmehlwdexmherrrocvlxpebqmjcodryahtyokeptlxxkdsqvnamqwbkhyuymm = true; 		}; 	} foreach perks_tempSpent; 	if(_yhnmehlwdexmherrrocvlxpebqmjcodryahtyokeptlxxkdsqvnamqwbkhyuymm) then {hint localize "STR_m_DidNotSavePoints";}; };  { 	ctrlShow [_x,false]; } foreach [2200,2201,2202,2203,2204,2205,2206,2207,2208,2209,2210];  _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj = CONTROL(3000,2400); _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj ctrlSetStructuredText (parseText (localize "STR_m_PerkSystenDesc"));  _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj = CONTROL(3000,2303); _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj ctrlSetText format[localize "STR_m_XPTotal",[leveling_xp] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq];  _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj = CONTROL(3000,2302); _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj ctrlSetText format[localize "STR_m_UnspentPoints",perks_unspentPoints];  _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj = CONTROL(3000,2301); _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj ctrlSetText format[localize "STR_m_SpentPoints2",perk_spentPoints];  _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj = CONTROL(3000,2300); _lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj ctrlSetText format[localize "STR_m_XPThisLvl",[round (leveling_xp-leveling_xpLastNeeded)] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq,[round (leveling_xpNeeded-leveling_xpLastNeeded)] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq];  [] call life_fnc_nlgabdwqiosoweevgvwnvhwxyteuhcambciacvzdwoflbuxdggeiyyifdt;  for "_i" from 0 to 32 do { 	_rcrbcssstnaywqyspkcuzcyafastsmwoxckftydvvymlyinwaecgubxgkjgvudabzcgn = if(_i < 10) then {"0" + str _i} else {str _i}; 	_number = parseNumber ("21" + _rcrbcssstnaywqyspkcuzcyafastsmwoxckftydvvymlyinwaecgubxgkjgvudabzcgn); 	_lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj = CONTROL(3000,_number); 	_rckyzccxbevwbsleumpldmskmixleibfqiulrlguymtuvwajuntvekwvsoepuyodch = (localize format["STR_m_PerkName_%1",_i]); 	_lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj ctrlSetTooltip _rckyzccxbevwbsleumpldmskmixleibfqiulrlguymtuvwajuntvekwvsoepuyodch; 	if(_rckyzccxbevwbsleumpldmskmixleibfqiulrlguymtuvwajuntvekwvsoepuyodch != "Tom perkplats") then { 		_lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj ctrlSetStructuredText parseText format["<img size='2.0' image='icons\perk_%1.paa'/>",_i]; 	}; 	if(count (var_base getVariable ["perkColorOverride",[]]) > 0) then { 		_lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj ctrlSetBackgroundColor (var_base getVariable ["perkColorOverride",[]]); 	}; 	_lwzlcxavrotnwkkzzwcyyishyeotwtodhzjzgeemcejbvriixwxmpeybosgjmpxhcjaakj buttonSetAction format["[%1] spawn life_fnc_sbaozpuiayryirklepkoaupynzquogjajnzqvrgbakartywsdby;",_i]; };   