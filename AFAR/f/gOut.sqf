if(currentChannel!=3)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if("ItemRadio"in assignedItems player)then{
if(!isObjectHidden player&&alive player&&isAbleToBreathe player&&incapacitatedState player=="")then{
private _nearPG=[];
{if((alive _x)&&(group player==group _x)&&(player distance _x<=1200))then{_nearPG pushBack _x;};}forEach allPlayers-[player];
if(count _nearPG>0)then{private _c=_nearPG select 0;private _d1=player distance _c;
3 enableChannel r_grCH;
if(_d1>=0&&{_d1<=r_WS})then{{_x remoteExec["Hush",_x];}forEach _nearPG;};}else{3 enableChannel false;};
private _nearPG=[];hintSilent"";playSound"out1";private _c="";private _d1=0;
{if(_x isKindOf"Land_PortableLongRangeRadio_F")then{deleteVehicle _x;};}forEach attachedObjects player+attachedObjects objectParent player;
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)DisplayRemoveEventHandler["KeyUp",kpGout];
(findDisplay 46)DisplayRemoveEventHandler["KeyDown",kpGin];
kpGin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkGroup"">0))then{[player]call G_In;};"];};};