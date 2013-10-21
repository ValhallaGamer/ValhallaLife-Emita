////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////


if(isServer)then

{

INV_itemstocks = 

[
//fuel shop fs
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//vending fs2
-1,
//shop is
-1,
-1,
-1,
//bail flag cf
-1,
//pub
-1,
-1,
-1,
-1,
//gundealer1 gss
-1,
//assassinshop ass
-1,
//mayor guns mgs
-1,
//equipment es
-1,
//gocart shop gc
-1,
//tuning1 cu
-1,
//carshop1 cs1
-1,
//carshop2 cs2
-1,
//scarshop sc1-sc9
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//tahoeshop1 tahoe
-1,
//pickupshop1 ps
-1,
//taxishop tx
-1,
//bikeshop mbs
-1,
//bikeshop1 qbs
-1,
//bikeshop2 qbss
-1,
//truckshop ts
-1,
//struckshop sts
-1,
//airshop as
-1,
//airshop2 assa
-1,
//airshop3 asc
-1,
//airshop4 assa
-1,
//scubashop sb
-1,
//boat shop bs
-1,
-1,
-1,
//copboatshop cb
-1,
//tboatshop1 bt
-1,
//diamond js
-1,
//insure ins
-1,
//tdoc td
-1,
//resourcesell rs
-1,
//cheeseburger gds
-1,
//workplace_getjobflag_4 gds1
-1,
//workplace_getjobflag_6 gds3
-1,
//oilsell os
-1,
//whalesell ws
-1,
//terrorbox terrorshop
-1,
//shadyd shady
-1,
//gangarea gangshop_buy
-1,
-1,
-1,
-1,
//cdrugsell dsc
-1,
//mdrugsell dsm
-1,
//ldrugsell dsl
-1,
//hdrugsell dsh
-1,
//methsell msc
-1,
//pharmacy psc
-1,
//copair ca
-1,
//copcar cv
-1,
//copcar1 cv1
-1,
//copbasic copshop
-1,
//coppatrol copshop_patrol
-1,
//copsheriff copshop
-1,
//copswat chopshop_sobr
-1,
//copbasic2 copshop2
-1,
//copswatcars swatcarshop
-1,
//coptraffic trafficshop
-1,
//coptrafficcars trafficcars
-1,
//copvicecars vicecars
-1,
//copk8cars k9cars
-1,
//donatebuy donate
-1,
//marketsoldier blackmarket
-1

];

publicvariable "INV_itemstocks";

};

INV_itemmaxstocks = 

[
//fuel shop fs
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//vending fs2
-1,
//shop is
-1,
-1,
-1,
//bail flag cf
-1,
//pub
-1,
-1,
-1,
-1,
//gundealer1 gss
-1,
//assassinshop ass
-1,
//mayor guns mgs
-1,
//equipment es
-1,
//gocart shop gc
-1,
//tuning1 cu
-1,
//carshop1 cs1
-1,
//carshop2 cs2
-1,
//scarshop sc1-sc9
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
-1,
//tahoeshop1 tahoe
-1,
//pickupshop1 ps
-1,
//taxishop tx
-1,
//bikeshop mbs
-1,
//bikeshop1 qbs
-1,
//bikeshop2 qbss
-1,
//truckshop ts
-1,
//struckshop sts
-1,
//airshop as
-1,
//airshop2 assa
-1,
//airshop3 asc
-1,
//airshop4 assa
-1,
//scubashop sb
-1,
//boat shop bs
-1,
-1,
-1,
//copboatshop cb
-1,
//tboatshop1 bt
-1,
//diamond js
-1,
//insure ins
-1,
//tdoc td
-1,
//resourcesell rs
-1,
//cheeseburger gds
-1,
//workplace_getjobflag_4 gds1
-1,
//workplace_getjobflag_6 gds3
-1,
//oilsell os
-1,
//whalesell ws
-1,
//terrorbox terrorshop
-1,
//shadyd shady
-1,
//gangarea gangshop_buy
-1,
-1,
-1,
-1,
//cdrugsell dsc
-1,
//mdrugsell dsm
-1,
//ldrugsell dsl
-1,
//hdrugsell dsh
-1,
//methsell msc
-1,
//pharmacy psc
-1,
//copair ca
-1,
//copcar cv
-1,
//copcar1 cv1
-1,
//copbasic copshop
-1,
//coppatrol copshop_
-1,
//copsheriff copshop
-1,
//copswat chopshop_sobr
-1,
//copbasic2 copshop2
-1,
//copswatcars swatcarshop
-1,
//coptraffic trafficshop
-1,
//coptrafficcars trafficcars
-1,
//copvicecars vicecars
-1,
//copk8cars k9cars
-1,
//donatebuy donate
-1,
//marketsoldier blackmarket
-1

];

// Shop items

_emptyshop = [];
//Fuel Shop
_fs = ["Fuelline","reparaturkit","tcgmp","doshd","bjerk","wulf"];
_fs2 =["rawcow","boar","Huntingrifle","5x_22_LR_17_HMR","MBG_Compound_Bow","MBG_Arrow_N","JoC_Flitsche","JoC_FlitschMag","tcg_remington","tcg_mossberg","tcg_combat","Saiga12K","LeeEnfield","10x_303","8Rnd_B_Saiga12_Pellets","8Rnd_B_Beneli_Pellets","KPFS_KarS","KPFS_10Rnd_762x39_SKS"];
//Item Shop
_is = ["pumpkin","getreide","perch","trout","walleye","bass","boar","lighter"];
//Copbasefood
_cf = ["wulf","bjerk","tcgmp","doshd"];
//Alcohol shop
_pub = ["beer","beer2","vodka","smirnoff","wiskey","wine","wine2"];
//Pistol Shop
_gss = ["RH_g19t","RH_17Rnd_9x19_g17","RH_p38","RH_8Rnd_9x19_p38","RH_tt33","RH_8Rnd_762_tt33","RH_browninghp","RH_13Rnd_9x19_bhp","RH_uspm","RH_12Rnd_45cal_usp","RH_usp","RH_15Rnd_9x19_usp","RH_mk2","RH_10Rnd_22LR_mk2","RH_m9c","Rnd_9x19_M9","RH_anacg","RH_6Rnd_44_Mag","RH_python","RH_6Rnd_357_Mag","RH_deagle","RH_7Rnd_50_AE","RH_g17","RH_19Rnd_9x19_g18","RH_m1911old","RH_8Rnd_45cal_m1911","RH_bull","RH_6Rnd_44_Mag","C1987_P99_black","15Rnd_9x19_p99"];
_ass = ["RH_m9sd","15Rnd_9x19_M9SD","RH_g17sd","RH_17Rnd_9x19_g17SD","RH_m1911sd","RH_8Rnd_45cal_m1911","RH_mk22sd","RH_8Rnd_9x19_Mksd","RH_uzisd","RH_9mm_32RND_SD_Mag","C1987_P99_black_sd","15Rnd_9x19_p99_sd"];
_mgs = ["RH_mk22","RH_8Rnd_9x19_Mk","KPFS_MP2","KPFS_32Rnd_MP2","RH_muzi","RH_32rnd_9x19_Muzi","RH_uzi","RH_9mm_32RND_Mag","RH_tmpeot","30Rnd_9x19_MP5","RH_fmg9","RH_9mm_32RND_Mag","CHRYSLER_B_limmo","tcg_taurus_security", "ilpd_ags_cvpi"];
//Equiptment shop
_es = ["Binocular","GPS","NVGoggles","hideout"];
//gocart
_gc = ["Da_kart"];
//Car Upgrades
_cu = ["supgrade1","supgrade2"];
//Car Shop
_cs1 = ["MMT_USMC","Volha_1_TK_CIV_EP1","Volha_2_TK_CIV_EP1","Lada2_TK_CIV_EP1","S1203_TK_CIV_EP1","civic","Car_hatchback","VWGolf","Car_Sedan","SkodaBlue","Skodared","lada1","lada2","LandRover_TK_CIV_EP1","datsun1_civil_3_open","UAZ_Unarmed_TK_CIV_EP1"];
_cs2 = ["tractor","oldtruc2","oldtruc2a"];
//Sports Car Shop
_sc1 = ["440cuda","roadrunner","roadrunner2","CHEVROLET_CAMARO_SS_396","chevrolet_chevelle","cuda","hemicuda","cd71hm","barcuda","fury","FORD_MUSTANG_SHELBY_COBRA","FORD_MUSTANG_SHELBY_COBRA1","FORD_MUSTANG_SHELBY_COBRA2","FORD_MUSTANG_SHELBY_COBRA3","FORD_GT","monaco_grey","monaco_blue","monaco_white","monaco_green","monaco_red","challenger_grey","challenger_blue","challenger_yellow","challenger_pink","challenger_white","challenger_green","challenger_red","challenger_orange"];
_sc2 = ["il_charger_blue","il_charger_black","il_charger_red","il_charger_orange","MAZDA_RX_7","MAZDA_RX_71","MAZDA_RX_72","MAZDA_RX_73","MAZDA_RX_75","MAZDA_RX_74","MAZDA_MAZDASPEED_3"];
_sc3 = ["CHRYSLER_300","RENAULT_CLIO_SPORT_V6","SUBARU_IMPREZA_WRX_STI_AWD","SUBARU_IMPREZA_STI_AWD","FIAT_PUNTO","ALFA_ROMEO_BRERA","NISSAN_240SX_SE","PONTIAC_GTO_6","240GD"];
_sc4 = ["FORD_SHELBY_GT","CHRYSLER_W_limmo","CORVETTE_Z06","INFINITI_G35","MERCEDES_BENZ_CLK_500","MERCEDES_BENZ_SL_65_AMG","JAGUAR_XK","CADILLAC_CTS"];
_sc5 = ["CL_PORSCHE_997","CL_LAMBORGHINI_GT3","KOENIGSEGG_CCX","KOENIGSEGG_CCX1","KOENIGSEGG_CCX2","KOENIGSEGG_CCX3","MCLAREN_F1","MERCEDES_BENZ_SLR","PORSCHE_997_GT3_RSR","PORSCHE_911_TURBO","PORSCHE_911_GT3_RS","LAMBORGHINI_MURCIELAGO","LAMBORGHINI_REVENTON","LAMBORGHINI_GALLARDO","MASERATI_MC12","JAGUAR_XK","BUGATTI_VEYRON","AUDI_TT_QUATTRO_S_LINE","AUDI_FSI_LE_MANS","PAGANI_ZONDA_F","ASTON_MARTIN_DB9"];
_sc6 = ["NISSAN_GTR_SPECV","NISSAN_GTR_SPECV1","NISSAN_GTR_SPECV2","NISSAN_GTR_SPECV3","NISSAN_350Z","NISSAN_370Z","NISSAN_370Z1","NISSAN_370Z2","NISSAN_370Z3","NISSAN_370Z4","NISSAN_SKYLINE_GT_R_Z","NISSAN_SKYLINE_GT_R_Z1","NISSAN_SKYLINE_GT_R_Z2","NISSAN_SKYLINE_GT_R_Z3"];
_sc7 = ["350z_red","350z_kiwi","350z_black","350z_silver","350z_green","350z_blue","350z_gold","350z_white","350z_pink","350z_mod","350z_ruben","350z_v","350z_yellow"];
_sc8 = ["tcg_taurus_civ1","tcg_taurus_civ2","tcg_taurus_civ3","tcg_taurus_civ4","tcg_taurus_civ5","tcg_taurus_civ6","il_fordcv_white","il_fordcv_grey","il_fordcv_black","il_fordcv_darkblue","il_fordcv_maroon","il_fordcv_sandstone"];
_sc9 = ["m5_red","m5_grey","m5_blue","m5_c_green","m5_c_black","m5_c_white","BMW_M6","BMW_M3_GTR","BMW_M3","BMW_M3_RALLY","BMW_135I","tcg_bmw_m3","tcg_bmw_m3_hamwhite","tcg_bmw_m3_c1","tcg_bmw_m3_c3","tcg_bmw_m3_c4","tcg_bmw_m3_c5","tcg_bmw_m3_c6","tcg_bmw_m3_c7","tcg_bmw_m3_c8","tcg_bmw_m3_c9"];
//Tahoe shop
_tahoe = ["tahoe_grey","tahoe_darkblue","tahoe_blue","tahoe_yellow","tahoe_white","tahoe_green","tahoe_black","tahoe_orange","tahoe_pink","tahoe_darkblue_cb","tahoe_grey_cb","tahoe_blue_cb","tahoe_yellow_cb","tahoe_pink_cb","tahoe_white_cb","tahoe_green_cb","tahoe_black_cb","tahoe_orange_cb"];
//Pickup Shop - 
_ps = ["il_silverado_black","il_silverado_red","il_silverado_orange","il_silverado_selvo","il_silverado_white","tcg_suburban_red","tcg_suburban_yellow","tcg_suburban_grey","tcg_suburban_white","tcg_suburban_green","suburban_blue","suburban_black","suburban_maroon","suburban_sandstone","suburban_grey","suburban_white","f350_red","f350_blue","f350_pink","f350_white","f350_black"];
//taxi shop
_tx = ["GLT_M300_LT","GLT_M300_ST","il_fordcv_taxi","il_fordcv_taor","il_fordcv_tago","tcg_taurus_taxi"];
//motorcycle shop
_mbs = ["tcg_hrly","tcg_hrly_coco","tcg_hrly_demon","tcg_hrly_limited","tcg_hrly_orig1","tcg_hrly_gay","tcg_hrly_metal","tcg_hrly_orig2","tcg_hrly_white","tcg_hrly_blue","tcg_hrly_red","TT650_TK_CIV_EP1","TT650_Ins","TT650_Civ"];
_qbs = ["cl_quaddescammo","cl_green","cl_quadred","cl_quadsaftysteel","cl_quadyellow","cl_blue2","cl_chark","cl_dirtyred"];
_qbss = ["tcg_aprilia_blue","tcg_aprilia_yellow","tcg_aprilia_white","tcg_aprilia_green","tcg_aprilia_red","tcg_aprilia_black","tcg_aprilia_black_2","tcg_aprilia_blue_2","tcg_aprilia_blue_4","tcg_aprilia_blue_5","tcg_aprilia_cyan","tcg_aprilia_green_3","tcg_aprilia_orange","tcg_aprilia_red_1","tcg_aprilia_red_2","tcg_aprilia_white_2","tcg_aprilia_yellow_2"];
//Truck Shop
_ts = ["cl_del_mackr","cl_trucktest_mackr","cl_flatbed_mackr","Ural_TK_CIV_EP1","V3S_Open_TK_CIV_EP1","V3S_TK_EP1","Ural_CDF","UralOpen_CDF","Kamaz","KamazOpen","schoolbus","Ikarus_TK_CIV_EP1","Ikarus"];
//Sport Truck Shops
_sts = [
"Cherokee_black",
"Cherokee_grey",
"Cherokee_blue",
"Cherokee_yellow",
"Cherokee_pink",
"Cherokee_white",
"Cherokee_green",
"Cherokee_red",
"Cherokee_orange",
"s331_black",
"s331_grey",
"s331_blue",
"s331_yellow",
"s331_pink",
"s331_white",
"s331_green",
"s331_red",
"s331_orange",
"s331c_black",
"s331c_white",
"s331c_red",
"s331c_grey"
];
//Air Shop
_as = ["An2_1_TK_CIV_EP1","An2_2_TK_CIV_EP1","USEC_MAULE_M7_STD","gnt_piperwii","GNT_C185F","GNT_C185E","GNT_C185R","GNT_C185C","GNT_C185"];
_assa = ["kyo_ultralight","AH6X_EP1","CSJ_Gyroc","Mi17_Civilian","bd5j_civil_3","bd5j_civil_2","bd5j","GazelleUN","GazelleD","Gazelle","Gazelle1","Gazelle3","adf_as350","ibr_as350_specops","ibr_as350_jungle","tcg_bell206_3","tcg_bell206_4","tcg_bell206_2","tcg_bell206_5","tcg_bell206", "MH6J_EP1"];
_asc = ["can_c130","airnz_C130","luf_c130","qantas_C130","A320MPA"];
//Scuba Shop
_sb = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3"];
//Boat Shop
_bs = ["fishingpole","tcg_wrun","tcg_wave_red","tcg_wave_black","tcg_wave_red2","tcg_wave_sky","tcg_wave_red3","cl_trawler_fishing_boat","cl_sport_fishing_boat","Fishing_boat","cl_container_boat","cl_inflatable","PBX","Zodiac","Smallboat_1","lcu","big_boat"];
//cop boat shop
_cb = ["JFH_USCG_ZODIAC","JFH_USCG_RHIB","cl_inflatable","PRACS_RB90"];
//Terror Boat Shop
_bt = ["fishingpole","PBX", "Zodiac","cl_trawler_fishing_boat","cl_container_boat","cl_sport_fishing_boat","Fishing_boat","cl_inflatable","RHIB","lcu","JMSDF_US2","JMSDF_US1"];
//Jewelry shop
_js = ["Diamond"];
//insurance
_ins = ["bankversicherung"];
//ESU and FD
_td = ["FirefighterWeap2","firefightermag2","firetruck","rescue","Laddertruck","suburban_fd","il_silverado_pd","tcg_suburban_FD","il_ambulance","il_f350_brush","gmc_ambulance","roadcone","roadbarrierlong","roadbarriersmall","supgrade1","supgrade2","bjerk"];
//Resource Shop
_rs = ["gold","iron","diamond rock"];
//Jackos Cheesburgers
_gds = ["bread","pumpkinpie"];
_gds1 = ["supgrade1","supgrade2","reparaturkit"];
_gds3 = ["roadblock","glt_roadsign_octagon","bargate","roadcone","bunkersmall"];
//Oil Trader/Seller
_os = ["OilBarrel","Oil"];
//Whale Sale
_ws = ["Whale"];
//Cocaine Sell
_dsc = ["cocaine","cocaineseed"];
//Marijuana Sell
_dsm = ["marijuana","marijuanaseed"];
//LSD Sell
_dsl = ["lsd"];
//Heroin Sell
_dsh = ["heroin","heroinseed"];
_psc = ["medikit","pharm","GymMem1","GymMem2","GymMem3","GymMem4","cl_wheelchair"];
_msc = ["meth"];
//Cop Air Shop
_ca = ["tcg_police_bell206","MH6J_EP1","HH65C","OH58g"];
//Cop Vehicle Shop
_cv = ["MMT_USMC","M1030_US_DES_EP1","cl_quadcarbonlight","ilpd_beat_f101","ilpd_slick_b40_npb","ilpd_slick_b40_PBG","ilpd_slick_b40_pb","il_charger_pd","ilpd_charger_white","tcg_taurus_pb_2","tcg_taurus","tcg_taurus_wopb","suburban_pd","tahoe_pd","jailbus"];
_cv1 =["MMT_USMC","cl_quadcarbonlight","M1030_US_DES_EP1","tcg_hrlycop","ilpd_beat_f101_sh","pd_cvpi","pd_cvpi_hub","ilpd_slick_f220_npb","ilpd_slick_f220_PBG","tcg_taurus_shpb","tcg_taurus_sh","suburban_pd_sheriff","tahoe_sh","il_f350sheriff","RH_M16a1","20Rnd_556x45_Stanag","RH_m14","20Rnd_762x51_DMR"];

_copshop = 

[
"x26",
"x26_Mag",
"M1014",
"tcg_mossberg",
"tcg_remington",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"Itembag",
"Donut",
"medikit", 
"handy", 
"Binocular",
"Itembag",
"lockpick",
"Bait_Kit",
"kanister",
"copremote",
"codebreaker",
"spikestrip",
"supgrade1",
"supgrade2",
"reparaturkit",
"NVGoggles"
];

_copshop2 = 

[
"RAB_L111A1",
"SmokeShell",
"tcg_combat",
"8Rnd_B_Beneli_74Slug",
"8Rnd_B_Beneli_Pellets",
"Itembag",
"Donut",
"medikit",
"spikestrip",
"lockpick",
"Bait_Kit",
"kanister",
"reparaturkit",
"Itembag",
"NVGoggles",
"RH_python",
"RH_6Rnd_357_Mag"
];

_copshop_patrol = 

[
"RAB_L111A1",
"SmokeShell",
"RH_g17",
"RH_g18",
"RH_33Rnd_9x19_g18",
"RH_g19",
"RH_19Rnd_9x19_g18",
"RH_p226",
"RH_m9",
"Rnd_9x19_M9",
"RH_usp",
"RH_15Rnd_9x19_usp",
"RH_m1911",
"RH_m1911old",
"RH_8Rnd_45cal_m1911",
"RH_m4",
"RH_hk416",
"20Rnd_556x45_Stanag",
"M32_EP1",
"6Rnd_Smoke_M203"
];

_copshop_sobr = 

[
"RAB_L111A1",
"SmokeShell",
"SWAT",
"batter",
"Land_ladder_half",
"MP5A5",
"RH_mp5a4eot",
"30rnd_9x19_MP5",
"RH_ump",
"RH_45ACP_25RND_Mag",
"M14_EP1",
"KPFS_G3A3",
"20Rnd_762x51_DMR",
"BAF_LRR_scoped_W",
"5Rnd_86x70_L115A1",
"M24",
"5Rnd_762x51_M24",
"RH_m16a2aim",
"RH_m4sbr",
"RH_M4glaim",
"RH_M4gleotech",
"RH_acrb",
"RH_hk416aim",
"RH_mk12mod1",
"30Rnd_556x45_Stanag",
"1Rnd_Smoke_M203",
"Stinger",
"Stinger_mag"
];

_swatcarshop =

[
"ilpd_scu_black",
"ilpd_scu_grey",
"ilpd_scu_maroon",
"ilpd_charger_black",
"suburban_pd_black",
"tcg_suburban_uc_black",
"tcg_suburban_uc_white",
"tcg_suburban_uc_grey",
"tahoe_uc_black",
"tahoe_uc_white",
"ilf350swat",
"il_bearcat"
];

_trafficshop =

[
"roadblock",
"glt_roadsign_octagon",
"bargate",
"SearchLight_UN_EP1",
"roadcone",
"bunkersmall",
"il_barrier"
];

_trafficcars =

[
"ilpd_traffic_t101",
"ilpd_Traffic_black",
"ilpd_Traffic_white",
"tcg_suburban_patrol",
"suburban_pd_stealth"
];

_vicecars =

[
"MMT_USMC",
"cl_quadcarbonlight",
"Volha_1_TK_CIV_EP1",
"Volha_2_TK_CIV_EP1",
"Car_hatchback",
"LandRover_TK_CIV_EP1",
"civic",
"il_fordcv_taxi",
"tcg_taurus_taxi",
"tcg_taurus_uc",
"tahoe_uc_1_grey",
"tahoe_uc_1_blue",
"tahoe_uc_1_green",
"tahoe_uc_1_white",
"tahoe_uc_1_maroon",
"ilpd_unmarked_black",
"ilpd_unmarked_sandstone",
"ilpd_unmarked_maroon",
"ilpd_unmarked_darkblue",
"ilpd_unmarked_grey",
"il_fordcv__uc_taxi",
"m5_pd_traffic"
];

_k9cars =

[
"suburban_pd_k9",
"m5_pd_traffic"
];

_terrorshop = 

[ 
"RH_ak47",
"RH_akm",
"RH_akms",
"RH_aks47",
"RH_aks47g",
"RH_aks47s",
"30Rnd_762x39_AK47",
"RH_ak74",
"RH_ak74k",
"RH_ak74m",
"RH_ak74mk",
"RH_aks74",
"RH_aks74k",
"RH_aks74m",
"RH_aks74mk",
"RH_aks74p",
"RH_aks74pk",
"RH_an94",
"30Rnd_545x39_AK",
"RH_aks74u",
"RH_aks74uk",
"RH_30Rnd_545x39_AKSU_mag",
"RH_aks74usd",
"RH_aks74usdk",
"30Rnd_545x39_AKSD",
"RH_asval",
"RH_20Rnd_9x39_val_mag",
"RH_hk417",
"RH_20Rnd_762x51_hk417",
"RH_M16a1",
"30Rnd_556x45_Stanag"
];

_shady =

[
"lockpick",
"ziptie",
"burgl",
"lighter",
"firestarter"
];

_gangshop_buy = 

[
"lockpick",
"ziptie",
"burgl",
"lighter",
"firestarter",
"Fuelline", 
"medikit",
"Binocular", 
"NVGoggles",
"RH_ppk",
"RH_7Rnd_32cal_ppk",
"RH_mk2",
"RH_10Rnd_22LR_mk2",
"RH_browninghp",
"RH_13Rnd_9x19_bhp",
"RH_vz61",
"RH_20Rnd_32cal_vz61",
"RH_tec9",
"RH_30Rnd_9x19_tec",
"tcg_combat",
"8Rnd_B_Beneli_Pellets",
"KPFS_PM63",
"KPFS_25Rnd_pm"
];

_Donate = 

[
"donateNVGoggles",
"donatereparaturkit",
"donatemedikit",
"donateRH_browninghp",
"donateRH_13Rnd_9x19_bhp",
"donateRH_mk2",
"donateRH_10Rnd_22LR_mk2",
"donateC1987_P99_black",
"donate15Rnd_9x19_p99",
"donateSaiga12K",
"donate8Rnd_B_Saiga12_Pellets",
"donateRH_krisssdaim",
"donateRH_45ACP_30RND_Mag",
"donateRH_mp7aim",
"donateRH_46x30mm_40RND_Mag",
"donateKPFS_KarS",
"donateKPFS_10Rnd_762x39_SKS",
"donateRH_M16a3c",
"donate100Rnd_556x45_BetaCMag",
"donateRH_hk417aim",
"donateRH_hk417sdeotech",
"donateRH_20Rnd_762x51_hk417",
"donateRH_20Rnd_762x51_SD_hk417",
"donateRH_masb",
"donate30Rnd_556x45_Stanag",
"tcg_suburban_black",
"ASTON_MARTIN_DBR9",
"SUV_TK_CIV_EP1",
"tcg_bell206_1",
"MV22"
];

_Blackmarket =

[
"remoteillegal",
"RH_m93r",
"RH_20Rnd_9x19_M93",
"AKS_74U_BZT75C",
"30Rnd_545x39_AK",
"blackmarketRH_mk12mod1",
"blackmarketRH_m4sbr",
"M8_compact",
"30Rnd_556x45_Stanag",
"RH_p90aim",
"RH_57x28mm_50RND_Mag",
"RH_kriss",
"RH_45ACP_30RND_Mag",
"Bizon",
"64Rnd_9x19_Bizon",
"AA12_PMC",
"20Rnd_B_AA12_Pellets",
"M14_EP1",
"20Rnd_762x51_DMR",
"VSS_vintorez",
"10Rnd_9x39_SP5_VSS",
"ksvk",
"5Rnd_127x108_KSVK",
"Pickup_PK_TK_GUE_EP1"
];



INV_ItemShops = [

[fuelshop1,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop2,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop3,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop4,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop5,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop6,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop7,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop8,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[fuelshop9,"Fuel-station Shop",dummyobj,dummyobj,_fs,_fs,true],
[vending2,"Outdoor Shop",vending2,dummyobj,_fs2,_fs2,true],
[shop1,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[shop2,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[shop4,"Food Shop",dummyobj,dummyobj,_is,_is,true],
[bailflag,"Food and Gun Locker",dummyobj,dummyobj,_cf,_cf,true],
[pub1,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub2,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub3,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[pub4,"Pub",dummyobj,dummyobj,_pub,_pub,true],
[gundealer1,"Firearms Dealer",gunbox2,dummyobj,_gss,_gss,true],
[assassinshop,"Assassin Shop",assassinshop,dummyobj,_ass,_ass,true],
[mayorguns,"Government Equip Shop",mayorguns,mayorcarspawn,_mgs,_mgs,true],
[equipbox,"Equipment Shop",equipbox,dummyobj,_es,_es,true],
[gocartshop,"Texas Go-Carts Shop",dummyobj,gocartspawn,_gc,_gc,true],
[tuning1,"Car Upgrades",dummyobj,dummyobj,_cu,_cu,true],
[carshop1,"Used Cars",dummyobj,carspawn1,_cs1,_cs1,true],
[carshop2,"Farm Equipment",dummyobj,carspawn2,_cs2,_cs2,false],
[scarshop,"Muscle Car Shop",dummyobj,scarspawn1,_sc1,_sc1,true],
[scarshop2,"Charger and Mazda",dummyobj,scarspawn2,_sc2,_sc2,true],
[scarshop3,"Low End Sports",dummyobj,scarspawn3,_sc3,_sc3,true],
[scarshop4,"Mid Level Sports",dummyobj,scarspawn4,_sc4,_sc4,true],
[scarshop5,"High End Sports",dummyobj,scarspawn5,_sc5,_sc5,true],
[scarshop6,"Nissan Car Shop",dummyobj,scarspawn6,_sc6,_sc6,true],
[scarshop7,"350z Car Shop",dummyobj,scarspawn7,_sc7,_sc7,true],
[scarshop8,"Ford Car Shop",dummyobj,scarspawn8,_sc8,_sc8,true],
[scarshop9,"BMW Car Shop",dummyobj,scarspawn9,_sc9,_sc9,true],
[tahoeshop1,"Tahoe Shop",dummyobj,tahoespawn1,_tahoe,_tahoe,true],
[pickupshop1,"Pickup Shop",dummyobj,pickupspawn1,_ps,_ps,true],
[taxishop,"Taxi Shop",dummyobj,taxispawn1,_tx,_tx,true],
[bikeshop,"Mikes Bike Shop",dummyobj,bikespawn,_mbs,_mbs,true], 
[bikeshop1,"Quad Bike Shop",dummyobj,bikespawn1,_qbs,_qbs,true],
[bikeshop2,"Sports Bike Shop",dummyobj,bikespawn1,_qbss,_qbss,true],
[truckshop,"Truck and Bus Shop",dummyobj,truckspawn,_ts,_ts,true],
[struckshop,"Sport Truck Shop",dummyobj,struckspawn,_sts,_sts,true],
[airshop,"Airplane Shop",dummyobj,asairspawn,_as,_as,true],
[airshop2,"Chopper and Jet Shop",dummyobj,asairspawn,_assa,_assa,true],
[airshop3,"Commercial Air Shop",dummyobj,asairspawn,_asc,_asc,true],
[airshop4,"Chopper and Jet Shop",dummyobj,asairspawn2,_assa,_assa,true],
[scubashop, "Jetski Shop",dummyobj,boatspawn5,_sb,_sb,true],	
[boatshop1, "Boat Shop",dummyobj,boatspawn1,_bs,_bs,true],
[boatshop2, "Boat Shop",dummyobj,boatspawn2,_bs,_bs,true],
[boatshop3, "Boat Shop",dummyobj,boatspawn3,_bs,_bs,false],
[copboatshop, "Coast Guard Boat Shop",dummyobj,copboatspawn,_cb,_cb,true],
[tboatshop1,"Boat Shop",dummyobj,tboatspawn1,_bt,_bt,true],
[Diamond_1,"Diamond Trader",dummyobj,dummyobj,_js,_js,true],
[Insure,"Insurance",insure,dummyobj,_ins, _emptyshop,false],
[tdoc,"Fire Rescue Equipment",hoserack1,tdocspawn,_td,_td,true],
[resourcesell,"Sell Resources",dummyobj,dummyobj,_rs,_rs,true],
[cheeseburger,"Bakery",dummyobj,dummyobj,_gds,_gds,true],
[workplace_getjobflag_4,"TCG Imporium",dummyobj,dummyobj,_gds1,_gds1,true],
[workplace_getjobflag_6,"Wigworths",dummyobj,dummyobj,_gds3,_gds3,true],
[OilSell1,"Oil Dealer", dummyobj,dummyobj, _emptyshop,_os,true],
[whalesell,"Sell Whale",dummyobj,dummyobj,_emptyshop,_ws,true],	
[terrorbox,"Terror Stuff",terrorbox,dummyobj, _terrorshop,_terrorshop,true],
[shadyd,"Barely Legal",shadyd,dummyobj, _shady,_shady,true],
[gangarea1,"Gang Shop",gangbox1,dummyobj,_gangshop_buy,_gangshop_buy,false],
[gangarea2,"Gang Shop",gangbox2,dummyobj,_gangshop_buy,_gangshop_buy,false],
[gangarea3,"Gang Shop",gangbox3,dummyobj,_gangshop_buy,_gangshop_buy,false],																	
[gangarea4,"Gang Shop",gangbox4,dummyobj,_gangshop_buy,_gangshop_buy,false],											
[cdrugsell,"Sell Cocaine",dummyobj,dummyobj,_dsc,_dsc,true],
[mdrugsell,"Sell marijuana",dummyobj,dummyobj,_dsm,_dsm,true],
[ldrugsell,"Sell LSD",dummyobj,dummyobj,_emptyshop,_dsl,true],
[hdrugsell,"Sell Heroin",dummyobj,dummyobj,_dsh,_dsh,true],
[methsell,"Sell Meth",dummyobj,dummyobj,_msc,_msc,true],
[pharmacy,"Pharmacy",dummyobj,pharmspawn,_psc,_emptyshop,false],
[copair,"Police Aircraft",dummyobj, cairspawn,_ca,_ca,true],
[copcar,"Police vehicles",dummyobj, ccarspawn,_cv,_cv,true],
[copcar1,"Sheriff Vehicles and Rifles",copsheriff, ccarspawn1,_cv1,_cv1,true],
[copbasic,"Basic Police Gear",copbasic,dummyobj, _copshop,_copshop,false],
[coppatrol,"Patrol Officer Gear",coppatrol,dummyobj,_copshop_patrol,_copshop_patrol,true],
[copsheriff,"Sheriffs Department Gear",copsheriff,dummyobj, _copshop,_copshop,false],
[copswat,"SWAT Equipment",copswat,dummyobj,_copshop_sobr,_copshop_sobr,true],
[copbasic2,"Vice Unit Equipment",copbasic2,dummyobj, _copshop2,_copshop2,false],
[copswatcars,"SWAT Vehicles",dummyobj,ccarspawnswat,_swatcarshop,_swatcarshop,true],
[coptraffic,"Traffic Division Equipment",coptraffic,dummyobj,_trafficshop,_trafficshop,true],
[coptrafficcars,"Traffic Division Vehicles",dummyobj,ctrafficspawn,_trafficcars,_trafficcars,true],
[copvicecars,"Vice Unit Vehicles",dummyobj,ccarspawn2,_vicecars,_vicecars,true],
[copk9cars,"K9 Unit and APO Vehicles",dummyobj,ck9spawn,_k9cars,_k9cars,true],
[donatebuy,"Donators Shop",maindonateshop,maindonatespawn,_Donate,_Donate,true],
[marketsoldier,"Black Market",marketshop,marketspawn,_Blackmarket,_Blackmarket,false]
];
