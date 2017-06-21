//Initializes AFAR script functions
r_WS=getNumber(configFile>>"CfgWorlds">>worldName>>"mapSize");

//Auto-detect Player Side
r_PS="";
switch(side player)do{
case WEST:{r_PS="SoldierWB"};
case EAST:{r_PS="SoldierEB"};
case INDEPENDENT:{r_PS="SoldierGB"};
case RESISTANCE:{r_PS="SoldierGB"};
case CIVILIAN:{r_PS="Civilian"};};

//Sets up channels
0 enableChannel r_glCH;1 enableChannel r_sCH;3 enableChannel r_grCH;5 enableChannel r_dCH;
if(leader(group(vehicle player))==player)then{2 enableChannel r_cCH;}else{2 enableChannel false;};
if(!isNull objectParent player)then{4 enableChannel r_vCH;}else{4 enableChannel false;};
6 enableChannel true;setCurrentChannel 5;0 fadeSpeech 1;

//If player gets rid of radio, he cannot send/recieve transmissions
player addEventHandler["Put",{if((_this select 2=="ItemRadio")&&{!("ItemRadio"in assignedItems player)})then{
0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;
{if(_x isKindOf"Land_HelipadEmpty_F")then{deleteVehicle _x;};}forEach attachedObjects player+attachedObjects objectParent player;}else{
0 enableChannel r_glCH;1 enableChannel r_sCH;2 enableChannel r_cCH;3 enableChannel r_grCH;5 enableChannel r_dCH;};}];

//Adds inputAction EH to call In and Out functions upon keyPress/keyRelease
waitUntil{!(isNull(findDisplay 46))};
kpCin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkCommand"">0))then{[player]call C_In;};"];
kpSin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkSide"">0))then{[player]call S_In;};"];
kpGin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkGroup"">0))then{[player]call G_In;};"];
kpVin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkVehicle"">0))then{[player]call V_In;};"];
kpDin=(findDisplay 46)displayAddEventHandler["KeyDown","if((inputAction""PushToTalk"">0)||(inputAction""PushToTalkDirect"">0))then{[player]call D_In;};"];

kpVON1=(findDisplay 46)displayAddEventHandler["KeyDown","if(inputAction""VoiceOverNet"">0)then{[player]call VON1;};"];
kpVON2=(findDisplay 46)displayAddEventHandler["KeyUp","if(inputAction""CopyVersion"">2)then{};"];

kpCout=(findDisplay 46)displayAddEventHandler["KeyUp","if(inputAction""CopyVersion"">2)then{};"];
kpSout=(findDisplay 46)displayAddEventHandler["KeyUp","if(inputAction""CopyVersion"">2)then{};"];
kpGout=(findDisplay 46)displayAddEventHandler["KeyUp","if(inputAction""CopyVersion"">2)then{};"];
kpVout=(findDisplay 46)displayAddEventHandler["KeyUp","if(inputAction""CopyVersion"">2)then{};"];
kpDout=(findDisplay 46)displayAddEventHandler["KeyUp","if(inputAction""CopyVersion"">2)then{};"];


//Adds inputAction EH to call radio interface function
myRadio=(findDisplay 46)displayAddEventHandler["KeyDown","if(inputAction""Diary"">0)then{[player]call useRadio;};"];

//Adds getIn/Out EH to keep radio/static attached to player
player addEventHandler["GetInMan",{
4 enableChannel r_vCH;
if(surfaceIsWater getPosWorld player)then{
if(!isNull objectParent player)then{
_r=nearestObjects[getPosASLW vehicle player,["Land_PortableLongRangeRadio_F","Land_HelipadEmpty_F"],9];{detach _x;_x attachTo[vehicle player,[-0.08,0.35,0.005],"Neck"];_x setVectorUp[0,-1,0.005];}forEach _r;}else{
_r=nearestObjects[getPosASLW player,["Land_PortableLongRangeRadio_F","Land_HelipadEmpty_F"],9];{detach _x;_x attachTo[player,[-0.08,0.35,0.005],"Neck"];_x setVectorUp[0,-1,0.005];}forEach _r;};};
if(!isNull objectParent player)then{
_r=nearestObjects[getPosATL vehicle player,["Land_PortableLongRangeRadio_F","Land_HelipadEmpty_F"],9];{detach _x;_x attachTo[vehicle player,[0,0,0.5]];_x setVectorUp[0,-1,0.005];}forEach _r;}else{
_r=nearestObjects[getPosATL player,["Land_PortableLongRangeRadio_F","Land_HelipadEmpty_F"],9];{detach _x;_x attachTo[player,[-0.08,0.35,0.005],"Neck"];_x setVectorUp[0,-1,0.005];}forEach _r;};}];

player addEventHandler["GetOutMan",{
4 enableChannel false;
if(surfaceIsWater getPosWorld player)then{
if(!isNull objectParent player)then{
_r=nearestObjects[getPosASLW vehicle player,["Land_PortableLongRangeRadio_F","Land_HelipadEmpty_F"],9];{detach _x;_x attachTo[vehicle player,[0,0,0.5]];_x setVectorUp[0,-1,0.005];}forEach _r;}else{
_r=nearestObjects[getPosASLW player,["Land_PortableLongRangeRadio_F","Land_HelipadEmpty_F"],9];{detach _x;_x attachTo[player,[-0.08,0.35,0.005],"Neck"];_x setVectorUp[0,-1,0.005];}forEach _r;};};
if(!isNull objectParent player)then{
_r=nearestObjects[getPosATL vehicle player,["Land_PortableLongRangeRadio_F","Land_HelipadEmpty_F"],9];{detach _x;_x attachTo[vehicle player,[0,0,0.5]];_x setVectorUp[0,-1,0.005];}forEach _r;}else{
_r=nearestObjects[getPosATL player,["Land_PortableLongRangeRadio_F","Land_HelipadEmpty_F"],9];{detach _x;_x attachTo[player,[-0.08,0.35,0.005],"Neck"];_x setVectorUp[0,-1,0.005];}forEach _r;};}];

//Toggle off all VOIP channels and delete radio + static upon death
player addEventHandler["Killed",{
0 enableChannel false;1 enableChannel false;2 enableChannel false;3 enableChannel false;4 enableChannel false;5 enableChannel false;0 fadeSpeech 0;
{if((_x isKindOf"Land_HelipadEmpty_F")||(_x isKindOf"Land_PortableLongRangeRadio_F"))then{deleteVehicle _x;};}forEach attachedObjects player+attachedObjects objectParent player;hintSilent"";}];

player addEventHandler["Respawn",{
//if(!alive player)then{waitUntil{alive player};systemChat"DEBUG: No longer dead";};
0 enableChannel r_glCH;1 enableChannel r_sCH;3 enableChannel r_grCH;5 enableChannel r_dCH;6 enableChannel true;0 fadeSpeech 1;hintSilent"";
if(leader(group(vehicle player))==player)then{2 enableChannel r_cCH;}else{2 enableChannel false;};
if(!isNull objectParent player)then{4 enableChannel r_vCH;}else{4 enableChannel false;};}];

//Helpful information / instructions for AFAR
player createDiarySubject["Arma Radio","ArmA Radio"];
player createDiaryRecord["Arma Radio",["Instructions Manual","
<font face='PuristaMedium' size=30 shadow='5' color='#808000'>ADDON-FREE ARMA RADIO</font></size><b/><br/>Created by Phronk<br/>
<font face='PuristaMedium' size=12 color='#8E8E8E'>__________________________________</font></size><br/><br/>
<font face='PuristaMedium' size=20 color='#808000'>RADIO SETUP</font></size><br/>
     0. Use a PUSH TO TALK key to talk in-game<br/>
     1. Open the in-game menu and go to 'Configure/Controls/Multiplayer'<br/>
     2. Set your PUSH TO TALK or TALK ON GROUP CHANNEL key<br/>
     3. Set your TALK ON DIRECT CHANNEL key to whatever you prefer<br/>
     4. Unbind your VoiceOverNet keybind!<br/>
     5. Raise VON volume slider in AUDIO settings<br/><br/>

<font face='PuristaMedium' size=20 color='#808000'>OPERATING RADIO</font></size><br/>
• PUSH TO TALK key(s) to use radio<br/><br/>
• Radio channels are <font color='#2AA1D5'>SIDE</font>, <font color='#fffaa3'>COMMAND</font>, <font color='#b6f442'>GROUP</font>, and <font color='#f4c542'>VEHICLE</font><br/><br/>
• DIARY key to look at your handheld radio<br/><br/>
• Radio must be equipped to send/receive transmissions<br/><br/>
• You must be within 1050m of another friendly soldier with a radio<br/><br/>
• Radio static intensifies every 150m away from closest recieving soldier<br/><br/>
• Only players on your side can communicate via <font color='#2AA1D5'>Side Channel</font><br/><br/>
• Only squad leaders can communicate via <font color='#fffaa3'>Command Channel</font><br/><br/>
• Only squadmates can communicate via <font color='#b6f442'>Group Channel</font><br/><br/>
• Only vehicle passengers can communicate via <font color='#f4c542'>Vehicle Channel</font><br/><br/>
• Everyone in close proximity can communicate via <font color='#ffffff'>Direct Channel</font><br/><br/>
• Cannot speak via <font color='#ffffff'>Direct Channel</font> while underwater<br/><br/>
• Cannot communicate if dead or underwater without rebreather<br/><br/>
• Cannot communicate via radio if incapacitated<br/><br/>
• Cannot communicate via radio if outside radio range"]];