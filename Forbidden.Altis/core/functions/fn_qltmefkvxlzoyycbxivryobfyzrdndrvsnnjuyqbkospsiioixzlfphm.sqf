 RemoveAllWeapons cursorTarget; {cursorTarget removeMagazine _x;} foreach (magazines cursorTarget); removeUniform cursorTarget; removeVest cursorTarget; removeHeadGear cursorTarget; removeBackpack cursorTarget;  { 	deleteVehicle _x; } foreach nearestObjects[(getPos cursorTarget),["WeaponHolderSimulated"],5];  if(hmd cursorTarget != "") then { 	cursorTarget unlinkItem (hmd cursorTarget); }; 