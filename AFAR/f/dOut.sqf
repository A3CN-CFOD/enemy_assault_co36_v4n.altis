if(currentChannel!=5)exitWith{};
if(playersNumber playerside<2)exitWith{0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;};
if(!isObjectHidden player&&alive player&&isAbleToBreathe player)then{5 enableChannel r_dCH;}else{5 enableChannel false;};
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)DisplayRemoveEventHandler["KeyUp",kpDout];
(findDisplay 46)DisplayRemoveEventHandler["KeyDown",kpDin];
kpDin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkDirect"">0))then{[player]call D_In;};"];