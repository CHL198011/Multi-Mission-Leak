/*
	File: activateNitro.sqf
	Author: John "Paratus" VanderZwet

	Description: Activates nitrous injector on car

	Edits by Huntah for police boost
*/

private ["_tempNum","_timer","_speed","_targets"];

_timer = 30;
_vehicle = vehicle player;
if(isNil "DS_police_nos")then{DS_police_nos = false;};
if (_vehicle == player) exitWith {};
if (driver _vehicle != player) exitWith {};
if(((playerSide isEqualTo west)||(player getVariable ["security",false])||(player getVariable ["medic",false])||((vehicle player) getVariable ["CCU",false])||((vehicle player) getVariable ["GCU",false]))&&(DS_police_nos))exitwith{hint "This vehicle is still recharging from its last boost"};

if(((DS_infoArray select 13) == 11)&&(playerside == civilian))then {
	[0] call DS_fnc_questCompleted;
};

//GCU and CCUif(((typeOf _vehicle) == "B_MRAP_01_F")
if((((typeOf _vehicle) == "O_Truck_03_covered_F")||((typeOf _vehicle) == "O_APC_Wheeled_02_rcws_F")||((typeOf _vehicle) == "B_APC_Wheeled_01_cannon_F"))&&((vehicle player) getVariable ["CCU",false])||((vehicle player) getVariable ["GCU",false]))exitwith {
	_speed = 28;
	if((random 6) > 3)then {
		_targets = allPlayers select {(_x distance player) < 200};
		[(vehicle player),"NosSound",true] remoteExecCall ["DS_fnc_playSounds",_targets];
	}  else {
		player say3D "NosSound";
	};

	systemChat "Command Unit Boost Engaged.";
	DS_police_nos = true;
	_vel = velocity _vehicle;
	_dir = direction _vehicle; //how much you want to add speed for the vehicle
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	_timer = 10;
	sleep _timer;
	hint "Boost Recharged";
	DS_police_nos = false;
};

if((!(playerSide isEqualTo west))&&(!(player getVariable ["security",false]))&&(!(player getVariable ["medic",false])))then {
	if ((_vehicle getVariable ["nitro",0]) < 1) exitWith {};
};

if ((speed _vehicle) <= 9) exitWith { systemChat format ["You must be moving atleast 10km/h to activate Nitro."]; };

if(player getVariable ["medic",false])exitWith {
	_speed = 22;
	if((random 6) > 3)then {
		_targets = allPlayers select {(_x distance player) < 200};
		[(vehicle player),"NosSound",true] remoteExecCall ["DS_fnc_playSounds",_targets];
	} else {
		player say3D "NosSound";
	};
	systemChat "Medic Boost Engaged.";
	DS_police_nos = true;
	_vel = velocity _vehicle;
	_dir = direction _vehicle;
	if((vehicle player) isKindOf "Ship")then {
		_speed = 35;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)+2];
	} else {
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	};
	if((DS_infoArray select 10) > 8)then {
		_timer = (_timer - 10);
	};
	if((DS_infoArray select 10) > 22)then {
		_timer = (_timer - 10);
	};
	if((DS_infoArray select 10) == 8)then {
		_tempNum = (DS_infoArray select 11) + 1;
		if(_tempNum > 19)then {
			[3] call DS_fnc_questCompleted;
		} else {
			DS_infoArray set [11,_tempNum];
		};
	};
	if((DS_infoArray select 10) == 22)then {
		_tempNum = (DS_infoArray select 11) + 1;
		if(_tempNum > 49)then {
			[3] call DS_fnc_questCompleted;
		} else {
			DS_infoArray set [11,_tempNum];
		};
	};
	sleep _timer;
	hint "Boost Recharged";
	DS_police_nos = false;
};

if(player getVariable ["security",false])exitWith {
	if((DS_infoArray select 19) > 27)then{_speed = 32}else{_speed = 22};
	if((DS_infoArray select 19) > 2)then{_timer = 20};
	if((DS_infoArray select 19) > 18)then{_timer = 15};
	if((random 6) > 3)then {
		_targets = allPlayers select {(_x distance player) < 200};
		[(vehicle player),"NosSound",true] remoteExecCall ["DS_fnc_playSounds",_targets];
	} else {
		player say3D "NosSound";
	};
	systemChat "Speed Boost Engaged.";
	DS_police_nos = true;
	_vel = velocity _vehicle;
	_dir = direction _vehicle;
	if((vehicle player) isKindOf "Ship")then {
		_speed = 35;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)+2];
	} else {
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	};

	if((DS_infoArray select 19) == 2)then {
		_tempNum = (DS_infoArray select 20) + 1;
		if(_tempNum > 19)then {
			[3] call DS_fnc_questCompleted;
		} else {
			DS_infoArray set [20,_tempNum];
		};
	};

	if((DS_infoArray select 19) == 18)then {
		_tempNum = (DS_infoArray select 20) + 1;
		if(_tempNum > 49)then {
			[3] call DS_fnc_questCompleted;
		} else {
			DS_infoArray set [20,_tempNum];
		};
	};

	if((DS_infoArray select 19) == 27)then {
		_tempNum = (DS_infoArray select 20) + 1;
		if(_tempNum > 99)then {
			[3] call DS_fnc_questCompleted;
		} else {
			DS_infoArray set [20,_tempNum];
		};
	};

	if((DS_infoArray select 19) == 36)then {
		_tempNum = (DS_infoArray select 20) + 1;
		if(_tempNum > 199)then {
			[3] call DS_fnc_questCompleted;
		} else {
			DS_infoArray set [20,_tempNum];
		};
	};

	sleep _timer;
	hint "Boost Recharged";
	DS_police_nos = false;
};

if(!(playerSide isEqualTo west))then {
	if(((player inArea "safezone")||(player inArea "safezone_1"))&&(playerSide isEqualTo civilian))exitwith{hint "You cant use nos in this area";};
	if((random 6) > 3)then {
		_targets = allPlayers select {(_x distance player) < 200};
		[(vehicle player),"NosSound",true] remoteExecCall ["DS_fnc_playSounds",_targets];
	}  else {
		player say3D "NosSound";
	};
	_vehicle setVariable["nitro",((_vehicle getVariable["nitro",0]) - 1),true];
	_vehicle setVariable["nitroTime", time, false];
	systemChat "Nitro engaged.";
	_vel = velocity _vehicle;
	_dir = direction _vehicle;
	_speed = 50;
	_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	if((DS_infoArray select 13) == 32)then {
		_tempNum = (DS_infoArray select 14) + 1;
		if(_tempNum > 49)then {
			[0] call DS_fnc_questCompleted;
		} else {
			DS_infoArray set [14,_tempNum];
		};
	};
	if((player getVariable ["mechanic",false])&&((DS_infoArray select 23) == 17))then {
		_tempNum = (DS_infoArray select 24) + 1;
		if(_tempNum > 49)then {
			[3] call DS_fnc_questCompleted;
		} else {
			DS_infoArray set [24,_tempNum];
		};
	};
} else {
	if((player getVariable ["policeSquad",""]) == "Highway Patrol")then{_timer = _timer - 10};
	if((player getVariable ["policeSquad",""]) == "Rapid Response")then{_timer = _timer - 10};
	if((DS_infoArray select 21) > 9)then{_timer = _timer - 5;};
	if((DS_infoArray select 21) > 22)then{_timer = _timer - 5;};
	if((random 6) > 3)then {
		_targets = allPlayers select {(_x distance player) < 200};
		[(vehicle player),"NosSound",true] remoteExecCall ["DS_fnc_playSounds",_targets];
	}  else {
		player say3D "NosSound";
	};
	systemChat "Police Boost Engaged.";
	DS_police_nos = true;
	_vel = velocity _vehicle;
	_dir = direction _vehicle;
	if((vehicle player) isKindOf "Ship")then {
		_speed = 35;
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)+6];
		if((player getVariable ["policeSquad",""]) == "Coast Guard")then{_timer = 5;};
	} else {
		_speed = 22;
		if((player getVariable ["policeSquad",""]) == "Rapid Response")then{_speed = 32;};
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
	};

	sleep _timer;
	hint "Boost Recharged";
	DS_police_nos = false;
};