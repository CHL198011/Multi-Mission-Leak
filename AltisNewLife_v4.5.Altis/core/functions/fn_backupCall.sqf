private ["_player ","_backupmsg"];
_player = [_this,0,objnull,[objnull]] call bis_fnc_param;
if(isNull _player) exitWith {};
if(playerSide != west) exitWith {};
hint "Un collègue a besoin de renforts !";
_backupmsg = createMarkerLocal [("_backupmsg" + name _player), getPos _player];
_backupmsg setMarkerTypeLocal "mil_warning";
_backupmsg setMarkerColorLocal "colorRed";
_backupmsg setMarkerTextLocal format ["%1 a besoin de renfort",name _player];
uiSleep 60;
deleteMarkerLocal _backupmsg;