
#include <macro.h>
 private["_ui","_lowxcirrebvshkqldevxtnovsmwwbljkffjimyyxaaaeclueqmuzxuoihvkxecawzyl","_qwfgrgtgtauapzyfxwnidfnqkxdggnyxosqbayryrlhogldgwndamahtxozgcjtoedkar","_moumsypdfrphmlaltlkcwufjgiwwbvmcntbrrxblfzczqbxbufcoryzenjus","_finhlabjtfttziaxakaxgawimjjukumozouuuxsccywydzzkjdekhaybsmzhassivdbjeb","_diityguwydtysfewhebpedwgeomkxnjabshxynnljgrxjxxafxjdfxzxiahnbbfng","_csiedyfvrzwlszpuzrjkwqahitqgyusiojxaxblyurjeqkolamrqchcyfglcaulxifc","_aulskvdgnusimrrjftsxdadknqajcpbsjkzjtmaerjpdgbsezgjfpsxoebfze","_efcwzqrmrwxzdjwuygmeclsapjbgqosesvyganptvjhweubeipqoysfbccmoqj","_kidnqcrqfwwgmfdviwtatzdohdairswttnvbpjfgxptgcvcixixwuyrxexxgfrcxeps","_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg"]; disableSerialization;  _ui = GVAR_UINS ["playerHUD",displayNull]; if(isNull _ui) then {[] call life_fnc_lvvbhcdurjwcdxwdpbchuyxclbugeagtmbtskegenzpagnabwhrwvbe;}; _kidnqcrqfwwgmfdviwtatzdohdairswttnvbpjfgxptgcvcixixwuyrxexxgfrcxeps = _ui displayCtrl 23528; _efcwzqrmrwxzdjwuygmeclsapjbgqosesvyganptvjhweubeipqoysfbccmoqj = _ui displayCtrl 23527; _aulskvdgnusimrrjftsxdadknqajcpbsjkzjtmaerjpdgbsezgjfpsxoebfze = _ui displayCtrl 23526; _csiedyfvrzwlszpuzrjkwqahitqgyusiojxaxblyurjeqkolamrqchcyfglcaulxifc = _ui displayCtrl 23525; _diityguwydtysfewhebpedwgeomkxnjabshxynnljgrxjxxafxjdfxzxiahnbbfng = _ui displayCtrl 23524; _finhlabjtfttziaxakaxgawimjjukumozouuuxsccywydzzkjdekhaybsmzhassivdbjeb = _ui displayCtrl 23523; _moumsypdfrphmlaltlkcwufjgiwwbvmcntbrrxblfzczqbxbufcoryzenjus = _ui displayCtrl 23522; _qwfgrgtgtauapzyfxwnidfnqkxdggnyxosqbayryrlhogldgwndamahtxozgcjtoedkar = _ui displayCtrl 23521; _lowxcirrebvshkqldevxtnovsmwwbljkffjimyyxaaaeclueqmuzxuoihvkxecawzyl = _ui displayCtrl 23520; _hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg = [];   if(isNil "allowedDamage") then {allowedDamage = true;}; if(isNil "invisible") then {invisible = false;}; if(isNil "setting_usePerkTurbo") then {setting_usePerkTurbo = false;}; if(isNil "turboEVHindex") then {turboEVHindex = -1;};  if (soundVolume != 1) then {_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\earplugs.paa";};  if(player getVariable ["lostCommunication",false]) then { 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "textures\cellphone_50.paa"; };  if!(allowedDamage) then { 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\god.paa"; };  if(invisible) then { 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; };     if(var_base getVariable ["oilBankIsLeaking",false]) then { 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\oil_leak.paa"; };  if!(isNil "customTestIcon") then { 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack customTestIcon; };  if(isNil "deeeeeaarp") then {deeeeeaarp = false;}; if(deeeeeaarp) then { 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; 	_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg pushBack "icons\invisible.paa"; };       { 	if(count _hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg < (_forEachIndex+1)) then { 		_x ctrlShow false; 	} else { 		_x ctrlShow true; 		_x ctrlSetText (_hcmrfjjudmywslhovdmkxsslzdizziozhgigyprhailnbmqamgjrusbroteytpxrgcg select _forEachIndex); 	}; } foreach [_lowxcirrebvshkqldevxtnovsmwwbljkffjimyyxaaaeclueqmuzxuoihvkxecawzyl,_qwfgrgtgtauapzyfxwnidfnqkxdggnyxosqbayryrlhogldgwndamahtxozgcjtoedkar,_moumsypdfrphmlaltlkcwufjgiwwbvmcntbrrxblfzczqbxbufcoryzenjus,_finhlabjtfttziaxakaxgawimjjukumozouuuxsccywydzzkjdekhaybsmzhassivdbjeb,_diityguwydtysfewhebpedwgeomkxnjabshxynnljgrxjxxafxjdfxzxiahnbbfng,_csiedyfvrzwlszpuzrjkwqahitqgyusiojxaxblyurjeqkolamrqchcyfglcaulxifc,_aulskvdgnusimrrjftsxdadknqajcpbsjkzjtmaerjpdgbsezgjfpsxoebfze,_efcwzqrmrwxzdjwuygmeclsapjbgqosesvyganptvjhweubeipqoysfbccmoqj,_kidnqcrqfwwgmfdviwtatzdohdairswttnvbpjfgxptgcvcixixwuyrxexxgfrcxeps];    