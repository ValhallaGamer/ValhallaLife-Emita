
_Unit = _This Select 0;
_T = 2500;
_Critical_Wounds = 0;
_Minor_Wounds = 1;
_Hand_Wounds = 0;
_BleadOut_F = 0;
_Check_Pos = GetPosATL _Unit;
_Timer = Time + 5 + Random 15;
_min = 0;
_s = 0;

While {Alive(_Unit) And (Damage _Unit > 0)} Do
	{
	If (_T < 0) Then {_Unit SetDamage 1;};
	If ((_Check_Pos Distance (GetPosATL _Unit) > 0.2) And (Vehicle _Unit == _Unit)) Then {_BleadOut_F = 45*(Damage _Unit)+6*(Count (NearestObjects [Position _Unit,["logic"],0.3]));} Else {_BleadOut_F = 15*(Damage _Unit)+2*(Count (NearestObjects [Position _Unit,["logic"],0.3]));};
	_T = _T - _BleadOut_F;
	_min = (_T/_BleadOut_F)/60;
	_s = (_min - Floor _min)*60;
	_Unit SetUnitRecoilCoefficient (1+(1*_BleadOut_F));
	If (IsPlayer _Unit) Then
		{
		If ((Time > _Timer) And ((_T < 500) Or (_BleadOut_F > 25))) Then {_Timer = Time + 10; TitleText ["","BLACK IN",15];};
		If ((Time > _Timer) And (_BleadOut_F > 15)) Then {_Timer = Time + 3 + Random 3; TitleText ["","BLACK IN",4];};
		If ((Time > _Timer) And (_BleadOut_F > 7)) Then {_Timer = Time + 5 + Random 15; TitleText ["","BLACK IN",2];};
		If ((Time > _Timer) And (_BleadOut_F > 0)) Then {_Timer = Time + 10 + Random 15; TitleText ["","BLACK IN",0];};
		};
	_Check_Pos = GetPosATL _Unit;
	Sleep 1;
	};
_Unit SetUnitRecoilCoefficient 1;
{DeleteVehicle _x;} ForEach (NearestObjects [Position _Unit,["logic"],0.3]);
