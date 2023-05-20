#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_outro;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_locomotion_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_29799936;

/*
	Name: function_d290ebfa
	Namespace: namespace_29799936
	Checksum: 0x5352C2A2
	Offset: 0xC10
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	namespace_cc27597::function_8f9f34e0("cin_zur_10_01_kruger_3rd_questioned_sh010", &function_7685bfc5, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_rock_slide_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "clearing_path_selected");
	level.var_c1aa5253["krueger_body_fx"] = "player/fx_ai_marker_body_kreuger";
	level.var_c1aa5253["krueger_beam_fx"] = "light/fx_beam_marker_kreuger";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_29799936
	Checksum: 0x755C076D
	Offset: 0xCD0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	var_c0e9f8c3 = function_eaa48678(5);
	namespace_71e9cb84::function_50f16166("world", "zurich_waterfall_bodies", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "clearing_vinewall_init", 1, var_c0e9f8c3, "int");
	namespace_71e9cb84::function_50f16166("world", "clearing_vinewall_open", 1, var_c0e9f8c3, "int");
}

/*
	Name: function_5bcd68f2
	Namespace: namespace_29799936
	Checksum: 0x916972B8
	Offset: 0xD98
	Size: 0x19B
	Parameters: 2
	Flags: None
*/
function function_5bcd68f2(var_b04bc952, var_74cd64bc)
{
	level namespace_8e9083ff::function_4d032f25(1, 0.5);
	namespace_2f06d687::function_2b37a3c9("raven_enemies_clearing_start", "script_aigroup", &function_a1a182e);
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_82b91a51::function_df6eb506, 1);
	level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
	if(var_74cd64bc)
	{
		namespace_82b91a51::function_d8eaed3d(3);
		level namespace_82b91a51::function_7e61de2b(0, "white");
	}
	level namespace_71e9cb84::function_74d6b22f("zurich_waterfall_bodies", 1);
	level namespace_71e9cb84::function_74d6b22f("clearing_vinewall_init", 5);
	level thread function_a3f52108(var_b04bc952);
	level thread namespace_67110270::function_82e83534();
}

/*
	Name: function_c68a0705
	Namespace: namespace_29799936
	Checksum: 0x2F2B7198
	Offset: 0xF40
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_c68a0705(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_a3f52108
	Namespace: namespace_29799936
	Checksum: 0xB5E0EB06
	Offset: 0xF70
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_a3f52108(var_b04bc952)
{
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_32cf3cd);
	var_4ccf970 = thread namespace_8e9083ff::function_a00fa665(var_b04bc952);
	level thread function_e8e4006f();
	level thread function_8727b592();
	level thread function_6a2abd6d();
	level namespace_ad23e503::function_74d6b22f("flag_clearing_start");
}

/*
	Name: function_a1a182e
	Namespace: namespace_29799936
	Checksum: 0x1EE52689
	Offset: 0x1038
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a1a182e()
{
	self.var_5e7a3967 = 1;
	self function_86408aa8(function_6ada35ba("clearing_start_defend_volume", "targetname"));
}

/*
	Name: function_6a2abd6d
	Namespace: namespace_29799936
	Checksum: 0xA18AA1AD
	Offset: 0x1088
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_6a2abd6d()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_clearing_enemy_cleanup");
	namespace_84970cc4::function_eaab05dc(function_c20c2e8("clearing_start_enemies", "script_noteworthy"), &function_dc8c8404);
}

/*
	Name: function_8727b592
	Namespace: namespace_29799936
	Checksum: 0xBB4C7D7A
	Offset: 0x10F0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_8727b592()
{
	level endon("hash_c83e0fe0");
	namespace_d5067552::function_72e3dd35("sm_clearing_enemy_spawn");
	namespace_d0ef8521::function_45d1556("clearing_start_breadcrumb_trig");
	namespace_d5067552::function_72e3dd35("sm_clearing_hill");
	namespace_d0ef8521::function_45d1556("clearing_hill_breadcrumb_trig");
}

/*
	Name: function_e8e4006f
	Namespace: namespace_29799936
	Checksum: 0x5A6C2ACB
	Offset: 0x1168
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_e8e4006f()
{
	namespace_cc27597::function_8f9f34e0("cin_zur_09_02_standoff_1st_forest", &function_5b75f492, "done");
	namespace_cc27597::function_8f9f34e0("cin_zur_09_02_standoff_1st_forest", &function_cf93f22a, "play");
	level namespace_cc27597::function_c35e6aab("cin_zur_09_02_standoff_1st_forest");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle", &function_7d18154f, "init");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
	wait(3);
	level thread namespace_82b91a51::function_593c2af4(2, "white");
	if(isdefined(level.var_9d5ca0ab))
	{
		level thread [[level.var_9d5ca0ab]]();
	}
	level thread namespace_cc27597::function_43718187("cin_zur_09_02_standoff_1st_forest");
}

/*
	Name: function_cf93f22a
	Namespace: namespace_29799936
	Checksum: 0x94A812C9
	Offset: 0x12A8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_cf93f22a(var_c77d2837)
{
	self thread function_4ac14422(var_c77d2837);
	var_c77d2837["corvus"] function_8c8e79fe();
	var_c77d2837["corvus"] waittill("hash_be812a65");
	var_c77d2837["corvus"] namespace_71e9cb84::function_74d6b22f("raven_ai_rez", 1);
	wait(0.5);
	var_c77d2837["corvus"] function_48f26766();
	var_c77d2837["corvus"] namespace_71e9cb84::function_74d6b22f("corvus_body_fx", 1);
	var_c77d2837["corvus"] waittill("hash_4cfd02d9");
	var_c77d2837["corvus"] namespace_71e9cb84::function_74d6b22f("raven_ai_rez", 0);
	var_c77d2837["corvus"] namespace_71e9cb84::function_74d6b22f("corvus_body_fx", 0);
	var_c77d2837["corvus"] function_8c8e79fe();
}

/*
	Name: function_44dc9752
	Namespace: namespace_29799936
	Checksum: 0x40A03C87
	Offset: 0x1420
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_44dc9752()
{
	namespace_cc27597::function_8f9f34e0("cin_zur_09_02_standoff_3rd_forest_part2_sh010", &function_eb4d9424, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_09_02_standoff_3rd_forest_part2_sh010", &namespace_8e9083ff::function_f3e247d6, "init");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_rock_slide_bundle");
	var_b35e56d0 = namespace_4dbf3ae3::function_1ab5ebec("t_waterfall_igc");
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	if(isdefined(level.var_4d62c9e3))
	{
		level thread [[level.var_4d62c9e3]]();
	}
	level namespace_cc27597::function_43718187("cin_zur_09_02_standoff_3rd_forest_part2_sh010", var_b35e56d0.var_aef176e7);
	level namespace_82b91a51::function_93831e79("clearing_waterfall_igc_end");
	namespace_82b91a51::function_a0938376();
	namespace_82b91a51::function_d8eaed3d(5);
	level waittill("hash_4e38f7bd");
	namespace_cc27597::function_8f9f34e0("cin_zur_10_01_kruger_3rd_questioned_sh010", &namespace_8e9083ff::function_f3e247d6, "init");
	level namespace_cc27597::function_c35e6aab("cin_zur_10_01_kruger_3rd_questioned_sh010");
}

/*
	Name: function_eb4d9424
	Namespace: namespace_29799936
	Checksum: 0x93FEF833
	Offset: 0x15E0
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_eb4d9424(var_c77d2837)
{
	var_f91fd6fe = var_c77d2837["kruger"];
	var_f91fd6fe waittill("hash_b172f51e");
	function_da6acfd2(level.var_c1aa5253["krueger_body_fx"], var_f91fd6fe, "j_spine4");
	level waittill("hash_89688662");
	function_da6acfd2(level.var_c1aa5253["krueger_beam_fx"], var_f91fd6fe, "tag_origin");
}

/*
	Name: function_5b75f492
	Namespace: namespace_29799936
	Checksum: 0xC1A8CDCE
	Offset: 0x1690
	Size: 0x139
	Parameters: 1
	Flags: None
*/
function function_5b75f492(var_c77d2837)
{
	level namespace_82b91a51::function_93831e79("clearing_start_intro_end");
	namespace_82b91a51::function_a0938376();
	namespace_9f824288::function_5d2cdd99();
	level namespace_cc27597::function_c35e6aab("cin_zur_09_02_standoff_3rd_forest_part2_sh010");
	level thread function_e0b4badc();
	level thread function_44dc9752();
	namespace_82b91a51::function_76f13293();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_5dc5e20a::function_51bdb647(1);
	}
}

/*
	Name: function_e0b4badc
	Namespace: namespace_29799936
	Checksum: 0xFE55F8D6
	Offset: 0x17D8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_e0b4badc()
{
	namespace_d5067552::function_bae40a28("sm_clearing_enemy_spawn");
	namespace_d5067552::function_347e835a("sm_clearing_enemy_spawn");
	level namespace_cc27597::function_43718187("cin_zur_09_01_standoff_vign_charge", namespace_d5067552::function_423eae50("sm_clearing_enemy_spawn"));
	namespace_d5067552::function_72e3dd35("sm_clearing_enemy_spawn");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_32cf3cd
	Namespace: namespace_29799936
	Checksum: 0x5E4B6104
	Offset: 0x1870
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_32cf3cd()
{
	var_8ea4a872 = self function_21995b5a();
	foreach(var_1d6db0a3 in var_8ea4a872)
	{
		self function_704b802a(var_1d6db0a3);
		self function_67795b5f(var_1d6db0a3, var_1d6db0a3.var_c0b2188);
	}
}

/*
	Name: function_5be0c18c
	Namespace: namespace_29799936
	Checksum: 0x595BC076
	Offset: 0x1958
	Size: 0x27B
	Parameters: 2
	Flags: None
*/
function function_5be0c18c(var_b04bc952, var_74cd64bc)
{
	namespace_2f06d687::function_2b37a3c9("spawn_manager_waterfall_guy", "targetname", &function_2afd205d);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_cc27597::function_c35e6aab("cin_zur_09_02_standoff_3rd_forest_part2_sh010");
		namespace_8e9083ff::function_4d032f25(1, 0.5);
		var_4ccf970 = namespace_8e9083ff::function_a00fa665("clearing_start");
		level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
		level thread function_6a2abd6d();
		level namespace_71e9cb84::function_74d6b22f("zurich_waterfall_bodies", 1);
		level namespace_71e9cb84::function_74d6b22f("clearing_vinewall_init", 5);
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_rock_slide_bundle");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle", &function_7d18154f, "init");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
		namespace_d7916d65::function_a2995f22();
		namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_82b91a51::function_df6eb506, 1);
		level function_44dc9752();
	}
	level thread function_83fcefa6();
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_8e9083ff::function_39af75ef, "clearing_path_selected");
	level thread function_6c92c263(1);
}

/*
	Name: function_132beeb7
	Namespace: namespace_29799936
	Checksum: 0x788CD72
	Offset: 0x1BE0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_132beeb7(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_83fcefa6
	Namespace: namespace_29799936
	Checksum: 0x19B79D45
	Offset: 0x1C10
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_83fcefa6()
{
	namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_e2af603e, "cp_infection_hideout_stretch");
	function_37cbcf1a("evt_waterfall_rumble", (0, 0, 0));
	namespace_d0ef8521::function_45d1556("trig_clearing_waterfall_breadcrumb");
	namespace_4dbf3ae3::function_1ab5ebec("trig_clearing_waterfall_breadcrumb");
	if(isdefined(level.var_83ee1431))
	{
		level thread [[level.var_83ee1431]]();
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_rock_slide_bundle");
	namespace_d0ef8521::function_45d1556("trig_clearing_waterfall_pool_breadcrumb");
	namespace_4dbf3ae3::function_1ab5ebec("trig_clearing_waterfall_pool_breadcrumb");
	namespace_9f824288::function_5d2cdd99();
	level thread function_cd8360f3();
	level thread function_eae5713();
}

/*
	Name: function_cd8360f3
	Namespace: namespace_29799936
	Checksum: 0xC27C66DE
	Offset: 0x1D48
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_cd8360f3()
{
	namespace_d5067552::function_bae40a28("spawn_manager_waterfall_enemies");
	namespace_d5067552::function_72e3dd35("spawn_manager_waterfall_enemies");
	level namespace_ad23e503::function_74d6b22f("flag_enable_waterfall_vine_burn");
}

/*
	Name: function_2afd205d
	Namespace: namespace_29799936
	Checksum: 0x6E94C82A
	Offset: 0x1DA8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2afd205d()
{
	self function_86408aa8(function_6ada35ba("waterfall_defend_volume", "targetname"));
}

/*
	Name: function_21b82e1f
	Namespace: namespace_29799936
	Checksum: 0xE3BB901E
	Offset: 0x1DE8
	Size: 0x20B
	Parameters: 2
	Flags: None
*/
function function_21b82e1f(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_8e9083ff::function_4d032f25(1, 0.5);
		level thread namespace_8e9083ff::function_11b424e5(1);
		var_4ccf970 = namespace_8e9083ff::function_a00fa665("clearing_start");
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_82b91a51::function_df6eb506, 1);
		level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
		level namespace_71e9cb84::function_74d6b22f("zurich_waterfall_bodies", 1);
		level namespace_71e9cb84::function_74d6b22f("clearing_vinewall_init", 5);
		namespace_cc27597::function_8f9f34e0("cin_zur_10_01_kruger_3rd_questioned_sh010", &namespace_8e9083ff::function_f3e247d6, "init");
		level namespace_cc27597::function_c35e6aab("cin_zur_10_01_kruger_3rd_questioned_sh010");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
		namespace_82b91a51::function_d8eaed3d(5);
		namespace_d7916d65::function_a2995f22();
		namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
		if(isdefined(level.var_c416bc94))
		{
			level thread [[level.var_c416bc94]]();
		}
	}
	namespace_82b91a51::function_76f13293();
	level thread function_eadc4ffc();
}

/*
	Name: function_eadc4ffc
	Namespace: namespace_29799936
	Checksum: 0xA23F24A2
	Offset: 0x2000
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_eadc4ffc()
{
	var_60a2aad6 = function_b8494651("axis");
	foreach(var_d84e54db in var_60a2aad6)
	{
		var_d84e54db function_dc8c8404();
	}
	namespace_cc27597::function_8f9f34e0("cin_zur_11_01_paths_1st_still_chance", &function_36f7aa25, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_11_01_paths_1st_still_chance", &function_bf68487, "done");
	level.var_1c26230b = namespace_82b91a51::function_740f8516("taylor_hero");
	level.var_1c26230b function_8c8e79fe();
	level thread namespace_cc27597::function_c35e6aab("cin_zur_11_01_paths_1st_still_chance", level.var_1c26230b);
	namespace_cc27597::function_9e5b8cdb("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
	level thread namespace_67110270::function_71271388();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
	level namespace_cc27597::function_43718187("cin_zur_10_01_kruger_3rd_questioned_sh010");
	level thread function_6c92c263(0);
	level namespace_8e9083ff::function_b0f0dd1f(0);
	wait(1);
	level namespace_8e9083ff::function_b0f0dd1f(1, "red_rain");
}

/*
	Name: function_7d18154f
	Namespace: namespace_29799936
	Checksum: 0xF27193E0
	Offset: 0x2240
	Size: 0x1BB
	Parameters: 1
	Flags: None
*/
function function_7d18154f(var_c77d2837)
{
	var_332eaff4 = var_c77d2837["krueger_tree_lt"];
	var_f069ba56 = var_c77d2837["krueger_tree_rt"];
	var_332eaff4 function_db20c8d6("arm_lt_side_jnt");
	var_332eaff4 function_db20c8d6("arm_blood_fx_lt_jnt");
	var_332eaff4 function_db20c8d6("elbow_lt_side_jnt");
	var_332eaff4 function_db20c8d6("leg_lt_side_jnt");
	var_332eaff4 function_db20c8d6("knee_lt_side_jnt");
	var_332eaff4 function_db20c8d6("leg_blood_fx_lt_jnt");
	var_f069ba56 function_db20c8d6("arm_rt_side_jnt");
	var_f069ba56 function_db20c8d6("arm_blood_fx_rt_jnt");
	var_f069ba56 function_db20c8d6("elbow_rt_side_jnt");
	var_f069ba56 function_db20c8d6("leg_rt_side_jnt");
	var_f069ba56 function_db20c8d6("knee_rt_side_jnt");
	var_f069ba56 function_db20c8d6("leg_blood_fx_rt_jnt");
}

/*
	Name: function_7685bfc5
	Namespace: namespace_29799936
	Checksum: 0x57B836DE
	Offset: 0x2408
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_7685bfc5(var_c77d2837)
{
	var_c9b7e4eb = var_c77d2837["krueger"];
	level waittill("hash_4fa207a0");
	var_c9b7e4eb function_8c8e79fe();
}

/*
	Name: function_36f7aa25
	Namespace: namespace_29799936
	Checksum: 0xE2230189
	Offset: 0x2460
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_36f7aa25(var_c77d2837)
{
	level.var_1c26230b function_48f26766();
	level.var_1c26230b thread namespace_8e9083ff::function_fe5160df(1);
}

/*
	Name: function_bf68487
	Namespace: namespace_29799936
	Checksum: 0xB7892EA5
	Offset: 0x24B0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_bf68487(var_c77d2837)
{
	level namespace_82b91a51::function_93831e79("clearing_kruger_igc_exit");
	namespace_82b91a51::function_a0938376();
	namespace_9f824288::function_5d2cdd99();
	level thread function_75ab0e6a("clearing_hub");
}

/*
	Name: function_eae5713
	Namespace: namespace_29799936
	Checksum: 0x71FBE243
	Offset: 0x2528
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_eae5713()
{
	namespace_cc27597::function_8f9f34e0("cin_zur_09_01_standoff_vign_far_as_i_go", &function_4ac14422, "play");
	var_ce37baf2 = function_6ada35ba("trig_waterfall_burn", "targetname");
	var_9d50b546 = function_6ada35ba("clip_burn_vine_01", "targetname");
	var_ce37baf2 function_8c1f7070();
	level namespace_ad23e503::function_1ab5ebec("flag_enable_waterfall_vine_burn");
	var_ce37baf2 function_bb863f19();
	level thread function_51277233();
	var_ce37baf2 namespace_8e9083ff::function_f3bcbbb1();
	if(isdefined(level.var_c416bc94))
	{
		level thread [[level.var_c416bc94]]();
	}
	level namespace_cc27597::function_43718187("cin_zur_09_01_standoff_vign_far_as_i_go", var_ce37baf2.var_6bfe1586);
	level namespace_82b91a51::function_93831e79("waterfall_vinewall_igc_end");
	level thread namespace_8e9083ff::function_11b424e5(1);
	var_9d50b546 function_422037f5();
	level notify("hash_87560491");
}

/*
	Name: function_51277233
	Namespace: namespace_29799936
	Checksum: 0x9E91F660
	Offset: 0x26E8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_51277233()
{
	level waittill("hash_3f802798");
	level namespace_71e9cb84::function_74d6b22f("clearing_vinewall_open", 1);
}

/*
	Name: function_6c92c263
	Namespace: namespace_29799936
	Checksum: 0x4CA27C9D
	Offset: 0x2728
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_6c92c263(var_b49e0088)
{
	var_ecf05dd0 = function_6ada35ba("waterfall_vine_path_blocker", "targetname");
	var_9d50b546 = function_6ada35ba("clip_burn_vine_01", "targetname");
	if(var_b49e0088)
	{
		var_ecf05dd0 function_50ccee8d();
	}
	else
	{
		var_ecf05dd0 function_48f26766();
		level namespace_71e9cb84::function_74d6b22f("clearing_vinewall_init", 1);
		var_9d50b546 function_4083a98e();
	}
}

/*
	Name: function_4ac14422
	Namespace: namespace_29799936
	Checksum: 0xA9DEB39E
	Offset: 0x2808
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_4ac14422(var_c77d2837)
{
	var_2e3b8e7e = var_c77d2837["hendricks"];
	var_2e3b8e7e function_8c8e79fe();
	wait(1);
	var_2e3b8e7e namespace_71e9cb84::function_74d6b22f("raven_ai_rez", 1);
	wait(0.5);
	var_2e3b8e7e function_48f26766();
	var_2e3b8e7e waittill("hash_36dcb014");
	var_2e3b8e7e namespace_71e9cb84::function_74d6b22f("raven_ai_rez", 0);
	wait(0.5);
	var_2e3b8e7e function_8c8e79fe();
}

/*
	Name: function_75ab0e6a
	Namespace: namespace_29799936
	Checksum: 0x33E2924F
	Offset: 0x28E8
	Size: 0x2BB
	Parameters: 2
	Flags: None
*/
function function_75ab0e6a(var_b04bc952, var_7c092e3a)
{
	if(!isdefined(var_7c092e3a))
	{
		var_7c092e3a = 0;
	}
	level endon("hash_c7f297ae");
	var_2b8f773a = namespace_14b42b8a::function_7922262b(var_b04bc952 + "_taylor_start", "targetname");
	var_8a1e3703 = 0;
	if(!isdefined(level.var_1c26230b))
	{
		var_8a1e3703 = 1;
		level function_6aede49e(var_b04bc952);
		level.var_1c26230b function_9869ab67(var_2b8f773a.var_722885f3, var_2b8f773a.var_6ab6f4fd);
		level.var_1c26230b namespace_d84e54db::function_c9e45d52(1);
		level.var_1c26230b namespace_d84e54db::function_b4f5e3b9(1);
		level.var_1c26230b function_8c8e79fe();
	}
	level.var_1c26230b function_cea50a94(1);
	level.var_1c26230b thread function_aea8cd9b();
	if(var_7c092e3a > 0)
	{
		wait(var_7c092e3a);
	}
	if(isdefined(var_2b8f773a.var_b07228b6))
	{
		var_9de10fe3 = function_b4cb3503(var_2b8f773a.var_b07228b6, "targetname");
		level.var_1c26230b namespace_d84e54db::function_ceb883cd("forceTacticalWalk", 1);
		level.var_1c26230b namespace_d84e54db::function_b4f5e3b9(1);
		level.var_1c26230b function_169cc712(var_9de10fe3, 1);
	}
	if(var_8a1e3703)
	{
		wait(1);
		level.var_1c26230b namespace_71e9cb84::function_74d6b22f("hero_spawn_fx", 1);
		wait(0.5);
		level.var_1c26230b namespace_d84e54db::function_c9e45d52(0);
		level.var_1c26230b namespace_d84e54db::function_b4f5e3b9(0);
		level.var_1c26230b function_48f26766();
	}
	wait(3);
	level.var_1c26230b function_cea50a94(0);
}

/*
	Name: function_6aede49e
	Namespace: namespace_29799936
	Checksum: 0xBCB88184
	Offset: 0x2BB0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_6aede49e(var_b04bc952)
{
	level.var_1c26230b = namespace_82b91a51::function_740f8516("taylor_hero");
	level.var_1c26230b thread namespace_8e9083ff::function_fe5160df(1);
}

/*
	Name: function_aea8cd9b
	Namespace: namespace_29799936
	Checksum: 0xC85623D6
	Offset: 0x2C08
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_aea8cd9b()
{
	level waittill("hash_c7f297ae");
	self namespace_71e9cb84::function_74d6b22f("hero_spawn_fx", 0);
	wait(0.5);
	self namespace_82b91a51::function_c49ce021("taylor_hero");
	self namespace_82b91a51::function_20ffc8ff();
}

/*
	Name: function_f1073c0f
	Namespace: namespace_29799936
	Checksum: 0x875787E4
	Offset: 0x2C80
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_f1073c0f()
{
	level namespace_71b8dba1::function_a463d127("dcor_you_know_where_it_al_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("dcor_when_we_trained_we_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("dcor_they_put_a_big_fat_s_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("dcor_how_could_we_know_wh_0", 1, "NO_DNI");
	level namespace_ad23e503::function_74d6b22f("flag_diaz_first_path_complete_vo_done");
}

/*
	Name: function_65667fec
	Namespace: namespace_29799936
	Checksum: 0xB5669BEA
	Offset: 0x2D70
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_65667fec()
{
	wait(2);
	self namespace_71b8dba1::function_81141386("tayr_the_frozen_forest_wa_0", 1);
	level namespace_71b8dba1::function_a463d127("hcor_this_isn_t_the_froze_0", 1, "NO_DNI");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_1270c207
	Namespace: namespace_29799936
	Checksum: 0x8671D9A2
	Offset: 0x2DE8
	Size: 0x343
	Parameters: 2
	Flags: None
*/
function function_1270c207(var_b04bc952, var_74cd64bc)
{
	if(var_b04bc952 == "clearing_hub_2" || var_b04bc952 == "clearing_hub_3" || var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
		level namespace_71e9cb84::function_74d6b22f("zurich_waterfall_bodies", 1);
		level namespace_71e9cb84::function_74d6b22f("clearing_vinewall_init", 5);
		var_4ccf970 = namespace_8e9083ff::function_a00fa665(var_b04bc952);
		if(!var_74cd64bc)
		{
			level.var_75ba074a = undefined;
		}
		if(isdefined(var_74cd64bc) && var_74cd64bc)
		{
		}
		else
		{
		}
		namespace_d7916d65::function_a2995f22(0);
		namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
		level namespace_8e9083ff::function_b0f0dd1f(1, "red_rain");
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_82b91a51::function_df6eb506, 1);
		level thread namespace_8e9083ff::function_11b424e5(1);
		if(!var_74cd64bc)
		{
			wait(1);
			level namespace_82b91a51::function_11a89b44();
			foreach(var_5dc5e20a in level.var_2395e945)
			{
				var_5dc5e20a.var_a954e196 = undefined;
				var_5dc5e20a namespace_82b91a51::function_67520c6a(0.3, undefined, &namespace_82b91a51::function_c72856fc, 1);
			}
			level thread namespace_82b91a51::function_593c2af4(2, "black");
		}
		level thread function_75ab0e6a(var_b04bc952, level.var_75ba074a);
		if(var_b04bc952 === "clearing_hub_2")
		{
			level thread function_f1073c0f();
		}
		if(var_b04bc952 === "clearing_hub_3")
		{
			while(!isdefined(level.var_1c26230b))
			{
				namespace_82b91a51::function_76f13293();
			}
			level.var_1c26230b function_65667fec();
		}
	}
	level thread namespace_67110270::function_82e83534();
	level thread function_c998741b(var_b04bc952);
}

/*
	Name: function_44c2b6a
	Namespace: namespace_29799936
	Checksum: 0x883D7554
	Offset: 0x3138
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_44c2b6a(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level function_82fb3fff();
	level thread namespace_8e9083ff::function_4a00a473("clearing_hub");
}

/*
	Name: function_600acf3f
	Namespace: namespace_29799936
	Checksum: 0xA1EB2F2F
	Offset: 0x31A0
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_600acf3f(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level function_82fb3fff();
}

/*
	Name: function_b42e7a80
	Namespace: namespace_29799936
	Checksum: 0x2378709D
	Offset: 0x31E8
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_b42e7a80(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level function_82fb3fff();
	level thread namespace_8e9083ff::function_4a00a473("clearing_hub_3");
}

/*
	Name: function_82fb3fff
	Namespace: namespace_29799936
	Checksum: 0x1EF7FC57
	Offset: 0x3250
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_82fb3fff()
{
	level namespace_8e9083ff::function_b0f0dd1f(0);
	level namespace_71e9cb84::function_74d6b22f("zurich_waterfall_bodies", 0);
	level namespace_71e9cb84::function_74d6b22f("clearing_vinewall_init", 0);
	level namespace_71e9cb84::function_74d6b22f("clearing_vinewall_open", 0);
}

/*
	Name: function_c998741b
	Namespace: namespace_29799936
	Checksum: 0x78BF82FB
	Offset: 0x32D8
	Size: 0x46B
	Parameters: 1
	Flags: None
*/
function function_c998741b(var_b04bc952)
{
	var_89060212 = function_99201f25("trig_vine_doors", "script_noteworthy");
	namespace_84970cc4::function_eaab05dc(var_89060212, &function_8c1f7070);
	switch(var_b04bc952)
	{
		case "clearing_hub":
		{
			var_3e0e2df1 = "zurich";
			var_85e76a39 = 4;
			break;
		}
		case "clearing_hub_2":
		{
			var_3e0e2df1 = "cairo";
			var_85e76a39 = 3;
			break;
		}
		case "clearing_hub_3":
		{
			var_3e0e2df1 = "sing";
			level namespace_71e9cb84::function_74d6b22f("clearing_hide_lotus_tower", 1);
			var_85e76a39 = 2;
			break;
		}
	}
	var_7edb74a6 = function_6ada35ba("unburnable_vine_" + var_3e0e2df1, "targetname");
	var_9d50b546 = function_6ada35ba("clip_burn_vine_" + var_3e0e2df1, "targetname");
	var_7edb74a6 function_50ccee8d();
	var_ce37baf2 = function_6ada35ba("trig_vine_damage_" + var_3e0e2df1, "targetname");
	var_ce37baf2 function_bb863f19();
	var_ce37baf2.var_afacae68 = 0;
	var_ce37baf2 function_860aaa8a(var_9d50b546);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_82b91a51::function_56cee95, 1);
	level namespace_71e9cb84::function_74d6b22f("clearing_vinewall_open", var_85e76a39);
	wait(0.5);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_688ed188, "postfx_transition");
	function_37cbcf1a("evt_clearing_trans_out", (0, 0, 0));
	wait(1);
	level namespace_82b91a51::function_7e61de2b(1, "black");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_82b91a51::function_c72856fc(0);
	}
	switch(var_b04bc952)
	{
		case "clearing_hub":
		{
			level namespace_cc27597::function_c35e6aab("cin_zur_12_01_root_1st_mirror_01");
			break;
		}
		case "clearing_hub_2":
		{
			level namespace_cc27597::function_c35e6aab("cin_zur_14_01_cairo_root_1st_fall");
			break;
		}
		case "clearing_hub_3":
		{
			namespace_82b91a51::function_d8eaed3d(8);
			break;
		}
	}
	level namespace_82b91a51::function_11a89b44();
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_82b91a51::function_56cee95, 0);
	level thread namespace_8e9083ff::function_11b424e5(0);
	level notify("hash_c7f297ae");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
	var_7edb74a6 function_48f26766();
}

/*
	Name: function_860aaa8a
	Namespace: namespace_29799936
	Checksum: 0x60D79D19
	Offset: 0x3750
	Size: 0x2F
	Parameters: 1
	Flags: None
*/
function function_860aaa8a(var_9d50b546)
{
	self namespace_8e9083ff::function_30a6b901(0, var_9d50b546);
	self.var_afacae68 = 1;
}

