if(isServer)then{if((!isClass(configFile>>"CfgPatches">>"task_force_radio"))&&{(!isClass(configFile>>"CfgPatches">>"acre_main"))&&(paramsArray select 0==1)})then{
isAFAR=1;publicVariable"isAFAR";

addMissionEventHandler["HandleDisconnect",{_me=_this select 0;
{if((_x isKindOf"Land_PortableLongRangeRadio_F")||(_x isKindof"Land_HelipadEmpty_F"))then{deleteVehicle _x;};}forEach attachedObjects _me+attachedObjects objectParent _me;}];
};};
//Initialize all functions
#include"CFG.sqf"
sleep 2;
waitUntil{alive player};
Fuzz=compileFinal preprocessFile"AFAR\f\fuzz.sqf";
Hush=compileFinal preprocessFile"AFAR\f\hush.sqf";
r_anim=compileFinal preprocessFile"AFAR\f\anim.sqf";
C_In=compileFinal preprocessFile"AFAR\f\C_In.sqf";
D_In=compileFinal preprocessFile"AFAR\f\D_In.sqf";
G_In=compileFinal preprocessFile"AFAR\f\G_In.sqf";
S_In=compileFinal preprocessFile"AFAR\f\S_In.sqf";
V_In=compileFinal preprocessFile"AFAR\f\V_In.sqf";
cOut=compileFinal preprocessFile"AFAR\f\cOut.sqf";
dOut=compileFinal preprocessFile"AFAR\f\dOut.sqf";
gOut=compileFinal preprocessFile"AFAR\f\gOut.sqf";
sOut=compileFinal preprocessFile"AFAR\f\sOut.sqf";
vOut=compileFinal preprocessFile"AFAR\f\vOut.sqf";
nextCH=compileFinal preprocessFile"AFAR\f\nextCH.sqf";
prevCH=compileFinal preprocessFile"AFAR\f\prevCH.sqf";
useRadio=compileFinal preprocessFile"AFAR\f\useRadio.sqf";
VON1=compileFinal preprocessFile"AFAR\f\VONin.sqf";
VON2=compileFinal preprocessFile"AFAR\f\VONout.sqf";
call compile preprocessFile"AFAR\f\init.sqf";