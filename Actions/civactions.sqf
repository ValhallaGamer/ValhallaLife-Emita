//Modified Intellectual Property of TCG
_role = player;

//========================   HOSTAGE  ================================================
action3 = _role addaction ["Take Hostage Mission","hostage.sqf",["getajob_hostage"],1,false,true,"","player distance hostage <= 3 and isciv"];
action4 = _role addaction ["Take Hostage", "noscript.sqf", "[hostage1] join (group player); player groupchat ""Keep the hostage close or you will fail!"";",1,false,true,"","player distance hostage1 < 5"];
//==================================== GANG MENU ======================================================
action5 = _role addaction ["Gang Menu","maindialogs.sqf",["gangmenu"],1,false,true,"","player distance rathaus <= 3 and isciv"];
//====================================== BANK ROB =====================================================
action6 = _role addaction ["Steal from safe 1","bankrob.sqf", ["ausrauben", safe1, "safe1"],1,false,true,"","Safecracked1 and isciv and player distance Safe1 <= 2"];
action7 = _role addaction ["Crack Safe", "CrackSafe.sqf",["safe1"],1,false,True,"","not SafeCracked1 and isciv and player distance Safe1 <= 2"];
/*
action8 = _role addaction ["Steal from safe 2","bankrob.sqf", ["ausrauben", safe2, "safe2"],1,false,true,"","Safecracked2 and isciv and player distance Safe2 <= 2"];
action9 = _role addaction ["Crack Safe 2", "CrackSafe.sqf",["safe2"],1,false,True,"","not SafeCracked2 and isciv and player distance Safe2 <= 2"];
action10 = _role addaction ["Steal from safe 3","bankrob.sqf", ["ausrauben", safe3, "safe3"],1,false,true,"","Safecracked3 and isciv and player distance Safe3 <= 2"];
action11 = _role addaction ["Crack Safe 3", "CrackSafe.sqf",["safe3"],1,false,True,"","not SafeCracked3 and isciv and player distance Safe3 <= 2"];
*/
//=======================   ADMIN CAMERA ==============================================
action12 = _role addaction ["Admin Spectate","tcgcode.sqf",[1],1,false,true,"","player distance rubblepile <= 3"];
//===================================== ASSASSINATION =================================================
action13 = _role addaction ["Get Assassination job","assassination.sqf",["getajob_assassin"],1,false,true,"","player distance assassin <= 3 and isciv"];
//========================================= HUNTING ===================================================
action15 = _role addaction ["Butcher Boar","noscript.sqf",'_no = ceil(random 7);if (((call INV_GetOwnWeight) + ("boar" call INV_getitemTypeKg)*_no) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};(nearestobjects [getpos player, ["wildboar"],  3] select 0) setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};deletevehicle (nearestobjects [getpos player, ["wildboar"],  3] select 0);["boar", _no] call INV_AddInvItem;player groupchat format["you got %1 boar meat", _no];',1,true,true,"",'_w = (nearestobjects [getpos player, ["wildboar"],  3] select 0) getvariable "inuse"; isnil "_w" and player distance (nearestobjects [getpos player, ["wildboar"],  3] select 0) < 5 and !alive (nearestobjects [getpos player, ["wildboar"],  3] select 0) and isciv'];
action16 = _role addaction ["Butcher Cow","noscript.sqf",'_no = ceil(random 2);if (((call INV_GetOwnWeight) + ("rawcow" call INV_getitemTypeKg)*_no) > INV_Tragfaehigkeit)exitwith{player groupChat localize "STRS_inv_buyitems_maxgewicht"};(nearestobjects [getpos player, ["cow01"],  3] select 0) setvariable ["inuse", 1, true]; player playmove "AinvPknlMstpSlayWrflDnon_medic";sleep 4;waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};deletevehicle (nearestobjects [getpos player, ["cow01"],  3] select 0);["rawcow", _no] call INV_AddInvItem;player groupchat format["you got %1 raw cow meat", _no];',1,true,true,"",'_w = (nearestobjects [getpos player, ["cow01"],  3] select 0) getvariable "inuse"; isnil "_w" and player distance (nearestobjects [getpos player, ["cow01"],  3] select 0) < 5 and !alive (nearestobjects [getpos player, ["cow01"],  3] select 0) and isciv'];
//===================================== TARGET RESET ==================================================
action17 = _role addaction ["Reset Targets","noscript.sqf",'{_x animate["terc",0]} foreach (nearestobjects [getpos player, ["TargetEpopup"],  500])',1,true,true,"",'player distance targetrange1 < 10'];
//===================================== IMPOUND AREA==================================================
action19 = _role addaction ["Impound Lot","maindialogs.sqf",["impound"],1,false,true,"","player distance impoundbuy <= 5"];
//==================================== OBJECT ACTIONS =================================================
action30 = _role addaction ["Open/close gate","noscript.sqf",'_gate = (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0); if(_gate animationPhase "bargate" == 1)then{_gate animate ["bargate", 0]}else{_gate animate ["bargate", 1]};',1,true,true,"",'player distance (nearestobjects [getpos player, ["ZavoraAnim"],  10] select 0) < 7 and isciv'];
//==================================== MAYOR ELECTION =================================================
action45 = _role addaction ["Elect a Governor","maindialogs.sqf",["wahlen"],1,false,true,"","player distance rathaus <= 3"];
//===================================== MAYOR ACTIONS =================================================
action46 = _role addaction ["Change the Law","maindialogs.sqf",["gesetz"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
action47 = _role addaction ["Change taxes","maindialogs.sqf",["steuern"],1,false,true,"","player distance rathaus <= 3 and isMayor"];
//===================================== CONVOY CASH ===================================================
action48 = _role addaction ["Rob Bank Truck","noscript.sqf",'convoyhascash=false; publicvariable "convoyhascash"; _cash = (playersNumber west)*20000; ["geld", _cash] call INV_AddInvItem; player groupchat format["You stole $%1!", _cash];',1,false,true,"","_driver = driver convoytruck; player distance convoytruck <= 7 and convoyhascash and isciv and (!alive _driver or isnull _driver) and (call INV_isArmed)"];
//===================================== BUY INSURANCE ===================================================
//action49 = _role addaction [format["Buy Bank Insurance ($%1)", ("bankversicherung" call INV_getitemBuyCost)],"noscript.sqf",'if("geld" call INV_GetItemAmount < ("bankversicherung" call INV_getitemBuyCost))exitwith{player groupchat "not enough money"};["geld", -("bankversicherung" call INV_getitemBuyCost)] call INV_AddInvItem;["bankversicherung", 1] call INV_AddInvItem;player groupchat format["you bought bank insurance for $%1", ("bankversicherung" call INV_getitemBuyCost)];',1,false,true,"","player distance dmv <= 3"];
//======================================= CRIMELOG ====================================================
action50 = _role addaction ["Crime Log","maindialogs.sqf",["coplog"],1,false,true,"","player distance rathaus <= 3"];
//actionlottery = _role addaction ["Buy lottery Ticket","lottery.sqf","",1,false,true,"","player distance dmv <= 5"];
//==================================== PRIVATE STORAGE ================================================
actionprivate = _role addaction ["<t color=""#55EB0C"">" + ("Private Storage (Saves)") + "</t>","storage.sqf",["private_storage", "save"],1,false,true,"","player distance storage < 8"];
//========================================= BAIL ======================================================	 
//action51 = _role addaction [format ["Pay Bail", slave_cost],"maindialogs.sqf", ["bail"],1,false,true,"","player distance bailflag <= 3 and isciv"];
//===================================== ITEM PROCESS ==================================================	 
action53 = _role addaction ["Process Diamond","itemprocess.sqf",["diamond rock", "diamond", 5, ""],1,false,true,"","player distance diamond_1 <= 5 and isciv"];
action54 = _role addaction ["Process Meth","itemprocess1.sqf",["pharm", "meth", 2, ""],1,false,true,"","player distance methlab <= 5 and isciv"];
action55 = _role addaction ["Process Oil","itemprocess.sqf",["Oil", "OilBarrel", 2, "oil"],1,false,true,"","player distance Oil_1 <= 5 and isciv"];
action56 = _role addaction ["Process Wheat","itemprocess.sqf",["getreide", "Bread", 2, "Baker"],1,false,true,"","player distance bakery <= 5 and isciv"];
action57 = _role addaction ["Process Pumpkin","itemprocess.sqf",["pumpkin", "pumpkinpie", 2, "Baker"],1,false,true,"","player distance bakery <= 5 and isciv"];
//ga1
action58 = _role addaction ["Process LSD","itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsd ga1"],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
action59 = _role addaction ["Process Cocaine","itemprocess.sqf",["Unprocessed_Cocaine", "cocaine", 5, "cocaine ga1"],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
//ga2
action60 = _role addaction ["Process LSD","itemprocess.sqf",["Unprocessed_LSD", "lsd", 5, "lsd ga2"],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
action61 = _role addaction ["Process Heroin","itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga2"],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
//ga3
action62 = _role addaction ["Process Heroin","itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga3"],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
action63 = _role addaction ["Process Marijuana","itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuana ga3"],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
//ga4
action64 = _role addaction ["Process Heroin","itemprocess.sqf",["Unprocessed_Heroin", "heroin", 5, "heroin ga4"],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
action65 = _role addaction ["Process Marijuana","itemprocess.sqf",["Unprocessed_Marijuana", "marijuana", 5, "marijuana ga4"],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
//======================================== WORKERS =====================================================
action66 = _role addaction [format ["Buy Hooker ($%1)", huren_cost],"worker1.sqf", ["holen"],1,false,true,"","(player distance brothela <= 2 or player distance brothel <= 2) and isciv"];
action71 = _role addaction ["Legal Truck Mission","trucking.sqf",[1],1,false,true,"","!cmissionactive2 and !cmissionactive1 and !cmissionactive and isciv and player distance truckshop <=5"];
//action72 = _role addaction ["Illegal Truck Mission","trucking.sqf",[2],1,false,true,"","!cmissionactive2 and !cmissionactive1 and !cmissionactive and isciv and player distance truckshop <=5"];
action73 = _role addaction ["Unload Truck","trucking.sqf",[3],1,false,true,"","cmissionactive1 and isciv and (player distance fuelshop8 <= 10 or player distance fuelshop3 <= 10 or player distance vending2 <= 10 or player distance scarshop9 <= 10 or player distance gunbox2 <= 10)"];
//action74 = _role addaction ["Unload Truck","trucking.sqf",[8],1,false,true,"","cmissionactive1 and isciv and (player distance methsell <= 3 or player distance ldrugsell <= 3 or player distance hdrugsell <= 3 or player distance mdrugsell <= 3 or player distance cdrugsell <= 3)"];
action75 = _role addaction ["Cancel Truck Mission","trucking.sqf",[9],1,false,true,"","cmissionactive or cmissionactive1 or cmissionactive2"];
action76 = _role addaction ["Load Goods","trucking.sqf",[6],1,false,true,"","cmissionactive and isciv and (player distance resourcesell <= 10 or player distance fuelshop2 <= 10 or player distance shop2 <= 10 or player distance scarshop <= 10 or player distance tuning1 <= 10)"];
//action77 = _role addaction ["Load Illegal Goods","trucking.sqf",[7],1,false,true,"","cmissionactive2 and isciv and (player distance resourcesell <= 3 or player distance assassinshop <= 3 or player distance shop4 <= 3 or player distance scarshop4 <= 3 or player distance tuning1 <= 3)"];
//action78 = _role addaction ["Get in Trailer","trucking.sqf",[4],1,true,true,"",'_vcl = (nearestobjects [getpos player, ["cl__mackr","cl_trucktest_mackr","cl_flatbed_mackr"], 5] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
//======================================= TAXI Missions ====================================================
//action80 = _role addaction ["Get courier job","delivery.sqf", ["getajob_delivery"],1,false,true,"","(player distance taxishop <= 5) and isciv"];
//action81 = _role addaction ["Cancel delivery mission","delivery.sqf", ["cancel"],1,false,true,"","(player distance taxishop <= 5) and isciv and alreadygotaworkplacejob == 1"];		
action82 = _role addaction ["Get taxi job","taxi.sqf", ["getajob_taxi"],1,false,true,"","player distance taxishop <= 5 and isciv"];
action83 = _role addaction ["Finish taxi mission","taxi.sqf", ["canceljob_taxi"],1,false,true,"","(player distance taxishop <= 5) and isciv and workplacejob_taxi_active"];	
//====================================== VEHICLE ACTIONS ================================================
action87 = _role addaction ["Pull out","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "pullout.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and count (crew _vcl) > 0 and _vcl in INV_ServerVclArray and (call INV_isArmed)'];
action88 = _role addaction [localize "STRS_addAction_vehicleinfo","noscript.sqf",'(nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0) execVM "vehinfo.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray'];
//======================================== GANG FLAGS ===================================================
action90 = _role addaction ["Neutralise flag","gangflags.sqf",[gangarea1, "neutralise"],1,false,true,"",'_control = gangarea1 getvariable "control";player distance gangarea1 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action91 = _role addaction ["Neutralise flag","gangflags.sqf",[gangarea2, "neutralise"],1,false,true,"",'_control = gangarea2 getvariable "control";player distance gangarea2 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action92 = _role addaction ["Neutralise flag","gangflags.sqf",[gangarea3, "neutralise"],1,false,true,"",'_control = gangarea3 getvariable "control";player distance gangarea3 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action93 = _role addaction ["Neutralise flag","gangflags.sqf",[gangarea4, "neutralise"],1,false,true,"",'_control = gangarea3 getvariable "control";player distance gangarea4 <= 6 and _control != (call INV_mygang) and gangmember and !pickingup'];
action94 = _role addaction ["Capture flag","gangflags.sqf",[gangarea4, "capture"],1,false,true,"",'player distance gangarea4 <= 6 and gangmember and !pickingup and getpos gangarea4 select 2 < 0'];
action95 = _role addaction ["Capture flag","gangflags.sqf",[gangarea1, "capture"],1,false,true,"",'player distance gangarea1 <= 6 and gangmember and !pickingup and getpos gangarea1 select 2 < 0'];
action96 = _role addaction ["Capture flag","gangflags.sqf",[gangarea2, "capture"],1,false,true,"",'player distance gangarea2 <= 6 and gangmember and !pickingup and getpos gangarea2 select 2 < 0'];
action97 = _role addaction ["Capture flag","gangflags.sqf",[gangarea3, "capture"],1,false,true,"",'player distance gangarea3 <= 6 and gangmember and !pickingup and getpos gangarea3 select 2 < 0'];
//======================================= GANG GUNSHOPS ==================================================
_num11  = (gangarea1 call INV_getshopnum);
_num12  = (gangarea2 call INV_getshopnum);
_num13  = (gangarea3 call INV_getshopnum);
_num14  = (gangarea4 call INV_getshopnum);
action104 = _role addaction ["Gang Shop","shopdialogs.sqf",[_num11],1,false,true,"","_control = gangarea1 getvariable ""control"";!isnil ""_control"" and player distance gangarea1 <= 5 and (_control == (call INV_mygang))"];
action105 = _role addaction ["Gang Shop","shopdialogs.sqf",[_num12],1,false,true,"","_control = gangarea2 getvariable ""control"";!isnil ""_control"" and player distance gangarea2 <= 5 and (_control == (call INV_mygang))"];
action106 = _role addaction ["Gang Shop","shopdialogs.sqf",[_num13],1,false,true,"","_control = gangarea3 getvariable ""control"";!isnil ""_control"" and player distance gangarea3 <= 5 and (_control == (call INV_mygang))"];
action107 = _role addaction ["Gang Shop","shopdialogs.sqf",[_num14],1,false,true,"","_control = gangarea4 getvariable ""control"";!isnil ""_control"" and player distance gangarea4 <= 5 and (_control == (call INV_mygang))"];
//===================================== Gas station Robbing===============================================
action108 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 1"],1,false,true,"","isciv and station1money >= 5000 and player distance fuelshop1 <= 2"];
action109 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 2"],1,false,true,"","isciv and station2money >= 5000 and player distance fuelshop2 <= 2"];
action110 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 3"],1,false,true,"","isciv and station3money >= 5000 and player distance fuelshop3 <= 2"];
action111 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 4"],1,false,true,"","isciv and station4money >= 5000 and player distance fuelshop4 <= 2"];
action112 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 5"],1,false,true,"","isciv and station5money >= 5000 and player distance fuelshop5 <= 2"];
action113 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 6"],1,false,true,"","isciv and station6money >= 5000 and player distance fuelshop6 <= 2"];
action114 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 7"],1,false,true,"","isciv and station7money >= 5000 and player distance fuelshop7 <= 2"];
action115 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 8"],1,false,true,"","isciv and station8money >= 5000 and player distance fuelshop8 <= 2"];
action116 = _role addaction ["Rob Gas Station","robthestations.sqf",["station 9"],1,false,true,"","isciv and station9money >= 5000 and player distance fuelshop9 <= 2"];
action117 = _role addaction ["Rob Pharmacy","robpharmacy.sqf",["pharmacy"],1,false,true,"","isciv and pharmmoney >= 5000 and player distance pharmacy <= 2"];
action118 = _role addaction ["Rob Bar","robbar.sqf",["bar"],1,false,true,"","isciv and barmoney >= 5000 and player distance pub1 <= 2"];
action119 = _role addaction ["Rob Bar","robbar.sqf",["bar1"],1,false,true,"","isciv and barmoney1 >= 5000 and player distance pub2 <= 2"];
action120 = _role addaction ["Rob Bar","robbar.sqf",["bar2"],1,false,true,"","isciv and barmoney2 >= 5000 and player distance pub3 <= 2"];
action120a = _role addaction ["Rob Bar","robbar.sqf",["bar3"],1,false,true,"","isciv and barmoney3 >= 5000 and player distance pub4 <= 2"];
//============================ House robbing ===========================
actionhouse1 = _role addaction ["Rob House","robhouse.sqf",["house1"],1,false,true,"","isciv and house1money >= 5000 and player distance house1 <= 2"];
actionhouse2 = _role addaction ["Rob House","robhouse.sqf",["house2"],1,false,true,"","isciv and house2money >= 5000 and player distance house2 <= 2"];
actionhouse3 = _role addaction ["Rob House","robhouse.sqf",["house3"],1,false,true,"","isciv and house3money >= 5000 and player distance house3 <= 2"];
actionhouse4 = _role addaction ["Rob House","robhouse.sqf",["house4"],1,false,true,"","isciv and house4money >= 5000 and player distance house4 <= 2"];
actionhouse5 = _role addaction ["Rob House","robhouse.sqf",["house5"],1,false,true,"","isciv and house5money >= 5000 and player distance house5 <= 2"];
actionhouse6 = _role addaction ["Rob House","robhouse.sqf",["house6"],1,false,true,"","isciv and house6money >= 5000 and player distance house6 <= 2"];
actionhouse7 = _role addaction ["Rob House","robhouse.sqf",["house7"],1,false,true,"","isciv and house7money >= 5000 and player distance house7 <= 2"];
actionhouse8 = _role addaction ["Rob House","robhouse.sqf",["house8"],1,false,true,"","isciv and house8money >= 5000 and player distance house8 <= 2"];
actionhouse9 = _role addaction ["Rob House","robhouse.sqf",["house9"],1,false,true,"","isciv and house9money >= 5000 and player distance house9 <= 2"];
actionhouse10 = _role addaction ["Rob House","robhouse.sqf",["house10"],1,false,true,"","isciv and house10money >= 5000 and player distance house10 <= 2"];
//========================   unflip vehicle     ================================
action122 = _role addaction ["Unflip vehicle","unflipvehicle.sqf",["unflip"],1,false,true,"",'_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_VehicleArray'];
//======================================== Donate shop===================================================
_num15 = (donatebuy call INV_getshopnum);
actiondonate = _role addaction ["Donator Shop","shopdialogs.sqf",[_num15],1,false,true,"","player distance donatebuy <= 5"];
//======================================== UN Compound ===================================================
actionun_3a = _role addaction ["Open Cell #1","un_1_open.sqf",[1],1,false,true,"","player distance unjail <= 3"];
actionun_3b = _role addaction ["Close Cell #1","un_1_close.sqf",[1],1,false,true,"","player distance unjail <= 3"];
actionun_4a = _role addaction ["Open Cell #2","un_2_open.sqf",[1],1,false,true,"","player distance unjail <= 3"];
actionun_4b = _role addaction ["Close Cell #2","un_2_close.sqf",[1],1,false,true,"","player distance unjail <= 3"];
//========================================Real Estate===================================================
actionun_1a = _role addaction ["Collect My Keys","realestate.sqf",[1],1,false,true,"","player distance realestate <= 5"];
//======================================= Save Cars ==============================================================
actionsavecivcar = _role addaction ["<t color=""#55EB0C"">" + ("Save Car") + "</t>","noscript.sqf",'(nearestobjects [getpos player, ["LandVehicle"], 3] select 0) execVM "saveVehicleLand.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["LandVehicle"], 3] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and player distance civcarstorage < 35;'];
actionretrievecivcar = _role addaction ["<t color=""#0095FF"">" + ("Retrieve A Saved Car $5000") + "</t>","retrieveVehicleLand.sqf",[],1,false,true,"","player distance civcarstorage <= 15"];
actionsaveair = _role addaction ["<t color=""#55EB0C"">" + ("Save Aircraft") + "</t>","noscript.sqf",'(nearestobjects [getpos player, ["Air"], 10] select 0) execVM "saveVehicleAir.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Air"], 10] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and player distance civaricraftstorage < 100'];
actionretrieveair = _role addaction ["<t color=""#0095FF"">" + ("Retrieve A Saved Aircraft $10000") + "</t>","retrieveVehicleAir.sqf",[],1,false,true,"","player distance civaricraftstorage <= 15"];
actionsaveboat = _role addaction ["<t color=""#55EB0C"">" + ("Save Boat") + "</t>","noscript.sqf",'(nearestobjects [getpos player, ["Ship"], 10] select 0) execVM "saveVehicleBoat.sqf";',1,true,true,"",'_vcl = (nearestobjects [getpos player, ["Ship"], 10] select 0);player distance _vcl < 5 and _vcl in INV_ServerVclArray and _vcl in INV_VehicleArray and player distance civboatstorage < 100'];
actionretrieveboat = _role addaction ["<t color=""#0095FF"">" + ("Retrieve A Saved Boat $5000") + "</t>","retrieveVehicleBoat.sqf",[],1,false,true,"","player distance civboatstorage <= 15"];
