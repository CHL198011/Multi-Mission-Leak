 private["_tvvofindvdffkwpcupeqmofhfbasukbkrdnhrchumqmyoztuckzatljjlqnuugmrpuqo","_nndeobnvuplruwesmwxwdwxcwtqiaxasbmoawrmrtdjwnfylftbczpqgyndhnryx"]; _tvvofindvdffkwpcupeqmofhfbasukbkrdnhrchumqmyoztuckzatljjlqnuugmrpuqo = [_this,0,0,[0]] call BIS_fnc_param;  switch (_tvvofindvdffkwpcupeqmofhfbasukbkrdnhrchumqmyoztuckzatljjlqnuugmrpuqo) do { 	case 0: { 		player setVariable ["restrained",false,true]; 		if(life_inIsolation) exitWith {};  		life_inIsolation = true; 		player setPos [3205.17,13183.5,7.92122]; 		[] spawn { 			while {true} do { 				if(!life_inIsolation) exitWith {player setPos [3205.27,13182.9,10.8815]}; 				if(((getPosATL player) select 2 < 5) OR (player distance [3205.17,13183.5,7.92122] > 2)) then { 					player setPos [3205.17,13183.5,7.92122]; 				}; 				sleep 0.3; 			}; 		}; 	};  	case 1: { 		if(life_inIsolation) then { 			life_inIsolation = false; 			player setVariable ["restrained",TRUE,TRUE]; 			[player] call life_fnc_restrain; 		}; 	}; 	 	case 2: { 		if(playerSide != west) exitWith {}; 		_nndeobnvuplruwesmwxwdwxcwtqiaxasbmoawrmrtdjwnfylftbczpqgyndhnryx = cursorTarget; 		if(!(_nndeobnvuplruwesmwxwdwxcwtqiaxasbmoawrmrtdjwnfylftbczpqgyndhnryx getVariable ["Restrained",false,true])) exitWith {hint "Bara fastbundna spelare kan bli nertvingade!";}; 		[0] remoteExec ["life_fnc_tqvdcyrwegfsawosuiyemffealyjbmozeodxzxasjyidhszfoi",_nndeobnvuplruwesmwxwdwxcwtqiaxasbmoawrmrtdjwnfylftbczpqgyndhnryx]; 	};  	case 3: { 		if(life_inIsolation) exitWith {}; 		_nndeobnvuplruwesmwxwdwxcwtqiaxasbmoawrmrtdjwnfylftbczpqgyndhnryx = []; 		{ 			if(isPlayer _x) then {_nndeobnvuplruwesmwxwdwxcwtqiaxasbmoawrmrtdjwnfylftbczpqgyndhnryx pushBack _x;}; 		} foreach nearestObjects [player,["Man"],15]; 		[1] remoteExec ["life_fnc_tqvdcyrwegfsawosuiyemffealyjbmozeodxzxasjyidhszfoi",_nndeobnvuplruwesmwxwdwxcwtqiaxasbmoawrmrtdjwnfylftbczpqgyndhnryx]; 	}; 	 	case 4: { 		life_inIsolation = false; 	}; }; 