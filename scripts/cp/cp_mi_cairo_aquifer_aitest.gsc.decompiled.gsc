#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_4a128b5f;

/*
	Name: function_c35e6aab
	Namespace: namespace_4a128b5f
	Checksum: 0x873F5300
	Offset: 0x12F8
	Size: 0x463
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	if(!level namespace_ad23e503::function_dbca4c5d("inside_aquifer"))
	{
		level namespace_ad23e503::function_c35e6aab("inside_aquifer");
	}
	level namespace_ad23e503::function_c35e6aab("aquifer_zone02_combat_start");
	level namespace_ad23e503::function_c35e6aab("aquifer_zone03_combat_start");
	level namespace_ad23e503::function_c35e6aab("flag_force_off_dust");
	level namespace_ad23e503::function_c35e6aab("flag_post_vtol_intro");
	level namespace_ad23e503::function_c35e6aab("exterior_hack_trig_left_1_finished");
	level namespace_ad23e503::function_c35e6aab("exterior_hack_trig_right_1_finished");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_1_finished");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_2_finished");
	level namespace_ad23e503::function_c35e6aab("hack_zone03_1_finished");
	level namespace_ad23e503::function_c35e6aab("hack_zone03_2_finished");
	level namespace_ad23e503::function_c35e6aab("flag_aqu_save_state");
	level namespace_ad23e503::function_c35e6aab("exterior_hack_trig_left_1_started");
	level namespace_ad23e503::function_c35e6aab("exterior_hack_trig_right_1_started");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_1_started");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_2_started");
	level namespace_ad23e503::function_c35e6aab("hack_zone03_1_started");
	level namespace_ad23e503::function_c35e6aab("hack_zone03_2_started");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_3_started");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_3_finished");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_4_started");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_4_finished");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_5_started");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_5_finished");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_6_started");
	level namespace_ad23e503::function_c35e6aab("hack_zone02_6_finished");
	level namespace_ad23e503::function_c35e6aab("flag_kayne_vulnerable");
	level namespace_ad23e503::function_c35e6aab("kayne_starts_overload");
	level namespace_ad23e503::function_c35e6aab("flag_wave2_port");
	level namespace_ad23e503::function_c35e6aab("flag_wave2_residential");
	level namespace_ad23e503::function_c35e6aab("flag_player_left_tower_done");
	level namespace_ad23e503::function_c35e6aab("flag_player_right_tower_done");
	level namespace_ad23e503::function_c35e6aab("flag_player_started_left_tower");
	level namespace_ad23e503::function_c35e6aab("flag_player_started_right_tower");
}

/*
	Name: function_82230f12
	Namespace: namespace_4a128b5f
	Checksum: 0x49FCAAF8
	Offset: 0x1768
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_82230f12()
{
	thread function_b63b8588();
	thread function_5f0c85a2();
}

/*
	Name: function_25dcb860
	Namespace: namespace_4a128b5f
	Checksum: 0x4D8B2D9B
	Offset: 0x1798
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_25dcb860()
{
	thread function_92eaa107("start_spawning_zone01_enemies", "spawn_manager_zone01", "spawn_manager_zone01b", "destroy_defenses_completed", "hack_terminal_right_completed", "aquifer_zone03_combat_start");
}

/*
	Name: function_92eaa107
	Namespace: namespace_4a128b5f
	Checksum: 0x42F3DEEE
	Offset: 0x17E8
	Size: 0x293
	Parameters: 6
	Flags: None
*/
function function_92eaa107(var_5948b3df, var_1109dfe1, var_470f86b1, var_f0b6f220, var_a6b912d3, var_5b64aa9b)
{
	var_c04363eb = function_6ada35ba(var_5948b3df, "targetname");
	var_c04363eb waittill("hash_4dbf3ae3");
	namespace_2f06d687::function_ef554cf7("axis", &function_18de558f);
	namespace_d5067552::function_bae40a28(var_1109dfe1);
	namespace_d5067552::function_bae40a28(var_470f86b1);
	namespace_96fa87af::function_994832bd("zone01_hunter", &function_8273bb26);
	var_17644d42 = function_6ada35ba("zone01_hunter", "targetname");
	var_c82fd082 = namespace_96fa87af::function_af70b4e0(var_17644d42);
	var_14edd77e = function_99201f25("dummy_runners_01", "targetname");
	foreach(var_d8e7bbc in var_14edd77e)
	{
		var_d8e7bbc thread function_59a7e387();
	}
	level namespace_ad23e503::function_1ab5ebec(var_f0b6f220);
	namespace_d5067552::function_54bdb053(var_1109dfe1);
	namespace_d5067552::function_54bdb053(var_470f86b1);
	namespace_2f06d687::function_d5e942a4("axis", &function_18de558f);
	level namespace_ad23e503::function_1ab5ebec(var_a6b912d3);
	if(isdefined(var_5b64aa9b))
	{
		level namespace_ad23e503::function_74d6b22f(var_5b64aa9b);
	}
}

/*
	Name: function_18de558f
	Namespace: namespace_4a128b5f
	Checksum: 0x7F39EAE8
	Offset: 0x1A88
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_18de558f()
{
	self.var_84edac03 = 1;
}

/*
	Name: function_8273bb26
	Namespace: namespace_4a128b5f
	Checksum: 0x37AB5216
	Offset: 0x1AA0
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_8273bb26()
{
	self endon("hash_128f8789");
	self endon("hash_5c3c0148");
	level namespace_ad23e503::function_1ab5ebec("destroy_defenses_completed");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 32;
	var_25e662d3 = function_6ada35ba("zone01_hunter_goal", "targetname");
	var_25e662d3.var_f8456b37 = 32;
	self function_500dc2f7(32);
	self function_c985552d(var_25e662d3.var_722885f3, 1);
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
	self notify("hash_5c3c0148");
}

/*
	Name: function_59a7e387
	Namespace: namespace_4a128b5f
	Checksum: 0x96AC68E8
	Offset: 0x1BB8
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_59a7e387()
{
	level endon("hash_4af9ae51");
	while(1)
	{
		var_4e459f55 = self namespace_2f06d687::function_9b7fda5e();
		if(isdefined(var_4e459f55))
		{
			var_4e459f55 waittill("hash_128f8789");
		}
		else
		{
			wait(0.05);
		}
		self.var_74952a22 = 1;
		wait(3);
	}
}

/*
	Name: function_b63b8588
	Namespace: namespace_4a128b5f
	Checksum: 0xEF398114
	Offset: 0x1C38
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_b63b8588()
{
	thread function_f0eb736e();
	thread function_16f0ef2b();
	thread function_44f51c2d();
}

/*
	Name: function_44e145d1
	Namespace: namespace_4a128b5f
	Checksum: 0xE4E4241B
	Offset: 0x1C78
	Size: 0x2D3
	Parameters: 1
	Flags: None
*/
function function_44e145d1(var_e413e785)
{
	var_1109dfe1 = "spawn_manager_egyptian_defend1";
	var_ad81c50c = "spawn_manager_hack_zone03_1";
	namespace_84970cc4::function_966ecb29(function_99201f25("egyptian_spawner_01", "targetname"), &namespace_2f06d687::function_994832bd, &function_2f71981c);
	namespace_dabbe128::function_7bb100ad(&function_40cfc8f4);
	thread function_5433cddd();
	namespace_2f06d687::function_ef554cf7("axis", &function_18de558f);
	wait(3);
	thread function_caae752c();
	namespace_82b91a51::function_d8eaed3d(5);
	namespace_d5067552::function_bae40a28(var_1109dfe1);
	namespace_d5067552::function_bae40a28(var_ad81c50c);
	level namespace_ad23e503::function_1ab5ebec(var_e413e785);
	namespace_d5067552::function_54bdb053(var_1109dfe1);
	namespace_d5067552::function_54bdb053(var_ad81c50c);
	namespace_dabbe128::function_840ed4d4(&function_40cfc8f4);
	level namespace_ad23e503::function_74d6b22f("hack_zone03_1_finished");
	wait(5);
	var_7ead86e5 = namespace_d5067552::function_423eae50(var_1109dfe1);
	var_7c0a3add = namespace_d5067552::function_423eae50(var_ad81c50c);
	var_7ead86e5 = function_525ae497(var_7ead86e5, var_7c0a3add, 0, 0);
	var_7ead86e5 = function_525ae497(var_7ead86e5, level.var_79168bae, 0, 0);
	namespace_2f06d687::function_d5e942a4("axis", &function_18de558f);
	level waittill("hash_476bcf62");
	level namespace_ad23e503::function_74d6b22f("flag_force_off_dust");
	wait(3);
	namespace_84970cc4::function_966ecb29(var_7ead86e5, &function_ce276271);
}

/*
	Name: function_ce276271
	Namespace: namespace_4a128b5f
	Checksum: 0x2709E907
	Offset: 0x1F58
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ce276271()
{
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_5433cddd
	Namespace: namespace_4a128b5f
	Checksum: 0xA23439D4
	Offset: 0x1F88
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_5433cddd()
{
	var_e78c0153 = function_6ada35ba("egyptian_defend_reached_trig", "targetname");
	if(isdefined(var_e78c0153))
	{
		var_e78c0153 function_175e6b8e(1);
	}
	wait(20);
	if(!level namespace_ad23e503::function_7922262b("egyptian_defend_reached"))
	{
		level namespace_ad23e503::function_74d6b22f("egyptian_defend_reached");
	}
	if(isdefined(var_e78c0153))
	{
		var_e78c0153 function_175e6b8e(0);
	}
}

/*
	Name: function_40cfc8f4
	Namespace: namespace_4a128b5f
	Checksum: 0xA112CB9
	Offset: 0x2048
	Size: 0x243
	Parameters: 1
	Flags: None
*/
function function_40cfc8f4(var_a8563e07)
{
	if(!level namespace_ad23e503::function_7922262b("egyptian_defend_reached") && function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		level namespace_ad23e503::function_74d6b22f("egyptian_defend_reached");
	}
	else if(!level namespace_ad23e503::function_7922262b("egyptian_defend_reached") && !function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		return;
	}
	if(!isdefined(level.var_27aeb908))
	{
		level.var_27aeb908 = 0;
		level.var_ff73cf2d = 0;
		level.var_103b592a = 0;
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && isdefined(self.var_170527fb) && self.var_170527fb == "egyptian_spawner_01_ai")
	{
		level.var_27aeb908 = level.var_27aeb908 + var_a8563e07.var_f9a179ed;
		function_ccf5af95();
	}
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && isdefined(self.var_3e94206a) && self.var_3e94206a == "axis")
	{
		level.var_103b592a = 0;
	}
	if(isdefined(var_a8563e07.var_3a212fd7) && var_a8563e07.var_3a212fd7.var_3e94206a == "axis" && isdefined(self.var_170527fb) && self.var_170527fb == "egyptian_spawner_01_ai")
	{
		level.var_103b592a = level.var_103b592a + 1;
		if(level.var_103b592a >= 7)
		{
			namespace_82b91a51::function_207f8667(&"CP_MI_CAIRO_AQUIFER_KHALILKILLED", &"CP_MI_CAIRO_AQUIFER_EGYPT_FAIL");
		}
	}
}

/*
	Name: function_ccf5af95
	Namespace: namespace_4a128b5f
	Checksum: 0x943CF121
	Offset: 0x2298
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_ccf5af95()
{
	if(!isdefined(level.var_26ee895f))
	{
		level.var_26ee895f = 1;
		level.var_70c85b56 = [];
		namespace_84970cc4::function_69554b3e(level.var_70c85b56, "khal_friendly_fire_frien_0");
		namespace_84970cc4::function_69554b3e(level.var_70c85b56, "khal_watch_your_fire_you_0");
	}
	if(level.var_27aeb908 > level.var_26ee895f * 850)
	{
		level thread namespace_71b8dba1::function_a463d127(level.var_70c85b56[level.var_26ee895f % 2]);
		level.var_26ee895f++;
	}
}

/*
	Name: function_caae752c
	Namespace: namespace_4a128b5f
	Checksum: 0x99EC1590
	Offset: 0x2358
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_caae752c()
{
}

/*
	Name: function_2f71981c
	Namespace: namespace_4a128b5f
	Checksum: 0xC06C50ED
	Offset: 0x2368
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_2f71981c()
{
	self namespace_82b91a51::function_958c7633();
	self.var_84edac03 = 1;
}

/*
	Name: function_f0eb736e
	Namespace: namespace_4a128b5f
	Checksum: 0x1C08D61A
	Offset: 0x2398
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_f0eb736e()
{
	thread function_bd9f11ed();
	thread function_254b71e5();
	namespace_96fa87af::function_994832bd("port_vtol1", &function_6c135aa8);
	namespace_96fa87af::function_994832bd("port_vtol2", &function_6c135aa8);
	namespace_96fa87af::function_994832bd("defend_1_2_hunter_1", &function_1c36248b);
	namespace_96fa87af::function_994832bd("defend_1_2_hunter_2", &function_1c36248b);
	var_4208e495 = function_6ada35ba("defend_1_2_hunter_1", "targetname");
	var_680b5efe = function_6ada35ba("defend_1_2_hunter_2", "targetname");
	var_f3ed94cd = "spawn_manager_hack_zone01_2_wave1";
	var_19f00f36 = "spawn_manager_hack_zone01_2_wave2";
	var_3ff2899f = "spawn_manager_hack_zone01_2_wave3";
	var_5d8f4916 = "trig_veh_hack1_2a";
	var_378ccead = "trig_veh_hack1_2b";
	thread function_e8e3d4b4("port", "destroy_defenses_completed", "exterior_hack_trig_left_1", "exterior_hack_trig_left_1_started", "exterior_hack_trig_left_1_finished", var_5d8f4916, var_378ccead, var_4208e495, var_680b5efe, var_f3ed94cd, var_19f00f36, var_3ff2899f, "exterior_hack_trig_left_1_finished", "pre_hack_01_2_volume", "aquifer_zone_1_left", "left_pad_volume");
}

/*
	Name: function_16f0ef2b
	Namespace: namespace_4a128b5f
	Checksum: 0x5AE86273
	Offset: 0x25A0
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_16f0ef2b()
{
	thread function_e3a18c56();
	namespace_96fa87af::function_994832bd("res_vtol1", &function_6c135aa8);
	namespace_96fa87af::function_994832bd("res_vtol2", &function_6c135aa8);
	namespace_96fa87af::function_994832bd("defend_1_1_hunter_1", &function_1c36248b);
	namespace_96fa87af::function_994832bd("defend_1_1_hunter_1", &function_1c36248b);
	var_6a43b028 = function_6ada35ba("defend_1_1_hunter_1", "targetname");
	var_dc4b1f63 = function_6ada35ba("defend_1_1_hunter_2", "targetname");
	var_9a9ac320 = "spawn_manager_hack_zone01_1_wave1";
	var_ca2325b = "spawn_manager_hack_zone01_1_wave2";
	var_e69fb7f2 = "spawn_manager_hack_zone01_1_wave3";
	var_5d8f4916 = "trig_veh_hack1_1a";
	var_378ccead = "trig_veh_hack1_1b";
	thread function_e8e3d4b4("residential", "destroy_defenses_completed", "exterior_hack_trig_right_1", "exterior_hack_trig_right_1_started", "exterior_hack_trig_right_1_finished", var_5d8f4916, var_378ccead, var_6a43b028, var_dc4b1f63, var_9a9ac320, var_ca2325b, var_e69fb7f2, "exterior_hack_trig_right_1_finished", "hack_01_1_volume", "aquifer_zone_1_right", "right_pad_volume");
}

/*
	Name: function_254b71e5
	Namespace: namespace_4a128b5f
	Checksum: 0xE07BD2FE
	Offset: 0x2798
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_254b71e5()
{
	level namespace_ad23e503::function_1ab5ebec("flag_port_land_enemy_shift1");
}

/*
	Name: function_6c135aa8
	Namespace: namespace_4a128b5f
	Checksum: 0xFD4ED0AA
	Offset: 0x27C8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_6c135aa8()
{
	function_7a078777(self);
}

/*
	Name: function_e8e3d4b4
	Namespace: namespace_4a128b5f
	Checksum: 0xBBF6F8FD
	Offset: 0x27F0
	Size: 0x2EB
	Parameters: 16
	Flags: None
*/
function function_e8e3d4b4(var_7e8d0707, var_ad23e503, var_3ab33977, var_b96ae653, var_57b589ae, var_1543d260, var_874b419b, var_82491bec, var_f4508b27, var_35a5f3d4, var_a7ad630f, var_81aae8a6, var_e413e785, var_2b2ece93, var_735cecc8, var_7b82a236)
{
	level namespace_ad23e503::function_1ab5ebec(var_ad23e503);
	var_9ff423eb = function_6ada35ba(var_3ab33977, "targetname");
	var_9ff423eb function_175e6b8e(1);
	var_ee69678 = function_6ada35ba(var_2b2ece93, "targetname");
	var_2d7c1aa2 = function_6ada35ba(var_735cecc8, "targetname");
	var_35ef0ec1 = function_b8494651("axis");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e))
		{
			if(var_6b45b25e function_32fa5072(var_2d7c1aa2))
			{
				thread function_3b8a6405(var_6b45b25e, var_ee69678);
			}
		}
	}
	level namespace_ad23e503::function_1ab5ebec(var_b96ae653);
	thread function_1a2672d9(var_7e8d0707);
	thread function_346a6ba8(var_7e8d0707, var_9ff423eb, var_1543d260, var_874b419b, var_82491bec, var_f4508b27, var_35a5f3d4, var_a7ad630f, var_81aae8a6);
	level namespace_ad23e503::function_1ab5ebec(var_57b589ae);
	if(var_7e8d0707 == "port")
	{
		level notify("hash_c8354b43");
	}
	if(var_7e8d0707 == "residential")
	{
		level notify("hash_952639a0");
	}
	thread function_ecb1c055(var_735cecc8, var_7b82a236);
}

/*
	Name: function_1a2672d9
	Namespace: namespace_4a128b5f
	Checksum: 0xF150B1D3
	Offset: 0x2AE8
	Size: 0x7A3
	Parameters: 1
	Flags: None
*/
function function_1a2672d9(var_7e8d0707)
{
	if(var_7e8d0707 == "port")
	{
		var_22ae8d39 = function_6ada35ba("kayne_hacking_left", "targetname");
		wait(30);
		namespace_80983c42::function_80983c42("hack01_stage01");
		var_22ae8d39 function_c2931a36("evt_tower_sparks_lyr_01");
		wait(10);
		namespace_80983c42::function_80983c42("hack01_stage02");
		var_22ae8d39 function_c2931a36("evt_tower_sparks_lyr_02");
		wait(10);
		namespace_80983c42::function_80983c42("hack01_stage03");
		var_22ae8d39 function_c2931a36("evt_tower_sparks_lyr_03");
		wait(10);
		namespace_80983c42::function_80983c42("hack01_stage04");
		var_22ae8d39 function_c2931a36("evt_tower_sparks_lyr_04");
		function_37cbcf1a("evt_tower_overload", var_22ae8d39.var_722885f3);
		wait(10);
		namespace_80983c42::function_80983c42("hack01_stage05");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			function_37cbcf1a("evt_exp_electrical", var_22ae8d39.var_722885f3);
			var_5dc5e20a function_e2af603e("tank_damage_heavy_mp");
			function_9cf04c2e(0.35, 0.5, var_5dc5e20a.var_722885f3, 325);
		}
		wait(5);
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			function_37cbcf1a("evt_exp_electrical", var_22ae8d39.var_722885f3);
			var_5dc5e20a function_e2af603e("tank_damage_heavy_mp");
			function_9cf04c2e(0.75, 0.7, var_5dc5e20a.var_722885f3, 325);
		}
		var_22ae8d39 function_eaa69754(0.1);
		namespace_80983c42::function_593e8a39("hack01_stage01");
		namespace_80983c42::function_593e8a39("hack01_stage02");
		namespace_80983c42::function_593e8a39("hack01_stage03");
		namespace_80983c42::function_593e8a39("hack01_stage04");
	}
	if(var_7e8d0707 == "residential")
	{
		var_22ae8d39 = function_6ada35ba("kayne_hacking_right", "targetname");
		wait(30);
		namespace_80983c42::function_80983c42("hack02_stage01");
		var_22ae8d39 function_c2931a36("evt_tower_sparks_lyr_01");
		wait(10);
		namespace_80983c42::function_80983c42("hack02_stage02");
		var_22ae8d39 function_c2931a36("evt_tower_sparks_lyr_02");
		wait(10);
		namespace_80983c42::function_80983c42("hack02_stage03");
		var_22ae8d39 function_c2931a36("evt_tower_sparks_lyr_03");
		wait(10);
		namespace_80983c42::function_80983c42("hack02_stage04");
		var_22ae8d39 function_c2931a36("evt_tower_sparks_lyr_04");
		function_37cbcf1a("evt_tower_overload", var_22ae8d39.var_722885f3);
		wait(10);
		namespace_80983c42::function_80983c42("hack02_stage05");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			function_37cbcf1a("evt_exp_electrical", var_22ae8d39.var_722885f3);
			var_5dc5e20a function_e2af603e("tank_damage_heavy_mp");
			function_9cf04c2e(0.45, 0.5, var_5dc5e20a.var_722885f3, 325);
		}
		wait(5);
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			function_37cbcf1a("evt_exp_electrical", var_22ae8d39.var_722885f3);
			var_5dc5e20a function_e2af603e("tank_damage_heavy_mp");
			function_9cf04c2e(0.8, 1, var_5dc5e20a.var_722885f3, 400);
		}
		var_22ae8d39 function_eaa69754(0.1);
		namespace_80983c42::function_593e8a39("hack02_stage01");
		namespace_80983c42::function_593e8a39("hack02_stage02");
		namespace_80983c42::function_593e8a39("hack02_stage03");
		namespace_80983c42::function_593e8a39("hack02_stage04");
	}
}

/*
	Name: function_346a6ba8
	Namespace: namespace_4a128b5f
	Checksum: 0x22656ADA
	Offset: 0x3298
	Size: 0x7C3
	Parameters: 9
	Flags: None
*/
function function_346a6ba8(var_7e8d0707, var_9ff423eb, var_1543d260, var_874b419b, var_82491bec, var_f4508b27, var_35a5f3d4, var_a7ad630f, var_81aae8a6)
{
	level endon("hash_2ba72bcb");
	if(var_7e8d0707 == "residential")
	{
		level notify("hash_ac35b0bd");
		thread function_c8bb3155("vol_res_defend_kayne", "exterior_hack_trig_right_1_finished");
	}
	if(var_7e8d0707 == "port")
	{
		level notify("hash_794b04e");
		thread function_c8bb3155("vol_port_defend_kayne", "exterior_hack_trig_left_1_finished");
	}
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 namespace_d84e54db::function_b4f5e3b9(1);
	}
	while(1)
	{
		wait(1);
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 1)
		{
			if(isdefined(level.var_89ea8991) && function_5b49d38c(level.var_89ea8991) && level.var_260a842b == 1)
			{
				namespace_9f824288::function_5d2cdd99();
				thread function_810caddd();
			}
			namespace_d5067552::function_bae40a28(var_35a5f3d4);
			wait(4);
			if(var_7e8d0707 == "residential")
			{
				level.var_89ea8991 thread namespace_71b8dba1::function_81141386("kane_multiple_contacts_r_0");
			}
			if(var_7e8d0707 == "port")
			{
				level.var_89ea8991 thread namespace_71b8dba1::function_81141386("kane_more_enemies_coming_0");
			}
			namespace_4dbf3ae3::function_42e87952(var_1543d260, "targetname");
			if(isdefined(var_82491bec) && level.var_2395e945.size > 1 && function_a6748659())
			{
				var_c82fd082 = namespace_96fa87af::function_af70b4e0(var_82491bec);
				var_c82fd082 thread namespace_96fa87af::function_edb3a94e(var_c82fd082.var_b07228b6);
			}
			break;
		}
		wait(0.25);
	}
	while(1)
	{
		wait(1);
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 30)
		{
			if(var_7e8d0707 == "port")
			{
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_more_ground_troops_1");
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_watch_my_six_0");
			}
			wait(3);
			if(var_7e8d0707 == "port")
			{
				thread function_ced14faf();
			}
			if(var_7e8d0707 == "residential")
			{
				thread function_78d6fd02();
			}
			break;
		}
		wait(0.25);
	}
	while(1)
	{
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 50)
		{
			level notify("hash_213353eb");
			if(var_7e8d0707 == "residential")
			{
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_good_job_keep_watch_1");
			}
			if(var_7e8d0707 == "port")
			{
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_i_m_halfway_there_k_1");
			}
			namespace_d5067552::function_bae40a28(var_a7ad630f);
			if(isdefined(level.var_89ea8991) && function_5b49d38c(level.var_89ea8991) && level.var_260a842b == 1)
			{
				namespace_9f824288::function_5d2cdd99();
				thread function_810caddd();
			}
			namespace_4dbf3ae3::function_42e87952(var_874b419b, "targetname");
			if(isdefined(var_f4508b27) && level.var_2395e945.size > 2 && function_a6748659() && !isdefined(var_82491bec))
			{
				var_c82fd082 = namespace_96fa87af::function_af70b4e0(var_f4508b27);
				var_c82fd082 thread namespace_96fa87af::function_edb3a94e(var_c82fd082.var_b07228b6);
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_watch_out_for_drones_1");
			}
			wait(3);
			if(var_7e8d0707 == "residential")
			{
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_tangos_above_us_dea_0");
			}
			if(var_7e8d0707 == "port")
			{
				level namespace_71b8dba1::function_a463d127("hend_look_out_they_re_dr_0");
			}
			break;
		}
		wait(0.25);
	}
	while(1)
	{
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 65)
		{
			if(var_7e8d0707 == "residential")
			{
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_getting_close_1");
			}
			if(var_7e8d0707 == "port")
			{
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_almost_there_1");
			}
			namespace_d5067552::function_bae40a28(var_81aae8a6);
			wait(2);
			if(var_7e8d0707 == "residential")
			{
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_watch_out_for_drones_1");
			}
			break;
		}
		wait(0.25);
	}
	while(1)
	{
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 85)
		{
			if(var_7e8d0707 == "residential")
			{
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_nearly_done_1");
			}
			if(var_7e8d0707 == "port")
			{
				level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_just_a_little_more_1");
			}
			break;
		}
		wait(0.25);
	}
}

/*
	Name: function_810caddd
	Namespace: namespace_4a128b5f
	Checksum: 0x8157E5CF
	Offset: 0x3A68
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_810caddd()
{
	level namespace_ad23e503::function_74d6b22f("flag_aqu_save_state");
	wait(5);
	level namespace_ad23e503::function_9d134160("flag_aqu_save_state");
}

/*
	Name: function_1c36248b
	Namespace: namespace_4a128b5f
	Checksum: 0x8465D8EC
	Offset: 0x3AB8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_1c36248b()
{
	self endon("hash_128f8789");
	self function_c7708f99("defend_hunters");
	self.var_d3f57f67 = 1;
	function_67df0abc("players_ground", "defend_hunters");
	while(function_a6748659())
	{
		wait(0.5);
	}
	self namespace_d84e54db::function_b4f5e3b9(1);
	var_93975dbf = function_6ada35ba("zone01_hunter_goal", "targetname");
	self function_500dc2f7(32);
	self function_c985552d(var_93975dbf.var_722885f3, 1);
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
}

/*
	Name: function_a6748659
	Namespace: namespace_4a128b5f
	Checksum: 0x2554A924
	Offset: 0x3BE8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_a6748659()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a namespace_84eb777e::function_2ccd041c())
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_c8bb3155
	Namespace: namespace_4a128b5f
	Checksum: 0xB650A79F
	Offset: 0x3C88
	Size: 0x20F
	Parameters: 2
	Flags: None
*/
function function_c8bb3155(var_bc601a70, var_ad23e503)
{
	level endon("hash_221e0b70");
	var_368eea5 = function_6ada35ba(var_bc601a70, "targetname");
	thread function_5d498f22();
	var_e015a244 = 0;
	var_ac95a522 = 0;
	level.var_260a842b = 0;
	while(!namespace_ad23e503::function_7922262b(var_ad23e503))
	{
		if(!function_5b49d38c(level.var_89ea8991))
		{
			return;
		}
		if(namespace_82b91a51::function_f08b9be6(var_368eea5, "allies"))
		{
			var_ac95a522 = 0;
			level namespace_ad23e503::function_9d134160("flag_kayne_vulnerable");
			if(!var_e015a244)
			{
				level.var_89ea8991 namespace_82b91a51::function_958c7633();
				level notify("hash_78a213c8");
				var_e015a244 = 1;
				level.var_260a842b = 1;
			}
		}
		else if(!namespace_82b91a51::function_f08b9be6(var_368eea5, "allies"))
		{
			while(namespace_ad23e503::function_7922262b("flag_aqu_save_state"))
			{
				wait(0.25);
			}
			var_e015a244 = 0;
			if(!var_ac95a522)
			{
				level.var_89ea8991 thread function_f5a137d2();
				level.var_89ea8991 function_c7708f99("players_vtol");
				var_ac95a522 = 1;
				level.var_260a842b = 0;
			}
			level namespace_ad23e503::function_74d6b22f("flag_kayne_vulnerable");
		}
		wait(0.5);
	}
}

/*
	Name: function_f5a137d2
	Namespace: namespace_4a128b5f
	Checksum: 0x8469F1C9
	Offset: 0x3EA0
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_f5a137d2()
{
	level endon("hash_78a213c8");
	level endon("hash_221e0b70");
	level.var_89ea8991 namespace_82b91a51::function_4b741fdc();
	level.var_89ea8991.var_3a90f16b = 999999;
	level thread function_2a977ecd();
	for(var_8a44a2d4 = 0; var_8a44a2d4 < 5; var_8a44a2d4++)
	{
		self waittill("hash_f9348fda");
	}
	level notify("hash_2ba72bcb");
	level.var_89ea8991 namespace_d84e54db::function_8c969347();
	namespace_82b91a51::function_207f8667(&"CP_MI_CAIRO_AQUIFER_KANEKILLED", &"CP_MI_CAIRO_AQUIFER_PROTECT_FAIL");
}

/*
	Name: function_2a977ecd
	Namespace: namespace_4a128b5f
	Checksum: 0x326A86E1
	Offset: 0x3F88
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2a977ecd()
{
	level notify("hash_b084268c");
	level endon("hash_b084268c");
	level waittill("hash_221e0b70");
	level.var_89ea8991 namespace_82b91a51::function_958c7633();
}

/*
	Name: function_5d498f22
	Namespace: namespace_4a128b5f
	Checksum: 0xA1C73746
	Offset: 0x3FD8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_5d498f22()
{
	level endon("hash_221e0b70");
	level endon("hash_2ba72bcb");
	var_687c3dc4 = 0;
	var_a7254166 = [];
	var_a7254166[var_a7254166.size] = "kane_what_the_hell_are_yo_1";
	var_a7254166[var_a7254166.size] = "kane_where_are_you_going_1";
	var_a7254166[var_a7254166.size] = "kane_hey_watch_my_six_0";
	while(1)
	{
		while(level namespace_ad23e503::function_7922262b("flag_kayne_vulnerable"))
		{
			wait(1);
			var_69e9781d = namespace_84970cc4::function_47d18840(var_a7254166);
			level.var_89ea8991 namespace_71b8dba1::function_81141386(var_69e9781d);
			if(!var_687c3dc4)
			{
				level notify("hash_67e6e842");
			}
			var_687c3dc4 = 1;
			wait(3);
		}
		wait(0.75);
	}
}

/*
	Name: function_ced14faf
	Namespace: namespace_4a128b5f
	Checksum: 0xF908EA86
	Offset: 0x4100
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_ced14faf()
{
	var_2d7c1aa2 = function_6ada35ba("hack_01_2_volume", "targetname");
	var_5bb53a30 = function_6ada35ba("pre_hack_01_2_volume", "targetname");
	var_35ef0ec1 = function_b8494651("axis");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(var_6b45b25e function_32fa5072(var_2d7c1aa2))
		{
			thread function_3b8a6405(var_6b45b25e, var_5bb53a30);
		}
	}
}

/*
	Name: function_78d6fd02
	Namespace: namespace_4a128b5f
	Checksum: 0xC91672A1
	Offset: 0x4240
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_78d6fd02()
{
	var_2d7c1aa2 = function_6ada35ba("hack_01_1_volume", "targetname");
	var_5bb53a30 = function_6ada35ba("hack_01_1_volume2", "targetname");
	var_35ef0ec1 = function_b8494651("axis");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(var_6b45b25e function_32fa5072(var_2d7c1aa2))
		{
			thread function_3b8a6405(var_6b45b25e, var_5bb53a30);
		}
	}
}

/*
	Name: function_ecb1c055
	Namespace: namespace_4a128b5f
	Checksum: 0xEF749045
	Offset: 0x4380
	Size: 0x189
	Parameters: 3
	Flags: None
*/
function function_ecb1c055(var_4897ec9f, var_5bb53a30, var_64f17a00)
{
	var_2d7c1aa2 = function_6ada35ba(var_4897ec9f, "targetname");
	var_68586610 = function_6ada35ba(var_5bb53a30, "targetname");
	var_35ef0ec1 = function_b8494651("axis");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(var_6b45b25e function_32fa5072(var_2d7c1aa2))
		{
			if(function_5b49d38c(var_6b45b25e))
			{
				thread function_3b8a6405(var_6b45b25e, var_68586610);
				if(isdefined(var_64f17a00) && var_64f17a00 == 1)
				{
					thread function_10e80b01(var_6b45b25e, 2);
				}
			}
		}
	}
}

/*
	Name: function_10e80b01
	Namespace: namespace_4a128b5f
	Checksum: 0x441ADAE3
	Offset: 0x4518
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_10e80b01(var_6b45b25e, var_67520c6a)
{
	wait(var_67520c6a);
	if(function_5b49d38c(var_6b45b25e))
	{
		var_6b45b25e function_dc8c8404();
	}
}

/*
	Name: function_1ce3cac0
	Namespace: namespace_4a128b5f
	Checksum: 0xDF6B7A77
	Offset: 0x4570
	Size: 0x489
	Parameters: 7
	Flags: None
*/
function function_1ce3cac0(var_ad23e503, var_b96ae653, var_3ab33977, var_82122952, var_e413e785, var_b96b1ea0, var_1acd98f5)
{
	level namespace_ad23e503::function_1ab5ebec(var_ad23e503);
	var_9ff423eb = function_6ada35ba(var_3ab33977, "targetname");
	var_9ff423eb function_175e6b8e(1);
	namespace_d5067552::function_bae40a28(var_82122952);
	level namespace_ad23e503::function_1ab5ebec(var_e413e785);
	namespace_d5067552::function_54bdb053(var_82122952);
	var_bc601a70 = undefined;
	if(isdefined(var_b96b1ea0))
	{
		var_bc601a70 = function_6ada35ba(var_b96b1ea0, "targetname");
	}
	if(isdefined(var_bc601a70))
	{
		var_bc67f3a7 = namespace_d5067552::function_423eae50(var_82122952);
		foreach(var_643a4c5 in var_bc67f3a7)
		{
			var_643a4c5 function_dec5be9a();
			var_643a4c5 function_fb5720f7();
			var_643a4c5 function_e11ce512();
			thread function_3b8a6405(var_643a4c5, var_bc601a70);
		}
	}
	else if(isdefined(level.var_6657ee03) && isdefined(var_1acd98f5))
	{
		if(var_1acd98f5 == "volume_egyptian_zone02_4")
		{
			var_9a40e982 = namespace_14b42b8a::function_7faf4c39("egyptian_defenders_tele", "targetname");
			var_71dd83fd = 0;
			foreach(var_6b45b25e in level.var_6657ee03)
			{
				for(var_5c275e8c = 0; var_5c275e8c < 20; var_5c275e8c++)
				{
					if(function_5b49d38c(var_6b45b25e))
					{
						if(var_6b45b25e function_f58fccb8(var_9a40e982[var_71dd83fd].var_722885f3, var_9a40e982[var_71dd83fd].var_6ab6f4fd))
						{
							break;
						}
					}
					wait(0.05);
				}
				var_71dd83fd++;
			}
		}
		var_bc601a70 = function_6ada35ba(var_1acd98f5, "targetname");
		if(isdefined(var_bc601a70))
		{
			foreach(var_643a4c5 in level.var_6657ee03)
			{
				if(function_5b49d38c(var_643a4c5))
				{
					var_643a4c5 function_dec5be9a();
					var_643a4c5 function_fb5720f7();
					var_643a4c5 function_e11ce512();
					thread function_3b8a6405(var_643a4c5, var_bc601a70);
				}
			}
		}
	}
}

/*
	Name: function_34ad69d9
	Namespace: namespace_4a128b5f
	Checksum: 0xF6D7EC0A
	Offset: 0x4A08
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_34ad69d9(var_5948b3df)
{
	var_e78c0153 = function_6ada35ba(var_5948b3df, "targetname");
	var_e78c0153 waittill("hash_4dbf3ae3");
	if(isdefined(var_e78c0153.var_62978788))
	{
		level namespace_ad23e503::function_74d6b22f(var_e78c0153.var_62978788);
	}
}

/*
	Name: function_ada56725
	Namespace: namespace_4a128b5f
	Checksum: 0x4ECF8A1D
	Offset: 0x4A90
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_ada56725()
{
	var_14b42b8a = function_6ada35ba("kayne_hacking_right", "targetname");
	var_5948b3df = function_6ada35ba("right_hack_use_trig", "targetname");
	var_5948b3df waittill("hash_ece70538", var_f61bb5ae);
	if(isdefined(level.var_11177797))
	{
		level thread [[level.var_11177797]]();
	}
	var_525aea1a = namespace_14b42b8a::function_b7af54ae("scene", "cin_aqu_01_20_towerright_1st_panelrip");
	if(isdefined(var_525aea1a) && isdefined(var_525aea1a.var_485299d7) && var_525aea1a.var_485299d7.size > 0)
	{
		var_525aea1a.var_485299d7[0].var_8e1e3819 = 1;
	}
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_01_20_towerright_1st_panelrip", var_f61bb5ae);
	level namespace_ad23e503::function_74d6b22f("flag_player_right_tower_done");
	thread function_ad2882a8();
}

/*
	Name: function_ad2882a8
	Namespace: namespace_4a128b5f
	Checksum: 0xEF2686E3
	Offset: 0x4C08
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_ad2882a8()
{
	level endon("hash_2ba72bcb");
	var_14b42b8a = function_6ada35ba("kayne_hacking_right", "targetname");
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_01_20_towerright_vign_overload_enter", level.var_89ea8991);
	level notify("hash_571aa0aa");
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_01_20_towerright_vign_overload_main", level.var_89ea8991);
	level namespace_ad23e503::function_1ab5ebec("exterior_hack_trig_right_1_finished");
	level namespace_ad23e503::function_9d134160("kayne_starts_overload");
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_01_20_towerright_vign_overload_exit", level.var_89ea8991);
	if(!level namespace_ad23e503::function_7922262b("exterior_hack_trig_left_1_finished"))
	{
		level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_comms_down_let_s_ge_0");
		level thread function_36a1fd93();
	}
	if(isdefined(level.var_89ea8991) && function_5b49d38c(level.var_89ea8991) && !namespace_ad23e503::function_7922262b("flag_kayne_vulnerable"))
	{
		wait(0.05);
		level.var_89ea8991 namespace_82b91a51::function_958c7633();
		namespace_9f824288::function_5d2cdd99();
	}
	wait(0.25);
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 namespace_d84e54db::function_b4f5e3b9(0);
	}
	level notify("hash_221e0b70");
}

/*
	Name: function_36a1fd93
	Namespace: namespace_4a128b5f
	Checksum: 0x6449FB38
	Offset: 0x4E18
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_36a1fd93()
{
	level namespace_71b8dba1::function_a463d127("hend_we_ve_got_more_quad_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_on_our_way_0", 0.25);
}

/*
	Name: function_f9e22dfc
	Namespace: namespace_4a128b5f
	Checksum: 0x6323038D
	Offset: 0x4E70
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_f9e22dfc()
{
	var_14b42b8a = function_6ada35ba("kayne_hacking_left", "targetname");
	var_5948b3df = function_6ada35ba("left_hack_use_trig", "targetname");
	var_5948b3df waittill("hash_ece70538", var_f61bb5ae);
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_01_20_towerleft_1st_panelrip", var_f61bb5ae);
	level namespace_ad23e503::function_74d6b22f("flag_player_left_tower_done");
	thread function_9b151b9b();
}

/*
	Name: function_9b151b9b
	Namespace: namespace_4a128b5f
	Checksum: 0xA68842DE
	Offset: 0x4F48
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_9b151b9b()
{
	level endon("hash_2ba72bcb");
	var_14b42b8a = function_6ada35ba("kayne_hacking_left", "targetname");
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_01_20_towerleft_vign_overload_enter", level.var_89ea8991);
	level notify("hash_571aa0aa");
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_01_20_towerleft_vign_overload_main", level.var_89ea8991);
	level namespace_ad23e503::function_1ab5ebec("exterior_hack_trig_left_1_finished");
	level namespace_ad23e503::function_9d134160("kayne_starts_overload");
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_01_20_towerleft_vign_overload_exit", level.var_89ea8991);
	if(!level namespace_ad23e503::function_7922262b("exterior_hack_trig_right_1_finished"))
	{
		level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_enemy_comms_cut_we_0");
		level thread function_36a1fd93();
	}
	if(isdefined(level.var_89ea8991) && function_5b49d38c(level.var_89ea8991) && !namespace_ad23e503::function_7922262b("flag_kayne_vulnerable"))
	{
		wait(0.05);
		level.var_89ea8991 namespace_82b91a51::function_958c7633();
		namespace_9f824288::function_5d2cdd99();
	}
	wait(0.25);
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 namespace_d84e54db::function_b4f5e3b9(0);
	}
	level notify("hash_221e0b70");
}

/*
	Name: function_bd9f11ed
	Namespace: namespace_4a128b5f
	Checksum: 0x28E754A9
	Offset: 0x5158
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_bd9f11ed()
{
	thread function_66aabab2("notify_defend_hack1_started", "flag_kayne_at_hack1");
	thread function_f9e22dfc();
	thread function_f250176e();
	var_eec37b7b = -1;
	while(var_eec37b7b != 1)
	{
		level waittill("hash_2e0c12cd", var_5dc5e20a, var_eec37b7b);
	}
	level.var_89ea8991 = namespace_84eb777e::function_30343b22("kayne_hack1");
	wait(1);
	level namespace_ad23e503::function_1ab5ebec("finished_first_landing_vo");
	thread function_f83cec9b();
}

/*
	Name: function_f250176e
	Namespace: namespace_4a128b5f
	Checksum: 0x9A744B52
	Offset: 0x5238
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_f250176e()
{
	level namespace_ad23e503::function_1ab5ebec("exterior_hack_trig_left_1_started");
	level notify("hash_79051ffd");
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_this_will_take_some_0", 1);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_spread_out_don_t_ge_0", 4);
	wait(1);
	level namespace_ad23e503::function_1ab5ebec("exterior_hack_trig_left_1_finished");
	wait(1);
	namespace_d5067552::function_bae40a28("spawn_manager_takeoff_port");
	namespace_4dbf3ae3::function_42e87952("kayne_colors_left_takeoff", "targetname");
	wait(1);
	var_eec37b7b = -1;
	while(var_eec37b7b != 1)
	{
		level waittill("hash_8d91bdcf", var_5dc5e20a, var_eec37b7b);
	}
	if(isdefined(level.var_89ea8991) && level.var_1226dab0 == 0)
	{
		level.var_89ea8991 function_dc8c8404();
	}
}

/*
	Name: function_f83cec9b
	Namespace: namespace_4a128b5f
	Checksum: 0x6CF46987
	Offset: 0x5398
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f83cec9b()
{
	level endon("hash_79051ffd");
	wait(5);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_cover_to_cover_up_t_0");
	wait(3);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_clean_up_remaining_t_0");
}

/*
	Name: function_e3a18c56
	Namespace: namespace_4a128b5f
	Checksum: 0x9CA85130
	Offset: 0x5400
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_e3a18c56()
{
	thread function_66aabab2("notify_defend_hack2_started", "flag_kayne_at_hack2");
	thread function_ada56725();
	thread function_932a5979();
	var_eec37b7b = -1;
	while(var_eec37b7b != 2)
	{
		level waittill("hash_2e0c12cd", var_5dc5e20a, var_eec37b7b);
	}
	level.var_89ea8991 = namespace_84eb777e::function_30343b22("kayne_hack2");
	wait(1);
	level namespace_ad23e503::function_1ab5ebec("finished_first_landing_vo");
	thread function_db00cade();
}

/*
	Name: function_db00cade
	Namespace: namespace_4a128b5f
	Checksum: 0xA80E6CB3
	Offset: 0x54E0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_db00cade()
{
	level endon("hash_bd6f4584");
	wait(3);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_push_forward_0");
	wait(5);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_get_moving_i_ll_cov_0");
	wait(8);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_the_array_is_just_up_0");
}

/*
	Name: function_932a5979
	Namespace: namespace_4a128b5f
	Checksum: 0xC0542043
	Offset: 0x5570
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_932a5979()
{
	level namespace_ad23e503::function_1ab5ebec("exterior_hack_trig_right_1_started");
	level notify("hash_bd6f4584");
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_i_can_take_it_from_h_0", 1);
	level namespace_ad23e503::function_1ab5ebec("exterior_hack_trig_right_1_finished");
	wait(1);
	namespace_d5067552::function_bae40a28("spawn_manager_takeoff_residential");
	namespace_4dbf3ae3::function_42e87952("kayne_colors_right_takeoff", "targetname");
	var_eec37b7b = -1;
	while(var_eec37b7b != 2)
	{
		level waittill("hash_8d91bdcf", var_5dc5e20a, var_eec37b7b);
	}
	if(isdefined(level.var_89ea8991) && level.var_1226dab0 == 0)
	{
		level.var_89ea8991 function_dc8c8404();
	}
}

/*
	Name: function_44f51c2d
	Namespace: namespace_4a128b5f
	Checksum: 0x73DB9126
	Offset: 0x56A0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_44f51c2d()
{
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("exterior_hack_trig_right_1_finished", "exterior_hack_trig_left_1_finished"));
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_mission_complete_le_0", 2);
}

/*
	Name: function_66aabab2
	Namespace: namespace_4a128b5f
	Checksum: 0x12F88741
	Offset: 0x5708
	Size: 0x265
	Parameters: 2
	Flags: None
*/
function function_66aabab2(var_b031addf, var_ad23e503)
{
	level endon(var_b031addf);
	level namespace_ad23e503::function_1ab5ebec(var_ad23e503);
	if(!isdefined(level.var_518d7942))
	{
		level.var_518d7942 = [];
		if(!isdefined(level.var_518d7942))
		{
			level.var_518d7942 = [];
		}
		else if(!function_6e2770d8(level.var_518d7942))
		{
			level.var_518d7942 = function_84970cc4(level.var_518d7942);
		}
		level.var_518d7942[level.var_518d7942.size] = "kane_boot_up_the_array_0";
		if(!isdefined(level.var_518d7942))
		{
			level.var_518d7942 = [];
		}
		else if(!function_6e2770d8(level.var_518d7942))
		{
			level.var_518d7942 = function_84970cc4(level.var_518d7942);
		}
		level.var_518d7942[level.var_518d7942.size] = "kane_start_the_process_0";
		if(!isdefined(level.var_518d7942))
		{
			level.var_518d7942 = [];
		}
		else if(!function_6e2770d8(level.var_518d7942))
		{
			level.var_518d7942 = function_84970cc4(level.var_518d7942);
		}
		level.var_518d7942[level.var_518d7942.size] = "kane_start_the_overload_p_0";
	}
	var_364c5984 = function_84970cc4(1, 8, 15);
	var_d44c15f4 = function_41f575c3(level.var_518d7942);
	for(var_4f8217af = 0; var_4f8217af < var_d44c15f4.size; var_4f8217af++)
	{
		wait(var_364c5984[var_4f8217af]);
		namespace_84970cc4::function_8fdf50c0(level.var_518d7942, var_4f8217af);
		level.var_89ea8991 namespace_71b8dba1::function_81141386(var_d44c15f4[var_4f8217af]);
	}
}

/*
	Name: function_3b8a6405
	Namespace: namespace_4a128b5f
	Checksum: 0xCB32C3B6
	Offset: 0x5978
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function function_3b8a6405(var_643a4c5, var_bc601a70)
{
	var_643a4c5 endon("hash_128f8789");
	var_643a4c5 function_dec5be9a();
	var_643a4c5 function_fb5720f7();
	var_643a4c5 function_e11ce512();
	var_643a4c5 namespace_d84e54db::function_b4f5e3b9(1);
	wait(0.05);
	var_643a4c5 function_86408aa8(var_bc601a70);
	var_643a4c5 namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_5f0c85a2
	Namespace: namespace_4a128b5f
	Checksum: 0x8B41E4A2
	Offset: 0x5A38
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_5f0c85a2()
{
	thread function_f065e00e();
	thread function_790839b7();
	thread function_d123f7f2();
	thread function_36f5a1f4();
	thread function_4e5e42a9();
	thread function_5bda03b6();
	level namespace_ad23e503::function_1ab5ebec("flag_egyptian_hacking_completed");
}

/*
	Name: function_f065e00e
	Namespace: namespace_4a128b5f
	Checksum: 0x9132A007
	Offset: 0x5AC8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_f065e00e()
{
	level namespace_ad23e503::function_1ab5ebec("destroy_defenses_completed");
	var_35ef0ec1 = namespace_2f06d687::function_289e6fd1("dummy_runners_01");
	if(isdefined(var_35ef0ec1))
	{
		thread function_dd1c4e18(var_35ef0ec1);
	}
}

/*
	Name: function_2d0258ff
	Namespace: namespace_4a128b5f
	Checksum: 0x7121EAA5
	Offset: 0x5B40
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2d0258ff()
{
	var_b56f2b95 = namespace_2f06d687::function_289e6fd1("zone01_rpgs");
	if(isdefined(var_b56f2b95))
	{
		thread function_dd1c4e18(var_b56f2b95);
	}
}

/*
	Name: function_790839b7
	Namespace: namespace_4a128b5f
	Checksum: 0xD6F76FDE
	Offset: 0x5B98
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_790839b7()
{
	var_eec37b7b = -1;
	while(var_eec37b7b != 1)
	{
		level waittill("hash_2e0c12cd", var_5dc5e20a, var_eec37b7b);
	}
	var_e27965fa = namespace_d5067552::function_423eae50("spawn_manager_zone01b");
	thread function_dd1c4e18(var_e27965fa);
}

/*
	Name: function_d123f7f2
	Namespace: namespace_4a128b5f
	Checksum: 0xCACF66FE
	Offset: 0x5C20
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d123f7f2()
{
	var_eec37b7b = -1;
	while(var_eec37b7b != 2)
	{
		level waittill("hash_2e0c12cd", var_5dc5e20a, var_eec37b7b);
	}
	var_e27965fa = namespace_d5067552::function_423eae50("spawn_manager_zone01");
	thread function_dd1c4e18(var_e27965fa);
}

/*
	Name: function_4e5e42a9
	Namespace: namespace_4a128b5f
	Checksum: 0x608A0A13
	Offset: 0x5CA8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_4e5e42a9()
{
	level namespace_ad23e503::function_1ab5ebec("hack_terminal_left_completed");
	level waittill("hash_8d91bdcf");
	var_e27965fa = namespace_d5067552::function_423eae50("spawn_manager_zone01");
	thread function_dd1c4e18(var_e27965fa);
	var_bc76eb91 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_2_wave1");
	thread function_dd1c4e18(var_bc76eb91);
	var_96747128 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_2_wave2");
	thread function_dd1c4e18(var_96747128);
	var_a085ca07 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_2_wave3");
	thread function_dd1c4e18(var_a085ca07);
	var_7a834f9e = namespace_d5067552::function_423eae50("spawn_manager_land_port");
	thread function_dd1c4e18(var_7a834f9e);
	var_5480d535 = namespace_d5067552::function_423eae50("spawn_manager_takeoff_port");
	thread function_dd1c4e18(var_5480d535);
}

/*
	Name: function_36f5a1f4
	Namespace: namespace_4a128b5f
	Checksum: 0x2BD65750
	Offset: 0x5E38
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_36f5a1f4()
{
	level namespace_ad23e503::function_1ab5ebec("hack_terminal_right_completed");
	level waittill("hash_8d91bdcf");
	var_e27965fa = namespace_d5067552::function_423eae50("spawn_manager_zone01b");
	thread function_dd1c4e18(var_e27965fa);
	var_bc76eb91 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_1_wave1");
	thread function_dd1c4e18(var_bc76eb91);
	var_96747128 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_1_wave2");
	thread function_dd1c4e18(var_96747128);
	var_a085ca07 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_1_wave3");
	thread function_dd1c4e18(var_a085ca07);
	var_7a834f9e = namespace_d5067552::function_423eae50("spawn_manager_land_residential");
	thread function_dd1c4e18(var_7a834f9e);
	var_5480d535 = namespace_d5067552::function_423eae50("spawn_manager_takeoff_residential");
	thread function_dd1c4e18(var_5480d535);
}

/*
	Name: function_5bda03b6
	Namespace: namespace_4a128b5f
	Checksum: 0x6EDB2DEF
	Offset: 0x5FC8
	Size: 0x27D
	Parameters: 0
	Flags: None
*/
function function_5bda03b6()
{
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("hack_terminal_right_completed", "hack_terminal_left_completed"));
	level waittill("hash_8d91bdcf");
	var_e27965fa = namespace_d5067552::function_423eae50("spawn_manager_zone01");
	thread function_dd1c4e18(var_e27965fa);
	var_bc76eb91 = namespace_d5067552::function_423eae50("spawn_manager_zone01");
	thread function_dd1c4e18(var_bc76eb91);
	var_96747128 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_1_wave1");
	thread function_dd1c4e18(var_96747128);
	var_a085ca07 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_1_wave2");
	thread function_dd1c4e18(var_a085ca07);
	var_7a834f9e = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_1_wave3");
	thread function_dd1c4e18(var_7a834f9e);
	var_5480d535 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_2_wave1");
	thread function_dd1c4e18(var_5480d535);
	var_2e7e5acc = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_2_wave2");
	thread function_dd1c4e18(var_2e7e5acc);
	var_d8680d1b = namespace_d5067552::function_423eae50("spawn_manager_hack_zone01_2_wave3");
	thread function_dd1c4e18(var_d8680d1b);
	var_62fd3a = 4;
	for(var_c957f6b6 = 1; var_c957f6b6 <= var_62fd3a; var_c957f6b6++)
	{
		var_1560b77d = namespace_2f06d687::function_289e6fd1("enemy_vtol_riders_" + var_c957f6b6);
		thread function_dd1c4e18(var_1560b77d);
	}
}

/*
	Name: function_dd1c4e18
	Namespace: namespace_4a128b5f
	Checksum: 0x499ED8A8
	Offset: 0x6250
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_dd1c4e18(var_35ef0ec1)
{
	wait(10);
	if(isdefined(var_35ef0ec1))
	{
		foreach(var_6b45b25e in var_35ef0ec1)
		{
			if(isdefined(var_6b45b25e))
			{
				var_6b45b25e function_2992720d();
			}
		}
	}
}

/*
	Name: function_c836830
	Namespace: namespace_4a128b5f
	Checksum: 0xEF469558
	Offset: 0x6308
	Size: 0x1F1
	Parameters: 3
	Flags: None
*/
function function_c836830(var_1b052e61, var_868a1dff, var_42aff43d)
{
	level namespace_ad23e503::function_1ab5ebec(var_868a1dff);
	var_11d8734e = 2;
	var_37d22dd = 1;
	if(var_1b052e61 == 2)
	{
		var_11d8734e = 6;
		var_37d22dd = 4;
	}
	var_35ef0ec1 = [];
	var_35ef0ec1 = namespace_d5067552::function_423eae50("spawn_manager_zone0" + var_1b052e61);
	while(var_37d22dd <= var_11d8734e)
	{
		var_1109dfe1 = "spawn_manager_hack_zone0" + var_1b052e61 + "_" + var_37d22dd;
		var_35ef0ec1 = function_525ae497(var_35ef0ec1, namespace_d5067552::function_423eae50(var_1109dfe1), 0, 0);
		namespace_d5067552::function_2992720d(var_1109dfe1);
		var_37d22dd++;
	}
	namespace_d5067552::function_2992720d("spawn_manager_zone0" + var_1b052e61, 1);
	wait(10);
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e))
		{
			var_6b45b25e function_dc8c8404();
		}
	}
}

