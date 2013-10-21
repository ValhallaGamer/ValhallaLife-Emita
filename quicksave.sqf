	if(quicksave == 1)exitwith{player sideChat "You cannot Quick Save at this time, try again later.";};
	if(!alive player) exitWith {player groupChat "You Cannot Save Stats while dead."};
	quicksave = 1;
	private["_display","_btnAbort"];
	disableSerialization;
	waitUntil {
		_display = findDisplay 49;
		!isNull _display;
	};
	_btnAbort = _display displayCtrl 104;
	_btnAbort ctrlEnable false;
    player groupChat "YOUR STATS ARE QUICK SAVING... DO NOT DISCONECT UNTIL QUICK SAVE HAS FINISHED!!!";
    sleep 10;
	
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
	
	sleep 2;
    _btnAbort ctrlEnable true;
    player sideChat "Your Stats have been saved! You may now disconect You Cannot Quick save for another 5 minutes.";
	sleep 300;
	sleep 1;
	player sideChat "Saving Available!";
	sleep 1;
	quicksave = 0;
	