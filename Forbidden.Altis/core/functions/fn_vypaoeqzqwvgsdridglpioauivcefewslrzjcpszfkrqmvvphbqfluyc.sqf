private ["_pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum","_vijvfusuhapudttofbdlezpmfsumqkgxrzoinxayzmsumlnptgynzbuizmnrnowquwu","_uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr","_mtrgigyhmyfsjliusdzwbygayrkjaxutsuxkmggzcpqhyvvokqswoytlgkdmhzuk","_gqowmeyysnyzthamyfquoytktrsboiolcnymrxoxfwwcwsjlhsawmzeiulwrokpuydfl"];  _pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum = [_this,0,1,[0,objNull]] call BIS_fnc_param;  _gqowmeyysnyzthamyfquoytktrsboiolcnymrxoxfwwcwsjlhsawmzeiulwrokpuydfl = 0; if(typename _pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum == typeName 0) then { 	_gqowmeyysnyzthamyfquoytktrsboiolcnymrxoxfwwcwsjlhsawmzeiulwrokpuydfl = switch (_pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum) do { 		case 1: {2}; 		case 2: {2}; 		case 3: {10}; 		case 4: {10}; 		case 5: {2}; 		case 9: {6}; 	}; }; if(perk_35 < _gqowmeyysnyzthamyfquoytktrsboiolcnymrxoxfwwcwsjlhsawmzeiulwrokpuydfl && (call life_adminlevel) < 5) exitWith {hint format[localize "STR_m_MissingPerkValue",localize ([35] call life_fnc_qokbfvuujyauzhpwhhtwfwakspbzosfzvnzazblmmcrbpdqwwbfdbdztgoic),_gqowmeyysnyzthamyfquoytktrsboiolcnymrxoxfwwcwsjlhsawmzeiulwrokpuydfl];};  if(isNil "airDropTime") then {airDropTime = 0;}; if(time - airDropTime < 15 && (call life_adminlevel) < 5) exitWith {hint format[localize "STR_m_TooFastAirDrop",15]};  if(typename _pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum == typeName 0) then { 	if(_pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum != 9) then { 		airDropTime = time; 		[1,(getPlayerUID player),"-","Airdrop called",format["Package %1",_pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum],profilename,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	}; } else { 	airDropTime = time; 	[1,(getPlayerUID player),"-","Airdrop called",getText(configFile >> "CfgVehicles" >> (typeOf _pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum) >> "displayName"),profilename,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; };  _mtrgigyhmyfsjliusdzwbygayrkjaxutsuxkmggzcpqhyvvokqswoytlgkdmhzuk = false; if(typeName _pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum == (typeName 0)) then { 	if(_pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum == 9) exitWith { 		[[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] call life_fnc_MP;   createDialog "Life_impound_menu";   disableSerialization;   ctrlSetText[2802,"Fetching Vehicles...."];   life_garage_sp = "airdrop"; life_garage_type = "Car"; 		_mtrgigyhmyfsjliusdzwbygayrkjaxutsuxkmggzcpqhyvvokqswoytlgkdmhzuk = true; 	}; 	switch (_pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum) do { 		 		case 1: { 			_vijvfusuhapudttofbdlezpmfsumqkgxrzoinxayzmsumlnptgynzbuizmnrnowquwu = [ 				[], 				[], 				[], 				[], 				[[["lockpick",10]],10] 			]; 			 			_uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr = 15000; 		}; 		 		case 2: { 			_vijvfusuhapudttofbdlezpmfsumqkgxrzoinxayzmsumlnptgynzbuizmnrnowquwu = [ 				[], 				[["toolkit",2]], 				[], 				[], 				[[["tbacon",10],["waterbottle",10],["redgull",10],["fuelFull",2]],40] 			]; 			 			_uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr = 25000; 		}; 		 		case 3: { 			_vijvfusuhapudttofbdlezpmfsumqkgxrzoinxayzmsumlnptgynzbuizmnrnowquwu = [ 				[["arifle_Mk20_F",1]], 				[["optic_mrco",1]], 				[["30Rnd_556x45_Stanag",5]], 				[], 				[] 			]; 			 			_uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr = 550000; 		}; 		 		case 4: { 			_vijvfusuhapudttofbdlezpmfsumqkgxrzoinxayzmsumlnptgynzbuizmnrnowquwu = [ 				[], 				[["U_O_FullGhillie_lsh",1]], 				[], 				[], 				[] 			]; 			 			_uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr = 600000; 		}; 		 		case 5: { 			_vijvfusuhapudttofbdlezpmfsumqkgxrzoinxayzmsumlnptgynzbuizmnrnowquwu = [ 				[], 				[["U_I_C_Soldier_Bandit_4_F",1]], 				[], 				[["B_Carryall_ocamo",1]], 				[] 			]; 			 			_uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr = 100000; 		}; 	}; } else { 	_vijvfusuhapudttofbdlezpmfsumqkgxrzoinxayzmsumlnptgynzbuizmnrnowquwu = _pmznmlbphhnbqbgzlwkxpdtkbtpebldekbrdojrpjnziibciodjydjufkxjum; 	_uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr = 50000; }; if(_mtrgigyhmyfsjliusdzwbygayrkjaxutsuxkmggzcpqhyvvokqswoytlgkdmhzuk) exitWith {}; if(isNil "_vijvfusuhapudttofbdlezpmfsumqkgxrzoinxayzmsumlnptgynzbuizmnrnowquwu") exitWith {};  if(life_atmbank < _uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr) exitWith {}; life_atmbank = life_atmbank - _uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr; [1] call SOCK_fnc_ddjmbrftntgdwpptfaoymlxkcjyscjwhklmcfylqhrqrxtxznnh;  [[1,0],format[localize "STR_m_CalledAirDrop",_uahvifgbgewnbcryzzrujwnhvvnumrmpqjqnlgqaftfutxqyxqqdlzuzjhbpr]] spawn life_fnc_broadcast;  [player,_vijvfusuhapudttofbdlezpmfsumqkgxrzoinxayzmsumlnptgynzbuizmnrnowquwu] remoteExec ["TON_fnc_vypjcauazsnhsudcaqoomtpgsuguvqlpxwfxfvtdvfwiuaccxkosgxow",2]; 