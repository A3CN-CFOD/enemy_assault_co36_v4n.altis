// Create a mission entry for the server and client RPT file, easier to debug when you know what mission created the error
diag_log text "";
diag_log text format["|=============================   %1   =============================|", missionName]; // stamp mission name
diag_log text "";

_PARAM_RHS = "PARAM_RHS" call BIS_fnc_getParamValue;
if ((isClass(configFile >> "CfgPatches" >> "rhs_main")) and (_PARAM_RHS == 1)) then {
	ghst_rhsmod = true;
} else {
	ghst_rhsmod = false;
};

enableSaving [false, false];

CIVILIAN setFriend [WEST, 1];
WEST setFriend [CIVILIAN, 1];
EAST setFriend [CIVILIAN, 1];
INDEPENDENT setFriend [CIVILIAN, 1];

//Create Village on SW Area and Ghost Hotel
ghst_ghost_hotel = createLocation [ "NameLocal" , [21883.5,20980.5,0], 800, 800];
ghst_ghost_hotel setText "Ghost Hotel";

ghst_Farmland = createLocation [ "NameLocal" , [10300.5,9399.63,0], 1500, 1500];
ghst_Farmland setText "Farmland";

// Wait until player is initialized
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};

tf_no_auto_long_range_radio = true;

call compile  preprocessfile "comm_menusub.sqf";

_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

//["Preload"] call BIS_fnc_arsenal;

[] execVM "scripts\tags.sqf";

[] execVM "scripts\VehicleAugmentation.sqf";

[true,[false, false, false, true],[0,false,true],[[], true, false]] execVM "vip_lit\vip_lit_init.sqf";

call compile preprocessFileLineNumbers "Engima\Civilians\Init.sqf";
call compile preprocessFileLineNumbers "Engima\Traffic\Init.sqf";
