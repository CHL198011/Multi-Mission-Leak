 private ["_cxwvqdsjyoalthsnedxpkfzfuvjhroskfugubamamfgdrhmwecefnwcblhcct","_house","_dtmyvybzglyaxsavnzjiiybrzrvecqssijaoojrzrfvqbvvanrajoqexdploxm","_dnvfxoyrwplkjibmgudzbclsfvfuefnnoaacashfwvwplfxdsipgxthuudzlu","_sbvutsvyaiancnztsltklkhcuqdpdztpzyweqjkdcfcuayxhrzydqooojunjasqbnnix","_poxelfcbgjyeauqffgqvvxslbsvyipznysfbzxejugzyafibbpqckcazvjynlnhabdewas","_pecngztjeaavgnpkteizfzxpfnspvbkbgewliduujktfxowhzcugthrrfbbhystqjf","_idkrlhcpckkuxrvyqmxnwpaofiuyxpcjofqbiyqmqbrnvbbaiugfiackwzmpfczefuoxea"];  _cxwvqdsjyoalthsnedxpkfzfuvjhroskfugubamamfgdrhmwecefnwcblhcct = [_this,0,"",[""]] call BIS_fnc_param; _dnvfxoyrwplkjibmgudzbclsfvfuefnnoaacashfwvwplfxdsipgxthuudzlu = [_this,1,0,[0]] call BIS_fnc_param; _sbvutsvyaiancnztsltklkhcuqdpdztpzyweqjkdcfcuayxhrzydqooojunjasqbnnix = [_this,2,objNull,[objNull]] call BIS_fnc_param;  _house = nearestBuilding (getPosATL player);  switch (_dnvfxoyrwplkjibmgudzbclsfvfuefnnoaacashfwvwplfxdsipgxthuudzlu) do { 	case 0: {  		if(((_house getVariable ["house_owner",[""]]) select 0) != (getPlayerUID player)) exitWith {hint localize "STR_m_NotYourHouse";}; 		if(!([false,_cxwvqdsjyoalthsnedxpkfzfuvjhroskfugubamamfgdrhmwecefnwcblhcct,1] call life_fnc_obfjrnynfhghcglhujcjbgakxemxpjvrqczgxoeickhzvgovmtdbvr)) exitWith {}; 		_dtmyvybzglyaxsavnzjiiybrzrvecqssijaoojrzrfvqbvvanrajoqexdploxm = switch (_cxwvqdsjyoalthsnedxpkfzfuvjhroskfugubamamfgdrhmwecefnwcblhcct) do { 			case "alarm": {1}; 			case "alarmbad": {2}; 		};  		[_dtmyvybzglyaxsavnzjiiybrzrvecqssijaoojrzrfvqbvvanrajoqexdploxm,(_house getVariable ["house_id",0]),(getPlayerUID player)] remoteExec ["DB_fnc_abtnqvrewpsiowziampvcajgdzdwlpyxknykkvotkcpczbmtxr",2]; 		_house setVariable ["HouseAlarm",_dtmyvybzglyaxsavnzjiiybrzrvecqssijaoojrzrfvqbvvanrajoqexdploxm,true];  		hint format[localize "STR_m_AlarmAdded",if(_dtmyvybzglyaxsavnzjiiybrzrvecqssijaoojrzrfvqbvvanrajoqexdploxm == 1) then {"vanligt larm"} else {"piratkopierat larm"}]; 	}; 	 	case 1: {  		switch (_house getVariable ["HouseAlarm",0]) do { 			case 0: {hint "Inget larm installerat";}; 			case 1: {hint "Fullt fungerande larm installerat";}; 			case 2: {hint "Piratkopierat larm installerat";}; 		}; 	}; 	 	case 2: {  		_idkrlhcpckkuxrvyqmxnwpaofiuyxpcjofqbiyqmqbrnvbbaiugfiackwzmpfczefuoxea = round (random 100); 		if(((_sbvutsvyaiancnztsltklkhcuqdpdztpzyweqjkdcfcuayxhrzydqooojunjasqbnnix getVariable ["HouseAlarm",0]) == 1) OR (_idkrlhcpckkuxrvyqmxnwpaofiuyxpcjofqbiyqmqbrnvbbaiugfiackwzmpfczefuoxea < 70)) then {  			_pecngztjeaavgnpkteizfzxpfnspvbkbgewliduujktfxowhzcugthrrfbbhystqjf = (_sbvutsvyaiancnztsltklkhcuqdpdztpzyweqjkdcfcuayxhrzydqooojunjasqbnnix getVariable ["house_owner",""]) select 0; 			_poxelfcbgjyeauqffgqvvxslbsvyipznysfbzxejugzyafibbpqckcazvjynlnhabdewas = objNull; 			{ 				if(getPlayerUID _x == _pecngztjeaavgnpkteizfzxpfnspvbkbgewliduujktfxowhzcugthrrfbbhystqjf) exitWith {_poxelfcbgjyeauqffgqvvxslbsvyipznysfbzxejugzyafibbpqckcazvjynlnhabdewas = _x;}; 			} foreach playableUnits; 			 			if(!isNull _poxelfcbgjyeauqffgqvvxslbsvyipznysfbzxejugzyafibbpqckcazvjynlnhabdewas) then { 				["",3,_sbvutsvyaiancnztsltklkhcuqdpdztpzyweqjkdcfcuayxhrzydqooojunjasqbnnix] remoteExec ["life_fnc_npzhgtialmlvqgoikuwyxrvlcwqjejujnhxahrfacwjokelkoldxz",_poxelfcbgjyeauqffgqvvxslbsvyipznysfbzxejugzyafibbpqckcazvjynlnhabdewas]; 				[1,_pecngztjeaavgnpkteizfzxpfnspvbkbgewliduujktfxowhzcugthrrfbbhystqjf,"","House alarm triggered",format["HousePos: %1",(getPosATL _sbvutsvyaiancnztsltklkhcuqdpdztpzyweqjkdcfcuayxhrzydqooojunjasqbnnix)],name _poxelfcbgjyeauqffgqvvxslbsvyipznysfbzxejugzyafibbpqckcazvjynlnhabdewas,"",str (getPos _poxelfcbgjyeauqffgqvvxslbsvyipznysfbzxejugzyafibbpqckcazvjynlnhabdewas)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 			}; 		}; 	}; 	 	case 3: {  		if(playerSide == civilian) then { 			[2,localize "STR_m_houseAlarmActivate"] spawn life_fnc_broadcast; 			format["house_%1",(_sbvutsvyaiancnztsltklkhcuqdpdztpzyweqjkdcfcuayxhrzydqooojunjasqbnnix getVariable ["uid",-1])] setMarkerColorLocal "ColorRed"; 		}; 	};  }; 