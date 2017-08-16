/*
	File: fn_gasVehicle.sqf
	Author: MarkusSR1984


	Description:
	Tankt das gew�hlte Fahrzeug auf

*/
#include "..\..\macros.hpp"
disableSerialization;
private["_className","_vehicleInfo","_maxFuel","_currFuel","_fillFuel","_display"];

_className = typeof DWEV_gas_vehicle;
_vehicleInfo = [_className] call DWEV_fnc_fetchVehInfo;
_maxFuel = (_vehicleInfo select 13); // Maximaler Tankinhalt in Litern
_currFuel = (DWEV_gas_vehicle getVariable ["fuelCargo",0]); // Aktuelle Tankf�llung in Litern
_fillFuel = round (_maxFuel - _currFuel);		// Wie viele Liter werden ben�tigt um das Fahrzeug zu f�llen

_display = findDisplay IDC_GASSTAION_FUELVEHICLE_MAIN;
(_display displayCtrl IDC_GASSTAION_FUELVEHICLE_VEHINFOTXT) ctrlSetText format ["Tankfahrzeug: %1 - %2",(getText(configFile >> "CfgVehicles" >> (typeOf DWEV_gas_vehicle) >> "displayName")), ((DWEV_gas_vehicle getVariable["vehicle_info_owners",[]]) select 0)select 1];
(_display displayCtrl IDC_GASSTAION_FUELVEHICLE_FUELCAPACITY) ctrlSetText format ["Tankvolumen: %1 Liter", _maxFuel];
(_display displayCtrl IDC_GASSTAION_FUELVEHICLE_MISSINGFUEL) ctrlSetText format ["fehlende Liter: %1 Liter",_fillFuel];
(_display displayCtrl IDC_GASSTAION_FUELVEHICLE_LITERPRICE) ctrlSetText format ["Preis je Liter: %1 Euro",DWEV_gas_price];
(_display displayCtrl IDC_GASSTAION_FUELVEHICLE_REFUELD) ctrlSetText format ["Liter getankt: %1 Liter",DWEV_gas_liter];
(_display displayCtrl IDC_GASSTAION_FUELVEHICLE_REFUELPRICE) ctrlSetText format ["Preis: %1 Euro",(DWEV_gas_liter * DWEV_gas_price)];