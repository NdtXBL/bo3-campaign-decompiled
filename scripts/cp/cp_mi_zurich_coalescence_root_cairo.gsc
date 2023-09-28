#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_root_cinematics;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_raps;

#namespace namespace_73dbe018;

/*
	Name: main
	Namespace: namespace_73dbe018
	Checksum: 0xCCBC83BB
	Offset: 0xC40
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function main()
{
	init_clientfields();
	level flag::init("vtol_dropped_wall");
	level._effect["lightning_strike"] = "explosions/fx_exp_lightning_fold_infection";
	level._effect["explosion_medium"] = "explosions/fx_exp_debris_metal_md";
	level._effect["explosion_large"] = "explosions/fx_exp_sky_bridge_lotus";
	level thread function_54b0174d();
	scene::add_scene_func("p7_fxanim_cp_zurich_wall_drop_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "cairo_root_completed");
	scene::add_scene_func("p7_fxanim_cp_zurich_checkpoint_wall_01_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "cairo_root_completed");
}

/*
	Name: init_clientfields
	Namespace: namespace_73dbe018
	Checksum: 0xD1BD5463
	Offset: 0xD58
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("scriptmover", "vtol_spawn_fx", 1, 1, "counter");
	clientfield::register("world", "cairo_client_ents", 1, 1, "int");
}

/*
	Name: function_9c1fc2fd
	Namespace: namespace_73dbe018
	Checksum: 0x6B7E9AA0
	Offset: 0xDC8
	Size: 0x2B3
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	if(var_74cd64bc)
	{
		level util::screen_fade_out(0);
		level flag::set("flag_diaz_first_path_complete_vo_done");
	}
	function_acdfe1fe("cp_zurich_env_corvusmonitor", 1);
	level scene::init("cin_zur_14_01_cairo_root_1st_fall");
	level thread namespace_67110270::function_973b77f9();
	exploder::exploder("weather_lightning_exp");
	var_4ccf970 = namespace_8e9083ff::function_a00fa665(str_objective);
	namespace_8e9083ff::function_4d032f25(1, 0.5);
	spawner::add_spawn_function_group("raven_ambush_ai", "script_parameters", &namespace_8e9083ff::function_aceff870);
	spawner::add_spawn_function_group("raven_spawn_teleport", "script_parameters", &namespace_8e9083ff::function_3287bea1);
	level thread namespace_67110270::function_1935b4aa();
	level thread function_42dddb91(str_objective);
	level clientfield::set("cairo_client_ents", 1);
	level thread function_4cca3b70();
	level thread function_6559d2b2();
	load::function_a2995f22();
	skipto::teleport_players(str_objective, 0);
	level thread namespace_8e9083ff::function_a03f30f2(str_objective, "root_cairo_vortex", "root_cairo_regroup");
	level thread namespace_8e9083ff::function_dd842585(str_objective, "root_cairo_vortex", "t_root_cairo_vortex");
	level thread function_962eebf2(str_objective);
	level waittill(str_objective + "enter_vortex");
	level thread function_95b88092("root_cairo_vortex", 0);
}

/*
	Name: function_95b88092
	Namespace: namespace_73dbe018
	Checksum: 0x3D241068
	Offset: 0x1088
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_95b88092(str_objective, var_74cd64bc)
{
	if(isdefined(var_74cd64bc) && var_74cd64bc)
	{
		load::function_73adcefc();
		load::function_a2995f22();
		skipto::teleport_players(str_objective, 0);
		namespace_8e9083ff::function_4d032f25(1, 0.5);
		level thread namespace_8e9083ff::function_c90e23b6(str_objective);
	}
	if(isdefined(level.BZM_ZURICHDialogue13Callback))
	{
		level thread [[level.BZM_ZURICHDialogue13Callback]]();
	}
	level thread scene::init("cairo_fxanim_heart_ceiling", "targetname");
	exploder::exploder("heartLightsCairo");
	level thread namespace_67110270::function_973b77f9();
	level thread function_2dbeaba5();
	level thread function_c3dca267();
	level util::clientNotify("stCAMU");
	if(level.players === 1)
	{
		savegame::function_5d2cdd99();
	}
	var_8fb0849a = namespace_8e9083ff::function_a1851f86(str_objective);
	var_8fb0849a waittill("brn");
	level thread namespace_bbb4ee72::play_scene(str_objective, var_8fb0849a.var_90971f20.e_player);
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	level notify("hash_ef6331cc");
	function_4a0fb95e("cp_zurich_env_corvusmonitor");
	exploder::stop_exploder("weather_lightning_exp");
	level util::clientNotify("stp_mus");
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_73dbe018
	Checksum: 0xF2360735
	Offset: 0x12E8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level notify("hash_83eebac0");
	level thread namespace_8e9083ff::function_4a00a473("root_cairo");
	exploder::stop_exploder("weather_lightning_exp");
	level clientfield::set("cairo_client_ents", 0);
}

/*
	Name: function_7cdb6ab4
	Namespace: namespace_73dbe018
	Checksum: 0xAB5E755B
	Offset: 0x1378
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_7cdb6ab4()
{
	level endon("hash_1f265efe");
	level flag::wait_till("flag_cairo_root_monologue_01");
	level dialog::function_13b3b16a("plyr_listen_only_to_the_s_0", 3);
	level dialog::function_13b3b16a("plyr_let_your_mind_relax_0", 3);
	level dialog::function_13b3b16a("plyr_let_your_thoughts_dr_0", 3);
	level dialog::function_13b3b16a("plyr_let_the_bad_memories_0", 3);
	level dialog::function_13b3b16a("plyr_let_peace_be_upon_yo_0", 3);
	level flag::wait_till("flag_cairo_root_monologue_02");
	level dialog::function_13b3b16a("plyr_surrender_yourself_t_0", 3);
	level dialog::function_13b3b16a("plyr_let_them_wash_over_y_0", 3);
	level dialog::function_13b3b16a("plyr_imagine_somewhere_ca_0", 3);
	level dialog::function_13b3b16a("plyr_imagine_somewhere_sa_0", 3);
	level dialog::function_13b3b16a("plyr_imagine_yourself_0", 3);
	level flag::wait_till("flag_cairo_root_monologue_03");
	level dialog::function_13b3b16a("plyr_you_are_standing_in_0", 3);
	level dialog::function_13b3b16a("plyr_the_trees_around_you_0", 3);
	level dialog::function_13b3b16a("plyr_pure_white_snowflake_0", 3);
	level dialog::function_13b3b16a("plyr_you_can_feel_them_me_0", 3);
	level dialog::function_13b3b16a("plyr_you_are_not_cold_0", 3);
	level dialog::function_13b3b16a("plyr_it_cannot_overcome_t_0", 3);
	level flag::wait_till("flag_cairo_root_monologue_04");
	level dialog::function_13b3b16a("plyr_can_you_hear_it_0", 3);
	level dialog::function_13b3b16a("plyr_you_only_have_to_lis_0", 3);
	level dialog::function_13b3b16a("plyr_do_you_hear_it_slowi_0", 3);
	level dialog::function_13b3b16a("plyr_you_are_slowing_it_0", 3);
	level dialog::function_13b3b16a("plyr_you_are_in_control_0", 3);
	level dialog::function_13b3b16a("plyr_calm_0", 3);
	level dialog::function_13b3b16a("plyr_at_peace_0", 3);
	level flag::set("flag_cairo_root_monologue_04_done");
}

/*
	Name: function_2dbeaba5
	Namespace: namespace_73dbe018
	Checksum: 0x8C7C86D8
	Offset: 0x1710
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_2dbeaba5()
{
	level endon("hash_1f265efe");
	level flag::wait_till("flag_cairo_root_monologue_04_done");
	level dialog::remote("salm_the_nature_of_memory_0", 4, "NO_DNI");
	level dialog::remote("salm_over_the_last_centur_0", 1, "NO_DNI");
}

/*
	Name: function_d3f1996d
	Namespace: namespace_73dbe018
	Checksum: 0xF01820D1
	Offset: 0x17A8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_d3f1996d(str_objective)
{
	level endon(str_objective + "enter_vortex");
	level flag::wait_till("flag_diaz_first_path_complete_vo_done");
	wait(3);
	level notify("hash_d3c69346");
	level.var_1c26230b dialog::say("tayr_diaz_and_maretti_i_0", 1);
	level.var_1c26230b dialog::say("tayr_they_were_trying_to_0", 1);
	level.var_1c26230b dialog::say("tayr_it_couldn_t_control_1", 1);
	wait(5);
	level thread function_7cdb6ab4();
	level flag::wait_till("flag_taylor_vo_never_give_up");
	level.var_1c26230b dialog::say("tayr_don_t_give_up_be_0", 1);
}

/*
	Name: function_962eebf2
	Namespace: namespace_73dbe018
	Checksum: 0x81BCA60
	Offset: 0x18D8
	Size: 0x203
	Parameters: 1
	Flags: None
*/
function function_962eebf2(str_objective)
{
	Array::run_all(level.players, &FreezeControls, 1);
	Array::run_all(level.players, &EnableInvulnerability);
	level scene::init("cin_zur_14_01_cairo_root_1st_fall");
	level util::streamer_wait();
	level thread util::screen_fade_in(1);
	Array::thread_all(level.players, &clientfield::increment_to_player, "postfx_transition");
	playsoundatposition("evt_clearing_trans_in", (0, 0, 0));
	if(isdefined(level.BZM_ZURICHDialogue15Callback))
	{
		level thread [[level.BZM_ZURICHDialogue15Callback]]();
	}
	level scene::Play("cin_zur_14_01_cairo_root_1st_fall");
	level util::function_93831e79("root_cairo_intro_end");
	Array::run_all(level.players, &FreezeControls, 0);
	Array::run_all(level.players, &DisableInvulnerability);
	util::clear_streamer_hint();
	savegame::function_5d2cdd99();
	level thread namespace_8e9083ff::function_c90e23b6(str_objective, "breadcrumb_cairoroot_3");
	level thread function_d3f1996d(str_objective);
}

/*
	Name: function_4cca3b70
	Namespace: namespace_73dbe018
	Checksum: 0x4819D692
	Offset: 0x1AE8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_4cca3b70()
{
	scene::add_scene_func("p7_fxanim_cp_zurich_wall_drop_bundle", &function_fe87d3eb, "done");
	scene::add_scene_func("p7_fxanim_cp_zurich_wall_drop_bundle", &function_e3c9dd29, "play");
	level thread function_ef1ee0c7();
	var_15ecae1 = GetEnt("trigger_vtol_arrival", "targetname");
	var_15ecae1 waittill("trigger");
	level thread scene::Play("p7_fxanim_cp_zurich_wall_drop_bundle");
	level waittill("hash_883eae52");
	wait(3);
	level notify("hash_4dbdcce4");
	level flag::wait_till("flag_cairo_start_wall_spawn");
	spawn_manager::enable("sm_vtol_wall");
	savegame::function_5d2cdd99();
}

/*
	Name: function_fe87d3eb
	Namespace: namespace_73dbe018
	Checksum: 0xF6E8021
	Offset: 0x1C28
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_fe87d3eb(a_ents)
{
	level flag::wait_till("vtol_dropped_wall");
	var_58ee3480 = GetEnt("wall_drop_doors", "targetname");
	if(!isdefined(var_58ee3480))
	{
		return;
	}
	level scene::Play("p7_fxanim_cp_ramses_wall_drop_doors_up_bundle", var_58ee3480);
	spawn_manager::enable("sm_doors_open");
}

/*
	Name: function_ef1ee0c7
	Namespace: namespace_73dbe018
	Checksum: 0x39716ED9
	Offset: 0x1CD0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_ef1ee0c7()
{
	var_abef87dc = GetEnt("open_wall_doors", "script_noteworthy");
	var_abef87dc waittill("trigger");
	level flag::set("vtol_dropped_wall");
}

/*
	Name: function_e3c9dd29
	Namespace: namespace_73dbe018
	Checksum: 0x90A0E4E9
	Offset: 0x1D38
	Size: 0x105
	Parameters: 1
	Flags: None
*/
function function_e3c9dd29(a_ents)
{
	var_2ef9d306 = a_ents["wall_drop_vtol"];
	e_wall = a_ents["wall_drop_wall"];
	var_24a1012d = struct::get_array("vtol_scene_spawn_fx", "targetname");
	for(i = 0; i < var_24a1012d.size; i++)
	{
		var_9508eea7 = util::spawn_model("tag_origin", var_24a1012d[i].origin, (0, 0, 0));
		util::wait_network_frame();
		var_9508eea7 thread function_899f9f96();
	}
}

/*
	Name: function_899f9f96
	Namespace: namespace_73dbe018
	Checksum: 0xE60F6F49
	Offset: 0x1E48
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_899f9f96()
{
	self clientfield::increment("vtol_spawn_fx");
	wait(3);
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: function_6559d2b2
	Namespace: namespace_73dbe018
	Checksum: 0x859035FA
	Offset: 0x1E98
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_6559d2b2()
{
	scene::add_scene_func("p7_fxanim_cp_zurich_checkpoint_wall_01_bundle", &function_c5b12ba9, "init");
	scene::add_scene_func("p7_fxanim_cp_zurich_checkpoint_wall_01_bundle", &function_73238a8, "play");
	trigger::wait_till("trig_cairo_arena_start", "script_noteworthy");
	spawn_manager::enable("sm_cairo_wall_02");
	spawn_manager::enable("sm_cairo_ambush");
	level thread function_8c7755d2();
	level thread function_46b4203d();
	level flag::wait_till("flag_cairo_arena_complete");
	level thread scene::Play("p7_fxanim_cp_zurich_checkpoint_wall_01_bundle");
	spawn_manager::disable("sm_cairo_ambush");
}

/*
	Name: function_8c7755d2
	Namespace: namespace_73dbe018
	Checksum: 0xF10859CF
	Offset: 0x1FE0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8c7755d2()
{
	level endon("hash_fc5ed004");
	wait(60);
	level flag::set("flag_cairo_arena_complete");
}

/*
	Name: function_46b4203d
	Namespace: namespace_73dbe018
	Checksum: 0x96A10702
	Offset: 0x2020
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_46b4203d()
{
	level endon("hash_fc5ed004");
	spawn_manager::function_27bf2e8("sm_cairo_wall_02", 2);
	level flag::set("flag_cairo_arena_complete");
}

/*
	Name: function_c5b12ba9
	Namespace: namespace_73dbe018
	Checksum: 0x1A2E348A
	Offset: 0x2078
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_c5b12ba9(a_ents)
{
	foreach(e_ent in a_ents)
	{
		e_ent Hide();
	}
}

/*
	Name: function_73238a8
	Namespace: namespace_73dbe018
	Checksum: 0xD4E58A12
	Offset: 0x2118
	Size: 0x1C3
	Parameters: 1
	Flags: None
*/
function function_73238a8(a_ents)
{
	var_7be3ca60 = GetEntArray("root_cairo_arena_doors", "targetname");
	foreach(e_ent in a_ents)
	{
		e_ent show();
	}
	foreach(var_adad709 in var_7be3ca60)
	{
		var_adad709 delete();
	}
	e_clip = GetEnt("root_cairo_arena_clip", "targetname");
	if(isdefined(e_clip))
	{
		e_clip notsolid();
		e_clip connectpaths();
		e_clip delete();
	}
}

/*
	Name: function_54b0174d
	Namespace: namespace_73dbe018
	Checksum: 0xBB8740DF
	Offset: 0x22E8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_54b0174d()
{
	var_35a225f3 = GetEnt("lotus_tower_sink", "targetname");
	if(isdefined(var_35a225f3))
	{
		var_35a225f3 SetScale(0.4);
		var_35a225f3 Hide();
		level flag::wait_till("root_cairo_start");
		var_35a225f3 show();
		var_35a225f3 thread function_1a9fae41();
	}
}

/*
	Name: function_1a9fae41
	Namespace: namespace_73dbe018
	Checksum: 0x48B5656F
	Offset: 0x23B0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_1a9fae41()
{
	var_70cf920f = GetEnt("t_lotus_sink", "script_noteworthy");
	var_70cf920f waittill("trigger");
	s_start = self;
	playFX(level._effect["explosion_large"], self.origin);
	s_next = struct::get(self.target, "targetname");
	while(isdefined(s_next))
	{
		n_distance = Distance(s_start.origin, s_next.origin);
		n_time = n_distance / 20;
		self moveto(s_next.origin, n_time);
		self RotateTo(s_next.angles, n_time);
		self waittill("movedone");
		s_start = s_next;
		s_next = undefined;
		if(isdefined(s_start.target))
		{
			s_next = struct::get(s_start.target, "targetname");
		}
	}
}

/*
	Name: function_42dddb91
	Namespace: namespace_73dbe018
	Checksum: 0x9B96087E
	Offset: 0x2570
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_42dddb91(str_objective)
{
	level endon(str_objective + "_done");
	level endon("hash_83eebac0");
	objectives::breadcrumb("t_breadcrumb_cairoroot_1");
	trigger::wait_till("t_breadcrumb_cairoroot_1");
	level notify("hash_431e9a83");
	savegame::function_5d2cdd99();
	objectives::breadcrumb("t_breadcrumb_cairoroot_2");
	trigger::wait_till("t_breadcrumb_cairoroot_2");
	level notify("hash_431e9a83");
	savegame::function_5d2cdd99();
	objectives::breadcrumb("t_breadcrumb_cairoroot_3");
}

/*
	Name: function_c3dca267
	Namespace: namespace_73dbe018
	Checksum: 0x691A8CDD
	Offset: 0x2658
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_c3dca267()
{
	var_765ae49e = GetEntArray("cairo_vortex_spawn", "targetname");
	Array::thread_all(var_765ae49e, &function_24c08a2f);
}

/*
	Name: function_24c08a2f
	Namespace: namespace_73dbe018
	Checksum: 0x8018EE36
	Offset: 0x26B8
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_24c08a2f()
{
	self waittill("trigger");
	var_66b68fff = GetEntArray(self.target, "targetname");
	self delete();
	for(i = 0; i < var_66b68fff.size; i++)
	{
		var_3e32f05a = spawner::simple_spawn_single(var_66b68fff[i], &namespace_8e9083ff::function_c412aad5);
		if(isdefined(var_66b68fff[i].script_noteworthy))
		{
			var_3e32f05a.animName = var_66b68fff[i].script_noteworthy;
			var_3e32f05a vehicle_ai::set_state("scripted");
			var_3e32f05a SetSpeed(20);
			var_3e32f05a thread function_54c51e5b();
			var_3e32f05a thread function_20541efa();
		}
	}
}

/*
	Name: function_54c51e5b
	Namespace: namespace_73dbe018
	Checksum: 0x5FA3CE75
	Offset: 0x2810
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_54c51e5b()
{
	self endon("death");
	nd_start = GetVehicleNode(self.script_noteworthy + "_start", "targetname");
	self thread vehicle::get_on_and_go_path(nd_start);
	self waittill("reached_end_node");
	self raps::detonate();
}

/*
	Name: function_20541efa
	Namespace: namespace_73dbe018
	Checksum: 0x418CAFE8
	Offset: 0x28A0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_20541efa()
{
	self endon("death");
	while(1)
	{
		e_player = ArrayGetClosest(self.origin, level.activePlayers);
		if(Distance(self.origin, e_player.origin) <= 600)
		{
			self vehicle_ai::set_state("combat");
			return;
		}
		wait(0.1);
	}
}

