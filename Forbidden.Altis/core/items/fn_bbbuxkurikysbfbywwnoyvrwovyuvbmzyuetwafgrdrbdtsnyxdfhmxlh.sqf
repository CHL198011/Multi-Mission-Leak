 private["_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd","_door","_zzltpfwbspyceenumgljrmnccowixqwxopswjfumzqsbugponkwlzwewvpmkljwomz","_ebncoxgjcvpkmdnovnchdmwrykajxcctvvbeykkthqchlxpffydrsfekjqpvmnb","_ueiceidbwyzjuvvksxjiesynqbjjwieipfagjzhdxkdnzpoaxkfrxtrtwlpukh","_mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns","_qrsrdesbcwlerqclvqvugbyjwqenwmxadfckckwpueeiovkefqnrummkmlizmc","_fepmchupgcpxfgegawracgiepqpaqljxybyfieaogxjsxqbjgygsejddweri","_ownerNotOnline","_vsuldddkespimjmeajqhwqnyluflzggjvzpkfawfezsthhkvjyopgmxbewleqgeb","_ixwadxjxdxuqdrqtypagbenxcsckcpnntdorwqlobpaehmmgqiljrwykslwbjazgbc","_fepmchupgcpxfgegawracgiepqpaqljxybyfieaogxjsxqbjgygsejddweriText","_mlrqipuygealthkbxpbeingyfwtkwhnspuzbharcfcverkwysuoihmsgadiaz","_rkvbsszjorgglckrpskoknjfbneonruvobcepovetffxguxlpufqmgniuqtzftofm","_bcqwwgqdzbjmydlqchbpogqxqavswueihvnjndgcxkmfjgtblujhbhfbuavusqpazkv","_mkitnfhfkphllffpexgzewcpirvevvtogruldbrxludduwmxxqhoyjtjbkerc","_rebels","_sblwteugbuvlbkcguwdpiqikmvqevvstlybfmbbveqtkydpquohhvygsorzcdpzq","_vvjxwguhozmmqqljyhumwgfwzuzxsraufaisjyojgsqahcerdmmxneydfgyq"]; _tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;  if(life_debugging) then {systemChat "test1";}; if((player distance [3205.27,13182.9,10.8815]) < 5) then {_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd = isolation_floor;}; if(isNull _tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd) exitWith {hint localize "STR_m_NothingToBoltcut";};  _zzltpfwbspyceenumgljrmnccowixqwxopswjfumzqsbugponkwlzwewvpmkljwomz = (nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd; _ebncoxgjcvpkmdnovnchdmwrykajxcctvvbeykkthqchlxpffydrsfekjqpvmnb = (nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) == _tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd; _ueiceidbwyzjuvvksxjiesynqbjjwieipfagjzhdxkdnzpoaxkfrxtrtwlpukh = ["taxWall_",str _tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd,0] call TON_fnc_rizooueqiujrzomxvqjrvxtfracppjrckttqkukvwwticyrsdkwhimpaeao;  if(_ueiceidbwyzjuvvksxjiesynqbjjwieipfagjzhdxkdnzpoaxkfrxtrtwlpukh && (_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd getVariable ["boltcutted",false])) exitWith {};  if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == rebel_radioTower) exitWith {hint localize "STR_m_MustBlowRadio"}; if(_zzltpfwbspyceenumgljrmnccowixqwxopswjfumzqsbugponkwlzwewvpmkljwomz && (life_serverRestartTimeLeft - serverTime) < 2700) exitWith {hint localize "STR_m_FedRestartSoon";}; if(_zzltpfwbspyceenumgljrmnccowixqwxopswjfumzqsbugponkwlzwewvpmkljwomz && (fed_bank getVariable ["AdminLocked",false])) exitWith {hint format[localize "STR_m_AdminLocked","banken"];}; if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == prison && !(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd getVariable ["safe_open",false])) exitWith {hint localize "STR_m_PrisonBlowFirst";};  if(life_debugging) then {systemChat "test2";}; _sblwteugbuvlbkcguwdpiqikmvqevvstlybfmbbveqtkydpquohhvygsorzcdpzq	= {(side _x == west) && !(_x getVariable ["InsatsPolis",false]) && !(_x getVariable ["safekeeping",false])} count playableUnits; _vvjxwguhozmmqqljyhumwgfwzuzxsraufaisjyojgsqahcerdmmxneydfgyq = {(_x getVariable ["InsatsPolis",false]) && !(_x getVariable ["safekeeping",false])} count playableUnits; _bcqwwgqdzbjmydlqchbpogqxqavswueihvnjndgcxkmfjgtblujhbhfbuavusqpazkv = false; if(typeOf _tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd in ["Land_Dome_Big_F","Land_Research_house_V1_F"]) then { 	if(!(fed_bank getVariable ["admin_approved",false])) then { 		if((_sblwteugbuvlbkcguwdpiqikmvqevvstlybfmbbveqtkydpquohhvygsorzcdpzq < 7) && (_vvjxwguhozmmqqljyhumwgfwzuzxsraufaisjyojgsqahcerdmmxneydfgyq < 5)) exitWith {_bcqwwgqdzbjmydlqchbpogqxqavswueihvnjndgcxkmfjgtblujhbhfbuavusqpazkv = true;}; 	}; };  if(_bcqwwgqdzbjmydlqchbpogqxqavswueihvnjndgcxkmfjgtblujhbhfbuavusqpazkv) exitWith {hint localize "STR_Civ_NotEnoughCops"}; if(life_debugging) then {systemChat "test3";};   if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == prison_isolationB && !(prison getVariable ["safe_open",false])) exitWith {hint "Du måste spränga upp fängelsedörren först!";};  if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == rebel_stash && !(rebel_weaponstash getVariable ["safe_open",false])) exitWith {hint localize "STR_m_RebGunsNoOpen";}; if(life_debugging) then {systemChat "test4";};  if!((_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd isKindOf "House_F") OR (_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == rebel_stash) OR _ueiceidbwyzjuvvksxjiesynqbjjwieipfagjzhdxkdnzpoaxkfrxtrtwlpukh) exitWith {hint "You are not looking at a door."}; if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == rebel_weaponstash) exitWith {hint "Denna kan inte dyrkas upp!";}; if(isNil "life_boltcutter_uses") then {life_boltcutter_uses = 0;};  if(_ebncoxgjcvpkmdnovnchdmwrykajxcctvvbeykkthqchlxpffydrsfekjqpvmnb && !(fed_bank getVariable ["globe_boltcutted",false])) exitWith { 	hint localize "STR_m_OuterNotBreached"; 	 };  _ownerNotOnline = false; _qrsrdesbcwlerqclvqvugbyjwqenwmxadfckckwpueeiovkefqnrummkmlizmc = _tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd getVariable ["house_owner",[]]; _vsuldddkespimjmeajqhwqnyluflzggjvzpkfawfezsthhkvjyopgmxbewleqgeb = count _qrsrdesbcwlerqclvqvugbyjwqenwmxadfckckwpueeiovkefqnrummkmlizmc > 0; if(_zzltpfwbspyceenumgljrmnccowixqwxopswjfumzqsbugponkwlzwewvpmkljwomz OR _ebncoxgjcvpkmdnovnchdmwrykajxcctvvbeykkthqchlxpffydrsfekjqpvmnb) then { 	[[[1,2],"STR_ISTR_Bolt_AlertFed",true,[]],"life_fnc_broadcast",true,false] call life_fnc_MP; } else { 	if(_vsuldddkespimjmeajqhwqnyluflzggjvzpkfawfezsthhkvjyopgmxbewleqgeb) then { 		if(!(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd getVariable ["house_owner_online",false])) exitWith {_ownerNotOnline = true;}; 		[1,(getPlayerUID player),_qrsrdesbcwlerqclvqvugbyjwqenwmxadfckckwpueeiovkefqnrummkmlizmc select 0,"Break into house",format["HousePos: %1",(getPosATL _tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd)],profileName,_qrsrdesbcwlerqclvqvugbyjwqenwmxadfckckwpueeiovkefqnrummkmlizmc select 1,str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2];  		if((_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd getVariable ["HouseAlarm",0]) != 0) then { 			["",2,_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd] spawn life_fnc_npzhgtialmlvqgoikuwyxrvlcwqjejujnhxahrfacwjokelkoldxz; 		}; 	}; };  if(_ownerNotOnline) exitWith {hint localize "STR_m_OwnerNotOnline";};  if(life_debugging) then {systemChat "test5";}; if!(prison_cellOpen OR life_is_arrested == 0) exitWith {hint localize "STR_m_LockedIn";};   if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd in [isolation_floor,rebel_stash] OR _ueiceidbwyzjuvvksxjiesynqbjjwieipfagjzhdxkdnzpoaxkfrxtrtwlpukh) then { 	_door = 1; } else { 	_door = [_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd] call life_fnc_jkvvmuvnfrypchjwooxahzhfxbygdozoybzteujqgkxtgenmih; 	if((_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd getVariable[format["bis_disabled_Door_%1",_door],0]) == 0) exitWith {hint localize "STR_House_Raid_DoorUnlocked"}; };  if(life_debugging) then {systemChat "test6";}; if(_door == 0) exitWith {hint localize "STR_Cop_NotaDoor"};  if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == prison && _door in [3,11]) exitWith {hint localize "STR_m_PrisonNotOpen"}; life_action_inUse = true;   disableSerialization; _fepmchupgcpxfgegawracgiepqpaqljxybyfieaogxjsxqbjgygsejddweri = localize "STR_ISTR_Bolt_Process"; 5 cutRsc ["life_progress","PLAIN"]; _rkvbsszjorgglckrpskoknjfbneonruvobcepovetffxguxlpufqmgniuqtzftofm = uiNamespace getVariable "life_progress"; _ixwadxjxdxuqdrqtypagbenxcsckcpnntdorwqlobpaehmmgqiljrwykslwbjazgbc = _rkvbsszjorgglckrpskoknjfbneonruvobcepovetffxguxlpufqmgniuqtzftofm displayCtrl 38201; _fepmchupgcpxfgegawracgiepqpaqljxybyfieaogxjsxqbjgygsejddweriText = _rkvbsszjorgglckrpskoknjfbneonruvobcepovetffxguxlpufqmgniuqtzftofm displayCtrl 38202; _fepmchupgcpxfgegawracgiepqpaqljxybyfieaogxjsxqbjgygsejddweriText ctrlSetText format["%2 (1%1)...","%",_fepmchupgcpxfgegawracgiepqpaqljxybyfieaogxjsxqbjgygsejddweri]; _ixwadxjxdxuqdrqtypagbenxcsckcpnntdorwqlobpaehmmgqiljrwykslwbjazgbc progressSetPosition 0.01; _mlrqipuygealthkbxpbeingyfwtkwhnspuzbharcfcverkwysuoihmsgadiaz = 0.01;  if(life_debugging) then {systemChat "test7";}; switch (typeOf _tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd) do { 	case "Land_Dome_Big_F": {_mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns = 0.0015;};  	case "Land_Research_HQ_F": {_mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns = 0.0010;};  	default {_mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns = 0.0015;}  }; if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd in [prison_tower,wardens_house,prison_isolationB]) then {_mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns = 0.0045;};  if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == prison) then {_mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns = 0.0045;};  if(_vsuldddkespimjmeajqhwqnyluflzggjvzpkfawfezsthhkvjyopgmxbewleqgeb) then {_mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns = 0.0010;}; if(_ueiceidbwyzjuvvksxjiesynqbjjwieipfagjzhdxkdnzpoaxkfrxtrtwlpukh) then {_mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns = 0.045}; if(life_debugging) then {systemChat "test8";}; if(perk_19 >= 6) then {_mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns = _mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns * 1.25};  if(life_debugging) then {systemChat "test9";}; while {true} do { 	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then { 		[[player,"AinvPknlMstpSnonWnonDnon_medic_1",true],"life_fnc_gbrisqbkirkdomhkildcgyttqicsflitrnbqgpixyslsyszkor",true,false] call life_fnc_MP; 		player switchMove "AinvPknlMstpSnonWnonDnon_medic_1"; 		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1"; 	}; 	sleep 0.26; 	if(isNull _rkvbsszjorgglckrpskoknjfbneonruvobcepovetffxguxlpufqmgniuqtzftofm) then { 		5 cutRsc ["life_progress","PLAIN"]; 		_rkvbsszjorgglckrpskoknjfbneonruvobcepovetffxguxlpufqmgniuqtzftofm = uiNamespace getVariable "life_progress"; 		_ixwadxjxdxuqdrqtypagbenxcsckcpnntdorwqlobpaehmmgqiljrwykslwbjazgbc = _rkvbsszjorgglckrpskoknjfbneonruvobcepovetffxguxlpufqmgniuqtzftofm displayCtrl 38201; 		_fepmchupgcpxfgegawracgiepqpaqljxybyfieaogxjsxqbjgygsejddweriText = _rkvbsszjorgglckrpskoknjfbneonruvobcepovetffxguxlpufqmgniuqtzftofm displayCtrl 38202; 	}; 	_mlrqipuygealthkbxpbeingyfwtkwhnspuzbharcfcverkwysuoihmsgadiaz = _mlrqipuygealthkbxpbeingyfwtkwhnspuzbharcfcverkwysuoihmsgadiaz + _mkynszqfwrxbjivybyawbnstmojjvrtnrrrlskqtpjcbqlxlywoxabmlwyvns; 	_ixwadxjxdxuqdrqtypagbenxcsckcpnntdorwqlobpaehmmgqiljrwykslwbjazgbc progressSetPosition _mlrqipuygealthkbxpbeingyfwtkwhnspuzbharcfcverkwysuoihmsgadiaz; 	_fepmchupgcpxfgegawracgiepqpaqljxybyfieaogxjsxqbjgygsejddweriText ctrlSetText format["%3 (%1%2)...",round(_mlrqipuygealthkbxpbeingyfwtkwhnspuzbharcfcverkwysuoihmsgadiaz * 100),"%",_fepmchupgcpxfgegawracgiepqpaqljxybyfieaogxjsxqbjgygsejddweri]; 	if(_mlrqipuygealthkbxpbeingyfwtkwhnspuzbharcfcverkwysuoihmsgadiaz >= 1 OR !alive player) exitWith {}; 	if(life_istazed) exitWith {};  	if(life_interrupted) exitWith {}; };   5 cutText ["","PLAIN"]; player playActionNow "stop"; if(!alive player OR life_istazed) exitWith {life_action_inUse = false;}; if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;}; if((player getVariable["adminRestrained",false])) exitWith {life_action_inUse = false;}; if(_ueiceidbwyzjuvvksxjiesynqbjjwieipfagjzhdxkdnzpoaxkfrxtrtwlpukh && (_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd getVariable ["boltcutted",false])) exitWith {life_action_inUse = false;}; if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;}; life_boltcutter_uses = life_boltcutter_uses + 1; life_action_inUse = false; if(life_boltcutter_uses >= 5) then { 	[false,"boltcutter",1] call life_fnc_obfjrnynfhghcglhujcjbgakxemxpjvrqczgxoeickhzvgovmtdbvr; 	life_boltcutter_uses = 0; };   if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd in [prison_tower,wardens_house]) then { 	_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd animate [format["door_%1_rot",_door],1];  };  if(_zzltpfwbspyceenumgljrmnccowixqwxopswjfumzqsbugponkwlzwewvpmkljwomz) then {fed_bank setVariable ["globe_boltcutted",true,true];}; if(_ebncoxgjcvpkmdnovnchdmwrykajxcctvvbeykkthqchlxpffydrsfekjqpvmnb) then {fed_bank setVariable ["research_boltcutted",true,true];};  if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == isolation_floor) then { 	_mkitnfhfkphllffpexgzewcpirvevvtogruldbrxludduwmxxqhoyjtjbkerc = []; 	{ 		if(isPlayer _x) then {_mkitnfhfkphllffpexgzewcpirvevvtogruldbrxludduwmxxqhoyjtjbkerc pushBack _x;}; 	} foreach nearestObjects [player,["Man"],15]; 	[4] remoteExec ["life_fnc_tqvdcyrwegfsawosuiyemffealyjbmozeodxzxasjyidhszfoi",_mkitnfhfkphllffpexgzewcpirvevvtogruldbrxludduwmxxqhoyjtjbkerc]; } else { 	_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd setVariable[format["bis_disabled_Door_%1",_door],0,true];  };   if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd in [prison,prison_isolationB]) then { 	_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd animate [format["door_%1_rot",_door],1]; 	if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == prison_isolationB) then { 		[97] remoteExec ["life_fnc_knkktakljnvqgcbgzkueddljxpkblluaqmezwetcaalskcsddd"]; 	} else { 		_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd setVariable [format["cell_%1_boltcutted",_door],true,true]; 		[_door] remoteExec ["life_fnc_knkktakljnvqgcbgzkueddljxpkblluaqmezwetcaalskcsddd",-2]; 	}; } else { 	if((_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd getVariable["locked",false])) then { 		_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd setVariable["locked",false,true]; 	}; 	[getPlayerUID player,profileName,"459",player] spawn life_fnc_emtvegxsjbicbxdyyizalaeqhulvbokspdnvrxanbasgedbaphvjbq; };  if(_ueiceidbwyzjuvvksxjiesynqbjjwieipfagjzhdxkdnzpoaxkfrxtrtwlpukh) then { 	_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd setVariable ["boltcutted",true,true]; };  if(_tplojotixnoxwzixzcuyjmsjezbxalgmyyqyncnvlzcsgmtjepmanwxhzhiudcmtlnd == rebel_stash) then { 	_rebels = count ([] call life_fnc_dukkaashsaqxerftxqvfbicuzddjsictjwmgmzyzuqckdtaeivdmgnmyneod); 	rebel_stash setVariable ["box_locked",false,true]; 	rebel_stash addWeaponCargoGlobal ["arifle_Katiba_F",round (_rebels/3)]; 	rebel_stash addMagazineCargoGlobal ["30Rnd_65x39_caseless_green",5 * round (_rebels/3)]; 	rebel_stash addWeaponCargoGlobal ["arifle_Mk20_F",round (_rebels*1)]; 	rebel_stash addMagazineCargoGlobal ["30Rnd_556x45_Stanag",5 * round (_rebels*1)]; 	 };  if(life_debugging) then {systemChat "test15";}; 