////////////////////////////////////
//	    Copyright © TCG     	 //
//        Made by ZKB           //
//www.tcgaming.enjin.com       //
////////////////////////////////



while {true} do
{
sleep 120;
_copcount = playersNumber west;
_esucount = playersNumber resistance;
_civcount = playersNumber civilian;
_copratio = _copcount * 2;
_text4 = "<t color='#0015FF' size='1.5' align='center'>Ratio is fine</t><br/><br/>";
if (_copratio > _civcount) then 
{
_text4 = "<t color='#FF0000' size='2' font='Zeppelin33' align='center'>RATIO IS OFF FIX IT</t><br/><br/>";
};

_title  = "<t color='#FFA200' size='1.5' align='center'>Player Count</t><br/><br/>";
_text1  = format ["<t color='#7BFF00' size='1.2' align='left'>Cops:%1</t><br/><br/>", _copcount];
_text2   = format ["<t color='#7BFF00' size='1.2' align='left'>Civs:%1</t><br/><br/>", _civcount];
_text3   = format ["<t color='#7BFF00' size='1.2' align='left'>Esu:%1</t><br/><br/>", _esucount];
hint parseText (_title + _text1 + _text2 + _text3 + _text4); call broadcast;
sleep 480;
};