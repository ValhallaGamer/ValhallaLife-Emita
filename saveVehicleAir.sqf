_ArryLength = count INV_SavedVehicleAir;


if(_ArryLength >= 2) then {

player groupChat "You can not save more than 2 aircraft in storage.";

} else {

_vcl = (nearestobjects [getpos player, ["Air"], 10] select 0);

_vclClass = typeOf _vcl;

player globalchat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVehicleAir set [count INV_SavedVehicleAir, _vclClass];

player globalchat format ["SAVED ARRAY : %1",INV_SavedVehicleAir]; // debug

deleteVehicle _vcl;

player groupChat "Aircraft Saved Return To The Aircraft Storage To Retrieve It!";


["INV_SavedVehicleAir",INV_SavedVehicleAir] spawn clientsavevar;

};