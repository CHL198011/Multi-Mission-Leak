
#include <macro.h>
      private["_zgzqvepcifsbpzfunysoayrwoxvofnfhbyqqapiugyxatiulxpncjagsnrkemwnqz","_puxwcrprqtdacbicvvqugkigchvomcegftaakawyvpnojmqlwdzstmdwlwbaqqhkcoo"]; _zgzqvepcifsbpzfunysoayrwoxvofnfhbyqqapiugyxatiulxpncjagsnrkemwnqz = _this select 0; _puxwcrprqtdacbicvvqugkigchvomcegftaakawyvpnojmqlwdzstmdwlwbaqqhkcoo = _this select 1; if(_puxwcrprqtdacbicvvqugkigchvomcegftaakawyvpnojmqlwdzstmdwlwbaqqhkcoo isKindOf "Man" && alive player) then { 	if(!life_istazed) then { 		life_istazed = true; 		player setVariable ["life_istazed",true,true]; 		 		[[_zgzqvepcifsbpzfunysoayrwoxvofnfhbyqqapiugyxatiulxpncjagsnrkemwnqz],"life_fnc_tazeSound",true,false] call BIS_fnc_MP; 		_obj = createVehicle ["Land_ClutterCutter_small_F", (getPosATL _zgzqvepcifsbpzfunysoayrwoxvofnfhbyqqapiugyxatiulxpncjagsnrkemwnqz), [], 0, "CAN_COLLIDE"]; 		_obj setPosATL ASLTOATL(visiblePositionASL player); 		if((vest player) == "V_TacChestrig_cbr_F" && suicide_deadGrip) then {[player] spawn life_fnc_vzudmtojjwrwyufbfeuqslmkhsqtykuzyzzawnvjuveqkdkgpueytyj;}; 		 		[[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"life_fnc_gbrisqbkirkdomhkildcgyttqicsflitrnbqgpixyslsyszkor",true,false] call life_fnc_MP; 		if(!(side _zgzqvepcifsbpzfunysoayrwoxvofnfhbyqqapiugyxatiulxpncjagsnrkemwnqz in [west,independent])) then { 			[[0,"STR_NOTF_Tazed",true,[profileName, _puxwcrprqtdacbicvvqugkigchvomcegftaakawyvpnojmqlwdzstmdwlwbaqqhkcoo GVAR ["realname",name _puxwcrprqtdacbicvvqugkigchvomcegftaakawyvpnojmqlwdzstmdwlwbaqqhkcoo]]],"life_fnc_broadcast",true,false] call life_fnc_MP; 			[[1,(getPlayerUID _puxwcrprqtdacbicvvqugkigchvomcegftaakawyvpnojmqlwdzstmdwlwbaqqhkcoo),life_playerUID,"Tazed","",name _puxwcrprqtdacbicvvqugkigchvomcegftaakawyvpnojmqlwdzstmdwlwbaqqhkcoo,life_playerName,str (getPos _puxwcrprqtdacbicvvqugkigchvomcegftaakawyvpnojmqlwdzstmdwlwbaqqhkcoo)],"TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",false,false] spawn life_fnc_MP; 		}; 		_zgzqvepcifsbpzfunysoayrwoxvofnfhbyqqapiugyxatiulxpncjagsnrkemwnqz attachTo [_obj,[0,0,0]]; 		"DynamicBlur" ppEffectEnable true; 		"DynamicBlur" ppEffectAdjust [20]; 		"DynamicBlur" ppEffectCommit 1; 		disableUserInput true; 		sleep 13; 		disableUserInput false; 		disableUserInput true; 		disableUserInput false; 		[[player,"amovppnemstpsraswrfldnon"],"life_fnc_gbrisqbkirkdomhkildcgyttqicsflitrnbqgpixyslsyszkor",true,false] call life_fnc_MP; 		if(!(player GVAR ["Escorting",false])) then { 			detach player; 		}; 		"DynamicBlur" ppEffectEnable false; 		life_istazed = false; 		player setVariable ["life_istazed",false,true]; 		player allowDamage true; 	}; } else { 	_zgzqvepcifsbpzfunysoayrwoxvofnfhbyqqapiugyxatiulxpncjagsnrkemwnqz allowDamage true; 	life_istazed = false; 	player setVariable ["life_istazed",false,true]; }; 