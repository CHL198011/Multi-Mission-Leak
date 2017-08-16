
#include <macro.h>

#define DEBUG true

#define SPY_SETTINGS(TYPE,SETTING) TYPE(missionConfigFile >> "SpyGlass" >> SETTING)
 private["_qflxlogtwxzbkvvqytizbdnpherhjnjoqsybxlpowgyscaxsfxeqpetlvbgkopjxsywosc","_oqwifmwbmauulangscasixspntfhhgaafwxcnveznpurgizneboxjeupnxihxzlsr","_wamxwugdvnztihysfjslatfwvimddvcrradmcteqnpaykgzgfqjsgtdqssegjsvfiutyx","_ulwfnffakaexhaypcyimtuunhgsuokbngldocqfazswlfdlermvzbezujxpt","_hktovjhjdqzfjzjolxnphsattwckhlcwrblvgkrimzuewjlqwfdbabdksqpyttfwaqi","_areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs","_gkxkmfmmzlcfvzappuxussapfjoyqfvcjrgikqfpzupgxnipkfhwvkdjpznzfzyzrwq","_bcoolsxxwppkpanvcafunqdhpcvgtycwkmabuooflbrhwgcqzyvrotiqyfxkguhltvtva","_areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs_UI","_ukwvjvllpyxcwnbtvsjwbzrmvzqwjwxwawivjqcpmttintvfvbdpllluoyzllga"]; _qflxlogtwxzbkvvqytizbdnpherhjnjoqsybxlpowgyscaxsfxeqpetlvbgkopjxsywosc = SPY_SETTINGS(getArray,"BIS_Functions"); _bcoolsxxwppkpanvcafunqdhpcvgtycwkmabuooflbrhwgcqzyvrotiqyfxkguhltvtva = SPY_SETTINGS(getArray,"BIS_UI_Functions"); _oqwifmwbmauulangscasixspntfhhgaafwxcnveznpurgizneboxjeupnxihxzlsr = SPY_SETTINGS(getArray,"LIFE_Functions"); _wamxwugdvnztihysfjslatfwvimddvcrradmcteqnpaykgzgfqjsgtdqssegjsvfiutyx = SPY_SETTINGS(getArray,"SERVER_Functions"); _ulwfnffakaexhaypcyimtuunhgsuokbngldocqfazswlfdlermvzbezujxpt = SPY_SETTINGS(getArray,"SOCK_Functions"); _hktovjhjdqzfjzjolxnphsattwckhlcwrblvgkrimzuewjlqwfdbabdksqpyttfwaqi = SPY_SETTINGS(getArray,"DB_Functions"); _areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs = SPY_SETTINGS(getArray,"allowedVariables"); _areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs_UI = SPY_SETTINGS(getArray,"allowedVariables_UI"); _ukwvjvllpyxcwnbtvsjwbzrmvzqwjwxwawivjqcpmttintvfvbdpllluoyzllga = count allVariables profileNameSpace;   for "_i" from 1 to 125 do { 	if(_i < SPY_SETTINGS(getNumber,"civSlotNumber")) then {_areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs pushBack [format["civ_%1",_i],"OBJECT"]}; 	if(_i < SPY_SETTINGS(getNumber,"copSlotNumber")) then {_areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs pushBack [format["cop_%1",_i],"OBJECT"]}; 	if(_i < SPY_SETTINGS(getNumber,"medSlotNumber")) then {_areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs pushBack [format["medic_%2",_i],"OBJECT"]}; };   { 	if(!(_x in _qflxlogtwxzbkvvqytizbdnpherhjnjoqsybxlpowgyscaxsfxeqpetlvbgkopjxsywosc)) then { 		if(!(_x in _oqwifmwbmauulangscasixspntfhhgaafwxcnveznpurgizneboxjeupnxihxzlsr)) then { 			if(!(_x in _wamxwugdvnztihysfjslatfwvimddvcrradmcteqnpaykgzgfqjsgtdqssegjsvfiutyx)) then { 				if(!(_x in _ulwfnffakaexhaypcyimtuunhgsuokbngldocqfazswlfdlermvzbezujxpt)) then { 					if(!(_x in _hktovjhjdqzfjzjolxnphsattwckhlcwrblvgkrimzuewjlqwfdbabdksqpyttfwaqi)) then { 						if(!(_x in _bcoolsxxwppkpanvcafunqdhpcvgtycwkmabuooflbrhwgcqzyvrotiqyfxkguhltvtva)) then { 							_varType = typeName (GVAR_UINS _x); 							_find = _areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs find [_x,_varType]; 							if(EQUAL(_find,-1)) then { 								SVAR_UINS [_x,nil]; 							}; 						}; 					}; 				}; 			}; 		}; 	}; } foreach (allVariables uiNamespace);   _gkxkmfmmzlcfvzappuxussapfjoyqfvcjrgikqfpzupgxnipkfhwvkdjpznzfzyzrwq = { 	{ 		if(!(_x in _qflxlogtwxzbkvvqytizbdnpherhjnjoqsybxlpowgyscaxsfxeqpetlvbgkopjxsywosc)) then { 			if(!(_x in _oqwifmwbmauulangscasixspntfhhgaafwxcnveznpurgizneboxjeupnxihxzlsr)) then { 				if(!(_x in _wamxwugdvnztihysfjslatfwvimddvcrradmcteqnpaykgzgfqjsgtdqssegjsvfiutyx)) then { 					if(!(_x in _ulwfnffakaexhaypcyimtuunhgsuokbngldocqfazswlfdlermvzbezujxpt)) then { 						if(!(_x in _hktovjhjdqzfjzjolxnphsattwckhlcwrblvgkrimzuewjlqwfdbabdksqpyttfwaqi)) then { 							_varType = typeName (GVAR_MNS _x); 							_find = _areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs find [_x,_varType]; 							if(EQUAL(_find,-1)) then { 								diag_log format["Variable: %1 is not allowed TYPE: %2 NS: MN",_x,_varType]; 								failMission "SpyGlass"; 							}; 						}; 					}; 				}; 			}; 		}; 	} foreach allVariables missionNamespace; };  _uiCheckFunction = { 	{ 		if(!(_x in _qflxlogtwxzbkvvqytizbdnpherhjnjoqsybxlpowgyscaxsfxeqpetlvbgkopjxsywosc)) then { 			if(!(_x in _oqwifmwbmauulangscasixspntfhhgaafwxcnveznpurgizneboxjeupnxihxzlsr)) then { 				if(!(_x in _wamxwugdvnztihysfjslatfwvimddvcrradmcteqnpaykgzgfqjsgtdqssegjsvfiutyx)) then { 					if(!(_x in _ulwfnffakaexhaypcyimtuunhgsuokbngldocqfazswlfdlermvzbezujxpt)) then { 						if(!(_x in _hktovjhjdqzfjzjolxnphsattwckhlcwrblvgkrimzuewjlqwfdbabdksqpyttfwaqi)) then { 							if(!(_x in _bcoolsxxwppkpanvcafunqdhpcvgtycwkmabuooflbrhwgcqzyvrotiqyfxkguhltvtva)) then { 								_varType = typeName (GVAR_UINS _x); 								_find = _areahttkzoyjmjjvnbrqinsnvhmwgvhyijeqqbwfyuojwbajbbxrmsrgxlfpuhqczfwvs_UI find [_x,_varType]; 								if(EQUAL(_find,-1)) then { 									diag_log format["Variable: %1 is not allowed TYPE: %2 NS: UI",_x,_varType]; 									failMission "SpyGlass"; 								}; 							}; 						}; 					}; 				}; 			}; 		}; 	} foreach allVariables uiNamespace; };  while {true} do { 	systemChat "Calling check"; 	objNull call _gkxkmfmmzlcfvzappuxussapfjoyqfvcjrgikqfpzupgxnipkfhwvkdjpznzfzyzrwq; 	uiSleep 10; 	objNull call _uiCheckFunction; 	if(!(EQUAL((count allVariables profileNameSpace),_ukwvjvllpyxcwnbtvsjwbzrmvzqwjwxwawivjqcpmttintvfvbdpllluoyzllga)) OR ((count allVariables parsingNamespace) > 0)) then { 		failMission "SpyGlass"; 	}; 	uiSleep (5 * 60);  }; 