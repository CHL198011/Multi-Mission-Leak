private ["_vqisudujzfckgivsxaxsprftqggwjipocwmyaqrhgebaipwjiayyvhuzbokfjxyifwn","_nhbartcrnumjjjahrhdnylxmhcsmgrxltfsbbnrtqqqisatvvfpbgvphlsbpia","_crxexnrsibrkpnodqwairltloqifxepptczuphnkxeaqcxqjspscjjuxbmeco","_abort","_segpbhpwwvvqmuwbdenkkenhxpkvdvcerqacietbxupvjwwkcigtglappbjhcwpbej","_veh"];  _vqisudujzfckgivsxaxsprftqggwjipocwmyaqrhgebaipwjiayyvhuzbokfjxyifwn = [_this,0,[],[[]]] call BIS_fnc_param; _abort = [_this,1,false,[false]] call BIS_fnc_param; _segpbhpwwvvqmuwbdenkkenhxpkvdvcerqacietbxupvjwwkcigtglappbjhcwpbej = [_this,2,false,[false]] call BIS_fnc_param;  _crxexnrsibrkpnodqwairltloqifxepptczuphnkxeaqcxqjspscjjuxbmeco = getPos player; _crxexnrsibrkpnodqwairltloqifxepptczuphnkxeaqcxqjspscjjuxbmeco set [2,0];   if(isNil "purge_abort") then {purge_abort = false;}; if(isNil "purge_intro") then {purge_intro = false;};  if(_abort) exitWith {if(purge_intro) then {purge_abort = true;}; player setVariable ["restrained",false,true];}; player setVariable ["in_purge_intro",true,true];  if(_segpbhpwwvvqmuwbdenkkenhxpkvdvcerqacietbxupvjwwkcigtglappbjhcwpbej) then { 	if(var_base getVariable ["purge_inIntro",false]) then { 		[localize "STR_m_PurgeJustStarted","Automeddelande",3] spawn TON_fnc_clientMessage; 		player setPos [11571 + random (6),7041 + random (6),0]; 		disableUserInput true; 		player allowDamage false; 	}; 	while {!purge_abort} do { 		if!(var_base getVariable ["purge_inIntro",false]) exitWith {}; 		sleep 1; 	}; 	disableUserInput false; 	_vqisudujzfckgivsxaxsprftqggwjipocwmyaqrhgebaipwjiayyvhuzbokfjxyifwn = [23782.4 + random (6),16230.4 + random (6),0]; };  if(purge_abort) exitWith {if(allowedDamage) then {player allowDamage true;}; player setVariable ["in_purge_intro",false,true];};  purge_intro = true; purge_inited = true; [] spawn { 	private ["_otecwnlgcygdvrgikrddejxmcuzoowdvtbusdhuoxxifuhdbhmqobefscrheycaghbxe"]; 	_otecwnlgcygdvrgikrddejxmcuzoowdvtbusdhuoxxifuhdbhmqobefscrheycaghbxe = time + 69; 	waitUntil {((time - _otecwnlgcygdvrgikrddejxmcuzoowdvtbusdhuoxxifuhdbhmqobefscrheycaghbxe) > 0) OR purge_abort}; 	purge_intro = false; };  if(soundVolume != 1) then {1 fadeSound 1;};  player allowDamage false;  _veh = vehicle player; if(_veh != player) then { 	if(driver _veh == player) then { 		[_veh,true,objNull,true] remoteExec ["TON_fnc_jkqulzhxpwctmccjkceoqunzrmkunafnuytehbygampmvffyppupkygzz",2]; 	}; 	moveOut player; 	waitUntil {player == vehicle player}; };  player setpos _vqisudujzfckgivsxaxsprftqggwjipocwmyaqrhgebaipwjiayyvhuzbokfjxyifwn; waitUntil {player distance _vqisudujzfckgivsxaxsprftqggwjipocwmyaqrhgebaipwjiayyvhuzbokfjxyifwn < 10}; player setDir 90; sleep 0.2;  player say3d "purge";    while {purge_intro} do { 	if(currentWeapon player != "") then { 		life_curWep_h = currentWeapon player; 		player action ["SwitchWeapon", player, player, 100]; 		player switchCamera cameraView; 	}; 	 	if!(player getVariable ["restrained",false]) then { 		player setVariable ["restrained",true,true]; 		[player] spawn life_fnc_restrain; 	}; 	 	if(player distance _vqisudujzfckgivsxaxsprftqggwjipocwmyaqrhgebaipwjiayyvhuzbokfjxyifwn > 0.5) then {player setPos _vqisudujzfckgivsxaxsprftqggwjipocwmyaqrhgebaipwjiayyvhuzbokfjxyifwn;}; 	waitUntil {player distance _vqisudujzfckgivsxaxsprftqggwjipocwmyaqrhgebaipwjiayyvhuzbokfjxyifwn > 0.5 || !purge_intro || currentWeapon player != "" || !(player getVariable ["restrained",false])}; };   player setPos _crxexnrsibrkpnodqwairltloqifxepptczuphnkxeaqcxqjspscjjuxbmeco; if(allowedDamage) then {player allowDamage true;};  player setVariable["restrained",FALSE,TRUE]; player setVariable["Escorting",FALSE,TRUE]; player setVariable["transporting",FALSE,TRUE];  detach player;  if(_segpbhpwwvvqmuwbdenkkenhxpkvdvcerqacietbxupvjwwkcigtglappbjhcwpbej && !purge_abort) then { 	[(localize "STR_m_JoinedInPurge"),"Automeddelande",3] call TON_fnc_clientMessage; };  purge_abort = false; systemChat "Intro finished"; player setVariable ["in_purge_intro",false,true];   