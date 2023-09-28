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
#using scripts\cp\cp_mi_zurich_coalescence_zurich_plaza_battle;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_street;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_f3d05f86;

/*
	Name: function_9c1fc2fd
	Namespace: namespace_f3d05f86
	Checksum: 0x82E5FF28
	Offset: 0x828
	Size: 0x4A3
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(str_objective, var_74cd64bc)
{
	spawner::add_spawn_function_group("plaza_battle_boss", "targetname", &namespace_ca56958::function_8fdd138);
	spawner::add_spawn_function_group("plaza_battle_intro_redshirts", "targetname", &namespace_ca56958::function_adfa2b54);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_8e9083ff::function_da579a5d(str_objective, 1);
		namespace_8e9083ff::function_c049667c(1);
		trigger::use("garage_kane_exit_colortrig");
		scene::add_scene_func("p7_fxanim_cp_zurich_car_crash_03_bundle", &namespace_1beb9396::function_5d018732, "done");
		level thread scene::skipto_end("p7_fxanim_cp_zurich_car_crash_03_bundle");
		level thread scene::skipto_end("p7_fxanim_cp_zurich_car_crash_04_bundle");
		level thread scene::skipto_end("p7_fxanim_cp_zurich_car_crash_05_bundle");
		function_bab1ff00("garage_umbra_gate", 1);
		level flag::set("garage_gate_open");
		exploder::exploder("streets_tower_wasp_swarm");
		level clientfield::set("zurich_city_ambience", 1);
		level thread namespace_1beb9396::init_elevators();
		load::function_a2995f22();
		level flag::set("rails_triage_regroup_start");
		level flag::set("flag_start_kane_it_won_t_vo_done");
	}
	scene::add_scene_func("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle", &namespace_8e9083ff::function_162b9ea0, "init");
	level scene::init("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle");
	Array::thread_all(level.players, &function_d5b7d39e);
	level thread function_302750ab();
	level thread namespace_67110270::function_99ab0b3b();
	battlechatter::function_d9f49fba(0);
	if(isdefined(level.BZM_ZURICHDialogue1_2Callback))
	{
		level thread [[level.BZM_ZURICHDialogue1_2Callback]]();
	}
	level thread function_51e389ee(var_74cd64bc);
	level.var_438d2fd9 = [];
	level.var_a06b011 = spawner::simple_spawn_single("plaza_battle_boss");
	level notify("hash_4f700a7e");
	level thread namespace_8e9083ff::function_2361541e("rails");
	level thread namespace_8e9083ff::function_1eb6ea27("plaza_battle_intro_zone_trig", "rails");
	level.var_3d556bcd ai::set_ignoreall(1);
	level.var_3d556bcd ai::set_ignoreme(1);
	level.var_3d556bcd thread namespace_8e9083ff::function_2a6e38e();
	namespace_8e9083ff::function_c049667c(0);
	level thread function_5ea42950();
	trigger::wait_till("rails_exit_zone_trig");
	spawn_manager::enable("plaza_battle_allies_left_spawn_manager");
	spawn_manager::enable("plaza_battle_allies_right_spawn_manager");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_f3d05f86
	Checksum: 0xD3A5294F
	Offset: 0xCD8
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_8e9083ff::function_4d032f25(0);
	level.var_ebb30c1a = undefined;
	namespace_f815059a::function_9b46fb9();
}

/*
	Name: function_51e389ee
	Namespace: namespace_f3d05f86
	Checksum: 0xAE9D89DD
	Offset: 0xD40
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_51e389ee(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		objectives::set("cp_level_zurich_assault_hq_obj");
		trigger::wait_till("garage_exit_zone_trig");
		objectives::breadcrumb("garage_kane_rooftop_colortrig", "cp_waypoint_breadcrumb");
		objectives::Hide("cp_level_zurich_assault_hq_obj");
		objectives::set("cp_level_zurich_assault_hq_awaiting_obj");
	}
	else
	{
		trigger::wait_till("rails_train_enter_colortrig");
		objectives::Hide("cp_level_zurich_assault_hq_obj");
		objectives::show("cp_level_zurich_assault_hq_awaiting_obj");
	}
}

/*
	Name: function_302750ab
	Namespace: namespace_f3d05f86
	Checksum: 0x49043B59
	Offset: 0xE30
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_302750ab()
{
	level flag::wait_till_all(Array("flag_start_kane_it_won_t_vo_done", "flag_zurich_rails_vo_01"));
	level.var_3d556bcd dialog::say("kane_so_much_chaos_so_0");
	level dialog::function_13b3b16a("plyr_we_will_stop_him_kan_0", 0.8);
	if(!level flag::get("plaza_battle_train_exit_reached"))
	{
		level.var_3d556bcd dialog::say("kane_once_he_s_dealt_with_0", 0.4);
		level dialog::function_13b3b16a("plyr_i_told_you_i_d_find_0", 0.6);
	}
	if(!level flag::get("plaza_battle_train_exit_reached"))
	{
		level flag::wait_till("flag_zurich_rails_vo_02");
		level.var_3d556bcd dialog::say("kane_coalescence_building_0", 1);
		level dialog::function_13b3b16a("plyr_i_can_see_it_kane_0", 1);
	}
}

/*
	Name: function_5ea42950
	Namespace: namespace_f3d05f86
	Checksum: 0x8F67466B
	Offset: 0xFB0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_5ea42950()
{
	level endon("hash_a835a95b");
	var_fe0af0a5 = GetVehicleNode("rails_hunter_spline", "targetname");
	s_look = struct::get("rails_hunter_look_spot");
	while(!namespace_8e9083ff::function_f8645b6(-1, s_look.origin, 0.6))
	{
		wait(0.05);
	}
	var_782205f8 = var_fe0af0a5 namespace_8e9083ff::function_a569867c();
	var_782205f8 vehicle::god_on();
	var_782205f8 waittill("reached_end_node");
	var_782205f8 delete();
}

/*
	Name: function_d5b7d39e
	Namespace: namespace_f3d05f86
	Checksum: 0xEC7BE583
	Offset: 0x10B8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_d5b7d39e()
{
	level endon("hash_a835a95b");
	trigger::wait_till("trig_rails_hallucination", "targetname", self);
	self clientfield::increment_to_player("postfx_hallucinations", 1);
	wait(0.8);
	visionset_mgr::activate("visionset", "cp_zurich_hallucination", self);
	self playsoundtoplayer("vox_dying_infected_after", self);
	wait(1.4);
	visionset_mgr::deactivate("visionset", "cp_zurich_hallucination", self);
}

