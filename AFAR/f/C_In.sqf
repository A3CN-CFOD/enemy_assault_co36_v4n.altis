//Client begins transmitting over Command
if(currentChannel!=2)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if("ItemRadio"in assignedItems player)then{
if(!isObjectHidden player&&alive player&&isAbleToBreathe player&&incapacitatedState player=="")then{
if(leader player!=player)exitWith{2 enableChannel false;};
private _nearPC=[];
{if((_x isKindOf r_PS)||(side _x==side player)&&(alive _x)&&(leader(group(vehicle _x))==_x))then{_nearPC pushBack _x;};}forEach allPlayers-[player];
if(count _nearPC>0)then{private _c=_nearPC select 0;private _d1=player distance _c;
2 enableChannel r_cCH;
switch(true)do{
case(_d1>=0&&{_d1<1050}):{hintSilent"Transmitting...";playSound"in0";};
case(_d1>1050&&{_d1<1200}):{2 enableChannel false;hintSilent"v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^v^";playSound"in0";};
case(_d1>=1200):{2 enableChannel false;hintSilent"-----------------------------------------------------";playSound"in2";};};
if(_d1>=0&&{_d1<=1200})then{{_x remoteExec["Fuzz",_x];}forEach _nearPC;};
private _c="";private _d1=0;}else{2 enableChannel false;hintSilent"-----------------------------------------------------";playSound"in2";};
private _nearPC=[];}else{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;hintSilent"-----------------------------------------------------";playSound"in2";};
[player]call r_anim;
if(seeAFAR)then{if(isNull objectParent player)then{private _r="Land_PortableLongRangeRadio_F"createVehicleLocal[0,0,0];_r attachTo[player,[-0.08,0.35,0.005],"Neck"];_r setVectorUp[0,-1,0.005];};};
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)displayRemoveEventHandler["KeyUp",kpCout];
(findDisplay 46)displayRemoveEventHandler["KeyDown",kpCin];
kpCout=(findDisplay 46)displayAddEventHandler["KeyUp","if((inputAction""PushToTalk""<2)&&{(inputAction""PushToTalkCommand""<2)})then{[player]call cOut;}"];};