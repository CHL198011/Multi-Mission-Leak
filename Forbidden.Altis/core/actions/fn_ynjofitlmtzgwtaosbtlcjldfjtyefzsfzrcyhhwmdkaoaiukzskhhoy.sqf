
#include <macro.h>
 disableSerialization; private["_fndtpayafoyolyzzyjoyykeuqpdgaaafmsrpmetysnsrcboyhsaydlghqjueskbxllp","_ui","_progress","_qopjulyixjejvzhgsgaydbfretbuolgoinhexpywwpkuoknyriazixtvhpinfpwfpwkw","_mtipcvijslddrrlabjxaxppxpfxyztelpulhiuasrbkmrwzfpyllqufatutyahbay","_ejpieavryhzupnvejywccjdjlkoviwvxayzqmjlmcyamikuxwaxrmatenmqdm"]; if(life_action_inUse) exitWith {hint localize "STR_NOTF_Action"}; _fndtpayafoyolyzzyjoyykeuqpdgaaafmsrpmetysnsrcboyhsaydlghqjueskbxllp = nearestObjects[getPos air_sp, ["Air"],5]; if(EQUAL(count _fndtpayafoyolyzzyjoyykeuqpdgaaafmsrpmetysnsrcboyhsaydlghqjueskbxllp,0)) exitWith {hint localize "STR_Service_Chopper_NoAir"}; life_action_inUse = true; _ejpieavryhzupnvejywccjdjlkoviwvxayzqmjlmcyamikuxwaxrmatenmqdm = format[localize "STR_Service_Chopper_Servicing",if(SEL(_fndtpayafoyolyzzyjoyykeuqpdgaaafmsrpmetysnsrcboyhsaydlghqjueskbxllp,0) isKindOf "Plane") then {"flygplanet"} else {"helikoptern"}]; 5 cutRsc ["life_progress","PLAIN"]; _ui = GVAR_UINS "life_progress"; _progress = _ui displayCtrl 38201; _mtipcvijslddrrlabjxaxppxpfxyztelpulhiuasrbkmrwzfpyllqufatutyahbay = _ui displayCtrl 38202; _mtipcvijslddrrlabjxaxppxpfxyztelpulhiuasrbkmrwzfpyllqufatutyahbay ctrlSetText format["%2 (1%1)...","%",_ejpieavryhzupnvejywccjdjlkoviwvxayzqmjlmcyamikuxwaxrmatenmqdm]; _progress progressSetPosition 0.01; _qopjulyixjejvzhgsgaydbfretbuolgoinhexpywwpkuoknyriazixtvhpinfpwfpwkw = 0.01;  while {true} do { 	sleep  0.2; 	_qopjulyixjejvzhgsgaydbfretbuolgoinhexpywwpkuoknyriazixtvhpinfpwfpwkw = _qopjulyixjejvzhgsgaydbfretbuolgoinhexpywwpkuoknyriazixtvhpinfpwfpwkw + 0.01; 	_progress progressSetPosition _qopjulyixjejvzhgsgaydbfretbuolgoinhexpywwpkuoknyriazixtvhpinfpwfpwkw; 	_mtipcvijslddrrlabjxaxppxpfxyztelpulhiuasrbkmrwzfpyllqufatutyahbay ctrlSetText format["%3 (%1%2)...",round(_qopjulyixjejvzhgsgaydbfretbuolgoinhexpywwpkuoknyriazixtvhpinfpwfpwkw * 100),"%",_ejpieavryhzupnvejywccjdjlkoviwvxayzqmjlmcyamikuxwaxrmatenmqdm]; 	if(_qopjulyixjejvzhgsgaydbfretbuolgoinhexpywwpkuoknyriazixtvhpinfpwfpwkw >= 1) exitWith {}; };  if(!alive SEL(_fndtpayafoyolyzzyjoyykeuqpdgaaafmsrpmetysnsrcboyhsaydlghqjueskbxllp,0) || SEL(_fndtpayafoyolyzzyjoyykeuqpdgaaafmsrpmetysnsrcboyhsaydlghqjueskbxllp,0) distance air_sp > 10) exitWith {life_action_inUse = false; hint localize "STR_Service_Chopper_Missing"}; [SEL(_fndtpayafoyolyzzyjoyykeuqpdgaaafmsrpmetysnsrcboyhsaydlghqjueskbxllp,0)] spawn life_fnc_ddommdypiuaheicfoxpqerbnlixzhlxaudhnosfmyohwsowvmwjtfsim; SEL(_fndtpayafoyolyzzyjoyykeuqpdgaaafmsrpmetysnsrcboyhsaydlghqjueskbxllp,0) setDamage 0;  5 cutText ["","PLAIN"]; titleText [localize "STR_Service_Chopper_Done","PLAIN"]; life_action_inUse = false; 