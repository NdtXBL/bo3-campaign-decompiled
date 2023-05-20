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
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	namespace_2f06d687::function_2b37a3c9("plaza_battle_boss", "targetname", &namespace_ca56958::function_8fdd138);
	namespace_2f06d687::function_2b37a3c9("plaza_battle_intro_redshirts", "targetname", &namespace_ca56958::function_adfa2b54);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_8e9083ff::function_da579a5d(var_b04bc952, 1);
		namespace_8e9083ff::function_c049667c(1);
		namespace_4dbf3ae3::function_42e87952("garage_kane_exit_colortrig");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_03_bundle", &namespace_1beb9396::function_5d018732, "done");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_zurich_car_crash_03_bundle");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_zurich_car_crash_04_bundle");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_zurich_car_crash_05_bundle");
		function_bab1ff00("garage_umbra_gate", 1);
		level namespace_ad23e503::function_74d6b22f("garage_gate_open");
		namespace_80983c42::function_80983c42("streets_tower_wasp_swarm");
		level namespace_71e9cb84::function_74d6b22f("zurich_city_ambience", 1);
		level thread namespace_1beb9396::function_c83d3033();
		namespace_d7916d65::function_a2995f22();
		level namespace_ad23e503::function_74d6b22f("rails_triage_regroup_start");
		level namespace_ad23e503::function_74d6b22f("flag_start_kane_it_won_t_vo_done");
	}
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle", &namespace_8e9083ff::function_162b9ea0, "init");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_d5b7d39e);
	level thread function_302750ab();
	level thread namespace_67110270::function_99ab0b3b();
	namespace_76d95162::function_d9f49fba(0);
	if(isdefined(level.var_3049751d))
	{
		level thread [[level.var_3049751d]]();
	}
	level thread function_51e389ee(var_74cd64bc);
	level.var_438d2fd9 = [];
	level.var_a06b011 = namespace_2f06d687::function_7387a40a("plaza_battle_boss");
	level notify("hash_4f700a7e");
	level thread namespace_8e9083ff::function_2361541e("rails");
	level thread namespace_8e9083ff::function_1eb6ea27("plaza_battle_intro_zone_trig", "rails");
	level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(1);
	level.var_3d556bcd namespace_d84e54db::function_c9e45d52(1);
	level.var_3d556bcd thread namespace_8e9083ff::function_2a6e38e();
	namespace_8e9083ff::function_c049667c(0);
	level thread function_5ea42950();
	namespace_4dbf3ae3::function_1ab5ebec("rails_exit_zone_trig");
	namespace_d5067552::function_bae40a28("plaza_battle_allies_left_spawn_manager");
	namespace_d5067552::function_bae40a28("plaza_battle_allies_right_spawn_manager");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
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
function function_1a4dfaaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_assault_hq_obj");
		namespace_4dbf3ae3::function_1ab5ebec("garage_exit_zone_trig");
		namespace_d0ef8521::function_45d1556("garage_kane_rooftop_colortrig", "cp_waypoint_breadcrumb");
		namespace_d0ef8521::function_50ccee8d("cp_level_zurich_assault_hq_obj");
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_assault_hq_awaiting_obj");
	}
	else
	{
		namespace_4dbf3ae3::function_1ab5ebec("rails_train_enter_colortrig");
		namespace_d0ef8521::function_50ccee8d("cp_level_zurich_assault_hq_obj");
		namespace_d0ef8521::function_48f26766("cp_level_zurich_assault_hq_awaiting_obj");
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
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("flag_start_kane_it_won_t_vo_done", "flag_zurich_rails_vo_01"));
	level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_so_much_chaos_so_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_we_will_stop_him_kan_0", 0.8);
	if(!level namespace_ad23e503::function_7922262b("plaza_battle_train_exit_reached"))
	{
		level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_once_he_s_dealt_with_0", 0.4);
		level namespace_71b8dba1::function_13b3b16a("plyr_i_told_you_i_d_find_0", 0.6);
	}
	if(!level namespace_ad23e503::function_7922262b("plaza_battle_train_exit_reached"))
	{
		level namespace_ad23e503::function_1ab5ebec("flag_zurich_rails_vo_02");
		level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_coalescence_building_0", 1);
		level namespace_71b8dba1::function_13b3b16a("plyr_i_can_see_it_kane_0", 1);
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
	var_fe0af0a5 = function_243bb261("rails_hunter_spline", "targetname");
	var_91c414ce = namespace_14b42b8a::function_7922262b("rails_hunter_look_spot");
	while(!namespace_8e9083ff::function_f8645b6(-1, var_91c414ce.var_722885f3, 0.6))
	{
		wait(0.05);
	}
	var_782205f8 = var_fe0af0a5 namespace_8e9083ff::function_a569867c();
	var_782205f8 namespace_96fa87af::function_fdf99c07();
	var_782205f8 waittill("hash_6cf6ac7e");
	var_782205f8 function_dc8c8404();
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
	namespace_4dbf3ae3::function_1ab5ebec("trig_rails_hallucination", "targetname", self);
	self namespace_71e9cb84::function_688ed188("postfx_hallucinations", 1);
	wait(0.8);
	namespace_e216c11c::function_25294cfe("visionset", "cp_zurich_hallucination", self);
	self function_b8862210("vox_dying_infected_after", self);
	wait(1.4);
	namespace_e216c11c::function_a5218027("visionset", "cp_zurich_hallucination", self);
}

