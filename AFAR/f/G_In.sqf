//Client begins transmitting over Group
if(currentChannel!=3)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if("ItemRadio"in assignedItems player)then{
if(!isObjectHidden player&&alive player&&isAbleToBreathe player&&incapacitatedState player=="")then{
private _nearPG=[];
{if((alive _x)&&(group player==group _x))then{_nearPG pushBack _x;};}forEach allPlayers-[player];
if(count _nearPG>0)then{private _c=_nearPG select 0;private _d1=player distance _c;
3 enableChannel r_grCH;
switch(true)do{
case(_d1>=0&&{_d1<1050}):{hintSilent"Transmitting...";playSound"in1";};
case(_d1>1050&&{_d1<1200}):{3 enableChannel false;hintSilent"v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^";playSound"in1";};
case(_d1>=1200):{3 enableChannel false;hintSilent"-----------------------------------------------------";playSound"in2";};};
if(_d1>=0&&{_d1<=1200})then{{_x remoteExec["Fuzz",_x];}forEach _nearPG;};
private _c="";private _d1=0;}else{3 enableChannel false;hintSilent"-----------------------------------------------------";playSound"in2";};
private _nearPG=[];}else{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;hintSilent"-----------------------------------------------------";playSound"in2";};
[player]call r_anim;
if(seeAFAR)then{if(isNull objectParent player)then{private _r="Land_PortableLongRangeRadio_F"createVehicleLocal[0,0,0];_r attachTo[player,[-0.08,0.35,0.005],"Neck"];_r setVectorUp[0,-1,0.005];};};
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)displayRemoveEventHandler["KeyUp",kpGout];
(findDisplay 46)displayRemoveEventHandler["KeyDown",kpGin];
kpGout=(findDisplay 46)displayAddEventHandler["KeyUp","if((inputAction""PushToTalk""<2)&&{(inputAction""PushToTalkGroup""<2)})then{[player]call gOut;}"];};