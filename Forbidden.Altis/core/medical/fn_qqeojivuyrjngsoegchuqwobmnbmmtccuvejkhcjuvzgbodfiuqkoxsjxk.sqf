 private["_cmmtjjjeeuazjiymevsyzimkemfjspceqloaihegyatmyzjbcknyxljwbmwstasafh"];  life_use_atm = TRUE; life_hunger = 100; life_thirst = 100; life_carryWeight = 0; CASH = 0;  life_respawned = false; player playMove "amovpercmstpsnonwnondnon";  if(isNil "life_corpse") then {life_corpse = objNull;}; life_corpse setVariable["Revive",nil,TRUE]; life_corpse setVariable["name",nil,TRUE]; life_corpse setVariable["Reviving",nil,TRUE]; player setVariable["Revive",nil,TRUE]; player setVariable["name",nil,TRUE]; player setVariable["Reviving",nil,TRUE]; player setVariable["player_pastSpawnMenu",TRUE,TRUE];    switch(playerSide) do { 	case west: { 		_cmmtjjjeeuazjiymevsyzimkemfjspceqloaihegyatmyzjbcknyxljwbmwstasafh = [] spawn life_fnc_zkncmprzvsrdmfsuigemaxaoppnsfnrgltahqrzyhnhjxjluhudufxpvlsu; 	}; 	case civilian: { 		_cmmtjjjeeuazjiymevsyzimkemfjspceqloaihegyatmyzjbcknyxljwbmwstasafh = [] spawn life_fnc_slmddfvoikqsdrwyufpbkeotjrkqgpdtabdqktretuzsctpaafnzniqwnwv; 	}; 	case independent: { 		_cmmtjjjeeuazjiymevsyzimkemfjspceqloaihegyatmyzjbcknyxljwbmwstasafh = [] spawn life_fnc_omgvbnnlirbpgiescizqmgfkwfhashcaigdzdqkbmlfvtowfnfposx; 	}; 	waitUntil {scriptDone _cmmtjjjeeuazjiymevsyzimkemfjspceqloaihegyatmyzjbcknyxljwbmwstasafh}; };   if(!isNull life_corpse) then { 	private "_containers"; 	life_corpse setVariable["Revive",TRUE,TRUE]; 	_containers = nearestObjects[life_corpse,["WeaponHolderSimulated"],5]; 	{deleteVehicle _x;} foreach _containers;  	hideBody life_corpse; };   if(!isNil "life_deathCamera") then { 	life_deathCamera cameraEffect ["TERMINATE","BACK"]; 	camDestroy life_deathCamera; };       if(life_is_arrested != 0 OR life_adminjail != 0 && !isNil "jail_default_gear") then { 	[] spawn { 		sleep 1; 		if!(Jail_inProgress) exitWith {}; 		life_gear = jail_default_gear; 		_cmmtjjjeeuazjiymevsyzimkemfjspceqloaihegyatmyzjbcknyxljwbmwstasafh = [] spawn life_fnc_ypufifqvwhywsfipllcqkxzffdjzwmpvtocvlcfdwdfqdemvdmllaqjmu; 		waitUntil {scriptDone _cmmtjjjeeuazjiymevsyzimkemfjspceqloaihegyatmyzjbcknyxljwbmwstasafh}; 		[] spawn life_fnc_rowhjumsjgsncucggciahhfhgmxuheiscxpmznzokspmwulycajsgd; 	}; };   if(!isNil "life_copRecieve") then { 	 	life_copRecieve = nil; };   if(life_removeWanted) then { 	life_removeWanted = false; 	[[getPlayerUID player,player],"life_fnc_zptqmkvjlzazoqzdrnpjvhvkhevbyvrkkhcmyfogyrvdnhvyveuy",false,false] call life_fnc_MP; }; 