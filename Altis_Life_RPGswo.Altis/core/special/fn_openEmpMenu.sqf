/*
	File: openEmpMenu.sqf
	Author: © 2014 nano2K - written for we-are-friendly.de
	edit by Division-wolf.de
	
	Description:
	Opens the EMP operator menu
*/


if(!alive player || dialog) exitWith {};
createDialog "nanoEMPConsole";	
disableSerialization;
waitUntil {!isNull (findDisplay 3494)};
[] spawn DWEV_fnc_scanVehicles;