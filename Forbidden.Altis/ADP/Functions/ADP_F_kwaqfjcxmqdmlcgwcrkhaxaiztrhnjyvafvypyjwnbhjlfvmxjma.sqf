 if(var_base getVariable ["SafeKeeping_1stPerson",false]) then { 	var_base setVariable ["SafeKeeping_1stPerson",false,true]; 	hint localize "STR_m_FirstPersonDisabled"; 	[false] remoteExec ["life_fnc_kwaqfjcxmqdmlcgwcrkhaxaiztrhnjyvafvypyjwnbhjlfvmxjma",-2]; 	[4,(getPlayerUID player),"-","First person krav","Disabled",profileName,"-",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; } else { 	var_base setVariable ["SafeKeeping_1stPerson",true,true]; 	hint "Alla safekeeping-spelare tvingas nu vara i first person."; 	[true] remoteExec ["life_fnc_kwaqfjcxmqdmlcgwcrkhaxaiztrhnjyvafvypyjwnbhjlfvmxjma",-2]; 	[4,(getPlayerUID player),"-","First person krav","Enabled",profileName,"-",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; }; 