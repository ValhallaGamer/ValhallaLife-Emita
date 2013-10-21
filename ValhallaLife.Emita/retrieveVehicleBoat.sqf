if (isNil {INV_SavedVehBoat select 0}) then {
player sideChat "You do not have any saved boats!";

} else {
_geld = "geld" call INV_getitemamount;

if(_geld < 5000)exitwith{player groupchat "you do not have enough money to get a boat out of storage."};
_rtv = (INV_SavedVehBoat select 0) call inv_getitemname;
_rtv1 = (INV_SavedVehBoat select 1) call inv_getitemname;

continue = false;
vehicle2Spawn = test;

player removeAction action222;
player removeAction action224;
reTrieve = player addaction [_rtv,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehBoat select 0);',1,true,true,"",'player distance civboatstorage < 15'];
reTrieve1 = player addaction [_rtv1,"noscript.sqf",'continue = true; vehicle2Spawn = (INV_SavedVehBoat select 1);',1,true,true,"",'player distance civboatstorage < 15'];
if(gettingboat == 1)exitWith{"You are getting a vehicle out of storage already..."};
gettingboat = 1;

player sideChat "Select a boat from the scroll menu!";

waituntil {continue};
["geld", -5000] call INV_AddInvItem;
player sideChat "You paid $5000 to get your boat out of storage!";
player removeAction reTrieve;
player removeAction reTrieve1;

player sideChat "RETRIEVING BOAT IN 3...";
sleep 1;
player sideChat "RETRIEVING BOAT IN 2...";
sleep 1;
player sideChat "RETRIEVING BOAT IN 1...";
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
	', player, round(time), INV_CALL_CREATVEHICLE, getpos civboatretrievespawn, getdir _logic];

INV_SavedVehBoat = INV_SavedVehBoat - [vehicle2Spawn];

server sidechat format ["%1",_v];

["INV_SavedVehBoat",INV_SavedVehBoat] spawn clientsavevar;

player sideChat format ["RETRIEVED %1",vehicle2spawn call inv_getitemname];

sleep 3;
continue = false;

action222 = player addaction ["Retrieve Saved Boat","RetrieveVehicleBoat.sqf",[],1,false,true,"","player distance BoatSavePoint <= 3"];
gettingboat = 0;
};