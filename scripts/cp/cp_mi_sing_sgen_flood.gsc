#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_accolades;
#using scripts\cp\cp_mi_sing_sgen_pallas;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_caee6f4a;

/*
	Name: function_37c559db
	Namespace: namespace_caee6f4a
	Checksum: 0xF7FA6828
	Offset: 0x17D0
	Size: 0x4B3
	Parameters: 2
	Flags: None
*/
function function_37c559db(str_objective, var_74cd64bc)
{
	init_flags();
	spawn_manager::function_41cd3a68(30);
	spawner::add_spawn_function_group("flood_combat_runners", "script_noteworthy", &function_ac25b5d5);
	Array::run_all(GetEntArray("floor_door_hint_trigger", "targetname"), &TriggerEnable, 0);
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		namespace_646f304f::function_4ef8cf79();
		GetEnt("pallas_lift_front", "targetname") util::self_delete();
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		objectives::complete("cp_level_sgen_goto_server_room");
		objectives::complete("cp_level_sgen_confront_pallas");
		Array::run_all(GetAITeamArray("axis"), &delete);
		load::function_a2995f22();
		if(level.skipto_point === "dev_flood_combat")
		{
			level.players[0] SetOrigin((1152, -3864, -4876));
			level.players[0] SetPlayerAngles((0, 0, 0));
		}
	}
	else
	{
		util::streamer_wait(undefined, 1, 3);
		level util::player_unlock_control();
		util::screen_fade_in(0.5, "black", "hide_trans_flood");
	}
	level thread namespace_cba4cc55::function_423cfae8("charging_station_entrance", "open");
	level clientfield::set("w_underwater_state", 1);
	SetDvar("phys_buoyancy", 1);
	spawner::add_spawn_function_group("flood_reinforcement_robot", "script_noteworthy", &function_ae51faf3);
	level.var_2fd26037 ai::set_behavior_attribute("can_melee", 0);
	level.var_2fd26037 ai::set_behavior_attribute("can_be_meleed", 0);
	level thread function_aa1d0311();
	function_74594539();
	var_7082999f = struct::get_array("charging_station_spawn_point");
	Array::thread_all(var_7082999f, &util::delay_notify, 5, "post_pallas");
	Array::thread_all(GetEntArray("water_spout_trigger", "targetname"), &function_80012633);
	Array::thread_all(GetEntArray("stumble_trigger", "targetname"), &namespace_cba4cc55::function_aef08215);
	main();
	skipto::function_be8adfb8("flood_combat");
}

/*
	Name: function_ebe27bf1
	Namespace: namespace_caee6f4a
	Checksum: 0x4D186642
	Offset: 0x1C90
	Size: 0x33
	Parameters: 4
	Flags: None
*/
function function_ebe27bf1(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_99202726::function_bc2458f5();
}

/*
	Name: function_ba34fbda
	Namespace: namespace_caee6f4a
	Checksum: 0xFA89452F
	Offset: 0x1CD0
	Size: 0x4BB
	Parameters: 2
	Flags: None
*/
function function_ba34fbda(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level flag::init("hendricks_defend_started");
		level flag::init("flood_defend_hendricks_at_door");
		Array::run_all(GetEntArray("floor_door_hint_trigger", "targetname"), &TriggerEnable, 0);
		SGEN::function_bff1a867(str_objective);
		namespace_646f304f::function_4ef8cf79();
		GetEnt("pallas_lift_front", "targetname") util::self_delete();
		level flag::set("pallas_lift_front_open");
		level flag::wait_till("all_players_spawned");
		Array::run_all(GetAITeamArray("axis"), &delete);
		if(level.skipto_point === "dev_flood_combat")
		{
			level.players[0] SetOrigin((1152, -3864, -4876));
			level.players[0] SetPlayerAngles((0, 0, 0));
		}
		level clientfield::set("w_underwater_state", 1);
		SetDvar("phys_buoyancy", 1);
		spawner::add_spawn_function_group("flood_reinforcement_robot", "script_noteworthy", &function_ae51faf3);
		level.var_2fd26037 ai::set_behavior_attribute("can_melee", 0);
		level.var_2fd26037 ai::set_behavior_attribute("can_be_meleed", 0);
		function_61810cbd();
		Array::thread_all(GetEntArray("water_spout_trigger", "targetname"), &function_80012633);
		level thread function_e9256bf8();
		level thread function_e9c576dc();
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		objectives::complete("cp_level_sgen_goto_server_room");
		objectives::complete("cp_level_sgen_confront_pallas");
		objectives::set("cp_level_sgen_get_to_surface");
		level thread objectives::breadcrumb("flood_combat_breadcrumb_end_trig");
		level thread function_73cf7557();
		var_c3f856f0 = GetEnt("flood_defend_out_of_boundary_trig", "targetname");
		var_c3f856f0 SetVisibleToAll();
		load::function_a2995f22();
	}
	spawner::add_spawn_function_group("flood_defend_catwalk_spawn_zone_robot", "targetname", &function_1348c36b);
	function_7c4f794b(var_74cd64bc);
	spawn_manager::function_41cd3a68(32);
	skipto::function_be8adfb8("flood_defend");
}

/*
	Name: function_1348c36b
	Namespace: namespace_caee6f4a
	Checksum: 0x8513749E
	Offset: 0x2198
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_1348c36b()
{
	n_level = 2;
	n_chance = namespace_cba4cc55::function_411dc61b(15, 11);
	if(n_chance > randomIntRange(0, 100))
	{
		n_level = 3;
	}
	self.goalRadius = 256;
	self ai::set_behavior_attribute("rogue_control", "forced_level_" + n_level);
}

/*
	Name: function_e2a342e4
	Namespace: namespace_caee6f4a
	Checksum: 0x94DAAFC6
	Offset: 0x2258
	Size: 0x18B
	Parameters: 4
	Flags: None
*/
function function_e2a342e4(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	a_ai = GetAITeamArray("axis", "team3");
	foreach(ai in a_ai)
	{
		if(!(isdefined(ai.archetype) && ai.archetype == "robot"))
		{
			ai.ignoreall = 1;
			ai namespace_cba4cc55::function_ceda7454();
			continue;
		}
		ai util::self_delete();
	}
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 ai::set_behavior_attribute("can_melee", 1);
		level.var_2fd26037 ai::set_behavior_attribute("can_be_meleed", 1);
	}
}

/*
	Name: init_flags
	Namespace: namespace_caee6f4a
	Checksum: 0x97AEA088
	Offset: 0x23F0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("hendricks_defend_started");
	level flag::init("flood_combat_nag_playing");
	level flag::init("flood_defend_hendricks_at_door");
}

/*
	Name: function_4234be51
	Namespace: namespace_caee6f4a
	Checksum: 0x90E62A93
	Offset: 0x2460
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_4234be51(a_ents)
{
	level flag::set("pallas_lift_front_open");
	objectives::set("cp_level_sgen_get_to_surface");
}

/*
	Name: main
	Namespace: namespace_caee6f4a
	Checksum: 0x8EF44569
	Offset: 0x24B0
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function main()
{
	level flag::wait_till("all_players_spawned");
	objective_trigger = GetEnt("surgical_room_entrance_close", "targetname");
	level thread function_6cfe8da3();
	level thread function_7541af2d();
	level thread function_ab5cee74();
	level thread function_e9c576dc();
	level thread function_6e0718d8();
	level thread function_ef6ea5f9();
	level thread function_1d0ccf06();
	level thread function_28b80c6f();
	level util::clientNotify("escp");
	scene::add_scene_func("cin_sgen_20_02_twinrevenge_1st_elevator", &function_4234be51, "done");
	level thread scene::Play("cin_sgen_20_02_twinrevenge_1st_elevator");
	trigger::wait_till("surprised_54i_trigger");
	level thread function_324a038c();
	level thread function_d62206d0();
	level thread function_3aaf91d3();
	level flag::wait_till("flood_combat_surgical_room_door_close");
	spawn_manager::enable("flood_combat_defend_room_fallback_spawns");
	level thread function_f6ac14bc();
	level thread function_8f417d1b();
	level thread function_a86ae95d();
	level flag::wait_till_timeout(10, "flood_defend_zone_started");
	level notify("hash_5bea2226");
	spawn_manager::kill("flood_combat_defend_room_fallback_spawns", 1);
	level flag::wait_till_timeout(30, "flood_defend_reached");
	level flag::set("flood_defend_reached");
}

/*
	Name: function_3aaf91d3
	Namespace: namespace_caee6f4a
	Checksum: 0xA6AD6441
	Offset: 0x27A0
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_3aaf91d3()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		level flag::wait_till("hendricks_defend_started");
	}
	else
	{
		level flag::wait_till("flood_combat_charging_zone_cleared");
	}
	var_3f8b1d18 = GetEnt("flood_combat_charging_zone_trig", "targetname");
	var_c3f856f0 = GetEnt("flood_defend_out_of_boundary_trig", "targetname");
	var_c3f856f0 SetVisibleToAll();
	namespace_cba4cc55::function_423cfae8("flood_robot_room_door_open", "close");
	spawn_manager::kill("flood_combat_charging_room_spawnmanager", 1);
	spawn_manager::kill("flood_combat_robot_room_spawnmanager", 1);
	wait(0.05);
	var_b8a74cba = GetAITeamArray("axis");
	foreach(var_37ba03da in var_b8a74cba)
	{
		if(isalive(var_37ba03da) && var_37ba03da istouching(var_3f8b1d18))
		{
			var_37ba03da kill();
		}
	}
	function_82fd0598();
}

/*
	Name: function_7c4f794b
	Namespace: namespace_caee6f4a
	Checksum: 0x6C5ECBB6
	Offset: 0x29C8
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_7c4f794b(var_74cd64bc)
{
	level flag::wait_till("all_players_spawned");
	level flag::set("flood_combat_charging_zone_cleared");
	spawn_manager::kill("flood_combat_defend_room_fallback2_spawns", 1);
	level thread function_73858979();
	level thread function_d8208c5();
	function_fa1f6da6(var_74cd64bc);
}

/*
	Name: function_1d0ccf06
	Namespace: namespace_caee6f4a
	Checksum: 0x556B338B
	Offset: 0x2A88
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_1d0ccf06()
{
	level.var_2fd26037 colors::disable();
	level.var_2fd26037.goalRadius = 16;
	level flag::wait_till("all_players_spawned");
	level flag::wait_till("pallas_lift_front_open");
	level scene::Play("cin_sgen_21_01_releasetorrent_vign_pushdown_hendricks", level.var_2fd26037);
	level.var_2fd26037 SetGoal(GetNode("flood_combat_hendricks_intro_node", "targetname"));
	level.var_2fd26037 colors::enable();
	trigger::wait_till("flood_combat_windows_start", undefined);
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 SetGoal(GetNode("flood_combat_hendricks_catwalk_node", "targetname"));
	function_b9f4384b("flood_combat_catwalk_front_zone_trig", undefined, 0.75);
	level.var_2fd26037 function_763735d3("flood_combat_catwalk_front_zone_trig", undefined, undefined, 0.74, "cancel_hendricks_safe_zone");
	level thread function_1459984a();
	scene::add_scene_func("cin_sgen_21_02_floodcombat_vign_traverse_hendricks", &function_235df37, "play");
	level scene::Play("cin_sgen_21_02_floodcombat_vign_traverse_hendricks");
	function_5d06f10b();
	nd_goal = GetNode("flood_defend_hendricks_ready_node", "targetname");
	level.var_2fd26037 SetGoal(nd_goal);
}

/*
	Name: function_1459984a
	Namespace: namespace_caee6f4a
	Checksum: 0x6C8AC535
	Offset: 0x2CF8
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function function_1459984a()
{
	var_c90f67ac = GetAITeamArray("axis");
	t_zone = GetEnt("flood_combat_catwalk_front_zone_trig", "targetname");
	foreach(var_7d41f0cd in var_c90f67ac)
	{
		if(isalive(var_7d41f0cd) && var_7d41f0cd istouching(t_zone))
		{
			var_7d41f0cd.health = 1;
		}
	}
}

/*
	Name: function_b9f4384b
	Namespace: namespace_caee6f4a
	Checksum: 0x86B76276
	Offset: 0x2E10
	Size: 0xC7
	Parameters: 3
	Flags: None
*/
function function_b9f4384b(str_key, str_val, n_delay)
{
	if(!isdefined(str_val))
	{
		str_val = "targetname";
	}
	if(!isdefined(n_delay))
	{
		n_delay = 0;
	}
	level endon("hash_98c5027e");
	t_zone = GetEnt(str_key, str_val);
	t_zone endon("death");
	do
	{
		t_zone waittill("trigger", e_triggerer);
		if(isPlayer(e_triggerer))
		{
		}
	}
	while(!1);
	else
	{
	}
	wait(n_delay);
}

/*
	Name: function_763735d3
	Namespace: namespace_caee6f4a
	Checksum: 0x2B12845A
	Offset: 0x2EE0
	Size: 0x1D5
	Parameters: 5
	Flags: None
*/
function function_763735d3(str_key, str_val, str_species, n_delay, str_ender)
{
	if(!isdefined(str_val))
	{
		str_val = "targetname";
	}
	if(!isdefined(str_species))
	{
		str_species = "robot";
	}
	if(!isdefined(n_delay))
	{
		n_delay = 0;
	}
	self endon("death");
	level endon("hash_98c5027e");
	if(isdefined(str_ender))
	{
		level endon(str_ender);
	}
	var_68d8f035 = GetEnt(str_key, str_val);
	var_68d8f035 endon("death");
	do
	{
		var_68d8f035 waittill("trigger");
		var_f580cae3 = 0;
		a_ai_enemies = GetAISpeciesArray("axis", str_species);
		foreach(ai_enemy in a_ai_enemies)
		{
			if(isalive(ai_enemy) && ai_enemy istouching(self))
			{
				var_f580cae3++;
			}
		}
		wait(1.5);
	}
	while(!var_f580cae3 > 0);
	wait(n_delay);
}

/*
	Name: function_235df37
	Namespace: namespace_caee6f4a
	Checksum: 0xBF49A5E7
	Offset: 0x30C0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_235df37(a_ents)
{
	level.var_2fd26037 waittill("hash_c1e3417f");
	spawn_manager::kill("flood_combat_defend_room_fallback_spawns", 1);
}

/*
	Name: function_74594539
	Namespace: namespace_caee6f4a
	Checksum: 0x221B91D0
	Offset: 0x3108
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_74594539()
{
	level scene::init("p7_fxanim_cp_sgen_door_bursting_01_bundle");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_door", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_0", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_1", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_2", "open");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_close", "close");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_open", "open");
}

/*
	Name: function_61810cbd
	Namespace: namespace_caee6f4a
	Checksum: 0xACA87392
	Offset: 0x3228
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_61810cbd()
{
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_0", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_1", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_2", "open");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_close", "close");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_crush_door", "close");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_door", "close");
}

/*
	Name: function_e9c576dc
	Namespace: namespace_caee6f4a
	Checksum: 0x3E687323
	Offset: 0x3328
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_e9c576dc()
{
	level endon("hash_756f21e5");
	level namespace_cba4cc55::Quake(0.5, 1.5, namespace_cba4cc55::function_d455824c(), 5000, 4, 7);
	while(1)
	{
		if(math::cointoss())
		{
			v_origin = level.var_2fd26037.origin;
		}
		else
		{
			v_origin = namespace_cba4cc55::function_d455824c();
		}
		if(isdefined(v_origin))
		{
			n_magnitude = RandomFloatRange(0.15, 0.25);
			n_duration = RandomFloatRange(0.75, 1.78);
			n_range = 5000;
			n_timeout = RandomFloatRange(8, 15);
			level namespace_cba4cc55::Quake(n_magnitude, n_duration, v_origin, n_range);
			wait(n_timeout + n_duration);
		}
	}
}

/*
	Name: function_ef6ea5f9
	Namespace: namespace_caee6f4a
	Checksum: 0x4D870F84
	Offset: 0x34A8
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_ef6ea5f9()
{
	level endon("hash_d55f5f70");
	t_exit = GetEnt("flood_combat_flood_hall_cleanup_trig", "targetname");
	while(1)
	{
		t_exit waittill("trigger", ai_runner);
		level flag::set("flood_runner_escaped");
		ai_runner delete();
		wait(0.05);
	}
}

/*
	Name: function_3957dfeb
	Namespace: namespace_caee6f4a
	Checksum: 0x1C2DC1A7
	Offset: 0x3548
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_3957dfeb()
{
	level.var_977a4717 = 1;
	var_6cb15f43 = GetAISpeciesArray("axis", "human");
	foreach(var_3f3a4339 in var_6cb15f43)
	{
		n_wait = RandomFloatRange(0.15, 0.45);
		wait(n_wait);
		if(isalive(var_3f3a4339))
		{
			var_3f3a4339 thread fallback_think();
		}
	}
}

/*
	Name: function_ad3546e0
	Namespace: namespace_caee6f4a
	Checksum: 0x14AE7B3E
	Offset: 0x3678
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_ad3546e0()
{
	level.var_977a4717 = 0;
	var_6cb15f43 = GetAISpeciesArray("axis", "human");
	foreach(var_3f3a4339 in var_6cb15f43)
	{
		n_wait = RandomFloatRange(0.15, 0.45);
		if(isalive(var_3f3a4339))
		{
			var_3f3a4339 ai::set_behavior_attribute("sprint", 0);
			var_3f3a4339 notify("hash_ad3546e0");
			var_3f3a4339.goalRadius = 768;
			var_3f3a4339 thread function_cf14779(undefined, 768, 512);
		}
	}
}

/*
	Name: function_cf14779
	Namespace: namespace_caee6f4a
	Checksum: 0xE1C890B5
	Offset: 0x3800
	Size: 0x1B3
	Parameters: 4
	Flags: None
*/
function function_cf14779(v_origin, n_min, n_max, var_eba6249a)
{
	if(!isdefined(v_origin))
	{
		v_origin = self.origin;
	}
	if(!isdefined(n_min))
	{
		n_min = 256;
	}
	if(!isdefined(n_max))
	{
		n_max = 512;
	}
	if(!isdefined(var_eba6249a))
	{
		var_eba6249a = 0;
	}
	self endon("death");
	var_ea52a6de = GetNodesInRadiusSorted(v_origin, n_min, n_max, 128);
	if(var_eba6249a && var_ea52a6de.size > 1)
	{
		var_ea52a6de = Array::reverse(var_ea52a6de);
	}
	foreach(nd_cover in var_ea52a6de)
	{
		if(!IsNodeOccupied(nd_cover) && isalive(self))
		{
			self SetGoal(nd_cover);
			return;
		}
	}
	self SetGoal(self.origin);
}

/*
	Name: function_e45d59cc
	Namespace: namespace_caee6f4a
	Checksum: 0xDC2D3818
	Offset: 0x39C0
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_e45d59cc()
{
	level endon("hash_8a67e7d4");
	var_40f8cd43 = GetEnt("flood_combat_prelab_zone_aitrig", "targetname");
	var_33dce9d8 = GetEnt("flood_combat_defend_upper_goaltrig", "targetname");
	var_40f8cd43 endon("death");
	var_33dce9d8 endon("death");
	var_40f8cd43 SetInvisibleToAll();
	while(1)
	{
		var_40f8cd43 waittill("trigger", e_triggerer);
		if(isalive(e_triggerer) && e_triggerer.script_noteworthy !== "ignore_last_stand")
		{
			e_triggerer notify("hash_ad3546e0");
			e_triggerer SetGoal(var_33dce9d8);
		}
	}
}

/*
	Name: function_f879cf37
	Namespace: namespace_caee6f4a
	Checksum: 0x6D9ED88F
	Offset: 0x3AE0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f879cf37()
{
	level endon("hash_8a67e7d4");
	level waittill("hash_b7eaf12a");
	function_ad3546e0();
	function_b4ed3055();
}

/*
	Name: function_b4ed3055
	Namespace: namespace_caee6f4a
	Checksum: 0xF9890F93
	Offset: 0x3B28
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_b4ed3055()
{
	var_b8a74cba = GetAITeamArray("axis");
	var_33dce9d8 = GetEnt("flood_combat_defend_upper_goaltrig", "targetname");
	var_40f8cd43 = GetEnt("flood_combat_prelab_zone_aitrig", "targetname");
	var_150c4640 = struct::get("flood_defend_flee_center");
	foreach(var_37ba03da in var_b8a74cba)
	{
		n_wait = RandomFloatRange(0.15, 0.45);
		if(isalive(var_37ba03da) && !var_37ba03da istouching(var_33dce9d8) && !var_37ba03da istouching(var_40f8cd43))
		{
			var_37ba03da.accuracy = 0.1;
			var_37ba03da.health = 1;
			var_37ba03da thread function_cf14779(var_150c4640.origin, var_150c4640.radius, var_150c4640.radius, 1);
		}
	}
}

/*
	Name: function_6e0718d8
	Namespace: namespace_caee6f4a
	Checksum: 0xBA12D6AE
	Offset: 0x3D50
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_6e0718d8()
{
	trigger::wait_till("flood_combat_intro_fallback_trig");
	level thread function_3957dfeb();
	trigger::wait_till("flood_combat_charging_room_spawn_trig");
	level thread function_ad3546e0();
	level flag::wait_till("flood_defend_start_flood_fallback");
	trigger::use("flood_combat_door_burst_trig");
	level thread function_3957dfeb();
	trigger::wait_till("flood_combat_robot_crushed_door_trig");
	level thread function_ad3546e0();
	trigger::wait_till("flood_combat_prelab_spawn_trig");
	level thread function_3957dfeb();
	level flag::wait_till("flood_combat_surgical_room_door_close");
	function_e45d59cc();
}

/*
	Name: function_ac25b5d5
	Namespace: namespace_caee6f4a
	Checksum: 0x2BB1BFB8
	Offset: 0x3EA0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ac25b5d5()
{
	if(isdefined(level.var_977a4717) && level.var_977a4717)
	{
		self fallback_think();
	}
}

/*
	Name: fallback_think
	Namespace: namespace_caee6f4a
	Checksum: 0x1AFD23FA
	Offset: 0x3ED8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function fallback_think()
{
	nd_goal = GetNode("flood_combat_fallback_node", "targetname");
	self ai::set_behavior_attribute("sprint", 1);
	self ai::force_goal(nd_goal, 256, 0, "cancel_fallback");
}

/*
	Name: function_6cfe8da3
	Namespace: namespace_caee6f4a
	Checksum: 0x849421A0
	Offset: 0x3F60
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6cfe8da3()
{
	Array::thread_all(GetEntArray("alarm_sound", "targetname"), &function_2f80e7e2);
}

/*
	Name: function_2f80e7e2
	Namespace: namespace_caee6f4a
	Checksum: 0x5F946CE0
	Offset: 0x3FB0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2f80e7e2()
{
	self PlayLoopSound("evt_flood_alarm_" + self.script_noteworthy);
	self waittill("hash_67907d63");
	self StopLoopSound(0.5);
	self util::self_delete();
}

/*
	Name: function_8f417d1b
	Namespace: namespace_caee6f4a
	Checksum: 0x2A641DF0
	Offset: 0x4028
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_8f417d1b()
{
	level thread scene::Play("water_lt_01", "targetname");
	level scene::Play("water_rt_02", "targetname");
}

/*
	Name: function_a86ae95d
	Namespace: namespace_caee6f4a
	Checksum: 0xCA6C922B
	Offset: 0x4088
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_a86ae95d()
{
	level scene::init("dividerl_lt_01", "targetname");
	level scene::init("divider_rt_02", "targetname");
	level flag::wait_till("flood_combat_start_flooding");
	level thread function_60041a78();
	level thread function_13a96c2b();
	level thread function_d253868c();
	level thread function_82a20786();
}

/*
	Name: function_d253868c
	Namespace: namespace_caee6f4a
	Checksum: 0xD6820327
	Offset: 0x4168
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_d253868c()
{
	level clientfield::set("w_flood_combat_windows_b", 1);
	wait(1.2);
	level thread scene::stop("water_lt_01", "targetname", 1);
	level thread scene::Play("water_lt_01_spill", "targetname");
	level thread scene::Play("dividerl_lt_01", "targetname");
}

/*
	Name: function_82a20786
	Namespace: namespace_caee6f4a
	Checksum: 0xAB97AF3B
	Offset: 0x4218
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_82a20786()
{
	level clientfield::set("w_flood_combat_windows_c", 1);
	wait(0.93);
	level thread scene::stop("water_rt_02", "targetname", 1);
	level thread scene::Play("water_rt_02_spill", "targetname");
	level thread scene::Play("divider_rt_02", "targetname");
}

/*
	Name: function_e9256bf8
	Namespace: namespace_caee6f4a
	Checksum: 0x4A4CE791
	Offset: 0x42C8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_e9256bf8()
{
	level thread function_60041a78();
	level thread function_13a96c2b();
	level clientfield::set("w_flood_combat_windows_b", 1);
	level thread scene::skipto_end("dividerl_lt_01", "targetname");
	level clientfield::set("w_flood_combat_windows_c", 1);
	level thread scene::skipto_end("divider_rt_02", "targetname");
}

/*
	Name: function_60041a78
	Namespace: namespace_caee6f4a
	Checksum: 0xD7946167
	Offset: 0x4398
	Size: 0x34B
	Parameters: 0
	Flags: None
*/
function function_60041a78()
{
	wait(1);
	var_3a7682f2 = GetEnt("flooding_start_1", "targetname");
	var_14740889 = GetEnt("flooding_start_2", "targetname");
	var_2d385a13 = GetEnt("evt_torrent_gush_left", "targetname");
	var_cb0d3686 = GetEnt("evt_torrent_gush_right", "targetname");
	var_853c208b = GetEnt("evt_torrent_gush_surface_l", "targetname");
	var_1899b97e = GetEnt("evt_torrent_gush_surface_r", "targetname");
	if(isdefined(var_3a7682f2) && isdefined(var_14740889))
	{
		playsoundatposition("evt_flood_start_1", var_3a7682f2.origin);
		playsoundatposition("evt_flood_start_2", var_14740889.origin);
	}
	if(isdefined(var_2d385a13) && isdefined(var_cb0d3686) && isdefined(var_853c208b) && isdefined(var_1899b97e))
	{
		var_2d385a13 PlayLoopSound("evt_torrent_gush");
		var_cb0d3686 PlayLoopSound("evt_torrent_gush");
		var_853c208b PlayLoopSound("evt_torrent_gush_surface");
		var_1899b97e PlayLoopSound("evt_torrent_gush_surface");
		level waittill("hash_67907d63");
		var_2d385a13 StopLoopSound(0.5);
		var_2d385a13 delete();
		var_cb0d3686 StopLoopSound(0.5);
		var_cb0d3686 delete();
		var_853c208b StopLoopSound(0.5);
		var_853c208b delete();
		var_1899b97e StopLoopSound(0.5);
		var_1899b97e delete();
		var_3a7682f2 delete();
		var_14740889 delete();
	}
}

/*
	Name: function_13a96c2b
	Namespace: namespace_caee6f4a
	Checksum: 0xDF0A59CF
	Offset: 0x46F0
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_13a96c2b()
{
	level endon("hash_5d38bbf8");
	e_volume = GetEnt("flood_combat_water_sheeting", "targetname");
	e_volume endon("death");
	while(1)
	{
		foreach(player in level.players)
		{
			if(player istouching(e_volume))
			{
				if(!(isdefined(player.var_42102683) && player.var_42102683))
				{
					player clientfield::set_to_player("tp_water_sheeting", 1);
					player.var_42102683 = 1;
				}
				continue;
			}
			if(isdefined(player.var_42102683) && player.var_42102683)
			{
				player clientfield::set_to_player("tp_water_sheeting", 0);
				player.var_42102683 = 0;
			}
		}
		wait(1);
	}
	Array::thread_all(level.players, &clientfield::set_to_player, "tp_water_sheeting", 0);
}

/*
	Name: function_80012633
	Namespace: namespace_caee6f4a
	Checksum: 0xE7103540
	Offset: 0x48C8
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_80012633()
{
	level endon("hash_d55f5f70");
	var_3b889aff = struct::get_array(self.target, "targetname");
	v_dir = AnglesToForward((0, var_3b889aff[0].angles[1], 0));
	v_org = var_3b889aff[0].origin;
	v_length = 128;
	Array::thread_all(var_3b889aff, &function_d4c5fb8e, self);
	while(1)
	{
		self waittill("trigger", player);
		if(!player IsOnGround() && isdefined(player.var_fca98bd1) && GetTime() - player.var_fca98bd1 < 1000)
		{
			continue;
		}
		n_distance = Distance2D(v_org, player.origin);
		if(n_distance > v_length)
		{
			continue;
		}
		if(player issprinting() && n_distance > v_length * 0.4)
		{
			continue;
		}
		n_push_strength = mapfloat(0, v_length, 80, 0, n_distance);
		v_player_velocity = player GetVelocity();
		player SetVelocity(v_player_velocity + v_dir * n_push_strength);
		if(!player IsOnGround())
		{
			player.var_fca98bd1 = GetTime();
		}
	}
}

/*
	Name: function_d4c5fb8e
	Namespace: namespace_caee6f4a
	Checksum: 0xBF30C7B
	Offset: 0x4B30
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_d4c5fb8e(trigger)
{
	level endon("hash_d55f5f70");
	var_7a88c258 = util::spawn_model("tag_origin", self.origin, self.angles);
	var_7a88c258.script_objective = "flood_defend";
	trigger::wait_till(self.target, undefined, undefined, 0);
	if(isdefined(trigger.script_string))
	{
		level thread scene::Play(trigger.script_string);
		level thread namespace_cba4cc55::Quake(0.35, RandomFloatRange(0.8, 1.4), namespace_cba4cc55::function_d455824c(), 5000, 1, 2);
	}
	var_7a88c258 playsound("evt_pipe_break");
	var_7a88c258 PlayLoopSound("evt_water_pipe_flow");
}

/*
	Name: function_f6ac14bc
	Namespace: namespace_caee6f4a
	Checksum: 0x3AFB4EBA
	Offset: 0x4C88
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_f6ac14bc()
{
	var_fa42e2ca = spawner::simple_spawn_single("surgical_room_door_close_guy_spawner");
	level util::delay(2, "death", &namespace_cba4cc55::function_423cfae8, "surgical_room_door", "close");
	if(isalive(var_fa42e2ca))
	{
		var_fa42e2ca fallback_think();
	}
}

/*
	Name: function_f899badb
	Namespace: namespace_caee6f4a
	Checksum: 0x47D21C5
	Offset: 0x4D30
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f899badb()
{
	level thread function_cb3a24c5();
	level waittill("hash_65ca45df");
	spawn_manager::disable("flood_combat_reinforcements");
	spawn_manager::kill("flood_combat_reinforcements_human");
}

/*
	Name: function_cb3a24c5
	Namespace: namespace_caee6f4a
	Checksum: 0x9EEA502
	Offset: 0x4D98
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_cb3a24c5()
{
	level endon("hash_65ca45df");
	while(1)
	{
		level namespace_cba4cc55::Quake(0.35, RandomFloatRange(0.8, 1.4), namespace_cba4cc55::function_d455824c(), 5000, 1, 2);
		wait(randomIntRange(8, 15));
	}
}

/*
	Name: function_fa1f6da6
	Namespace: namespace_caee6f4a
	Checksum: 0x39F72F0C
	Offset: 0x4E28
	Size: 0x2C3
	Parameters: 1
	Flags: None
*/
function function_fa1f6da6(var_74cd64bc)
{
	level thread function_d6ee7c7d();
	level thread function_e9bcb005();
	level thread function_f879cf37();
	spawner::add_spawn_function_group("flood_defend_runner", "script_noteworthy", &function_3ed2d232);
	if(var_74cd64bc)
	{
		level thread function_5d06f10b();
	}
	level flag::wait_till("defend_ready");
	level flag::set("flood_defend_enemies_spawning");
	spawn_manager::enable("flood_combat_reinforcements");
	level thread function_5d080bdb();
	level flag::wait_till("hendricks_defend_started");
	spawn_manager::enable("flood_combat_reinforcements_human");
	level thread namespace_d40478f6::function_72ef07c3();
	level.var_2fd26037 ai::set_ignoreall(1);
	level thread function_f899badb();
	wait(18);
	level notify("hash_5097097b");
	wait(12);
	level notify("hash_3b0cb580");
	wait(7);
	level flag::set("defend_time_expired");
	var_fbee94bb = GetEnt("floor_door_hint_trigger", "targetname");
	objectives::set("cp_level_sgen_use_door", var_fbee94bb.origin);
	var_8ad7c437 = util::function_14518e76(var_fbee94bb, &"cp_prompt_enter_sgen_door", &"CP_MI_SING_SGEN_FLOOD_USE_DOOR", &function_d0378b1a);
	level waittill("hash_37c452a9");
	objectives::complete("cp_level_sgen_use_door");
	objectives::set("cp_level_sgen_get_to_surface");
}

/*
	Name: function_3ed2d232
	Namespace: namespace_caee6f4a
	Checksum: 0x88C91EAF
	Offset: 0x50F8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_3ed2d232()
{
	self ai::set_behavior_attribute("sprint", 1);
	self waittill("goal");
	self ai::set_behavior_attribute("sprint", 0);
	self ai::set_behavior_attribute("move_mode", "rambo");
}

/*
	Name: function_d0378b1a
	Namespace: namespace_caee6f4a
	Checksum: 0x1B9A06F1
	Offset: 0x5178
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_d0378b1a(e_player)
{
	level notify("hash_65ca45df");
	level thread namespace_d40478f6::function_973b77f9();
	self gameobjects::disable_object();
	objectives::complete("cp_level_sgen_use_door");
	if(isdefined(level.BZM_SGENDialogue8_2Callback))
	{
		level thread [[level.BZM_SGENDialogue8_2Callback]]();
	}
	scene::add_scene_func("cin_sgen_22_01_release_torrent_1st_flood_hendricks", &function_89f9dea6, "play");
	level thread scene::Play("cin_sgen_22_01_release_torrent_1st_flood_hendricks", level.var_2fd26037);
	scene::add_scene_func("cin_sgen_22_01_release_torrent_1st_flood_player", &function_7ade3b88, "play");
	level scene::Play("cin_sgen_22_01_release_torrent_1st_flood_player", e_player);
	wait(0.05);
	if(!isdefined(level.var_5580212f))
	{
		level notify("hash_f8576d57");
		function_581db5d8();
	}
	level notify("hash_67907d63");
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 colors::enable();
	spawn_manager::kill("flood_defend_catwalk_spawn_zone_spawnmanager", 1);
	level notify("hash_37c452a9");
	self gameobjects::destroy_object(1);
}

/*
	Name: function_7ade3b88
	Namespace: namespace_caee6f4a
	Checksum: 0xE656627E
	Offset: 0x5368
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_7ade3b88(a_ents)
{
	level endon("hash_f8576d57");
	wait(1.5);
	function_581db5d8();
}

/*
	Name: function_581db5d8
	Namespace: namespace_caee6f4a
	Checksum: 0x37B10C4F
	Offset: 0x53A8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_581db5d8()
{
	if(!isdefined(level.var_5580212f))
	{
		level.var_5580212f = GetTime();
	}
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("water_teleport", 1);
	}
}

/*
	Name: function_82311a3e
	Namespace: namespace_caee6f4a
	Checksum: 0x37F907AF
	Offset: 0x5460
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_82311a3e(a_ents)
{
	while(GetTime() - level.var_5580212f < 1000)
	{
		wait(0.1);
	}
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("water_teleport", 0);
	}
}

/*
	Name: function_28b80c6f
	Namespace: namespace_caee6f4a
	Checksum: 0x1E4130A3
	Offset: 0x5530
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_28b80c6f()
{
	trigger::wait_till("trig_hallway_ceiling_collapse_01");
	level clientfield::set("ceiling_collapse", 1);
	trigger::wait_till("trig_hallway_ceiling_collapse_02");
	level clientfield::set("ceiling_collapse", 2);
	trigger::wait_till("trig_hallway_ceiling_collapse_03");
	level clientfield::set("ceiling_collapse", 3);
	trigger::wait_till("trig_hallway_ceiling_collapse_04");
	level clientfield::set("ceiling_collapse", 4);
}

/*
	Name: function_5d06f10b
	Namespace: namespace_caee6f4a
	Checksum: 0x305F56A6
	Offset: 0x5620
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_5d06f10b()
{
	nd_goto = GetNode("hendricks_flood_combat_wait", "targetname");
	level.var_2fd26037 SetGoal(nd_goto.origin);
	level flag::wait_till("defend_ready");
	var_421ccb2d = GetEnt("flood_defend_defend_room_zone_trig", "targetname");
	var_a3eb613f = 1;
	while(var_a3eb613f)
	{
		var_a3eb613f = 0;
		a_ai_enemies = GetAITeamArray("axis");
		foreach(ai_enemy in a_ai_enemies)
		{
			if(ai_enemy istouching(var_421ccb2d))
			{
				var_a3eb613f = 1;
				break;
			}
		}
		wait(0.2);
	}
	level scene::Play("cin_sgen_22_01_release_torrent_vign_flood_new_hendricks_hackdoor", level.var_2fd26037);
	level flag::set("hendricks_defend_started");
	level thread scene::Play("cin_sgen_22_01_release_torrent_vign_flood_new_hendricks_grabdoor", level.var_2fd26037);
}

/*
	Name: function_73cf7557
	Namespace: namespace_caee6f4a
	Checksum: 0x229E5A42
	Offset: 0x5828
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_73cf7557()
{
	level.var_2fd26037 colors::disable();
	level.var_2fd26037.goalRadius = 16;
	nd_goal = GetNode("flood_defend_hendricks_ready_node", "targetname");
	level.var_2fd26037 SetGoal(nd_goal);
}

/*
	Name: function_82fd0598
	Namespace: namespace_caee6f4a
	Checksum: 0x31DA5BBE
	Offset: 0x58B0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_82fd0598()
{
	level thread namespace_cba4cc55::function_423cfae8("charging_station_entrance", "close");
	Array::thread_all(GetEntArray("pod_track_model", "targetname"), &util::self_delete);
}

/*
	Name: function_ae51faf3
	Namespace: namespace_caee6f4a
	Checksum: 0xAC7E2D14
	Offset: 0x5928
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_ae51faf3()
{
	self ai::set_behavior_attribute("force_cover", 1);
	self ai::set_behavior_attribute("sprint", 1);
	self ai::set_behavior_attribute("move_mode", "rambo");
}

/*
	Name: function_5d080bdb
	Namespace: namespace_caee6f4a
	Checksum: 0xC80D405F
	Offset: 0x59A0
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function function_5d080bdb()
{
	t_zone = GetEnt("flood_defend_catwalk_spawn_zone_trig", "targetname");
	var_408caf2f = GetEnt(t_zone.target, "targetname");
	t_zone endon("death");
	t_zone waittill("trigger");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_close", "open");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_open", "close");
	while(isdefined(t_zone))
	{
		t_zone waittill("trigger");
		if(!spawn_manager::is_enabled(var_408caf2f.targetname))
		{
			spawn_manager::enable(var_408caf2f.targetname);
		}
		function_5d5cec4b("flood_defend_catwalk_spawn_zone_robot", undefined, 0);
		level flag::wait_till("flood_defend_catwalk_spawn_zone_unoccupied");
		function_5d5cec4b("flood_defend_catwalk_spawn_zone_robot");
		spawn_manager::disable(var_408caf2f.targetname);
		t_zone thread function_718c6e08();
	}
}

/*
	Name: function_718c6e08
	Namespace: namespace_caee6f4a
	Checksum: 0x37F4109E
	Offset: 0x5B58
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_718c6e08()
{
	self endon("death");
	self endon("trigger");
	wait(4);
	var_64e85e6d = GetEntArray("flood_defend_catwalk_spawn_zone_robot" + "_ai", "targetname");
	foreach(var_73be40d2 in var_64e85e6d)
	{
		var_73be40d2 kill();
	}
}

/*
	Name: function_5d5cec4b
	Namespace: namespace_caee6f4a
	Checksum: 0xA1D7F2F
	Offset: 0x5C40
	Size: 0x9B
	Parameters: 3
	Flags: None
*/
function function_5d5cec4b(str_spawner_name, str_key, b_ignore)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	if(!isdefined(b_ignore))
	{
		b_ignore = 1;
	}
	var_6bc905f9 = GetEntArray(str_spawner_name + "_ai", str_key);
	Array::thread_all(var_6bc905f9, &ai::set_ignoreall, b_ignore);
}

/*
	Name: function_324a038c
	Namespace: namespace_caee6f4a
	Checksum: 0xDE4D2B89
	Offset: 0x5CE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_324a038c()
{
	level scene::Play("cin_sgen_21_03_floodcombat_vign_rejoin");
}

/*
	Name: function_d62206d0
	Namespace: namespace_caee6f4a
	Checksum: 0x8404B878
	Offset: 0x5D18
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_d62206d0()
{
	level flag::wait_till("flood_combat_door_crush_robot_start");
	level thread scene::Play("cin_sgen_21_02_floodcombat_vign_escape_robot01");
	level waittill("hash_14bc1e1c");
	trigger::use("sgen_robot_crushed_water_trig");
}

/*
	Name: function_d6ee7c7d
	Namespace: namespace_caee6f4a
	Checksum: 0x96C0719D
	Offset: 0x5D90
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d6ee7c7d()
{
	var_16e2c3f6 = spawner::simple_spawn_single("flood_defend_flood_door_guy");
	level scene::init("cin_sgen_21_03_surgical_room_vign_closedoor_54i01", var_16e2c3f6);
	trigger::wait_till("flood_defend_defend_area_trig");
	if(isalive(var_16e2c3f6))
	{
		var_16e2c3f6 ai::set_ignoreall(1);
		var_16e2c3f6 ai::set_ignoreme(1);
		level scene::Play("cin_sgen_21_03_surgical_room_vign_closedoor_54i01", var_16e2c3f6);
	}
}

/*
	Name: function_e9bcb005
	Namespace: namespace_caee6f4a
	Checksum: 0xE55B1909
	Offset: 0x5E70
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_e9bcb005()
{
	level thread scene::Play("p7_fxanim_cp_sgen_debris_hallway_flood_bundle");
	level clientfield::set("flood_defend_hallway_flood_siege", 1);
	level thread function_5b17f290();
	level waittill("hash_b6f74de7");
	level thread function_ccc97d5();
	level scene::init("fxanim_flooded_lab_door", "targetname");
}

/*
	Name: function_ccc97d5
	Namespace: namespace_caee6f4a
	Checksum: 0x6847604D
	Offset: 0x5F20
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_ccc97d5()
{
	var_6117374 = spawn("script_origin", (26380, 1589, -6604));
	var_fcca8f52 = spawn("script_origin", (26380, 1589, -6604));
	var_fcca8f52 playsound("evt_sgen_flood_door_close");
	level waittill("hash_deaf06de");
	var_6117374 playsound("evt_flood_door_impact");
	var_6117374 PlayLoopSound("evt_flood_metal_stress", 2);
	level waittill("hash_65ca45df");
	var_6117374 StopLoopSound(3);
	wait(3);
	var_6117374 delete();
	var_fcca8f52 delete();
}

/*
	Name: function_5b17f290
	Namespace: namespace_caee6f4a
	Checksum: 0xBBBA27B0
	Offset: 0x6058
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_5b17f290()
{
	var_af9cb339 = struct::get("flood_defend_wave_source_spot");
	level waittill("hash_401b5f85");
	var_b8a74cba = GetAISpeciesArray("axis", "human");
	var_b8a74cba = ArraySortClosest(var_b8a74cba, var_af9cb339.origin);
	foreach(var_37ba03da in var_b8a74cba)
	{
		wait(RandomFloatRange(0.2, 0.32));
		if(isalive(var_37ba03da) && Distance2D(var_37ba03da.origin, var_af9cb339.origin) <= var_af9cb339.radius)
		{
			var_37ba03da kill();
		}
	}
	level flag::set("flood_defend_flood_hallway_kill_zone_enabled");
}

/*
	Name: function_aa1d0311
	Namespace: namespace_caee6f4a
	Checksum: 0xDAAAE9D0
	Offset: 0x6208
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_aa1d0311()
{
	level scene::init("p7_fxanim_cp_sgen_pipes_bursting_01_bundle");
	level scene::init("p7_fxanim_cp_sgen_pipes_bursting_02_bundle");
	level scene::init("p7_fxanim_cp_sgen_pipes_bursting_03_bundle");
	level scene::init("p7_fxanim_cp_sgen_pipes_bursting_04_bundle");
}

/*
	Name: function_89f9dea6
	Namespace: namespace_caee6f4a
	Checksum: 0x68C97FD2
	Offset: 0x6298
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_89f9dea6(a_ents)
{
	level waittill("hash_b1ecfdaa");
	level scene::Play("fxanim_flooded_lab_door", "targetname");
}

/*
	Name: function_7541af2d
	Namespace: namespace_caee6f4a
	Checksum: 0xDDEFCDB3
	Offset: 0x62E0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_7541af2d()
{
	level.var_2fd26037 dialog::say("hend_what_the_hell_was_0", RandomFloatRange(0.2, 0.3));
	level.var_2fd26037 dialog::say("plyr_sounds_like_taylor_s_0", RandomFloatRange(0.2, 0.3));
	level flag::wait_till("pallas_lift_front_open");
	level dialog::remote("kane_hendricks_we_have_m_0", RandomFloatRange(0.1, 0.25));
	level.var_2fd26037 dialog::say("hend_you_heard_her_let_0", RandomFloatRange(0.2, 0.3));
	level dialog::remote("kane_overwatch_drone_show_0", RandomFloatRange(0.5, 0.76));
	level thread function_19acbb90();
	trigger::wait_till("flood_combat_charging_station_zone_trig");
	level.var_2fd26037 dialog::say("hend_get_through_them_we_0");
	level thread function_b5c83759();
	level thread function_f69bf247();
}

/*
	Name: function_19acbb90
	Namespace: namespace_caee6f4a
	Checksum: 0x3BE449F1
	Offset: 0x64C0
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_19acbb90()
{
	level endon("hash_d55f5f70");
	var_846737f = 3;
	var_5b1de241 = 4;
	n_index = 0;
	var_d44c15f4 = [];
	var_d44c15f4[0] = "hend_keep_moving_the_wh_0";
	var_d44c15f4[1] = "hend_go_go_go_0";
	while(n_index < var_d44c15f4.size)
	{
		trigger::wait_till("flood_combat_security_room_zone_trig");
		if(!level flag::get("flood_combat_nag_playing"))
		{
			level flag::set("flood_combat_nag_playing");
			level.var_2fd26037 dialog::say(var_d44c15f4[n_index]);
			n_index++;
			level flag::clear("flood_combat_nag_playing");
			var_3d70d73e = RandomFloatRange(var_846737f, var_5b1de241);
			wait(var_3d70d73e);
		}
	}
}

/*
	Name: function_b5c83759
	Namespace: namespace_caee6f4a
	Checksum: 0xA471778B
	Offset: 0x6618
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_b5c83759()
{
	level endon("hash_d55f5f70");
	var_846737f = 3;
	var_5b1de241 = 6;
	n_index = 0;
	var_d44c15f4 = [];
	var_d44c15f4[0] = "hend_get_through_them_we_0";
	var_d44c15f4[1] = "hend_don_t_stop_move_m_0";
	var_d44c15f4[2] = "hend_fucking_move_0";
	while(n_index < var_d44c15f4.size)
	{
		var_3d70d73e = RandomFloatRange(var_846737f, var_5b1de241);
		wait(var_3d70d73e);
		trigger::wait_till("flood_combat_charging_station_zone_trig");
		if(!level flag::get("flood_combat_nag_playing"))
		{
			level flag::set("flood_combat_nag_playing");
			level.var_2fd26037 dialog::say(var_d44c15f4[n_index]);
			n_index++;
			level flag::clear("flood_combat_nag_playing");
		}
	}
}

/*
	Name: function_f69bf247
	Namespace: namespace_caee6f4a
	Checksum: 0xEB5F5E6D
	Offset: 0x6780
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_f69bf247()
{
	trigger::wait_till("important_story_vo", "targetname");
	level dialog::say("plyr_start_scanning_for_t_0", RandomFloatRange(0.5, 0.76));
	level dialog::remote("kane_i_m_scanning_file_tr_0", RandomFloatRange(0.75, 1.25));
}

/*
	Name: function_73858979
	Namespace: namespace_caee6f4a
	Checksum: 0xC4E6E608
	Offset: 0x6820
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_73858979()
{
	trigger::wait_or_timeout(20, "flood_defend_defend_area_trig");
	level thread util::clientNotify("escps");
	level dialog::function_13b3b16a("plyr_kane_i_hope_you_go_0");
	level dialog::remote("kane_alright_i_ll_talk_y_0", RandomFloatRange(0.1, 0.25));
	level.var_2fd26037 dialog::say("hend_what_are_you_insan_0", RandomFloatRange(0.1, 0.25));
	level dialog::remote("kane_not_if_this_works_y_0", RandomFloatRange(0.1, 0.25));
	level.var_2fd26037 dialog::say("hend_okay_okay_but_if_t_0", RandomFloatRange(0.1, 0.25));
	level flag::set("defend_ready");
	level waittill("hash_5097097b");
	level dialog::remote("kane_i_ve_id_d_the_surviv_0");
	level dialog::function_13b3b16a("plyr_all_in_good_time_ka_0", 0.3);
	level waittill("hash_3b0cb580");
	level.var_2fd26037 dialog::say("hend_just_a_few_more_seco_0", RandomFloatRange(0.1, 0.25));
	level waittill("hash_756f21e5");
	level.var_2fd26037 dialog::say("hend_give_me_a_hand_0");
	level.var_2fd26037 thread function_3d56a972();
}

/*
	Name: function_3d56a972
	Namespace: namespace_caee6f4a
	Checksum: 0xD1E1C574
	Offset: 0x6A88
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_3d56a972()
{
	level endon("hash_65ca45df");
	var_d44c15f4 = [];
	var_d44c15f4[0] = "hend_c_mon_we_gotta_get_o_0";
	var_d44c15f4[1] = "hend_the_whole_building_s_0";
	var_d44c15f4[2] = "hend_what_are_you_waiting_3";
	var_d44c15f4[3] = "hend_help_me_with_the_doo_0";
	foreach(var_385eca05 in var_d44c15f4)
	{
		wait(RandomFloatRange(3, 6));
		level.var_2fd26037 dialog::say(var_d44c15f4[n_index], RandomFloatRange(0.1, 0.25));
	}
}

/*
	Name: function_ab5cee74
	Namespace: namespace_caee6f4a
	Checksum: 0x7DC3BA54
	Offset: 0x6BC8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ab5cee74()
{
	objectives::breadcrumb("flood_combat_start_breadcrumb_trig");
}

/*
	Name: function_d8208c5
	Namespace: namespace_caee6f4a
	Checksum: 0xD88B6DE9
	Offset: 0x6BF0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d8208c5()
{
	level thread objectives::breadcrumb("flood_combat_breadcrumb_end_trig");
	level flag::wait_till("hendricks_defend_started");
	objectives::complete("cp_waypoint_breadcrumb");
	level flag::wait_till("defend_time_expired");
}

