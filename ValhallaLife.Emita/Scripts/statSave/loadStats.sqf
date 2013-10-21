//===========================================================================
_loadFromDBClient =
"
	_array = _this;
	_uid = _array select 0;
	if((getPlayerUID player) != _uid) exitWith {};
	_varName = _array select 1;
	_varValue = _array select 2;
	if(isNil '_varValue') exitWith {};
	if(_varName == 'moneyPlayer') then {Geld = _varValue;};
	if(_varName == 'moneyAccount') then {Kontostand = _varValue;};
	if(_varName == 'Licenses') then {INV_LizenzOwner = _varValue;};	

	
	if(playerSide == west) then
	{
		if(_varName == 'savedVehiclesCop') then {INV_SavedVehLandCop = _varValue;};	
		if(_varName == 'Inventorycop') then {INV_InventarArray = _varValue;};
	};
	if(playerSide == civilian) then
	{
		if(_varName == 'savedVehiclesCiv') then {INV_SavedVehLand = _varValue;};
		if(_varName == 'savedAircraftCiv') then {INV_SavedVehicleAir = _varValue;};
		if(_varName == 'INV_SavedVehBoat') then {INV_SavedVehBoat = _varValue;};
	    if(_varName == 'privateStorage') then {private_storage = _varValue;};
		if(_varName == 'Inventoryciv') then {INV_InventarArray = _varValue;};
	};
	if(playerSide == resistance) then
	{
	if(_varName == 'savedVehiclesEsu') then {INV_SavedVehLandEsu = _varValue;};
	if(_varName == 'Inventoryesu') then {INV_InventarArray = _varValue;};	
	};
";

loadFromDBClient = compile _loadFromDBClient;
//===========================================================================
_sendToServer =
"
	accountToServerLoad = _this;
	publicVariableServer 'accountToServerLoad';
";

sendToServer = compile _sendToServer;
//===========================================================================
"accountToClient" addPublicVariableEventHandler 
{
	(_this select 1) spawn loadFromDBClient;
};
//===========================================================================

statFunctionsLoaded = 1;



