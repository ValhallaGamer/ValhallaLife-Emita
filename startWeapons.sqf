waituntil {alive player};
//player removeweapon "ItemGPS";
removeAllWeapons player;
execVM "briefing.sqf";
if (isciv) then {player addweapon "ItemGPS";};
if (iscop) then 
{
	if (count playerWeapons == 0 and count playermagazines == 0) then 
		{
		{player addMagazine _x} forEach CopStartGear_Mags;
		{player addWeapon   _x} forEach CopStartGear_Weap;	
		} 
		else 
		{
		{player addMagazine _x} forEach playermagazines;
		{player addWeapon   _x} forEach playerWeapons;										
		};
	player selectweapon (primaryweapon player);
	weaponsloaded = true;			
};

if("car" call INV_haslicense)then{demerits = 10};