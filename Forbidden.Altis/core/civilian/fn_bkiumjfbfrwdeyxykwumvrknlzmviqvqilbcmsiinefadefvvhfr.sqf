
#include <macro.h>
 
#define Btn1 37450

#define Btn2 37451

#define Btn3 37452

#define Btn4 37453

#define Btn5 37454

#define Btn6 37455

#define Btn7 37456

#define Btn8 37457

#define Btn9 37458

#define Btn10 37459

#define Title 37401
 private["_cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo","_curTarget","_tcxukxugqznwukmxuxkrfhdynepiaxozkyvwrgyerltwzszvtgojcxkxrrptlldxihp","_tngjcpestbovaxdkspuwwvyqmnufvtcdrvbcjfhlwdjwdfzofpcidmdaujtdfqd","_tqrvgzpcsktebvnlmqvwyzwgzyqbqfrfvtmlrbzgkgcqgukidhcwdqcktaqluvql","_npiditzdzylkwueeankdttnvrjvbltlpvebyneqhasfdrqpywunxdamakkrrsm","_wxtefidhayyonfdqcboyqecyzapznthgziducwmjvknkmtldgmostwbkowpmnhfawtb","_jdezfvjqgqettskacwavnicbvjyuxvthqlluhkgpfiizbntosckvkiryvvimidinpsttj","_qqeurriinicxyuurpudsjdbjnllzovmtxjhpzctxdztlnxmnukfvowivsqguomo","_iedckzeuvkdypwhfsljeshdpomdwnrgylvoxwggloateoaghlzhhsitxdliqm","_lcujrddbweosxiuumafxcjmttqnbhtvuxgaoaufadzsdhumbtlmqomrmosfgeqhecprqr9","_tcxukxugqznwukmxuxkrfhdynepiaxozkyvwrgyerltwzszvtgojcxkxrrptlldxihp0"]; if(!dialog) then { 	createDialog "pInteraction_Menu"; }; disableSerialization; _curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; if(isNull _curTarget) exitWith {closeDialog 0;};   if(_curTarget isKindOf "House_F") exitWith {}; 		 if(!isPlayer _curTarget) exitWith {closeDialog 0;}; _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo = findDisplay 37400; _tcxukxugqznwukmxuxkrfhdynepiaxozkyvwrgyerltwzszvtgojcxkxrrptlldxihp = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn1; _tngjcpestbovaxdkspuwwvyqmnufvtcdrvbcjfhlwdjwdfzofpcidmdaujtdfqd = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn2; _tqrvgzpcsktebvnlmqvwyzwgzyqbqfrfvtmlrbzgkgcqgukidhcwdqcktaqluvql = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn3; _npiditzdzylkwueeankdttnvrjvbltlpvebyneqhasfdrqpywunxdamakkrrsm = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn4; _wxtefidhayyonfdqcboyqecyzapznthgziducwmjvknkmtldgmostwbkowpmnhfawtb = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn5; _jdezfvjqgqettskacwavnicbvjyuxvthqlluhkgpfiizbntosckvkiryvvimidinpsttj = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn6; _qqeurriinicxyuurpudsjdbjnllzovmtxjhpzctxdztlnxmnukfvowivsqguomo = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn7; _iedckzeuvkdypwhfsljeshdpomdwnrgylvoxwggloateoaghlzhhsitxdliqm = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn8; _lcujrddbweosxiuumafxcjmttqnbhtvuxgaoaufadzsdhumbtlmqomrmosfgeqhecprqr9 = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn9; _tcxukxugqznwukmxuxkrfhdynepiaxozkyvwrgyerltwzszvtgojcxkxrrptlldxihp0 = _cktsdegdqlhquzaovslqjwbabwkdqxfdnzarsyhvxmupmvatwwhctcmicljsfxo displayCtrl Btn10; life_pInact_curTarget = _curTarget;   _tcxukxugqznwukmxuxkrfhdynepiaxozkyvwrgyerltwzszvtgojcxkxrrptlldxihp ctrlSetText "Befria"; _tcxukxugqznwukmxuxkrfhdynepiaxozkyvwrgyerltwzszvtgojcxkxrrptlldxihp buttonSetAction "[life_pInact_curTarget] call life_fnc_yhlqltekfqwdghacoxkrjeujhatkbyrjeiiadrnzgqwwfvzybisagqzsbsyj; closeDialog 0;";     _tngjcpestbovaxdkspuwwvyqmnufvtcdrvbcjfhlwdjwdfzofpcidmdaujtdfqd ctrlShow false;     _tqrvgzpcsktebvnlmqvwyzwgzyqbqfrfvtmlrbzgkgcqgukidhcwdqcktaqluvql ctrlShow false;   if((_curTarget getVariable["Escorting",false])) then { 	_npiditzdzylkwueeankdttnvrjvbltlpvebyneqhasfdrqpywunxdamakkrrsm ctrlSetText localize "STR_pInAct_StopEscort"; 	_npiditzdzylkwueeankdttnvrjvbltlpvebyneqhasfdrqpywunxdamakkrrsm buttonSetAction "[life_pInact_curTarget] call life_fnc_xbkupplsyyyzkiobxnowmnjqvewjjmeodpjtegfphsobvdbbtsuxe; [life_pInact_curTarget] call life_fnc_bkiumjfbfrwdeyxykwumvrknlzmviqvqilbcmsiinefadefvvhfr;"; } else { 	_npiditzdzylkwueeankdttnvrjvbltlpvebyneqhasfdrqpywunxdamakkrrsm ctrlSetText localize "STR_pInAct_Escort"; 	_npiditzdzylkwueeankdttnvrjvbltlpvebyneqhasfdrqpywunxdamakkrrsm buttonSetAction "[life_pInact_curTarget] call life_fnc_kytrzvqysghrfmcqechransjxknelsfdcfiinjmdwnwhvktmvuut; closeDialog 0;"; };   _wxtefidhayyonfdqcboyqecyzapznthgziducwmjvknkmtldgmostwbkowpmnhfawtb ctrlShow false;        _qqeurriinicxyuurpudsjdbjnllzovmtxjhpzctxdztlnxmnukfvowivsqguomo ctrlSetText localize "STR_pInAct_PutInCar"; _qqeurriinicxyuurpudsjdbjnllzovmtxjhpzctxdztlnxmnukfvowivsqguomo buttonSetAction "[life_pInact_curTarget] call life_fnc_lucxucehoehhfijoxpbjlhophvyxzfurcfrzldfwlpmrkhpwqyen;";  _jdezfvjqgqettskacwavnicbvjyuxvthqlluhkgpfiizbntosckvkiryvvimidinpsttj ctrlShow false; _lcujrddbweosxiuumafxcjmttqnbhtvuxgaoaufadzsdhumbtlmqomrmosfgeqhecprqr9 ctrlShow false; _tcxukxugqznwukmxuxkrfhdynepiaxozkyvwrgyerltwzszvtgojcxkxrrptlldxihp0 ctrlShow false; 		 