if(currentChannel!=2)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if("ItemRadio"in assignedItems player)then{
if(!isObjectHidden player&&alive player&&isAbleToBreathe player&&incapacitatedState player=="")then{
if(leader player!=player)exitWith{2 enableChannel false;};
private _nearPC=[];
{if((side _x==side player)||(_x isKindOf r_PS)&&(alive _x)&&(leader(group(vehicle _x))==_x))then{_nearPC pushBack _x;};}forEach allPlayers-[player];
if(count _nearPC>0)then{private _c=_nearPC select 0;private _d1=player distance _c;
2 enableChannel r_cCH;
if(_d1>=0&&{_d1<=r_WS})then{{_x remoteExec["Hush",_x];}forEach _nearPC;};}else{2 enableChannel false;};
private _nearPC=[];hintSilent"";playSound"out1";private _c="";private _d1=0;
{if(_x isKindOf"Land_PortableLongRangeRadio_F")then{deleteVehicle _x;};}forEach attachedObjects player+attachedObjects objectParent player;
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)DisplayRemoveEventHandler["KeyUp",kpCout];
(findDisplay 46)DisplayRemoveEventHandler["KeyDown",kpCin];
kpCin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkCommand"">0))then{[player]call C_In;};"];};};