private ["_chdoeefjikqanauvyotyugdjdwakdwggbjdcddihbizyqovirtkqdiqaewdupkp","_ppafmktjctsycfpyahryguoedceuvbujzvezggjrutqhanjoqeaiywbkwkmkypfrvw","_tnngrwcuekxsmpmhjexfvwavyjmvhuxojevktogxhkcvzloaikyzbcoafkpbgzjdksm","_llnftebjmhxlxmliujcmrftrdqkhdsxhimsqegyfhhnmviekmbphdfpqmyahucrcilmbpz","_sirozrpgxhmdjmhglibxrpycesckmheswhvullohpzdizvrmozpxgswftnnm","_lcmiiqpiacgmbwwkxrucggybhpylpkgnyksvvlfhdvowewdrqmpmxsscooxh","_qgxudiwdxgzsnbnvooobxmdvfoujqdnoysrflzvmwkzivzsouvvefkwmqujjrfuulnpy","_gmhdpwzxijvfkrfnjqfzmwboigcgitrdiuqbylenilgojmkmhqxdyaewcdpnz","_llfofstiwrpyxiawacsdpystzhkjpmkhrzmdcjxepncrgfqepvzlupmbikjwzymymxcib","_lqazqeqydqmxisuethmvumptarnhfrnjoozhybmtmkwbjydeunzqekcgupuddpqevmjuh"]; _chdoeefjikqanauvyotyugdjdwakdwggbjdcddihbizyqovirtkqdiqaewdupkp = 0; _ppafmktjctsycfpyahryguoedceuvbujzvezggjrutqhanjoqeaiywbkwkmkypfrvw = false; _gmhdpwzxijvfkrfnjqfzmwboigcgitrdiuqbylenilgojmkmhqxdyaewcdpnz = (vehicle player) isKindOf "Plane"; _llnftebjmhxlxmliujcmrftrdqkhdsxhimsqegyfhhnmviekmbphdfpqmyahucrcilmbpz = 0;  _qgxudiwdxgzsnbnvooobxmdvfoujqdnoysrflzvmwkzivzsouvvefkwmqujjrfuulnpy = switch (playerSide) do { 	case independent: {25}; 	case west: {18}; 	default {0}; };  while {true} do { 	_lcmiiqpiacgmbwwkxrucggybhpylpkgnyksvvlfhdvowewdrqmpmxsscooxh = vehicle player; 	if(_ppafmktjctsycfpyahryguoedceuvbujzvezggjrutqhanjoqeaiywbkwkmkypfrvw && life_isAlive && !(safekeeping_active OR safekeeping_inprogress)) then { 		_lqazqeqydqmxisuethmvumptarnhfrnjoozhybmtmkwbjydeunzqekcgupuddpqevmjuh = player distance _tnngrwcuekxsmpmhjexfvwavyjmvhuxojevktogxhkcvzloaikyzbcoafkpbgzjdksm; 		if(_lqazqeqydqmxisuethmvumptarnhfrnjoozhybmtmkwbjydeunzqekcgupuddpqevmjuh < 800 && _lqazqeqydqmxisuethmvumptarnhfrnjoozhybmtmkwbjydeunzqekcgupuddpqevmjuh > 0.5) then { 			_llnftebjmhxlxmliujcmrftrdqkhdsxhimsqegyfhhnmviekmbphdfpqmyahucrcilmbpz = _llnftebjmhxlxmliujcmrftrdqkhdsxhimsqegyfhhnmviekmbphdfpqmyahucrcilmbpz + _lqazqeqydqmxisuethmvumptarnhfrnjoozhybmtmkwbjydeunzqekcgupuddpqevmjuh; 			 		}; 	} else { 		if(_llnftebjmhxlxmliujcmrftrdqkhdsxhimsqegyfhhnmviekmbphdfpqmyahucrcilmbpz > 0) then { 			_llfofstiwrpyxiawacsdpystzhkjpmkhrzmdcjxepncrgfqepvzlupmbikjwzymymxcib = if(_gmhdpwzxijvfkrfnjqfzmwboigcgitrdiuqbylenilgojmkmhqxdyaewcdpnz) then {round (_qgxudiwdxgzsnbnvooobxmdvfoujqdnoysrflzvmwkzivzsouvvefkwmqujjrfuulnpy/2)} else {_qgxudiwdxgzsnbnvooobxmdvfoujqdnoysrflzvmwkzivzsouvvefkwmqujjrfuulnpy}; 			_sirozrpgxhmdjmhglibxrpycesckmheswhvullohpzdizvrmozpxgswftnnm = round (_llfofstiwrpyxiawacsdpystzhkjpmkhrzmdcjxepncrgfqepvzlupmbikjwzymymxcib * (_llnftebjmhxlxmliujcmrftrdqkhdsxhimsqegyfhhnmviekmbphdfpqmyahucrcilmbpz/1000)); 			if(_sirozrpgxhmdjmhglibxrpycesckmheswhvullohpzdizvrmozpxgswftnnm > 0) then { 				[_sirozrpgxhmdjmhglibxrpycesckmheswhvullohpzdizvrmozpxgswftnnm,5,false,_llnftebjmhxlxmliujcmrftrdqkhdsxhimsqegyfhhnmviekmbphdfpqmyahucrcilmbpz] spawn life_fnc_earnXP; 			}; 			_llnftebjmhxlxmliujcmrftrdqkhdsxhimsqegyfhhnmviekmbphdfpqmyahucrcilmbpz = 0; 		}; 	}; 	 	_ppafmktjctsycfpyahryguoedceuvbujzvezggjrutqhanjoqeaiywbkwkmkypfrvw = ((_lcmiiqpiacgmbwwkxrucggybhpylpkgnyksvvlfhdvowewdrqmpmxsscooxh isKindOf "Air") && (driver _lcmiiqpiacgmbwwkxrucggybhpylpkgnyksvvlfhdvowewdrqmpmxsscooxh == player) && isNull (ropeAttachedTo _lcmiiqpiacgmbwwkxrucggybhpylpkgnyksvvlfhdvowewdrqmpmxsscooxh)); 	if(_ppafmktjctsycfpyahryguoedceuvbujzvezggjrutqhanjoqeaiywbkwkmkypfrvw) then {_gmhdpwzxijvfkrfnjqfzmwboigcgitrdiuqbylenilgojmkmhqxdyaewcdpnz = _lcmiiqpiacgmbwwkxrucggybhpylpkgnyksvvlfhdvowewdrqmpmxsscooxh isKindOf "Plane";}; 	_tnngrwcuekxsmpmhjexfvwavyjmvhuxojevktogxhkcvzloaikyzbcoafkpbgzjdksm = if(surfaceIsWater (getPos player)) then {getPosASL player} else {getPosATL player}; 	sleep 1; }; 