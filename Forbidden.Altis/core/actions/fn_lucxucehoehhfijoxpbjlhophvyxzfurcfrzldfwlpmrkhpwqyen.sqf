 private["_msprnbdhnfyhzxnhizqbqxswlvosacmyrpbkiirfwitgjzcqfbnyynikdqusqx","_fnafkgmlvygflwrpvjahfspkzpeihtmsuvmidnexcirywgrbyiyupzmdmpysymqvowrn"]; _msprnbdhnfyhzxnhizqbqxswlvosacmyrpbkiirfwitgjzcqfbnyynikdqusqx = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; if(isNull _msprnbdhnfyhzxnhizqbqxswlvosacmyrpbkiirfwitgjzcqfbnyynikdqusqx OR !isPlayer _msprnbdhnfyhzxnhizqbqxswlvosacmyrpbkiirfwitgjzcqfbnyynikdqusqx) exitWith {};  _nearestVehicle = nearestObjects[getPosATL player,["Car","Ship","Submarine","Air"],10] select 0; if(isNil "_nearestVehicle") exitWith {hint localize "STR_NOTF_VehicleNear"};  _fnafkgmlvygflwrpvjahfspkzpeihtmsuvmidnexcirywgrbyiyupzmdmpysymqvowrn = ((attachedObjects player) select 0); if(_fnafkgmlvygflwrpvjahfspkzpeihtmsuvmidnexcirywgrbyiyupzmdmpysymqvowrn isKindOf "Land_Sun_chair_green_F") then {detach _fnafkgmlvygflwrpvjahfspkzpeihtmsuvmidnexcirywgrbyiyupzmdmpysymqvowrn; deleteVehicle _fnafkgmlvygflwrpvjahfspkzpeihtmsuvmidnexcirywgrbyiyupzmdmpysymqvowrn;}; detach _msprnbdhnfyhzxnhizqbqxswlvosacmyrpbkiirfwitgjzcqfbnyynikdqusqx; if(_nearestVehicle isKindOf "Plane") then { 	[[_nearestVehicle],"life_fnc_fpyrkrgfepsfbbpiklcgaieakviczcotyjpmbaawixrxcfnuyinbp",_msprnbdhnfyhzxnhizqbqxswlvosacmyrpbkiirfwitgjzcqfbnyynikdqusqx,false] call life_fnc_MP; } else { 	[[_nearestVehicle],"life_fnc_moveIn",_msprnbdhnfyhzxnhizqbqxswlvosacmyrpbkiirfwitgjzcqfbnyynikdqusqx,false] call life_fnc_MP; }; _msprnbdhnfyhzxnhizqbqxswlvosacmyrpbkiirfwitgjzcqfbnyynikdqusqx setVariable["Escorting",FALSE,TRUE]; _msprnbdhnfyhzxnhizqbqxswlvosacmyrpbkiirfwitgjzcqfbnyynikdqusqx setVariable["transporting",TRUE,TRUE]; 