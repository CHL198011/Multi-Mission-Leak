private ["_answer","_zgohqrpmumvgpnahsmxlfktlxxnenscgaifhznppknjddmtzbqbfmxtnwwivw"];  _zgohqrpmumvgpnahsmxlfktlxxnenscgaifhznppknjddmtzbqbfmxtnwwivw = [_this,0,"",[""]] call BIS_fnc_param;  _answer = if(_zgohqrpmumvgpnahsmxlfktlxxnenscgaifhznppknjddmtzbqbfmxtnwwivw == "") then {(ctrlText 9922)} else {_zgohqrpmumvgpnahsmxlfktlxxnenscgaifhznppknjddmtzbqbfmxtnwwivw}; if(typename _answer != typename life_adminJailAnswer) exitWith {systemChat "DaDEEERP1231";}; if(isNil "adminJail_wrongCounter") then {adminJail_wrongCounter = 0;}; if(isNil "adminAnswer_mutex") then {adminAnswer_mutex = false;}; if(adminAnswer_mutex) exitWith {systemChat "err2433";}; adminAnswer_mutex = true;    if(_answer != life_adminJailAnswer && _answer != "surrender") then { 	adminJail_wrongCounter = adminJail_wrongCounter + 1; 	AdJailQuestionTime = time; 	player say3d "shame"; 	if(adminJail_wrongCounter <= 5 && !doingWeaponTest) then { 		if(adminQuestionType == 0) then {[0,format[localize "STR_m_WrongAnswer",profileName,adminJail_term1,adminJail_term2,_answer]] remoteExec ["life_fnc_broadcast",-2];}; 		if(adminQuestionType == 1) then {[0,format[localize "STR_m_WrongAnswerRules",profileName,localize format["STR_m_AdminJailQuestion%1",adminJail_questionIndex]]] remoteExec ["life_fnc_broadcast",-2];}; 	}; 	[[0,1],format[localize "STR_m_YouWereWrong",_answer,30]] spawn life_fnc_broadcast; 	adminJail_answerBonusTime = adminJail_answerBonusTime + 30; } else { 	AdJailQuestionTime = (time + adminJailQuestionDelay) + adminJailTimeToAnswer; 	 	closeDialog 0; 	 	if(_answer == "surrender") then { 		adminJail_answerBonusTime = adminJail_answerBonusTime + 60; 		[[0,1],(localize "STR_m_YouSurrenderedQue")] spawn life_fnc_broadcast; 	} else { 		[[0,1],(localize "STR_m_YouWereRight")] spawn life_fnc_broadcast; 	}; 	 	AdJailCorrectTime = time; 	adminQuestionType = nil; 	life_adminJailAnswer = nil; 	adJailLastMove = time; 	adminJail_questionIndex = nil; 	 	if(life_adminJail != 0) then {[] spawn life_fnc_omyqcvfeiibiprjmjblflpmqtetbpjaljlkwsmavaxlelwvviqearfevtwg;}; };  adminAnswer_mutex = false; 