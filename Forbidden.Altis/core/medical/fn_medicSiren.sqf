
#include <macro.h>
 private["_lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp"]; _lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;  if(isNull _lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp) exitWith {}; if(isNil {_lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp GVAR "siren"}) exitWith {};  while {true} do { 	if(!(_lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp GVAR "siren")) exitWith {}; 	if(EQUAL(count crew _lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp,0)) then {_lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp SVAR ["siren",false,true]}; 	if(!alive _lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp) exitWith {}; 	if(isNull _lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp) exitWith {}; 	_lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp say3D "medic_siren"; 	sleep 4.8; 	 	if(!(_lbgwpjecnhnmorniuhdypelkhlcpacrxtsobclmaehdimcqffdodbokaroahpljfickgzp GVAR "siren")) exitWith {}; }; 