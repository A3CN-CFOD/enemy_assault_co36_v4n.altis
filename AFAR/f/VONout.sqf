//Block VON keybind
waitUntil{!(isNull(findDisplay 46))};
(findDisplay 46)displayRemoveEventHandler["KeyUp",kpVON2];
(findDisplay 46)displayRemoveEventHandler["KeyDown",kpVON1];
kpVON1=(findDisplay 46)displayAddEventHandler["KeyDown","if(inputAction""VoiceOverNet"">0)then{[player]call VON1;};"];