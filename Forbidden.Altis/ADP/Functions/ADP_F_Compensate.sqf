     
#include <macro.h>
  private ["_tkfauesnpxfacahkfntowwqojtnrbndzbwuittfqeufikuuygrzdrekvevummavt", "_sawkfpnpthlvviinsmnnfgjmftawnisedfhviegiappsxakxqrqwouxnjlapjqfty","_xxufbrsjqogtnjqjxxpzkfourkdagkytwzvbxrmguruyhgpicgyyizkopoqpu","_anbgadmsktqydtkhqiebrscfysnnrrgxauqgcwwflkfkfjuaqrtvynwwvbcfrxr","_admin"]; _anbgadmsktqydtkhqiebrscfysnnrrgxauqgcwwflkfkfjuaqrtvynwwvbcfrxr = parseNumber(ctrlText 1400); disableSerialization; _playerlist = 1500; 	 if((lbCurSel _playerlist) == -1) then { 	_sawkfpnpthlvviinsmnnfgjmftawnisedfhviegiappsxakxqrqwouxnjlapjqfty = player; 	_tkfauesnpxfacahkfntowwqojtnrbndzbwuittfqeufikuuygrzdrekvevummavt = true; } else { 	_TargetIdx = lbValue[_playerlist, (lbCurSel _playerlist)]; 	for "_idx" from 0 to (lbSize _playerlist) do { 		if(lbValue[_playerlist, (lbCurSel _playerlist)] == _TargetIdx) then { 			_sawkfpnpthlvviinsmnnfgjmftawnisedfhviegiappsxakxqrqwouxnjlapjqfty = ADP_nameCache select _Targetidx; 			_tkfauesnpxfacahkfntowwqojtnrbndzbwuittfqeufikuuygrzdrekvevummavt = true; 		}; 	}; };  if (_tkfauesnpxfacahkfntowwqojtnrbndzbwuittfqeufikuuygrzdrekvevummavt) then { 	_anbgadmsktqydtkhqiebrscfysnnrrgxauqgcwwflkfkfjuaqrtvynwwvbcfrxr = parseNumber (ctrlText 1400); 	if(_anbgadmsktqydtkhqiebrscfysnnrrgxauqgcwwflkfkfjuaqrtvynwwvbcfrxr == 0) exitWith {hint "You must specify a value in the box below first!";}; 	if(_anbgadmsktqydtkhqiebrscfysnnrrgxauqgcwwflkfkfjuaqrtvynwwvbcfrxr < 0) exitWith {hint "Number must be positive!";}; 	if(_sawkfpnpthlvviinsmnnfgjmftawnisedfhviegiappsxakxqrqwouxnjlapjqfty == player && FETCH_CONST(life_adminlevel) < 5) exitWith {hint "You can't grant yourself money!";};  	hint format["You have granted %1 $%2",name _sawkfpnpthlvviinsmnnfgjmftawnisedfhviegiappsxakxqrqwouxnjlapjqfty,[_anbgadmsktqydtkhqiebrscfysnnrrgxauqgcwwflkfkfjuaqrtvynwwvbcfrxr] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq]; 	[4,(getPlayerUID player),getPlayerUID _sawkfpnpthlvviinsmnnfgjmftawnisedfhviegiappsxakxqrqwouxnjlapjqfty,"Grant money",([_anbgadmsktqydtkhqiebrscfysnnrrgxauqgcwwflkfkfjuaqrtvynwwvbcfrxr] call life_fnc_ccxpkhrsgzfibqpgmuxgqovtqnwczbibnrrxqvyckzrmhckzyugqq),profileName,name _sawkfpnpthlvviinsmnnfgjmftawnisedfhviegiappsxakxqrqwouxnjlapjqfty,str (getPos player)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; 	[[_anbgadmsktqydtkhqiebrscfysnnrrgxauqgcwwflkfkfjuaqrtvynwwvbcfrxr,player,"add"],"life_fnc_huvrcaooegbvaapijvaaqlrkcfcwnoncaawfydkniugnnrbkftrjsrpf",_sawkfpnpthlvviinsmnnfgjmftawnisedfhviegiappsxakxqrqwouxnjlapjqfty,false,true] call life_fnc_MP;  };   