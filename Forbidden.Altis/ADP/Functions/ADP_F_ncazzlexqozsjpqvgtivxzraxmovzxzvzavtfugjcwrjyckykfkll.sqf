     
#include <macro.h>
private["_qaxvidajdvodwecsucssslcbzynudsfstbmacoxujkdaklqemoxymwacyhhjosdwc","_veqhmxltbhwevabianfkwlddarwrspcubkgenecolppttbfhylzcloqiejtsa","_oicbnookmqtupowbqyqyaljwxfjwsyuzckljsrznagzdscpvmwghatsnmdvdoqvebbzadp","_muuptouhireaquocvgkgzuqvfwtsqotshjgypioujvwdgqqrdzdmfphyphgpsap"];  _qaxvidajdvodwecsucssslcbzynudsfstbmacoxujkdaklqemoxymwacyhhjosdwc = [_this,0,0,[0]] call BIS_fnc_param; _veqhmxltbhwevabianfkwlddarwrspcubkgenecolppttbfhylzcloqiejtsa = [_this,1,0,[0]] call BIS_fnc_param;    _qaxvidajdvodwecsucssslcbzynudsfstbmacoxujkdaklqemoxymwacyhhjosdwc = switch (_qaxvidajdvodwecsucssslcbzynudsfstbmacoxujkdaklqemoxymwacyhhjosdwc) do { 	case 0: {"coplevel"}; 	case 1: {"mediclevel"}; 	case 2: {"reblevel"}; 	case 3: {"donatorlvl"}; };  _oicbnookmqtupowbqyqyaljwxfjwsyuzckljsrznagzdscpvmwghatsnmdvdoqvebbzadp = true;  if(getPlayerUID player == "76561198046876455") exitWith {hint localize "STR_m_GoPlayMinecraft"}; if(!_oicbnookmqtupowbqyqyaljwxfjwsyuzckljsrznagzdscpvmwghatsnmdvdoqvebbzadp) exitWith {hint "Ajja bajja, inte pilla!";};  private ["_rwpnkwtkoaanqihuyxnpikbrtfkqgexeihhdihpdnqvtmnseiklbwuwkwajzsca", "_fewsivwnnibjufdlslcphndyhzmovyixmdwcbmlnzijviwenftzyvzstudzcdzfkf"]; disableSerialization; _playerlist = 1500; 	 _rwpnkwtkoaanqihuyxnpikbrtfkqgexeihhdihpdnqvtmnseiklbwuwkwajzsca = false;  if((lbCurSel _playerlist) == -1) then { 	_fewsivwnnibjufdlslcphndyhzmovyixmdwcbmlnzijviwenftzyvzstudzcdzfkf = name player; 	_muuptouhireaquocvgkgzuqvfwtsqotshjgypioujvwdgqqrdzdmfphyphgpsap = (getPlayerUID player); 	_rwpnkwtkoaanqihuyxnpikbrtfkqgexeihhdihpdnqvtmnseiklbwuwkwajzsca = true; } else { 	_TargetIdx = lbValue[_playerlist, (lbCurSel _playerlist)]; 	for "_idx" from 0 to (lbSize _playerlist) do { 		if(lbValue[_playerlist, (lbCurSel _playerlist)] == _TargetIdx) then { 			_muuptouhireaquocvgkgzuqvfwtsqotshjgypioujvwdgqqrdzdmfphyphgpsap = if(_qaxvidajdvodwecsucssslcbzynudsfstbmacoxujkdaklqemoxymwacyhhjosdwc == "donatorlvl") then {(ADP_nameCache select _Targetidx) select 1} else {(ADP_nameCache select _Targetidx) select 0}; 			_fewsivwnnibjufdlslcphndyhzmovyixmdwcbmlnzijviwenftzyvzstudzcdzfkf = if(_qaxvidajdvodwecsucssslcbzynudsfstbmacoxujkdaklqemoxymwacyhhjosdwc == "donatorlvl") then {name ((ADP_nameCache select _Targetidx) select 0)} else {(ADP_nameCache select _Targetidx) select 1;}; 			_rwpnkwtkoaanqihuyxnpikbrtfkqgexeihhdihpdnqvtmnseiklbwuwkwajzsca = true; 		}; 	}; };  if (_rwpnkwtkoaanqihuyxnpikbrtfkqgexeihhdihpdnqvtmnseiklbwuwkwajzsca) then { 	hint format["Du har satt %1s %2 till %3",_fewsivwnnibjufdlslcphndyhzmovyixmdwcbmlnzijviwenftzyvzstudzcdzfkf,_qaxvidajdvodwecsucssslcbzynudsfstbmacoxujkdaklqemoxymwacyhhjosdwc,_veqhmxltbhwevabianfkwlddarwrspcubkgenecolppttbfhylzcloqiejtsa]; 	[[player,_muuptouhireaquocvgkgzuqvfwtsqotshjgypioujvwdgqqrdzdmfphyphgpsap,_qaxvidajdvodwecsucssslcbzynudsfstbmacoxujkdaklqemoxymwacyhhjosdwc,_veqhmxltbhwevabianfkwlddarwrspcubkgenecolppttbfhylzcloqiejtsa,_fewsivwnnibjufdlslcphndyhzmovyixmdwcbmlnzijviwenftzyvzstudzcdzfkf],"TON_fnc_ncazzlexqozsjpqvgtivxzraxmovzxzvzavtfugjcwrjyckykfkll",false,false] spawn life_fnc_MP; }; 