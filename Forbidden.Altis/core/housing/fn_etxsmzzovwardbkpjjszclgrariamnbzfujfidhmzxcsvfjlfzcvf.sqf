
#include <macro.h>
 private["_house","_icsmhfpawfaubdvbhthjhewsrcfopreztwmekiosifaneefyklegsozhihwicbvy","_ltgivccmewelxasukbjjblsarjxgpnoevtdbnfrdytppgmknzrvraitwqineixeypmlky","_glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj","_qmkakvvchqjxflelxzyapxzjubiqricvdgwypudssujhpytehawwogagkovsoax","_aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi","_ndrgqvnbiandsarxrkcenwxcybfgwbzvrklkpydowcrfgoxyrnyabgmlmsrqawlwfueie","_lzcvtcpuaiapvrnlyfjoaizvelrpgexskfovuoeczqjmyovgvefruwucpskrhcifao","_aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi","_uhcjbxvfqwnsvnmwacsjjheggydbeowqbonyqrhbofmxzwkfwstyioeqmjcwmfsv","_jkpesrdvqhiqqzrskcmgdyzqzsurywvdgjztpeeyjissbqvswyfixxpxhtkh","_bvudzafhlssrzxwraospoqsxdlvmdvwirlalpcrhnnmyfhlethjzfmboryuaslamut","_yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru"]; _house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; _icsmhfpawfaubdvbhthjhewsrcfopreztwmekiosifaneefyklegsozhihwicbvy = getPlayerUID player;   if(isNil "life_houses") then {life_houses = [];}; if(isNull _house) exitWith {}; if(!(_house isKindOf "House_F")) exitWith {}; if((_house GVAR ["house_owned",false])) exitWith {hint "This house is already owned even though you shouldn't be seeing this hint..."}; if(!isNil {(_house GVAR "house_sold")}) exitWith {hint localize "STR_House_Sell_Process"}; if(!license_civ_home) exitWith {hint localize "STR_House_License"}; if(((player distance [10604.7,8506.16,0.0013237]) < 2300) && (call life_rebactive) == 0) exitWith {hint localize "STR_m_TooCloseRebel";}; if((call life_reblevel) > 0 && (call life_rebactive) == 0) exitWith {hint localize "STR_m_RebelBuyAsCiv";}; if((player distance [8632.1,18279.6,0.00143433]) < 250) exitWith {"För nära arenan!";}; _lzcvtcpuaiapvrnlyfjoaizvelrpgexskfovuoeczqjmyovgvefruwucpskrhcifao = [[19028.9,14568.4,0.213081],[25451.7,20330.9,0.0857677],[13804.5,6388.5,0.000747681],[22902.6,21080.2,-0.943607],[13255.6,14547.4,0.97],[18396.9,15601.6,-0.035778]];  _aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi = false; { 	if(((getPosATL _house) distance _x) < 3) exitWith { 		_aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi = true; 	}; } foreach _lzcvtcpuaiapvrnlyfjoaizvelrpgexskfovuoeczqjmyovgvefruwucpskrhcifao; if(_aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi) exitWith {hint localize "STR_m_BlackListedHouse";};     _uhcjbxvfqwnsvnmwacsjjheggydbeowqbonyqrhbofmxzwkfwstyioeqmjcwmfsv = false; { 	_bvudzafhlssrzxwraospoqsxdlvmdvwirlalpcrhnnmyfhlethjzfmboryuaslamut = call compile (_x select 0); 	_jkpesrdvqhiqqzrskcmgdyzqzsurywvdgjztpeeyjissbqvswyfixxpxhtkh = _bvudzafhlssrzxwraospoqsxdlvmdvwirlalpcrhnnmyfhlethjzfmboryuaslamut nearestObject "House_F"; 	if((typeOf _jkpesrdvqhiqqzrskcmgdyzqzsurywvdgjztpeeyjissbqvswyfixxpxhtkh) in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]) exitWith {_uhcjbxvfqwnsvnmwacsjjheggydbeowqbonyqrhbofmxzwkfwstyioeqmjcwmfsv = true}; } foreach life_houses;  _yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru = 1; if(perk_14 >= 3) then {_yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru = _yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru + 1}; if(perk_14 >= 6) then {_yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru = _yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru + 1}; if(perk_14 >= 9) then {_yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru = _yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru + 1};   _aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi = false;  if((count life_houses) > _yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru OR ((count life_houses) == _yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru && (perk_14 < 9))) exitWith {hint format[localize "STR_House_Max_House",(count life_houses),localize ([14] call life_fnc_qokbfvuujyauzhpwhhtwfwakspbzosfzvnzazblmmcrbpdqwwbfdbdztgoic)];}; if((count life_houses) == _yrvpqnzcjhaphxrwhpfymkzqxbcwhmvltmnawzskgdcbmtbwdzriqavhqghfzbwuiru && !(typeOf _house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]) && !_uhcjbxvfqwnsvnmwacsjjheggydbeowqbonyqrhbofmxzwkfwstyioeqmjcwmfsv) exitWith {hint format[localize "STR_House_CanOnlyGetGarage",(count life_houses)];};    _glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj = [(typeOf _house)] call life_fnc_yoathsnunstdsumgusrafybkxcwwxbjzapcoaqfborlwbprivudyskatkddl;   _ndrgqvnbiandsarxrkcenwxcybfgwbzvrklkpydowcrfgoxyrnyabgmlmsrqawlwfueie = [[16950.1,12601,0.144878]]; if(getPosATL _house in _ndrgqvnbiandsarxrkcenwxcybfgwbzvrklkpydowcrfgoxyrnyabgmlmsrqawlwfueie) exitWith {hint localize "STR_m_BuggedHouse";};  closeDialog 0;  _qmkakvvchqjxflelxzyapxzjubiqricvdgwypudssujhpytehawwogagkovsoax = []; {   private "_a";   _a = toArray _x;   _a resize 12;   if (toString _a == "villageSpawn") then {     _qmkakvvchqjxflelxzyapxzjubiqricvdgwypudssujhpytehawwogagkovsoax pushBack _x;   } } forEach allMapMarkers;  _aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi = false; { 	if(player distance (getMarkerPos _x) < 300) then { 		if(count life_gangData == 0) exitWith { 			_aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi = true; 		}; 		 		if(_x != format["villageSpawn_%1",(life_gangData select 6)]) exitWith { 			_aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi = true; 		}; 	}; } foreach _qmkakvvchqjxflelxzyapxzjubiqricvdgwypudssujhpytehawwogagkovsoax; if(_aranrubhqxuxzmyahpvpejqlkjndyonuccctybscwcetqgvjbwovjrjpdvcbvstbmoi) exitWith {hint localize "STR_m_TooCloseVillage"}; if ((getPos player) inArea "kavala_safezone") exitWith {hint localize "STR_m_NotHouseKavala";};   if(EQUAL(count _glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj,0)) exitWith {};  _ltgivccmewelxasukbjjblsarjxgpnoevtdbnfrdytppgmknzrvraitwqineixeypmlky = [ 	format[localize "STR_House_BuyMSG", 	[(_glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj select 0)] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq, 	(_glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj select 1), 	[round((_glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj select 0)*0.8)] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq],localize "STR_House_Purchase",localize "STR_Global_Buy",localize "STR_Global_Cancel" ] call BIS_fnc_guiMessage;  if((call life_donatorlvl) >= 3) then { 	_glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj set [0,round((_glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj select 0)*0.8)]; };  if(_ltgivccmewelxasukbjjblsarjxgpnoevtdbnfrdytppgmknzrvraitwqineixeypmlky) then { 	if(BANK < (_glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj select 0)) exitWith {hint format [localize "STR_House_NotEnough"]}; 	[[_icsmhfpawfaubdvbhthjhewsrcfopreztwmekiosifaneefyklegsozhihwicbvy,_house],"TON_fnc_darjxstkptkznztrahxppmfsfhhbmptpzotloupcmbwrwfscivwqia",false,false] call life_fnc_MP; 	_house SVAR ["house_owner",[_icsmhfpawfaubdvbhthjhewsrcfopreztwmekiosifaneefyklegsozhihwicbvy,profileName],true]; 	_house SVAR ["locked",true,true]; 	_house SVAR ["Trunk",[[],0],true]; 	_house SVAR ["containers",[],true]; 	_house SVAR ["house_owner_online",[],true]; 	_house SVAR ["uid",floor(random 99999),true]; 	SUB(BANK,(SEL(_glzqolldruuncroppuapblrlobiyvksxwrtswkpvcxjqotvcikudjxroiqzj,0))); 	[1] call SOCK_fnc_ddjmbrftntgdwpptfaoymlxkcjyscjwhklmcfylqhrqrxtxznnh;  	life_vehicles pushBack _house; 	life_houses pushBack [str(getPosATL _house),[]]; 	if(!streamerMode) then { 		_marker = createMarkerLocal [format["house_%1",(_house GVAR "uid")],getPosATL _house]; 		_houseName = FETCH_CONFIG2(getText,CONFIG_VEHICLES,(typeOf _house), "displayName"); 		_marker setMarkerTextLocal _houseName; 		_marker setMarkerColorLocal "ColorBlue"; 		_marker setMarkerTypeLocal "loc_Lighthouse"; 	}; 	_numOfDoors = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,(typeOf _house),"numberOfDoors"); 	for "_i" from 1 to _numOfDoors do { 		_house SVAR [format["bis_disabled_Door_%1",_i],1,true]; 	}; };  