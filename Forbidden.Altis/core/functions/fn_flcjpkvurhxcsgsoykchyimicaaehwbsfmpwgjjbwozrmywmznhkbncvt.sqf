 private["_eyzddgymbcjtvssjbelndnxnedpooroiierhawkaiccjxnutqqpnhmbvxplk","_eaqjmomscbsqcgulyrspefyxaedxgxlbvgxqlmlybwaquyhwmjtlbmmyuinuuoi","_hwwrkpjttrmandxidfmywomrhjlwsrjhysghzdkxwtrnygeoeuyffawtiivnexhpuoup","_crdjbnvnxklveapacnsrurutkwpbjzzzvtwaljziwigzsaozrriqqkzvawzzyggabvwz"]; _eyzddgymbcjtvssjbelndnxnedpooroiierhawkaiccjxnutqqpnhmbvxplk = [_this,0,sideUnknown,[sideUnknown]] call BIS_fnc_param; _eaqjmomscbsqcgulyrspefyxaedxgxlbvgxqlmlybwaquyhwmjtlbmmyuinuuoi = [_this,1,(getPos player),[[]]] call BIS_fnc_param; _hwwrkpjttrmandxidfmywomrhjlwsrjhysghzdkxwtrnygeoeuyffawtiivnexhpuoup = [_this,2,30,[0]] call BIS_fnc_param; _crdjbnvnxklveapacnsrurutkwpbjzzzvtwaljziwigzsaozrriqqkzvawzzyggabvwz = false;   if(_eyzddgymbcjtvssjbelndnxnedpooroiierhawkaiccjxnutqqpnhmbvxplk == sideUnknown) exitWith {_crdjbnvnxklveapacnsrurutkwpbjzzzvtwaljziwigzsaozrriqqkzvawzzyggabvwz};  _crdjbnvnxklveapacnsrurutkwpbjzzzvtwaljziwigzsaozrriqqkzvawzzyggabvwz = {_x != player && side _x == _eyzddgymbcjtvssjbelndnxnedpooroiierhawkaiccjxnutqqpnhmbvxplk && alive _x && _eaqjmomscbsqcgulyrspefyxaedxgxlbvgxqlmlybwaquyhwmjtlbmmyuinuuoi distance _x < _hwwrkpjttrmandxidfmywomrhjlwsrjhysghzdkxwtrnygeoeuyffawtiivnexhpuoup} count playableUnits > 0; _crdjbnvnxklveapacnsrurutkwpbjzzzvtwaljziwigzsaozrriqqkzvawzzyggabvwz; 