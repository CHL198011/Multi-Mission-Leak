 private ["_oxcdschbzuntqzwndnvhaiqxbdaonpyqijwdhmsldcfvbsiwxvmbfmhwpwattesgfk","_dbwzhfuqktcrfglahgfqlnlmwyvshpuklblrargnjqezblildqpsfwazeptllffzcgwwq"];  _oxcdschbzuntqzwndnvhaiqxbdaonpyqijwdhmsldcfvbsiwxvmbfmhwpwattesgfk = [_this,0,false,[false]] call BIS_fnc_param;  if(isNil "safeKeeping_godMode") then {safeKeeping_godMode = false;}; if(!_oxcdschbzuntqzwndnvhaiqxbdaonpyqijwdhmsldcfvbsiwxvmbfmhwpwattesgfk) exitWith {safeKeeping_godMode = false;}; if(!safeKeeping_active && !safeKeeping_inprogress) exitWith {}; if(isNil "life_debugging") then {life_debugging = false;};  if(_oxcdschbzuntqzwndnvhaiqxbdaonpyqijwdhmsldcfvbsiwxvmbfmhwpwattesgfk && !safeKeeping_godMode) then { 	_dbwzhfuqktcrfglahgfqlnlmwyvshpuklblrargnjqezblildqpsfwazeptllffzcgwwq = vehicle player; 	[2,"God mode aktiverat"] spawn life_fnc_broadcast; 	player setDamage 0; 	_dbwzhfuqktcrfglahgfqlnlmwyvshpuklblrargnjqezblildqpsfwazeptllffzcgwwq setDamage 0; 	safeKeeping_godMode = true; 	while {safeKeeping_godMode && (safeKeeping_active OR safeKeeping_inprogress)} do { 		if(life_debugging) then {systemChat "testtt";}; 		_dbwzhfuqktcrfglahgfqlnlmwyvshpuklblrargnjqezblildqpsfwazeptllffzcgwwq = vehicle player; 		if(player != vehicle player) then {_dbwzhfuqktcrfglahgfqlnlmwyvshpuklblrargnjqezblildqpsfwazeptllffzcgwwq allowDamage false;}; 		sleep 0.1; 	}; 	safeKeeping_godMode = false; 	 	if(allowedDamage) then { 		player allowDamage true; 		vehicle player allowDamage true; 		[2,"God mode deaktiverat"] spawn life_fnc_broadcast; 	}; }; 