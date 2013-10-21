while {true} do
{
	sleep 120;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	["IslandLife", getPlayerUID player, "Account Name", name player] call fn_SaveToServer;
    ["IslandLife", getPlayerUID player, "moneyAccount", Kontostand] call fn_SaveToServer;
	["IslandLife", getPlayerUID player, "Licenses", INV_LizenzOwner] call fn_SaveToServer;

	
	_pistol = (saveWeaponPistol select 0);
	if(isNil "_pistol") then {_pistol = "";};
	_rifle = (saveWeaponRifle select 0);
	if(isNil "_rifle") then {_rifle = "";};
	if(playerSide == west) then
	{
		["IslandLife", getPlayerUID player, "savedVehiclesCop", INV_SavedVehLandCop] call fn_SaveToServer;
		["IslandLife", getPlayerUID player, "Inventorycop", INV_InventarArray] call fn_SaveToServer;
	};
	if(playerSide == resistance) then
	{
		["IslandLife", getPlayerUID player, "savedVehiclesEsu", INV_SavedVehLandEsu] call fn_SaveToServer;
		["IslandLife", getPlayerUID player, "Inventoryesu", INV_InventarArray] call fn_SaveToServer;
	};
	if(playerSide == civilian) then
	{
		["IslandLife", getPlayerUID player, "savedVehiclesCiv", INV_SavedVehLand] call fn_SaveToServer;
		["IslandLife", getPlayerUID player, "savedAircraftCiv", INV_SavedVehicleAir] call fn_SaveToServer;
		["IslandLife", getPlayerUID player, "savedBoatCiv", INV_SavedVehBoat] call fn_SaveToServer;
	    ["IslandLife", getPlayerUID player, "privateStorage", private_storage] call fn_SaveToServer;
		["IslandLife", getPlayerUID player, "Inventoryciv", INV_InventarArray] call fn_SaveToServer;
	};

	player groupChat "Stats Saved To Server!";
};