 private["_icswfcwjaykdbkgeiidrhcjciaxkdyahaabvvshjiaqxzfivishrmpjinjmax","_qalcsnbqakegzkltijqdtpabshgnyrzkjhfemymdmfarotpkzictxoxzyzibtxldrekuyf","_rnznneobzeldjhhqntcxqrfdbcumgnwmvhjgintnynizjeqyhglybuhvvaulxkttf","_hgsrzltngtibslbvqokrujliljpxeacxcupvymuchzhlbbqkounyxigfiiutybjr","_rdmihumreuwrfkflblthhyxamnyonvwydgeczyxrbabbytkbilrqfndrgrgewfjllsylbv","_rjwcopxvbastazdraxrxskaegmdgxlqxsyilkxaocsvziuksxfpryzahfufbmojxdfnt","_rjwcopxvbastazdraxrxskaegmdgxlqxsyilkxaocsvziuksxfpryzahfufbmojxdfnts","_dyyjldxnqysbjkjyiqgeopuyuaekvyviwypdbswuzkmyxlmswjsluppzxphdxpeyytvb"]; disableSerialization;  _icswfcwjaykdbkgeiidrhcjciaxkdyahaabvvshjiaqxzfivishrmpjinjmax = findDisplay 2400; _qalcsnbqakegzkltijqdtpabshgnyrzkjhfemymdmfarotpkzictxoxzyzibtxldrekuyf = _icswfcwjaykdbkgeiidrhcjciaxkdyahaabvvshjiaqxzfivishrmpjinjmax displayCtrl 2402; _data = lbData[2401,(lbCurSel 2401)]; _rdmihumreuwrfkflblthhyxamnyonvwydgeczyxrbabbytkbilrqfndrgrgewfjllsylbv = [];  _data = call compile format["%1", _data]; if(isNil "_data") exitWith {_qalcsnbqakegzkltijqdtpabshgnyrzkjhfemymdmfarotpkzictxoxzyzibtxldrekuyf lbAdd "Failed to fetch list";}; if(typeName _data != "ARRAY") exitWith {_qalcsnbqakegzkltijqdtpabshgnyrzkjhfemymdmfarotpkzictxoxzyzibtxldrekuyf lbAdd "Failed to fetch list";}; if(count _data == 0) exitWith {_qalcsnbqakegzkltijqdtpabshgnyrzkjhfemymdmfarotpkzictxoxzyzibtxldrekuyf lbAdd "Failed to fetch list";}; lbClear _qalcsnbqakegzkltijqdtpabshgnyrzkjhfemymdmfarotpkzictxoxzyzibtxldrekuyf;  ctrlShow[2402,true]; ctrlShow[2403,true]; ctrlShow[2423,true];  ctrlShow[2409,false]; ctrlShow[2411,false]; ctrlShow[2426,false]; ctrlShow[2427,false];  _rjwcopxvbastazdraxrxskaegmdgxlqxsyilkxaocsvziuksxfpryzahfufbmojxdfnts = _data select 2; _hgsrzltngtibslbvqokrujliljpxeacxcupvymuchzhlbbqkounyxigfiiutybjr = _data select 3;  if(count _rjwcopxvbastazdraxrxskaegmdgxlqxsyilkxaocsvziuksxfpryzahfufbmojxdfnts > 0) then { 	{ 		if(!(_x in _rdmihumreuwrfkflblthhyxamnyonvwydgeczyxrbabbytkbilrqfndrgrgewfjllsylbv)) then 		{ 			_rdmihumreuwrfkflblthhyxamnyonvwydgeczyxrbabbytkbilrqfndrgrgewfjllsylbv pushBack _x; 			_qalcsnbqakegzkltijqdtpabshgnyrzkjhfemymdmfarotpkzictxoxzyzibtxldrekuyf lbAdd format["$%1 from %2",[(_x select 1)] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq,(_x select 0)]; 		}; 	} foreach _rjwcopxvbastazdraxrxskaegmdgxlqxsyilkxaocsvziuksxfpryzahfufbmojxdfnts; 	lbSort _qalcsnbqakegzkltijqdtpabshgnyrzkjhfemymdmfarotpkzictxoxzyzibtxldrekuyf; };   if([_hgsrzltngtibslbvqokrujliljpxeacxcupvymuchzhlbbqkounyxigfiiutybjr] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq == "0") then { 	ctrlSetText[2403,format["%1","Not wanted"]]; 	ctrlSetText[2423,format["%1",""]]; } else { 	ctrlSetText[2403,format["Bounty (alive): $%1",[_hgsrzltngtibslbvqokrujliljpxeacxcupvymuchzhlbbqkounyxigfiiutybjr] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq]]; 	ctrlSetText[2423,format["%1","50% of bounty if dead."]]; }; 