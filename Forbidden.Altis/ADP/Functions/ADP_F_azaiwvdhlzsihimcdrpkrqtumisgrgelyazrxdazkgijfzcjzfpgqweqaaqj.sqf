private ["_eooycqagnntjxhmcutsdqskyzjmwxyrqcjytdwbmpxmldrkoltxgvvdeibtlmhijm","_zcvwozbihrnazbxgzlvllureauzuxlrwgpdyzjkidjfbvfvkizzetwixrwxedl","_ahjfmzqgfcririmzmntpgjkmktuosriklxubrvsfgnvbdqwitylcawzknrybkfznqnq"];  _zcvwozbihrnazbxgzlvllureauzuxlrwgpdyzjkidjfbvfvkizzetwixrwxedl = getPos player; _eooycqagnntjxhmcutsdqskyzjmwxyrqcjytdwbmpxmldrkoltxgvvdeibtlmhijm = ctrlText 1400; _ahjfmzqgfcririmzmntpgjkmktuosriklxubrvsfgnvbdqwitylcawzknrybkfznqnq = false;  if(toUpper _eooycqagnntjxhmcutsdqskyzjmwxyrqcjytdwbmpxmldrkoltxgvvdeibtlmhijm == toUpper "ta bort") then { 	_zcvwozbihrnazbxgzlvllureauzuxlrwgpdyzjkidjfbvfvkizzetwixrwxedl = []; 	hint localize "STR_m_RemovedRestricted"; } else { 	_eooycqagnntjxhmcutsdqskyzjmwxyrqcjytdwbmpxmldrkoltxgvvdeibtlmhijm = parseNumber _eooycqagnntjxhmcutsdqskyzjmwxyrqcjytdwbmpxmldrkoltxgvvdeibtlmhijm; 	if(_eooycqagnntjxhmcutsdqskyzjmwxyrqcjytdwbmpxmldrkoltxgvvdeibtlmhijm == 0) exitWith {hint localize "STR_m_MustGiveRadiusLeft"; _ahjfmzqgfcririmzmntpgjkmktuosriklxubrvsfgnvbdqwitylcawzknrybkfznqnq = true;}; 	hint format[localize "STR_m_AddedRestricted",_eooycqagnntjxhmcutsdqskyzjmwxyrqcjytdwbmpxmldrkoltxgvvdeibtlmhijm]; }; if(_ahjfmzqgfcririmzmntpgjkmktuosriklxubrvsfgnvbdqwitylcawzknrybkfznqnq) exitWith {};  [4,(getPlayerUID player),"-","Avsp�rrat omr�de",if(count _zcvwozbihrnazbxgzlvllureauzuxlrwgpdyzjkidjfbvfvkizzetwixrwxedl == 0) then {"Alla borttagna"} else {format["Tillagt, radie: %1 meter",_eooycqagnntjxhmcutsdqskyzjmwxyrqcjytdwbmpxmldrkoltxgvvdeibtlmhijm]},profileName,"-",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; [_zcvwozbihrnazbxgzlvllureauzuxlrwgpdyzjkidjfbvfvkizzetwixrwxedl,_eooycqagnntjxhmcutsdqskyzjmwxyrqcjytdwbmpxmldrkoltxgvvdeibtlmhijm] remoteExec ["TON_fnc_xhpqkytuxglkxaextmorhivpifzayfaxfmdijdgwusdsqcrdzzq",2]; 