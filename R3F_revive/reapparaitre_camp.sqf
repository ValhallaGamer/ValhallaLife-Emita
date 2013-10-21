/**
 * Fait réapparaître un joueur en attente de réanimation à la base.
 * La position de réapparition est la même que celle qu'ArmA a
 * déterminé à l'aide du système de marqueurs "respawn_xxx".
 * 
 * Copyright (C) 2011 madbull ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

// Fonctionnalité accessible uniquement lorsque personne ne s'occupe du blessé
revivetimer = 0;
//if !(isNil {player getVariable "R3F_REV_est_pris_en_charge_par"}) then
//{
//	titleText [STR_R3F_REV_joueur_pris_en_charge, "PLAIN"];
//}
// On ferme tout les fils d'exécution éventuels
terminate R3F_REV_fil_exec_attente_reanimation;
terminate R3F_REV_fil_exec_reapparaitre_camp;
terminate R3F_REV_fil_exec_effet_inconscient;
	
// Mémorisation du fil d'exécution lancé
R3F_REV_fil_exec_reapparaitre_camp = [] spawn
{
	private ["_joueur"];
	_joueur = player;
		
	closeDialog 0;
		
	call R3F_REV_FNCT_detruire_marqueur_inconscient;
		
	// Informer tout le monde de la fin de l'état inconscient
	R3F_REV_fin_inconscience = _joueur;
	publicVariable "R3F_REV_fin_inconscience";
	["R3F_REV_fin_inconscience", R3F_REV_fin_inconscience] spawn R3F_REV_FNCT_fin_inconscience;
	_joueur setVariable ["R3F_REV_est_inconscient", false, true];
	_joueur setVariable ["R3F_REV_est_pris_en_charge_par", nil, true];
		
	// On masque ce qui se passe au joueur (joueur dans les airs + animations forcés)
	R3F_REV_effet_video_couleur ppEffectAdjust [0.25, 1, 0, [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]];
	R3F_REV_effet_video_couleur ppEffectCommit 0;
	titleText [STR_R3F_REV_reapparition_camp_en_cours, "PLAIN"];
	waitingforit = 0;
	if(isciv) then
	{
		["isdead", isdead] spawn ClientSaveVar; 
		DeadWaitSec = DeadWaitSec + respawntimeinc;
		if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
		[] execVM "respawncamera.sqf";
		[] execVM "enablebuttons.sqf";
		shoveldur=20;
		pickaxedur=50;
		hammerdur=100;
		alreadygotaworkplacejob=0;
		sleep 3; 
		["DeadWaitSec", DeadWaitSec] spawn ClientSaveVar;
		if(call compile format["%1_arrest > 0", player]  )then{format["%1_arrest = 0;", player]   call broadcast;};
		if(call compile format["%1_wanted > 0", player]  )then{format["%1_wanted = 0;", player]   call broadcast;};
		if(call compile format['count %1_reason > 0', player]  )then{format['%1_reason = [];', player]   call broadcast;};
		if(call compile format['count %1_warning > 0', player]  )then{format['%1_warning = [];', player]   call broadcast;};
		if(call compile format["kopfgeld_%1 > 0", player])then{format["kopfgeld_%1 = 0;", player] call broadcast;};
		(vehicle player) addEventHandler ["handleDamage", { true }];	
		(vehicle player) removeAllEventHandlers "handleDamage";
		(vehicle player) allowDamage true;
		sleep 0.001;
		player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
		sleep 0.001;
	
		if (ismayor) then
		{
			ismayor=false;
			MayorNumber = -1;
			PUBLICVARIABLE "MayorNumber";
			false call TurnMayorFunc;
			INV_LizenzOwner = INV_LizenzOwner - ["mayorlic"];
			format["civ%1_mayor = 0;", player] call broadcast;
			GesetzArray SET [0, "Always Drive on the RIGHT side of the road"]; 
			GesetzArray SET [1, "Always Holster weapons in Towns."]; 
			GesetzArray SET [2, "Speed limits 60 in town 90 out"]; 
			GesetzArray SET [3, "Governor and Guards May have any weapon unlicensed"]; 
			GesetzArray SET [4, "Governor is immune to traffic laws"]; 
			GesetzArray SET [5, "Drugs are illegal"]; 
			GesetzArray SET [6, "Whaling is illegal"]; 
			GesetzArray SET [7, "Hit and Run is illegal and against the rules"]; 
			GesetzArray SET [8, "It is illegal to have hookers in a brothel"]; 
			GesetzArray SET [9, ""]; 
			GesetzArray SET [10, ""]; 
			GesetzArray SET [11, ""]; 
			GesetzArray SET [12, ""]; 
			GesetzArray SET [13, ""]; 
			GesetzArray SET [14, ""]; 
			(INV_ItemTypenArray select 0) SET [2, 5]; 
			(INV_ItemTypenArray select 1) SET [2, 5]; 
			(INV_ItemTypenArray select 2) SET [2, 5]; 
			(INV_ItemTypenArray select 3) SET [2, 5];						
			bank_steuer = 5; 
			title = parsetext "<t size='2'>Breaking News</t><br />The Governor of Emita has died";
			scroll = parsetext "                                                                       For some this is sad news while for others it might be good news. But the Governor of Emita has died and all taxes have been set to default. Also the laws have been changed back to normal."; 
			nul = [title,scroll] spawn BIS_fnc_AAN; 
			sleep 15;
			3000 cuttext ["","plain"];
		};

	sleep respawnzeit - 5;
	removeAllWeapons role;
	hidebody role;
	sleep 1;
	};
		
	if(iscop) then
	{
		removeAllWeapons role;
		if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
		[] execVM "respawncamera.sqf";
		[] execVM "enablebuttons.sqf";
		sleep (respawnzeit - 5);
		hidebody role;
		sleep 1;
		//execVM "actions.sqf";	
		(vehicle player) addEventHandler ["handleDamage", { true }];	
		(vehicle player) removeAllEventHandlers "handleDamage";
		(vehicle player) allowDamage true;
		sleep 0.001;
		player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
		sleep 0.001;
	};
		
		
	R3F_REV_corps_avant_mort = _joueur;
		
	// Isoler le corps
	_joueur setPosATL [getPosATL _joueur select 0, getPosATL _joueur select 1, (getPosATL _joueur select 2)+2000];
		
	// Stop animation blessé, reprise arme debout
	_joueur selectWeapon (primaryWeapon _joueur);
	_joueur playMoveNow "AmovPercMstpSlowWrflDnon";
		
	sleep 5;
		
	// Retour du corps au marqueur de réapparition
	_joueur setVelocity [0, 0, 0];
	_joueur setPosATL R3F_REV_position_reapparition;
		
	// Suppresion de l'éventuel EH HandleDamage
	if !(isNil {_joueur getVariable "R3F_REV_id_EH_HandleDamage"}) then
	{
		_joueur removeEventHandler ["HandleDamage", _joueur getVariable "R3F_REV_id_EH_HandleDamage"];
		_joueur setVariable ["R3F_REV_id_EH_HandleDamage", nil, false];
	};
		
	_joueur setCaptive false;
		
	// Restauration du nombre de réanimations possibles
	R3F_REV_nb_reanimations = R3F_REV_CFG_nb_reanimations;
		
	titleText ["", "PLAIN"];
	ppEffectDestroy R3F_REV_effet_video_flou;
	ppEffectDestroy R3F_REV_effet_video_couleur;
	if(iscop) then
	{
		[] execVM "pistolControl.sqf";
		//	[] execVM "rifleControl.sqf";
		[] execVM "enablebuttons.sqf";
		deleteVehicle role;	
		isdead = 0; 
		_civnum = player;
		if (_civnum == cop8) then {player setPos getPos deputyspawn;};
		if (_civnum == cop9) then {player setPos getPos deputyspawn;};
		if (_civnum == cop14) then {player setPos getPos ucspawn;};
		if (_civnum == cop15) then {player setPos getPos ucspawn;};
		if (_civnum == cop16) then {player setPos getPos ucspawn;};
		(vehicle player) addEventHandler ["handleDamage", { true }];	
		(vehicle player) removeAllEventHandlers "handleDamage";
		(vehicle player) allowDamage true;
		sleep 0.001;
		player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
		sleep 0.001;
	};

	if(isciv) then
	{
		[] execVM "pistolControl.sqf";
		//	[] execVM "rifleControl.sqf";
		[] execVM "enablebuttons.sqf";
		removeAllWeapons player;
		deleteVehicle role;
		waituntil {deadcam == 0};
		isdead = 0;
		["isdead", isdead] spawn ClientSaveVar; 
		(vehicle player) addEventHandler ["handleDamage", { true }];	
		(vehicle player) removeAllEventHandlers "handleDamage";
		(vehicle player) allowDamage true;
		sleep 0.001;
		player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];
		sleep 0.001;
		
		if (local_arrest == 0) then 
			{
				_civ = player;
				player addweapon "ItemGPS";
				switch _civ do
				{
					case civ31: {player setpos getmarkerpos "emsspawn";};
					case civ32: {player setpos getmarkerpos "emsspawn";};
					case civ33: {player setpos getmarkerpos "emsspawn";};
					default {player setpos [getmarkerpos "civspawn1" select 0, getmarkerpos "civspawn1" select 1, (getmarkerpos "civspawn1" select 2) +1];};
				};
		}
		else
		{
			(format ["%1 switchmove ""%2"";", player, "civillying01"]) call broadcast; 
			waituntil {animationstate player == "civillying01"};
			["arrest", CivTimeInPrison, player] execVM "civmenu.sqf";
		}; 
	};
};