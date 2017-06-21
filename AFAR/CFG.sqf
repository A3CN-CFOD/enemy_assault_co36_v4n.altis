/*	VERSION: 0.5
	AUTHOR: Phronk
	CONTRIBUTIONS:
		1. Killzone_Kid fixed server globally distribute AFAR variable, in init.sqf
		2. Larrow helped improve radio keybind detection (inputAction)
		3. DirtySanchez reorganized AFAR and improved security
		4. BadBenson helped with private variables

	TESTERS:
		1. BadBenson
		2. BruceAlmightyy
		3. KingCarter
		4. Limey
		5. Statsbacktozero


//CONFIGURATIONS:
/////////////////
//CHANNELS:			Channel# enableChannel [CHAT,VOICE]
//GLOBAL: 0 | SIDE: 1 | COMMAND: 2 | GROUP: 3 | VEHICLE: 4 | DIRECT: 5 | SYSTEM: 6 | 7-15 = Custom Channels */

r_CH=[1,2,3,4];//Channels for radio effects 					>> Default: [1,2,3,4]
r_glCH=[FALSE,FALSE];//Global Channel Chat/Voice Allow			>> Default: [FALSE,FALSE]
r_sCH=[FALSE,FALSE];//Side Channel Chat/Voice Allow  			>> Default: [FALSE,TRUE]
r_cCH=[TRUE,TRUE];//Command Channel Chat/Voice Allow  			>> Default: [TRUE,TRUE]
r_grCH=[FALSE,TRUE];//Group Channel Chat/Voice Allow  			>> Default: [FALSE,TRUE]
r_vCH=[TRUE,TRUE];//Vehicle Channel Chat/Voice Allow  			>> Default: [TRUE,TRUE]
r_dCH=[FALSE,TRUE];//Direct Channel Chat/Voice Allow  			>> Default: [FALSE,TRUE]
seeAFAR=TRUE;//3D radio when talking  |false = Off, true = On	>> Default: TRUE
anAFAR=TRUE;//Animation when talking  |false = Off, true = On	>> Default: TRUE