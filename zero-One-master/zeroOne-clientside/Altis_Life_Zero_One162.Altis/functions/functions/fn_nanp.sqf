private['_xXG','_QPcU','_llK','_BjjM','_Njo','_CxoI'];_xXG = param[0,0,[0]];_QPcU = param[1,3,[0]];_llK = _xXG call bis_fnc_numberDigits;_BjjM = count _llK - 1;_Njo = _BjjM % _QPcU;_CxoI = "";{ _CxoI = _CxoI + str _x; if ((_foreachindex - _Njo) % (_QPcU) == 0 && _foreachindex != _BjjM) then {_CxoI = _CxoI + ",";};} foreach _llK;_CxoI