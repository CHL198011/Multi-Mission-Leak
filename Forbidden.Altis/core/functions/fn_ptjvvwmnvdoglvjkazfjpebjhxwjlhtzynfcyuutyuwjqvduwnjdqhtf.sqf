 private["_vehicle","_bobwroeojjucrpmbsxcanzgypirfgkvrftwxrdntjbfiuopgcwpoilowreuugldago"];  _vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_param; _bobwroeojjucrpmbsxcanzgypirfgkvrftwxrdntjbfiuopgcwpoilowreuugldago = [_this,1,objNull,[objNull]] call BIS_fnc_param;  if(isNil "life_vehicles") exitWith {};  if(_vehicle in life_vehicles) then { 	{ 		if(_x == _vehicle) exitWith {life_vehicles deleteAt _forEachIndex;}; 	} foreach life_vehicles; };  if(_bobwroeojjucrpmbsxcanzgypirfgkvrftwxrdntjbfiuopgcwpoilowreuugldago == player) then {life_vehicles pushBack _vehicle;};  