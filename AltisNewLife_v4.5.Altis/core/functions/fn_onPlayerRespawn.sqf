#include <macro.h>
private["_unit","_corpse","_containers"];
_unit = _this select 0;
_corpse = _this select 1;
life_corpse = _corpse;
player switchCamera "EXTERNAL";
_containers = nearestObjects[getPosATL _corpse,["WeaponHolderSimulated"],5];
{deleteVehicle _x;} foreach _containers;
_unit SVAR ["restrained",FALSE,TRUE];
_unit SVAR ["Escorting",FALSE,TRUE];
_unit SVAR ["transporting",FALSE,TRUE];
_unit SVAR ["steam64id",steamid,true];
_unit SVAR ["realname",profileName,true];
_unit SVAR ["missingOrgan",FALSE,TRUE];
_unit SVAR ["hasOrgan",FALSE,TRUE]; 
_unit SVAR ["pet_owner",FALSE,TRUE]; 
_unit SVAR ["enslaved",FALSE,TRUE];
_unit SVAR ["slaver",FALSE,TRUE];
_unit SVAR ["fou",FALSE,TRUE];
_unit SVAR ["anl_check",FALSE,TRUE];
_unit SVAR ["pain",FALSE,TRUE];
_unit addRating 1e12;
player playMoveNow "amovppnemstpsraswrfldnon";
[[_unit,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
player enableFatigue false;