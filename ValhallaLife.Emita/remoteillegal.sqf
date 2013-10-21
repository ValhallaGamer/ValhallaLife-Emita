////////////////////////////////////
////			                 //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////
_item   = _this select 1;
if ((isciv) and (player distance jaild <= 50 or player distance countygate <= 50)) then 
{
if ((isciv) and (player distance jaild <= 50)) then 
	{
	"if(iscop)then{player sidechat ""Someone opened the Jail cell with an illegal remote.""}" call broadcast;
	player groupchat "You opened the main jail cell door.";
	policehq animate ["CDoorA",1]; policehq say "dooropen";
	if (round(random 100) <= 50) then
		{
		player groupchat "The remote broke just after the cell was opened.";
		[_item, -1] call INV_AddInvItem;
		};
	};	
if ((isciv) and (player distance countygate <= 50)) then 
	{
	"if(iscop)then{player sidechat ""Someone opened the County gates with an illegal remote.""}" call broadcast;
	player groupchat "You opened the County jail gate.";
	countygate animate ["innergate",1]; countygate say "fanceopen";
	countygate animate ["outergate",1]; countygate say "fanceopen";	
	if (round(random 100) <= 50) then
		{
		player groupchat "The remote broke just after the gates where opened.";
		[_item, -1] call INV_AddInvItem;
		};
	};
}
else
{
player groupchat "You are to far away from the cell or gate for the remote to work correctly.";
};