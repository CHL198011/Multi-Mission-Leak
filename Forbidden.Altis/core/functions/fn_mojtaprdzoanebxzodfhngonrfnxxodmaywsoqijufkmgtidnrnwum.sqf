life_spawn_point = ["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]; 	 [] spawn { 	private ["_bwscxhhxleeqazkovfglrtrrmgqwyfjotxsxcvakeinsyyjmczdmfpalhqngfwygrlf","_hprqchzehocqktuwfspnkynohujsusnmllnveyzhwbheghpvgzvumqfsfakdq","_qpacyonwiekwgmohjzbjwgkdmdrcovzetjckulcvrtiqvsjoupnnyyuynffdqs"]; 	 	disableUserInput true; 	cutText["","BLACK FADED"]; 	0 cutFadeOut 9999999; 	for "_i" from 0 to 9 do { 		[2,format["Du spawnar om %1 sekunder!",10-_i]] call life_fnc_broadcast; 		if((10-_i) == 2) then { 			disableUserInput false; 			disableUserInput true; 		}; 		sleep 1; 	}; 	[2," "] call life_fnc_broadcast; 	 	switch (true) do { 		case (count (var_base getVariable ["areaSafe_spawn",[]]) > 0) : { 			 			_cords = (var_base getVariable ["areaSafe_spawn",[]]) select 0; 			_radius = (var_base getVariable ["areaSafe_spawn",[]]) select 1; 			 			_bwscxhhxleeqazkovfglrtrrmgqwyfjotxsxcvakeinsyyjmczdmfpalhqngfwygrlf = false; 			_qpacyonwiekwgmohjzbjwgkdmdrcovzetjckulcvrtiqvsjoupnnyyuynffdqs = 0; 			while {!_bwscxhhxleeqazkovfglrtrrmgqwyfjotxsxcvakeinsyyjmczdmfpalhqngfwygrlf} do { 				_bwscxhhxleeqazkovfglrtrrmgqwyfjotxsxcvakeinsyyjmczdmfpalhqngfwygrlf = true; 				_hprqchzehocqktuwfspnkynohujsusnmllnveyzhwbheghpvgzvumqfsfakdq = [((_cords select 0) - _radius) + (random (2*_radius)),((_cords select 1) - _radius) + (random (2*_radius)),_cords select 2]; 				 				if ((_cords distance _hprqchzehocqktuwfspnkynohujsusnmllnveyzhwbheghpvgzvumqfsfakdq) > _radius) then {_bwscxhhxleeqazkovfglrtrrmgqwyfjotxsxcvakeinsyyjmczdmfpalhqngfwygrlf = false;}; 				if (surfaceIsWater _hprqchzehocqktuwfspnkynohujsusnmllnveyzhwbheghpvgzvumqfsfakdq) then {_bwscxhhxleeqazkovfglrtrrmgqwyfjotxsxcvakeinsyyjmczdmfpalhqngfwygrlf = false;}; 				_qpacyonwiekwgmohjzbjwgkdmdrcovzetjckulcvrtiqvsjoupnnyyuynffdqs = _qpacyonwiekwgmohjzbjwgkdmdrcovzetjckulcvrtiqvsjoupnnyyuynffdqs + 1; 				 				if(_qpacyonwiekwgmohjzbjwgkdmdrcovzetjckulcvrtiqvsjoupnnyyuynffdqs > 100) then { 					_bwscxhhxleeqazkovfglrtrrmgqwyfjotxsxcvakeinsyyjmczdmfpalhqngfwygrlf = true; 					_hprqchzehocqktuwfspnkynohujsusnmllnveyzhwbheghpvgzvumqfsfakdq = _cords; 				}; 			}; 			player setPos _hprqchzehocqktuwfspnkynohujsusnmllnveyzhwbheghpvgzvumqfsfakdq; 		}; 		case (safekeeping_team == 0 && count (var_base getVariable ["generalSafe_spawn",[]]) > 0) : { 			player setPosATL (var_base getVariable ["generalSafe_spawn",[]]); 		}; 		case (safekeeping_team == 1 && count (var_base getVariable ["blueSafe_spawn",[]]) > 0) : { 			player setPosATL (var_base getVariable ["blueSafe_spawn",[]]); 		}; 		case (safekeeping_team == 2 && count (var_base getVariable ["redSafe_spawn",[]]) > 0) : { 			player setPosATL (var_base getVariable ["redSafe_spawn",[]]); 		}; 		case (safekeeping_team == 3 && count (var_base getVariable ["greenSafe_spawn",[]]) > 0) : { 			player setPosATL (var_base getVariable ["greenSafe_spawn",[]]); 		}; 		default { 			if(inEventGame) then { 				[3] spawn life_fnc_vxzmfzvlijcmojhjimlsmqcbanjbfypcqvaeuzaccmwmrlxsuvj; 			} else { 				openMap true; 				hint "Tryck var du vill spawna!"; 				["TelID", "onMapSingleClick", "[_pos] call ADP_fnc_Teleport1"] call BIS_fnc_addStackedEventHandler; 				 			}; 		}; 	}; 	if(var_base getVariable ["parachuteEventRunning",false]) then {removeBackpack player; player addBackpack 'B_Parachute';}; 	 	cutText ["","BLACK IN"]; 	life_isAlive = true; 	player setVariable ["isAlive",TRUE,TRUE]; 	player allowDamage true; 	player setDamage 0; 	disableUserInput false; 	disableUserInput true; 	disableUserInput false; 	if(safekeeping_active && (var_base getVariable ["event_deadmansgrip",0]) in [3,4]) then {suicide_deadGrip = true;}; 	Safekeeping_dead = false; };  [] spawn { 	sleep 5; 	if(currentWeapon player == "") then { 		player playMove "amovpercmstpsnonwnondnon"; 	} else { 		player playMove "amovpercmstpslowwrfldnon"; 	}; };     if(!safe_isWaitingAlive) then { 	[] spawn { 		sleep 1; 		_nextGearSet = var_base getVariable ["event_nextSet","samma"]; 		if(_nextGearSet != "samma" && inEventGame) then { 			[false,_nextGearSet,objNull,true,safekeeping_team] spawn life_fnc_lwragbrbljopxfxnuapcrijyceobizsliszunxpqimtqztdqvagubxyu; 		} else { 			[false,safe_gearSet,objNull,true,safekeeping_team] spawn life_fnc_lwragbrbljopxfxnuapcrijyceobizsliszunxpqimtqztdqvagubxyu; 		}; 	}; }; 