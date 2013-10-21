///////////////////////////////////
////////Copyright © TCG///////////
////www.tcgaming.enjin.com///////
//////////Created By////////////
//////{TCG}Luc_Mathlin/////////
//////////////////////////////

executive_entrance attachTo [whithouse_1, [3.75,-1,-5]];
sleep 0.5;
executive_gate animate ["GATE_L", 1];
executive_gate animate ["GATE_R", 1];
format['executive_gate say "ElectricGate";'] call broadcast;
player groupchat "Gate closing in 8 seconds";
sleep 8;
executive_gate animate ["GATE_L", 0];
executive_gate animate ["GATE_R", 0];
format['executive_gate say "ElectricGate";'] call broadcast;
player groupchat "Gate Closed";
sleep 1.5;
executive_entrance attachTo [whithouse_1, [3.75,-1,-0.75]];