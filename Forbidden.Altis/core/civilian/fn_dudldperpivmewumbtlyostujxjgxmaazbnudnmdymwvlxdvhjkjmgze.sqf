
#include <macro.h>
 private["_pwfisvqkpkpwnkyqebndviwaqsiyutmgbmdcvdigpnhtsdqxzqdouthgnxretbxrstpd","_ilfjgizhfptplhvbotktxzbirzslkuiayemdbjhqtsixhydtjlqighuqrlzmufe","_tmgvjhbtmkonlfuducdaglfvnkhiyhlpmaimkptjyapecizcrlsvgplksrsn"]; _pwfisvqkpkpwnkyqebndviwaqsiyutmgbmdcvdigpnhtsdqxzqdouthgnxretbxrstpd = [_this,0,0,[0]] call BIS_fnc_param; _ilfjgizhfptplhvbotktxzbirzslkuiayemdbjhqtsixhydtjlqighuqrlzmufe = [_this,1,objNull,[objNull]] call BIS_fnc_param; _tmgvjhbtmkonlfuducdaglfvnkhiyhlpmaimkptjyapecizcrlsvgplksrsn = [_this,2,objNull,[objNull]] call BIS_fnc_param; if(_tmgvjhbtmkonlfuducdaglfvnkhiyhlpmaimkptjyapecizcrlsvgplksrsn == _ilfjgizhfptplhvbotktxzbirzslkuiayemdbjhqtsixhydtjlqighuqrlzmufe) exitWith {}; if(EQUAL(_pwfisvqkpkpwnkyqebndviwaqsiyutmgbmdcvdigpnhtsdqxzqdouthgnxretbxrstpd,0)) exitWith {titleText[localize "STR_Civ_RobFail","PLAIN"]};  ADD(CASH,_pwfisvqkpkpwnkyqebndviwaqsiyutmgbmdcvdigpnhtsdqxzqdouthgnxretbxrstpd); titleText[format[localize "STR_Civ_Robbed",[_pwfisvqkpkpwnkyqebndviwaqsiyutmgbmdcvdigpnhtsdqxzqdouthgnxretbxrstpd] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq],"PLAIN"]; 