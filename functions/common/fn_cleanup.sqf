private["_x"];

{if !(alive _x) then {deletevehicle _x;};} foreach vehicles;
{deleteVehicle _x;} forEach allDead;
{deleteGroup _x;} foreach allGroups;
{deletevehicle _x;} foreach nearestObjects [(getmarkerpos "Respawn_West"),["CraterLong_small","CraterLong","WeaponHolder","GroundWeaponHolder"], 2000];