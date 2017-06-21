//Player's character uses radio animation
if(anAFAR)then{if(cameraView=="Gunner")exitWith{};if(isNull objectParent player&&incapacitatedState player=="")then{player playAction "HandSignalRadio";};};