class AFAR_UI {
idd=-1;
movingEnable=1;
enableSimulation=1;
objects[]={};
class controls {
class afar_pic: RscPictureRadio {
	idc=90909;
	moving=1;
	text="AFAR\ui\radio.paa";
	x=0.3*safezoneW+safezoneX;
	y=0.3*safezoneH+safezoneY;
	w=0.2*safezoneW;
	h=0.4*safezoneH;
};
class afar_but0: RscButtonRadio {
	idc=60606;
	moving=1;
	x=0.4*safezoneW+safezoneX;
	y=0.45*safezoneH+safezoneY;
	w=0.015*safezoneW;
	h=0.026*safezoneH;
	tooltip="Previous Channel";
	action="[player]call PrevCH;";
};
class afar_but1: RscButtonRadio {
	idc=60906;
	moving=1;
	x=0.42*safezoneW+safezoneX;
	y=0.45*safezoneH+safezoneY;
	w=0.015*safezoneW;
	h=0.026*safezoneH;
	tooltip="Next Channel";
	action="[player]call NextCH;";
};
};};
