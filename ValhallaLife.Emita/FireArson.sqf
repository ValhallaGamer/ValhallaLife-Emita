
{
(format['player sideChat "Cops should set %1 wanted for being an arsonist!";', _x select 0]) call broadcast;
} forEach arsonarray;


{deleteVehicle _x} foreach (nearestobjects [getpos player, ["Land_Canister_EP1"], 5000]);

sleep 5;

arsonarray = [];
publicVariable "arsonarray";
["arsonarray", arsonarray] spawn ClientSaveVar;


