lotterywinner = lotteryarray select floor(random(count lotteryarray));

sleep 5;

while {true} do
{
	sleep 10;
	server globalchat format ["A Lottery winner will be picked in 10 seconds"] call broadcast;
	sleep 10;
	server globalChat format ["The Lottery has been drawn and the winner is %1. They have won $%2", lotterywinner, lotterymoney] call broadcast;
	sleep 1;
	lotteryarray = [];
	publicvariable "lotteryarray";
	["lotteryarray", lotteryarray] spawn ClientSaveVar;
	lotterymoney = 0;
	publicvariable "lotterymoney";
	["lotterymoney", lotterymoney] spawn ClientSaveVar;
};
