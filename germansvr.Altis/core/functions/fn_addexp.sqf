/*File: fn_addExp.sqfAuthor: Jacob "PapaBear" Tyler Description:Add exp to given prof*/

//add exp
_type = [_this,0,"",[""]] call BIS_fnc_param;
//0 = level 
//1 = exp  
_level = (_profData select 0);

else{
_exp = _nextLevel - _exp;

else{
missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];