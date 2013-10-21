////////////////////////////////////
//			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////
enableSaving [false, false];
version        	= "386";
debug          	= false;
dedicatedServer = false;
copscount      	= 16;
civscount      	= 42;
playercount    	= 58;
debugarray     	= [];
execVM "briefing.sqf";
if(!debug)then{["basicintro"] execVM "introcam.sqf";};
call compile preprocessfile "triggers.sqf";
_h = [] execVM "bankexec.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "playerarrays.sqf";																												
waitUntil{scriptDone  _h};
_h = [65, rolenumber] execVM "initfuncs.sqf";
waitUntil{scriptDone  _h};
_h = [playerarray, playerstringarray, !iscop] execVM "INVvars.sqf";
waituntil{scriptDone  _h};
_h = [] execVM "initWPmissions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "gfx.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "animList.sqf";
waitUntil{scriptDone  _h};
_h = []	execVM "miscfunctions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "variables.sqf";
waitUntil{scriptDone  _h};
execVM "BTK\Cargo Drop\Start.sqf";
execVM "weather.sqf";
execVM "motd.sqf";
execVM "saveVars.sqf";
execVM "ui.sqf";
execVM "playercount.sqf";
//[] execVM "lotterywin.sqf";
player addEventHandler["firedNear", {if (_this select 4 == "firefightermag2"); _this execVM "EMS.sqf"}];
setPitchBank = compile preprocessfile "setPitchBank.sqf";
BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";
if(!dedicatedserver) then
{
	_initClient = execVM "init\InitClient.sqf";
};

if(isServer) then
{
//	execVM "servermissionfile\startcleanloop.sqf";
};

if (isServer) then 
{
_initServer = execVM "init\InitServer.sqf";
call compile preProcessFile "\iniDB\init.sqf";
execVM "Scripts\statSave\serverGather.sqf";
};

if(!isDedicated) then {
[] execVM "saver.sqf";
[] execVM "loadclient.sqf";
execVM "Scripts\statSave\saveToServer.sqf";
waitUntil {!isNil "fn_SaveToServer"};
execVM "Scripts\statSave\loadStats.sqf";
waitUntil {!isNil "statFunctionsLoaded"};
execVM "Scripts\statSave\saveLoop.sqf";
};
execVM "R3F_revive\revive_init.sqf";
