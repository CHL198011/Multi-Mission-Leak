 private["_lmncsjxlwyruvdqhzceophvbhvqmfvrwvvygfldefighxtljjxktbvogchrvhk","_lnuhooixpbegxvmvvzwuavcbybhwdhcofnfuxvedozpfabwywwmudopzddgjl","_dpmtwupsfajdqijhtlkrnqberozljnvhaooshvbnuhuxxikcozbdfyazyfxkooejylstzz"]; disableSerialization;   deathCounter = 0; _lmncsjxlwyruvdqhzceophvbhvqmfvrwvvygfldefighxtljjxktbvogchrvhk = 50000; _lnuhooixpbegxvmvvzwuavcbybhwdhcofnfuxvedozpfabwywwmudopzddgjl = 0; deathClose = objNull; deathMedics = []; player setVariable["isAlive",false,true];    [] spawn { 	_lmncsjxlwyruvdqhzceophvbhvqmfvrwvvygfldefighxtljjxktbvogchrvhk = 50000; 	 	while{!(isNull (findDisplay 7300))} do { 		if(deathCounter%10 == 0) then { 			deathMedics = []; 			{ 				if((side _x) == independent && !(_x getVariable ["Safekeeping",false])) then {deathMedics pushBack _x;}; 			} foreach playableUnits; 			if((count deathMedics) == 0) then {_lmncsjxlwyruvdqhzceophvbhvqmfvrwvvygfldefighxtljjxktbvogchrvhk = 0;}; 			((findDisplay 7300) displayCtrl 7304) ctrlSetText format[localize "STR_Medic_Online",count deathMedics]; 		}; 		 		if(deathCounter%10 == 0 && (count deathMedics) > 0) then { 			{ 				_lnuhooixpbegxvmvvzwuavcbybhwdhcofnfuxvedozpfabwywwmudopzddgjl = if(isNull life_corpse) then {0} else {life_corpse distance _x}; 				if(_lmncsjxlwyruvdqhzceophvbhvqmfvrwvvygfldefighxtljjxktbvogchrvhk > _lnuhooixpbegxvmvvzwuavcbybhwdhcofnfuxvedozpfabwywwmudopzddgjl) then { 					_lmncsjxlwyruvdqhzceophvbhvqmfvrwvvygfldefighxtljjxktbvogchrvhk = _lnuhooixpbegxvmvvzwuavcbybhwdhcofnfuxvedozpfabwywwmudopzddgjl; 					deathClose = _x; 				}; 			} foreach deathMedics; 		}; 		 		if(!(isNull deathClose)) then {_lmncsjxlwyruvdqhzceophvbhvqmfvrwvvygfldefighxtljjxktbvogchrvhk = if(isNull life_corpse) then {0} else {(life_corpse distance deathClose)};}; 		_dpmtwupsfajdqijhtlkrnqberozljnvhaooshvbnuhuxxikcozbdfyazyfxkooejylstzz = format[localize "STR_Medic_NearestMedic",round _lmncsjxlwyruvdqhzceophvbhvqmfvrwvvygfldefighxtljjxktbvogchrvhk]; 		if((call life_adminlevel) >= 4) then {_dpmtwupsfajdqijhtlkrnqberozljnvhaooshvbnuhuxxikcozbdfyazyfxkooejylstzz = _dpmtwupsfajdqijhtlkrnqberozljnvhaooshvbnuhuxxikcozbdfyazyfxkooejylstzz + (if(isNull deathClose) then {""} else {format[" (%1)",name deathClose]})}; 		((findDisplay 7300) displayCtrl 7305) ctrlSetText _dpmtwupsfajdqijhtlkrnqberozljnvhaooshvbnuhuxxikcozbdfyazyfxkooejylstzz; 		 		sleep 1; 		deathCounter = deathCounter + 1; 	}; };    