﻿/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	A short function for telling the player to add a vehicle to his keychain.
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call GTA_fnc_param;
if(!(_vehicle in life_vehicles)) then
{
	life_vehicles set[count life_vehicles,_vehicle];
};