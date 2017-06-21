//Client talks in local 3D Direct Channel
if(currentChannel!=5)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if(!isObjectHidden player&&alive player&&isAbleToBreathe player)then{5 enableChannel r_dCH;}else{
if(!isAbleToBreathe player)then{titleText["I need a rebreather to talk underwater","PLAIN DOWN"];titleFadeOut 6;};5 enableChannel false;};
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)displayRemoveEventHandler["KeyUp",kpDout];
(findDisplay 46)displayRemoveEventHandler["KeyDown",kpDin];
kpDout=(findDisplay 46)displayAddEventHandler["KeyUp","if((inputAction""PushToTalk""<2)&&{(inputAction""PushToTalkDirect""<2)})then{[player]call dOut;}"];