
_arsonist = name player;
_height = getPosASL player;

_everyone = allUnits;
if (({side _x == resistance} count _everyone) < 2) exitWith {player groupChat "There are no Firefighters online, you cannot start a fire!"};
if (player distance getmarkerpos "civarea" <= 100) exitWith {player groupChat "You are to close to Civ spawn to start a fire!"};
if (player distance getmarkerpos "used_cars" <= 20) exitWith {player groupChat "You are to close to Used Cars to start a fire!"};
if (player distance getmarkerpos "swat_1" <= 80 or player distance getmarkerpos "sheriff_base" <= 100) exitWith {player groupChat "You are to close to the Police station to start a fire!"};
if (player distance getmarkerpos "emsspawn" <= 50) exitWith {player groupChat "You are to close to the Fire Station to start a fire!"};


['firestarter', -1] call INV_AddInventoryItem;

player groupChat "You started a fire, leave the area before you get caught in it!";

arsonarray = arsonarray + [[_arsonist]];
publicVariable "arsonarray";
["arsonarray", arsonarray] spawn ClientSaveVar;

_pos = [(position player select 0) + (sin(getdir player)*2), (position player select 1) + (cos(getdir player)*2), 0];
arsonfire2 = "Land_Fire_burning" createvehicle [0, 0, 0];
arsonfire2 setdir getdir player;
arsonfire2 setpos _pos;
arsonfire2 setPosASL [ getPosASL player select 0, (getPosASL player select 1), getPosASL player select 2];
arsonfire2 setVehicleInit "
arsonfire2 = this; 
this setVehicleVarName ""arsonfire2"";  
[this,12,time,false,false] spawn BIS_Effects_Burn;";	
processinitcommands;
publicvariable "arsonfire2";

_pos2 = [(position player select 0) + (sin(getdir player)*2), (position player select 1) + (cos(getdir player)*2), 0];
_obj2 = "Land_Canister_EP1" createvehicle [0, 0, 0];
_obj2 setdir getdir player;
_obj2 setpos _pos2;
_obj2 setPosASL [ getPosASL player select 0, (getPosASL player select 1), getPosASL player select 2];

_smoke = "SmokeShell" createVehicle position arsonfire2;
_smoke setPosASL [ getPosASL player select 0, getPosASL player select 1, (getPosASL player select 2) + 0];

sleep 5;

"server globalchat ""Someone started a fire, Firefighters need to put it out and cops need to investigate it!"";" call broadcast;
format['firestation say "fire_alarm";'] call broadcast;

while {alive arsonfire2} do {
_markerobj = createMarker ["arsonfiremarker",position arsonfire2];																				
_markername = "arsonfiremarker";																														
_markerobj setMarkerShape "ICON";								
"arsonfiremarker" setMarkerType "Warning";										
"arsonfiremarker" setMarkerColor "ColorRed";																														
"arsonfiremarker" setMarkerText "Arsonist Fire";	
_numbah = round random 20;
_random = round random 100;
_new1 = round random 8;
_new2 = round random 8;
if (not alive _smoke) then {_smoke = "SmokeShell" createVehicle position arsonfire2;_smoke setPosASL [ getPosASL arsonfire2 select 0, (getPosASL arsonfire2 select 1), getPosASL arsonfire2 select 2];};
sleep (_numbah);
bomb = "Grenade" createVehicle position arsonfire2;
if (_random >=95) then {fire2 = "Land_Fire_burning" createVehicle position arsonfire2; fire2 setPos [(getPos arsonfire2 select 0) + _new1, (getPos arsonfire2 select 1) + _new2, 0];_smoke2 = "SmokeShell" createVehicle position fire2;};
if (!alive civ31 and !alive civ32 and !alive civ33) then {{deleteVehicle _x;_deleted = _deleted + 1;} forEach (nearestObjects [firestation,["Land_Fire_burning"], 5000]);deletemarker "arsonfiremarker";};

};

