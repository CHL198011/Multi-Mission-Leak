
#include <macro.h>
 private["_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz","_kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg","_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd","_value"]; _kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg = SEL(_this,0);  if(_kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg getVariable ["SafeKeeping",false]) exitWith {};  { 	if(typeName _x == typeName "") then {_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd = _x;} else {_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd = configName _x}; 	_value = ITEM_VALUE(_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd); 	_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwdName = ITEM_VARNAME(_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd); 	 	switch(_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd) do { 		case "waterBottle": { 			if(_value > 0) then { 				_pos = _kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg modelToWorld[0,3,0]; 				_pos = [SEL(_pos,0), SEL(_pos,1), 0]; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz = "Land_BottlePlastic_V1_F" createVehicle _pos; 				 				[[_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz],"life_fnc_tbgkpwsxyumsfzytbglyogbkfjranfjqnewrllcrpixjarmtxwjc",nil,true] call life_fnc_MP; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz setPos _pos; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz SVAR ["item",[_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd,_value],true]; 				SVAR_MNS [_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwdName,0]; 			}; 		}; 		 		case "tbacon": { 			if(_value > 0) then { 				_pos = _kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg modelToWorld[0,3,0]; 				_pos = [SEL(_pos,0), SEL(_pos,1), 0]; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz = "Land_TacticalBacon_F" createVehicle _pos; 				[[_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz],"life_fnc_tbgkpwsxyumsfzytbglyogbkfjranfjqnewrllcrpixjarmtxwjc",nil,true] call life_fnc_MP; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz setPos _pos; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz SVAR ["item",[_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd,_value],true]; 				SVAR_MNS [_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwdName,0]; 			}; 		}; 		 		case "redgull": { 			if(_value > 0) then { 				_pos = _kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg modelToWorld[0,3,0]; 				_pos = [SEL(_pos,0), SEL(_pos,1), 0]; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz = "Land_Can_V3_F" createVehicle _pos; 				[[_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz],"life_fnc_tbgkpwsxyumsfzytbglyogbkfjranfjqnewrllcrpixjarmtxwjc",nil,true] call life_fnc_MP; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz setPos _pos; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz SVAR ["item",[_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd,_value],true]; 				SVAR_MNS [_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwdName,0]; 			}; 		}; 		 		case "fuelEmpty": { 			if(_value > 0) then { 				_pos = _kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg modelToWorld[0,3,0]; 				_pos = [SEL(_pos,0), SEL(_pos,1), 0]; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz = "Land_CanisterFuel_F" createVehicle _pos; 				[[_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz],"life_fnc_tbgkpwsxyumsfzytbglyogbkfjranfjqnewrllcrpixjarmtxwjc",nil,true] call life_fnc_MP; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz setPos _pos; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz SVAR ["item",[_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd,_value],true]; 				SVAR_MNS [_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwdName,0]; 			}; 		}; 		 		case "fuelFull": { 			if(_value > 0) then { 				_pos = _kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg modelToWorld[0,3,0]; 				_pos = [SEL(_pos,0), SEL(_pos,1), 0]; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz = "Land_CanisterFuel_F" createVehicle _pos; 				[[_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz],"life_fnc_tbgkpwsxyumsfzytbglyogbkfjranfjqnewrllcrpixjarmtxwjc",nil,true] call life_fnc_MP; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz setPos _pos; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz SVAR ["item",[_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd,_value],true]; 				SVAR_MNS [_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwdName,0]; 			}; 		}; 		 		case "coffee": { 			if (_value > 0) then { 				_pos = _kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg modelToWorld[0,3,0]; 				_pos = [SEL(_pos,0), SEL(_pos,1), 0]; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz = "Land_Can_V3_F" createVehicle _pos; 				[[_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz],"life_fnc_tbgkpwsxyumsfzytbglyogbkfjranfjqnewrllcrpixjarmtxwjc",nil,true] call life_fnc_MP; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz setPos _pos; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz SVAR ["item",[_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd,_value],true]; 				SVAR_MNS [_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwdName,0]; 			}; 		}; 		 		case "life_cash": { 			if(CASH > 0) then { 				_pos = _kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg modelToWorld[0,3,0]; 				_pos = [SEL(_pos,0), SEL(_pos,1), 0]; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz = "Land_Money_F" createVehicle _pos; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz SVAR ["item",["money",GVAR_MNS [_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd,0]],true]; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz setPos _pos; 				[[_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz],"life_fnc_tbgkpwsxyumsfzytbglyogbkfjranfjqnewrllcrpixjarmtxwjc",nil,true] call life_fnc_MP; 				SVAR_MNS ["life_cash",0]; 			}; 		}; 		 		default { 			if(_value > 0) then { 				_pos = _kiaalxommlajmzrmfzulbzpchyqqqzfnpxjqsrjqkzmwgdbohabrkvhcspsg modelToWorld[0,3,0]; 				_pos = [SEL(_pos,0), SEL(_pos,1), 0]; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz = "Land_Suitcase_F" createVehicle _pos; 				[[_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz],"life_fnc_tbgkpwsxyumsfzytbglyogbkfjranfjqnewrllcrpixjarmtxwjc",nil,true] call life_fnc_MP; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz setPos _pos; 				_zwqyultqmewkxrmvnghujwgirfwiaemnreenqckezudjpscugglezbvcvdogcgucagsudz SVAR ["item",[_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwd,_value],true]; 				SVAR_MNS [_sxyvmgpoukdmjbaztnxqdancumtdzkyxvteyhajsbqrtupwonmyrrkdkxpalnerpvwdName,0]; 			}; 		}; 	}; } foreach (("true" configClasses (missionConfigFile >> "VirtualItems")) + ["life_cash"]); 