class GTOM_RscText
{
  access = 0;
  type = 0;
  style = 0;
  colorBackground[] = {0,0,0,0};
  colorDisabled[] = {0,0,0,0.5};
  colorShadow[] = {0,0,0,0.5};
  colorText[] = {1,1,1,1};
  autocomplete = "";
  colorSelection[] = {1,0,0,1};
  fixedWidth = 0;
  font = "Zeppelin32";
  h = 0.037;
  linespacing = 1;
  shadow = 1;
  SizeEx = "(((((safezoneW/safezoneH) min 1.2) / 1.2) / 25) * 1)";
  text = "";
  w = 0.3;
  x = 0.0;
  y = 0.0;
};

class GTOM_RscPicture
{
	access = 0;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	fixedWidth = 0;
	font = "TahomaB";
	h = 0.15;
	lineSpacing = 0;
	shadow = 0;
	sizeEx = 0;
	style = 48;
	text = "";
	type = 0;
	w = 0.2;
	x = 0;
	y = 0;
};

class GTOM_RscStructuredText
{
	access = 0;
	idc = -1;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
	h = 0.035;
	shadow = 1;
	size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	style = 0;
	text = "";
	type = 13;
	w = 0.1;
	x = 0;
	y = 0;
	class Attributes
		{
			align = "left";
			color = "#ffffff";
			font = "PuristaMedium";
			shadow = 1;
		};
};

class GTOM_RscControlsGroup
{
	h = 1;
	idc = -1;
	shadow = 0;
	style = 16;
	type = 15;
	w = 1;
	x = 0;
	y = 0;

	class Controls;
	class HScrollbar
	{
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		autoScrollDelay = 5;
		autoScrollEnabled = 0;
		autoScrollRewind = 0;
		autoScrollSpeed = -1;
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		color[] = {1,1,1,1};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		height = 0;
		scrollSpeed = 0.06;
		shadow = 0;
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		width = 0;
	};

	class VScrollbar
	{
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		autoScrollDelay = 5;
		autoScrollEnabled = 1;
		autoScrollRewind = 0;
		autoScrollSpeed = -1;
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		color[] = {1,1,1,1};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		height = 0;
		scrollSpeed = 0.06;
		shadow = 0;
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		width = 0;
	};

	class ScrollBar
	{
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		autoScrollDelay = 5;
		autoScrollEnabled = 0;
		autoScrollRewind = 0;
		autoScrollSpeed = -1;
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		color[] = {1,1,1,1};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		height = 0;
		scrollSpeed = 0.06;
		shadow = 0;
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		width = 0;
	};
};

class GTOM_RscButton
{
  access = 0;
  borderSize = 0;
  colorBackground[] = {0.350,0.350,0.350,1};
  colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
  colorBackgroundDisabled[] = {0.95,0.95,0.95,1};
  colorBorder[] = {0,0,0,1};
  colorDisabled[] = {0.4,0.4,0.4,1};
  colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",1};
  colorBackgroundFocused[] = {1,1,1,1};
  colorShadow[] = {0,0,0,1};
  colorText[] = {1,1,1,1};
  font = "PuristaMedium";
  h = 0.039216;
  offsetPressedX = 0.002;
  offsetPressedY = 0.002;
  offsetX = 0.003;
  offsetY = 0.003;
  shadow = 2;
  sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
  soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.07,1};
  soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
  soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
  soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
  style = 2;
  text = "";
  type = 1;
  w = 0.095589;
  x = 0;
  y = 0;
};

class GTOM_RscButtonMenu : GTOM_RscButton
{
  action = "";
  animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
  animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
  animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
  animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
  animTextureOver = "#(argb,8,8,3)color(1,1,1,0.5)";
  animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
  color2[] = {1,1,1,1};
  color[] = {1,1,1,1};
  colorBackground2[] = {1,1,1,0.5};
  colorBackground[] = {0.450,0.450,0.450,1};
  colorDisabled[] = {1,1,1,0.25};
  colorText[] = {1,1,1,1};
  default = 0;
  font = "PuristaMedium";
  h = 0.039216;
  period = 1.2;
  periodFocus = 1.2;
  periodOver = 1.2;
  shadow = 0;
  shortcuts[] = {};
  size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
  sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
  soundClick[] = {"\A3\ui_f\data\sound\onclick",0.07,1};
  soundEnter[] = {"\A3\ui_f\data\sound\onover",0.09,1};
  soundEscape[] = {"\A3\ui_f\data\sound\onescape",0.09,1};
  soundPush[] = {"\A3\ui_f\data\sound\new1",0,0};
  style = "0x02 + 0xC0";
  text = "";
  textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
  type = 16;
  w = 0.095589;
  x = 0;
  y = 0;
  class Attributes
	{
		align = "left";
		color = "#E5E5E5";
		font = "PuristaLight";
		shadow = "false";
	};
  class AttributesImage
	{
		align = "left";
		color = "#E5E5E5";
		font = "PuristaMedium";
	};
   class HitZone
	{
		bottom = 0;
		left = 0;
		right = 0;
		top = 0;
	};
   class ShortcutPos
	{
		h = 0.03;
		left = "(6.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)) - 0.0225 - 0.005";
		top = 0.005;
		w = 0.0225;
	};
   class TextPos
	{
		bottom = 0;
		left = "0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
		right = 0.005;
		top = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
	};
};

class RscButtonMenu : GTOM_RscButtonMenu
{
  idc = -1;
  color2[] = {0,0,0,1};
  color[] = {1,1,1,1};
  colorBackground2[] = {0.75,0.75,0.75,1};
  colorBackground[] = {0,0,0,0.8};
  colorBackgroundFocused[] = {1,1,1,1};
  colorDisabled[] = {1,1,1,0.25};
  colorFocused[] = {0,0,0,1};
  colorText[] = {1,1,1,1};
  shortcuts[] = {"0x00050000 + 0",28,57,156};
  text = "";
};

class RscButtonMenuOK : GTOM_RscButtonMenu
{
  idc = 1;
  color2[] = {0,0,0,1};
  color[] = {1,1,1,1};
  colorBackground2[] = {0.75,0.75,0.75,1};
  colorBackground[] = {0,0,0,0.8};
  colorBackgroundFocused[] = {1,1,1,1};
  colorDisabled[] = {1,1,1,0.25};
  colorFocused[] = {0,0,0,1};
  colorText[] = {1,1,1,1};
  default = 1;
  shortcuts[] = {"0x00050000 + 0",28,57,156};
  text = "OK";
};

class RscButtonMenuCancel : RscButtonMenuOK
{
  idc = 2;
  color2[] = {0,0,0,1};
  color[] = {1,1,1,1};
  colorBackground2[] = {0.75,0.75,0.75,1};
  colorBackground[] = {0,0,0,0.8};
  colorBackgroundFocused[] = {1,1,1,1};
  colorDisabled[] = {1,1,1,0.25};
  colorFocused[] = {0,0,0,1};
  colorText[] = {1,1,1,1};
  default = 0;
  shortcuts[] = {"0x00050000 + 1"};
  text = "Cancel";
};

class GTOM_DynamicDialog
{
	idd = 1031982;
	movingEnable = true;
	class controls
	{
		class Background: GTOM_RscText
		{
			moving = 1;
			colorBackground[] = {0,0,0,0.7};
			idc = 10001;
			x = "6.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "9.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "27 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "6.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};

		class Title: GTOM_RscText
		{
			moving = 1;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.8])"};
			idc = 10002;
			text = "Edit Init Line (GTOM)";
			x = "6.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "8.4 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "27 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};

		class Content: GTOM_RscControlsGroup
		{
			moving = 1;
			idc = 10003;
			x = "7 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "10 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "26 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "5.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			class controls	{};
		};

		class ButtonOK: RscButtonMenu
		{
			moving = 1;
			text = "OK";
			idc = 10007;
			x = "28.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "16.1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};

		class ButtonCancel: RscButtonMenuCancel
		{
			moving = 1;
			x = "6.5 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "16.1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};

		class ButtonCustom: GTOM_RscButtonMenu
		{
			moving = 1;
			idc = 10006;
			x = "23.4 * 					(			((safezoneW / safezoneH) min 1.2) / 40) + 		(safezoneX + (safezoneW - 					((safezoneW / safezoneH) min 1.2))/2)";
			y = "16.1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + 		(safezoneY + (safezoneH - 					(			((safezoneW / safezoneH) min 1.2) / 1.2))/2)";
			w = "5 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "1 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
	};
};