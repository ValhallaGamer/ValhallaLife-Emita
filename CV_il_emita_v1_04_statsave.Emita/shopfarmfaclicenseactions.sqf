_a1 = 0; 
_a2 = 0; 
_a3 = 0;
_a4 = 0;
_h1 = 0; 
_h2 = 0; 
_h3 = 0; 
_h3 = 0; 
_h4 = 0;
_f1 = 0; 
_f2 = 0;
_f3 = 0;

_Arr1 = [];
_Arr2 = [];

for [{_i=0}, {_i < (count INV_FarmItemArray)},{_i=_i+1}] do {_Arr1 = _Arr1 + [0]}; 
for [{_i=0}, {_i < (count INV_Lizenzen)},{_i=_i+1}] do {_Arr2 = _Arr2 + [0]};

shopusearray = [];

sleep 10;

//==================================SHOPACTIONS========================================
									
for [{_i=0}, {_i < (count INV_ItemShops)}, {_i=_i+1}] do 

	{
			
	_flag   = ((INV_ItemShops select _i) select 0);														
	
	shopusearray = shopusearray + [_flag];
	
	};

//===================================FARMING===============================================

while {true} DO {
							
for [{_i = 0}, {_i < (count INV_FarmItemArray)}, {_i = _i + 1}] do 

	{
														
	_arr    = (INV_FarmItemArray select _i);																						
	_added  = (_Arr1 select _i);																																														
	_isInArea = false;

	if(iscop and ((_arr select 1) == "Whale" or (_arr select 1) == "Unprocessed_LSD"))exitwith{};
												
		{

		if (((vehicle player) distance (getMarkerPos (_x select 0))) < (_x select 1)) then {_isInArea = true;};

		} forEach (_arr select 0);
						
	_hasVehicle = false;
														
		{

		if ((vehicle player) isKindOf _x) then {_hasVehicle = true;};

		} forEach (_arr select 4);

	if ((_isInArea) and (_hasVehicle) and (speed (vehicle player) > 2 or ((_arr select 4) select 0) == "Ship")) then 

		{																																																				

		[(_arr select 1), (_arr select 2), (_arr select 3), (_arr select 4)] execVM "gathergen.sqf";	

		};	

	};				

//=======================================FACTORIES================================================
//======================================LICENSES=========================================

for [{_i = 0}, {_i <= (count INV_Lizenzen)}, {_i = _i + 1}] do 

{	
													
_license     = ((INV_Lizenzen select _i) select 0);
_flag        = ((INV_Lizenzen select _i) select 1);
_licensename = ((INV_Lizenzen select _i) select 2);								
_cost        = ((INV_Lizenzen select _i) select 3);								
_added       = _Arr2 select _i;	
																																							
if ((player distance _flag <= 5) and !(_license call INV_HasLicense) and (_added == 0)) then 

	{
																											
	call compile format ["a_license%1 = player addaction [format[localize ""STRS_inv_actions_buy"", ""%2"", %3], ""addlicense.sqf"", [%1, ""add""]];", _i, _licensename, (_cost call ISSE_str_IntToStr)]; 																																				
	_Arr2 set [_i, 1];	

	};																																				

if ((player distance _flag > 5) and (_added == 1) || (_license call INV_HasLicense)) then 

	{																														

	call compile format ["player removeaction a_license%1; ", _i];																																													
	_Arr2 set [_i,0];		

	};		

};

sleep 1;

};
