
#include <macro.h>
 private["_xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz","_corpse"]; _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz = SEL(_this,0); _corpse = SEL(_this,1); life_corpse = _corpse; life_isAlive = false;  if(!safeKeeping_active && !safekeeping_inprogress && life_is_arrested == 0 && life_adminJail == 0 && !inEventGame) then { 	[18] call SOCK_fnc_ddjmbrftntgdwpptfaoymlxkcjyscjwhklmcfylqhrqrxtxznnh; };   private["_irtgorqicgoxjtuqvmpqvrrtlqhhznzasivedtguopajjzszipfwpmvrgvwzzgzxhutn"]; _irtgorqicgoxjtuqvmpqvrrtlqhhznzasivedtguopajjzszipfwpmvrgvwzzgzxhutn = nearestObjects[getPosATL _corpse,["WeaponHolderSimulated"],5];  {deleteVehicle _x;} foreach _irtgorqicgoxjtuqvmpqvrrtlqhhznzasivedtguopajjzszipfwpmvrgvwzzgzxhutn;    _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz SVAR ["restrained",FALSE,TRUE]; _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz SVAR ["tied",FALSE,TRUE]; _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz SVAR ["stretched",FALSE,TRUE]; _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz SVAR ["adminRestrained",FALSE,TRUE]; _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz SVAR ["Escorting",FALSE,TRUE]; _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz SVAR ["transporting",FALSE,TRUE];  _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz SVAR ["steam64id",steamid,true];  _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz SVAR ["realname",profileName,true];   _xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz addRating 1e12;  player playMoveNow "amovppnemstpsraswrfldnon";  [] call life_fnc_zzswhvopsockxoxsqyzswfcozcbkdsbcsqnigamwenxlogruebt; [[_xqlrbbbrztvporutkyygfbagjubfilccldyvagsmqluyvljojqtcrrdgkgdz,life_sidechat,playerSide,muted_player],"TON_fnc_ofdnbdatriuxfqrjexkzqpscwxviomxgyjtjjgiscncgixncmewquvnoj",false,false] call life_fnc_MP; if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),0)) then {player enableFatigue false;}; 