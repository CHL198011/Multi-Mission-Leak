
#include <macro.h>
 private["_pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf","_kodegpvfqclabufmzmkpjufliitdxjwutiuwkvblwllucidaypudhzsgrojqbufn"]; _pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf = parseNumber(ctrlText 2702);   if(isNil "lastGangWithDraw") then {lastGangWithDraw = 0;}; if(safekeeping_active OR safekeeping_inprogress) exitWith {hint "Ej i safekeeping!!";};  if(diag_tickTime - lastGangWithDraw < 5) exitWith {hint localize "STR_m_ClickingTooFast"}; lastGangWithDraw = diag_tickTime;  if(_pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf > 999999) exitWith {hint localize "STR_ATM_GreaterThan";}; if(_pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf < 0) exitWith {}; if(!([str(_pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf)] call life_fnc_wvlefkabjohrumynebyqhllbwfawdhgvfgijzoixyapiydbolns)) exitWith {hint localize "STR_ATM_notnumeric"};  if(((grpPlayer getVariable ["gang_owner",""]) != getplayerUID player) && (call life_rebactive) == 0) exitWith {hint "Bara presidenten kan ta ut pengar!";}; if((call life_rebactive) == 1 && (call life_reblevel) < 4) exitWith {hint "STR_m_RebWithLow";}; if((grpPlayer getVariable ["gang_bank",0]) < _pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf) exitWith {hint "De pengarna finns inte i banken!"};  _pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf spawn { 	private ["_kodegpvfqclabufmzmkpjufliitdxjwutiuwkvblwllucidaypudhzsgrojqbufn","_pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf"]; 	_pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf = _this; 	 	if((grpPlayer getVariable ["withdraw_in_progress",""]) != "") exitWith {hint localize "STR_m_WithdrawingSameCancel"; grpPlayer setVariable ["withdraw_in_progress","",true];}; 	hint localize "STR_m_WithdrawingGang"; 	grpPlayer setVariable ["withdraw_in_progress",getPlayerUID player,true]; 	uiSleep 5; 	if((grpPlayer getVariable ["withdraw_in_progress",""]) != (getPlayerUID player)) exitWith {hint localize "STR_m_WithdrawingSameCancel"; grpPlayer setVariable ["withdraw_in_progress","",true];}; 	if(safekeeping_active OR safekeeping_inprogress) exitWith {hint "Ej i safekeeping!!"; grpPlayer setVariable ["withdraw_in_progress","",true];}; 	grpPlayer setVariable ["withdraw_in_progress","",true]; 	 	_kodegpvfqclabufmzmkpjufliitdxjwutiuwkvblwllucidaypudhzsgrojqbufn = GANG_FUNDS; 	SUB(_kodegpvfqclabufmzmkpjufliitdxjwutiuwkvblwllucidaypudhzsgrojqbufn,_pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf); 	grpPlayer setVariable ["gang_bank",_kodegpvfqclabufmzmkpjufliitdxjwutiuwkvblwllucidaypudhzsgrojqbufn,true]; 	ADD(BANK,_pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf);  	hint format[localize "STR_m_gangWithdrew",[_pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq]; 	[] call life_fnc_mptmvjbrvsntasetidijyamgsnesluhtufflihuakdtzkfngcfnwzvcqqmyy; 	[6] call SOCK_fnc_ddjmbrftntgdwpptfaoymlxkcjyscjwhklmcfylqhrqrxtxznnh;  	[[1,grpPlayer],"TON_fnc_muszyxpknqmsnmfjvlnsfcssjyonrsqzwlmsuqskphpbdcedpi",false,false] call life_fnc_MP; 	[2,(getPlayerUID player),format["gangID: %1",(grpPlayer getVariable ["gang_id",-1])],"gang withdraw",str _pzgqzhatdpnoijnolsjbqtqryioemhrnxovsnzzbnxrbjenayqjmghmnouqkanvxf,profileName,(grpPlayer getVariable ["gang_name","Inget namn?"]),str (getPos player),life_cash,life_atmbank] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; }; 