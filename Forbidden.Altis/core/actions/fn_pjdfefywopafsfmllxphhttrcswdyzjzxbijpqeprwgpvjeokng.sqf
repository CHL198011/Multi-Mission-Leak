 private["_pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva","_tlzduirpjnbpvvfbdujfgpsqaquhttqhzbxuhqkxmirgyharilpqjkiqgnxmpag"]; _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; _tlzduirpjnbpvvfbdujfgpsqaquhttqhzbxuhqkxmirgyharilpqjkiqgnxmpag = [_this,1,false,[false]] call BIS_fnc_param; if(isNull _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva OR !((_pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva getVariable["restrained",FALSE]) OR (_pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva getVariable["adminRestrained",FALSE]))) exitWith {};   hint format["Du har släppt på %1s restrain",name _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva]; if(_tlzduirpjnbpvvfbdujfgpsqaquhttqhzbxuhqkxmirgyharilpqjkiqgnxmpag) then { 	[4,(getPlayerUID player),(getPlayerUID _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva),"Admin unrestrain","",profileName,name _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva,str (getPos _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva)] remoteExec ["TON_fnc_cqbslmzhelexdchvshruhtirwniyhyywbybxhiltsdxdujmnhjuhnal",2]; };  _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva setVariable["adminRestrained",FALSE,TRUE]; _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva setVariable["restrained",FALSE,TRUE]; _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva setVariable["Escorting",FALSE,TRUE]; _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva setVariable["transporting",FALSE,TRUE]; detach _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva;  if(!_tlzduirpjnbpvvfbdujfgpsqaquhttqhzbxuhqkxmirgyharilpqjkiqgnxmpag) then { 	[[0,"STR_NOTF_Unrestrain",true,[_pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva getVariable["realname",name _pqlifghhmqyutkcpmxdtpxraojgrzodonjttcencnhmkszptmutviznpwkhjpdfshxvva], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP; }; 