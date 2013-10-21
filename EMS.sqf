private ["_unit"];
_unit = player;
_randomems = round random 100;
_nearestarsonfire = (nearestobjects [getpos player, ["Land_Fire_burning"], 15] select 0);
_nearestcarfire = (nearestobjects [getpos player, ["Land_Campfire_burning"], 15] select 0);
if (_randomems >= 95) then
{
if (player distance _nearestcarfire < 15) then 
{
{deleteVehicle _x;_deleted = _deleted + 1;} forEach (nearestObjects [player,["Land_Campfire_burning"], 15]);
deleteMarker "carfiremarker";
deleteVehicle _smoke;
['geld', 1500] call INV_AddInvItem;
player groupChat "You have been paid $1500 for putting out a Car Fire";
"server globalchat ""A Car Fire has been put out!"";" call broadcast;
};
if (player distance _nearestarsonfire < 15) then
{
{deleteVehicle _x;_deleted = _deleted + 1;} forEach (nearestObjects [player,["Land_Fire_burning"], 15]);
deleteMarker "arsonfiremarker";
deleteVehicle _smoke;
['geld', 1500] call INV_AddInvItem;
player groupChat "You have been paid $1500 for putting out an Arsonist Fire";
"server globalchat ""An Arsonist fire has been put out"";" call broadcast;
};
};
sleep 2;
exit;

