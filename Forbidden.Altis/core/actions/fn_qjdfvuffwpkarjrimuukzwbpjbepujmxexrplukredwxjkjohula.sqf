 private["_agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn","_dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre","_zkgrojlyzmcaoywbyiponkpjlkvimdmscfzjcvracjfeqvzttdronoaqygvaty","_gcbjbgnknnkhliwjeiopevjvvdldjbpjhjefjtypfzfroswsfhxmvvjigovhx","_progress","_aedovofcfrjvqgzpicbpidqxgiihdtaabtsgbpxybywhdyeyusauttqvckediivrmvi","_kebgpilfykehyeiykpazgckdqfgjqnrwhlmetsovvyfqkyrrzdppktrnndztnlsngy","_zduwljwgvlvxkgmustrclkfwdifbywuutrobhgfypdswwrotrflvjhmaewvpakbxklpdb","_esvgvmuohooewkkhlgxsmxaxwzqmclmhfxskbiomntslgrrsdspenswhrcclvqu","_jiepebbbwpmczuojwetlaqpuidfsaiiyiuguwmvsktbwdnasmkyweqyozvgcieodchz"]; _dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;  _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;   _action = [_this,2] call BIS_fnc_param;  if(side _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn != civilian) exitWith { hint "Du kan inte rana bensinmackar...!" }; if(_agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn distance _dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre > 5) exitWith { hint "Du m�ste vara inom 5 meter fr�n kassan f�r att r�na honom!" };  if !(_zkgrojlyzmcaoywbyiponkpjlkvimdmscfzjcvracjfeqvzttdronoaqygvaty) then { _zkgrojlyzmcaoywbyiponkpjlkvimdmscfzjcvracjfeqvzttdronoaqygvaty = 1000; }; if (_zduwljwgvlvxkgmustrclkfwdifbywuutrobhgfypdswwrotrflvjhmaewvpakbxklpdb) exitWith { hint "Ett r�n p�g�r redan!" }; if (vehicle player != _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn) exitWith { hint "Du kan inte rana fran ditt fordon...!" };  if !(alive _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn) exitWith {}; if (currentWeapon _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn in ["","Binoculars"]) exitWith { hint "HaHa, du skrammer ingen, stick din pajas!" }; if (_zkgrojlyzmcaoywbyiponkpjlkvimdmscfzjcvracjfeqvzttdronoaqygvaty == 0) exitWith { hint "Kassan ar tom!" };  _cops = {(side _x == west) && !(_x getVariable ["InsatsPolis",false])} count playableUnits; if(_cops < 2) exitWith{[[_vault,-1],"disableSerialization;",false,false] spawn life_fnc_MP; hint "Det ska finnas minst 2 poliser innan du kan rana macken!";};  _zduwljwgvlvxkgmustrclkfwdifbywuutrobhgfypdswwrotrflvjhmaewvpakbxklpdb = true; _zkgrojlyzmcaoywbyiponkpjlkvimdmscfzjcvracjfeqvzttdronoaqygvaty = 5000 * _cops; if(perk_10 >= 3) then {_zkgrojlyzmcaoywbyiponkpjlkvimdmscfzjcvracjfeqvzttdronoaqygvaty = _zkgrojlyzmcaoywbyiponkpjlkvimdmscfzjcvracjfeqvzttdronoaqygvaty * 2;}; _dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre removeAction _action; _dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre switchMove "AmovPercMstpSsurWnonDnon";  _jiepebbbwpmczuojwetlaqpuidfsaiiyiuguwmvsktbwdnasmkyweqyozvgcieodchz = (random (100) > 50); if(perk_10 < 2) then {_jiepebbbwpmczuojwetlaqpuidfsaiiyiuguwmvsktbwdnasmkyweqyozvgcieodchz = false;};  if!(_jiepebbbwpmczuojwetlaqpuidfsaiiyiuguwmvsktbwdnasmkyweqyozvgcieodchz) then { 	[[2,localize "STR_m_CopMsgRobGas"],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };  disableSerialization; 5 cutRsc ["life_progress","PLAIN"]; _gcbjbgnknnkhliwjeiopevjvvdldjbpjhjefjtypfzfroswsfhxmvvjigovhx = uiNameSpace getVariable "life_progress"; _progress = _gcbjbgnknnkhliwjeiopevjvvdldjbpjhjefjtypfzfroswsfhxmvvjigovhx displayCtrl 38201; _aedovofcfrjvqgzpicbpidqxgiihdtaabtsgbpxybywhdyeyusauttqvckediivrmvi = _gcbjbgnknnkhliwjeiopevjvvdldjbpjhjefjtypfzfroswsfhxmvvjigovhx displayCtrl 38202; _aedovofcfrjvqgzpicbpidqxgiihdtaabtsgbpxybywhdyeyusauttqvckediivrmvi ctrlSetText format["Du ranar, stanna inom 10 meter!... (1%1)...","%"]; _progress progressSetPosition 0.01; _kebgpilfykehyeiykpazgckdqfgjqnrwhlmetsovvyfqkyrrzdppktrnndztnlsngy = 0.01;   if(_zduwljwgvlvxkgmustrclkfwdifbywuutrobhgfypdswwrotrflvjhmaewvpakbxklpdb) then { 	while{true} do 	{ 		sleep 2.40; 		_kebgpilfykehyeiykpazgckdqfgjqnrwhlmetsovvyfqkyrrzdppktrnndztnlsngy = _kebgpilfykehyeiykpazgckdqfgjqnrwhlmetsovvyfqkyrrzdppktrnndztnlsngy + 0.01; 		_progress progressSetPosition _kebgpilfykehyeiykpazgckdqfgjqnrwhlmetsovvyfqkyrrzdppktrnndztnlsngy; 		_aedovofcfrjvqgzpicbpidqxgiihdtaabtsgbpxybywhdyeyusauttqvckediivrmvi ctrlSetText format["Du ranar, stanna inom 10 meter!... (%1%2)...",round(_kebgpilfykehyeiykpazgckdqfgjqnrwhlmetsovvyfqkyrrzdppktrnndztnlsngy * 100),"%"]; 		_esvgvmuohooewkkhlgxsmxaxwzqmclmhfxskbiomntslgrrsdspenswhrcclvqu = position player;  		 		if!(_jiepebbbwpmczuojwetlaqpuidfsaiiyiuguwmvsktbwdnasmkyweqyozvgcieodchz) then { 			_marker = createMarker ["Marker200", _esvgvmuohooewkkhlgxsmxaxwzqmclmhfxskbiomntslgrrsdspenswhrcclvqu];  			"Marker200" setMarkerColor "ColorRed"; 			"Marker200" setMarkerText localize "STR_m_RobWarning"; 			"Marker200" setMarkerType "mil_warning";	 		}; 		 		if(_kebgpilfykehyeiykpazgckdqfgjqnrwhlmetsovvyfqkyrrzdppktrnndztnlsngy >= 1) exitWith {}; 		if(_agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn distance _dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre > 10.5) exitWith { }; 		if!(alive _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn) exitWith {}; 		if(!life_isAlive) exitWith {}; 	}; 	if(!_jiepebbbwpmczuojwetlaqpuidfsaiiyiuguwmvsktbwdnasmkyweqyozvgcieodchz) then {deleteMarker "Marker200";}; 	5 cutText ["","PLAIN"]; 	if!(alive _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn) exitWith { _zduwljwgvlvxkgmustrclkfwdifbywuutrobhgfypdswwrotrflvjhmaewvpakbxklpdb = false; }; 	if(_agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn distance _dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre > 10.5) exitWith { if(!_jiepebbbwpmczuojwetlaqpuidfsaiiyiuguwmvsktbwdnasmkyweqyozvgcieodchz) then {deleteMarker "Marker200";}; _dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre switchMove ""; hint "Du maste stanna inom 10 meter f�r att rana macken! - Nu ar kassan last."; 5 cutText ["","PLAIN"]; _zduwljwgvlvxkgmustrclkfwdifbywuutrobhgfypdswwrotrflvjhmaewvpakbxklpdb = false; }; 	  	titleText[format["Du har stulit $%1, stick innan snuten kommer!",[_zkgrojlyzmcaoywbyiponkpjlkvimdmscfzjcvracjfeqvzttdronoaqygvaty] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq],"PLAIN"]; 	 	life_cash = life_cash + _zkgrojlyzmcaoywbyiponkpjlkvimdmscfzjcvracjfeqvzttdronoaqygvaty;  	_zduwljwgvlvxkgmustrclkfwdifbywuutrobhgfypdswwrotrflvjhmaewvpakbxklpdb = false; 	life_use_atm = false; 	sleep (30 + random(180)); 	life_use_atm = true; 	if!(alive _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn) exitWith {}; 	[getPlayerUID _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn,name _agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn,"211",_agtyyovfsukypjzzxymeqhjltxyrprrmmuknidupmfuyhqncyqquajjlivzvigwuwsikn] spawn life_fnc_emtvegxsjbicbxdyyizalaeqhulvbokspdnvrxanbasgedbaphvjbq; }; sleep 300; _action = _dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre addAction["Rana macken!",life_fnc_qjdfvuffwpkarjrimuukzwbpjbepujmxexrplukredwxjkjohula];	 _dwurqpbfzhqzxfokckvzpeklsqpvzvdjptqvkeuukzflojobbjvktwtvjugre switchMove ""; 