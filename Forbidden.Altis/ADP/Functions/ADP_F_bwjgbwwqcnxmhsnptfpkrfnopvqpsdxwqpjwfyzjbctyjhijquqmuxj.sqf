      disableSerialization;  private ["_zmzrmtpdioanihqcaxgsmuvajuysjcdtihyapssjyysfuntoamdfthmqbljqgobdias"]; _zmzrmtpdioanihqcaxgsmuvajuysjcdtihyapssjyysfuntoamdfthmqbljqgobdias = [_this,0,false,[false]] call BIS_fnc_param; if(!_zmzrmtpdioanihqcaxgsmuvajuysjcdtihyapssjyysfuntoamdfthmqbljqgobdias) then { 	while {dialog} do { 		closeDialog 0; 	} };  createDialog "ADPEvents2"; waitUntil {!(isNull (findDisplay 6009))}; ADP_lastTab = 6; [] call ADP_fnc_elrpnpcaomljnhefaehomumwttilsavlcbkhwxwwsoyrkopueyimzojcyxlk;  _display = findDisplay 6009; _ctrl = _display displayctrl 1500; _playerlist = 1500; _viewDistance = 2100; _grass = 2101; _ShadowDistance = 2102; lbClear _playerlist; _listunits = playableUnits; { 	if!(isNull _x) then {_listunits pushBack _x;}; } foreach (var_base getVariable ["currentCostumes",[]]); ctrlEnable [25001, false]; ADP_NameCache = [];    for "_idx" from 0 to ((count _listUnits)-1) do { 	_x = _listUnits select _idx; 	_plSide = side _x; 	_name = ""; 	_name = name _x; 	ADP_nameCache set [_idx, _x]; 	_index = lbAdd [_playerlist, _name]; 	lbSetValue [_playerlist, _index, _idx]; 	switch(_plSide) do  	{ 		case west : {lbSetColor [_playerlist, _index, [0.012,0.031,0.58,1]];}; 		case east : {lbSetColor [_playerlist, _index, [0.569,0,0,1]];}; 		case independent : {lbSetColor [_playerlist, _index, [0.004,0.431,0.039,1]];}; 	}; 	if(_x == player) then {lbSetColor [_playerlist, _index, [1.012,0,0,1]];}; }; lbSort _ctrl;   { _VD = format ["%1",_x]; _index = lbAdd [_viewDistance, _VD]; lbSetValue [_viewDistance, _index, _x]; } forEach [750, 1600, 2500, 4000, 7000, 14000];  _index0 = lbAdd [_grass, "None"]; lbSetValue [_grass, _index0, 50]; _index1 = lbAdd [_grass, "Low"]; lbSetValue [_grass, _index1, 25]; _index2 = lbAdd [_grass, "Normal"]; lbSetValue [_grass, _index2, 12.5]; _index3 = lbAdd [_grass, "High"]; lbSetValue [_grass, _index3, 3.125];  _index4 = lbAdd [_ShadowDistance, "Disabled"]; lbSetValue [_ShadowDistance, 0, 1]; { _SD = format ["%1",_x]; _index = lbAdd [_ShadowDistance, _SD]; lbSetValue [_ShadowDistance, _index, _x]; } forEach [50, 75, 100, 125, 150, 175, 200];    disableSerialization; ctrlEnable [2413, false]; _amount = ADPFade; _display = findDisplay 6003; { _ctrl = _display displayctrl _x; _ctrl ctrlSetFade _amount; _ctrl ctrlCommit 0; } forEach [1200,9001,2,2410,2425,2410,2411,2413,1500,2402,2403,2404,2405,2406,2409,2417,2418,2419,2420,2421,1400,1401,2424,1201,1000]; sliderSetPosition [1902,(ADPFade * 10)];  