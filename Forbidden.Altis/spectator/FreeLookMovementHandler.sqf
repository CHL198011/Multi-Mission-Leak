  	private ["_cgcizqljtfqcjaqauatuyognmeimncojlnnerenqitlzglfrxozwcfdxdlhdqebsawp", "_slfssmabxdlrhkuaiacggxwgbwuuuaigjgcytgpluvmaytuwekqabzxzjfuvrqglisbpu", "_ibpjacqilnbnbmsssudwluycksgguydhsasmutbglwtxzerxdtulncwhtlenvhkzcnhe", "_zfactor"];  	mouseDeltaX = mouseLastX - (KEGsMouseCoord select 0); 	mouseDeltaY = mouseLastY - (KEGsMouseCoord select 1);	 			 	_ibpjacqilnbnbmsssudwluycksgguydhsasmutbglwtxzerxdtulncwhtlenvhkzcnhe = 0; 	_zfactor = 0.1; 	 	 	 	 	if !(KEGs_cameraNames select KEGs_cameraIdx == "Free") then  	{ 		if ( count _this > 0 ) then { _ibpjacqilnbnbmsssudwluycksgguydhsasmutbglwtxzerxdtulncwhtlenvhkzcnhe = _this select 0; }; 	 		if ( (KEGsMouseButtons select 1) && { !(KEGsMouseButtons select 0) } ) then  		{ 			 			fangle = fangle - (mouseDeltaX*360); 			fangleY = (fangleY + (mouseDeltaY*180)) min 89 max -89; 		};  		 		if ( (_ibpjacqilnbnbmsssudwluycksgguydhsasmutbglwtxzerxdtulncwhtlenvhkzcnhe != 0) && { (KEGs_cameraNames select KEGs_cameraIdx == "Lock-on") } ) then  		{ 			 			sdistance = (sdistance - (_ibpjacqilnbnbmsssudwluycksgguydhsasmutbglwtxzerxdtulncwhtlenvhkzcnhe*sdistance/10)) max 0 min 75; 		}; 		 		 		if ( (_ibpjacqilnbnbmsssudwluycksgguydhsasmutbglwtxzerxdtulncwhtlenvhkzcnhe != 0) && { (KEGs_cameraNames select KEGs_cameraIdx == "Chase") } ) then  		{ 			 			if ( abs(sdistance) > 3 ) then { _zfactor = abs(sdistance)/10 }; 			sdistance = (sdistance - (_ibpjacqilnbnbmsssudwluycksgguydhsasmutbglwtxzerxdtulncwhtlenvhkzcnhe*_zfactor)) max -50 min 50; 		}; 		 		 		if( KEGs_ALT_PRESS && { (KEGsMouseButtons select 0) } && { (KEGsMouseButtons select 1) } ) then  		{ 			 			 			szoom = (szoom - (mouseDeltaY*3)) min 2 max 0.05; 		}; 		 		 		if( KEGs_CTRL_PRESS && { KEGs_ALT_PRESS } && { (KEGsMouseButtons select 0) } && { (KEGsMouseButtons select 1) } ) then  		{ 			szoom = 1; 		}; 	} 	 	 	else 	{ 		if(!(KEGsMouseButtons select 0) and (KEGsMouseButtons select 1)) then  		{ 			_cgcizqljtfqcjaqauatuyognmeimncojlnnerenqitlzglfrxozwcfdxdlhdqebsawp = 0; 			_slfssmabxdlrhkuaiacggxwgbwuuuaigjgcytgpluvmaytuwekqabzxzjfuvrqglisbpu = 0; 			 			 if !( mouseDeltaX == 0 ) then {  _cgcizqljtfqcjaqauatuyognmeimncojlnnerenqitlzglfrxozwcfdxdlhdqebsawp = mouseDeltaX * -100; }; 			 if !( mouseDeltaY == 0 ) then {  _slfssmabxdlrhkuaiacggxwgbwuuuaigjgcytgpluvmaytuwekqabzxzjfuvrqglisbpu = mouseDeltaY * 50; }; 	 			_cgcizqljtfqcjaqauatuyognmeimncojlnnerenqitlzglfrxozwcfdxdlhdqebsawp = _cgcizqljtfqcjaqauatuyognmeimncojlnnerenqitlzglfrxozwcfdxdlhdqebsawp max -180 min +180; 			 			KEGscam_free_pitch = (KEGscam_free_pitch + _slfssmabxdlrhkuaiacggxwgbwuuuaigjgcytgpluvmaytuwekqabzxzjfuvrqglisbpu) max -90 min +90;  			KEGscam_free setdir (direction KEGscam_free + _cgcizqljtfqcjaqauatuyognmeimncojlnnerenqitlzglfrxozwcfdxdlhdqebsawp); 			[KEGscam_free,KEGscam_free_pitch,0] call bis_fnc_setpitchbank; 		}; 	};  	mouseLastX = KEGsMouseCoord select 0; 	mouseLastY = KEGsMouseCoord select 1;	    