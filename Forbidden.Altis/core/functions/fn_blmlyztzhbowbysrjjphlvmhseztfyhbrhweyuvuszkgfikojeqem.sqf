 private ["_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt","_iymyyrlnyokbgubbdfvfbpqydypycyriirwebyjevehyyhtqwrwnohofuvhvnrvhrb","_ikydxjasfkbqqkfeeqfrbjxuznaobptoyavaiexudducbyayhpjmyxscefyyscom","_bfhuanyaveihdrbkzegrasevncrsdmwfynpbngbtaawmjbaiobinszkdrmaevpute"];  _mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt = [_this,0,[],[[]]] call BIS_fnc_param; _iymyyrlnyokbgubbdfvfbpqydypycyriirwebyjevehyyhtqwrwnohofuvhvnrvhrb = [_this,1,[],[[]]] call BIS_fnc_param;  waitUntil {!life_firstSpawn};  player setPos _mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt; player setDir 0;  { 	_bfhuanyaveihdrbkzegrasevncrsdmwfynpbngbtaawmjbaiobinszkdrmaevpute = (_x select 3); 	_bfhuanyaveihdrbkzegrasevncrsdmwfynpbngbtaawmjbaiobinszkdrmaevpute pushBack ["B_Carryall_khk",1]; 	_x set [3,_bfhuanyaveihdrbkzegrasevncrsdmwfynpbngbtaawmjbaiobinszkdrmaevpute]; 	[1,[(_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt select 0),(_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt select 1) + 17,(_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt select 2)],0,_x] spawn life_fnc_urxmrsfzvvoimkjgxoqoqmtjdvwzvksxwlqlumrmaucrodubzkv; } foreach _iymyyrlnyokbgubbdfvfbpqydypycyriirwebyjevehyyhtqwrwnohofuvhvnrvhrb;  _ikydxjasfkbqqkfeeqfrbjxuznaobptoyavaiexudducbyayhpjmyxscefyyscom = [];  _ikydxjasfkbqqkfeeqfrbjxuznaobptoyavaiexudducbyayhpjmyxscefyyscom pushBack ("C_Heli_Light_01_civil_F" createVehicle [(_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt select 0)-5,(_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt select 1) + 34,(_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt select 2)]); _ikydxjasfkbqqkfeeqfrbjxuznaobptoyavaiexudducbyayhpjmyxscefyyscom pushBack ("C_Offroad_01_F" createVehicle [(_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt select 0)+5,(_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt select 1) + 34,(_mebnzslimbopwmepwubnfyhevdnummnmvmfhwyxkuerbikuaxcydrwzppkueikt select 2)]); { 	clearItemCargoGlobal _x; 	clearWeaponCargoGlobal _x; 	clearBackpackCargoGlobal _x; 	clearMagazineCargoGlobal _x; 	 	_x setVariable["ADP_spawned",true,true];  	_x addBackpackCargoGlobal ["B_FieldPack_cbr",1]; 	_x addItemCargoGlobal ["Toolkit",2];  } foreach _ikydxjasfkbqqkfeeqfrbjxuznaobptoyavaiexudducbyayhpjmyxscefyyscom;     [getPlayerUID player,0,4] remoteExec ["DB_fnc_oonvaewfbpctdobtaxtslcwjpahbederwnzozlriwmhsukolulryozbcbraw",2];   