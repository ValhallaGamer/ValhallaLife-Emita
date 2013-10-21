_this    = _this select 3;
_number  = _this select 0;
_art     = _this select 1;         
//           zkb         bryce     hrio      johnny    ken         hagar     jacko     actual    Luc       Van         walter     Hodge      Maximus   smoothface hidden  UndeadLegend GhostRecon Angelsofrun Retro    Cocacola   Austin	 blackburn	bruteforce  helldriven michaelrasch Silas	Jebus        Kerby       manbearpig   unusable   lee       longbow     johnW      herzog      jacky      solstice     jacobson  Driftr Mikey   Hamilton.R  A. Harris  Hornby  Fourdifference  FAKExGAMERTAGx  Chris Legitxcaps Tom      tango69     waicl     grasshopper	Flips
Donate_id = ["115144966","4270912","2411654","5035014","123451462","2058758","8718790","9337030","8144454","100364102","83389510","29523206","5624384","82885766","6351622","73698182","29674566","12148934","9504262","1834370","100039430","7017350","113758918","36615942","108177478","82876038","95143622","12071174","106785030","126376646","76353AX","129034374","2814534","323777AX","125853382","138155078","137347974","81517638","2017409","71652422","95052870","2912070","33202054","75306502","9180102","7902022","7644486","72208646","137055174","137521524","21915526"];

if ((_art == "remove") or (_art == "add")) then 

{

if (_art == "add") then 

	{
	_uid = getPlayerUID vehicle  player;
	_license = ((INV_Lizenzen select _number) select 0);
	_name    = ((INV_Lizenzen select _number) select 2);
	_cost    = ((INV_Lizenzen select _number) select 3);
	if (_license call INV_HasLicense) exitWith {player groupChat localize "STRS_inv_buylicense_alreadytrue";};
	if (('geld' call INV_GetItemAmount) < _cost) exitWith {player groupChat localize "STRS_inv_buylicense_nomoney";};
	if(_license == "car" or _license == "truck")then{demerits = 10};
	if(_license == "Donator_licence" and !(_uid in Donate_id)) exitWith { player groupChat "Restriced to Super Donators"};
	if(_license == "mayorlic" and !(ismayor)) exitWith { player groupChat "Restriced to Mayor"};
	if(_license == "probator" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "patrol_training" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "sobr_training" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "air_support_training" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "cg_air" and !(iscop)) exitWith { player groupChat "Restriced to Police"};
	if(_license == "cg_boat" and !(iscop)) exitWith { player groupChat "Restriced to Police"};


	['geld', -(_cost)] call INV_AddInvItem;
	player groupChat format[localize "STRS_inv_buylicense_gottraining", (_cost call ISSE_str_IntToStr), _name];

	
	INV_LizenzOwner = INV_LizenzOwner + [_license];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	
	} 
	else 
	{

	_license = ((INV_Lizenzen select _number) select 0);
	name    = ((INV_Lizenzen select _number) select 2);
	if (not(_license call INV_HasLicense)) exitWith {player groupChat localize "STRS_inv_buylicense_alreadyfalse";};
	INV_LizenzOwner = INV_LizenzOwner - [_license];
	player groupChat format[localize "STRS_inv_buylicense_losttraining", _name];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

	};

};