 private ["_number","_zxzyxynhelpwcltlplcyfmxwnbsmircolpcryosynxlxvtkdsjidqxonronqmnqkuxk","_ajzdsugfsgoewxskroysxzgpnrdjvgckeannrnmqgiuhbznociafuqbexojfbuwq","_hminhcaaufrixmqqxlgtktnzmjxywagmuvknpslqydzzloewmxggdpcavtqden","_zxzyxynhelpwcltlplcyfmxwnbsmircolpcryosynxlxvtkdsjidqxonronqmnqkuxkBase","_ebqqcoywnmemepyweyxcnuhfijesamjjovvzrmsoidcqfcxkudpsywclsqecaqqcfhyc"];  _number = [_this,0,0,[0]] call bis_fnc_param; _zxzyxynhelpwcltlplcyfmxwnbsmircolpcryosynxlxvtkdsjidqxonronqmnqkuxk = [_this,1,3,[0]] call bis_fnc_param;  _digits = _number call bis_fnc_numberDigits; _hminhcaaufrixmqqxlgtktnzmjxywagmuvknpslqydzzloewmxggdpcavtqden = count _digits - 1;  _zxzyxynhelpwcltlplcyfmxwnbsmircolpcryosynxlxvtkdsjidqxonronqmnqkuxkBase = _hminhcaaufrixmqqxlgtktnzmjxywagmuvknpslqydzzloewmxggdpcavtqden % _zxzyxynhelpwcltlplcyfmxwnbsmircolpcryosynxlxvtkdsjidqxonronqmnqkuxk; _ebqqcoywnmemepyweyxcnuhfijesamjjovvzrmsoidcqfcxkudpsywclsqecaqqcfhyc = ""; { 	_ebqqcoywnmemepyweyxcnuhfijesamjjovvzrmsoidcqfcxkudpsywclsqecaqqcfhyc = _ebqqcoywnmemepyweyxcnuhfijesamjjovvzrmsoidcqfcxkudpsywclsqecaqqcfhyc + str _x; 	if ((_foreachindex - _zxzyxynhelpwcltlplcyfmxwnbsmircolpcryosynxlxvtkdsjidqxonronqmnqkuxkBase) % (_zxzyxynhelpwcltlplcyfmxwnbsmircolpcryosynxlxvtkdsjidqxonronqmnqkuxk) == 0 && _foreachindex != _hminhcaaufrixmqqxlgtktnzmjxywagmuvknpslqydzzloewmxggdpcavtqden) then {_ebqqcoywnmemepyweyxcnuhfijesamjjovvzrmsoidcqfcxkudpsywclsqecaqqcfhyc = _ebqqcoywnmemepyweyxcnuhfijesamjjovvzrmsoidcqfcxkudpsywclsqecaqqcfhyc + ",";}; } foreach _digits; _ebqqcoywnmemepyweyxcnuhfijesamjjovvzrmsoidcqfcxkudpsywclsqecaqqcfhyc 