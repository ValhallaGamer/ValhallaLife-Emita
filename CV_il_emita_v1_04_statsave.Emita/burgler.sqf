_art = _this select 0;

if (_art == "use") then 
{
_item   = _this select 1;
_anzahl = _this select 2;
_closehouse   = dummyobj;
_nearobj = (nearestobjects [getpos player, ["Land_MBG_GER_HUS_1","Land_MBG_GER_HUS_2","Land_MBG_GER_HUS_3","Land_MBG_GER_HUS_4","Land_MBG_GER_RHUS_1","Land_MBG_GER_RHUS_2","Land_MBG_GER_RHUS_3","Land_MBG_GER_RHUS_4","Land_MBG_GER_RHUS_5","Land_MBG_GER_ESTATE_1","Land_MBG_GER_ESTATE_2","Land_vila","Land_build2","Land_build3","Land_build4","Land_build5"], 10] select 0);
_unit = _this;
_dist = 10;
_marker = "";
if (breaking) exitWith {player groupchat "Please Wait"};

	//===Main IL Jail===
	
if ((isciv) and (player distance jaild < 50)) exitwith {
if ((isciv) and (player distance jaild <= 5)) then 
	{
		if (policehq animationPhase "CDoorA" >= 0.5) then 

		{	

		player groupchat "control room door is already open.";

		} else {
	player groupChat "You are attempting to open the control room door";
	(format ['server globalChat "Someone is trying to open the control room door!";']) call broadcast;
	policehq say "alarm1"; callbroadcast;
	if (round(random 100) <= 40) then 
	{
			(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
			breaking = true;
			sleep 8;
			breaking = false;
			player groupChat "You have opened the control room door you have 25 seconds before lockdown is initiated.";
			(format ['server globalChat "Someone has successfully opened the control room door!";']) call broadcast;
			policehq animate ["CDoorA",1]; policehq say "dooropen";		
			(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
			sleep 25;
			policehq animate ["CDoorA",0]; policehq say "dooropen";
			
			
	} 
	else 
	{
			(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
			breaking = true;
			sleep 8;
			breaking = false;
			player groupChat "You have failed lockpicking the control room door.";
			(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	};
	[_item, -1] call INV_AddInvItem;
};

}
else
{
if ((isciv) and (player distance jaild > 5)) exitwith {player groupChat "You are not close enough to the control room computer.";};
};
};

	//===Sherif Jail===
	
if ((isciv) and (player distance countygate < 50)) exitwith {
if ((isciv) and (player distance countygate <= 15)) then 
	{
		if (countygate animationPhase "inngergate" >= 0.5 and countygate animationphase "outergate" >=.5) then 

		{	

		player groupchat "gate is already open.";

		} else {
	player groupChat "You are attempting to open the county prison gate";
	(format ['server globalChat "Someone is trying to open the county prison gate!";']) call broadcast;
	policehq say "alarm1"; callbroadcast;
	if (round(random 100) <= 50) then 
	{
			(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
			breaking = true;
			sleep 8;
			breaking = false;
			player groupChat "You have opened the gate you have 90 seconds before lockdown is initiated.";
			(format ['server globalChat "Someone has successfully opened the county prison gate!";']) call broadcast;
			countygate animate ["innergate",1]; countygate say "fanceopen";
			countygate animate ["outergate",1]; countygate say "fanceopen";	
			(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
			sleep 90;
			countygate animate ["innergate",0]; countygate say "fanceopen";
			countygate animate ["outergate",0]; countygate say "fanceopen";
			
			
	} 
	else 
	{
			(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
			breaking = true;
			sleep 8;
			breaking = false;
			player groupChat "You have failed to open the gate.";
			(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	};
	[_item, -1] call INV_AddInvItem;
};

}
else
{
if ((isciv) and (player distance countygate > 15)) exitwith {player groupChat "You are not close enough to the gate .";};
};
};

	//===UN Compound===

	if (player distance ungate <= 5) then
	{
		if !(round(random 100) <= 75) then
		{
		["burgl", -1] call INV_AddInvItem;
		player groupChat "You are attempting to break the code to the UN Embassy, this will take some time !";
		(format ['server globalChat "Someone is atempting to break the code to the UN Compound !";']) call broadcast;
		(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
		breaking = true;
		sleep 12;
		breaking = false;
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You have managed to break the code to the UN Compound!";
		format["hint ""%1 was seen breaking into the UN Compound!"";", (name player), _marker] call broadcast;
		format['un_gate say "ElectricGate";'] call broadcast;
		un_gate attachto [un_gate_1, [-7.5,0,-0.50]];
		sleep 0.5;
		un_gate attachto [un_gate_1, [-7.5,0,-1]];
		sleep 0.5;
		un_gate attachto [un_gate_1, [-7.5,0,-1.5]];
		sleep 0.5;
		un_gate attachto [un_gate_1, [-7.5,0,-2]];
		sleep 0.5;
		un_gate attachto [un_gate_1, [-7.5,0,-5]];
		sleep 1;
		format['un_gate say "IntruderAlarm";'] call broadcast;
		}
		else
		{
		["burgl", -1] call INV_AddInvItem;
		player groupChat "You are attempting to break the code to the UN Compound, this will take some time !";
		(format ['server globalChat "Someone is atempting to break the code to the UN Compound !";']) call broadcast;
		(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
		breaking = true;
		sleep 12;
		breaking = false;
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You have failed to break the code to the UN Compound !";
		}
	};

	//===Executive Compound===

	if (player distance executive_gate <= 5) then
	{
		if !(round(random 100) <= 75) then
		{
		["burgl", -1] call INV_AddInvItem;
		player groupChat "You are attempting to break the code to the Executive Compound, this will take some time !";
		(format ['server globalChat "Someone is atempting to break the code to the Executive Compound !";']) call broadcast;
		(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
		breaking = true;
		sleep 12;
		breaking = false;
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You have managed to break the code to the Executive Compound!";
		format["hint ""%1 was seen breaking into the Executive Compound!"";", (name player), _marker] call broadcast;
		format['executive_gate say "ElectricGate";'] call broadcast;
		executive_entrance attachTo [whithouse_1, [3.75,-1,-5]];
		sleep 0.5;
		executive_gate animate ["GATE_L", 1];
		executive_gate animate ["GATE_R", 1];
		sleep 1;
		format['executive_gate say "IntruderAlarm";'] call broadcast;
		}
		else
		{
		["burgl", -1] call INV_AddInvItem;
		player groupChat "You are attempting to break the code to the Executive Compound, this will take some time !";
		(format ['server globalChat "Someone is atempting to break the code to the Executive Compound !";']) call broadcast;
		(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
		breaking = true;
		sleep 12;
		breaking = false;
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You have failed to break the code to the Executive Compound !";
		}
	};




{_range = ((getMarkerPos _x) distance (player));
if (_range < _dist) then 
{_dist = _range; _marker = _x;};	
} foreach Homearray;
if (_marker == "") exitwith {player groupchat "You need to be at an occupied house to burglarize it";};
if (player distance getmarkerpos _marker <= 6) exitwith {player groupchat "You need to burglarize outside the house";};
_house = nearestobjects [getpos player,["Land_MBG_GER_HUS_1","Land_MBG_GER_HUS_2","Land_MBG_GER_HUS_3","Land_MBG_GER_HUS_4",
"Land_MBG_GER_RHUS_1","Land_MBG_GER_RHUS_2","Land_MBG_GER_RHUS_3","Land_MBG_GER_RHUS_4","Land_MBG_GER_RHUS_5","Land_MBG_GER_ESTATE_1",
"Land_MBG_GER_ESTATE_2","Land_vila","Land_build2","Land_souvlaki","Land_build3","Land_build4","Land_build5","Land_ekklisia"], 15];
_housename = _house select 0;
				
	if (round(random 100) <= 60) then 
	{	
	(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
	sleep 8;
	player groupChat "You successfully broken into the house";
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	(format['if(!("Burglary" in %1_reason))then{%1_reason = %1_reason + ["Burglary"]}; %1_wanted = 1;kopfgeld_%1 = kopfgeld_%1 + 10000;', player]) call broadcast;
	_housename animate ["FrontDoor",1];
	_housename animate ["door_button1",1];
	} 
	else 
	{
	(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
	sleep 3;
	format['_house say "IntruderAlarm";'] call broadcast;
	sleep 3;
	player groupChat "You have set off the alarm, you might think of leaving soon";
	(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
	format["hint ""%1 was seen attempting to break into %2 house!"";", (name player), _marker] call broadcast;
	(format['if(!("AttemptedBurglary" in %1_reason))then{%1_reason = %1_reason + ["Attempted Burglary"]}; %1_wanted = 1;kopfgeld_%1 = kopfgeld_%1 + 5000;', player]) call broadcast;
	};
	[_item, -1] call INV_AddInvItem;
};










	
