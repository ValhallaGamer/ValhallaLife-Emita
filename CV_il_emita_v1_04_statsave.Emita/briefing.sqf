////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////
///-SCRIPT INFORMATION-//
//Initializing Profile Default
//
//-SCRIPT CONDITONS-//
//Script Begins: On Server Initialization
//Script Ends  : On EOF

if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Mission Changelog"];
player createDiarySubject ["controls","Address Book & Controls"];
Player CreateDiarySubject ["Jail","Jail Times"];
player createDiarySubject ["rules","Commonly Broken Rules"];
player createDiarySubject ["bugs","CV Website/TS3 Info"];
player createDiarySubject ["credits","Island Life Credits"];

player createDiaryRecord ["credits", 
[
"Island Life Mission Credits", 
"
<br/>
All ArmA life missions are derived from RP Mods Sahrani life<br/>
<br/>
Island Life created by Bryce, Dos Equis and Wulfer<br/>
<br/>
Continued Development by {TCG}ZKB1325 and {TCG}Luc_Mathlin, with help from the TCG Dev Team<br/>
<br/>
Server configurations/technical work by {TCG}Luc_Mathlin and {TCG}Shaun<br/>
<br/>
All addons on island life have been made by TCG, are on ArmAholic or other public download sites and FULL CREDIT GOES TO THEIR CREATORS<br/>
<br/>
Original Arma Life Missions created by EddieV223, Pogoman, Issetea, and Fewo from RP mods<br/>
"
]
];




player createDiaryRecord ["bugs", 
[
"Valhalla Gamer", 
"
<br/>
The Valhalla Gamer website may be found at<br/>
http://www.valhallagamer.com/<br/>
<br/>
<br/>
Registering gives you access to our discussion forums<br/>
http://www.valhallagamer.com/index.php?/index
<br/>
<br/>
Please report any bugs with the mission at<br/>
http://www.valhallagamer.com/index.php?/index
<br/>
<br/>
Join your fellow players on Teamspeak 3 at<br/>
Address ts3.valhallagamer.com<br/>
"
]
];




player createDiaryRecord ["rules", 
[
"Commonly Broken Server Rules", 
"
Valhalla Gamer<br/>
<br/>
<br/>
A complete list of enforced server rules can be found online at<br/>
http://www.valhallagamer.com/<br/>
<br/>
There are no excuses for not reading these rules, and all rule-breakers will be dealt with accordingly--Administrators will always have final say<br/>
<br/>
All COPs and ESU are REQUIRED to be on Valhalla Gamer Teamspeak 3 with a working microphone--Please see Website/TS3 tab for Teamspeak information<br/>
<br/>
Don't be a stupid troll, don't drive like shit for no reason, don't evade unless you really think its worth it. To balance it out, cops are really going to have to start driving carefully unless on a call or they are going to find themselves getting fired immediately by IA or any admin that sees them dicking around.<br/>
<br/>
-Admins have final say.<br/>
<br/>
-Hacking, exploiting or glitching will result in a ban.<br/>
<br/>
-Death matching is killing without reason. For example, looking for cops to kill just to kill them, or if a civ kills another civ for no legitimate reason. Civs and cops should only get into firefights for reasons relating to crimes.<br/>
<br/>
-Intentionally running over any other player, cop or civ, is not allowed. Ramming other players' vehicles is not vehicle DM, but you must have a reason to do so.<br/>
<br/>
-Intentionally crashing an aircraft is not allowed at any time or for any reason.<br/>
<br/>
-You may not report any crime when you are dead or any crime that you saw in a previous life. Once you are dead, you cannot give out any information over game chat or TS. This is called Ghosting<br/>
<br/>
-If you are zip tied you must roleplay as though you are restrained, the same rules and practices that apply to being restrained by the police also apply if zip tied by civs.<br/>
<br/>
-Civs may never rob each other or take each other hostage inside the green zone at civ spawn. However, civs may rob or attempt to capture police anywhere including the green zone.<br/>
<br/>
-REMOVING GUNS FROM ANY CAR OR HIDEOUT THAT YOU DONT OWN OR LOCKPICK is against the rules. -If a police officer has the right to search a hideout or vehicle, they do not need to use lockpicks to search it or remove any weapons/items from it as long as it's within the rules-<br/>
<br/>
-Re-spawning while restrained or being stunned, or to avoid capture in any way is cheating and will be punished accordingly.<br/>
<br/>
-If anyone is in a gang area that you own or a gang area that you are trying to capture, you may kill them (except firefighters)<br/>
<br/>
-The -2 to 1- rule. There must be 2 civilians -Excluding Firefighters- for every police officer that is online. Joining the police team if this ratio is already met, is not allowed. However, you may join civ side if there are less than the required amount of officers.<br/>
<br/>
-If you're killed by a civ in a rival gang or a police officer, you get a new life. If you die by any other means you are still wanted after your death and do not get a new life.<br/>
<br/>
-Civilians with an unholstered weapon on gas station/bar/pharmacy property or in the immediate vicinity of the bank can be killed or arrested without warning.<br/>
<br/>
-The governor may carry a HOLSTER-ABLE weapon no matter how many guards he has.  The gov may not carry a primary weapon -a weapon that cannot be holstered-.<br/>
<br/>
-Pilots may only lift vehicles that they have keys to or have the owners permission.<br/>
<br/>
-We encourage all players to use the same nickname every time they play. Before changing your ingame name, you must post your new nickname in the name change forum section.<br/>
<br/>
-Gangs should not fight each other unless war has been declared between the gangs. -A verbal agreement to a gang war can only be declared by gang leaders, however, there are other ways to start a gang war. If only one leader wants a gang war but the other leader does not, the war must be initiated in another way. See the next rule-<br/>
<br/>
-Neutralizing or capturing another gang's gang area, killing/attempting to kill or stealing from another gang are considered declarations of war.<br/>
<br/>
-It is a felony to land an air vehicle on any road, inside of town or out.  Obviously permission from the police to land renders such a landing legal.<br/>
<br/> 
-Civilian aircraft are never permitted land inside city limits -except on helipads or runways- unless given permission by the police chief, to land without permission inside city limits is a felony.<br/>  
<br/>
Make sure you read all the rules at www.valhallagamer.com/<br/>
"
]
];



player createDiaryRecord ["Jail", 
[
"Jail Times", 
"
For Up to Date jail times visit: www.valhallagamer.com<br/>
and check the IL forum. Fines and Jail Time<br/>
"
]
];


player createDiaryRecord["controls",
[
"Donator House Address Book",
"
Island Life Address Book
<br/>
0000 <marker name='phsr'>See what you can buy</marker><br/>
0001 <marker name='0001'>House 0001</marker><br/>
0002 <marker name='0002'>House 0002</marker><br/>
0003 <marker name='0003'>House 0003</marker><br/>
0004 <marker name='0004'>House 0004</marker><br/>
0005 <marker name='0005'>House 0005</marker><br/>
0006 <marker name='0006'>House 0006</marker><br/>
0007 <marker name='0007'>House 0007</marker><br/>
0008 <marker name='0008'>House 0008</marker><br/>
0009 <marker name='0009'>House 0009</marker><br/>
0010 <marker name='0010'>House 0010</marker><br/>
1000 <marker name='zkb'>ZKB1325</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_Luc</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_Tezz</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_Harry</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_Jolly</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_Bf2Plox</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_Lee</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_Cidos</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_SGTJacky</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_JGunn</marker><br/>
1001 <marker name='Luccompound'>UN_Embassy_JDennis</marker><br/>
1002 <marker name='executive'>Executive-Compound_Hiro</marker><br/>
1002 <marker name='executive'>Executive-Compound_Hagar</marker><br/>
1002 <marker name='executive'>Executive-Compound_Ken</marker><br/>
1003 <marker name='drpshrk'>drpshrk</marker><br/>
1004 <marker name='fnnrz'>fnnrz</marker><br/>
1005 <marker name='synntc'>synntc</marker><br/>
1006 <marker name='chse'>chse</marker><br/>
1007 <marker name='cmdzulu'>cmdzulu</marker><br/>
1008 <marker name='chris'>Empty</marker><br/>
1009 <marker name='pkghost'>pkghost</marker><br/>
1010 <marker name='ogcory'>ogcory</marker><br/>
1011 <marker name='dsmech'>dsmech</marker><br/>
1012 <marker name='frsty'>frsty</marker><br/>
1013 <marker name='nthkiml'>nthkiml</marker><br/>
1014 <marker name='little'>little</marker><br/>
1015 <marker name='millsma'>millsma</marker><br/>
1016 <marker name='vcticnc'>vcticnc</marker><br/>
1017 <marker name='dbolsson'>dbolsson</marker><br/>
1018 <marker name='mbpig'>mbpig</marker><br/>
1019 <marker name='tmrawr'>tmrawr</marker><br/>
1020 <marker name='tysrus'>tysrus</marker><br/>
1021 <marker name='jbbvic'>jbbvic</marker><br/>
1022 <marker name='lngbow'>lngbow</marker><br/>
1023 <marker name='gtannr'>gtannr</marker><br/>
1024 <marker name='krse'>krse</marker><br/>
1025 <marker name='lee'>lee</marker><br/>
1026 <marker name='zlnex'>zlnex</marker><br/>
1027 <marker name='crzykng'>crzykng</marker><br/>
1028 <marker name='ep1977'>ep1977</marker><br/>
1029 <marker name='jjman'>jjman</marker><br/>
1030 <marker name='jkr199'>jkr199</marker><br/>
1031 <marker name='griff'>griff</marker><br/>
1032 <marker name='micheal'>micheal</marker><br/>
1033 <marker name='xEpicnatorx'>xEpicnatorx</marker><br/>
1034 <marker name='Xanxth'>Xanxth</marker><br/>
1035 <marker name='Jacobsen_2'>Jacobsen</marker><br/>
1036 <marker name='Damon'>Damon</marker><br/>
1037 <marker name='Kilroy82'>Kilroy82</marker><br/>
1038 <marker name='walter_2'>walter</marker><br/>
1039 <marker name='undeadlegend_2'>undeadlegend</marker><br/>
1040 <marker name='Herzog_2'>Herzog</marker><br/>
1041 <marker name='Obitokun'>Obitokun</marker><br/>
1042 <marker name='Waliornorth'>Waliornorth</marker><br/>
1043 <marker name='Myspeld'>Myspeld</marker><br/>
1044 <marker name='Oath'>Oath</marker><br/>
1046 <marker name='amin'>amin</marker><br/>
1047 <marker name='Proofe'>Proofe</marker><br/>
1048 <marker name='euanfoot'>euanfoot</marker><br/>
1049 <marker name='johnwildkins_2'>johnwildkins</marker><br/>
1050 <marker name='aharris__2'>Aharris</marker><br/>
1051 <marker name='kirby_2'>kirby</marker><br/>
1052 <marker name='mhawk'>mhawk</marker><br/>
1053 <marker name='Olsson'>Olsson</marker><br/>
1054 <marker name='Mahoney'>Mahoney</marker><br/>
1055 <marker name='doss'>doss</marker><br/>
1056 <marker name='Gladiator'>Gladiator</marker><br/>
1057 <marker name='GamingAnonymous'>GamingAnonymous</marker><br/>
1058 <marker name='AHodgins'>AHodgins</marker><br/>
1059 <marker name='Lime'>Lime</marker><br/>
1060 <marker name='driftr_2'>driftr</marker><br/>
1061 <marker name='tango69_2'>tango69</marker><br/>
1062 <marker name='hornby_2'>hornby</marker><br/>
1063 <marker name='james'>james</marker><br/>
1064 <marker name='green'>green</marker><br/>
1065 <marker name='fourdiffrence_2'>fourdiffrence</marker><br/>
1066 <marker name='grasshopper'>grasshopper</marker><br/>
1067 <marker name='tomcompound'>tomcompound</marker><br/>
1068 <marker name='survivorman2000'>survivorman2000</marker><br/>
1069 <marker name='derpshark'>derpshark</marker><br/>
1070 <marker name='chris_2'>chris</marker><br/>
1071 <marker name='craig_2'>craig</marker><br/>
1072 <marker name='waicl_2'>waicl</marker><br/>


"
]
];





player createDiaryRecord ["controls", 
[
"Animations Continued", 
"
urban prone LEFT:<br/>
	- move left: Left<br/>
	- move right: Right<br/>
	- back to prone: Z<br/>
	- move to urban prone RIGHT: MTB + Right<br/>
	- raise weapon: Forward<br/>
	- Blind fire: MTB + Left<br/>
urban prone Right:<br/>
	- back to prone: Z<br/>
	- raise weapon: Forward<br/>
	- raise weapon higher: MTB + Forward<br/>
	- move to urban prone RIGHT: MTB + Left<br/>
	- Blind fire: MTB + Right<br/>
panic move:<br/>
	- urban prone left: X<br/>
	- prone: Z<br/>
launcher standing:<br/>
        - launcher prone: fast + Backwards<br/>
launcher crouching:<br/>
	- launcher prone: fast + Backwards<br/>
pistol quick stand:<br/>
	- Blindfire left: MTB + Left<br/>
	- Blindfire right: MTB + Right<br/>
	- Blindfire overhead: MTB + Back<br/>
pistol normal hold:<br/>
        - when pistol out, toggle: c<br/>
Back to wall:<br/>
	- move left: Left<br/>
	- move right: Right<br/>
	- weapon round the corner: Forward<br/>
	- turn around and aim weapon forward: backwards<br/>
	- blindfire right: MTB + Right<br/>
	- blindfire overhead: MTB + Backwards<br/>
	- peak around the corner: MTB + Forward<br/>
	- go back to crouch: x<br/>
	- Grenade round the corner: choose grenade and throw<br/>
	- Grenade overhead throw: press salute and then do above<br/>
"
]
];





player createDiaryRecord ["controls", 
[
"Animations", 
"
DEFINE Turbo key (suggestion - Mouse thumb button)<br/>
using default key settings, if different, just replace the letter<br/>
Z - prone<br/>
X - crouch<br/>
C - stand<br/>
2xctrl - weapon down/up toggle<br/>
standing: <br/>
	- panic button: sitdown<br/>
	- blind fire left: MTB + Left<br/>
	- blind fire right: MTB + Right<br/>
	- blind fire up: MTB + Back<br/>
	- taunt: MTB + Back + Left (to play it smooth, first use direction keys then turbo)<br/>
	- quick lower your head: MTB + Back + Right<br/>
running forward:<br/>
	- jog pace: 2x ctrl<br/>
	- quick step over: step over<br/>
	- weapon down: C<br/>
sprinting:<br/>
	- slide: X<br/>
	- climb over the wall: C<br/>
crouching:<br/>
	- kneel: X<br/>
	- quick lower your head: MTB + Back + Right<br/>
	- blind fire left: MTB + Left<br/>
	- blind fire right: MTB + Right<br/>
	- blind fire up: MTB + Back<br/>
	- panic move: sitdown<br/>
	- sniper sit: getOver<br/>
	- back to wall: salute<br/>
kneeling: <br/>
	- crouch: X<br/>
other moves apply as in crouching<br/>
proning:<br/>
	- urban prone left: MTB + Left<br/>
	- urban prone right: MTB + Right<br/>
	- launcher proning: Select launcher<br/>

"
]
];




player createDiaryRecord ["controls", 
[
"IL Controls for New Players", 
"
Civilian:<br/>
#1: Stats<br/>
here is where you will find a great deal of useful information.  Anything from how much money you 
are carrying to who has a bounty and how much that bounty may be.<br/>
#2: Inventory:<br/>
-this will tell you what you are carrying and also provides an interface to use some of those 
items in your inventory.  For example, if your getting the measage, ""You Are Starving"" and you 
have 10 fish in your inventory.  Press the #2, highlight ""fish"", change the number in the box 
to ""10"", then click ""use"".  That will make your charactor eat the fish and you will loose 
some hunger (high hunger is a bad thing).  You may also notice ""key chain"" in your inventory.  
This will hold all your keys to the vehicles you own.  You can give these keys to other players 
via this interface but know that they need to be near you for something like 5 seconds to receive 
the item.<br/>
#3: Hands Up<br/>
This button will make your charactor put his hands up.  This is useful for when you want to show 
the coppers that you are not a threat and are cooperating.  They can then restrain you if they 
feel the need.
<br/>
#4: Hands Down<br/>
this button will return you to a normal pos from ""hands up"".
<br/>
E: Action<br/>
this button is your basic ""action button"".  this is how you will interact with the various 
interfaces around Chern such as shops and ATM's.  This will also allow you to attempt to steal 
from other players.  You can only steal money if the other player has been knocked unconscious or 
is restrained.
<br/>
T: Access Inventory<br/>
when you own a car or other vehicle, you can access that car's inventory by sitting in the drivers seat 
 and pressing ""T"".  You will then be shown two box's.  The left box is what is in the car, 
and the right box is what is in your inventory.  Highlight the object you want to transfer, then 
select the amount and press the button on the side that has the item.  Car's hold a certain 
amount of weight just like your charactor so be aware of what you stash in there.  Also, if your 
vehicle is destroyed then you will loose whatever you place in here.  Coppers can search for 
drugs or other ileagal items.  If they find them in your car it will disappear and the coppers 
gain money equal to the value of the drugs.
<br/>
left shift+F: Stun<br/>
If you have a gun in your hands, you can stand next to another player and perform a stun action.  
Be aware that this will knock all of the other players weapons out onto the ground, so if you 
don't want to piss everyone off, only do this to your enemies.
<br/>
0-0-6, 0-0-7, 0-0-8: shout outs<br/>
Press these buttons to shout out measages on the fly.  For civilians the default says ""Don't 
Shoot, I surrender!"".  For cops, it says a variety of things but mainly says, ""Put up your 
hands or your dead"" kinda thing.
<br/>
0-0: options<br/>
this should give you the options for video settings, shout outs, fix head bug, and even a quick-
brief tutorial on CLR.""
<br/>
Cops:<br/>
`(tilde key (to the left of the 1 key): COPMENU. allows you to set their bounties, set them free 
and more. you have more options if you use the copmenu whilst in a vehicle.
<br/>

"
]
];

player createDiaryRecord ["changelog", 
[
"TCG IL Changelog", 
"<br/>
--IL V1.04-StateSave-Emita<br/>
Major Bug Fixes<br/>
<br/>
--IL V1.03-StateSave-Emita<br/>
ESU Can Now Revive and Drag Bodies<br/>
Small Bug Fixes<br/>
<br/>
--IL V1.02-StateSave-Emita<br/>
Fixed Swat Shop.<br/>
Added Information Bar.<br/>
Added Color Corrections.<br/>
Added a better quick saving system.<br/>
Final Stat Save Patch Added.<br/>
<br/>
--IL V1.01-StatSave-Emita<br/>
Fixed buged shops.<br/>
Fixed couple of script errors.<br/>
Changed cop weapon prices.<br/>
Removed server cleaner, sorry if you lost money or cars.<br/>
If you find any bugs please report them asap so they can be fixed: http://tcgaming.enjin.com/bugreport.<br/>
<br/>
--IL V1.0-StatSave-Emita<br/>
<br>
Added stat save system.<br/>
-For an in-depth description of how it works visit: http://tcgaming.enjin.com/forum/m/679474/viewthread/9107238-il-v10statsaveemita/page/1<br>
Added private storage back to the map to stat save your items.<br/>
Added legal trucking missions back in.<br/>
Added a server clean up script. Removed dead bodies, destroyed cars, and repairs buildings.<br/>
Added a script to display as a hint the ratio and tell you if the ratio is ok or off.<Br/>
Added the option for cops to impound vehicles but they do not get paid.<br/>
Added so if the governor is killed it resets the taxes and laws to default. Also made it so it displays AAN world news of his death.<br/>
Fixed pumpkin/strawberry problem.<br/>
-Pumpkins can be made into pumpkin pie and sold at the bakery.<br/>
Fixed script lag hopefully.<br/>
Moved the two illegal steroids to the pharmacy and are legal. Read there descriptions for more info on them.<br/>
Changed wheat so it makes bread instead of hamburgers.<br/>
Changed prices of almost everything.<Br/>
Changed so you fish quicker.<br/>
Changed the gather rate of resources and fish.<br/>
Changed the max amount of money you can have in your bank to 25 million.<br/>
Changed the max ammount of money you can have on you to 5 million.<br/>
Changed pay checks/income.<br/>
Changed the bank.<br/>
Changed how much of the bounty cops get if they kill a wanted player from 1/3 to 1/10.<br/>
Changed the respawn times.<br/>
Changed how much each food will feed you.<br/>
-Cops respawn time is 1 minute no matter what.<br/>
-Civs respawn time is also 1 minute with 2 minutes added per kill and 10 seconds added for every death.<br/>
Changed burgler and code breaker scripts. -Luc<br/>
Removed several resources. Only resources left are Iron, Gold, and Diamond.<br/>
Removed the south fishing area and moved the boat shop north.<br/>
Removed when killing a player you lose your assassin licence.<br/>
========== Notes ==========<br/>
Thanks to Johny305 for all his help setting up the stat save and help working out the bugs in various scripts. Also thanks to Sullet and Luc Mathlin for there help in testing and ideas.<br/>
This version of the mission might contain bugs. <br/>
<br/>



"
]
];

player selectDiarySubject "changelog";