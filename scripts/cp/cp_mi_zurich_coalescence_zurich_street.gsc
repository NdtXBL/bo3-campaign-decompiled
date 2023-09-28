#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_city;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_1beb9396;

/*
	Name: main
	Namespace: namespace_1beb9396
	Checksum: 0xEFF79BF8
	Offset: 0x18E8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function main()
{
	scene::add_scene_func("p7_fxanim_cp_zurich_parking_wall_explode_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "garage_ambient_cleanup");
}

/*
	Name: function_9c1fc2fd
	Namespace: namespace_1beb9396
	Checksum: 0x7FF3D175
	Offset: 0x1930
	Size: 0x5AB
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(str_objective, var_74cd64bc)
{
	level flag::init("garage_entrance_attack");
	level flag::init("garage_entrance_cleared");
	level flag::init("garage_entrance_open");
	level flag::init("garage_ramp_cleared");
	level flag::init("street_clear");
	level flag::init("street_phalanx_scatter");
	level flag::init("street_truck_cover_available");
	level flag::init("street_intro_intersection_cleared");
	callback::on_spawned(&on_player_spawned);
	spawner::add_spawn_function_group("street_robot_custom_entry", "script_string", &function_9ae7d78);
	spawner::add_spawn_function_group("street_vehicle_ai_splined_entry", "script_noteworthy", &function_c89b08c9);
	spawner::add_spawn_function_group("garage_intro_guys", "script_noteworthy", &function_748fa5c2);
	spawner::add_spawn_function_group("garage_2nd_floor_intro_guys", "script_noteworthy", &function_9ff08320);
	spawner::add_spawn_function_group("street_intro_guys", "script_noteworthy", &function_721c929f);
	spawner::add_spawn_function_group("robot_phalanx", "script_noteworthy", &function_721c929f);
	spawner::add_spawn_function_group("street_turret_spawn_manager_robot", "targetname", &function_dcb29c2c);
	spawner::add_spawn_function_group("garage_breach_street_enemy", "targetname", &function_2ad4a40f);
	spawner::add_spawn_function_group("garage_breach_rushers", "script_aigroup", &function_42881589);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_8e9083ff::function_da579a5d(str_objective, 1);
		level.var_3d556bcd.goalRadius = 32;
		var_35a3121c = namespace_8e9083ff::function_b0dd51f4("zurich_street_redshirts");
		trigger::use("zurich_street_start_colortrig");
		namespace_f815059a::function_e3750802();
		level thread namespace_f815059a::function_ab4451a1();
		level.var_ebb30c1a = [];
		function_48166ad7();
		level clientfield::set("intro_ambience", 1);
		exploder::exploder("streets_tower_wasp_swarm");
		level clientfield::set("zurich_city_ambience", 1);
		level thread function_1be1a835();
		level thread namespace_67110270::function_db37681();
		level thread namespace_f815059a::function_da30164f();
		load::function_a2995f22();
	}
	vh_turret = spawner::simple_spawn_single("street_turret", &function_5268b119);
	level thread function_ce297ff6(var_74cd64bc);
	level thread function_1b074d61();
	level thread namespace_f815059a::function_9b9c35d7();
	function_b0c3c450();
	level clientfield::set("intro_ambience", 0);
	var_62e3398b = GetSpawnerArray("robot_phalanx", "script_noteworthy");
	Array::thread_all(var_62e3398b, &spawner::remove_spawn_function, &function_721c929f);
	callback::remove_on_spawned(&on_player_spawned);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_1beb9396
	Checksum: 0xC0D2D33D
	Offset: 0x1EE8
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_8e9083ff::function_4d032f25(0);
	level thread namespace_8e9083ff::function_4a00a473("street");
}

/*
	Name: function_b0c3c450
	Namespace: namespace_1beb9396
	Checksum: 0x2C6AB968
	Offset: 0x1F50
	Size: 0x50B
	Parameters: 0
	Flags: None
*/
function function_b0c3c450()
{
	namespace_8e9083ff::enable_nodes("garage_entrance_nodes", "script_noteworthy", 0);
	namespace_8e9083ff::enable_nodes("garage_intro_enemies", undefined, 0);
	level scene::init("p7_fxanim_cp_zurich_parking_wall_explode_bundle");
	level thread function_1b8ff897();
	level thread function_9a1931bc();
	vh_vtol = GetVehicleNode("street_garage_vtol", "targetname") namespace_8e9083ff::function_a569867c(undefined, &function_b8380f70);
	level thread function_c8cc9a0d();
	level thread function_6a364612();
	level thread function_ba4b9ec5();
	level flag::wait_till("street_battle_intersection_reached");
	wait(0.05);
	namespace_8e9083ff::function_33ec653f("street_intersection_raven_soldier_spawn_manager", undefined, undefined, &namespace_8e9083ff::function_d065a580);
	level.var_3d556bcd thread function_4e8285e0();
	level flag::wait_till("street_civs_start");
	level thread namespace_8e9083ff::function_e7fdcb95("street_phalanx", "phalanx_forward", 6, 1, undefined, "street_phalanx_scatter", 2);
	wait(0.05);
	spawn_manager::enable("street_spawn_manager");
	level flag::wait_till("street_balcony_spawn_closet_available");
	vh_vtol = GetVehicleNode("street_garage_vtol2", "targetname") namespace_8e9083ff::function_a569867c(undefined, &function_b8380f70);
	wait(0.05);
	spawn_manager::enable("street_balcony_reinforcement_spawn_manager");
	namespace_8e9083ff::function_33ec653f("street_garage_roof_raven_soldier_spawn_manager", undefined, undefined, &namespace_8e9083ff::function_d065a580);
	spawn_manager::function_27bf2e8("street_balcony_reinforcement_spawn_manager", 2);
	var_64e85e6d = spawn_manager::get_ai("street_balcony_reinforcement_spawn_manager");
	foreach(ai in var_64e85e6d)
	{
		if(ai.script_noteworthy === "street_balcony_robot_sniper")
		{
			continue;
		}
		ai ai::set_behavior_attribute("move_mode", "rusher");
	}
	var_b3b33e02 = spawn_manager::get_ai("street_wasp_spawn_manager");
	Array::thread_all(var_b3b33e02, &function_90c5d999);
	spawn_manager::kill("street_spawn_manager", 1);
	level flag::set("street_clear");
	savegame::function_5d2cdd99();
	wait(3);
	var_66b24a60 = namespace_8e9083ff::function_3789d4db("street_garage_entrance_open_trig", undefined, 700, 768);
	var_66b24a60 thread function_3a6344d1(5);
	var_66b24a60 waittill("trigger");
	var_66b24a60 delete();
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	function_4d92b2c7();
	level flag::set("garage_entrance_open");
}

/*
	Name: function_ba4b9ec5
	Namespace: namespace_1beb9396
	Checksum: 0x58551D60
	Offset: 0x2468
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_ba4b9ec5()
{
	level.var_3d556bcd dialog::say("kane_what_does_it_want_0", 1);
	level dialog::function_13b3b16a("plyr_right_now_i_think_i_0", 1);
	level.var_3d556bcd dialog::say("kane_it_knows_we_re_comin_0", 1);
}

/*
	Name: function_242cb817
	Namespace: namespace_1beb9396
	Checksum: 0xE43A4532
	Offset: 0x24F0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_242cb817()
{
	level flag::wait_till("garage_entrance_cleared");
	level.var_3d556bcd dialog::say("kane_we_have_to_move_thro_0", 1);
	level flag::wait_till("flag_start_plyr_controlling_vo");
	level dialog::function_13b3b16a("plyr_controlling_these_ro_0", 1);
	trigger::wait_for_either("garage_kane_rooftop_colortrig", "garage_kane_exit_colortrig");
	level.var_3d556bcd dialog::say("kane_stay_with_me_3", 1);
	level.var_3d556bcd dialog::say("kane_we_ll_get_through_th_0", 2);
	level flag::set("flag_start_kane_it_won_t_vo_done");
}

/*
	Name: function_568e2e07
	Namespace: namespace_1beb9396
	Checksum: 0x98EE4F3C
	Offset: 0x2618
	Size: 0x553
	Parameters: 2
	Flags: None
*/
function function_568e2e07(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level flag::init("garage_entrance_attack");
		level flag::init("garage_entrance_cleared");
		level flag::init("garage_entrance_open");
		level flag::init("garage_ramp_cleared");
		level flag::init("street_truck_cover_available", 1);
		level flag::set("street_balcony_spawn_closet_available");
		spawner::add_spawn_function_group("street_robot_custom_entry", "script_string", &function_9ae7d78);
		spawner::add_spawn_function_group("street_vehicle_ai_splined_entry", "script_noteworthy", &function_c89b08c9);
		spawner::add_spawn_function_group("garage_breach_rushers", "script_aigroup", &function_42881589);
		spawner::add_spawn_function_group("garage_intro_guys", "script_noteworthy", &function_748fa5c2);
		spawner::add_spawn_function_group("garage_2nd_floor_intro_guys", "script_noteworthy", &function_9ff08320);
		spawner::add_spawn_function_group("garage_breach_street_enemy", "targetname", &function_2ad4a40f);
		namespace_8e9083ff::function_da579a5d(str_objective, 1);
		level scene::init("p7_fxanim_cp_zurich_parking_wall_explode_bundle");
		level.var_ebb30c1a = [];
		level thread function_1b074d61();
		function_48166ad7(str_objective);
		load::function_a2995f22();
		wait(0.05);
		namespace_f815059a::function_e3750802();
		wait(0.05);
		vh_turret = spawner::simple_spawn_single("street_turret", &function_5268b119);
		wait(0.05);
		a_ai_allies = namespace_8e9083ff::function_33ec653f("garage_skipto_allies_spawn_manager");
		for(i = 0; i < 2; i++)
		{
			if(!isalive(a_ai_allies[i]))
			{
				continue;
			}
			a_ai_allies[i] util::magic_bullet_shield();
		}
		level thread function_8535a819();
		exploder::exploder("streets_tower_wasp_swarm");
		level clientfield::set("zurich_city_ambience", 1);
		level thread namespace_f815059a::function_ab4451a1();
		namespace_8e9083ff::enable_nodes("garage_entrance_nodes", "script_noteworthy", 0);
		namespace_8e9083ff::enable_nodes("garage_intro_enemies", undefined, 0);
		level thread namespace_67110270::function_db37681();
		level thread namespace_f815059a::function_da30164f();
		level thread function_a0abe6b6();
	}
	level thread function_410cfaac(var_74cd64bc);
	level thread function_242cb817();
	level thread namespace_8e9083ff::function_c83720c9();
	init_elevators();
	function_ec9dd4a5();
	function_b7d40ae();
	function_7a0e84a8();
	level notify("hash_c7263fa8");
	level thread namespace_8e9083ff::function_2361541e("garage");
	function_2480a40a();
	level thread function_d987ae9();
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_5b6ddf20
	Namespace: namespace_1beb9396
	Checksum: 0xC216E948
	Offset: 0x2B78
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_5b6ddf20(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_8e9083ff::function_4d032f25(0);
	level thread namespace_8e9083ff::function_4a00a473("garage");
}

/*
	Name: function_2480a40a
	Namespace: namespace_1beb9396
	Checksum: 0x319AE5E8
	Offset: 0x2BE0
	Size: 0x7D5
	Parameters: 0
	Flags: None
*/
function function_2480a40a()
{
	level thread function_1c9e622e();
	level thread function_dc91abc9();
	level thread function_b3a34ca5();
	level thread function_34ad4dc8();
	level flag::wait_till("garage_entrance_open");
	if(isdefined(level.BZM_ZURICHDialogue1_1Callback))
	{
		level thread [[level.BZM_ZURICHDialogue1_1Callback]]();
	}
	namespace_8e9083ff::enable_nodes("garage_entrance_nodes", "script_noteworthy");
	namespace_8e9083ff::enable_nodes("garage_intro_enemies");
	spawn_manager::enable("street_garage_breach_spawn_manger");
	wait(0.05);
	spawn_manager::enable("garage_allies_spawn_manager");
	wait(0.05);
	level thread namespace_8e9083ff::function_33ec653f("garage_intro_enemy_fake_spawn_manager", undefined, undefined, &function_748fa5c2);
	wait(0.05);
	spawn_manager::kill("street_allies_spawn_manager", 1);
	level thread function_b863f1b1();
	trigger::wait_till("street_exit_zone_trig");
	var_64e85e6d = spawn_manager::get_ai("street_turret_spawn_manager");
	Array::thread_all(var_64e85e6d, &function_bb52655d);
	spawn_manager::kill("street_turret_spawn_manager", 1);
	if(level.players.size < 3)
	{
		a_ai_snipers = GetEntArray("street_balcony_robot_sniper", "script_noteworthy");
		foreach(ai in a_ai_snipers)
		{
			if(isalive(ai))
			{
				ai kill();
			}
		}
	}
	level thread function_1418d19();
	var_9f88d117 = GetEnt("garage_intro_glass_weapon_clip", "targetname");
	var_9f88d117 delete();
	trigger::wait_till("garage_ramp_spawn_manager_trig");
	level thread spawn_manager::function_5000af1e("garage_ramp_spawn_manager", &function_bdb3b32d);
	spawn_manager::enable("garage_ramp_spawn_manager");
	trigger::wait_till("garage_robots_spawn_manager_trig");
	spawn_manager::enable("garage_robots_spawn_manager");
	spawn_manager::enable("garage_2nd_floor_allies_spawn_manager");
	trigger::wait_till("garage_third_floor_trig");
	savegame::function_5d2cdd99();
	level thread function_e804203a();
	level flag::wait_till("garage_end_phalanx_scatter");
	var_b2d1f880 = GetEnt("garage_upper_floor_left_goaltrig", "targetname");
	var_d587bca1 = GetEnt("garage_upper_floor_right_goaltrig", "targetname");
	var_bb5c7c43 = GetEnt("garage_exit_gate_left_trig", "targetname");
	var_678e7878 = GetEnt("garage_exit_gate_right_trig", "targetname");
	a_ai_enemies = GetAISpeciesArray("axis", "robot");
	Array::run_all(a_ai_enemies, &function_932e49ba, var_b2d1f880, var_d587bca1, var_bb5c7c43, var_678e7878);
	level flag::wait_till("garage_gate_open");
	var_26d693b1 = spawner::get_ai_group_ai("intro_hero_redshirts");
	Array::run_all(var_26d693b1, &util::stop_magic_bullet_shield);
	savegame::function_5d2cdd99();
	spawn_manager::kill("garage_ramp_spawn_manager", 1);
	spawn_manager::kill("garage_robots_spawn_manager", 1);
	spawn_manager::kill("garage_2nd_floor_allies_spawn_manager", 1);
	a_ai_enemies = GetAISpeciesArray("axis", "robot");
	foreach(ai in a_ai_enemies)
	{
		if(!ai istouching(var_bb5c7c43) && !ai istouching(var_678e7878))
		{
			ai kill();
		}
	}
	trigger::wait_till("garage_exit_zone_trig");
	if(level.players.size == 1)
	{
		a_ai_enemies = GetAISpeciesArray("axis", "robot");
		foreach(ai in a_ai_enemies)
		{
			ai.overrideActorDamage = &namespace_8e9083ff::function_8ac3f026;
		}
	}
}

/*
	Name: function_bb52655d
	Namespace: namespace_1beb9396
	Checksum: 0xD5FE1721
	Offset: 0x33C0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_bb52655d()
{
	var_9bfba9d9 = GetEnt("street_center_goaltrig", "targetname");
	if(self istouching(var_9bfba9d9))
	{
		return;
	}
	self kill();
}

/*
	Name: function_bdb3b32d
	Namespace: namespace_1beb9396
	Checksum: 0x1D36EEFC
	Offset: 0x3430
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_bdb3b32d()
{
	spawn_manager::function_347e835a("garage_ramp_spawn_manager");
	spawner::waittill_ai_group_ai_count("garage_entrance_robots", 0);
	level flag::set("garage_ramp_cleared");
	var_64e85e6d = spawner::get_ai_group_ai("garage_saffold_robots");
	foreach(ai in var_64e85e6d)
	{
		ai ai::set_ignoreme(0);
		ai.overrideActorDamage = &namespace_8e9083ff::function_8ac3f026;
	}
}

/*
	Name: function_e804203a
	Namespace: namespace_1beb9396
	Checksum: 0x3B5E1623
	Offset: 0x3558
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_e804203a()
{
	trigger::wait_till("garage_phalanx_spawn_trig");
	namespace_8e9083ff::function_e7fdcb95("garage_left_path_phalanx", "phanalx_wedge", 3, 1, 0.1, "garage_end_phalanx_scatter", 3);
}

/*
	Name: function_932e49ba
	Namespace: namespace_1beb9396
	Checksum: 0x908A6A3C
	Offset: 0x35C0
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_932e49ba(var_b2d1f880, var_d587bca1, var_bb5c7c43, var_678e7878)
{
	if(self istouching(var_b2d1f880))
	{
		self SetGoal(var_bb5c7c43);
		return;
	}
	else if(self istouching(var_d587bca1))
	{
		self SetGoal(var_678e7878);
		return;
	}
	self SetGoal(var_bb5c7c43);
}

/*
	Name: function_b863f1b1
	Namespace: namespace_1beb9396
	Checksum: 0xACEC4120
	Offset: 0x3670
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_b863f1b1()
{
	spawn_manager::function_347e835a("street_garage_breach_spawn_manger");
	spawner::waittill_ai_group_ai_count("garage_breach_rushers", 1);
	level flag::set("garage_entrance_attack");
	spawn_manager::function_72e3dd35("street_garage_breach_spawn_manger");
	exploder::stop_exploder("street_parking_wall_exp");
	level flag::set("garage_entrance_cleared");
	savegame::function_5d2cdd99();
	spawn_manager::function_72e3dd35("garage_allies_spawn_manager");
	if(level.players.size < 3)
	{
		var_b04fa3dc = struct::get("garage_intro_enemy_fake_spawn_manager");
		var_fb75ccb0 = Array::remove_dead(var_b04fa3dc.a_ai);
		foreach(ai in var_fb75ccb0)
		{
			ai.script_accuracy = 0.2;
		}
	}
}

/*
	Name: function_a0abe6b6
	Namespace: namespace_1beb9396
	Checksum: 0x43531066
	Offset: 0x3830
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_a0abe6b6()
{
	var_66b24a60 = namespace_8e9083ff::function_3789d4db("street_garage_entrance_open_trig", undefined, 720, 768);
	var_66b24a60 thread function_3a6344d1(4);
	var_66b24a60 waittill("trigger");
	var_66b24a60 delete();
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	function_4d92b2c7();
	level flag::set("garage_entrance_open");
}

/*
	Name: function_ce297ff6
	Namespace: namespace_1beb9396
	Checksum: 0x716ECAAB
	Offset: 0x3900
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_ce297ff6(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		objectives::set("cp_level_zurich_assault_hq_obj");
		objectives::breadcrumb("intro_breadcrumb_trig2", "cp_waypoint_breadcrumb");
	}
	trigger::wait_till("truck_burst_breadcrumb_trig", undefined, undefined, 0);
	objectives::Hide("cp_level_zurich_assault_hq_obj");
	objectives::set("cp_level_zurich_assault_hq_awaiting_obj");
	level flag::wait_till("garage_entrance_cleared");
	objectives::Hide("cp_level_zurich_assault_hq_awaiting_obj");
	objectives::show("cp_level_zurich_assault_hq_obj");
	objectives::breadcrumb("street_garage_entrance_breadcrumb_trig", "cp_waypoint_breadcrumb");
}

/*
	Name: function_410cfaac
	Namespace: namespace_1beb9396
	Checksum: 0x9AD65422
	Offset: 0x3A18
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_410cfaac(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		objectives::set("cp_level_zurich_assault_hq_awaiting_obj");
		level flag::wait_till("garage_entrance_cleared");
		objectives::Hide("cp_level_zurich_assault_hq_awaiting_obj");
		objectives::set("cp_level_zurich_assault_hq_obj");
		objectives::breadcrumb("street_garage_entrance_breadcrumb_trig", "cp_waypoint_breadcrumb");
	}
	trigger::wait_till("street_garage_entrance_breadcrumb_trig", undefined, undefined, 0);
	objectives::Hide("cp_level_zurich_assault_hq_obj");
	objectives::show("cp_level_zurich_assault_hq_awaiting_obj");
	level flag::wait_till("garage_ramp_cleared");
	trigger::wait_till("street_garage_2nd_floor_breadcrumb_spot", undefined, undefined, 0);
	var_c226e38e = GetEnt("garage_cleanup_trig", "targetname");
	while(isdefined(var_c226e38e) && level.var_3d556bcd istouching(var_c226e38e))
	{
		wait(0.2);
	}
	objectives::Hide("cp_level_zurich_assault_hq_awaiting_obj");
	objectives::show("cp_level_zurich_assault_hq_obj");
	objectives::breadcrumb("garage_kane_rooftop_colortrig", "cp_waypoint_breadcrumb");
}

/*
	Name: on_player_spawned
	Namespace: namespace_1beb9396
	Checksum: 0xCA55D616
	Offset: 0x3C00
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self function_2e5e657b();
}

/*
	Name: function_2e5e657b
	Namespace: namespace_1beb9396
	Checksum: 0xD69536D4
	Offset: 0x3C28
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_2e5e657b()
{
	level endon("hash_4defcad0");
	self endon("death");
	if(level flag::get("street_balcony_spawn_closet_available"))
	{
		return;
	}
	while(1)
	{
		self waittill("weapon_fired");
		foreach(var_cbc51d9b in level.var_ebb30c1a)
		{
			if(!isalive(var_cbc51d9b))
			{
				continue;
			}
			var_b8f6e26f = self util::is_player_looking_at(var_cbc51d9b GetEye(), 0.98, 1, self);
			if(var_b8f6e26f && (isdefined(var_cbc51d9b.var_6e5e16ee) && var_cbc51d9b.var_6e5e16ee) && self util::is_ads())
			{
				trigger::use("street_vehicle_burst_scene_trig", undefined, undefined, 0);
				return;
			}
		}
	}
}

/*
	Name: function_dcb29c2c
	Namespace: namespace_1beb9396
	Checksum: 0x47EB2C7D
	Offset: 0x3DB8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_dcb29c2c()
{
	self endon("death");
	s_goal = struct::get("street_turret_enemy_goal_spot");
	self SetGoal(s_goal.origin, 0, 256);
}

/*
	Name: function_5268b119
	Namespace: namespace_1beb9396
	Checksum: 0xDCC031EE
	Offset: 0x3E20
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_5268b119()
{
	self endon("death");
	level endon("Garage");
	self vehicle::god_on();
	while(1)
	{
		self waittill("enter_vehicle");
		spawn_manager::enable("street_turret_spawn_manager", 1);
		self waittill("exit_vehicle");
		spawn_manager::disable("street_turret_spawn_manager", 1);
	}
}

/*
	Name: function_c89b08c9
	Namespace: namespace_1beb9396
	Checksum: 0x4AF24063
	Offset: 0x3EB0
	Size: 0x1EB
	Parameters: 1
	Flags: None
*/
function function_c89b08c9(nd_start)
{
	self endon("death");
	if(!isdefined(nd_start))
	{
		nd_start = GetVehicleNode(self.target, "targetname");
	}
	self DisableAimAssist();
	self vehicle_ai::function_81b6f1ac();
	self.team = "team3";
	self thread vehicle::get_on_and_go_path(nd_start);
	if(nd_start.script_string === "run_defend_logic")
	{
		self function_fd9eb46();
		return;
	}
	if(nd_start.script_string === "run_guard_logic")
	{
		self function_dbaa39f6();
		return;
	}
	else if(self.scriptvehicletype === "hunter")
	{
		self vehicle::god_on();
		self thread function_ba1c7fdb();
	}
	self waittill("reached_end_node");
	if(self.script_string === "stop_scripted")
	{
		self vehicle_ai::function_efe9815e();
		self EnableAimAssist();
		self.team = "axis";
		return;
	}
	else if(self.script_string === "run_wasp_attack_logic")
	{
		self function_3feabcbe();
		return;
	}
	self delete();
}

/*
	Name: function_9ae7d78
	Namespace: namespace_1beb9396
	Checksum: 0x7DDF042B
	Offset: 0x40A8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_9ae7d78()
{
	self endon("death");
	s_scene = struct::get(self.target);
	level scene::Play(s_scene.targetname, "targetname", self);
	if(isdefined(s_scene.target))
	{
		goal = GetEnt(s_scene.target, "targetname");
		if(!isdefined(goal))
		{
			goal = GetNode(s_scene.target, "targetname");
		}
		if(isdefined(goal))
		{
			self SetGoal(goal);
		}
	}
}

/*
	Name: function_892106c9
	Namespace: namespace_1beb9396
	Checksum: 0xB8C3EBB8
	Offset: 0x41A8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_892106c9()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self function_ade7ef6b();
	level waittill("hash_90cef371");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_ade7ef6b
	Namespace: namespace_1beb9396
	Checksum: 0x4DAE3908
	Offset: 0x4240
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_ade7ef6b()
{
	var_8a3b64d6 = namespace_8e9083ff::function_411dc61b(0, 35);
	if(RandomInt(100) <= var_8a3b64d6)
	{
		wait(0.05);
		self ai::set_behavior_attribute("rogue_control", "forced_level_3");
		self ai::set_behavior_attribute("rogue_control_speed", "sprint");
		self.team = "axis";
	}
}

/*
	Name: function_ba1c7fdb
	Namespace: namespace_1beb9396
	Checksum: 0xB5A80889
	Offset: 0x42F8
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_ba1c7fdb()
{
	self endon("death");
	self waittill("hash_3113e74d");
	self thread vehicle_ai::fire_for_time(100);
	self waittill("hash_5d07b3ec");
	self notify("fire_stop");
}

/*
	Name: function_721c929f
	Namespace: namespace_1beb9396
	Checksum: 0x79D90A3B
	Offset: 0x4350
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_721c929f()
{
	self endon("death");
	if(self.team == "allies")
	{
		self.script_accuracy = 0.1;
	}
	else
	{
		self.var_6e5e16ee = 1;
	}
	if(!SessionModeIsCampaignZombiesGame())
	{
		self util::magic_bullet_shield();
	}
	if(self.script_string === "intro_redshirt")
	{
		return;
	}
	level flag::wait_till("street_phalanx_scatter");
	if(!SessionModeIsCampaignZombiesGame())
	{
		self.health = self.maxhealth;
		self util::stop_magic_bullet_shield();
	}
	if(self.team == "axis")
	{
		return;
	}
	level flag::wait_till("garage_entrance_attack");
	self colors::set_force_color("y");
}

/*
	Name: function_748fa5c2
	Namespace: namespace_1beb9396
	Checksum: 0xCE108411
	Offset: 0x4480
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_748fa5c2()
{
	self endon("death");
	if(!SessionModeIsCampaignZombiesGame())
	{
		self ai::set_ignoreall(1);
		self util::magic_bullet_shield();
	}
	if(self.team == "allies")
	{
		self.script_accuracy = 0.1;
		self ai::set_ignoreme(1);
	}
	trigger::wait_till("street_wall_approach_trig", undefined, undefined, 0);
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	level flag::wait_till("street_exit_zone_reached");
	if(!SessionModeIsCampaignZombiesGame())
	{
		self.health = self.maxhealth;
		self util::stop_magic_bullet_shield();
	}
	if(self.team == "axis")
	{
		self ai::set_behavior_attribute("move_mode", "rusher");
	}
}

/*
	Name: function_42881589
	Namespace: namespace_1beb9396
	Checksum: 0x9012247A
	Offset: 0x4600
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_42881589()
{
	self function_ade7ef6b();
}

/*
	Name: function_9ff08320
	Namespace: namespace_1beb9396
	Checksum: 0x9F4C6E0F
	Offset: 0x4628
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_9ff08320()
{
	self endon("death");
	if(self.team == "allies")
	{
		self.script_accuracy = 0.1;
	}
	if(!SessionModeIsCampaignZombiesGame())
	{
		self util::magic_bullet_shield();
	}
	level flag::wait_till("garage_ramp_reached");
	if(!SessionModeIsCampaignZombiesGame())
	{
		self util::stop_magic_bullet_shield();
	}
	self colors::set_force_color("y");
}

/*
	Name: function_b8380f70
	Namespace: namespace_1beb9396
	Checksum: 0x6D9A47D6
	Offset: 0x46F8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_b8380f70()
{
	self endon("death");
	self.health = 100000;
	self.team = "axis";
	self.var_7a04481c = namespace_8e9083ff::function_411dc61b(4000, 1000);
	self.var_90937e6 = struct::get_array("street_vtol_crash_point");
	self vehicle::god_on();
	if(self.script_string !== "no_death")
	{
		self thread namespace_8e9083ff::function_6d571441();
	}
	self waittill("hash_5f96e13c");
	var_b0a9b597 = spawner::get_ai_group_ai("street_vtol_riders");
	Array::run_all(var_b0a9b597, &kill);
}

/*
	Name: function_2ad4a40f
	Namespace: namespace_1beb9396
	Checksum: 0x4A51B44E
	Offset: 0x4820
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_2ad4a40f()
{
	self endon("death");
	level flag::wait_till("garage_entrance_open");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_9a1931bc
	Namespace: namespace_1beb9396
	Checksum: 0xA2FE947B
	Offset: 0x4888
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_9a1931bc()
{
	level thread namespace_8e9083ff::function_33ec653f("street_intro_redshirts_fake_spawn_manager", undefined, undefined, &function_721c929f);
	level flag::wait_till("street_civs_start");
	trigger::use("street_allies_intro_battle_colortrig");
	level flag::wait_till("street_intro_intersection_cleared");
	trigger::use("street_kane_intersection_colortrig");
	trigger::use("street_allies_intro_colortrig");
	level flag::wait_till("street_truck_cover_available");
	trigger::use("street_allies_battle_colortrig");
	level flag::wait_till("street_balcony_spawn_closet_available");
	level.var_3d556bcd ai::set_ignoreme(1);
	level.var_3d556bcd thread namespace_8e9083ff::function_d0103e8d();
	level flag::wait_till("garage_entrance_attack");
	trigger::use("street_allies_attack_colortrig");
	level flag::wait_till("garage_entrance_cleared");
	trigger::use("street_allies_garage_enter_colortrig");
	trigger::wait_till("street_wall_approach_trig");
	trigger::use("street_kane_garage_colortrig");
	level flag::wait_till("street_exit_zone_reached");
	trigger::use("street_allies_garage_colortrig");
}

/*
	Name: function_8535a819
	Namespace: namespace_1beb9396
	Checksum: 0x9F79DF91
	Offset: 0x4AB8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_8535a819()
{
	trigger::use("street_allies_battle_colortrig");
	level.var_3d556bcd ai::set_ignoreme(1);
	level.var_3d556bcd thread namespace_8e9083ff::function_d0103e8d();
	level flag::wait_till("garage_entrance_attack");
	trigger::use("street_allies_attack_colortrig");
	level flag::wait_till("garage_entrance_cleared");
	trigger::use("street_allies_garage_enter_colortrig");
	trigger::wait_till("street_wall_approach_trig");
	trigger::use("street_kane_garage_colortrig");
}

/*
	Name: function_1c9e622e
	Namespace: namespace_1beb9396
	Checksum: 0xA8A49A97
	Offset: 0x4BB8
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_1c9e622e()
{
	level.var_3d556bcd ai::set_ignoreme(0);
	level flag::wait_till("garage_entrance_cleared");
	level.var_3d556bcd namespace_8e9083ff::function_121ba443();
	level.var_3d556bcd thread function_c9dccfc4();
	namespace_8e9083ff::function_c049667c(1);
	a_ai_allies = GetAITeamArray("allies");
	foreach(ai in a_ai_allies)
	{
		if(ai util::is_hero() || ai.script_noteworthy === "garage_intro_guys")
		{
			continue;
		}
		ai colors::set_force_color("y");
	}
	spawn_manager::function_347e835a("garage_ramp_spawn_manager");
	trigger::use("garage_kane_intro_clear_colortrig");
	trigger::use("garage_redshirts_2nd_floor_colortrig");
	spawn_manager::function_27bf2e8("garage_ramp_spawn_manager", 1);
	trigger::use("garage_kane_2nd_floor_colortrig");
	level flag::wait_till("garage_ramp_reached");
	trigger::use("garage_kane_ramp_colortrig");
	trigger::wait_till("street_garage_2nd_floor_wasp_spawn_trig", undefined, undefined, 0);
	level flag::wait_till("garage_gate_open");
	a_ai_enemies = GetAISpeciesArray("axis", "robot");
	Array::wait_till(a_ai_enemies, "death");
	trigger::use("garage_kane_exit_colortrig");
	level flag::wait_till("garage_completed");
}

/*
	Name: function_c9dccfc4
	Namespace: namespace_1beb9396
	Checksum: 0xF176B63B
	Offset: 0x4EA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_c9dccfc4()
{
	level endon("hash_9903fa62");
	level flag::wait_till("garage_car_2nd_floor_standard_01_done");
	trigger::wait_till("garage_kane_left_change_color_colortrig");
	self colors::set_force_color("o");
	level flag::wait_till("garage_completed");
	self colors::set_force_color("b");
}

/*
	Name: function_82ecade4
	Namespace: namespace_1beb9396
	Checksum: 0x4E866F0A
	Offset: 0x4F58
	Size: 0x151
	Parameters: 3
	Flags: None
*/
function function_82ecade4(goal, n_min_wait, n_max_wait)
{
	if(!isdefined(n_min_wait))
	{
		n_min_wait = 0.3;
	}
	if(!isdefined(n_max_wait))
	{
		n_max_wait = 1.1;
	}
	a_ai = self;
	if(!IsArray(self))
	{
		a_ai = Array(self);
	}
	foreach(ai in a_ai)
	{
		wait(RandomFloatRange(n_min_wait, n_max_wait));
		if(isalive(ai))
		{
			ai SetGoal(goal);
		}
	}
}

/*
	Name: kill_ai
	Namespace: namespace_1beb9396
	Checksum: 0x843FC899
	Offset: 0x50B8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function kill_ai(n_delay)
{
	if(!isdefined(n_delay))
	{
		n_delay = 0;
	}
	self endon("death");
	wait(n_delay);
	self kill();
}

/*
	Name: function_6a364612
	Namespace: namespace_1beb9396
	Checksum: 0x91B214F6
	Offset: 0x5108
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_6a364612()
{
	level flag::wait_till("street_civs_start");
	spawn_manager::enable("street_wasp_spawn_manager");
	level flag::wait_till("street_clear");
	spawn_manager::kill("street_wasp_spawn_manager", 1);
}

/*
	Name: function_34ad4dc8
	Namespace: namespace_1beb9396
	Checksum: 0xFB0A3E7E
	Offset: 0x5190
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_34ad4dc8()
{
	level flag::wait_till("garage_entrance_open");
	spawn_manager::enable("garage_entrance_wasp_spawn_manager");
	trigger::wait_till("street_garage_2nd_floor_wasp_spawn_trig", undefined, undefined, 0);
	spawn_manager::enable("street_garage_2nd_floor_wasp_end_spawnmanager");
	level flag::wait_till("garage_gate_open");
	var_b3b33e02 = spawn_manager::get_ai("street_garage_2nd_floor_wasp_end_spawnmanager");
	spawn_manager::kill("street_garage_2nd_floor_wasp_end_spawnmanager", 1);
	Array::run_all(var_b3b33e02, &kill);
}

/*
	Name: function_3feabcbe
	Namespace: namespace_1beb9396
	Checksum: 0x70B94C3E
	Offset: 0x5290
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_3feabcbe()
{
	self endon("death");
	self vehicle_ai::function_efe9815e();
	self EnableAimAssist();
	self.team = "axis";
	var_284ca6ef = GetEnt("garage_wasp_goaltrig", "targetname");
	self SetGoal(var_284ca6ef);
}

/*
	Name: function_fd9eb46
	Namespace: namespace_1beb9396
	Checksum: 0xE2DB865C
	Offset: 0x5330
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_fd9eb46()
{
	self endon("death");
	self waittill("reached_end_node");
	self vehicle_ai::function_efe9815e();
	self EnableAimAssist();
	self.team = "axis";
	var_284ca6ef = GetEnt("garage_wasp_defend_goaltrig", "targetname");
	self SetGoal(var_284ca6ef);
}

/*
	Name: function_dbaa39f6
	Namespace: namespace_1beb9396
	Checksum: 0xD9EB2E69
	Offset: 0x53E0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_dbaa39f6()
{
	self endon("death");
	self waittill("reached_end_node");
	self vehicle_ai::function_efe9815e();
	self EnableAimAssist();
	self.team = "axis";
	self function_90c5d999();
}

/*
	Name: function_90c5d999
	Namespace: namespace_1beb9396
	Checksum: 0x2BE50FB6
	Offset: 0x5460
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_90c5d999()
{
	var_284ca6ef = GetEnt("street_center_goaltrig", "targetname");
	self SetGoal(var_284ca6ef);
}

/*
	Name: function_11cc2d60
	Namespace: namespace_1beb9396
	Checksum: 0xB3326B24
	Offset: 0x54B8
	Size: 0x139
	Parameters: 7
	Flags: None
*/
function function_11cc2d60(nd_start, n_time, var_6f3beb2b, n_time_min, n_time_max, var_4339be5c, var_6dcbc9a2)
{
	if(!isdefined(n_time))
	{
		n_time = 0.2;
	}
	if(!isdefined(var_6f3beb2b))
	{
		var_6f3beb2b = 8;
	}
	if(isdefined(n_time_min) && isdefined(n_time_max))
	{
		n_time = RandomFloatRange(n_time_min, n_time_max);
	}
	if(isdefined(n_time_max) && isdefined(var_6dcbc9a2))
	{
		var_6f3beb2b = randomIntRange(n_time_max, var_6dcbc9a2);
	}
	var_c779405 = [];
	for(i = 0; i < var_6f3beb2b; i++)
	{
		var_c779405[i] = spawner::simple_spawn_single(self, &function_c89b08c9, nd_start);
		wait(n_time);
	}
	return var_c779405;
}

/*
	Name: function_1b8ff897
	Namespace: namespace_1beb9396
	Checksum: 0x45D5D656
	Offset: 0x5600
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_1b8ff897()
{
	level endon("hash_5539c1de");
	namespace_8e9083ff::function_1b3dfa61("p7_fxanim_cp_zurich_car_crash_06_bundle_trig", undefined, 1300, 768);
	level flag::set("street_intro_intersection_cleared");
	level scene::Play("p7_fxanim_cp_zurich_car_crash_06_bundle");
}

/*
	Name: function_1be1a835
	Namespace: namespace_1beb9396
	Checksum: 0xDDFBB031
	Offset: 0x5680
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_1be1a835()
{
	scene::add_scene_func("p7_fxanim_cp_zurich_truck_crash_01_bundle", &function_93e3e895, "play");
	scene::add_scene_func("p7_fxanim_cp_zurich_truck_crash_01_bundle", &function_8c1a1bb7, "done");
	wait(0.05);
	level scene::init("p7_fxanim_cp_zurich_truck_crash_01_bundle");
	wait(0.05);
	namespace_8e9083ff::function_1b3dfa61("street_vehicle_burst_scene_trig", undefined, 1300, 512);
	level flag::set("street_phalanx_scatter");
	level scene::Play("p7_fxanim_cp_zurich_truck_crash_01_bundle");
	savegame::function_5d2cdd99();
}

/*
	Name: function_93e3e895
	Namespace: namespace_1beb9396
	Checksum: 0x65045040
	Offset: 0x5790
	Size: 0x433
	Parameters: 1
	Flags: None
*/
function function_93e3e895(a_ents)
{
	var_a146f241 = GetNodeArray("street_intro_redshirts", "targetname");
	var_9b1ed538 = GetNodeArray("street_intro_truck_cover_nodes", "targetname");
	var_b04fa3dc = struct::get("street_intro_redshirts_fake_spawn_manager");
	var_a3f74aa3 = var_b04fa3dc.a_ai;
	var_a3f74aa3 = Array::remove_dead(var_a3f74aa3);
	foreach(nd in var_9b1ed538)
	{
		SetEnableNode(nd, 0);
	}
	a_ents["truck_crash_01_veh"] thread function_d700903e();
	a_ents["truck_crash_01_veh"] waittill("hash_84bfd73b");
	a_ents["truck_crash_01_veh"] notify("stop_damage");
	var_a3f74aa3 = Array::remove_dead(var_a3f74aa3);
	foreach(ai in var_a3f74aa3)
	{
		if(!isalive(ai))
		{
			continue;
		}
		ai util::stop_magic_bullet_shield();
		if(ai.script_string === "intro_redshirt")
		{
			ai kill();
		}
	}
	var_a146f241 = GetNodeArray("street_intro_redshirts", "targetname");
	var_9b1ed538 = GetNodeArray("street_intro_truck_cover_nodes", "targetname");
	foreach(nd in var_a146f241)
	{
		SetEnableNode(nd, 0);
	}
	foreach(nd in var_9b1ed538)
	{
		SetEnableNode(nd, 1);
	}
	level flag::set("street_truck_cover_available");
	PhysicsExplosionSphere(a_ents["truck_crash_01_veh"].origin, 512, 0, 1.2);
}

/*
	Name: function_c8cc9a0d
	Namespace: namespace_1beb9396
	Checksum: 0x9303CE47
	Offset: 0x5BD0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_c8cc9a0d()
{
	s_rpg = struct::get("street_intro_robot_magic_bullet_start");
	s_rpg_target = struct::get(s_rpg.target);
	var_9faa0c88 = GetWeapon("launcher_standard");
	MagicBullet(var_9faa0c88, s_rpg.origin, s_rpg_target.origin);
	wait(1);
	RadiusDamage(s_rpg.origin, 64, 700, 500);
}

/*
	Name: function_8c1a1bb7
	Namespace: namespace_1beb9396
	Checksum: 0xDE396565
	Offset: 0x5CB0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_8c1a1bb7(a_ents)
{
	level flag::set("street_balcony_spawn_closet_available");
	self thread namespace_8e9083ff::function_9f90bc0f(a_ents, "garage_ambient_cleanup");
}

/*
	Name: function_4e8285e0
	Namespace: namespace_1beb9396
	Checksum: 0xED88D74A
	Offset: 0x5D08
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_4e8285e0()
{
	level flag::wait_till("street_civs_start");
	var_295a1e1f = GetEntArray("zurich_intro_camera_ai", "targetname");
	var_9cb1bda3 = ArrayGetClosest(self.origin, var_295a1e1f);
	if(!isdefined(var_9cb1bda3))
	{
		return;
	}
	self lookAtPos(var_9cb1bda3.origin);
	self thread ai::shoot_at_target("normal", var_9cb1bda3);
	wait(2);
	if(!isalive(var_9cb1bda3))
	{
		return;
	}
	var_9cb1bda3 kill();
}

/*
	Name: function_dc91abc9
	Namespace: namespace_1beb9396
	Checksum: 0xA652785F
	Offset: 0x5E10
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function function_dc91abc9()
{
	level scene::init("p7_fxanim_cp_zurich_car_crash_03_bundle");
	trigger::wait_till("street_exit_zone_trig");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_01_bundle", &function_d8cdc243, "play");
	level thread scene::Play("p7_fxanim_cp_zurich_car_crash_01_bundle");
	function_723d47ab();
	level scene::Play("p7_fxanim_cp_zurich_car_crash_02_bundle");
	level flag::set("garage_car_2nd_floor_standard_01_done");
	trigger::wait_till("garage_third_floor_trig");
	var_9582077f = GetEntArray("garage_car_scene_trig", "targetname");
	Array::thread_all(var_9582077f, &function_95c63963);
	wait(21);
	level flag::wait_till_timeout(15, "garage_entrance_cleared");
	namespace_8e9083ff::function_1b3dfa61("garage_exit_gate_trig", undefined, 400.5, 512);
	function_bab1ff00("garage_umbra_gate", 1);
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_03_bundle", &function_646cd830, "play");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_03_bundle", &function_5d018732, "done");
	level scene::Play("p7_fxanim_cp_zurich_car_crash_03_bundle");
	level flag::set("garage_gate_open");
}

/*
	Name: function_723d47ab
	Namespace: namespace_1beb9396
	Checksum: 0xCD6181AE
	Offset: 0x6070
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_723d47ab()
{
	if(level.activePlayers.size < 2)
	{
		level endon("hash_c88a6904");
	}
	namespace_8e9083ff::function_3adbd846("garage_car_2nd_floor_standard_01_trig", undefined, 1);
}

/*
	Name: function_1418d19
	Namespace: namespace_1beb9396
	Checksum: 0x4C8EE678
	Offset: 0x60C0
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_1418d19()
{
	var_f6338e1d = struct::get_array("train_crash_glass_break_spot");
	var_c7b1d4be = struct::get("train_crash_sound_spot");
	playsoundatposition("evt_train_crash_front", var_c7b1d4be.origin);
	wait(6);
	foreach(e_player in level.activePlayers)
	{
		e_player PlayRumbleOnEntity("damage_heavy");
	}
	Earthquake(0.25, 2, var_c7b1d4be.origin, 10000);
	foreach(var_ca17143d in var_f6338e1d)
	{
		glassRadiusDamage(var_ca17143d.origin, var_ca17143d.radius, 700, 500, "MOD_GRENADE_SPLASH");
		wait(RandomFloatRange(0.2, 0.3));
	}
}

/*
	Name: function_4d92b2c7
	Namespace: namespace_1beb9396
	Checksum: 0xC802C8E8
	Offset: 0x62D0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4d92b2c7()
{
	level thread scene::Play("p7_fxanim_cp_zurich_parking_wall_explode_bundle");
	var_e8009655 = GetEnt("garage_entrance_wall", "targetname");
	var_e8009655 delete();
}

/*
	Name: function_3a6344d1
	Namespace: namespace_1beb9396
	Checksum: 0x87D1A811
	Offset: 0x6340
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_3a6344d1(n_delay)
{
	if(!isdefined(n_delay))
	{
		n_delay = 1;
	}
	self endon("death");
	s_look_spot = struct::get("train_crash_sound_spot");
	wait(n_delay);
	do
	{
		wait(0.1);
	}
	while(!!namespace_8e9083ff::function_f8645b6(-1, s_look_spot.origin, 0.92));
	self trigger::use();
}

/*
	Name: function_48166ad7
	Namespace: namespace_1beb9396
	Checksum: 0xB773EEA6
	Offset: 0x63F0
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_48166ad7(str_objective)
{
	var_80658d78 = Array("p7_fxanim_cp_zurich_car_crash_01_bundle", "p7_fxanim_cp_zurich_car_crash_02_bundle", "p7_fxanim_cp_zurich_car_crash_06_bundle");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_stuck_bundle", &function_96b02c44, "play");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_stuck_bundle", &function_e0bb6e8b, "done");
	level thread scene::Play("p7_fxanim_cp_zurich_car_crash_stuck_bundle");
	wait(0.05);
	foreach(var_a3d1f031 in var_80658d78)
	{
		scene::add_scene_func(var_a3d1f031, &function_c9765981, "play");
		scene::add_scene_func(var_a3d1f031, &function_e0bb6e8b, "done");
		level scene::init(var_a3d1f031);
		wait(0.05);
	}
	if(str_objective === "garage")
	{
		level thread scene::skipto_end("p7_fxanim_cp_zurich_car_crash_06_bundle");
		level thread scene::skipto_end("p7_fxanim_cp_zurich_truck_crash_01_bundle");
		exploder::exploder("street_truck_crash_fires");
		exploder::exploder("street_truck_crash_garage_linger");
		level flag::set("street_balcony_spawn_closet_available");
	}
}

/*
	Name: function_1b074d61
	Namespace: namespace_1beb9396
	Checksum: 0x702BDE27
	Offset: 0x6648
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_1b074d61()
{
	level endon("hash_9903fa62");
	while(1)
	{
		var_21c17e53 = GetAITeamArray("axis", "allies");
		level.var_ebb30c1a = ArrayCombine(var_21c17e53, level.activePlayers, 0, 0);
		wait(0.05);
	}
}

/*
	Name: function_d700903e
	Namespace: namespace_1beb9396
	Checksum: 0x7DDF1FEE
	Offset: 0x66C8
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_d700903e()
{
	self endon("death");
	self endon("stop_damage");
	while(1)
	{
		foreach(var_cbc51d9b in level.var_ebb30c1a)
		{
			if(isdefined(var_cbc51d9b) && var_cbc51d9b istouching(self))
			{
				var_cabb1f64 = isalive(var_cbc51d9b) && !var_cbc51d9b util::is_hero() && !isPlayer(var_cbc51d9b);
				is_player = isPlayer(var_cbc51d9b) || (isdefined(var_cbc51d9b.owner) && isPlayer(var_cbc51d9b.owner));
				if(var_cabb1f64)
				{
					var_cbc51d9b util::stop_magic_bullet_shield();
					var_cbc51d9b kill();
					continue;
				}
				if(is_player)
				{
					var_cbc51d9b DoDamage(var_cbc51d9b.health + 1000, var_cbc51d9b.origin, self, undefined, undefined, "MOD_HIT_BY_OBJECT");
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_42ac5715
	Namespace: namespace_1beb9396
	Checksum: 0x4E1AC480
	Offset: 0x68C8
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_42ac5715(str_ent_name, str_trig_name)
{
	var_efb53e77 = GetEnt(str_ent_name, "targetname");
	t_trig = GetEnt(str_trig_name, "targetname");
	var_a56fa84f = struct::get(t_trig.target);
	var_efb53e77 endon("death");
	t_trig endon("death");
	while(!var_efb53e77 istouching(t_trig))
	{
		wait(0.05);
	}
	RadiusDamage(var_a56fa84f.origin, var_a56fa84f.radius, 700, 500, var_efb53e77);
	t_trig delete();
}

/*
	Name: function_96b02c44
	Namespace: namespace_1beb9396
	Checksum: 0xB5F285C6
	Offset: 0x69F8
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_96b02c44(a_ents)
{
	foreach(e_car in a_ents)
	{
		/#
			RecordEnt(e_car);
		#/
		e_car thread util::auto_delete();
	}
}

/*
	Name: function_c9765981
	Namespace: namespace_1beb9396
	Checksum: 0x394E6F6F
	Offset: 0x6AB0
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_c9765981(a_ents)
{
	foreach(e_car in a_ents)
	{
		/#
			RecordEnt(e_car);
		#/
		e_car thread function_d700903e();
	}
}

/*
	Name: function_e0bb6e8b
	Namespace: namespace_1beb9396
	Checksum: 0x56C4FDF6
	Offset: 0x6B68
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_e0bb6e8b(a_ents)
{
	foreach(e_car in a_ents)
	{
		e_car notify("stop_damage");
	}
	self thread namespace_8e9083ff::function_9f90bc0f(a_ents, "rails_ambient_cleanup");
}

/*
	Name: function_646cd830
	Namespace: namespace_1beb9396
	Checksum: 0x4AA6662B
	Offset: 0x6C20
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_646cd830(a_ents)
{
	/#
		RecordEnt(a_ents["Dev Block strings are not supported"]);
	#/
	/#
		RecordEnt(a_ents["Dev Block strings are not supported"]);
	#/
	a_ents["car_crash_03"] thread function_d700903e();
	a_ents["car_crash_03_wall"] waittill("hash_c0199b64");
	var_e8009655 = GetEnt("garage_exit_wall", "targetname");
	var_e8009655 delete();
}

/*
	Name: function_5d018732
	Namespace: namespace_1beb9396
	Checksum: 0xE2CEDC3E
	Offset: 0x6D00
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_5d018732(a_ents)
{
	foreach(e_car in a_ents)
	{
		e_car notify("stop_damage");
	}
	self thread namespace_8e9083ff::function_9f90bc0f(a_ents, "rails_ambient_cleanup");
}

/*
	Name: function_95c63963
	Namespace: namespace_1beb9396
	Checksum: 0x2E6BD4D9
	Offset: 0x6DB8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_95c63963()
{
	self endon("death");
	/#
		Assert(isdefined(self.script_string), "Dev Block strings are not supported");
	#/
	self waittill("trigger");
	scene::add_scene_func(self.script_string, &function_91c120ae, "play");
	level scene::Play(self.script_string);
	self delete();
}

/*
	Name: function_91c120ae
	Namespace: namespace_1beb9396
	Checksum: 0xBB08DDE3
	Offset: 0x6E70
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_91c120ae(a_ents)
{
	var_19f54c8f = GetEntArray(self.scriptbundlename + "_gates", "targetname");
	Array::thread_all(var_19f54c8f, &function_9b734821, a_ents);
}

/*
	Name: function_3f5b8a5e
	Namespace: namespace_1beb9396
	Checksum: 0x18217BBF
	Offset: 0x6EE8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_3f5b8a5e(a_ents)
{
	var_19f54c8f = GetEntArray(self.scriptbundlename + "_gates", "targetname");
	Array::thread_all(var_19f54c8f, &function_74bdec69, a_ents);
}

/*
	Name: function_74bdec69
	Namespace: namespace_1beb9396
	Checksum: 0x4D638D32
	Offset: 0x6F60
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_74bdec69(a_ents)
{
	self endon("death");
	n_time = 0.5;
	n_dist = 44;
	if(self.script_noteworthy === "bottom")
	{
		n_dist = n_dist * -1;
	}
	self.v_start = self.origin;
	self moveto(self.origin + (0, 0, n_dist), n_time);
}

/*
	Name: function_9b734821
	Namespace: namespace_1beb9396
	Checksum: 0x7744D3BE
	Offset: 0x7010
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_9b734821(a_ents)
{
	self endon("death");
	var_1cc36e32 = GetEnt(self.targetname + "_trig", "targetname");
	if(isdefined(var_1cc36e32))
	{
		var_1cc36e32 waittill("trigger");
	}
	self moveto(self.v_start, 0.62);
}

/*
	Name: function_d8cdc243
	Namespace: namespace_1beb9396
	Checksum: 0x80FDAAF8
	Offset: 0x70A8
	Size: 0x14F
	Parameters: 1
	Flags: None
*/
function function_d8cdc243(a_ents)
{
	var_aea40fc = struct::get_array("garge_ramp_car_glass_break_spot");
	level waittill("hash_cc6fa4a6");
	foreach(var_222be1d9 in a_ents)
	{
		foreach(var_b28eb61c in var_aea40fc)
		{
			glassRadiusDamage(var_b28eb61c.origin, var_b28eb61c.radius, 700, 500, "MOD_GRENADE_SPLASH");
		}
	}
}

/*
	Name: init_elevators
	Namespace: namespace_1beb9396
	Checksum: 0xD993451
	Offset: 0x7200
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function init_elevators()
{
	var_ae75b4be = struct::get_array("garage_elevator_doors", "script_noteworthy");
	var_7be3ca60 = [];
	foreach(s in var_ae75b4be)
	{
		var_7be3ca60[n_index] = util::spawn_model(s.model, s.origin, s.angles);
		var_7be3ca60[n_index].targetname = s.targetname;
		var_7be3ca60[n_index].script_objective = "rails";
		wait(0.05);
	}
}

/*
	Name: function_b3a34ca5
	Namespace: namespace_1beb9396
	Checksum: 0xD529FDFE
	Offset: 0x7340
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_b3a34ca5()
{
	level endon("hash_e0d14dc8");
	level thread function_19764f0e();
	level thread function_60227c5();
	wait(2.1);
	level thread function_7248d34();
	wait(1.3);
	level thread function_adb65bc4();
	trigger::wait_till("garage_end_elevators_trig");
	function_9c0b8c73();
}

/*
	Name: function_19764f0e
	Namespace: namespace_1beb9396
	Checksum: 0x8F4EAFFD
	Offset: 0x73F0
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_19764f0e()
{
	level endon("hash_e0d14dc8");
	var_836db305 = GetEnt("garage_elevator_door_left_entrance2", "targetname");
	var_73d5b598 = GetEnt("garage_elevator_door_right_entrance2", "targetname");
	/#
		RecordEnt(var_836db305);
	#/
	/#
		RecordEnt(var_73d5b598);
	#/
	var_73d5b598 RotatePitch(-1, 0.1);
	var_836db305 moveto(var_836db305.origin + (0, 4 * -1, 0), 0.1);
	var_73d5b598 moveto(var_73d5b598.origin + (0, 4, 0), 0.1);
	var_73d5b598 waittill("movedone");
	while(1)
	{
		var_836db305 moveto(var_836db305.origin + (0, 36 * -1, 0), 0.45);
		var_73d5b598 moveto(var_73d5b598.origin + (0, 36, 0), 0.45);
		var_73d5b598 waittill("movedone");
		var_836db305 moveto(var_836db305.origin + (0, 36, 0), 0.45);
		var_73d5b598 moveto(var_73d5b598.origin + (0, 36 * -1, 0), 0.45);
		var_73d5b598 waittill("movedone");
	}
}

/*
	Name: function_60227c5
	Namespace: namespace_1beb9396
	Checksum: 0xACA239AF
	Offset: 0x7660
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_60227c5()
{
	level endon("hash_e0d14dc8");
	var_836db305 = GetEnt("garage_elevator_door_left_entrance", "targetname");
	var_73d5b598 = GetEnt("garage_elevator_door_right_entrance", "targetname");
	/#
		RecordEnt(var_836db305);
	#/
	/#
		RecordEnt(var_73d5b598);
	#/
	var_836db305 RotatePitch(4, 0.1);
	var_836db305 moveto(var_836db305.origin + (0, 2 * -1, 0), 0.1);
	var_73d5b598 moveto(var_73d5b598.origin + (0, 2, 0), 0.1);
	var_73d5b598 waittill("movedone");
	while(1)
	{
		var_836db305 moveto(var_836db305.origin + (0, 8 * -1, 0), 0.15);
		var_73d5b598 moveto(var_73d5b598.origin + (0, 8, 0), 0.15);
		var_73d5b598 waittill("movedone");
		var_836db305 moveto(var_836db305.origin + (0, 8, 0), 0.15);
		var_73d5b598 moveto(var_73d5b598.origin + (0, 8 * -1, 0), 0.15);
		var_73d5b598 waittill("movedone");
	}
}

/*
	Name: function_7248d34
	Namespace: namespace_1beb9396
	Checksum: 0xB5B6DA89
	Offset: 0x78D0
	Size: 0x1FD
	Parameters: 0
	Flags: None
*/
function function_7248d34()
{
	level endon("hash_e0d14dc8");
	var_836db305 = GetEnt("garage_elevator_door_left_2nd_floor_entrance", "targetname");
	var_73d5b598 = GetEnt("garage_elevator_door_right_2nd_floor_entrance", "targetname");
	/#
		RecordEnt(var_836db305);
	#/
	/#
		RecordEnt(var_73d5b598);
	#/
	while(1)
	{
		var_836db305 moveto(var_836db305.origin + (0, 60 * -1, 0), 0.75);
		var_73d5b598 moveto(var_73d5b598.origin + (0, 60, 0), 0.75);
		var_73d5b598 playsound("evt_elevator_glitch");
		var_73d5b598 waittill("movedone");
		var_836db305 moveto(var_836db305.origin + (0, 60, 0), 0.75);
		var_73d5b598 moveto(var_73d5b598.origin + (0, 60 * -1, 0), 0.75);
		var_73d5b598 playsound("evt_elevator_glitch");
		var_73d5b598 waittill("movedone");
	}
}

/*
	Name: function_adb65bc4
	Namespace: namespace_1beb9396
	Checksum: 0x1C7D2FA
	Offset: 0x7AD8
	Size: 0x1BD
	Parameters: 0
	Flags: None
*/
function function_adb65bc4()
{
	level endon("hash_e0d14dc8");
	var_836db305 = GetEnt("garage_elevator_door_left_2nd_floor_entrance2", "targetname");
	var_73d5b598 = GetEnt("garage_elevator_door_right_2nd_floor_entrance2", "targetname");
	/#
		RecordEnt(var_836db305);
	#/
	/#
		RecordEnt(var_73d5b598);
	#/
	while(1)
	{
		var_836db305 moveto(var_836db305.origin + (0, 35 * -1, 0), 0.6);
		var_73d5b598 moveto(var_73d5b598.origin + (0, 35, 0), 0.6);
		var_73d5b598 waittill("movedone");
		var_836db305 moveto(var_836db305.origin + (0, 35, 0), 0.6);
		var_73d5b598 moveto(var_73d5b598.origin + (0, 35 * -1, 0), 0.6);
		var_73d5b598 waittill("movedone");
	}
}

/*
	Name: function_9c0b8c73
	Namespace: namespace_1beb9396
	Checksum: 0xD9865AF
	Offset: 0x7CA0
	Size: 0x3CB
	Parameters: 0
	Flags: None
*/
function function_9c0b8c73()
{
	var_836db305 = GetEnt("garage_elevator_door_left_exit", "targetname");
	var_73d5b598 = GetEnt("garage_elevator_door_right_exit", "targetname");
	var_bf22cfbd = GetEnt("garage_elevator_door_left_exit2", "targetname");
	var_5de8c6ca = GetEnt("garage_elevator_door_right_exit2", "targetname");
	var_b76dcc17 = namespace_8e9083ff::function_33ec653f("garage_exit_elevator_robots_spawn_manager", undefined, 0.15, &function_892106c9);
	t_zone = GetEnt("garage_exit_elevator_zone_aitrig", "targetname");
	/#
		RecordEnt(var_836db305);
	#/
	/#
		RecordEnt(var_73d5b598);
	#/
	/#
		RecordEnt(var_bf22cfbd);
	#/
	/#
		RecordEnt(var_5de8c6ca);
	#/
	playsoundatposition("evt_elevator_ding", struct::get("garage_elevator_sound_spot").origin);
	var_836db305 moveto(var_836db305.origin + (0, 64, 0), 2);
	var_73d5b598 moveto(var_73d5b598.origin + (0, 64 * -1, 0), 2);
	wait(0.4);
	var_bf22cfbd moveto(var_bf22cfbd.origin + (0, 64, 0), 2);
	var_5de8c6ca moveto(var_5de8c6ca.origin + (0, 64 * -1, 0), 2);
	var_5de8c6ca waittill("movedone");
	level notify("hash_90cef371");
	level flag::wait_till("garage_exit_elevator_zone_clear");
	var_836db305 moveto(var_836db305.origin + (0, 64 * -1, 0), 2);
	var_73d5b598 moveto(var_73d5b598.origin + (0, 64, 0), 2);
	wait(0.4);
	var_bf22cfbd moveto(var_bf22cfbd.origin + (0, 64 * -1, 0), 2);
	var_5de8c6ca moveto(var_5de8c6ca.origin + (0, 64, 0), 2);
}

/*
	Name: function_7a0e84a8
	Namespace: namespace_1beb9396
	Checksum: 0xB40EEA72
	Offset: 0x8078
	Size: 0x3EB
	Parameters: 0
	Flags: None
*/
function function_7a0e84a8()
{
	var_3b159664 = GetNodeArray("garage_lift_gate_nodes", "script_noteworthy");
	foreach(nd in var_3b159664)
	{
		SetEnableNode(nd, 0);
	}
	var_19f54c8f = [];
	var_71955f5e = struct::get_array("p7_fxanim_cp_zurich_car_crash_04_bundle_gates");
	var_9797d9c7 = struct::get_array("p7_fxanim_cp_zurich_car_crash_05_bundle_gates");
	var_91ad292d = ArrayCombine(var_71955f5e, var_9797d9c7, 0, 0);
	wait(0.05);
	foreach(var_a2168002 in var_91ad292d)
	{
		var_19f54c8f[i] = util::spawn_model(var_a2168002.model, var_a2168002.origin, var_a2168002.angles);
		var_19f54c8f[i].targetname = var_a2168002.targetname;
		var_19f54c8f[i].script_noteworthy = var_a2168002.script_noteworthy;
		var_19f54c8f[i].script_string = var_a2168002.script_string;
		var_19f54c8f[i].script_objective = "rails";
		wait(0.05);
	}
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_04_bundle", &function_3f5b8a5e, "init");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_05_bundle", &function_3f5b8a5e, "init");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_04_bundle", &function_c9765981, "play");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_05_bundle", &function_c9765981, "play");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_04_bundle", &function_e0bb6e8b, "done");
	scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_05_bundle", &function_e0bb6e8b, "done");
	level scene::init("p7_fxanim_cp_zurich_car_crash_04_bundle");
	wait(0.05);
	level scene::init("p7_fxanim_cp_zurich_car_crash_05_bundle");
}

/*
	Name: function_d987ae9
	Namespace: namespace_1beb9396
	Checksum: 0xFD1D3B8B
	Offset: 0x8470
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_d987ae9()
{
	t_cleanup = GetEnt("garage_cleanup_trig", "targetname");
	t_cleanup endon("death");
	while(1)
	{
		var_52adae1e = GetAITeamArray("axis", "allies");
		foreach(ai in var_52adae1e)
		{
			var_cabb1f64 = isalive(ai) && !ai util::is_hero();
			if(var_cabb1f64 && !ai namespace_8e9083ff::player_can_see_me(1024) && ai istouching(t_cleanup))
			{
				ai util::stop_magic_bullet_shield();
				ai kill();
			}
		}
		wait(1);
	}
}

/*
	Name: function_b7d40ae
	Namespace: namespace_1beb9396
	Checksum: 0x7DAAE2EE
	Offset: 0x8610
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_b7d40ae()
{
	var_11cbfab3 = GetEntArray("break_glass", "script_noteworthy");
	Array::thread_all(var_11cbfab3, &function_b09dbdde);
}

/*
	Name: function_b09dbdde
	Namespace: namespace_1beb9396
	Checksum: 0x63A49940
	Offset: 0x8670
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b09dbdde()
{
	self endon("death");
	self waittill("trigger", var_26c7381f);
	glassRadiusDamage(var_26c7381f.origin, 64, 700, 500, "MOD_HIT_BY_OBJECT");
	self delete();
}

/*
	Name: function_ec9dd4a5
	Namespace: namespace_1beb9396
	Checksum: 0xD196EBFB
	Offset: 0x86F0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_ec9dd4a5()
{
	var_3e9d5326 = GetEntArray("garage_car_kill_trig", "targetname");
	Array::thread_all(var_3e9d5326, &function_f3cdc2c1);
}

/*
	Name: function_f3cdc2c1
	Namespace: namespace_1beb9396
	Checksum: 0x7853329D
	Offset: 0x8750
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_f3cdc2c1()
{
	self endon("death");
	var_b6c065b4 = struct::get(self.target);
	n_radius = var_b6c065b4.radius;
	if(!isdefined(n_radius))
	{
		n_radius = 64;
	}
	self waittill("trigger");
	RadiusDamage(var_b6c065b4.origin, n_radius, 1200, 1100);
}

/*
	Name: function_9075d8d6
	Namespace: namespace_1beb9396
	Checksum: 0xF6744BE
	Offset: 0x8808
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_9075d8d6()
{
	/#
		self endon("death");
		var_db04d156 = 0;
		while(1)
		{
			self thread namespace_8e9083ff::function_ff016910("Dev Block strings are not supported" + var_db04d156, undefined);
			self waittill("movedone");
			self notify("hash_8fba9");
			var_db04d156++;
		}
	#/
}

