#include <macro.h>
private["_vault","_handle"];
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vault) exitWith {}; //Bad object
if(typeOf _vault != "Land_Cargo20_blue_F") exitWith {hint localize "STR_ISTR_Blast_VaultOnly"};
if(_vault GVAR["wchargeplaced",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyPlaced"};
if(_vault GVAR["gold_open",false]) exitWith {hint localize "STR_ISTR_Blast_AlreadyOpen"};
if(!([false,"underwatercharge",1] call life_fnc_handleInv)) exitWith {}; //Error?
_vault SVAR["wchargeplaced",true,true];
hint localize "STR_ISTR_Blast_KeepOff";
_handle = [] spawn life_fnc_waterChargeTimer;
waitUntil {scriptDone _handle};
uiSleep 0.9;
if(!(gold_safe GVAR["wchargeplaced",false])) exitWith {hint localize "STR_ISTR_Blast_Disarmed"};
_bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL gold_safe select 0, getPosATL gold_safe select 1, (getPosATL gold_safe select 2)+0.5];
gold_safe SVAR["wchargeplaced",false,true];
gold_safe SVAR["gold_open",true,true];
hint localize "STR_ISTR_Blast_Opened";