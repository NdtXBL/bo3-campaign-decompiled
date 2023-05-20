#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_laststand;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_accolades;
#using scripts\cp\cp_mi_cairo_ramses_alley;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses_vtol_igc;
#using scripts\cp\cp_mi_cairo_ramses2_fx;
#using scripts\cp\cp_mi_cairo_ramses2_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\_oob;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\weapons\_weaponobjects;

#namespace namespace_4124d;

/*
	Name: function_2dc19561
	Namespace: namespace_4124d
	Checksum: 0xC3CE1555
	Offset: 0x3098
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("arena_defend", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_4124d
	Checksum: 0xFCF4E4A9
	Offset: 0x30D8
	Size: 0x373
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "arena_defend_weak_point_keyline", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "clear_all_dyn_ents", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "set_dedicated_shadow", 1, 1, "int");
	level thread namespace_cc27597::function_43718187("cin_ram_05_01_quadtank_flatbed_pose");
	namespace_391e4301::function_3f4f84e("arena_defend_car4cover_node", "targetname", 0);
	namespace_391e4301::function_3f4f84e("hendricks_mobile_wall_start_node", "targetname", 0);
	namespace_391e4301::function_3f4f84e("arena_defend_demostreet_intro_khalil", "targetname", 0);
	namespace_391e4301::function_3f4f84e("mobile_wall_door_traversals", "targetname", 0);
	namespace_391e4301::function_3f4f84e("wp_03_dynamic_covernode", "script_noteworthy", 0);
	var_cfdb3b07 = function_6ada35ba("mobile_wall_doors_clip", "targetname");
	var_cfdb3b07 function_14c24d9d(0, 0);
	var_70d87be7 = function_6ada35ba("trig_wp_01_kill_stuck_players", "targetname");
	if(isdefined(var_70d87be7))
	{
		var_70d87be7 function_175e6b8e(0);
	}
	var_a9060824 = function_6ada35ba("trig_wp_04_damage", "targetname");
	var_a9060824 function_175e6b8e(0);
	var_5fd4d3b9 = function_99201f25("lgt_shadow_block", "targetname");
	foreach(var_375c9b15 in var_5fd4d3b9)
	{
		var_375c9b15 function_50ccee8d();
	}
	for(var_c957f6b6 = 1; var_c957f6b6 < 6; var_c957f6b6++)
	{
		namespace_391e4301::function_3f4f84e("wp_0" + var_c957f6b6 + "_traversal_jump", "script_noteworthy", 0);
	}
	function_37af8a07();
	function_6c1294b8("ui_newHud", 1);
}

/*
	Name: function_21b8a3e1
	Namespace: namespace_4124d
	Checksum: 0x2B6BD499
	Offset: 0x3458
	Size: 0x263
	Parameters: 2
	Flags: None
*/
function function_21b8a3e1(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	level namespace_cc27597::function_c35e6aab("cin_ram_05_01_block_1st_rip");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_wall_drop_bundle");
	function_6ada35ba("mobile_wall_turret_blocker", "targetname") function_50ccee8d();
	function_c4fc0ade(var_b04bc952, var_74cd64bc);
	namespace_76d95162::function_d9f49fba(0);
	level thread function_3c00dec();
	namespace_d7916d65::function_a2995f22(2);
	level thread function_d8bb5a8e();
	level thread namespace_a6a248fc::function_1e7ee1cd();
	namespace_391e4301::function_3f4f84e("nd_raps_launch_point_1", "targetname", 0);
	namespace_391e4301::function_3f4f84e("nd_raps_launch_point_2", "targetname", 0);
	namespace_391e4301::function_3f4f84e("nd_raps_launch_point_3", "targetname", 0);
	namespace_391e4301::function_3f4f84e("nd_raps_launch_point_4", "targetname", 0);
	level namespace_ad23e503::function_74d6b22f("arena_defend_spawn");
	level thread function_aed0e82f();
	if(isdefined(level.var_12f2db0c))
	{
		level thread [[level.var_12f2db0c]]();
	}
	level thread namespace_391e4301::function_d0d2f172("cin_ram_05_01_defend_vign_rescueinjured_r_group", "arena_defend_intro_player_exits_technical");
	level function_43ae7eec(1);
	level thread function_27342097();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_aed0e82f
	Namespace: namespace_4124d
	Checksum: 0x90F3C302
	Offset: 0x36C8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_aed0e82f()
{
	level namespace_82b91a51::function_c9aa1ff("arena_defend_intro_open_door", 30);
	namespace_76d95162::function_d9f49fba(1);
	function_96944c1(1);
}

/*
	Name: function_b162a3a4
	Namespace: namespace_4124d
	Checksum: 0x56321C89
	Offset: 0x3728
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function function_b162a3a4(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_391e4301::function_7255e66(0, "alley_mobile_armory");
	if(var_e4cd2b8b)
	{
		level namespace_cc27597::function_5c143f59("cin_ram_05_01_block_1st_rip_skipto");
	}
	if(var_74cd64bc)
	{
		level thread namespace_82b91a51::function_d8eaed3d(5);
	}
	namespace_d275cebc::function_93523442("p7_nc_cai_ram_01", 60, VectorScale((0, -1, 0), 5));
	namespace_d275cebc::function_37aecd21();
}

/*
	Name: function_d290ebfa
	Namespace: namespace_4124d
	Checksum: 0x58B944EB
	Offset: 0x37F8
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_d290ebfa(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread function_b7b36dff();
	}
	level thread function_e45af9f2();
	level thread function_f9842c89();
	level namespace_ad23e503::function_74d6b22f("arena_defend_spawn");
	function_c4fc0ade(var_b04bc952, var_74cd64bc);
	function_6ada35ba("mobile_wall_turret_blocker", "targetname") function_48f26766();
	namespace_38256252::function_bb0dee49();
	namespace_38256252::function_69c025f8();
	namespace_38256252::function_5553172f();
	namespace_38256252::function_cef37178();
	function_e8a47a87();
	namespace_391e4301::function_3f4f84e("arena_defend_dynamic_covernodes", "script_noteworthy", 0);
	level thread function_d0ef8521();
	level thread function_181343bc();
	level thread function_38d8eaf7();
	if(var_74cd64bc)
	{
		level thread function_786c5bca();
		level thread function_82802a7a(1);
		level thread function_a5b142fc(1);
		level namespace_ad23e503::function_1ab5ebec("arena_defend_mobile_wall_deployed");
	}
	function_345b912d();
	function_bbf0087d();
	function_cac20541();
	function_30f53fbc();
	namespace_1d795d47::function_be8adfb8("arena_defend");
}

/*
	Name: function_4451e1bd
	Namespace: namespace_4124d
	Checksum: 0x2D67CF8E
	Offset: 0x3A60
	Size: 0x373
	Parameters: 2
	Flags: None
*/
function function_4451e1bd(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_c4fc0ade(var_b04bc952, var_74cd64bc);
		level namespace_cc27597::function_c35e6aab("cin_ram_05_demostreet_3rd_sh010");
		namespace_d7916d65::function_a2995f22();
		namespace_82b91a51::function_7e61de2b(0, "black", "skipto_fade");
		function_96944c1();
		level thread function_ce07d8df();
		level function_bccb9996();
		level thread function_66f027df();
		level thread function_c779fef1();
		level thread function_82802a7a(1);
		level thread function_a5b142fc(1);
		level thread namespace_a6a248fc::function_7b69c801();
		function_52eeccd();
		level thread function_43ae7eec(0, 1);
		var_35a302af = namespace_96fa87af::function_7387a40a("arena_defend_intro_technical");
		var_35a302af namespace_ad23e503::function_c35e6aab("warp_to_spline_end_done");
		var_35a302af namespace_82b91a51::function_67520c6a(0.25, undefined, &function_2992720d);
		level thread function_9b890ccb();
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_checkpoint_wall_02_bundle");
		namespace_82b91a51::function_67520c6a(0.5, undefined, &namespace_82b91a51::function_593c2af4, 1.5, "black", "skipto_fade");
		level notify("hash_18cf70dc");
		namespace_82b91a51::function_67520c6a(2, undefined, &function_30f53fbc);
		namespace_38256252::function_bb0dee49();
		namespace_38256252::function_69c025f8();
		namespace_38256252::function_5553172f();
		namespace_38256252::function_cef37178();
	}
	function_8f461d35(0);
	function_2e8bcd54();
	function_4dcf9e47();
	function_3d3f7691();
	function_2fcc9369("arena_defend_spawn_manager_friendly");
	level.var_bbe9f011 = undefined;
	namespace_1d795d47::function_be8adfb8("sinkhole_collapse");
}

/*
	Name: function_bccb9996
	Namespace: namespace_4124d
	Checksum: 0x86B6EAD0
	Offset: 0x3DE0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_bccb9996()
{
	var_5ed6c39f = function_84970cc4("wp_01", "wp_02", "wp_03", "wp_04", "wp_05");
	foreach(var_2422bd4b in var_5ed6c39f)
	{
		level namespace_cc27597::function_c35e6aab(var_2422bd4b);
		namespace_82b91a51::function_76f13293();
	}
	function_6ddd4fa4("sinkhole_misc_model");
	function_ee6b663("wp_01");
	function_ee6b663("wp_02");
	function_ee6b663("wp_03");
	function_ee6b663("wp_04");
	function_ee6b663("wp_05");
	level namespace_ad23e503::function_74d6b22f("all_weak_points_destroyed");
}

/*
	Name: function_ee6b663
	Namespace: namespace_4124d
	Checksum: 0xE5C37631
	Offset: 0x3F80
	Size: 0x3ED
	Parameters: 1
	Flags: None
*/
function function_ee6b663(var_ca3f11aa)
{
	level namespace_ad23e503::function_c35e6aab(var_ca3f11aa);
	level namespace_ad23e503::function_c35e6aab(var_ca3f11aa + "_identified");
	level namespace_ad23e503::function_c35e6aab(var_ca3f11aa + "_destroyed");
	namespace_391e4301::function_3f4f84e(var_ca3f11aa + "_covernode", "script_noteworthy", 1);
	namespace_391e4301::function_8bf0b925(var_ca3f11aa + "_traversal", "script_noteworthy", 1);
	level namespace_ad23e503::function_74d6b22f(var_ca3f11aa);
	level namespace_ad23e503::function_74d6b22f(var_ca3f11aa + "_destroyed");
	level thread namespace_cc27597::function_5c143f59(var_ca3f11aa, "targetname");
	var_9bb18713 = function_99201f25("collision_" + var_ca3f11aa, "targetname");
	foreach(var_44febfef in var_9bb18713)
	{
		if(var_44febfef.var_170527fb != "collision_wp_05")
		{
			var_44febfef function_dc8c8404();
		}
	}
	namespace_391e4301::function_3f4f84e(var_ca3f11aa + "_traversal_jump", "script_noteworthy", 1);
	namespace_391e4301::function_8bf0b925(var_ca3f11aa + "_traversal", "script_noteworthy", 0);
	namespace_d5067552::function_2992720d("sm_" + var_ca3f11aa + "_defenders", 1);
	switch(var_ca3f11aa)
	{
		case "wp_01":
		{
			var_70d87be7 = function_6ada35ba("trig_wp_01_kill_stuck_players", "targetname");
			if(isdefined(var_70d87be7))
			{
				var_70d87be7 function_175e6b8e(1);
			}
			break;
		}
		case "wp_02":
		{
			namespace_4dbf3ae3::function_42e87952("wp_03_goal_trig");
			namespace_391e4301::function_3f4f84e(var_ca3f11aa + "_covernode", "script_noteworthy", 0);
			break;
		}
		case "wp_04":
		{
			var_a9060824 = function_6ada35ba("trig_wp_04_damage", "targetname");
			var_a9060824 function_175e6b8e(1);
			namespace_d5067552::function_bae40a28("sm_wp_04_robot_rushers");
			namespace_391e4301::function_3f4f84e("wp_04_raps_walk", "targetname", 0);
			break;
		}
		case "wp_05":
		{
			namespace_d5067552::function_2992720d("arena_defend_far_left_enemies");
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_82a50f67
	Namespace: namespace_4124d
	Checksum: 0xE0904F35
	Offset: 0x4378
	Size: 0x363
	Parameters: 4
	Flags: None
*/
function function_82a50f67(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		level namespace_ad23e503::function_74d6b22f("sinkhole_charges_detonated");
		namespace_d0ef8521::function_31cd1834("cp_level_ramses_demolish_arena_defend");
		function_3eb1d89e();
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_reinforce_safiya");
	function_26aaae96();
	if(level namespace_ad23e503::function_7922262b("arena_defend_common_elements_initialized"))
	{
		namespace_2f06d687::function_d5e942a4("allies", &function_c23243fe);
		namespace_dabbe128::function_a0ac4434(&function_e377e915);
	}
	var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_2103ff4b(var_1b7b3a6))
		{
			var_5dc5e20a function_1f3745c0(var_1b7b3a6);
		}
	}
	namespace_76d95162::function_d9f49fba(1);
	namespace_38256252::function_4df6d923();
	namespace_38256252::function_eb593e7e();
	namespace_38256252::function_a64e00f5();
	namespace_38256252::function_508c89fe();
	var_496b7d52 = function_9b7fda5e("trigger_box", (8401, 20022, -60), 0, 50000, 50000, 50000);
	var_496b7d52.var_6ab6f4fd = VectorScale((0, 1, 0), 134);
	var_496b7d52 thread namespace_6ece97b7::function_1469cd68();
	var_496b7d52 = function_9b7fda5e("trigger_box", (-13310, 1310, 17516), 0, 50000, 50000, 50000);
	var_496b7d52.var_6ab6f4fd = VectorScale((0, 1, 0), 134);
	var_496b7d52 thread namespace_6ece97b7::function_1469cd68();
	function_cbed290e("collision_physics_512x512x512", "collider", (6672, -16394, 520), (90, 185.051, 95.0511));
}

/*
	Name: function_b7b36dff
	Namespace: namespace_4124d
	Checksum: 0x1B18E315
	Offset: 0x46E8
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_b7b36dff()
{
	namespace_76d95162::function_d9f49fba(0);
	level namespace_ad23e503::function_1ab5ebec("arena_defend_common_elements_initialized");
	function_96944c1();
	namespace_d7916d65::function_a2995f22();
	namespace_82b91a51::function_7e61de2b(0, "black", "skipto_fade");
	namespace_82b91a51::function_67520c6a(2.5, undefined, &namespace_82b91a51::function_593c2af4, 1, "black", "skipto_fade");
	level thread namespace_a6a248fc::function_37e13caa();
	level namespace_cc27597::function_5c143f59("cin_ram_05_01_block_1st_rip", undefined, undefined, 0.75, 1);
	level thread function_27342097();
	level thread function_d8bb5a8e();
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_74d6b22f("intro_igc_done");
	var_dfcbd82b = function_b4cb3503("hendricks_mobile_wall_top_node", "targetname");
	level.var_2fd26037.var_7dfaf62 = 64;
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 function_169cc712(var_dfcbd82b, 1);
}

/*
	Name: function_c4fc0ade
	Namespace: namespace_4124d
	Checksum: 0x1851EFA3
	Offset: 0x48E0
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_c4fc0ade(var_d3c2655d, var_74cd64bc)
{
	if(!level namespace_ad23e503::function_7922262b("arena_defend_common_elements_initialized"))
	{
		function_b6da2f7c();
		function_1a5a4627();
		namespace_391e4301::function_f2f98cfc();
		namespace_d7ca6f18::function_fc9630cb();
		function_c50ca91();
		if(var_d3c2655d !== "sinkhole_collapse")
		{
			function_f87b2c29();
		}
		function_f3aef8c7(var_d3c2655d, var_74cd64bc);
		level namespace_ad23e503::function_74d6b22f("arena_defend_common_elements_initialized");
		namespace_2f06d687::function_ef554cf7("allies", &function_c23243fe);
		namespace_dabbe128::function_356a4ee1(&function_e377e915);
		namespace_84970cc4::function_eaab05dc(function_99201f25("weak_point_trigger", "script_noteworthy"), &function_50ccee8d);
		namespace_391e4301::function_3f4f84e("arena_defend_mobile_wall_top_nodes", "script_noteworthy", 0);
		function_6ada35ba("wp_crouch_cover", "targetname") function_8bdea13c(-200, 0.05);
	}
}

/*
	Name: function_355070e1
	Namespace: namespace_4124d
	Checksum: 0x726BDD5D
	Offset: 0x4AB8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_355070e1(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_f3aef8c7
	Namespace: namespace_4124d
	Checksum: 0xAC157767
	Offset: 0x4AE8
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_f3aef8c7(var_b04bc952, var_74cd64bc)
{
	function_e29f0dd6(var_b04bc952, var_74cd64bc);
	level.var_9db406db namespace_6f7b2095::function_1b497663("y");
	level.var_9db406db.var_7dfaf62 = 1024;
	level.var_2fd26037 namespace_6f7b2095::function_1b497663("b");
}

/*
	Name: function_37af8a07
	Namespace: namespace_4124d
	Checksum: 0x851DAAE1
	Offset: 0x4B78
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("arena_defend_initial_spawns_done");
	level namespace_ad23e503::function_c35e6aab("all_spike_launchers_picked_up");
	level namespace_ad23e503::function_c35e6aab("billboard1_crashed");
	level namespace_ad23e503::function_c35e6aab("billboard2_crashed");
	level namespace_ad23e503::function_c35e6aab("sinkhole_explosion_started");
	level namespace_ad23e503::function_c35e6aab("sinkhole_collapse_complete");
	level namespace_ad23e503::function_c35e6aab("intro_technical_dropped_from_vtol");
	level namespace_ad23e503::function_c35e6aab("arena_defend_mobile_wall_deployed");
	level namespace_ad23e503::function_c35e6aab("arena_defend_mobile_wall_doors_open");
	level namespace_ad23e503::function_c35e6aab("arena_defend_intro_technical_disabled");
	level namespace_ad23e503::function_c35e6aab("arena_defend_initial_weak_point_search_finished");
	level namespace_ad23e503::function_c35e6aab("arena_defend_second_wave_weak_points_discovered");
	level namespace_ad23e503::function_c35e6aab("arena_defend_third_wave_weak_points_discovered");
	level namespace_ad23e503::function_c35e6aab("arena_defend_last_wave_weak_points_discovered");
	level namespace_ad23e503::function_c35e6aab("arena_defend_common_elements_initialized");
	level namespace_ad23e503::function_c35e6aab("arena_defend_sinkhole_igc_started");
	level namespace_ad23e503::function_c35e6aab("arena_defend_detonator_dropped");
	level namespace_ad23e503::function_c35e6aab("arena_defend_sinkhole_collapse_done");
	level namespace_ad23e503::function_c35e6aab("arena_defend_rocket_hits_vtol");
	level namespace_ad23e503::function_c35e6aab("arena_defend_detonator_pickup");
}

/*
	Name: function_e29f0dd6
	Namespace: namespace_4124d
	Checksum: 0xCB4F9BDF
	Offset: 0x4E08
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_e29f0dd6(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
	}
	namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	}
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db namespace_6f7b2095::function_54bdb053();
	}
}

/*
	Name: function_1a5a4627
	Namespace: namespace_4124d
	Checksum: 0xF1EE96FD
	Offset: 0x4EE0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_1a5a4627()
{
	level namespace_ad23e503::function_74d6b22f("flak_vtol_ride_stop");
	level thread namespace_391e4301::function_a0731cf9();
	level thread namespace_391e4301::function_37357151();
	level thread namespace_391e4301::function_39044e10();
}

/*
	Name: function_b6da2f7c
	Namespace: namespace_4124d
	Checksum: 0xC304A8FB
	Offset: 0x4F58
	Size: 0x5E1
	Parameters: 0
	Flags: None
*/
function function_b6da2f7c()
{
	namespace_2f06d687::function_2b37a3c9("arena_defend_initial_enemies", "targetname", &function_fa6cb6a2);
	namespace_2f06d687::function_2b37a3c9("arena_defend_wall_jumper", "script_noteworthy", &function_58b8beac);
	namespace_2f06d687::function_2b37a3c9("arena_defend_cafe_defender_guys", "targetname", &function_e90b6d13);
	namespace_2f06d687::function_2b37a3c9("arena_defend_intro_wall_ally", "script_noteworthy", &function_e90b6d13);
	namespace_2f06d687::function_2b37a3c9("arena_defend_reset_anchor", "script_noteworthy", &function_e90b6d13);
	namespace_2f06d687::function_2b37a3c9("sp_wp_04_robot_defenders", "targetname", &function_cfffb0c2, "normal");
	namespace_2f06d687::function_2b37a3c9("sp_wp_04_robot_rushers", "targetname", &function_cfffb0c2, "rusher");
	level.var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	for(var_c957f6b6 = 1; var_c957f6b6 < 6; var_c957f6b6++)
	{
		namespace_2f06d687::function_2b37a3c9("wp_0" + var_c957f6b6 + "_defenders", "targetname", &function_a275144c, "wp_0" + var_c957f6b6 + "_destroyed");
	}
	namespace_96fa87af::function_994832bd("checkpoint_right_fill_raps", &function_69b7b359);
	namespace_96fa87af::function_994832bd("checkpoint_right_breach_raps", &function_69b7b359);
	namespace_96fa87af::function_994832bd("arena_defend_quadtank", &function_9ec9caf9);
	namespace_96fa87af::function_994832bd("arena_defend_wall_vtol", &function_193cfd7e);
	namespace_96fa87af::function_994832bd("arena_defend_mobile_wall_turret", &function_ca365357);
	namespace_96fa87af::function_994832bd("arena_defend_intro_technical", &function_94c406b0, "arena_defend_intro_technical_disabled");
	namespace_96fa87af::function_994832bd("arena_defend_intro_technical", &function_90d92a9b, "cin_ram_05_01_defend_aie_nrc_exittruck_variation1", "arena_defend_mobile_wall_doors_open");
	namespace_96fa87af::function_994832bd("arena_defend_intro_technical", &function_c3bff305);
	namespace_96fa87af::function_994832bd("arena_defend_intro_technical", &function_165738b0);
	namespace_96fa87af::function_994832bd("arena_defend_technical_01", &function_165738b0);
	namespace_96fa87af::function_994832bd("arena_defend_technical_01", &function_90d92a9b, "cin_ram_05_01_defend_aie_nrc_exittruck_variation2", "reached_end_node");
	namespace_96fa87af::function_994832bd("arena_defend_technical_02", &function_90d92a9b, "cin_ram_05_01_defend_aie_nrc_exittruck_variation1", "reached_end_node");
	foreach(var_7b7d10ac in function_99201f25("arena_defend_technical", "script_noteworthy"))
	{
		namespace_96fa87af::function_994832bd(var_7b7d10ac.var_170527fb, &function_7760068b);
		namespace_391e4301::function_3f4f84e(var_7b7d10ac.var_170527fb + "_vh_end", "targetname", 0);
	}
	var_b60b5e6b = function_6ada35ba("arena_defend_wasp_goal_volume", "targetname");
	foreach(var_5aaf616 in function_99201f25("arena_defend_wasp", "script_noteworthy"))
	{
		namespace_96fa87af::function_994832bd(var_5aaf616.var_170527fb, &function_68e4ea91, var_b60b5e6b);
	}
}

/*
	Name: function_c489f077
	Namespace: namespace_4124d
	Checksum: 0x99EC1590
	Offset: 0x5548
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c489f077()
{
}

/*
	Name: function_e90b6d13
	Namespace: namespace_4124d
	Checksum: 0xA0E91053
	Offset: 0x5558
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_e90b6d13()
{
	self endon("hash_128f8789");
	if(!level namespace_ad23e503::function_7922262b("arena_defend_mobile_wall_doors_open"))
	{
		self function_169cc712(function_6ada35ba("sinkhole_friendly_fallback_volume", "targetname"), 1);
	}
	level namespace_ad23e503::function_1ab5ebec("arena_defend_mobile_wall_doors_open");
	self function_e11ce512();
	if(isdefined(self.var_b07228b6))
	{
		var_57825414 = function_6ada35ba(self.var_b07228b6, "targetname");
		self function_169cc712(var_57825414);
	}
	else
	{
		self function_169cc712(function_6ada35ba("arena_defend_main_goal_volume", "targetname"));
	}
}

/*
	Name: function_a275144c
	Namespace: namespace_4124d
	Checksum: 0xA81BCFC5
	Offset: 0x5690
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_a275144c(var_4ac85f5f)
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	wait(function_72a94f05(2, 8));
	self.var_7dfaf62 = 1024;
	self function_fb5720f7();
}

/*
	Name: function_cfffb0c2
	Namespace: namespace_4124d
	Checksum: 0xC19756BB
	Offset: 0x5700
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_cfffb0c2(var_6927be30)
{
	self endon("hash_128f8789");
	var_5bd22e42 = function_b4cb3503(self.var_b07228b6, "targetname");
	if(isdefined(var_5bd22e42))
	{
		self namespace_d84e54db::function_ceb883cd("sprint", 1);
		self function_169cc712(var_5bd22e42, 1);
		self waittill("hash_41d1aaf0");
		self function_e11ce512();
		self namespace_d84e54db::function_ceb883cd("move_mode", var_6927be30);
		self namespace_d84e54db::function_ceb883cd("sprint", 0);
	}
}

/*
	Name: function_fa6cb6a2
	Namespace: namespace_4124d
	Checksum: 0x58D51F14
	Offset: 0x57F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_fa6cb6a2()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("arena_defend_mobile_wall_doors_open");
	wait(function_72a94f05(2, 3));
}

/*
	Name: function_9ec9caf9
	Namespace: namespace_4124d
	Checksum: 0x321CED99
	Offset: 0x5848
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_9ec9caf9()
{
	self endon("hash_128f8789");
	self namespace_175490fb::function_59965309("cybercom_hijack");
	level thread function_9b890ccb();
	waittillframeend;
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_2168e5ee = 1;
	self.var_de9eba31 = 999;
	self.var_a670ac2a = 1;
	self namespace_3fc75f50::function_4c6ee4cc(0);
	wait(1);
	while(!level namespace_ad23e503::function_7922262b("mobile_wall_doors_closing"))
	{
		var_6bfe1586 = namespace_82b91a51::function_fa8a28f1(self.var_722885f3, "allies");
		var_d3f6be49 = namespace_84970cc4::function_4219028b(var_6bfe1586.var_722885f3, level.var_bbe9f011, undefined, 8);
		var_d3f6be49 = namespace_84970cc4::function_8332f7f6(var_d3f6be49);
		for(var_c957f6b6 = 0; var_c957f6b6 < 8; var_c957f6b6++)
		{
			self function_4e77cd1b(var_d3f6be49[var_c957f6b6]);
		}
		wait(function_72a94f05(6, 8));
	}
	level namespace_ad23e503::function_1ab5ebec("arena_defend_sinkhole_collapse_done");
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_4e77cd1b
	Namespace: namespace_4124d
	Checksum: 0x9DFAF0A
	Offset: 0x5A70
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_4e77cd1b(var_377a9c22)
{
	self endon("hash_128f8789");
	level endon("hash_9d1a0e6b");
	var_dfcc01fd = function_c4d5ec1f("quadtank_main_turret_rocketpods_javelin");
	var_27c4935 = VectorScale((0, 0, 1), 300);
	var_4d75b06 = function_87f3c622(var_dfcc01fd, self.var_722885f3 + var_27c4935, var_377a9c22.var_722885f3, self, var_377a9c22);
	var_4d75b06 thread function_f1b4eb94("delete_javelins");
	wait(0.65);
}

/*
	Name: function_f1b4eb94
	Namespace: namespace_4124d
	Checksum: 0x2F0B90F0
	Offset: 0x5B48
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_f1b4eb94(var_8b453fd2)
{
	self endon("hash_128f8789");
	level waittill(var_8b453fd2);
	self function_dc8c8404();
}

/*
	Name: function_90d92a9b
	Namespace: namespace_4124d
	Checksum: 0xB96176C4
	Offset: 0x5B88
	Size: 0x309
	Parameters: 2
	Flags: None
*/
function function_90d92a9b(var_294306eb, var_8b453fd2)
{
	self endon("hash_128f8789");
	self.var_c77d2837 = namespace_2f06d687::function_22356ba7("cinematic_technical_riders");
	self thread function_8efb2b2(self.var_c77d2837);
	namespace_84970cc4::function_966ecb29(self.var_c77d2837, &function_faf9e017, "stop_ignoring_me");
	if(!isdefined(self.var_c77d2837))
	{
		self.var_c77d2837 = [];
	}
	else if(!function_6e2770d8(self.var_c77d2837))
	{
		self.var_c77d2837 = function_84970cc4(self.var_c77d2837);
	}
	self.var_c77d2837[self.var_c77d2837.size] = self;
	if(self.var_170527fb == "arena_defend_technical_01_vh")
	{
		self thread function_11d73ca7(1);
		self thread function_3a136a27(1);
		level notify("hash_e75ae3d1");
	}
	if(self.var_170527fb == "arena_defend_technical_02_vh")
	{
		self thread function_11d73ca7(2);
		self thread function_3a136a27(2);
		level notify("hash_e75ae3d1");
	}
	self.var_c77d2837 = namespace_84970cc4::function_b87262e(self.var_c77d2837);
	self thread namespace_cc27597::function_c35e6aab(var_294306eb, self.var_c77d2837);
	if(self.var_170527fb == "arena_defend_intro_technical_vh")
	{
		level namespace_ad23e503::function_1ab5ebec(var_8b453fd2);
		wait(3);
	}
	else
	{
		self waittill(var_8b453fd2);
	}
	self.var_c77d2837 = namespace_84970cc4::function_b87262e(self.var_c77d2837);
	self thread namespace_cc27597::function_43718187(var_294306eb, self.var_c77d2837);
	foreach(var_a3d46ee4 in self.var_c77d2837)
	{
		if(function_5b49d38c(var_a3d46ee4))
		{
			var_a3d46ee4 notify("hash_7e2c5894");
		}
	}
}

/*
	Name: function_11d73ca7
	Namespace: namespace_4124d
	Checksum: 0x34B24528
	Offset: 0x5EA0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_11d73ca7(var_d3fa0a6a)
{
	self endon("hash_128f8789");
	self function_921a1574("evt_tech_driveup_" + var_d3fa0a6a);
}

/*
	Name: function_3a136a27
	Namespace: namespace_4124d
	Checksum: 0x7808A592
	Offset: 0x5EE0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_3a136a27(var_d3fa0a6a)
{
	self waittill("hash_128f8789");
	self function_356a1c2a("evt_tech_driveup_" + var_d3fa0a6a);
}

/*
	Name: function_8efb2b2
	Namespace: namespace_4124d
	Checksum: 0xF33D8E56
	Offset: 0x5F28
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_8efb2b2(var_d925663e)
{
	self endon("hash_60ddc943");
	self waittill("hash_128f8789");
	foreach(var_fb960e47 in var_d925663e)
	{
		namespace_96fa87af::function_36fe7898(var_fb960e47);
	}
}

/*
	Name: function_faf9e017
	Namespace: namespace_4124d
	Checksum: 0x610D9A38
	Offset: 0x5FE0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_faf9e017(var_8b453fd2)
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self waittill(var_8b453fd2);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_76dae413
	Namespace: namespace_4124d
	Checksum: 0xBC2705DC
	Offset: 0x6038
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_76dae413(var_8b453fd2)
{
	self endon("hash_128f8789");
	self endon("hash_c3bff305");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_b07228b6), "Dev Block strings are not supported" + self.var_722885f3 + "Dev Block strings are not supported");
	#/
	level waittill(var_8b453fd2);
	self thread namespace_96fa87af::function_edb3a94e(self.var_b07228b6);
}

/*
	Name: function_165738b0
	Namespace: namespace_4124d
	Checksum: 0xE1E944F2
	Offset: 0x60C8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_165738b0()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	self waittill("hash_6cf6ac7e");
	self namespace_82b91a51::function_4b741fdc();
}

/*
	Name: function_c3bff305
	Namespace: namespace_4124d
	Checksum: 0x18317681
	Offset: 0x6118
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_c3bff305()
{
	self endon("hash_128f8789");
	wait(0.1);
	self notify("hash_c3bff305");
	for(var_c6342f3d = function_243bb261(self.var_b07228b6, "targetname"); isdefined(var_c6342f3d.var_b07228b6);  = function_243bb261(self.var_b07228b6, "targetname"))
	{
	}
	self.var_722885f3 = var_c6342f3d.var_722885f3;
	self.var_6ab6f4fd = var_c6342f3d.var_6ab6f4fd;
	self notify("hash_6cf6ac7e", function_243bb261(var_c6342f3d.var_b07228b6, "targetname"));
	if(self namespace_ad23e503::function_dbca4c5d("warp_to_spline_end_done"))
	{
		self namespace_ad23e503::function_74d6b22f("warp_to_spline_end_done");
	}
}

/*
	Name: function_c23243fe
	Namespace: namespace_4124d
	Checksum: 0x8E08EFA3
	Offset: 0x6230
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_c23243fe()
{
	self endon("hash_128f8789");
	self endon("hash_4eb74b10");
	if(!isdefined(level.var_d1931a26))
	{
		level.var_d1931a26 = [];
	}
	var_ce9b528b = function_39f34f22();
	var_8c01780a = var_ce9b528b > level.var_d1931a26.size && self function_e238fc60() && !self namespace_82b91a51::function_d3426abc();
	if(var_8c01780a)
	{
		if(!isdefined(level.var_d1931a26))
		{
			level.var_d1931a26 = [];
		}
		else if(!function_6e2770d8(level.var_d1931a26))
		{
			level.var_d1931a26 = function_84970cc4(level.var_d1931a26);
		}
		level.var_d1931a26[level.var_d1931a26.size] = self;
		self namespace_82b91a51::function_958c7633(self);
		level waittill("hash_b4104c59");
		function_81403b2f(level.var_d1931a26, self, 0);
		self namespace_82b91a51::function_4b741fdc(self);
	}
}

/*
	Name: function_39f34f22
	Namespace: namespace_4124d
	Checksum: 0xCA843737
	Offset: 0x63A8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_39f34f22()
{
	var_ce9b528b = 5 - level.var_2395e945.size;
	return var_ce9b528b;
}

/*
	Name: function_f11b462a
	Namespace: namespace_4124d
	Checksum: 0x4FA870E2
	Offset: 0x63D8
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_f11b462a()
{
	return isdefined(level.var_d1931a26) && function_7f41c8e7(level.var_d1931a26, self);
}

/*
	Name: function_e238fc60
	Namespace: namespace_4124d
	Checksum: 0xABF6A367
	Offset: 0x6410
	Size: 0x1ED
	Parameters: 0
	Flags: None
*/
function function_e238fc60()
{
	if(!self namespace_6f7b2095::function_8e9c2efb())
	{
		var_9b5d33d6 = 0;
	}
	else
	{
		var_88c66c67 = self.var_6c003e31;
		var_9f50f457 = function_39f34f22();
		var_9b05e0cb = function_49c4d072(var_9f50f457 / 2);
		var_9b96ccff = var_9f50f457 - var_9b05e0cb;
		var_e144c878 = 0;
		var_2cc8e8ec = 0;
		foreach(var_78080f8f in level.var_d1931a26)
		{
			if(isdefined(var_78080f8f))
			{
				if(var_78080f8f.var_6c003e31 == "b")
				{
					var_e144c878++;
					continue;
				}
				if(var_78080f8f.var_6c003e31 == "y")
				{
					var_2cc8e8ec++;
				}
			}
		}
		if(var_e144c878 < var_9b05e0cb && var_88c66c67 == "b")
		{
			var_9b5d33d6 = 1;
		}
		else if(var_2cc8e8ec < var_9b96ccff && var_88c66c67 == "y")
		{
			var_9b5d33d6 = 1;
		}
		else
		{
			var_9b5d33d6 = 0;
		}
	}
	return var_9b5d33d6;
}

/*
	Name: function_e377e915
	Namespace: namespace_4124d
	Checksum: 0x3B341B56
	Offset: 0x6608
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_e377e915()
{
	if(!isdefined(level.var_d1931a26))
	{
		level.var_d1931a26 = [];
	}
	var_ce9b528b = function_39f34f22();
	if(level.var_d1931a26.size > var_ce9b528b)
	{
		var_78080f8f = namespace_84970cc4::function_47d18840(level.var_d1931a26);
		function_81403b2f(level.var_d1931a26, var_78080f8f, 0);
		if(function_5b49d38c(var_78080f8f))
		{
			var_78080f8f namespace_82b91a51::function_4b741fdc();
		}
	}
}

/*
	Name: function_94c406b0
	Namespace: namespace_4124d
	Checksum: 0xD2ECFD22
	Offset: 0x66D0
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_94c406b0(var_4ac85f5f)
{
	self endon("hash_128f8789");
	self thread function_275dd5bc(var_4ac85f5f);
	while(!self namespace_ad23e503::function_dbca4c5d("spawned_gunner"))
	{
		wait(1);
	}
	self namespace_ad23e503::function_1ab5ebec("spawned_gunner");
	var_402c598a = self namespace_96fa87af::function_ad4ec07a("gunner1");
	if(function_5b49d38c(var_402c598a))
	{
		var_402c598a namespace_d84e54db::function_c9e45d52(1);
	}
	level namespace_ad23e503::function_1ab5ebec("arena_defend_mobile_wall_doors_open");
	if(function_5b49d38c(var_402c598a))
	{
		var_402c598a namespace_d84e54db::function_c9e45d52(0);
		var_402c598a waittill("hash_128f8789");
	}
	wait(8);
	level namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
}

/*
	Name: function_275dd5bc
	Namespace: namespace_4124d
	Checksum: 0x30776159
	Offset: 0x6830
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_275dd5bc(var_4ac85f5f)
{
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
}

/*
	Name: function_68e4ea91
	Namespace: namespace_4124d
	Checksum: 0x8C335498
	Offset: 0x6870
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_68e4ea91(var_ab891f49)
{
	self endon("hash_128f8789");
	if(isdefined(var_ab891f49))
	{
		self function_169cc712(var_ab891f49);
	}
}

/*
	Name: function_7760068b
	Namespace: namespace_4124d
	Checksum: 0x3A6B5103
	Offset: 0x68B8
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function function_7760068b()
{
	self endon("hash_128f8789");
	self thread function_53da0c94();
	self namespace_ad23e503::function_c35e6aab("spawned_gunner");
	self namespace_ad23e503::function_c35e6aab("gunner_position_occupied");
	var_dfb53de7 = self function_1a304c27();
	var_44762fa4 = self function_9f43307f();
	var_dfb53de7 thread function_ac6832c4(self);
	self thread function_9590665a();
	self thread function_3a5cbbb7();
	self function_991ad231();
	self function_917f75ac(0, 1);
	if(self namespace_ad23e503::function_dbca4c5d("warp_to_spline_end_done"))
	{
		self namespace_ad23e503::function_1ab5ebec("warp_to_spline_end_done");
	}
	else
	{
		self waittill("hash_6cf6ac7e");
	}
	var_992af830 = self.var_722885f3;
	var_7098cc1a = self.var_6ab6f4fd;
	level notify(self.var_170527fb + "_reached_end_node");
	self namespace_96fa87af::function_a03a4445();
	wait(0.05);
	if(function_5b49d38c(var_44762fa4))
	{
		var_44762fa4 namespace_96fa87af::function_dca9dba2();
	}
	self waittill("hash_128f8789");
	self.var_722885f3 = var_992af830;
	self.var_6ab6f4fd = var_7098cc1a;
}

/*
	Name: function_53da0c94
	Namespace: namespace_4124d
	Checksum: 0x44E76225
	Offset: 0x6AE8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_53da0c94()
{
	self.var_137fb210 = 1;
	level waittill("hash_9919d3c1");
	if(isdefined(self))
	{
		self function_7d4fb40(VectorScale((0, 0, 1), 100));
	}
	level namespace_71e9cb84::function_331efedc("clear_all_dyn_ents", 1);
}

/*
	Name: function_3a5cbbb7
	Namespace: namespace_4124d
	Checksum: 0xD53263F
	Offset: 0x6B58
	Size: 0x237
	Parameters: 1
	Flags: None
*/
function function_3a5cbbb7(var_72ffe0f4)
{
	if(!isdefined(var_72ffe0f4))
	{
		var_72ffe0f4 = 0;
	}
	self endon("hash_128f8789");
	self namespace_37b990db::function_f4546867(1, 2, 0.25, 0.75, 1);
	while(1)
	{
		var_dfb53de7 = self namespace_96fa87af::function_ad4ec07a("gunner1");
		if(isdefined(var_dfb53de7))
		{
			self namespace_37b990db::function_bae40a28(1, 1);
			self namespace_ad23e503::function_74d6b22f("gunner_position_occupied");
			var_dfb53de7 waittill("hash_128f8789");
		}
		self namespace_37b990db::function_54bdb053(1);
		self namespace_ad23e503::function_9d134160("gunner_position_occupied");
		if(var_72ffe0f4)
		{
			wait(function_72a94f05(5, 8));
			if(self function_a13e19b7())
			{
				var_753bd441 = self function_ceda4e5b();
				if(function_5b49d38c(var_753bd441))
				{
					/#
						var_753bd441 thread function_569cfe0c(self);
					#/
					var_753bd441 thread namespace_96fa87af::function_230eadd7(self, "gunner1", 0);
					var_753bd441 namespace_82b91a51::function_5b7e3888("death", "in_vehicle");
				}
			}
		}
		else
		{
			break;
		}
	}
}

/*
	Name: function_ceda4e5b
	Namespace: namespace_4124d
	Checksum: 0x611A50F9
	Offset: 0x6D98
	Size: 0x175
	Parameters: 0
	Flags: None
*/
function function_ceda4e5b()
{
	var_e3b635fb = function_b8494651(self.var_3e94206a);
	var_7b8aab61 = [];
	foreach(var_78080f8f in var_e3b635fb)
	{
		if(!isdefined(var_78080f8f.var_96fa87af) && var_78080f8f.var_8fc0e50e === "human")
		{
			if(!isdefined(var_7b8aab61))
			{
				var_7b8aab61 = [];
			}
			else if(!function_6e2770d8(var_7b8aab61))
			{
				var_7b8aab61 = function_84970cc4(var_7b8aab61);
			}
			var_7b8aab61[var_7b8aab61.size] = var_78080f8f;
		}
	}
	var_dfb53de7 = function_f926d8e8(var_7b8aab61, self.var_722885f3, 1, var_e3b635fb.size, 800)[0];
	return var_dfb53de7;
}

/*
	Name: function_a13e19b7
	Namespace: namespace_4124d
	Checksum: 0xC3C9E52F
	Offset: 0x6F18
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_a13e19b7()
{
	var_56dd1913 = function_b8494651(function_b37c6c7e(self.var_3e94206a));
	var_eb61c3d3 = function_f926d8e8(var_56dd1913, self.var_722885f3, 1, var_56dd1913.size, 300);
	var_eeec5f70 = var_eb61c3d3.size > 0;
	var_93b5fb30 = !var_eeec5f70;
	return var_93b5fb30;
}

/*
	Name: function_b37c6c7e
	Namespace: namespace_4124d
	Checksum: 0x1AF1997F
	Offset: 0x6FC8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_b37c6c7e(var_6d4542e6)
{
	if(var_6d4542e6 == "axis")
	{
		var_d08b8571 = "allies";
	}
	else if(var_6d4542e6 == "allies")
	{
		var_d08b8571 = "axis";
	}
	else
	{
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_6d4542e6 + "Dev Block strings are not supported");
		var_d08b8571 = "none";
	}
	/#
	#/
	return var_d08b8571;
}

/*
	Name: function_569cfe0c
	Namespace: namespace_4124d
	Checksum: 0xE5962A28
	Offset: 0x7068
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_569cfe0c(var_96fa87af)
{
	self endon("hash_128f8789");
	self endon("hash_a8daf8a9");
	var_96fa87af endon("hash_128f8789");
	while(1)
	{
		/#
			function_4e418837(self.var_722885f3, var_96fa87af.var_722885f3, (1, 0, 0), 1, 0, 1);
		#/
		wait(0.05);
	}
}

/*
	Name: function_9590665a
	Namespace: namespace_4124d
	Checksum: 0x9E4D21EE
	Offset: 0x70F0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9590665a()
{
	self endon("hash_128f8789");
	self waittill("hash_36c19b73");
	self function_2992720d();
}

/*
	Name: function_ac6832c4
	Namespace: namespace_4124d
	Checksum: 0x7A14719C
	Offset: 0x7130
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_ac6832c4(var_35a302af)
{
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		self function_52fddbd0();
	}
	if(isdefined(var_35a302af))
	{
		if(!namespace_96fa87af::function_ed0c8cd8(var_35a302af))
		{
			var_35a302af namespace_37b990db::function_54bdb053(1);
		}
	}
}

/*
	Name: function_837889c6
	Namespace: namespace_4124d
	Checksum: 0xF672C0BF
	Offset: 0x71B0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_837889c6(var_35a302af)
{
	self endon("hash_128f8789");
	var_35a302af namespace_82b91a51::function_564f2d81("death", "kill_passengers");
	self namespace_82b91a51::function_4b741fdc();
	self function_52fddbd0();
	self function_2992720d();
}

/*
	Name: function_1a304c27
	Namespace: namespace_4124d
	Checksum: 0xC23F55C6
	Offset: 0x7240
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_1a304c27()
{
	var_dfb53de7 = namespace_2f06d687::function_7387a40a("arena_defend_technical_gunner_generic");
	var_dfb53de7 namespace_96fa87af::function_230eadd7(self, "gunner1", 1);
	self namespace_ad23e503::function_74d6b22f("spawned_gunner");
	return var_dfb53de7;
}

/*
	Name: function_9f43307f
	Namespace: namespace_4124d
	Checksum: 0xFF097D88
	Offset: 0x72B8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_9f43307f()
{
	var_44762fa4 = namespace_2f06d687::function_7387a40a("arena_defend_technical_driver_generic");
	var_44762fa4 namespace_96fa87af::function_230eadd7(self, "driver", 1);
	return var_44762fa4;
}

/*
	Name: function_193cfd7e
	Namespace: namespace_4124d
	Checksum: 0x94B0610
	Offset: 0x7310
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_193cfd7e()
{
	var_83fa3476 = function_243bb261(self.var_b07228b6, "targetname");
	namespace_96fa87af::function_edb3a94e(var_83fa3476);
}

/*
	Name: function_ca365357
	Namespace: namespace_4124d
	Checksum: 0xEDC80FAC
	Offset: 0x7360
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_ca365357()
{
	self.var_3e94206a = "allies";
}

/*
	Name: function_345b912d
	Namespace: namespace_4124d
	Checksum: 0x4E06D774
	Offset: 0x7380
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_345b912d()
{
	namespace_4dbf3ae3::function_42e87952("arena_defend_colors_allies_behind_mobile_wall");
}

/*
	Name: function_f74d43a6
	Namespace: namespace_4124d
	Checksum: 0xF62289D3
	Offset: 0x73A8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_f74d43a6(var_a9441d81)
{
	namespace_4dbf3ae3::function_42e87952("arena_defend_color_allies_" + var_a9441d81);
}

/*
	Name: function_8bcd7f99
	Namespace: namespace_4124d
	Checksum: 0x3B6E43DF
	Offset: 0x73E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8bcd7f99()
{
	function_f74d43a6("wp_02_03");
}

/*
	Name: function_5f3c9cc9
	Namespace: namespace_4124d
	Checksum: 0x93344838
	Offset: 0x7408
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5f3c9cc9()
{
	function_f74d43a6("wp_04");
	level thread function_7b619b56();
}

/*
	Name: function_ce07d8df
	Namespace: namespace_4124d
	Checksum: 0x3E0AD48F
	Offset: 0x7448
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_ce07d8df()
{
	level waittill("hash_18cf70dc");
	namespace_2f06d687::function_2b37a3c9("detonation_guy", "targetname", &function_eb0491d7);
	level namespace_cc27597::function_c35e6aab("cin_ram_05_demostreet_vign_intro_detonation_guy");
	level.var_2fd26037.var_7dfaf62 = 32;
	var_76be17b8 = function_b4cb3503("hendricks_mobile_wall_start_node", "targetname");
	level.var_2fd26037 thread namespace_d84e54db::function_19e98020(var_76be17b8, 32, 1, undefined, 1);
	level.var_9db406db.var_7dfaf62 = 32;
	var_f47e732e = function_b4cb3503("arena_defend_demostreet_intro_khalil", "targetname");
	level.var_9db406db thread namespace_d84e54db::function_19e98020(var_f47e732e, 32, 1, undefined, 1);
}

/*
	Name: function_7b619b56
	Namespace: namespace_4124d
	Checksum: 0x898054FA
	Offset: 0x7598
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_7b619b56()
{
	level namespace_cc27597::function_c35e6aab("cin_gen_melee_hendricksmoment_closecombat_robot");
}

/*
	Name: function_5c0d1d04
	Namespace: namespace_4124d
	Checksum: 0x9721BF53
	Offset: 0x75C8
	Size: 0x515
	Parameters: 0
	Flags: None
*/
function function_5c0d1d04()
{
	var_dada6931 = function_fe0cfd2e("arena_defend_wasp_vignette_nodes", "script_noteworthy");
	/#
		namespace_33b293fd::function_a7ee953(var_dada6931.size, "Dev Block strings are not supported");
	#/
	var_1146278c = var_dada6931.size;
	var_cb121782 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_dada6931.size; var_c957f6b6++)
	{
		var_78080f8f = namespace_2f06d687::function_7387a40a("arena_defend_wasp_vignette_friendly");
		if(!isdefined(var_cb121782))
		{
			var_cb121782 = [];
		}
		else if(!function_6e2770d8(var_cb121782))
		{
			var_cb121782 = function_84970cc4(var_cb121782);
		}
		var_cb121782[var_cb121782.size] = var_78080f8f;
		var_78080f8f namespace_d84e54db::function_c9e45d52(1);
		wait(2.5);
	}
	while(var_cb121782.size != var_dada6931.size)
	{
		wait(1);
		var_ac8ea4f8 = function_24e95264("allies", "human");
		var_ac8ea4f8 = function_57efbe1(var_ac8ea4f8, var_dada6931[0].var_722885f3, var_ac8ea4f8.size);
		var_cb121782 = [];
		foreach(var_78080f8f in var_ac8ea4f8)
		{
			var_1fc6c9ef = !var_78080f8f namespace_82b91a51::function_d3426abc() && !var_78080f8f function_f11b462a() && !var_78080f8f function_b7f9b625();
			if(var_1fc6c9ef)
			{
				if(!isdefined(var_cb121782))
				{
					var_cb121782 = [];
				}
				else if(!function_6e2770d8(var_cb121782))
				{
					var_cb121782 = function_84970cc4(var_cb121782);
				}
				var_cb121782[var_cb121782.size] = var_78080f8f;
				var_78080f8f namespace_d84e54db::function_c9e45d52(1);
			}
			if(var_cb121782.size == var_1146278c)
			{
				break;
			}
		}
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_cb121782.size; var_c957f6b6++)
	{
		if(function_5b49d38c(var_cb121782[var_c957f6b6]))
		{
			var_cb121782[var_c957f6b6].var_7dfaf62 = 64;
			var_cb121782[var_c957f6b6] thread namespace_d84e54db::function_19e98020(var_dada6931[var_c957f6b6], 64, 0, "goal", 0, 1);
			self thread function_5b77431d(var_cb121782[var_c957f6b6]);
		}
	}
	var_1a1ffb1e = 0;
	do
	{
		self waittill("hash_65974e40");
		var_1a1ffb1e++;
	}
	while(!var_1a1ffb1e < var_cb121782.size);
	function_87d41f89();
	foreach(var_78080f8f in var_cb121782)
	{
		if(function_5b49d38c(var_78080f8f))
		{
			var_78080f8f namespace_d84e54db::function_c9e45d52(0);
		}
	}
	for(var_a3557c4d = 0; var_a3557c4d < 2; var_a3557c4d++)
	{
		var_86b029e3 = namespace_2f06d687::function_7387a40a("arena_defend_vignette_wasp");
		var_86b029e3 thread function_2047b562(var_cb121782, var_a3557c4d);
		wait(0.5);
	}
}

/*
	Name: function_87d41f89
	Namespace: namespace_4124d
	Checksum: 0x66BD5E8A
	Offset: 0x7AE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_87d41f89()
{
	level endon("hash_adc3dca5");
	namespace_4dbf3ae3::function_1ab5ebec("arena_defend_wasp_vignette_trigger");
}

/*
	Name: function_2047b562
	Namespace: namespace_4124d
	Checksum: 0x15DAFD02
	Offset: 0x7B18
	Size: 0x32B
	Parameters: 2
	Flags: None
*/
function function_2047b562(var_d3f6be49, var_1d54629)
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self function_500dc2f7(300);
	var_1382d11e = function_243bb261("arena_defend_wasp_vignette_path" + var_1d54629, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_1382d11e), "Dev Block strings are not supported" + var_1d54629 + "Dev Block strings are not supported");
	#/
	self namespace_72ee5da4::function_81b6f1ac();
	self namespace_96fa87af::function_edb3a94e(var_1382d11e);
	self namespace_82b91a51::function_9fcf3cd8(6, "reached_end_node");
	self namespace_72ee5da4::function_efe9815e("combat");
	foreach(var_78080f8f in var_d3f6be49)
	{
		if(isdefined(var_78080f8f) && function_5b49d38c(var_78080f8f))
		{
			self function_169cc712(var_78080f8f);
			var_78080f8f namespace_82b91a51::function_4b741fdc();
			if(isdefined(var_78080f8f) && function_5b49d38c(var_78080f8f))
			{
				var_78080f8f.var_3a90f16b = 1;
				self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_78080f8f);
				var_78080f8f namespace_82b91a51::function_5b7e3888("death", "pain");
				if(function_5b49d38c(var_78080f8f))
				{
					var_78080f8f function_2992720d();
				}
				wait(2);
			}
		}
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	var_1639b17a = function_6ada35ba("arena_defend_wasp_goal_volume", "targetname");
	self function_169cc712(var_1639b17a, 1);
}

/*
	Name: function_5b77431d
	Namespace: namespace_4124d
	Checksum: 0xF8B8175E
	Offset: 0x7E50
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_5b77431d(var_78080f8f)
{
	var_7aa7a596 = var_78080f8f namespace_82b91a51::function_9fcf3cd8(15, "goal", "near_goal", "death");
	self notify("hash_65974e40");
}

/*
	Name: function_448954e7
	Namespace: namespace_4124d
	Checksum: 0x9AD6D3AB
	Offset: 0x7EB0
	Size: 0x2A7
	Parameters: 6
	Flags: None
*/
function function_448954e7(var_7b81749, var_79939297, var_6a4360e2, var_fa152ffe, var_8f89056b, var_ff46257e)
{
	if(!isdefined(var_8f89056b))
	{
		var_8f89056b = 0;
	}
	if(!isdefined(var_ff46257e))
	{
		var_ff46257e = 1;
	}
	var_9de10fe3 = function_b4cb3503(var_6a4360e2, "targetname");
	do
	{
		var_e3b635fb = function_24e95264(var_79939297, var_7b81749);
		var_bb54a372 = function_57efbe1(var_e3b635fb, var_9de10fe3.var_722885f3, var_e3b635fb.size, var_8f89056b, var_fa152ffe);
		foreach(var_d84e54db in var_e3b635fb)
		{
			if(var_d84e54db namespace_82b91a51::function_d3426abc() || var_d84e54db function_f11b462a())
			{
				function_81403b2f(var_bb54a372, var_d84e54db, 0);
			}
		}
		if(var_bb54a372.size > 0)
		{
			var_78080f8f = var_bb54a372[0];
		}
		else
		{
			wait(1);
		}
	}
	while(!!isdefined(var_78080f8f));
	var_78080f8f.var_7dfaf62 = 32;
	var_713444e5 = 0;
	var_aa686173 = undefined;
	var_5b862066 = 0;
	var_b1462508 = 1;
	if(!var_ff46257e)
	{
		var_78080f8f.var_69dd5d62 = 0;
	}
	var_78080f8f thread namespace_d84e54db::function_19e98020(var_9de10fe3, 32, var_713444e5, var_aa686173, var_5b862066, var_b1462508);
	var_78080f8f namespace_82b91a51::function_9fcf3cd8(15, "goal", "death");
	return var_78080f8f;
}

/*
	Name: function_3c00dec
	Namespace: namespace_4124d
	Checksum: 0xAF9DC6DF
	Offset: 0x8160
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_3c00dec()
{
	var_35a302af = namespace_96fa87af::function_7387a40a("arena_defend_intro_technical");
	var_35a302af namespace_ad23e503::function_c35e6aab("warp_to_spline_end_done");
	while(!var_35a302af namespace_37b990db::function_12434548(1))
	{
		wait(0.25);
	}
	var_35a302af namespace_37b990db::function_54bdb053(1);
	level waittill("hash_e83cd268");
	level namespace_cc27597::function_43718187("cin_ram_05_02_block_vign_mowed");
	var_35a302af namespace_37b990db::function_bae40a28(1, 1);
}

/*
	Name: function_18767202
	Namespace: namespace_4124d
	Checksum: 0xD4E3E932
	Offset: 0x8238
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_18767202(var_c77d2837)
{
	var_35a302af = function_6ada35ba("arena_defend_intro_technical_vh", "targetname");
	var_44dee395 = function_6ada35ba("so_arena_defend_intro_turret_target", "targetname");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4) && function_5b49d38c(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
		}
	}
	if(isdefined(var_35a302af) && isdefined(var_44dee395))
	{
		var_35a302af thread namespace_37b990db::function_d104c596(var_44dee395, 10, (0, 0, 0), 1, 0);
	}
}

/*
	Name: function_f5350035
	Namespace: namespace_4124d
	Checksum: 0x513E523A
	Offset: 0x8398
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_f5350035()
{
	self endon("hash_128f8789");
	self thread function_cb9acce5();
	self namespace_d84e54db::function_c9e45d52(1);
	var_9cead347 = function_b4cb3503("node_spike_launch_start", "targetname");
	self namespace_d84e54db::function_19e98020(var_9cead347, 8, 1, "goal");
	self.var_7dfaf62 = 8;
	wait(5);
	self namespace_d84e54db::function_c9e45d52(0);
	wait(5);
	self.var_7dfaf62 = 512;
}

/*
	Name: function_cb9acce5
	Namespace: namespace_4124d
	Checksum: 0x3F8955CC
	Offset: 0x8470
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_cb9acce5()
{
	self waittill("hash_128f8789");
}

/*
	Name: function_9b890ccb
	Namespace: namespace_4124d
	Checksum: 0xA771BDAA
	Offset: 0x8488
	Size: 0x1E7
	Parameters: 0
	Flags: None
*/
function function_9b890ccb()
{
	level endon("hash_98206e58");
	level.var_bbe9f011 = function_99201f25("arena_defend_tank_target_e3", "targetname");
	var_140621eb = [];
	foreach(var_b07228b6 in level.var_bbe9f011)
	{
		var_3929e8a2 = function_9b7fda5e("script_model", var_b07228b6.var_722885f3);
		var_3929e8a2.var_6ab6f4fd = var_b07228b6.var_6ab6f4fd;
		var_3929e8a2.var_ff1f6868 = "sinkhole_collapse";
		var_3929e8a2 function_e48f905e("tag_origin");
		namespace_82b91a51::function_76f13293();
		if(!isdefined(var_140621eb))
		{
			var_140621eb = [];
		}
		else if(!function_6e2770d8(var_140621eb))
		{
			var_140621eb = function_84970cc4(var_140621eb);
		}
		var_140621eb[var_140621eb.size] = var_3929e8a2;
	}
	while(1)
	{
		level waittill("hash_719f4ee5");
		level.var_bbe9f011 = function_525ae497(level.var_9b1393e7, level.var_bbe9f011, 0, 0);
	}
}

/*
	Name: function_d8bb5a8e
	Namespace: namespace_4124d
	Checksum: 0xD7A42470
	Offset: 0x8678
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_d8bb5a8e()
{
	level endon("hash_f564c51a");
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	namespace_d5067552::function_bae40a28("sm_arena_defend_initial_enemies");
	namespace_d5067552::function_bae40a28("sm_arena_defend_initial_rear");
	namespace_2f06d687::function_22356ba7("arena_defend_initial_right_building");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("arena_defend_wall_allies");
	namespace_d5067552::function_bae40a28("arena_defend_wall_allies2");
	namespace_d5067552::function_bae40a28("arena_defend_bldg_allies");
	namespace_d5067552::function_bae40a28("arena_defend_cafe_defenders");
	level thread namespace_82b91a51::function_67520c6a(7, undefined, &function_345b912d);
	level thread namespace_82b91a51::function_67520c6a(7, undefined, &namespace_ad23e503::function_74d6b22f, "arena_defend_initial_spawns_done");
	namespace_d5067552::function_347e835a("sm_arena_defend_initial_enemies");
	level namespace_ad23e503::function_74d6b22f("arena_defend_initial_spawns_done");
}

/*
	Name: function_f4554829
	Namespace: namespace_4124d
	Checksum: 0xEFBD62A5
	Offset: 0x87F8
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_f4554829()
{
	var_dfcbd82b = function_b4cb3503("hendricks_mobile_wall_top_node", "targetname");
	level.var_2fd26037.var_7dfaf62 = 64;
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	namespace_391e4301::function_3f4f84e("arena_defend_mobile_wall_top_nodes", "script_noteworthy", 1);
	level.var_2fd26037 function_169cc712(var_dfcbd82b, 1);
	level.var_2fd26037 namespace_82b91a51::function_c9aa1ff("goal", 15);
	level namespace_ad23e503::function_1ab5ebec("arena_defend_intro_technical_disabled");
	namespace_d5067552::function_bae40a28("sm_wp_01_defenders");
	wait(4);
	function_c693a390();
	wait(2);
	level thread function_f74d43a6("wp_01");
	namespace_4dbf3ae3::function_42e87952("arena_defend_tech_1_trig", "targetname", undefined, 0);
	function_c661367c();
}

/*
	Name: function_da99ce30
	Namespace: namespace_4124d
	Checksum: 0x28EC3A8B
	Offset: 0x8978
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_da99ce30()
{
	namespace_d5067552::function_2992720d("sm_wp_01_defenders");
	namespace_d5067552::function_bae40a28("sm_wp_02_defenders");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("arena_defend_push_wasps");
	namespace_82b91a51::function_76f13293();
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "esl4_hostile_grunts_movin_0";
	var_2d3d7b7[1] = "esl3_enemy_grunts_breakin_0";
	var_2d3d7b7[2] = "esl4_hostile_grunts_at_so_0";
	var_78080f8f = function_6f24118d();
	var_78080f8f thread namespace_71b8dba1::function_81141386(function_7ff50323(var_2d3d7b7));
	if(!level namespace_ad23e503::function_7922262b("billboard1_crashed"))
	{
		namespace_d5067552::function_bae40a28("sm_arena_defend_snipers_center_building");
		if(level.var_2395e945.size > 1)
		{
			var_2d3d7b7 = [];
			var_2d3d7b7[0] = "esl1_sniper_on_the_roof_0";
			var_2d3d7b7[1] = "egy2_i_have_an_enemy_snip_0";
			var_78080f8f = function_6f24118d();
			var_78080f8f thread namespace_71b8dba1::function_81141386(function_7ff50323(var_2d3d7b7), 2);
		}
	}
}

/*
	Name: function_44a7ad7b
	Namespace: namespace_4124d
	Checksum: 0x2626F149
	Offset: 0x8B38
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_44a7ad7b()
{
	namespace_4dbf3ae3::function_4ab4cb6(15, "wp_03_goal_trig", "targetname");
	namespace_d5067552::function_bae40a28("sm_wp_03_defenders_jumpers");
	namespace_d5067552::function_bae40a28("arena_defend_robot_fill");
	function_60f90684();
}

/*
	Name: function_58b8beac
	Namespace: namespace_4124d
	Checksum: 0x82CA460D
	Offset: 0x8BB0
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_58b8beac()
{
	self endon("hash_128f8789");
	self.var_c584775c = 1;
	var_d403d38a = function_dc99997a(1, 5);
	var_a688f237 = "scene_wall_left_jumpover_up_0" + var_d403d38a;
	var_432b4304 = "scene_wall_left_jumpover_down_0" + var_d403d38a;
	level namespace_cc27597::function_5c143f59(var_a688f237, "targetname", self, 0.5);
	level namespace_cc27597::function_43718187(var_432b4304, self);
	self.var_c584775c = 0;
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	if(isdefined(self.var_b07228b6))
	{
		var_57825414 = function_6ada35ba(self.var_b07228b6, "targetname");
		self function_169cc712(var_57825414, 1);
	}
}

/*
	Name: function_8790f24e
	Namespace: namespace_4124d
	Checksum: 0x92EA986F
	Offset: 0x8CF8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_8790f24e()
{
	namespace_d5067552::function_bae40a28("sm_arena_defend_fill_middle");
	namespace_d5067552::function_bae40a28("sm_arena_defend_fill_middle_wasps");
	level namespace_82b91a51::function_67520c6a(15, undefined, &namespace_ad23e503::function_74d6b22f, "arena_defend_second_wave_weak_points_discovered");
	namespace_2f06d687::function_c0434ff5("arena_defend_fill_middle", 3);
	level namespace_ad23e503::function_74d6b22f("arena_defend_second_wave_weak_points_discovered");
	namespace_d5067552::function_bae40a28("sm_wp_03_defenders");
}

/*
	Name: function_ad936cb7
	Namespace: namespace_4124d
	Checksum: 0x220D9F3F
	Offset: 0x8DC0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_ad936cb7()
{
	level namespace_82b91a51::function_67520c6a(20, undefined, &namespace_ad23e503::function_74d6b22f, "arena_defend_third_wave_weak_points_discovered");
	namespace_2f06d687::function_c0434ff5("arena_defend_checkpoint_breach_enemies", 30);
	level namespace_ad23e503::function_74d6b22f("arena_defend_third_wave_weak_points_discovered");
}

/*
	Name: function_f5261dec
	Namespace: namespace_4124d
	Checksum: 0x517A2C72
	Offset: 0x8E40
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_f5261dec()
{
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("wp_01_destroyed", "wp_02_destroyed", "wp_03_destroyed", "wp_05_destroyed"));
	level thread namespace_71b8dba1::function_a463d127("kane_one_more_0", 1);
	wait(3);
	function_37cbcf1a("veh_quadtank_alarm_cinematic", (4847, -25831, 566));
	level namespace_ad23e503::function_74d6b22f("arena_defend_last_wave_weak_points_discovered");
}

/*
	Name: function_7cc654ff
	Namespace: namespace_4124d
	Checksum: 0xE51A6B2A
	Offset: 0x8F00
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_7cc654ff()
{
	level thread function_d8e5f873();
	level thread function_19751093();
	level thread namespace_391e4301::function_e7fdcb95("checkpoint_wall_phalanx", "phalanx_column", 4, 1, 10, undefined, 1, "arena_defend_wave_02b_phalanx", "script_noteworthy", 2);
	namespace_d5067552::function_bae40a28("sm_arena_defend_center_fill_right");
	level namespace_82b91a51::function_c9aa1ff("checkpoint_wall_breach_complete", 20);
	namespace_d5067552::function_2992720d("sm_wp_03_defenders_jumpers");
	namespace_d5067552::function_2992720d("sm_arena_defend_fill_middle");
	namespace_d5067552::function_2992720d("sm_arena_defend_fill_middle_wasps");
	namespace_4dbf3ae3::function_42e87952("arena_defend_tech_2_trig", "targetname");
	wait(5);
	namespace_d5067552::function_bae40a28("arena_defend_far_left_enemies");
	namespace_d5067552::function_bae40a28("sm_arena_defend_center_fill_left");
	namespace_d5067552::function_bae40a28("sm_wp_05_defenders");
	wait(5);
	function_f74d43a6("wp_05");
	level namespace_82b91a51::function_c9aa1ff("arena_defend_technical_02_vh_reached_end_node", 10);
	wait(5);
	if(!level namespace_ad23e503::function_7922262b("billboard1_crashed"))
	{
		namespace_d5067552::function_bae40a28("arena_defend_snipers_02");
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "esl1_sniper_on_the_roof_0";
		var_2d3d7b7[1] = "egy2_i_have_an_enemy_snip_0";
		var_78080f8f = function_6f24118d();
		var_78080f8f thread namespace_71b8dba1::function_81141386(function_7ff50323(var_2d3d7b7), 2);
	}
}

/*
	Name: function_30f53fbc
	Namespace: namespace_4124d
	Checksum: 0xFE882C77
	Offset: 0x9170
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_30f53fbc()
{
	namespace_d5067552::function_41cd3a68(25);
	level thread function_2c83fc3f();
	namespace_d5067552::function_bae40a28("arena_defend_push_enemies");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("arena_defend_push_wasps");
	namespace_82b91a51::function_76f13293();
	if(!level namespace_ad23e503::function_7922262b("billboard1_crashed"))
	{
		namespace_d5067552::function_bae40a28("arena_defend_snipers_03");
		namespace_82b91a51::function_76f13293();
	}
	namespace_d5067552::function_bae40a28("arena_defend_heavy_units");
}

/*
	Name: function_2c83fc3f
	Namespace: namespace_4124d
	Checksum: 0x36DA8AAA
	Offset: 0x9260
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_2c83fc3f()
{
	level thread function_e21c0d4f("checkpoint_wall_phalanx_right");
	wait(2);
	level thread function_e21c0d4f("checkpoint_wall_phalanx");
	wait(2);
}

/*
	Name: function_e21c0d4f
	Namespace: namespace_4124d
	Checksum: 0xC9DA4DDD
	Offset: 0x92B8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_e21c0d4f(var_2c34daa1)
{
	level endon("hash_f0e5af03");
	var_489b2980 = namespace_14b42b8a::function_7922262b(var_2c34daa1 + "_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b(var_2c34daa1 + "_end").var_722885f3;
	var_4720665e = 0;
	while(1)
	{
		var_4720665e++;
		var_27aba1a0 = 2;
		function_9b385ca5();
		var_a3decff = var_3bc9e3b7;
		function_e6cab0ff(var_a3decff, "phalanx_column", var_489b2980, var_491bc153, var_27aba1a0);
		do
		{
			wait(0.25);
		}
		while(!(isdefined(var_a3decff) && var_a3decff.var_2a209035 == 0));
		wait(5);
	}
}

/*
	Name: function_2fcc9369
	Namespace: namespace_4124d
	Checksum: 0x8E7E1B9B
	Offset: 0x93E8
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_2fcc9369(var_a466e982)
{
	var_2b309d3d = function_99201f25(var_a466e982, "script_noteworthy");
	foreach(var_df3a43de in var_2b309d3d)
	{
		if(isdefined(var_df3a43de.var_4be20d44))
		{
			var_cbb15570 = var_df3a43de.var_4be20d44;
		}
		else
		{
			var_cbb15570 = var_df3a43de.var_170527fb;
		}
		namespace_d5067552::function_2992720d(var_cbb15570);
	}
}

/*
	Name: function_cac20541
	Namespace: namespace_4124d
	Checksum: 0x7235D154
	Offset: 0x94F8
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_cac20541()
{
	level namespace_ad23e503::function_1ab5ebec("weak_points_objective_active");
	var_f6a86bdd = function_785a0ed();
	foreach(var_a4952fb2 in var_f6a86bdd)
	{
		foreach(var_20488710 in var_a4952fb2)
		{
			if(isdefined(var_20488710.var_2f201aa5))
			{
				level namespace_ad23e503::function_8870cfa8(var_20488710.var_2f201aa5);
			}
			level namespace_ad23e503::function_74d6b22f(var_20488710.var_672c6068 + "_identified");
			if(isdefined(var_20488710.var_13c6e56))
			{
				foreach(var_13c6e56 in var_20488710.var_13c6e56)
				{
					level thread [[var_13c6e56]]();
				}
			}
			else if(isdefined(var_20488710.var_26323261))
			{
				foreach(var_26323261 in var_20488710.var_26323261)
				{
					level thread namespace_391e4301::function_cf956358(var_20488710.var_672c6068 + "_destroyed", var_26323261);
				}
			}
		}
	}
	function_d4f82627("set", "cp_mi_cairo_ramses2_sinkhole_collapse");
	function_3e55e3();
	level thread namespace_a6a248fc::function_7b69c801();
	level namespace_ad23e503::function_74d6b22f("all_weak_points_destroyed");
	if(isdefined(level.var_4f474e60))
	{
		level thread [[level.var_4f474e60]]();
	}
	level thread function_66f027df();
}

/*
	Name: function_e8a47a87
	Namespace: namespace_4124d
	Checksum: 0xC6481AAB
	Offset: 0x9868
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_e8a47a87()
{
	var_5ed6c39f = function_84970cc4("wp_01", "wp_02", "wp_03", "wp_04", "wp_05");
	foreach(var_2422bd4b in var_5ed6c39f)
	{
		level namespace_cc27597::function_c35e6aab(var_2422bd4b);
		namespace_82b91a51::function_76f13293();
	}
	function_6ddd4fa4("sinkhole_misc_model");
	var_f6bd6af3 = function_99201f25("ad_weak_point_trig", "targetname");
	namespace_84970cc4::function_966ecb29(var_f6bd6af3, &function_182b2e13);
	function_cd83971c();
}

/*
	Name: function_786c5bca
	Namespace: namespace_4124d
	Checksum: 0xA0AB0BE2
	Offset: 0x99D0
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_786c5bca()
{
	var_35a302af = namespace_96fa87af::function_7387a40a("arena_defend_intro_technical");
	var_35a302af namespace_ad23e503::function_c35e6aab("warp_to_spline_end_done");
	while(!var_35a302af namespace_37b990db::function_12434548(1))
	{
		wait(0.25);
	}
	var_35a302af namespace_37b990db::function_54bdb053(1);
	level waittill("hash_e83cd268");
	level namespace_cc27597::function_43718187("cin_ram_05_02_block_vign_mowed");
	var_35a302af namespace_37b990db::function_bae40a28(1, 1);
	return var_35a302af;
}

/*
	Name: function_bbf0087d
	Namespace: namespace_4124d
	Checksum: 0xDA0CD71F
	Offset: 0x9AA8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_bbf0087d()
{
	level thread function_2db42799();
	level namespace_ad23e503::function_1ab5ebec("arena_defend_spawn");
	level thread function_f4554829();
	namespace_d5067552::function_bae40a28("arena_defend_wall_allies");
	namespace_d5067552::function_bae40a28("arena_defend_wall_top_allies");
}

/*
	Name: function_27342097
	Namespace: namespace_4124d
	Checksum: 0x96EF5106
	Offset: 0x9B38
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_27342097()
{
	level namespace_cc27597::function_43718187("cin_ram_05_01_block_vign_rip_khalilorder");
	level thread function_7ad9ea68();
}

/*
	Name: function_2db42799
	Namespace: namespace_4124d
	Checksum: 0xE89D347C
	Offset: 0x9B80
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_2db42799()
{
	level endon("hash_46ed824");
	level namespace_ad23e503::function_1ab5ebec("arena_defend_intro_technical_disabled");
	namespace_d5067552::function_27bf2e8("sm_arena_defend_initial_enemies", 4);
	var_56dd1913 = namespace_d5067552::function_423eae50("sm_arena_defend_initial_enemies");
	var_61fd03c7 = function_6ada35ba("initial_enemies_fallback_goal", "targetname");
	namespace_84970cc4::function_eaab05dc(var_56dd1913, &function_169cc712, var_61fd03c7);
}

/*
	Name: function_cd83971c
	Namespace: namespace_4124d
	Checksum: 0xF1D2F18D
	Offset: 0x9C50
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_cd83971c()
{
	var_75aa23da = function_84970cc4(&function_da99ce30, &function_1d79812);
	var_a433ed0f = function_84970cc4(&function_8790f24e, &function_2fa2a80f, &function_8bcd7f99, &function_5c0d1d04, &function_44a7ad7b);
	var_6596c11c = function_84970cc4(&function_7cc654ff, &function_102382b1, &function_ad936cb7);
	var_38d11fac = function_84970cc4(&function_5f3c9cc9, &function_8394a26f, &function_34c51c66, &function_ce07d8df);
	function_d9d5f32(1, "wp_01", undefined, var_75aa23da, var_a433ed0f);
	function_d9d5f32(2, "wp_02", "arena_defend_second_wave_weak_points_discovered", &function_d5457906);
	function_d9d5f32(2, "wp_03", undefined, undefined, var_6596c11c);
	function_d9d5f32(3, "wp_05", "arena_defend_third_wave_weak_points_discovered", &function_a47d54df, &function_f5261dec);
	function_d9d5f32(4, "wp_04", "arena_defend_last_wave_weak_points_discovered", var_38d11fac);
}

/*
	Name: function_785a0ed
	Namespace: namespace_4124d
	Checksum: 0xA5F5AEAC
	Offset: 0x9EA0
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_785a0ed()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_9cdb6bca), "Dev Block strings are not supported");
	#/
	return level.var_9cdb6bca;
}

/*
	Name: function_d9d5f32
	Namespace: namespace_4124d
	Checksum: 0x9C68FAC4
	Offset: 0x9EE0
	Size: 0x2FF
	Parameters: 5
	Flags: None
*/
function function_d9d5f32(var_5acf21e7, var_672c6068, var_2f201aa5, var_13c6e56, var_26323261)
{
	if(!isdefined(level.var_9cdb6bca))
	{
		level.var_9cdb6bca = [];
	}
	if(!isdefined(level.var_9cdb6bca[var_5acf21e7]))
	{
		level.var_9cdb6bca[var_5acf21e7] = [];
	}
	if(!isdefined(var_2f201aa5))
	{
		var_2f201aa5 = [];
	}
	else if(!function_6e2770d8(var_2f201aa5))
	{
		var_2f201aa5 = function_84970cc4(var_2f201aa5);
	}
	if(!isdefined(var_13c6e56))
	{
		var_13c6e56 = [];
	}
	else if(!function_6e2770d8(var_13c6e56))
	{
		var_13c6e56 = function_84970cc4(var_13c6e56);
	}
	if(!isdefined(var_26323261))
	{
		var_26323261 = [];
	}
	else if(!function_6e2770d8(var_26323261))
	{
		var_26323261 = function_84970cc4(var_26323261);
	}
	if(isdefined(var_2f201aa5))
	{
		foreach(var_4ac85f5f in var_2f201aa5)
		{
			/#
				namespace_33b293fd::function_a7ee953(level namespace_ad23e503::function_dbca4c5d(var_4ac85f5f), "Dev Block strings are not supported" + var_4ac85f5f + "Dev Block strings are not supported");
			#/
		}
	}
	var_dabb26b1 = function_a8fb77bd();
	var_dabb26b1.var_672c6068 = var_672c6068;
	var_dabb26b1.var_2f201aa5 = var_2f201aa5;
	var_dabb26b1.var_13c6e56 = var_13c6e56;
	var_dabb26b1.var_26323261 = var_26323261;
	if(!isdefined(level.var_9cdb6bca[var_5acf21e7]))
	{
		level.var_9cdb6bca[var_5acf21e7] = [];
	}
	else if(!function_6e2770d8(level.var_9cdb6bca[var_5acf21e7]))
	{
		level.var_9cdb6bca[var_5acf21e7] = function_84970cc4(level.var_9cdb6bca[var_5acf21e7]);
	}
	level.var_9cdb6bca[var_5acf21e7][level.var_9cdb6bca[var_5acf21e7].size] = var_dabb26b1;
}

/*
	Name: function_3e55e3
	Namespace: namespace_4124d
	Checksum: 0x98C2A396
	Offset: 0xA1E8
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_3e55e3()
{
	var_31564035 = function_785a0ed();
	var_adc17f12 = [];
	foreach(var_a4952fb2 in var_31564035)
	{
		foreach(var_20488710 in var_a4952fb2)
		{
			if(!isdefined(var_adc17f12))
			{
				var_adc17f12 = [];
			}
			else if(!function_6e2770d8(var_adc17f12))
			{
				var_adc17f12 = function_84970cc4(var_adc17f12);
			}
			var_adc17f12[var_adc17f12.size] = var_20488710.var_672c6068 + "_destroyed";
		}
	}
	level namespace_ad23e503::function_8870cfa8(var_adc17f12);
}

/*
	Name: function_182b2e13
	Namespace: namespace_4124d
	Checksum: 0x5A5A3CFB
	Offset: 0xA388
	Size: 0x8FB
	Parameters: 0
	Flags: None
*/
function function_182b2e13()
{
	level namespace_ad23e503::function_c35e6aab(self.var_db7bb468);
	level namespace_ad23e503::function_c35e6aab(self.var_db7bb468 + "_identified");
	level namespace_ad23e503::function_c35e6aab(self.var_db7bb468 + "_destroyed");
	var_3f69c18b = function_6ada35ba(self.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3f69c18b), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3f69c18b.var_b07228b6), "Dev Block strings are not supported");
	#/
	var_6ee53e36 = namespace_14b42b8a::function_7922262b(var_3f69c18b.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_6ee53e36), "Dev Block strings are not supported" + self.var_722885f3 + "Dev Block strings are not supported");
	#/
	namespace_391e4301::function_3f4f84e(self.var_db7bb468 + "_covernode", "script_noteworthy", 1);
	namespace_391e4301::function_8bf0b925(self.var_db7bb468 + "_traversal", "script_noteworthy", 1);
	level waittill(self.var_db7bb468 + "_identified");
	var_ca86eb01 = function_6ada35ba(var_6ee53e36.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_ca86eb01), "Dev Block strings are not supported");
	#/
	var_ca86eb01 function_48f26766();
	var_f0bbbaa4 = namespace_82b91a51::function_14518e76(var_ca86eb01, &"cp_level_ramses_spike_plant", &"CP_MI_CAIRO_RAMSES_PLANT_SPIKE", &function_f2c2b59c);
	var_f0bbbaa4.var_222fca7a = 1;
	var_f0bbbaa4.var_db7bb468 = self.var_db7bb468;
	var_f0bbbaa4.var_2eb20475 = self;
	var_f0bbbaa4 function_33ce9734();
	var_5a150410 = namespace_82b91a51::function_b9fd52a4(var_6ee53e36.var_6df9264, var_6ee53e36.var_722885f3, var_6ee53e36.var_6ab6f4fd);
	var_5a150410 namespace_71e9cb84::function_74d6b22f("arena_defend_weak_point_keyline", 1);
	var_5a150410 function_fef374cd();
	level.var_2395e945[0] function_8a20e55d("uin_hud_weakpoints");
	self function_c2406993();
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_spike_detonate");
	var_5a150410 namespace_71e9cb84::function_74d6b22f("arena_defend_weak_point_keyline", 0);
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_2992720d("sm_" + self.var_db7bb468 + "_defenders");
	level namespace_ad23e503::function_74d6b22f(self.var_db7bb468);
	var_3f69c18b function_8c8e79fe();
	level namespace_ad23e503::function_74d6b22f(self.var_db7bb468 + "_destroyed");
	level thread namespace_cc27597::function_43718187(self.var_db7bb468, "targetname");
	var_9bb18713 = function_99201f25("collision_" + self.var_db7bb468, "targetname");
	foreach(var_44febfef in var_9bb18713)
	{
		if(var_44febfef.var_170527fb != "collision_wp_05")
		{
			var_44febfef function_dc8c8404();
		}
	}
	if(level namespace_ad23e503::function_7922262b("wp_02_destroyed") && !level namespace_ad23e503::function_7922262b("wp_03_destroyed") || (!level namespace_ad23e503::function_7922262b("wp_02_destroyed") && level namespace_ad23e503::function_7922262b("wp_03_destroyed")) || (level namespace_ad23e503::function_7922262b("wp_02_destroyed") && level namespace_ad23e503::function_7922262b("wp_03_destroyed") && !level namespace_ad23e503::function_7922262b("wp_05_destroyed") && level namespace_ad23e503::function_7922262b("wp_05_identified")))
	{
		var_5a150410 namespace_71e9cb84::function_74d6b22f("arena_defend_weak_point_keyline", 1);
		namespace_82b91a51::function_76f13293();
	}
	var_5a150410 function_dc8c8404();
	namespace_391e4301::function_3f4f84e(self.var_db7bb468 + "_traversal_jump", "script_noteworthy", 1);
	namespace_391e4301::function_8bf0b925(self.var_db7bb468 + "_traversal", "script_noteworthy", 0);
	namespace_d5067552::function_2992720d("sm_" + self.var_db7bb468 + "_defenders", 1);
	switch(self.var_db7bb468)
	{
		case "wp_01":
		{
			var_70d87be7 = function_6ada35ba("trig_wp_01_kill_stuck_players", "targetname");
			if(isdefined(var_70d87be7))
			{
				var_70d87be7 function_175e6b8e(1);
			}
			break;
		}
		case "wp_02":
		{
			namespace_4dbf3ae3::function_42e87952("wp_03_goal_trig");
			namespace_391e4301::function_3f4f84e(self.var_db7bb468 + "_covernode", "script_noteworthy", 0);
			break;
		}
		case "wp_04":
		{
			var_a9060824 = function_6ada35ba("trig_wp_04_damage", "targetname");
			var_a9060824 function_175e6b8e(1);
			namespace_d5067552::function_bae40a28("sm_wp_04_robot_rushers");
			namespace_391e4301::function_3f4f84e("wp_04_raps_walk", "targetname", 0);
			break;
		}
		case default:
		{
			break;
		}
	}
	function_dc9790a1(var_f0bbbaa4.var_79f5c705);
	var_f0bbbaa4 namespace_a230c2b1::function_c5a39495(1);
	self function_dc8c8404();
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_c2406993
	Namespace: namespace_4124d
	Checksum: 0xAAA4BC25
	Offset: 0xAC90
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c2406993()
{
	self waittill("hash_453ba490");
}

/*
	Name: function_f2c2b59c
	Namespace: namespace_4124d
	Checksum: 0x4DE4810
	Offset: 0xACA8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_f2c2b59c(var_6bfe1586)
{
	if(var_6bfe1586 function_518bce38())
	{
		self namespace_a230c2b1::function_e54c54c3(1);
		var_6bfe1586 function_a7905bd8(self);
		self thread function_64f3ca1d(var_6bfe1586);
	}
	else
	{
		var_6bfe1586 notify("hash_41772abf");
		var_6bfe1586 thread namespace_82b91a51::function_32d40124(&"CP_MI_CAIRO_RAMSES_SPIKE_AMMO_MISSING", 1, "spike_ammo_missing", 3);
	}
	if(self.var_db7bb468 === "wp_01")
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a notify("hash_bcf51970");
		}
		var_6bfe1586 thread namespace_391e4301::function_508a129e(self.var_db7bb468 + "_destroyed", 9999, 0);
	}
}

/*
	Name: function_64f3ca1d
	Namespace: namespace_4124d
	Checksum: 0x3DFD6B68
	Offset: 0xAE20
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_64f3ca1d(var_6bfe1586)
{
	self endon("hash_128f8789");
	self.var_4dbf3ae3 endon("hash_128f8789");
	self.var_2eb20475 endon("hash_128f8789");
	var_6bfe1586 waittill("hash_128f8789");
	self namespace_a230c2b1::function_1e5cb2cc("any");
}

/*
	Name: function_518bce38
	Namespace: namespace_4124d
	Checksum: 0x7B268D55
	Offset: 0xAE90
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_518bce38()
{
	var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	var_1bf470cb = self function_159a070b(var_1b7b3a6);
	var_107240b5 = var_1bf470cb > 0;
	return var_107240b5;
}

/*
	Name: function_a7905bd8
	Namespace: namespace_4124d
	Checksum: 0xC3374198
	Offset: 0xAF08
	Size: 0x233
	Parameters: 1
	Flags: None
*/
function function_a7905bd8(var_dcf4cbb0)
{
	self endon("hash_128f8789");
	if(!isdefined(self.var_c4ae3e9a))
	{
		self.var_c4ae3e9a = 0;
	}
	if(!self.var_c4ae3e9a)
	{
		self.var_c4ae3e9a = 1;
		self function_e6152ede();
		self function_83fd42b5();
		self function_e54da87c(var_dcf4cbb0);
		if(!self namespace_391e4301::function_8806ea73("spike_launcher"))
		{
			self function_f5ba63f2(0);
			namespace_82b91a51::function_76f13293();
			self function_cb53a41e(function_c4d5ec1f("spike_launcher"));
			self namespace_82b91a51::function_c9aa1ff("weapon_change", 1);
		}
		self thread function_aa6f0c42();
		self thread namespace_cc27597::function_43718187("cin_ram_05_02_spike_launcher_plant", self);
		self function_f5ba63f2(1);
		self function_4890e520();
		self function_6c8f914f();
		self namespace_82b91a51::function_c9aa1ff("fire_spike", 5);
		level notify("hash_18cf70dc");
		namespace_d0ef8521::function_31cd1834("cp_level_ramses_spike_plant");
		namespace_d0ef8521::function_74d6b22f("cp_level_ramses_spike_detonate");
		self thread function_9d5fff53();
		self thread function_8750c3af(var_dcf4cbb0.var_2eb20475);
	}
}

/*
	Name: function_e54da87c
	Namespace: namespace_4124d
	Checksum: 0xF085A091
	Offset: 0xB148
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_e54da87c(var_dcf4cbb0)
{
	var_13171cfc = var_dcf4cbb0.var_8176968e;
	var_9be8e3be = var_dcf4cbb0.var_609f75ed;
	if(isdefined(var_13171cfc) && isdefined(var_9be8e3be))
	{
		if(self function_32fa5072(var_13171cfc))
		{
			self function_a30814d(var_9be8e3be.var_722885f3);
			namespace_82b91a51::function_76f13293();
		}
	}
}

/*
	Name: function_33ce9734
	Namespace: namespace_4124d
	Checksum: 0x7B199270
	Offset: 0xB200
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_33ce9734()
{
	var_994a19a0 = self.var_db7bb468;
	self.var_8176968e = function_6ada35ba(var_994a19a0 + "_bad_place_trigger", "targetname");
	if(isdefined(self.var_8176968e))
	{
		self.var_609f75ed = namespace_14b42b8a::function_7922262b(self.var_8176968e.var_b07228b6, "targetname");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_609f75ed), "Dev Block strings are not supported" + var_994a19a0 + "Dev Block strings are not supported");
		#/
	}
}

/*
	Name: function_889f79d5
	Namespace: namespace_4124d
	Checksum: 0x8B4ACDB6
	Offset: 0xB2D0
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_889f79d5(var_c77d2837)
{
	var_c77d2837["player 1"].var_c4ae3e9a = undefined;
}

/*
	Name: function_9d5fff53
	Namespace: namespace_4124d
	Checksum: 0xB87823ED
	Offset: 0xB300
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_9d5fff53()
{
	self endon("hash_128f8789");
	waittillframeend;
	var_45f33ff4 = function_c4d5ec1f("spike_launcher_plant");
	var_eb8aa3d9 = self function_d48f2ab3("tag_flash");
	self namespace_71e9cb84::function_688ed188("player_spike_plant_postfx");
	if(isdefined(var_eb8aa3d9))
	{
		var_3b2bce1d = function_87f3c622(var_45f33ff4, var_eb8aa3d9 + VectorScale((0, 0, 1), 40), var_eb8aa3d9, self);
	}
	else
	{
		var_3b2bce1d = function_87f3c622(var_45f33ff4, self.var_722885f3 + VectorScale((0, 0, 1), 40), self.var_722885f3, self);
	}
	self function_11a53707();
}

/*
	Name: function_d7c41d5e
	Namespace: namespace_4124d
	Checksum: 0xB1806275
	Offset: 0xB420
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_d7c41d5e(var_3b2bce1d)
{
	level endon("hash_adc3dca5");
	var_3b2bce1d endon("hash_128f8789");
	var_eea11f9d = namespace_82b91a51::function_b9fd52a4(var_3b2bce1d.var_6df9264, var_3b2bce1d.var_722885f3, var_3b2bce1d.var_6ab6f4fd);
	var_eea11f9d namespace_71e9cb84::function_74d6b22f("arena_defend_weak_point_keyline", 1);
	var_eea11f9d thread function_9673263e(var_3b2bce1d);
	var_3b2bce1d function_8c8e79fe();
	self thread function_edfdd3b1(var_3b2bce1d);
	self namespace_82b91a51::function_5b7e3888("detonate", "last_stand_detonate");
	var_eea11f9d namespace_71e9cb84::function_74d6b22f("arena_defend_weak_point_keyline", 0);
	var_3b2bce1d function_c1eaf281();
}

/*
	Name: function_8750c3af
	Namespace: namespace_4124d
	Checksum: 0x3FAD9E87
	Offset: 0xB560
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_8750c3af(var_4dbf3ae3)
{
	self endon("hash_128f8789");
	var_4dbf3ae3 endon("hash_128f8789");
	self waittill("hash_e5ccf3dc", var_3b2bce1d);
	self thread function_d7c41d5e(var_3b2bce1d);
	var_8d3a3d3c = var_3b2bce1d.var_722885f3;
	var_3b2bce1d waittill("hash_128f8789");
	var_4dbf3ae3 notify("hash_453ba490");
	level function_1caab1d2(var_8d3a3d3c);
}

/*
	Name: function_edfdd3b1
	Namespace: namespace_4124d
	Checksum: 0x677F8E0E
	Offset: 0xB610
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_edfdd3b1(var_3b2bce1d)
{
	level endon("hash_adc3dca5");
	self endon("hash_c1eaf281");
	self endon("hash_f4dfb01b");
	self endon("hash_128f8789");
	var_3b2bce1d endon("hash_128f8789");
	wait(5);
	self namespace_ad23e503::function_9d134160("spike_launcher_tutorial_complete");
	var_d13f855e = self function_48c6a3a2();
	var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	while(!self namespace_ad23e503::function_7922262b("spike_launcher_tutorial_complete"))
	{
		if(var_d13f855e == var_1b7b3a6)
		{
			self thread namespace_391e4301::function_c2712461();
			self thread namespace_391e4301::function_780e57a1();
			self namespace_82b91a51::function_5b7e3888("detonate", "last_stand_detonate");
		}
		else
		{
			self waittill("hash_9206d256", var_d13f855e);
		}
	}
}

/*
	Name: function_1caab1d2
	Namespace: namespace_4124d
	Checksum: 0xD6D6724F
	Offset: 0xB770
	Size: 0x209
	Parameters: 1
	Flags: None
*/
function function_1caab1d2(var_9b32d4cc)
{
	var_ecb339bc = function_99201f25("grenade", "classname");
	if(function_4451c715(var_9b32d4cc))
	{
		foreach(var_1a30a879 in var_ecb339bc)
		{
			if(isdefined(var_1a30a879) && function_316422d1(var_9b32d4cc, var_1a30a879.var_722885f3) <= 40000)
			{
				var_1a30a879 function_c1eaf281();
			}
			if(var_c957f6b6 % 2 == 0)
			{
				namespace_82b91a51::function_76f13293();
			}
		}
		break;
	}
	if(function_fd096044(var_9b32d4cc))
	{
		foreach(var_1a30a879 in var_ecb339bc)
		{
			if(isdefined(var_1a30a879) && var_1a30a879 function_32fa5072(var_9b32d4cc))
			{
				var_1a30a879 function_c1eaf281();
			}
			if(var_c957f6b6 % 2 == 0)
			{
				namespace_82b91a51::function_76f13293();
			}
		}
	}
}

/*
	Name: function_9673263e
	Namespace: namespace_4124d
	Checksum: 0x38555707
	Offset: 0xB988
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_9673263e(var_3b2bce1d)
{
	self endon("hash_128f8789");
	var_3b2bce1d waittill("hash_128f8789");
	self namespace_71e9cb84::function_74d6b22f("arena_defend_weak_point_keyline", 0);
	namespace_82b91a51::function_76f13293();
	self function_dc8c8404();
}

/*
	Name: function_11a53707
	Namespace: namespace_4124d
	Checksum: 0xCF958B91
	Offset: 0xBA00
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_11a53707()
{
	var_1b7b3a6 = function_c4d5ec1f("spike_launcher");
	var_1bf470cb = self function_159a070b(var_1b7b3a6);
	var_1bf470cb = namespace_d73b9283::function_31931862(var_1bf470cb - 1, 0, var_1bf470cb);
	self function_67795b5f(var_1b7b3a6, var_1bf470cb);
}

/*
	Name: function_aa6f0c42
	Namespace: namespace_4124d
	Checksum: 0x823AA70C
	Offset: 0xBAA0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_aa6f0c42()
{
	self endon("hash_128f8789");
	if(level.var_2395e945.size == 1)
	{
		self.var_2a48f7ab = 0.1;
		while(isdefined(self.var_c4ae3e9a) && self.var_c4ae3e9a)
		{
			wait(0.1);
		}
		wait(3);
		self.var_2a48f7ab = 1;
	}
}

/*
	Name: function_8f461d35
	Namespace: namespace_4124d
	Checksum: 0x7AE684A7
	Offset: 0xBB20
	Size: 0x223
	Parameters: 1
	Flags: None
*/
function function_8f461d35(var_d42cd848)
{
	if(!isdefined(var_d42cd848))
	{
		var_d42cd848 = 1;
	}
	function_2fcc9369("arena_defend_spawn_manager_friendly");
	function_a410970();
	namespace_391e4301::function_3f4f84e("arena_defend_mobile_wall_top_nodes", "script_noteworthy", 0);
	var_65ef1e5b = function_6ada35ba("sinkhole_friendly_fallback_volume", "targetname");
	foreach(var_412a98c7 in function_846256f4("allies"))
	{
		var_412a98c7 thread function_b16456e1(var_65ef1e5b);
		wait(0.05);
	}
	level.var_2fd26037.var_7dfaf62 = 32;
	var_76be17b8 = function_b4cb3503("hendricks_mobile_wall_start_node", "targetname");
	level.var_2fd26037 thread namespace_d84e54db::function_19e98020(var_76be17b8, 32, 1, undefined, 1);
	level.var_9db406db.var_7dfaf62 = 32;
	var_f47e732e = function_b4cb3503("arena_defend_demostreet_intro_khalil", "targetname");
	level.var_9db406db thread namespace_d84e54db::function_19e98020(var_f47e732e, 32, 1, undefined, 1);
}

/*
	Name: function_b16456e1
	Namespace: namespace_4124d
	Checksum: 0x47298366
	Offset: 0xBD50
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_b16456e1(var_284ca6ef)
{
	self endon("hash_128f8789");
	self function_169cc712(var_284ca6ef, 1);
	if(!self namespace_82b91a51::function_d3426abc())
	{
		self namespace_d84e54db::function_ceb883cd("sprint", 1);
		self waittill("hash_41d1aaf0");
		self namespace_d84e54db::function_ceb883cd("coverIdleOnly", 1);
	}
}

/*
	Name: function_a410970
	Namespace: namespace_4124d
	Checksum: 0x3F1DFE88
	Offset: 0xBDF8
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_a410970()
{
	if(isdefined(level.var_2fd26037) && isdefined(level.var_2fd26037.var_e6e961e4))
	{
		level.var_2fd26037.var_7dfaf62 = level.var_2fd26037.var_e6e961e4;
	}
	var_933bbc2c = function_24e95264("allies", "human");
	foreach(var_d84e54db in var_933bbc2c)
	{
		var_d84e54db namespace_6f7b2095::function_54bdb053();
		var_d84e54db function_fb5720f7();
	}
}

/*
	Name: function_4dcf9e47
	Namespace: namespace_4124d
	Checksum: 0x61545083
	Offset: 0xBF10
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_4dcf9e47()
{
	function_4fdddf97();
	if(isdefined(level.var_1a96323))
	{
		level thread [[level.var_1a96323]]();
	}
	level thread namespace_cc27597::function_43718187("cin_ram_05_demostreet_vign_intro_detonation_guy");
	level thread namespace_cc27597::function_43718187("cin_ram_05_demostreet_vign_intro_khalil_only");
	level thread namespace_cc27597::function_43718187("cin_ram_05_demostreet_vign_intro_hendricks_only");
	level namespace_ad23e503::function_d266a8b4(5, "arena_defend_detonator_dropped");
}

/*
	Name: function_2e8bcd54
	Namespace: namespace_4124d
	Checksum: 0x6F398430
	Offset: 0xBFC8
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_2e8bcd54()
{
	namespace_4dbf3ae3::function_1ab5ebec("arena_defend_player_fallback_trigger");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 1);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("sprint", 1);
	level thread namespace_cc27597::function_c35e6aab("cin_ram_05_demostreet_vign_intro_khalil_only");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_c35e6aab("cin_ram_05_demostreet_vign_intro_hendricks_only");
	namespace_84970cc4::function_1ab5ebec(function_84970cc4(level.var_2fd26037, level.var_9db406db), "vign_intro_runback_done", 15);
	level thread function_d72bac37();
}

/*
	Name: function_d72bac37
	Namespace: namespace_4124d
	Checksum: 0x6B4A5741
	Offset: 0xC0E8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_d72bac37()
{
	namespace_4dbf3ae3::function_1ab5ebec("arena_defend_wall_gather_trig");
	namespace_dabbe128::function_356a4ee1(&function_f554e28a);
	function_cce749ad();
	namespace_84970cc4::function_966ecb29(function_b8494651("axis", "allies"), &function_4c119f69);
}

/*
	Name: function_f554e28a
	Namespace: namespace_4124d
	Checksum: 0xE9917BEA
	Offset: 0xC180
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_f554e28a()
{
	if(level.var_31aefea8 == "sinkhole_collapse")
	{
		var_9be8e3be = namespace_14b42b8a::function_7922262b("s_mobile_wall_closed_hot_join_" + self function_c7f3ce11(), "targetname");
		self function_a30814d(var_9be8e3be.var_722885f3);
		self function_eda2be50(var_9be8e3be.var_6ab6f4fd);
	}
}

/*
	Name: function_4fdddf97
	Namespace: namespace_4124d
	Checksum: 0xC5A2E23C
	Offset: 0xC228
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_4fdddf97()
{
	var_d156a4cd = function_6ada35ba("arena_defend_wall_gather_trig", "targetname");
	while(1)
	{
		var_859ac0d1 = 0;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a function_32fa5072(var_d156a4cd))
			{
				var_859ac0d1 = 1;
				break;
			}
		}
		if(var_859ac0d1)
		{
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_4c119f69
	Namespace: namespace_4124d
	Checksum: 0xD66F02A9
	Offset: 0xC330
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4c119f69()
{
	if(function_5b49d38c(self) && function_8d0347b8(self))
	{
		self function_c15140d4();
	}
}

/*
	Name: function_3d3f7691
	Namespace: namespace_4124d
	Checksum: 0x3D684843
	Offset: 0xC388
	Size: 0x3F9
	Parameters: 0
	Flags: None
*/
function function_3d3f7691()
{
	level namespace_ad23e503::function_1ab5ebec("arena_defend_detonator_pickup");
	if(level namespace_cc27597::function_444aea32("cin_ram_05_demostreet_vign_intro_hendricks_only"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_ram_05_demostreet_vign_intro_hendricks_only");
	}
	if(level namespace_cc27597::function_444aea32("cin_ram_05_demostreet_vign_intro_khalil_only"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_ram_05_demostreet_vign_intro_khalil_only");
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_255b9315 = 1;
		var_5dc5e20a function_83fd42b5();
		var_5dc5e20a notify("hash_5a334c0f");
	}
	function_2fcc9369("arena_defend_spawn_manager");
	function_2fcc9369("arena_defend_spawn_manager_friendly");
	namespace_76d95162::function_d9f49fba(0);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(isdefined(var_5dc5e20a.var_d5846b2c) && var_5dc5e20a.var_d5846b2c)
		{
			var_5dc5e20a.var_1695a536 = 1;
		}
		else
		{
			var_5dc5e20a.var_1695a536 = 0;
		}
		var_5dc5e20a namespace_16f9ecd3::function_12a9df06(0);
	}
	namespace_dabbe128::function_a0ac4434(&function_f554e28a);
	namespace_cc27597::function_9e5b8cdb("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle");
	namespace_391e4301::function_ac2b4535("cin_ram_05_demostreet_3rd_sh140", "alley");
	level namespace_cc27597::function_43718187("cin_ram_05_demostreet_3rd_sh010", level.var_8e659b82);
	function_53314bf6();
	level namespace_ad23e503::function_1ab5ebec("arena_defend_sinkhole_collapse_done");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_255b9315 = 0;
		var_5dc5e20a function_4890e520();
		var_5dc5e20a function_901e0817();
		if(isdefined(var_5dc5e20a.var_1695a536) && var_5dc5e20a.var_1695a536)
		{
			var_5dc5e20a namespace_16f9ecd3::function_fc1750c9(1);
		}
	}
}

/*
	Name: function_f56aea9b
	Namespace: namespace_4124d
	Checksum: 0xBBA7B11D
	Offset: 0xC790
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_f56aea9b()
{
	var_ea644274 = function_846256f4("allies");
	foreach(var_d84e54db in var_ea644274)
	{
		if(!function_7f41c8e7(level.var_6a876531, var_d84e54db) && (!function_8d0347b8(var_d84e54db) || !var_d84e54db function_b7f9b625()))
		{
			var_d84e54db function_dc8c8404();
		}
	}
}

/*
	Name: function_fa763553
	Namespace: namespace_4124d
	Checksum: 0xF2F240DC
	Offset: 0xC898
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_fa763553()
{
	var_838bd816 = function_99201f25("arena_defend_technical", "script_noteworthy");
	var_16780955 = 0;
	foreach(var_96fa87af in var_838bd816)
	{
		if(function_5b49d38c(var_96fa87af))
		{
			var_96fa87af function_c3945cd5(var_96fa87af.var_3a90f16b, var_96fa87af.var_722885f3);
			var_16780955++;
		}
	}
	if(var_16780955 > 0)
	{
		waittillframeend;
	}
}

/*
	Name: function_53314bf6
	Namespace: namespace_4124d
	Checksum: 0xD1A79580
	Offset: 0xC9A8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_53314bf6()
{
	level namespace_ad23e503::function_74d6b22f("sinkhole_explosion_started");
}

/*
	Name: function_dbbfe4d6
	Namespace: namespace_4124d
	Checksum: 0x23759800
	Offset: 0xC9D8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_dbbfe4d6(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_b6da2f7c();
		level namespace_ad23e503::function_74d6b22f("sinkhole_charges_detonated");
		namespace_4dbf3ae3::function_42e87952("arena_defend_colors_allies_behind_mobile_wall");
		namespace_d5067552::function_bae40a28("arena_defend_wall_allies");
		namespace_d5067552::function_bae40a28("arena_defend_wall_allies2");
		namespace_d5067552::function_bae40a28("arena_defend_wall_top_allies");
		namespace_d5067552::function_bae40a28("arena_defend_push_enemies");
		namespace_d5067552::function_bae40a28("arena_defend_heavy_units");
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	}
}

/*
	Name: function_26aaae96
	Namespace: namespace_4124d
	Checksum: 0x5F7166F2
	Offset: 0xCAD8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_26aaae96()
{
	namespace_391e4301::function_9f4f118("arena_defend_out_of_bounds_trigger", "targetname");
}

/*
	Name: function_c50ca91
	Namespace: namespace_4124d
	Checksum: 0x4542B5A7
	Offset: 0xCB08
	Size: 0x873
	Parameters: 0
	Flags: None
*/
function function_c50ca91()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_small_hole_02_bundle", &function_a9ffcec, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_small_hole_02_bundle", &function_e802b666, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_small_hole_01_bundle", &function_69dcb622, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_small_hole_03_bundle", &function_5db3ae57, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_small_hole_04_bundle", &function_1b706878, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_small_hole_04_bundle", &function_3b5bd8c4, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_wall_drop_bundle", &function_63407bd6, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_wall_drop_bundle", &function_35c6856, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_wall_drop_bundle", &function_74684a40, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle", &function_cc9e6c1d, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle", &function_7b7e8565, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle", &function_3730aac7, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_checkpoint_wall_02_bundle", &function_1ab1b112, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_wall_drop_doors_up_bundle", &function_c6f8879f, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_wall_drop_doors_down_bundle", &function_d1580f2c, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle", &function_be12945c, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle", &function_9cc779c7, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle", &function_397df6bc, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle", &function_c15cf2c8, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_arena_billboard_bundle", &function_f2cede6c, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_arena_billboard_02_bundle", &function_1a46d844, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_block_1st_rip", &function_3838410f, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_block_1st_rip", &function_25e4bdcc, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_block_1st_rip_skipto", &function_25e4bdcc, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_02_block_vign_mowed", &function_18767202, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_defend_vign_leapattack", &function_a7405e61, "init");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_defend_vign_leapattack", &function_f295baeb, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_defend_vign_rescueinjured_l_group", &function_33280827, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_defend_vign_rescueinjured_r_group", &function_33280827, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_defend_vign_rescueinjured_r_group", &function_7c00379f, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_defend_vign_rescueinjured_c_group", &function_33280827, "play");
	namespace_cc27597::function_8f9f34e0("cin_gen_melee_hendricksmoment_closecombat_robot", &function_a6ca068f, "init");
	namespace_cc27597::function_8f9f34e0("cin_gen_melee_hendricksmoment_closecombat_robot", &function_e419e693, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_02_spike_launcher_plant", &function_889f79d5, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_vign_intro_detonation_guy", &function_982fed86, "init");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_vign_intro_detonation_guy", &function_bf4445e6, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_3rd_sh010", &function_5cee729c, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_3rd_sh020", &function_19f02780, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_3rd_sh020", &function_f2434205, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_3rd_sh040", &function_76cedf66, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_3rd_sh080", &function_963f32b, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_3rd_sh080", &function_ce13c58d, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_3rd_sh130", &function_e4fcbd75, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_3rd_sh140", &function_f3dffed, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_05_demostreet_3rd_sh140", &function_2ec70f8b, "play");
}

/*
	Name: function_f87b2c29
	Namespace: namespace_4124d
	Checksum: 0x4C9E9B72
	Offset: 0xD388
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_f87b2c29()
{
	var_70f028db = namespace_14b42b8a::function_7faf4c39("arena_defend_friendly_fallback_intro", "targetname");
	foreach(var_14b42b8a in var_70f028db)
	{
		namespace_cc27597::function_8f9f34e0(var_14b42b8a.var_1157a889, &function_32c9babe, "init");
		var_14b42b8a namespace_cc27597::function_c35e6aab();
		namespace_82b91a51::function_76f13293();
	}
	namespace_cc27597::function_8f9f34e0("cin_ram_05_01_defend_vign_rescueinjured_r_group", &function_7d420577, "init");
	namespace_cc27597::function_c35e6aab("cin_ram_05_01_defend_vign_rescueinjured_r_group");
}

/*
	Name: function_7d420577
	Namespace: namespace_4124d
	Checksum: 0xD577DAA2
	Offset: 0xD4D8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_7d420577(var_c77d2837)
{
	var_1030677c = function_6ada35ba(self.var_b07228b6, "targetname");
	var_1030677c waittill("hash_4dbf3ae3");
	self namespace_cc27597::function_43718187();
	var_1030677c function_dc8c8404();
}

/*
	Name: function_32c9babe
	Namespace: namespace_4124d
	Checksum: 0x684DE7BC
	Offset: 0xD558
	Size: 0x1AF
	Parameters: 1
	Flags: None
*/
function function_32c9babe(var_c77d2837)
{
	level endon("hash_b4104c59");
	var_1030677c = function_6ada35ba(self.var_b07228b6, "targetname");
	level namespace_ad23e503::function_1ab5ebec("intro_igc_done");
	if(!level namespace_ad23e503::function_dbca4c5d(self.var_1157a889))
	{
		level namespace_ad23e503::function_c35e6aab(self.var_1157a889);
	}
	self thread function_2f4e01f7(var_1030677c);
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(isdefined(var_5dc5e20a))
			{
				if(level namespace_ad23e503::function_7922262b(self.var_1157a889) || var_5dc5e20a namespace_82b91a51::function_d61b846f(var_1030677c.var_722885f3))
				{
					self namespace_cc27597::function_43718187();
					level notify(self.var_1157a889);
					return;
				}
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_2f4e01f7
	Namespace: namespace_4124d
	Checksum: 0xE30741F4
	Offset: 0xD710
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_2f4e01f7(var_1030677c)
{
	level endon(self.var_1157a889);
	var_1030677c waittill("hash_4dbf3ae3");
	level namespace_ad23e503::function_74d6b22f(self.var_1157a889);
}

/*
	Name: function_c6f8879f
	Namespace: namespace_4124d
	Checksum: 0x8D95AA38
	Offset: 0xD760
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_c6f8879f(var_c77d2837)
{
	function_ce0f393b(1);
}

/*
	Name: function_d1580f2c
	Namespace: namespace_4124d
	Checksum: 0xD7BF5B9D
	Offset: 0xD790
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_d1580f2c(var_c77d2837)
{
	function_ce0f393b(0);
}

/*
	Name: function_ce0f393b
	Namespace: namespace_4124d
	Checksum: 0xB22D8940
	Offset: 0xD7C0
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_ce0f393b(var_c20d98a0)
{
	level namespace_ad23e503::function_1ab5ebec("arena_defend_mobile_wall_deployed");
	var_cfdb3b07 = function_6ada35ba("mobile_wall_doors_clip", "targetname");
	var_da89874c = !level namespace_ad23e503::function_7922262b("arena_defend_mobile_wall_doors_open") && var_c20d98a0;
	var_b30d2648 = level namespace_ad23e503::function_7922262b("arena_defend_mobile_wall_doors_open") && !var_c20d98a0;
	if(var_da89874c)
	{
		var_cfdb3b07 function_8bdea13c(90, 0.1);
		var_cfdb3b07 waittill("hash_a21db68a");
		var_cfdb3b07 function_422037f5();
		var_cfdb3b07 function_de8377bf();
		namespace_391e4301::function_3f4f84e("mobile_wall_door_traversals", "targetname", 1);
		level namespace_ad23e503::function_74d6b22f("arena_defend_mobile_wall_doors_open");
	}
	else if(var_b30d2648)
	{
		var_cfdb3b07 function_8bdea13c(90 * -1, 0.1);
		var_cfdb3b07 waittill("hash_a21db68a");
		var_cfdb3b07 function_4083a98e();
		namespace_391e4301::function_3f4f84e("mobile_wall_door_traversals", "targetname", 0);
		level namespace_ad23e503::function_9d134160("arena_defend_mobile_wall_doors_open");
	}
}

/*
	Name: function_a9ffcec
	Namespace: namespace_4124d
	Checksum: 0xC367CAB9
	Offset: 0xD9E8
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_a9ffcec(var_c77d2837)
{
	var_2562cec2 = function_6ada35ba("arena_defend_technical_01_vh", "targetname");
	if(isdefined(var_2562cec2))
	{
		var_2562cec2 notify("hash_36c19b73");
		waittillframeend;
		var_2562cec2 function_dc8c8404();
	}
	namespace_391e4301::function_3f4f84e("arena_defend_technical_01_vh_covernode", "targetname", 0);
	level waittill("hash_fa53fbdf");
	var_35a302af = var_c77d2837["wp_01_technical"];
	var_35a302af function_14c24d9d(0, 0);
	var_70d87be7 = function_6ada35ba("trig_wp_01_kill_stuck_players", "targetname");
	if(isdefined(var_70d87be7))
	{
		var_70d87be7 function_dc8c8404();
	}
}

/*
	Name: function_e802b666
	Namespace: namespace_4124d
	Checksum: 0x1822A653
	Offset: 0xDB10
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_e802b666(var_c77d2837)
{
	var_35a302af = var_c77d2837["wp_01_technical"];
	var_35a302af function_14c24d9d(0, 0);
	var_70d87be7 = function_6ada35ba("trig_wp_01_kill_stuck_players", "targetname");
	if(isdefined(var_70d87be7))
	{
		var_70d87be7 function_dc8c8404();
	}
}

/*
	Name: function_69dcb622
	Namespace: namespace_4124d
	Checksum: 0x407323AF
	Offset: 0xDBB0
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_69dcb622(var_c77d2837)
{
	function_6ada35ba("wp_crouch_cover", "targetname") function_8bdea13c(200, 0.05);
	namespace_391e4301::function_3f4f84e("wp_03_dynamic_covernode", "script_noteworthy", 1);
}

/*
	Name: function_5db3ae57
	Namespace: namespace_4124d
	Checksum: 0xF0DDB5FC
	Offset: 0xDC30
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_5db3ae57(var_c77d2837)
{
}

/*
	Name: function_3b5bd8c4
	Namespace: namespace_4124d
	Checksum: 0x37376C23
	Offset: 0xDC48
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_3b5bd8c4(var_c77d2837)
{
	var_d578296 = var_c77d2837["street_collapse_trailer_cargo"];
	var_57923fa7 = function_6ada35ba("lgt_trailer", "targetname");
	var_57923fa7 function_37f7858a(var_d578296, "trailer_cargo_jnt");
}

/*
	Name: function_1b706878
	Namespace: namespace_4124d
	Checksum: 0x3F816DD3
	Offset: 0xDCC8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_1b706878(var_c77d2837)
{
	var_dbf26aa4 = function_6ada35ba("arena_defend_trailer_door_clip", "targetname");
	var_e8a2c038 = namespace_14b42b8a::function_7922262b("arena_defend_trailer_door_hinge", "targetname");
	var_f74e78ca = namespace_82b91a51::function_b9fd52a4("tag_origin", var_e8a2c038.var_722885f3, var_e8a2c038.var_6ab6f4fd);
	var_dbf26aa4 function_37f7858a(var_f74e78ca);
	var_f74e78ca function_21d0da55(180, 1);
	var_f74e78ca waittill("hash_6654e4f4");
	var_f74e78ca function_dc8c8404();
	var_dbf26aa4 function_14c24d9d();
}

/*
	Name: function_e45af9f2
	Namespace: namespace_4124d
	Checksum: 0x18D20FF
	Offset: 0xDDF8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_e45af9f2()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_f2cede6c
	Namespace: namespace_4124d
	Checksum: 0x5DA4A04C
	Offset: 0xDF50
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_f2cede6c(var_c77d2837)
{
	namespace_391e4301::function_3f4f84e("arena_defend_center_building_sniper_nodes_billboard_collapse", "script_noteworthy", 0);
	namespace_d5067552::function_2992720d("sm_arena_defend_snipers_center_building");
	level waittill("hash_a22c2052");
	level namespace_ad23e503::function_74d6b22f("billboard1_crashed");
	var_93dfe24f = function_6ada35ba("arena_defend_billboard_trigger", "targetname");
	var_fee634f2 = var_c77d2837["arena_billboard"];
	var_e3b635fb = function_b8494651("axis");
	if(isdefined(var_e3b635fb) && isdefined(var_fee634f2))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			if(var_e3b635fb[var_c957f6b6] function_32fa5072(var_93dfe24f) && function_5b49d38c(var_e3b635fb[var_c957f6b6]))
			{
				var_e3b635fb[var_c957f6b6] function_2992720d(var_fee634f2.var_722885f3, undefined, var_fee634f2);
			}
		}
	}
	var_935a64f = function_6ada35ba("arena_defend_billboard_fxanim_clip", "targetname");
	var_935a64f function_4083a98e();
	var_935a64f function_14c24d9d();
}

/*
	Name: function_f9842c89
	Namespace: namespace_4124d
	Checksum: 0x26722771
	Offset: 0xE138
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_f9842c89()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_1a46d844
	Namespace: namespace_4124d
	Checksum: 0x2DC95A33
	Offset: 0xE210
	Size: 0x14D
	Parameters: 1
	Flags: None
*/
function function_1a46d844(var_c77d2837)
{
	level waittill("hash_a22c2052");
	level namespace_ad23e503::function_74d6b22f("billboard2_crashed");
	var_93dfe24f = function_6ada35ba("arena_defend_billboard2_trigger", "targetname");
	var_fee634f2 = var_c77d2837["arena_billboard_02"];
	var_e3b635fb = function_b8494651("axis");
	if(isdefined(var_e3b635fb) && isdefined(var_fee634f2))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			if(var_e3b635fb[var_c957f6b6] function_32fa5072(var_93dfe24f) && function_5b49d38c(var_e3b635fb[var_c957f6b6]))
			{
				var_e3b635fb[var_c957f6b6] function_2992720d(var_fee634f2.var_722885f3, undefined, var_fee634f2);
			}
		}
	}
}

/*
	Name: function_63407bd6
	Namespace: namespace_4124d
	Checksum: 0x8B2844C9
	Offset: 0xE368
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_63407bd6(var_c77d2837)
{
	level thread function_82802a7a(0);
	level thread function_a5b142fc(0);
	level namespace_82b91a51::function_c9aa1ff("mobile_wall_hit_sidewalk", 15);
	level thread function_a5b142fc(1);
	level namespace_82b91a51::function_c9aa1ff("mobile_wall_hit_building", 5);
	level thread function_82802a7a(1);
}

/*
	Name: function_82802a7a
	Namespace: namespace_4124d
	Checksum: 0x6961733D
	Offset: 0xE420
	Size: 0x241
	Parameters: 1
	Flags: None
*/
function function_82802a7a(var_864a3d55)
{
	var_e09430b3 = function_99201f25("mobile_wall_smash_before", "targetname");
	var_dbc08694 = function_99201f25("mobile_wall_smash_after", "targetname");
	if(var_864a3d55)
	{
		foreach(var_6df9264 in var_e09430b3)
		{
			var_6df9264 function_50ccee8d();
		}
		foreach(var_6df9264 in var_dbc08694)
		{
			var_6df9264 function_48f26766();
		}
		break;
	}
	foreach(var_6df9264 in var_e09430b3)
	{
		var_6df9264 function_48f26766();
	}
	foreach(var_6df9264 in var_dbc08694)
	{
		var_6df9264 function_50ccee8d();
	}
}

/*
	Name: function_a5b142fc
	Namespace: namespace_4124d
	Checksum: 0x4B5E1FBC
	Offset: 0xE670
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_a5b142fc(var_864a3d55)
{
	var_e09430b3 = function_99201f25("mobile_wall_sidewalk_smash_before", "targetname");
	if(var_864a3d55)
	{
		foreach(var_6df9264 in var_e09430b3)
		{
			var_6df9264 function_50ccee8d();
		}
		level namespace_71e9cb84::function_74d6b22f("arena_defend_mobile_wall_damage", 0);
	}
	else
	{
		foreach(var_6df9264 in var_e09430b3)
		{
			var_6df9264 function_48f26766();
		}
		level namespace_71e9cb84::function_74d6b22f("arena_defend_mobile_wall_damage", 1);
	}
}

/*
	Name: function_35c6856
	Namespace: namespace_4124d
	Checksum: 0xE7E3D9A1
	Offset: 0xE7F0
	Size: 0x1F1
	Parameters: 1
	Flags: None
*/
function function_35c6856(var_c77d2837)
{
	var_2ef9d306 = function_6ada35ba("wall_drop_vtol", "targetname");
	level waittill("hash_dde42d30");
	level thread function_d2d508fb();
	var_dfcc01fd = function_c4d5ec1f("smaw");
	var_1177ae6a = namespace_14b42b8a::function_7922262b("s_vtol_rocket_start", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		if(isdefined(var_2ef9d306))
		{
			var_b76e95dc[var_c957f6b6] = function_87f3c622(var_dfcc01fd, var_1177ae6a.var_722885f3, var_2ef9d306.var_722885f3, undefined, var_2ef9d306, (-300, 0, 400));
			wait(0.25);
		}
	}
	level namespace_ad23e503::function_1ab5ebec("arena_defend_rocket_hits_vtol");
	foreach(var_3c91fda1 in var_b76e95dc)
	{
		if(isdefined(var_3c91fda1))
		{
			var_3c91fda1 function_c1eaf281();
			wait(0.1);
		}
	}
}

/*
	Name: function_d2d508fb
	Namespace: namespace_4124d
	Checksum: 0x9310C18F
	Offset: 0xE9F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d2d508fb()
{
	level waittill("hash_883eae52");
	level namespace_ad23e503::function_74d6b22f("arena_defend_rocket_hits_vtol");
}

/*
	Name: function_74684a40
	Namespace: namespace_4124d
	Checksum: 0x99375709
	Offset: 0xEA28
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_74684a40(var_c77d2837)
{
	namespace_cc27597::function_bac0d34c("p7_fxanim_cp_ramses_wall_drop_bundle");
	level namespace_ad23e503::function_74d6b22f("arena_defend_mobile_wall_deployed");
	namespace_96fa87af::function_22356ba7("arena_defend_mobile_wall_turret", 1);
}

/*
	Name: function_cc9e6c1d
	Namespace: namespace_4124d
	Checksum: 0xB3FA2709
	Offset: 0xEA98
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_cc9e6c1d(var_c77d2837)
{
	var_86b91b96 = function_6ada35ba("arena_defend_checkpoint_wall_b", "targetname");
	if(isdefined(var_86b91b96))
	{
		var_86b91b96 function_14c24d9d();
	}
}

/*
	Name: function_7b7e8565
	Namespace: namespace_4124d
	Checksum: 0xD4B341E
	Offset: 0xEB00
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_7b7e8565(var_c77d2837)
{
	var_86b91b96 = function_6ada35ba("arena_defend_checkpoint_wall_b", "targetname");
	level function_1caab1d2(var_86b91b96);
	if(isdefined(var_86b91b96))
	{
		var_86b91b96 function_de8377bf();
		var_86b91b96 function_dc8c8404();
	}
	wait(0.1);
	var_398ffcb7 = function_99201f25("arena_defend_checkpoint_wall_left_models", "script_noteworthy");
	foreach(var_e8009655 in var_398ffcb7)
	{
		var_e8009655 function_dc8c8404();
	}
}

/*
	Name: function_3730aac7
	Namespace: namespace_4124d
	Checksum: 0xF61E51A7
	Offset: 0xEC50
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_3730aac7(var_c77d2837)
{
	level notify("hash_6f434c34");
}

/*
	Name: function_1ab1b112
	Namespace: namespace_4124d
	Checksum: 0x75E3AC65
	Offset: 0xEC78
	Size: 0x1C3
	Parameters: 1
	Flags: None
*/
function function_1ab1b112(var_c77d2837)
{
	var_935a64f = function_6ada35ba("arena_defend_checkpoint_wall_right_clip", "targetname");
	level function_1caab1d2(var_935a64f);
	if(isdefined(var_935a64f))
	{
		var_935a64f function_dc8c8404();
	}
	wait(0.1);
	var_398ffcb7 = function_99201f25("arena_defend_checkpoint_wall_right_models", "script_noteworthy");
	foreach(var_e8009655 in var_398ffcb7)
	{
		var_e8009655 function_dc8c8404();
	}
	namespace_2f06d687::function_22356ba7("checkpoint_right_breach_raps");
	namespace_2f06d687::function_22356ba7("sp_wp_04_robot_defenders");
	namespace_d5067552::function_bae40a28("sm_wp_04_defenders");
	namespace_d5067552::function_bae40a28("sm_wp_04_wasps");
	namespace_2f06d687::function_371d219c("checkpoint_right_breach_raps", 3);
	namespace_d5067552::function_bae40a28("sm_checkpoint_right_fill_raps");
}

/*
	Name: function_69b7b359
	Namespace: namespace_4124d
	Checksum: 0x145BBE1B
	Offset: 0xEE48
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_69b7b359()
{
	var_5dc5e20a = namespace_84970cc4::function_47d18840(level.var_9b1393e7);
	if(function_65f192a6(var_5dc5e20a))
	{
		self function_169cc712(var_5dc5e20a, 1);
	}
	namespace_391e4301::function_3f4f84e("nd_raps_launch_point_1", "targetname", 1);
	namespace_391e4301::function_3f4f84e("nd_raps_launch_point_2", "targetname", 1);
	namespace_391e4301::function_3f4f84e("nd_raps_launch_point_3", "targetname", 1);
	namespace_391e4301::function_3f4f84e("nd_raps_launch_point_4", "targetname", 1);
}

/*
	Name: function_34c51c66
	Namespace: namespace_4124d
	Checksum: 0x65EF9FBA
	Offset: 0xEF50
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_34c51c66(var_c77d2837)
{
	namespace_4dbf3ae3::function_1ab5ebec("arena_defend_checkpoint_wall_right_trigger");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_checkpoint_wall_02_bundle");
}

/*
	Name: function_d8e5f873
	Namespace: namespace_4124d
	Checksum: 0x8DEAECC2
	Offset: 0xEFA0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_d8e5f873(var_c77d2837)
{
	wait(3);
	level namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle");
}

/*
	Name: function_43ae7eec
	Namespace: namespace_4124d
	Checksum: 0x76CF53D4
	Offset: 0xEFE0
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_43ae7eec(var_4629f7f4, var_4b7057d2)
{
	if(!isdefined(var_4629f7f4))
	{
		var_4629f7f4 = 1;
	}
	if(!isdefined(var_4b7057d2))
	{
		var_4b7057d2 = 1;
	}
	if(var_4629f7f4)
	{
		function_bb278f94();
	}
	else
	{
		function_96944c1(var_4b7057d2);
	}
}

/*
	Name: function_96944c1
	Namespace: namespace_4124d
	Checksum: 0x8C9787A9
	Offset: 0xF058
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_96944c1(var_4b7057d2)
{
	if(!isdefined(var_4b7057d2))
	{
		var_4b7057d2 = 1;
	}
	level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_wall_drop_bundle");
	level namespace_ad23e503::function_74d6b22f("arena_defend_mobile_wall_deployed");
	if(var_4b7057d2)
	{
		function_5d4438c7();
	}
}

/*
	Name: function_bb278f94
	Namespace: namespace_4124d
	Checksum: 0x6982EB37
	Offset: 0xF0D8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_bb278f94()
{
	namespace_cc27597::function_9e5b8cdb("p7_fxanim_cp_ramses_wall_drop_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_wall_drop_bundle");
	namespace_391e4301::function_ac2b4535("cin_ram_05_01_block_1st_rip", "arena_defend");
	level namespace_cc27597::function_43718187("cin_ram_05_01_block_1st_rip");
	level namespace_ad23e503::function_74d6b22f("intro_igc_done");
}

/*
	Name: function_5d4438c7
	Namespace: namespace_4124d
	Checksum: 0xE47947AD
	Offset: 0xF180
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_5d4438c7()
{
	var_58ee3480 = function_6ada35ba("wall_drop_doors", "targetname");
	if(!isdefined(var_58ee3480))
	{
		var_58ee3480 = namespace_82b91a51::function_b9fd52a4("p7_fxanim_cp_ramses_mobile_wall_doors_mod");
		var_58ee3480.var_170527fb = "wall_drop_doors";
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_58ee3480), "Dev Block strings are not supported");
	#/
	level namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_wall_drop_doors_up_bundle", var_58ee3480);
}

/*
	Name: function_cce749ad
	Namespace: namespace_4124d
	Checksum: 0xAA74D8C7
	Offset: 0xF240
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_cce749ad()
{
	var_58ee3480 = function_6ada35ba("wall_drop_doors", "targetname");
	if(!isdefined(var_58ee3480))
	{
		var_58ee3480 = namespace_82b91a51::function_b9fd52a4("p7_fxanim_cp_ramses_mobile_wall_doors_mod");
		var_58ee3480.var_170527fb = "wall_drop_doors";
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_58ee3480), "Dev Block strings are not supported");
	#/
	level namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_wall_drop_doors_down_bundle", var_58ee3480);
}

/*
	Name: function_844b68d7
	Namespace: namespace_4124d
	Checksum: 0x7E4EF01D
	Offset: 0xF300
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_844b68d7()
{
	level thread namespace_cc27597::function_5c143f59("wp_01", "targetname");
	level thread namespace_cc27597::function_5c143f59("wp_02", "targetname");
	level thread namespace_cc27597::function_5c143f59("wp_03", "targetname");
	level thread namespace_cc27597::function_5c143f59("wp_04", "targetname");
	level thread namespace_cc27597::function_5c143f59("wp_05", "targetname");
}

/*
	Name: function_d92a2132
	Namespace: namespace_4124d
	Checksum: 0x7D0788A
	Offset: 0xF3D8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_d92a2132()
{
	level namespace_cc27597::function_fcf56ab5("wp_01", "targetname", 1);
	level namespace_cc27597::function_fcf56ab5("wp_02", "targetname", 1);
	level namespace_cc27597::function_fcf56ab5("wp_03", "targetname", 1);
	level namespace_cc27597::function_fcf56ab5("wp_04", "targetname", 1);
	level namespace_cc27597::function_fcf56ab5("wp_05", "targetname", 1);
}

/*
	Name: function_6b5863a
	Namespace: namespace_4124d
	Checksum: 0x31891E03
	Offset: 0xF4B0
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function function_6b5863a(var_c77d2837)
{
	var_aa65e706 = function_6ada35ba("ad_detonator_trig", "targetname");
	var_1a30a879 = function_6ada35ba("sinkhole_grenade_ent", "targetname");
	var_1cbfe55c = namespace_14b42b8a::function_7faf4c39(var_aa65e706.var_b07228b6, "targetname");
	foreach(var_d8e7bbc in var_1cbfe55c)
	{
		var_d8e7bbc thread function_94df6716(var_1a30a879);
	}
}

/*
	Name: function_94df6716
	Namespace: namespace_4124d
	Checksum: 0x618A7D1C
	Offset: 0xF5E0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_94df6716(var_6161e05a)
{
	var_10729d99 = self;
	while(isdefined(var_10729d99.var_b07228b6))
	{
		var_d8e7bbc = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
		var_6161e05a function_ecf27a98(function_c4d5ec1f("frag_grenade"), var_d8e7bbc.var_722885f3, (0, 0, 1), 0.1);
		var_10729d99 = var_d8e7bbc;
		wait(0.25);
	}
}

/*
	Name: function_52eeccd
	Namespace: namespace_4124d
	Checksum: 0xEAFEB88F
	Offset: 0xF6A8
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_52eeccd()
{
	level.var_9bc0ad76 = [];
	var_522666ed = function_99201f25("arena_defend_models", "targetname");
	var_105a4022 = function_99201f25("arena_defend_sinkhole", "targetname");
	var_4e480925 = namespace_14b42b8a::function_7922262b("sinkhole_street_spot", "targetname");
	foreach(var_314e0d12 in var_522666ed)
	{
		if(!isdefined(var_314e0d12.var_caae374e) || var_314e0d12.var_caae374e != "ignore_paths")
		{
			var_314e0d12 function_14c24d9d();
		}
	}
	var_105a4022 namespace_391e4301::function_6b4b5556();
}

/*
	Name: function_9cc779c7
	Namespace: namespace_4124d
	Checksum: 0xAA6C3135
	Offset: 0xF820
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_9cc779c7(var_c77d2837)
{
	var_3087b33c = var_c77d2837["street_collapse_big_hole"];
	var_4d6bc9a1 = function_99201f25("arena_defend_street_col", "targetname");
	foreach(var_6df9264 in var_4d6bc9a1)
	{
		var_6df9264 function_37f7858a(var_3087b33c, "bck_ground_sec_07_jnt");
	}
}

/*
	Name: function_be12945c
	Namespace: namespace_4124d
	Checksum: 0x797437F9
	Offset: 0xF910
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_be12945c(var_c77d2837)
{
	namespace_82b91a51::function_76f13293();
	var_be27ab3c = function_6ada35ba("small_hole_01", "targetname");
	var_be27ab3c thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_street_collapse_small_hole_01_drop_bundle");
	namespace_82b91a51::function_76f13293();
	var_be27ab3c = function_6ada35ba("small_hole_02", "targetname");
	var_be27ab3c thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_street_collapse_small_hole_02_drop_bundle");
	namespace_82b91a51::function_76f13293();
	var_be27ab3c = function_6ada35ba("small_hole_03", "targetname");
	var_be27ab3c thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_street_collapse_small_hole_03_drop_bundle");
	namespace_82b91a51::function_76f13293();
	var_be27ab3c = function_6ada35ba("small_hole_04", "targetname");
	var_be27ab3c thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_street_collapse_small_hole_04_drop_bundle");
	namespace_82b91a51::function_76f13293();
	var_be27ab3c = function_6ada35ba("small_hole_05", "targetname");
	var_be27ab3c thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_street_collapse_small_hole_05_drop_bundle");
}

/*
	Name: function_397df6bc
	Namespace: namespace_4124d
	Checksum: 0xC9DC6487
	Offset: 0xFAC0
	Size: 0x1BB
	Parameters: 1
	Flags: None
*/
function function_397df6bc(var_c77d2837)
{
	level thread function_f93fee8e();
	var_be27ab3c = function_6ada35ba("small_hole_01", "targetname");
	var_be27ab3c thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_street_collapse_small_hole_01_drop_bundle");
	var_be27ab3c = function_6ada35ba("small_hole_02", "targetname");
	var_be27ab3c thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_street_collapse_small_hole_02_drop_bundle");
	var_be27ab3c = function_6ada35ba("small_hole_03", "targetname");
	var_be27ab3c thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_street_collapse_small_hole_03_drop_bundle");
	var_be27ab3c = function_6ada35ba("small_hole_04", "targetname");
	var_be27ab3c thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_street_collapse_small_hole_04_drop_bundle");
	var_be27ab3c = function_6ada35ba("small_hole_05", "targetname");
	var_be27ab3c thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_street_collapse_small_hole_05_drop_bundle");
	var_50b2c343 = function_6ada35ba("street_collapse_trailer_cargo", "targetname");
	if(isdefined(var_50b2c343))
	{
		var_50b2c343 function_dc8c8404();
	}
}

/*
	Name: function_f93fee8e
	Namespace: namespace_4124d
	Checksum: 0x18E8CD12
	Offset: 0xFC88
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_f93fee8e()
{
	var_2eb506d6 = function_99201f25("arena_defend_technical", "script_noteworthy");
	foreach(var_35a302af in var_2eb506d6)
	{
		var_35a302af function_14c24d9d(0, 0);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_c15cf2c8
	Namespace: namespace_4124d
	Checksum: 0x35C2FD0D
	Offset: 0xFD60
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_c15cf2c8(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("sinkhole_collapse_complete");
}

/*
	Name: function_5cee729c
	Namespace: namespace_4124d
	Checksum: 0x38ED663C
	Offset: 0xFD98
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_5cee729c(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("arena_defend_sinkhole_igc_started");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("set_dedicated_shadow", 1);
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("dni_eye", 1);
	}
	level thread function_6e3e4c58();
	level notify("hash_9d1a0e6b");
}

/*
	Name: function_6e3e4c58
	Namespace: namespace_4124d
	Checksum: 0xB8FDA3AE
	Offset: 0xFEA0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6e3e4c58()
{
	wait(0.5);
	level thread function_57df3b99(0);
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle");
}

/*
	Name: function_19f02780
	Namespace: namespace_4124d
	Checksum: 0x903586D8
	Offset: 0xFF00
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_19f02780(var_c77d2837)
{
	var_5fd4d3b9 = function_99201f25("lgt_shadow_block", "targetname");
	foreach(var_375c9b15 in var_5fd4d3b9)
	{
		var_375c9b15 function_48f26766();
	}
}

/*
	Name: function_f2434205
	Namespace: namespace_4124d
	Checksum: 0xB9674C04
	Offset: 0xFFC8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_f2434205(var_c77d2837)
{
	function_f56aea9b();
	namespace_84970cc4::function_eaab05dc(function_b8494651("axis"), &function_dc8c8404);
	namespace_84970cc4::function_eaab05dc(function_bd90138e(), &function_dc8c8404);
}

/*
	Name: function_76cedf66
	Namespace: namespace_4124d
	Checksum: 0xCDB6A8DD
	Offset: 0x10058
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_76cedf66(var_c77d2837)
{
	level thread function_c687aeb9(var_c77d2837);
}

/*
	Name: function_c687aeb9
	Namespace: namespace_4124d
	Checksum: 0x3D941AF3
	Offset: 0x10088
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_c687aeb9(var_c77d2837)
{
	if(isdefined(var_c77d2837["robot_arm"]))
	{
		var_c77d2837["robot_arm"] function_50ccee8d();
		var_c77d2837["robot_head"] function_50ccee8d();
		var_c77d2837["robot_missing_arm"] function_50ccee8d();
		var_c77d2837["robot_missing_arm_head"] function_50ccee8d();
		var_c77d2837["robot_intact"] waittill("hash_be5a15e8");
		var_c77d2837["robot_intact"] function_e48f905e("c_nrc_robot_grunt_dam_dps_rarmoff");
		var_c77d2837["robot_arm"] function_48f26766();
		var_c77d2837["robot_intact"] waittill("hash_b6632286");
		var_c77d2837["robot_intact"] function_e40db749();
		var_c77d2837["robot_intact"] function_e48f905e("c_nrc_robot_grunt_dam_dps_rarmoff_headoff");
		var_c77d2837["robot_head"] function_48f26766();
	}
}

/*
	Name: function_ec8a2922
	Namespace: namespace_4124d
	Checksum: 0x3AE4ACF
	Offset: 0x10210
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_ec8a2922(var_c77d2837)
{
	var_c77d2837["robot_arm"] function_50ccee8d();
	var_c77d2837["robot_head"] function_50ccee8d();
	var_c77d2837["robot_missing_arm"] function_50ccee8d();
	var_c77d2837["robot_missing_arm_head"] function_50ccee8d();
	var_c77d2837["robot_intact"] waittill("hash_be5a15e8");
	var_c77d2837["robot_missing_arm"] function_48f26766();
	var_c77d2837["robot_intact"] function_50ccee8d();
	var_c77d2837["robot_arm"] function_48f26766();
	var_c77d2837["robot_intact"] waittill("hash_b6632286");
	var_c77d2837["robot_missing_arm_head"] function_48f26766();
	var_c77d2837["robot_missing_arm"] function_50ccee8d();
	var_c77d2837["robot_head"] function_48f26766();
}

/*
	Name: function_128ca38b
	Namespace: namespace_4124d
	Checksum: 0xB5AAF1A6
	Offset: 0x10398
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_128ca38b(var_c77d2837)
{
	var_c77d2837["robot_arm"] function_8c8e79fe();
	var_c77d2837["robot_head"] function_8c8e79fe();
	var_c77d2837["robot_missing_arm"] function_8c8e79fe();
	var_c77d2837["robot_missing_arm_head"] function_8c8e79fe();
	var_c77d2837["robot_intact"] waittill("hash_be5a15e8");
	var_c77d2837["robot_missing_arm"] function_48f26766();
	var_c77d2837["robot_intact"] function_8c8e79fe();
	var_c77d2837["robot_arm"] function_48f26766();
	var_c77d2837["robot_intact"] waittill("hash_b6632286");
	var_c77d2837["robot_missing_arm_head"] function_48f26766();
	var_c77d2837["robot_missing_arm"] function_8c8e79fe();
	var_c77d2837["robot_head"] function_48f26766();
}

/*
	Name: function_963f32b
	Namespace: namespace_4124d
	Checksum: 0xCDA42C18
	Offset: 0x10520
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_963f32b(var_c77d2837)
{
	namespace_391e4301::function_1aeb2873();
	level waittill("hash_66e11689");
	level namespace_ad23e503::function_74d6b22f("sinkhole_charges_detonated");
	function_a99364b5();
	level thread namespace_82b91a51::function_d8eaed3d(2);
	function_9e3608e3("alley_doors");
	function_6ddd4fa4("alley_doors_open");
}

/*
	Name: function_ce13c58d
	Namespace: namespace_4124d
	Checksum: 0xA521B9A8
	Offset: 0x105C8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_ce13c58d(var_c77d2837)
{
	var_c77d2837["player 1"] namespace_71e9cb84::function_e9c3870b("dni_eye", 0);
	namespace_84970cc4::function_eaab05dc(function_b8494651("axis"), &function_dc8c8404);
	level namespace_cc27597::function_c35e6aab("cin_ram_05_demostreet_3rd_sh100");
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_2ec70f8b
	Namespace: namespace_4124d
	Checksum: 0x436D73FD
	Offset: 0x10670
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function function_2ec70f8b(var_c77d2837)
{
	namespace_391e4301::function_22e1a261();
}

/*
	Name: function_f3dffed
	Namespace: namespace_4124d
	Checksum: 0x7773E15E
	Offset: 0x10698
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_f3dffed(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("arena_defend_sinkhole_collapse_done");
	level.var_9db406db function_dc8c8404();
	var_5fd4d3b9 = function_99201f25("lgt_shadow_block", "targetname");
	foreach(var_375c9b15 in var_5fd4d3b9)
	{
		var_375c9b15 function_50ccee8d();
	}
	function_6ddd4fa4("alley_doors");
	function_9e3608e3("alley_doors_open");
}

/*
	Name: function_e4fcbd75
	Namespace: namespace_4124d
	Checksum: 0x7C56E34A
	Offset: 0x107C8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_e4fcbd75(var_c77d2837)
{
	var_32d013aa = function_4bd0142f("ui_execdemo_cp", 0);
	if(var_32d013aa)
	{
		level waittill("hash_4b89bb4a");
		namespace_1d795d47::function_1b5a2a11();
		level namespace_ce7c3ed5::function_7e61de2b(2);
		function_7d3cac7d(0);
	}
}

/*
	Name: function_eb0491d7
	Namespace: namespace_4124d
	Checksum: 0xFD3F1168
	Offset: 0x10858
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_eb0491d7()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
}

/*
	Name: function_982fed86
	Namespace: namespace_4124d
	Checksum: 0x3BD8AF29
	Offset: 0x108A8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_982fed86(var_c77d2837)
{
	var_78080f8f = var_c77d2837["detonation_guy"];
	var_78080f8f namespace_d84e54db::function_fd6c4374();
}

/*
	Name: function_bf4445e6
	Namespace: namespace_4124d
	Checksum: 0xD70B27B3
	Offset: 0x108F0
	Size: 0x1D3
	Parameters: 1
	Flags: None
*/
function function_bf4445e6(var_c77d2837)
{
	var_78080f8f = var_c77d2837["detonation_guy"];
	var_78080f8f waittill("hash_ee94e3ac");
	var_3d57e9f = var_c77d2837["detonator"];
	var_3d57e9f.var_caae374e = "arena_defend_detonator_pickup_model";
	var_3d57e9f namespace_16f9ecd3::function_e228c18a(1);
	var_4dbf3ae3 = function_9b7fda5e("trigger_radius_use", var_3d57e9f.var_722885f3 + VectorScale((0, 0, 1), 10), 0, 85, 128);
	var_4dbf3ae3 function_1d5013fa();
	var_4dbf3ae3 function_bb863f19();
	var_4dbf3ae3 function_dc378587("none");
	var_c960aa14 = function_99201f25("temp_detonator_button", "targetname");
	var_49ddde9 = namespace_82b91a51::function_14518e76(var_4dbf3ae3, &"cp_level_ramses_detonator", &"CP_MI_CAIRO_RAMSES_DETONATOR_TRIG", &function_dcc9f49f, var_c960aa14);
	var_49ddde9.var_ff1f6868 = "sinkhole_collapse";
	level namespace_ad23e503::function_74d6b22f("arena_defend_detonator_dropped");
}

/*
	Name: function_dcc9f49f
	Namespace: namespace_4124d
	Checksum: 0x1D41831
	Offset: 0x10AD0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_dcc9f49f(var_5dc5e20a)
{
	level.var_8e659b82 = var_5dc5e20a;
	level namespace_ad23e503::function_74d6b22f("arena_defend_detonator_pickup");
	self namespace_a230c2b1::function_c5a39495(1);
}

/*
	Name: function_c693a390
	Namespace: namespace_4124d
	Checksum: 0xF3B0B9A7
	Offset: 0x10B28
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_c693a390()
{
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("disablesprint", 1);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level thread namespace_cc27597::function_c35e6aab("cin_ram_05_01_defend_vign_leapattack");
	level namespace_82b91a51::function_c9aa1ff("hendricks_leap_started", 8);
	namespace_391e4301::function_3f4f84e("arena_defend_mobile_wall_top_nodes", "script_noteworthy", 1);
}

/*
	Name: function_a7405e61
	Namespace: namespace_4124d
	Checksum: 0x78063573
	Offset: 0x10C08
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_a7405e61(var_c77d2837)
{
	self namespace_82b91a51::function_6729b6ba(30, self.var_1157a889 + "_cancelled");
	function_670e94a("axis", "human", "arena_defend_vignette_hendricks_leap_guy_front", "guy_shot");
	function_670e94a("axis", "human", "arena_defend_vignette_hendricks_leap_guy_rear", "guy_grenade");
	self namespace_ad23e503::function_8870cfa8(self.var_a42c7b03);
	self notify(self.var_1157a889 + "_starting");
	level notify("hash_9cb0f801");
	self namespace_cc27597::function_43718187(self.var_8060ff07);
}

/*
	Name: function_f295baeb
	Namespace: namespace_4124d
	Checksum: 0x1225D10
	Offset: 0x10D08
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_f295baeb(var_c77d2837)
{
	var_6b3fcdf5 = function_b4cb3503("hendricks_leap_end_node", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_6b3fcdf5), "Dev Block strings are not supported");
	#/
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("disablesprint", 0);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 function_169cc712(var_6b3fcdf5);
	wait(function_72a94f05(5, 8));
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_670e94a
	Namespace: namespace_4124d
	Checksum: 0x8E149182
	Offset: 0x10E10
	Size: 0x143
	Parameters: 6
	Flags: None
*/
function function_670e94a(var_79939297, var_7b81749, var_6c5c89e1, var_4ac85f5f, var_aa686173, var_d985d5a0)
{
	if(isdefined(var_aa686173))
	{
		self endon(var_aa686173);
	}
	if(!self namespace_ad23e503::function_dbca4c5d(var_4ac85f5f))
	{
		if(!isdefined(self.var_a42c7b03))
		{
			self.var_a42c7b03 = [];
		}
		if(!isdefined(self.var_a42c7b03))
		{
			self.var_a42c7b03 = [];
		}
		else if(!function_6e2770d8(self.var_a42c7b03))
		{
			self.var_a42c7b03 = function_84970cc4(self.var_a42c7b03);
		}
		self.var_a42c7b03[self.var_a42c7b03.size] = var_4ac85f5f;
		self namespace_ad23e503::function_c35e6aab(var_4ac85f5f);
	}
	self namespace_ad23e503::function_9d134160(var_4ac85f5f);
	self thread function_19286245(var_79939297, var_7b81749, var_6c5c89e1, var_4ac85f5f, var_aa686173, var_d985d5a0);
}

/*
	Name: function_19286245
	Namespace: namespace_4124d
	Checksum: 0xFCEC2565
	Offset: 0x10F60
	Size: 0x17B
	Parameters: 6
	Flags: None
*/
function function_19286245(var_79939297, var_7b81749, var_6c5c89e1, var_4ac85f5f, var_aa686173, var_6389ab3d)
{
	if(!isdefined(var_6389ab3d))
	{
		var_6389ab3d = 400;
	}
	self endon(self.var_1157a889 + "_starting");
	self endon(self.var_1157a889 + "_cancelled");
	if(!isdefined(self.var_8060ff07))
	{
		self.var_8060ff07 = [];
	}
	do
	{
		var_78080f8f = function_448954e7(var_7b81749, var_79939297, var_6c5c89e1, var_6389ab3d, 0);
	}
	while(!(!isdefined(var_78080f8f) || !function_5b49d38c(var_78080f8f)));
	self namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
	self.var_8060ff07[var_4ac85f5f] = var_78080f8f;
	var_78080f8f namespace_82b91a51::function_5b7e3888("death", "start_ragdoll");
	function_81403b2f(self.var_8060ff07, var_78080f8f, 0);
	self function_670e94a(var_79939297, var_7b81749, var_6c5c89e1, var_4ac85f5f, var_aa686173);
}

/*
	Name: function_f589aed
	Namespace: namespace_4124d
	Checksum: 0x89173181
	Offset: 0x110E8
	Size: 0x133
	Parameters: 3
	Flags: None
*/
function function_f589aed(var_7d7c0d45, var_6c5c89e1, var_4ac85f5f)
{
	if(!isdefined(self.var_8060ff07))
	{
		self.var_8060ff07 = [];
	}
	self.var_8060ff07[var_4ac85f5f] = namespace_82b91a51::function_740f8516(var_7d7c0d45);
	if(!self namespace_ad23e503::function_dbca4c5d(var_4ac85f5f))
	{
		if(!isdefined(self.var_a42c7b03))
		{
			self.var_a42c7b03 = [];
		}
		if(!isdefined(self.var_a42c7b03))
		{
			self.var_a42c7b03 = [];
		}
		else if(!function_6e2770d8(self.var_a42c7b03))
		{
			self.var_a42c7b03 = function_84970cc4(self.var_a42c7b03);
		}
		self.var_a42c7b03[self.var_a42c7b03.size] = var_4ac85f5f;
		self namespace_ad23e503::function_c35e6aab(var_4ac85f5f);
	}
	self thread function_4fa4774e(var_7d7c0d45, var_6c5c89e1, var_4ac85f5f);
}

/*
	Name: function_4fa4774e
	Namespace: namespace_4124d
	Checksum: 0x8D201ADB
	Offset: 0x11228
	Size: 0x1DB
	Parameters: 3
	Flags: None
*/
function function_4fa4774e(var_7d7c0d45, var_6c5c89e1, var_4ac85f5f)
{
	var_27e203a6 = namespace_82b91a51::function_740f8516(var_7d7c0d45);
	var_9de10fe3 = function_b4cb3503(var_6c5c89e1, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_9de10fe3), "Dev Block strings are not supported" + var_7d7c0d45 + "Dev Block strings are not supported" + self.var_1157a889);
	#/
	var_4345e897 = var_27e203a6.var_7dfaf62;
	var_27e203a6.var_7dfaf62 = 32;
	if(var_27e203a6 namespace_6f7b2095::function_8e9c2efb())
	{
		var_27e203a6 namespace_6f7b2095::function_54bdb053();
	}
	var_27e203a6 function_169cc712(var_9de10fe3, 1);
	var_27e203a6 namespace_82b91a51::function_9fcf3cd8(15, "goal");
	self namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
	self namespace_82b91a51::function_5b7e3888(self.var_1157a889 + "_starting", self.var_1157a889 + "_cancelled");
	var_27e203a6.var_7dfaf62 = var_4345e897;
	if(var_27e203a6 namespace_6f7b2095::function_8e9c2efb())
	{
		var_27e203a6 namespace_6f7b2095::function_bae40a28();
	}
}

/*
	Name: function_e419e693
	Namespace: namespace_4124d
	Checksum: 0xC902E0E8
	Offset: 0x11410
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_e419e693(var_c77d2837)
{
	if(isdefined(level.var_2fd26037.var_e6e961e4))
	{
		level.var_2fd26037.var_7dfaf62 = level.var_2fd26037.var_e6e961e4;
		level.var_2fd26037.var_e6e961e4 = undefined;
	}
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_a6ca068f
	Namespace: namespace_4124d
	Checksum: 0xF41B3F8B
	Offset: 0x11480
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_a6ca068f(var_c77d2837)
{
	level endon("hash_adc3dca5");
	level endon("hash_18cf70dc");
	self namespace_ad23e503::function_c35e6aab("hendricks_ready");
	self thread function_ec1da064();
	var_f6c5842 = self function_c0e05dd();
	var_f6c5842 endon("hash_128f8789");
	self namespace_ad23e503::function_1ab5ebec("hendricks_ready");
	var_8060ff07 = [];
	var_8060ff07["hendricks"] = level.var_2fd26037;
	var_8060ff07["robot"] = var_f6c5842;
	level namespace_cc27597::function_43718187("cin_gen_melee_hendricksmoment_closecombat_robot", var_8060ff07);
}

/*
	Name: function_ec1da064
	Namespace: namespace_4124d
	Checksum: 0x28D405B
	Offset: 0x11588
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_ec1da064()
{
	var_dfcbd82b = function_b4cb3503("melee_robot_vignette_goal_hendricks", "targetname");
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037.var_e6e961e4 = level.var_2fd26037.var_7dfaf62;
	level.var_2fd26037.var_7dfaf62 = 32;
	level.var_2fd26037 namespace_d84e54db::function_19e98020(var_dfcbd82b);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	self namespace_ad23e503::function_74d6b22f("hendricks_ready");
}

/*
	Name: function_c0e05dd
	Namespace: namespace_4124d
	Checksum: 0xAE868973
	Offset: 0x11660
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_c0e05dd()
{
	do
	{
		var_f6c5842 = function_448954e7("robot", "axis", "melee_robot_vignette_goal_robot", 1000, 0, 0);
	}
	while(!(!isdefined(var_f6c5842) || !function_5b49d38c(var_f6c5842)));
	return var_f6c5842;
}

/*
	Name: function_33280827
	Namespace: namespace_4124d
	Checksum: 0xEFC9F0D2
	Offset: 0x116D8
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_33280827(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 thread function_13518c6(10);
			var_a3d46ee4 thread function_310c8dc8(15);
			var_a3d46ee4 function_169cc712(var_a3d46ee4.var_722885f3);
		}
	}
}

/*
	Name: function_7c00379f
	Namespace: namespace_4124d
	Checksum: 0x34469D39
	Offset: 0x117D0
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_7c00379f(var_c77d2837)
{
	level notify("hash_e75ae3d1");
}

/*
	Name: function_310c8dc8
	Namespace: namespace_4124d
	Checksum: 0x970705BA
	Offset: 0x117F8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_310c8dc8(var_78962fff)
{
	self endon("hash_128f8789");
	var_c5e3e899 = self.var_7dfaf62;
	self.var_7dfaf62 = 64;
	self function_169cc712(self.var_722885f3);
	wait(var_78962fff);
	self.var_7dfaf62 = var_c5e3e899;
}

/*
	Name: function_13518c6
	Namespace: namespace_4124d
	Checksum: 0xAF503705
	Offset: 0x11868
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_13518c6(var_78962fff)
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	level namespace_82b91a51::function_c9aa1ff("all_weak_points_destroyed", var_78962fff);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_3838410f
	Namespace: namespace_4124d
	Checksum: 0x7271D16F
	Offset: 0x118D8
	Size: 0x149
	Parameters: 1
	Flags: None
*/
function function_3838410f(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_9785d11(function_c4d5ec1f("spike_launcher"));
	}
	namespace_82b91a51::function_a0938376();
	wait(2);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread namespace_391e4301::function_508a129e("clear_spike_hints");
	}
}

/*
	Name: function_25e4bdcc
	Namespace: namespace_4124d
	Checksum: 0x8614F4C3
	Offset: 0x11A30
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_25e4bdcc(var_c77d2837)
{
	var_45900c37 = var_c77d2837["technical"];
	var_45900c37 function_14c24d9d(0, 0);
	if(isdefined(var_c77d2837["hendricks"]))
	{
		namespace_1d795d47::function_3096a6fd("arena_defend");
	}
}

/*
	Name: function_57df3b99
	Namespace: namespace_4124d
	Checksum: 0x6BCD9184
	Offset: 0x11AA8
	Size: 0x2D3
	Parameters: 1
	Flags: None
*/
function function_57df3b99(var_f9118324)
{
	if(!isdefined(var_f9118324))
	{
		var_f9118324 = 0;
	}
	function_52eeccd();
	level.var_9bc0ad76 = function_99201f25("arena_defend_models", "targetname");
	var_105a4022 = function_99201f25("arena_defend_sinkhole", "targetname");
	var_4e480925 = namespace_14b42b8a::function_7922262b("sinkhole_street_spot", "targetname");
	namespace_82b91a51::function_76f13293();
	namespace_84970cc4::function_7e64f710(level.var_9bc0ad76);
	namespace_82b91a51::function_76f13293();
	namespace_82b91a51::function_76f13293();
	var_105a4022 namespace_391e4301::function_64a470cf();
	namespace_82b91a51::function_76f13293();
	function_9e3608e3("sinkhole_misc_model");
	level namespace_71e9cb84::function_331efedc("clear_all_dyn_ents", 1);
	if(var_f9118324)
	{
		var_4d6bc9a1 = function_99201f25("arena_defend_street_col", "targetname");
		foreach(var_6df9264 in var_4d6bc9a1)
		{
			var_6df9264 function_dc8c8404();
		}
	}
	else if(level namespace_cc27597::function_444aea32("cin_ram_05_01_quadtank_flatbed_pose"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_ram_05_01_quadtank_flatbed_pose", 1);
	}
	if(level namespace_cc27597::function_444aea32("cin_ram_05_01_defend_vign_rescueinjured_l_group"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_ram_05_01_defend_vign_rescueinjured_l_group", 1);
	}
	if(level namespace_cc27597::function_444aea32("cin_ram_05_01_defend_vign_rescueinjured_r_group"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_ram_05_01_defend_vign_rescueinjured_r_group", 1);
	}
}

/*
	Name: function_a99364b5
	Namespace: namespace_4124d
	Checksum: 0x4FEC2192
	Offset: 0x11D88
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_a99364b5(var_32db0b52)
{
	if(!isdefined(var_32db0b52))
	{
		var_32db0b52 = 1;
	}
	if(var_32db0b52)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle");
	}
	else
	{
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle");
	}
}

/*
	Name: function_3eb1d89e
	Namespace: namespace_4124d
	Checksum: 0x5784E291
	Offset: 0x11DF8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_3eb1d89e()
{
	var_9e3dc64d = function_99201f25("checkpoint_wall", "targetname");
	var_9f1c136d = function_6ada35ba("mobile_wall_model", "targetname");
	var_7232aa12 = function_99201f25("mobile_wall_clip", "targetname");
	var_3388f11b = function_6ada35ba("mobile_wall_doors_model", "targetname");
	if(isdefined(var_9f1c136d))
	{
		var_9f1c136d function_dc8c8404();
	}
	namespace_84970cc4::function_7e64f710(var_9e3dc64d);
	namespace_84970cc4::function_7e64f710(var_7232aa12);
	if(isdefined(var_3388f11b))
	{
		var_3388f11b function_dc8c8404();
	}
}

/*
	Name: function_38d8eaf7
	Namespace: namespace_4124d
	Checksum: 0x99EC1590
	Offset: 0x11F38
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_38d8eaf7()
{
}

/*
	Name: function_9f94867c
	Namespace: namespace_4124d
	Checksum: 0x1713E7D6
	Offset: 0x11F48
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_9f94867c()
{
	level namespace_71e9cb84::function_74d6b22f("arena_defend_fxanim_hunters", 0);
}

/*
	Name: function_d0ef8521
	Namespace: namespace_4124d
	Checksum: 0x80637937
	Offset: 0x11F78
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_d0ef8521()
{
	level waittill("hash_cf46ef3a");
	level namespace_ad23e503::function_74d6b22f("weak_points_objective_active");
	level namespace_ad23e503::function_1ab5ebec("all_weak_points_destroyed");
	level namespace_ad23e503::function_9d134160("weak_points_objective_active");
	level namespace_ad23e503::function_43ac000b(function_84970cc4("mobile_wall_doors_closing", "arena_defend_detonator_dropped"));
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_fall_back");
	level namespace_ad23e503::function_1ab5ebec("sinkhole_charges_detonated");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_detonator");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_demolish_arena_defend");
}

/*
	Name: function_6f24118d
	Namespace: namespace_4124d
	Checksum: 0xC9B87EF2
	Offset: 0x12088
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_6f24118d()
{
	var_ea644274 = function_846256f4("allies");
	while(1)
	{
		var_aa24f038 = function_57efbe1(var_ea644274, level.var_2395e945[0].var_722885f3);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_aa24f038.size; var_c957f6b6++)
		{
			if(!function_7f41c8e7(level.var_6a876531, var_aa24f038[var_c957f6b6]) && function_5b49d38c(var_aa24f038[var_c957f6b6]))
			{
				return var_aa24f038[var_c957f6b6];
			}
		}
		wait(0.25);
	}
}

/*
	Name: function_7ff50323
	Namespace: namespace_4124d
	Checksum: 0x4D13023B
	Offset: 0x12180
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function function_7ff50323(var_2d3d7b7)
{
	var_d16e6be2 = function_dc99997a(0, var_2d3d7b7.size);
	return var_2d3d7b7[var_d16e6be2];
}

/*
	Name: function_181343bc
	Namespace: namespace_4124d
	Checksum: 0x50175077
	Offset: 0x121C8
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_181343bc()
{
	level endon("hash_adc3dca5");
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "esl1_enemy_down_0";
	var_2d3d7b7[1] = "egy2_that_s_a_bad_way_to_0";
	var_2d3d7b7[2] = "esl3_it_went_right_throug_0";
	var_2d3d7b7[3] = "esl4_he_got_torn_up_0";
	while(1)
	{
		level waittill("hash_2de65b48");
		var_78080f8f = function_6f24118d();
		var_78080f8f thread namespace_71b8dba1::function_81141386(function_7ff50323(var_2d3d7b7));
		wait(function_dc99997a(90, 120));
	}
}

/*
	Name: function_7ad9ea68
	Namespace: namespace_4124d
	Checksum: 0xFB298F2F
	Offset: 0x122B8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_7ad9ea68()
{
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_search_the_cit_0");
	level namespace_71b8dba1::function_a463d127("kane_got_to_give_me_time_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_we_don_t_have_time_0");
	function_942c6e92();
	level namespace_ad23e503::function_74d6b22f("arena_defend_initial_weak_point_search_finished");
}

/*
	Name: function_c661367c
	Namespace: namespace_4124d
	Checksum: 0xDFA43FBD
	Offset: 0x12358
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_c661367c()
{
	level endon("hash_ba66cdba");
	level namespace_ad23e503::function_1ab5ebec("arena_defend_initial_weak_point_search_finished");
	level thread namespace_71b8dba1::function_a463d127("kane_okay_i_ve_located_t_0");
	level thread namespace_a6a248fc::function_9574e08d();
	wait(1);
	level thread namespace_ce7c3ed5::function_8f7bd062("cp_ramses2_pip_unstableground", "pip");
	wait(3);
	level notify("hash_cf46ef3a");
	level thread function_7b768906();
}

/*
	Name: function_942c6e92
	Namespace: namespace_4124d
	Checksum: 0x6B3D0E7B
	Offset: 0x12418
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_942c6e92()
{
	var_35a302af = function_6ada35ba("arena_defend_technical_01_vh", "targetname");
	if(function_5b49d38c(var_35a302af))
	{
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "esl3_eyes_on_enemy_techni_0";
		var_2d3d7b7[1] = "esl4_hostile_technical_mo_0";
		var_78080f8f = function_6f24118d();
		var_78080f8f namespace_71b8dba1::function_81141386(function_7ff50323(var_2d3d7b7));
	}
	if(function_5b49d38c(var_35a302af))
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_someone_move_on_that_0");
	}
}

/*
	Name: function_7b768906
	Namespace: namespace_4124d
	Checksum: 0x5F2C39FE
	Offset: 0x12520
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_7b768906()
{
	level endon("hash_18cf70dc");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_54380572();
	}
	level waittill("hash_b7604d6c");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_not_good_enough_go_0");
	level waittill("hash_b7604d6c");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_gotta_hammer_the_0");
	level waittill("hash_b7604d6c");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_need_the_spikes_o_0");
	level waittill("hash_b7604d6c");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_can_t_do_it_at_range_0");
}

/*
	Name: function_54380572
	Namespace: namespace_4124d
	Checksum: 0xA33AC662
	Offset: 0x12688
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_54380572()
{
	level endon("hash_18cf70dc");
	self endon("hash_128f8789");
	var_39ba7753 = 0;
	while(1)
	{
		self waittill("hash_aa1618b0", var_d13f855e);
		if(var_d13f855e === level.var_1b7b3a6)
		{
			var_39ba7753++;
			if(var_39ba7753 >= 3)
			{
				level notify("hash_b7604d6c");
				var_39ba7753 = 0;
			}
		}
	}
}

/*
	Name: function_1d79812
	Namespace: namespace_4124d
	Checksum: 0x9761E698
	Offset: 0x12720
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_1d79812()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_e5f94949();
	}
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_target_confirmed_0", 1);
	level thread function_8b9ed044();
}

/*
	Name: function_8b9ed044
	Namespace: namespace_4124d
	Checksum: 0x2C75CF5B
	Offset: 0x127F0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_8b9ed044()
{
	level endon("hash_adc3dca5");
	level waittill("hash_18cf70dc");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_blow_that_fucker_0", 1);
	level waittill("hash_18cf70dc");
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_spike_set_blow_it_0", 1);
	level waittill("hash_18cf70dc");
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_blow_that_spike_0", 1);
	level waittill("hash_18cf70dc");
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_spike_on_target_de_0", 1);
}

/*
	Name: function_e5f94949
	Namespace: namespace_4124d
	Checksum: 0xA8691567
	Offset: 0x128D0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_e5f94949()
{
	level endon("hash_adc3dca5");
	self endon("hash_128f8789");
	self waittill("hash_41772abf");
	self thread namespace_71b8dba1::function_13b3b16a("plyr_dammit_i_m_out_of_s_0");
	self waittill("hash_41772abf");
	self thread namespace_71b8dba1::function_13b3b16a("plyr_need_a_reload_0");
	self waittill("hash_41772abf");
	self thread namespace_71b8dba1::function_13b3b16a("plyr_i_m_all_out_need_m_0");
}

/*
	Name: function_2fa2a80f
	Namespace: namespace_4124d
	Checksum: 0x987CB34F
	Offset: 0x12970
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_2fa2a80f()
{
	level namespace_71b8dba1::function_13b3b16a("plyr_detonation_confirmed_0", 1);
}

/*
	Name: function_60f90684
	Namespace: namespace_4124d
	Checksum: 0x9DC2725A
	Offset: 0x129A0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_60f90684()
{
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "esl1_i_got_grunts_scaling_0";
	var_2d3d7b7[1] = "egy2_heads_up_hostile_0";
	var_2d3d7b7[2] = "esl3_look_out_enemy_grun_0";
	var_78080f8f = function_6f24118d();
	var_78080f8f thread namespace_71b8dba1::function_81141386(function_7ff50323(var_2d3d7b7));
}

/*
	Name: function_d5457906
	Namespace: namespace_4124d
	Checksum: 0xD2C7B1A6
	Offset: 0x12A40
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_d5457906()
{
	level thread namespace_71b8dba1::function_a463d127("kane_two_more_in_the_nort_0");
	wait(0.5);
	wait(2);
	level namespace_71b8dba1::function_13b3b16a("plyr_copy_that_hendricks_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_re_good_go_0", 1);
}

/*
	Name: function_19751093
	Namespace: namespace_4124d
	Checksum: 0x99EC1590
	Offset: 0x12AC0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_19751093()
{
}

/*
	Name: function_102382b1
	Namespace: namespace_4124d
	Checksum: 0xD66136E2
	Offset: 0x12AD0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_102382b1()
{
	level namespace_71b8dba1::function_a463d127("ecmd_nrc_reinforcements_f_0");
}

/*
	Name: function_a47d54df
	Namespace: namespace_4124d
	Checksum: 0x5CEB457B
	Offset: 0x12B00
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a47d54df()
{
	level thread namespace_71b8dba1::function_a463d127("kane_last_two_0", 1);
}

/*
	Name: function_8394a26f
	Namespace: namespace_4124d
	Checksum: 0x9B803AAF
	Offset: 0x12B30
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_8394a26f()
{
	level endon("hash_adc3dca5");
	wait(0.75);
	level namespace_71b8dba1::function_a463d127("kane_this_is_it_last_on_0");
	level thread namespace_71b8dba1::function_a463d127("ecmd_nrc_reinforcements_i_0");
	level waittill("hash_18cf70dc");
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_blow_it_0", 2);
}

/*
	Name: function_66f027df
	Namespace: namespace_4124d
	Checksum: 0x988F77A0
	Offset: 0x12BC0
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_66f027df()
{
	namespace_82b91a51::function_76f13293();
	if(!level namespace_ad23e503::function_7922262b("mobile_wall_doors_closing"))
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_s_it_we_got_0");
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_fall_back");
	level thread namespace_d0ef8521::function_45d1556("arena_defend_wall_gather_trig");
	if(!level namespace_ad23e503::function_7922262b("mobile_wall_doors_closing"))
	{
		if(isdefined(level.var_9db406db))
		{
			var_2d3d7b7 = [];
			var_2d3d7b7[0] = "khal_we_have_to_blow_the_0";
			var_2d3d7b7[1] = "khal_hurry_we_have_to_bl_0";
			var_2d3d7b7[2] = "hend_fall_back_to_mobile_0";
			var_2d3d7b7[3] = "hend_get_the_fuck_back_g_0";
			var_2d3d7b7[4] = "hend_fall_back_behind_the_0";
			level.var_9db406db namespace_71b8dba1::function_81141386(function_7ff50323(var_2d3d7b7));
		}
	}
	if(!level namespace_ad23e503::function_7922262b("mobile_wall_doors_closing"))
	{
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "esl1_get_behind_the_wall_0";
		var_2d3d7b7[1] = "egy2_move_behind_the_mobi_0";
		var_2d3d7b7[2] = "esl1_get_behind_the_wall_1";
		if(level.var_31aefea8 != "dev_sinkhole_test")
		{
			var_78080f8f = function_6f24118d();
			var_78080f8f thread namespace_71b8dba1::function_81141386(function_7ff50323(var_2d3d7b7), 5);
		}
	}
	level thread function_d3adcddf();
}

/*
	Name: function_d3adcddf
	Namespace: namespace_4124d
	Checksum: 0xD39E8AEB
	Offset: 0x12E00
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d3adcddf()
{
	level namespace_71b8dba1::function_a463d127("kane_we_got_javelin_missi_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_incoming_1");
}

/*
	Name: function_a8e2a95
	Namespace: namespace_4124d
	Checksum: 0xB44ED0C9
	Offset: 0x12E50
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a8e2a95()
{
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db namespace_71b8dba1::function_81141386("khal_get_on_top_of_wall_0");
	}
}

/*
	Name: function_350af383
	Namespace: namespace_4124d
	Checksum: 0xFB19DDC0
	Offset: 0x12E90
	Size: 0xDD
	Parameters: 1
	Flags: None
*/
function function_350af383(var_ac8ea4f8)
{
	level endon("hash_fc0ed87");
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "esl4_let_s_see_them_climb_0";
	var_2d3d7b7[1] = "esl3_they_won_t_be_coming_0";
	var_2d3d7b7[2] = "egy2_they_think_we_ll_bre_0";
	var_2d3d7b7[3] = "esl1_our_will_won_t_be_br_0";
	if(var_ac8ea4f8 > var_2d3d7b7.size)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2d3d7b7.size; var_c957f6b6++)
		{
			var_ac8ea4f8[var_c957f6b6] namespace_71b8dba1::function_81141386(var_2d3d7b7[var_c957f6b6]);
			wait(0.5);
		}
	}
}

/*
	Name: function_fd1e50c8
	Namespace: namespace_4124d
	Checksum: 0x3E940BA6
	Offset: 0x12F78
	Size: 0xB7
	Parameters: 2
	Flags: None
*/
function function_fd1e50c8(var_6161e05a, var_3eac426f)
{
	/#
		self endon("hash_128f8789");
		var_3eac426f = GetTime() + var_3eac426f * 1000;
		while(GetTime() < var_3eac426f)
		{
			function_4e418837(self.var_722885f3 + VectorScale((0, 0, 1), 300), var_6161e05a.var_722885f3, (1, 0, 0), 0.1);
			namespace_f96f74aa::function_351b2d2a(var_6161e05a.var_722885f3, var_6161e05a.var_6ab6f4fd);
			wait(0.05);
		}
	#/
}

/*
	Name: function_dfb8409d
	Namespace: namespace_4124d
	Checksum: 0x994A3ECB
	Offset: 0x13038
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function function_dfb8409d(var_b04bc952, var_74cd64bc)
{
	function_c4fc0ade(var_b04bc952, var_74cd64bc);
	function_e8a47a87();
	level thread function_43ae7eec(0, 1);
	level namespace_ad23e503::function_74d6b22f("weak_points_objective_active");
	namespace_96fa87af::function_994832bd("arena_defend_technical_01", &function_c3bff305);
	namespace_96fa87af::function_7387a40a("arena_defend_technical_01");
	function_7da8c2ae();
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_small_hole_01_bundle", &function_d8e5f873, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_street_collapse_small_hole_04_bundle", &function_34c51c66, "play");
	function_3e55e3();
	function_f15cce15("dev_sinkhole_test", 0);
}

/*
	Name: function_d1d0f160
	Namespace: namespace_4124d
	Checksum: 0x3C393414
	Offset: 0x13190
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_d1d0f160(var_b04bc952, var_74cd64bc)
{
}

/*
	Name: function_8494dbb
	Namespace: namespace_4124d
	Checksum: 0x60E6B227
	Offset: 0x131B0
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_8494dbb(var_3f3a393c)
{
	var_9bb18713 = function_99201f25("collision_" + var_3f3a393c, "targetname");
	foreach(var_44febfef in var_9bb18713)
	{
		var_44febfef function_dc8c8404();
	}
}

/*
	Name: function_f15cce15
	Namespace: namespace_4124d
	Checksum: 0x641D0122
	Offset: 0x13280
	Size: 0x303
	Parameters: 2
	Flags: None
*/
function function_f15cce15(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_b6da2f7c();
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	}
	namespace_391e4301::function_f2f98cfc();
	namespace_d7ca6f18::function_fc9630cb();
	function_1a5a4627();
	function_c50ca91();
	function_e29f0dd6(var_b04bc952, var_74cd64bc);
	function_8f461d35(0);
	function_52eeccd();
	level thread function_43ae7eec(0, 1);
	function_a760a823();
	level thread function_9b890ccb();
	function_30f53fbc();
	level namespace_ad23e503::function_74d6b22f("all_weak_points_destroyed");
	function_844b68d7();
	function_8494dbb("wp_01");
	function_8494dbb("wp_02");
	function_8494dbb("wp_03");
	function_8494dbb("wp_04");
	wait(1);
	level thread function_c779fef1();
	level thread namespace_82b91a51::function_1ec499f0("PRESS RIGHT ON D-PAD TO PLAY FINAL SCENE", undefined, undefined, undefined, 10);
	while(1)
	{
		if(level.var_2395e945[0] function_7db80007())
		{
			break;
		}
		wait(0.05);
	}
	namespace_82b91a51::function_77f8007d();
	function_2e8bcd54();
	function_4dcf9e47();
	level notify("hash_87039547");
	level thread function_3d3f7691();
	namespace_d5067552::function_bae40a28("arena_defend_wall_allies");
	level namespace_ad23e503::function_1ab5ebec("arena_defend_sinkhole_collapse_done");
	function_2fcc9369("arena_defend_spawn_manager");
	function_53314bf6();
	namespace_391e4301::function_5ad47384();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_c779fef1
	Namespace: namespace_4124d
	Checksum: 0x722EF726
	Offset: 0x13590
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_c779fef1()
{
	level thread function_d0ef8521();
	wait(1);
	level notify("hash_cf46ef3a");
}

/*
	Name: function_a760a823
	Namespace: namespace_4124d
	Checksum: 0xD308203E
	Offset: 0x135C8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a760a823()
{
	var_1bc0905e = namespace_96fa87af::function_7387a40a("arena_defend_intro_technical");
	var_1bc0905e function_c3945cd5(var_1bc0905e.var_3a90f16b, var_1bc0905e.var_722885f3);
}

/*
	Name: function_893047b8
	Namespace: namespace_4124d
	Checksum: 0xCBBF188A
	Offset: 0x13628
	Size: 0x33
	Parameters: 4
	Flags: None
*/
function function_893047b8(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	function_26aaae96();
}

/*
	Name: function_7da8c2ae
	Namespace: namespace_4124d
	Checksum: 0xC1121781
	Offset: 0x13668
	Size: 0x229
	Parameters: 0
	Flags: None
*/
function function_7da8c2ae()
{
	var_31564035 = function_785a0ed();
	var_adc17f12 = [];
	foreach(var_a4952fb2 in var_31564035)
	{
		foreach(var_20488710 in var_a4952fb2)
		{
			function_525ae497(var_adc17f12, var_20488710.var_2f201aa5, 0, 0);
			if(!isdefined(var_adc17f12))
			{
				var_adc17f12 = [];
			}
			else if(!function_6e2770d8(var_adc17f12))
			{
				var_adc17f12 = function_84970cc4(var_adc17f12);
			}
			var_adc17f12[var_adc17f12.size] = var_20488710.var_672c6068 + "_identified";
		}
	}
	foreach(var_4ac85f5f in var_adc17f12)
	{
		level namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
	}
}

