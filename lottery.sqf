lotteryplayer  =  name vehicle player;


if ("geld" call INV_GetItemAmount < 5000) then
{
	player sideChat"You need more money to buy a lottery ticket.";
}
else
{
	["geld", -5000] call INV_AddInvItem;
	player sideChat "You bought a lottery ticket for $5000 you can buy more to increase your chance of winning.";
	lotteryarray = lotteryarray + [[lotteryplayer]];
	publicVariable "lotteryarray";
	["lotteryarray", lotteryarray] spawn ClientSaveVar;
	lotterymoney = lotterymoney + 5000;
	publicVariable "lotterymoney";
};
