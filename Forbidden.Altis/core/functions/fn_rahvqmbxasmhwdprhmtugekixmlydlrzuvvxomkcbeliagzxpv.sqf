 private ["_positions","_pos","_csqjltgzxhylzabtyuhgjgluwbeufbdqkmwfhrzasxjqqjzdrlhzvnkrzvkbjwdnocsf","_igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp","_cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve","_zqkkqjkqcurtffpinlxnggsqhmyjyvcyvujcxuxmptfctmtflkywkyvkimxqxvcb","_fuukoooikonkkbwnstjlbvoubansensakgcnyvchbwdsmtsxgqtocaoxmgtacrq","_tqxhsluwrtbdtpvnpuzkcorejfzndwhtsnauueghxofkymaacbkfyzlnbrbhepd","_qyxzlzlmhyixexsvwbstzzlqwjbcuocrcaqrxtnmrtoijxhhowyjpncssgdn"];    _csqjltgzxhylzabtyuhgjgluwbeufbdqkmwfhrzasxjqqjzdrlhzvnkrzvkbjwdnocsf = (var_base getVariable ["knockout_type","B_MRAP_01_F"]);   	 _zqkkqjkqcurtffpinlxnggsqhmyjyvcyvujcxuxmptfctmtflkywkyvkimxqxvcb = [_this,0,false,[false]] call BIS_fnc_param; _qyxzlzlmhyixexsvwbstzzlqwjbcuocrcaqrxtnmrtoijxhhowyjpncssgdn = [_this,1,false,[false]] call BIS_fnc_param; if(_zqkkqjkqcurtffpinlxnggsqhmyjyvcyvujcxuxmptfctmtflkywkyvkimxqxvcb && !inEventGame) exitWith {};  if(_qyxzlzlmhyixexsvwbstzzlqwjbcuocrcaqrxtnmrtoijxhhowyjpncssgdn && (var_base getVariable ["event_started",false])) exitWith { 	[4] spawn life_fnc_xzkqgffxehprmwxbbeztlmxivtosywueqyjwjvpdwulxomkvyuuk; };  while {(var_base getVariable ["knockout_mutex",false])} do {sleep 1;}; var_base setVariable ["knockout_mutex",true,true];  _positions = var_base getVariable ["knockout_positions",[]];  _tqxhsluwrtbdtpvnpuzkcorejfzndwhtsnauueghxofkymaacbkfyzlnbrbhepd = false; _cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve = 0; while {true} do { 	_fuukoooikonkkbwnstjlbvoubansensakgcnyvchbwdsmtsxgqtocaoxmgtacrq = (round (random ((var_base getVariable ["knockout_posCount",10]) - 1))); 	if(isNull ((_positions select _fuukoooikonkkbwnstjlbvoubansensakgcnyvchbwdsmtsxgqtocaoxmgtacrq) select 0)) exitWith {_pos = _positions select _fuukoooikonkkbwnstjlbvoubansensakgcnyvchbwdsmtsxgqtocaoxmgtacrq;}; 	_cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve = _cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve + 1; 	if(_cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve > 50) exitWith { 		_tqxhsluwrtbdtpvnpuzkcorejfzndwhtsnauueghxofkymaacbkfyzlnbrbhepd = true; 		for _i from 0 to ((var_base getVariable ["knockout_posCount",10])-1) do { 			if(isNull (_positions select _i select 0)) exitWith {_pos = _positions select _i; _tqxhsluwrtbdtpvnpuzkcorejfzndwhtsnauueghxofkymaacbkfyzlnbrbhepd = false;}; 		}; 	}; }; if(_tqxhsluwrtbdtpvnpuzkcorejfzndwhtsnauueghxofkymaacbkfyzlnbrbhepd) exitWith {hint localize "STR_m_KnockoutIsFull"; var_base setVariable ["knockout_mutex",false,true];};  _positions set [_fuukoooikonkkbwnstjlbvoubansensakgcnyvchbwdsmtsxgqtocaoxmgtacrq,[player,(_pos select 1),(_pos select 2)]]; var_base setVariable ["knockout_positions",_positions,true]; var_base setVariable ["knockout_mutex",false,true];   _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp = _csqjltgzxhylzabtyuhgjgluwbeufbdqkmwfhrzasxjqqjzdrlhzvnkrzvkbjwdnocsf createVehicle [12363.3,8344.11,0];  _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp setVariable ["vehicleOwner",player,true]; knockOutVehicle = _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp;  _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp setPosATL (_pos select 1); _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp setDir (_pos select 2);  _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp allowDamage false; _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp setVariable["ADP_spawned",true,true]; if!(var_base getVariable ["event_started",false]) then {_igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp setFuel 0;};   clearItemCargoGlobal _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp; clearWeaponCargoGlobal _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp; clearBackpackCargoGlobal _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp; clearMagazineCargoGlobal _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp;  [] spawn { 	private ["_cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve","_igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp"]; 	_cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve = 0; 	waitUntil {var_base getVariable ["event_started",false]}; 	while {var_base getVariable ["event_started",false]} do { 		_igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp = vehicle player; 		if(_cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve >= 3) then {_igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp setpos [(getPosATL _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp) select 0,(getPosATL _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp) select 1,5];}; 		if((vectorup (vehicle player) select 2) < -0.1) then { 			_cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve = _cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve + 1; 		} else { 			_cwbujthewepaxqkjukhlbnirjlzqsntxwpwdgdnmkbtqdacmddbgsytehosphwve = 0; 		}; 		 		sleep 1; 	}; };   _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp lock 2;  player moveInAny _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp; player allowDamage false; waitUntil {isPlayer _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp}; sleep 3; _igeimhstbkuhxcwervbcjcoyxqlybelqxfxhtqgzmgfvgppxdlenhwuhsnlflzgweylp setVariable ["knockOutObject",true,true];     