
Logic_Team = CreateGroup Civilian;

DamageDetector = Compile Preprocessfile "Real_Damage\Damage_Detector.sqf";

_Object = _This Select 0;
_Rad = _This Select 1;

// SOLDIER TYPES:
// "SoldierWB" -> BLUFOR
// "SoldierEB" -> OPFOR
// "SoldierGB" -> Guerrila
// "Civilian" -> Civilian
// "Man" -> All

_Soldier_Type = _This Select 2;

_RD_Units = (Position _Object) NearEntities [_Soldier_Type,_Rad];

{_x addEventHandler ["HandleDamage", {If (Alive(_This Select 0)) Then {Null = _This Spawn DamageDetector;};}];} ForEach _RD_Units;
