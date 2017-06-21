//Block VON keybind
if(currentChannel in[0,1,2,3,4])then{currentChannel enableChannel false;playSound"in2";};
titleText["Replace your 'VoiceOverNet' key with 'PushToTalk' instead!","PLAIN"];setCurrentChannel 5;
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)displayRemoveEventHandler["KeyUp",kpVON2];
(findDisplay 46)displayRemoveEventHandler["KeyDown",kpVON1];
kpVON2=(findDisplay 46)displayAddEventHandler["KeyUp","if(inputAction""VoiceOverNet""<2)then{[player]call VON2;};"];