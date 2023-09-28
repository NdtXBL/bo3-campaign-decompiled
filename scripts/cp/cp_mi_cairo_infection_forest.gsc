#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_forest_surreal;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\cp\gametypes\_battlechatter;
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
#using scripts\shared\hud_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace forest;

/*
	Name: __init__sytem__
	Namespace: forest
	Checksum: 0x6F22F577
	Offset: 0x1328
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("infection_forest", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: forest
	Checksum: 0xD52EEE9A
	Offset: 0x1368
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.var_990970fb = "cin_inf_06_02_bastogne_vign_intro";
	level.var_81285d39 = "cin_inf_06_02_bastogne_vign_sarahintro";
	level.var_d29b7e91 = "cin_inf_06_02_bastogne_vign_playerintro";
	function_49eb92b9();
}

/*
	Name: init_client_field_callback_funcs
	Namespace: forest
	Checksum: 0xF257A8A7
	Offset: 0x13B8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	clientfield::register("world", "forest_mortar_index", 1, 3, "int");
	clientfield::register("world", "forest_surreal_exposure", 1, 1, "int");
	clientfield::register("toplayer", "pstfx_frost_up", 1, 1, "counter");
	clientfield::register("toplayer", "pstfx_frost_down", 1, 1, "counter");
	clientfield::register("scriptmover", "wfa_steam_sound", 1, 1, "counter");
	clientfield::register("scriptmover", "cp_infection_world_falls_break_rumble", 1, 1, "counter");
	clientfield::register("scriptmover", "cp_infection_world_falls_away_rumble", 1, 1, "counter");
}

/*
	Name: function_e8608118
	Namespace: forest
	Checksum: 0x1EAC346F
	Offset: 0x1518
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_e8608118()
{
	spawner_setup();
	level thread scene::init(level.var_990970fb);
	level thread scene::init(level.var_81285d39);
	level thread scene::init(level.var_d29b7e91);
}

/*
	Name: intro_main
	Namespace: forest
	Checksum: 0xC7E8251E
	Offset: 0x1598
	Size: 0x1B3
	Parameters: 2
	Flags: None
*/
function intro_main(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		spawner_setup();
		level thread scene::init(level.var_990970fb);
		level thread scene::init(level.var_81285d39);
		level thread scene::init(level.var_d29b7e91);
		level util::function_d8eaed3d(12);
		load::function_a2995f22();
		exploder::exploder("sgen_server_room_fall");
	}
	level thread function_9346c4d4();
	namespace_36cbf523::function_1cdb9014();
	if(-1)
	{
		level thread function_5f026a1d();
	}
	level thread function_c064d28b();
	battlechatter::function_d9f49fba(0);
	level thread function_8d291f3b();
	function_6527f47d();
	if(var_74cd64bc)
	{
		level thread util::clear_streamer_hint();
	}
	level thread skipto::function_be8adfb8(str_objective);
}

/*
	Name: intro_cleanup
	Namespace: forest
	Checksum: 0x3517C89E
	Offset: 0x1758
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function intro_cleanup(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_a683b99a
	Namespace: forest
	Checksum: 0xD3F7026D
	Offset: 0x1788
	Size: 0x503
	Parameters: 2
	Flags: None
*/
function function_a683b99a(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		spawner_setup();
		level.var_990970fb = "cin_inf_06_02_bastogne_vign_intro";
		level scene::init(level.var_990970fb);
		level scene::init("p7_fxanim_cp_infection_sgen_floor_debris_bundle");
		load::function_a2995f22();
		if(-1)
		{
			level thread function_9901d769();
		}
		level thread function_6c690b17();
		namespace_36cbf523::function_1cdb9014();
		level thread scene::skipto_end(level.var_990970fb);
		level thread scene::skipto_end("p7_fxanim_cp_infection_sgen_floor_debris_bundle");
		level thread namespace_bed101ee::function_245384ac();
	}
	collectibles::add_collectible_params("p7_nc_cai_inf_02", 250, (-20, -15, 0));
	collectibles::function_37aecd21();
	objectives::set("cp_level_infection_follow_sarah");
	namespace_f25bd8c8::function_15b29a5a();
	namespace_f25bd8c8::function_c081e535();
	battlechatter::function_d9f49fba(1);
	if(isdefined(0) && 0)
	{
		num_players = GetPlayers().size;
		if(num_players == 1)
		{
			level.var_4aa3708c = 1;
		}
	}
	level thread namespace_36cbf523::function_3fe1f72("t_sarah_bastogne_objective_", 0, &namespace_47c46a7d::function_32a538b9);
	level thread function_80ec016e();
	level thread function_eba8cedd();
	level thread function_14c76b8f();
	level thread function_5656b048();
	level thread function_a5529de2();
	level thread function_c60eab85();
	level thread function_b19769e8();
	level thread function_42caf3d5();
	level thread function_d03371f7();
	level thread function_2c145384("t_2nd_hill_rienforcements", "sp_2nd_hill_reinforcements", "sm_2nd_hill_reinforcements");
	level thread function_2c145384("t_2nd_hill_rienforcements", "sp_2nd_hill_reinforcements_mg_side", "sm_2nd_hill_reinforcements_mg_side");
	level thread function_cc4e1226();
	level thread function_b3e5e4b5();
	level thread function_8d291f3b();
	level thread function_e44e0c61();
	level thread function_6f3844fd();
	level thread function_d165773d();
	level thread function_dfa07cd7("t_mg_turret_1", "bastogne_turret_1", 0, "s_turret_kill", "fx_expl_mg_bullet_impacts01");
	level thread function_dfa07cd7("t_mg_turret_1", "bastogne_turret_2", 0, "s_turret_kill_2", undefined);
	level thread function_247f1864();
	level thread function_afb42159();
	trigger::wait_till("bastogne_complete");
	level notify("hash_92cdd020");
	level.var_4aa3708c = undefined;
	function_82ddc1bc();
	namespace_36cbf523::function_aa0ddbc3(0);
	level thread skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_80ec016e
	Namespace: forest
	Checksum: 0x2A055BBC
	Offset: 0x1C98
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_80ec016e()
{
	var_3c8b682 = GetEnt("t_sarah_bastogne_objective_0", "targetname");
	wait(2);
	if(isdefined(var_3c8b682))
	{
		trigger::use("t_sarah_bastogne_objective_0", "targetname");
	}
}

/*
	Name: CleanUp
	Namespace: forest
	Checksum: 0x9170C349
	Offset: 0x1D08
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function CleanUp(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_f25bd8c8::function_a0f567cb();
	function_9e3608e3("hide_me_from_wolves");
	var_3edb0ecc = GetEntArray("bastogne_world_falls_away", "script_noteworthy");
	level thread Array::run_all(var_3edb0ecc, &show);
}

/*
	Name: function_82ddc1bc
	Namespace: forest
	Checksum: 0x1F54AC44
	Offset: 0x1DB8
	Size: 0x1D9
	Parameters: 0
	Flags: None
*/
function function_82ddc1bc()
{
	var_de34b497 = [];
	a_ai = GetAITeamArray("axis");
	if(isdefined(a_ai))
	{
		var_1152223f = namespace_36cbf523::function_9e5ed1ac(a_ai);
		for(i = 0; i < var_1152223f.size; i++)
		{
			e_ent = var_1152223f[i];
			if(i + 7 >= var_1152223f.size)
			{
				var_de34b497[var_de34b497.size] = e_ent;
				continue;
			}
			e_ent namespace_36cbf523::function_e66c8377();
		}
	}
	for(i = 0; i < var_de34b497.size; i++)
	{
		e_ent = var_de34b497[i];
		e_ent thread function_963f4e85();
	}
	colors::kill_color_replacements();
	a_ai = GetAITeamArray("allies");
	if(isdefined(a_ai))
	{
		for(i = 0; i < a_ai.size; i++)
		{
			if(!a_ai[i] util::is_hero())
			{
				a_ai[i] thread namespace_36cbf523::function_5e78ab8c();
			}
		}
	}
	level notify("hash_49c1fc58");
}

/*
	Name: function_963f4e85
	Namespace: forest
	Checksum: 0x4C7D6821
	Offset: 0x1FA0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_963f4e85()
{
	self endon("death");
	wait(60);
	self namespace_36cbf523::function_e66c8377();
}

/*
	Name: function_20456e21
	Namespace: forest
	Checksum: 0x9F76A03
	Offset: 0x1FD8
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_20456e21(str_trigger, var_7ae256a)
{
	self thread function_cfcac97e(str_trigger, var_7ae256a);
}

/*
	Name: function_cfcac97e
	Namespace: forest
	Checksum: 0x1A14AEF7
	Offset: 0x2018
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_cfcac97e(str_trigger, var_7ae256a)
{
	trigger::wait_till(str_trigger);
	namespace_36cbf523::function_c8d7e76(var_7ae256a);
}

/*
	Name: function_49eb92b9
	Namespace: forest
	Checksum: 0xA7674CE5
	Offset: 0x2068
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_49eb92b9()
{
	scene::add_scene_func(level.var_990970fb, &namespace_36cbf523::function_9f64d290, "play", 0);
	scene::add_scene_func(level.var_990970fb, &function_ae9a24ef, "play");
	scene::add_scene_func(level.var_990970fb, &namespace_36cbf523::function_9f64d290, "done", 1);
	scene::add_scene_func(level.var_81285d39, &namespace_36cbf523::function_9f64d290, "play", 0);
	scene::add_scene_func(level.var_81285d39, &namespace_36cbf523::function_9f64d290, "done", 1);
	scene::add_scene_func(level.var_81285d39, &function_a634a43, "play");
	scene::add_scene_func(level.var_81285d39, &function_1527ec64, "done");
	scene::add_scene_func(level.var_81285d39, &namespace_36cbf523::function_23e59afd, "play");
	scene::add_scene_func(level.var_81285d39, &namespace_36cbf523::function_e2eba6da, "done");
	scene::add_scene_func(level.var_81285d39, &function_e9f0e4b1, "play");
	scene::add_scene_func(level.var_81285d39, &function_54e62fbb, "done");
	scene::add_scene_func(level.var_d29b7e91, &function_7d84ce4b, "play");
	scene::add_scene_func(level.var_d29b7e91, &function_44af09ad, "done");
}

/*
	Name: spawner_setup
	Namespace: forest
	Checksum: 0x85A581C1
	Offset: 0x22F8
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function spawner_setup()
{
	namespace_36cbf523::function_aa0ddbc3(1);
	spawner::add_spawn_function_group("bastogne_friendly_guys", "script_noteworthy", &function_8b13f33c);
	spawner::add_spawn_function_group("bastogne_tiger_tank_1_guys", "script_noteworthy", &namespace_36cbf523::function_b86426b1);
	spawner::add_spawn_function_group("sm_bastogne_reinforcements", "script_noteworthy", &namespace_36cbf523::function_b86426b1);
	spawner::add_spawn_function_group("sp_bastogne_battle_start", "targetname", &function_d307bf85);
	spawner::add_spawn_function_group("sp_bastogne_reinforcements_left_guys", "targetname", &function_d307bf85);
	spawner::add_spawn_function_group("sp_bastogne_reinforcements_right_guys", "targetname", &function_d307bf85);
	spawner::add_spawn_function_group("sp_bastogne_reinforcements", "targetname", &function_d307bf85);
	spawner::add_spawn_function_group("sp_bastogne_reinforcements_2", "targetname", &function_d307bf85);
	spawner::add_spawn_function_group("sp_bastogne_final_guys", "targetname", &function_d307bf85);
	spawner::add_spawn_function_group("sp_wakamole_start", "targetname", &function_8e9f617f, 64, 0);
	spawner::add_spawn_function_group("sp_bastogne_ww2_mg_wakamole", "targetname", &function_8e9f617f, 64, 0);
	spawner::add_spawn_function_group("sp_bastogne_hill_running_group", "targetname", &function_8e9f617f, 512, 0);
	spawner::add_spawn_function_group("sp_bastogne_right_side_runners", "targetname", &function_8e9f617f, 512, 0);
	spawner::add_spawn_function_group("sp_bastogne_right_side_wave2", "targetname", &function_8e9f617f, 512, 0);
	spawner::add_spawn_function_group("sp_bastogne_high_ground_rpg", "targetname", &function_8e9f617f, 64, 1);
	spawner::add_spawn_function_group("sp_left_side_rocks_fallback", "targetname", &function_8e9f617f, 512, 0);
	namespace_36cbf523::function_c8d7e76("bastogne_reverse_anim");
	function_20456e21("init_bastogne_reverse_anims_2", "bastogne_reverse_anim_2");
}

/*
	Name: function_eba8cedd
	Namespace: forest
	Checksum: 0xB41AE04A
	Offset: 0x2690
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_eba8cedd()
{
	var_f8447754 = "sm_bastogne_battle_start";
	spawn_manager::enable(var_f8447754);
	e_trigger = GetEnt("t_bastogne_battle_startup", "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger waittill("trigger");
	}
	if(spawn_manager::is_enabled(var_f8447754))
	{
		spawn_manager::disable(var_f8447754);
	}
}

/*
	Name: function_6527f47d
	Namespace: forest
	Checksum: 0xA6304C87
	Offset: 0x2740
	Size: 0x171
	Parameters: 0
	Flags: None
*/
function function_6527f47d()
{
	level notify("hash_1f663a67");
	level thread function_c7c2668();
	Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
	if(isdefined(level.BZM_INFECTIONDialogue7Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue7Callback]]();
	}
	level thread scene::Play(level.var_990970fb);
	level thread scene::Play(level.var_d29b7e91);
	level waittill("hash_d885008c");
	level scene::Play(level.var_81285d39);
	level thread function_88bd9811();
	trigger::use("bastogne_intro_reverse_anims_start", "targetname", undefined, 0);
	namespace_36cbf523::function_3ea445de();
	util::wait_network_frame();
	namespace_36cbf523::function_1cdb9014();
	Array::thread_all(level.players, &namespace_36cbf523::function_e905c73c);
	level notify("hash_784610e5");
}

/*
	Name: function_88bd9811
	Namespace: forest
	Checksum: 0xDD4B294D
	Offset: 0x28C0
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_88bd9811()
{
	start_time = GetTime();
	var_136cddb7 = 0;
	intro_guys = 0;
	while(1)
	{
		time = GetTime();
		DT = time - start_time / 1000;
		if(DT > 0.5)
		{
			if(!var_136cddb7)
			{
				/#
					IPrintLnBold("Dev Block strings are not supported");
				#/
				var_136cddb7 = 1;
				a_spawners = GetEntArray("sp_sarah_intro_attacker", "targetname");
				for(i = 0; i < a_spawners.size; i++)
				{
					spawner::simple_spawn_single(a_spawners[i]);
					util::wait_network_frame();
				}
			}
		}
		else if(DT > 1)
		{
			if(!intro_guys)
			{
				level thread scene::Play("bastogne_reverse_anim_intro_1");
				intro_guys = 1;
			}
		}
		if(DT >= 4)
		{
			return;
		}
		wait(0.05);
	}
}

/*
	Name: function_e9f0e4b1
	Namespace: forest
	Checksum: 0x4A1CC7F4
	Offset: 0x2A58
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_e9f0e4b1(a_ents)
{
	a_ents["sarah"] thread namespace_36cbf523::function_9110a277(1);
	level thread util::screen_fade_in(1, "white");
	a_ents["sarah"] waittill("hash_74fab6ea");
	a_ents["sarah"] thread namespace_36cbf523::function_9110a277(0);
	a_ents["sarah"] waittill("hash_57d5c381");
	a_ents["sarah"] SetIgnorePauseWorld(1);
	level notify("hash_8290505");
	a_ents["sarah"] waittill("hash_21d2f3");
	level notify("hash_b5daeaaf");
}

/*
	Name: function_54e62fbb
	Namespace: forest
	Checksum: 0xEB992041
	Offset: 0x2B68
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_54e62fbb(a_ents)
{
}

/*
	Name: function_7d84ce4b
	Namespace: forest
	Checksum: 0x97F21F97
	Offset: 0x2B80
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_7d84ce4b(a_ents)
{
	foreach(player in level.players)
	{
	}
	level waittill("hash_b18bf2cb");
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("cp_infection_floor_break");
		player shellshock("default", 2.5);
	}
	exploder::stop_exploder("sgen_server_room_fall");
	level thread function_1e925d59();
}

/*
	Name: function_44af09ad
	Namespace: forest
	Checksum: 0xB834D5C3
	Offset: 0x2CF0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_44af09ad(a_ents)
{
	level thread namespace_36cbf523::function_efa09886();
}

/*
	Name: function_1e925d59
	Namespace: forest
	Checksum: 0x54BA3DC6
	Offset: 0x2D20
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_1e925d59(a_ents)
{
	wait(6.35);
	level thread scene::Play("p7_fxanim_cp_infection_sgen_floor_debris_bundle");
}

/*
	Name: function_b3e5e4b5
	Namespace: forest
	Checksum: 0xA3A9A318
	Offset: 0x2D60
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_b3e5e4b5()
{
	level thread function_61f7878c();
	function_f47ebfe9("info_bastogne_fallback_1");
	level notify("hash_8bede1bc");
	e_volume = GetEnt("t_bastogne_fallback_1_volume", "targetname");
	a_ai = GetAITeamArray("axis");
	for(i = 0; i < a_ai.size; i++)
	{
		a_ai[i] thread function_70228179(e_volume);
	}
	a_players = GetPlayers();
	if(a_players.size > 1)
	{
		return;
	}
	function_f47ebfe9("info_bastogne_fallback_2");
	e_volume = GetEnt("t_bastogne_fallback_2_volume", "targetname");
	a_ai = GetAITeamArray("axis");
	for(i = 0; i < a_ai.size; i++)
	{
		a_ai[i] thread function_70228179(e_volume);
	}
	if(spawn_manager::is_enabled("sm_bastogne_reinforcements_left"))
	{
		spawn_manager::disable("sm_bastogne_reinforcements_left");
	}
	if(spawn_manager::is_enabled("sm_bastogne_reinforcements_right"))
	{
		spawn_manager::disable("sm_bastogne_reinforcements_right");
	}
}

/*
	Name: function_f47ebfe9
	Namespace: forest
	Checksum: 0xAFD9203A
	Offset: 0x2F88
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_f47ebfe9(var_e0525846)
{
	if(isdefined(level.var_a88de977))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported");
		#/
	}
	level.var_a88de977 = 1;
	e_info_volume = GetEnt(var_e0525846, "targetname");
	while(1)
	{
		var_f04bd8f5 = 0;
		a_players = GetPlayers();
		for(i = 0; i < a_players.size; i++)
		{
			e_player = a_players[i];
			if(e_player istouching(e_info_volume))
			{
				e_player.var_9a01b8b2 = 1;
			}
			if(isdefined(e_player.var_9a01b8b2))
			{
				var_f04bd8f5++;
			}
		}
		if(var_f04bd8f5 >= a_players.size)
		{
			break;
		}
		wait(0.05);
	}
	a_players = GetPlayers();
	for(i = 0; i < a_players.size; i++)
	{
		a_players[i].var_9a01b8b2 = undefined;
	}
	level.var_a88de977 = undefined;
	e_info_volume delete();
}

/*
	Name: function_70228179
	Namespace: forest
	Checksum: 0x745B21C8
	Offset: 0x3148
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_70228179(e_volume)
{
	self endon("death");
	if(isdefined(self.script_string) && self.script_string == "no_fallback")
	{
		return;
	}
	if(isdefined(self.var_a4652398) && self.var_a4652398)
	{
		return;
	}
	wait(RandomFloatRange(0.1, 0.5));
	self.goalRadius = 128;
	self SetGoal(e_volume);
	self waittill("goal");
	self.goalRadius = 1024;
}

/*
	Name: function_61f7878c
	Namespace: forest
	Checksum: 0xA6983074
	Offset: 0x3208
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_61f7878c()
{
	level thread function_4e907fea("s_fallback_wakamole_start", "vol_wakamole_start", "volume_wakamole_fallback");
	level thread function_4e907fea("s_fallback_wakamole_middle", "volume_wakamole_middle", "volume_wakamole_fallback");
	level thread function_4e907fea("s_fallback_wakamole_right_middle", "volume_wakamole_right_middle", "volume_wakamole_fallback");
	level thread function_4e907fea("s_fallback_wakamole_end", "volume_wakamole_end", "volume_wakamole_fallback");
}

/*
	Name: function_4e907fea
	Namespace: forest
	Checksum: 0x6B034B30
	Offset: 0x32D8
	Size: 0x135
	Parameters: 3
	Flags: None
*/
function function_4e907fea(var_9301f47d, var_613278fd, var_f8ae0594)
{
	namespace_36cbf523::function_8420d8cd(var_9301f47d);
	var_e55e65d5 = GetEnt(var_613278fd, "targetname");
	e_fallback_volume = GetEnt(var_f8ae0594, "targetname");
	a_ai = GetAITeamArray("axis");
	if(isdefined(a_ai))
	{
		for(i = 0; i < a_ai.size; i++)
		{
			e_ent = a_ai[i];
			if(e_ent istouching(var_e55e65d5))
			{
				e_ent thread function_70228179(e_fallback_volume);
			}
		}
	}
}

/*
	Name: function_e44e0c61
	Namespace: forest
	Checksum: 0x79244E35
	Offset: 0x3418
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e44e0c61()
{
	spawn_manager::enable("sm_friendly_guys_bastogne");
	if(0)
	{
		return;
	}
	trigger::use("forest_color_start");
	level waittill("hash_92cdd020");
	spawn_manager::kill("sm_friendly_guys_bastogne");
	spawn_manager::kill("sm_friendly_guys_bastogne_2");
}

/*
	Name: function_8b13f33c
	Namespace: forest
	Checksum: 0x2612E9B2
	Offset: 0x34A0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_8b13f33c()
{
	self.goalRadius = 256;
	if(isdefined(1) && 1)
	{
		num_players = GetPlayers().size;
		if(num_players > 1)
		{
			self.script_accuracy = 0.8;
		}
	}
	if(0)
	{
		self.ignoreall = 1;
		return;
	}
	self.overrideActorDamage = &function_cf3cdda5;
	self thread function_59f8a32e();
}

/*
	Name: function_59f8a32e
	Namespace: forest
	Checksum: 0x811589B8
	Offset: 0x3550
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_59f8a32e()
{
	self endon("death");
	e_trigger = GetEnt("color_trigger_3", "targetname");
	e_trigger waittill("trigger");
	self.goalRadius = 2048;
}

/*
	Name: function_cf3cdda5
	Namespace: forest
	Checksum: 0x5B35A4DC
	Offset: 0x35B0
	Size: 0xFB
	Parameters: 12
	Flags: None
*/
function function_cf3cdda5(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, modelIndex, psOffsetTime, bonename)
{
	if(!isdefined(level.var_c7d84f4f))
	{
		level.var_c7d84f4f = 0;
	}
	if(isdefined(eAttacker) && isPlayer(eAttacker))
	{
		iDamage = 0;
	}
	if(self.health > 0 && iDamage >= self.health)
	{
		if(level.var_c7d84f4f > 3)
		{
			iDamage = self.health - 1;
		}
		else
		{
			level.var_c7d84f4f++;
		}
	}
	return iDamage;
}

/*
	Name: function_ae9a24ef
	Namespace: forest
	Checksum: 0xF0696226
	Offset: 0x36B8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_ae9a24ef(a_ents)
{
	level waittill("hash_b5daeaaf");
	a_ents["friendly_guys_bastogne_01"] dialog::say("hall_congratulations_priv_0", 5);
	level thread function_79ce4af7();
}

/*
	Name: function_79ce4af7
	Namespace: forest
	Checksum: 0x4A4B76A8
	Offset: 0x3720
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_79ce4af7()
{
	level dialog::function_13b3b16a("plyr_how_is_this_possible_0", 1);
	level dialog::function_13b3b16a("plyr_this_has_to_be_an_il_0", 6);
}

/*
	Name: function_a634a43
	Namespace: forest
	Checksum: 0x56F6997D
	Offset: 0x3770
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_a634a43(a_ents)
{
	var_34c69af9 = a_ents["sarah"];
	if(isdefined(var_34c69af9))
	{
		var_34c69af9 SetTeam("allies");
	}
}

/*
	Name: function_1527ec64
	Namespace: forest
	Checksum: 0x16B44868
	Offset: 0x37C8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_1527ec64(a_ents)
{
	level thread namespace_bed101ee::function_245384ac();
	wait(1);
	var_e9020a33 = GetEnt("sarah_ai", "targetname");
	if(isdefined(var_e9020a33))
	{
		namespace_36cbf523::function_637cd603();
		var_e9020a33 thread dialog::say("hall_follow_me_i_ll_sh_0", 0);
	}
}

/*
	Name: function_c064d28b
	Namespace: forest
	Checksum: 0x655A8993
	Offset: 0x3870
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_c064d28b()
{
	clientfield::set("forest_mortar_index", 1);
	level waittill("hash_8290505");
	foreach(player in level.players)
	{
		player SetIgnorePauseWorld(1);
	}
	var_e9020a33 = GetEnt("sarah_ai", "targetname");
	level thread namespace_36cbf523::function_7b8c138f(var_e9020a33, 2000, 18);
	SetPauseWorld(1);
	level waittill("hash_b5daeaaf");
	SetPauseWorld(0);
	level waittill("hash_784610e5");
	level thread function_6c690b17();
}

/*
	Name: function_6c690b17
	Namespace: forest
	Checksum: 0x4FC4371D
	Offset: 0x39E0
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_6c690b17()
{
	clientfield::set("forest_mortar_index", 2);
	e_trigger = GetEnt("t_background_mortar_3", "targetname");
	e_trigger waittill("trigger");
	clientfield::set("forest_mortar_index", 3);
	e_trigger = GetEnt("t_background_mortar_4", "targetname");
	e_trigger waittill("trigger");
	clientfield::set("forest_mortar_index", 4);
	e_trigger = GetEnt("t_background_mortar_5", "targetname");
	e_trigger waittill("trigger");
	clientfield::set("forest_mortar_index", 5);
	e_trigger = GetEnt("t_background_mortar_6", "targetname");
	e_trigger waittill("trigger");
	clientfield::set("forest_mortar_index", 6);
}

/*
	Name: function_c7c2668
	Namespace: forest
	Checksum: 0xC02DBA8B
	Offset: 0x3B58
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_c7c2668()
{
	a_ents = GetEntArray("sp_falling_intro_enemy", "targetname");
	for(i = 0; i < a_ents.size; i++)
	{
		e_ent = spawner::simple_spawn_single(a_ents[i], &function_f3343cbc);
		util::wait_network_frame();
	}
}

/*
	Name: function_bbaffb87
	Namespace: forest
	Checksum: 0x308DF955
	Offset: 0x3C08
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_bbaffb87()
{
	a_ents = GetEntArray("sp_falling_intro_enemy_ai", "targetname");
	for(i = 0; i < a_ents.size; i++)
	{
		a_ents[i] delete();
	}
}

/*
	Name: function_f3343cbc
	Namespace: forest
	Checksum: 0x3D7FC3AA
	Offset: 0x3C88
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_f3343cbc()
{
	self endon("death");
	self.goalRadius = 64;
	self ai::set_ignoreall(1);
	level waittill("hash_8290505");
	self DoDamage(self.health + 100, self.origin);
}

/*
	Name: function_5f026a1d
	Namespace: forest
	Checksum: 0x109806B3
	Offset: 0x3D00
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_5f026a1d()
{
	level waittill("hash_1f663a67");
	level thread function_3770504e("bastogne_large_falling_piece_6", 4);
	level thread function_3770504e("bastogne_large_falling_piece_2", 10);
	level waittill("hash_b5daeaaf");
	level thread function_9901d769();
}

/*
	Name: function_9901d769
	Namespace: forest
	Checksum: 0xB00EE068
	Offset: 0x3D80
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_9901d769()
{
	initial_delay = 2;
	level thread function_3770504e("bastogne_large_falling_piece_2", initial_delay + 2);
	level thread function_3770504e("bastogne_large_falling_piece_4", initial_delay + 5);
	level thread function_3770504e("bastogne_large_falling_piece_3", initial_delay + 6);
	level thread function_3770504e("bastogne_large_falling_piece_6", initial_delay + 10);
	level thread function_3770504e("bastogne_large_falling_piece_1", initial_delay + 13);
	level thread function_3770504e("bastogne_large_falling_piece_5", initial_delay + 16);
}

/*
	Name: function_3770504e
	Namespace: forest
	Checksum: 0xBF1E46A
	Offset: 0x3E90
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_3770504e(struct_name, var_d5107b6)
{
	s_struct = struct::get(struct_name, "targetname");
	var_4b2f4450 = GetEntArray("bastogne_large_debris", "targetname");
	closest_dist = 999999.9;
	e_closest = var_4b2f4450[0];
	for(i = 0; i < var_4b2f4450.size; i++)
	{
		dist = Distance(s_struct.origin, var_4b2f4450[i].origin);
		if(dist < closest_dist)
		{
			closest_dist = dist;
			e_closest = var_4b2f4450[i];
		}
	}
	v_offset = VectorScale((0, 0, 1), 2000);
	e_closest moveto(e_closest.origin + v_offset, 0.05);
	e_closest Hide();
	wait(var_d5107b6);
	e_closest show();
	e_closest playsound("evt_metal_incoming");
	e_closest moveto(e_closest.origin - v_offset, 1);
	wait(1);
	var_ab2048f4 = 0.5;
	quake_time = RandomFloatRange(1, 1.2);
	quake_radius = 3000;
	Earthquake(var_ab2048f4, quake_time, e_closest.origin, quake_radius);
	e_closest playsound("evt_metal_impact");
}

/*
	Name: debug_ai_counts
	Namespace: forest
	Checksum: 0x7FFEF045
	Offset: 0x4140
	Size: 0x41F
	Parameters: 0
	Flags: None
*/
function debug_ai_counts()
{
	/#
		while(1)
		{
			data = spawnstruct();
			while(1)
			{
				var_cef024c7 = 200;
				var_5900d140 = 80;
				data.ai_types = [];
				data.var_4fb6d85a = [];
				data.hud = [];
				e_player = GetPlayers()[0];
				a_ai = GetAITeamArray("Dev Block strings are not supported");
				for(i = 0; i < a_ai.size; i++)
				{
					found = 0;
					e_ent = a_ai[i];
					if(isdefined(e_ent.targetname))
					{
						for(j = 0; j < data.ai_types.size; j++)
						{
							if(data.ai_types[j] == e_ent.targetname)
							{
								data.var_4fb6d85a[j]++;
								found = 1;
								break;
							}
						}
					}
					else if(!found && isdefined(e_ent.targetname))
					{
						data.ai_types[data.ai_types.size] = e_ent.targetname;
						data.var_4fb6d85a[data.var_4fb6d85a.size] = 1;
						hud_elem = namespace_36cbf523::function_e02dee76(e_player, "Dev Block strings are not supported", var_cef024c7, var_5900d140, 1);
						if(IsSubStr(e_ent.targetname, "Dev Block strings are not supported"))
						{
							hud_elem.color = (0, 1, 0);
						}
						else if(IsSubStr(e_ent.targetname, "Dev Block strings are not supported"))
						{
							hud_elem.color = (1, 0, 0);
						}
						data.hud[data.hud.size] = hud_elem;
						var_5900d140 = var_5900d140 + 12;
					}
				}
				for(i = 0; i < data.ai_types.size; i++)
				{
					hud_elem = data.hud[i];
					str_text = data.ai_types[i] + "Dev Block strings are not supported" + data.var_4fb6d85a[i];
					hud_elem setText(str_text);
				}
				wait(0.1);
				for(i = 0; i < data.hud.size; i++)
				{
					data.hud[i] destroy();
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_9346c4d4
	Namespace: forest
	Checksum: 0xFA119FFF
	Offset: 0x4568
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_9346c4d4()
{
	level.var_6ef9dbc7 = [];
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break01";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break02";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break03";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break04";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break05";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break06";
	level.var_6ef9dbc7[level.var_6ef9dbc7.size] = "fxanim_tree_break07";
	for(i = 0; i < level.var_6ef9dbc7.size; i++)
	{
		level thread scene::init(level.var_6ef9dbc7[i], "targetname");
		util::wait_network_frame();
	}
	level.var_d005d08 = 1;
}

/*
	Name: function_6f3844fd
	Namespace: forest
	Checksum: 0x3E34CE34
	Offset: 0x46B8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_6f3844fd()
{
	if(!isdefined(level.var_d005d08))
	{
		function_9346c4d4();
	}
	for(i = 0; i < level.var_6ef9dbc7.size; i++)
	{
		level thread function_f3fafb74(level.var_6ef9dbc7[i], 1000);
	}
	level waittill("hash_49c1fc58");
}

/*
	Name: function_f3fafb74
	Namespace: forest
	Checksum: 0xEA029C0F
	Offset: 0x4748
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_f3fafb74(str_targetname, trigger_radius)
{
	level endon("hash_49c1fc58");
	var_b1e02cab = struct::get(str_targetname, "targetname");
	while(1)
	{
		dist = namespace_36cbf523::player_distance(var_b1e02cab.origin);
		if(dist < trigger_radius)
		{
			break;
		}
		wait(0.1);
	}
	level thread scene::Play(str_targetname, "targetname");
}

/*
	Name: function_14c76b8f
	Namespace: forest
	Checksum: 0x676EC823
	Offset: 0x4810
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_14c76b8f()
{
	spawn_manager::enable("sm_wakamole_start");
	e_trigger = GetEnt("bastogne_intro_mortar_group_2", "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger waittill("trigger");
	}
	spawn_manager::enable("sm_bastogne_ww2_mg_wakamole");
}

/*
	Name: function_8e9f617f
	Namespace: forest
	Checksum: 0xD16395F1
	Offset: 0x4898
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_8e9f617f(var_84fffedf, var_a4652398)
{
	self endon("death");
	self function_d307bf85();
	if(var_a4652398)
	{
		self.var_a4652398 = 1;
	}
	self.goalRadius = 64;
	self waittill("goal");
	self.goalRadius = var_84fffedf;
}

/*
	Name: function_5656b048
	Namespace: forest
	Checksum: 0x66713B52
	Offset: 0x4910
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_5656b048()
{
	level endon("hash_92cdd020");
	e_trigger = GetEnt("t_bastogne_hill_running_group", "targetname");
	e_trigger waittill("trigger");
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	spawn_manager::enable("sm_bastogne_hill_running_group");
	util::delay_notify(3, "forest_sniper_spawn");
}

/*
	Name: function_42caf3d5
	Namespace: forest
	Checksum: 0xBB024DD4
	Offset: 0x49B8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_42caf3d5()
{
	level endon("hash_92cdd020");
	e_trigger = GetEnt("t_bastogne_right_side_runners", "targetname");
	e_trigger waittill("trigger");
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	spawn_manager::enable("sm_bastogne_right_side_runners");
}

/*
	Name: function_d03371f7
	Namespace: forest
	Checksum: 0xA450642
	Offset: 0x4A40
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d03371f7()
{
	level endon("hash_92cdd020");
	e_trigger = GetEnt("t_bastogne_right_side_wave2", "targetname");
	e_trigger waittill("trigger");
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	spawn_manager::enable("sm_bastogne_right_side_wave2");
}

/*
	Name: function_2c145384
	Namespace: forest
	Checksum: 0xB2C52D21
	Offset: 0x4AC8
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_2c145384(str_trigger, var_a9ea049a, str_spawn_manager)
{
	level endon("hash_92cdd020");
	e_trigger = GetEnt(str_trigger, "targetname");
	e_trigger waittill("trigger");
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	spawner::add_spawn_function_group(var_a9ea049a, "targetname", &function_8e9f617f, 512, 0);
	spawn_manager::enable(str_spawn_manager);
}

/*
	Name: function_cc4e1226
	Namespace: forest
	Checksum: 0xDD8C7B10
	Offset: 0x4B98
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_cc4e1226()
{
	e_trigger = GetEnt("t_2nd_hill_rienforcements", "targetname");
	e_trigger waittill("trigger");
	spawn_manager::enable("sm_bastogne_final_guys");
	namespace_36cbf523::function_8420d8cd("s_turret_kill_2");
	if(spawn_manager::is_enabled("sm_bastogne_final_guys"))
	{
		spawn_manager::disable("sm_bastogne_final_guys");
	}
	level thread namespace_bed101ee::function_bf117816();
}

/*
	Name: function_a5529de2
	Namespace: forest
	Checksum: 0x8719BECD
	Offset: 0x4C58
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a5529de2()
{
	level waittill("hash_2c623354");
	spawn_manager::enable("sm_bastogne_rocks_sniper");
	namespace_36cbf523::function_3c363cb3("sniper_infection");
}

/*
	Name: function_c60eab85
	Namespace: forest
	Checksum: 0xAACBAFEB
	Offset: 0x4CA8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c60eab85()
{
	level waittill("hash_8bede1bc");
	spawn_manager::enable("sm_bastogne_high_ground_rpg");
	namespace_36cbf523::function_3c363cb3("rpg_ridge");
}

/*
	Name: function_b19769e8
	Namespace: forest
	Checksum: 0x1421A9E6
	Offset: 0x4CF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b19769e8()
{
	e_trigger = GetEnt("t_left_side_rocks_fallback", "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger waittill("trigger");
		spawn_manager::enable("sm_left_side_rocks_fallback");
	}
}

/*
	Name: function_d307bf85
	Namespace: forest
	Checksum: 0xB8C17F0E
	Offset: 0x4D68
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d307bf85()
{
	if(isdefined(level.var_4aa3708c) && level.var_4aa3708c)
	{
		self.script_accuracy = 0.8;
	}
}

/*
	Name: function_d165773d
	Namespace: forest
	Checksum: 0x1FB54058
	Offset: 0x4DA0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_d165773d()
{
	scene::init("p7_fxanim_cp_infection_reverse_rocks_01_bundle");
	util::wait_network_frame();
	scene::init("p7_fxanim_cp_infection_reverse_rocks_02_bundle");
	e_trigger = GetEnt("t_reverse_rocks_01_bundle", "targetname");
	e_trigger waittill("trigger");
	level thread scene::Play("p7_fxanim_cp_infection_reverse_rocks_02_bundle");
	level thread scene::Play("p7_fxanim_cp_infection_reverse_rocks_01_bundle");
}

/*
	Name: function_dfa07cd7
	Namespace: forest
	Checksum: 0x9C2D8647
	Offset: 0x4E68
	Size: 0x1C3
	Parameters: 5
	Flags: None
*/
function function_dfa07cd7(str_trigger, str_turret_name, var_516487a, var_48e51237, var_2a33a821)
{
	e_trigger = GetEnt(str_trigger, "targetname");
	e_trigger waittill("trigger");
	e_turret = vehicle::simple_spawn_single(str_turret_name);
	e_turret.turret_index = 0;
	e_turret turret::set_burst_parameters(0.75, 1.5, 0.25, 0.75, e_turret.turret_index);
	e_turret turret::enable(0, 1);
	if(var_516487a)
	{
		e_turret thread function_e10ca4e3();
	}
	else
	{
		e_turret turret::enable_auto_use(1);
		e_turret thread function_41710e19();
	}
	e_turret thread function_4f4119d3();
	if(isdefined(var_48e51237))
	{
		namespace_36cbf523::function_8420d8cd(var_48e51237);
		e_turret turret::enable_auto_use(0);
	}
}

/*
	Name: function_41710e19
	Namespace: forest
	Checksum: 0xF7B681E6
	Offset: 0x5038
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_41710e19()
{
	self endon("death");
	var_e563808c = 100 * 100;
	while(isdefined(self.script_auto_use) && self.script_auto_use)
	{
		if(isdefined(self.riders) && isdefined(self.riders[0]) && self.riders[0] flagsys::get("in_vehicle"))
		{
			if(Distance2DSquared(self.origin, self.riders[0].origin) > var_e563808c)
			{
				rider = self.riders[0];
				rider vehicle::get_out();
				rider vehicle::get_in(self, "driver", 1);
			}
		}
		wait(1);
	}
}

/*
	Name: function_4f4119d3
	Namespace: forest
	Checksum: 0x9CFA3F84
	Offset: 0x5160
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_4f4119d3()
{
	e_volume = GetEnt("volume_turret_introduction", "targetname");
	while(1)
	{
		b_has_user = turret::does_have_user(self.turret_index);
		if(b_has_user)
		{
			a_players = GetPlayers();
			for(i = 0; i < a_players.size; i++)
			{
				e_player = a_players[i];
				if(e_player istouching(e_volume))
				{
					v_dir = VectorNormalize(self.origin - e_player.origin);
					v_forward = AnglesToForward(e_player.angles);
					dp = VectorDot(v_dir, v_forward);
					if(dp > 0.95)
					{
						exploder::exploder("fx_expl_mg_bullet_impacts01");
						return;
					}
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_e10ca4e3
	Namespace: forest
	Checksum: 0xFE076611
	Offset: 0x5310
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_e10ca4e3()
{
	level endon("hash_92cdd020");
	var_cf0db380 = undefined;
	var_a60d7a1b = "looking_for_gunner";
	while(1)
	{
		switch(var_a60d7a1b)
		{
			case "looking_for_gunner":
			{
				var_cf0db380 = function_a3606244();
				var_a60d7a1b = "gunner_running_to_turret";
				break;
			}
			case "gunner_running_to_turret":
			{
				alive = self function_4ba17e6e(var_cf0db380);
				if(alive)
				{
					var_a60d7a1b = "gunner_manning_turret";
				}
				else
				{
					var_a60d7a1b = "looking_for_gunner";
				}
				break;
			}
			case "gunner_manning_turret":
			{
				self function_aa881573(var_cf0db380);
				var_a60d7a1b = "looking_for_gunner";
				break;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_a3606244
	Namespace: forest
	Checksum: 0x48BAFA17
	Offset: 0x5430
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_a3606244()
{
	e_closest = undefined;
	while(1)
	{
		a_ai = GetAITeamArray("axis");
		closest_dist = 99999.9;
		if(isdefined(a_ai))
		{
			for(i = 0; i < a_ai.size; i++)
			{
				dist = Distance(a_ai[i].origin, self.origin);
				if(dist < 2500 && dist < closest_dist)
				{
					closest_dist = dist;
					e_closest = a_ai[i];
				}
			}
		}
		else if(isdefined(e_closest))
		{
			break;
		}
		wait(0.5);
	}
	return e_closest;
}

/*
	Name: function_4ba17e6e
	Namespace: forest
	Checksum: 0x98EE24E6
	Offset: 0x5550
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_4ba17e6e(var_cf0db380)
{
	self.var_be0f3878 = undefined;
	var_cf0db380 thread function_ca1e4e64(self);
	while(1)
	{
		if(!isalive(var_cf0db380))
		{
			return 0;
		}
		if(isdefined(self.var_be0f3878))
		{
			break;
		}
		wait(0.05);
	}
	self turret::enable(0, 1);
	var_cf0db380 vehicle::get_in(self, "driver", 1);
	return 1;
}

/*
	Name: function_ca1e4e64
	Namespace: forest
	Checksum: 0xA5133728
	Offset: 0x5610
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_ca1e4e64(e_turret)
{
	self endon("death");
	self.goalRadius = 64;
	self SetGoal(e_turret.origin);
	self waittill("goal");
	e_turret.var_be0f3878 = 1;
}

/*
	Name: function_aa881573
	Namespace: forest
	Checksum: 0x6FBB9F8C
	Offset: 0x5680
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_aa881573(var_cf0db380)
{
	while(isalive(var_cf0db380))
	{
		wait(0.01);
	}
	self turret::disable(0);
	self.var_be0f3878 = undefined;
}

/*
	Name: function_247f1864
	Namespace: forest
	Checksum: 0xCCEF1D8A
	Offset: 0x56E0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_247f1864()
{
	wait(1);
	namespace_36cbf523::function_3c363cb3("bastogne_intro");
	e_trigger = GetEnt("t_vo_multiple_routes", "targetname");
	e_trigger waittill("trigger");
	namespace_36cbf523::function_3c363cb3("multiple_routes");
	e_trigger = GetEnt("t_vo_regroup_halftracks", "targetname");
	e_trigger waittill("trigger");
	namespace_36cbf523::function_3c363cb3("regroup_halftracks");
}

/*
	Name: function_8d291f3b
	Namespace: forest
	Checksum: 0x8982E99E
	Offset: 0x57A8
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_8d291f3b()
{
	if(isdefined(level.var_5b47055f))
	{
		return;
	}
	level.var_5b47055f = 1;
	var_1105cabf = struct::get_array("bastogne_frozen_soldier", "targetname");
	foreach(scriptbundle in var_1105cabf)
	{
		if(math::cointoss())
		{
			var_76c674e0 = util::spawn_model("c_ger_winter_soldier_1");
		}
		else
		{
			var_76c674e0 = util::spawn_model("c_ger_winter_soldier_2");
		}
		var_76c674e0.script_objective = "forest";
		level thread scene::Play(scriptbundle.scriptbundlename, var_76c674e0);
		util::wait_network_frame();
	}
}

/*
	Name: function_afb42159
	Namespace: forest
	Checksum: 0x64C7D379
	Offset: 0x5918
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_afb42159()
{
	trigger::wait_till("t_checkpoint_bastogne_mid", "targetname");
	savegame::function_5d2cdd99();
	var_7d116593 = struct::get("s_forest_surreal_lighting_hint", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.origin);
}

