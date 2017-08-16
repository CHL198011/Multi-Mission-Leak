#include "..\..\script_macros.hpp"
/*
    File: fn_handleDamage.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
params [
    ["_unit",objNull,[objNull]],
    ["_part","",[""]],
    ["_damage",0,[0]],
    ["_source",objNull,[objNull]],
    ["_projectile","",[""]],
    ["_index",0,[0]]
];

_LFwheel =0;
_RFwheel =0;

_currdamage = damage player;

//Handle the tazer first (Top-Priority).
if (!isNull _source) then {
    if (_source != _unit) then {
        if (currentWeapon _source in ["hgun_P07_snds_F","SMG_01_F","hgun_PDW2000_F","hgun_P07_khk_F","SMG_05_F"] && _projectile in ["B_9x21_Ball","B_45ACP_Ball"]) then {
            if (side _source isEqualTo west && playerSide in [civilian,independent]) then {
                _damage = _currdamage;
                if (alive player && !life_istazed && !life_isknocked && !(_unit getVariable ["restrained",false])) then {
                    private["_distance"];
                    _distance = 45;
                    if (_projectile == "B_45ACP_Ball") then {_distance = 55;};
                    if (_unit distance _source < _distance) then {
                        if (vehicle player != player) then {
                            if (typeOf (vehicle player) in ["B_Quadbike_01_F",""]) then {
                                player action ["getOut",vehicle player];
                                [_unit,_source] spawn life_fnc_tazed;
                            };
                        } else {
                            [_unit,_source] spawn life_fnc_tazed;
                        };
                    };
                };
            };

            //Temp fix for super tasers on cops.
            if (side _source isEqualTo west && playerSide isEqualTo west) then {
                _damage = false;
            };
        };
    };
};


// Anti vdming script 'optimized' by RPGforyou
if (vehicle _unit isEqualTo _unit) then {
            if ( _source isKindOf "Air" OR _source isKindOf "Car" OR _source isKindOf "Boat" OR _source isKindOf "Tank" ) then
            {
            }
            else
            {
                _isVehicle = vehicle _source;
                if ((_isVehicle isKindOf "Air" OR _isVehicle isKindOf "Car" OR _isVehicle isKindOf "Boat" OR _isVehicle isKindOf "Tank") AND (driver (vehicle _source) isEqualTo _source)) then
                {
                    _damage = _currdamage;
					hint "Since you were VDM'ed you received no damage.";
					player playActionNow "stop";
                } else {
				};
            };
};

//For civie scrubs that shootinside the cop base better alternative
if(
player distance (getMarkerPos "police_hq_1") < 34 || 
player distance (getMarkerPos "swat_hq") < 34 ||
player distance (getmarkerPos "police_hq_2") < 25 ||
player distance (getmarkerpos "police_hq_5") < 35 ||
player distance (getmarkerpos "police_hq_4") < 20 ||
player distance (getmarkerpos "jail_combatlog") < 20 ||
player distance (getmarkerpos "police_hq_3") < 50)  then  {
_damage = false;
};	

[] spawn life_fnc_hudUpdate;
_damage;