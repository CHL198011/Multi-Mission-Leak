private ["_whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb","_aaqiefojkgmmrzmzjdrrhtaxanlyvihhlbauuicpnoywcfraunagjaawdguzfrviciwef","_qsqhzzyibsbgnphsjpisbrzincdtswwxcnjdttwtqtrthnwxbbdnjzreasqitnbff","_qgyvazrhlyrqopzpwgguudftseaamuomhhlewyiurrnageqgijpsowqvfcqnqwqdnp"];  _whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb = [_this,0,0,[0]] call BIS_fnc_param; _aaqiefojkgmmrzmzjdrrhtaxanlyvihhlbauuicpnoywcfraunagjaawdguzfrviciwef = [_this,1,false,[false]] call BIS_fnc_param; _qsqhzzyibsbgnphsjpisbrzincdtswwxcnjdttwtqtrthnwxbbdnjzreasqitnbff = [_this,2,"",[""]] call BIS_fnc_param; _qgyvazrhlyrqopzpwgguudftseaamuomhhlewyiurrnageqgijpsowqvfcqnqwqdnp = [_this,3,false,[false]] call BIS_fnc_param;  if!(isNil "muteLoopRunning") then {muted_player = 0}; waitUntil {isNil "muteLoopRunning"};   muted_player = _whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb; if(_whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb != 0) then { 	[[player,false,playerSide],"TON_fnc_ofdnbdatriuxfqrjexkzqpscwxviomxgyjtjjgiscncgixncmewquvnoj",false,false,true] call life_fnc_MP; 	if(_whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb == -1) then { 		if(!_aaqiefojkgmmrzmzjdrrhtaxanlyvihhlbauuicpnoywcfraunagjaawdguzfrviciwef) then {[[0,1,2],format[localize "STR_m_YouWereMutedPerm",_qsqhzzyibsbgnphsjpisbrzincdtswwxcnjdttwtqtrthnwxbbdnjzreasqitnbff]] spawn life_fnc_broadcast}; 		 		muted_player = _whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb; 		[getPlayerUID player,_whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb] remoteExec ["TON_fnc_vxymzczrzsbxbdzovlvxhpttcsieagwtfenbrvghdnbvtssvvvue",2]; 	} else { 		if(!_aaqiefojkgmmrzmzjdrrhtaxanlyvihhlbauuicpnoywcfraunagjaawdguzfrviciwef) then {[[0,1,2],format[localize "STR_m_YouWereMuted",_whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb,_qsqhzzyibsbgnphsjpisbrzincdtswwxcnjdttwtqtrthnwxbbdnjzreasqitnbff,if(_qgyvazrhlyrqopzpwgguudftseaamuomhhlewyiurrnageqgijpsowqvfcqnqwqdnp) then {localize "STR_m_MuteLastWarn"} else {""}]] spawn life_fnc_broadcast}; 		 		muteLoopRunning = true; 		[_whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb] spawn { 			private ["_bgiqickaqermzlyrvnhzzbqpeeakcqxxphkolgscgzxwvsdxbcriirxticciamwkeyxahb","_wlgrhdqhygtvzfepbqgwnqiakarlvdxwckagnaiuujqkvjovqxlweuciwpytqmfkldun"]; 			_whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb = _this select 0; 			_bgiqickaqermzlyrvnhzzbqpeeakcqxxphkolgscgzxwvsdxbcriirxticciamwkeyxahb = diag_tickTime + (_whsqvfborvfjjhmcjdhaqmaieohrrkuvyxhkwytnzlsfkkeubhkymozypdhb * 60); 			 			while {_bgiqickaqermzlyrvnhzzbqpeeakcqxxphkolgscgzxwvsdxbcriirxticciamwkeyxahb - diag_tickTime > 0 && !(muted_player == 0)} do { 				muted_player = ceil ((_bgiqickaqermzlyrvnhzzbqpeeakcqxxphkolgscgzxwvsdxbcriirxticciamwkeyxahb - diag_tickTime) / 60); 				[getPlayerUID player,muted_player] remoteExec ["TON_fnc_vxymzczrzsbxbdzovlvxhpttcsieagwtfenbrvghdnbvtssvvvue",2]; 				_wlgrhdqhygtvzfepbqgwnqiakarlvdxwckagnaiuujqkvjovqxlweuciwpytqmfkldun = diag_tickTime + 240; 				waitUntil {(_wlgrhdqhygtvzfepbqgwnqiakarlvdxwckagnaiuujqkvjovqxlweuciwpytqmfkldun - diag_tickTime < 0) OR !(_bgiqickaqermzlyrvnhzzbqpeeakcqxxphkolgscgzxwvsdxbcriirxticciamwkeyxahb - diag_tickTime > 0) OR (muted_player == 0)}; 			}; 			muteLoopRunning = nil; 			if(muted_player != 0) then {[0] spawn life_fnc_muted;}; 		}; 	}; 	 } else { 	if(!_aaqiefojkgmmrzmzjdrrhtaxanlyvihhlbauuicpnoywcfraunagjaawdguzfrviciwef) then {[1,localize "STR_m_Unmuted"] spawn life_fnc_broadcast;}; 	[getPlayerUID player] remoteExec ["TON_fnc_vxymzczrzsbxbdzovlvxhpttcsieagwtfenbrvghdnbvtssvvvue",2]; 	["sidechat",1] spawn life_fnc_ubdsksldghyzjhcxtmlvexvkedniohkhannnmfswsxtdyoskdnnj;  	[[player,true,playerSide],"TON_fnc_ofdnbdatriuxfqrjexkzqpscwxviomxgyjtjjgiscncgixncmewquvnoj",false,false,true] call life_fnc_MP;  	 }; 