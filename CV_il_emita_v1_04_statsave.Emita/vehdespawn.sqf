_art = _this select 0;

if (_art == "CreatedVehicle") then 

{

["respawn", (_this select 1), -1, 120, ""] execVM "vehdespawn.sqf";

};

if ((_art == "respawn") and (isServer)) then 

{

_vcl        = _this select 1; 
_spawnzeit  = _this select 2; 
_deletewait = _this select 3; 	
_vclname    = _this select 4; 
_vcltype    = typeOf(_vcl);
_spawnpos   = getpos(_vcl);
_spawndir   = getdir(_vcl);	
_idlepos    = _spawnpos;
_exit       = false;	
_idle       = 0;
_vcl lock true;

while {alive _vcl and !isnull _vcl} do 

	{
	
	if (_idle >= (INV_inactive_vcl_maxtime*60) and !(_vcl iskindof "air")) then 

		{

		for [{_i=0}, {_i < (count INV_PLAYERSTRINGLIST)}, {_i=_i+1}] do 

			{

			if ((INV_PLAYERSTRINGLIST select _i) call ISSE_UnitExists) then 

				{

				if (((INV_PLAYERLIST select _i) in _vcl) or ((INV_PLAYERLIST select _i) distance _vcl < 50)) then {_idle = (_idle - INV_inactive_vcl_maxtime*10);};

				};

			};

		{if ((_vcl distance (_x select 0)) < (_x select 1)) then {_idle = 0;};} forEach INV_VehicleGaragen;

		if (_idle > (INV_inactive_vcl_maxtime*60)) then {_exit = true;};

		};

	if (_exit) exitWith {};

	sleep 10;
		
	if ( (((_vcl distance _spawnpos) > 20) or (locked _vcl)) and (_vcl distance _idlepos < 150) and (count(crew _vcl) == 0) ) then 

		{

		_idle = _idle + 10;

		} 
		else 
		{

		_idlepos = (getpos _vcl); 
		_idle = 0;

		};

	};

if(isnull _vcl)exitwith{}; 
_everyone = allUnits;
if (({side _x == resistance} count _everyone) > 1) then
{
	if (!alive _vcl and _vcl distance getmarkerpos "civarea" >= 85 and _vcl distance getmarkerpos "swat_1" >= 80 and _vcl distance getmarkerpos "used_cars" >= 15 and _vcl distance getmarkerpos "sheriff_base" >= 100) then
	{
	if(_vcl iskindof "Bicycle" ) exitwith {};
	if(_vcl iskindof "Ship" ) exitwith {};
	"server globalchat ""A Car Fire has started, Firefighter locate the fire and put it out!"";" call broadcast;
	format['firestation say "fire_alarm";'] call broadcast;
	carfire = "Land_Campfire_burning" createVehicle position _vcl;

	_pos = [(position _vcl select 0) + (sin(getdir _vcl)*1), (position _vcl select 1) + (cos(getdir _vcl)*1), 0];
	//carfire = "Land_Campfire_burning" createvehicle [0, 0, 0];
	carfire setdir getdir _vcl;
	carfire setpos _pos;
	carfire setVehicleInit "
	carfire = this; 
	this setVehicleVarName ""carfire"";  
	[this,9,time,false,false] spawn BIS_Effects_Burn;";	
	processinitcommands;
	publicvariable "carfire";
	_smoke = "SmokeShell" createVehicle position carfire;
	while {alive carfire} do {
		_markerobj = createMarker ["carfiremarker",carfire];																				
		_markername = "carfiremarker";																														
		_markerobj setMarkerShape "ICON";								
		"carfiremarker" setMarkerType "Warning";										
		"carfiremarker" setMarkerColor "ColorRed";																														
		"carfiremarker" setMarkerText "Car Fire";
		_random = round random 10;
		sleep _random;
		bomb = "Grenade" createVehicle position carfire;
		if (!alive civ31 and !alive civ32 and !alive civ33) then {{deleteVehicle _x;_deleted = _deleted + 1;} forEach (nearestObjects [firestation,["Land_Campfire_burning"], 5000]);deletemarker "carfiremarker";};
		};
	};
	waitUntil {not alive carfire};
};

call compile format ["if (!(isNil ""%1"")) then {%1 = []; PublicVariable ""%1"";};", format["%1_storage", _vcl]];
_vcl setVehicleInit "";
call compile format["%1 = nil;", _vcl];	
deleteVehicle _vcl; 	

};
