
#include <macro.h>
 private["_etgqzjlpipekiyhybrhdpsyyqtsgbxqpnptpiukoznjyjerlctgxcaqebxgictv","_aheeptbiblmiqjznrhmxcskjqbxgqzhbpscreronncvvhntneelkrrvzvjhvft","_qhagilnhpilgfmtvibhrqnxbpqxlscsdanygopxwtnpmdstdmvhxaskzgfudokjthyhgq"]; _etgqzjlpipekiyhybrhdpsyyqtsgbxqpnptpiukoznjyjerlctgxcaqebxgictv = (_this select 0) getVariable["sellers",[]]; if(EQUAL(count _etgqzjlpipekiyhybrhdpsyyqtsgbxqpnptpiukoznjyjerlctgxcaqebxgictv,0)) exitWith {hint localize "STR_Cop_DealerQuestion"};  life_action_inUse = true;  _aheeptbiblmiqjznrhmxcskjqbxgqzhbpscreronncvvhntneelkrrvzvjhvft = (localize "STR_Cop_DealerMSG") + "\n\n"; { 	if(SEL(_x,2) > 150000) then { 		_val = round((SEL(_x,2)) / 16); 	}; 	_qhagilnhpilgfmtvibhrqnxbpqxlscsdanygopxwtnpmdstdmvhxaskzgfudokjthyhgq = if(getPlayerUID SEL(_x,3) == SEL(_x,0)) then {SEL(_x,3)} else {objNull}; 	[SEL(_x,0),SEL(_x,1),"483",_qhagilnhpilgfmtvibhrqnxbpqxlscsdanygopxwtnpmdstdmvhxaskzgfudokjthyhgq] spawn life_fnc_emtvegxsjbicbxdyyizalaeqhulvbokspdnvrxanbasgedbaphvjbq; 	_aheeptbiblmiqjznrhmxcskjqbxgqzhbpscreronncvvhntneelkrrvzvjhvft = _aheeptbiblmiqjznrhmxcskjqbxgqzhbpscreronncvvhntneelkrrvzvjhvft + format["%1\n",SEL(_x,1)] } foreach _etgqzjlpipekiyhybrhdpsyyqtsgbxqpnptpiukoznjyjerlctgxcaqebxgictv;  hint _aheeptbiblmiqjznrhmxcskjqbxgqzhbpscreronncvvhntneelkrrvzvjhvft; SEL(_this,0) SVAR ["sellers",[],true]; life_action_inUse = false;    