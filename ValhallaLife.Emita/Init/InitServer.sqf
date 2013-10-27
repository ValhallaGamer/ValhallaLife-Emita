////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////
["serverloop1"] execVM "servermissionfile\commonloop.sqf";
[0, 0, 0, ["serverloop"]] execVM "mayor.sqf";
[0, 0, 0, ["serverloop"]] execVM "chief.sqf";
[0, 0, 0, ["serverloop"]] execVM "gangs.sqf";
[] execVM "servermissionfile\druguse.sqf";
[] execVM "servermissionfile\robpool.sqf";
[] execVM "servermissionfile\hunting.sqf";
[] execVM "servermissionfile\governmentconvoy.sqf";
["mem"] execVM "servermissionfile\members.sqf";
//[] execVM "servermissionfile\SCFire2.sqf";
//[] execVM "servermissionfile\lights.sqf";
//[] execVM "servermissionfile\blackmarket.sqf";
//=======================rob gas station init and variables================
[] execVM "stationrobloop.sqf";
station1money = 5000;
publicvariable "station1money";
station2money = 5000;
publicvariable "station2money";
station3money = 5000;
publicvariable "station3money";
station4money = 5000;
publicvariable "station4money";
station5money = 5000;
publicvariable "station5money";
station6money = 5000;
publicvariable "station6money";
station7money = 5000;
publicvariable "station7money";
station8money = 5000;
publicvariable "station8money";
station9money = 5000;
publicvariable "station9money";
pharmmoney = 5000;
publicvariable "pharmmoney";
barmoney = 5000;
publicvariable "barmoney";
barmoney1 = 5000;
publicvariable "barmoney1";
barmoney2 = 5000;
publicvariable "barmoney2";
barmoney3 = 5000;
publicvariable "barmoney3";
//=================== Rob House variables ======================
house1money = 2000;
publicvariable "house1money";
house2money = 2000;
publicvariable "house2money";
house3money = 2000;
publicvariable "house3money";
house4money = 2000;
publicvariable "house4money";
house5money = 2000;
publicvariable "house5money";
house6money = 2000;
publicvariable "house6money";
house7money = 2000;
publicvariable "house7money";
house8money = 2000;
publicvariable "house8money";
house9money = 2000;
publicvariable "house9money";
house10money = 2000;
publicvariable "house10money";