if(currentChannel!=4)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if("ItemRadio"in assignedItems player&&!isNull objectParent player)then{
if(!isObjectHidden player&&alive player&&isAbleToBreathe player&&incapacitatedState player=="")then{
private _nearPV=[];
{if((alive _x)&&{(!isNull objectParent _x)&&(_x in crew vehicle player)})then{_nearPV pushBack _x;};}forEach allPlayers-[player];
if(count _nearPV>0)then{4 enableChannel r_vCH;{_x remoteExec["Hush",_x];}forEach _nearPV;}else{4 enableChannel false;};
private _nearPV=[];hintSilent"";playSound"out1";
{if(_x isKindOf"Land_PortableLongRangeRadio_F")then{deleteVehicle _x;};}forEach attachedObjects player+attachedObjects objectParent player;
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)DisplayRemoveEventHandler["KeyUp",kpVout];
(findDisplay 46)DisplayRemoveEventHandler["KeyDown",kpVin];
kpVin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkVehicle"">0))then{[player]call V_In;};"];};};