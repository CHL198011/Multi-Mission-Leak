private ["_chair","_unit","_dir","_z"];

_chair = _this select 0; 
_unit = _this select 1;

if (!isNull life_sitting) exitWith { ["You're already sitting!",5,"red"] call RPG_Fnc_Msg; };
if (vehicle _unit != _unit) exitWith { ["You're already sitting.. in that vehicle!",5,"red"] call RPG_Fnc_Msg; };
if (_unit distance _chair > 4) exitWith { ["Your legs aren't long enough to reach that chair.",5,"red"] call RPG_Fnc_Msg; };
if (_unit getVariable ["restrained",false]) exitWith {};
if (_unit getVariable ["restrainedz",false]) exitWith {};
if (_unit getVariable ["downed",false]) exitWith {};

if (!isNull (_chair getVariable ["sitting", objNull])) exitWith { ["Somebody's already sitting there!",5,"red"] call RPG_Fnc_Msg; };

_dir = switch (typeOf _chair) do
{
	case "Land_ChairPlastic_F": { 270 };
	case "Land_Bench_F": { 90 };
	default { 180 };
};

_z = switch (typeOf _chair) do
{
	default { 0 };
};

_posATL = getPosATL _chair;
_obj = "Land_ClutterCutter_small_F" createVehicle (_posATL);
_obj setPosATL (_posATL);
_obj setDir ((direction _chair) - _dir);
_obj setVariable ["idleTime", time, true];
_unit attachTo [_obj,[0,0,_z]];
life_sitting = _obj;
_chair setVariable ["sitting", _unit, true];

[[_unit,"Crew","switch",0],"life_fnc_animSync",true,false] spawn BIS_fnc_MP;
_action = _unit addAction ["<t color='#328828'>Stand Up</t>","Chair\standup.sqf"];

waitUntil { isNull life_sitting || !(alive _unit) || player distance (getPos _chair) > 2 };

_unit removeAction _action;
life_sitting = objNull;
_chair setVariable ["sitting", nil, true];
if (isNull attachedTo _unit) then
{
	if (attachedTo _unit == _obj) then { detach _unit; deleteVehicle _obj; };
};