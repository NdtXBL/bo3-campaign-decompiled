#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_art;
#using scripts\cp\_ballistic_knife;
#using scripts\cp\_bouncingbetty;
#using scripts\cp\_cache;
#using scripts\cp\_challenges;
#using scripts\cp\_debug;
#using scripts\cp\_decoy;
#using scripts\cp\_destructible;
#using scripts\cp\_devgui;
#using scripts\cp\_explosive_bolt;
#using scripts\cp\_flashgrenades;
#using scripts\cp\_hacker_tool;
#using scripts\cp\_heatseekingmissile;
#using scripts\cp\_incendiary;
#using scripts\cp\_laststand;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_oed;
#using scripts\cp\_proximity_grenade;
#using scripts\cp\_riotshield;
#using scripts\cp\_satchel_charge;
#using scripts\cp\_sensor_grenade;
#using scripts\cp\_skipto;
#using scripts\cp\_smokegrenade;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_tabun;
#using scripts\cp\_tacticalinsertion;
#using scripts\cp\_trophy_system;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm;
#using scripts\cp\bots\_bot;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_weaponobjects;
#using scripts\shared\_oob;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\archetype_shared\archetype_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\clientids_shared;
#using scripts\shared\containers_shared;
#using scripts\shared\demo_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\medals_shared;
#using scripts\shared\music_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\serverfaceanim_shared;
#using scripts\shared\string_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\tweakables_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\weapons\antipersonnelguidance;
#using scripts\shared\weapons\multilockapguidance;

#namespace namespace_d7916d65;

/*
	Name: function_d290ebfa
	Namespace: namespace_d7916d65
	Checksum: 0x6C5E9934
	Offset: 0xBD8
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	/#
		/#
			namespace_33b293fd::function_a7ee953(isdefined(level.var_f968e47b), "Dev Block strings are not supported");
		#/
	#/
	if(isdefined(level.var_31868693) && level.var_31868693)
	{
		return;
	}
	function_13c5b077();
	level thread function_f063419c();
	level namespace_ad23e503::function_c35e6aab("bsp_swap_ready");
	level namespace_ad23e503::function_c35e6aab("initial_streamer_ready");
	level.var_31868693 = 1;
	function_6c1294b8("playerEnenergy_enabled", 0);
	function_6c1294b8("r_waterFogTest", 0);
	function_6c1294b8("tu6_player_shallowWaterHeight", "0.0");
	function_6896d21f("trm_maxHeight", 144);
	level.var_ffff4c8f = function_1fa31b7c();
	level.var_b89f1183 = function_d4a3aef4();
	level namespace_ad23e503::function_c35e6aab("wait_and_revive");
	level namespace_ad23e503::function_c35e6aab("instant_revive");
	namespace_82b91a51::function_cf2449ee("lsm");
	level thread function_4ece4a2f();
	function_bc375eca();
	level thread function_74ae7da4();
	function_cade3606();
	namespace_6c41e242::function_a1bbf812(undefined, level.var_4f8d5b23);
	namespace_bea63b8a::function_1ab5ebec("all");
	function_60086937();
	level namespace_957e94ce::function_74d6b22f("load_main_complete");
	level.var_732e9c7d = &function_13aa782f;
	if(isdefined(level.var_31aefea8) && isdefined(level.var_574eb415))
	{
		if(level.var_31aefea8 == level.var_574eb415)
		{
			world.var_bf966ebd = undefined;
		}
	}
	level thread function_4dd1a4b();
}

/*
	Name: function_13c5b077
	Namespace: namespace_d7916d65
	Checksum: 0x27453EFE
	Offset: 0xEB8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_13c5b077()
{
	function_6c1294b8("ui_allowDisplayContinue", 0);
}

/*
	Name: function_73adcefc
	Namespace: namespace_d7916d65
	Checksum: 0x6543B33B
	Offset: 0xEE0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_73adcefc()
{
	namespace_82b91a51::function_ab12ef82("level_is_go");
}

/*
	Name: function_c32ba481
	Namespace: namespace_d7916d65
	Checksum: 0x8419D32C
	Offset: 0xF08
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_c32ba481(var_87423d00, var_431bc2a9)
{
	if(!isdefined(var_87423d00))
	{
		var_87423d00 = 0.5;
	}
	if(!isdefined(var_431bc2a9))
	{
		var_431bc2a9 = (0, 0, 0);
	}
	level namespace_82b91a51::function_11a89b44(undefined, undefined, undefined, 0);
	function_6c1294b8("ui_allowDisplayContinue", 1);
	if(function_d555ecb8())
	{
		do
		{
			wait(0.05);
		}
		while(!function_d555ecb8());
	}
	else
	{
		wait(1);
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_84454eb5();
	}
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	level namespace_82b91a51::function_11a89b44(undefined, 0, 10);
	level notify("hash_c79c2551");
	level thread function_dbd0026c(var_87423d00, var_431bc2a9);
}

/*
	Name: function_a2995f22
	Namespace: namespace_d7916d65
	Checksum: 0xA29B4711
	Offset: 0x10B8
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_a2995f22(var_87423d00, var_431bc2a9)
{
	if(!isdefined(var_87423d00))
	{
		var_87423d00 = 0.5;
	}
	if(!isdefined(var_431bc2a9))
	{
		var_431bc2a9 = (0, 0, 0);
	}
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	function_c32ba481(var_87423d00, var_431bc2a9);
}

/*
	Name: function_84454eb5
	Namespace: namespace_d7916d65
	Checksum: 0x92C113A3
	Offset: 0x1140
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_84454eb5()
{
	if(function_27c72c1b())
	{
		return;
	}
	self endon("hash_643a7daf");
	if(self namespace_ad23e503::function_dbca4c5d("loadout_given") && self namespace_ad23e503::function_7922262b("loadout_given"))
	{
		self function_4aa9caac("SpinnerFullscreenBlack");
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		self function_49876a9e("SpinnerFullscreenBlack");
	}
}

/*
	Name: function_dbd0026c
	Namespace: namespace_d7916d65
	Checksum: 0x32BC5D62
	Offset: 0x1208
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_dbd0026c(var_87423d00, var_431bc2a9)
{
	level namespace_ce7c3ed5::function_7e61de2b(0, "black", "go_fade");
	waittillframeend;
	if(level namespace_957e94ce::function_7922262b("chyron_active"))
	{
		level namespace_957e94ce::function_d3de6822("chyron_active");
	}
	else
	{
		wait(1);
	}
	if(isdefined(level.var_75ba074a))
	{
		wait(level.var_75ba074a);
	}
	level namespace_82b91a51::function_67520c6a(0.3, undefined, &namespace_ad23e503::function_74d6b22f, level.var_d83bc14d);
	level namespace_82b91a51::function_67520c6a(0.3, undefined, &namespace_ce7c3ed5::function_593c2af4, var_87423d00, var_431bc2a9, "go_fade");
}

/*
	Name: function_f063419c
	Namespace: namespace_d7916d65
	Checksum: 0x3928F756
	Offset: 0x1318
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_f063419c()
{
	if(function_d555ecb8())
	{
		while(function_d555ecb8())
		{
			wait(0.05);
		}
		level notify("hash_b28e9639");
	}
}

/*
	Name: function_4dd1a4b
	Namespace: namespace_d7916d65
	Checksum: 0x14FD15A2
	Offset: 0x1370
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4dd1a4b()
{
	function_d2250e2f();
	function_297d2d7c();
	namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	wait(0.5);
	function_d2250e2f();
	function_297d2d7c();
}

/*
	Name: function_13aa782f
	Namespace: namespace_d7916d65
	Checksum: 0xC4C82D0
	Offset: 0x13E0
	Size: 0x33
	Parameters: 3
	Flags: None
*/
function function_13aa782f(var_5dc5e20a, var_b07228b6, var_dfcc01fd)
{
	return !var_5dc5e20a namespace_6ece97b7::function_b99692eb();
}

/*
	Name: function_37246a45
	Namespace: namespace_d7916d65
	Checksum: 0x94ADE954
	Offset: 0x1420
	Size: 0x391
	Parameters: 10
	Flags: None
*/
function function_37246a45(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304)
{
	var_9d11cb90 = var_f9a179ed;
	if(isdefined(self.var_37246a45))
	{
		self thread [[self.var_37246a45]](var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304);
	}
	if(self namespace_564407fb::function_38a9aff8())
	{
		return 0;
	}
	if(level.var_de12b72f && function_65f192a6(var_3a212fd7) && self != var_3a212fd7 && self.var_3e94206a == var_3a212fd7.var_3e94206a)
	{
		if(level.var_98df9150 == 0)
		{
			return 0;
		}
	}
	if(var_f9a179ed < self.var_3a90f16b)
	{
		return var_9d11cb90;
	}
	var_2395e945 = function_3f10449f();
	var_74952a22 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		if(var_2395e945[var_c957f6b6] == self || var_2395e945[var_c957f6b6] namespace_564407fb::function_38a9aff8() || var_2395e945[var_c957f6b6].var_e0beb6ee == "spectator")
		{
			var_74952a22++;
		}
	}
	var_c47bf847 = var_2395e945.size == 1 && self.var_dc4a16f6 == 0;
	var_af50710b = var_2395e945.size > 1 && var_74952a22 == var_2395e945.size;
	if(var_c47bf847 || var_af50710b)
	{
		level notify("hash_21660df5");
		self thread namespace_564407fb::function_1bbd62(var_51e6a548, var_3a212fd7, var_f9a179ed, var_ba36487d, var_dfcc01fd, var_e8bb43ee, var_a77ad8eb, var_a5cf2304);
		if(!isdefined(var_e8bb43ee))
		{
			var_e8bb43ee = (1, 0, 0);
		}
		level notify("hash_c25d7874");
		self function_3a7ea645(var_e8bb43ee);
		self thread function_cf62d8c1();
	}
	if(var_74952a22 == var_2395e945.size)
	{
		if(var_2395e945.size == 1)
		{
			if(self.var_dc4a16f6 == 0)
			{
				self.var_dc4a16f6 = 0;
				level notify("hash_370e735f");
				namespace_82b91a51::function_76f13293();
				level notify("hash_e6e399a9");
			}
			else
			{
				return var_9d11cb90;
			}
		}
		else
		{
			level notify("hash_370e735f");
			namespace_82b91a51::function_76f13293();
			level notify("hash_e6e399a9");
		}
		return 0;
	}
	return var_9d11cb90;
}

/*
	Name: function_cf62d8c1
	Namespace: namespace_d7916d65
	Checksum: 0xAC0ADEDE
	Offset: 0x17C0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_cf62d8c1()
{
	level notify("hash_4433b565");
	self notify("hash_4433b565");
	self function_fe91f994();
	self function_a3624368(0);
	self function_1c75a89a(0);
	self function_f5ba63f2(1);
	self.var_255b9315 = 1;
	self function_83fd42b5();
	wait(1);
	self function_faf8f736(1);
}

/*
	Name: function_5aca2f62
	Namespace: namespace_d7916d65
	Checksum: 0xC26C13A0
	Offset: 0x1888
	Size: 0xB9
	Parameters: 2
	Flags: None
*/
function function_5aca2f62(var_4be20d44, var_5753664b)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_4be20d44), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5753664b), "Dev Block strings are not supported");
	#/
	if(!isdefined(anim.var_97e54d7f))
	{
		anim.var_97e54d7f = [];
	}
	anim.var_97e54d7f[anim.var_97e54d7f.size] = var_4be20d44;
	level.var_c1aa5253["step_" + var_4be20d44] = var_5753664b;
}

/*
	Name: function_cade3606
	Namespace: namespace_d7916d65
	Checksum: 0x5D264170
	Offset: 0x1950
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_cade3606()
{
	function_5aca2f62("asphalt", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("brick", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("carpet", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("cloth", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("concrete", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("dirt", "_t6/bio/player/fx_footstep_sand");
	function_5aca2f62("foliage", "_t6/bio/player/fx_footstep_sand");
	function_5aca2f62("gravel", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("grass", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("metal", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("mud", "_t6/bio/player/fx_footstep_mud");
	function_5aca2f62("paper", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("plaster", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("rock", "_t6/bio/player/fx_footstep_dust");
	function_5aca2f62("sand", "_t6/bio/player/fx_footstep_sand");
	function_5aca2f62("water", "_t6/bio/player/fx_footstep_water");
	function_5aca2f62("wood", "_t6/bio/player/fx_footstep_dust");
}

/*
	Name: function_a7781e10
	Namespace: namespace_d7916d65
	Checksum: 0x11CE9B8E
	Offset: 0x1B80
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_a7781e10()
{
	var_dd89f865 = function_6ada35ba(self.var_b07228b6, "targetname");
	if(isdefined(var_dd89f865))
	{
		self.var_3e09a317 = var_dd89f865.var_722885f3[2];
		var_dd89f865 function_dc8c8404();
	}
	else
	{
		var_dd89f865 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
		if(isdefined(var_dd89f865))
		{
			self.var_3e09a317 = var_dd89f865.var_722885f3[2];
		}
	}
}

/*
	Name: function_bc375eca
	Namespace: namespace_d7916d65
	Checksum: 0xE6534E7F
	Offset: 0x1C48
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_bc375eca()
{
	var_fe01faa4 = function_cbc90467();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_fe01faa4.size; var_c957f6b6++)
	{
		var_90ca1fdd = var_fe01faa4[var_c957f6b6];
		if(var_90ca1fdd.var_fe311e35 == "Begin")
		{
			var_90ca1fdd function_a7781e10();
		}
	}
}

/*
	Name: function_19d17757
	Namespace: namespace_d7916d65
	Checksum: 0xC8D2BDED
	Offset: 0x1CE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_19d17757()
{
	/#
		namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
	#/
}

/*
	Name: function_9b37c2bc
	Namespace: namespace_d7916d65
	Checksum: 0x76675287
	Offset: 0x1D18
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9b37c2bc()
{
	level namespace_ad23e503::function_1ab5ebec("bsp_swap_ready");
	function_a63aee74();
}

/*
	Name: function_e6e399a9
	Namespace: namespace_d7916d65
	Checksum: 0xD23B6388
	Offset: 0x1D58
	Size: 0x719
	Parameters: 0
	Flags: None
*/
function function_e6e399a9()
{
	level waittill("hash_e6e399a9");
	function_a04c8fe5();
	/#
		function_895b00("Dev Block strings are not supported");
	#/
	namespace_82b91a51::function_ef3f75eb("zesn");
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		namespace_82b91a51::function_c9ea7a64("lsm", "0", var_2395e945[var_c957f6b6]);
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		if(isdefined(var_2395e945[var_c957f6b6].var_fca62492))
		{
			var_2395e945[var_c957f6b6].var_fca62492 function_89cd542d();
		}
	}
	function_82f90c();
	level.var_4b93af95 = 1;
	wait(0.1);
	var_2fd0ae3c = [];
	var_56d8f697 = [];
	var_2395e945 = function_3f10449f();
	function_9d2f1d78("disableIngameMenu", 1);
	foreach(var_5dc5e20a in var_2395e945)
	{
		var_5dc5e20a function_eb306581();
	}
	if(!isdefined(level.var_78a27045))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			var_2fd0ae3c[var_c957f6b6] = function_ad13099a(var_2395e945[var_c957f6b6]);
			var_2fd0ae3c[var_c957f6b6].var_b5536acc = "center";
			var_2fd0ae3c[var_c957f6b6].var_db55e535 = "middle";
			var_2fd0ae3c[var_c957f6b6].var_740218b1 = "center";
			var_2fd0ae3c[var_c957f6b6].var_f9134763 = "middle";
			var_2fd0ae3c[var_c957f6b6].var_297f9d46 = var_2fd0ae3c[var_c957f6b6].var_297f9d46 - 130;
			var_2fd0ae3c[var_c957f6b6].var_79e0f792 = 1;
			var_2fd0ae3c[var_c957f6b6].var_2363da9c = 3;
			var_2fd0ae3c[var_c957f6b6].var_aabe9f43 = 0;
			var_2fd0ae3c[var_c957f6b6].var_d900369a = (1, 1, 1);
			var_2fd0ae3c[var_c957f6b6].var_5773c805 = 1;
			var_2fd0ae3c[var_c957f6b6] function_f6181aca(&"COOP_GAME_OVER");
			var_2fd0ae3c[var_c957f6b6] function_ba7f003e(1);
			var_2fd0ae3c[var_c957f6b6].var_aabe9f43 = 1;
			if(var_2395e945[var_c957f6b6] function_33d0d4d7())
			{
				var_2fd0ae3c[var_c957f6b6].var_2363da9c = 2;
				var_2fd0ae3c[var_c957f6b6].var_297f9d46 = var_2fd0ae3c[var_c957f6b6].var_297f9d46 + 40;
			}
		}
	}
	else
	{
		level thread [[level.var_78a27045]]("");
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_2395e945[var_c957f6b6] function_1b947e2a("weapon_hud_visible", 0);
		var_2395e945[var_c957f6b6] function_74268ebd(1);
	}
	function_9a7ed193();
	wait(1);
	wait(3.95);
	foreach(var_e0c27bfa in var_56d8f697)
	{
		var_e0c27bfa function_89cd542d();
	}
	foreach(var_e0c27bfa in var_2fd0ae3c)
	{
		var_e0c27bfa function_89cd542d();
	}
	level notify("hash_1c6f9dec");
	if(isdefined(level.var_4c3d1a55))
	{
		[[level.var_4c3d1a55]]();
		level.var_4c3d1a55 = undefined;
	}
	else
	{
		function_4b93af95();
		wait(15);
		level notify("hash_7a6a9fc");
	}
	namespace_84970cc4::function_966ecb29(function_3f10449f(), &function_6117716e);
	wait(1.5);
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_2395e945[var_c957f6b6] function_7198d073(0);
	}
	function_7d3cac7d(0);
	wait(666);
}

/*
	Name: function_4b93af95
	Namespace: namespace_d7916d65
	Checksum: 0x2C880E48
	Offset: 0x2480
	Size: 0x19D
	Parameters: 0
	Flags: None
*/
function function_4b93af95()
{
	level.var_4b93af95 = 1;
	level notify("hash_4b93af95");
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		namespace_82b91a51::function_c9ea7a64("levelNotify", "zi", var_2395e945[var_c957f6b6]);
		var_2395e945[var_c957f6b6] function_241d0eae(0);
		var_2395e945[var_c957f6b6] function_368f616b();
		var_2395e945[var_c957f6b6].var_3a90f16b = 100;
		var_2395e945[var_c957f6b6] thread function_333f42d1();
		var_2395e945[var_c957f6b6] function_39419ae5();
	}
	wait(0.25);
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		namespace_82b91a51::function_c9ea7a64("lsm", "0", var_2395e945[var_c957f6b6]);
	}
}

/*
	Name: function_333f42d1
	Namespace: namespace_d7916d65
	Checksum: 0x6A205449
	Offset: 0x2628
	Size: 0x5E1
	Parameters: 0
	Flags: None
*/
function function_333f42d1()
{
	self function_eb306581();
	level endon("hash_7a6a9fc");
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self notify("hash_58a9b574");
	self.var_e0beb6ee = "intermission";
	self.var_9e110015 = -1;
	self.var_654f262a = 0;
	self.var_a5cf2304 = 0;
	self.var_e5f0cd07 = undefined;
	var_d3a18b74 = namespace_14b42b8a::function_7faf4c39("intermission", "targetname");
	if(!isdefined(var_d3a18b74) || var_d3a18b74.size == 0)
	{
		var_d3a18b74 = function_99201f25("info_intermission", "classname");
		if(var_d3a18b74.size < 1)
		{
			/#
				function_895b00("Dev Block strings are not supported");
			#/
			return;
		}
	}
	self.var_bff517de = function_ad13099a(self);
	self.var_bff517de.var_740218b1 = "fullscreen";
	self.var_bff517de.var_f9134763 = "fullscreen";
	self.var_bff517de function_9befb288("black", 640, 480);
	self.var_bff517de.var_aabe9f43 = 1;
	var_22ae8d39 = undefined;
	while(1)
	{
		var_d3a18b74 = namespace_84970cc4::function_8332f7f6(var_d3a18b74);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_d3a18b74.size; var_c957f6b6++)
		{
			var_dd89f865 = var_d3a18b74[var_c957f6b6];
			if(!isdefined(var_22ae8d39))
			{
				self function_9b7fda5e(var_dd89f865.var_722885f3, var_dd89f865.var_6ab6f4fd);
			}
			if(isdefined(var_d3a18b74[var_c957f6b6].var_b07228b6))
			{
				if(!isdefined(var_22ae8d39))
				{
					var_22ae8d39 = function_9b7fda5e("script_model", self.var_722885f3 + VectorScale((0, 0, -1), 60));
					var_22ae8d39 function_e48f905e("tag_origin");
				}
				var_22ae8d39.var_722885f3 = var_d3a18b74[var_c957f6b6].var_722885f3;
				var_22ae8d39.var_6ab6f4fd = var_d3a18b74[var_c957f6b6].var_6ab6f4fd;
				for(var_a3557c4d = 0; var_a3557c4d < function_3f10449f().size; var_a3557c4d++)
				{
					var_5dc5e20a = function_3f10449f()[var_a3557c4d];
					var_5dc5e20a function_9df5cf69(var_22ae8d39);
					var_5dc5e20a function_e3592cf2();
					var_5dc5e20a function_7198d073(1);
				}
				var_d007da9e = 20;
				if(isdefined(var_d3a18b74[var_c957f6b6].var_d007da9e))
				{
					var_d007da9e = var_d3a18b74[var_c957f6b6].var_d007da9e;
				}
				var_ddc9fe3d = namespace_14b42b8a::function_7922262b(var_d3a18b74[var_c957f6b6].var_b07228b6, "targetname");
				var_2a97d9fd = function_7d15e2f8(var_d3a18b74[var_c957f6b6].var_722885f3, var_ddc9fe3d.var_722885f3);
				var_60db70fa = var_2a97d9fd / var_d007da9e;
				var_57ae7e4a = var_60db70fa * 0.25;
				if(var_57ae7e4a > 1)
				{
					var_57ae7e4a = 1;
				}
				self.var_bff517de function_ba7f003e(var_57ae7e4a);
				self.var_bff517de.var_aabe9f43 = 0;
				var_22ae8d39 function_a96a2721(var_ddc9fe3d.var_722885f3, var_60db70fa, var_57ae7e4a, var_57ae7e4a);
				var_22ae8d39 function_c0b6566f(var_ddc9fe3d.var_6ab6f4fd, var_60db70fa, var_57ae7e4a, var_57ae7e4a);
				wait(var_60db70fa - var_57ae7e4a);
				self.var_bff517de function_ba7f003e(var_57ae7e4a);
				self.var_bff517de.var_aabe9f43 = 1;
				wait(var_57ae7e4a);
				continue;
			}
			self.var_bff517de function_ba7f003e(1);
			self.var_bff517de.var_aabe9f43 = 0;
			wait(5);
			self.var_bff517de thread function_8fd93042(1);
		}
	}
}

/*
	Name: function_8fd93042
	Namespace: namespace_d7916d65
	Checksum: 0x1B94A42E
	Offset: 0x2C18
	Size: 0x2F
	Parameters: 1
	Flags: None
*/
function function_8fd93042(var_e78c0153)
{
	self function_ba7f003e(var_e78c0153);
	self.var_aabe9f43 = 1;
}

/*
	Name: function_6117716e
	Namespace: namespace_d7916d65
	Checksum: 0x9B173F37
	Offset: 0x2C50
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_6117716e()
{
	self function_a3624368(1);
	self function_1c75a89a(0);
	self function_f5ba63f2(0);
	if(isdefined(self.var_bff517de))
	{
		self.var_bff517de.var_79e0f792 = 1;
		self.var_bff517de.var_4d19365 = 100;
		self.var_bff517de function_ba7f003e(1);
		self.var_bff517de.var_aabe9f43 = 1;
	}
}

/*
	Name: function_30a0305
	Namespace: namespace_d7916d65
	Checksum: 0xB4D8856F
	Offset: 0x2D08
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_30a0305(var_67520c6a)
{
	level.var_673d6e2a = 1;
	wait(var_67520c6a);
	level.var_673d6e2a = undefined;
}

/*
	Name: function_a04c8fe5
	Namespace: namespace_d7916d65
	Checksum: 0x2648B2BB
	Offset: 0x2D38
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a04c8fe5()
{
	if(isdefined(level.var_673d6e2a))
	{
		while(1)
		{
			if(!isdefined(level.var_673d6e2a))
			{
				break;
			}
			wait(0.01);
		}
	}
}

/*
	Name: function_74ae7da4
	Namespace: namespace_d7916d65
	Checksum: 0xAC310B54
	Offset: 0x2D78
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_74ae7da4()
{
	level namespace_ad23e503::function_c35e6aab("start_coop_logic");
	level thread function_e6e399a9();
	/#
		function_895b00("Dev Block strings are not supported" + function_4441ff8d());
	#/
	do
	{
		wait(0.05);
		var_f862b7b1 = function_6c6e7b10(0);
		var_91f98264 = function_4441ff8d();
		var_8a1adf37 = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
		{
			if(level.var_2395e945[var_c957f6b6].var_e0beb6ee == "playing" || level.var_2395e945[var_c957f6b6].var_e0beb6ee == "spectator")
			{
				var_8a1adf37++;
			}
		}
		/#
			function_895b00("Dev Block strings are not supported" + function_6c6e7b10() + "Dev Block strings are not supported" + function_4441ff8d());
		#/
	}
	while(!(var_f862b7b1 < var_91f98264 || var_8a1adf37 < var_91f98264));
	function_feb1b9c2();
	function_6c1294b8("all_players_are_connected", "1");
	/#
		function_d0eaf029("Dev Block strings are not supported", (1, 1, 1));
	#/
	function_22dd92a9();
	level namespace_ad23e503::function_74d6b22f("all_players_connected");
	level namespace_ad23e503::function_74d6b22f("initial_streamer_ready");
	level namespace_ad23e503::function_74d6b22f("start_coop_logic");
}

/*
	Name: function_4ece4a2f
	Namespace: namespace_d7916d65
	Checksum: 0xA8492A77
	Offset: 0x2FF0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_4ece4a2f()
{
	namespace_71e9cb84::function_50f16166("toplayer", "sndHealth", 1, 2, "int");
}

