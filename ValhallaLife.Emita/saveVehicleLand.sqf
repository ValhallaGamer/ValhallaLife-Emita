_ArryLength = count INV_SavedVehLand;


if(_ArryLength >= 5) then {

player sideChat "You can not save more than 5 Civilian vehicles in storage.";

} else {

_vcl = (nearestobjects [getpos player, ["LandVehicle"], 3] select 0);

_vclClass = typeOf _vcl;

player sideChat format ["VEHICLE ARRAY : %1",_vcl]; // debug


INV_SavedVehLand set [count INV_SavedVehLand, _vclClass];

player sideChat format ["SAVED ARRAY : %1",INV_SavedVehLand]; // debug

deleteVehicle _vcl;

player sideChat "The Vehicle Has Been Saved If you wish to Retrieve It Go To The Vehicle Storage Area!";


["INV_SavedVehicle",INV_SavedVehicle] spawn clientsavevar;

};