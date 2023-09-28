#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_newworld;
#using scripts\cp\cp_mi_zurich_newworld_accolades;
#using scripts\cp\cp_mi_zurich_newworld_sound;
#using scripts\cp\cp_mi_zurich_newworld_util;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_f8b9e1f8;

/*
	Name: function_e0b1e88a
	Namespace: namespace_f8b9e1f8
	Checksum: 0x80E5EF9E
	Offset: 0x2F58
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_e0b1e88a(str_objective, var_74cd64bc)
{
	level thread function_97f60350();
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		load::function_c32ba481(undefined, (1, 1, 1));
		level thread namespace_ce0e5f06::function_30ec5bf7(1);
	}
	namespace_ce0e5f06::function_3383b379();
	battlechatter::function_d9f49fba(0);
	level function_99ea7a88();
	function_fcf3b18d();
	level clientfield::set("gameplay_started", 1);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_54113b74
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDEE80F76
	Offset: 0x3060
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_54113b74(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_fcf3b18d
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA3DB1167
	Offset: 0x3090
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_fcf3b18d()
{
	foreach(player in level.activePlayers)
	{
		player SetIgnorePauseWorld(1);
	}
	level.var_6cb8b7a = util::function_740f8516("diaz");
	level.var_6cb8b7a ghost();
	level.var_6cb8b7a SetIgnorePauseWorld(1);
	level.var_1c26230b = util::function_740f8516("taylor");
	level.var_1c26230b ghost();
	level.var_1c26230b SetIgnorePauseWorld(1);
	level scene::init("cin_new_02_01_pallasintro_vign_appear_player");
	level scene::init("cin_new_02_01_pallasintro_vign_appear");
	util::function_d8eaed3d(2);
	namespace_ce0e5f06::function_83a7d040();
	util::streamer_wait();
	level flag::clear("infinite_white_transition");
	Array::thread_all(level.activePlayers, &namespace_ce0e5f06::function_737d2864, &"CP_MI_ZURICH_NEWWORLD_LOCATION_FACTORY", &"CP_MI_ZURICH_NEWWORLD_TIME_FACTORY");
	function_20bc4cca();
	util::clear_streamer_hint();
	exploder::exploder_stop("fx_exterior_igc_tracer_intro");
}

/*
	Name: function_20bc4cca
	Namespace: namespace_f8b9e1f8
	Checksum: 0x34943F9E
	Offset: 0x32E8
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_20bc4cca()
{
	exploder::exploder("fx_exterior_igc_tracer_intro");
	level scene::add_player_linked_scene("cin_new_02_01_pallasintro_vign_appear");
	level scene::add_scene_func("cin_new_02_01_pallasintro_vign_appear", &function_453b588c);
	level scene::add_scene_func("cin_new_02_01_pallasintro_vign_appear", &function_b0753d7b);
	level thread scene::Play("cin_new_02_01_pallasintro_vign_appear");
	if(isdefined(level.BZM_NEWWORLDDialogue2Callback))
	{
		level thread [[level.BZM_NEWWORLDDialogue2Callback]]();
	}
	level scene::add_scene_func("cin_new_02_01_pallasintro_vign_appear_player", &function_1b440643);
	level scene::add_scene_func("cin_new_02_01_pallasintro_vign_appear_player", &function_b1896f5, "players_done");
	level scene::Play("cin_new_02_01_pallasintro_vign_appear_player");
	level thread namespace_e38c3c58::function_973b77f9();
}

/*
	Name: function_b1896f5
	Namespace: namespace_f8b9e1f8
	Checksum: 0x108DAC33
	Offset: 0x3450
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_b1896f5(a_ents)
{
	util::function_93831e79("factory_factory_exterior");
}

/*
	Name: function_97f60350
	Namespace: namespace_f8b9e1f8
	Checksum: 0x37500F89
	Offset: 0x3480
	Size: 0x1C1
	Parameters: 0
	Flags: None
*/
function function_97f60350()
{
	var_e1b54d68 = [];
	Array::add(var_e1b54d68, struct::spawn((22428.9, -10169.4, -7248), VectorScale((0, 1, 0), 86.7993)));
	Array::add(var_e1b54d68, struct::spawn((22505.6, -10169.9, -7249), VectorScale((0, 1, 0), 86.3997)));
	Array::add(var_e1b54d68, struct::spawn((22627, -10173.8, -7252), VectorScale((0, 1, 0), 91.7998)));
	Array::add(var_e1b54d68, struct::spawn((22704.9, -10172.7, -7252), VectorScale((0, 1, 0), 91.3996)));
	foreach(struct in var_e1b54d68)
	{
		struct.targetname = "factory_factory_exterior";
		struct struct::init();
	}
}

/*
	Name: function_453b588c
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5464549E
	Offset: 0x3650
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_453b588c(a_ents)
{
	level thread function_8db0ac1a(a_ents);
	level thread function_94d27(a_ents);
}

/*
	Name: function_b0753d7b
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2E0E23D3
	Offset: 0x3698
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_b0753d7b(a_ents)
{
	a_ents["factory_intro_truck_01"] thread function_69cfc912();
	a_ents["factory_intro_truck_01"] thread function_788efb3b();
}

/*
	Name: function_69cfc912
	Namespace: namespace_f8b9e1f8
	Checksum: 0x3EE6F866
	Offset: 0x36F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_69cfc912()
{
	self waittill("hash_4fe13a89");
	self SetModel("veh_t7_civ_truck_pickup_tech_zdf_dead");
}

/*
	Name: function_788efb3b
	Namespace: namespace_f8b9e1f8
	Checksum: 0x211F797C
	Offset: 0x3728
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_788efb3b()
{
	self waittill("disconnect_paths");
	self disconnectpaths();
}

/*
	Name: function_8db0ac1a
	Namespace: namespace_f8b9e1f8
	Checksum: 0x61F446E2
	Offset: 0x3758
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_8db0ac1a(a_ents)
{
	level waittill("hash_caecba47");
	if(!scene::is_skipping_in_progress())
	{
		SetPauseWorld(1);
		namespace_ce0e5f06::function_85d8906c();
		level clientfield::set("factory_exterior_vents", 1);
	}
}

/*
	Name: function_94d27
	Namespace: namespace_f8b9e1f8
	Checksum: 0x81698FD6
	Offset: 0x37D8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_94d27(a_ents)
{
	level.var_6cb8b7a waittill("unfreeze");
	e_clip = GetEnt("snow_umbrella_factory_intro_igc", "targetname");
	e_clip delete();
	SetPauseWorld(0);
	namespace_ce0e5f06::function_3383b379();
	level clientfield::set("factory_exterior_vents", 0);
}

/*
	Name: function_1b440643
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBB684B37
	Offset: 0x3888
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_1b440643(a_ents)
{
	level thread function_921c1035(a_ents);
	level thread function_8af70712(a_ents);
	level thread function_86604714(a_ents);
}

/*
	Name: function_921c1035
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD3E0A0A9
	Offset: 0x38E8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_921c1035(a_ents)
{
	a_ents["taylor"] waittill("hash_f855e936");
	a_ents["taylor"] thread namespace_ce0e5f06::function_c949a8ed(1);
}

/*
	Name: function_8af70712
	Namespace: namespace_f8b9e1f8
	Checksum: 0x4CB036F3
	Offset: 0x3940
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_8af70712(a_ents)
{
	a_ents["diaz"] waittill("hash_f855e936");
	a_ents["diaz"] thread namespace_ce0e5f06::function_c949a8ed(1);
}

/*
	Name: function_86604714
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC1AD7BF
	Offset: 0x3998
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_86604714(a_ents)
{
	a_ents["taylor"] waittill("hash_51f5dc71");
	a_ents["taylor"] thread namespace_ce0e5f06::function_4943984c();
}

/*
	Name: function_5c3934c2
	Namespace: namespace_f8b9e1f8
	Checksum: 0x92803BBB
	Offset: 0x39E8
	Size: 0x22B
	Parameters: 2
	Flags: None
*/
function function_5c3934c2(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		function_11a66a73(str_objective);
		level function_99ea7a88();
		level scene::skipto_end_noai("cin_new_02_01_pallasintro_vign_appear");
		level scene::skipto_end("p7_fxanim_cp_newworld_truck_flip_factory_igc_bundle");
		var_337db322 = GetEnt("factory_intro_truck_01", "targetname");
		var_337db322 SetModel("veh_t7_civ_truck_pickup_tech_zdf_dead");
		var_337db322 disconnectpaths();
		spawn_manager::enable("sm_intro_area_ally_skipto");
		load::function_a2995f22();
	}
	util::delay(0.6, undefined, &namespace_ce0e5f06::function_3e37f48b, 0);
	level thread function_c5eadf67();
	battlechatter::function_d9f49fba(1);
	level thread namespace_e38c3c58::function_fa2e45b8();
	level thread function_1f377ec7();
	trigger::wait_till("alley_start");
	level thread namespace_e38c3c58::function_92eefdb3();
	Array::thread_all(spawner::get_ai_group_ai("intro_area_enemy"), &namespace_ce0e5f06::function_95132241);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_8b155bc
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCBC4FADF
	Offset: 0x3C20
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_8b155bc(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_8392bfa
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCD039290
	Offset: 0x3C50
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_8392bfa(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		spawn_manager::enable("sm_alley_area_ally");
		trigger::use("alley_color_trigger_start");
		level thread namespace_ce0e5f06::function_3e37f48b(0);
		level thread function_c5eadf67();
		function_11a66a73(str_objective);
		level thread objectives::breadcrumb("factory_intro_breadcrumb");
		objectives::set("cp_level_newworld_factory_subobj_goto_hideout");
		load::function_a2995f22();
		level thread namespace_e38c3c58::function_92eefdb3();
	}
	level flag::init("player_completed_alley");
	battlechatter::function_d9f49fba(0);
	level thread function_9662a9b0();
	level flag::wait_till("player_completed_silo");
	savegame::function_5d2cdd99();
	level objectives::breadcrumb("alley_breadcrumb");
	level flag::set("player_completed_alley");
	Array::thread_all(spawner::get_ai_group_ai("alley_enemies"), &namespace_ce0e5f06::function_95132241);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_76333904
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2E0443CB
	Offset: 0x3E70
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_76333904(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_beff78dc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x844C3280
	Offset: 0x3EA0
	Size: 0x10B
	Parameters: 2
	Flags: None
*/
function function_beff78dc(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread namespace_ce0e5f06::function_3e37f48b(0);
		level thread function_c5eadf67();
		function_11a66a73(str_objective);
		objectives::set("cp_level_newworld_factory_subobj_goto_hideout");
		load::function_a2995f22();
	}
	level thread warehouse_area();
	level thread objectives::breadcrumb("warehouse_breadcrumb");
	trigger::wait_till("foundry_start", undefined, undefined, 0);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_e028fc02
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFA50C59F
	Offset: 0x3FB8
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_e028fc02(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_newworld_factory_subobj_goto_hideout");
	callback::remove_on_connect(&function_2c49b262);
}

/*
	Name: function_e886dd9a
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF1297B15
	Offset: 0x4020
	Size: 0xE9
	Parameters: 2
	Flags: None
*/
function function_e886dd9a(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread namespace_ce0e5f06::function_3e37f48b(0);
		function_11a66a73(str_objective);
		level thread function_adcc83a3(var_74cd64bc);
		load::function_a2995f22();
	}
	battlechatter::function_d9f49fba(0);
	level thread namespace_e38c3c58::function_d8182956();
	function_81354ca4();
	skipto::function_be8adfb8(str_objective);
	level notify("hash_7aa3c9ce");
}

/*
	Name: function_5680eaa4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x240BC3A7
	Offset: 0x4118
	Size: 0x63
	Parameters: 4
	Flags: None
*/
function function_5680eaa4(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc === 1)
	{
		objectives::complete("cp_level_newworld_factory_subobj_hijack_drone");
		objectives::complete("cp_level_newworld_foundry_subobj_destroy_generator");
	}
}

/*
	Name: function_6aeb594c
	Namespace: namespace_f8b9e1f8
	Checksum: 0x7ED4B27A
	Offset: 0x4188
	Size: 0x1AB
	Parameters: 2
	Flags: None
*/
function function_6aeb594c(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_b7a27741 = 1;
		function_11a66a73(str_objective);
		level.var_6cb8b7a ai::set_behavior_attribute("sprint", 0);
		level.var_6cb8b7a ai::set_behavior_attribute("cqb", 1);
		trigger::use("vat_room_color_trigger_start");
		load::function_a2995f22();
		level thread namespace_e38c3c58::function_ccafa212();
	}
	level thread namespace_37a1dc33::function_f7dd9b2c();
	battlechatter::function_d9f49fba(0);
	function_bab1ff00("umbra_gate_vat_room_door_01", 0);
	if(SessionModeIsCampaignZombiesGame())
	{
		e_clip = GetEnt("vat_room_flank_route_monster_clip", "targetname");
		e_clip delete();
	}
	function_46d1131c();
	level thread util::function_d8eaed3d(3);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_19fb5452
	Namespace: namespace_f8b9e1f8
	Checksum: 0x45314032
	Offset: 0x4340
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_19fb5452(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc === 1)
	{
		objectives::complete("cp_level_newworld_vat_room_subobj_locate_command_ctr");
		objectives::complete("cp_level_newworld_vat_room_subobj_hack_door");
	}
	callback::remove_on_connect(&function_5e3e5d06);
}

/*
	Name: function_1f377ec7
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB6756FB5
	Offset: 0x43D0
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_1f377ec7()
{
	spawner::add_spawn_function_group("friendly_left", "script_string", &function_2ec32332);
	spawner::add_spawn_function_group("friendly_right", "script_string", &function_2ec32332);
	spawner::add_spawn_function_group("left_flank", "script_string", &function_2ec32332);
	spawner::add_spawn_function_group("right_flank", "script_string", &function_2ec32332);
	var_f91ba6e1 = GetEnt("diaz_factory_first_target", "script_noteworthy");
	var_f91ba6e1 spawner::add_spawn_function(&function_e9ba1a28);
	spawn_manager::enable("sm_intro_area_ally");
	spawn_manager::enable("sm_intro_initial_enemies_left");
	spawn_manager::enable("sm_intro_initial_enemies_right");
	spawn_manager::enable("sm_center_path_enemies");
	spawn_manager::enable("sm_hi_lo_area_enemies");
	spawn_manager::enable("sm_intro_initial_enemies_center_1");
	spawn_manager::enable("sm_intro_initial_enemies_catwalk");
	trigger::use("intro_color_trigger_start");
	level thread function_738d040b();
	level thread function_cdca03a4();
	level thread function_6cc0f04e();
	level thread objectives::breadcrumb("factory_intro_breadcrumb");
	level thread objectives::set("cp_level_newworld_factory_subobj_goto_hideout");
}

/*
	Name: function_6cc0f04e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x4FA58D89
	Offset: 0x4638
	Size: 0x229
	Parameters: 0
	Flags: None
*/
function function_6cc0f04e()
{
	trigger::wait_till("intro_factory_start_retreat");
	foreach(ai_friendly in spawner::get_ai_group_ai("factory_allies"))
	{
		if(ai_friendly.script_noteworthy === "expendable")
		{
			ai_friendly thread function_900831e2();
		}
	}
	e_goal = GetEnt("intro_factory_retreat", "targetname");
	a_ai_enemy = spawner::get_ai_group_ai("intro_area_enemy");
	foreach(ai_enemy in a_ai_enemy)
	{
		if(isalive(ai_enemy) && !ai_enemy istouching(e_goal) && ai_enemy.script_noteworthy !== "no_retreat")
		{
			ai_enemy SetGoal(e_goal);
			wait(RandomFloatRange(0.5, 1.5));
		}
	}
}

/*
	Name: function_900831e2
	Namespace: namespace_f8b9e1f8
	Checksum: 0x786C836B
	Offset: 0x4870
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_900831e2()
{
	self endon("death");
	self util::stop_magic_bullet_shield();
	wait(RandomFloatRange(10, 20));
	b_can_delete = 0;
	while(b_can_delete == 0)
	{
		wait(1);
		foreach(e_player in level.activePlayers)
		{
			if(e_player util::is_player_looking_at(self.origin) == 0)
			{
				b_can_delete = 1;
				continue;
			}
			b_can_delete = 0;
		}
	}
	self kill();
}

/*
	Name: function_cdca03a4
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA5143EFB
	Offset: 0x49A8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_cdca03a4()
{
	trigger::wait_till("intro_factory_start_tac_mode");
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level thread function_2fa20b5d();
	trigger::wait_till("intro_factory_retreat");
	spawn_manager::enable("sm_intro_tac_mode");
	scene::add_scene_func("cin_new_03_01_factoryraid_aie_break_glass", &function_877af88d, "play");
	scene::add_scene_func("cin_new_03_01_factoryraid_aie_break_glass", &function_8bd7bfb0, "play");
	level thread scene::Play("cin_new_03_01_factoryraid_aie_break_glass");
}

/*
	Name: function_877af88d
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB51312AA
	Offset: 0x4AA8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_877af88d(a_ents)
{
	level waittill("hash_877af88d");
	s_org = struct::get("factory_exterior_break_glass_left", "targetname");
	glassRadiusDamage(s_org.origin, 50, 500, 500);
}

/*
	Name: function_8bd7bfb0
	Namespace: namespace_f8b9e1f8
	Checksum: 0x27E8FE41
	Offset: 0x4B28
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_8bd7bfb0(a_ents)
{
	level waittill("hash_8bd7bfb0");
	s_org = struct::get("factory_exterior_break_glass_right", "targetname");
	glassRadiusDamage(s_org.origin, 50, 500, 500);
}

/*
	Name: function_2fa20b5d
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8575D8DC
	Offset: 0x4BA8
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_2fa20b5d()
{
	level.var_6cb8b7a thread dialog::say("diaz_your_dni_can_provide_0");
	level.var_9ef26e4f = 1;
	namespace_ce0e5f06::function_3196eaee(1);
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread function_972f9cf5();
		player thread function_a77545da();
	}
}

/*
	Name: function_e9ba1a28
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1A1B9DD6
	Offset: 0x4CB8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_e9ba1a28()
{
	self.health = 10;
	level.var_6cb8b7a ai::shoot_at_target("shoot_until_target_dead", self);
	a_ai_balcony = GetEntArray("no_retreat", "script_noteworthy", 1);
	if(isdefined(a_ai_balcony) && isalive(a_ai_balcony[0]))
	{
		level.var_6cb8b7a ai::shoot_at_target("kill_within_time", a_ai_balcony[0], undefined, 3);
	}
	trigger::use("t_color_diaz_right_flank_quick_start");
}

/*
	Name: function_99ea7a88
	Namespace: namespace_f8b9e1f8
	Checksum: 0x4374DF7B
	Offset: 0x4D98
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_99ea7a88()
{
	CreateThreatBiasGroup("factory_intro_threatbias_friendly_left");
	CreateThreatBiasGroup("factory_intro_threatbias_enemy_left");
	CreateThreatBiasGroup("factory_intro_threatbias_friendly_right");
	CreateThreatBiasGroup("factory_intro_threatbias_enemy_right");
	setthreatbias("factory_intro_threatbias_friendly_left", "factory_intro_threatbias_enemy_right", -5000);
	setthreatbias("factory_intro_threatbias_enemy_right", "factory_intro_threatbias_friendly_left", -5000);
	setthreatbias("factory_intro_threatbias_friendly_right", "factory_intro_threatbias_enemy_left", -5000);
	setthreatbias("factory_intro_threatbias_enemy_left", "factory_intro_threatbias_friendly_right", -5000);
}

/*
	Name: function_2ec32332
	Namespace: namespace_f8b9e1f8
	Checksum: 0x24FA2768
	Offset: 0x4EA8
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_2ec32332()
{
	var_bb94a349 = self.script_string;
	switch(var_bb94a349)
	{
		case "right_flank":
		{
			self SetThreatBiasGroup("factory_intro_threatbias_enemy_right");
			break;
		}
		case "left_flank":
		{
			self SetThreatBiasGroup("factory_intro_threatbias_enemy_left");
			break;
		}
		case "friendly_left":
		{
			self SetThreatBiasGroup("factory_intro_threatbias_friendly_left");
			break;
		}
		case "friendly_right":
		{
			self SetThreatBiasGroup("factory_intro_threatbias_friendly_right");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_9662a9b0
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD32A2C96
	Offset: 0x4F88
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_9662a9b0()
{
	level thread function_5f94cc0();
	level thread function_8774b593();
	level thread function_84b0c4c4();
	level flag::wait_till("player_completed_silo");
	spawn_manager::enable("sm_alley_front_left_enemies");
	spawn_manager::enable("sm_alley_front_right_enemies");
	spawner::simple_spawn_single("diaz_wallrun_target");
	trigger::wait_till("alley_half_way");
	spawn_manager::enable("sm_alley_rear_left");
	spawn_manager::enable("sm_alley_rear_right");
	trigger::wait_till("alley_reinforcements");
	spawn_manager::enable("sm_alley_reinforcements");
	level thread function_b9d42d14();
	level.var_6cb8b7a thread dialog::say("diaz_reinforcements_at_th_0", 2);
	spawner::waittill_ai_group_ai_count("alley_enemies", 2);
	if(!level flag::get("player_completed_alley"))
	{
		trigger::use("alley_end_diaz_color");
	}
}

/*
	Name: function_b9d42d14
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1152E31
	Offset: 0x5158
	Size: 0x1E1
	Parameters: 0
	Flags: None
*/
function function_b9d42d14()
{
	foreach(ai_friendly in spawner::get_ai_group_ai("factory_allies"))
	{
		ai_friendly thread function_900831e2();
	}
	e_goal = GetEnt("back_of_alley", "targetname");
	a_ai_enemy = spawner::get_ai_group_ai("alley_enemies");
	foreach(ai_enemy in a_ai_enemy)
	{
		if(isalive(ai_enemy) && !ai_enemy istouching(e_goal))
		{
			ai_enemy SetGoal(e_goal);
			wait(RandomFloatRange(0.5, 1.5));
		}
	}
}

/*
	Name: function_9fb5e88f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x26C37F6D
	Offset: 0x5348
	Size: 0x113
	Parameters: 3
	Flags: None
*/
function function_9fb5e88f(var_2ad5d7ab, n_delay, str_scene)
{
	if(isdefined(n_delay))
	{
		wait(n_delay);
	}
	var_90911853 = GetWeapon("launcher_standard_magic_bullet");
	s_start = struct::get(var_2ad5d7ab, "targetname");
	s_end = struct::get(s_start.target, "targetname");
	e_missile = MagicBullet(var_90911853, s_start.origin, s_end.origin);
	e_missile waittill("death");
	if(isdefined(str_scene))
	{
		level thread scene::Play(str_scene);
	}
}

/*
	Name: function_8774b593
	Namespace: namespace_f8b9e1f8
	Checksum: 0x7BF53D58
	Offset: 0x5468
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_8774b593()
{
	level scene::init("p7_fxanim_cp_newworld_alley_pipes_bundle");
	level flag::wait_till("player_completed_silo");
	trigger::wait_till("t_tmode_explosive_lookat");
	level notify("hash_3cb382c8");
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread function_972f9cf5();
	}
	level thread function_9fb5e88f("alley_rocket_01");
	level thread function_9fb5e88f("alley_rocket_02", 1.7, "p7_fxanim_cp_newworld_alley_pipes_bundle");
	level thread function_9fb5e88f("alley_rocket_03", 3.6);
	if(!SessionModeIsCampaignZombiesGame())
	{
		level.var_6cb8b7a dialog::say("diaz_tac_mode_will_highli_0");
	}
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_84b0c4c4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x517AC475
	Offset: 0x5640
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_84b0c4c4()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	trigger::wait_till("t_tmode_tutorial_hotzones");
	level.var_6cb8b7a thread dialog::say("diaz_see_the_red_and_yell_0");
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread function_972f9cf5();
	}
}

/*
	Name: function_5f94cc0
	Namespace: namespace_f8b9e1f8
	Checksum: 0x40486026
	Offset: 0x5748
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_5f94cc0()
{
	level flag::wait_till("init_wallrun_tutorial");
	foreach(player in level.activePlayers)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread function_b64491f1();
		player thread function_af28d0ba();
	}
	level.var_6cb8b7a namespace_ce0e5f06::function_4943984c();
	level thread function_8b723eb();
	if(isdefined(level.BZM_NEWWORLDDialogue2_2Callback))
	{
		level thread [[level.BZM_NEWWORLDDialogue2_2Callback]]();
	}
	level scene::add_scene_func("cin_new_03_03_factoryraid_vign_wallrunright_diaz", &function_574f2ed1, "done");
	level scene::add_scene_func("cin_new_03_03_factoryraid_vign_wallrunright_diaz_pt2", &function_9e64a31f);
	level thread scene::Play("cin_new_03_03_factoryraid_vign_wallrunright_diaz");
	level waittill("hash_7c8ade1b");
	trigger::use("set_diaz_color_post_wallrun", "targetname");
	level thread function_ff4d4f4e();
}

/*
	Name: function_574f2ed1
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCF2B6435
	Offset: 0x5948
	Size: 0x89
	Parameters: 1
	Flags: None
*/
function function_574f2ed1(a_ents)
{
	foreach(player in level.activePlayers)
	{
		player notify("hash_342714c9");
	}
}

/*
	Name: function_9e64a31f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC684EAF7
	Offset: 0x59E0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_9e64a31f(a_ents)
{
	a_ents["diaz"] waittill("hash_f1bd9c60");
	level.var_6cb8b7a clientfield::set("wall_run_fx", 1);
	a_ents["diaz"] waittill("stop_fx");
	level.var_6cb8b7a clientfield::set("wall_run_fx", 0);
}

/*
	Name: function_8b723eb
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCBDDBEB4
	Offset: 0x5A70
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8b723eb()
{
	trigger::wait_till("t_wallrunright_diaz_visible_lookat");
	level.var_6cb8b7a namespace_ce0e5f06::function_c949a8ed();
}

/*
	Name: function_b64491f1
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC7E49F4C
	Offset: 0x5AB0
	Size: 0x167
	Parameters: 0
	Flags: None
*/
function function_b64491f1()
{
	self endon("death");
	level endon("hash_3cb382c8");
	self thread function_823ff83e();
	self waittill("hash_342714c9");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	self flag::init("wallrun_tutorial_complete");
	self thread function_f72a6585();
	while(!self flag::get("wallrun_tutorial_complete"))
	{
		self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_WALLRUN_TUTORIAL", 0, undefined, 4);
		self flag::wait_till_timeout(4, "wallrun_tutorial_complete");
		self thread util::hide_hint_text(1);
		self flag::wait_till_timeout(3, "wallrun_tutorial_complete");
	}
}

/*
	Name: function_823ff83e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x6EEA4EE8
	Offset: 0x5C20
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_823ff83e()
{
	self endon("death");
	self endon("hash_342714c9");
	level endon("hash_3cb382c8");
	trigger::wait_till("player_at_wallrun_ledge", "targetname", self);
	self notify("hash_342714c9");
}

/*
	Name: function_f72a6585
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD1F0A3A9
	Offset: 0x5C88
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f72a6585()
{
	self endon("death");
	level endon("hash_3cb382c8");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	while(1)
	{
		if(self IsWallRunning())
		{
			self flag::set("wallrun_tutorial_complete");
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_ff4d4f4e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8C0CA26B
	Offset: 0x5D50
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function function_ff4d4f4e()
{
	var_10d6597a = GetNodeArray("diaz_wallrun_attack_traversal", "script_noteworthy");
	foreach(node in var_10d6597a)
	{
		SetEnableNode(node, 0);
	}
	e_target = GetEnt("diaz_wallrun_target_ai", "targetname");
	if(isdefined(e_target) && isalive(e_target))
	{
		e_target ai::set_ignoreme(1);
	}
	level flag::wait_till("player_completed_silo");
	if(isdefined(e_target) && isalive(e_target))
	{
		level scene::Play("cin_new_03_01_factoryraid_vign_wallrun_attack_attack");
	}
	else
	{
		level scene::Play("cin_new_03_01_factoryraid_vign_wallrun_attack_landing");
	}
	trigger::use("post_wall_run_diaz_color");
	foreach(node in var_10d6597a)
	{
		SetEnableNode(node, 1);
	}
	level thread namespace_e38c3c58::function_fa2e45b8();
}

/*
	Name: function_972f9cf5
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD4D2EEA6
	Offset: 0x5FB0
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_972f9cf5()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self endon("death");
	level endon("hash_827eb14f");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	while(!self flag::get("tactical_mode_used"))
	{
		if(!self laststand::player_is_in_laststand())
		{
			self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_USE_TACTICAL_VISION", 0, undefined, 4);
			self flag::wait_till_timeout(4, "tactical_mode_used");
			self thread util::hide_hint_text(1);
			if(!self flag::get("tactical_mode_used"))
			{
				self flag::wait_till_timeout(3, "tactical_mode_used");
			}
		}
		else
		{
			wait(10);
		}
	}
}

/*
	Name: function_c5eadf67
	Namespace: namespace_f8b9e1f8
	Checksum: 0x99DBE4F
	Offset: 0x6128
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_c5eadf67()
{
	level flag::wait_till("all_players_connected");
	foreach(player in level.players)
	{
		player thread function_2c49b262();
	}
	util::wait_network_frame();
	callback::on_connect(&function_2c49b262);
}

/*
	Name: function_2c49b262
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDC270904
	Offset: 0x6210
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_2c49b262()
{
	self endon("death");
	level endon("hash_827eb14f");
	self flag::init("tactical_mode_used");
	self thread function_859fc69a();
	self thread function_b085bdaf();
}

/*
	Name: function_859fc69a
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC5B9070A
	Offset: 0x6280
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_859fc69a()
{
	self endon("death");
	level endon("hash_68b78be8");
	while(1)
	{
		self waittill("hash_8d6266d8");
		self flag::set("tactical_mode_used");
	}
}

/*
	Name: function_b085bdaf
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDFD7BC6F
	Offset: 0x62D8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_b085bdaf()
{
	self endon("death");
	level endon("hash_68b78be8");
	while(1)
	{
		self waittill("hash_e0fad893");
		self flag::clear("tactical_mode_used");
	}
}

/*
	Name: function_10ecac98
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD3BF3237
	Offset: 0x6330
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_10ecac98()
{
	a_allies = spawner::get_ai_group_ai("factory_intro_allies");
	foreach(ai in a_allies)
	{
		ai thread function_90d66dc7();
	}
}

/*
	Name: function_90d66dc7
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE371A0AC
	Offset: 0x63E8
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_90d66dc7()
{
	self endon("death");
	wait(RandomFloatRange(1, 5));
	self.health = 1;
}

/*
	Name: warehouse_area
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9CCBBCA9
	Offset: 0x6428
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function warehouse_area()
{
	level flag::init("tac_mode_LOS_start");
	level thread function_f7e76a4c();
	level thread function_adcc83a3();
	level thread function_b11050e5();
	spawn_manager::enable("sm_warehouse_bottom");
	spawn_manager::enable("sm_warehouse_top_left");
	spawn_manager::enable("sm_warehouse_top_right");
	level thread namespace_e38c3c58::function_fa2e45b8();
	trigger::wait_till("warehouse_fallback");
	spawn_manager::enable("sm_warehouse_last_enemies");
	trigger::wait_till("warehouse_last_stand");
	level thread function_7ed63742();
	spawner::waittill_ai_group_cleared("warehouse_enemy");
	level flag::set("foundry_remote_hijack_enabled");
}

/*
	Name: function_8696052d
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9048D0BA
	Offset: 0x6598
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_8696052d()
{
	trigger::wait_till("t_tmode_tutorial_LOS_lookat");
	if(!level flag::get("tac_mode_LOS_start"))
	{
		level flag::set("tac_mode_LOS_start");
		level notify("hash_3630df59");
	}
}

/*
	Name: function_2d26442b
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2AFD92C7
	Offset: 0x6610
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_2d26442b()
{
	trigger::wait_till("t_tmode_tutorial_LOS");
	if(!level flag::get("tac_mode_LOS_start"))
	{
		level flag::set("tac_mode_LOS_start");
		level notify("hash_3630df59");
	}
}

/*
	Name: function_f7e76a4c
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA848EF7C
	Offset: 0x6688
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_f7e76a4c()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level thread function_8696052d();
	level thread function_2d26442b();
	level waittill("hash_3630df59");
	level.var_6cb8b7a thread dialog::say("diaz_tac_mode_info_is_syn_0");
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread function_972f9cf5();
	}
	battlechatter::function_d9f49fba(1);
	level thread function_da86d58f();
	level thread function_14da3d31();
}

/*
	Name: function_da86d58f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2D8FDE23
	Offset: 0x67F8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_da86d58f()
{
	level endon("hash_e2b9ed35");
	level.var_6cb8b7a dialog::say("diaz_keep_moving_up_0", 15);
}

/*
	Name: function_14da3d31
	Namespace: namespace_f8b9e1f8
	Checksum: 0xAA23AC6C
	Offset: 0x6838
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_14da3d31()
{
	level endon("hash_e2b9ed35");
	while(1)
	{
		var_da5600e3 = GetEntArray("warehouse_ammo", "targetname");
		foreach(var_4abed703 in var_da5600e3)
		{
			foreach(e_player in level.activePlayers)
			{
				if(Distance2D(e_player.origin, var_4abed703.origin) < 100)
				{
					level.var_6cb8b7a dialog::say("diaz_check_your_ammo_gra_0");
					return;
				}
			}
		}
		wait(1);
	}
}

/*
	Name: function_4fbc759
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC7427E2F
	Offset: 0x69C0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_4fbc759(var_b9229bcd)
{
	scene::add_scene_func("cin_new_03_03_factoryraid_vign_startup_flee", &function_6f46b3ee, "init");
	scene::add_scene_func("cin_new_03_03_factoryraid_vign_startup_flee", &function_54cce95e);
	level thread scene::init("cin_new_03_03_factoryraid_vign_startup_flee", var_b9229bcd);
	scene::add_scene_func("cin_new_03_03_factoryraid_vign_startup", &function_43764348, "init");
	var_3d2988cc = struct::get_array("warehouse_startup_scene", "targetname");
	foreach(s_scene in var_3d2988cc)
	{
		s_scene thread function_4432ae41();
	}
	level flag::wait_till("trigger_warehouse_worker_vignettes");
	level thread scene::Play("cin_new_03_03_factoryraid_vign_startup_flee", var_b9229bcd);
}

/*
	Name: function_4432ae41
	Namespace: namespace_f8b9e1f8
	Checksum: 0x14BCA9FF
	Offset: 0x6B68
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_4432ae41()
{
	wait(RandomFloatRange(0.1, 1.5));
	self scene::init();
	level flag::wait_till("trigger_warehouse_worker_vignettes");
	wait(RandomFloatRange(0.1, 1.5));
	self thread scene::Play();
}

/*
	Name: function_6f46b3ee
	Namespace: namespace_f8b9e1f8
	Checksum: 0x18F2DE85
	Offset: 0x6C18
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_6f46b3ee(a_ents)
{
	a_ents["factoryraid_vign_startup_flee_soldier_a"] util::magic_bullet_shield();
	a_ents["factoryraid_vign_startup_flee_soldier_b"] util::magic_bullet_shield();
}

/*
	Name: function_54cce95e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBE60083D
	Offset: 0x6C70
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_54cce95e(a_ents)
{
	level notify("hash_549286bb");
	level waittill("hash_a54f8e97");
	a_ents["factoryraid_vign_startup_flee_soldier_a"] util::stop_magic_bullet_shield();
	a_ents["factoryraid_vign_startup_flee_soldier_b"] util::stop_magic_bullet_shield();
}

/*
	Name: function_43764348
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5CF92A04
	Offset: 0x6CE8
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_43764348(a_ents)
{
	ai_enemy = a_ents["ai_warehouse_startup"];
	ai_enemy endon("death");
	level endon("hash_a495f22c");
	e_goalvolume = GetEnt("warehouse_end_goalvolume", "targetname");
	ai_enemy SetGoal(e_goalvolume);
	ai_enemy util::waittill_any("damage", "bulletwhizby");
	level flag::set("trigger_warehouse_worker_vignettes");
}

/*
	Name: function_b11050e5
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC0EE12A
	Offset: 0x6DC0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_b11050e5(a_ents)
{
	level thread function_8c12b9e9();
	level waittill("hash_549286bb");
	wait(10);
	level thread function_8f6cc6c9();
}

/*
	Name: function_8c12b9e9
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD7BA8A58
	Offset: 0x6E18
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_8c12b9e9()
{
	e_door_right = GetEnt("warehouse_exit_door_right", "targetname");
	e_door_left = GetEnt("warehouse_exit_door_left", "targetname");
	e_door_right RotateYaw(75 * -1, 0.05);
	e_door_left RotateYaw(75, 0.05);
	function_bab1ff00("umbra_gate_factory_door_01", 1);
	var_cecf22e2 = GetEnt("ug_factory_hideme", "targetname");
	var_cecf22e2 Hide();
}

/*
	Name: function_7ed63742
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB649E5AF
	Offset: 0x6F38
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function function_7ed63742()
{
	a_ai = spawner::get_ai_group_ai("warehouse_enemy");
	e_goalvolume = GetEnt("warehouse_end_goalvolume", "targetname");
	var_c873bdb2 = 0;
	foreach(ai in a_ai)
	{
		if(isalive(ai) && !ai istouching(e_goalvolume))
		{
			var_c873bdb2++;
			if(var_c873bdb2 <= 8)
			{
				ai SetGoal(e_goalvolume);
			}
			else
			{
				ai thread namespace_ce0e5f06::function_95132241();
			}
			wait(RandomFloatRange(0.5, 2));
		}
	}
}

/*
	Name: function_8f6cc6c9
	Namespace: namespace_f8b9e1f8
	Checksum: 0x87D91A05
	Offset: 0x70D0
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_8f6cc6c9(var_750e4b2a)
{
	if(!isdefined(var_750e4b2a))
	{
		var_750e4b2a = 0;
	}
	e_door_right = GetEnt("warehouse_exit_door_right", "targetname");
	e_door_left = GetEnt("warehouse_exit_door_left", "targetname");
	e_door_right RotateYaw(75, 5, 0.25, 0.3);
	e_door_left RotateYaw(75 * -1, 5, 0.25, 0.3);
	e_door_right waittill("rotatedone");
	function_bab1ff00("umbra_gate_factory_door_01", 0);
	var_cecf22e2 = GetEnt("ug_factory_hideme", "targetname");
	var_cecf22e2 show();
	var_cecf22e2 solid();
}

/*
	Name: function_81354ca4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x240F69B2
	Offset: 0x7258
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_81354ca4()
{
	level flag::init("flag_hijack_complete");
	level flag::init("junkyard_door_open");
	level flag::init("player_returned_to_body_post_foundry");
	level flag::init("foundry_objective_complete");
	function_211925e6("foundry");
	function_33ccaeb6("foundry");
	battlechatter::function_d9f49fba(0);
	level thread function_29f8003e();
	level thread function_84cfbff7();
	level thread function_465602a1();
	level thread function_254442e();
	level waittill("hash_fa1f139b");
	battlechatter::function_d9f49fba(1);
	level thread function_3a211205();
	Array::thread_all(GetEntArray("vehicle_triggered", "script_noteworthy"), &function_8df847d);
	spawn_manager::enable("sm_foundry_reactor_balcony_1");
	spawn_manager::enable("sm_foundry_front_vat_left");
	spawn_manager::enable("sm_foundry_front_vat_right");
	level thread function_4263aa02();
	level thread function_3fd07e2f();
	function_d4b28fef();
	function_f0e7bd1b();
	level flag::wait_till("player_moving_to_vat_room");
}

/*
	Name: function_d4b28fef
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD6DC832E
	Offset: 0x74C0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d4b28fef()
{
	objectives::set("cp_level_newworld_foundry_subobj_locate_generator");
	objectives::breadcrumb("foundry_breadcrumbs");
	objectives::Hide("cp_level_newworld_foundry_subobj_locate_generator");
}

/*
	Name: function_29f8003e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCF56F6C9
	Offset: 0x7518
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_29f8003e()
{
	var_1066b4e5 = GetEnt("foundry_generator_dmg", "targetname");
	var_1066b4e5 ghost();
}

/*
	Name: function_84cfbff7
	Namespace: namespace_f8b9e1f8
	Checksum: 0x803F7013
	Offset: 0x7568
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_84cfbff7()
{
	level.var_6cb8b7a SetHighDetail(1);
	level.var_6cb8b7a namespace_ce0e5f06::function_d0aa2f4f();
	if(isdefined(level.BZM_NEWWORLDDialogue2_3Callback))
	{
		level thread [[level.BZM_NEWWORLDDialogue2_3Callback]]();
	}
	scene::add_scene_func("cin_new_03_02_factoryraid_vign_explaindrones", &function_3f145e58);
	level thread scene::Play("cin_new_03_02_factoryraid_vign_explaindrones");
	level waittill("hash_b14420d1");
	objectives::set("cp_level_newworld_factory_subobj_hijack_drone");
	if(!namespace_ce0e5f06::function_81acf083())
	{
		level thread function_1fff53ca();
		level flag::wait_till("flag_hijack_complete");
	}
	else
	{
		level thread function_341b5959(0);
	}
	scene::add_scene_func("cin_new_03_02_factoryraid_vign_explaindrones_open_door", &function_8aa7e247);
	scene::add_scene_func("cin_new_03_02_factoryraid_vign_explaindrones_open_door", &function_190c4318);
	level thread scene::Play("cin_new_03_02_factoryraid_vign_explaindrones_open_door");
	objectives::complete("cp_level_newworld_factory_subobj_hijack_drone");
	savegame::function_5d2cdd99();
}

/*
	Name: function_8aa7e247
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC5B3973C
	Offset: 0x7738
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_8aa7e247(a_ents)
{
	a_ents["diaz"] waittill("hash_a1b55a28");
	level.var_6cb8b7a SetHighDetail(0);
	a_ents["diaz"] function_9110a277(1);
}

/*
	Name: function_190c4318
	Namespace: namespace_f8b9e1f8
	Checksum: 0x67E2DCDD
	Offset: 0x77A8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_190c4318(a_ents)
{
	level waittill("hash_140f40e1");
	a_ents["diaz"] cybercom::function_f8669cbf(1);
}

/*
	Name: function_8de037ed
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA9CFDBC8
	Offset: 0x77F0
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_8de037ed()
{
	level.var_b7a27741 = 1;
	foreach(player in level.players)
	{
		player thread function_3460d45c();
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		if(!SessionModeIsCampaignZombiesGame())
		{
			player namespace_d00ec32::giveAbility("cybercom_hijack", 0);
			player namespace_d00ec32::function_eb512967("cybercom_hijack", 1);
		}
		player thread function_70704b5f();
	}
	callback::on_connect(&function_3460d45c);
	if(!namespace_ce0e5f06::function_81acf083())
	{
		level thread function_dafdc95e();
	}
	level notify("hash_68b78be8");
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		player thread function_6eff1530();
	}
	level thread function_341b5959();
}

/*
	Name: function_341b5959
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD4CD3149
	Offset: 0x7A28
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_341b5959(b_wait)
{
	if(!isdefined(b_wait))
	{
		b_wait = 1;
	}
	if(b_wait)
	{
		level waittill("hash_8ac3077f");
	}
	level thread namespace_e38c3c58::function_964ce03c();
	objectives::complete("cp_level_newworld_factory_subobj_hijack_drone");
}

/*
	Name: function_1fff53ca
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5A04AF77
	Offset: 0x7A98
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_1fff53ca()
{
	level endon("hash_98760f9c");
	while(1)
	{
		if(namespace_ce0e5f06::function_70aba08e())
		{
			wait(0.1);
			continue;
		}
		else
		{
			level thread function_341b5959(0);
			level flag::set("flag_hijack_complete");
			return;
		}
	}
}

/*
	Name: function_6eff1530
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF5A711EB
	Offset: 0x7B20
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_6eff1530()
{
	self endon("death");
	level endon("hash_8db6922a");
	level endon("hash_45205ed8");
	self endon("hash_cf0ffa56");
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self GadgetPowerSet(0, 100);
	self GadgetPowerSet(1, 100);
	self thread function_c3c54cd1();
	while(!self flag::get("player_hijacked_vehicle"))
	{
		self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_DRONE_TARGET", 0, undefined, -1);
		self waittill("hash_50db7e6");
		self thread function_40c6f0a4();
		self waittill("hash_8216024");
	}
	self thread util::hide_hint_text(1);
}

/*
	Name: function_40c6f0a4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x67E0EDE9
	Offset: 0x7C58
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_40c6f0a4()
{
	self endon("hash_8216024");
	level endon("hash_8db6922a");
	level endon("hash_45205ed8");
	self endon("hash_cf0ffa56");
	self util::hide_hint_text(1);
	while(!self flag::get("player_hijacked_vehicle"))
	{
		level waittill("hash_92698df4", ent, e_player);
		if(e_player == self)
		{
			self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_DRONE_RELEASE", 0, undefined, -1);
			level waittill("hash_de3c9ffe", ent, e_player);
			if(e_player == self)
			{
				self util::hide_hint_text(1);
				continue;
			}
		}
	}
}

/*
	Name: function_c3c54cd1
	Namespace: namespace_f8b9e1f8
	Checksum: 0x4692FAF9
	Offset: 0x7D68
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_c3c54cd1()
{
	self endon("death");
	level endon("hash_8db6922a");
	level endon("hash_45205ed8");
	self endon("hash_8ac3077f");
	trigger::wait_till("player_entering_foundry_on_foot", "targetname", self);
	self notify("hash_cf0ffa56");
	self util::hide_hint_text(1);
}

/*
	Name: function_3460d45c
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD7FD0C3C
	Offset: 0x7DF0
	Size: 0x3CF
	Parameters: 0
	Flags: None
*/
function function_3460d45c()
{
	self endon("disconnect");
	level endon("hash_7aa3c9ce");
	if(!self flag::exists("player_hijacked_vehicle"))
	{
		self flag::init("player_hijacked_vehicle");
	}
	if(!self flag::exists("player_hijacked_wasp"))
	{
		self flag::init("player_hijacked_wasp");
	}
	if(SessionModeIsCampaignZombiesGame())
	{
		level flag::set("flag_hijack_complete");
		self flag::set("player_hijacked_vehicle");
		level notify("hash_8ac3077f");
		break;
	}
	while(1)
	{
		self waittill("ClonedEntity", var_52b4a338);
		if(var_52b4a338.targetname === "foundry_hackable_vehicle_ai")
		{
			self namespace_7cb6cd95::function_6c745562(GetEnt("hijacked_vehicle_range", "targetname"));
			var_52b4a338.overrideVehicleDamage = &function_54e29111;
			var_52b4a338 thread function_eab20b60();
			level flag::set("flag_hijack_complete");
			self flag::set("player_hijacked_vehicle");
			level notify("hash_8ac3077f");
			if(!level flag::get("foundry_objective_complete"))
			{
				objectives::Hide("cp_level_newworld_factory_hijack", self);
			}
			if(var_52b4a338.scriptvehicletype === "wasp")
			{
				var_52b4a338.var_66ff806d = 1;
				if(!self flag::get("player_hijacked_wasp"))
				{
					self thread function_baeddf9e();
				}
			}
			self waittill("hash_c68b15c8");
			self waittill("transition_done");
			wait(0.1);
			self GadgetPowerChange(0, 100);
			self GadgetPowerChange(1, 100);
			if(!level flag::get("foundry_objective_complete"))
			{
				objectives::show("cp_level_newworld_factory_hijack", self);
				if(level.var_8474061e.size > 0)
				{
					if(self namespace_ce0e5f06::function_c633d8fe())
					{
						continue;
					}
					self thread function_c3c54cd1();
					var_65d6d111 = Array("foundry_generator_destroyed", "foundry_all_vehicles_hijacked");
					self thread namespace_ce0e5f06::function_6062e90("cybercom_hijack", 0, "foundry_generator_destroyed", 1, "CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_DRONE_TARGET", "CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_DRONE_RELEASE", undefined, "player_entering_foundry_on_foot");
				}
			}
		}
	}
}

/*
	Name: function_baeddf9e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x74516109
	Offset: 0x81C8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_baeddf9e()
{
	self endon("death");
	self flag::set("player_hijacked_wasp");
	if(self namespace_ce0e5f06::function_c633d8fe())
	{
		return;
	}
	wait(0.5);
	self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_WASP_CONTROL_TUTORIAL", 0, undefined, 4);
}

/*
	Name: function_dafdc95e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA5997DC5
	Offset: 0x8248
	Size: 0x241
	Parameters: 0
	Flags: None
*/
function function_dafdc95e()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level.var_8474061e = Array::remove_undefined(level.var_8474061e);
	foreach(vh_drone in level.var_8474061e)
	{
		if(vh_drone.archetype == "amws")
		{
			vh_drone.var_1ab87762 = vh_drone.origin + (0, 0, 44);
		}
		else if(vh_drone.archetype == "wasp")
		{
			if(SessionModeIsCampaignZombiesGame())
			{
				continue;
			}
			vh_drone.var_1ab87762 = vh_drone.origin + (0, 0, 18);
		}
		vh_drone thread function_483e8906();
		objectives::set("cp_level_newworld_factory_hijack", vh_drone.var_1ab87762);
	}
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe())
		{
			objectives::Hide("cp_level_newworld_factory_hijack", player);
		}
	}
}

/*
	Name: function_483e8906
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9F8B2313
	Offset: 0x8498
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_483e8906()
{
	level endon("hash_8db6922a");
	self waittill("hash_bda2a10e");
	objectives::complete("cp_level_newworld_factory_hijack", self.var_1ab87762);
}

/*
	Name: function_a18dda0f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1B6F48BE
	Offset: 0x84E0
	Size: 0x87
	Parameters: 15
	Flags: None
*/
function function_a18dda0f(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal)
{
	iDamage = 0;
	return iDamage;
}

/*
	Name: function_54e29111
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1DD73805
	Offset: 0x8570
	Size: 0x15D
	Parameters: 15
	Flags: None
*/
function function_54e29111(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return iDamage;
	}
	var_14a49e9c = GetAITeamArray("axis").size;
	if(weapon.weapClass == "rocketlauncher")
	{
		iDamage = iDamage * 0.018;
		return iDamage;
	}
	if(var_14a49e9c < 15)
	{
		iDamage = iDamage * 0.1;
	}
	else if(var_14a49e9c < 25)
	{
		iDamage = iDamage * 0.3;
	}
	return iDamage;
}

/*
	Name: function_eab20b60
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8FB02289
	Offset: 0x86D8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_eab20b60()
{
	self waittill("death");
	if(isdefined(self.owner))
	{
		self.owner GadgetPowerChange(0, 100);
		self.owner GadgetPowerChange(1, 100);
		if(self.archetype == "wasp")
		{
			self playsound("gdt_cybercore_wasp_shutdown");
		}
		if(self.archetype == "amws")
		{
			self playsound("gdt_cybercore_amws_shutdown");
		}
	}
}

/*
	Name: function_3929ac3c
	Namespace: namespace_f8b9e1f8
	Checksum: 0x7FE21053
	Offset: 0x87A0
	Size: 0x36B
	Parameters: 0
	Flags: None
*/
function function_3929ac3c()
{
	util::magic_bullet_shield(self);
	self.noCybercom = 1;
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self vehicle_ai::set_state("combat");
	wait(0.05);
	self SetGoal(struct::get("diaz_wasp_start_pos", "targetname").origin, 1);
	level flag::wait_till("junkyard_door_open");
	self SetGoal(GetEnt("diaz_wasp_junkyard_goalvolume", "targetname"));
	level flag::wait_till("foundry_junkyard_enemies_retreat");
	self SetGoal(GetEnt("foundry_diaz_wasp_area_1", "targetname"));
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self thread function_d0cde060();
	function_83d084fe("foundry_area_1_moveup");
	self SetGoal(GetEnt("foundry_diaz_wasp_area_2", "targetname"));
	function_83d084fe("foundry_area_2_moveup");
	self SetGoal(GetEnt("foundry_diaz_wasp_area_3", "targetname"));
	function_83d084fe("foundry_area_3_moveup");
	self function_9f084580();
	self SetGoal(GetEnt("foundry_diaz_wasp_area_4", "targetname"));
	level flag::wait_till("foundry_objective_complete");
	self clientfield::set("name_diaz_wasp", 0);
	util::stop_magic_bullet_shield(self);
	self DoDamage(self.health, self.origin);
	self clientfield::set("emp_vehicles_fx", 1);
	self util::delay(8, undefined, &clientfield::set, "emp_vehicles_fx", 0);
}

/*
	Name: function_d0cde060
	Namespace: namespace_f8b9e1f8
	Checksum: 0x95290BDB
	Offset: 0x8B18
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_d0cde060()
{
	if(level.activePlayers.size > 1)
	{
		return;
	}
	function_83d084fe("foundry_entered");
	var_7c78ee9e = GetEnt("s1_01", "script_string");
	if(var_7c78ee9e.b_destroyed !== 1)
	{
		self ai::shoot_at_target("normal", var_7c78ee9e, "fx_spill_middle_jnt", 3);
		var_7c78ee9e DoDamage(500, self.origin, self);
		wait(2);
	}
	level notify("hash_d3038698");
}

/*
	Name: function_9f084580
	Namespace: namespace_f8b9e1f8
	Checksum: 0x505779F4
	Offset: 0x8BF8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_9f084580()
{
	if(level.activePlayers.size > 1)
	{
		return;
	}
	var_7c78ee9e = GetEnt("bridge", "script_string");
	if(var_7c78ee9e.b_destroyed !== 1)
	{
		self ai::shoot_at_target("normal", var_7c78ee9e, "fx_spill_middle_jnt", 5);
		var_7c78ee9e DoDamage(500, self.origin, self);
	}
}

/*
	Name: function_465602a1
	Namespace: namespace_f8b9e1f8
	Checksum: 0x72A436D8
	Offset: 0x8CB0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_465602a1()
{
	level waittill("hash_fa1f139b");
	var_9b668c87 = GetEnt("fake_foundry_door", "targetname");
	var_9b668c87 MoveZ(128, 3, 1, 0.5);
	var_9b668c87 playsound("evt_junkyard_door_open");
	var_9b668c87 waittill("movedone");
	level flag::set("junkyard_door_open");
}

/*
	Name: function_254442e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x67807085
	Offset: 0x8D90
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_254442e()
{
	level flag::init("foundry_junkyard_enemies_retreat");
	scene::add_scene_func("cin_new_03_03_factoryraid_vign_junkyard", &function_dd0bd7eb, "init");
	level scene::init("cin_new_03_03_factoryraid_vign_junkyard");
	var_4161ad80 = function_83d084fe("player_enters_junkyard");
	if(var_4161ad80.archetype === "amws")
	{
		wait(3);
	}
	level flag::set("foundry_junkyard_enemies_retreat");
	scene::add_scene_func("cin_new_03_03_factoryraid_vign_junkyard", &function_328f9079, "done");
	level scene::Play("cin_new_03_03_factoryraid_vign_junkyard");
}

/*
	Name: function_dd0bd7eb
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5554DB6
	Offset: 0x8EC8
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_dd0bd7eb(a_ents)
{
	foreach(ai in a_ents)
	{
		ai ai::set_ignoreall(1);
		ai ai::set_ignoreme(1);
		ai thread function_ae816470();
	}
}

/*
	Name: function_ae816470
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF2CDDDA2
	Offset: 0x8F98
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_ae816470()
{
	self endon("death");
	level endon("hash_c8ac660c");
	self util::waittill_any("damage", "bulletwhizby", "pain", "proximity");
	level flag::set("foundry_junkyard_enemies_retreat");
}

/*
	Name: function_328f9079
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFB9F6CF4
	Offset: 0x9010
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_328f9079(a_ents)
{
	var_46700fc3 = GetNodeArray("foundry_retreat_vignette_nodes", "targetname");
	foreach(ai in a_ents)
	{
		if(isalive(ai))
		{
			nd_goal = Array::random(var_46700fc3);
			ArrayRemoveValue(var_46700fc3, nd_goal);
			ai thread function_ff59cf8(nd_goal);
		}
	}
}

/*
	Name: function_ff59cf8
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1BEC4E27
	Offset: 0x9130
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_ff59cf8(nd_goal)
{
	self endon("death");
	self SetGoal(nd_goal, 1);
	self waittill("goal");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_83d084fe
	Namespace: namespace_f8b9e1f8
	Checksum: 0x52BB45E1
	Offset: 0x91A8
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_83d084fe(str_targetname)
{
	var_b5b0f408 = GetEnt(str_targetname, "targetname");
	var_b5b0f408 endon("death");
	while(1)
	{
		var_b5b0f408 waittill("trigger", var_4161ad80);
		if(isPlayer(var_4161ad80) || isdefined(var_4161ad80.owner))
		{
			if(isdefined(var_4161ad80.owner))
			{
				var_b5b0f408 trigger::use(undefined, var_4161ad80.owner);
			}
			return var_4161ad80;
		}
	}
}

/*
	Name: function_8df847d
	Namespace: namespace_f8b9e1f8
	Checksum: 0x38763218
	Offset: 0x9288
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_8df847d()
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", var_4161ad80);
		if(isPlayer(var_4161ad80) || isdefined(var_4161ad80.owner))
		{
			if(isdefined(var_4161ad80.owner))
			{
				self UseBy(var_4161ad80.owner);
			}
		}
	}
}

/*
	Name: function_763f6f1c
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA275EF3F
	Offset: 0x9320
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_763f6f1c(var_eb8dfada)
{
	self endon("death");
	self thread LUI::screen_fade_out(1);
	level util::delay(1, undefined, &flag::set, "player_returned_to_body_post_foundry");
	self FreezeControls(1);
	self waittill("hash_c68b15c8");
	self waittill("transition_done");
	self SetOrigin(var_eb8dfada.origin);
	self SetPlayerAngles(var_eb8dfada.angles);
	self SetStance("stand");
	util::wait_network_frame();
	self LUI::screen_fade_in(0.5);
	self FreezeControls(0);
}

/*
	Name: function_f0e7bd1b
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE70DAC0C
	Offset: 0x9470
	Size: 0x5BB
	Parameters: 0
	Flags: None
*/
function function_f0e7bd1b()
{
	level thread function_9729c7a4();
	function_d1055ea4();
	level notify("hash_8db6922a");
	level flag::set("foundry_objective_complete");
	level.var_6cb8b7a SetHighDetail(1);
	wait(2);
	foreach(e_player in level.activePlayers)
	{
		if(isdefined(e_player.hijacked_vehicle_entity))
		{
			var_9f7fd4a1 = e_player.hijacked_vehicle_entity;
			var_9f7fd4a1.overrideVehicleDamage = undefined;
			var_9f7fd4a1 clientfield::set("emp_vehicles_fx", 1);
			var_9f7fd4a1 util::delay(8, undefined, &clientfield::set, "emp_vehicles_fx", 0);
			var_9f7fd4a1 vehicle::god_off();
			var_9f7fd4a1 DoDamage(var_9f7fd4a1.health + 100, var_9f7fd4a1.origin);
			if(var_9f7fd4a1.archetype == "wasp")
			{
				var_9f7fd4a1 playsound("gdt_cybercore_wasp_shutdown");
			}
			if(var_9f7fd4a1.archetype == "amws")
			{
				var_9f7fd4a1 playsound("gdt_cybercore_amws_shutdown");
			}
			var_9943597a = struct::get_array("post_hijack_player_warpto");
			s_pos = Array::pop_front(var_9943597a);
			e_player thread function_763f6f1c(s_pos);
		}
	}
	level thread function_29537dff();
	foreach(veh in level.var_8474061e)
	{
		if(isdefined(veh))
		{
			objectives::complete("cp_level_newworld_factory_hijack", veh.var_1ab87762);
			veh.var_d3f57f67 = 1;
			veh clientfield::set("emp_vehicles_fx", 1);
			veh util::delay(8, undefined, &clientfield::set, "emp_vehicles_fx", 0);
		}
	}
	a_flags = Array("player_returned_to_body_post_foundry", "player_moving_to_vat_room");
	level flag::wait_till_any_timeout(10, a_flags);
	battlechatter::function_d9f49fba(0);
	Array::thread_all(GetAITeamArray("axis"), &namespace_ce0e5f06::function_95132241);
	level scene::stop("cin_new_03_02_factoryraid_vign_explaindrones_open_door");
	level.var_6cb8b7a thread function_9110a277(0);
	level.var_6cb8b7a ai::set_behavior_attribute("sprint", 0);
	level.var_6cb8b7a ai::set_behavior_attribute("cqb", 1);
	level thread scene::Play("cin_new_03_03_factoryraid_vign_pry_open");
	e_clip = GetEnt("warehouse_door_clip", "targetname");
	e_clip delete();
	function_bab1ff00("umbra_gate_factory_door_01", 1);
	var_cecf22e2 = GetEnt("ug_factory_hideme", "targetname");
	var_cecf22e2 Hide();
	level.var_6cb8b7a SetHighDetail(0);
	level thread function_777a44b6();
}

/*
	Name: function_777a44b6
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5A095022
	Offset: 0x9A38
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_777a44b6()
{
	wait(2);
	trigger::use("vat_room_color_trigger_start");
	level thread function_5dfc077c();
}

/*
	Name: function_d1055ea4
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD4C37B66
	Offset: 0x9A80
	Size: 0x413
	Parameters: 0
	Flags: None
*/
function function_d1055ea4()
{
	level flag::init("player_destroyed_foundry");
	objectives::set("cp_level_newworld_foundry_subobj_destroy_generator", struct::get("foundry_generator_objective_struct", "targetname"));
	n_damage = 0;
	var_5c2b0988 = GetEnt("foundry_generator", "targetname");
	var_1066b4e5 = GetEnt("foundry_generator_dmg", "targetname");
	var_5c2b0988 clientfield::set("weakpoint", 1);
	var_5c2b0988 globallogic_ui::createWeakpointWidget(&"tag_weakpoint", 2600, 5000);
	var_5c2b0988 SetCanDamage(1);
	while(n_damage < 1000)
	{
		var_5c2b0988 waittill("damage", iDamage, sAttacker, vDirection, vPoint, stype, sModelName, sAttachTag, sTagName);
		if(isPlayer(sAttacker))
		{
			if(stype === "MOD_PROJECTILE_SPLASH")
			{
				iDamage = iDamage * 2;
			}
			n_damage = n_damage + iDamage;
		}
	}
	var_5c2b0988 clientfield::set("weakpoint", 0);
	var_5c2b0988 globallogic_ui::destroyWeakpointWidget(&"tag_weakpoint");
	var_5c2b0988 SetCanDamage(0);
	RadiusDamage(var_5c2b0988.origin, 500, 200, 60, undefined, "MOD_EXPLOSIVE");
	PlayRumbleOnPosition("cp_newworld_rumble_factory_generator_destroyed", var_5c2b0988.origin);
	var_5c2b0988 playsound("evt_generator_explo");
	var_5c2b0988 clientfield::set("emp_generator_fx", 1);
	var_1066b4e5 show();
	var_5c2b0988 ghost();
	scene::add_scene_func("p7_fxanim_cp_newworld_generator_debris_bundle", &function_11114c92, "play");
	level thread scene::Play("p7_fxanim_cp_newworld_generator_debris_bundle");
	objectives::complete("cp_level_newworld_foundry_subobj_destroy_generator", struct::get("foundry_generator_objective_struct", "targetname"));
	level flag::set("player_destroyed_foundry");
	level thread function_9641f186();
	savegame::function_5d2cdd99();
}

/*
	Name: function_3a211205
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF73F2132
	Offset: 0x9EA0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3a211205()
{
	scene::add_scene_func("p7_fxanim_cp_newworld_generator_debris_bundle", &function_cd6bcaad, "init");
	level thread scene::init("p7_fxanim_cp_newworld_generator_debris_bundle");
}

/*
	Name: function_cd6bcaad
	Namespace: namespace_f8b9e1f8
	Checksum: 0x686423F8
	Offset: 0x9F00
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_cd6bcaad(a_ents)
{
	a_ents["newworld_generator_debris"] Hide();
}

/*
	Name: function_11114c92
	Namespace: namespace_f8b9e1f8
	Checksum: 0xADC21E6F
	Offset: 0x9F38
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_11114c92(a_ents)
{
	a_ents["newworld_generator_debris"] show();
}

/*
	Name: function_29537dff
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB00D9EF2
	Offset: 0x9F70
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_29537dff()
{
	function_bab1ff00("umbra_gate_foundry_door_01", 1);
	var_cecf22e2 = GetEnt("ug_foundry_hideme", "targetname");
	var_cecf22e2 Hide();
	e_door_right = GetEnt("foundry_exit_door_right", "targetname");
	e_door_right RotateYaw(-55, 3, 1.5, 0.5);
}

/*
	Name: function_3fd07e2f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFEECD259
	Offset: 0xA058
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_3fd07e2f()
{
	function_83d084fe("foundry_entered");
	spawn_manager::enable("sm_foundry_far_side_bottom");
	function_83d084fe("foundry_area_1_moveup");
	spawn_manager::enable("sm_foundry_far_side_balcony");
	function_83d084fe("foundry_area_2_moveup");
	spawn_manager::enable("sm_foundry_fxanim_catwalk");
	spawn_manager::enable("sm_foundry_middle");
	function_83d084fe("foundry_area_3_moveup");
	spawn_manager::enable("sm_foundry_back_corner");
	level thread function_ff771cc8("foundry_spawn_01", "foundry_end_reinforcements_1");
	function_83d084fe("foundry_area_4_moveup");
	spawn_manager::enable("sm_foundry_generator");
	level thread function_ff771cc8("foundry_spawn_02", "foundry_end_reinforcements_2");
	level thread function_ff771cc8("foundry_spawn_03", "foundry_end_reinforcements_3", 1.5);
}

/*
	Name: function_ff771cc8
	Namespace: namespace_f8b9e1f8
	Checksum: 0x78CD933D
	Offset: 0xA1F0
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_ff771cc8(var_9b54f311, str_spawn_manager, n_delay)
{
	if(isdefined(n_delay))
	{
		wait(n_delay);
	}
	var_adad709 = GetEnt(var_9b54f311, "targetname");
	var_adad709 MoveZ(98, 1);
	var_adad709 waittill("movedone");
	spawn_manager::enable(str_spawn_manager);
}

/*
	Name: function_46d1131c
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8C181E4
	Offset: 0xA2A8
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_46d1131c()
{
	var_e0da8e0f = GetEnt("vat_room_exit_door_trigger", "targetname");
	var_e0da8e0f TriggerEnable(0);
	if(isdefined(level.BZM_NEWWORLDDialogue2_4Callback))
	{
		level thread [[level.BZM_NEWWORLDDialogue2_4Callback]]();
	}
	function_33ccaeb6("vat_room");
	level thread function_b56ffd69();
	level thread function_2a38ab40();
	level thread function_1ad208();
	level thread function_b83baf6f("take_out_turret_1", "vat_turret_1");
	level thread function_b83baf6f("take_out_turret_2", "vat_turret_2");
	level thread function_fc0bd7c9();
	objectives::breadcrumb("vat_room_breadcrumb");
	spawner::waittill_ai_group_cleared("vat_room_enemy");
	if(!SessionModeIsCampaignZombiesGame())
	{
		spawner::waittill_ai_group_cleared("vat_room_turret");
	}
	level notify("hash_3bfba96f");
	level thread namespace_e38c3c58::function_d942ea3b();
}

/*
	Name: function_fc0bd7c9
	Namespace: namespace_f8b9e1f8
	Checksum: 0x78238EB9
	Offset: 0xA460
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_fc0bd7c9()
{
	spawner::waittill_ai_group_count("vat_room_enemy", 2);
	trigger::use("vat_room_clean_up_diaz");
}

/*
	Name: function_b83baf6f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD71D38A9
	Offset: 0xA4A8
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_b83baf6f(str_trigger, str_turret)
{
	trigger::wait_till(str_trigger);
	var_c316ad54 = GetEnt(str_turret, "script_noteworthy", 1);
	if(isalive(var_c316ad54))
	{
		level.var_6cb8b7a ai::shoot_at_target("normal", var_c316ad54, "tag_barrel_animate", 3);
		if(isalive(var_c316ad54))
		{
			var_c316ad54 kill();
		}
	}
}

/*
	Name: function_1ad208
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF7F32C3F
	Offset: 0xA580
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_1ad208()
{
	trigger::wait_till("vat_room_start_enemies");
	savegame::function_5d2cdd99();
	level thread function_c61a6c0a();
	spawn_manager::enable("sm_vat_room_enemies");
	level thread function_dda86f5a();
	trigger::wait_till("vat_room_second_wave");
	spawn_manager::enable("sm_vat_room_final_suppressors");
	trigger::wait_till("vat_room_spawn_closet");
	level thread function_f2c01307();
	level thread function_d9482ef9();
	var_9b15e92e = GetEnt("gv_vat_room_back", "targetname");
	foreach(ai in spawner::get_ai_group_ai("vat_room_enemy"))
	{
		if(isalive(ai))
		{
			ai SetGoal(var_9b15e92e);
			wait(RandomFloatRange(0.5, 2));
		}
	}
}

/*
	Name: function_dda86f5a
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9C45CE0F
	Offset: 0xA790
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_dda86f5a()
{
	wait(3);
	spawner::waittill_ai_group_ai_count("vat_room_enemy", 3);
	trigger::use("vat_room_second_wave");
	wait(3);
	spawner::waittill_ai_group_ai_count("vat_room_enemy", 3);
	trigger::use("vat_room_spawn_closet");
}

/*
	Name: function_b56ffd69
	Namespace: namespace_f8b9e1f8
	Checksum: 0x40836978
	Offset: 0xA818
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_b56ffd69()
{
	trigger::wait_till("factory_vat_room_ammo_vo");
	level.var_6cb8b7a dialog::say("diaz_grab_fresh_ammo_when_0");
	objectives::set("cp_level_newworld_vat_room_subobj_locate_command_ctr");
}

/*
	Name: function_f2c01307
	Namespace: namespace_f8b9e1f8
	Checksum: 0x99792DF2
	Offset: 0xA878
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_f2c01307()
{
	e_door = GetEnt("vat_room_spawn_door", "targetname");
	e_door MoveZ(136, 2, 0.5, 0.3);
	e_door waittill("movedone");
	spawn_manager::enable("sm_vat_room_closet");
	spawn_manager::function_347e835a("sm_vat_room_closet");
	var_13cfcc3e = GetEnt("gv_vat_room_spawn_closet", "targetname");
	var_13cfcc3e endon("death");
	b_clear = 0;
	while(!b_clear)
	{
		b_clear = 1;
		foreach(ai in spawner::get_ai_group_ai("vat_room_enemy"))
		{
			if(ai.script_noteworthy === "vat_spawn_closet" && ai istouching(var_13cfcc3e))
			{
				b_clear = 0;
			}
		}
		foreach(e_player in level.activePlayers)
		{
			if(e_player istouching(var_13cfcc3e))
			{
				b_clear = 0;
			}
		}
		wait(0.05);
	}
	e_door MoveZ(136 * -1, 2, 0.5, 0.3);
}

/*
	Name: function_2a38ab40
	Namespace: namespace_f8b9e1f8
	Checksum: 0x713EC8B7
	Offset: 0xAB30
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_2a38ab40()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	foreach(player in level.players)
	{
		player thread function_5e3e5d06();
	}
	util::wait_network_frame();
	callback::on_connect(&function_5e3e5d06);
	trigger::wait_till("vat_room_hijack_tutorial");
	battlechatter::function_d9f49fba(1);
	level thread function_451d7f3e();
	level thread function_8b7ac3d();
}

/*
	Name: function_5e3e5d06
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2E08AF6E
	Offset: 0xAC70
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_5e3e5d06()
{
	self endon("death");
	level endon("hash_f03001f9");
	self flag::init("vat_room_turret_hijacked");
	if(SessionModeIsCampaignZombiesGame())
	{
		self flag::set("vat_room_turret_hijacked");
		break;
	}
	while(1)
	{
		self waittill("ClonedEntity", var_52b4a338);
		if(var_52b4a338.targetname === "vat_room_auto_turret_ai")
		{
			self flag::set("vat_room_turret_hijacked");
		}
	}
}

/*
	Name: function_10195ade
	Namespace: namespace_f8b9e1f8
	Checksum: 0x11A06AD
	Offset: 0xAD40
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_10195ade()
{
	if(spawner::get_ai_group_ai("vat_room_turret") > 0)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_13458178
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF853D900
	Offset: 0xAD78
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_13458178()
{
	self endon("death");
	level endon("hash_f03001f9");
	if(isdefined(30))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(30, "timeout");
	}
	while(!self flag::get("vat_room_turret_hijacked"))
	{
		if(function_10195ade() && !self laststand::player_is_in_laststand())
		{
			self thread util::show_hint_text(&"CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_TUTORIAL", 0, undefined, 4);
			self flag::wait_till_timeout(4, "vat_room_turret_hijacked");
			self thread util::hide_hint_text(1);
			if(!self flag::get("vat_room_turret_hijacked"))
			{
				self flag::wait_till_timeout(3, "vat_room_turret_hijacked");
			}
		}
		else
		{
			wait(10);
		}
	}
}

/*
	Name: function_c61a6c0a
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE032A98E
	Offset: 0xAEF0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_c61a6c0a()
{
	level flag::init("vat_room_turrets_all_dead");
	if(!SessionModeIsCampaignZombiesGame())
	{
		spawner::simple_spawn("vat_room_auto_turret");
		foreach(e_turret in spawner::get_ai_group_ai("vat_room_turret"))
		{
			e_turret.var_32fb62ff = 0.25;
		}
		spawner::waittill_ai_group_cleared("vat_room_turret");
	}
	level flag::set("vat_room_turrets_all_dead");
}

/*
	Name: function_6d9440c2
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFB73B9E9
	Offset: 0xB018
	Size: 0x223
	Parameters: 2
	Flags: None
*/
function function_6d9440c2(str_objective, var_74cd64bc)
{
	level thread scene::init("cin_new_04_01_insideman_1st_hack_sh010");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_b7a27741 = 1;
		function_11a66a73(str_objective);
		objectives::complete("cp_level_newworld_factory_subobj_goto_hideout");
		objectives::complete("cp_level_newworld_factory_subobj_hijack_drone");
		objectives::complete("cp_level_newworld_foundry_subobj_destroy_generator");
		level thread function_d9482ef9();
		function_bab1ff00("umbra_gate_vat_room_door_01", 0);
		load::function_a2995f22();
		level thread namespace_e38c3c58::function_d942ea3b();
	}
	objectives::complete("cp_level_newworld_vat_room_subobj_locate_command_ctr");
	trigger::use("vat_room_hack_door_color_trigger");
	function_9e3608e3("charging_station_glass_doors");
	function_9e3608e3("charging_station_robot");
	e_player = function_61a9d0c7();
	level notify("hash_ecac2aac");
	var_cecf22e2 = GetEnt("ug_vat_room_hide_me", "targetname");
	var_cecf22e2 Hide();
	function_bab1ff00("umbra_gate_vat_room_door_01", 1);
	function_df0933fe(e_player);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_1a0c61bc
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD09A4199
	Offset: 0xB248
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_1a0c61bc(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::set("cp_level_newworld_rooftop_chase");
	function_6ca75594();
}

/*
	Name: function_6ca75594
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD6A56BD4
	Offset: 0xB2A0
	Size: 0x54B
	Parameters: 0
	Flags: None
*/
function function_6ca75594()
{
	namespace_ce0e5f06::function_bbd12ed2("cin_new_02_01_pallasintro_vign_appear");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_02_01_pallasintro_vign_appear_player");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_01_factoryraid_aie_break_glass");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_alley_pipes_bundle");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_wallrunright_diaz");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_wallrunright_diaz_pt2");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_01_factoryraid_vign_wallrun_attack_attack");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_01_factoryraid_vign_wallrun_attack_landing");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_startup_flee");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_startup");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_02_factoryraid_vign_explaindrones");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_02_factoryraid_vign_explaindrones_open_door");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_junkyard");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_pry_open");
	wait(3);
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh010");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh020");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh030");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh040");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh050");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh060");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh070");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh080");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh090");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh100");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh110");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh120");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh130");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh140");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh150");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh160");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh170");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh180");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh190");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh200");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh210");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh220");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh230");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh240");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh250");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh260");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh270");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh280");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh290");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh300");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh310");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh320");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_sgen_charging_station_break_02_bundle");
	namespace_ce0e5f06::function_bbd12ed2("cin_sgen_16_01_charging_station_aie_awaken_robot03");
	namespace_ce0e5f06::function_bbd12ed2("cin_sgen_16_01_charging_station_aie_awaken_robot04");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_fall_01_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_fall_02_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_bridge_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_gp_cauldron_hit_s3_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_fall_s1_01_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_fall_s1_02_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_bridge_s1_bundle");
}

/*
	Name: function_61a9d0c7
	Namespace: namespace_f8b9e1f8
	Checksum: 0x97B72205
	Offset: 0xB7F8
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_61a9d0c7()
{
	battlechatter::function_d9f49fba(0);
	level thread function_7fb08868();
	objectives::set("cp_level_newworld_vat_room_subobj_hack_door");
	thread namespace_ce0e5f06::function_16dd8c5f("vat_room_exit_door_trigger", &"cp_level_newworld_access_door", &"CP_MI_ZURICH_NEWWORLD_HACK", "vat_room_door_panel", "vat_room_door_hacked");
	objectives::complete("cp_level_newworld_vat_room_subobj_hack_door");
	level waittill("hash_d7559b12", e_player);
	return e_player;
}

/*
	Name: function_df0933fe
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD8347A19
	Offset: 0xB8B8
	Size: 0x373
	Parameters: 1
	Flags: None
*/
function function_df0933fe(e_player)
{
	if(isdefined(level.BZM_NEWWORLDDialogue3Callback))
	{
		level thread [[level.BZM_NEWWORLDDialogue3Callback]]();
	}
	level thread namespace_e38c3c58::function_57c68b7b();
	scene::add_scene_func("cin_sgen_16_01_charging_station_aie_awaken_robot03", &function_453c36ed, "play");
	scene::add_scene_func("cin_sgen_16_01_charging_station_aie_awaken_robot04", &function_453c36ed, "play");
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh010", &function_f25ee153);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh010", &function_d9753c8f);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh010", &function_676dcd54);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh010", &function_8d7047bd);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh010", &function_1736807e);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh010", &function_85526de2);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh320", &function_2cd7e04e);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh320", &function_ed4818dc);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh300", &function_86e62a41);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh320", &function_1f576299);
	scene::add_scene_func("cin_new_04_01_insideman_1st_hack_sh320", &namespace_ce0e5f06::function_43dfaf16, "skip_started");
	level thread scene::Play("cin_new_04_01_insideman_1st_hack_sh010", e_player);
	wait(1);
	var_f5bb3a9b = GetEnt("vat_room_exit_door", "targetname");
	var_f5bb3a9b MoveZ(98, 1, 0.3, 0.3);
	var_f5bb3a9b playsound("evt_insider_door_open");
	level waittill("hash_51eebdcb");
	util::clear_streamer_hint();
	level.var_6cb8b7a util::unmake_hero("diaz");
	level.var_6cb8b7a util::self_delete();
}

/*
	Name: function_f25ee153
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF5F761E
	Offset: 0xBC38
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_f25ee153(a_ents)
{
	namespace_ce0e5f06::function_2eded728(1);
	a_ents["player 1"] waittill("hash_c827463");
	namespace_ce0e5f06::function_2eded728(0);
}

/*
	Name: function_1f576299
	Namespace: namespace_f8b9e1f8
	Checksum: 0x15431B2
	Offset: 0xBC98
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_1f576299(a_ents)
{
	wait(0.2);
	if(!scene::is_skipping_in_progress())
	{
		namespace_ce0e5f06::function_2eded728(1);
	}
}

/*
	Name: function_d9753c8f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x547D06B6
	Offset: 0xBCE0
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_d9753c8f(a_ents)
{
	level waittill("hash_7c7cfa5");
	var_7e421bd8 = struct::get_array("inside_man_robot", "script_noteworthy");
	foreach(s_scene in var_7e421bd8)
	{
		if(s_scene.script_int === 1)
		{
			s_scene thread scene::Play();
		}
	}
}

/*
	Name: function_676dcd54
	Namespace: namespace_f8b9e1f8
	Checksum: 0x32C6D6F9
	Offset: 0xBDD0
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_676dcd54()
{
	level waittill("hash_e6b5302a");
	var_7e421bd8 = struct::get_array("inside_man_robot", "script_noteworthy");
	foreach(s_scene in var_7e421bd8)
	{
		if(s_scene.script_int === 2)
		{
			s_scene thread scene::Play();
		}
	}
}

/*
	Name: function_8d7047bd
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBFD7D3EB
	Offset: 0xBEB8
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_8d7047bd()
{
	level waittill("hash_cb7aa93");
	var_7e421bd8 = struct::get_array("inside_man_robot", "script_noteworthy");
	foreach(s_scene in var_7e421bd8)
	{
		if(s_scene.script_int === 3)
		{
			s_scene thread scene::Play();
			wait(0.2);
		}
	}
}

/*
	Name: function_1736807e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBFAEBB28
	Offset: 0xBFA8
	Size: 0x269
	Parameters: 1
	Flags: None
*/
function function_1736807e(a_ents)
{
	level waittill("hash_761cb65f");
	function_6ddd4fa4("charging_station_glass_doors");
	function_6ddd4fa4("charging_station_robot");
	var_7e421bd8 = struct::get_array("inside_man_robot", "script_noteworthy");
	var_7da8df42 = struct::get_array("inside_man_charging_station", "script_noteworthy");
	foreach(var_809fd273 in var_7da8df42)
	{
		var_809fd273 scene::stop(1);
	}
	foreach(var_f13cf991 in var_7e421bd8)
	{
		var_f13cf991 scene::stop(1);
	}
	var_64e85e6d = GetEntArray("inside_man_robot_ai", "targetname");
	foreach(ai in var_64e85e6d)
	{
		ai delete();
	}
}

/*
	Name: function_453c36ed
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD198AD6
	Offset: 0xC220
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_453c36ed(a_ents)
{
	foreach(ent in a_ents)
	{
		var_f6c5842 = ent;
		break;
	}
	var_f6c5842 waittill("breakGlass");
	var_809fd273 = struct::get(self.target, "targetname");
	var_809fd273 thread scene::Play();
}

/*
	Name: function_85526de2
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA52D9304
	Offset: 0xC308
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_85526de2(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		level thread LUI::prime_movie("cp_newworld_fs_robothallwayflash");
	}
	a_ents["player 1"] waittill("hash_d83e5e3a");
	if(!scene::is_skipping_in_progress())
	{
		namespace_ce0e5f06::function_eaf9c027("cp_newworld_fs_robothallwayflash", "fullscreen_additive", 1);
	}
}

/*
	Name: function_2cd7e04e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xAFD8879B
	Offset: 0xC3A0
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_2cd7e04e(a_ents)
{
	level thread namespace_ce0e5f06::function_30ec5bf7();
	a_ents["taylor"] ghost();
	a_ents["taylor"] waittill("hash_d7d448a5");
	a_ents["taylor"] thread namespace_ce0e5f06::function_c949a8ed(1);
	a_ents["diaz"] waittill("hash_3223f495");
	a_ents["diaz"] thread namespace_ce0e5f06::function_4943984c();
	a_ents["taylor"] waittill("hash_7f12e524");
	a_ents["taylor"] thread namespace_ce0e5f06::function_4943984c();
}

/*
	Name: function_ed4818dc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x97CF90E2
	Offset: 0xC4A0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_ed4818dc(a_ents)
{
	a_ents["player 1"] waittill("fade_out");
	level flag::set("infinite_white_transition");
}

/*
	Name: function_86e62a41
	Namespace: namespace_f8b9e1f8
	Checksum: 0x336FD05
	Offset: 0xC4F0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_86e62a41(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		level thread LUI::prime_movie("cp_newworld_fs_informant");
	}
	a_ents["player 1"] waittill("hash_13a0d5b7");
	if(!scene::is_skipping_in_progress())
	{
		namespace_ce0e5f06::function_eaf9c027("cp_newworld_fs_informant", "fullscreen_additive");
	}
}

/*
	Name: function_d9482ef9
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC8861BA8
	Offset: 0xC580
	Size: 0x1F1
	Parameters: 0
	Flags: None
*/
function function_d9482ef9()
{
	var_7da8df42 = struct::get_array("inside_man_charging_station", "script_noteworthy");
	foreach(s_scene in var_7da8df42)
	{
		s_scene scene::init();
		util::wait_network_frame();
	}
	var_7e421bd8 = struct::get_array("inside_man_robot", "script_noteworthy");
	foreach(s_scene in var_7e421bd8)
	{
		var_f6c5842 = spawner::simple_spawn_single("inside_man_robot");
		var_f6c5842 ai::set_ignoreme(1);
		var_f6c5842 ai::set_ignoreall(1);
		s_scene scene::init(var_f6c5842);
		s_scene.var_f6c5842 = var_f6c5842;
		util::wait_network_frame();
	}
}

/*
	Name: function_11a66a73
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5FDD057E
	Offset: 0xC780
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_11a66a73(str_objective)
{
	level.var_6cb8b7a = util::function_740f8516("diaz");
	level.var_6cb8b7a thread namespace_ce0e5f06::function_921d7387();
	skipto::teleport_ai(str_objective);
}

/*
	Name: function_2dbbd9b1
	Namespace: namespace_f8b9e1f8
	Checksum: 0x31F11B64
	Offset: 0xC7E8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_2dbbd9b1(e_goalvolume)
{
	self endon("death");
	if(!isai(self) || !isalive(self))
	{
		return;
	}
	wait(RandomFloatRange(0, 5));
	self SetGoal(e_goalvolume, 1);
}

/*
	Name: function_adcc83a3
	Namespace: namespace_f8b9e1f8
	Checksum: 0x6DA560F4
	Offset: 0xC880
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_adcc83a3(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	level.var_8474061e = spawner::simple_spawn("foundry_hackable_vehicle", &function_5981eff1);
	vehicle::add_hijack_function("foundry_hackable_vehicle", &function_e0b67a17);
	if(!var_74cd64bc)
	{
		var_b9229bcd = [];
		foreach(var_92218239 in level.var_8474061e)
		{
			if(var_92218239.script_noteworthy === "amws_pushed")
			{
				var_b9229bcd[var_b9229bcd.size] = var_92218239;
			}
		}
		level thread function_4fbc759(var_b9229bcd);
	}
	scene::add_scene_func("cin_new_03_02_factoryraid_vign_explaindrones", &function_9ea16200, "init");
	level scene::init("cin_new_03_02_factoryraid_vign_explaindrones");
}

/*
	Name: function_e0b67a17
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB7992525
	Offset: 0xCA20
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_e0b67a17()
{
	ArrayRemoveValue(level.var_8474061e, self);
	if(level.var_8474061e.size == 0)
	{
		level notify("hash_45205ed8");
	}
}

/*
	Name: function_9ea16200
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5711638D
	Offset: 0xCA68
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_9ea16200(a_ents)
{
	var_86b029e3 = a_ents["hijack_diaz_wasp_spawnpoint"];
	var_86b029e3 ai::set_ignoreall(1);
	var_86b029e3 ai::set_ignoreme(1);
	var_86b029e3.team = "allies";
}

/*
	Name: function_9110a277
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA80CCE12
	Offset: 0xCAE0
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_9110a277(var_e33a0786)
{
	self endon("death");
	self clientfield::set("diaz_camo_shader", 2);
	wait(2);
	self clientfield::set("diaz_camo_shader", var_e33a0786);
	if(var_e33a0786 == 1)
	{
		self ai::set_ignoreme(1);
		self ai::set_ignoreall(1);
	}
	else
	{
		self ai::set_ignoreme(0);
		self ai::set_ignoreall(0);
		self notify("hash_a6476729");
	}
}

/*
	Name: function_211925e6
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5D6EB991
	Offset: 0xCBC8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_211925e6(str_location)
{
	level.var_e4124849 = GetWeapon("rocket_wasp_launcher_turret_player");
	level.var_7e8adada = GetWeapon("amws_launcher_turret_player");
	level.var_3e8a5e10 = GetWeapon("pamws_launcher_turret_player");
	var_313d91e1 = struct::get_array(str_location + "_destroyable_vat", "targetname");
	Array::thread_all(var_313d91e1, &function_aef915b2);
	scene::add_scene_func("p7_fxanim_cp_newworld_cauldron_bridge_bundle", &function_2aec5af4, "play");
}

/*
	Name: function_aef915b2
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDAF21027
	Offset: 0xCCC8
	Size: 0x43B
	Parameters: 0
	Flags: None
*/
function function_aef915b2()
{
	self endon("death");
	switch(self.script_string)
	{
		case "s1_01":
		{
			var_7c78ee9e = util::spawn_model("p7_fxanim_cp_newworld_cauldron_fall_01_mod", self.origin, self.angles);
			var_7c78ee9e.var_f3e8791a = GetEnt("cauldron_1_hang", "targetname");
			var_7c78ee9e.var_8406755b = GetEnt("cauldron_1_fall", "targetname");
			var_7c78ee9e.str_exploder = "fx_interior_cauldron_right";
			var_7c78ee9e.var_84d67e66 = GetEnt("fire_hazard_right_cauldron", "targetname");
			break;
		}
		case "s1_02":
		{
			var_7c78ee9e = util::spawn_model("p7_fxanim_cp_newworld_cauldron_fall_02_mod", self.origin, self.angles);
			var_7c78ee9e.var_f3e8791a = GetEnt("cauldron_2_hang", "targetname");
			var_7c78ee9e.var_8406755b = GetEnt("cauldron_2_fall", "targetname");
			var_7c78ee9e.str_exploder = "fx_interior_cauldron_left";
			var_7c78ee9e.var_84d67e66 = GetEnt("fire_hazard_left_cauldron", "targetname");
			break;
		}
		case "bridge":
		{
			var_7c78ee9e = util::spawn_model("p7_fxanim_cp_newworld_cauldron_bridge_mod", self.origin, self.angles);
			var_7c78ee9e.var_f3e8791a = GetEnt("cauldron_bridge_hang", "targetname");
			var_7c78ee9e.var_8406755b = GetEnt("cauldron_bridge_fall", "targetname");
			var_7c78ee9e.var_3d0b54ab = GetEnt("foundry_catwalk_clip", "targetname");
			var_7c78ee9e.var_cb14c98c = GetEnt("foundry_catwalk_ai_clip", "targetname");
			var_7c78ee9e.var_84d67e66 = GetEnt("fire_hazard_bridge", "targetname");
			var_77f0f8f6 = GetEntArray("cauldron_bridge_fxanim_clip", "targetname");
			foreach(e_clip in var_77f0f8f6)
			{
				e_clip notsolid();
			}
			break;
		}
	}
	var_7c78ee9e.var_84d67e66 TriggerEnable(0);
	var_7c78ee9e.target = self.target;
	var_7c78ee9e.script_string = self.script_string;
	var_7c78ee9e.script_noteworthy = self.script_noteworthy;
	var_7c78ee9e.script_objective = self.script_objective;
	var_7c78ee9e function_3c0b8c41();
}

/*
	Name: function_33ccaeb6
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5474E142
	Offset: 0xD110
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_33ccaeb6(str_location)
{
	var_8fec5fad = struct::get_array(str_location + "_destroyable_conveyor_belt_vat", "targetname");
	foreach(var_9006610d in var_8fec5fad)
	{
		var_9006610d thread function_c9c147cb(str_location);
	}
}

/*
	Name: function_c9c147cb
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDDE7D107
	Offset: 0xD1E8
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_c9c147cb(str_location)
{
	level endon("hash_ecac2aac");
	while(1)
	{
		wait(RandomFloatRange(12, 20));
		var_7c78ee9e = util::spawn_model("p7_fxanim_gp_cauldron_hit_s3_mod", self.origin, self.angles);
		var_7c78ee9e thread function_3c0b8c41();
		var_7c78ee9e thread function_5ccfae48(str_location);
		var_7c78ee9e thread function_35fa6de(self.target);
	}
}

/*
	Name: function_35fa6de
	Namespace: namespace_f8b9e1f8
	Checksum: 0xAB538CAA
	Offset: 0xD2C0
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_35fa6de(var_b3db89e0)
{
	e_mover = util::spawn_model("tag_origin", self.origin, self.angles);
	self LinkTo(e_mover);
	e_mover PlayLoopSound("evt_vat_move_loop");
	var_b9722704 = struct::get(var_b3db89e0, "targetname");
	n_move_time = Distance(self.origin, var_b9722704.origin) / 80;
	e_mover moveto(var_b9722704.origin, n_move_time);
	e_mover waittill("movedone");
	e_mover delete();
	self delete();
}

/*
	Name: function_3c0b8c41
	Namespace: namespace_f8b9e1f8
	Checksum: 0x20F03DDB
	Offset: 0xD418
	Size: 0x68F
	Parameters: 0
	Flags: None
*/
function function_3c0b8c41()
{
	self endon("death");
	self SetCanDamage(1);
	self.health = 10000;
	self.var_3d36f95b = 0;
	self.var_4d71f01a = 0;
	if(self.script_noteworthy === "static_vat")
	{
		self.var_af5fda8a = 1;
	}
	else
	{
		self.var_af5fda8a = 0;
	}
	self FX::Play("smk_idle_cauldron", undefined, undefined, "stop_static_fx", 1, "fx_spill_middle_jnt");
	while(1)
	{
		self waittill("damage", iDamage, sAttacker, vDirection, vPoint, type, modelName, tagName, partName, weapon, iDFlags);
		self.health = 10000;
		if(weapon === level.var_e4124849 || weapon === level.var_7e8adada || weapon === level.var_3e8a5e10)
		{
			iDamage = 350;
		}
		self.var_4d71f01a = self.var_4d71f01a + iDamage;
		self.var_3d36f95b++;
		if(!self.var_af5fda8a)
		{
			self thread function_75d4f3c6();
		}
		if(self.var_4d71f01a >= 350)
		{
			if(self.var_af5fda8a)
			{
				self.b_destroyed = 1;
				self scene::stop();
				self.takedamage = 0;
				switch(self.script_string)
				{
					case "s1_01":
					{
						self thread scene::Play("p7_fxanim_cp_newworld_cauldron_fall_01_bundle", self);
						break;
					}
					case "s1_02":
					{
						self thread scene::Play("p7_fxanim_cp_newworld_cauldron_fall_02_bundle", self);
						break;
					}
					case "bridge":
					{
						level thread function_191c39fc();
						self thread scene::Play("p7_fxanim_cp_newworld_cauldron_bridge_bundle", self);
						break;
					}
				}
				self notify("hash_36ff97f");
				if(isdefined(self.str_exploder))
				{
					util::delay(1.5, undefined, &exploder::exploder, self.str_exploder);
				}
				wait(0.5);
				self thread function_528ae2fd(sAttacker);
				self.var_84d67e66 TriggerEnable(1);
				self.var_f3e8791a delete();
				self.var_8406755b MoveZ(256, 0.05);
				self.var_8406755b waittill("movedone");
				foreach(ai in GetAITeamArray("axis"))
				{
					if(ai istouching(self.var_8406755b))
					{
						ai kill();
					}
				}
				if(isdefined(self.var_3d0b54ab))
				{
					self.var_cb14c98c MoveZ(256, 0.05);
					self.var_cb14c98c waittill("movedone");
					foreach(ai in GetAITeamArray("axis"))
					{
						if(ai istouching(self.var_cb14c98c))
						{
							ai kill();
						}
					}
					self.var_3d0b54ab delete();
				}
			}
			else
			{
				self scene::stop();
				self thread scene::Play("p7_fxanim_gp_cauldron_hit_s3_bundle", self);
				wait(0.5);
				self thread function_528ae2fd(sAttacker);
			}
			self.var_4d71f01a = 0;
		}
		else if(self.var_af5fda8a)
		{
			switch(self.script_string)
			{
				case "s1_01":
				{
					self thread scene::Play("p7_fxanim_cp_newworld_cauldron_fall_s1_01_bundle", self);
					break;
				}
				case "s1_02":
				{
					self thread scene::Play("p7_fxanim_cp_newworld_cauldron_fall_s1_02_bundle", self);
					break;
				}
				case "bridge":
				{
					self thread scene::Play("p7_fxanim_cp_newworld_cauldron_bridge_s1_bundle", self);
					break;
				}
			}
		}
		else
		{
			self thread scene::Play("p7_fxanim_gp_cauldron_hit_s1_bundle", self);
		}
	}
}

/*
	Name: function_191c39fc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x10AE10E4
	Offset: 0xDAB0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_191c39fc()
{
	level endon("hash_ecac2aac");
	level waittill("hash_bd02d60e");
	exploder::exploder("fx_interior_fire_pipeburst");
}

/*
	Name: function_528ae2fd
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8C499448
	Offset: 0xDAF0
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_528ae2fd(sAttacker)
{
	v_trace_start = self GetTagOrigin("cables_02_jnt");
	v_trace_end = v_trace_start - VectorScale((0, 0, 1), 2000);
	s_trace = bullettrace(v_trace_start, v_trace_end, 0, self);
	t_damage = spawn("trigger_radius", s_trace["position"], 27, 150, 150);
	t_damage thread function_91f1c249();
	wait(7);
	t_damage delete();
}

/*
	Name: function_91f1c249
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9CA2F73B
	Offset: 0xDC00
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_91f1c249()
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", e_victim);
		if(e_victim.var_6ce47035 === 1)
		{
			continue;
		}
		if(e_victim util::is_hero())
		{
			continue;
		}
		if(isVehicle(e_victim))
		{
			e_victim DoDamage(10, e_victim.origin, self, self, "none");
		}
		else if(isalive(e_victim))
		{
			e_victim thread function_9e51be07(4, 6);
			e_victim.var_6ce47035 = 1;
			level notify("hash_9fbe018c");
		}
	}
}

/*
	Name: function_5ccfae48
	Namespace: namespace_f8b9e1f8
	Checksum: 0x34EAA54F
	Offset: 0xDD28
	Size: 0x15F
	Parameters: 1
	Flags: None
*/
function function_5ccfae48(str_location)
{
	self endon("death");
	level endon("hash_ecac2aac");
	var_b414ae3d = GetEntArray(str_location + "_vat_door_trigger", "targetname");
	while(1)
	{
		foreach(var_1ecb5e9d in var_b414ae3d)
		{
			if(self istouching(var_1ecb5e9d))
			{
				self clientfield::set("open_vat_doors", 1);
				while(self istouching(var_1ecb5e9d))
				{
					wait(0.05);
				}
				self clientfield::set("open_vat_doors", 0);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_2aec5af4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9274B6D8
	Offset: 0xDE90
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_2aec5af4(a_ents)
{
	a_ents["newworld_cauldron_bridge"] waittill("hash_bc75666f");
	var_77f0f8f6 = GetEntArray("cauldron_bridge_fxanim_clip", "targetname");
	foreach(e_clip in var_77f0f8f6)
	{
		e_clip solid();
	}
}

/*
	Name: function_9e51be07
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFDB6B9BC
	Offset: 0xDF70
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_9e51be07(min_duration, max_duration)
{
	self endon("death");
	duration = RandomFloatRange(min_duration, max_duration);
	wait(RandomFloatRange(0.1, 0.75));
	self clientfield::set("arch_actor_fire_fx", 1);
	self thread function_48516b3d();
	self thread function_8823cee2(GetWeapon("gadget_firefly_swarm_upgraded"), duration);
	self util::waittill_any_timeout(duration, "firedeath_time_to_die");
	self kill(self.origin);
}

/*
	Name: function_48516b3d
	Namespace: namespace_f8b9e1f8
	Checksum: 0x80E040CC
	Offset: 0xE090
	Size: 0x3B
	Parameters: 0
	Flags: Private
*/
function private function_48516b3d()
{
	self waittill("actor_corpse", corpse);
	corpse clientfield::set("arch_actor_fire_fx", 2);
}

/*
	Name: function_8823cee2
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCA3B8872
	Offset: 0xE0D8
	Size: 0xC1
	Parameters: 2
	Flags: Private
*/
function private function_8823cee2(weapon, duration)
{
	self endon("death");
	self notify("bhtn_action_notify", "scream");
	endTime = GetTime() + duration * 1000;
	while(GetTime() < endTime)
	{
		self DoDamage(5, self.origin, undefined, undefined, "none", "MOD_RIFLE_BULLET", 0, weapon, -1, 1);
		self waittillmatch("BHTN_ACTION_TERMINATE");
	}
	self notify("hash_235a51d2", "specialpain");
}

/*
	Name: function_75d4f3c6
	Namespace: namespace_f8b9e1f8
	Checksum: 0x3E9197A0
	Offset: 0xE1A8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_75d4f3c6()
{
	self endon("death");
	var_69a8fe07 = self.var_3d36f95b;
	wait(0.4);
	if(var_69a8fe07 == self.var_3d36f95b)
	{
		self.var_4d71f01a = 0;
	}
}

/*
	Name: function_5981eff1
	Namespace: namespace_f8b9e1f8
	Checksum: 0xAD587D9F
	Offset: 0xE200
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_5981eff1()
{
	self.var_d3f57f67 = 1;
	self.team = "allies";
	self.goalRadius = 64;
	self DisableAimAssist();
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.overrideVehicleDamage = &function_a18dda0f;
}

/*
	Name: function_3f145e58
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8E0DCF2C
	Offset: 0xE298
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_3f145e58(a_ents)
{
	level waittill("hash_e8e1b9b8");
	a_ents["hijack_diaz_wasp_spawnpoint"] vehicle_ai::function_81b6f1ac();
	a_ents["hijack_diaz_wasp_spawnpoint"] clientfield::set("name_diaz_wasp", 1);
	level waittill("hash_b1973b1b");
	a_ents["hijack_diaz_wasp_spawnpoint"] thread function_3929ac3c();
	namespace_ce0e5f06::function_3e37f48b(1);
	level thread function_8de037ed();
	foreach(vh_drone in level.var_8474061e)
	{
		if(SessionModeIsCampaignZombiesGame())
		{
			if(isdefined(vh_drone.archetype) && vh_drone.archetype == "wasp")
			{
				continue;
			}
		}
		vh_drone.var_d3f57f67 = undefined;
	}
}

/*
	Name: function_738d040b
	Namespace: namespace_f8b9e1f8
	Checksum: 0x7F93A692
	Offset: 0xE438
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_738d040b()
{
	level.var_6cb8b7a dialog::say("diaz_okay_weapons_hot_1");
	level flag::init("diaz_factory_exterior_follow_up_vo");
	t_left = GetEnt("factory_exterior_left_path_vo", "targetname");
	t_right = GetEnt("factory_exterior_right_path_vo", "targetname");
	var_7d32135d = GetEnt("factory_exterior_center_path_vo", "targetname");
	level thread function_e8db2799(t_left, "left");
	level thread function_e8db2799(t_right, "right");
	level thread function_e8db2799(var_7d32135d, "center");
}

/*
	Name: function_e8db2799
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDBEBBF17
	Offset: 0xE578
	Size: 0x141
	Parameters: 2
	Flags: None
*/
function function_e8db2799(var_46100e43, str_path)
{
	self endon("death");
	level endon("hash_e8db2799");
	while(1)
	{
		var_46100e43 waittill("trigger", ent);
		if(isPlayer(ent) && isalive(ent))
		{
			switch(str_path)
			{
				case "left":
				{
					ent dialog::function_13b3b16a("plyr_taking_left_flank_c_0");
					break;
				}
				case "right":
				{
					ent dialog::function_13b3b16a("plyr_moving_right_on_me_0");
					break;
				}
				case "center":
				{
					ent dialog::function_13b3b16a("plyr_taking_center_path_0");
					break;
				}
				case default:
				{
					break;
				}
			}
			break;
		}
	}
	level.var_6cb8b7a thread function_87c7c17f();
	level notify("hash_e8db2799");
}

/*
	Name: function_87c7c17f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x368F93CF
	Offset: 0xE6C8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_87c7c17f()
{
	if(!level flag::get("diaz_factory_exterior_follow_up_vo"))
	{
		level flag::set("diaz_factory_exterior_follow_up_vo");
		self dialog::say("diaz_there_s_never_just_o_0", 0.5);
	}
}

/*
	Name: function_a77545da
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE2E2A2AA
	Offset: 0xE740
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a77545da()
{
	self thread function_cd561d8f();
	self thread function_a96367c2();
}

/*
	Name: function_cd561d8f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF3BB474
	Offset: 0xE780
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_cd561d8f()
{
	level endon("hash_48600f62");
	self endon("death");
	self flag::wait_till("tactical_mode_used");
	level.var_6cb8b7a dialog::say("diaz_like_opening_your_ey_0", undefined, undefined, self);
}

/*
	Name: function_a96367c2
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9B9FA207
	Offset: 0xE7E8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a96367c2()
{
	level endon("hash_48600f62");
	self endon("hash_bffdb6cc");
	self endon("death");
	wait(15);
	level.var_6cb8b7a dialog::say("diaz_don_t_got_all_day_n_0", undefined, undefined, self);
}

/*
	Name: function_af28d0ba
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA3E59609
	Offset: 0xE848
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_af28d0ba()
{
	self thread function_f83d1fd6();
	self thread function_5b31eadc();
	self thread function_d0776ef();
}

/*
	Name: function_f83d1fd6
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBFBCFC70
	Offset: 0xE8A0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f83d1fd6()
{
	self endon("hash_70797a3a");
	self endon("hash_d67cc85b");
	level endon("hash_3cb382c8");
	self endon("death");
	wait(30);
	level.var_6cb8b7a dialog::say("diaz_you_gotta_wall_run_t_0", undefined, undefined, self);
	wait(30);
	level.var_6cb8b7a dialog::say("diaz_let_s_see_that_wall_0", undefined, undefined, self);
	wait(30);
	level.var_6cb8b7a dialog::say("diaz_hey_i_ain_t_waiting_0", undefined, undefined, self);
}

/*
	Name: function_5b31eadc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x48DDB1F4
	Offset: 0xE968
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_5b31eadc()
{
	self endon("hash_70797a3a");
	level endon("hash_3cb382c8");
	self endon("death");
	trigger::wait_till("wallrun_tutorial_fail_VO", "targetname", self);
	self notify("hash_d67cc85b");
	level.var_6cb8b7a dialog::say("diaz_yeah_i_messed_up_my_0", undefined, undefined, self);
}

/*
	Name: function_d0776ef
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE8B08C23
	Offset: 0xE9F8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_d0776ef()
{
	self endon("hash_d67cc85b");
	level endon("hash_3cb382c8");
	self endon("death");
	trigger::wait_till("wallrun_tutorial_success_vo", "targetname", self);
	self notify("hash_70797a3a");
	level.var_6cb8b7a dialog::say("diaz_not_bad_newbie_not_0", undefined, undefined, self);
}

/*
	Name: function_70704b5f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA62EFB51
	Offset: 0xEA88
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_70704b5f()
{
	self thread function_a4ef4f4f();
	self thread function_76f95fc();
}

/*
	Name: function_a4ef4f4f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x3139FCA4
	Offset: 0xEAC8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a4ef4f4f()
{
	self endon("hash_8ac3077f");
	level endon("hash_7aa3c9ce");
	self endon("death");
	wait(15);
	level.var_6cb8b7a dialog::say("diaz_let_s_get_moving_hi_0", undefined, undefined, self);
}

/*
	Name: function_76f95fc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x56A30A30
	Offset: 0xEB28
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_76f95fc()
{
	level endon("hash_7aa3c9ce");
	level endon("hash_c24bd1ea");
	self endon("death");
	self flag::wait_till("player_hijacked_vehicle");
	wait(1);
	level.var_6cb8b7a thread dialog::say("diaz_fits_like_a_glove_r_0");
	level notify("hash_c24bd1ea");
}

/*
	Name: function_4263aa02
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5C525DED
	Offset: 0xEBB0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_4263aa02()
{
	function_83d084fe("foundry_entered");
	level.var_6cb8b7a dialog::say("diaz_you_wanna_see_someth_0");
	level waittill("hash_d3038698");
	level waittill("hash_9fbe018c");
	level.var_6cb8b7a dialog::say("diaz_you_re_a_maniac_jok_0");
}

/*
	Name: function_9729c7a4
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB60DDD60
	Offset: 0xEC30
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_9729c7a4()
{
	if(!level flag::exists("player_destroyed_foundry") || !level flag::get("player_destroyed_foundry"))
	{
		level.var_6cb8b7a dialog::say("diaz_there_she_is_blow_t_0");
	}
}

/*
	Name: function_9641f186
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBD68C9B6
	Offset: 0xECA8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_9641f186()
{
	wait(1.5);
	foreach(e_player in level.activePlayers)
	{
		if(isdefined(e_player.hijacked_vehicle_entity))
		{
			level.var_6cb8b7a dialog::say("diaz_i_m_afraid_the_emp_b_0", 1);
			break;
		}
	}
	level thread namespace_e38c3c58::function_973b77f9();
}

/*
	Name: function_5dfc077c
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB9365D69
	Offset: 0xED80
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5dfc077c()
{
	level.var_6cb8b7a dialog::say("diaz_c_mon_let_s_go_0", 1.5);
	level thread namespace_e38c3c58::function_ccafa212();
}

/*
	Name: function_451d7f3e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x70EC9C24
	Offset: 0xEDD0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_451d7f3e()
{
	level endon("death");
	level endon("hash_7fb08868");
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level endon("hash_3bfba96f");
	level.var_6cb8b7a dialog::say("diaz_suppressors_second_0", 1);
	if(namespace_ce0e5f06::function_70aba08e())
	{
		level.var_6cb8b7a dialog::say("diaz_if_you_want_to_get_c_0", 2);
	}
	foreach(player in level.players)
	{
		if(player namespace_ce0e5f06::function_c633d8fe() || isdefined(player.hijacked_vehicle_entity))
		{
			continue;
		}
		if(!player flag::get("vat_room_turret_hijacked") && !level flag::get("vat_room_turrets_all_dead"))
		{
			player thread namespace_ce0e5f06::function_6062e90("cybercom_hijack", 0, "vat_room_turrets_all_dead", 1, "CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_TURRET_TARGET", "CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_TURRET_RELEASE");
		}
	}
	if(namespace_ce0e5f06::function_70aba08e())
	{
		level thread function_6199a2b7();
	}
	wait(15);
	level.var_6cb8b7a dialog::say("diaz_use_your_environment_0");
}

/*
	Name: function_8b7ac3d
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB59225E2
	Offset: 0xEFE0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8b7ac3d()
{
	self endon("death");
	self endon("hash_7fb08868");
	level waittill("hash_76cbcc2f");
	level.var_6cb8b7a dialog::say("diaz_your_cyber_abilities_0", 1);
}

/*
	Name: function_6199a2b7
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB884ACCD
	Offset: 0xF038
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_6199a2b7()
{
	level endon("hash_7fb08868");
	Array::thread_all(level.activePlayers, &function_4ff24fae);
	level waittill("hash_16f7f7c4");
	level.var_6cb8b7a dialog::say("diaz_nice_going_now_tur_0", 1);
	level waittill("hash_96bdb9d9");
	level.var_6cb8b7a dialog::say("diaz_dumb_asses_thought_t_0");
}

/*
	Name: function_4ff24fae
	Namespace: namespace_f8b9e1f8
	Checksum: 0x93BEABA0
	Offset: 0xF0D8
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_4ff24fae()
{
	level endon("hash_7fb08868");
	self endon("death");
	if(!isdefined(self.hijacked_vehicle_entity))
	{
		self waittill("ClonedEntity");
	}
	level notify("hash_16f7f7c4");
	self waittill("hash_c68b15c8");
	level notify("hash_96bdb9d9");
}

/*
	Name: function_7fb08868
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1DD85DE7
	Offset: 0xF140
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_7fb08868()
{
	level notify("hash_7fb08868");
	level.var_6cb8b7a dialog::say("diaz_the_faction_s_hideou_0");
	level thread namespace_e38c3c58::function_bb8ce831();
}

