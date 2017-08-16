#include "..\..\script_macros.hpp"
/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private "_state";
_state = param [0,1,[0]];

switch (_state) do {
	//Death while being wanted
	case 0: {
	};

	//Jail licenses
	case 1: {
		SVAR_MNS [LICENSE_VARNAME("gun","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("rebel","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("black","civ"),false];
	};

	//Remove motor vehicle licenses
	case 2: {
		if(GVAR_MNS LICENSE_VARNAME("driver","civ") OR GVAR_MNS LICENSE_VARNAME("pilot","civ") OR GVAR_MNS LICENSE_VARNAME("trucking","civ") OR GVAR_MNS LICENSE_VARNAME("boat","civ")) then {
			SVAR_MNS [LICENSE_VARNAME("pilot","civ"),false];
			SVAR_MNS [LICENSE_VARNAME("driver","civ"),false];
			SVAR_MNS [LICENSE_VARNAME("truck","civ"),false];
			SVAR_MNS [LICENSE_VARNAME("boat","civ"),false];
			hint localize "STR_Civ_LicenseRemove_1";
		};
	};

	//Killing someone while owning a gun license
	case 3: {
		if(GVAR_MNS LICENSE_VARNAME("gun","civ")) then {
			SVAR_MNS [LICENSE_VARNAME("gun","civ"),false];
			hint localize "STR_Civ_LicenseRemove_2";
		};
	};
};