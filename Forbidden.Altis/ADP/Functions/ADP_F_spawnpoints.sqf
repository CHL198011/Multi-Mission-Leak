
#include <macro.h>
 
#define Btn1 37450

#define Btn2 37451

#define Btn3 37452

#define Btn4 37453

#define Btn5 37454

#define Btn6 37455

#define Btn7 37456

#define Btn8 37459

#define Btn9 37460

#define Title 37401
private["_fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag","_bfsjhmlwgfoskfugolxpomaptxuwqumqxpcozhpjxoahsshrfmcpjcztjmmskppag","_ckwuieaygkkhnipolydipblihirabmezbbuimckjysurcvrjjbsjgtwpjxwip","_wiqfmfnxslkpwbsrsadcuykuvigrphqlkleseaudutymxkzfcanfvnauhfqdduhtygrvx","_scrtdpuuibidsbnzrndkdvjsspezuzbgyvzwgadblrsmcjdqgccfqczpncdzmtz","_rglmfltjgpzvgswlybjtwcckqqyvdrgedljwzfqlzaefgsiiavowxzbhxdnyekjin","_jzjthvoyscyhruhvpsgrwyyzfhawrlkiegmqieozcgangqhmbqvhxslonknzlxhqjpvfs","_ipweqhbkjiyavjnaiysqfbwrpqnzwjpfygujftsvlaybohbphuqpltglceoumbuxlmuqm","_pnovezssuqfcwqciovsrpvfrdyncqbzkmwgwwtovburvavstsitfrddinyqqaxzyucfv","_kwmzvtmnymbjwvsuolthxvabpckkreagmpwimrrzhujgjdkymkdmjqnyzfufqrkvsdsw","_xmkvucdnxyrgkoesqblckkoubbznvjojmgackhmfrmzlobfvdassudgoqnuoa9","_pcyyfrwlgkaeflmehwrphsqgoqsviodhazipdqvtvdiatzygtkmuitcmdfcrweczyb"];  createDialog "safeSpawn_Menu";  disableSerialization;  _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag = findDisplay 37400; _ckwuieaygkkhnipolydipblihirabmezbbuimckjysurcvrjjbsjgtwpjxwip = _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag displayCtrl Btn1; _wiqfmfnxslkpwbsrsadcuykuvigrphqlkleseaudutymxkzfcanfvnauhfqdduhtygrvx = _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag displayCtrl Btn2; _scrtdpuuibidsbnzrndkdvjsspezuzbgyvzwgadblrsmcjdqgccfqczpncdzmtz = _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag displayCtrl Btn3; _rglmfltjgpzvgswlybjtwcckqqyvdrgedljwzfqlzaefgsiiavowxzbhxdnyekjin = _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag displayCtrl Btn4; _jzjthvoyscyhruhvpsgrwyyzfhawrlkiegmqieozcgangqhmbqvhxslonknzlxhqjpvfs = _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag displayCtrl Btn5; _ipweqhbkjiyavjnaiysqfbwrpqnzwjpfygujftsvlaybohbphuqpltglceoumbuxlmuqm = _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag displayCtrl Btn6; _pnovezssuqfcwqciovsrpvfrdyncqbzkmwgwwtovburvavstsitfrddinyqqaxzyucfv = _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag displayCtrl Btn7; _kwmzvtmnymbjwvsuolthxvabpckkreagmpwimrrzhujgjdkymkdmjqnyzfufqrkvsdsw = _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag displayCtrl Btn8; _xmkvucdnxyrgkoesqblckkoubbznvjojmgackhmfrmzlobfvdassudgoqnuoa9 = _fwcfhmdphppregrknyhokisxwteyuddtmkkgodwgvsednzcucuytgfbowklnmmaag displayCtrl Btn9;   if (count (var_base getVariable ["generalSafe_spawn",[]]) > 0 OR count (var_base getVariable ["blueSafe_spawn",[]]) > 0 OR count (var_base getVariable ["redSafe_spawn",[]]) > 0 OR count (var_base getVariable ["greenSafe_spawn",[]]) > 0) then { 	_jzjthvoyscyhruhvpsgrwyyzfhawrlkiegmqieozcgangqhmbqvhxslonknzlxhqjpvfs ctrlEnable false; };   if (count (var_base getVariable ["areaSafe_spawn",[]]) > 0) then { 	_ckwuieaygkkhnipolydipblihirabmezbbuimckjysurcvrjjbsjgtwpjxwip ctrlEnable false; 	_wiqfmfnxslkpwbsrsadcuykuvigrphqlkleseaudutymxkzfcanfvnauhfqdduhtygrvx ctrlEnable false; 	_scrtdpuuibidsbnzrndkdvjsspezuzbgyvzwgadblrsmcjdqgccfqczpncdzmtz ctrlEnable false; 	_rglmfltjgpzvgswlybjtwcckqqyvdrgedljwzfqlzaefgsiiavowxzbhxdnyekjin ctrlEnable false; };    _ckwuieaygkkhnipolydipblihirabmezbbuimckjysurcvrjjbsjgtwpjxwip ctrlSetText "Generell spawn"; _ckwuieaygkkhnipolydipblihirabmezbbuimckjysurcvrjjbsjgtwpjxwip buttonSetAction "[0] spawn ADP_fnc_setSpawn;"; _ckwuieaygkkhnipolydipblihirabmezbbuimckjysurcvrjjbsjgtwpjxwip ctrlSetTooltip "Sätt spawn för alla spelare med safekeeping som inte är med i något lag";  _wiqfmfnxslkpwbsrsadcuykuvigrphqlkleseaudutymxkzfcanfvnauhfqdduhtygrvx ctrlSetText "Blå spawn"; _wiqfmfnxslkpwbsrsadcuykuvigrphqlkleseaudutymxkzfcanfvnauhfqdduhtygrvx buttonSetAction "[1] spawn ADP_fnc_setSpawn;"; _wiqfmfnxslkpwbsrsadcuykuvigrphqlkleseaudutymxkzfcanfvnauhfqdduhtygrvx ctrlSetTooltip "Sätt spawn för alla spelare i det blåa laget";  _scrtdpuuibidsbnzrndkdvjsspezuzbgyvzwgadblrsmcjdqgccfqczpncdzmtz ctrlSetText "Röd spawn"; _scrtdpuuibidsbnzrndkdvjsspezuzbgyvzwgadblrsmcjdqgccfqczpncdzmtz buttonSetAction "[2] spawn ADP_fnc_setSpawn;"; _scrtdpuuibidsbnzrndkdvjsspezuzbgyvzwgadblrsmcjdqgccfqczpncdzmtz ctrlSetTooltip "Sätt spawn för alla spelare i det röda laget";  _rglmfltjgpzvgswlybjtwcckqqyvdrgedljwzfqlzaefgsiiavowxzbhxdnyekjin ctrlSetText "Grön spawn"; _rglmfltjgpzvgswlybjtwcckqqyvdrgedljwzfqlzaefgsiiavowxzbhxdnyekjin buttonSetAction "[3] spawn ADP_fnc_setSpawn;"; _rglmfltjgpzvgswlybjtwcckqqyvdrgedljwzfqlzaefgsiiavowxzbhxdnyekjin ctrlSetTooltip "Sätt spawn för alla spelare i det gröna laget";  _jzjthvoyscyhruhvpsgrwyyzfhawrlkiegmqieozcgangqhmbqvhxslonknzlxhqjpvfs ctrlSetText "Area spawn"; _jzjthvoyscyhruhvpsgrwyyzfhawrlkiegmqieozcgangqhmbqvhxslonknzlxhqjpvfs buttonSetAction "[4] spawn ADP_fnc_setSpawn;"; _jzjthvoyscyhruhvpsgrwyyzfhawrlkiegmqieozcgangqhmbqvhxslonknzlxhqjpvfs ctrlSetTooltip "Sätt spawn för ALLA spelare med safekeeping aktiverat till ett område centrerat på dig själv.";  _ipweqhbkjiyavjnaiysqfbwrpqnzwjpfygujftsvlaybohbphuqpltglceoumbuxlmuqm ctrlSetText "Reset spawns"; _ipweqhbkjiyavjnaiysqfbwrpqnzwjpfygujftsvlaybohbphuqpltglceoumbuxlmuqm buttonSetAction "[5] spawn ADP_fnc_setSpawn;"; _ipweqhbkjiyavjnaiysqfbwrpqnzwjpfygujftsvlaybohbphuqpltglceoumbuxlmuqm ctrlSetTooltip "Resetta alla spawnpunkter, om spawnpunkterna inte är definerade får spelare själva välja var de vill spawna.";  _pnovezssuqfcwqciovsrpvfrdyncqbzkmwgwwtovburvavstsitfrddinyqqaxzyucfv ctrlShow false; _kwmzvtmnymbjwvsuolthxvabpckkreagmpwimrrzhujgjdkymkdmjqnyzfufqrkvsdsw ctrlShow false; _xmkvucdnxyrgkoesqblckkoubbznvjojmgackhmfrmzlobfvdassudgoqnuoa9 ctrlShow false; 