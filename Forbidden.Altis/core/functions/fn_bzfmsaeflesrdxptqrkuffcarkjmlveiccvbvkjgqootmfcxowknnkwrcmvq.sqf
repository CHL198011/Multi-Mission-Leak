private["_ufzxyprxwungjjibsmzbpmmuplomqdqplfexzolifrtwsrdosjwocqqdrshcszizeqv","_tflipjisfgqsbsvlzbfeogtaeonqilwnthsmiysdxsauhxicuaxkhkmbbeschjgrmej","_vskihybnnnblwqruqdtsteeyutnclbkimubcrkvvwzwblutalfmvrxdfijxani","_qjfzprdgbhfuxcrkfmtnxpreaylscwnztrnqdbscovxpjvysdciclyaltshdomrbu","_crimes","_crime","_vfzvvwrggbenktarcuticqtjyepyxbualffwruottzxyzucigdkjlwnjqbww","_pililskoobqdaudamtvfwfrsnrklmubrlfypunmntawckusifkifeticnvcgypowjxepm"]; _ufzxyprxwungjjibsmzbpmmuplomqdqplfexzolifrtwsrdosjwocqqdrshcszizeqv = [_this,0,Objnull,[Objnull]] call BIS_fnc_param; _tflipjisfgqsbsvlzbfeogtaeonqilwnthsmiysdxsauhxicuaxkhkmbbeschjgrmej = [_this,1,Objnull,[Objnull]] call BIS_fnc_param; _qjfzprdgbhfuxcrkfmtnxpreaylscwnztrnqdbscovxpjvysdciclyaltshdomrbu = [_this,2,false,[false]] call BIS_fnc_param;  _crimes = var_base getVariable [format["wantedList_%1",getPlayerUID _ufzxyprxwungjjibsmzbpmmuplomqdqplfexzolifrtwsrdosjwocqqdrshcszizeqv],[]];  _pililskoobqdaudamtvfwfrsnrklmubrlfypunmntawckusifkifeticnvcgypowjxepm = 0; { 	_crime = _x; 	 	_vfzvvwrggbenktarcuticqtjyepyxbualffwruottzxyzucigdkjlwnjqbww = [_crime] call life_fnc_kprbthjccuhcridyracrhuordorgaupmmvcnrogxurtmziprgjklzgsqkq; 	 	_pililskoobqdaudamtvfwfrsnrklmubrlfypunmntawckusifkifeticnvcgypowjxepm = _pililskoobqdaudamtvfwfrsnrklmubrlfypunmntawckusifkifeticnvcgypowjxepm + (_vfzvvwrggbenktarcuticqtjyepyxbualffwruottzxyzucigdkjlwnjqbww select 1); } foreach _crimes;  if(_ufzxyprxwungjjibsmzbpmmuplomqdqplfexzolifrtwsrdosjwocqqdrshcszizeqv getVariable ["copInfiltrator",false]) then {_pililskoobqdaudamtvfwfrsnrklmubrlfypunmntawckusifkifeticnvcgypowjxepm = _pililskoobqdaudamtvfwfrsnrklmubrlfypunmntawckusifkifeticnvcgypowjxepm/2;};  [_ufzxyprxwungjjibsmzbpmmuplomqdqplfexzolifrtwsrdosjwocqqdrshcszizeqv,_tflipjisfgqsbsvlzbfeogtaeonqilwnthsmiysdxsauhxicuaxkhkmbbeschjgrmej,_qjfzprdgbhfuxcrkfmtnxpreaylscwnztrnqdbscovxpjvysdciclyaltshdomrbu,_pililskoobqdaudamtvfwfrsnrklmubrlfypunmntawckusifkifeticnvcgypowjxepm] remoteExec ["life_fnc_qsahjvuolbzukhdzlutkbwxnigccffksmwbukhmifmqxxgljselgwocnwx",2]; 