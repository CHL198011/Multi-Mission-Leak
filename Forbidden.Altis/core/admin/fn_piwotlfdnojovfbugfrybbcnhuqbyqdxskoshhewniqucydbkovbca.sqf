
#include <macro.h>
 private["_gizpjazzqtvwafkrmvdtnmumkxclvydkxiccsoimawxexsmjzyjglgjvjsdkwwnuzyxmi","_faixdmnwewbqrixlavbdedybgqyzurrwkmmtnzrrasgwvfiprddzuwqfrmgcdkfyr","_gtnuutzbjktdiiblvdehukcewpqbbbgktmkpgmutqbrtpbsmrmitasblwhbjohncwi","_fcvenkhabvtnukzancbjadxfmxqsqvpksutblrtcdtnnttvazkgmhhhpwnelgq","_cqxzbhuxhsjcvvdfovepxqymdbbheujizkfyzlhhguweqmexsgkgqchfvvbzdaerkhqa","_muvmrcyvmhyvjftujydretcyeolpetorapewejznzavpkrotusoztcxyuboq","_emwapuoewvvbqmekuctzmzlsyficynhvijxgsxksrluwnkkbsnhkkkdqgqzu","_njlrpmeoyduisvxmvvgjftojrjarcpqodnhtyqhudtnpskgyrurourxizusxu","_lpjfdbdhwqttxodueuzbpyevvyicpwyielhlhixrceorovpsgdliidgpckrk"]; disableSerialization; if(!isNil {admin_query_ip}) exitWith {hint localize "STR_ANOTF_Query_2"}; _gizpjazzqtvwafkrmvdtnmumkxclvydkxiccsoimawxexsmjzyjglgjvjsdkwwnuzyxmi = CONTROL(2900,2903); _faixdmnwewbqrixlavbdedybgqyzurrwkmmtnzrrasgwvfiprddzuwqfrmgcdkfyr = lbData[2902,lbCurSel (2902)]; _faixdmnwewbqrixlavbdedybgqyzurrwkmmtnzrrasgwvfiprddzuwqfrmgcdkfyr = call compile format["%1", _faixdmnwewbqrixlavbdedybgqyzurrwkmmtnzrrasgwvfiprddzuwqfrmgcdkfyr];  if(isNil "_faixdmnwewbqrixlavbdedybgqyzurrwkmmtnzrrasgwvfiprddzuwqfrmgcdkfyr") exitWith {_gizpjazzqtvwafkrmvdtnmumkxclvydkxiccsoimawxexsmjzyjglgjvjsdkwwnuzyxmi ctrlSetText localize "STR_ANOTF_QueryFail";}; if(isNull _faixdmnwewbqrixlavbdedybgqyzurrwkmmtnzrrasgwvfiprddzuwqfrmgcdkfyr) exitWith {_gizpjazzqtvwafkrmvdtnmumkxclvydkxiccsoimawxexsmjzyjglgjvjsdkwwnuzyxmi ctrlSetText localize "STR_ANOTF_QueryFail";}; [[player],"TON_fnc_player_query",_faixdmnwewbqrixlavbdedybgqyzurrwkmmtnzrrasgwvfiprddzuwqfrmgcdkfyr,false] call life_fnc_MP; _gizpjazzqtvwafkrmvdtnmumkxclvydkxiccsoimawxexsmjzyjglgjvjsdkwwnuzyxmi ctrlSetText localize "STR_ANOTF_Query"; 