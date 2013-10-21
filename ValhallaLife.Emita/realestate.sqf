///////////////////////////////////
////////Copyright © TCG///////////
////www.tcgaming.enjin.com///////
//////////Created By////////////
//////{TCG}Luc_Mathlin/////////
//////////////////////////////

//========================================ID LIST===================================================

//				Luc			ZKB			Tezz	Harry		Jolly	Plox		Lee		SGTJacky		Tom	  J. GUNN	J. Dennis
uncompound = ["8144454","115144966","4687750","1215041","1282497","67207366","76353AX","125853382","7644486","7314758","2125312"];

//				Luc			ZKB			Ken		Hagar	Hiro
executive = ["8144454","115144966","1755777","2058758","2411654"];

//========================================Workings==================================================

_uid = getPlayerUID vehicle player;

if !(_uid in uncompound or _uid in executive) then
{
player groupchat "You don't live in any supported compounds";
}
else
{

	//===UN Compound===

	if !(_uid in uncompound) then
	{
	}
	else
	{
	['un_compound_remote', (-1)] call INV_AddInventoryItem;
    sleep 0.5;
    ['un_compound_remote', (1)] call INV_AddInventoryItem;
	player groupchat "UN Compound Remote Added";
	};
	
	//===Executive Compound===
	
	if !(_uid in executive) then
	{
	}
	else
	{
	['executive_compound_remote', (-1)] call INV_AddInventoryItem;
	sleep 0.5;
	['executive_compound_remote', (1)] call INV_AddInventoryItem;
	player groupchat "Executive Compound Remote Added";
	};

};
