if(isNull _this) exitWith {};
if(player distance _this > 2500) exitWith {};
while {true} do {
	if(isNull _this OR !alive _this) exitWith {};
	if(isNil {_this getVariable "mining"}) exitWith {};
	_this say3D "Device_disassembled_loop";
	uiSleep 28.6;
};