
ScopeName "Main";
If (Alive(_This Select 0)) Then
	{
	_Unit = _This Select 0;
	_Part = _This Select 1;
	_Damage = _This Select 2;
	_Projectile = _This Select 4;
	If (Vehicle _Unit == _Unit) Then
		{
		// HEAD
		// WOUND: FATAL
		If (_Part in ["head_hit"]) Then
			{
			If (_Projectile in ["B_127x108_Ball","B_127x99_Ball_noTracer","B_127x99_Ball_noTracer_BAF"]) Then
				{
				If (_Damage > 1) Then
					{
					_Unit SetDamage 1;
					};
				}
				Else
				{
				If (_Damage > 1.3+(Damage _Unit)) Then
					{
					_Unit SetDamage 1;
					};
				};
			BreakTo "Main";
			};
		// TORSO
		If (_Part in ["body"]) Then
			{
			// WOUND: FATAL
			If (_Damage > 2.3+(Damage _Unit)) Then
				{
				If (IsPlayer (_This Select 0)) Then
					{
					TitleText ["","WHITE IN",0];
					_Unit playmove "deadstate";
					Sleep 3;
					PlaySound "Choking";
					TitleText ["","BLACK IN",15];
					Sleep 5;
					TitleText ["","BLACK IN",5];
					Sleep 6;
					};
				_Unit SetDamage 1;
				BreakTo "Main";
				};
			// WOUND: MINOR
			If (_Damage > 0.1) Then
				{
				If (IsPlayer (_This Select 0)) Then {TitleText ["","WHITE IN",0];};
				_Unit SetDir (GetDir _Unit+(Log ([0.1,10] Select Floor Random(2)))*(7+Random (8)));
				BreakTo "Main";
				};
			BreakTo "Main";
			};
		// LEGS
		If (_Part in ["legs"]) Then
			{
			// WOUND: MINOR
			If (_Damage > 0.1+(Damage _Unit)) Then
				{
				If (Damage _Unit == 0) Then {_Unit SetDamage 0.1; Null = [_Unit] ExecVM "Real_Damage\Bleading.sqf";};
				_Unit SetDamage ((Damage _Unit)+0.03);
				If (IsPlayer (_This Select 0)) Then {TitleText ["","WHITE IN",0];};
				};
			// WOUND: NORMAL
			If (_Damage > 0.8+(Damage _Unit)) Then
				{
				_Unit SetDamage ((Damage _Unit)+0.07);
				If (IsPlayer (_This Select 0)) Then {TitleText ["","WHITE IN",0];};
				Sleep 0.1;
				"logic" CreateUnit [Position _Unit, Logic_Team, "This AttachTo [_Unit,[0,0,0]];", 1.0, "MAJOR"];
				_Unit SetHit ["legs",1];
				};
			// WOUND: CRITICAL
			If (_Damage > 1.9+(Damage _Unit)*0.5) Then
				{
				_Unit SetDamage ((Damage _Unit)+0.10);
				If (IsPlayer (_This Select 0)) Then {TitleText ["","WHITE IN",0];};
				Sleep 0.1;
				"logic" CreateUnit [Position _Unit, Logic_Team, "This AttachTo [_Unit,[0,0,0]];", 1.0, "MAJOR"];
				_Unit SetHit ["legs",1];
				};
			BreakTo "Main";
			};
		// HANDS
		If ((_Part in ["hands"]) And (_Damage > 1.5+(Damage _Unit)*2)) Then
			{
			If (Damage _Unit == 0) Then {_Unit SetDamage 0.1; Null = [_Unit] ExecVM "Real_Damage\Bleading.sqf";};
			_Unit SetDamage ((Damage _Unit)+0.05);
			If (IsPlayer (_This Select 0)) Then {TitleText ["","WHITE IN",0];};
			};
		}
		Else
		{
		If (_Part in ["head_hit","body","legs","hands"]) Then
			{
			_Unit SetDamage ((Damage _Unit)+0.05);
			If (IsPlayer (_This Select 0)) Then {TitleText ["","WHITE IN",0];};
			If ((_Part in ["head_hit"]) And (_Damage > 0.3)) Then {_Unit SetDamage 1;};
			};
		};
	};
Sleep 0.2;
If (Count (NearestObjects [Position (_This Select 0),["logic"],0.3]) > 0) Then {(_This Select 0) SetHit ["legs",1];};
If ((TypeOf (Vehicle (_This Select 0)) != "man") And (Damage (Vehicle (_This Select 0)) > 0.95)) Then {{_x SetDamage 1} ForEach (Crew (Vehicle (_This Select 0)));};
