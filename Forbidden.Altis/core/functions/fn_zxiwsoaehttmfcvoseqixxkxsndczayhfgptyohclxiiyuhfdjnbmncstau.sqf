
#include <macro.h>
 private["_container","_qaqytffqavigfeyvcujjoiryhandtmsktovaingvewuzyjbwyxkslfwulibjifkuo","_wtwgwhzkrymbnghmusocqymrwsrsxvqtqwcamzhzmpdalmwvkshdjbydmrudin","_kcowzvrcidgooliokiobygkhadztvxhbhnbyhkzgmxqadtdazjwzefcvoicywyqewyaxs","_xxjbgdqisukamjlditadxtbqodgtbvyznzncjdobhuvgpynejeoyrtplqlhvk","_wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl","_qaqytffqavigfeyvcujjoiryhandtmsktovaingvewuzyjbwyxkslfwulibjifkuoName","_tmxchegnzenjowebfyvplymkummyyuehfygzvaujvblwumrdgqlxdrfccewaypjnzvb","_qtjuthiulnwpnmupfkakrhtdtsxwpidogkfxelgfxhsoxwvyryhjghmtnnqesjtoqvu","_stetqfypxdcbysaitlowxekvgmajxwgavgzxpjkvckwmxkzzackurxqhenka","_xwhmlthtjcauvsnuarnwxyzjfprjriswsfvqsjxthiunznkrwzbjxfdbimvhlams","_wkxwojekxmmqozsdizoiceozfzvvnhmlcsgzotbfdqfhqkbwygufykluktthj"]; if(EQUAL(count _this,1)) exitWith {false}; _qaqytffqavigfeyvcujjoiryhandtmsktovaingvewuzyjbwyxkslfwulibjifkuo = SEL(_this,0); _container = SEL(_this,1);  if(life_adminJail != 0) exitWith { 	hint "Inget inventory i denna bur."; 	true; };  if((currentWeapon player == "Binocular") && (player == (vehicle player))) exitWith { 	hint localize "STR_m_NotWithBinocs"; 	true; };  if((safeKeeping_active OR SafeKeeping_inProgress OR life_adminjail != 0 OR life_is_arrested != 0) && !(_container isKindOf "GroundWeaponHolder") && (call life_adminlevel) < 4) exitWith { 	if(safeKeeping_active OR SafeKeeping_inProgress) then {hint "Ajja bajja, inte med safe keeping aktiverad!";}; 	true; };  if(life_adminjail != 0) exitWith {true};  if((_container == rebel_stash) && (rebel_stash getVariable ["box_locked",true])) exitWith { 	hint localize "STR_m_rebelBoxLocked"; 	true; };  if(((_container == rebel_stash) OR (_container getVariable ["airDroppedBox",false])) && ((call life_rebactive) == 1)) exitWith { 	hint "Du kan ju inte sno dina egna vapen eller!?"; 	true; };  _qtjuthiulnwpnmupfkakrhtdtsxwpidogkfxelgfxhsoxwvyryhjghmtnnqesjtoqvu = (toArray (str _container)); _qtjuthiulnwpnmupfkakrhtdtsxwpidogkfxelgfxhsoxwvyryhjghmtnnqesjtoqvu resize 11; _qtjuthiulnwpnmupfkakrhtdtsxwpidogkfxelgfxhsoxwvyryhjghmtnnqesjtoqvu = toString _qtjuthiulnwpnmupfkakrhtdtsxwpidogkfxelgfxhsoxwvyryhjghmtnnqesjtoqvu;  if(_qtjuthiulnwpnmupfkakrhtdtsxwpidogkfxelgfxhsoxwvyryhjghmtnnqesjtoqvu == "salvageBox_" && playerSide != west) exitWith {hint "Ajjabajja, inte rota bland polisens prylar!"; true;}; if(_qtjuthiulnwpnmupfkakrhtdtsxwpidogkfxelgfxhsoxwvyryhjghmtnnqesjtoqvu == "salvageBox_" && playerSide == west) then {hint localize "STR_m_OpenedSalvageBox";};  if(!(_container getVariable ["islandBox_looted",true])) then { 	_container setVariable ["islandBox_looted",true,true]; 	{ 		if(alive _x && (_x distance _container) < 500) then {[6000,6] remoteExec ["life_fnc_earnXP",_x];}; 	} foreach playableUnits; };  _kcowzvrcidgooliokiobygkhadztvxhbhnbyhkzgmxqadtdazjwzefcvoicywyqewyaxs = toArray (str _container); _xxjbgdqisukamjlditadxtbqodgtbvyznzncjdobhuvgpynejeoyrtplqlhvk = ["permBox_",str _container,0] call TON_fnc_rizooueqiujrzomxvqjrvxtfracppjrckttqkukvwwticyrsdkwhimpaeao;  _stetqfypxdcbysaitlowxekvgmajxwgavgzxpjkvckwmxkzzackurxqhenka = false; if(_xxjbgdqisukamjlditadxtbqodgtbvyznzncjdobhuvgpynejeoyrtplqlhvk) exitWith { 	_wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl = parseNumber ((toString [(_kcowzvrcidgooliokiobygkhadztvxhbhnbyhkzgmxqadtdazjwzefcvoicywyqewyaxs select 8)]) + (toString [(_kcowzvrcidgooliokiobygkhadztvxhbhnbyhkzgmxqadtdazjwzefcvoicywyqewyaxs select 9)])); 	 	switch (true) do { 		case ((_wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl in [1,2,3,4,5,6,7,8]) && (playerSide in [civilian,independent]) && !life_debugging): {hint "Ajjabajja, inte rota bland polisens prylar!"; _stetqfypxdcbysaitlowxekvgmajxwgavgzxpjkvckwmxkzzackurxqhenka = true;}; 		case ((_wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl in [1,2,3,4,5,6,7,8]) && ((call life_coplevel) < _wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl) && !life_debugging): {hint format[localize "STR_m_CopBoxLowRank",localize format["STR_m_CopRank_%1",_wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl]]; _stetqfypxdcbysaitlowxekvgmajxwgavgzxpjkvckwmxkzzackurxqhenka = true;}; 		case ((_wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl in [9,10,11]) && (call life_rebactive) == 0 && !life_debugging): {hint "Ajjabajja, inte rota bland rebellernas prylar!"; _stetqfypxdcbysaitlowxekvgmajxwgavgzxpjkvckwmxkzzackurxqhenka = true;}; 	}; 	if(_stetqfypxdcbysaitlowxekvgmajxwgavgzxpjkvckwmxkzzackurxqhenka) exitWith {true}; 	 	switch (true) do { 		case (_wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl in [1,2,3,4,5,6,7,8]): {hint format[localize "STR_m_OpenedCopBox",localize format["STR_m_CopRank_%1",_wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl]]}; 		case (_wjvcfyywcthockepiyxlqkuhafuabmcisqdertwotaizfcwfvojitcakhejl in [9,10,11]): {hint localize "STR_m_OpenedRebBox"}; 	}; }; if(_stetqfypxdcbysaitlowxekvgmajxwgavgzxpjkvckwmxkzzackurxqhenka) exitWith {true};  _isPack = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,typeOf _container,"isBackpack");   _wtwgwhzkrymbnghmusocqymrwsrsxvqtqwcamzhzmpdalmwvkshdjbydmrudin = false; if(playerSide == west && cursorTarget getVariable ["restrained",false]) then {_wtwgwhzkrymbnghmusocqymrwsrsxvqtqwcamzhzmpdalmwvkshdjbydmrudin = true;}; if((call life_adminlevel) >= 1 && cursorTarget getVariable ["adminRestrained",false]) then {_wtwgwhzkrymbnghmusocqymrwsrsxvqtqwcamzhzmpdalmwvkshdjbydmrudin = true;}; if(playerSide == civilian && cursorTarget getVariable ["tied",false]) then {_wtwgwhzkrymbnghmusocqymrwsrsxvqtqwcamzhzmpdalmwvkshdjbydmrudin = true;}; if(player getVariable ["SafeKeeping",false]) then {_wtwgwhzkrymbnghmusocqymrwsrsxvqtqwcamzhzmpdalmwvkshdjbydmrudin = false;};  if(EQUAL(_isPack,1) && !(_wtwgwhzkrymbnghmusocqymrwsrsxvqtqwcamzhzmpdalmwvkshdjbydmrudin)) exitWith { 	hint localize "STR_MISC_Backpack"; 	true; };  if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith { 	_house = nearestBuilding (getPosATL player); 	if((safekeeping_active OR safekeeping_inprogress) && (call life_adminlevel) < 4) exitWith {hint "Ajja bajja, inte med safe keeping aktiverad!"; true;}; 	if(!(_house getVariable ["house_owner_online",false]) && (count (_house getVariable ["house_owner",[]]) != 0)) exitWith {hint localize "STR_m_OwnerNotOnline"; true;}; 	if(!(_house in life_vehicles) && {(_house GVAR ["locked",false])}) exitWith { 		hint localize "STR_House_ContainerDeny"; 		true; 	}; 	if(_container getVariable ["CustomSpawnedBox",false]) exitWith {}; 	 	_wkxwojekxmmqozsdizoiceozfzvvnhmlcsgzotbfdqfhqkbwygufykluktthj = (getWeaponCargo _container) select 0; 	_wkxwojekxmmqozsdizoiceozfzvvnhmlcsgzotbfdqfhqkbwygufykluktthj = _wkxwojekxmmqozsdizoiceozfzvvnhmlcsgzotbfdqfhqkbwygufykluktthj + ((getMagazineCargo _container) select 0); 	_wkxwojekxmmqozsdizoiceozfzvvnhmlcsgzotbfdqfhqkbwygufykluktthj = _wkxwojekxmmqozsdizoiceozfzvvnhmlcsgzotbfdqfhqkbwygufykluktthj + ((getItemCargo  _container) select 0); 	_xwhmlthtjcauvsnuarnwxyzjfprjriswsfvqsjxthiunznkrwzbjxfdbimvhlams = ""; 	{ 		if(_x in _wkxwojekxmmqozsdizoiceozfzvvnhmlcsgzotbfdqfhqkbwygufykluktthj) exitWith {_xwhmlthtjcauvsnuarnwxyzjfprjriswsfvqsjxthiunznkrwzbjxfdbimvhlams = _x}; 	} foreach ["launch_NLAW_F","arifle_MX_SW_F","100Rnd_65x39_caseless_mag","1Rnd_HE_Grenade_shell","3Rnd_HE_Grenade_shell","NLAW_F"]; 	if(_xwhmlthtjcauvsnuarnwxyzjfprjriswsfvqsjxthiunznkrwzbjxfdbimvhlams != "") exitWith { 		hint localize "STR_m_HouseBoxBugged"; 		[3,(getPlayerUID player),"","House crate bugged",format["Contains %1",_xwhmlthtjcauvsnuarnwxyzjfprjriswsfvqsjxthiunznkrwzbjxfdbimvhlams],profileName,"",str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 		true; 	}; };   private "_list"; _list = ["LandVehicle","Ship","Air"]; if(KINDOF_ARRAY(_container,_list)) exitWith { 	if(_qaqytffqavigfeyvcujjoiryhandtmsktovaingvewuzyjbwyxkslfwulibjifkuo getVariable ["SafeKeeping",false]) exitWith {true; hint "Ajja bajja, inte med safe keeping aktiverad!";}; 	if(!(_container in life_vehicles) && {EQUAL((locked _container),2)}) exitWith { 		hint localize "STR_MISC_VehInventory"; 		true; 	}; };   if((cursorTarget isKindOf "Man") && (cursorTarget getVariable ["SafeKeeping",false])) exitWith { 	hint "Du kan inte loota folk som har safekeeping på!"; 	true; };  if(_container isKindOf "Man" && animationState _container == "Incapacitated") exitWith { 	hint localize "You can't look into someone else's backpack!"; 	true; };  _qaqytffqavigfeyvcujjoiryhandtmsktovaingvewuzyjbwyxkslfwulibjifkuoName = toArray (str _container); if((_qaqytffqavigfeyvcujjoiryhandtmsktovaingvewuzyjbwyxkslfwulibjifkuoName select 0) == 99 && (_qaqytffqavigfeyvcujjoiryhandtmsktovaingvewuzyjbwyxkslfwulibjifkuoName select 1) == 111 && (_qaqytffqavigfeyvcujjoiryhandtmsktovaingvewuzyjbwyxkslfwulibjifkuoName select 2) == 112) then {_tmxchegnzenjowebfyvplymkummyyuehfygzvaujvblwumrdgqlxdrfccewaypjnzvb = true;} else {_tmxchegnzenjowebfyvplymkummyyuehfygzvaujvblwumrdgqlxdrfccewaypjnzvb = false;};       