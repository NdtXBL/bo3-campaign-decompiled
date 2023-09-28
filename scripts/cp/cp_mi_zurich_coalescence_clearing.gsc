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
	Name: main
	Namespace: namespace_29799936
	Checksum: 0x5352C2A2
	Offset: 0xC10
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function main()
{
	init_clientfields();
	scene::add_scene_func("cin_zur_10_01_kruger_3rd_questioned_sh010", &function_7685bfc5, "play");
	scene::add_scene_func("p7_fxanim_cp_zurich_rock_slide_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "clearing_path_selected");
	level._effect["krueger_body_fx"] = "player/fx_ai_marker_body_kreuger";
	level._effect["krueger_beam_fx"] = "light/fx_beam_marker_kreuger";
}

/*
	Name: init_clientfields
	Namespace: namespace_29799936
	Checksum: 0x755C076D
	Offset: 0xCD0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	var_c0e9f8c3 = GetMinBitCountForNum(5);
	clientfield::register("world", "zurich_waterfall_bodies", 1, 1, "int");
	clientfield::register("world", "clearing_vinewall_init", 1, var_c0e9f8c3, "int");
	clientfield::register("world", "clearing_vinewall_open", 1, var_c0e9f8c3, "int");
}

/*
	Name: skipto_start
	Namespace: namespace_29799936
	Checksum: 0x916972B8
	Offset: 0xD98
	Size: 0x19B
	Parameters: 2
	Flags: None
*/
function skipto_start(str_objective, var_74cd64bc)
{
	level namespace_8e9083ff::function_4d032f25(1, 0.5);
	spawner::add_spawn_function_group("raven_enemies_clearing_start", "script_aigroup", &function_a1a182e);
	level flag::wait_till("all_players_spawned");
	skipto::teleport_players(str_objective, 0);
	Array::thread_all(level.activePlayers, &util::function_df6eb506, 1);
	level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
	if(var_74cd64bc)
	{
		util::function_d8eaed3d(3);
		level util::screen_fade_out(0, "white");
	}
	level clientfield::set("zurich_waterfall_bodies", 1);
	level clientfield::set("clearing_vinewall_init", 5);
	level thread function_a3f52108(str_objective);
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
function function_c68a0705(str_objective, var_74cd64bc, var_e4cd2b8b, player)
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
function function_a3f52108(str_objective)
{
	Array::thread_all(level.players, &function_32cf3cd);
	var_4ccf970 = thread namespace_8e9083ff::function_a00fa665(str_objective);
	level thread function_e8e4006f();
	level thread function_8727b592();
	level thread function_6a2abd6d();
	level flag::set("flag_clearing_start");
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
	self setgoalvolume(GetEnt("clearing_start_defend_volume", "targetname"));
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
	trigger::wait_till("trig_clearing_enemy_cleanup");
	Array::run_all(GetAIArray("clearing_start_enemies", "script_noteworthy"), &delete);
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
	spawn_manager::function_72e3dd35("sm_clearing_enemy_spawn");
	objectives::breadcrumb("clearing_start_breadcrumb_trig");
	spawn_manager::function_72e3dd35("sm_clearing_hill");
	objectives::breadcrumb("clearing_hill_breadcrumb_trig");
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
	scene::add_scene_func("cin_zur_09_02_standoff_1st_forest", &function_5b75f492, "done");
	scene::add_scene_func("cin_zur_09_02_standoff_1st_forest", &function_cf93f22a, "play");
	level scene::init("cin_zur_09_02_standoff_1st_forest");
	scene::add_scene_func("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle", &function_7d18154f, "init");
	level scene::init("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
	wait(3);
	level thread util::screen_fade_in(2, "white");
	if(isdefined(level.BZM_ZURICHDialogue4Callback))
	{
		level thread [[level.BZM_ZURICHDialogue4Callback]]();
	}
	level thread scene::Play("cin_zur_09_02_standoff_1st_forest");
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
function function_cf93f22a(a_ents)
{
	self thread function_4ac14422(a_ents);
	a_ents["corvus"] ghost();
	a_ents["corvus"] waittill("hash_be812a65");
	a_ents["corvus"] clientfield::set("raven_ai_rez", 1);
	wait(0.5);
	a_ents["corvus"] show();
	a_ents["corvus"] clientfield::set("corvus_body_fx", 1);
	a_ents["corvus"] waittill("hash_4cfd02d9");
	a_ents["corvus"] clientfield::set("raven_ai_rez", 0);
	a_ents["corvus"] clientfield::set("corvus_body_fx", 0);
	a_ents["corvus"] ghost();
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
	scene::add_scene_func("cin_zur_09_02_standoff_3rd_forest_part2_sh010", &function_eb4d9424, "play");
	scene::add_scene_func("cin_zur_09_02_standoff_3rd_forest_part2_sh010", &namespace_8e9083ff::function_f3e247d6, "init");
	level scene::init("p7_fxanim_cp_zurich_rock_slide_bundle");
	var_b35e56d0 = trigger::wait_till("t_waterfall_igc");
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	if(isdefined(level.BZM_ZURICHDialogue4_1Callback))
	{
		level thread [[level.BZM_ZURICHDialogue4_1Callback]]();
	}
	level scene::Play("cin_zur_09_02_standoff_3rd_forest_part2_sh010", var_b35e56d0.who);
	level util::function_93831e79("clearing_waterfall_igc_end");
	util::clear_streamer_hint();
	util::function_d8eaed3d(5);
	level waittill("hash_4e38f7bd");
	scene::add_scene_func("cin_zur_10_01_kruger_3rd_questioned_sh010", &namespace_8e9083ff::function_f3e247d6, "init");
	level scene::init("cin_zur_10_01_kruger_3rd_questioned_sh010");
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
function function_eb4d9424(a_ents)
{
	var_f91fd6fe = a_ents["kruger"];
	var_f91fd6fe waittill("hash_b172f51e");
	PlayFXOnTag(level._effect["krueger_body_fx"], var_f91fd6fe, "j_spine4");
	level waittill("hash_89688662");
	PlayFXOnTag(level._effect["krueger_beam_fx"], var_f91fd6fe, "tag_origin");
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
function function_5b75f492(a_ents)
{
	level util::function_93831e79("clearing_start_intro_end");
	util::clear_streamer_hint();
	savegame::function_5d2cdd99();
	level scene::init("cin_zur_09_02_standoff_3rd_forest_part2_sh010");
	level thread function_e0b4badc();
	level thread function_44dc9752();
	util::wait_network_frame();
	foreach(player in level.players)
	{
		player player::switch_to_primary_weapon(1);
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
	spawn_manager::enable("sm_clearing_enemy_spawn");
	spawn_manager::function_347e835a("sm_clearing_enemy_spawn");
	level scene::Play("cin_zur_09_01_standoff_vign_charge", spawn_manager::get_ai("sm_clearing_enemy_spawn"));
	spawn_manager::function_72e3dd35("sm_clearing_enemy_spawn");
	savegame::function_5d2cdd99();
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
	var_8ea4a872 = self GetWeaponsList();
	foreach(w_weapon in var_8ea4a872)
	{
		self giveMaxAmmo(w_weapon);
		self SetWeaponAmmoClip(w_weapon, w_weapon.clipSize);
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
function function_5be0c18c(str_objective, var_74cd64bc)
{
	spawner::add_spawn_function_group("spawn_manager_waterfall_guy", "targetname", &function_2afd205d);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level scene::init("cin_zur_09_02_standoff_3rd_forest_part2_sh010");
		namespace_8e9083ff::function_4d032f25(1, 0.5);
		var_4ccf970 = namespace_8e9083ff::function_a00fa665("clearing_start");
		level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
		level thread function_6a2abd6d();
		level clientfield::set("zurich_waterfall_bodies", 1);
		level clientfield::set("clearing_vinewall_init", 5);
		level scene::init("p7_fxanim_cp_zurich_rock_slide_bundle");
		scene::add_scene_func("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle", &function_7d18154f, "init");
		level scene::init("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
		load::function_a2995f22();
		skipto::teleport_players(str_objective, 0);
		Array::thread_all(level.activePlayers, &util::function_df6eb506, 1);
		level function_44dc9752();
	}
	level thread function_83fcefa6();
	Array::thread_all(level.activePlayers, &namespace_8e9083ff::function_39af75ef, "clearing_path_selected");
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
function function_132beeb7(str_objective, var_74cd64bc, var_e4cd2b8b, player)
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
	Array::run_all(level.activePlayers, &PlayRumbleOnEntity, "cp_infection_hideout_stretch");
	playsoundatposition("evt_waterfall_rumble", (0, 0, 0));
	objectives::breadcrumb("trig_clearing_waterfall_breadcrumb");
	trigger::wait_till("trig_clearing_waterfall_breadcrumb");
	if(isdefined(level.BZM_ZURICHDialogue6Callback))
	{
		level thread [[level.BZM_ZURICHDialogue6Callback]]();
	}
	level thread scene::Play("p7_fxanim_cp_zurich_rock_slide_bundle");
	objectives::breadcrumb("trig_clearing_waterfall_pool_breadcrumb");
	trigger::wait_till("trig_clearing_waterfall_pool_breadcrumb");
	savegame::function_5d2cdd99();
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
	spawn_manager::enable("spawn_manager_waterfall_enemies");
	spawn_manager::function_72e3dd35("spawn_manager_waterfall_enemies");
	level flag::set("flag_enable_waterfall_vine_burn");
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
	self setgoalvolume(GetEnt("waterfall_defend_volume", "targetname"));
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
function function_21b82e1f(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_8e9083ff::function_4d032f25(1, 0.5);
		level thread namespace_8e9083ff::function_11b424e5(1);
		var_4ccf970 = namespace_8e9083ff::function_a00fa665("clearing_start");
		Array::thread_all(level.activePlayers, &util::function_df6eb506, 1);
		level namespace_8e9083ff::function_b0f0dd1f(1, "reverse_snow");
		level clientfield::set("zurich_waterfall_bodies", 1);
		level clientfield::set("clearing_vinewall_init", 5);
		scene::add_scene_func("cin_zur_10_01_kruger_3rd_questioned_sh010", &namespace_8e9083ff::function_f3e247d6, "init");
		level scene::init("cin_zur_10_01_kruger_3rd_questioned_sh010");
		level scene::init("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
		util::function_d8eaed3d(5);
		load::function_a2995f22();
		skipto::teleport_players(str_objective, 0);
		if(isdefined(level.BZM_ZURICHDialogue7Callback))
		{
			level thread [[level.BZM_ZURICHDialogue7Callback]]();
		}
	}
	util::wait_network_frame();
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
	var_60a2aad6 = GetAITeamArray("axis");
	foreach(ai in var_60a2aad6)
	{
		ai delete();
	}
	scene::add_scene_func("cin_zur_11_01_paths_1st_still_chance", &function_36f7aa25, "play");
	scene::add_scene_func("cin_zur_11_01_paths_1st_still_chance", &function_bf68487, "done");
	level.var_1c26230b = util::function_740f8516("taylor_hero");
	level.var_1c26230b ghost();
	level thread scene::init("cin_zur_11_01_paths_1st_still_chance", level.var_1c26230b);
	scene::add_player_linked_scene("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
	level thread namespace_67110270::function_71271388();
	level thread scene::Play("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
	level scene::Play("cin_zur_10_01_kruger_3rd_questioned_sh010");
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
function function_7d18154f(a_ents)
{
	var_332eaff4 = a_ents["krueger_tree_lt"];
	var_f069ba56 = a_ents["krueger_tree_rt"];
	var_332eaff4 HidePart("arm_lt_side_jnt");
	var_332eaff4 HidePart("arm_blood_fx_lt_jnt");
	var_332eaff4 HidePart("elbow_lt_side_jnt");
	var_332eaff4 HidePart("leg_lt_side_jnt");
	var_332eaff4 HidePart("knee_lt_side_jnt");
	var_332eaff4 HidePart("leg_blood_fx_lt_jnt");
	var_f069ba56 HidePart("arm_rt_side_jnt");
	var_f069ba56 HidePart("arm_blood_fx_rt_jnt");
	var_f069ba56 HidePart("elbow_rt_side_jnt");
	var_f069ba56 HidePart("leg_rt_side_jnt");
	var_f069ba56 HidePart("knee_rt_side_jnt");
	var_f069ba56 HidePart("leg_blood_fx_rt_jnt");
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
function function_7685bfc5(a_ents)
{
	var_c9b7e4eb = a_ents["krueger"];
	level waittill("hash_4fa207a0");
	var_c9b7e4eb ghost();
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
function function_36f7aa25(a_ents)
{
	level.var_1c26230b show();
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
function function_bf68487(a_ents)
{
	level util::function_93831e79("clearing_kruger_igc_exit");
	util::clear_streamer_hint();
	savegame::function_5d2cdd99();
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
	scene::add_scene_func("cin_zur_09_01_standoff_vign_far_as_i_go", &function_4ac14422, "play");
	var_ce37baf2 = GetEnt("trig_waterfall_burn", "targetname");
	var_9d50b546 = GetEnt("clip_burn_vine_01", "targetname");
	var_ce37baf2 SetInvisibleToAll();
	level flag::wait_till("flag_enable_waterfall_vine_burn");
	var_ce37baf2 SetVisibleToAll();
	level thread function_51277233();
	var_ce37baf2 namespace_8e9083ff::function_f3bcbbb1();
	if(isdefined(level.BZM_ZURICHDialogue7Callback))
	{
		level thread [[level.BZM_ZURICHDialogue7Callback]]();
	}
	level scene::Play("cin_zur_09_01_standoff_vign_far_as_i_go", var_ce37baf2.e_player);
	level util::function_93831e79("waterfall_vinewall_igc_end");
	level thread namespace_8e9083ff::function_11b424e5(1);
	var_9d50b546 notsolid();
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
	level clientfield::set("clearing_vinewall_open", 1);
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
function function_6c92c263(b_hide)
{
	var_ecf05dd0 = GetEnt("waterfall_vine_path_blocker", "targetname");
	var_9d50b546 = GetEnt("clip_burn_vine_01", "targetname");
	if(b_hide)
	{
		var_ecf05dd0 Hide();
	}
	else
	{
		var_ecf05dd0 show();
		level clientfield::set("clearing_vinewall_init", 1);
		var_9d50b546 solid();
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
function function_4ac14422(a_ents)
{
	var_2e3b8e7e = a_ents["hendricks"];
	var_2e3b8e7e ghost();
	wait(1);
	var_2e3b8e7e clientfield::set("raven_ai_rez", 1);
	wait(0.5);
	var_2e3b8e7e show();
	var_2e3b8e7e waittill("hash_36dcb014");
	var_2e3b8e7e clientfield::set("raven_ai_rez", 0);
	wait(0.5);
	var_2e3b8e7e ghost();
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
function function_75ab0e6a(str_objective, var_7c092e3a)
{
	if(!isdefined(var_7c092e3a))
	{
		var_7c092e3a = 0;
	}
	level endon("hash_c7f297ae");
	s_start_pos = struct::get(str_objective + "_taylor_start", "targetname");
	var_8a1e3703 = 0;
	if(!isdefined(level.var_1c26230b))
	{
		var_8a1e3703 = 1;
		level function_6aede49e(str_objective);
		level.var_1c26230b ForceTeleport(s_start_pos.origin, s_start_pos.angles);
		level.var_1c26230b ai::set_ignoreme(1);
		level.var_1c26230b ai::set_ignoreall(1);
		level.var_1c26230b ghost();
	}
	level.var_1c26230b SetHighDetail(1);
	level.var_1c26230b thread function_aea8cd9b();
	if(var_7c092e3a > 0)
	{
		wait(var_7c092e3a);
	}
	if(isdefined(s_start_pos.target))
	{
		nd_goal = GetNode(s_start_pos.target, "targetname");
		level.var_1c26230b ai::set_behavior_attribute("forceTacticalWalk", 1);
		level.var_1c26230b ai::set_ignoreall(1);
		level.var_1c26230b SetGoal(nd_goal, 1);
	}
	if(var_8a1e3703)
	{
		wait(1);
		level.var_1c26230b clientfield::set("hero_spawn_fx", 1);
		wait(0.5);
		level.var_1c26230b ai::set_ignoreme(0);
		level.var_1c26230b ai::set_ignoreall(0);
		level.var_1c26230b show();
	}
	wait(3);
	level.var_1c26230b SetHighDetail(0);
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
function function_6aede49e(str_objective)
{
	level.var_1c26230b = util::function_740f8516("taylor_hero");
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
	self clientfield::set("hero_spawn_fx", 0);
	wait(0.5);
	self util::unmake_hero("taylor_hero");
	self util::self_delete();
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
	level dialog::remote("dcor_you_know_where_it_al_0", 1, "NO_DNI");
	level dialog::remote("dcor_when_we_trained_we_0", 1, "NO_DNI");
	level dialog::remote("dcor_they_put_a_big_fat_s_0", 1, "NO_DNI");
	level dialog::remote("dcor_how_could_we_know_wh_0", 1, "NO_DNI");
	level flag::set("flag_diaz_first_path_complete_vo_done");
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
	self dialog::say("tayr_the_frozen_forest_wa_0", 1);
	level dialog::remote("hcor_this_isn_t_the_froze_0", 1, "NO_DNI");
	savegame::function_5d2cdd99();
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
function function_1270c207(str_objective, var_74cd64bc)
{
	if(str_objective == "clearing_hub_2" || str_objective == "clearing_hub_3" || var_74cd64bc)
	{
		load::function_73adcefc();
		level thread scene::skipto_end("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
		level clientfield::set("zurich_waterfall_bodies", 1);
		level clientfield::set("clearing_vinewall_init", 5);
		var_4ccf970 = namespace_8e9083ff::function_a00fa665(str_objective);
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
		load::function_a2995f22(0);
		skipto::teleport_players(str_objective, 0);
		level namespace_8e9083ff::function_b0f0dd1f(1, "red_rain");
		Array::thread_all(level.activePlayers, &util::function_df6eb506, 1);
		level thread namespace_8e9083ff::function_11b424e5(1);
		if(!var_74cd64bc)
		{
			wait(1);
			level util::streamer_wait();
			foreach(player in level.players)
			{
				player.dont_show_hud = undefined;
				player util::delay(0.3, undefined, &util::show_hud, 1);
			}
			level thread util::screen_fade_in(2, "black");
		}
		level thread function_75ab0e6a(str_objective, level.var_75ba074a);
		if(str_objective === "clearing_hub_2")
		{
			level thread function_f1073c0f();
		}
		if(str_objective === "clearing_hub_3")
		{
			while(!isdefined(level.var_1c26230b))
			{
				util::wait_network_frame();
			}
			level.var_1c26230b function_65667fec();
		}
	}
	level thread namespace_67110270::function_82e83534();
	level thread function_c998741b(str_objective);
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
function function_44c2b6a(str_objective, var_74cd64bc, var_e4cd2b8b, player)
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
function function_600acf3f(str_objective, var_74cd64bc, var_e4cd2b8b, player)
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
function function_b42e7a80(str_objective, var_74cd64bc, var_e4cd2b8b, player)
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
	level clientfield::set("zurich_waterfall_bodies", 0);
	level clientfield::set("clearing_vinewall_init", 0);
	level clientfield::set("clearing_vinewall_open", 0);
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
function function_c998741b(str_objective)
{
	var_89060212 = GetEntArray("trig_vine_doors", "script_noteworthy");
	Array::run_all(var_89060212, &SetInvisibleToAll);
	switch(str_objective)
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
			level clientfield::set("clearing_hide_lotus_tower", 1);
			var_85e76a39 = 2;
			break;
		}
	}
	var_7edb74a6 = GetEnt("unburnable_vine_" + var_3e0e2df1, "targetname");
	var_9d50b546 = GetEnt("clip_burn_vine_" + var_3e0e2df1, "targetname");
	var_7edb74a6 Hide();
	var_ce37baf2 = GetEnt("trig_vine_damage_" + var_3e0e2df1, "targetname");
	var_ce37baf2 SetVisibleToAll();
	var_ce37baf2.var_afacae68 = 0;
	var_ce37baf2 function_860aaa8a(var_9d50b546);
	Array::thread_all(level.activePlayers, &util::freeze_player_controls, 1);
	level clientfield::set("clearing_vinewall_open", var_85e76a39);
	wait(0.5);
	Array::thread_all(level.players, &clientfield::increment_to_player, "postfx_transition");
	playsoundatposition("evt_clearing_trans_out", (0, 0, 0));
	wait(1);
	level util::screen_fade_out(1, "black");
	foreach(player in level.players)
	{
		player util::show_hud(0);
	}
	switch(str_objective)
	{
		case "clearing_hub":
		{
			level scene::init("cin_zur_12_01_root_1st_mirror_01");
			break;
		}
		case "clearing_hub_2":
		{
			level scene::init("cin_zur_14_01_cairo_root_1st_fall");
			break;
		}
		case "clearing_hub_3":
		{
			util::function_d8eaed3d(8);
			break;
		}
	}
	level util::streamer_wait();
	Array::thread_all(level.activePlayers, &util::freeze_player_controls, 0);
	level thread namespace_8e9083ff::function_11b424e5(0);
	level notify("hash_c7f297ae");
	skipto::function_be8adfb8(str_objective);
	var_7edb74a6 show();
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

