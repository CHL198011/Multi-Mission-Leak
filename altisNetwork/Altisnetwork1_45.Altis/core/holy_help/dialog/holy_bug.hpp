class holy_bug
{
    idd = 1349;
	name = "holy_bug";
    movingEnable = false;
    enableSimulation = true; //Default: true
	onLoad = "[0] spawn life_fnc_holy_bug"; //[0] execVM 'holy_bug.sqf';
	class controlsBackground
	{
		class TITEL: Life_RscStructuredText
		{
			idc = -1;
			text = ""; 
			x = 0.3875 * safezoneW + safezoneX;
			y = 0.272 * safezoneH + safezoneY;
			w = 0.225 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
		};
		class TEXTBOX: Life_RscText
		{
			idc = -1;
			x = 0.3875 * safezoneW + safezoneX;
			y = 0.3 * safezoneH + safezoneY;
			w = 0.225 * safezoneW;
			h = 0.46 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
			colorActive[] = {0,0,0,0.7};
		};
		class hinweis1: Life_RscStructuredText
		{
			idc = 1354;
			text = "* Fields marked with this symbol"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.688 * safezoneH + safezoneY;
			w = 0.22 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,1};
		};
		class hinweis2: Life_RscStructuredText
		{
			idc = 1355;
			text = "have to be filled out!"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.716 * safezoneH + safezoneY;
			w = 0.22 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,1};
		};
	};
	class controls //Buttonsshit
	{
		class TITEL: Life_RscStructuredText
		{
			idc = -1;
			text = "Bugtracker"; 
			x = 0.3875 * safezoneW + safezoneX;
			y = 0.272 * safezoneH + safezoneY;
			w = 0.225 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,1};
		};
		class RscText_1001: Life_RscText
		{
			idc = -1;
			text = "Game Name*:"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class RscText_1002: Life_RscText
		{
			idc = -1;
			text = "PlayerUID*:"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.344 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class PLAYERID: Life_RscStructuredText
		{
			idc = 1350;
			text = "000000000000000000000000"; 
			x = 0.4725 * safezoneW + safezoneX;
			y = 0.344 * safezoneH + safezoneY;
			w = 0.19179 * safezoneW;
			h = 0.0198 * safezoneH;
			colorText[] = {1,1,1,1};
			tooltip = "Steam64ID"; 
		};
		class NAME: Life_RscStructuredText
		{
			idc = 1351;
			text = "Jeff"; 
			x = 0.4725 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.19179 * safezoneW;
			h = 0.0198 * safezoneH;
			colorText[] = {1,1,1,1};
			tooltip = "Name"; 
		};
		class KURZT: Life_RscText
		{
			idc = -1;
			text = "Short version*:"; 
			x = 0.39 * safezoneW + safezoneX;
			y = 0.396 * safezoneH + safezoneY;
			w = 0.175 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class BESCHREIBUNGT: Life_RscText
		{
			idc = -1;
			text = "Description*:";
			x = 0.39 * safezoneW + safezoneX;
			y = 0.46 * safezoneH + safezoneY;
			w = 0.1598124 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
		};
		class KURZF: Life_RscEdit
		{
			idc = 1352;
			text = "Please enter title"; 
			x = 0.395 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.210254 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.7};
			colorActive[] = {0,0,0,0.7};
			tooltip = "Title of the message"; 
		};
		class BESCHREIBUNG: Life_RscEdit
		{
			idc = 1353;
			text = "Please enter a description"; 
			x = 0.395 * safezoneW + safezoneX;
			y = 0.484 * safezoneH + safezoneY;
			w = 0.21 * safezoneW;
			h = 0.1 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.7};
			colorActive[] = {0,0,0,0.7};
			tooltip = "Description of the bug"; 
		};
		class CLOSEIT: Life_RscButton
		{
			idc = -1;
			text = "Close"; 
			x = 0.42 * safezoneW + safezoneX;
			y = 0.64 * safezoneH + safezoneY;
			w = 0.160267 * safezoneW;
			h = 0.0264 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};
			colorActive[] = {0,0,0,1};
			tooltip = "Closes this dialog.";
			action = "closeDialog 0";
			type = 1;access = 0;
			colorShadow[] = {0,0,0,0};
		};
		class SENDEN: Life_RscButton
		{
			idc = -1;
			text = "Submit bug message"; 
			x = 0.42 * safezoneW + safezoneX;
			y = 0.604 * safezoneH + safezoneY;
			w = 0.160267 * safezoneW;
			h = 0.0264 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};
			colorActive[] = {0,0,0,1};
			tooltip = "Sends the message"; 
			action = "[1] spawn life_fnc_holy_bug";// [1] execVM 'holy_bug.sqf';
			type = 1;access = 0;
			colorShadow[] = {0,0,0,0};
		};
	};
};