/*
The Roleplay Project: Reloaded
Copyright (C) 2011  Matthew Simms
*/
[] spawn
{
    
    disableSerialization;
    100 cutRsc ["RPP_Dlg_ui", "PLAIN"];
    while {true} do
    {
        _money = (('geld' call INV_GetItemAmount) call ISSE_str_IntToStr);
        _weight = [] call INV_GetOwnWeight;
        _maxWeight = INV_Tragfaehigkeit;
        _hunger = round(INV_hunger);
        _health = 100-(round((damage player) * 100));
        _id = getPlayerUID player;
        _maxbank = (Kontostand call ISSE_str_IntToStr);
        ((RPP_display_ui select 0) displayCtrl 1) ctrlSetStructuredText parseText format["<t align='center'><t shadow='1'shadowColor='#000000'><t color='#08A300'>Cash: <t color='#68C900'>$%1:<t color='#68C900'>$%7<t color='#FFFFFF'> - <t color='#ED9A00'>Inventory Size: %2/%3 <t color='#FFFFFF'>-<t color='#40B6FF'> Health: %4 <t color='#FFFFFF'>-<t color='#D62B2B'> Hunger: %6 <t color='#FFFFFF'>-<t color='#E8E06F'> ID: %5</t> <t color='#FFFFFF'>-</t> <t color='#BD94C9'>TS3: ts3.valhallagamer.com</t>", _money, _weight, _maxWeight, _health, _id, _hunger, _maxbank];
        sleep 1;
    };
};

"colorInversion" ppEffectEnable false;
"wetDistortion" ppEffectEnable false;
"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust[ 1, 1.2, -0.001, [3.82, 1.87, 1.71,    0.002],[1, 1, .2, 1.1],[0, 2, 2.6, 3]] ;    "colorCorrections" ppEffectCommit 10;  "colorCorrections" ppEffectEnable true; 
waitUntil {ppEffectCommitted "colorCorrections"}; 
"colorCorrections" ppEffectEnable true;
"chromAberration" ppEffectEnable false;