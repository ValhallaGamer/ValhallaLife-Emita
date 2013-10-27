class ESU_Alert 

{

name     = "";	
sound[]  = {"snd\ESU.ogg", 1, 1};
titles[] = {};

};

class Siren_Short 

{

name     = "";	
sound[]  = {"\Siren_Short.ogg", 1, 1};
titles[] = {};

};

class Siren_Long 

{

name     = "";
sound[]  = {"\Siren_Long.ogg", 1, 1};
titles[] = {};

};

class Bank_alarm 

{

name     = "";
sound[]  = {"\bankalarm.ogg", 1, 1};
titles[] = {};

};

class alarm4

{

name     = "";
sound[]  = {"\alarm4.ogg", 1, 1};
titles[] = {};

};



class Flash_Bang 

{

name     = "";
sound[]  = {"\snd\Flashbang.ogg", 4, 1};
titles[] = {};

};

class DuctTapeStrap 

{

name     = "";
sound[]  = {"\snd\Flashbang.ogg", 4, 2};
titles[] = {};

};

   class Unlock : DuctTapeStrap {sound[] = {"\snd\Unlock.ogg", db+11, 1};}; 
   class Scroll : DuctTapeStrap {sound[] = {"\snd\Scroll.ogg", db-10, 1};}; 
   class Thingie : DuctTapeStrap {sound[] = {"\snd\Thingie.ogg", 1, 1};}; 

class carallarm
	{
		name = "carallarm"; // Name for mission editor
		sound[] = {\snd\carallarm.ogg, 4, 1};
		titles[] = {0, ""};
	};
	
	class fire_alarm
	{
		name = "fire_alarm"; // Name for mission editor
		sound[] = {\snd\fire_alarm.ogg, 4, 1};
		titles[] = {0, ""};
	};
	
	class trolled
	{
		name = "trolled"; // Name for mission editor
		sound[] = {\snd\trolled.ogg, 4, 1};
		titles[] = {0, ""};
	};

	class track1
	{
		name = "Track1"; // Name for mission editor
		sound[] = {\snd\Track1.ogg, 4, 1};
		titles[] = {0, ""};
	};
	
	class IntruderAlarm
	{
		name = "IntruderAlarm"; // Name for mission editor
		sound[] = {\snd\IntruderAlarm.ogg, 4, 1};
		titles[] = {0, ""};
	};

	class ElectricGate
	{
		name = "ElectricGate"; // Name for mission editor
		sound[] = {\snd\ElectricGate.ogg, 4, 1};
		titles[] = {0, ""};
	};
	