     
#include <macro.h>
 if(FETCH_CONST(life_adminlevel) >= 5) then {  private ["_vnaznvczvqeajpjscpgmlzhgbppbmsdwvnuabkzqapempmhqjgieeqtvuqvmd","_woylhojypsblkrgdkecqauvukeosqxkcuytydewkzrtkjcfksuzeesxrohurldqdcx","_fkslucniunmibhnevajhxlwrhghrszhwgxnxdakkdorgjltyflhzorrwtnpohgsog","_xdqiqakejvxfnjuzrelrgyfbnuxkjstcjoryzupuaatvfiraogexuwtpiaoerhkqrgmmt"]; _vnaznvczvqeajpjscpgmlzhgbppbmsdwvnuabkzqapempmhqjgieeqtvuqvmd = _this select 0; _text = ctrlText _vnaznvczvqeajpjscpgmlzhgbppbmsdwvnuabkzqapempmhqjgieeqtvuqvmd; _LastExec = format ["%1",_text]; call compile _text; _DEdit = format ["M%1",_vnaznvczvqeajpjscpgmlzhgbppbmsdwvnuabkzqapempmhqjgieeqtvuqvmd]; player setVariable [_DEdit,_LastExec, false];  } else { hint "Only for developers!"; }; 