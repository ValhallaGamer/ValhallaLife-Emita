// server keeps track of cash in gas stations, and makes the variable public
// written by eddie vedder
while {true} do
{
_randomamount = ceil ((random 250) + 250);
if (station3money < maxstationmoney) then
	{	
	station1money = station1money + _randomamount;
	if (station1money > maxstationmoney) then {station1money = maxstationmoney;};
	};
if (station3money < maxstationmoney) then
	{
	station2money = station2money + _randomamount;
	if (station2money > maxstationmoney) then {station2money = maxstationmoney;};
	};
if (station3money < maxstationmoney) then
	{
	station3money = station3money + _randomamount;
	if (station3money > maxstationmoney) then {station3money = maxstationmoney;};
	};
if (station4money < maxstationmoney) then
	{
	station4money = station4money + _randomamount;
	if (station4money > maxstationmoney) then {station4money = maxstationmoney;};
	};
if (station5money < maxstationmoney) then
	{
	station5money = station5money + _randomamount;
	if (station5money > maxstationmoney) then {station5money = maxstationmoney;};
	};
if (station6money < maxstationmoney) then
	{
	station6money = station6money + _randomamount;
	if (station6money > maxstationmoney) then {station6money = maxstationmoney;};
	};
if (station7money < maxstationmoney) then
	{
	station7money = station7money + _randomamount;
	if (station7money > maxstationmoney) then {station7money = maxstationmoney;};
	};
if (station8money < maxstationmoney) then
	{
	station8money = station8money + _randomamount;
	if (station8money > maxstationmoney) then {station8money = maxstationmoney;};
	};
if (station9money < maxstationmoney) then
	{
	station9money = station9money + _randomamount;
	if (station9money > maxstationmoney) then {station9money = maxstationmoney;};
	};
if (pharmmoney < maxstationmoney) then
	{
	pharmmoney = pharmmoney + _randomamount;
	if (pharmmoney > maxstationmoney) then {pharmmoney = maxstationmoney;};
	};
if (barmoney < maxbarmoney) then
	{
	barmoney = barmoney + _randomamount;
	if (barmoney > maxbarmoney) then {barmoney = maxbarmoney;};
	};
if (barmoney1 < maxbarmoney) then
	{
	barmoney1 = barmoney1 + _randomamount;
	if (barmoney1 > maxbarmoney) then {barmoney1 = maxbarmoney;};
	};
if (barmoney2 < maxbarmoney) then
	{
	barmoney2 = barmoney2 + _randomamount;
	if (barmoney2 > maxbarmoney) then {barmoney2 = maxbarmoney;};
	};
if (barmoney3 < maxbarmoney) then
	{
	barmoney3 = barmoney3 + _randomamount;
	if (barmoney3 > maxbarmoney) then {barmoney3 = maxbarmoney;};
	};
if (house1money < maxhousemoney) then
	{
	house1money = house1money + _randomamount;
	if (house1money > maxhousemoney) then {house1money = maxhousemoney;};
	};
if (house2money < maxhousemoney) then
	{
	house2money = house2money + _randomamount;
	if (house2money > maxhousemoney) then {house2money = maxhousemoney;};
	};
if (house3money < maxhousemoney) then
	{
	house3money = house3money + _randomamount;
	if (house3money > maxhousemoney) then {house3money = maxhousemoney;};
	};
if (house4money < maxhousemoney) then
	{
	house4money = house4money + _randomamount;
	if (house4money > maxhousemoney) then {house4money = maxhousemoney;};
	};
if (house5money < maxhousemoney) then
	{
	house5money = house5money + _randomamount;
	if (house5money > maxhousemoney) then {house5money = maxhousemoney;};
	};
if (house6money < maxhousemoney) then
	{
	house6money = house6money + _randomamount;
	if (house6money > maxhousemoney) then {house6money = maxhousemoney;};
	};
if (house7money < maxhousemoney) then
	{
	house7money = house7money + _randomamount;
	if (house7money > maxhousemoney) then {house7money = maxhousemoney;};
	};
if (house8money < maxhousemoney) then
	{
	house8money = house8money + _randomamount;
	if (house8money > maxhousemoney) then {house8money = maxhousemoney;};
	};
if (house9money < maxhousemoney) then
	{
	house9money = house9money + _randomamount;
	if (house9money > maxhousemoney) then {house9money = maxhousemoney;};
	};
if (house10money < maxhousemoney) then
	{
	house10money = house10money + _randomamount;
	if (house10money > maxhousemoney) then {house10money = maxhousemoney;};
	};	
publicvariable "station1money";
publicvariable "station2money";
publicvariable "station3money";
publicvariable "station4money";
publicvariable "station5money";
publicvariable "station6money";
publicvariable "station7money";
publicvariable "station8money";
publicvariable "station9money";
publicvariable "pharmmoney";
publicvariable "barmoney";
publicvariable "barmoney1";
publicvariable "barmoney2";
publicvariable "barmoney3";
publicvariable "house1money";
publicvariable "house2money";
publicvariable "house3money";
publicvariable "house4money";
publicvariable "house5money";
publicvariable "house6money";
publicvariable "house7money";
publicvariable "house8money";
publicvariable "house9money";
publicvariable "house10money";
sleep 30;
};




//eddie vedder