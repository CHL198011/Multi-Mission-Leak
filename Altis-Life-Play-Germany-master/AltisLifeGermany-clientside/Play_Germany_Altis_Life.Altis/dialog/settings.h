class SettingsMenu
{
	idd = 2900;
	name = "SettingsMenu";
	movingEnabled = 1;
	enableSimulation = 1;
	
	class controlsBackground
	{
		class pictureBackground: Life_RscPicture
		{
			idc = 2016;
			text = "icons\phone\padfone_1024_hz_settings.paa";
			x = 0.185469 * safezoneW + safezoneX;
			y = 0.165 * safezoneH + safezoneY;
			w = 0.629062 * safezoneW;
			h = 0.659 * safezoneH;
		};
		
		class PlayerTagsHeader : Life_RscText
		{
			idc = -1;
			text = "$STR_SM_PlayerTags";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			colorText[] = {1,1,1,1};
			
			x = 0.45875 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class SideChatHeader : PlayerTagsHeader
		{
			idc = -1;
			text = "$STR_SM_SC";
			shadow = 0;
			
			x = 0.45875 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class RevealNearestHeader : PlayerTagsHeader
		{
			idc = -1;
			text = "$STR_SM_RNO";
			
			x = 0.45875 * safezoneW + safezoneX;
			y = 0.566 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class SkipIntroHeader : PlayerTagsHeader
		{
			idc = -1;
			text = "$STR_SM_SI";
			
			x = 0.45875 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
	
	class controls
	{
		class VDonFoot : life_RscText
		{
			idc = -1;
			text = "$STR_SM_onFoot";
			colorText[] = {1,1,1,1};
			
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class VDinCar : life_RscText
		{
			idc = -1;
			text = "$STR_SM_inCar";
			colorText[] = {1,1,1,1};
			
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class VDinAir : life_RscText
		{
			idc = -1;
			text = "$STR_SM_inAir";
			colorText[] = {1,1,1,1};
			
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class VD_onfoot_slider : life_RscXSliderH 
		{
			idc = 2901;
			text = "";
			onSliderPosChanged = "[0,_this select 1] call life_fnc_s_onSliderChange;";
			tooltip = "$STR_SM_ToolTip1";
			
			x = 0.520625 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.111375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class VD_onfoot_value : Life_RscEdit
		{
			idc = 2902;
			text = "";
			onChar = "[_this select 0, _this select 1,'ground',false] call life_fnc_s_onChar;";
			onKeyUp = "[_this select 0, _this select 1,'ground',true] call life_fnc_s_onChar;";
			
			x = 0.639219 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.033 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class VD_car_slider : life_RscXSliderH 
		{
			idc = 2911;
			text = "";
			onSliderPosChanged = "[1,_this select 1] call life_fnc_s_onSliderChange;";
			tooltip = "$STR_SM_ToolTip2";
			
			x = 0.520625 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.111375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class VD_car_value : Life_RscEdit
		{
			idc = 2912;
			text = "";
			onChar = "[_this select 0, _this select 1,'vehicle',false] call life_fnc_s_onChar;";
			onKeyUp = "[_this select 0, _this select 1,'vehicle',true] call life_fnc_s_onChar;";
			
			
			x = 0.639219 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.033 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class VD_air_slider : life_RscXSliderH 
		{
			idc = 2921;
			text = "";
			onSliderPosChanged = "[2,_this select 1] call life_fnc_s_onSliderChange;";
			tooltip = "$STR_SM_ToolTip3";
			
			x = 0.520625 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.111375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class VD_air_value : Life_RscEdit
		{
			idc = 2922;
			text = "";
			onChar = "[_this select 0, _this select 1,'air',false] call life_fnc_s_onChar;";
			onKeyUp = "[_this select 0, _this select 1,'air',true] call life_fnc_s_onChar;";

			x = 0.639219 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.033 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class PlayerTagsONOFF : Life_Checkbox
		{
			//text = "ON";
			colorText[] = {1,1,1,1};
			tooltip = "$STR_GUI_PlayTags";
			idc = 2970;
			sizeEx = 0.04;
			onCheckedChanged = "['tags',_this select 1] call life_fnc_s_onCheckedChange;";
			
			x = 0.639219 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.012375 * safezoneW;
			h = 0.022 * safezoneH;
			
			color[] = { "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])" }; // Texture color
			colorFocused[] = { "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "1" }; // Focused texture color
			colorHover[] = { "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "1"}; // Mouse over texture color
	
		};
		
		class SideChatONOFF : PlayerTagsONOFF
		{
			idc = 2971;
			tooltip = "Regelt, ob der Sidechat aktiv ist";
			//onCheckedChanged = "['sidechat',_this select 1] call life_fnc_s_onCheckedChange;";

			x = 0.639219 * safezoneW + safezoneX;
			y = 0.522 * safezoneH + safezoneY;
			w = 0.012375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class RevealONOFF : PlayerTagsONOFF
		{
			tooltip = "$STR_GUI_PlayerReveal";
			onCheckedChanged = "['objects',_this select 1] call life_fnc_s_onCheckedChange;";
			idc = 2972;
			
			x = 0.639219 * safezoneW + safezoneX;
			y = 0.566 * safezoneH + safezoneY;
			w = 0.012375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class IntroONOFF : PlayerTagsONOFF
		{
			tooltip = "$STR_GUI_SkipIntro";
			onCheckedChanged = "['intro',_this select 1] call life_fnc_s_onCheckedChange;";
			idc = 2973;
			
			x = 0.639219 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.012375 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class ButtonClose: Life_RscButtonMenu
		{
			idc = -1;
			onButtonClick = "closeDialog 0;";
			text = " "; //--- ToDo: Localize;
			x = (38.53/52) * safezoneW + safezoneX;
			y = (6.5/30) * safezoneH + safezoneY;
			w = 0.048 * safezoneW;
			h = (17/30) * safezoneH;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {-1,-1,-1,-1};
			colorBackground2[] = {-1,-1,-1,-1};
			color[] = {-1,-1,-1,-1};
			colorFocused[] = {-1,-1,-1,-1};
			color2[] = {-1,-1,-1,-1};
			colorText[] = {-1,-1,-1,-1};
			colorDisabled[] = {-1,-1,-1,-1};
			tooltip = "Zurück";
		};
	};
};