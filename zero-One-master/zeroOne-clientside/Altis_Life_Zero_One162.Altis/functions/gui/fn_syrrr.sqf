disableSerialization;private['_agYK','_rqW','_TyM','_QQl','_cYUl','_Rczn','_hNkI','_zBAU','_EyO','_NCg','_euj','_VFl','_Pgg','_zza','_wYJR'];_zBAU = param [0, "", [""], [2,3]];_EyO = param [1, "", [""]];_NCg = param [2, "", [""]];_euj = param [3, "", [""]];_VFl = param [4, "", [""]];_Pgg = param [5, "", [""]];_zza = param [6, "", [""]];522 cutRsc ["gOjDgm","PLAIN"];_wYJR = uiNamespace getVariable "gOjDgm";_hNkI = _wYJR displayCtrl 5101;_agYK = _wYJR displayCtrl 5102;_rqW = _wYJR displayCtrl 5103;_TyM = _wYJR displayCtrl 5104;_QQl = _wYJR displayCtrl 5105;_cYUl = _wYJR displayCtrl 5106;_Rczn = _wYJR displayCtrl 5107;switch (_zza) do { case "Männlich" : {_hNkI ctrlsettext "Resources\Textures\Images\pass\passm.jpg";}; case "Weiblich" : {_hNkI ctrlsettext "Resources\Textures\Images\pass\passw.jpg";}; case "Männlich_Polizei" : {_hNkI ctrlsettext "Resources\Textures\Images\pass\polizeim.jpg";}; case "Weiblich_Polizei" : {_hNkI ctrlsettext "Resources\Textures\Images\pass\polizeiw.jpg";};};_agYK ctrlSetStructuredText parseText format["<t size='0.75' color='#DC143C'>%1</t>",_zBAU];_rqW ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>%1</t>",_EyO];_TyM ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>%1</t>",_NCg];_QQl ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>Stunden: %1</t>",_euj];_cYUl ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>%1</t>",_VFl];_Rczn ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>Geburt: %1</t>",_Pgg];uiSleep 20;522 cutText ["","PLAIN"];