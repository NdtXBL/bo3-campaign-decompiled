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
	Name: __init__sytem__
	Namespace: namespace_4124d
	Checksum: 0xC3CE1555
	Offset: 0x3098
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("arena_defend", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_4124d
	Checksum: 0xFCF4E4A9
	Offset: 0x30D8
	Size: 0x373
	Parameters: 0
	Flags: None
*/
function __init__()
{
	clientfield::register("scriptmover", "arena_defend_weak_point_keyline", 1, 1, "int");
	clientfield::register("world", "clear_all_dyn_ents", 1, 1, "counter");
	clientfield::register("toplayer", "set_dedicated_shadow", 1, 1, "int");
	level thread scene::Play("cin_ram_05_01_quadtank_flatbed_pose");
	namespace_391e4301::enable_nodes("arena_defend_car4cover_node", "targetname", 0);
	namespace_391e4301::enable_nodes("hendricks_mobile_wall_start_node", "targetname", 0);
	namespace_391e4301::enable_nodes("arena_defend_demostreet_intro_khalil", "targetname", 0);
	namespace_391e4301::enable_nodes("mobile_wall_door_traversals", "targetname", 0);
	namespace_391e4301::enable_nodes("wp_03_dynamic_covernode", "script_noteworthy", 0);
	m_collision = GetEnt("mobile_wall_doors_clip", "targetname");
	m_collision disconnectpaths(0, 0);
	var_70d87be7 = GetEnt("trig_wp_01_kill_stuck_players", "targetname");
	if(isdefined(var_70d87be7))
	{
		var_70d87be7 TriggerEnable(0);
	}
	var_a9060824 = GetEnt("trig_wp_04_damage", "targetname");
	var_a9060824 TriggerEnable(0);
	var_5fd4d3b9 = GetEntArray("lgt_shadow_block", "targetname");
	foreach(blocker in var_5fd4d3b9)
	{
		blocker Hide();
	}
	for(i = 1; i < 6; i++)
	{
		namespace_391e4301::enable_nodes("wp_0" + i + "_traversal_jump", "script_noteworthy", 0);
	}
	init_flags();
	SetDvar("ui_newHud", 1);
}

/*
	Name: intro
	Namespace: namespace_4124d
	Checksum: 0x2B6BD499
	Offset: 0x3458
	Size: 0x263
	Parameters: 2
	Flags: None
*/
function intro(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	level scene::init("cin_ram_05_01_block_1st_rip");
	level scene::init("p7_fxanim_cp_ramses_wall_drop_bundle");
	GetEnt("mobile_wall_turret_blocker", "targetname") Hide();
	function_c4fc0ade(str_objective, var_74cd64bc);
	battlechatter::function_d9f49fba(0);
	level thread function_3c00dec();
	load::function_a2995f22(2);
	level thread function_d8bb5a8e();
	level thread namespace_a6a248fc::function_1e7ee1cd();
	namespace_391e4301::enable_nodes("nd_raps_launch_point_1", "targetname", 0);
	namespace_391e4301::enable_nodes("nd_raps_launch_point_2", "targetname", 0);
	namespace_391e4301::enable_nodes("nd_raps_launch_point_3", "targetname", 0);
	namespace_391e4301::enable_nodes("nd_raps_launch_point_4", "targetname", 0);
	level flag::set("arena_defend_spawn");
	level thread function_aed0e82f();
	if(isdefined(level.BZM_RAMSESDialogue5Callback))
	{
		level thread [[level.BZM_RAMSESDialogue5Callback]]();
	}
	level thread namespace_391e4301::function_d0d2f172("cin_ram_05_01_defend_vign_rescueinjured_r_group", "arena_defend_intro_player_exits_technical");
	level function_43ae7eec(1);
	level thread function_27342097();
	skipto::function_be8adfb8(str_objective);
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
	level util::waittill_notify_or_timeout("arena_defend_intro_open_door", 30);
	battlechatter::function_d9f49fba(1);
	function_96944c1(1);
}

/*
	Name: intro_done
	Namespace: namespace_4124d
	Checksum: 0x56321C89
	Offset: 0x3728
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function intro_done(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_391e4301::function_7255e66(0, "alley_mobile_armory");
	if(var_e4cd2b8b)
	{
		level scene::skipto_end("cin_ram_05_01_block_1st_rip_skipto");
	}
	if(var_74cd64bc)
	{
		level thread util::function_d8eaed3d(5);
	}
	collectibles::add_collectible_params("p7_nc_cai_ram_01", 60, VectorScale((0, -1, 0), 5));
	collectibles::function_37aecd21();
}

/*
	Name: main
	Namespace: namespace_4124d
	Checksum: 0x58B944EB
	Offset: 0x37F8
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function main(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread function_b7b36dff();
	}
	level thread function_e45af9f2();
	level thread function_f9842c89();
	level flag::set("arena_defend_spawn");
	function_c4fc0ade(str_objective, var_74cd64bc);
	GetEnt("mobile_wall_turret_blocker", "targetname") show();
	namespace_38256252::function_bb0dee49();
	namespace_38256252::function_69c025f8();
	namespace_38256252::function_5553172f();
	namespace_38256252::function_cef37178();
	function_e8a47a87();
	namespace_391e4301::enable_nodes("arena_defend_dynamic_covernodes", "script_noteworthy", 0);
	level thread objectives();
	level thread function_181343bc();
	level thread function_38d8eaf7();
	if(var_74cd64bc)
	{
		level thread function_786c5bca();
		level thread function_82802a7a(1);
		level thread function_a5b142fc(1);
		level flag::wait_till("arena_defend_mobile_wall_deployed");
	}
	function_345b912d();
	function_bbf0087d();
	function_cac20541();
	function_30f53fbc();
	skipto::function_be8adfb8("arena_defend");
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
function function_4451e1bd(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		function_c4fc0ade(str_objective, var_74cd64bc);
		level scene::init("cin_ram_05_demostreet_3rd_sh010");
		load::function_a2995f22();
		util::screen_fade_out(0, "black", "skipto_fade");
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
		var_35a302af = vehicle::simple_spawn_single("arena_defend_intro_technical");
		var_35a302af flag::init("warp_to_spline_end_done");
		var_35a302af util::delay(0.25, undefined, &kill);
		level thread function_9b890ccb();
		level thread scene::skipto_end("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle");
		level thread scene::skipto_end("p7_fxanim_cp_ramses_checkpoint_wall_02_bundle");
		util::delay(0.5, undefined, &util::screen_fade_in, 1.5, "black", "skipto_fade");
		level notify("hash_18cf70dc");
		util::delay(2, undefined, &function_30f53fbc);
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
	skipto::function_be8adfb8("sinkhole_collapse");
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
	a_fxanims = Array("wp_01", "wp_02", "wp_03", "wp_04", "wp_05");
	foreach(str_scene_name in a_fxanims)
	{
		level scene::init(str_scene_name);
		util::wait_network_frame();
	}
	function_6ddd4fa4("sinkhole_misc_model");
	function_ee6b663("wp_01");
	function_ee6b663("wp_02");
	function_ee6b663("wp_03");
	function_ee6b663("wp_04");
	function_ee6b663("wp_05");
	level flag::set("all_weak_points_destroyed");
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
	level flag::init(var_ca3f11aa);
	level flag::init(var_ca3f11aa + "_identified");
	level flag::init(var_ca3f11aa + "_destroyed");
	namespace_391e4301::enable_nodes(var_ca3f11aa + "_covernode", "script_noteworthy", 1);
	namespace_391e4301::link_traversals(var_ca3f11aa + "_traversal", "script_noteworthy", 1);
	level flag::set(var_ca3f11aa);
	level flag::set(var_ca3f11aa + "_destroyed");
	level thread scene::skipto_end(var_ca3f11aa, "targetname");
	var_9bb18713 = GetEntArray("collision_" + var_ca3f11aa, "targetname");
	foreach(var_44febfef in var_9bb18713)
	{
		if(var_44febfef.targetname != "collision_wp_05")
		{
			var_44febfef delete();
		}
	}
	namespace_391e4301::enable_nodes(var_ca3f11aa + "_traversal_jump", "script_noteworthy", 1);
	namespace_391e4301::link_traversals(var_ca3f11aa + "_traversal", "script_noteworthy", 0);
	spawn_manager::kill("sm_" + var_ca3f11aa + "_defenders", 1);
	switch(var_ca3f11aa)
	{
		case "wp_01":
		{
			var_70d87be7 = GetEnt("trig_wp_01_kill_stuck_players", "targetname");
			if(isdefined(var_70d87be7))
			{
				var_70d87be7 TriggerEnable(1);
			}
			break;
		}
		case "wp_02":
		{
			trigger::use("wp_03_goal_trig");
			namespace_391e4301::enable_nodes(var_ca3f11aa + "_covernode", "script_noteworthy", 0);
			break;
		}
		case "wp_04":
		{
			var_a9060824 = GetEnt("trig_wp_04_damage", "targetname");
			var_a9060824 TriggerEnable(1);
			spawn_manager::enable("sm_wp_04_robot_rushers");
			namespace_391e4301::enable_nodes("wp_04_raps_walk", "targetname", 0);
			break;
		}
		case "wp_05":
		{
			spawn_manager::kill("arena_defend_far_left_enemies");
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
function function_82a50f67(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		level flag::set("sinkhole_charges_detonated");
		objectives::complete("cp_level_ramses_demolish_arena_defend");
		function_3eb1d89e();
	}
	objectives::set("cp_level_ramses_reinforce_safiya");
	function_26aaae96();
	if(level flag::get("arena_defend_common_elements_initialized"))
	{
		spawner::remove_global_spawn_function("allies", &function_c23243fe);
		callback::remove_on_spawned(&function_e377e915);
	}
	var_1b7b3a6 = GetWeapon("spike_launcher");
	foreach(player in level.players)
	{
		if(player HasWeapon(var_1b7b3a6))
		{
			player TakeWeapon(var_1b7b3a6);
		}
	}
	battlechatter::function_d9f49fba(1);
	namespace_38256252::function_4df6d923();
	namespace_38256252::function_eb593e7e();
	namespace_38256252::function_a64e00f5();
	namespace_38256252::function_508c89fe();
	var_496b7d52 = spawn("trigger_box", (8401, 20022, -60), 0, 50000, 50000, 50000);
	var_496b7d52.angles = VectorScale((0, 1, 0), 134);
	var_496b7d52 thread oob::run_oob_trigger();
	var_496b7d52 = spawn("trigger_box", (-13310, 1310, 17516), 0, 50000, 50000, 50000);
	var_496b7d52.angles = VectorScale((0, 1, 0), 134);
	var_496b7d52 thread oob::run_oob_trigger();
	spawncollision("collision_physics_512x512x512", "collider", (6672, -16394, 520), (90, 185.051, 95.0511));
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
	battlechatter::function_d9f49fba(0);
	level flag::wait_till("arena_defend_common_elements_initialized");
	function_96944c1();
	load::function_a2995f22();
	util::screen_fade_out(0, "black", "skipto_fade");
	util::delay(2.5, undefined, &util::screen_fade_in, 1, "black", "skipto_fade");
	level thread namespace_a6a248fc::function_37e13caa();
	level scene::skipto_end("cin_ram_05_01_block_1st_rip", undefined, undefined, 0.75, 1);
	level thread function_27342097();
	level thread function_d8bb5a8e();
	battlechatter::function_d9f49fba(1);
	level flag::set("intro_igc_done");
	var_dfcbd82b = GetNode("hendricks_mobile_wall_top_node", "targetname");
	level.var_2fd26037.goalRadius = 64;
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 SetGoal(var_dfcbd82b, 1);
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
	if(!level flag::get("arena_defend_common_elements_initialized"))
	{
		function_b6da2f7c();
		function_1a5a4627();
		namespace_391e4301::function_f2f98cfc();
		namespace_d7ca6f18::function_fc9630cb();
		function_c50ca91();
		if(var_d3c2655d !== "sinkhole_collapse")
		{
			init_scenes();
		}
		setup_heroes(var_d3c2655d, var_74cd64bc);
		level flag::set("arena_defend_common_elements_initialized");
		spawner::add_global_spawn_function("allies", &function_c23243fe);
		callback::on_spawned(&function_e377e915);
		Array::run_all(GetEntArray("weak_point_trigger", "script_noteworthy"), &Hide);
		namespace_391e4301::enable_nodes("arena_defend_mobile_wall_top_nodes", "script_noteworthy", 0);
		GetEnt("wp_crouch_cover", "targetname") MoveZ(-200, 0.05);
	}
}

/*
	Name: done
	Namespace: namespace_4124d
	Checksum: 0x726BDD5D
	Offset: 0x4AB8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function done(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: setup_heroes
	Namespace: namespace_4124d
	Checksum: 0xAC157767
	Offset: 0x4AE8
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function setup_heroes(str_objective, var_74cd64bc)
{
	init_heroes(str_objective, var_74cd64bc);
	level.var_9db406db colors::set_force_color("y");
	level.var_9db406db.goalRadius = 1024;
	level.var_2fd26037 colors::set_force_color("b");
}

/*
	Name: init_flags
	Namespace: namespace_4124d
	Checksum: 0x851DAAE1
	Offset: 0x4B78
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("arena_defend_initial_spawns_done");
	level flag::init("all_spike_launchers_picked_up");
	level flag::init("billboard1_crashed");
	level flag::init("billboard2_crashed");
	level flag::init("sinkhole_explosion_started");
	level flag::init("sinkhole_collapse_complete");
	level flag::init("intro_technical_dropped_from_vtol");
	level flag::init("arena_defend_mobile_wall_deployed");
	level flag::init("arena_defend_mobile_wall_doors_open");
	level flag::init("arena_defend_intro_technical_disabled");
	level flag::init("arena_defend_initial_weak_point_search_finished");
	level flag::init("arena_defend_second_wave_weak_points_discovered");
	level flag::init("arena_defend_third_wave_weak_points_discovered");
	level flag::init("arena_defend_last_wave_weak_points_discovered");
	level flag::init("arena_defend_common_elements_initialized");
	level flag::init("arena_defend_sinkhole_igc_started");
	level flag::init("arena_defend_detonator_dropped");
	level flag::init("arena_defend_sinkhole_collapse_done");
	level flag::init("arena_defend_rocket_hits_vtol");
	level flag::init("arena_defend_detonator_pickup");
}

/*
	Name: init_heroes
	Namespace: namespace_4124d
	Checksum: 0xCB4F9BDF
	Offset: 0x4E08
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function init_heroes(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_9db406db = util::function_740f8516("khalil");
	}
	skipto::teleport_ai(str_objective, level.heroes);
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 colors::enable();
	}
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db colors::disable();
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
	level flag::set("flak_vtol_ride_stop");
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
	spawner::add_spawn_function_group("arena_defend_initial_enemies", "targetname", &function_fa6cb6a2);
	spawner::add_spawn_function_group("arena_defend_wall_jumper", "script_noteworthy", &function_58b8beac);
	spawner::add_spawn_function_group("arena_defend_cafe_defender_guys", "targetname", &function_e90b6d13);
	spawner::add_spawn_function_group("arena_defend_intro_wall_ally", "script_noteworthy", &function_e90b6d13);
	spawner::add_spawn_function_group("arena_defend_reset_anchor", "script_noteworthy", &function_e90b6d13);
	spawner::add_spawn_function_group("sp_wp_04_robot_defenders", "targetname", &function_cfffb0c2, "normal");
	spawner::add_spawn_function_group("sp_wp_04_robot_rushers", "targetname", &function_cfffb0c2, "rusher");
	level.var_1b7b3a6 = GetWeapon("spike_launcher");
	for(i = 1; i < 6; i++)
	{
		spawner::add_spawn_function_group("wp_0" + i + "_defenders", "targetname", &function_a275144c, "wp_0" + i + "_destroyed");
	}
	vehicle::add_spawn_function("checkpoint_right_fill_raps", &function_69b7b359);
	vehicle::add_spawn_function("checkpoint_right_breach_raps", &function_69b7b359);
	vehicle::add_spawn_function("arena_defend_quadtank", &function_9ec9caf9);
	vehicle::add_spawn_function("arena_defend_wall_vtol", &function_193cfd7e);
	vehicle::add_spawn_function("arena_defend_mobile_wall_turret", &function_ca365357);
	vehicle::add_spawn_function("arena_defend_intro_technical", &function_94c406b0, "arena_defend_intro_technical_disabled");
	vehicle::add_spawn_function("arena_defend_intro_technical", &function_90d92a9b, "cin_ram_05_01_defend_aie_nrc_exittruck_variation1", "arena_defend_mobile_wall_doors_open");
	vehicle::add_spawn_function("arena_defend_intro_technical", &function_c3bff305);
	vehicle::add_spawn_function("arena_defend_intro_technical", &function_165738b0);
	vehicle::add_spawn_function("arena_defend_technical_01", &function_165738b0);
	vehicle::add_spawn_function("arena_defend_technical_01", &function_90d92a9b, "cin_ram_05_01_defend_aie_nrc_exittruck_variation2", "reached_end_node");
	vehicle::add_spawn_function("arena_defend_technical_02", &function_90d92a9b, "cin_ram_05_01_defend_aie_nrc_exittruck_variation1", "reached_end_node");
	foreach(var_7b7d10ac in GetEntArray("arena_defend_technical", "script_noteworthy"))
	{
		vehicle::add_spawn_function(var_7b7d10ac.targetname, &function_7760068b);
		namespace_391e4301::enable_nodes(var_7b7d10ac.targetname + "_vh_end", "targetname", 0);
	}
	var_b60b5e6b = GetEnt("arena_defend_wasp_goal_volume", "targetname");
	foreach(var_5aaf616 in GetEntArray("arena_defend_wasp", "script_noteworthy"))
	{
		vehicle::add_spawn_function(var_5aaf616.targetname, &function_68e4ea91, var_b60b5e6b);
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
	self endon("death");
	if(!level flag::get("arena_defend_mobile_wall_doors_open"))
	{
		self SetGoal(GetEnt("sinkhole_friendly_fallback_volume", "targetname"), 1);
	}
	level flag::wait_till("arena_defend_mobile_wall_doors_open");
	self ClearForcedGoal();
	if(isdefined(self.target))
	{
		e_goal = GetEnt(self.target, "targetname");
		self SetGoal(e_goal);
	}
	else
	{
		self SetGoal(GetEnt("arena_defend_main_goal_volume", "targetname"));
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
function function_a275144c(str_flag)
{
	self endon("death");
	level flag::wait_till(str_flag);
	wait(RandomFloatRange(2, 8));
	self.goalRadius = 1024;
	self ClearGoalVolume();
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
	self endon("death");
	nd_dest = GetNode(self.target, "targetname");
	if(isdefined(nd_dest))
	{
		self ai::set_behavior_attribute("sprint", 1);
		self SetGoal(nd_dest, 1);
		self waittill("goal");
		self ClearForcedGoal();
		self ai::set_behavior_attribute("move_mode", var_6927be30);
		self ai::set_behavior_attribute("sprint", 0);
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
	self endon("death");
	level flag::wait_till("arena_defend_mobile_wall_doors_open");
	wait(RandomFloatRange(2, 3));
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
	self endon("death");
	self cybercom::function_59965309("cybercom_hijack");
	level thread function_9b890ccb();
	waittillframeend;
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.trophy_down = 1;
	self.trophy_disables = 999;
	self.weakpointobjective = 1;
	self quadtank::quadtank_weakpoint_display(0);
	wait(1);
	while(!level flag::get("mobile_wall_doors_closing"))
	{
		e_player = util::get_closest_player(self.origin, "allies");
		a_targets = Array::get_all_closest(e_player.origin, level.var_bbe9f011, undefined, 8);
		a_targets = Array::randomize(a_targets);
		for(i = 0; i < 8; i++)
		{
			self function_4e77cd1b(a_targets[i]);
		}
		wait(RandomFloatRange(6, 8));
	}
	level flag::wait_till("arena_defend_sinkhole_collapse_done");
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
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
function function_4e77cd1b(e_target)
{
	self endon("death");
	level endon("hash_9d1a0e6b");
	weapon = GetWeapon("quadtank_main_turret_rocketpods_javelin");
	v_offset = VectorScale((0, 0, 1), 300);
	var_4d75b06 = MagicBullet(weapon, self.origin + v_offset, e_target.origin, self, e_target);
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
function function_f1b4eb94(str_notify)
{
	self endon("death");
	level waittill(str_notify);
	self delete();
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
function function_90d92a9b(str_scene, str_notify)
{
	self endon("death");
	self.a_ents = spawner::simple_spawn("cinematic_technical_riders");
	self thread function_8efb2b2(self.a_ents);
	Array::thread_all(self.a_ents, &function_faf9e017, "stop_ignoring_me");
	if(!isdefined(self.a_ents))
	{
		self.a_ents = [];
	}
	else if(!IsArray(self.a_ents))
	{
		self.a_ents = Array(self.a_ents);
	}
	self.a_ents[self.a_ents.size] = self;
	if(self.targetname == "arena_defend_technical_01_vh")
	{
		self thread function_11d73ca7(1);
		self thread function_3a136a27(1);
		level notify("hash_e75ae3d1");
	}
	if(self.targetname == "arena_defend_technical_02_vh")
	{
		self thread function_11d73ca7(2);
		self thread function_3a136a27(2);
		level notify("hash_e75ae3d1");
	}
	self.a_ents = Array::remove_dead(self.a_ents);
	self thread scene::init(str_scene, self.a_ents);
	if(self.targetname == "arena_defend_intro_technical_vh")
	{
		level flag::wait_till(str_notify);
		wait(3);
	}
	else
	{
		self waittill(str_notify);
	}
	self.a_ents = Array::remove_dead(self.a_ents);
	self thread scene::Play(str_scene, self.a_ents);
	foreach(ent in self.a_ents)
	{
		if(isalive(ent))
		{
			ent notify("hash_7e2c5894");
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
function function_11d73ca7(Number)
{
	self endon("death");
	self playsound("evt_tech_driveup_" + Number);
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
function function_3a136a27(Number)
{
	self waittill("death");
	self stopSound("evt_tech_driveup_" + Number);
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
function function_8efb2b2(riders)
{
	self endon("hash_60ddc943");
	self waittill("death");
	foreach(rider in riders)
	{
		vehicle::kill_rider(rider);
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
function function_faf9e017(str_notify)
{
	self endon("death");
	self ai::set_ignoreme(1);
	self waittill(str_notify);
	self ai::set_ignoreme(0);
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
function function_76dae413(str_notify)
{
	self endon("death");
	self endon("hash_c3bff305");
	/#
		Assert(isdefined(self.target), "Dev Block strings are not supported" + self.origin + "Dev Block strings are not supported");
	#/
	level waittill(str_notify);
	self thread vehicle::get_on_and_go_path(self.target);
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
	self endon("death");
	self util::magic_bullet_shield();
	self waittill("reached_end_node");
	self util::stop_magic_bullet_shield();
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
	self endon("death");
	wait(0.1);
	self notify("hash_c3bff305");
	for(nd_target = GetVehicleNode(self.target, "targetname"); isdefined(nd_target.target);  = GetVehicleNode(self.target, "targetname"))
	{
	}
	self.origin = nd_target.origin;
	self.angles = nd_target.angles;
	self notify("reached_end_node", GetVehicleNode(nd_target.target, "targetname"));
	if(self flag::exists("warp_to_spline_end_done"))
	{
		self flag::set("warp_to_spline_end_done");
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
	self endon("death");
	self endon("hash_4eb74b10");
	if(!isdefined(level.var_d1931a26))
	{
		level.var_d1931a26 = [];
	}
	var_ce9b528b = function_39f34f22();
	var_8c01780a = var_ce9b528b > level.var_d1931a26.size && self function_e238fc60() && !self util::is_hero();
	if(var_8c01780a)
	{
		if(!isdefined(level.var_d1931a26))
		{
			level.var_d1931a26 = [];
		}
		else if(!IsArray(level.var_d1931a26))
		{
			level.var_d1931a26 = Array(level.var_d1931a26);
		}
		level.var_d1931a26[level.var_d1931a26.size] = self;
		self util::magic_bullet_shield(self);
		level waittill("hash_b4104c59");
		ArrayRemoveValue(level.var_d1931a26, self, 0);
		self util::stop_magic_bullet_shield(self);
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
	var_ce9b528b = 5 - level.players.size;
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
	return isdefined(level.var_d1931a26) && IsInArray(level.var_d1931a26, self);
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
	if(!self colors::has_color())
	{
		var_9b5d33d6 = 0;
	}
	else
	{
		var_88c66c67 = self.script_forceColor;
		var_9f50f457 = function_39f34f22();
		var_9b05e0cb = ceil(var_9f50f457 / 2);
		var_9b96ccff = var_9f50f457 - var_9b05e0cb;
		n_blue = 0;
		var_2cc8e8ec = 0;
		foreach(ai_guy in level.var_d1931a26)
		{
			if(isdefined(ai_guy))
			{
				if(ai_guy.script_forceColor == "b")
				{
					n_blue++;
					continue;
				}
				if(ai_guy.script_forceColor == "y")
				{
					var_2cc8e8ec++;
				}
			}
		}
		if(n_blue < var_9b05e0cb && var_88c66c67 == "b")
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
		ai_guy = Array::random(level.var_d1931a26);
		ArrayRemoveValue(level.var_d1931a26, ai_guy, 0);
		if(isalive(ai_guy))
		{
			ai_guy util::stop_magic_bullet_shield();
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
function function_94c406b0(str_flag)
{
	self endon("death");
	self thread function_275dd5bc(str_flag);
	while(!self flag::exists("spawned_gunner"))
	{
		wait(1);
	}
	self flag::wait_till("spawned_gunner");
	ai_rider = self vehicle::get_rider("gunner1");
	if(isalive(ai_rider))
	{
		ai_rider ai::set_ignoreme(1);
	}
	level flag::wait_till("arena_defend_mobile_wall_doors_open");
	if(isalive(ai_rider))
	{
		ai_rider ai::set_ignoreme(0);
		ai_rider waittill("death");
	}
	wait(8);
	level flag::set(str_flag);
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
function function_275dd5bc(str_flag)
{
	self waittill("death");
	level flag::set(str_flag);
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
function function_68e4ea91(e_goal_volume)
{
	self endon("death");
	if(isdefined(e_goal_volume))
	{
		self SetGoal(e_goal_volume);
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
	self endon("death");
	self thread function_53da0c94();
	self flag::init("spawned_gunner");
	self flag::init("gunner_position_occupied");
	ai_gunner = self function_1a304c27();
	ai_driver = self function_9f43307f();
	ai_gunner thread function_ac6832c4(self);
	self thread function_9590665a();
	self thread function_3a5cbbb7();
	self MakeVehicleUsable();
	self SetSeatOccupied(0, 1);
	if(self flag::exists("warp_to_spline_end_done"))
	{
		self flag::wait_till("warp_to_spline_end_done");
	}
	else
	{
		self waittill("reached_end_node");
	}
	v_end_pos = self.origin;
	var_7098cc1a = self.angles;
	level notify(self.targetname + "_reached_end_node");
	self vehicle::get_off_path();
	wait(0.05);
	if(isalive(ai_driver))
	{
		ai_driver vehicle::get_out();
	}
	self waittill("death");
	self.origin = v_end_pos;
	self.angles = var_7098cc1a;
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
	self.no_free_on_death = 1;
	level waittill("hash_9919d3c1");
	if(isdefined(self))
	{
		self LaunchVehicle(VectorScale((0, 0, 1), 100));
	}
	level clientfield::increment("clear_all_dyn_ents", 1);
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
	self endon("death");
	self turret::set_burst_parameters(1, 2, 0.25, 0.75, 1);
	while(1)
	{
		ai_gunner = self vehicle::get_rider("gunner1");
		if(isdefined(ai_gunner))
		{
			self turret::enable(1, 1);
			self flag::set("gunner_position_occupied");
			ai_gunner waittill("death");
		}
		self turret::disable(1);
		self flag::clear("gunner_position_occupied");
		if(var_72ffe0f4)
		{
			wait(RandomFloatRange(5, 8));
			if(self function_a13e19b7())
			{
				var_753bd441 = self function_ceda4e5b();
				if(isalive(var_753bd441))
				{
					/#
						var_753bd441 thread function_569cfe0c(self);
					#/
					var_753bd441 thread vehicle::get_in(self, "gunner1", 0);
					var_753bd441 util::waittill_any("death", "in_vehicle");
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
	a_ai = GetAITeamArray(self.team);
	var_7b8aab61 = [];
	foreach(ai_guy in a_ai)
	{
		if(!isdefined(ai_guy.vehicle) && ai_guy.archetype === "human")
		{
			if(!isdefined(var_7b8aab61))
			{
				var_7b8aab61 = [];
			}
			else if(!IsArray(var_7b8aab61))
			{
				var_7b8aab61 = Array(var_7b8aab61);
			}
			var_7b8aab61[var_7b8aab61.size] = ai_guy;
		}
	}
	ai_gunner = ArraySort(var_7b8aab61, self.origin, 1, a_ai.size, 800)[0];
	return ai_gunner;
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
	a_enemies = GetAITeamArray(get_enemy_team(self.team));
	var_eb61c3d3 = ArraySort(a_enemies, self.origin, 1, a_enemies.size, 300);
	var_eeec5f70 = var_eb61c3d3.size > 0;
	var_93b5fb30 = !var_eeec5f70;
	return var_93b5fb30;
}

/*
	Name: get_enemy_team
	Namespace: namespace_4124d
	Checksum: 0x1AF1997F
	Offset: 0x6FC8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function get_enemy_team(str_team)
{
	if(str_team == "axis")
	{
		var_d08b8571 = "allies";
	}
	else if(str_team == "allies")
	{
		var_d08b8571 = "axis";
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + str_team + "Dev Block strings are not supported");
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
function function_569cfe0c(vehicle)
{
	self endon("death");
	self endon("hash_a8daf8a9");
	vehicle endon("death");
	while(1)
	{
		/#
			line(self.origin, vehicle.origin, (1, 0, 0), 1, 0, 1);
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
	self endon("death");
	self waittill("hash_36c19b73");
	self kill();
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
	self waittill("death");
	if(isdefined(self))
	{
		self Unlink();
	}
	if(isdefined(var_35a302af))
	{
		if(!vehicle::is_corpse(var_35a302af))
		{
			var_35a302af turret::disable(1);
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
	self endon("death");
	var_35a302af util::waittill_either("death", "kill_passengers");
	self util::stop_magic_bullet_shield();
	self Unlink();
	self kill();
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
	ai_gunner = spawner::simple_spawn_single("arena_defend_technical_gunner_generic");
	ai_gunner vehicle::get_in(self, "gunner1", 1);
	self flag::set("spawned_gunner");
	return ai_gunner;
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
	ai_driver = spawner::simple_spawn_single("arena_defend_technical_driver_generic");
	ai_driver vehicle::get_in(self, "driver", 1);
	return ai_driver;
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
	var_83fa3476 = GetVehicleNode(self.target, "targetname");
	vehicle::get_on_and_go_path(var_83fa3476);
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
	self.team = "allies";
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
	trigger::use("arena_defend_colors_allies_behind_mobile_wall");
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
	trigger::use("arena_defend_color_allies_" + var_a9441d81);
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
	spawner::add_spawn_function_group("detonation_guy", "targetname", &function_eb0491d7);
	level scene::init("cin_ram_05_demostreet_vign_intro_detonation_guy");
	level.var_2fd26037.goalRadius = 32;
	var_76be17b8 = GetNode("hendricks_mobile_wall_start_node", "targetname");
	level.var_2fd26037 thread ai::force_goal(var_76be17b8, 32, 1, undefined, 1);
	level.var_9db406db.goalRadius = 32;
	var_f47e732e = GetNode("arena_defend_demostreet_intro_khalil", "targetname");
	level.var_9db406db thread ai::force_goal(var_f47e732e, 32, 1, undefined, 1);
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
	level scene::init("cin_gen_melee_hendricksmoment_closecombat_robot");
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
	var_dada6931 = GetNodeArray("arena_defend_wasp_vignette_nodes", "script_noteworthy");
	/#
		Assert(var_dada6931.size, "Dev Block strings are not supported");
	#/
	var_1146278c = var_dada6931.size;
	var_cb121782 = [];
	for(i = 0; i < var_dada6931.size; i++)
	{
		ai_guy = spawner::simple_spawn_single("arena_defend_wasp_vignette_friendly");
		if(!isdefined(var_cb121782))
		{
			var_cb121782 = [];
		}
		else if(!IsArray(var_cb121782))
		{
			var_cb121782 = Array(var_cb121782);
		}
		var_cb121782[var_cb121782.size] = ai_guy;
		ai_guy ai::set_ignoreme(1);
		wait(2.5);
	}
	while(var_cb121782.size != var_dada6931.size)
	{
		wait(1);
		a_friendlies = GetAISpeciesArray("allies", "human");
		a_friendlies = ArraySortClosest(a_friendlies, var_dada6931[0].origin, a_friendlies.size);
		var_cb121782 = [];
		foreach(ai_guy in a_friendlies)
		{
			var_1fc6c9ef = !ai_guy util::is_hero() && !ai_guy function_f11b462a() && !ai_guy isInScriptedState();
			if(var_1fc6c9ef)
			{
				if(!isdefined(var_cb121782))
				{
					var_cb121782 = [];
				}
				else if(!IsArray(var_cb121782))
				{
					var_cb121782 = Array(var_cb121782);
				}
				var_cb121782[var_cb121782.size] = ai_guy;
				ai_guy ai::set_ignoreme(1);
			}
			if(var_cb121782.size == var_1146278c)
			{
				break;
			}
		}
	}
	for(i = 0; i < var_cb121782.size; i++)
	{
		if(isalive(var_cb121782[i]))
		{
			var_cb121782[i].goalRadius = 64;
			var_cb121782[i] thread ai::force_goal(var_dada6931[i], 64, 0, "goal", 0, 1);
			self thread function_5b77431d(var_cb121782[i]);
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
	foreach(ai_guy in var_cb121782)
	{
		if(isalive(ai_guy))
		{
			ai_guy ai::set_ignoreme(0);
		}
	}
	for(j = 0; j < 2; j++)
	{
		var_86b029e3 = spawner::simple_spawn_single("arena_defend_vignette_wasp");
		var_86b029e3 thread function_2047b562(var_cb121782, j);
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
	trigger::wait_till("arena_defend_wasp_vignette_trigger");
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
function function_2047b562(a_targets, n_path)
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self SetNearGoalNotifyDist(300);
	var_1382d11e = GetVehicleNode("arena_defend_wasp_vignette_path" + n_path, "targetname");
	/#
		Assert(isdefined(var_1382d11e), "Dev Block strings are not supported" + n_path + "Dev Block strings are not supported");
	#/
	self vehicle_ai::function_81b6f1ac();
	self vehicle::get_on_and_go_path(var_1382d11e);
	self util::waittill_any_timeout(6, "reached_end_node");
	self vehicle_ai::function_efe9815e("combat");
	foreach(ai_guy in a_targets)
	{
		if(isdefined(ai_guy) && isalive(ai_guy))
		{
			self SetGoal(ai_guy);
			ai_guy util::stop_magic_bullet_shield();
			if(isdefined(ai_guy) && isalive(ai_guy))
			{
				ai_guy.health = 1;
				self thread ai::shoot_at_target("shoot_until_target_dead", ai_guy);
				ai_guy util::waittill_any("death", "pain");
				if(isalive(ai_guy))
				{
					ai_guy kill();
				}
				wait(2);
			}
		}
	}
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	var_1639b17a = GetEnt("arena_defend_wasp_goal_volume", "targetname");
	self SetGoal(var_1639b17a, 1);
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
function function_5b77431d(ai_guy)
{
	str_message = ai_guy util::waittill_any_timeout(15, "goal", "near_goal", "death");
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
function function_448954e7(str_type, str_faction, str_node_targetname, var_fa152ffe, var_8f89056b, var_ff46257e)
{
	if(!isdefined(var_8f89056b))
	{
		var_8f89056b = 0;
	}
	if(!isdefined(var_ff46257e))
	{
		var_ff46257e = 1;
	}
	nd_goal = GetNode(str_node_targetname, "targetname");
	do
	{
		a_ai = GetAISpeciesArray(str_faction, str_type);
		a_sorted = ArraySortClosest(a_ai, nd_goal.origin, a_ai.size, var_8f89056b, var_fa152ffe);
		foreach(ai in a_ai)
		{
			if(ai util::is_hero() || ai function_f11b462a())
			{
				ArrayRemoveValue(a_sorted, ai, 0);
			}
		}
		if(a_sorted.size > 0)
		{
			ai_guy = a_sorted[0];
		}
		else
		{
			wait(1);
		}
	}
	while(!!isdefined(ai_guy));
	ai_guy.goalRadius = 32;
	b_shoot = 0;
	str_endon = undefined;
	b_keep_colors = 0;
	b_should_sprint = 1;
	if(!var_ff46257e)
	{
		ai_guy.var_69dd5d62 = 0;
	}
	ai_guy thread ai::force_goal(nd_goal, 32, b_shoot, str_endon, b_keep_colors, b_should_sprint);
	ai_guy util::waittill_any_timeout(15, "goal", "death");
	return ai_guy;
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
	var_35a302af = vehicle::simple_spawn_single("arena_defend_intro_technical");
	var_35a302af flag::init("warp_to_spline_end_done");
	while(!var_35a302af turret::is_turret_enabled(1))
	{
		wait(0.25);
	}
	var_35a302af turret::disable(1);
	level waittill("hash_e83cd268");
	level scene::Play("cin_ram_05_02_block_vign_mowed");
	var_35a302af turret::enable(1, 1);
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
function function_18767202(a_ents)
{
	var_35a302af = GetEnt("arena_defend_intro_technical_vh", "targetname");
	e_turret_target = GetEnt("so_arena_defend_intro_turret_target", "targetname");
	foreach(ent in a_ents)
	{
		if(isai(ent) && isalive(ent))
		{
			ent util::stop_magic_bullet_shield();
		}
	}
	if(isdefined(var_35a302af) && isdefined(e_turret_target))
	{
		var_35a302af thread turret::shoot_at_target(e_turret_target, 10, (0, 0, 0), 1, 0);
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
	self endon("death");
	self thread function_cb9acce5();
	self ai::set_ignoreme(1);
	var_9cead347 = GetNode("node_spike_launch_start", "targetname");
	self ai::force_goal(var_9cead347, 8, 1, "goal");
	self.goalRadius = 8;
	wait(5);
	self ai::set_ignoreme(0);
	wait(5);
	self.goalRadius = 512;
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
	self waittill("death");
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
	level.var_bbe9f011 = GetEntArray("arena_defend_tank_target_e3", "targetname");
	var_140621eb = [];
	foreach(target in level.var_bbe9f011)
	{
		var_3929e8a2 = spawn("script_model", target.origin);
		var_3929e8a2.angles = target.angles;
		var_3929e8a2.script_objective = "sinkhole_collapse";
		var_3929e8a2 SetModel("tag_origin");
		util::wait_network_frame();
		if(!isdefined(var_140621eb))
		{
			var_140621eb = [];
		}
		else if(!IsArray(var_140621eb))
		{
			var_140621eb = Array(var_140621eb);
		}
		var_140621eb[var_140621eb.size] = var_3929e8a2;
	}
	while(1)
	{
		level waittill("player_spawned");
		level.var_bbe9f011 = ArrayCombine(level.activePlayers, level.var_bbe9f011, 0, 0);
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
	level flag::wait_till("all_players_connected");
	spawn_manager::enable("sm_arena_defend_initial_enemies");
	spawn_manager::enable("sm_arena_defend_initial_rear");
	spawner::simple_spawn("arena_defend_initial_right_building");
	util::wait_network_frame();
	spawn_manager::enable("arena_defend_wall_allies");
	spawn_manager::enable("arena_defend_wall_allies2");
	spawn_manager::enable("arena_defend_bldg_allies");
	spawn_manager::enable("arena_defend_cafe_defenders");
	level thread util::delay(7, undefined, &function_345b912d);
	level thread util::delay(7, undefined, &flag::set, "arena_defend_initial_spawns_done");
	spawn_manager::function_347e835a("sm_arena_defend_initial_enemies");
	level flag::set("arena_defend_initial_spawns_done");
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
	var_dfcbd82b = GetNode("hendricks_mobile_wall_top_node", "targetname");
	level.var_2fd26037.goalRadius = 64;
	level.var_2fd26037 colors::disable();
	namespace_391e4301::enable_nodes("arena_defend_mobile_wall_top_nodes", "script_noteworthy", 1);
	level.var_2fd26037 SetGoal(var_dfcbd82b, 1);
	level.var_2fd26037 util::waittill_notify_or_timeout("goal", 15);
	level flag::wait_till("arena_defend_intro_technical_disabled");
	spawn_manager::enable("sm_wp_01_defenders");
	wait(4);
	function_c693a390();
	wait(2);
	level thread function_f74d43a6("wp_01");
	trigger::use("arena_defend_tech_1_trig", "targetname", undefined, 0);
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
	spawn_manager::kill("sm_wp_01_defenders");
	spawn_manager::enable("sm_wp_02_defenders");
	util::wait_network_frame();
	spawn_manager::enable("arena_defend_push_wasps");
	util::wait_network_frame();
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "esl4_hostile_grunts_movin_0";
	var_2d3d7b7[1] = "esl3_enemy_grunts_breakin_0";
	var_2d3d7b7[2] = "esl4_hostile_grunts_at_so_0";
	ai_guy = function_6f24118d();
	ai_guy thread dialog::say(function_7ff50323(var_2d3d7b7));
	if(!level flag::get("billboard1_crashed"))
	{
		spawn_manager::enable("sm_arena_defend_snipers_center_building");
		if(level.players.size > 1)
		{
			var_2d3d7b7 = [];
			var_2d3d7b7[0] = "esl1_sniper_on_the_roof_0";
			var_2d3d7b7[1] = "egy2_i_have_an_enemy_snip_0";
			ai_guy = function_6f24118d();
			ai_guy thread dialog::say(function_7ff50323(var_2d3d7b7), 2);
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
	trigger::wait_or_timeout(15, "wp_03_goal_trig", "targetname");
	spawn_manager::enable("sm_wp_03_defenders_jumpers");
	spawn_manager::enable("arena_defend_robot_fill");
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
	self endon("death");
	self.ignoreall = 1;
	var_d403d38a = randomIntRange(1, 5);
	var_a688f237 = "scene_wall_left_jumpover_up_0" + var_d403d38a;
	var_432b4304 = "scene_wall_left_jumpover_down_0" + var_d403d38a;
	level scene::skipto_end(var_a688f237, "targetname", self, 0.5);
	level scene::Play(var_432b4304, self);
	self.ignoreall = 0;
	self ai::set_behavior_attribute("move_mode", "rusher");
	if(isdefined(self.target))
	{
		e_goal = GetEnt(self.target, "targetname");
		self SetGoal(e_goal, 1);
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
	spawn_manager::enable("sm_arena_defend_fill_middle");
	spawn_manager::enable("sm_arena_defend_fill_middle_wasps");
	level util::delay(15, undefined, &flag::set, "arena_defend_second_wave_weak_points_discovered");
	spawner::waittill_ai_group_amount_killed("arena_defend_fill_middle", 3);
	level flag::set("arena_defend_second_wave_weak_points_discovered");
	spawn_manager::enable("sm_wp_03_defenders");
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
	level util::delay(20, undefined, &flag::set, "arena_defend_third_wave_weak_points_discovered");
	spawner::waittill_ai_group_amount_killed("arena_defend_checkpoint_breach_enemies", 30);
	level flag::set("arena_defend_third_wave_weak_points_discovered");
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
	level flag::wait_till_all(Array("wp_01_destroyed", "wp_02_destroyed", "wp_03_destroyed", "wp_05_destroyed"));
	level thread dialog::remote("kane_one_more_0", 1);
	wait(3);
	playsoundatposition("veh_quadtank_alarm_cinematic", (4847, -25831, 566));
	level flag::set("arena_defend_last_wave_weak_points_discovered");
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
	spawn_manager::enable("sm_arena_defend_center_fill_right");
	level util::waittill_notify_or_timeout("checkpoint_wall_breach_complete", 20);
	spawn_manager::kill("sm_wp_03_defenders_jumpers");
	spawn_manager::kill("sm_arena_defend_fill_middle");
	spawn_manager::kill("sm_arena_defend_fill_middle_wasps");
	trigger::use("arena_defend_tech_2_trig", "targetname");
	wait(5);
	spawn_manager::enable("arena_defend_far_left_enemies");
	spawn_manager::enable("sm_arena_defend_center_fill_left");
	spawn_manager::enable("sm_wp_05_defenders");
	wait(5);
	function_f74d43a6("wp_05");
	level util::waittill_notify_or_timeout("arena_defend_technical_02_vh_reached_end_node", 10);
	wait(5);
	if(!level flag::get("billboard1_crashed"))
	{
		spawn_manager::enable("arena_defend_snipers_02");
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "esl1_sniper_on_the_roof_0";
		var_2d3d7b7[1] = "egy2_i_have_an_enemy_snip_0";
		ai_guy = function_6f24118d();
		ai_guy thread dialog::say(function_7ff50323(var_2d3d7b7), 2);
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
	spawn_manager::function_41cd3a68(25);
	level thread function_2c83fc3f();
	spawn_manager::enable("arena_defend_push_enemies");
	util::wait_network_frame();
	spawn_manager::enable("arena_defend_push_wasps");
	util::wait_network_frame();
	if(!level flag::get("billboard1_crashed"))
	{
		spawn_manager::enable("arena_defend_snipers_03");
		util::wait_network_frame();
	}
	spawn_manager::enable("arena_defend_heavy_units");
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
	v_start = struct::get(var_2c34daa1 + "_start").origin;
	v_end = struct::get(var_2c34daa1 + "_end").origin;
	var_4720665e = 0;
	while(1)
	{
		var_4720665e++;
		var_27aba1a0 = 2;
		function_9b385ca5();
		var_a3decff = RobotPhalanx;
		Initialize(var_a3decff, "phalanx_column", v_start, v_end, var_27aba1a0);
		do
		{
			wait(0.25);
		}
		while(!(isdefined(var_a3decff) && var_a3decff.scattered_ == 0));
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
function function_2fcc9369(str_script_noteworthy)
{
	a_spawn_managers = GetEntArray(str_script_noteworthy, "script_noteworthy");
	foreach(var_df3a43de in a_spawn_managers)
	{
		if(isdefined(var_df3a43de.name))
		{
			str_name = var_df3a43de.name;
		}
		else
		{
			str_name = var_df3a43de.targetname;
		}
		spawn_manager::kill(str_name);
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
	level flag::wait_till("weak_points_objective_active");
	var_f6a86bdd = function_785a0ed();
	foreach(wave in var_f6a86bdd)
	{
		foreach(var_20488710 in wave)
		{
			if(isdefined(var_20488710.var_2f201aa5))
			{
				level flag::wait_till_all(var_20488710.var_2f201aa5);
			}
			level flag::set(var_20488710.var_672c6068 + "_identified");
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
	streamerRequest("set", "cp_mi_cairo_ramses2_sinkhole_collapse");
	function_3e55e3();
	level thread namespace_a6a248fc::function_7b69c801();
	level flag::set("all_weak_points_destroyed");
	if(isdefined(level.BZM_RAMSESDialogue5_1Callback))
	{
		level thread [[level.BZM_RAMSESDialogue5_1Callback]]();
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
	a_fxanims = Array("wp_01", "wp_02", "wp_03", "wp_04", "wp_05");
	foreach(str_scene_name in a_fxanims)
	{
		level scene::init(str_scene_name);
		util::wait_network_frame();
	}
	function_6ddd4fa4("sinkhole_misc_model");
	var_f6bd6af3 = GetEntArray("ad_weak_point_trig", "targetname");
	Array::thread_all(var_f6bd6af3, &function_182b2e13);
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
	var_35a302af = vehicle::simple_spawn_single("arena_defend_intro_technical");
	var_35a302af flag::init("warp_to_spline_end_done");
	while(!var_35a302af turret::is_turret_enabled(1))
	{
		wait(0.25);
	}
	var_35a302af turret::disable(1);
	level waittill("hash_e83cd268");
	level scene::Play("cin_ram_05_02_block_vign_mowed");
	var_35a302af turret::enable(1, 1);
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
	level flag::wait_till("arena_defend_spawn");
	level thread function_f4554829();
	spawn_manager::enable("arena_defend_wall_allies");
	spawn_manager::enable("arena_defend_wall_top_allies");
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
	level scene::Play("cin_ram_05_01_block_vign_rip_khalilorder");
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
	level flag::wait_till("arena_defend_intro_technical_disabled");
	spawn_manager::function_27bf2e8("sm_arena_defend_initial_enemies", 4);
	a_enemies = spawn_manager::get_ai("sm_arena_defend_initial_enemies");
	var_61fd03c7 = GetEnt("initial_enemies_fallback_goal", "targetname");
	Array::run_all(a_enemies, &SetGoal, var_61fd03c7);
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
	var_75aa23da = Array(&function_da99ce30, &function_1d79812);
	var_a433ed0f = Array(&function_8790f24e, &function_2fa2a80f, &function_8bcd7f99, &function_5c0d1d04, &function_44a7ad7b);
	var_6596c11c = Array(&function_7cc654ff, &function_102382b1, &function_ad936cb7);
	var_38d11fac = Array(&function_5f3c9cc9, &function_8394a26f, &function_34c51c66, &function_ce07d8df);
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
		Assert(isdefined(level.var_9cdb6bca), "Dev Block strings are not supported");
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
function function_d9d5f32(n_wave, var_672c6068, var_2f201aa5, var_13c6e56, var_26323261)
{
	if(!isdefined(level.var_9cdb6bca))
	{
		level.var_9cdb6bca = [];
	}
	if(!isdefined(level.var_9cdb6bca[n_wave]))
	{
		level.var_9cdb6bca[n_wave] = [];
	}
	if(!isdefined(var_2f201aa5))
	{
		var_2f201aa5 = [];
	}
	else if(!IsArray(var_2f201aa5))
	{
		var_2f201aa5 = Array(var_2f201aa5);
	}
	if(!isdefined(var_13c6e56))
	{
		var_13c6e56 = [];
	}
	else if(!IsArray(var_13c6e56))
	{
		var_13c6e56 = Array(var_13c6e56);
	}
	if(!isdefined(var_26323261))
	{
		var_26323261 = [];
	}
	else if(!IsArray(var_26323261))
	{
		var_26323261 = Array(var_26323261);
	}
	if(isdefined(var_2f201aa5))
	{
		foreach(str_flag in var_2f201aa5)
		{
			/#
				Assert(level flag::exists(str_flag), "Dev Block strings are not supported" + str_flag + "Dev Block strings are not supported");
			#/
		}
	}
	s_temp = spawnstruct();
	s_temp.var_672c6068 = var_672c6068;
	s_temp.var_2f201aa5 = var_2f201aa5;
	s_temp.var_13c6e56 = var_13c6e56;
	s_temp.var_26323261 = var_26323261;
	if(!isdefined(level.var_9cdb6bca[n_wave]))
	{
		level.var_9cdb6bca[n_wave] = [];
	}
	else if(!IsArray(level.var_9cdb6bca[n_wave]))
	{
		level.var_9cdb6bca[n_wave] = Array(level.var_9cdb6bca[n_wave]);
	}
	level.var_9cdb6bca[n_wave][level.var_9cdb6bca[n_wave].size] = s_temp;
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
	a_flags = [];
	foreach(wave in var_31564035)
	{
		foreach(var_20488710 in wave)
		{
			if(!isdefined(a_flags))
			{
				a_flags = [];
			}
			else if(!IsArray(a_flags))
			{
				a_flags = Array(a_flags);
			}
			a_flags[a_flags.size] = var_20488710.var_672c6068 + "_destroyed";
		}
	}
	level flag::wait_till_all(a_flags);
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
	level flag::init(self.script_string);
	level flag::init(self.script_string + "_identified");
	level flag::init(self.script_string + "_destroyed");
	var_3f69c18b = GetEnt(self.target, "targetname");
	/#
		Assert(isdefined(var_3f69c18b), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(var_3f69c18b.target), "Dev Block strings are not supported");
	#/
	var_6ee53e36 = struct::get(var_3f69c18b.target, "targetname");
	/#
		Assert(isdefined(var_6ee53e36), "Dev Block strings are not supported" + self.origin + "Dev Block strings are not supported");
	#/
	namespace_391e4301::enable_nodes(self.script_string + "_covernode", "script_noteworthy", 1);
	namespace_391e4301::link_traversals(self.script_string + "_traversal", "script_noteworthy", 1);
	level waittill(self.script_string + "_identified");
	var_ca86eb01 = GetEnt(var_6ee53e36.target, "targetname");
	/#
		Assert(isdefined(var_ca86eb01), "Dev Block strings are not supported");
	#/
	var_ca86eb01 show();
	var_f0bbbaa4 = util::function_14518e76(var_ca86eb01, &"cp_level_ramses_spike_plant", &"CP_MI_CAIRO_RAMSES_PLANT_SPIKE", &function_f2c2b59c);
	var_f0bbbaa4.keepWeapon = 1;
	var_f0bbbaa4.script_string = self.script_string;
	var_f0bbbaa4.t_damage = self;
	var_f0bbbaa4 function_33ce9734();
	var_5a150410 = util::spawn_model(var_6ee53e36.model, var_6ee53e36.origin, var_6ee53e36.angles);
	var_5a150410 clientfield::set("arena_defend_weak_point_keyline", 1);
	var_5a150410 SetForceNoCull();
	level.players[0] playlocalsound("uin_hud_weakpoints");
	self function_c2406993();
	objectives::complete("cp_level_ramses_spike_detonate");
	var_5a150410 clientfield::set("arena_defend_weak_point_keyline", 0);
	util::wait_network_frame();
	spawn_manager::kill("sm_" + self.script_string + "_defenders");
	level flag::set(self.script_string);
	var_3f69c18b ghost();
	level flag::set(self.script_string + "_destroyed");
	level thread scene::Play(self.script_string, "targetname");
	var_9bb18713 = GetEntArray("collision_" + self.script_string, "targetname");
	foreach(var_44febfef in var_9bb18713)
	{
		if(var_44febfef.targetname != "collision_wp_05")
		{
			var_44febfef delete();
		}
	}
	if(level flag::get("wp_02_destroyed") && !level flag::get("wp_03_destroyed") || (!level flag::get("wp_02_destroyed") && level flag::get("wp_03_destroyed")) || (level flag::get("wp_02_destroyed") && level flag::get("wp_03_destroyed") && !level flag::get("wp_05_destroyed") && level flag::get("wp_05_identified")))
	{
		var_5a150410 clientfield::set("arena_defend_weak_point_keyline", 1);
		util::wait_network_frame();
	}
	var_5a150410 delete();
	namespace_391e4301::enable_nodes(self.script_string + "_traversal_jump", "script_noteworthy", 1);
	namespace_391e4301::link_traversals(self.script_string + "_traversal", "script_noteworthy", 0);
	spawn_manager::kill("sm_" + self.script_string + "_defenders", 1);
	switch(self.script_string)
	{
		case "wp_01":
		{
			var_70d87be7 = GetEnt("trig_wp_01_kill_stuck_players", "targetname");
			if(isdefined(var_70d87be7))
			{
				var_70d87be7 TriggerEnable(1);
			}
			break;
		}
		case "wp_02":
		{
			trigger::use("wp_03_goal_trig");
			namespace_391e4301::enable_nodes(self.script_string + "_covernode", "script_noteworthy", 0);
			break;
		}
		case "wp_04":
		{
			var_a9060824 = GetEnt("trig_wp_04_damage", "targetname");
			var_a9060824 TriggerEnable(1);
			spawn_manager::enable("sm_wp_04_robot_rushers");
			namespace_391e4301::enable_nodes("wp_04_raps_walk", "targetname", 0);
			break;
		}
		case default:
		{
			break;
		}
	}
	objective_clearentity(var_f0bbbaa4.objectiveId);
	var_f0bbbaa4 gameobjects::destroy_object(1);
	self delete();
	savegame::function_5d2cdd99();
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
function function_f2c2b59c(e_player)
{
	if(e_player function_518bce38())
	{
		self gameobjects::disable_object(1);
		e_player function_a7905bd8(self);
		self thread function_64f3ca1d(e_player);
	}
	else
	{
		e_player notify("hash_41772abf");
		e_player thread util::show_hint_text(&"CP_MI_CAIRO_RAMSES_SPIKE_AMMO_MISSING", 1, "spike_ammo_missing", 3);
	}
	if(self.script_string === "wp_01")
	{
		foreach(player in level.activePlayers)
		{
			player notify("hash_bcf51970");
		}
		e_player thread namespace_391e4301::function_508a129e(self.script_string + "_destroyed", 9999, 0);
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
function function_64f3ca1d(e_player)
{
	self endon("death");
	self.trigger endon("death");
	self.t_damage endon("death");
	e_player waittill("death");
	self gameobjects::allow_use("any");
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
	var_1b7b3a6 = GetWeapon("spike_launcher");
	n_ammo_clip = self GetWeaponAmmoClip(var_1b7b3a6);
	b_has_ammo = n_ammo_clip > 0;
	return b_has_ammo;
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
	self endon("death");
	if(!isdefined(self.var_c4ae3e9a))
	{
		self.var_c4ae3e9a = 0;
	}
	if(!self.var_c4ae3e9a)
	{
		self.var_c4ae3e9a = 1;
		self DisableWeaponCycling();
		self EnableInvulnerability();
		self function_e54da87c(var_dcf4cbb0);
		if(!self namespace_391e4301::function_8806ea73("spike_launcher"))
		{
			self AllowProne(0);
			util::wait_network_frame();
			self SwitchToWeapon(GetWeapon("spike_launcher"));
			self util::waittill_notify_or_timeout("weapon_change", 1);
		}
		self thread function_aa6f0c42();
		self thread scene::Play("cin_ram_05_02_spike_launcher_plant", self);
		self AllowProne(1);
		self DisableInvulnerability();
		self EnableWeaponCycling();
		self util::waittill_notify_or_timeout("fire_spike", 5);
		level notify("hash_18cf70dc");
		objectives::complete("cp_level_ramses_spike_plant");
		objectives::set("cp_level_ramses_spike_detonate");
		self thread function_9d5fff53();
		self thread function_8750c3af(var_dcf4cbb0.t_damage);
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
		if(self istouching(var_13171cfc))
		{
			self SetOrigin(var_9be8e3be.origin);
			util::wait_network_frame();
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
	str_identifier = self.script_string;
	self.var_8176968e = GetEnt(str_identifier + "_bad_place_trigger", "targetname");
	if(isdefined(self.var_8176968e))
	{
		self.var_609f75ed = struct::get(self.var_8176968e.target, "targetname");
		/#
			Assert(isdefined(self.var_609f75ed), "Dev Block strings are not supported" + str_identifier + "Dev Block strings are not supported");
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
function function_889f79d5(a_ents)
{
	a_ents["player 1"].var_c4ae3e9a = undefined;
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
	self endon("death");
	waittillframeend;
	var_45f33ff4 = GetWeapon("spike_launcher_plant");
	v_spawn = self GetTagOrigin("tag_flash");
	self clientfield::increment_to_player("player_spike_plant_postfx");
	if(isdefined(v_spawn))
	{
		var_3b2bce1d = MagicBullet(var_45f33ff4, v_spawn + VectorScale((0, 0, 1), 40), v_spawn, self);
	}
	else
	{
		var_3b2bce1d = MagicBullet(var_45f33ff4, self.origin + VectorScale((0, 0, 1), 40), self.origin, self);
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
	var_3b2bce1d endon("death");
	var_eea11f9d = util::spawn_model(var_3b2bce1d.model, var_3b2bce1d.origin, var_3b2bce1d.angles);
	var_eea11f9d clientfield::set("arena_defend_weak_point_keyline", 1);
	var_eea11f9d thread function_9673263e(var_3b2bce1d);
	var_3b2bce1d ghost();
	self thread function_edfdd3b1(var_3b2bce1d);
	self util::waittill_any("detonate", "last_stand_detonate");
	var_eea11f9d clientfield::set("arena_defend_weak_point_keyline", 0);
	var_3b2bce1d detonate();
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
function function_8750c3af(trigger)
{
	self endon("death");
	trigger endon("death");
	self waittill("grenade_fire", var_3b2bce1d);
	self thread function_d7c41d5e(var_3b2bce1d);
	var_8d3a3d3c = var_3b2bce1d.origin;
	var_3b2bce1d waittill("death");
	trigger notify("hash_453ba490");
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
	self endon("detonate");
	self endon("hash_f4dfb01b");
	self endon("death");
	var_3b2bce1d endon("death");
	wait(5);
	self flag::clear("spike_launcher_tutorial_complete");
	w_current = self GetCurrentWeapon();
	var_1b7b3a6 = GetWeapon("spike_launcher");
	while(!self flag::get("spike_launcher_tutorial_complete"))
	{
		if(w_current == var_1b7b3a6)
		{
			self thread namespace_391e4301::function_c2712461();
			self thread namespace_391e4301::function_780e57a1();
			self util::waittill_any("detonate", "last_stand_detonate");
		}
		else
		{
			self waittill("weapon_change_complete", w_current);
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
function function_1caab1d2(arg1)
{
	a_grenades = GetEntArray("grenade", "classname");
	if(IsVec(arg1))
	{
		foreach(e_grenade in a_grenades)
		{
			if(isdefined(e_grenade) && Distance2DSquared(arg1, e_grenade.origin) <= 40000)
			{
				e_grenade detonate();
			}
			if(i % 2 == 0)
			{
				util::wait_network_frame();
			}
		}
		break;
	}
	if(IsEntity(arg1))
	{
		foreach(e_grenade in a_grenades)
		{
			if(isdefined(e_grenade) && e_grenade istouching(arg1))
			{
				e_grenade detonate();
			}
			if(i % 2 == 0)
			{
				util::wait_network_frame();
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
	self endon("death");
	var_3b2bce1d waittill("death");
	self clientfield::set("arena_defend_weak_point_keyline", 0);
	util::wait_network_frame();
	self delete();
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
	var_1b7b3a6 = GetWeapon("spike_launcher");
	n_ammo_clip = self GetWeaponAmmoClip(var_1b7b3a6);
	n_ammo_clip = math::clamp(n_ammo_clip - 1, 0, n_ammo_clip);
	self SetWeaponAmmoClip(var_1b7b3a6, n_ammo_clip);
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
	self endon("death");
	if(level.players.size == 1)
	{
		self.attackerAccuracy = 0.1;
		while(isdefined(self.var_c4ae3e9a) && self.var_c4ae3e9a)
		{
			wait(0.1);
		}
		wait(3);
		self.attackerAccuracy = 1;
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
	namespace_391e4301::enable_nodes("arena_defend_mobile_wall_top_nodes", "script_noteworthy", 0);
	var_65ef1e5b = GetEnt("sinkhole_friendly_fallback_volume", "targetname");
	foreach(ai_friendly in function_846256f4("allies"))
	{
		ai_friendly thread function_b16456e1(var_65ef1e5b);
		wait(0.05);
	}
	level.var_2fd26037.goalRadius = 32;
	var_76be17b8 = GetNode("hendricks_mobile_wall_start_node", "targetname");
	level.var_2fd26037 thread ai::force_goal(var_76be17b8, 32, 1, undefined, 1);
	level.var_9db406db.goalRadius = 32;
	var_f47e732e = GetNode("arena_defend_demostreet_intro_khalil", "targetname");
	level.var_9db406db thread ai::force_goal(var_f47e732e, 32, 1, undefined, 1);
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
	self endon("death");
	self SetGoal(var_284ca6ef, 1);
	if(!self util::is_hero())
	{
		self ai::set_behavior_attribute("sprint", 1);
		self waittill("goal");
		self ai::set_behavior_attribute("coverIdleOnly", 1);
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
		level.var_2fd26037.goalRadius = level.var_2fd26037.var_e6e961e4;
	}
	a_ai_allies = GetAISpeciesArray("allies", "human");
	foreach(ai in a_ai_allies)
	{
		ai colors::disable();
		ai ClearGoalVolume();
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
	if(isdefined(level.BZM_RAMSESDialogue6Callback))
	{
		level thread [[level.BZM_RAMSESDialogue6Callback]]();
	}
	level thread scene::Play("cin_ram_05_demostreet_vign_intro_detonation_guy");
	level thread scene::Play("cin_ram_05_demostreet_vign_intro_khalil_only");
	level thread scene::Play("cin_ram_05_demostreet_vign_intro_hendricks_only");
	level flag::wait_till_timeout(5, "arena_defend_detonator_dropped");
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
	trigger::wait_till("arena_defend_player_fallback_trigger");
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 1);
	level.var_9db406db ai::set_behavior_attribute("sprint", 1);
	level thread scene::init("cin_ram_05_demostreet_vign_intro_khalil_only");
	util::wait_network_frame();
	level thread scene::init("cin_ram_05_demostreet_vign_intro_hendricks_only");
	Array::wait_till(Array(level.var_2fd26037, level.var_9db406db), "vign_intro_runback_done", 15);
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
	trigger::wait_till("arena_defend_wall_gather_trig");
	callback::on_spawned(&function_f554e28a);
	function_cce749ad();
	Array::thread_all(GetAITeamArray("axis", "allies"), &function_4c119f69);
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
	if(level.skipto_point == "sinkhole_collapse")
	{
		var_9be8e3be = struct::get("s_mobile_wall_closed_hot_join_" + self GetEntityNumber(), "targetname");
		self SetOrigin(var_9be8e3be.origin);
		self SetPlayerAngles(var_9be8e3be.angles);
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
	var_d156a4cd = GetEnt("arena_defend_wall_gather_trig", "targetname");
	while(1)
	{
		var_859ac0d1 = 0;
		foreach(player in level.activePlayers)
		{
			if(player istouching(var_d156a4cd))
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
	if(isalive(self) && IsActor(self))
	{
		self ClearEnemy();
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
	level flag::wait_till("arena_defend_detonator_pickup");
	if(level scene::is_active("cin_ram_05_demostreet_vign_intro_hendricks_only"))
	{
		level scene::stop("cin_ram_05_demostreet_vign_intro_hendricks_only");
	}
	if(level scene::is_active("cin_ram_05_demostreet_vign_intro_khalil_only"))
	{
		level scene::stop("cin_ram_05_demostreet_vign_intro_khalil_only");
	}
	foreach(player in level.players)
	{
		player.ignoreme = 1;
		player EnableInvulnerability();
		player notify("hash_5a334c0f");
	}
	function_2fcc9369("arena_defend_spawn_manager");
	function_2fcc9369("arena_defend_spawn_manager_friendly");
	battlechatter::function_d9f49fba(0);
	foreach(player in level.players)
	{
		if(isdefined(player.var_d5846b2c) && player.var_d5846b2c)
		{
			player.var_1695a536 = 1;
		}
		else
		{
			player.var_1695a536 = 0;
		}
		player namespace_16f9ecd3::function_12a9df06(0);
	}
	callback::remove_on_spawned(&function_f554e28a);
	scene::add_player_linked_scene("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle");
	namespace_391e4301::function_ac2b4535("cin_ram_05_demostreet_3rd_sh140", "alley");
	level scene::Play("cin_ram_05_demostreet_3rd_sh010", level.var_8e659b82);
	function_53314bf6();
	level flag::wait_till("arena_defend_sinkhole_collapse_done");
	foreach(player in level.players)
	{
		player.ignoreme = 0;
		player DisableInvulnerability();
		player enableWeapons();
		if(isdefined(player.var_1695a536) && player.var_1695a536)
		{
			player namespace_16f9ecd3::function_fc1750c9(1);
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
	a_friendly = function_846256f4("allies");
	foreach(ai in a_friendly)
	{
		if(!IsInArray(level.heroes, ai) && (!IsActor(ai) || !ai isInScriptedState()))
		{
			ai delete();
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
	a_vehicles = GetEntArray("arena_defend_technical", "script_noteworthy");
	var_16780955 = 0;
	foreach(vehicle in a_vehicles)
	{
		if(isalive(vehicle))
		{
			vehicle DoDamage(vehicle.health, vehicle.origin);
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
	level flag::set("sinkhole_explosion_started");
}

/*
	Name: outro
	Namespace: namespace_4124d
	Checksum: 0x23759800
	Offset: 0xC9D8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function outro(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_b6da2f7c();
		level flag::set("sinkhole_charges_detonated");
		trigger::use("arena_defend_colors_allies_behind_mobile_wall");
		spawn_manager::enable("arena_defend_wall_allies");
		spawn_manager::enable("arena_defend_wall_allies2");
		spawn_manager::enable("arena_defend_wall_top_allies");
		spawn_manager::enable("arena_defend_push_enemies");
		spawn_manager::enable("arena_defend_heavy_units");
		level flag::wait_till("all_players_spawned");
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
	namespace_391e4301::delete_ent_array("arena_defend_out_of_bounds_trigger", "targetname");
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
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_small_hole_02_bundle", &function_a9ffcec, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_small_hole_02_bundle", &function_e802b666, "done");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_small_hole_01_bundle", &function_69dcb622, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_small_hole_03_bundle", &function_5db3ae57, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_small_hole_04_bundle", &function_1b706878, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_small_hole_04_bundle", &function_3b5bd8c4, "init");
	scene::add_scene_func("p7_fxanim_cp_ramses_wall_drop_bundle", &function_63407bd6, "init");
	scene::add_scene_func("p7_fxanim_cp_ramses_wall_drop_bundle", &function_35c6856, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_wall_drop_bundle", &function_74684a40, "done");
	scene::add_scene_func("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle", &function_cc9e6c1d, "init");
	scene::add_scene_func("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle", &function_7b7e8565, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle", &function_3730aac7, "done");
	scene::add_scene_func("p7_fxanim_cp_ramses_checkpoint_wall_02_bundle", &function_1ab1b112, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_wall_drop_doors_up_bundle", &function_c6f8879f, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_wall_drop_doors_down_bundle", &function_d1580f2c, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle", &function_be12945c, "init");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle", &function_9cc779c7, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle", &function_397df6bc, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle", &function_c15cf2c8, "done");
	scene::add_scene_func("p7_fxanim_cp_ramses_arena_billboard_bundle", &function_f2cede6c, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_arena_billboard_02_bundle", &function_1a46d844, "play");
	scene::add_scene_func("cin_ram_05_01_block_1st_rip", &function_3838410f, "done");
	scene::add_scene_func("cin_ram_05_01_block_1st_rip", &function_25e4bdcc, "done");
	scene::add_scene_func("cin_ram_05_01_block_1st_rip_skipto", &function_25e4bdcc, "done");
	scene::add_scene_func("cin_ram_05_02_block_vign_mowed", &function_18767202, "play");
	scene::add_scene_func("cin_ram_05_01_defend_vign_leapattack", &function_a7405e61, "init");
	scene::add_scene_func("cin_ram_05_01_defend_vign_leapattack", &function_f295baeb, "done");
	scene::add_scene_func("cin_ram_05_01_defend_vign_rescueinjured_l_group", &function_33280827, "play");
	scene::add_scene_func("cin_ram_05_01_defend_vign_rescueinjured_r_group", &function_33280827, "play");
	scene::add_scene_func("cin_ram_05_01_defend_vign_rescueinjured_r_group", &function_7c00379f, "done");
	scene::add_scene_func("cin_ram_05_01_defend_vign_rescueinjured_c_group", &function_33280827, "play");
	scene::add_scene_func("cin_gen_melee_hendricksmoment_closecombat_robot", &function_a6ca068f, "init");
	scene::add_scene_func("cin_gen_melee_hendricksmoment_closecombat_robot", &function_e419e693, "play");
	scene::add_scene_func("cin_ram_05_02_spike_launcher_plant", &function_889f79d5, "done");
	scene::add_scene_func("cin_ram_05_demostreet_vign_intro_detonation_guy", &function_982fed86, "init");
	scene::add_scene_func("cin_ram_05_demostreet_vign_intro_detonation_guy", &function_bf4445e6, "play");
	scene::add_scene_func("cin_ram_05_demostreet_3rd_sh010", &function_5cee729c, "play");
	scene::add_scene_func("cin_ram_05_demostreet_3rd_sh020", &function_19f02780, "play");
	scene::add_scene_func("cin_ram_05_demostreet_3rd_sh020", &function_f2434205, "play");
	scene::add_scene_func("cin_ram_05_demostreet_3rd_sh040", &function_76cedf66, "play");
	scene::add_scene_func("cin_ram_05_demostreet_3rd_sh080", &function_963f32b, "play");
	scene::add_scene_func("cin_ram_05_demostreet_3rd_sh080", &function_ce13c58d, "done");
	scene::add_scene_func("cin_ram_05_demostreet_3rd_sh130", &function_e4fcbd75, "play");
	scene::add_scene_func("cin_ram_05_demostreet_3rd_sh140", &function_f3dffed, "done");
	scene::add_scene_func("cin_ram_05_demostreet_3rd_sh140", &function_2ec70f8b, "play");
}

/*
	Name: init_scenes
	Namespace: namespace_4124d
	Checksum: 0x4C9E9B72
	Offset: 0xD388
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function init_scenes()
{
	var_70f028db = struct::get_array("arena_defend_friendly_fallback_intro", "targetname");
	foreach(struct in var_70f028db)
	{
		scene::add_scene_func(struct.scriptbundlename, &function_32c9babe, "init");
		struct scene::init();
		util::wait_network_frame();
	}
	scene::add_scene_func("cin_ram_05_01_defend_vign_rescueinjured_r_group", &function_7d420577, "init");
	scene::init("cin_ram_05_01_defend_vign_rescueinjured_r_group");
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
function function_7d420577(a_ents)
{
	t_lookat = GetEnt(self.target, "targetname");
	t_lookat waittill("trigger");
	self scene::Play();
	t_lookat delete();
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
function function_32c9babe(a_ents)
{
	level endon("hash_b4104c59");
	t_lookat = GetEnt(self.target, "targetname");
	level flag::wait_till("intro_igc_done");
	if(!level flag::exists(self.scriptbundlename))
	{
		level flag::init(self.scriptbundlename);
	}
	self thread function_2f4e01f7(t_lookat);
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(isdefined(player))
			{
				if(level flag::get(self.scriptbundlename) || player util::is_player_looking_at(t_lookat.origin))
				{
					self scene::Play();
					level notify(self.scriptbundlename);
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
function function_2f4e01f7(t_lookat)
{
	level endon(self.scriptbundlename);
	t_lookat waittill("trigger");
	level flag::set(self.scriptbundlename);
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
function function_c6f8879f(a_ents)
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
function function_d1580f2c(a_ents)
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
function function_ce0f393b(b_open)
{
	level flag::wait_till("arena_defend_mobile_wall_deployed");
	m_collision = GetEnt("mobile_wall_doors_clip", "targetname");
	var_da89874c = !level flag::get("arena_defend_mobile_wall_doors_open") && b_open;
	b_should_close = level flag::get("arena_defend_mobile_wall_doors_open") && !b_open;
	if(var_da89874c)
	{
		m_collision MoveZ(90, 0.1);
		m_collision waittill("movedone");
		m_collision notsolid();
		m_collision connectpaths();
		namespace_391e4301::enable_nodes("mobile_wall_door_traversals", "targetname", 1);
		level flag::set("arena_defend_mobile_wall_doors_open");
	}
	else if(b_should_close)
	{
		m_collision MoveZ(90 * -1, 0.1);
		m_collision waittill("movedone");
		m_collision solid();
		namespace_391e4301::enable_nodes("mobile_wall_door_traversals", "targetname", 0);
		level flag::clear("arena_defend_mobile_wall_doors_open");
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
function function_a9ffcec(a_ents)
{
	var_2562cec2 = GetEnt("arena_defend_technical_01_vh", "targetname");
	if(isdefined(var_2562cec2))
	{
		var_2562cec2 notify("hash_36c19b73");
		waittillframeend;
		var_2562cec2 delete();
	}
	namespace_391e4301::enable_nodes("arena_defend_technical_01_vh_covernode", "targetname", 0);
	level waittill("hash_fa53fbdf");
	var_35a302af = a_ents["wp_01_technical"];
	var_35a302af disconnectpaths(0, 0);
	var_70d87be7 = GetEnt("trig_wp_01_kill_stuck_players", "targetname");
	if(isdefined(var_70d87be7))
	{
		var_70d87be7 delete();
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
function function_e802b666(a_ents)
{
	var_35a302af = a_ents["wp_01_technical"];
	var_35a302af disconnectpaths(0, 0);
	var_70d87be7 = GetEnt("trig_wp_01_kill_stuck_players", "targetname");
	if(isdefined(var_70d87be7))
	{
		var_70d87be7 delete();
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
function function_69dcb622(a_ents)
{
	GetEnt("wp_crouch_cover", "targetname") MoveZ(200, 0.05);
	namespace_391e4301::enable_nodes("wp_03_dynamic_covernode", "script_noteworthy", 1);
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
function function_5db3ae57(a_ents)
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
function function_3b5bd8c4(a_ents)
{
	var_d578296 = a_ents["street_collapse_trailer_cargo"];
	e_light = GetEnt("lgt_trailer", "targetname");
	e_light LinkTo(var_d578296, "trailer_cargo_jnt");
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
function function_1b706878(a_ents)
{
	t_clip = GetEnt("arena_defend_trailer_door_clip", "targetname");
	s_hinge = struct::get("arena_defend_trailer_door_hinge", "targetname");
	var_f74e78ca = util::spawn_model("tag_origin", s_hinge.origin, s_hinge.angles);
	t_clip LinkTo(var_f74e78ca);
	var_f74e78ca RotateYaw(180, 1);
	var_f74e78ca waittill("rotatedone");
	var_f74e78ca delete();
	t_clip disconnectpaths();
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
function function_f2cede6c(a_ents)
{
	namespace_391e4301::enable_nodes("arena_defend_center_building_sniper_nodes_billboard_collapse", "script_noteworthy", 0);
	spawn_manager::kill("sm_arena_defend_snipers_center_building");
	level waittill("hash_a22c2052");
	level flag::set("billboard1_crashed");
	var_93dfe24f = GetEnt("arena_defend_billboard_trigger", "targetname");
	var_fee634f2 = a_ents["arena_billboard"];
	a_ai = GetAITeamArray("axis");
	if(isdefined(a_ai) && isdefined(var_fee634f2))
	{
		for(i = 0; i < a_ai.size; i++)
		{
			if(a_ai[i] istouching(var_93dfe24f) && isalive(a_ai[i]))
			{
				a_ai[i] kill(var_fee634f2.origin, undefined, var_fee634f2);
			}
		}
	}
	var_935a64f = GetEnt("arena_defend_billboard_fxanim_clip", "targetname");
	var_935a64f solid();
	var_935a64f disconnectpaths();
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
function function_1a46d844(a_ents)
{
	level waittill("hash_a22c2052");
	level flag::set("billboard2_crashed");
	var_93dfe24f = GetEnt("arena_defend_billboard2_trigger", "targetname");
	var_fee634f2 = a_ents["arena_billboard_02"];
	a_ai = GetAITeamArray("axis");
	if(isdefined(a_ai) && isdefined(var_fee634f2))
	{
		for(i = 0; i < a_ai.size; i++)
		{
			if(a_ai[i] istouching(var_93dfe24f) && isalive(a_ai[i]))
			{
				a_ai[i] kill(var_fee634f2.origin, undefined, var_fee634f2);
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
function function_63407bd6(a_ents)
{
	level thread function_82802a7a(0);
	level thread function_a5b142fc(0);
	level util::waittill_notify_or_timeout("mobile_wall_hit_sidewalk", 15);
	level thread function_a5b142fc(1);
	level util::waittill_notify_or_timeout("mobile_wall_hit_building", 5);
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
function function_82802a7a(b_enable)
{
	var_e09430b3 = GetEntArray("mobile_wall_smash_before", "targetname");
	var_dbc08694 = GetEntArray("mobile_wall_smash_after", "targetname");
	if(b_enable)
	{
		foreach(model in var_e09430b3)
		{
			model Hide();
		}
		foreach(model in var_dbc08694)
		{
			model show();
		}
		break;
	}
	foreach(model in var_e09430b3)
	{
		model show();
	}
	foreach(model in var_dbc08694)
	{
		model Hide();
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
function function_a5b142fc(b_enable)
{
	var_e09430b3 = GetEntArray("mobile_wall_sidewalk_smash_before", "targetname");
	if(b_enable)
	{
		foreach(model in var_e09430b3)
		{
			model Hide();
		}
		level clientfield::set("arena_defend_mobile_wall_damage", 0);
	}
	else
	{
		foreach(model in var_e09430b3)
		{
			model show();
		}
		level clientfield::set("arena_defend_mobile_wall_damage", 1);
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
function function_35c6856(a_ents)
{
	var_2ef9d306 = GetEnt("wall_drop_vtol", "targetname");
	level waittill("hash_dde42d30");
	level thread function_d2d508fb();
	weapon = GetWeapon("smaw");
	var_1177ae6a = struct::get("s_vtol_rocket_start", "targetname");
	for(i = 0; i < 3; i++)
	{
		if(isdefined(var_2ef9d306))
		{
			var_b76e95dc[i] = MagicBullet(weapon, var_1177ae6a.origin, var_2ef9d306.origin, undefined, var_2ef9d306, (-300, 0, 400));
			wait(0.25);
		}
	}
	level flag::wait_till("arena_defend_rocket_hits_vtol");
	foreach(e_rocket in var_b76e95dc)
	{
		if(isdefined(e_rocket))
		{
			e_rocket detonate();
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
	level flag::set("arena_defend_rocket_hits_vtol");
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
function function_74684a40(a_ents)
{
	scene::remove_player_linked_scene("p7_fxanim_cp_ramses_wall_drop_bundle");
	level flag::set("arena_defend_mobile_wall_deployed");
	vehicle::simple_spawn("arena_defend_mobile_wall_turret", 1);
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
function function_cc9e6c1d(a_ents)
{
	var_86b91b96 = GetEnt("arena_defend_checkpoint_wall_b", "targetname");
	if(isdefined(var_86b91b96))
	{
		var_86b91b96 disconnectpaths();
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
function function_7b7e8565(a_ents)
{
	var_86b91b96 = GetEnt("arena_defend_checkpoint_wall_b", "targetname");
	level function_1caab1d2(var_86b91b96);
	if(isdefined(var_86b91b96))
	{
		var_86b91b96 connectpaths();
		var_86b91b96 delete();
	}
	wait(0.1);
	a_models = GetEntArray("arena_defend_checkpoint_wall_left_models", "script_noteworthy");
	foreach(var_e8009655 in a_models)
	{
		var_e8009655 delete();
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
function function_3730aac7(a_ents)
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
function function_1ab1b112(a_ents)
{
	var_935a64f = GetEnt("arena_defend_checkpoint_wall_right_clip", "targetname");
	level function_1caab1d2(var_935a64f);
	if(isdefined(var_935a64f))
	{
		var_935a64f delete();
	}
	wait(0.1);
	a_models = GetEntArray("arena_defend_checkpoint_wall_right_models", "script_noteworthy");
	foreach(var_e8009655 in a_models)
	{
		var_e8009655 delete();
	}
	spawner::simple_spawn("checkpoint_right_breach_raps");
	spawner::simple_spawn("sp_wp_04_robot_defenders");
	spawn_manager::enable("sm_wp_04_defenders");
	spawn_manager::enable("sm_wp_04_wasps");
	spawner::waittill_ai_group_count("checkpoint_right_breach_raps", 3);
	spawn_manager::enable("sm_checkpoint_right_fill_raps");
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
	player = Array::random(level.activePlayers);
	if(isPlayer(player))
	{
		self SetGoal(player, 1);
	}
	namespace_391e4301::enable_nodes("nd_raps_launch_point_1", "targetname", 1);
	namespace_391e4301::enable_nodes("nd_raps_launch_point_2", "targetname", 1);
	namespace_391e4301::enable_nodes("nd_raps_launch_point_3", "targetname", 1);
	namespace_391e4301::enable_nodes("nd_raps_launch_point_4", "targetname", 1);
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
function function_34c51c66(a_ents)
{
	trigger::wait_till("arena_defend_checkpoint_wall_right_trigger");
	level scene::Play("p7_fxanim_cp_ramses_checkpoint_wall_02_bundle");
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
function function_d8e5f873(a_ents)
{
	wait(3);
	level scene::Play("p7_fxanim_cp_ramses_checkpoint_wall_01_bundle");
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
	level thread scene::skipto_end("p7_fxanim_cp_ramses_wall_drop_bundle");
	level flag::set("arena_defend_mobile_wall_deployed");
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
	scene::add_player_linked_scene("p7_fxanim_cp_ramses_wall_drop_bundle");
	level thread scene::Play("p7_fxanim_cp_ramses_wall_drop_bundle");
	namespace_391e4301::function_ac2b4535("cin_ram_05_01_block_1st_rip", "arena_defend");
	level scene::Play("cin_ram_05_01_block_1st_rip");
	level flag::set("intro_igc_done");
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
	var_58ee3480 = GetEnt("wall_drop_doors", "targetname");
	if(!isdefined(var_58ee3480))
	{
		var_58ee3480 = util::spawn_model("p7_fxanim_cp_ramses_mobile_wall_doors_mod");
		var_58ee3480.targetname = "wall_drop_doors";
	}
	/#
		Assert(isdefined(var_58ee3480), "Dev Block strings are not supported");
	#/
	level scene::Play("p7_fxanim_cp_ramses_wall_drop_doors_up_bundle", var_58ee3480);
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
	var_58ee3480 = GetEnt("wall_drop_doors", "targetname");
	if(!isdefined(var_58ee3480))
	{
		var_58ee3480 = util::spawn_model("p7_fxanim_cp_ramses_mobile_wall_doors_mod");
		var_58ee3480.targetname = "wall_drop_doors";
	}
	/#
		Assert(isdefined(var_58ee3480), "Dev Block strings are not supported");
	#/
	level scene::Play("p7_fxanim_cp_ramses_wall_drop_doors_down_bundle", var_58ee3480);
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
	level thread scene::skipto_end("wp_01", "targetname");
	level thread scene::skipto_end("wp_02", "targetname");
	level thread scene::skipto_end("wp_03", "targetname");
	level thread scene::skipto_end("wp_04", "targetname");
	level thread scene::skipto_end("wp_05", "targetname");
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
	level scene::stop("wp_01", "targetname", 1);
	level scene::stop("wp_02", "targetname", 1);
	level scene::stop("wp_03", "targetname", 1);
	level scene::stop("wp_04", "targetname", 1);
	level scene::stop("wp_05", "targetname", 1);
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
function function_6b5863a(a_ents)
{
	var_aa65e706 = GetEnt("ad_detonator_trig", "targetname");
	e_grenade = GetEnt("sinkhole_grenade_ent", "targetname");
	var_1cbfe55c = struct::get_array(var_aa65e706.target, "targetname");
	foreach(s in var_1cbfe55c)
	{
		s thread function_94df6716(e_grenade);
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
function function_94df6716(e)
{
	s_start = self;
	while(isdefined(s_start.target))
	{
		s = struct::get(s_start.target, "targetname");
		e MagicGrenadeType(GetWeapon("frag_grenade"), s.origin, (0, 0, 1), 0.1);
		s_start = s;
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
	var_522666ed = GetEntArray("arena_defend_models", "targetname");
	var_105a4022 = GetEntArray("arena_defend_sinkhole", "targetname");
	s_street_spot = struct::get("sinkhole_street_spot", "targetname");
	foreach(m in var_522666ed)
	{
		if(!isdefined(m.script_noteworthy) || m.script_noteworthy != "ignore_paths")
		{
			m disconnectpaths();
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
function function_9cc779c7(a_ents)
{
	var_3087b33c = a_ents["street_collapse_big_hole"];
	var_4d6bc9a1 = GetEntArray("arena_defend_street_col", "targetname");
	foreach(model in var_4d6bc9a1)
	{
		model LinkTo(var_3087b33c, "bck_ground_sec_07_jnt");
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
function function_be12945c(a_ents)
{
	util::wait_network_frame();
	fxanim = GetEnt("small_hole_01", "targetname");
	fxanim thread scene::init("p7_fxanim_cp_ramses_street_collapse_small_hole_01_drop_bundle");
	util::wait_network_frame();
	fxanim = GetEnt("small_hole_02", "targetname");
	fxanim thread scene::init("p7_fxanim_cp_ramses_street_collapse_small_hole_02_drop_bundle");
	util::wait_network_frame();
	fxanim = GetEnt("small_hole_03", "targetname");
	fxanim thread scene::init("p7_fxanim_cp_ramses_street_collapse_small_hole_03_drop_bundle");
	util::wait_network_frame();
	fxanim = GetEnt("small_hole_04", "targetname");
	fxanim thread scene::init("p7_fxanim_cp_ramses_street_collapse_small_hole_04_drop_bundle");
	util::wait_network_frame();
	fxanim = GetEnt("small_hole_05", "targetname");
	fxanim thread scene::init("p7_fxanim_cp_ramses_street_collapse_small_hole_05_drop_bundle");
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
function function_397df6bc(a_ents)
{
	level thread function_f93fee8e();
	fxanim = GetEnt("small_hole_01", "targetname");
	fxanim thread scene::Play("p7_fxanim_cp_ramses_street_collapse_small_hole_01_drop_bundle");
	fxanim = GetEnt("small_hole_02", "targetname");
	fxanim thread scene::Play("p7_fxanim_cp_ramses_street_collapse_small_hole_02_drop_bundle");
	fxanim = GetEnt("small_hole_03", "targetname");
	fxanim thread scene::Play("p7_fxanim_cp_ramses_street_collapse_small_hole_03_drop_bundle");
	fxanim = GetEnt("small_hole_04", "targetname");
	fxanim thread scene::Play("p7_fxanim_cp_ramses_street_collapse_small_hole_04_drop_bundle");
	fxanim = GetEnt("small_hole_05", "targetname");
	fxanim thread scene::Play("p7_fxanim_cp_ramses_street_collapse_small_hole_05_drop_bundle");
	var_50b2c343 = GetEnt("street_collapse_trailer_cargo", "targetname");
	if(isdefined(var_50b2c343))
	{
		var_50b2c343 delete();
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
	var_2eb506d6 = GetEntArray("arena_defend_technical", "script_noteworthy");
	foreach(var_35a302af in var_2eb506d6)
	{
		var_35a302af disconnectpaths(0, 0);
		util::wait_network_frame();
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
function function_c15cf2c8(a_ents)
{
	level flag::set("sinkhole_collapse_complete");
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
function function_5cee729c(a_ents)
{
	level flag::set("arena_defend_sinkhole_igc_started");
	foreach(player in level.players)
	{
		player clientfield::set_to_player("set_dedicated_shadow", 1);
		player clientfield::set_to_player("dni_eye", 1);
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
	util::wait_network_frame();
	level scene::init("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle");
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
function function_19f02780(a_ents)
{
	var_5fd4d3b9 = GetEntArray("lgt_shadow_block", "targetname");
	foreach(blocker in var_5fd4d3b9)
	{
		blocker show();
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
function function_f2434205(a_ents)
{
	function_f56aea9b();
	Array::run_all(GetAITeamArray("axis"), &delete);
	Array::run_all(GetCorpseArray(), &delete);
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
function function_76cedf66(a_ents)
{
	level thread function_c687aeb9(a_ents);
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
function function_c687aeb9(a_ents)
{
	if(isdefined(a_ents["robot_arm"]))
	{
		a_ents["robot_arm"] Hide();
		a_ents["robot_head"] Hide();
		a_ents["robot_missing_arm"] Hide();
		a_ents["robot_missing_arm_head"] Hide();
		a_ents["robot_intact"] waittill("hash_be5a15e8");
		a_ents["robot_intact"] SetModel("c_nrc_robot_grunt_dam_dps_rarmoff");
		a_ents["robot_arm"] show();
		a_ents["robot_intact"] waittill("hash_b6632286");
		a_ents["robot_intact"] DetachAll();
		a_ents["robot_intact"] SetModel("c_nrc_robot_grunt_dam_dps_rarmoff_headoff");
		a_ents["robot_head"] show();
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
function function_ec8a2922(a_ents)
{
	a_ents["robot_arm"] Hide();
	a_ents["robot_head"] Hide();
	a_ents["robot_missing_arm"] Hide();
	a_ents["robot_missing_arm_head"] Hide();
	a_ents["robot_intact"] waittill("hash_be5a15e8");
	a_ents["robot_missing_arm"] show();
	a_ents["robot_intact"] Hide();
	a_ents["robot_arm"] show();
	a_ents["robot_intact"] waittill("hash_b6632286");
	a_ents["robot_missing_arm_head"] show();
	a_ents["robot_missing_arm"] Hide();
	a_ents["robot_head"] show();
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
function function_128ca38b(a_ents)
{
	a_ents["robot_arm"] ghost();
	a_ents["robot_head"] ghost();
	a_ents["robot_missing_arm"] ghost();
	a_ents["robot_missing_arm_head"] ghost();
	a_ents["robot_intact"] waittill("hash_be5a15e8");
	a_ents["robot_missing_arm"] show();
	a_ents["robot_intact"] ghost();
	a_ents["robot_arm"] show();
	a_ents["robot_intact"] waittill("hash_b6632286");
	a_ents["robot_missing_arm_head"] show();
	a_ents["robot_missing_arm"] ghost();
	a_ents["robot_head"] show();
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
function function_963f32b(a_ents)
{
	namespace_391e4301::function_1aeb2873();
	level waittill("hash_66e11689");
	level flag::set("sinkhole_charges_detonated");
	function_a99364b5();
	level thread util::function_d8eaed3d(2);
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
function function_ce13c58d(a_ents)
{
	a_ents["player 1"] clientfield::set_to_player("dni_eye", 0);
	Array::run_all(GetAITeamArray("axis"), &delete);
	level scene::init("cin_ram_05_demostreet_3rd_sh100");
	util::clear_streamer_hint();
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
function function_2ec70f8b(a_ents)
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
function function_f3dffed(a_ents)
{
	level flag::set("arena_defend_sinkhole_collapse_done");
	level.var_9db406db delete();
	var_5fd4d3b9 = GetEntArray("lgt_shadow_block", "targetname");
	foreach(blocker in var_5fd4d3b9)
	{
		blocker Hide();
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
function function_e4fcbd75(a_ents)
{
	var_32d013aa = GetDvarInt("ui_execdemo_cp", 0);
	if(var_32d013aa)
	{
		level waittill("hash_4b89bb4a");
		skipto::function_1b5a2a11();
		level LUI::screen_fade_out(2);
		exitLevel(0);
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
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_behavior_attribute("sprint", 1);
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
function function_982fed86(a_ents)
{
	ai_guy = a_ents["detonation_guy"];
	ai_guy ai::gun_remove();
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
function function_bf4445e6(a_ents)
{
	ai_guy = a_ents["detonation_guy"];
	ai_guy waittill("hash_ee94e3ac");
	var_3d57e9f = a_ents["detonator"];
	var_3d57e9f.script_noteworthy = "arena_defend_detonator_pickup_model";
	var_3d57e9f namespace_16f9ecd3::function_e228c18a(1);
	trigger = spawn("trigger_radius_use", var_3d57e9f.origin + VectorScale((0, 0, 1), 10), 0, 85, 128);
	trigger TriggerIgnoreTeam();
	trigger SetVisibleToAll();
	trigger SetTeamForTrigger("none");
	var_c960aa14 = GetEntArray("temp_detonator_button", "targetname");
	var_49ddde9 = util::function_14518e76(trigger, &"cp_level_ramses_detonator", &"CP_MI_CAIRO_RAMSES_DETONATOR_TRIG", &function_dcc9f49f, var_c960aa14);
	var_49ddde9.script_objective = "sinkhole_collapse";
	level flag::set("arena_defend_detonator_dropped");
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
function function_dcc9f49f(player)
{
	level.var_8e659b82 = player;
	level flag::set("arena_defend_detonator_pickup");
	self gameobjects::destroy_object(1);
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
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level.var_2fd26037 ai::set_behavior_attribute("disablesprint", 1);
	level.var_2fd26037 ai::set_ignoreall(1);
	level thread scene::init("cin_ram_05_01_defend_vign_leapattack");
	level util::waittill_notify_or_timeout("hendricks_leap_started", 8);
	namespace_391e4301::enable_nodes("arena_defend_mobile_wall_top_nodes", "script_noteworthy", 1);
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
function function_a7405e61(a_ents)
{
	self util::delay_notify(30, self.scriptbundlename + "_cancelled");
	function_670e94a("axis", "human", "arena_defend_vignette_hendricks_leap_guy_front", "guy_shot");
	function_670e94a("axis", "human", "arena_defend_vignette_hendricks_leap_guy_rear", "guy_grenade");
	self flag::wait_till_all(self.var_a42c7b03);
	self notify(self.scriptbundlename + "_starting");
	level notify("hash_9cb0f801");
	self scene::Play(self.a_actors);
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
function function_f295baeb(a_ents)
{
	var_6b3fcdf5 = GetNode("hendricks_leap_end_node", "targetname");
	/#
		Assert(isdefined(var_6b3fcdf5), "Dev Block strings are not supported");
	#/
	level.var_2fd26037 ai::set_behavior_attribute("disablesprint", 0);
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 SetGoal(var_6b3fcdf5);
	wait(RandomFloatRange(5, 8));
	level.var_2fd26037 colors::enable();
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
function function_670e94a(str_faction, str_type, str_node, str_flag, str_endon, var_d985d5a0)
{
	if(isdefined(str_endon))
	{
		self endon(str_endon);
	}
	if(!self flag::exists(str_flag))
	{
		if(!isdefined(self.var_a42c7b03))
		{
			self.var_a42c7b03 = [];
		}
		if(!isdefined(self.var_a42c7b03))
		{
			self.var_a42c7b03 = [];
		}
		else if(!IsArray(self.var_a42c7b03))
		{
			self.var_a42c7b03 = Array(self.var_a42c7b03);
		}
		self.var_a42c7b03[self.var_a42c7b03.size] = str_flag;
		self flag::init(str_flag);
	}
	self flag::clear(str_flag);
	self thread function_19286245(str_faction, str_type, str_node, str_flag, str_endon, var_d985d5a0);
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
function function_19286245(str_faction, str_type, str_node, str_flag, str_endon, n_distance)
{
	if(!isdefined(n_distance))
	{
		n_distance = 400;
	}
	self endon(self.scriptbundlename + "_starting");
	self endon(self.scriptbundlename + "_cancelled");
	if(!isdefined(self.a_actors))
	{
		self.a_actors = [];
	}
	do
	{
		ai_guy = function_448954e7(str_type, str_faction, str_node, n_distance, 0);
	}
	while(!(!isdefined(ai_guy) || !isalive(ai_guy)));
	self flag::set(str_flag);
	self.a_actors[str_flag] = ai_guy;
	ai_guy util::waittill_any("death", "start_ragdoll");
	ArrayRemoveValue(self.a_actors, ai_guy, 0);
	self function_670e94a(str_faction, str_type, str_node, str_flag, str_endon);
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
function function_f589aed(str_hero, str_node, str_flag)
{
	if(!isdefined(self.a_actors))
	{
		self.a_actors = [];
	}
	self.a_actors[str_flag] = util::function_740f8516(str_hero);
	if(!self flag::exists(str_flag))
	{
		if(!isdefined(self.var_a42c7b03))
		{
			self.var_a42c7b03 = [];
		}
		if(!isdefined(self.var_a42c7b03))
		{
			self.var_a42c7b03 = [];
		}
		else if(!IsArray(self.var_a42c7b03))
		{
			self.var_a42c7b03 = Array(self.var_a42c7b03);
		}
		self.var_a42c7b03[self.var_a42c7b03.size] = str_flag;
		self flag::init(str_flag);
	}
	self thread function_4fa4774e(str_hero, str_node, str_flag);
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
function function_4fa4774e(str_hero, str_node, str_flag)
{
	ai_hero = util::function_740f8516(str_hero);
	nd_goal = GetNode(str_node, "targetname");
	/#
		Assert(isdefined(nd_goal), "Dev Block strings are not supported" + str_hero + "Dev Block strings are not supported" + self.scriptbundlename);
	#/
	var_4345e897 = ai_hero.goalRadius;
	ai_hero.goalRadius = 32;
	if(ai_hero colors::has_color())
	{
		ai_hero colors::disable();
	}
	ai_hero SetGoal(nd_goal, 1);
	ai_hero util::waittill_any_timeout(15, "goal");
	self flag::set(str_flag);
	self util::waittill_any(self.scriptbundlename + "_starting", self.scriptbundlename + "_cancelled");
	ai_hero.goalRadius = var_4345e897;
	if(ai_hero colors::has_color())
	{
		ai_hero colors::enable();
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
function function_e419e693(a_ents)
{
	if(isdefined(level.var_2fd26037.var_e6e961e4))
	{
		level.var_2fd26037.goalRadius = level.var_2fd26037.var_e6e961e4;
		level.var_2fd26037.var_e6e961e4 = undefined;
	}
	level.var_2fd26037 colors::enable();
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
function function_a6ca068f(a_ents)
{
	level endon("hash_adc3dca5");
	level endon("hash_18cf70dc");
	self flag::init("hendricks_ready");
	self thread function_ec1da064();
	var_f6c5842 = self function_c0e05dd();
	var_f6c5842 endon("death");
	self flag::wait_till("hendricks_ready");
	a_actors = [];
	a_actors["hendricks"] = level.var_2fd26037;
	a_actors["robot"] = var_f6c5842;
	level scene::Play("cin_gen_melee_hendricksmoment_closecombat_robot", a_actors);
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
	var_dfcbd82b = GetNode("melee_robot_vignette_goal_hendricks", "targetname");
	level.var_2fd26037 colors::disable();
	level.var_2fd26037.var_e6e961e4 = level.var_2fd26037.goalRadius;
	level.var_2fd26037.goalRadius = 32;
	level.var_2fd26037 ai::force_goal(var_dfcbd82b);
	level.var_2fd26037 waittill("goal");
	self flag::set("hendricks_ready");
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
	while(!(!isdefined(var_f6c5842) || !isalive(var_f6c5842)));
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
function function_33280827(a_ents)
{
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent thread function_13518c6(10);
			ent thread function_310c8dc8(15);
			ent SetGoal(ent.origin);
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
function function_7c00379f(a_ents)
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
function function_310c8dc8(n_time)
{
	self endon("death");
	var_c5e3e899 = self.goalRadius;
	self.goalRadius = 64;
	self SetGoal(self.origin);
	wait(n_time);
	self.goalRadius = var_c5e3e899;
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
function function_13518c6(n_time)
{
	self endon("death");
	self ai::set_ignoreme(1);
	level util::waittill_notify_or_timeout("all_weak_points_destroyed", n_time);
	self ai::set_ignoreme(0);
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
function function_3838410f(a_ents)
{
	foreach(player in level.players)
	{
		player SwitchToWeaponImmediate(GetWeapon("spike_launcher"));
	}
	util::clear_streamer_hint();
	wait(2);
	foreach(player in level.players)
	{
		player thread namespace_391e4301::function_508a129e("clear_spike_hints");
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
function function_25e4bdcc(a_ents)
{
	vh_truck = a_ents["technical"];
	vh_truck disconnectpaths(0, 0);
	if(isdefined(a_ents["hendricks"]))
	{
		skipto::teleport_ai("arena_defend");
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
	level.var_9bc0ad76 = GetEntArray("arena_defend_models", "targetname");
	var_105a4022 = GetEntArray("arena_defend_sinkhole", "targetname");
	s_street_spot = struct::get("sinkhole_street_spot", "targetname");
	util::wait_network_frame();
	Array::delete_all(level.var_9bc0ad76);
	util::wait_network_frame();
	util::wait_network_frame();
	var_105a4022 namespace_391e4301::function_64a470cf();
	util::wait_network_frame();
	function_9e3608e3("sinkhole_misc_model");
	level clientfield::increment("clear_all_dyn_ents", 1);
	if(var_f9118324)
	{
		var_4d6bc9a1 = GetEntArray("arena_defend_street_col", "targetname");
		foreach(model in var_4d6bc9a1)
		{
			model delete();
		}
	}
	else if(level scene::is_active("cin_ram_05_01_quadtank_flatbed_pose"))
	{
		level scene::stop("cin_ram_05_01_quadtank_flatbed_pose", 1);
	}
	if(level scene::is_active("cin_ram_05_01_defend_vign_rescueinjured_l_group"))
	{
		level scene::stop("cin_ram_05_01_defend_vign_rescueinjured_l_group", 1);
	}
	if(level scene::is_active("cin_ram_05_01_defend_vign_rescueinjured_r_group"))
	{
		level scene::stop("cin_ram_05_01_defend_vign_rescueinjured_r_group", 1);
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
		level thread scene::Play("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle");
	}
	else
	{
		level thread scene::skipto_end("p7_fxanim_cp_ramses_street_collapse_big_hole_bundle");
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
	var_9e3dc64d = GetEntArray("checkpoint_wall", "targetname");
	m_wall = GetEnt("mobile_wall_model", "targetname");
	var_7232aa12 = GetEntArray("mobile_wall_clip", "targetname");
	var_3388f11b = GetEnt("mobile_wall_doors_model", "targetname");
	if(isdefined(m_wall))
	{
		m_wall delete();
	}
	Array::delete_all(var_9e3dc64d);
	Array::delete_all(var_7232aa12);
	if(isdefined(var_3388f11b))
	{
		var_3388f11b delete();
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
	level clientfield::set("arena_defend_fxanim_hunters", 0);
}

/*
	Name: objectives
	Namespace: namespace_4124d
	Checksum: 0x80637937
	Offset: 0x11F78
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function objectives()
{
	level waittill("hash_cf46ef3a");
	level flag::set("weak_points_objective_active");
	level flag::wait_till("all_weak_points_destroyed");
	level flag::clear("weak_points_objective_active");
	level flag::wait_till_any(Array("mobile_wall_doors_closing", "arena_defend_detonator_dropped"));
	objectives::complete("cp_level_ramses_fall_back");
	level flag::wait_till("sinkhole_charges_detonated");
	objectives::complete("cp_level_ramses_detonator");
	objectives::complete("cp_level_ramses_demolish_arena_defend");
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
	a_friendly = function_846256f4("allies");
	while(1)
	{
		var_aa24f038 = ArraySortClosest(a_friendly, level.players[0].origin);
		for(i = 0; i < var_aa24f038.size; i++)
		{
			if(!IsInArray(level.heroes, var_aa24f038[i]) && isalive(var_aa24f038[i]))
			{
				return var_aa24f038[i];
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
	var_d16e6be2 = randomIntRange(0, var_2d3d7b7.size);
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
		ai_guy = function_6f24118d();
		ai_guy thread dialog::say(function_7ff50323(var_2d3d7b7));
		wait(randomIntRange(90, 120));
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
	level dialog::function_13b3b16a("plyr_kane_search_the_cit_0");
	level dialog::remote("kane_got_to_give_me_time_0");
	level dialog::function_13b3b16a("plyr_we_don_t_have_time_0");
	function_942c6e92();
	level flag::set("arena_defend_initial_weak_point_search_finished");
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
	level flag::wait_till("arena_defend_initial_weak_point_search_finished");
	level thread dialog::remote("kane_okay_i_ve_located_t_0");
	level thread namespace_a6a248fc::function_9574e08d();
	wait(1);
	level thread LUI::play_movie("cp_ramses2_pip_unstableground", "pip");
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
	var_35a302af = GetEnt("arena_defend_technical_01_vh", "targetname");
	if(isalive(var_35a302af))
	{
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "esl3_eyes_on_enemy_techni_0";
		var_2d3d7b7[1] = "esl4_hostile_technical_mo_0";
		ai_guy = function_6f24118d();
		ai_guy dialog::say(function_7ff50323(var_2d3d7b7));
	}
	if(isalive(var_35a302af))
	{
		level.var_2fd26037 dialog::say("hend_someone_move_on_that_0");
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
	foreach(player in level.activePlayers)
	{
		player thread function_54380572();
	}
	level waittill("hash_b7604d6c");
	level.var_2fd26037 dialog::say("hend_not_good_enough_go_0");
	level waittill("hash_b7604d6c");
	level.var_2fd26037 dialog::say("hend_you_gotta_hammer_the_0");
	level waittill("hash_b7604d6c");
	level.var_2fd26037 dialog::say("hend_we_need_the_spikes_o_0");
	level waittill("hash_b7604d6c");
	level.var_2fd26037 dialog::say("hend_can_t_do_it_at_range_0");
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
	self endon("death");
	var_39ba7753 = 0;
	while(1)
	{
		self waittill("weapon_fired", w_current);
		if(w_current === level.var_1b7b3a6)
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
	foreach(player in level.activePlayers)
	{
		player thread function_e5f94949();
	}
	level.var_2fd26037 thread dialog::say("hend_target_confirmed_0", 1);
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
	level.var_2fd26037 dialog::say("hend_blow_that_fucker_0", 1);
	level waittill("hash_18cf70dc");
	level.var_2fd26037 thread dialog::say("hend_spike_set_blow_it_0", 1);
	level waittill("hash_18cf70dc");
	level.var_2fd26037 thread dialog::say("hend_blow_that_spike_0", 1);
	level waittill("hash_18cf70dc");
	level.var_2fd26037 thread dialog::say("hend_spike_on_target_de_0", 1);
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
	self endon("death");
	self waittill("hash_41772abf");
	self thread dialog::function_13b3b16a("plyr_dammit_i_m_out_of_s_0");
	self waittill("hash_41772abf");
	self thread dialog::function_13b3b16a("plyr_need_a_reload_0");
	self waittill("hash_41772abf");
	self thread dialog::function_13b3b16a("plyr_i_m_all_out_need_m_0");
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
	level dialog::function_13b3b16a("plyr_detonation_confirmed_0", 1);
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
	ai_guy = function_6f24118d();
	ai_guy thread dialog::say(function_7ff50323(var_2d3d7b7));
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
	level thread dialog::remote("kane_two_more_in_the_nort_0");
	wait(0.5);
	wait(2);
	level dialog::function_13b3b16a("plyr_copy_that_hendricks_0");
	level.var_2fd26037 dialog::say("hend_you_re_good_go_0", 1);
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
	level dialog::remote("ecmd_nrc_reinforcements_f_0");
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
	level thread dialog::remote("kane_last_two_0", 1);
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
	level dialog::remote("kane_this_is_it_last_on_0");
	level thread dialog::remote("ecmd_nrc_reinforcements_i_0");
	level waittill("hash_18cf70dc");
	level.var_2fd26037 thread dialog::say("hend_blow_it_0", 2);
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
	util::wait_network_frame();
	if(!level flag::get("mobile_wall_doors_closing"))
	{
		level.var_2fd26037 dialog::say("hend_that_s_it_we_got_0");
	}
	objectives::set("cp_level_ramses_fall_back");
	level thread objectives::breadcrumb("arena_defend_wall_gather_trig");
	if(!level flag::get("mobile_wall_doors_closing"))
	{
		if(isdefined(level.var_9db406db))
		{
			var_2d3d7b7 = [];
			var_2d3d7b7[0] = "khal_we_have_to_blow_the_0";
			var_2d3d7b7[1] = "khal_hurry_we_have_to_bl_0";
			var_2d3d7b7[2] = "hend_fall_back_to_mobile_0";
			var_2d3d7b7[3] = "hend_get_the_fuck_back_g_0";
			var_2d3d7b7[4] = "hend_fall_back_behind_the_0";
			level.var_9db406db dialog::say(function_7ff50323(var_2d3d7b7));
		}
	}
	if(!level flag::get("mobile_wall_doors_closing"))
	{
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "esl1_get_behind_the_wall_0";
		var_2d3d7b7[1] = "egy2_move_behind_the_mobi_0";
		var_2d3d7b7[2] = "esl1_get_behind_the_wall_1";
		if(level.skipto_point != "dev_sinkhole_test")
		{
			ai_guy = function_6f24118d();
			ai_guy thread dialog::say(function_7ff50323(var_2d3d7b7), 5);
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
	level dialog::remote("kane_we_got_javelin_missi_0");
	level.var_2fd26037 dialog::say("hend_incoming_1");
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
		level.var_9db406db dialog::say("khal_get_on_top_of_wall_0");
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
function function_350af383(a_friendlies)
{
	level endon("hash_fc0ed87");
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "esl4_let_s_see_them_climb_0";
	var_2d3d7b7[1] = "esl3_they_won_t_be_coming_0";
	var_2d3d7b7[2] = "egy2_they_think_we_ll_bre_0";
	var_2d3d7b7[3] = "esl1_our_will_won_t_be_br_0";
	if(a_friendlies > var_2d3d7b7.size)
	{
		for(i = 0; i < var_2d3d7b7.size; i++)
		{
			a_friendlies[i] dialog::say(var_2d3d7b7[i]);
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
function function_fd1e50c8(e, n_timer)
{
	/#
		self endon("death");
		n_timer = GetTime() + n_timer * 1000;
		while(GetTime() < n_timer)
		{
			line(self.origin + VectorScale((0, 0, 1), 300), e.origin, (1, 0, 0), 0.1);
			debug::drawArrow(e.origin, e.angles);
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
function function_dfb8409d(str_objective, var_74cd64bc)
{
	function_c4fc0ade(str_objective, var_74cd64bc);
	function_e8a47a87();
	level thread function_43ae7eec(0, 1);
	level flag::set("weak_points_objective_active");
	vehicle::add_spawn_function("arena_defend_technical_01", &function_c3bff305);
	vehicle::simple_spawn_single("arena_defend_technical_01");
	function_7da8c2ae();
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_small_hole_01_bundle", &function_d8e5f873, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_street_collapse_small_hole_04_bundle", &function_34c51c66, "play");
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
function function_d1d0f160(str_objective, var_74cd64bc)
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
	var_9bb18713 = GetEntArray("collision_" + var_3f3a393c, "targetname");
	foreach(var_44febfef in var_9bb18713)
	{
		var_44febfef delete();
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
function function_f15cce15(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_b6da2f7c();
		level flag::wait_till("all_players_spawned");
	}
	namespace_391e4301::function_f2f98cfc();
	namespace_d7ca6f18::function_fc9630cb();
	function_1a5a4627();
	function_c50ca91();
	init_heroes(str_objective, var_74cd64bc);
	function_8f461d35(0);
	function_52eeccd();
	level thread function_43ae7eec(0, 1);
	function_a760a823();
	level thread function_9b890ccb();
	function_30f53fbc();
	level flag::set("all_weak_points_destroyed");
	function_844b68d7();
	function_8494dbb("wp_01");
	function_8494dbb("wp_02");
	function_8494dbb("wp_03");
	function_8494dbb("wp_04");
	wait(1);
	level thread function_c779fef1();
	level thread util::screen_message_create("PRESS RIGHT ON D-PAD TO PLAY FINAL SCENE", undefined, undefined, undefined, 10);
	while(1)
	{
		if(level.players[0] ActionSlotFourButtonPressed())
		{
			break;
		}
		wait(0.05);
	}
	util::screen_message_delete();
	function_2e8bcd54();
	function_4dcf9e47();
	level notify("hash_87039547");
	level thread function_3d3f7691();
	spawn_manager::enable("arena_defend_wall_allies");
	level flag::wait_till("arena_defend_sinkhole_collapse_done");
	function_2fcc9369("arena_defend_spawn_manager");
	function_53314bf6();
	namespace_391e4301::function_5ad47384();
	skipto::function_be8adfb8(str_objective);
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
	level thread objectives();
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
	var_1bc0905e = vehicle::simple_spawn_single("arena_defend_intro_technical");
	var_1bc0905e DoDamage(var_1bc0905e.health, var_1bc0905e.origin);
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
function function_893047b8(str_objective, var_74cd64bc, var_e4cd2b8b, player)
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
	a_flags = [];
	foreach(wave in var_31564035)
	{
		foreach(var_20488710 in wave)
		{
			ArrayCombine(a_flags, var_20488710.var_2f201aa5, 0, 0);
			if(!isdefined(a_flags))
			{
				a_flags = [];
			}
			else if(!IsArray(a_flags))
			{
				a_flags = Array(a_flags);
			}
			a_flags[a_flags.size] = var_20488710.var_672c6068 + "_identified";
		}
	}
	foreach(str_flag in a_flags)
	{
		level flag::set(str_flag);
	}
}

