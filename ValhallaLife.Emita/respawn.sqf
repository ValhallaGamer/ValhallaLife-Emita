waitUntil {JIP_Stats_Ready};
while {true} do 
{
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
//if("sobr_training" call INV_haslicense and iscop)then{_h = ["MVD_soldier"] execVM "changeclass.sqf";waituntil{scriptdone _h}; player setpos getmarkerpos "respawn_west_SOBR";};
sleep 5;
waituntil {!(alive player)};
weaponsloaded = false;
role = player;
sleep 0.5;
closeDialog 0;
if(isciv) then 
{
for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do 
	{
	_item   = ((INV_InventarArray select _i) select 0);
	_amount = (_item call INV_GetItemAmount);
	if (_amount > 0 and (_item call INV_getitemDropable)) then 

		{
		private "_class";
		if(_item == "geld")then{_class = "EvMoney"}else{_class = "Suitcase"};
		_object = _class createvehicle position player;
		_object setvariable ["droparray", [_amount, _item], true];
		};
	};
call INV_InventarLeeren;
};

if(iscop) then 
{
_amount = ("geld" call INV_GetItemAmount);
	if (_amount > 0) then 
	{
	_object = "EvMoney" createvehicle position player;
	_object setvariable ["droparray", [_amount, "geld"], true];
	["geld", -(_amount)] call INV_AddInvItem;
	};
};
INV_hunger = 5;
deadtimes  = deadtimes + 1;
["deadtimes", deadtimes] spawn ClientSaveVar;

if (isciv) then 
{
	if(waitingforit = 1)exitWith{};
	if(isdead == 0)then{[player, "suicide"] execVM "victim.sqf";};
	waituntil{isdead == 1};
	["isdead", isdead] spawn ClientSaveVar; 
	DeadWaitSec = DeadWaitSec + respawntimeinc;
	if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
	[] execVM "respawncamera.sqf";
	shoveldur=20;
	pickaxedur=50;
	hammerdur=100;
	alreadygotaworkplacejob=0;
	sleep 3; 
	["DeadWaitSec", DeadWaitSec] spawn ClientSaveVar;
	if(call compile format["%1_arrest > 0", player]  )then{format["%1_arrest = 0;", player]   call broadcast;};
	if(call compile format["%1_wanted > 0", player]  )then{format["%1_wanted = 0;", player]   call broadcast;};
	if(call compile format['count %1_reason > 0', player]  )then{format['%1_reason = [];', player]   call broadcast;};
	if(call compile format['count %1_warning > 0', player]  )then{format['%1_warning = [];', player]   call broadcast;};
	if(call compile format["kopfgeld_%1 > 0", player])then{format["kopfgeld_%1 = 0;", player] call broadcast;};
	
	if (ismayor) then
	{
	ismayor=false;
	MayorNumber = -1;
	PUBLICVARIABLE "MayorNumber";
	false call TurnMayorFunc;
	INV_LizenzOwner = INV_LizenzOwner - ["mayorlic"];
	format["civ%1_mayor = 0;", player] call broadcast;
	GesetzArray SET [0, "Always Drive on the LEFT side of the road"]; 
	GesetzArray SET [1, "Always Holster weapons in Towns."]; 
	GesetzArray SET [2, "Speed limits 60 in town 90 out"]; 
	GesetzArray SET [3, "Governor and Guards May have any weapon unlicensed"]; 
	GesetzArray SET [4, "Governor is immune to traffic laws"]; 
	GesetzArray SET [5, "Drugs are illegal"]; 
	GesetzArray SET [6, "Whaling is illegal"]; 
	GesetzArray SET [7, "Hit and Run is illegal and against the rules"]; 
	GesetzArray SET [8, "It is illegal to have hookers in a brothel"]; 
	GesetzArray SET [9, ""]; 
	GesetzArray SET [10, ""]; 
	GesetzArray SET [11, ""]; 
	GesetzArray SET [12, ""]; 
	GesetzArray SET [13, ""]; 
	GesetzArray SET [14, ""]; 
	(INV_ItemTypenArray select 0) SET [2, 5]; 
	(INV_ItemTypenArray select 1) SET [2, 5]; 
	(INV_ItemTypenArray select 2) SET [2, 5]; 
	(INV_ItemTypenArray select 3) SET [2, 5];						
	bank_steuer = 5; 
	title = parsetext "<t size='2'>Breaking News</t><br />The Governor of Emita has died";
	scroll = parsetext "                                                                       For some this is sad news while for others it might be good news. But the Governor of Emita has died and all taxes have been set to default. Also the laws have been changed back to normal."; 
	nul = [title,scroll] spawn BIS_fnc_AAN; 
	sleep 15;
	3000 cuttext ["","plain"];
	};

	sleep respawnzeit - 5;
	removeAllWeapons role;
	hidebody role;
	sleep 5;

	//execVM "actions.sqf";	
	
	waituntil {alive player};
	[] execVM "pistolControl.sqf";
//	[] execVM "rifleControl.sqf";
		
	removeAllWeapons player;
	deleteVehicle role;
	waituntil {deadcam == 0};
	isdead = 0;
	["isdead", isdead] spawn ClientSaveVar; 
		
	if (local_arrest == 0) then 
	{
	_civ = player;
	player addweapon "ItemGPS";
		switch _civ do
		{
		case civ31: {player setpos getmarkerpos "emsspawn";};
		case civ32: {player setpos getmarkerpos "emsspawn";};
		case civ33: {player setpos getmarkerpos "emsspawn";};
		default {player setpos [getmarkerpos "civspawn1" select 0, getmarkerpos "civspawn1" select 1, (getmarkerpos "civspawn1" select 2) +1];};
		};
	}
	else
	{
	(format ["%1 switchmove ""%2"";", player, "civillying01"]) call broadcast; 
	waituntil {animationstate player == "civillying01"};
	["arrest", CivTimeInPrison, player] execVM "civmenu.sqf";
	}; 
};

if (iscop) then
{
	if(waitingforit = 1)exitWith{};
	removeAllWeapons role;
	if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
	[] execVM "respawncamera.sqf";
	sleep (respawnzeit - 5);
	hidebody role;
	sleep 5;
	//execVM "actions.sqf";	
	waitUntil {alive player};
	[] execVM "pistolControl.sqf";
//	[] execVM "rifleControl.sqf";
	deleteVehicle role;	
	isdead = 0; 
   	_civnum = player;
	if (_civnum == cop8) then {player setPos getPos deputyspawn;};
	if (_civnum == cop9) then {player setPos getPos deputyspawn;};
	if (_civnum == cop14) then {player setPos getPos ucspawn;};
	if (_civnum == cop15) then {player setPos getPos ucspawn;};
	if (_civnum == cop16) then {player setPos getPos ucspawn;};
};
INV_Tragfaehigkeit = 60;
["handy", 1] call INV_AddInvItem;
};