#using scripts\codescripts\struct;
#using scripts\cp\bonuszm\_bonuszm;
#using scripts\cp\bonuszm\_bonuszm_spawner_shared;

#namespace namespace_a432d965;

/*
	Name: function_dc036a7c
	Namespace: namespace_a432d965
	Checksum: 0xCA21C695
	Offset: 0x5D8
	Size: 0x9B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_dc036a7c()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level.var_a432d965 = struct::get_script_bundle("bonuszmdata", GetDvarString("mapname"));
	level.BZM_OverrideLocomotion = &BZM_OverrideLocomotion;
	level.BZM_OverrideHealth = &BZM_OverrideHealth;
	level.BZM_OverrideSuicidalChance = &BZM_OverrideSuicidalChance;
}

/*
	Name: function_da5f2c0d
	Namespace: namespace_a432d965
	Checksum: 0x494BD8B7
	Offset: 0x680
	Size: 0xE33
	Parameters: 2
	Flags: None
*/
function function_da5f2c0d(mapname, var_b0614bba)
{
	level.var_a9e78bf7 = undefined;
	if(!isdefined(level.var_a432d965))
	{
		function_9a6a6726();
		function_97b4bacb(1, 0);
		function_4542e087();
		namespace_2396e2d7::function_fc1970dd();
		return;
	}
	var_6967e3b9 = undefined;
	prefix = "";
	var_e6879fdc = GetStructField(level.var_a432d965, "skiptocount");
	if(!isdefined(var_e6879fdc))
	{
		var_e6879fdc = 0;
	}
	for(i = 1; i <= var_e6879fdc; i++)
	{
		prefix = function_15c7079(i);
		var_454219da = GetStructField(level.var_a432d965, prefix + "skiptoname");
		if(var_454219da == var_b0614bba)
		{
			var_6967e3b9 = i;
			break;
		}
	}
	level.var_a9e78bf7 = [];
	if(!isdefined(var_6967e3b9))
	{
		/#
			level.var_5deb2d16 = 1;
		#/
		function_9a6a6726();
		function_97b4bacb(1, 0);
		function_4542e087();
		namespace_2396e2d7::function_fc1970dd();
		return;
	}
	/#
		level.var_5deb2d16 = 0;
	#/
	level.var_a9e78bf7["skiptoname"] = var_454219da;
	level.var_a9e78bf7["powerdropchance"] = GetStructField(level.var_a432d965, "powerdropchance");
	level.var_a9e78bf7["cybercoredropchance"] = GetStructField(level.var_a432d965, "cybercoredropchance");
	level.var_a9e78bf7["cybercoreupgradeddropchance"] = GetStructField(level.var_a432d965, "cybercoreupgradeddropchance");
	level.var_a9e78bf7["maxdropammochance"] = GetStructField(level.var_a432d965, "maxdropammochance");
	level.var_a9e78bf7["maxdropammoupgradedchance"] = GetStructField(level.var_a432d965, "maxdropammoupgradedchance");
	level.var_a9e78bf7["weapondropchance"] = GetStructField(level.var_a432d965, "weapondropchance");
	level.var_a9e78bf7["instakilldropchance"] = GetStructField(level.var_a432d965, "instakilldropchance");
	level.var_a9e78bf7["instakillupgradeddropchance"] = GetStructField(level.var_a432d965, "instakillupgradeddropchance");
	level.var_a9e78bf7["powerupdropsenabled"] = GetStructField(level.var_a432d965, prefix + "powerupdropsenabled");
	level.var_a9e78bf7["zigzagdeviationmin"] = GetStructField(level.var_a432d965, prefix + "zigzagdeviationmin");
	level.var_a9e78bf7["zigzagdeviationmax"] = GetStructField(level.var_a432d965, prefix + "zigzagdeviationmax");
	level.var_a9e78bf7["zigzagdeviationmintime"] = GetStructField(level.var_a432d965, prefix + "zigzagdeviationmintime");
	level.var_a9e78bf7["zigzagdeviationmaxtime"] = GetStructField(level.var_a432d965, prefix + "zigzagdeviationmaxtime");
	level.var_a9e78bf7["onlyuseonstart"] = GetStructField(level.var_a432d965, prefix + "onlyuseonstart");
	level.var_a9e78bf7["zombifyenabled"] = GetStructField(level.var_a432d965, prefix + "zombifyenabled");
	level.var_a9e78bf7["startunaware"] = GetStructField(level.var_a432d965, prefix + "startunaware");
	level.var_a9e78bf7["alertnessspreaddelay"] = GetStructField(level.var_a432d965, prefix + "alertnessspreaddelay");
	level.var_a9e78bf7["forcecleanuponcompletion"] = GetStructField(level.var_a432d965, prefix + "forcecleanuponcompletion");
	level.var_a9e78bf7["disablefailsafelogic"] = GetStructField(level.var_a432d965, prefix + "disablefailsafelogic");
	level.var_a9e78bf7["extraspawns"] = GetStructField(level.var_a432d965, prefix + "extraspawns");
	level.var_a9e78bf7["extraspawngapmin"] = GetStructField(level.var_a432d965, prefix + "extraspawngapmin");
	level.var_a9e78bf7["walkpercent"] = GetStructField(level.var_a432d965, prefix + "walkpercent");
	level.var_a9e78bf7["runpercent"] = GetStructField(level.var_a432d965, prefix + "runpercent");
	level.var_a9e78bf7["sprintpercent"] = GetStructField(level.var_a432d965, prefix + "sprintpercent");
	level.var_a9e78bf7["levelonehealth"] = GetStructField(level.var_a432d965, prefix + "levelonehealth");
	level.var_a9e78bf7["leveltwohealth"] = GetStructField(level.var_a432d965, prefix + "leveltwohealth");
	level.var_a9e78bf7["levelthreehealth"] = GetStructField(level.var_a432d965, prefix + "levelthreehealth");
	level.var_a9e78bf7["levelonezombies"] = GetStructField(level.var_a432d965, prefix + "levelonezombies");
	level.var_a9e78bf7["leveltwozombies"] = GetStructField(level.var_a432d965, prefix + "leveltwozombies");
	level.var_a9e78bf7["levelthreezombies"] = GetStructField(level.var_a432d965, prefix + "levelthreezombies");
	level.var_a9e78bf7["suicidalzombiechance"] = GetStructField(level.var_a432d965, prefix + "suicidalzombiechance");
	level.var_a9e78bf7["suicidalzombieupgradedchance"] = GetStructField(level.var_a432d965, prefix + "suicidalzombieupgradedchance");
	level.var_a9e78bf7["deimosinfectedzombiechance"] = GetStructField(level.var_a432d965, prefix + "deimosinfectedzombiechance");
	level.var_a9e78bf7["sparkzombiechance"] = GetStructField(level.var_a432d965, prefix + "sparkzombiechance");
	level.var_a9e78bf7["sparkzombieupgradedchance"] = GetStructField(level.var_a432d965, prefix + "sparkzombieupgradedchance");
	level.var_a9e78bf7["maxreachabilitylevel"] = GetStructField(level.var_a432d965, prefix + "maxreachabilitylevel");
	level.var_a9e78bf7["reachabilityinterval"] = GetStructField(level.var_a432d965, prefix + "reachabilityinterval");
	level.var_a9e78bf7["maxreachabilityparasites"] = GetStructField(level.var_a432d965, prefix + "maxreachabilityparasites");
	level.var_a9e78bf7["powerdropsscalar"] = GetStructField(level.var_a432d965, prefix + "powerdropsscalar");
	level.var_a9e78bf7["pathabilityenabled"] = GetStructField(level.var_a432d965, prefix + "pathabilityenabled");
	level.var_a9e78bf7["sprinttoplayerdistance"] = GetStructField(level.var_a432d965, prefix + "sprinttoplayerdistance");
	level.var_a9e78bf7["skipobjectivewait"] = GetStructField(level.var_a432d965, prefix + "skipobjectivewait");
	level.var_a9e78bf7["zombiehealthscale1"] = GetStructField(level.var_a432d965, "zombiehealthscale1");
	level.var_a9e78bf7["zombiehealthscale2"] = GetStructField(level.var_a432d965, "zombiehealthscale2");
	level.var_a9e78bf7["zombiehealthscale3"] = GetStructField(level.var_a432d965, "zombiehealthscale3");
	level.var_a9e78bf7["zombiehealthscale4"] = GetStructField(level.var_a432d965, "zombiehealthscale4");
	level.var_a9e78bf7["zombiehealthscale5"] = GetStructField(level.var_a432d965, "zombiehealthscale5");
	level.var_a9e78bf7["extrazombiescale1"] = GetStructField(level.var_a432d965, "extrazombiescale1");
	level.var_a9e78bf7["extrazombiescale2"] = GetStructField(level.var_a432d965, "extrazombiescale2");
	level.var_a9e78bf7["extrazombiescale3"] = GetStructField(level.var_a432d965, "extrazombiescale3");
	level.var_a9e78bf7["extrazombiescale4"] = GetStructField(level.var_a432d965, "extrazombiescale4");
	level.var_a9e78bf7["magicboxonlyweaponchance"] = GetStructField(level.var_a432d965, "magicboxonlyweaponchance");
	level.var_a9e78bf7["maxmagicboxonlyweapons"] = GetStructField(level.var_a432d965, "maxmagicboxonlyweapons");
	level.var_a9e78bf7["camochance"] = GetStructField(level.var_a432d965, "camochance");
	function_9a6a6726();
	function_97b4bacb(0, 1);
	function_4542e087();
	namespace_2396e2d7::function_fc1970dd();
	namespace_2396e2d7::function_b6c845e8();
	namespace_293e8aad::function_aaa07980();
	level._zombieZigZagDistanceMin = level.var_a9e78bf7["zigzagdeviationmin"];
	level._zombieZigZagDistanceMax = level.var_a9e78bf7["zigzagdeviationmax"];
	level._zombieZigZagTimeMin = level.var_a9e78bf7["zigzagdeviationmintime"];
	level._zombieZigZagTimeMax = level.var_a9e78bf7["zigzagdeviationmaxtime"];
	if(level.var_a9e78bf7["startunaware"])
	{
		level.var_3004e0c8 = 0;
	}
	else
	{
		level.var_3004e0c8 = 1;
	}
}

/*
	Name: function_9a6a6726
	Namespace: namespace_a432d965
	Checksum: 0xE2103E6
	Offset: 0x14C0
	Size: 0x1D5
	Parameters: 0
	Flags: None
*/
function function_9a6a6726()
{
	if(!isdefined(level.var_a432d965))
	{
		return;
	}
	if(!isdefined(level.var_a9e78bf7))
	{
		return;
	}
	level.var_a9e78bf7["aitypeMale1"] = GetStructField(level.var_a432d965, "aitypeMale1");
	level.var_a9e78bf7["aitypeMale2"] = GetStructField(level.var_a432d965, "aitypeMale2");
	level.var_a9e78bf7["aitypeMale3"] = GetStructField(level.var_a432d965, "aitypeMale3");
	level.var_a9e78bf7["aitypeMale4"] = GetStructField(level.var_a432d965, "aitypeMale4");
	level.var_a9e78bf7["maleSpawnChance2"] = GetStructField(level.var_a432d965, "maleSpawnChance2");
	level.var_a9e78bf7["maleSpawnChance3"] = GetStructField(level.var_a432d965, "maleSpawnChance3");
	level.var_a9e78bf7["maleSpawnChance4"] = GetStructField(level.var_a432d965, "maleSpawnChance4");
	level.var_a9e78bf7["aitypeFemale"] = GetStructField(level.var_a432d965, "aitypeFemale");
	level.var_a9e78bf7["femaleSpawnChance"] = GetStructField(level.var_a432d965, "femaleSpawnChance");
}

/*
	Name: function_97b4bacb
	Namespace: namespace_a432d965
	Checksum: 0xCA6321F4
	Offset: 0x16A0
	Size: 0xF85
	Parameters: 2
	Flags: None
*/
function function_97b4bacb(zombify, var_a621e856)
{
	if(!isdefined(level.var_a9e78bf7["powerdropchance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["powerdropchance"] = GetStructField(level.var_a432d965, "powerdropchance");
			if(!isdefined(level.var_a9e78bf7["powerdropchance"]))
			{
				level.var_a9e78bf7["powerdropchance"] = 0;
			}
		}
		else
		{
			level.var_a9e78bf7["powerdropchance"] = 40;
		}
	}
	if(!isdefined(level.var_a9e78bf7["maxdropammochance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["maxdropammochance"] = GetStructField(level.var_a432d965, "maxdropammochance");
			if(!isdefined(level.var_a9e78bf7["maxdropammochance"]))
			{
				level.var_a9e78bf7["maxdropammochance"] = 0;
			}
		}
		else
		{
			level.var_a9e78bf7["maxdropammochance"] = 50;
		}
	}
	if(!isdefined(level.var_a9e78bf7["maxdropammoupgradedchance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["maxdropammoupgradedchance"] = GetStructField(level.var_a432d965, "maxdropammoupgradedchance");
			if(!isdefined(level.var_a9e78bf7["maxdropammoupgradedchance"]))
			{
				level.var_a9e78bf7["maxdropammoupgradedchance"] = 0;
			}
		}
		else
		{
			level.var_a9e78bf7["maxdropammoupgradedchance"] = 0;
		}
	}
	if(!isdefined(level.var_a9e78bf7["cybercoredropchance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["cybercoredropchance"] = GetStructField(level.var_a432d965, "cybercoredropchance");
			if(!isdefined(level.var_a9e78bf7["cybercoredropchance"]))
			{
				level.var_a9e78bf7["cybercoredropchance"] = 0;
			}
		}
		else
		{
			level.var_a9e78bf7["cybercoredropchance"] = 30;
		}
	}
	if(!isdefined(level.var_a9e78bf7["cybercoreupgradeddropchance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["cybercoreupgradeddropchance"] = GetStructField(level.var_a432d965, "cybercoreupgradeddropchance");
			if(!isdefined(level.var_a9e78bf7["cybercoreupgradeddropchance"]))
			{
				level.var_a9e78bf7["cybercoreupgradeddropchance"] = 0;
			}
		}
		else
		{
			level.var_a9e78bf7["cybercoreupgradeddropchance"] = 0;
		}
	}
	if(!isdefined(level.var_a9e78bf7["rapsdropchance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["rapsdropchance"] = GetStructField(level.var_a432d965, "rapsdropchance");
			if(!isdefined(level.var_a9e78bf7["rapsdropchance"]))
			{
				level.var_a9e78bf7["rapsdropchance"] = 0;
			}
		}
		else
		{
			level.var_a9e78bf7["rapsdropchance"] = 0;
		}
	}
	if(!isdefined(level.var_a9e78bf7["weapondropchance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["weapondropchance"] = GetStructField(level.var_a432d965, "weapondropchance");
			if(!isdefined(level.var_a9e78bf7["weapondropchance"]))
			{
				level.var_a9e78bf7["weapondropchance"] = 0;
			}
		}
		else
		{
			level.var_a9e78bf7["weapondropchance"] = 20;
		}
	}
	if(!isdefined(level.var_a9e78bf7["instakilldropchance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["instakilldropchance"] = GetStructField(level.var_a432d965, "instakilldropchance");
			if(!isdefined(level.var_a9e78bf7["instakilldropchance"]))
			{
				level.var_a9e78bf7["instakilldropchance"] = 0;
			}
		}
		else
		{
			level.var_a9e78bf7["powerdropchance"] = 15;
		}
	}
	if(!isdefined(level.var_a9e78bf7["instakillupgradeddropchance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["instakillupgradeddropchance"] = GetStructField(level.var_a432d965, "instakillupgradeddropchance");
			if(!isdefined(level.var_a9e78bf7["instakillupgradeddropchance"]))
			{
				level.var_a9e78bf7["instakillupgradeddropchance"] = 0;
			}
		}
		else
		{
			level.var_a9e78bf7["instakillupgradeddropchance"] = 0;
		}
	}
	if(!isdefined(level.var_a9e78bf7["powerupdropsenabled"]))
	{
		level.var_a9e78bf7["powerupdropsenabled"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["waituntilskiptostarts"]))
	{
		level.var_a9e78bf7["waituntilskiptostarts"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["skiptoname"]))
	{
		level.var_a9e78bf7["skiptoname"] = "default";
	}
	if(!isdefined(level.var_a9e78bf7["onlyuseonstart"]))
	{
		level.var_a9e78bf7["onlyuseonstart"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["zombifyenabled"]))
	{
		level.var_a9e78bf7["zombifyenabled"] = zombify;
	}
	if(!isdefined(level.var_a9e78bf7["startunaware"]))
	{
		level.var_a9e78bf7["startunaware"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["alertnessspreaddelay"]))
	{
		level.var_a9e78bf7["alertnessspreaddelay"] = 2;
	}
	if(!isdefined(level.var_a9e78bf7["forcecleanuponcompletion"]))
	{
		level.var_a9e78bf7["forcecleanuponcompletion"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["disablefailsafelogic"]))
	{
		level.var_a9e78bf7["disablefailsafelogic"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["extraspawns"]))
	{
		level.var_a9e78bf7["extraspawns"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["zigzagdeviationmin"]))
	{
		level.var_a9e78bf7["zigzagdeviationmin"] = 250;
	}
	if(!isdefined(level.var_a9e78bf7["zigzagdeviationmax"]))
	{
		level.var_a9e78bf7["zigzagdeviationmax"] = 400;
	}
	if(!isdefined(level.var_a9e78bf7["zigzagdeviationmintime"]))
	{
		level.var_a9e78bf7["zigzagdeviationmintime"] = 2500;
	}
	if(!isdefined(level.var_a9e78bf7["zigzagdeviationmaxtime"]))
	{
		level.var_a9e78bf7["zigzagdeviationmaxtime"] = 4000;
	}
	if(!isdefined(level.var_a9e78bf7["extraspawngapmin"]))
	{
		level.var_a9e78bf7["extraspawngapmin"] = 2;
	}
	if(!isdefined(level.var_a9e78bf7["walkpercent"]))
	{
		if(isdefined(var_a621e856) && var_a621e856)
		{
			level.var_a9e78bf7["walkpercent"] = 0;
		}
		else
		{
			level.var_a9e78bf7["walkpercent"] = 33;
		}
	}
	if(!isdefined(level.var_a9e78bf7["runpercent"]))
	{
		if(isdefined(var_a621e856) && var_a621e856)
		{
			level.var_a9e78bf7["runpercent"] = 0;
		}
		else
		{
			level.var_a9e78bf7["runpercent"] = 33;
		}
	}
	if(!isdefined(level.var_a9e78bf7["sprintpercent"]))
	{
		if(isdefined(var_a621e856) && var_a621e856)
		{
			level.var_a9e78bf7["sprintpercent"] = 0;
		}
		else
		{
			level.var_a9e78bf7["sprintpercent"] = 34;
		}
	}
	if(!isdefined(level.var_a9e78bf7["levelonehealth"]))
	{
		level.var_a9e78bf7["levelonehealth"] = 150;
	}
	if(!isdefined(level.var_a9e78bf7["leveltwohealth"]))
	{
		level.var_a9e78bf7["leveltwohealth"] = 350;
	}
	if(!isdefined(level.var_a9e78bf7["levelthreehealth"]))
	{
		level.var_a9e78bf7["levelthreehealth"] = 650;
	}
	if(!isdefined(level.var_a9e78bf7["levelonezombies"]))
	{
		if(isdefined(var_a621e856) && var_a621e856)
		{
			level.var_a9e78bf7["levelonezombies"] = 0;
		}
		else
		{
			level.var_a9e78bf7["levelonezombies"] = 33;
		}
	}
	if(!isdefined(level.var_a9e78bf7["leveltwozombies"]))
	{
		if(isdefined(var_a621e856) && var_a621e856)
		{
			level.var_a9e78bf7["leveltwozombies"] = 0;
		}
		else
		{
			level.var_a9e78bf7["leveltwozombies"] = 33;
		}
	}
	if(!isdefined(level.var_a9e78bf7["levelthreezombies"]))
	{
		if(isdefined(var_a621e856) && var_a621e856)
		{
			level.var_a9e78bf7["levelthreezombies"] = 0;
		}
		else
		{
			level.var_a9e78bf7["levelthreezombies"] = 34;
		}
	}
	if(!isdefined(level.var_a9e78bf7["zombiehealthscale1"]))
	{
		level.var_a9e78bf7["zombiehealthscale1"] = 0.5;
	}
	if(!isdefined(level.var_a9e78bf7["zombiehealthscale2"]))
	{
		level.var_a9e78bf7["zombiehealthscale2"] = 1;
	}
	if(!isdefined(level.var_a9e78bf7["zombiehealthscale3"]))
	{
		level.var_a9e78bf7["zombiehealthscale3"] = 1.25;
	}
	if(!isdefined(level.var_a9e78bf7["zombiehealthscale4"]))
	{
		level.var_a9e78bf7["zombiehealthscale4"] = 1.5;
	}
	if(!isdefined(level.var_a9e78bf7["zombiehealthscale5"]))
	{
		level.var_a9e78bf7["zombiehealthscale5"] = 2;
	}
	if(!isdefined(level.var_a9e78bf7["extrazombiescale1"]))
	{
		level.var_a9e78bf7["extrazombiescale1"] = 1;
	}
	if(!isdefined(level.var_a9e78bf7["extrazombiescale2"]))
	{
		level.var_a9e78bf7["extrazombiescale2"] = 1.5;
	}
	if(!isdefined(level.var_a9e78bf7["extrazombiescale3"]))
	{
		level.var_a9e78bf7["extrazombiescale3"] = 1.75;
	}
	if(!isdefined(level.var_a9e78bf7["extrazombiescale4"]))
	{
		level.var_a9e78bf7["extrazombiescale4"] = 2;
	}
	if(!isdefined(level.var_a9e78bf7["suicidalzombiechance"]))
	{
		level.var_a9e78bf7["suicidalzombiechance"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["suicidalzombieupgradedchance"]))
	{
		level.var_a9e78bf7["suicidalzombieupgradedchance"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["deimosinfectedzombiechance"]))
	{
		level.var_a9e78bf7["deimosinfectedzombiechance"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["sparkzombiechance"]))
	{
		level.var_a9e78bf7["sparkzombiechance"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["sparkzombieupgradedchance"]))
	{
		level.var_a9e78bf7["sparkzombieupgradedchance"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["magicboxonlyweaponchance"]))
	{
		level.var_a9e78bf7["magicboxonlyweaponchance"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["maxmagicboxonlyweapons"]))
	{
		level.var_a9e78bf7["maxmagicboxonlyweapons"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["camochance"]))
	{
		level.var_a9e78bf7["camochance"] = 30;
	}
	if(!isdefined(level.var_a9e78bf7["pathabilityenabled"]))
	{
		level.var_a9e78bf7["pathabilityenabled"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["sprinttoplayerdistance"]))
	{
		level.var_a9e78bf7["sprinttoplayerdistance"] = 1000;
	}
	if(!isdefined(level.var_a9e78bf7["skipobjectivewait"]))
	{
		level.var_a9e78bf7["skipobjectivewait"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["maxreachabilitylevel"]))
	{
		level.var_a9e78bf7["maxreachabilitylevel"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["reachabilityinterval"]))
	{
		level.var_a9e78bf7["reachabilityinterval"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["maxreachabilityparasites"]))
	{
		level.var_a9e78bf7["maxreachabilityparasites"] = 0;
	}
	if(!isdefined(level.var_a9e78bf7["powerdropsscalar"]))
	{
		level.var_a9e78bf7["powerdropsscalar"] = 1;
	}
}

/*
	Name: function_15c7079
	Namespace: namespace_a432d965
	Checksum: 0x632909F
	Offset: 0x2630
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_15c7079(index)
{
	return "skipto" + index + "_";
}

/*
	Name: function_4542e087
	Namespace: namespace_a432d965
	Checksum: 0x44553725
	Offset: 0x2658
	Size: 0x193
	Parameters: 0
	Flags: Private
*/
function private function_4542e087()
{
	if(!level.var_a9e78bf7["zombifyenabled"])
	{
		return;
	}
	var_939c81c8 = level.var_a9e78bf7["levelonezombies"] + level.var_a9e78bf7["leveltwozombies"] + level.var_a9e78bf7["levelthreezombies"];
	/#
		Assert(var_939c81c8 == 100, "Dev Block strings are not supported" + level.var_a9e78bf7["Dev Block strings are not supported"]);
	#/
	var_939c81c8 = level.var_a9e78bf7["walkpercent"] + level.var_a9e78bf7["runpercent"] + level.var_a9e78bf7["sprintpercent"];
	/#
		Assert(var_939c81c8 == 100, "Dev Block strings are not supported" + level.var_a9e78bf7["Dev Block strings are not supported"]);
	#/
	/#
		Assert(level.var_a9e78bf7["Dev Block strings are not supported"] < level.var_a9e78bf7["Dev Block strings are not supported"], "Dev Block strings are not supported");
	#/
	/#
		Assert(level.var_a9e78bf7["Dev Block strings are not supported"] < level.var_a9e78bf7["Dev Block strings are not supported"], "Dev Block strings are not supported");
	#/
}

/*
	Name: BZM_OverrideLocomotion
	Namespace: namespace_a432d965
	Checksum: 0xEE8DC0E0
	Offset: 0x27F8
	Size: 0xD1
	Parameters: 3
	Flags: Private
*/
function private BZM_OverrideLocomotion(var_68d35041, var_dbe80e3b, var_5a7ff9f0)
{
	if(!level.var_a9e78bf7["zombifyenabled"])
	{
		return;
	}
	var_939c81c8 = var_68d35041 + var_dbe80e3b + var_5a7ff9f0;
	/#
		Assert(var_939c81c8 == 100, "Dev Block strings are not supported" + level.var_a9e78bf7["Dev Block strings are not supported"]);
	#/
	level.var_a9e78bf7["walkpercent"] = var_68d35041;
	level.var_a9e78bf7["runpercent"] = var_dbe80e3b;
	level.var_a9e78bf7["sprintpercent"] = var_5a7ff9f0;
}

/*
	Name: BZM_OverrideHealth
	Namespace: namespace_a432d965
	Checksum: 0x43FB351E
	Offset: 0x28D8
	Size: 0x79
	Parameters: 3
	Flags: Private
*/
function private BZM_OverrideHealth(var_52292ab5, var_d3cfcdb3, var_dd13b525)
{
	if(!level.var_a9e78bf7["zombifyenabled"])
	{
		return;
	}
	level.var_a9e78bf7["levelonehealth"] = var_52292ab5;
	level.var_a9e78bf7["leveltwohealth"] = var_d3cfcdb3;
	level.var_a9e78bf7["levelthreehealth"] = var_dd13b525;
}

/*
	Name: BZM_OverrideSuicidalChance
	Namespace: namespace_a432d965
	Checksum: 0x6139457D
	Offset: 0x2960
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private BZM_OverrideSuicidalChance(chance)
{
	if(!level.var_a9e78bf7["zombifyenabled"])
	{
		return;
	}
	if(chance > 100)
	{
		chance = 100;
	}
	level.var_a9e78bf7["suicidalzombiechance"] = chance;
}

/*
	Name: function_481f94
	Namespace: namespace_a432d965
	Checksum: 0xB3F5ED5
	Offset: 0x29C0
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private function_481f94(chance)
{
	if(!level.var_a9e78bf7["zombifyenabled"])
	{
		return;
	}
	if(chance > 100)
	{
		chance = 100;
	}
	level.var_a9e78bf7["sparkzombiechance"] = chance;
}

