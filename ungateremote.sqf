///////////////////////////////////
////////Copyright © TCG///////////
////www.tcgaming.enjin.com///////
//////////Created By////////////
//////{TCG}Luc_Mathlin/////////
//////////////////////////////

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
player groupchat "Gate Opening, closing in 4 seconds";
sleep 4;
format['un_gate say "ElectricGate";'] call broadcast;
un_gate attachto [un_gate_1, [-7.5,0,-2]];
sleep 0.5;
un_gate attachto [un_gate_1, [-7.5,0,-1.5]];
sleep 0.5;
un_gate attachto [un_gate_1, [-7.5,0,-1]];
sleep 0.5;
un_gate attachto [un_gate_1, [-7.5,0,-0.5]];
sleep 0.5;
un_gate attachto [un_gate_1, [-7.5,0,-0]];
player groupchat "Gate Closed";