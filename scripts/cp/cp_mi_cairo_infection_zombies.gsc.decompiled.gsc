#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_hideout_outro;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection3_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\zombie_death;
#using scripts\shared\ai\zombie_shared;
#using scripts\shared\ai\zombie_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_b0a87e94;

/*
	Name: function_d290ebfa
	Namespace: namespace_b0a87e94
	Checksum: 0x987B294F
	Offset: 0xCC8
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level namespace_ad23e503::function_c35e6aab("sarah_tree");
	level namespace_ad23e503::function_c35e6aab("end_round_wait");
	level namespace_ad23e503::function_c35e6aab("spawn_zombies", 1);
	level namespace_ad23e503::function_c35e6aab("zombies_completed");
	level namespace_ad23e503::function_c35e6aab("zombies_final_round");
	level.var_decc2810 = function_afedf5ee("g_gameskill");
	if(!isdefined(level.var_decc2810))
	{
		level.var_decc2810 = 1;
	}
	function_cd9dd3e2();
	function_ff58a260();
	level.var_d2504cee = [];
	level.var_c52bcfd0 = function_99201f25("player_volume", "script_noteworthy");
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_c52bcfd0.size; var_c957f6b6++)
	{
		if(isdefined(level.var_c52bcfd0[var_c957f6b6].var_b07228b6))
		{
			level.var_c52bcfd0[var_c957f6b6] thread function_e9dbbc10();
		}
	}
	level.var_880d5985 = function_99201f25("zombie_spawner_infection_3", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(level.var_880d5985, &namespace_2f06d687::function_994832bd, &function_63a51f54);
	level thread function_93985e5e();
}

/*
	Name: function_e9dbbc10
	Namespace: namespace_b0a87e94
	Checksum: 0x52CA63C3
	Offset: 0xEE8
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_e9dbbc10()
{
	var_d3a18b74 = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_d3a18b74.size; var_c957f6b6++)
	{
		var_d3a18b74[var_c957f6b6].var_b55533bc = 1;
		namespace_84970cc4::function_69554b3e(level.var_d2504cee, var_d3a18b74[var_c957f6b6], 0);
	}
}

/*
	Name: function_ff58a260
	Namespace: namespace_b0a87e94
	Checksum: 0x50D3DAC8
	Offset: 0xF88
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	if(!function_27c72c1b())
	{
		namespace_71e9cb84::function_50f16166("actor", "zombie_riser_fx", 1, 1, "int");
		namespace_71e9cb84::function_50f16166("actor", "zombie_has_eyes", 1, 1, "int");
		namespace_71e9cb84::function_50f16166("actor", "zombie_gut_explosion", 1, 1, "int");
		namespace_71e9cb84::function_50f16166("actor", "zombie_tac_mode_disable", 1, 1, "int");
	}
	namespace_71e9cb84::function_50f16166("scriptmover", "zombie_fire_wall_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "zombie_fire_backdraft_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "zombie_fire_overlay_init", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "zombie_fire_overlay", 1, 7, "float");
	namespace_71e9cb84::function_50f16166("world", "zombie_root_grow", 1, 1, "int");
}

/*
	Name: function_bd954458
	Namespace: namespace_b0a87e94
	Checksum: 0xC5A69289
	Offset: 0x1158
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_bd954458()
{
	while(1)
	{
		var_677b0487 = namespace_52bfb19e::function_cd600a16();
		/#
			function_2e4b8c78("Dev Block strings are not supported", var_677b0487);
		#/
		wait(1);
	}
}

/*
	Name: function_cd9dd3e2
	Namespace: namespace_b0a87e94
	Checksum: 0x33F9CC08
	Offset: 0x11B8
	Size: 0x3B7
	Parameters: 0
	Flags: None
*/
function function_cd9dd3e2()
{
	level.var_15661095 = "axis";
	level.var_cde888e9 = 1;
	level.var_2f91fef4 = 1;
	level.var_73a4f6c2 = 1;
	level.var_f21dc6b9 = level.var_73a4f6c2;
	level.var_c1841ff0 = 0;
	level.var_e2b6f127 = 0;
	level.var_d2504cee = [];
	level.var_eb9c5258 = [];
	level.var_c0fa809f = [];
	level.var_5fbf6c05 = 0;
	level.var_27c2cedb = 0;
	level.var_225de261 = 31;
	level.var_61de63d7 = 0;
	level.var_f2a478d8 = 150;
	level.var_1e47bbdd = 2;
	level.var_c1aa5253["lightning_dog_spawn"] = "zombie/fx_dog_lightning_buildup_zmb";
	level.var_c1aa5253["burn_loop_zombie_left_arm"] = "fire/fx_fire_ai_human_arm_left_loop";
	level.var_c1aa5253["burn_loop_zombie_right_arm"] = "fire/fx_fire_ai_human_arm_right_loop";
	level.var_c1aa5253["burn_loop_zombie_torso"] = "fire/fx_fire_ai_human_torso_loop";
	level.var_c1aa5253["zombie_firewall_fx"] = "fire/fx_fire_wall_moving_infection_city";
	var_3f0972ca = 1;
	var_c95cc3c7 = function_b6b79a0(var_3f0972ca) + 1;
	namespace_52bfb19e::function_aa966a7e("zombie_health_increase", 0, 0, var_c95cc3c7);
	namespace_52bfb19e::function_aa966a7e("zombie_health_increase_multiplier", 0.1, 1, var_c95cc3c7);
	namespace_52bfb19e::function_aa966a7e("zombie_health_start", 50, 0, var_c95cc3c7);
	namespace_52bfb19e::function_aa966a7e("zombie_spawn_delay", 2, 1, var_c95cc3c7);
	namespace_52bfb19e::function_aa966a7e("zombie_ai_per_player", 8, 0, var_c95cc3c7);
	namespace_52bfb19e::function_aa966a7e("zombie_between_round_time", 1);
	namespace_52bfb19e::function_aa966a7e("game_start_delay", 0, 0, var_c95cc3c7);
	namespace_52bfb19e::function_aa966a7e("zombie_use_failsafe", 1);
	namespace_52bfb19e::function_aa966a7e("below_world_check", -5000);
	namespace_52bfb19e::function_aa966a7e("zombie_max_ai", 32, 0, var_c95cc3c7);
	level.var_a11e51a8 = level.var_eb9c5258["zombie_max_ai"];
	level.var_62ab3edb = &function_6020f793;
	level.var_689cb617 = &function_85c808d5;
	var_6f6f10c = level.var_eb9c5258["zombie_spawn_delay"];
	if(var_6f6f10c > 0.08)
	{
		level.var_eb9c5258["zombie_spawn_delay"] = var_6f6f10c * 0.95;
	}
	else if(var_6f6f10c < 0.25)
	{
		level.var_eb9c5258["zombie_spawn_delay"] = 0.25;
	}
	level.var_b51411ee = 0;
	level.var_4abfd7d4 = 0;
}

/*
	Name: function_63a51f54
	Namespace: namespace_b0a87e94
	Checksum: 0x6AF9A985
	Offset: 0x1578
	Size: 0x3C1
	Parameters: 1
	Flags: None
*/
function function_63a51f54(var_86a233b2)
{
	self endon("hash_128f8789");
	if(!isdefined(var_86a233b2))
	{
		var_86a233b2 = 0;
	}
	self.var_170527fb = "zombie";
	self.var_caae374e = undefined;
	if(!var_86a233b2)
	{
		self.var_b691b9cf = "zombie";
	}
	self thread namespace_36cbf523::function_48da4758();
	self.var_8317db80 = "zmb_vocals_zombie_attack";
	self.var_c584775c = 1;
	self.var_bab9655e = 1;
	self.var_f67eaa79 = 1;
	self.var_c47fb4ca = 1;
	self function_9e1c25c2("stand");
	self.var_3571c46 = 0;
	self.var_83d1c411 = 0;
	self function_4fe250b9(15, 0, 72);
	self.var_7dfaf62 = 32;
	self.var_e844240d = 1;
	self.var_8477d3e2 = 1;
	self.var_356d8ec0 = 0;
	self.var_48deb832 = 0;
	self.var_501514b8 = 1;
	self.var_31d56a9b = 1;
	self.var_e163608e = 1;
	self.var_a621309a = 1;
	self.var_d165c15c = 0;
	self.var_48deb832 = 0;
	self.var_77bcab = 0;
	self.var_f96bc9fe.var_3c967a2b = 1;
	self.var_f96bc9fe.var_c52872a0 = 1;
	self.var_a7170ca5 = 0;
	self.var_7850127e = 1;
	if(isdefined(level.var_a78f8b94))
	{
		self.var_47c252e3 = level.var_a78f8b94;
		if(isdefined(level.var_3750a92a) && level.var_3750a92a.size > 0)
		{
			self.var_3a90f16b = level.var_3750a92a[0];
			function_81403b2f(level.var_3750a92a, level.var_3750a92a[0]);
		}
		else
		{
			self.var_3a90f16b = level.var_a78f8b94;
		}
	}
	else
	{
		self.var_47c252e3 = level.var_eb9c5258["zombie_health_start"];
		self.var_3a90f16b = self.var_47c252e3;
	}
	self function_baeb4be7("avoid none");
	self function_86e828e1("dont move");
	level thread function_a548dbb9(self);
	self function_e6335926();
	self thread function_a7a6abf6();
	self thread namespace_52bfb19e::function_dc6e7e04();
	if(!isdefined(self.var_39e5165a) || !self.var_39e5165a)
	{
		self thread namespace_52bfb19e::function_9a591ba4();
	}
	self.var_f9b89f89 = &function_6cf4945d;
	self.var_c9be53b6 = 0;
	self.var_9ba55de4 = 20;
	self.var_d26d8dc = 1;
	self.var_3e94206a = level.var_15661095;
	self.var_45325017 = 1;
	self notify("hash_45325017");
}

/*
	Name: function_a7a6abf6
	Namespace: namespace_b0a87e94
	Checksum: 0x20E14BAD
	Offset: 0x1948
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a7a6abf6()
{
	self endon("hash_128f8789");
	self thread function_50b1a577();
	self waittill("hash_2d082574");
	self function_f5a4e044();
	self function_169cc712(self.var_722885f3);
	self function_86e828e1("move allowed");
	self.var_5b98ea79 = 1;
	self thread function_a192423b();
}

/*
	Name: function_f5a4e044
	Namespace: namespace_b0a87e94
	Checksum: 0xEB0BA892
	Offset: 0x19F8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_f5a4e044()
{
	self.var_c3a32a15 = "find_flesh";
	self.var_c584775c = 0;
	self.var_8c721467 = 64;
	self.var_2a373326 = 16384;
	self.var_e844240d = 1;
	self.var_8477d3e2 = 1;
}

/*
	Name: function_85c808d5
	Namespace: namespace_b0a87e94
	Checksum: 0xDF5333CD
	Offset: 0x1A50
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_85c808d5(var_30e2ad48)
{
	var_aaeec8c5 = var_30e2ad48;
	if(level.var_f21dc6b9 < 2)
	{
		var_aaeec8c5 = 8;
		if(level.var_2395e945.size == 4)
		{
			var_aaeec8c5 = 12;
		}
	}
	else if(level.var_f21dc6b9 < 3)
	{
		var_aaeec8c5 = 8;
		if(level.var_2395e945.size == 4)
		{
			var_aaeec8c5 = 16;
		}
	}
	else if(level.var_f21dc6b9 < 4)
	{
		if(level.var_2395e945.size == 1)
		{
			var_aaeec8c5 = 10;
		}
		else if(level.var_2395e945.size == 4)
		{
			var_aaeec8c5 = 24;
		}
		else
		{
			var_aaeec8c5 = 14;
		}
	}
	else if(level.var_f21dc6b9 < 5)
	{
		if(level.var_2395e945.size == 1)
		{
			var_aaeec8c5 = 12;
		}
		else if(level.var_2395e945.size == 4)
		{
			var_aaeec8c5 = 32;
		}
		else
		{
			var_aaeec8c5 = 20;
		}
	}
	else if(level.var_f21dc6b9 < 6)
	{
		var_aaeec8c5 = function_b6b79a0(var_30e2ad48 * 1);
	}
	return var_aaeec8c5;
}

/*
	Name: function_e6335926
	Namespace: namespace_b0a87e94
	Checksum: 0x582B0C84
	Offset: 0x1BF0
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_e6335926()
{
	self endon("hash_128f8789");
	self.var_402a69d5 = "walk";
	var_10fcb680 = function_26299103(100);
	if(level.var_f21dc6b9 < 2)
	{
		self.var_402a69d5 = "walk";
		if(var_10fcb680 > 75)
		{
			self.var_402a69d5 = "run";
		}
	}
	else if(level.var_f21dc6b9 < 3)
	{
		self.var_402a69d5 = "walk";
		if(var_10fcb680 > 50)
		{
			self.var_402a69d5 = "run";
		}
	}
	else if(level.var_f21dc6b9 < 4)
	{
		self.var_402a69d5 = "run";
		if(var_10fcb680 > 95)
		{
			self.var_402a69d5 = "sprint";
		}
	}
	else if(level.var_f21dc6b9 < 5)
	{
		self.var_402a69d5 = "run";
		if(var_10fcb680 > 30)
		{
			self.var_402a69d5 = "sprint";
		}
	}
	else
	{
		self.var_402a69d5 = "sprint";
	}
	self thread function_11dd905a();
}

/*
	Name: function_11dd905a
	Namespace: namespace_b0a87e94
	Checksum: 0x20313C0F
	Offset: 0x1D70
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_11dd905a()
{
	self endon("hash_128f8789");
	if(self.var_402a69d5 === "sprint")
	{
		return;
	}
	var_aa61e82a = 0;
	var_a4ad846c = GetTime();
	var_55bf1434 = level.var_f2a478d8 * 0.4;
	while(1)
	{
		if(var_aa61e82a >= var_55bf1434)
		{
			if(self.var_402a69d5 === "walk")
			{
				self namespace_52bfb19e::function_1c7585d1("run");
			}
			else if(self.var_402a69d5 === "run")
			{
				self namespace_52bfb19e::function_1c7585d1("sprint");
				return;
			}
			var_aa61e82a = 0;
		}
		wait(1);
		var_aa61e82a = GetTime() - var_a4ad846c / 1000;
	}
}

/*
	Name: function_50b1a577
	Namespace: namespace_b0a87e94
	Checksum: 0xADA1957E
	Offset: 0x1E88
	Size: 0x27F
	Parameters: 0
	Flags: None
*/
function function_50b1a577()
{
	self endon("hash_128f8789");
	var_c52c30fe = [];
	var_536510a4 = [];
	if(isdefined(level.var_c52bcfd0))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_c52bcfd0.size; var_c957f6b6++)
		{
			var_4195c4c1 = function_498a7a1d(level.var_c52bcfd0[var_c957f6b6]);
			if(isdefined(var_4195c4c1) && var_4195c4c1)
			{
				var_536510a4 = function_635211c6(level.var_c52bcfd0[var_c957f6b6], var_536510a4);
			}
		}
		if(var_536510a4.size <= 0 && isdefined(level.var_d2504cee))
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_d2504cee.size; var_c957f6b6++)
			{
				if(isdefined(level.var_d2504cee[var_c957f6b6].var_b55533bc) && level.var_d2504cee[var_c957f6b6].var_b55533bc)
				{
					var_536510a4[var_536510a4.size] = level.var_d2504cee[var_c957f6b6];
				}
			}
		}
		break;
	}
	if(isdefined(level.var_d2504cee))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_d2504cee.size; var_c957f6b6++)
		{
			if(isdefined(level.var_d2504cee[var_c957f6b6].var_b55533bc) && level.var_d2504cee[var_c957f6b6].var_b55533bc)
			{
				var_536510a4[var_536510a4.size] = level.var_d2504cee[var_c957f6b6];
			}
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(var_536510a4.size > 0, "Dev Block strings are not supported");
	#/
	var_e18d5855 = namespace_84970cc4::function_47d18840(var_536510a4);
	if(level.var_f21dc6b9 < 3)
	{
		var_e18d5855 = self function_3571a7e4(var_536510a4);
	}
	self.var_18196fa5 = var_e18d5855;
	self thread [[level.var_62ab3edb]](var_e18d5855);
}

/*
	Name: function_498a7a1d
	Namespace: namespace_b0a87e94
	Checksum: 0x4519B680
	Offset: 0x2110
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_498a7a1d(var_45db3dab)
{
	var_2395e945 = function_3f10449f();
	for(var_a3557c4d = 0; var_a3557c4d < var_2395e945.size; var_a3557c4d++)
	{
		if(var_2395e945[var_a3557c4d] function_32fa5072(var_45db3dab))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_3571a7e4
	Namespace: namespace_b0a87e94
	Checksum: 0x549343FB
	Offset: 0x2198
	Size: 0x26B
	Parameters: 1
	Flags: None
*/
function function_3571a7e4(var_536510a4)
{
	var_8306eb54 = [];
	if(isdefined(level.var_c52bcfd0))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_c52bcfd0.size; var_c957f6b6++)
		{
			var_8306eb54 = function_635211c6(level.var_c52bcfd0[var_c957f6b6], var_8306eb54);
		}
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_8306eb54.size; var_c957f6b6++)
	{
		if(isdefined(var_8306eb54[var_c957f6b6].var_58770c2a))
		{
			namespace_84970cc4::function_69554b3e(var_536510a4, var_8306eb54[var_c957f6b6], 0);
		}
	}
	var_536510a4 = namespace_84970cc4::function_8332f7f6(var_536510a4);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_536510a4.size; var_c957f6b6++)
	{
		if(isdefined(var_536510a4[var_c957f6b6].var_58770c2a) && (!isdefined(var_536510a4[var_c957f6b6].var_58770c2a.var_b4b8f9d6) && var_536510a4[var_c957f6b6].var_58770c2a.var_b4b8f9d6) && (!isdefined(var_536510a4[var_c957f6b6].var_1049238d) && var_536510a4[var_c957f6b6].var_1049238d))
		{
			var_536510a4[var_c957f6b6].var_1049238d = 1;
			level.var_3362c19++;
			self thread function_731500c(var_536510a4[var_c957f6b6]);
			return var_536510a4[var_c957f6b6];
		}
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_536510a4.size; var_c957f6b6++)
	{
		if(!isdefined(var_536510a4[var_c957f6b6].var_58770c2a) || (isdefined(var_536510a4[var_c957f6b6].var_58770c2a.var_b4b8f9d6) && var_536510a4[var_c957f6b6].var_58770c2a.var_b4b8f9d6))
		{
			return var_536510a4[var_c957f6b6];
		}
	}
}

/*
	Name: function_731500c
	Namespace: namespace_b0a87e94
	Checksum: 0x28558689
	Offset: 0x2410
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_731500c(var_e18d5855)
{
	while(function_5b49d38c(self) && isdefined(var_e18d5855.var_58770c2a))
	{
		wait(0.1);
	}
	var_e18d5855.var_1049238d = undefined;
	level.var_3362c19--;
}

/*
	Name: function_635211c6
	Namespace: namespace_b0a87e94
	Checksum: 0x3D98F1B1
	Offset: 0x2478
	Size: 0x109
	Parameters: 2
	Flags: None
*/
function function_635211c6(var_7e8d0707, var_536510a4)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_7e8d0707.var_b07228b6), "Dev Block strings are not supported" + var_7e8d0707.var_170527fb);
	#/
	var_d3a18b74 = namespace_14b42b8a::function_7faf4c39(var_7e8d0707.var_b07228b6, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_d3a18b74.size; var_c957f6b6++)
	{
		if(isdefined(var_d3a18b74[var_c957f6b6].var_b55533bc) && var_d3a18b74[var_c957f6b6].var_b55533bc)
		{
			namespace_84970cc4::function_69554b3e(var_536510a4, var_d3a18b74[var_c957f6b6], 0);
		}
	}
	return var_536510a4;
}

/*
	Name: function_6020f793
	Namespace: namespace_b0a87e94
	Checksum: 0x1B96346A
	Offset: 0x2590
	Size: 0x1E9
	Parameters: 1
	Flags: None
*/
function function_6020f793(var_e18d5855)
{
	if(isdefined(self.var_ee40077d))
	{
		self notify("hash_2d082574", self.var_ee40077d.var_db7bb468);
		return;
	}
	self.var_ee40077d = var_e18d5855;
	if(isdefined(var_e18d5855.var_a33b36db))
	{
		self.var_a33b36db = var_e18d5855.var_a33b36db;
	}
	if(!isdefined(var_e18d5855.var_caae374e))
	{
		var_e18d5855.var_caae374e = "spawn_location";
	}
	if(isdefined(var_e18d5855.var_58770c2a) && (!isdefined(var_e18d5855.var_58770c2a.var_b4b8f9d6) && var_e18d5855.var_58770c2a.var_b4b8f9d6))
	{
		self thread function_f4028ae1(var_e18d5855);
		return;
	}
	var_b952f48f = function_d6df1f20(var_e18d5855.var_caae374e, " ");
	foreach(var_ed54230c in var_b952f48f)
	{
		if(var_ed54230c == "riser_location")
		{
			self thread function_7b062181(var_e18d5855);
			continue;
		}
		self thread function_f4028ae1(var_e18d5855);
	}
}

/*
	Name: function_f4028ae1
	Namespace: namespace_b0a87e94
	Checksum: 0x860BC2FF
	Offset: 0x2788
	Size: 0x36D
	Parameters: 1
	Flags: None
*/
function function_f4028ae1(var_e18d5855)
{
	if(isdefined(var_e18d5855.var_58770c2a) && (!isdefined(var_e18d5855.var_58770c2a.var_b4b8f9d6) && var_e18d5855.var_58770c2a.var_b4b8f9d6))
	{
		var_a2d47c3d = var_e18d5855.var_58770c2a;
	}
	else
	{
		var_a2d47c3d = var_e18d5855;
	}
	self.var_6f1739c2 = function_9b7fda5e("script_origin", self.var_722885f3);
	self.var_6f1739c2.var_6ab6f4fd = self.var_6ab6f4fd;
	self function_37f7858a(self.var_6f1739c2);
	if(!isdefined(var_a2d47c3d.var_6ab6f4fd))
	{
		var_a2d47c3d.var_6ab6f4fd = (0, 0, 0);
	}
	self function_8c8e79fe();
	self.var_6f1739c2 function_a96a2721(var_a2d47c3d.var_722885f3, 0.05);
	self.var_6f1739c2 function_c0b6566f((0, var_a2d47c3d.var_6ab6f4fd[1], 0), 0.05);
	self.var_6f1739c2 waittill("hash_a21db68a");
	var_2eee0131 = namespace_52bfb19e::function_76998135();
	if(isdefined(var_2eee0131))
	{
		var_800389cf = function_bdcdc423(var_2eee0131 - self.var_722885f3);
		self.var_6f1739c2 function_c0b6566f((0, var_800389cf[1], 0), 0.05);
		self.var_6f1739c2 waittill("hash_6654e4f4");
	}
	if(isdefined(level.var_e358e98))
	{
		function_fd4ba5e1(level.var_e358e98, var_a2d47c3d.var_722885f3);
	}
	self function_52fddbd0();
	if(isdefined(self.var_6f1739c2))
	{
		self.var_6f1739c2 function_dc8c8404();
	}
	if(isdefined(var_e18d5855.var_58770c2a) && var_a2d47c3d == var_e18d5855.var_58770c2a)
	{
		function_fd4ba5e1(level.var_c1aa5253["lightning_dog_spawn"], self.var_722885f3);
		self function_48f26766();
		self thread function_39e002c5(var_e18d5855);
	}
	else
	{
		self function_48f26766();
		self notify("hash_2d082574", var_e18d5855.var_db7bb468);
	}
}

/*
	Name: function_7b062181
	Namespace: namespace_b0a87e94
	Checksum: 0x88FB1011
	Offset: 0x2B00
	Size: 0x3F5
	Parameters: 1
	Flags: None
*/
function function_7b062181(var_e18d5855)
{
	self endon("hash_128f8789");
	self.var_6cfe882 = 1;
	if(isdefined(self.var_6f1739c2))
	{
		self.var_6f1739c2 function_dc8c8404();
	}
	self.var_6f1739c2 = function_9b7fda5e("script_origin", self.var_722885f3);
	self.var_6f1739c2.var_6ab6f4fd = self.var_6ab6f4fd;
	self function_37f7858a(self.var_6f1739c2);
	if(!isdefined(var_e18d5855.var_6ab6f4fd))
	{
		var_e18d5855.var_6ab6f4fd = (0, 0, 0);
	}
	var_a97b2225 = var_e18d5855.var_722885f3;
	var_800389cf = var_e18d5855.var_6ab6f4fd;
	var_a97b2225 = var_a97b2225 + (0, 0, 0);
	self function_8c8e79fe();
	self.var_6f1739c2 function_a96a2721(var_a97b2225, 0.05);
	self.var_6f1739c2 waittill("hash_a21db68a");
	var_2eee0131 = namespace_52bfb19e::function_76998135();
	if(isdefined(var_2eee0131))
	{
		var_800389cf = function_bdcdc423(var_2eee0131 - self.var_722885f3);
		self.var_6f1739c2 function_c0b6566f((0, var_800389cf[1], 0), 0.05);
		self.var_6f1739c2 waittill("hash_6654e4f4");
	}
	self function_52fddbd0();
	if(isdefined(self.var_6f1739c2))
	{
		self.var_6f1739c2 function_dc8c8404();
	}
	self thread namespace_52bfb19e::function_aaf98c25();
	level thread namespace_52bfb19e::function_df5a3cba(self, var_e18d5855);
	var_e18d5855 thread function_4f66586(self);
	if(!isdefined(self.var_402a69d5))
	{
		self.var_402a69d5 = "walk";
	}
	var_8767913c = 0;
	if(self.var_402a69d5 == "walk")
	{
		var_8767913c = function_26299103(2);
	}
	else if(self.var_402a69d5 == "run")
	{
		var_8767913c = 2;
	}
	else if(self.var_402a69d5 == "sprint")
	{
		var_8767913c = 3;
	}
	self function_13ffb22b("face default");
	self function_5d64f4b4("rise_anim", self.var_722885f3, self.var_6ab6f4fd, "ai_zombie_traverse_ground_climbout_fast");
	self namespace_6a3bcfe9::function_c7930296("rise_anim", &namespace_52bfb19e::function_55f80f50, var_e18d5855);
	self notify("hash_e16338f");
	var_e18d5855 notify("hash_aec99d2b");
	self.var_6cfe882 = 0;
	self notify("hash_2d082574", var_e18d5855.var_db7bb468);
}

/*
	Name: function_4f66586
	Namespace: namespace_b0a87e94
	Checksum: 0xDC404AD
	Offset: 0x2F00
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_4f66586(var_fb9423cf)
{
	var_fb9423cf endon("hash_128f8789");
	self endon("hash_aec99d2b");
	self endon("hash_e16338f");
	var_fb9423cf namespace_71e9cb84::function_74d6b22f("zombie_riser_fx", 1);
}

/*
	Name: function_a548dbb9
	Namespace: namespace_b0a87e94
	Checksum: 0x18E8B910
	Offset: 0x2F58
	Size: 0x317
	Parameters: 1
	Flags: None
*/
function function_a548dbb9(var_fb9423cf)
{
	var_fb9423cf.var_18290e3 = 0;
	var_b7c3dd10 = 0;
	var_3b1a7c4 = 0;
	var_fb9423cf waittill("hash_128f8789", var_a0ad4f34);
	var_e725d1ed = GetTime();
	if(isdefined(var_fb9423cf))
	{
		var_fb9423cf function_39419ae5();
	}
	if(isdefined(var_fb9423cf) && isdefined(var_fb9423cf.var_8c4c4af7))
	{
		var_3b1a7c4 = 1;
	}
	if(!isdefined(var_fb9423cf.var_87e2da06) && isdefined(var_a0ad4f34) && function_5b49d38c(var_a0ad4f34))
	{
		var_fb9423cf.var_87e2da06 = var_a0ad4f34.var_722885f3;
	}
	if(!isdefined(var_fb9423cf))
	{
		return;
	}
	level.var_e2b6f127++;
	var_4be20d44 = var_fb9423cf.var_b691b9cf;
	if(isdefined(var_fb9423cf.var_7c58fb47))
	{
		var_4be20d44 = var_fb9423cf.var_7c58fb47;
	}
	var_fb9423cf thread namespace_52bfb19e::function_3957fcfe();
	if(function_8d0347b8(var_fb9423cf))
	{
		if(var_fb9423cf.var_4e3de306 == "MOD_GRENADE" || var_fb9423cf.var_4e3de306 == "MOD_GRENADE_SPLASH" || var_fb9423cf.var_4e3de306 == "MOD_EXPLOSIVE" || var_b7c3dd10 == 1)
		{
			var_d40de94d = 180;
			if(isdefined(var_fb9423cf.var_87e2da06) && function_cb3d1c9b(var_fb9423cf.var_722885f3, var_fb9423cf.var_87e2da06) < var_d40de94d * var_d40de94d)
			{
				var_b31a6ddf = "J_SpineLower";
				if(!isdefined(var_fb9423cf.var_5041d45e) && var_fb9423cf.var_5041d45e && (!isdefined(var_fb9423cf.var_8ff15aee) && var_fb9423cf.var_8ff15aee))
				{
					var_fb9423cf thread namespace_52bfb19e::function_ff12be92();
				}
			}
		}
	}
	if(isdefined(var_fb9423cf.var_a0ad4f34) && function_65f192a6(var_fb9423cf.var_a0ad4f34))
	{
		var_fb9423cf.var_a0ad4f34 notify("hash_80aabf28", var_fb9423cf);
	}
	level notify("hash_80aabf28");
	level.var_e2b6f127++;
}

/*
	Name: function_6cf4945d
	Namespace: namespace_b0a87e94
	Checksum: 0xBE485CA9
	Offset: 0x3278
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_6cf4945d()
{
	var_3e94206a = undefined;
	if(isdefined(self.var_87e11fb5))
	{
		var_3e94206a = self.var_87e11fb5;
	}
	self namespace_52bfb19e::function_2476b77c();
	if(isdefined(level.var_9ca5d500))
	{
		self [[level.var_9ca5d500]]();
	}
	if(!self.var_a7f77d7c && isdefined(self.var_f96bc9fe.var_20febddb) && self.var_f96bc9fe.var_20febddb == "no_legs")
	{
		self.var_853099ee = "zm_death";
	}
	self.var_d937392f = 0;
	if(isdefined(self.var_a0ad4f34) && function_e70ab977(self.var_a0ad4f34))
	{
		self.var_a0ad4f34 notify("hash_39d3d8ba", self);
	}
	if(self.var_4e3de306 == "MOD_BURNED")
	{
		self thread namespace_fb6a064::function_b7251c46();
	}
	if(self.var_4e3de306 == "MOD_GRENADE" || self.var_4e3de306 == "MOD_GRENADE_SPLASH")
	{
		level notify("hash_e080e95b", self.var_722885f3);
	}
	return 0;
}

/*
	Name: function_93985e5e
	Namespace: namespace_b0a87e94
	Checksum: 0x53CC7BE8
	Offset: 0x33E0
	Size: 0x3B1
	Parameters: 1
	Flags: None
*/
function function_93985e5e(var_c77d2837)
{
	level endon("hash_e6e399a9");
	level endon("hash_c8ab51de");
	level endon("hash_25601ed0");
	level waittill("hash_ee152b14");
	level thread namespace_99d8554b::function_faa82017();
	level thread function_7c7dc2();
	level thread function_32f8ed03();
	level.var_3362c19 = 0;
	var_a4ad846c = GetTime();
	if(level.var_2395e945.size > 2)
	{
		level.var_1e47bbdd = function_b6b79a0(1 * level.var_2395e945.size);
	}
	level thread function_e643ed8e();
	level.var_e6467acd thread namespace_6473bd03::function_5be37ad8();
	level namespace_71e9cb84::function_74d6b22f("zombie_root_grow", 1);
	level.var_1554f271 = &function_c013c278;
	level namespace_ad23e503::function_1ab5ebec("zombies_final_round");
	namespace_f25bd8c8::function_e9c21474();
	level.var_1554f271 = &function_56f9ab2e;
	level waittill("hash_7e06c3bb");
	level.var_e6467acd namespace_cc27597::function_43718187("cin_inf_16_01_zombies_vign_treemoment_talk02", level.var_e6467acd);
	if(isdefined(level.var_b74489b6))
	{
		level thread [[level.var_b74489b6]]();
	}
	level.var_e6467acd namespace_175490fb::function_59965309("cybercom_sensoryoverload");
	level.var_e6467acd namespace_71e9cb84::function_74d6b22f("sarah_body_light", 1);
	level.var_e6467acd thread namespace_cc27597::function_43718187("cin_inf_16_01_zombies_vign_treemoment_outro", level.var_e6467acd);
	level.var_e6467acd notify("hash_9ce403cf");
	level waittill("hash_bf4f1605");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_zombies");
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_escape", level.var_e6467acd);
	level namespace_ad23e503::function_74d6b22f("sarah_tree");
	level.var_e6467acd namespace_36cbf523::function_db9a227f(1);
	level.var_e6467acd namespace_82b91a51::function_4b741fdc();
	level.var_e6467acd function_ca711294("axis");
	level.var_e6467acd.var_daf3a648 = 1;
	level.var_e6467acd.var_3a90f16b = 9999;
	level.var_e6467acd.var_44a68a57 = &function_807b8294;
	level.var_e6467acd waittill("hash_128f8789");
	level.var_1554f271 = undefined;
	level namespace_ad23e503::function_74d6b22f("zombies_completed");
	level notify("hash_8ae54550");
}

/*
	Name: function_807b8294
	Namespace: namespace_b0a87e94
	Checksum: 0x3F1AECB3
	Offset: 0x37A0
	Size: 0x153
	Parameters: 13
	Flags: None
*/
function function_807b8294(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	self.var_44a68a57 = undefined;
	if(var_dfcc01fd.var_fe311e35 == "grenade")
	{
		namespace_f25bd8c8::function_cce60169();
	}
	namespace_d0ef8521::function_31cd1834("cp_level_infection_escape", self);
	self namespace_36cbf523::function_db9a227f(0);
	self namespace_71e9cb84::function_74d6b22f("exploding_ai_deaths", 1);
	namespace_82b91a51::function_76f13293();
	self function_8c8e79fe();
	self namespace_cc27597::function_fcf56ab5("cin_inf_16_01_zombies_vign_treemoment_outro");
	self function_2992720d();
}

/*
	Name: function_407b0f8a
	Namespace: namespace_b0a87e94
	Checksum: 0x277D805F
	Offset: 0x3900
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_407b0f8a()
{
	level namespace_ad23e503::function_9d134160("spawn_zombies");
	var_aa61e82a = 0;
	var_a4ad846c = GetTime();
	while(namespace_52bfb19e::function_cd600a16() > 0)
	{
		var_debfe596 = function_b8494651("axis");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_debfe596.size; var_c957f6b6++)
		{
			if(!(isdefined(var_debfe596[var_c957f6b6] namespace_36cbf523::function_6f990596(256)) && var_debfe596[var_c957f6b6] namespace_36cbf523::function_6f990596(256)))
			{
				var_debfe596[var_c957f6b6] function_2992720d();
			}
		}
		var_aa61e82a = GetTime() - var_a4ad846c / 1000;
		if(var_aa61e82a >= 30)
		{
			var_debfe596 = function_b8494651("axis");
			for(var_c957f6b6 = 0; var_c957f6b6 < var_debfe596.size; var_c957f6b6++)
			{
				var_debfe596[var_c957f6b6] function_2992720d();
			}
			return;
		}
		wait(0.1);
	}
	level namespace_ad23e503::function_74d6b22f("spawn_zombies");
}

/*
	Name: function_bf65e9e5
	Namespace: namespace_b0a87e94
	Checksum: 0x68A2A96B
	Offset: 0x3AD0
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function function_bf65e9e5()
{
	level namespace_ad23e503::function_9d134160("spawn_zombies");
	var_debfe596 = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_debfe596.size; var_c957f6b6++)
	{
		if(!function_5dbf7eca(var_debfe596[var_c957f6b6].var_170527fb, "sarah"))
		{
			var_debfe596[var_c957f6b6] function_c3945cd5(var_debfe596[var_c957f6b6].var_3a90f16b + 100, var_debfe596[var_c957f6b6].var_722885f3);
		}
	}
}

/*
	Name: function_dfeb24eb
	Namespace: namespace_b0a87e94
	Checksum: 0xA369761
	Offset: 0x3BC0
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_dfeb24eb(var_a4ad846c)
{
	level endon("hash_e6e399a9");
	level endon("hash_c8ab51de");
	var_c3209ae = level.var_f2a478d8 / 4;
	var_a4ad846c = 0;
	var_c3adecbb = 0;
	while(var_c3adecbb < level.var_f2a478d8)
	{
		level waittill("hash_7874d92f");
		var_c3adecbb = GetTime() - var_a4ad846c / 1000;
		var_69d094a5 = function_b6b79a0(var_c3adecbb / var_c3209ae);
		if(level.var_f21dc6b9 < var_69d094a5)
		{
			if(var_69d094a5 > 4)
			{
				var_69d094a5 = 4;
			}
			level.var_f21dc6b9 = var_69d094a5;
		}
	}
}

/*
	Name: function_c013c278
	Namespace: namespace_b0a87e94
	Checksum: 0xB6DDB25F
	Offset: 0x3CB0
	Size: 0xCF
	Parameters: 11
	Flags: None
*/
function function_c013c278(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_ae725cb8, var_a5cf2304)
{
	if(isdefined(var_3a212fd7) && (isdefined(var_3a212fd7.var_c47fb4ca) && var_3a212fd7.var_c47fb4ca))
	{
		self function_8a20e55d("evt_player_swiped");
		if(isdefined(var_3a212fd7.var_9ba55de4))
		{
			var_f9a179ed = var_3a212fd7.var_9ba55de4;
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_56f9ab2e
	Namespace: namespace_b0a87e94
	Checksum: 0x6BA4A2E4
	Offset: 0x3D88
	Size: 0xF9
	Parameters: 11
	Flags: None
*/
function function_56f9ab2e(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_ae725cb8, var_a5cf2304)
{
	if(isdefined(var_3a212fd7))
	{
		if(!isdefined(self.var_6eb7cad9))
		{
			self.var_6eb7cad9 = 0;
		}
		self.var_6eb7cad9++;
		if(var_3a212fd7.var_75dbd7 === "heat")
		{
		}
		else if(self.var_3a90f16b < self.var_47c252e3 / 2 || self.var_6eb7cad9 === 5)
		{
			var_f9a179ed = 0;
			level thread function_f83fb174();
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_f83fb174
	Namespace: namespace_b0a87e94
	Checksum: 0xD9C0E31E
	Offset: 0x3E90
	Size: 0x12D
	Parameters: 1
	Flags: None
*/
function function_f83fb174(var_67e5f9c0)
{
	if(!isdefined(var_67e5f9c0))
	{
		var_67e5f9c0 = 1;
	}
	wait(1);
	if(var_67e5f9c0)
	{
		level thread namespace_ce7c3ed5::function_3f0b2996(0.2, 0.8, 1, "white");
		function_37cbcf1a("evt_infection_thunder_special", (0, 0, 0));
	}
	level namespace_ad23e503::function_9d134160("spawn_zombies");
	level thread function_bf65e9e5();
	wait(0.5);
	level thread namespace_99d8554b::function_973b77f9();
	if(var_67e5f9c0)
	{
		level thread namespace_ce7c3ed5::function_3f0b2996(1, 0, 0.8, "white");
	}
	wait(1);
	level thread namespace_99d8554b::function_3d7fd2ca();
	wait(2);
	level notify("hash_7e06c3bb");
}

/*
	Name: function_e643ed8e
	Namespace: namespace_b0a87e94
	Checksum: 0xCF3A5DD6
	Offset: 0x3FC8
	Size: 0x225
	Parameters: 0
	Flags: None
*/
function function_e643ed8e()
{
	level endon("hash_8ae54550");
	level endon("hash_e6e399a9");
	level endon("hash_c8ab51de");
	function_9e53f601(level.var_f21dc6b9);
	if(level.var_2395e945.size == 1)
	{
		level.var_a11e51a8 = 28;
	}
	while(1)
	{
		while(level.var_d2504cee.size <= 0)
		{
			wait(0.1);
		}
		level thread function_16d0ca91();
		level notify("hash_abebbb8");
		/#
			function_2e4b8c78("Dev Block strings are not supported", level.var_f21dc6b9);
		#/
		function_867bc881();
		level namespace_ad23e503::function_1ab5ebec("spawn_zombies");
		level.var_2f91fef4 = 0;
		level notify("hash_191bb225");
		if(level.var_f21dc6b9 >= 4)
		{
			level.var_e6467acd function_407b0f8a();
			level notify("hash_c7d17793");
		}
		var_6f6f10c = level.var_eb9c5258["zombie_spawn_delay"];
		if(var_6f6f10c > 0.08)
		{
			level.var_eb9c5258["zombie_spawn_delay"] = var_6f6f10c * 0.95;
		}
		else if(var_6f6f10c < 0.08)
		{
			level.var_eb9c5258["zombie_spawn_delay"] = 0.08;
		}
		level.var_f21dc6b9++;
		function_9e53f601(level.var_f21dc6b9);
		level function_7f6e1e04();
		namespace_9f824288::function_5d2cdd99();
		level notify("hash_7874d92f");
	}
}

/*
	Name: function_7f6e1e04
	Namespace: namespace_b0a87e94
	Checksum: 0xE8A5551
	Offset: 0x41F8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_7f6e1e04()
{
	var_60db70fa = level.var_eb9c5258["zombie_between_round_time"];
	if(level.var_2395e945.size == 4)
	{
		var_60db70fa = var_60db70fa * 0.25;
	}
	wait(var_60db70fa);
}

/*
	Name: function_867bc881
	Namespace: namespace_b0a87e94
	Checksum: 0x588790E2
	Offset: 0x4250
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_867bc881()
{
	level endon("hash_ade0c7e3");
	wait(1);
	while(1)
	{
		var_827c64dc = namespace_52bfb19e::function_cd600a16() > level.var_1e47bbdd || level.var_c1841ff0 > level.var_1e47bbdd;
		if(!var_827c64dc)
		{
			return;
		}
		if(level namespace_ad23e503::function_7922262b("end_round_wait"))
		{
			return;
		}
		wait(1);
	}
}

/*
	Name: function_16d0ca91
	Namespace: namespace_b0a87e94
	Checksum: 0x75673B72
	Offset: 0x42E8
	Size: 0x3E7
	Parameters: 0
	Flags: None
*/
function function_16d0ca91()
{
	level endon("hash_191bb225");
	if(level.var_d2504cee.size < 1)
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported");
		#/
		return;
	}
	var_74952a22 = 0;
	var_aaeec8c5 = level.var_a11e51a8;
	var_af0d5b3c = level.var_f21dc6b9 / 5;
	if(var_af0d5b3c < 1)
	{
		var_af0d5b3c = 1;
	}
	if(level namespace_ad23e503::function_7922262b("sarah_tree"))
	{
		var_af0d5b3c = var_af0d5b3c * level.var_f21dc6b9 * 0.15;
	}
	var_1e9fba3 = function_3f10449f().size;
	if(var_1e9fba3 == 1)
	{
		var_aaeec8c5 = function_b6b79a0(var_aaeec8c5 * var_af0d5b3c);
	}
	else
	{
		var_aaeec8c5 = var_aaeec8c5 + function_b6b79a0(var_1e9fba3 - 1 * level.var_eb9c5258["zombie_ai_per_player"] * var_af0d5b3c);
	}
	if(!isdefined(level.var_689cb617))
	{
		level.var_689cb617 = &namespace_52bfb19e::function_3d4ebebd;
	}
	var_24fcd54f = level.var_c1841ff0;
	level.var_c1841ff0 = [[level.var_689cb617]](var_aaeec8c5);
	level.var_c1841ff0 = level.var_c1841ff0 + var_24fcd54f;
	level notify("hash_a73ff751");
	if(level.var_f21dc6b9 < 10 || level.var_b51411ee > 0)
	{
		level thread namespace_52bfb19e::function_9d8e8d95();
	}
	while(1)
	{
		while(namespace_52bfb19e::function_cd600a16() >= level.var_a11e51a8 || level.var_c1841ff0 <= 0)
		{
			wait(0.1);
		}
		while(namespace_52bfb19e::function_8dcfc41f() >= level.var_225de261)
		{
			namespace_52bfb19e::function_21794682();
			wait(0.1);
		}
		level namespace_ad23e503::function_1ab5ebec("spawn_zombies");
		while(level.var_d2504cee.size <= 0)
		{
			wait(0.1);
		}
		if(isdefined(level.var_880d5985))
		{
			var_2f06d687 = namespace_84970cc4::function_47d18840(level.var_880d5985);
			var_d84e54db = namespace_52bfb19e::function_d974570f(var_2f06d687, var_2f06d687.var_170527fb);
		}
		if(isdefined(var_d84e54db))
		{
			level.var_c1841ff0--;
			var_d84e54db thread namespace_52bfb19e::function_a4d2b2d1();
			var_74952a22++;
		}
		var_60db70fa = level.var_eb9c5258["zombie_spawn_delay"];
		if(level.var_f21dc6b9 == 1)
		{
			var_60db70fa = level.var_eb9c5258["zombie_spawn_delay"] * 0.25;
		}
		if(level.var_2395e945.size == 4)
		{
			var_60db70fa = var_60db70fa * 0.15;
		}
		wait(var_60db70fa);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_a192423b
	Namespace: namespace_b0a87e94
	Checksum: 0xCC6C8DDF
	Offset: 0x46D8
	Size: 0x1A7
	Parameters: 0
	Flags: None
*/
function function_a192423b()
{
	self endon("hash_128f8789");
	self.var_c74f5ce8 = 0;
	level.var_aee5d9a5 = namespace_14b42b8a::function_7faf4c39("zombie_escape_point", "targetname");
	while(1)
	{
		if(!self.var_c74f5ce8)
		{
			while(self function_9de8a8db())
			{
				wait(0.5);
			}
		}
		var_6ee92ed9 = undefined;
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			if(isdefined(namespace_52bfb19e::function_f0b11cbc(var_6bfe1586)) && namespace_52bfb19e::function_f0b11cbc(var_6bfe1586) && self function_dd4ef762(var_6bfe1586.var_722885f3, 1))
			{
				self.var_c6dedab7 = var_6bfe1586;
				var_6ee92ed9 = 1;
				continue;
			}
		}
		if(!isdefined(var_6ee92ed9))
		{
			self.var_c74f5ce8 = 1;
			self function_4f61e7f9();
		}
		wait(0.1);
	}
}

/*
	Name: function_4f61e7f9
	Namespace: namespace_b0a87e94
	Checksum: 0x63650F51
	Offset: 0x4888
	Size: 0x10B
	Parameters: 0
	Flags: Private
*/
function private function_4f61e7f9()
{
	self endon("hash_128f8789");
	var_3c96a936 = self function_8cd09adb();
	self notify("hash_c719254e");
	self notify("hash_193f53f3");
	self namespace_d84e54db::function_b4f5e3b9(1);
	if(isdefined(var_3c96a936))
	{
		self function_e65887e4(var_3c96a936.var_722885f3);
		self thread function_30b905e5();
		self namespace_82b91a51::function_5b7e3888("goal", "reaquire_player");
	}
	wait(0.1);
	if(!self.var_c74f5ce8)
	{
		self.var_c3a32a15 = "find_flesh";
		self namespace_d84e54db::function_b4f5e3b9(0);
	}
}

/*
	Name: function_8cd09adb
	Namespace: namespace_b0a87e94
	Checksum: 0x1E151EEE
	Offset: 0x49A0
	Size: 0x3B
	Parameters: 0
	Flags: Private
*/
function private function_8cd09adb()
{
	self endon("hash_128f8789");
	var_7e0c21ca = self function_cc961087(level.var_aee5d9a5);
	return var_7e0c21ca;
}

/*
	Name: function_cc961087
	Namespace: namespace_b0a87e94
	Checksum: 0x7072C016
	Offset: 0x49E8
	Size: 0xBD
	Parameters: 1
	Flags: Private
*/
function private function_cc961087(var_41f326b3)
{
	var_61c71098 = 0;
	var_1bfac935 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_41f326b3.size; var_c957f6b6++)
	{
		var_6e4dffe8 = function_cb3d1c9b(self.var_722885f3, var_41f326b3[var_c957f6b6].var_722885f3);
		if(var_6e4dffe8 > var_1bfac935)
		{
			var_1bfac935 = var_6e4dffe8;
			var_61c71098 = var_c957f6b6;
		}
	}
	return var_41f326b3[var_61c71098];
}

/*
	Name: function_30b905e5
	Namespace: namespace_b0a87e94
	Checksum: 0x574B74DA
	Offset: 0x4AB0
	Size: 0x9B
	Parameters: 0
	Flags: Private
*/
function private function_30b905e5()
{
	self notify("hash_6ab8c7f0");
	self endon("hash_6ab8c7f0");
	self endon("hash_128f8789");
	self endon("hash_41d1aaf0");
	while(self.var_c74f5ce8)
	{
		wait(function_72a94f05(0.2, 0.5));
		if(self function_9de8a8db())
		{
			self.var_c74f5ce8 = 0;
			self notify("hash_c68d373");
			return;
		}
	}
}

/*
	Name: function_9de8a8db
	Namespace: namespace_b0a87e94
	Checksum: 0xCC06DCA7
	Offset: 0x4B58
	Size: 0xA7
	Parameters: 0
	Flags: Private
*/
function private function_9de8a8db()
{
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		if(!namespace_52bfb19e::function_f0b11cbc(level.var_2395e945[var_c957f6b6]))
		{
			continue;
		}
		var_9a23ce57 = level.var_2395e945[var_c957f6b6].var_722885f3;
		if(self function_4a26559(self.var_722885f3, var_9a23ce57, 1, 0))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_7c7dc2
	Namespace: namespace_b0a87e94
	Checksum: 0x6D03F538
	Offset: 0x4C08
	Size: 0x4A1
	Parameters: 0
	Flags: None
*/
function function_7c7dc2()
{
	var_9b40c1cb = function_6ada35ba("pavlov_house_fire", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_9b40c1cb), "Dev Block strings are not supported");
	#/
	var_acc45090 = function_6ada35ba("pavlov_house_fire_warning", "targetname");
	var_9db8f3d2 = namespace_14b42b8a::function_7922262b("firewall_align", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_9db8f3d2), "Dev Block strings are not supported");
	#/
	var_7c15369c = namespace_82b91a51::function_b9fd52a4("tag_origin", var_9db8f3d2.var_722885f3, var_9db8f3d2.var_6ab6f4fd);
	var_7c15369c.var_170527fb = "firewall_firepos";
	var_7c15369c namespace_71e9cb84::function_74d6b22f("zombie_fire_wall_fx", 1);
	var_7c15369c namespace_71e9cb84::function_74d6b22f("zombie_fire_backdraft_fx", 1);
	var_a5eedec7 = namespace_14b42b8a::function_7faf4c39("zombie_fire_wall", "targetname");
	foreach(var_a2d47c3d in var_a5eedec7)
	{
		var_a4b9fb71 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_a2d47c3d.var_722885f3, var_a2d47c3d.var_6ab6f4fd);
		var_a4b9fb71 function_37f7858a(var_7c15369c);
		var_a4b9fb71.var_170527fb = "firewall_firepos";
		var_a4b9fb71 namespace_71e9cb84::function_74d6b22f("zombie_fire_wall_fx", 1);
	}
	var_9b40c1cb function_8f279593();
	var_9b40c1cb function_37f7858a(var_7c15369c);
	var_acc45090 function_8f279593();
	var_acc45090 function_37f7858a(var_7c15369c);
	var_aa7f584c = namespace_14b42b8a::function_7922262b("final_fire_pos", "targetname");
	if(!isdefined(var_aa7f584c))
	{
		var_a2d47c3d = (var_7c15369c.var_722885f3[0] - 1292, var_7c15369c.var_722885f3[1], var_7c15369c.var_722885f3[2]);
	}
	else
	{
		var_a2d47c3d = var_aa7f584c.var_722885f3;
	}
	var_60db70fa = level.var_f2a478d8 * 0.75;
	if(isdefined(level.var_8ebdde9d) && level.var_8ebdde9d)
	{
		var_60db70fa = 0.1;
	}
	var_7c15369c function_a96a2721(var_a2d47c3d, var_60db70fa);
	var_9b40c1cb thread function_d8f499cb();
	namespace_80983c42::function_80983c42("zombies_fire_transition");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_9d4d52f3(var_9b40c1cb, var_acc45090);
	}
}

/*
	Name: function_d8f499cb
	Namespace: namespace_b0a87e94
	Checksum: 0xD2725022
	Offset: 0x50B8
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function function_d8f499cb()
{
	self endon("hash_128f8789");
	var_30a3fa7c = 0;
	var_52128914 = 0;
	while(1)
	{
		var_ebe90536 = function_b8494651("axis");
		var_30a3fa7c = var_ebe90536 function_5d20fa4c();
		var_52128914 = var_ebe90536 function_499c7bc4();
		if(var_30a3fa7c < 12)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_ebe90536.size; var_c957f6b6++)
			{
				if(var_ebe90536[var_c957f6b6] function_32fa5072(self) && (!isdefined(var_ebe90536[var_c957f6b6].var_e069c441) && var_ebe90536[var_c957f6b6].var_e069c441) && var_30a3fa7c < 12)
				{
					var_ebe90536[var_c957f6b6].var_e069c441 = 1;
					var_ebe90536[var_c957f6b6].var_e686b755 = 1;
					var_30a3fa7c++;
					var_ebe90536[var_c957f6b6] thread function_c8a09d87();
				}
				if(!isdefined(var_ebe90536[var_c957f6b6].var_e069c441) && var_ebe90536[var_c957f6b6].var_e069c441 && var_ebe90536[var_c957f6b6] function_1a9db234() && var_30a3fa7c < 12)
				{
					var_ebe90536[var_c957f6b6].var_e069c441 = 1;
					var_30a3fa7c++;
					var_52128914++;
					var_ebe90536[var_c957f6b6] thread function_c8a09d87();
				}
			}
		}
		wait(1);
	}
}

/*
	Name: function_1a9db234
	Namespace: namespace_b0a87e94
	Checksum: 0x39F32976
	Offset: 0x52E8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_1a9db234()
{
	self endon("hash_128f8789");
	var_ebe90536 = function_b8494651("axis");
	foreach(var_fb9423cf in var_ebe90536)
	{
		var_ccd4343c = function_316422d1(self.var_722885f3, var_fb9423cf.var_722885f3);
		if(self != var_fb9423cf && var_ccd4343c < 2500 && (isdefined(var_fb9423cf.var_e069c441) && var_fb9423cf.var_e069c441))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_5d20fa4c
	Namespace: namespace_b0a87e94
	Checksum: 0x5DE0F09F
	Offset: 0x5410
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_5d20fa4c()
{
	var_791757 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < self.size; var_c957f6b6++)
	{
		if(isdefined(self[var_c957f6b6].var_e069c441) && self[var_c957f6b6].var_e069c441)
		{
			var_791757++;
		}
	}
	return var_791757;
}

/*
	Name: function_499c7bc4
	Namespace: namespace_b0a87e94
	Checksum: 0x556C59D5
	Offset: 0x5490
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_499c7bc4()
{
	var_791757 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < self.size; var_c957f6b6++)
	{
		if(isdefined(self[var_c957f6b6].var_e069c441) && self[var_c957f6b6].var_e069c441 && (!isdefined(self[var_c957f6b6].var_e686b755) && self[var_c957f6b6].var_e686b755))
		{
			var_791757++;
		}
	}
	return var_791757;
}

/*
	Name: function_c8a09d87
	Namespace: namespace_b0a87e94
	Checksum: 0xC221F686
	Offset: 0x5538
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_c8a09d87()
{
	self endon("hash_128f8789");
	var_9515bc6d = function_26299103(10);
	self function_c2931a36("chr_burn_start_loop", 1);
	if(var_9515bc6d <= 2)
	{
		function_da6acfd2(level.var_c1aa5253["burn_loop_zombie_left_arm"], self, "J_Elbow_LE");
	}
	else if(var_9515bc6d <= 5)
	{
		function_da6acfd2(level.var_c1aa5253["burn_loop_zombie_right_arm"], self, "J_Elbow_RI");
	}
	else
	{
		function_da6acfd2(level.var_c1aa5253["burn_loop_zombie_torso"], self, "J_Spine4");
	}
}

/*
	Name: function_9d4d52f3
	Namespace: namespace_b0a87e94
	Checksum: 0x3199BB5E
	Offset: 0x5640
	Size: 0x18B
	Parameters: 2
	Flags: None
*/
function function_9d4d52f3(var_7b08f0da, var_a5765dcf)
{
	self endon("hash_128f8789");
	if(!isdefined(self.var_f000be0d))
	{
		self.var_f000be0d = function_9b7fda5e("script_origin", self.var_722885f3);
		self.var_f000be0d function_37f7858a(self);
	}
	while(1)
	{
		var_a5765dcf waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 == self)
		{
			while(isdefined(var_7b08f0da) && isdefined(var_a5765dcf) && (self function_32fa5072(var_7b08f0da) || self function_32fa5072(var_a5765dcf) || self.var_3a90f16b != self.var_47c252e3))
			{
				self.var_f000be0d function_c2931a36("chr_burn_start_loop", 0.5);
				wait(0.1);
			}
			self namespace_71e9cb84::function_74d6b22f("burn", 0);
			self.var_f000be0d function_eaa69754(1);
			if(!isdefined(var_a5765dcf) || !isdefined(var_7b08f0da))
			{
				break;
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_32f8ed03
	Namespace: namespace_b0a87e94
	Checksum: 0xCF32E04C
	Offset: 0x57D8
	Size: 0x5BD
	Parameters: 0
	Flags: None
*/
function function_32f8ed03()
{
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_ceiling_enter_01_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_ceiling_enter_02_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_wall_enter_01_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_wall_enter_02_bundle");
	level.var_669f6ae5 = namespace_14b42b8a::function_7faf4c39("zombie_barrier", "targetname");
	foreach(var_58770c2a in level.var_669f6ae5)
	{
		var_58770c2a.var_f25b564e = [];
		if(isdefined(level.var_8ebdde9d) && level.var_8ebdde9d)
		{
			level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_house_ceiling_enter_01_bundle");
			level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_house_ceiling_enter_02_bundle");
			level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_house_wall_enter_01_bundle");
			level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_infection_house_wall_enter_02_bundle");
			var_6445c659 = function_99201f25(var_58770c2a.var_b07228b6, "targetname");
			for(var_c957f6b6 = 0; var_c957f6b6 < var_6445c659.size; var_c957f6b6++)
			{
				var_6445c659[var_c957f6b6] function_50ccee8d();
				var_6445c659[var_c957f6b6] function_422037f5();
			}
			var_58770c2a.var_b4b8f9d6 = 1;
			continue;
		}
		var_6445c659 = function_99201f25(var_58770c2a.var_b07228b6, "targetname");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_6445c659.size; var_c957f6b6++)
		{
			if(var_6445c659[var_c957f6b6].var_caae374e === "lookat_barrier")
			{
				var_58770c2a.var_98382865 = var_6445c659[var_c957f6b6];
				continue;
			}
			if(var_6445c659[var_c957f6b6].var_caae374e === "clip")
			{
				var_58770c2a.var_b340b98b = var_6445c659[var_c957f6b6];
			}
		}
		var_b9b6df55 = namespace_14b42b8a::function_7faf4c39(var_58770c2a.var_b07228b6, "targetname");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_b9b6df55.size; var_c957f6b6++)
		{
			if(var_b9b6df55[var_c957f6b6].var_caae374e === "tearin_bundle")
			{
				var_b9b6df55[var_c957f6b6] namespace_cc27597::function_c35e6aab(var_b9b6df55[var_c957f6b6].var_1157a889);
				namespace_84970cc4::function_69554b3e(var_58770c2a.var_f25b564e, var_b9b6df55[var_c957f6b6], 0);
			}
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_d2504cee.size; var_c957f6b6++)
		{
			if(level.var_d2504cee[var_c957f6b6].var_9194748 === var_58770c2a.var_db7bb468)
			{
				level.var_d2504cee[var_c957f6b6].var_58770c2a = var_58770c2a;
				break;
			}
		}
		var_fe311e35 = var_58770c2a.var_caae374e;
		switch(var_fe311e35)
		{
			case "wall_filler":
			{
				var_58770c2a.var_cbd111bc = "cin_inf_16_01_zombies_vign_tearins_wallbreak_pull_";
				var_58770c2a.var_edff213c = 2;
				if(var_58770c2a.var_db7bb468 === "wall_barrier1")
				{
					var_58770c2a.var_be27ab3c = "p7_fxanim_cp_infection_house_wall_enter_01_bundle";
				}
				else
				{
					var_58770c2a.var_be27ab3c = "p7_fxanim_cp_infection_house_wall_enter_02_bundle";
				}
				break;
			}
			case "ceiling_filler_bedroom":
			{
				var_58770c2a.var_cbd111bc = "cin_inf_16_01_zombies_vign_tearins_ceiling_bedroom_pull_";
				var_58770c2a.var_be27ab3c = "p7_fxanim_cp_infection_house_ceiling_enter_01_bundle";
				var_58770c2a.var_edff213c = 4;
				break;
			}
			case "ceiling_filler_frontroom":
			{
				var_58770c2a.var_cbd111bc = "cin_inf_16_01_zombies_vign_tearins_ceiling_frontroom_pull_";
				var_58770c2a.var_be27ab3c = "p7_fxanim_cp_infection_house_ceiling_enter_02_bundle";
				var_58770c2a.var_edff213c = 4;
				break;
			}
		}
		var_58770c2a.var_b4b8f9d6 = 0;
	}
}

/*
	Name: function_39e002c5
	Namespace: namespace_b0a87e94
	Checksum: 0xBCE07902
	Offset: 0x5DA0
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_39e002c5(var_e18d5855)
{
	var_efd55a29 = var_e18d5855.var_58770c2a;
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_efd55a29), "Dev Block strings are not supported");
	#/
	if(isdefined(var_efd55a29.var_b4b8f9d6) && var_efd55a29.var_b4b8f9d6)
	{
		self notify("hash_2d082574", var_e18d5855.var_db7bb468);
		return;
	}
	self endon("hash_128f8789");
	self.var_c6dedab7 = undefined;
	var_e6e961e4 = self.var_7dfaf62;
	self.var_7dfaf62 = 4;
	self function_169cc712(var_efd55a29.var_722885f3, 1);
	self waittill("hash_41d1aaf0");
	self function_86e828e1("dont move");
	self.var_7dfaf62 = var_e6e961e4;
	self.var_383382ac = 1;
	if(isdefined(var_efd55a29.var_98382865))
	{
		var_efd55a29 function_c9dce219(30);
	}
	if(var_efd55a29.var_caae374e === "door_filler" || var_efd55a29.var_caae374e === "window_filler")
	{
		self thread function_9344567(var_e18d5855);
		return;
	}
	else if(isdefined(var_efd55a29.var_caae374e))
	{
		self thread function_c55118b4(var_e18d5855);
		self waittill("hash_6deed6b9");
		if(isdefined(var_efd55a29.var_be27ab3c))
		{
			level thread namespace_cc27597::function_43718187(var_efd55a29.var_be27ab3c);
		}
	}
}

/*
	Name: function_c55118b4
	Namespace: namespace_b0a87e94
	Checksum: 0x3AD95D31
	Offset: 0x5FC8
	Size: 0x1ED
	Parameters: 1
	Flags: None
*/
function function_c55118b4(var_e18d5855)
{
	var_efd55a29 = var_e18d5855.var_58770c2a;
	self endon("hash_128f8789");
	if(!isdefined(var_efd55a29.var_505f5f0b))
	{
		var_efd55a29.var_505f5f0b = 1;
	}
	self function_9869ab67(var_efd55a29.var_722885f3, var_efd55a29.var_6ab6f4fd);
	while(!(isdefined(var_efd55a29.var_b4b8f9d6) && var_efd55a29.var_b4b8f9d6))
	{
		self thread namespace_cc27597::function_43718187(var_efd55a29.var_cbd111bc + var_efd55a29.var_505f5f0b, self);
		var_4298e0ca = "destroy_piece";
		self waittill(var_4298e0ca);
		self notify("hash_6deed6b9");
		self waittill("hash_accb9cfa");
		if(var_efd55a29.var_505f5f0b < var_efd55a29.var_edff213c)
		{
			var_efd55a29.var_505f5f0b++;
		}
		else
		{
			var_efd55a29.var_b4b8f9d6 = 1;
		}
	}
	self notify("hash_2d082574", var_e18d5855.var_db7bb468);
	self.var_383382ac = 0;
	if(isdefined(var_efd55a29.var_b340b98b))
	{
		var_efd55a29.var_b340b98b function_422037f5();
		var_efd55a29.var_b340b98b function_de8377bf();
	}
	var_e18d5855.var_58770c2a = undefined;
	var_e18d5855.var_1049238d = undefined;
}

/*
	Name: function_9344567
	Namespace: namespace_b0a87e94
	Checksum: 0xFBA7D492
	Offset: 0x61C0
	Size: 0x277
	Parameters: 1
	Flags: None
*/
function function_9344567(var_e18d5855)
{
	self endon("hash_128f8789");
	var_efd55a29 = var_e18d5855.var_58770c2a;
	self function_9869ab67(var_efd55a29.var_722885f3, var_efd55a29.var_6ab6f4fd);
	while(var_efd55a29.var_f25b564e.size > 0)
	{
		if(!isdefined(var_efd55a29.var_e848e1ba))
		{
			var_efd55a29.var_e848e1ba = 1;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_efd55a29.var_f25b564e.size; var_c957f6b6++)
		{
			if(function_5dbf7eca(var_efd55a29.var_f25b564e[var_c957f6b6].var_1157a889, "_" + var_efd55a29.var_e848e1ba))
			{
				var_294306eb = var_efd55a29.var_f25b564e[var_c957f6b6].var_1157a889;
				var_1cbcb46d = var_efd55a29.var_f25b564e[var_c957f6b6];
				break;
			}
		}
		var_1cbcb46d thread namespace_cc27597::function_43718187(var_294306eb, self);
		var_1cbcb46d namespace_82b91a51::function_c9aa1ff("scene_done", 5);
		var_efd55a29.var_e848e1ba++;
		function_81403b2f(var_efd55a29.var_f25b564e, var_1cbcb46d);
	}
	self notify("hash_2d082574", var_e18d5855.var_db7bb468);
	self.var_383382ac = 0;
	if(isdefined(var_efd55a29.var_b340b98b))
	{
		var_efd55a29.var_b340b98b function_422037f5();
		var_efd55a29.var_b340b98b function_de8377bf();
	}
	var_e18d5855.var_58770c2a = undefined;
	var_e18d5855.var_1049238d = undefined;
	var_efd55a29.var_b4b8f9d6 = 1;
}

/*
	Name: function_c9dce219
	Namespace: namespace_b0a87e94
	Checksum: 0x49EE1D6D
	Offset: 0x6440
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_c9dce219(var_60db70fa)
{
	self.var_98382865 thread function_19d97e6(var_60db70fa);
	self.var_98382865 thread function_9973d36d();
	self.var_98382865 namespace_82b91a51::function_5b7e3888("timeout", "was_seen");
	if(isdefined(self.var_98382865))
	{
		self.var_98382865 function_dc8c8404();
	}
}

/*
	Name: function_9973d36d
	Namespace: namespace_b0a87e94
	Checksum: 0xCB296B28
	Offset: 0x64E0
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_9973d36d()
{
	self endon("hash_4573206");
	self endon("hash_dffed4ee");
	while(1)
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		if(isdefined(namespace_52bfb19e::function_f0b11cbc(self.var_aef176e7)) && namespace_52bfb19e::function_f0b11cbc(self.var_aef176e7))
		{
			self notify("hash_dffed4ee");
			return;
		}
	}
}

/*
	Name: function_19d97e6
	Namespace: namespace_b0a87e94
	Checksum: 0x49A00EE7
	Offset: 0x6568
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function function_19d97e6(var_60db70fa)
{
	self endon("hash_4573206");
	self endon("hash_dffed4ee");
	var_7d1d3d30 = GetTime() + var_60db70fa * 1000;
	while(GetTime() < var_7d1d3d30)
	{
		wait(0.1);
		if(!isdefined(self))
		{
			return;
		}
	}
	self notify("hash_4573206");
}

