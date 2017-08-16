private["_house"];
_house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _house OR !(_house isKindOf "House_F")) exitWith {};
_numberOfDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");
if(_numberOfDoors == -1 OR _numberOfDoors == 0) exitWith {}; //MEH
titleText ["Verrouillage de toute la  maison...","PLAIN"];
uiSleep 3;
for "_i" from 1 to _numberOfDoors do {
	_house animate[format["door_%1_rot",_i],0];
	_house setVariable[format["bis_disabled_Door_%1",_i],1,true];
};

_house setVariable["locked",true,true];
titleText["La maison a été verrouillée","PLAIN"];