_ArryLength = count INV_SavedVehLandEsu;


if(_ArryLength >= 5) then {

	player sideChat "You can not save more than 5 Esu vehicles in storage.";

} else {

	_vcl = (nearestObjects [getPos player, ["Air", "Ship", "LandVehicle"], 3] select 0);

	_vclClass = typeOf _vcl;

	player sideChat format ["VEHICLE ARRAY : %1",_vcl]; // debug


	INV_SavedVehLandEsu set [count INV_SavedVehLandEsu, _vclClass];

	player sideChat format ["SAVED ARRAY : %1",INV_SavedVehLandEsu]; // debug


	player sideChat "Vehicle Saved Return To The Esu Vehicle Storage As A Esu To Retrieve It!";
	
	deleteVehicle _vcl;

	["INV_SavedVehLandEsu",INV_SavedVehLandEsu] spawn clientsavevar;
};