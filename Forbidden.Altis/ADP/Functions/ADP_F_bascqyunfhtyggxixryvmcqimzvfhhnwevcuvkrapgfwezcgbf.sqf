private ["_rzjqzvcetseuzjvnzekptbxpbmxtsrtzwcfgwvflglolitjvupoutastxxcjjsbgbtvie","_lbaxrrtmwqrkmmndbcyluoyjyzwhomenrskkmgzbvdecriihflfdqujyruvvjpmehjiscx","_nzvjoyhjmwztdzqrswlhcjvxhaqcldkbjnnvplqnfdlglroxpfaveddkzrhdu","_sjejdtfuszilutcjrxqcmseeublryiwpwzoznqicongxbjbmgtfucppxxpgptdjrlwpw","_wzwvzbspuggaveuktsskvihqccmdnktfiamrizuulzpxobcrvgvwrlpzyxipvkhil","_lbaxrrtmwqrkmmndbcyluoyjyzwhomenrskkmgzbvdecriihflfdqujyruvvjpmehjiscxField","_lbaxrrtmwqrkmmndbcyluoyjyzwhomenrskkmgzbvdecriihflfdqujyruvvjpmehjiscxText","_gzjtzoupcqomjdjycdceejbclqdmcsvvrrnveywvhjgfojoyewbjhuogigvwrwmga","_ywnjuqhqexxgertlbnmugqiagokpdpkjhkydxggrkumyyaohvvyvthkvferjkm","_vwbgrxkxovrfjznxgtxwuslslpdskopdiojygagpzoombesllkkhnmosaaagnkk","_kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur","_xpqfpbdwsfvwwyjceodykmgvsscylfcypkdgbzdzdkpxeieintnbawpjbmmlipwdudnke"]; _vwbgrxkxovrfjznxgtxwuslslpdskopdiojygagpzoombesllkkhnmosaaagnkk = [_this,1,0,[0,objNull]] call BIS_fnc_param; _xpqfpbdwsfvwwyjceodykmgvsscylfcypkdgbzdzdkpxeieintnbawpjbmmlipwdudnke = [_this,2,false,[false]] call BIS_fnc_param;  kanSpecActivity = diag_tickTime; if(isNil "kanSpecAttachedTo") then {kanSpecAttachedTo = objNull}; if(!kanSpecMode) exitWith {};  _ywnjuqhqexxgertlbnmugqiagokpdpkjhkydxggrkumyyaohvvyvthkvferjkm = false; if(typeName _vwbgrxkxovrfjznxgtxwuslslpdskopdiojygagpzoombesllkkhnmosaaagnkk == typeName -1) then { 	if(_vwbgrxkxovrfjznxgtxwuslslpdskopdiojygagpzoombesllkkhnmosaaagnkk == -1) then {_ywnjuqhqexxgertlbnmugqiagokpdpkjhkydxggrkumyyaohvvyvthkvferjkm = true}; }; if(_ywnjuqhqexxgertlbnmugqiagokpdpkjhkydxggrkumyyaohvvyvthkvferjkm) exitWith {};  disableSerialization; _sjejdtfuszilutcjrxqcmseeublryiwpwzoznqicongxbjbmgtfucppxxpgptdjrlwpw = findDisplay 7500; _wzwvzbspuggaveuktsskvihqccmdnktfiamrizuulzpxobcrvgvwrlpzyxipvkhil = _sjejdtfuszilutcjrxqcmseeublryiwpwzoznqicongxbjbmgtfucppxxpgptdjrlwpw displayCtrl 7055; _lbaxrrtmwqrkmmndbcyluoyjyzwhomenrskkmgzbvdecriihflfdqujyruvvjpmehjiscxField = _sjejdtfuszilutcjrxqcmseeublryiwpwzoznqicongxbjbmgtfucppxxpgptdjrlwpw displayCtrl 7081; _lbaxrrtmwqrkmmndbcyluoyjyzwhomenrskkmgzbvdecriihflfdqujyruvvjpmehjiscxText = _sjejdtfuszilutcjrxqcmseeublryiwpwzoznqicongxbjbmgtfucppxxpgptdjrlwpw displayCtrl 7080;  if(typeName _vwbgrxkxovrfjznxgtxwuslslpdskopdiojygagpzoombesllkkhnmosaaagnkk == typeName objNull) then { 	_kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur = _vwbgrxkxovrfjznxgtxwuslslpdskopdiojygagpzoombesllkkhnmosaaagnkk; } else { 	_kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur = call compile (_wzwvzbspuggaveuktsskvihqccmdnktfiamrizuulzpxobcrvgvwrlpzyxipvkhil lbData _vwbgrxkxovrfjznxgtxwuslslpdskopdiojygagpzoombesllkkhnmosaaagnkk); };  if(isNull _kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur) exitWith {[true] spawn ADP_fnc_mamjhsmxzowbovnweugxquapdoiogtxhekfppmvmuuqvcuxpoxtblrkl};  if((_xpqfpbdwsfvwwyjceodykmgvsscylfcypkdgbzdzdkpxeieintnbawpjbmmlipwdudnke OR (kanSpecCurrent != _kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur)) && _kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur != player) then { 	_kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur spawn { 		waitUntil {kanSpecCurrent == _this}; 		if(kanSpecAttachedTo == _this) exitWith {}; 		kanSpecAttachedTo = _this; 		while {kanSpecMode && kanSpecCurrent == _this && (isPlayer _this)} do { 			player attachTo [_this,[0,0,0]]; 			if(life_debugging) then {systemChat format["waiting to get into vehicle: %1",str _this]}; 			waitUntil {(_this != (vehicle _this)) OR !kanSpecMode OR (kanSpecCurrent != _this) OR !(isPlayer _this)}; 			 			if(kanSpecCurrent != _this OR !kanSpecMode OR !(isPlayer _this)) exitWith {if(life_debugging) then {systemChat format["Exiting: %1",str _this]};}; 			player attachTo [(vehicle _this),[0,0,0]]; 			_this switchCamera "EXTERNAL"; 			if(life_debugging) then {systemChat format["waiting to leave vehicle: %1",str _this]}; 			waitUntil {(_this == (vehicle _this)) OR !kanSpecMode OR (kanSpecCurrent != _this) OR !(isPlayer _this)}; 		}; 		if(life_debugging) then {systemChat format["Exiting: %1",str _this]}; 		if(kanSpecAttachedTo == _this) then {kanSpecAttachedTo = objNull; if(life_debugging) then {systemChat format["Resetting kanSpecAttachedTo: %1",str _this]};}; 		 		sleep 1; 		if(!(isPlayer _this) && kanSpecMode) then {if(life_debugging) then {systemChat format["Disabling spec: %1",str _this]}; closedialog 7500;}; 	}; }; kanSpecCurrent = _kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur;    [4,(getPlayerUID player),getPlayerUID _kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur,"Spectate","Kannels spec mode",profileName,name _kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur,str (getPos _kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2];  _PlayerNm = format ["Spelare: %1 (%2)",name _kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur,(_kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur getVariable ["steamName",""])];	 [_PlayerNm,0,-0.36,500,0.2,0,1800] spawn BIS_fnc_dynamicText;   openMap false; hint ""; _kzvqgnkooulnozwlhqyvzuevhlnvwabpwdrsfzvprgjvmquthuzsqbaeljvggqmfazbnur switchCamera "EXTERNAL";       _nzvjoyhjmwztdzqrswlhcjvxhaqcldkbjnnvplqnfdlglroxpfaveddkzrhdu = diag_tickTime; waitUntil {!(isNull (findDisplay 7500)) OR (diag_tickTime - _nzvjoyhjmwztdzqrswlhcjvxhaqcldkbjnnvplqnfdlglroxpfaveddkzrhdu) > 2};  if(!(isNull (findDisplay 7500)) && (call life_adminlevel) > 0) then { 	{(_sjejdtfuszilutcjrxqcmseeublryiwpwzoznqicongxbjbmgtfucppxxpgptdjrlwpw displayCtrl _x) ctrlEnable true} foreach [1871,1872,1873,1874]; }; 