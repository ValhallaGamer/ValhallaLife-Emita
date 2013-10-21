_ArryLength = count INV_SavedVehBoat;


if(_ArryLength >= 2) then {

player groupChat "You can not save more than 2 boats in storage.";

} else {

_vcl = (nearestobjects [getpos player, ["Ship"], 10] select 0);

_vclClass = typeOf _vcl;

player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVehBoat set [count INV_SavedVehBoat, _vclClass];

player globalchat format ["SAVED ARRAY : %1",INV_SavedVehBoat]; // debug

deleteVehicle _vcl;

player groupChat "Boat Saved Return To The Boat Storage To Retrieve It!";


["INV_SavedVehBoat",INV_SavedVehBoat] spawn clientsavevar;

};