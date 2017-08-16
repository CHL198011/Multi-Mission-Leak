﻿/*
	File: fn_playSound.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Plays a sound, allowing for MP.
*/

private["_source","_sound","_distance"];
_source = [_this,0,ObjNull,[ObjNull]] call GTA_fnc_param;
_sound = [_this,1,"",[""]] call GTA_fnc_param;
_distance = [_this,2,0,[0]] call GTA_fnc_param;

if (player distance _source > _distance) exitWith {};

_source say3D _sound;