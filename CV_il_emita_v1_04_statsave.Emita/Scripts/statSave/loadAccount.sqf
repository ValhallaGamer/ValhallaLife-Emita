sleep 1;
//Requests info from server in order to download stats
["IslandLife", getPlayerUID player, "moneyPlayer", "NUMBER"] call sendToServer;
["IslandLife", getPlayerUID player, "moneyAccount", "NUMBER"] call sendToServer;
["IslandLife", getPlayerUID player, "Licenses", "ARRAY"] call sendToServer;


if(playerSide == west) then
{
	["IslandLife", getPlayerUID player, "SavedVehiclesCop", "ARRAY"] call sendToServer;
	["IslandLife", getPlayerUID player, "Inventorycop", "ARRAY"] call sendToServer;
};
if(playerSide == resistance) then
{
	["IslandLife", getPlayerUID player, "SavedVehiclesEsu", "ARRAY"] call sendToServer;
	["IslandLife", getPlayerUID player, "Inventoryesu", "ARRAY"] call sendToServer;
};
if(playerSide == civilian) then
{
	["IslandLife", getPlayerUID player, "savedVehiclesCiv", "ARRAY"] call sendToServer;
	["IslandLife", getPlayerUID player, "savedAircraftCiv", "ARRAY"] call sendToServer;
	["IslandLife", getPlayerUID player, "savedBoatCiv", "ARRAY"] call sendToServer;
    ["IslandLife", getPlayerUID player, "privateStorage", "ARRAY"] call sendToServer;
	["IslandLife", getPlayerUID player, "Inventoryciv", "ARRAY"] call sendToServer;
};
statsLoaded = 1;
statsAreLoadedForReal = true;
//===========================================================================


/*
//END
statsLoaded = 1;
titleText ["","BLACK IN",1];
4 fadeMusic 0;
sleep 4;
playMusic "";
sleep 10;
1 fadeMusic 1;
*/