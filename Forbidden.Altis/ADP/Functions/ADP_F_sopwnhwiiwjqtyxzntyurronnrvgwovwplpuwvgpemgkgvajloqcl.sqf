 private ["_myervyojgvvarjfsbgaqupxsyegcevgierofwrfvjtshujqdcslqijzxbquwxcwzholjln","_mhcjfwsbrfwpjdvmtxlthporxygzcctulgeedrqxxxyflhhrhawlvfzwyjhz","_onceqoxouxnkcsztfabgxbwjrsvwzuasgvwqyusjgahappvofgxzculonckucq","_ddtnbtjsuxmdjnhvwfyedkqtjilugzhdvspnnnunevmjirblvlsaiyzetrgufheavhwduv","_mfcfdntrysdfipxexdcitcmoxpururgdjvugkridrcshepkaubvcmsqxjlxhiut"]; _myervyojgvvarjfsbgaqupxsyegcevgierofwrfvjtshujqdcslqijzxbquwxcwzholjln = ctrlText 1400; _ddtnbtjsuxmdjnhvwfyedkqtjilugzhdvspnnnunevmjirblvlsaiyzetrgufheavhwduv = ctrlText 1450;  _mfcfdntrysdfipxexdcitcmoxpururgdjvugkridrcshepkaubvcmsqxjlxhiut = if(surfaceIsWater (getPos player)) then {getPosASL player} else {getPosATL player}; _ddtnbtjsuxmdjnhvwfyedkqtjilugzhdvspnnnunevmjirblvlsaiyzetrgufheavhwduv = if(_ddtnbtjsuxmdjnhvwfyedkqtjilugzhdvspnnnunevmjirblvlsaiyzetrgufheavhwduv == "hit") then {_mfcfdntrysdfipxexdcitcmoxpururgdjvugkridrcshepkaubvcmsqxjlxhiut} else {[]};  _onceqoxouxnkcsztfabgxbwjrsvwzuasgvwqyusjgahappvofgxzculonckucq = ["generell","blå","röd","grön","alla"];  if!(_myervyojgvvarjfsbgaqupxsyegcevgierofwrfvjtshujqdcslqijzxbquwxcwzholjln in _onceqoxouxnkcsztfabgxbwjrsvwzuasgvwqyusjgahappvofgxzculonckucq) exitWith {hint format["Ange vilka du vill teleportera i vänstra fältet! Välj mellan alla, generell, blå, röd, grön"];};  [4,(getPlayerUID player),"-","Mass teleport",format["%1: %2",_myervyojgvvarjfsbgaqupxsyegcevgierofwrfvjtshujqdcslqijzxbquwxcwzholjln,str _ddtnbtjsuxmdjnhvwfyedkqtjilugzhdvspnnnunevmjirblvlsaiyzetrgufheavhwduv],profileName,"-",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2];  _myervyojgvvarjfsbgaqupxsyegcevgierofwrfvjtshujqdcslqijzxbquwxcwzholjln = [_myervyojgvvarjfsbgaqupxsyegcevgierofwrfvjtshujqdcslqijzxbquwxcwzholjln,_onceqoxouxnkcsztfabgxbwjrsvwzuasgvwqyusjgahappvofgxzculonckucq] call TON_fnc_index2;  [_myervyojgvvarjfsbgaqupxsyegcevgierofwrfvjtshujqdcslqijzxbquwxcwzholjln,_ddtnbtjsuxmdjnhvwfyedkqtjilugzhdvspnnnunevmjirblvlsaiyzetrgufheavhwduv] remoteExec ["life_fnc_xzkqgffxehprmwxbbeztlmxivtosywueqyjwjvpdwulxomkvyuuk",-2]; 