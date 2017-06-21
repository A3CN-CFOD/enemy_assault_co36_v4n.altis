//Cycle to NEXT channel
switch(currentChannel)do{
case 0:{};
case 1:{if((r_cCH isEqualTo[FALSE,FALSE])&&(leader(group(vehicle player))!=player))then{3 enableChannel r_grCH;setCurrentChannel 3;}else{
		if((r_cCH isEqualTo[FALSE,FALSE])&&(leader(group(vehicle player))==player))then{2 enableChannel r_cCH;setCurrentChannel 2;}else{
		2 enableChannel r_cCH;setCurrentChannel 2;};};};

case 2:{if((r_grCH isEqualTo[FALSE,FALSE]))then{4 enableChannel r_vCH;setCurrentChannel 4;}else{
		if(leader(group(vehicle player))==leader player)then{3 enableChannel r_cCH;setCurrentChannel 3;}else{
		3 enableChannel r_grCH;setCurrentChannel 3;};};};

case 3:{if(r_vCH isEqualTo[FALSE,FALSE])then{1 enableChannel r_sCH;setCurrentChannel 1;}else{
		4 enableChannel r_vCH;setCurrentChannel 4;};};

case 4:{if((r_sCH isEqualTo[FALSE,FALSE])&&(leader(group(vehicle player))==player))then{2 enableChannel r_cCH;setCurrentChannel 2;}else{
		if((r_sCH isEqualTo[FALSE,FALSE])&&(leader(group(vehicle player))!=player))then{3 enableChannel r_grCH;setCurrentChannel 3;}else{
		3 enableChannel r_grCH;setCurrentChannel 3;};};};

case 5:{if(r_sCH isEqualTo[FALSE,FALSE])then{2 enableChannel r_cCH;setCurrentChannel 2;}else{
		1 enableChannel r_sCH;setCurrentChannel 1;};};
};