if(currentChannel!=1)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if("ItemRadio"in assignedItems player)then{
if(!isObjectHidden player&&alive player&&isAbleToBreathe player&&incapacitatedState player=="")then{
private _nearPS=[];
{if((alive _x)&&(side player==side _x)||(_x isKindOf r_PS)&&(player distance _x<=1200))then{_nearPS pushBack _x;};}forEach allPlayers-[player];
if(count _nearPS>0)then{private _c=_nearPS select 0;private _d1=player distance _c;1 enableChannel r_sCH;
if(_d1>=0&&{_d1<=1200})then{{_x remoteExec["Hush",_x];}forEach _nearPS;};private _c="";private _d1=0;}else{1 enableChannel r_sCH;};
hintSilent"";playSound"out1";private _nearPS=[];
{if(_x isKindOf"Land_PortableLongRangeRadio_F")then{deleteVehicle _x;};}forEach attachedObjects player+attachedObjects objectParent player;
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)DisplayRemoveEventHandler["KeyUp",kpSout];
(findDisplay 46)DisplayRemoveEventHandler["KeyDown",kpSin];
kpSin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkSide"">0))then{[player]call S_In;};"];};};