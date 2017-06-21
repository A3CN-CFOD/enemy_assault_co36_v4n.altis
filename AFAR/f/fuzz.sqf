if!(currentChannel in r_CH)exitWith{};
private _s0=[];private _d0=[];private _f=objNull;
if("ItemRadio"in assignedItems player&&alive player)then{
{if((alive _x)&&{(side _x==side player)||(_x isKindOf r_PS)})then{_s0 pushBack _x;};}forEach allPlayers-[player];
_s1=_s0 select 0;_d0=player distance _s1;
if(surfaceIsWater getPosWorld player)then{
if(!isNull objectParent player)then{
_f="Land_HelipadEmpty_F"createVehicleLocal getPosASLW vehicle player;_f attachTo[vehicle player,[0,0,0.5]];}else{
_f="Land_HelipadEmpty_F"createVehicleLocal getPosASLW player;_f attachTo[player,[-0.08,0.35,0.005],"Neck"];};}else{
if(!isNull objectParent player)then{_f="Land_HelipadEmpty_F"createVehicleLocal getPosATL vehicle player;_f attachTo[vehicle player,[0,0,0.5]];}else{
_f="Land_HelipadEmpty_F"createVehicleLocal getPosATL player;_f attachTo[player,[-0.08,0.35,0.005],"Neck"];};};
switch(true)do{
case(_d0>=0&&{_d0<150}):{playSound"in1";while{!isNull _f}do{_f say2D"fuz1";sleep 5;if(player distance _s1>1200)then{deleteVehicle _f;};};};
case(_d0>150&&{_d0<300}):{playSound"in1";while{!isNull _f}do{_f say2D"fuz2";sleep 5;if(player distance _s1>1200)then{deleteVehicle _f;};};};
case(_d0>300&&{_d0<450}):{playSound"in1";while{!isNull _f}do{_f say2D"fuz3";sleep 5;if(player distance _s1>1200)then{deleteVehicle _f;};};};
case(_d0>450&&{_d0<600}):{playSound"in1";while{!isNull _f}do{_f say2D"fuz4";sleep 5;if(player distance _s1>1200)then{deleteVehicle _f;};};};
case(_d0>600&&{_d0<750}):{playSound"in1";while{!isNull _f}do{_f say2D"fuz5";sleep 5;if(player distance _s1>1200)then{deleteVehicle _f;};};};
case(_d0>750&&{_d0<900}):{playSound"in1";while{!isNull _f}do{_f say2D"fuz6";sleep 5;if(player distance _s1>1200)then{deleteVehicle _f;};};};
case(_d0>900&&{_d0<1050}):{playSound"in1";while{!isNull _f}do{_f say2D"fuz7";sleep 5;if(player distance _s1>1200)then{deleteVehicle _f;};};};
case(_d0>1050&&{_d0<1200}):{playSound"in1";while{!isNull _f}do{_f say2D"fuz8";sleep 5;if(player distance _s1>1200)then{deleteVehicle _f;};};};
case(_d0>=1200):{};};};