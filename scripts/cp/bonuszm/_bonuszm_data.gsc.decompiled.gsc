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
	if(!function_27c72c1b())
	{
		return;
	}
	level.var_a432d965 = namespace_14b42b8a::function_b7af54ae("bonuszmdata", function_6f1ebe57("mapname"));
	level.var_e9d4a03e = &function_e9d4a03e;
	level.var_fd2d1f37 = &function_fd2d1f37;
	level.var_27fb20e1 = &function_27fb20e1;
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
function function_da5f2c0d(var_b78f06c4, var_b0614bba)
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
	var_df06ee99 = "";
	var_e6879fdc = function_e8ef6cb0(level.var_a432d965, "skiptocount");
	if(!isdefined(var_e6879fdc))
	{
		var_e6879fdc = 0;
	}
	for(var_c957f6b6 = 1; var_c957f6b6 <= var_e6879fdc; var_c957f6b6++)
	{
		var_df06ee99 = function_15c7079(var_c957f6b6);
		var_454219da = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "skiptoname");
		if(var_454219da == var_b0614bba)
		{
			var_6967e3b9 = var_c957f6b6;
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
	level.var_a9e78bf7["powerdropchance"] = function_e8ef6cb0(level.var_a432d965, "powerdropchance");
	level.var_a9e78bf7["cybercoredropchance"] = function_e8ef6cb0(level.var_a432d965, "cybercoredropchance");
	level.var_a9e78bf7["cybercoreupgradeddropchance"] = function_e8ef6cb0(level.var_a432d965, "cybercoreupgradeddropchance");
	level.var_a9e78bf7["maxdropammochance"] = function_e8ef6cb0(level.var_a432d965, "maxdropammochance");
	level.var_a9e78bf7["maxdropammoupgradedchance"] = function_e8ef6cb0(level.var_a432d965, "maxdropammoupgradedchance");
	level.var_a9e78bf7["weapondropchance"] = function_e8ef6cb0(level.var_a432d965, "weapondropchance");
	level.var_a9e78bf7["instakilldropchance"] = function_e8ef6cb0(level.var_a432d965, "instakilldropchance");
	level.var_a9e78bf7["instakillupgradeddropchance"] = function_e8ef6cb0(level.var_a432d965, "instakillupgradeddropchance");
	level.var_a9e78bf7["powerupdropsenabled"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "powerupdropsenabled");
	level.var_a9e78bf7["zigzagdeviationmin"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "zigzagdeviationmin");
	level.var_a9e78bf7["zigzagdeviationmax"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "zigzagdeviationmax");
	level.var_a9e78bf7["zigzagdeviationmintime"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "zigzagdeviationmintime");
	level.var_a9e78bf7["zigzagdeviationmaxtime"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "zigzagdeviationmaxtime");
	level.var_a9e78bf7["onlyuseonstart"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "onlyuseonstart");
	level.var_a9e78bf7["zombifyenabled"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "zombifyenabled");
	level.var_a9e78bf7["startunaware"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "startunaware");
	level.var_a9e78bf7["alertnessspreaddelay"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "alertnessspreaddelay");
	level.var_a9e78bf7["forcecleanuponcompletion"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "forcecleanuponcompletion");
	level.var_a9e78bf7["disablefailsafelogic"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "disablefailsafelogic");
	level.var_a9e78bf7["extraspawns"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "extraspawns");
	level.var_a9e78bf7["extraspawngapmin"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "extraspawngapmin");
	level.var_a9e78bf7["walkpercent"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "walkpercent");
	level.var_a9e78bf7["runpercent"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "runpercent");
	level.var_a9e78bf7["sprintpercent"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "sprintpercent");
	level.var_a9e78bf7["levelonehealth"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "levelonehealth");
	level.var_a9e78bf7["leveltwohealth"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "leveltwohealth");
	level.var_a9e78bf7["levelthreehealth"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "levelthreehealth");
	level.var_a9e78bf7["levelonezombies"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "levelonezombies");
	level.var_a9e78bf7["leveltwozombies"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "leveltwozombies");
	level.var_a9e78bf7["levelthreezombies"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "levelthreezombies");
	level.var_a9e78bf7["suicidalzombiechance"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "suicidalzombiechance");
	level.var_a9e78bf7["suicidalzombieupgradedchance"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "suicidalzombieupgradedchance");
	level.var_a9e78bf7["deimosinfectedzombiechance"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "deimosinfectedzombiechance");
	level.var_a9e78bf7["sparkzombiechance"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "sparkzombiechance");
	level.var_a9e78bf7["sparkzombieupgradedchance"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "sparkzombieupgradedchance");
	level.var_a9e78bf7["maxreachabilitylevel"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "maxreachabilitylevel");
	level.var_a9e78bf7["reachabilityinterval"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "reachabilityinterval");
	level.var_a9e78bf7["maxreachabilityparasites"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "maxreachabilityparasites");
	level.var_a9e78bf7["powerdropsscalar"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "powerdropsscalar");
	level.var_a9e78bf7["pathabilityenabled"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "pathabilityenabled");
	level.var_a9e78bf7["sprinttoplayerdistance"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "sprinttoplayerdistance");
	level.var_a9e78bf7["skipobjectivewait"] = function_e8ef6cb0(level.var_a432d965, var_df06ee99 + "skipobjectivewait");
	level.var_a9e78bf7["zombiehealthscale1"] = function_e8ef6cb0(level.var_a432d965, "zombiehealthscale1");
	level.var_a9e78bf7["zombiehealthscale2"] = function_e8ef6cb0(level.var_a432d965, "zombiehealthscale2");
	level.var_a9e78bf7["zombiehealthscale3"] = function_e8ef6cb0(level.var_a432d965, "zombiehealthscale3");
	level.var_a9e78bf7["zombiehealthscale4"] = function_e8ef6cb0(level.var_a432d965, "zombiehealthscale4");
	level.var_a9e78bf7["zombiehealthscale5"] = function_e8ef6cb0(level.var_a432d965, "zombiehealthscale5");
	level.var_a9e78bf7["extrazombiescale1"] = function_e8ef6cb0(level.var_a432d965, "extrazombiescale1");
	level.var_a9e78bf7["extrazombiescale2"] = function_e8ef6cb0(level.var_a432d965, "extrazombiescale2");
	level.var_a9e78bf7["extrazombiescale3"] = function_e8ef6cb0(level.var_a432d965, "extrazombiescale3");
	level.var_a9e78bf7["extrazombiescale4"] = function_e8ef6cb0(level.var_a432d965, "extrazombiescale4");
	level.var_a9e78bf7["magicboxonlyweaponchance"] = function_e8ef6cb0(level.var_a432d965, "magicboxonlyweaponchance");
	level.var_a9e78bf7["maxmagicboxonlyweapons"] = function_e8ef6cb0(level.var_a432d965, "maxmagicboxonlyweapons");
	level.var_a9e78bf7["camochance"] = function_e8ef6cb0(level.var_a432d965, "camochance");
	function_9a6a6726();
	function_97b4bacb(0, 1);
	function_4542e087();
	namespace_2396e2d7::function_fc1970dd();
	namespace_2396e2d7::function_b6c845e8();
	namespace_293e8aad::function_aaa07980();
	level.var_6e8268c1 = level.var_a9e78bf7["zigzagdeviationmin"];
	level.var_1baaf9ff = level.var_a9e78bf7["zigzagdeviationmax"];
	level.var_efce0b17 = level.var_a9e78bf7["zigzagdeviationmintime"];
	level.var_d25e7669 = level.var_a9e78bf7["zigzagdeviationmaxtime"];
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
	level.var_a9e78bf7["aitypeMale1"] = function_e8ef6cb0(level.var_a432d965, "aitypeMale1");
	level.var_a9e78bf7["aitypeMale2"] = function_e8ef6cb0(level.var_a432d965, "aitypeMale2");
	level.var_a9e78bf7["aitypeMale3"] = function_e8ef6cb0(level.var_a432d965, "aitypeMale3");
	level.var_a9e78bf7["aitypeMale4"] = function_e8ef6cb0(level.var_a432d965, "aitypeMale4");
	level.var_a9e78bf7["maleSpawnChance2"] = function_e8ef6cb0(level.var_a432d965, "maleSpawnChance2");
	level.var_a9e78bf7["maleSpawnChance3"] = function_e8ef6cb0(level.var_a432d965, "maleSpawnChance3");
	level.var_a9e78bf7["maleSpawnChance4"] = function_e8ef6cb0(level.var_a432d965, "maleSpawnChance4");
	level.var_a9e78bf7["aitypeFemale"] = function_e8ef6cb0(level.var_a432d965, "aitypeFemale");
	level.var_a9e78bf7["femaleSpawnChance"] = function_e8ef6cb0(level.var_a432d965, "femaleSpawnChance");
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
function function_97b4bacb(var_f3352ced, var_a621e856)
{
	if(!isdefined(level.var_a9e78bf7["powerdropchance"]))
	{
		if(isdefined(level.var_a432d965))
		{
			level.var_a9e78bf7["powerdropchance"] = function_e8ef6cb0(level.var_a432d965, "powerdropchance");
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
			level.var_a9e78bf7["maxdropammochance"] = function_e8ef6cb0(level.var_a432d965, "maxdropammochance");
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
			level.var_a9e78bf7["maxdropammoupgradedchance"] = function_e8ef6cb0(level.var_a432d965, "maxdropammoupgradedchance");
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
			level.var_a9e78bf7["cybercoredropchance"] = function_e8ef6cb0(level.var_a432d965, "cybercoredropchance");
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
			level.var_a9e78bf7["cybercoreupgradeddropchance"] = function_e8ef6cb0(level.var_a432d965, "cybercoreupgradeddropchance");
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
			level.var_a9e78bf7["rapsdropchance"] = function_e8ef6cb0(level.var_a432d965, "rapsdropchance");
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
			level.var_a9e78bf7["weapondropchance"] = function_e8ef6cb0(level.var_a432d965, "weapondropchance");
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
			level.var_a9e78bf7["instakilldropchance"] = function_e8ef6cb0(level.var_a432d965, "instakilldropchance");
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
			level.var_a9e78bf7["instakillupgradeddropchance"] = function_e8ef6cb0(level.var_a432d965, "instakillupgradeddropchance");
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
		level.var_a9e78bf7["zombifyenabled"] = var_f3352ced;
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
function function_15c7079(var_5e76f0af)
{
	return "skipto" + var_5e76f0af + "_";
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
		namespace_33b293fd::function_a7ee953(var_939c81c8 == 100, "Dev Block strings are not supported" + level.var_a9e78bf7["Dev Block strings are not supported"]);
	#/
	var_939c81c8 = level.var_a9e78bf7["walkpercent"] + level.var_a9e78bf7["runpercent"] + level.var_a9e78bf7["sprintpercent"];
	/#
		namespace_33b293fd::function_a7ee953(var_939c81c8 == 100, "Dev Block strings are not supported" + level.var_a9e78bf7["Dev Block strings are not supported"]);
	#/
	/#
		namespace_33b293fd::function_a7ee953(level.var_a9e78bf7["Dev Block strings are not supported"] < level.var_a9e78bf7["Dev Block strings are not supported"], "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(level.var_a9e78bf7["Dev Block strings are not supported"] < level.var_a9e78bf7["Dev Block strings are not supported"], "Dev Block strings are not supported");
	#/
}

/*
	Name: function_e9d4a03e
	Namespace: namespace_a432d965
	Checksum: 0xEE8DC0E0
	Offset: 0x27F8
	Size: 0xD1
	Parameters: 3
	Flags: Private
*/
function private function_e9d4a03e(var_68d35041, var_dbe80e3b, var_5a7ff9f0)
{
	if(!level.var_a9e78bf7["zombifyenabled"])
	{
		return;
	}
	var_939c81c8 = var_68d35041 + var_dbe80e3b + var_5a7ff9f0;
	/#
		namespace_33b293fd::function_a7ee953(var_939c81c8 == 100, "Dev Block strings are not supported" + level.var_a9e78bf7["Dev Block strings are not supported"]);
	#/
	level.var_a9e78bf7["walkpercent"] = var_68d35041;
	level.var_a9e78bf7["runpercent"] = var_dbe80e3b;
	level.var_a9e78bf7["sprintpercent"] = var_5a7ff9f0;
}

/*
	Name: function_fd2d1f37
	Namespace: namespace_a432d965
	Checksum: 0x43FB351E
	Offset: 0x28D8
	Size: 0x79
	Parameters: 3
	Flags: Private
*/
function private function_fd2d1f37(var_52292ab5, var_d3cfcdb3, var_dd13b525)
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
	Name: function_27fb20e1
	Namespace: namespace_a432d965
	Checksum: 0x6139457D
	Offset: 0x2960
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private function_27fb20e1(var_9515bc6d)
{
	if(!level.var_a9e78bf7["zombifyenabled"])
	{
		return;
	}
	if(var_9515bc6d > 100)
	{
		var_9515bc6d = 100;
	}
	level.var_a9e78bf7["suicidalzombiechance"] = var_9515bc6d;
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
function private function_481f94(var_9515bc6d)
{
	if(!level.var_a9e78bf7["zombifyenabled"])
	{
		return;
	}
	if(var_9515bc6d > 100)
	{
		var_9515bc6d = 100;
	}
	level.var_a9e78bf7["sparkzombiechance"] = var_9515bc6d;
}

