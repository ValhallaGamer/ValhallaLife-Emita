_selection = ((_this select 3) select 0);
_Diamond = round random 6;


if (_selection == "house1") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house1money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house1money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0001";']) call broadcast;
house1money = 0;
publicvariable "house1money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse1 animate ["FrontDoor",0];
robhouse1 animate ["door_button1",0];


};

if (_selection == "house2") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house2money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house2money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0002";']) call broadcast;
player sidechat format ["You stole $%1 from the house!", house2money];
house2money = 0;
publicvariable "house2money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse2 animate ["FrontDoor",0];
robhouse2 animate ["door_button1",0];


};

if (_selection == "house3") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house3money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house3money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0003";']) call broadcast;
house3money = 0;
publicvariable "house3money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse3 animate ["FrontDoor",0];
robhouse3 animate ["door_button1",0];


};

if (_selection == "house4") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house4money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house4money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0004";']) call broadcast;
house4money = 0;
publicvariable "house4money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse4 animate ["FrontDoor",0];
robhouse4 animate ["door_button1",0];


};

if (_selection == "house5") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house5money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house5money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0005";']) call broadcast;
house5money = 0;
publicvariable "house5money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse5 animate ["FrontDoor",0];
robhouse5 animate ["door_button1",0];


};

if (_selection == "house6") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house6money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house6money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0006";']) call broadcast;
house6money = 0;
publicvariable "house6money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse6 animate ["FrontDoor",0];
robhouse6 animate ["door_button1",0];


};

if (_selection == "house7") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house7money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house7money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0007";']) call broadcast;
house7money = 0;
publicvariable "house7money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse7 animate ["FrontDoor",0];
robhouse7 animate ["door_button1",0];


};

if (_selection == "house8") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house8money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house8money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0008";']) call broadcast;
house8money = 0;
publicvariable "house8money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse8 animate ["FrontDoor",0];
robhouse8 animate ["door_button1",0];


};

if (_selection == "house9") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house9money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house9money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0009";']) call broadcast;
house9money = 0;
publicvariable "house9money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse9 animate ["FrontDoor",0];
robhouse9 animate ["door_button1",0];


};

if (_selection == "house10") then
{
if (!(call INV_isArmed)) exitwith
	{
	player groupchat "You need a gun to rob the house!";
	};
	
(format['if(!("Robbed a house" in %1_reason))then{%1_reason = %1_reason + ["Robbed house"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + wantedamountforrobbinghouse;', player]) call broadcast;
(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
['geld', house10money] call INV_AddInvItem;
['Diamond', _diamond] call INV_AddInvItem;
player sidechat format ["You found $%1 and %2 Diamond in the house, It will take a minute to put it in a bag!", house10money,_Diamond];
(format ['server globalchat "Someone is Robbing House 0010";']) call broadcast;
house10money = 0;
publicvariable "house10money";
sleep 30;
(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
sleep 60;
robhouse10 animate ["FrontDoor",0];
robhouse10 animate ["door_button1",0];


};