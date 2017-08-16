#include "..\..\script_macros.hpp"
/*
    File: fn_sirenLights.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Lets play a game! Can you guess what it does? I have faith in you, if you can't
    then you have failed me and therefor I lose all faith in humanity.. No pressure.
*/
private ["_vehicle"];
_vehicle = param [0,objNull,[objNull]];
if (isNull _vehicle) exitWith {}; //Bad entry!
if (!(typeOf _vehicle in ["C_Offroad_01_F","C_Offroad_02_unarmed_F","C_SUV_01_F","C_Hatchback_01_sport_F","B_MRAP_01_F","B_MRAP_01_hmg_F","B_T_LSV_01_unarmed_F","B_Quadbike_01_F","I_MRAP_03_F","O_MRAP_02_F","B_Heli_Light_01_F","I_Heli_light_03_unarmed_F","C_Plane_Civil_01_racing_F","B_Heli_Transport_01_F","B_Heli_Transport_03_unarmed_F","B_Heli_Attack_01_F","B_T_VTOL_01_infantry_F","B_T_VTOL_01_vehicle_F"])) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.

_trueorfalse = _vehicle getVariable ["lights",false];

if (_trueorfalse) then {
    _vehicle setVariable ["lights",false,true];
	titletext["Sondersignal AUS","PLAIN"];
} else {
    _vehicle setVariable ["lights",true,true];
    [_vehicle,0.3] remoteExec ["life_fnc_copLights",RCLIENT];
	titletext["Sondersignal AN","PLAIN"];
};