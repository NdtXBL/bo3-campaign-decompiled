#using scripts\codescripts\struct;
#using scripts\cp\_achievements;
#using scripts\cp\_challenges;
#using scripts\cp\_decorations;
#using scripts\cp\_objectives;
#using scripts\cp\_safehouse;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\music_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\table_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_c550ee23;

/*
	Name: function_2dc19561
	Namespace: namespace_c550ee23
	Checksum: 0x70D24ECB
	Offset: 0xAA8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("training_sim", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_c550ee23
	Checksum: 0xCE31E2B6
	Offset: 0xAE8
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_87f30e90(&function_87f30e90);
	namespace_dabbe128::function_7bb100ad(&function_7bb100ad);
	namespace_dabbe128::function_de1a6d25(&function_de1a6d25);
	namespace_dabbe128::function_87f30e90(&function_e340d355);
	namespace_71e9cb84::function_50f16166("actor", "rez_in", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "rez_out", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "rez_in", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "rez_out", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "enable_ethereal_overlay", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "enable_ethereal_overlay", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "enable_ethereal_overlay", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_build_world", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "cleanup_sim", 1000, 1, "counter");
	function_76550e47();
	function_7f7e9ea5();
	level.var_c1aa5253["round_beacon_disabled"] = "ui/fx_ui_frontend_training_sim_icon_active";
	level.var_c1aa5253["round_beacon_enabled"] = "ui/fx_ui_frontend_training_sim_icon_idle";
	level.var_c1aa5253["round_beacon_moving"] = "ui/fx_ui_frontend_training_sim_icon_move";
	function_b9b9b898();
	function_b8d52e94();
}

/*
	Name: function_b8d52e94
	Namespace: namespace_c550ee23
	Checksum: 0xF15C71AC
	Offset: 0xE00
	Size: 0x751
	Parameters: 0
	Flags: None
*/
function function_b8d52e94()
{
	var_5ca6504d = [];
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-15393.6, -3229.79, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-17421.5, -697.8, 1130.5), VectorScale((0, 1, 0), 45));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-18309.6, -3701.79, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-15413.6, 7862.21, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-17441.5, 10394.2, 1130.5), VectorScale((0, 1, 0), 45));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-18329.6, 7390.21, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-28485.6, 7878.21, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-30513.5, 10410.2, 1130.5), VectorScale((0, 1, 0), 45));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-31401.6, 7406.21, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-28479.6, -3223.79, 1130.5), (0, 0, 0));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-30507.5, -691.848, 1130.5), VectorScale((0, 1, 0), 45));
	if(!isdefined(var_5ca6504d))
	{
		var_5ca6504d = [];
	}
	else if(!function_6e2770d8(var_5ca6504d))
	{
		var_5ca6504d = function_84970cc4(var_5ca6504d);
	}
	var_5ca6504d[var_5ca6504d.size] = namespace_82b91a51::function_b9fd52a4("collision_clip_512x512x512", (-28481.6, -3221.79, 1130.5), (0, 0, 0));
	foreach(var_f79d1dda in var_5ca6504d)
	{
		var_f79d1dda function_14c24d9d(2, 0);
		var_f79d1dda function_50ccee8d();
		var_f79d1dda function_422037f5();
	}
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_c550ee23
	Checksum: 0x1A60D990
	Offset: 0x1560
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	/#
		self thread function_e22afa2c();
	#/
}

/*
	Name: function_aebcf025
	Namespace: namespace_c550ee23
	Checksum: 0x68BC8B88
	Offset: 0x1588
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	var_ce7c3ed5 = self function_e9022fe("TrainingSim");
	if(isdefined(var_ce7c3ed5))
	{
		self function_2b74b70a(var_ce7c3ed5);
	}
}

/*
	Name: function_b9b9b898
	Namespace: namespace_c550ee23
	Checksum: 0xE1A6ACC1
	Offset: 0x15E8
	Size: 0x175
	Parameters: 0
	Flags: None
*/
function function_b9b9b898()
{
	if(!isdefined(level.var_6de9c3a5))
	{
		level.var_6de9c3a5 = [];
		var_6de9c3a5 = namespace_14b42b8a::function_6409b8e5("trainingsimrating", "rating_list");
		foreach(var_d70cfeea in var_6de9c3a5)
		{
			var_1a07fad9 = namespace_14b42b8a::function_b7af54ae("trainingsimrating", var_d70cfeea);
			level.var_6de9c3a5[var_5e76f0af] = function_a8fb77bd();
			level.var_6de9c3a5[var_5e76f0af].var_92142c80 = var_1a07fad9.var_92142c80;
			level.var_6de9c3a5[var_5e76f0af].var_1253f065 = var_1a07fad9.var_1253f065;
			level.var_6de9c3a5[var_5e76f0af].var_9f813737 = var_1a07fad9.var_9f813737;
		}
	}
}

/*
	Name: function_a91b6cca
	Namespace: namespace_c550ee23
	Checksum: 0x87E94E9
	Offset: 0x1768
	Size: 0x15D
	Parameters: 0
	Flags: None
*/
function function_a91b6cca()
{
	if(!(isdefined(level.var_a91b6cca) && level.var_a91b6cca))
	{
		level.var_a91b6cca = 1;
		foreach(var_6af47321 in namespace_14b42b8a::function_7faf4c39("round_beacon", "script_noteworthy"))
		{
			var_f7ebb04b = function_6ada35ba(var_6af47321.var_170527fb, "target");
			var_6af47321.var_a1899e9f = namespace_a6816cde::function_a8960cf7(var_f7ebb04b, &"cp_safehouse_training_nextround", &"CP_SH_CAIRO_TRAINING_START_ROUND", &function_daea15a5, 0);
			var_6af47321.var_a1899e9f namespace_a6816cde::function_e04cba0f();
			var_6af47321.var_a1899e9f.var_6af47321 = var_6af47321;
		}
	}
}

/*
	Name: function_daea15a5
	Namespace: namespace_c550ee23
	Checksum: 0x99884F8B
	Offset: 0x18D0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_daea15a5(var_6bfe1586)
{
	self.var_6af47321 notify("hash_4dbf3ae3", var_6bfe1586);
}

/*
	Name: function_cc13d7aa
	Namespace: namespace_c550ee23
	Checksum: 0xCF0B6A46
	Offset: 0x1900
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_cc13d7aa()
{
	var_d8d1c67a = self.var_a18380a7.var_722885f3 + VectorScale((0, 0, 1), 50);
	self.var_77104b83 = namespace_82b91a51::function_b9fd52a4("p7_sim_training_icon", var_d8d1c67a, self.var_a18380a7.var_6ab6f4fd);
	self.var_77104b83.var_792a209 = var_d8d1c67a;
	self.var_77104b83.var_3c66c303 = 0;
	self.var_77104b83 thread function_89e36314();
}

/*
	Name: function_d03d00c6
	Namespace: namespace_c550ee23
	Checksum: 0xAA3A7F0B
	Offset: 0x19B0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d03d00c6()
{
	if(function_9fdc6b85())
	{
		return;
	}
	function_48bf7696("LB_CP_TRAINING_SIM");
}

/*
	Name: function_89e36314
	Namespace: namespace_c550ee23
	Checksum: 0xA43B6CAB
	Offset: 0x19F0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_89e36314()
{
	self endon("hash_128f8789");
	while(1)
	{
		if(self.var_3c66c303 != 2)
		{
			if(self.var_3c66c303 == 0)
			{
			}
			else
			{
			}
			var_53a79e45 = 45;
			if(self.var_3c66c303 == 0)
			{
			}
			else
			{
			}
			var_ad74c1fa = 2.5;
			if(self.var_3c66c303 == 0)
			{
			}
			else
			{
			}
			var_2e1eebfc = 0.7;
			while(self.var_3c66c303 != 2)
			{
				self function_a96a2721(self.var_792a209 + (0, 0, var_53a79e45), var_ad74c1fa, var_2e1eebfc, var_2e1eebfc);
				self waittill("hash_a21db68a");
				wait(0.15);
				var_53a79e45 = var_53a79e45 * -1;
				self function_c2931a36("veh_mapper_drone_main");
			}
		}
		wait(0.2);
	}
}

/*
	Name: function_cf1101c0
	Namespace: namespace_c550ee23
	Checksum: 0xAAAF1DA5
	Offset: 0x1B40
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_cf1101c0()
{
	self.var_77104b83.var_8ca0a44f = self.var_77104b83 namespace_5753664b::function_43718187("round_beacon_moving", self.var_77104b83.var_722885f3, self.var_77104b83.var_6ab6f4fd, "movedone", 1);
	self.var_77104b83.var_3c66c303 = 2;
	self.var_77104b83.var_792a209 = self.var_a18380a7.var_722885f3 + VectorScale((0, 0, 1), 180);
	self.var_77104b83 function_a96a2721(self.var_77104b83.var_792a209, 2, 1.25, 0.25);
	self.var_77104b83 function_921a1574("veh_mapper_drone_ping");
	self.var_77104b83 function_921a1574("veh_beacon_ball_move_start");
	self.var_77104b83 function_c2931a36("veh_mapper_drone_move");
	self.var_77104b83 waittill("hash_a21db68a");
	self.var_77104b83.var_8ca0a44f = self.var_77104b83 namespace_5753664b::function_43718187("round_beacon_disabled", self.var_77104b83.var_722885f3, self.var_77104b83.var_6ab6f4fd, "round_beacon_moving", 1);
	self.var_77104b83.var_3c66c303 = 1;
}

/*
	Name: function_fcd1719a
	Namespace: namespace_c550ee23
	Checksum: 0xE09728BF
	Offset: 0x1D10
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_fcd1719a()
{
	self.var_77104b83.var_8ca0a44f = self.var_77104b83 namespace_5753664b::function_43718187("round_beacon_moving", self.var_77104b83.var_722885f3, self.var_77104b83.var_6ab6f4fd, "movedone", 1);
	self.var_77104b83.var_3c66c303 = 2;
	self.var_77104b83.var_792a209 = self.var_a18380a7.var_722885f3 + VectorScale((0, 0, 1), 50);
	self.var_77104b83 function_a96a2721(self.var_77104b83.var_792a209, 1.5, 0.3, 1.1);
	self.var_77104b83 waittill("hash_a21db68a");
	self.var_77104b83.var_3c66c303 = 0;
	self.var_77104b83.var_8ca0a44f = self.var_77104b83 namespace_5753664b::function_43718187("round_beacon_enabled", self.var_77104b83.var_722885f3, self.var_77104b83.var_6ab6f4fd, "round_beacon_moving", 1);
	self.var_77104b83 function_921a1574("veh_mapper_drone_ping");
	self.var_77104b83 function_921a1574("veh_beacon_ball_move_start");
}

/*
	Name: function_55682d10
	Namespace: namespace_c550ee23
	Checksum: 0x9941D58D
	Offset: 0x1EC8
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_55682d10(var_cc1de81f)
{
	self function_9ab09984();
	self.var_bd5ad7fc = var_cc1de81f;
	self function_52fddbd0();
	var_8bfb9994 = function_34c94b3f("training_sim_spawn_point", "script_noteworthy");
	var_e6b4a27f = namespace_84970cc4::function_47d18840(var_8bfb9994);
	self function_a30814d(var_e6b4a27f.var_722885f3);
	namespace_82b91a51::function_76f13293();
	self function_eda2be50(var_e6b4a27f.var_6ab6f4fd);
}

/*
	Name: function_17f2cd2f
	Namespace: namespace_c550ee23
	Checksum: 0xDCE5EDA5
	Offset: 0x1FB8
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_17f2cd2f()
{
	if(self.var_d6d35c88 == level.var_6de9c3a5.size)
	{
		return;
	}
	if(level.var_6de9c3a5[self.var_d6d35c88].var_92142c80 <= self.var_d1b47d51)
	{
		if(!(isdefined(self function_84368297("trainingSimStats", "ranksAchieved", self.var_d6d35c88)) && self function_84368297("trainingSimStats", "ranksAchieved", self.var_d6d35c88)))
		{
			self function_8f67433b("trainingSimStats", "ranksAchieved", self.var_d6d35c88, 1);
			self function_8f67433b("PlayerStatsByMap", "cp_sh_cairo", "completedDifficulties", self.var_d6d35c88, 1);
			self function_9320359d(level.var_6de9c3a5[self.var_d6d35c88].var_1253f065);
			self function_aa67c13b("career_tokens", level.var_6de9c3a5[self.var_d6d35c88].var_1253f065);
			self function_dde1ac37("completed_training_sim_rating", level.var_6de9c3a5[self.var_d6d35c88].var_9f813737);
			self function_aa67c13b("CAREER_TRAINING_SIM", 1);
		}
		self.var_d6d35c88++;
		self function_3a9588ea(self.var_43693cde, "currentRating", self.var_d6d35c88);
	}
}

/*
	Name: function_635d5e9d
	Namespace: namespace_c550ee23
	Checksum: 0xAD39B4B
	Offset: 0x21C8
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_635d5e9d()
{
	for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
	{
		if(!(isdefined(self function_84368297("trainingSimStats", "ranksAchieved", var_c957f6b6)) && self function_84368297("trainingSimStats", "ranksAchieved", var_c957f6b6)))
		{
			return var_c957f6b6;
		}
	}
	return 4;
}

/*
	Name: function_4f28b6f8
	Namespace: namespace_c550ee23
	Checksum: 0x4B4B9012
	Offset: 0x2268
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_4f28b6f8(var_cc1de81f)
{
	self.var_8201758a = 1;
	self thread function_266c43bf(var_cc1de81f);
	self namespace_82b91a51::function_564f2d81("training_finished", "death");
	self thread function_a1fa0b8e();
	namespace_ccb8d056::function_c1cdedfb("underscore", self);
}

/*
	Name: function_a1fa0b8e
	Namespace: namespace_c550ee23
	Checksum: 0xD22FD0CA
	Offset: 0x2300
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a1fa0b8e()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_3a6467f0");
	wait(5);
	namespace_ccb8d056::function_c1cdedfb("underscore", self);
}

/*
	Name: function_266c43bf
	Namespace: namespace_c550ee23
	Checksum: 0x793BBEEC
	Offset: 0x2350
	Size: 0x221
	Parameters: 1
	Flags: None
*/
function function_266c43bf(var_cc1de81f)
{
	self endon("hash_643a7daf");
	self thread function_55682d10(var_cc1de81f);
	wait(0.05);
	self namespace_82b91a51::function_56cee95(1);
	self.var_24c69c09 = 1;
	self.var_d1b47d51 = 0;
	self.var_80e5e834 = 0;
	self.var_bcf55acc = [];
	self.var_d46900f9 = 0;
	self.var_2ded5a80 = 0;
	self.var_a46c7f73 = 0;
	self namespace_d00ec32::function_edff667f();
	self function_d2260497();
	if(self function_76f34311("cybercom_emergencyreserve") > 0)
	{
		self.var_dc4a16f6 = 1;
	}
	self namespace_82b91a51::function_11a89b44(undefined, 0, 9);
	wait(1.2);
	self namespace_71e9cb84::function_688ed188("postfx_build_world", 1);
	self thread namespace_ce7c3ed5::function_593c2af4(1.5, "white");
	function_69afe676(self, "safehouse.inTrainingSim", 1);
	self thread function_86a2dc30();
	function_cce02c2e();
	function_32e49d5b();
	if(isdefined(self.var_43693cde))
	{
		self function_2b74b70a(self.var_43693cde);
		self.var_43693cde = undefined;
	}
	if(function_5b49d38c(self))
	{
		self notify("hash_1c919c84");
	}
	self.var_24c69c09 = undefined;
}

/*
	Name: function_32e49d5b
	Namespace: namespace_c550ee23
	Checksum: 0x449C074B
	Offset: 0x2580
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_32e49d5b()
{
	function_69afe676(self, "safehouse.inTrainingSim", 0);
	if(isdefined(self.var_a18380a7.var_a1899e9f))
	{
		self.var_a18380a7.var_a1899e9f namespace_a6816cde::function_e04cba0f(self);
	}
	namespace_d0ef8521::function_50ccee8d("cp_safehouse_training_nextround", self);
	namespace_d0ef8521::function_50ccee8d("cp_safehouse_training_start", self);
	if(isdefined(self.var_a18380a7.var_8ca0a44f))
	{
		self.var_a18380a7.var_8ca0a44f function_dc8c8404();
	}
	if(isdefined(self.var_77104b83))
	{
		self.var_77104b83 function_dc8c8404();
	}
	var_56dd1913 = function_c20c2e8(self.var_bd5ad7fc, "prefabname");
	foreach(var_e98b4e9b in var_56dd1913)
	{
		var_e98b4e9b function_dc8c8404();
	}
	function_48582c92();
	function_8c8a1672();
	function_65b24866();
}

/*
	Name: function_76550e47
	Namespace: namespace_c550ee23
	Checksum: 0x30AD3CAF
	Offset: 0x2758
	Size: 0x1A7
	Parameters: 0
	Flags: None
*/
function function_76550e47()
{
	level.var_a6bed3c2 = [];
	var_d10f0e22 = namespace_988ffb13::function_d7916d65("gamedata/tables/cp/cp_training_sim.csv", "round", 1);
	var_f8cc3a0e = function_391512da(var_d10f0e22);
	foreach(var_9f831cdc in var_f8cc3a0e)
	{
		var_23d730a4 = function_391512da(var_d10f0e22[var_9f831cdc]);
		foreach(var_7b81749 in var_23d730a4)
		{
			var_3e671a1 = var_d10f0e22[var_9f831cdc][var_7b81749];
			if(var_3e671a1 > 0)
			{
				level.var_a6bed3c2[var_9f831cdc][var_7b81749] = var_3e671a1;
			}
		}
	}
}

/*
	Name: function_7f7e9ea5
	Namespace: namespace_c550ee23
	Checksum: 0x5DCF13F2
	Offset: 0x2908
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_7f7e9ea5()
{
	level.var_4b30274 = namespace_988ffb13::function_d7916d65("gamedata/tables/cp/cp_training_sim.csv", "score", 1);
}

/*
	Name: function_86a2dc30
	Namespace: namespace_c550ee23
	Checksum: 0x1438C8DE
	Offset: 0x2948
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_86a2dc30()
{
	self endon("hash_128f8789");
	self endon("hash_1c919c84");
	self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	while(var_d62110b4 != "EndTrainingSim")
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	}
	self namespace_ce7c3ed5::function_7e61de2b(1.5, "black");
	self notify("hash_1c919c84");
}

/*
	Name: function_b5b532e8
	Namespace: namespace_c550ee23
	Checksum: 0xB7609E8B
	Offset: 0x29F0
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_b5b532e8()
{
	var_762314d8 = function_d2614e32();
	var_f7ebb04b = function_6ada35ba(var_762314d8.var_170527fb, "target");
	var_762314d8.var_a1899e9f = namespace_a6816cde::function_a8960cf7(var_f7ebb04b, &"cp_safehouse_training_start", &"CP_SH_CAIRO_TRAINING_START_ROUND", &function_daea15a5, 0);
	var_762314d8.var_a1899e9f namespace_a6816cde::function_e04cba0f();
	var_762314d8.var_a1899e9f.var_6af47321 = var_762314d8;
	namespace_d0ef8521::function_48f26766("cp_safehouse_training_start", self);
	self.var_77104b83.var_8ca0a44f = self.var_77104b83 namespace_5753664b::function_43718187("round_beacon_enabled", self.var_77104b83.var_722885f3, self.var_77104b83.var_6ab6f4fd, "round_beacon_moving", 1);
	var_762314d8.var_a1899e9f namespace_a6816cde::function_a8271940(self);
	var_762314d8 waittill("hash_4dbf3ae3");
	var_762314d8.var_a1899e9f namespace_a6816cde::function_e04cba0f(self);
	namespace_d0ef8521::function_50ccee8d("cp_safehouse_training_start", self);
}

/*
	Name: function_cce02c2e
	Namespace: namespace_c550ee23
	Checksum: 0xEA4E13C1
	Offset: 0x2BA8
	Size: 0xC63
	Parameters: 0
	Flags: None
*/
function function_cce02c2e()
{
	self endon("hash_128f8789");
	self endon("hash_1c919c84");
	/#
		self thread function_453e055b();
	#/
	self.var_38da1d8e = 0;
	self.var_69051fdd = function_3983140d("sim_goal_volume", "targetname", 1);
	self.var_2328b30c = function_4041981f();
	self.var_a18380a7 = function_d2614e32();
	namespace_ccb8d056::function_c1cdedfb("ts_underscore", self);
	self notify("hash_786c76a1");
	wait(2.5);
	namespace_ce7c3ed5::function_7e61de2b(0.1, "white");
	function_cc13d7aa();
	wait(0.3);
	namespace_ce7c3ed5::function_593c2af4(1.5, "white");
	function_a91b6cca();
	self notify("hash_ce89933d");
	self namespace_82b91a51::function_56cee95(0);
	wait(0.25);
	self namespace_82b91a51::function_16c71b8(0);
	self notify("hash_2aca24c6");
	function_b5b532e8();
	self.var_43693cde = self function_2f6b6a4c("TrainingSim");
	self function_8f67433b("trainingSimStats", "ranksAchieved", 0, 1);
	self.var_d6d35c88 = self function_635d5e9d();
	self.var_38da1d8e++;
	self function_3a9588ea(self.var_43693cde, "training_sim_time_bonus", "");
	self function_3a9588ea(self.var_43693cde, "round_num", "1");
	self function_3a9588ea(self.var_43693cde, "score", "0");
	self function_3a9588ea(self.var_43693cde, "roundStartTime", GetTime());
	self function_3a9588ea(self.var_43693cde, "currentRating", self.var_d6d35c88);
	var_38184ced = 2;
	while(isdefined(level.var_a6bed3c2[self.var_38da1d8e]))
	{
		self.var_1e13e77e = self.var_a18380a7;
		self.var_a18380a7 = function_c9db2b14(self.var_1e13e77e);
		self thread function_7407182f(self.var_a18380a7.var_722885f3);
		thread function_cf1101c0();
		self function_3a9588ea(self.var_43693cde, "round_num", "" + self.var_38da1d8e);
		wait(var_38184ced);
		function_48582c92();
		function_8c8a1672();
		function_30df2b91();
		function_49796025();
		var_23d730a4 = level.var_a6bed3c2[self.var_38da1d8e];
		self.var_4c79ddb8 = [];
		foreach(var_3e671a1 in var_23d730a4)
		{
			if(var_7b81749 == "goaltime")
			{
				break;
			}
			var_8e7d3ece = undefined;
			var_da1cc39e = function_d05904dc(var_7b81749);
			var_da1cc39e = namespace_84970cc4::function_8332f7f6(var_da1cc39e);
			var_da1cc39e = namespace_84970cc4::function_434d221a(var_da1cc39e, &function_44933f23);
			var_b3d71f31 = 0;
			/#
				namespace_33b293fd::function_a7ee953(var_da1cc39e.size, "Dev Block strings are not supported" + var_7b81749 + "Dev Block strings are not supported");
			#/
			for(var_c957f6b6 = 0; var_c957f6b6 < var_3e671a1; var_c957f6b6++)
			{
				var_a59295c6 = undefined;
				var_f2d5d544 = var_da1cc39e[var_b3d71f31];
				var_b3d71f31++;
				if(var_b3d71f31 >= var_da1cc39e.size)
				{
				}
				else
				{
				}
				var_b3d71f31 = var_b3d71f31;
				while(1)
				{
					var_fd563f35 = var_f2d5d544 namespace_2f06d687::function_9b7fda5e(1);
					if(isdefined(var_fd563f35))
					{
						var_fd563f35.var_a5c5977d = var_f2d5d544.var_722885f3[2];
						var_fd563f35 thread function_6dbfd048(self);
						var_fd563f35 function_50ccee8d();
						var_fd563f35 function_422037f5();
						var_fd563f35.var_2dd707 = 0;
						var_fd563f35 namespace_d84e54db::function_b4f5e3b9(1);
						if(var_f2d5d544.var_db7bb468 === "spawn_at_spawner")
						{
							var_b71ed4a2 = var_fd563f35.var_722885f3;
						}
						else
						{
							var_b71ed4a2 = function_27b9fdd3(var_fd563f35, self.var_a18380a7.var_722885f3, var_8e7d3ece);
						}
						var_6cac4ba4 = function_bdcdc423(self.var_722885f3 - var_b71ed4a2);
						var_fd563f35 namespace_2f06d687::function_5991830b(var_b71ed4a2, var_6cac4ba4);
						var_5e280b91 = function_72a94f05(0.25, 0.45);
						wait(var_5e280b91);
						var_fd563f35 function_48f26766();
						var_fd563f35.var_2dd707 = 1;
						var_fd563f35 namespace_d84e54db::function_b4f5e3b9(0);
						var_fd563f35 function_b7cc66c6(self, 1);
						var_fd563f35 namespace_82b91a51::function_67520c6a(1, "death", &function_4083a98e);
						if(function_8d0347b8(var_fd563f35))
						{
							var_fd563f35 thread function_9b1ae7e9(self);
						}
						else if(function_85e4c3b3(var_fd563f35))
						{
							var_fd563f35 thread function_826a69d8(self);
						}
						if(!isdefined(var_8e7d3ece))
						{
							var_8e7d3ece = var_fd563f35.var_722885f3;
						}
						if(!isdefined(self.var_4c79ddb8))
						{
							self.var_4c79ddb8 = [];
						}
						else if(!function_6e2770d8(self.var_4c79ddb8))
						{
							self.var_4c79ddb8 = function_84970cc4(self.var_4c79ddb8);
						}
						self.var_4c79ddb8[self.var_4c79ddb8.size] = var_fd563f35;
						break;
					}
					wait(0.05);
				}
			}
		}
		self notify("hash_a120a3f4", 0);
		namespace_ccb8d056::function_c1cdedfb("ts_combat", self);
		while(1)
		{
			var_bd6b575 = [];
			foreach(var_fd563f35 in self.var_4c79ddb8)
			{
				if(isdefined(var_fd563f35) && function_5b49d38c(var_fd563f35) && var_fd563f35.var_3e94206a != self.var_3e94206a)
				{
					var_bd6b575[var_bd6b575.size] = var_fd563f35;
				}
			}
			if(var_bd6b575.size <= 0)
			{
				break;
			}
			self.var_4c79ddb8 = var_bd6b575;
			wait(0.25);
		}
		self.var_4c79ddb8 = [];
		if(!isdefined(level.var_a6bed3c2[self.var_38da1d8e + 1]))
		{
			break;
		}
		namespace_ccb8d056::function_c1cdedfb("ts_underscore", self);
		namespace_d0ef8521::function_48f26766("cp_safehouse_training_nextround", self);
		function_fcd1719a();
		var_38184ced = 3.5;
		self.var_a18380a7.var_a1899e9f namespace_a6816cde::function_a8271940(self);
		self.var_a18380a7 waittill("hash_4dbf3ae3");
		self thread function_4837ece8(self.var_a18380a7);
		function_e8f80ed0();
		function_31f3ed94(self);
		self.var_a18380a7.var_a1899e9f namespace_a6816cde::function_e04cba0f(self);
		namespace_d0ef8521::function_50ccee8d("cp_safehouse_training_nextround", self);
		self.var_38da1d8e++;
	}
	wait(2);
	self namespace_82b91a51::function_56cee95(1);
	namespace_ccb8d056::function_c1cdedfb("ts_victory", self);
	self function_5b7e454a(&"training_sim_complete", 0);
	wait(3);
	self namespace_ce7c3ed5::function_7e61de2b(2, "black");
	self namespace_82b91a51::function_56cee95(0);
	if(level.var_57830ddc == 4)
	{
		self function_aa67c13b("career_training_sim_real", 1);
	}
}

/*
	Name: function_7407182f
	Namespace: namespace_c550ee23
	Checksum: 0xBBE04DC6
	Offset: 0x3818
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_7407182f(var_19f0c7ba)
{
	var_878a2866 = var_19f0c7ba - self.var_722885f3;
	self namespace_82b91a51::function_56cee95(1);
	self function_d2f3e35b(0.3);
	self function_eda2be50((17, function_bdcdc423(var_878a2866)[1], 0));
	wait(0.4);
	self namespace_82b91a51::function_56cee95(0);
}

/*
	Name: function_a92a30c4
	Namespace: namespace_c550ee23
	Checksum: 0x2E8F4E74
	Offset: 0x38D8
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_a92a30c4(var_6ec35b3f, var_fcbbec04)
{
	var_59fb42bf = function_88c629b7(function_5f9a4869(var_6ec35b3f, var_fcbbec04) / function_73b84f4d(var_6ec35b3f) * function_73b84f4d(var_fcbbec04));
	return var_59fb42bf;
}

/*
	Name: function_44933f23
	Namespace: namespace_c550ee23
	Checksum: 0xAF4881C2
	Offset: 0x3968
	Size: 0x3D
	Parameters: 2
	Flags: None
*/
function function_44933f23(var_50798de5, var_767c084e)
{
	if(var_50798de5.var_db7bb468 === "spawn_at_spawner")
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_49796025
	Namespace: namespace_c550ee23
	Checksum: 0x9326BDD3
	Offset: 0x39B0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_49796025()
{
	self.var_bcf55acc[self.var_38da1d8e] = function_a8fb77bd();
	self.var_bcf55acc[self.var_38da1d8e].var_dbc3b44a = GetTime();
	self.var_bcf55acc[self.var_38da1d8e].var_b79a4566 = 0;
	self.var_bcf55acc[self.var_38da1d8e].var_5004e3e9 = 0;
	self.var_bcf55acc[self.var_38da1d8e].var_827fa2cc = 0;
}

/*
	Name: function_e8f80ed0
	Namespace: namespace_c550ee23
	Checksum: 0xD42AD6DF
	Offset: 0x3A60
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_e8f80ed0()
{
	var_bc6c413b = self.var_bcf55acc[self.var_38da1d8e];
	if(isdefined(var_bc6c413b))
	{
		var_3313da6b = level.var_a6bed3c2[self.var_38da1d8e]["goaltime"];
		var_4cd10db3 = GetTime() - var_bc6c413b.var_dbc3b44a;
		var_34b12618 = var_4cd10db3 / 1000;
		var_8f752567 = var_34b12618 - var_3313da6b;
		var_35989c93 = 0;
		if(var_8f752567 < 0)
		{
			var_35989c93 = function_ed96839(function_69c2f683(var_8f752567 * 10));
		}
		var_bc6c413b.var_a3d7c1d0 = self.var_80e5e834;
		var_bc6c413b.var_3743627a = var_4cd10db3;
		var_bc6c413b.var_35989c93 = var_35989c93;
		self.var_80e5e834 = 0;
		if(var_35989c93 > 0)
		{
			self.var_d1b47d51 = self.var_d1b47d51 + var_35989c93;
			self function_a5ac6877();
			self function_17f2cd2f();
			self function_3a9588ea(self.var_43693cde, "training_sim_time_bonus", "" + var_35989c93);
			self function_3a9588ea(self.var_43693cde, "score", "" + self.var_d1b47d51);
		}
	}
}

/*
	Name: function_48582c92
	Namespace: namespace_c550ee23
	Checksum: 0x4A04F49C
	Offset: 0x3C58
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_48582c92()
{
	var_d7188244 = function_bd90138e();
	foreach(var_5d5ef481 in var_d7188244)
	{
		var_5d5ef481 function_dc8c8404();
	}
	var_d7188244 = function_99201f25("script_vehicle_corpse", "classname");
	foreach(var_5d5ef481 in var_d7188244)
	{
		var_5d5ef481 function_dc8c8404();
	}
}

/*
	Name: function_8c8a1672
	Namespace: namespace_c550ee23
	Checksum: 0xCFFC5349
	Offset: 0x3DA8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c8a1672()
{
	self namespace_71e9cb84::function_688ed188("cleanup_sim", 1);
}

/*
	Name: function_65b24866
	Namespace: namespace_c550ee23
	Checksum: 0x70B675A5
	Offset: 0x3DD8
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_65b24866()
{
	var_618b3c3 = function_324734ae();
	foreach(var_daa69c19 in var_618b3c3)
	{
		if(isdefined(var_daa69c19) && function_316422d1(self.var_722885f3, var_daa69c19.var_722885f3) <= 5000 * 5000)
		{
			var_daa69c19 function_dc8c8404();
		}
	}
}

/*
	Name: function_30df2b91
	Namespace: namespace_c550ee23
	Checksum: 0x78A6DEE6
	Offset: 0x3ED0
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_30df2b91()
{
	var_fed635a = function_c4d5ec1f("riotshield");
	if(!isdefined(var_fed635a))
	{
		return;
	}
	var_618b3c3 = function_324734ae();
	foreach(var_daa69c19 in var_618b3c3)
	{
		if(isdefined(var_daa69c19) && isdefined(var_daa69c19.var_c5b0e858) && var_daa69c19.var_c5b0e858 == var_fed635a && function_316422d1(self.var_722885f3, var_daa69c19.var_722885f3) <= 5000 * 5000)
		{
			var_daa69c19 function_dc8c8404();
		}
	}
}

/*
	Name: function_4837ece8
	Namespace: namespace_c550ee23
	Checksum: 0x63CF1E0F
	Offset: 0x4020
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_4837ece8(var_a18380a7)
{
	self function_5b7e454a(&"training_sim_round_complete", 0);
}

/*
	Name: function_c9db2b14
	Namespace: namespace_c550ee23
	Checksum: 0x91252BDF
	Offset: 0x4058
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_c9db2b14(var_d8d3a227)
{
	var_23e56668 = function_34c94b3f("round_beacon", "script_noteworthy");
	if(isdefined(var_d8d3a227))
	{
		function_81403b2f(var_23e56668, var_d8d3a227);
	}
	else
	{
		var_178d40cf = function_e7bdc1a1(self.var_722885f3, var_23e56668);
		function_81403b2f(var_23e56668, var_178d40cf);
	}
	var_a18380a7 = namespace_84970cc4::function_47d18840(var_23e56668);
	function_d4242515(var_a18380a7);
	return var_a18380a7;
}

/*
	Name: function_d2614e32
	Namespace: namespace_c550ee23
	Checksum: 0x1375D909
	Offset: 0x4140
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d2614e32()
{
	var_23e56668 = function_34c94b3f("round_beacon", "script_noteworthy");
	var_178d40cf = function_e7bdc1a1(self.var_722885f3, var_23e56668);
	return var_178d40cf;
}

/*
	Name: function_4041981f
	Namespace: namespace_c550ee23
	Checksum: 0x83646AA1
	Offset: 0x41A8
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_4041981f()
{
	var_23e56668 = function_34c94b3f("round_beacon", "script_noteworthy");
	foreach(var_a18380a7 in var_23e56668)
	{
		if(var_a18380a7.var_2d29332f === "tower1")
		{
			return var_a18380a7;
		}
	}
}

/*
	Name: function_6dbfd048
	Namespace: namespace_c550ee23
	Checksum: 0x9D70D638
	Offset: 0x4270
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_6dbfd048(var_6bfe1586)
{
	self endon("hash_128f8789");
	var_6bfe1586 waittill("hash_128f8789");
	namespace_d0ef8521::function_50ccee8d("cp_safehouse_training_nextround", var_6bfe1586);
	namespace_d0ef8521::function_50ccee8d("cp_safehouse_training_start", var_6bfe1586);
	self function_dc8c8404();
}

/*
	Name: function_27b9fdd3
	Namespace: namespace_c550ee23
	Checksum: 0xC71499EC
	Offset: 0x42F8
	Size: 0x621
	Parameters: 3
	Flags: None
*/
function function_27b9fdd3(var_fd563f35, var_c55dcd82, var_8e7d3ece)
{
	var_88ea9601 = var_fd563f35 function_47d277bc();
	var_eea2d76b = var_fd563f35 function_34452442();
	var_93f1b527 = function_aaeec8c5(var_88ea9601[0] - var_eea2d76b[0], var_88ea9601[1] - var_eea2d76b[1]);
	var_5b1ebb35 = var_88ea9601[2] - var_eea2d76b[2];
	var_567a389e = undefined;
	if(isdefined(var_8e7d3ece))
	{
		var_c55dcd82 = var_8e7d3ece;
		var_ac2f333b = var_93f1b527;
		var_819d27f5 = var_ac2f333b + var_93f1b527 * 5;
		/#
			if(function_4bd0142f("Dev Block strings are not supported", 0))
			{
				function_2d3eaa0e(var_c55dcd82, 20, var_fd563f35.var_24a7a3c8, 1, 0, 10, 600);
			}
		#/
	}
	else if(var_fd563f35.var_db7bb468 === "spawn_between_towers")
	{
		var_bbcaca07 = function_87ea89a(var_fd563f35.var_2f06d687.var_722885f3, self.var_2328b30c.var_722885f3);
		var_ac2f333b = 0;
		var_819d27f5 = var_fd563f35.var_2f06d687.var_f8456b37;
		var_226a15c3 = (self.var_a18380a7.var_722885f3[0], self.var_a18380a7.var_722885f3[1], var_fd563f35.var_2f06d687.var_722885f3[2]);
		var_c4a9fefc = (self.var_1e13e77e.var_722885f3[0], self.var_1e13e77e.var_722885f3[1], var_226a15c3[2]);
		var_c55dcd82 = var_226a15c3 + function_f679a325(var_c4a9fefc - var_226a15c3) * var_bbcaca07;
	}
	else if(isdefined(var_c55dcd82))
	{
		var_ac2f333b = 0;
		var_819d27f5 = var_ac2f333b + 1000 + var_93f1b527 * 3;
		var_c55dcd82 = (var_c55dcd82[0], var_c55dcd82[1], var_fd563f35.var_a5c5977d);
	}
	else
	{
		var_c55dcd82 = self.var_722885f3;
		var_ac2f333b = function_aaeec8c5(500, var_93f1b527);
		var_819d27f5 = var_ac2f333b + var_93f1b527 * 3;
		var_567a389e = function_bc7ce905(self.var_6ab6f4fd) * -10;
	}
	var_81df3e77 = var_5b1ebb35 / 2;
	var_b61860b6 = var_93f1b527 / 2;
	var_2f3e48f3 = var_93f1b527 / 2;
	var_fdf395af = [];
	var_c55dcd82 = (var_c55dcd82[0], var_c55dcd82[1], var_fd563f35.var_a5c5977d);
	if(isdefined(var_567a389e))
	{
		var_d5b210fc = function_54f69de9(var_c55dcd82, var_ac2f333b, var_819d27f5, var_81df3e77, var_b61860b6, var_fd563f35, var_2f3e48f3, var_567a389e);
	}
	else
	{
		var_d5b210fc = function_54f69de9(var_c55dcd82, var_ac2f333b, var_819d27f5, var_81df3e77, var_b61860b6, var_fd563f35, var_2f3e48f3);
	}
	if(var_d5b210fc.var_72254e15.size)
	{
		return var_d5b210fc.var_72254e15[function_26299103(var_d5b210fc.var_72254e15.size)].var_722885f3;
	}
	/#
		if(function_4bd0142f("Dev Block strings are not supported", 0))
		{
			foreach(var_dd89f865 in var_fdf395af)
			{
				function_617f6eba(var_dd89f865.var_722885f3, 600, var_fd563f35.var_24a7a3c8);
			}
		}
	#/
	var_d5b210fc = function_54f69de9(self.var_a18380a7.var_722885f3, var_ac2f333b, var_819d27f5, var_81df3e77, var_b61860b6, var_fd563f35, var_2f3e48f3);
	if(var_d5b210fc.var_72254e15.size)
	{
		return var_d5b210fc.var_72254e15[function_26299103(var_d5b210fc.var_72254e15.size)].var_722885f3;
	}
	return var_fd563f35.var_722885f3;
}

/*
	Name: function_d05904dc
	Namespace: namespace_c550ee23
	Checksum: 0x5BDBBA29
	Offset: 0x4928
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_d05904dc(var_7b81749)
{
	var_da1cc39e = namespace_82b91a51::function_e9d02c78(function_bd42c9d1("classname", var_7b81749, "vehicletype", var_7b81749), 0, [], 0, 1);
	var_da1cc39e = function_ca448a30(var_da1cc39e, self.var_bd5ad7fc, "prefabname");
	var_da1cc39e = namespace_84970cc4::function_3d5de9eb(var_da1cc39e, 0, &function_944a8cc8);
	return var_da1cc39e;
}

/*
	Name: function_944a8cc8
	Namespace: namespace_c550ee23
	Checksum: 0x5AC4BD2E
	Offset: 0x49F0
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_944a8cc8(var_a3d46ee4)
{
	return function_eddad593(var_a3d46ee4);
}

/*
	Name: function_a2c485c7
	Namespace: namespace_c550ee23
	Checksum: 0xD3773838
	Offset: 0x4A20
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function function_a2c485c7(var_b8da2278, var_5e953b6, var_2391a42e)
{
	if(!isdefined(var_2391a42e))
	{
		var_2391a42e = 0;
	}
	var_c77d2837 = function_99201f25(self.var_bd5ad7fc, "prefabname", var_2391a42e);
	var_c77d2837 = function_ca448a30(var_c77d2837, var_b8da2278, var_5e953b6);
	return var_c77d2837;
}

/*
	Name: function_3983140d
	Namespace: namespace_c550ee23
	Checksum: 0x3D6890B1
	Offset: 0x4AB0
	Size: 0x5D
	Parameters: 3
	Flags: None
*/
function function_3983140d(var_b8da2278, var_5e953b6, var_2391a42e)
{
	var_c77d2837 = function_a2c485c7(var_b8da2278, var_5e953b6, var_2391a42e);
	if(var_c77d2837.size)
	{
		return var_c77d2837[0];
	}
	return undefined;
}

/*
	Name: function_aeb2edb
	Namespace: namespace_c550ee23
	Checksum: 0x75FC021
	Offset: 0x4B18
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_aeb2edb(var_b8da2278, var_5e953b6)
{
	var_c77d2837 = function_2ba4336d(self.var_bd5ad7fc, "prefabname");
	if(isdefined(var_b8da2278))
	{
		var_c77d2837 = function_ca448a30(var_c77d2837, var_b8da2278, var_5e953b6);
	}
	return var_c77d2837;
}

/*
	Name: function_34c94b3f
	Namespace: namespace_c550ee23
	Checksum: 0xD86D7ED9
	Offset: 0x4B98
	Size: 0x81
	Parameters: 2
	Flags: None
*/
function function_34c94b3f(var_b8da2278, var_5e953b6)
{
	var_5ea0ba06 = namespace_14b42b8a::function_7faf4c39(self.var_bd5ad7fc, "prefabname");
	var_389e3f9d = namespace_14b42b8a::function_7faf4c39(var_b8da2278, var_5e953b6);
	return function_6f8792eb(var_5ea0ba06, var_389e3f9d);
}

/*
	Name: function_87f30e90
	Namespace: namespace_c550ee23
	Checksum: 0xAE954B43
	Offset: 0x4C28
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_87f30e90()
{
	self endon("hash_128f8789");
	if(self.var_caae374e === "training_spawners")
	{
		self.var_72f54197 = function_c1a5b344();
		self.var_b0ac175a = 0;
		namespace_82b91a51::function_76f13293();
		self namespace_71e9cb84::function_74d6b22f("rez_in", 1);
		if(self function_29281420())
		{
			self namespace_71e9cb84::function_74d6b22f("enable_ethereal_overlay", 1);
		}
	}
	else if(isdefined(self.var_6319d77b))
	{
		self.var_47c44e16 = self.var_6319d77b.var_bd5ad7fc;
	}
}

/*
	Name: function_7bb100ad
	Namespace: namespace_c550ee23
	Checksum: 0xE6CA6235
	Offset: 0x4D10
	Size: 0x26F
	Parameters: 1
	Flags: None
*/
function function_7bb100ad(var_d4457625)
{
	if(function_65f192a6(var_d4457625.var_3a212fd7) && (isdefined(var_d4457625.var_3a212fd7.var_24c69c09) && var_d4457625.var_3a212fd7.var_24c69c09))
	{
		var_bc6c413b = var_d4457625.var_3a212fd7.var_bcf55acc[var_d4457625.var_3a212fd7.var_38da1d8e];
		if(isdefined(var_bc6c413b) && isdefined(self.var_72f54197))
		{
			var_1c864fc1 = 1;
			if(function_7f41c8e7(function_84970cc4("helmet", "head", "neck"), var_d4457625.var_a77ad8eb))
			{
				if(isdefined(self.var_72f54197["headshot_multiplier"]))
				{
					var_1c864fc1 = self.var_72f54197["headshot_multiplier"];
					var_bc6c413b.var_b79a4566++;
					var_d4457625.var_3a212fd7.var_d46900f9++;
				}
			}
			else if(function_7f41c8e7(function_84970cc4("torso_upper", "torso_mid"), var_d4457625.var_a77ad8eb))
			{
				if(isdefined(self.var_72f54197["torso_multiplier"]))
				{
					var_1c864fc1 = self.var_72f54197["torso_multiplier"];
					var_bc6c413b.var_5004e3e9++;
					var_d4457625.var_3a212fd7.var_2ded5a80++;
				}
			}
			else if(isdefined(self.var_72f54197["legs_multiplier"]))
			{
				var_1c864fc1 = self.var_72f54197["legs_multiplier"];
				var_bc6c413b.var_827fa2cc++;
				var_d4457625.var_3a212fd7.var_a46c7f73++;
			}
			if(var_1c864fc1 > self.var_b0ac175a)
			{
				self.var_b0ac175a = var_1c864fc1;
			}
		}
	}
}

/*
	Name: function_de1a6d25
	Namespace: namespace_c550ee23
	Checksum: 0x72DA7411
	Offset: 0x4F88
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_de1a6d25(var_d4457625)
{
	if(function_65f192a6(var_d4457625.var_3a212fd7) && (isdefined(var_d4457625.var_3a212fd7.var_24c69c09) && var_d4457625.var_3a212fd7.var_24c69c09))
	{
		var_5dc5e20a = var_d4457625.var_3a212fd7;
		var_a3d7c1d0 = self.var_72f54197["basescore"];
		var_875f1cca = function_ed96839(var_a3d7c1d0 * self.var_b0ac175a);
		var_5dc5e20a.var_80e5e834 = var_5dc5e20a.var_80e5e834 + var_875f1cca;
		var_5dc5e20a.var_d1b47d51 = var_5dc5e20a.var_d1b47d51 + var_875f1cca;
		var_5dc5e20a thread function_a5ac6877();
		var_5dc5e20a function_3a9588ea(var_5dc5e20a.var_43693cde, "score", "" + var_5dc5e20a.var_d1b47d51);
		var_5dc5e20a function_17f2cd2f();
	}
}

/*
	Name: function_a5ac6877
	Namespace: namespace_c550ee23
	Checksum: 0xDD439CC7
	Offset: 0x5110
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_a5ac6877()
{
	self endon("hash_128f8789");
	self endon("hash_1c919c84");
	wait(0.05);
	self.var_f1242439 = function_b6b79a0(self.var_d1b47d51);
	self.var_44fb8955["score"] = self.var_f1242439;
}

/*
	Name: function_c1a5b344
	Namespace: namespace_c550ee23
	Checksum: 0x8733AAF9
	Offset: 0x5178
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_c1a5b344()
{
	foreach(var_7b81749 in function_391512da(level.var_4b30274))
	{
		if(function_5dbf7eca(self.var_e6e9b8de, var_7b81749) || (isdefined(self.var_9d34dca7) && function_5dbf7eca(self.var_9d34dca7, var_7b81749)))
		{
			return level.var_4b30274[var_7b81749];
		}
	}
}

/*
	Name: function_d4242515
	Namespace: namespace_c550ee23
	Checksum: 0x4350DCAF
	Offset: 0x5268
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_d4242515(var_a18380a7)
{
	var_f5d2f02a = function_99201f25("info_volume", "classname");
	var_f5d2f02a = function_ca448a30(var_f5d2f02a, var_a18380a7.var_47c44e16, "prefabname");
	var_f5d2f02a = function_ca448a30(var_f5d2f02a, var_a18380a7.var_2d29332f, "groupname");
	var_a18380a7.var_f66aa772 = function_5ecb6fa8(var_a18380a7, "inner_volume");
	var_a18380a7.var_20087b79 = function_5ecb6fa8(var_a18380a7, "middle_volume");
	var_a18380a7.var_2f9a05d7 = function_5ecb6fa8(var_a18380a7, "outer_volume");
	var_a18380a7.var_69051fdd = self.var_69051fdd;
}

/*
	Name: function_5ecb6fa8
	Namespace: namespace_c550ee23
	Checksum: 0x3C4AB62B
	Offset: 0x5398
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_5ecb6fa8(var_a18380a7, var_8a7c6b8f)
{
	var_f5d2f02a = function_99201f25("info_volume", "classname");
	var_f5d2f02a = function_ca448a30(var_f5d2f02a, var_a18380a7.var_47c44e16, "prefabname");
	var_f5d2f02a = function_ca448a30(var_f5d2f02a, var_a18380a7.var_2d29332f, "groupname");
	var_f5d2f02a = function_ca448a30(var_f5d2f02a, var_8a7c6b8f, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(var_f5d2f02a.size == 1, "Dev Block strings are not supported" + var_8a7c6b8f);
	#/
	return var_f5d2f02a[0];
}

/*
	Name: function_9b1ae7e9
	Namespace: namespace_c550ee23
	Checksum: 0xB9E89DDB
	Offset: 0x54A8
	Size: 0x497
	Parameters: 1
	Flags: None
*/
function function_9b1ae7e9(var_5dc5e20a)
{
	self endon("hash_128f8789");
	if(isdefined(self.var_571f3418))
	{
		self function_169cc712(function_5ecb6fa8(var_5dc5e20a.var_a18380a7, self.var_571f3418), 1);
	}
	else
	{
		self function_169cc712(var_5dc5e20a.var_a18380a7.var_69051fdd, 1);
	}
	var_5dc5e20a waittill("hash_a120a3f4");
	while(var_5dc5e20a function_aeb2edb().size > 2)
	{
		wait(function_72a94f05(0.6666666, 1.333333));
	}
	if(!function_5dbf7eca(self.var_e6e9b8de, "warlord"))
	{
		self.var_c9a40973 = GetTime() + 2500;
		while(1)
		{
			var_f2053c49 = function_316422d1(self.var_722885f3, var_5dc5e20a.var_a18380a7.var_722885f3);
			var_fba032a4 = function_316422d1(self.var_722885f3, var_5dc5e20a.var_722885f3);
			var_77f64226 = function_316422d1(var_5dc5e20a.var_722885f3, var_5dc5e20a.var_a18380a7.var_722885f3);
			if(var_fba032a4 > 450 * 450 || var_77f64226 < 450 * 450)
			{
				self function_169cc712(var_5dc5e20a.var_a18380a7.var_f66aa772, 1);
			}
			if(!function_4bd0142f("tu1_trainingSimDisableTeleport", 1))
			{
				if(var_f2053c49 >= 450 * 450 && var_77f64226 >= 450 * 450 && var_fba032a4 >= 300 * 300)
				{
					if(function_93405f3(self, var_5dc5e20a))
					{
						self.var_c9a40973 = GetTime() + 2500;
					}
					else if(GetTime() > self.var_c9a40973)
					{
						self namespace_71e9cb84::function_74d6b22f("rez_out", 1);
						self namespace_d84e54db::function_b4f5e3b9(1);
						self function_50ccee8d();
						var_b71ed4a2 = var_5dc5e20a.var_a18380a7.var_722885f3;
						var_b71ed4a2 = var_b71ed4a2 + function_bc7ce905(var_5dc5e20a.var_a18380a7.var_6ab6f4fd) * function_72a94f05(-150, -20);
						var_b71ed4a2 = var_b71ed4a2 + function_298b8148(var_5dc5e20a.var_a18380a7.var_6ab6f4fd) * function_72a94f05(-150, 150);
						var_6cac4ba4 = function_bdcdc423(var_5dc5e20a.var_722885f3 - var_b71ed4a2);
						self namespace_2f06d687::function_5991830b(var_b71ed4a2, var_6cac4ba4);
						namespace_82b91a51::function_76f13293();
						self namespace_71e9cb84::function_74d6b22f("rez_in", 1);
						self namespace_d84e54db::function_b4f5e3b9(0);
						self function_48f26766();
						break;
					}
				}
				else
				{
					self.var_c9a40973 = GetTime() + 2500;
				}
			}
			wait(0.25);
		}
	}
}

/*
	Name: function_93405f3
	Namespace: namespace_c550ee23
	Checksum: 0xD9BA518
	Offset: 0x5948
	Size: 0x159
	Parameters: 2
	Flags: None
*/
function function_93405f3(var_e98b4e9b, var_5dc5e20a)
{
	var_88d27997 = function_f3087faa("cg_fov");
	var_72587ddc = function_ef0a72b2(var_88d27997);
	var_c55dcd82 = var_e98b4e9b.var_722885f3;
	var_a0d5568b = var_5dc5e20a function_501eb072();
	var_c975b582 = function_bc7ce905(var_5dc5e20a function_89c87c9c());
	var_e5a3f7c1 = function_f679a325(var_c55dcd82 - var_a0d5568b);
	var_82a044f1 = function_5f9a4869(var_c975b582, var_e5a3f7c1);
	if(var_82a044f1 > var_72587ddc)
	{
		if(var_e98b4e9b function_87e955a4(var_a0d5568b, var_5dc5e20a) != 0)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_826a69d8
	Namespace: namespace_c550ee23
	Checksum: 0xFE6DDD9
	Offset: 0x5AB0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_826a69d8(var_5dc5e20a)
{
	self function_169cc712(var_5dc5e20a);
}

/*
	Name: function_5c685ad1
	Namespace: namespace_c550ee23
	Checksum: 0x9F82CF13
	Offset: 0x5AE0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_5c685ad1()
{
	self waittill("hash_128f8789");
	if(isdefined(self) && !self function_9d7569cc())
	{
		self namespace_71e9cb84::function_74d6b22f("enable_ethereal_overlay", 0);
	}
}

/*
	Name: function_e340d355
	Namespace: namespace_c550ee23
	Checksum: 0x30C62532
	Offset: 0x5B38
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e340d355()
{
	if(self function_9d7569cc())
	{
		self thread function_44aa9d22();
		self thread function_efd62bc8();
	}
	else
	{
		self thread function_5c685ad1();
	}
}

/*
	Name: function_9d7569cc
	Namespace: namespace_c550ee23
	Checksum: 0xBF3791AB
	Offset: 0x5BA8
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_9d7569cc()
{
	return !function_85e4c3b3(self) && function_8d0347b8(self);
}

/*
	Name: function_29281420
	Namespace: namespace_c550ee23
	Checksum: 0xBC1FA851
	Offset: 0x5BE8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_29281420()
{
	return self.var_3e94206a == "axis";
}

/*
	Name: function_44aa9d22
	Namespace: namespace_c550ee23
	Checksum: 0xB012988B
	Offset: 0x5C08
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_44aa9d22()
{
	self endon("hash_70947625");
	self waittill("hash_c67510f3", var_5d5ef481);
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 namespace_71e9cb84::function_74d6b22f("rez_out", 1);
	}
	namespace_82b91a51::function_76f13293();
	if(isdefined(self))
	{
		self function_921a1574("evt_ai_derez");
	}
	wait(0.2);
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 function_dc8c8404();
	}
	if(isdefined(self))
	{
		self notify("hash_70947625");
	}
}

/*
	Name: function_efd62bc8
	Namespace: namespace_c550ee23
	Checksum: 0xEC36277B
	Offset: 0x5CE0
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_efd62bc8()
{
	self endon("hash_70947625");
	self waittill("hash_d16125f3");
	if(self.var_d78410bf === 1)
	{
		wait(4);
	}
	if(isdefined(self))
	{
		self namespace_71e9cb84::function_74d6b22f("rez_out", 1);
	}
	namespace_82b91a51::function_76f13293();
	if(isdefined(self))
	{
		self function_921a1574("evt_ai_derez");
	}
	wait(0.2);
	if(isdefined(self))
	{
		self function_dc8c8404();
		self notify("hash_70947625");
	}
}

/*
	Name: function_31f3ed94
	Namespace: namespace_c550ee23
	Checksum: 0x976E6AE0
	Offset: 0x5DB8
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_31f3ed94(var_6bfe1586)
{
	var_87a9e25c = var_6bfe1586 function_21995b5a();
	foreach(var_dfcc01fd in var_87a9e25c)
	{
		var_6bfe1586 function_704b802a(var_dfcc01fd);
		var_6bfe1586 function_67795b5f(var_dfcc01fd, var_dfcc01fd.var_c0b2188);
	}
}

/*
	Name: function_6d04e0c2
	Namespace: namespace_c550ee23
	Checksum: 0xF1BD46FB
	Offset: 0x5EA8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_6d04e0c2()
{
	var_dec0feaf = self function_84368297("trainingSimStats", "highestScore");
	if(self.var_d1b47d51 > var_dec0feaf)
	{
		self function_8f67433b("trainingSimStats", "highestScore", function_b6b79a0(self.var_d1b47d51));
		self function_8f67433b("trainingSimStats", "highestRound", function_b6b79a0(self.var_38da1d8e));
		self function_8f67433b("trainingSimStats", "oneHitKills", self.var_d46900f9);
		self function_8f67433b("trainingSimStats", "torsoHits", self.var_2ded5a80);
		self function_8f67433b("trainingSimStats", "limbHits", self.var_a46c7f73);
	}
}

/*
	Name: function_d3cd3eb9
	Namespace: namespace_c550ee23
	Checksum: 0xD8BEC7
	Offset: 0x6000
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_d3cd3eb9()
{
	self function_9e975316();
}

/*
	Name: function_3206b93a
	Namespace: namespace_c550ee23
	Checksum: 0xEBF993E8
	Offset: 0x6028
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_3206b93a()
{
	if(self namespace_8f94416a::function_59727018())
	{
		self function_f07412c0("cp_medal_training_sim");
	}
	if(isdefined(self.var_d6d35c88))
	{
		if(self.var_d6d35c88 == level.var_6de9c3a5.size)
		{
			self namespace_4a344d81::function_52c9c74a("CP_TRAINING_GOLD");
		}
	}
	if(namespace_8f94416a::function_bea4ff57())
	{
		self function_f07412c0("cp_medal_all_weapon_unlocks");
	}
	self.var_cae9ddc4 = self function_2f6b6a4c("TrainingSimAAR");
	self function_3a9588ea(self.var_cae9ddc4, "training_sim_aar_score", "" + self.var_d1b47d51);
	self function_3a9588ea(self.var_cae9ddc4, "training_sim_aar_round", "" + self.var_38da1d8e);
	self function_3a9588ea(self.var_cae9ddc4, "training_sim_aar_lethals", "" + self.var_d46900f9);
	self function_3a9588ea(self.var_cae9ddc4, "training_sim_aar_torsohits", "" + self.var_2ded5a80);
	self function_3a9588ea(self.var_cae9ddc4, "training_sim_aar_limbhits", "" + self.var_a46c7f73);
	self function_6d04e0c2();
	function_9a7ed193(self);
	self function_9ab09984();
	self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	while(var_d62110b4 != "closed")
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	}
	self function_2b74b70a(self.var_cae9ddc4);
}

/*
	Name: function_9ab09984
	Namespace: namespace_c550ee23
	Checksum: 0x34D56D55
	Offset: 0x62D0
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_9ab09984()
{
	self namespace_b976075a::function_7bdf5497();
	self.var_44fb8955["score"] = 0;
	self.var_44fb8955["kills"] = 0;
	self.var_44fb8955["incaps"] = 0;
	self.var_44fb8955["assists"] = 0;
	self.var_44fb8955["revives"] = 0;
}

/*
	Name: function_e22afa2c
	Namespace: namespace_c550ee23
	Checksum: 0x39E808F6
	Offset: 0x6360
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_e22afa2c()
{
	/#
		self endon("hash_643a7daf");
		while(1)
		{
			var_dd6f0201 = function_4bd0142f("Dev Block strings are not supported");
			var_e2c1fe1f = function_4bd0142f("Dev Block strings are not supported");
			if(var_dd6f0201)
			{
				function_11a03fdc(function_4bd0142f("Dev Block strings are not supported"));
				function_ed57b2b5();
				function_6c1294b8("Dev Block strings are not supported", 0);
			}
			else if(var_e2c1fe1f)
			{
				function_ed57b2b5();
				function_6c1294b8("Dev Block strings are not supported", 0);
			}
			wait(0.3);
		}
	#/
}

/*
	Name: function_453e055b
	Namespace: namespace_c550ee23
	Checksum: 0x9BAF38FF
	Offset: 0x6470
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_453e055b()
{
	/#
		while(1)
		{
			while(!function_4bd0142f("Dev Block strings are not supported", 0))
			{
				wait(1);
			}
			function_ed57b2b5();
			self waittill("hash_a120a3f4");
		}
	#/
}

/*
	Name: function_ed57b2b5
	Namespace: namespace_c550ee23
	Checksum: 0x61A4F951
	Offset: 0x64D8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_ed57b2b5()
{
	/#
		if(!isdefined(self.var_4c79ddb8))
		{
			self waittill("hash_a120a3f4");
		}
		if(self.var_4c79ddb8.size)
		{
			wait(5);
			level namespace_84970cc4::function_eaab05dc(namespace_84970cc4::function_b87262e(self.var_4c79ddb8), &function_2992720d);
		}
		wait(5);
		self.var_a18380a7.var_a1899e9f function_daea15a5(self);
	#/
}

/*
	Name: function_11a03fdc
	Namespace: namespace_c550ee23
	Checksum: 0x514A4E35
	Offset: 0x6578
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_11a03fdc(var_9f831cdc)
{
	/#
		self.var_38da1d8e = var_9f831cdc - 1;
	#/
}

