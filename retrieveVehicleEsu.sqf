if (isNil {INV_SavedVehLandEsu select 0}) then {
player sideChat "You do not have any saved vehicles!";

} else {
_rtv = (INV_SavedVehLandEsu select 0) call inv_getitemname;
_rtv1 = (INV_SavedVehLandEsu select 1) call inv_getitemname;
_rtv2 = (INV_SavedVehLandEsu select 2) call inv_getitemname;
_rtv3 = (INV_SavedVehLandEsu select 3) call inv_getitemname;
_rtv4 = (INV_SavedVehLandEsu select 4) call inv_getitemname;
continue = false;
vehicle2Spawn = test;

player removeAction action222;
reTrieve = player addAction [_rtv,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandEsu select 0);',1,true,true,"",'player distance esucarstorage < 15'];
reTrieve1 = player addAction [_rtv1,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandEsu select 1);',1,true,true,"",'player distance esucarstorage < 15'];
reTrieve2 = player addAction [_rtv2,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandEsu select 2);',1,true,true,"",'player distance esucarstorage < 15'];
reTrieve3 = player addAction [_rtv3,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandEsu select 3);',1,true,true,"",'player distance esucarstorage < 15'];
reTrieve4 = player addAction [_rtv4,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehLandEsu select 4);',1,true,true,"",'player distance esucarstorage < 15'];
if(gettingesu == 1)exitWith{"You are getting a vehicle out of storage already..."};
gettingesu = 1;
player sideChat "Select a vehicle from the scroll menu!";

waitUntil {continue};

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
	', player, round(time), INV_CALL_CREATVEHICLE, getPos esuvehicleretrievespawn, getDir _logic];

INV_SavedVehLandEsu = INV_SavedVehLandEsu - [vehicle2Spawn];

server globalChat format ["%1",_v];

["INV_SavedVehLandEsu",INV_SavedVehLandEsu] spawn clientsavevar;

player sideChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

sleep 3;
continue = false;

gettingesu = 0;

};