private ["_upyrrlsmvkubqpamdsbrmfjqctfdlyqaqbyqwyogpcpymcppbcphkpkwelmf","_zhefzdwwigtacdihnyhtqgmuuyarwsnjpsmjrvticfnbjxulqgpqqwskozuaey","_dgslpdseocelzdhbezaqcnysbpyligdowcqlbcktgxzclgfxanqylevtiiwbihjzxivhg"];  if(safekeeping_inprogress) exitWith {hint localize "STR_m_NoUseFuncWhileSafeK";};  private ["_wvelddhcfadszgfvfmlyzvotkiihvrfcfzclpjqudhbgsdpubpplmpdsuavfo", "_oanwffxkzfbhuzysvxjuodfyiirygxxmcfwgxnfvwizhzkaueoulgoiszfsevmmf","_cafjniphzpaudbhezdwnkqbjmpiwotfqfhuqlqyliqazxdrcoimxfgftwbthwfblks", "_name", "_blogefcrtmojcurashlxmzfmecxnssltzrxlrlvrgninrnyqwzqxvhwhchoucipvxg"]; disableSerialization; _blogefcrtmojcurashlxmzfmecxnssltzrxlrlvrgninrnyqwzqxvhwhchoucipvxg = 1500; 	 if((lbCurSel _blogefcrtmojcurashlxmzfmecxnssltzrxlrlvrgninrnyqwzqxvhwhchoucipvxg) == -1) then { 	_oanwffxkzfbhuzysvxjuodfyiirygxxmcfwgxnfvwizhzkaueoulgoiszfsevmmf = player; 	_cafjniphzpaudbhezdwnkqbjmpiwotfqfhuqlqyliqazxdrcoimxfgftwbthwfblks = (getPlayerUID player); 	_name = profileName; 	_wvelddhcfadszgfvfmlyzvotkiihvrfcfzclpjqudhbgsdpubpplmpdsuavfo = true; } else { 	_TargetIdx = lbValue[_blogefcrtmojcurashlxmzfmecxnssltzrxlrlvrgninrnyqwzqxvhwhchoucipvxg, (lbCurSel _blogefcrtmojcurashlxmzfmecxnssltzrxlrlvrgninrnyqwzqxvhwhchoucipvxg)]; 	for "_idx" from 0 to (lbSize _blogefcrtmojcurashlxmzfmecxnssltzrxlrlvrgninrnyqwzqxvhwhchoucipvxg) do { 		if(lbValue[_blogefcrtmojcurashlxmzfmecxnssltzrxlrlvrgninrnyqwzqxvhwhchoucipvxg, (lbCurSel _blogefcrtmojcurashlxmzfmecxnssltzrxlrlvrgninrnyqwzqxvhwhchoucipvxg)] == _TargetIdx) then { 			_oanwffxkzfbhuzysvxjuodfyiirygxxmcfwgxnfvwizhzkaueoulgoiszfsevmmf = (ADP_nameCache select _Targetidx) select 0; 			_cafjniphzpaudbhezdwnkqbjmpiwotfqfhuqlqyliqazxdrcoimxfgftwbthwfblks = (ADP_nameCache select _Targetidx) select 1; 			_name = (ADP_nameCache select _Targetidx) select 2; 			_wvelddhcfadszgfvfmlyzvotkiihvrfcfzclpjqudhbgsdpubpplmpdsuavfo = true; 		}; 	}; };  if(_wvelddhcfadszgfvfmlyzvotkiihvrfcfzclpjqudhbgsdpubpplmpdsuavfo) then { 	[_oanwffxkzfbhuzysvxjuodfyiirygxxmcfwgxnfvwizhzkaueoulgoiszfsevmmf] spawn life_fnc_hhoghqhtpolklpaeesudyrizdrfhukylsgbqyacxpmyaiqjzuy;  }; 