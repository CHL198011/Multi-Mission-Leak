
#include <macro.h>
 if(!alive player || dialog) exitWith {};  createDialog "playerSettings"; disableSerialization;    switch(playerSide) do { 	case west: { 		ctrlShow[2011,false]; 	}; 	 	case civilian: { 		ctrlShow[2012,false]; 	}; };    ctrlSetText [2028,format["        %1 timmar",floor((player getVariable ["playedTime",0])/3600)]];  [] call life_fnc_gvkoaarwssjrkiiggxfvvyjdxtoudbumclvmwdfexmwebsbhhlhww; 