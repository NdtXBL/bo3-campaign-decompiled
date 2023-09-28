#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_accolades;
#using scripts\cp\cp_mi_cairo_ramses_arena_defend;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses2_fx;
#using scripts\cp\cp_mi_cairo_ramses2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_raps;

#namespace alley;

/*
	Name: function_3a097ca4
	Namespace: alley
	Checksum: 0xDBFB7E2D
	Offset: 0xDC0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3a097ca4()
{
	Precache();
	level flag::wait_till("first_player_spawned");
	function_373b56fb();
	skipto::function_be8adfb8("alley");
}

/*
	Name: Precache
	Namespace: alley
	Checksum: 0xC096AF60
	Offset: 0xE28
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function Precache()
{
	level flag::init("alley_event_started");
	level flag::init("alley_midpoint_reached");
	level._effect["large_explosion"] = "explosions/fx_exp_generic_lg";
}

/*
	Name: function_85ed7760
	Namespace: alley
	Checksum: 0x1C60FE47
	Offset: 0xE90
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_85ed7760()
{
	trigger::wait_till("trig_player_alley_entrance");
	level thread namespace_a6a248fc::function_1912af43();
	level thread namespace_a6a248fc::function_bd60b52a();
	battlechatter::function_d9f49fba(0);
	trigger::use("trig_color_post_entrance", "targetname", undefined, 0);
	level dialog::function_13b3b16a("plrf_kane_it_feels_a_lo_0", 2);
	level dialog::remote("kane_wait_i_think_0", 1);
	level dialog::remote("ecmd_ambush_we_have_a_b_0");
	level dialog::function_13b3b16a("plrf_kane_sit_rep_are_0");
	level dialog::remote("kane_it_was_taylor_the_0", 3);
	level.var_2fd26037 dialog::say("hend_kane_how_did_taylo_0", 0.5);
	level dialog::remote("tayr_she_s_telling_the_tr_0", 1);
	level.var_2fd26037 dialog::say("hend_taylor_is_that_you_0");
	level dialog::remote("tayr_you_know_you_know_0");
	level dialog::function_13b3b16a("plrf_kane_can_you_run_a_0", 1);
	level dialog::remote("kane_not_from_here_i_m_0", 1.5);
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_373b56fb
	Namespace: alley
	Checksum: 0xAE615CF2
	Offset: 0x10B0
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_373b56fb()
{
	spawner::add_spawn_function_group("alley_wasps", "script_noteworthy", &function_5a13e2e9);
	spawner::add_spawn_function_group("amws_enemy", "script_noteworthy", &function_5a13e2e9);
	spawner::add_spawn_function_group("alley_egypt_intro_guy", "targetname", &function_1a98b08b, "alley_gone_hot");
	spawner::add_spawn_function_group("alley_nrc_intro_guy", "targetname", &function_1a98b08b, "alley_gone_hot");
	spawner::add_spawn_function_group("alley_nrc_front_guy", "targetname", &function_1a98b08b, "alley_gone_hot");
	spawner::add_spawn_function_group("alley_egypt_mid_guy", "targetname", &function_1a98b08b, "player_front_alley_end");
	spawner::add_spawn_function_group("alley_nrc_mid_guy", "targetname", &function_1a98b08b, "player_front_alley_end");
	spawner::add_spawn_function_group("alley_egypt_mid_guy", "targetname", &function_3631db68, "player_end_battle", "switching_alley_colors");
	spawner::add_spawn_function_group("alley_egypt_mid_retreat_guy", "targetname", &function_3631db68, "player_end_battle", "switching_alley_colors");
	namespace_38256252::function_17a34ad1();
	level flag::set("alley_event_started");
	level thread namespace_4124d::function_9f94867c();
	level thread function_7762bd57();
	level thread function_85ed7760();
	level thread function_ce0ce11f();
	level thread function_e9214214();
	function_d23acc2c();
	savegame::function_5d2cdd99();
	function_77ea6913();
	level notify("hash_6f120ac6");
	namespace_38256252::function_cee86b3b();
}

/*
	Name: function_1a98b08b
	Namespace: alley
	Checksum: 0x8AA37956
	Offset: 0x13B0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_1a98b08b(str_flag)
{
	self endon("death");
	self endon("hash_cb188399");
	self thread function_d8dddf8e();
	self namespace_391e4301::function_f08afb37();
	level flag::wait_till(str_flag);
	wait(randomIntRange(1, 3));
	self namespace_391e4301::function_f08afb37(0, 1);
}

/*
	Name: function_d8dddf8e
	Namespace: alley
	Checksum: 0xF96FC2E6
	Offset: 0x1450
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d8dddf8e()
{
	self endon("death");
	self ai::set_behavior_attribute("sprint", 1);
	self waittill("goal");
	self ai::set_behavior_attribute("sprint", 0);
}

/*
	Name: function_3631db68
	Namespace: alley
	Checksum: 0xB4E80B2C
	Offset: 0x14B0
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_3631db68(str_flag, str_endon)
{
	if(!isdefined(str_endon))
	{
		str_endon = "";
	}
	self endon("death");
	self endon(str_endon);
	level flag::wait_till(str_flag);
	self colors::set_force_color("b");
}

/*
	Name: function_5a13e2e9
	Namespace: alley
	Checksum: 0x7F7A71AC
	Offset: 0x1530
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5a13e2e9()
{
	self endon("death");
	var_8fee761f = GetEnt(self.target, "targetname");
	self setgoalpos(var_8fee761f.origin);
}

/*
	Name: function_d23acc2c
	Namespace: alley
	Checksum: 0x4C7EDF9C
	Offset: 0x1598
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_d23acc2c()
{
	level thread function_f15f3660();
	trigger::wait_till("trig_start_alley_intro");
	level clientfield::set("alley_fxanim_curtains", 1);
	spawn_manager::enable("sm_alley_egypt_intro");
	spawn_manager::enable("sm_alley_nrc_front");
	spawner::simple_spawn("alley_nrc_intro_guy");
	foreach(e_hero in level.heroes)
	{
		e_hero thread function_52b6b016();
	}
	foreach(e_player in level.players)
	{
		e_player thread function_ee5e3ead("player_alley_start");
	}
	level thread function_93a76cd8();
	level thread function_88dbcef();
	level util::waittill_any_timeout(30, "start_wasps", "intro_cleared");
	level notify("hash_44ba5526");
	spawn_manager::enable("sm_alley_nrc_intro_wasp");
	level flag::wait_till("player_mid_alley");
	level thread namespace_a6a248fc::function_767cbb3e();
	level thread function_fd17bfa8();
	level thread function_f4c9aec9();
	level scene::init("cin_ram_06_05_safiya_1st_friendlydown_init");
	spawn_manager::kill("sm_alley_egypt_intro");
	spawn_manager::enable("sm_alley_egypt_mid");
	spawn_manager::enable("sm_alley_nrc_mid");
	spawn_manager::enable("sm_alley_nrc_mid_wasp");
	level flag::wait_till("start_retreat_scenes");
	level thread function_3026c43e();
	level thread function_8dad6b29();
}

/*
	Name: function_f4c9aec9
	Namespace: alley
	Checksum: 0x411195D4
	Offset: 0x1908
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f4c9aec9()
{
	level endon("hash_48072105");
	trigger::wait_till("trig_start_retreat_scenes");
	level flag::set("start_retreat_scenes");
}

/*
	Name: function_8dad6b29
	Namespace: alley
	Checksum: 0x81B89E61
	Offset: 0x1958
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_8dad6b29()
{
	spawner::simple_spawn("alley_egypt_mid_retreat_guy");
	level util::waittill_notify_or_timeout("force_flanker_spawns", 3);
	spawner::simple_spawn("alley_nrc_mid_flanker");
	function_bd46ff5e();
}

/*
	Name: function_88dbcef
	Namespace: alley
	Checksum: 0xD76E6968
	Offset: 0x19C8
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_88dbcef()
{
	spawner::waittill_ai_group_amount_killed("alley_nrc_intro", 4);
	level notify("hash_23c6c016");
}

/*
	Name: function_93a76cd8
	Namespace: alley
	Checksum: 0x79A7E559
	Offset: 0x1A08
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_93a76cd8()
{
	level flag::wait_till("alley_gone_hot");
	trigger::use("trig_color_alley_intro", "targetname", undefined, 0);
	spawner::waittill_ai_group_amount_killed("alley_nrc_intro", 4);
	trigger::use("trig_color_alley_front", "targetname", undefined, 0);
	var_293366a0 = spawner::get_ai_group_sentient_count("alley_nrc_intro");
	while(var_293366a0 >= 2 && !level flag::get("player_mid_alley"))
	{
		var_293366a0 = spawner::get_ai_group_sentient_count("alley_nrc_intro");
		wait(0.25);
	}
	trigger::use("trig_color_alley_mid", "targetname", undefined, 0);
}

/*
	Name: function_ee5e3ead
	Namespace: alley
	Checksum: 0xB9DFA4CD
	Offset: 0x1B50
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_ee5e3ead(var_87be2839)
{
	self endon("disconnect");
	self.ignoreme = 1;
	level flag::clear("alley_gone_hot");
	level flag::wait_till(var_87be2839);
	self thread function_9cf4888f();
	level thread function_f5b7c9c();
	level flag::wait_till("alley_gone_hot");
	self.ignoreme = 0;
}

/*
	Name: function_f5b7c9c
	Namespace: alley
	Checksum: 0xFB9F0C6B
	Offset: 0x1C10
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_f5b7c9c()
{
	level endon("hash_8f9f4f12");
	wait(15);
	level flag::set("alley_gone_hot");
}

/*
	Name: function_9cf4888f
	Namespace: alley
	Checksum: 0x826A62BD
	Offset: 0x1C50
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9cf4888f()
{
	level endon("hash_8f9f4f12");
	self waittill("weapon_fired");
	level flag::set("alley_gone_hot");
}

/*
	Name: function_52b6b016
	Namespace: alley
	Checksum: 0x35DDC5FC
	Offset: 0x1C98
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_52b6b016()
{
	self endon("death");
	if(!isdefined(self))
	{
		return;
	}
	self.ignoreme = 1;
	self.ignoreall = 1;
	level flag::wait_till("alley_gone_hot");
	self.ignoreme = 0;
	self.ignoreall = 0;
}

/*
	Name: function_eb966d36
	Namespace: alley
	Checksum: 0x5E08327B
	Offset: 0x1D08
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_eb966d36()
{
	self endon("death");
	wait(randomIntRange(1, 3));
	nd_delete = GetNode("rooftop_delete_node", "targetname");
	self thread ai::force_goal(nd_delete, 32);
	self waittill("goal");
	self delete();
}

/*
	Name: function_fd17bfa8
	Namespace: alley
	Checksum: 0x4FD669BD
	Offset: 0x1DA8
	Size: 0x4DB
	Parameters: 0
	Flags: None
*/
function function_fd17bfa8()
{
	var_82f9827b = spawner::get_ai_group_ai("alley_egypt_intro_roofop");
	foreach(e_guy in var_82f9827b)
	{
		e_guy thread function_eb966d36();
	}
	var_d6395e7f = GetNodeArray("hendricks_jump_traversal", "script_noteworthy");
	foreach(node in var_d6395e7f)
	{
		SetEnableNode(node, 0);
	}
	function_25db07ad();
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 1);
	var_d8c194ab = GetNode("hendricks_alley_far", "targetname");
	level.var_2fd26037 thread ai::force_goal(var_d8c194ab, 64);
	level.var_2fd26037 waittill("goal");
	foreach(node in var_d6395e7f)
	{
		SetEnableNode(node, 1);
	}
	var_3715568c = GetNode("hendricks_alley_jump", "targetname");
	level.var_2fd26037 thread ai::force_goal(var_3715568c, 64);
	level.var_2fd26037 waittill("goal");
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
	function_42725e9e();
	level.var_2fd26037 colors::enable();
	spawn_manager::function_27bf2e8("sm_alley_nrc_end", 4);
	level thread function_71d278f4(6);
	spawn_manager::function_27bf2e8("sm_alley_nrc_end", 1);
	a_ai_allies = GetAITeamArray("allies");
	ArrayRemoveValue(a_ai_allies, level.var_2fd26037);
	foreach(ai in a_ai_allies)
	{
		ai notify("hash_d8fe841c");
		if(isdefined(ai colors::get_force_color()))
		{
			ai colors::set_force_color("c");
		}
	}
	level thread function_71d278f4(5);
	trigger::use("trig_color_alley_end", undefined, undefined, 0);
	a_ai_allies = undefined;
}

/*
	Name: function_25db07ad
	Namespace: alley
	Checksum: 0xFB747827
	Offset: 0x2290
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_25db07ad()
{
	level endon("hash_7721f10");
	spawn_manager::function_27bf2e8("sm_alley_nrc_mid", 1);
	level flag::set("start_retreat_scenes");
}

/*
	Name: function_42725e9e
	Namespace: alley
	Checksum: 0x3C0904AA
	Offset: 0x22E8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_42725e9e()
{
	if(!level flag::get("dead_alley_complete") && !level flag::get("player_at_sinkhole"))
	{
		level endon("hash_f2fae592");
		level endon("hash_75cadf3d");
		spawner::waittill_ai_group_amount_killed("back_alley_nrc_flankers", 1);
		spawner::waittill_ai_group_ai_count("back_alley_nrc_flankers", 1);
		trigger::use("trig_start_back_alley", "targetname");
	}
}

/*
	Name: function_77ea6913
	Namespace: alley
	Checksum: 0x7AD9D82A
	Offset: 0x23B0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_77ea6913()
{
	level thread function_71d278f4(9);
	level flag::wait_till("player_end_battle");
	spawner::simple_spawn("alley_nrc_end_frontline");
	spawn_manager::enable("sm_alley_nrc_end");
	spawn_manager::enable("sm_alley_nrc_end_wasp");
	spawner::simple_spawn("alley_nrc_end_amws");
	level flag::wait_till("dead_alley_complete");
	level thread dialog::remote("kane_systems_are_still_pr_0");
	spawn_manager::kill("sm_alley_egypt_mid", 1);
	level thread namespace_a6a248fc::function_973b77f9();
	level.var_2fd26037 colors::disable();
	var_d6535c67 = GetNode("hendricks_pre_vtol", "targetname");
	level.var_2fd26037 thread ai::force_goal(var_d6535c67, 32);
	level thread alley_cleanup();
}

/*
	Name: function_e9214214
	Namespace: alley
	Checksum: 0x83029D7C
	Offset: 0x2550
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_e9214214()
{
	level waittill("hash_c00a7aee");
	var_f377c056 = GetNode("table_flip_node", "targetname");
	SetEnableNode(var_f377c056, 0);
	ai_actor = spawner::simple_spawn_single("alley_table_flipper");
	ai_actor endon("death");
	ai_actor SetGoal(ai_actor.origin, 1, 32);
	ai_actor ai::set_ignoreall(1);
	ai_actor ai::set_ignoreme(1);
	level scene::init("cin_gen_aie_table_flip", ai_actor);
	level flag::wait_till("player_front_alley_end");
	util::magic_bullet_shield(ai_actor);
	level flag::wait_till("start_retreat_scenes");
	level scene::Play("cin_gen_aie_table_flip", ai_actor);
	SetEnableNode(var_f377c056, 1);
	ai_actor ai::set_behavior_attribute("disablearrivals", 1);
	ai_actor ClearForcedGoal();
	ai_actor SetGoal(var_f377c056, 0, 64);
	ai_actor ai::set_ignoreall(0);
	ai_actor ai::set_ignoreme(0);
	util::stop_magic_bullet_shield(ai_actor);
}

/*
	Name: function_3026c43e
	Namespace: alley
	Checksum: 0xABC5F337
	Offset: 0x2790
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3026c43e()
{
	trigger::wait_till("trig_wounded_crawl_scene_01");
	ai_actor = spawner::simple_spawn_single("wounded_crawl_01_actor");
	level scene::Play("wounded_crawl_scene_01", "targetname", ai_actor);
}

/*
	Name: function_bd46ff5e
	Namespace: alley
	Checksum: 0xD77F2330
	Offset: 0x2808
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_bd46ff5e()
{
	a_actors = spawner::simple_spawn("wounded_help_01_actor", &ai::set_ignoreall, 1);
	foreach(ai in a_actors)
	{
		ai util::magic_bullet_shield();
		ai ai::set_behavior_attribute("cqb", 1);
		ai SetGoal(struct::get("wounded_help_scene_01").origin, 1, 64);
	}
	Array::wait_till(a_actors, "goal");
	foreach(ai in a_actors)
	{
		ai util::stop_magic_bullet_shield();
	}
	level scene::Play("wounded_help_scene_01", "targetname", a_actors);
}

/*
	Name: function_ce0ce11f
	Namespace: alley
	Checksum: 0x77ECA6C6
	Offset: 0x29F0
	Size: 0x3EB
	Parameters: 0
	Flags: None
*/
function function_ce0ce11f()
{
	var_3fad69d2 = GetNodeArray("alley_post_rocket_attack_node", "targetname");
	foreach(node in var_3fad69d2)
	{
		SetEnableNode(node, 0);
	}
	scene::init("cin_ram_06_01_safiya_vign_killed");
	trigger::wait_till("trigger_rocket_attack");
	weapon = GetWeapon("quadtank_main_turret_rocketpods_straight");
	var_5513d70a = struct::get_array("alley_rocket_extra_launch_points", "script_noteworthy");
	for(i = 1; i <= var_5513d70a.size; i++)
	{
		var_1cb0b6fb = GetEnt("alley_extra_target_" + i, "targetname");
		var_1cb0b6fb.health = 100;
		var_90c119b0 = struct::get("alley_extra_launch_point_" + i).origin;
		MagicBullet(weapon, var_90c119b0, var_1cb0b6fb.origin, undefined, var_1cb0b6fb);
		wait(0.35);
	}
	e_target = GetEnt("alley_rocket_target", "targetname");
	e_target.health = 100;
	var_1987d48e = struct::get("alley_rocket_launch_point").origin;
	e_rocket = MagicBullet(weapon, var_1987d48e, e_target.origin, undefined, e_target);
	while(DistanceSquared(e_rocket.origin, e_target.origin) > 62500)
	{
		wait(0.05);
	}
	scene::Play("cin_ram_06_01_safiya_vign_killed");
	foreach(node in var_3fad69d2)
	{
		SetEnableNode(node, 1);
	}
	e_target delete();
	var_1cb0b6fb delete();
	level notify("hash_c00a7aee");
	function_38d8eaf7();
}

/*
	Name: function_f15f3660
	Namespace: alley
	Checksum: 0xADAF45AC
	Offset: 0x2DE8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f15f3660()
{
	trigger::wait_till("trig_start_alley_intro");
	level flag::set("flak_arena_defend_stop");
	level thread namespace_391e4301::function_1b048d07();
}

/*
	Name: function_38d8eaf7
	Namespace: alley
	Checksum: 0xD4FD262C
	Offset: 0x2E48
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_38d8eaf7()
{
	level clientfield::set("alley_fxanim_hunters", 1);
}

/*
	Name: function_9f94867c
	Namespace: alley
	Checksum: 0x90FE1041
	Offset: 0x2E78
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_9f94867c()
{
	level clientfield::set("alley_fxanim_hunters", 0);
}

/*
	Name: function_7762bd57
	Namespace: alley
	Checksum: 0xFF0AC85E
	Offset: 0x2EA8
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_7762bd57()
{
	var_b32b0647 = struct::get("alley_intro_objective");
	var_8d669714 = struct::get("alley_middle_objective");
	s_end = struct::get("alley_end_objective");
	objectives::set("cp_waypoint_breadcrumb", var_b32b0647);
	level flag::wait_till("player_alley_start");
	objectives::complete("cp_waypoint_breadcrumb", var_b32b0647);
	objectives::set("cp_waypoint_breadcrumb", var_8d669714);
	level flag::wait_till("player_front_alley_end");
	objectives::complete("cp_waypoint_breadcrumb", var_8d669714);
	objectives::set("cp_waypoint_breadcrumb", s_end);
	level flag::wait_till("dead_alley_complete");
	objectives::complete("cp_waypoint_breadcrumb", s_end);
}

/*
	Name: alley_cleanup
	Namespace: alley
	Checksum: 0xE0C1B1A1
	Offset: 0x3048
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function alley_cleanup()
{
	level thread function_71d278f4(4);
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db delete();
	}
	function_bb5a83d6();
	spawn_manager::kill("sm_alley_nrc_intro", 1);
	spawn_manager::kill("sm_alley_nrc_mid", 1);
	a_ai = GetAITeamArray("axis", "allies");
	level flag::wait_till("vtol_igc_trigger_used");
	foreach(e_ai in a_ai)
	{
		if(isdefined(e_ai) && e_ai != level.var_2fd26037)
		{
			e_ai delete();
		}
	}
}

/*
	Name: function_bb5a83d6
	Namespace: alley
	Checksum: 0xC43C1DA8
	Offset: 0x31D0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_bb5a83d6()
{
	a_vh = GetEntArray("veh_vtol_ride_player_truck_vh", "targetname");
	foreach(vh in a_vh)
	{
		vh.delete_on_death = 1;
		vh notify("death");
		if(!isalive(vh))
		{
			vh delete();
		}
	}
}

/*
	Name: function_71d278f4
	Namespace: alley
	Checksum: 0x6BBFD96C
	Offset: 0x32D0
	Size: 0x1E9
	Parameters: 1
	Flags: None
*/
function function_71d278f4(var_71905650)
{
	level notify("hash_c423ca59");
	level endon("hash_c360cc23");
	level endon("hash_c423ca59");
	var_30e37099 = struct::get("alley_end_objective").origin;
	while(1)
	{
		var_f72a8f03 = ArrayCombine(spawner::get_ai_group_ai("alley_egypt_intro"), spawner::get_ai_group_ai("alley_egypt_mid"), 0, 0);
		var_51e5da07 = var_f72a8f03.size - var_71905650;
		if(var_51e5da07 > 0)
		{
			var_9f7060a9 = ArraySort(var_f72a8f03, var_30e37099, 0, var_51e5da07);
			while(var_9f7060a9.size > 0)
			{
				for(i = 0; i < var_9f7060a9.size; i++)
				{
					if(isdefined(var_9f7060a9[i]))
					{
						var_9f7060a9[i] colors::disable();
						var_9f7060a9[i] thread function_c8849158(200);
						continue;
					}
					ArrayRemoveIndex(var_9f7060a9, i);
				}
				Array::wait_till(var_9f7060a9, "delete_success", 10);
				wait(0.05);
				break;
			}
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_c8849158
	Namespace: alley
	Checksum: 0x7AC8746D
	Offset: 0x34C8
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_c8849158(n_dist)
{
	self notify("hash_a348be44");
	self endon("death");
	self endon("hash_a348be44");
	b_can_delete = 0;
	while(b_can_delete == 0)
	{
		foreach(player in level.players)
		{
			if(Distance(self.origin, player.origin) > n_dist && player util::is_player_looking_at(self.origin, undefined, 0) == 0)
			{
				b_can_delete = 1;
			}
		}
		if(b_can_delete == 0)
		{
			wait(1);
		}
	}
	self notify("hash_264eced4");
	self delete();
}

