//Silence radio noise
playSound "out1";{if(_x isKindOf "Land_HelipadEmpty_F")then{deleteVehicle _x;};}forEach attachedObjects player+attachedObjects objectParent player;