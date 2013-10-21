///////////////////////////////////
////////Copyright © TCG///////////
////www.tcgaming.enjin.com///////
//////////Created By////////////
//////{TCG}Luc_Mathlin/////////
//////////////////////////////

_art = _this select 0;

if (_art == "use") then {

if (codeing) exitWith {player groupchat "We cant break in any faster captin, im giving her all shes got !"};

if (player distance ungate <= 5 or player distance executive_gate <= 5) then {

	//===UN Compound===
	if (player distance ungate <= 5) then
	{	
		if !(round(random 100) <= 40) then
		{
		["codebreaker", -1] call INV_AddInvItem;
		player groupChat "You are attempting to break the code to the UN Embassy, this will take some time !";
		(format ['server globalChat "Cops are attempting to break the code of the UN Embassy gate !";']) call broadcast;
		(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
		codeing = true;
		sleep 12;
		codeing = false;
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You have managed to break the code to the UN Embassy !";
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
		}
		else
		{
		["codebreaker", -1] call INV_AddInvItem;
		player groupChat "You are attempting to break the code to the UN Embassy, this will take some time !";
		(format ['server globalChat "Cops are atempting to break the code of the UN Embassy gate !";']) call broadcast;
		(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
		codeing = true;
		sleep 12;
		codeing = false;
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You have failed to break the code to the UN Embassy !";
		}
	};
	
	//===Executive Compound===
	if (player distance executive_gate <= 5) then
	{
		if !(round(random 100) <= 40) then
		{
		["codebreaker", -1] call INV_AddInvItem;
		player groupChat "You are attempting to break the code to the Executive Compound, this will take some time !";
		(format ['server globalChat "Cops are atempting to break the code to the Executive Compound !";']) call broadcast;
		(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
		codeing = true;
		sleep 12;
		codeing = false;
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You have managed to break the code to the Executive Compound!";
		format['executive_gate say "ElectricGate";'] call broadcast;
		executive_entrance attachTo [whithouse_1, [3.75,-1,-5]];
		sleep 0.5;
		executive_gate animate ["GATE_L", 1];
		executive_gate animate ["GATE_R", 1];
		}
		else
		{
		["codebreaker", -1] call INV_AddInvItem;
		player groupChat "You are attempting to break the code to the Executive Compound, this will take some time !";
		(format ['server globalChat "Cops are atempting to break the code of the Executive Compound !";']) call broadcast;
		(format ["%1 switchmove ""%2"";", player, "repairingkneel"]) call broadcast;
		codeing = true;
		sleep 12;
		codeing = false;
		(format ["%1 switchmove ""%2"";", player, ""]) call broadcast;
		player groupChat "You have failed to break the code to the Executive Compound !";
		}
	};
}
else
{
player groupchat "You are too far away from something that can be cracked";
};
};