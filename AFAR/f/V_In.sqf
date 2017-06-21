//Client begins transmitting over radio
if(currentChannel!=4)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if("ItemRadio"in assignedItems player&&!isNull objectParent player)then{
if(!isObjectHidden player&&alive player&&isAbleToBreathe player&&incapacitatedState player=="")then{
private _nearPV=[];
{if((alive _x)&&{(_x in crew vehicle player)})then{_nearPV pushBack _x;};}forEach allPlayers-[player];
if(count _nearPV>0)then{
4 enableChannel r_vCH;hintSilent"Transmitting...";playSound "in1";{_x remoteExec["Fuzz",_x];}forEach _nearPV;};
private _nearPV=[];}else{4 enableChannel false;hintSilent"-----------------------------------------------------";playSound "in2";};}else{
4 enableChannel false;hintSilent"-----------------------------------------------------";playSound "in2";};
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)displayRemoveEventHandler["KeyUp",kpVout];
(findDisplay 46)displayRemoveEventHandler["KeyDown",kpVin];
kpVout=(findDisplay 46)displayAddEventHandler["KeyUp","if((inputAction""PushToTalk""<2)&&{(inputAction""PushToTalkVehicle""<2)})then{[player]call vOut;}"];