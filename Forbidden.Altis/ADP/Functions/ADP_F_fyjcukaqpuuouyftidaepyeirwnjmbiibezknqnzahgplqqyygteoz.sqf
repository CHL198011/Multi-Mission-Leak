private ["_obfrvhfxlhcgmudoisyuareaguyiltlysbsvcexeldhvgtznbllihjrbmldmmlmxusigxd","_ibazkfyfibakzomzjgmbnfagmdbrvikxqsfnbrjzlrenksnslelkeohylgzbivgv"];  _ibazkfyfibakzomzjgmbnfagmdbrvikxqsfnbrjzlrenksnslelkeohylgzbivgv = parseNumber (ctrlText 1400); if(_ibazkfyfibakzomzjgmbnfagmdbrvikxqsfnbrjzlrenksnslelkeohylgzbivgv == 0) then {_ibazkfyfibakzomzjgmbnfagmdbrvikxqsfnbrjzlrenksnslelkeohylgzbivgv = 25;};  _obfrvhfxlhcgmudoisyuareaguyiltlysbsvcexeldhvgtznbllihjrbmldmmlmxusigxd = switch (true) do { 	case (player != vehicle player): {vehicle player}; 	case (player == vehicle player && (cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "Tank") && (player distance cursorTarget) < 15): {cursorTarget}; 	default {objNull}; }; if(isNull _obfrvhfxlhcgmudoisyuareaguyiltlysbsvcexeldhvgtznbllihjrbmldmmlmxusigxd) exitWith {hint localize "STR_m_havetNoVehicle";};  [_obfrvhfxlhcgmudoisyuareaguyiltlysbsvcexeldhvgtznbllihjrbmldmmlmxusigxd,player,_ibazkfyfibakzomzjgmbnfagmdbrvikxqsfnbrjzlrenksnslelkeohylgzbivgv] remoteExec ["TON_fnc_lvcrscwjuopptaxbcsrdqkltznltaiyqlvxfnpbshqvfedfbppjgujr",2]; 