//Client begins transmitting over Side
if(currentChannel!=1)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if("ItemRadio"in assignedItems player)then{
if(!isObjectHidden player&&alive player&&isAbleToBreathe player&&incapacitatedState player=="")then{
private _nearPS=[];
{if((alive _x)&&(side player==side _x)||(_x isKindOf r_PS))then{_nearPS pushBack _x;};}forEach allPlayers-[player];
if(count _nearPS>0)then{private _c=_nearPS select 0;private _d1=player distance _c;
1 enableChannel r_sCH;
switch(true)do{
case(_d1>=0&&{_d1<1050}):{hintSilent"Transmitting...";playSound"in1";};
case(_d1>1050&&{_d1<1200}):{1 enableChannel false;hintSilent"v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^";playSound"in1";};
case(_d1>=1200):{1 enableChannel false;hintSilent"-----------------------------------------------------";playSound"in2";};};
if(_d1>=0&&{_d1<=1200})then{{_x remoteExec["Fuzz",_x];}forEach _nearPS;};
private _c="";private _d1=0;}else{1 enableChannel false;hintSilent"-----------------------------------------------------";playSound"in2";};
private _nearPS=[];}else{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;hintSilent"-----------------------------------------------------";playSound"in2";};
[player]call r_anim;
if(seeAFAR)then{if(isNull objectParent player)then{private _r="Land_PortableLongRangeRadio_F"createVehicleLocal[0,0,0];_r attachTo[player,[-0.08,0.35,0.005],"Neck"];_r setVectorUp[0,-1,0.005];};};
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)displayRemoveEventHandler["KeyUp",kpSout];
(findDisplay 46)displayRemoveEventHandler["KeyDown",kpSin];
kpSout=(findDisplay 46)displayAddEventHandler["KeyUp","if((inputAction""PushToTalk""<2)&&{(inputAction""PushToTalkSide""<2)})then{[player]call sOut;}"];};