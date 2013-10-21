if (isNil {INV_SavedVehLand select 0}) then {
player sideChat "You do not have any saved vehicles!";

} else {
_geld = "geld" call INV_getitemamount;

if(_geld < 5000)exitwith{player groupchat "you do not have enough money to get a car out of storage."};
_rtv = (INV_SavedVehLand select 0) call inv_getitemname;
_rtv1 = (INV_SavedVehLand select 1) call inv_getitemname;
_rtv2 = (INV_SavedVehLand select 2) call inv_getitemname;
_rtv3 = (INV_SavedVehLand select 3) call inv_getitemname;
_rtv4 = (INV_SavedVehLand select 4) call inv_getitemname;

continue = false;
vehicle2spawn = test;

player removeAction action222;
player removeAction action226;
reTrieve = player addaction [_rtv,"noscript.sqf",'continue = true; vehicle2spawn = (INV_SavedVehLand select 0);',1,true,true,"",'player distance civcarstorage < 15'];
reTrieve1 = player addaction [_rtv1,"noscript.sqf",'continue = true; vehicle2spawn = (INV_SavedVehLand select 1);',1,true,true,"",'player distance civcarstorage < 15'];
reTrieve2 = player addaction [_rtv2,"noscript.sqf",'continue = true; vehicle2spawn = (INV_SavedVehLand select 2);',1,true,true,"",'player distance civcarstorage < 15'];
reTrieve3 = player addaction [_rtv3,"noscript.sqf",'continue = true; vehicle2spawn = (INV_SavedVehLand select 3);',1,true,true,"",'player distance civcarstorage < 15'];
reTrieve4 = player addaction [_rtv4,"noscript.sqf",'continue = true; vehicle2spawn = (INV_SavedVehLand select 4);',1,true,true,"",'player distance civcarstorage < 15'];
if(gettingland == 1)exitWith{"You are getting a vehicle out of storage already..."};
gettingland = 1;
player sideChat "Select a vehicle from the scroll menu!";

waituntil {continue};
["geld", -5000] call INV_AddInvItem;
player sideChat "You paid $5000 to get your vehicle out of storage!";
player removeAction reTrieve;
player removeAction reTrieve1;
player removeAction reTrieve2;
player removeAction reTrieve3;
player removeAction reTrieve4;


player sideChat "RETRIEVING VEHICLE IN 3...";
sleep 1;
player sideChat "RETRIEVING VEHICLE IN 2...";
sleep 1;
player sideChat "RETRIEVING VEHICLE IN 1...";
sleep 1;

_v = format ["vehicle_%1_%2",player,round(time)];

	call compile format ['

	newvehicle = vehicle2spawn createVehicle %4; 
	newvehicle setVehicleInit "
	this setVehicleVarName ""vehicle_%1_%2""; 
	vehicle_%1_%2 = this; 
	clearWeaponCargo this; 
	clearMagazineCargo this;
	newvehicle lock true;
	"; 
	processInitCommands;
	INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
	"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
	', player, round(time), INV_CALL_CREATVEHICLE, getpos vehicleretrievespawn, getdir _logic];

INV_SavedVehLand = INV_SavedVehLand - [vehicle2spawn];

server globalchat format ["%1",_v];

["INV_SavedVehLand",INV_SavedVehLand] spawn clientsavevar;

player sideChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

sleep 3;
continue = false;
gettinglandair = 0;
};