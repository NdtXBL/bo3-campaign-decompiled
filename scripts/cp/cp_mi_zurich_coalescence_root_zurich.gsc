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

#namespace namespace_6a04e6cd;

/*
	Name: main
	Namespace: namespace_6a04e6cd
	Checksum: 0xCEE10A82
	Offset: 0xBE0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function main()
{
	init_clientfields();
	ai_spawners = GetEntArray("root_zurich_spawners", "script_noteworthy");
	Array::thread_all(ai_spawners, &spawner::add_spawn_function, &util::function_65ba133d);
	var_603657ba = GetEntArray("root_zurich_robot_spawners", "script_noteworthy");
	Array::thread_all(var_603657ba, &spawner::add_spawn_function, &namespace_8e9083ff::function_d8c91e6b);
}

/*
	Name: init_clientfields
	Namespace: namespace_6a04e6cd
	Checksum: 0x3211216D
	Offset: 0xCC0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("scriptmover", "zurich_snow_rise", 1, 1, "counter");
	clientfield::register("toplayer", "reflection_extracam", 1, 1, "int");
	clientfield::register("toplayer", "zurich_vinewall_init", 1, 1, "int");
	clientfield::register("world", "root_vine_cleanup", 1, 1, "counter");
	clientfield::register("toplayer", "mirror_break", 1, 1, "int");
	clientfield::register("scriptmover", "mirror_warp", 1, 1, "int");
}

/*
	Name: function_9c1fc2fd
	Namespace: namespace_6a04e6cd
	Checksum: 0xF51F0584
	Offset: 0xDF0
	Size: 0x2E3
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	if(var_74cd64bc)
	{
		level util::screen_fade_out(0);
	}
	level scene::init("cin_zur_12_01_root_1st_mirror_01");
	if(isdefined(level.BZM_ZURICHDialogue11Callback))
	{
		level thread [[level.BZM_ZURICHDialogue11Callback]]();
	}
	var_4ccf970 = namespace_8e9083ff::function_a00fa665(str_objective);
	exploder::exploder("zurich_lightning_exp");
	namespace_8e9083ff::function_4d032f25(1, 0.5);
	spawner::add_spawn_function_group("raven_ambush_ai", "script_parameters", &namespace_8e9083ff::function_aceff870);
	level thread function_2d897f84(str_objective);
	level thread function_187dfb55();
	level thread function_8182f3c5();
	level thread function_9831305d();
	load::function_a2995f22();
	skipto::teleport_players(str_objective, 1);
	Array::thread_all(level.players, &util::function_df6eb506, 1);
	Array::thread_all(level.players, &clientfield::set_to_player, "zurich_vinewall_init", 1);
	level namespace_8e9083ff::function_b0f0dd1f(1, "light_snow");
	level thread function_aa95075d(str_objective);
	level thread function_53a7bcca();
	level thread namespace_8e9083ff::function_a03f30f2(str_objective, "root_zurich_vortex", "root_zurich_regroup");
	level thread namespace_8e9083ff::function_dd842585(str_objective, "root_zurich_vortex", "t_root_zurich_vortex");
	level waittill(str_objective + "enter_vortex");
	level thread namespace_67110270::function_973b77f9();
	level thread function_95b88092("root_zurich_vortex", 0);
}

/*
	Name: function_95b88092
	Namespace: namespace_6a04e6cd
	Checksum: 0x1921466E
	Offset: 0x10E0
	Size: 0x2C3
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
		foreach(e_player in level.activePlayers)
		{
			e_player thread util::function_df6eb506(1);
		}
	}
	else if(isdefined(level.BZM_ZURICHDialogue9Callback))
	{
		level thread [[level.BZM_ZURICHDialogue9Callback]]();
	}
	level thread scene::init("zurich_fxanim_heart_ceiling", "targetname");
	exploder::exploder("heartLightsZurich");
	level thread namespace_67110270::function_973b77f9();
	level util::clientNotify("stZURmus");
	level thread function_1ef8526e();
	level namespace_8e9083ff::function_c90e23b6(str_objective);
	level.var_1c26230b thread namespace_8e9083ff::function_fe5160df(1);
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
	function_4a0fb95e("cp_zurich_env_corvusmonitor");
	exploder::stop_exploder("zurich_lightning_exp");
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_6a04e6cd
	Checksum: 0xAF5B749
	Offset: 0x13B0
	Size: 0x131
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level notify("hash_c955b42d");
	level namespace_8e9083ff::function_b0f0dd1f(0);
	level clientfield::increment("root_vine_cleanup");
	level thread namespace_8e9083ff::function_4a00a473("root_zurich");
	level util::clientNotify("stp_mus");
	foreach(e_player in level.activePlayers)
	{
		e_player thread util::function_df6eb506(0);
	}
}

/*
	Name: function_a61dfb7
	Namespace: namespace_6a04e6cd
	Checksum: 0xFE09517C
	Offset: 0x14F0
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_a61dfb7()
{
	level endon("hash_1d98ceef");
	level flag::wait_till("flag_monologue_zurich_root_01");
	level dialog::function_13b3b16a("plyr_i_don_t_understand_0", 3);
	level dialog::function_13b3b16a("plyr_talk_to_me_please_0", 3);
	level dialog::function_13b3b16a("plyr_i_don_t_know_what_s_0", 3);
	level dialog::function_13b3b16a("plyr_i_don_t_know_what_to_0", 3);
	level flag::wait_till("flag_monologue_zurich_root_02");
	level dialog::function_13b3b16a("plyr_i_know_corvus_is_ins_0", 3);
	level dialog::function_13b3b16a("plyr_i_know_it_s_trying_t_0", 3);
	level dialog::function_13b3b16a("plyr_i_want_to_get_it_out_0", 3);
	level dialog::function_13b3b16a("plyr_i_have_to_keep_going_0", 3);
	level dialog::function_13b3b16a("plyr_i_have_to_finish_thi_0", 3);
	level flag::wait_till("flag_monologue_zurich_root_03");
	level dialog::function_13b3b16a("plyr_i_m_coming_for_you_c_0", 3);
	level dialog::function_13b3b16a("plyr_you_destroyed_my_tea_0", 3);
	level dialog::function_13b3b16a("plyr_you_destroyed_my_fri_0", 3);
	level dialog::function_13b3b16a("plyr_i_m_going_to_find_yo_0", 3);
	level flag::wait_till("flag_monologue_zurich_root_04");
	level dialog::function_13b3b16a("plyr_do_you_hear_me_0", 3);
	level dialog::function_13b3b16a("plyr_it_doesn_t_matter_wh_0", 3);
	level dialog::function_13b3b16a("plyr_i_will_not_let_go_0", 3);
	level dialog::function_13b3b16a("plyr_do_you_hear_me_i_wi_0", 3);
	level flag::set("flag_monologue_zurich_root_04_done");
}

/*
	Name: function_1ef8526e
	Namespace: namespace_6a04e6cd
	Checksum: 0x7C08B7B5
	Offset: 0x17C8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1ef8526e()
{
	level endon("hash_1d98ceef");
	level flag::wait_till("flag_monologue_zurich_root_04_done");
	level dialog::remote("salm_the_human_mind_holds_0", 4, "NO_DNI");
	level dialog::remote("salm_our_ability_to_analy_0", 1, "NO_DNI");
}

/*
	Name: function_9dd2872e
	Namespace: namespace_6a04e6cd
	Checksum: 0xAFFECDA8
	Offset: 0x1860
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_9dd2872e(str_objective)
{
	level endon(str_objective + "enter_vortex");
	level notify("hash_d3c69346");
	level thread namespace_67110270::function_ff7a72bf();
	level.var_1c26230b dialog::say("tayr_all_this_shit_around_1", 1);
	level.var_1c26230b dialog::say("tayr_corvus_is_messing_wi_0", 1);
	level.var_1c26230b dialog::say("tayr_just_stay_with_me_0", 1);
	level thread function_a61dfb7();
}

/*
	Name: function_53a7bcca
	Namespace: namespace_6a04e6cd
	Checksum: 0x3BA2962
	Offset: 0x1938
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_53a7bcca()
{
	e_trig = trigger::wait_till("t_zurichroot_2", "script_noteworthy");
	a_ai_enemy = GetAITeamArray("axis", "team3");
	foreach(ai_enemy in a_ai_enemy)
	{
		if(Distance(e_trig.who.origin, ai_enemy.origin) > 2000)
		{
			util::stop_magic_bullet_shield(ai_enemy);
			ai_enemy kill();
		}
	}
}

/*
	Name: function_aa95075d
	Namespace: namespace_6a04e6cd
	Checksum: 0x14B7830D
	Offset: 0x1A80
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function function_aa95075d(str_objective)
{
	util::wait_network_frame();
	scene::add_scene_func("p7_fxanim_cp_zurich_mirror_bundle", &function_b8580c84, "init");
	scene::init("p7_fxanim_cp_zurich_mirror_bundle");
	level thread function_c88fe82();
	level thread namespace_67110270::function_973b77f9();
	var_a3612ddd = 0;
	foreach(player in level.players)
	{
		var_a3612ddd++;
		player thread function_2a895f94(var_a3612ddd);
	}
	level waittill("hash_3e3847fd");
	wait(1);
	level thread util::screen_fade_in(1);
	Array::thread_all(level.players, &clientfield::increment_to_player, "postfx_transition");
	playsoundatposition("evt_clearing_trans_in", (0, 0, 0));
	level waittill("hash_1f51b705");
	level thread scene::Play("cin_zur_12_01_root_1st_mirror_taylor_cam");
	level waittill("hash_c27a3d1");
	level thread scene::Play("p7_fxanim_cp_zurich_mirror_bundle");
	level waittill("hash_e01132f9");
	util::clear_streamer_hint();
	savegame::function_5d2cdd99();
	level namespace_8e9083ff::function_c90e23b6(str_objective, "breadcrumb_zurichroot_5");
	level.var_1c26230b thread namespace_8e9083ff::function_fe5160df(1);
	wait(2);
	level function_3292451c();
	level thread function_9dd2872e(str_objective);
	function_acdfe1fe("cp_zurich_env_corvusmonitor", 1);
}

/*
	Name: function_b8580c84
	Namespace: namespace_6a04e6cd
	Checksum: 0x37FEFFB2
	Offset: 0x1D48
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_b8580c84(a_ents)
{
	var_29613ea0 = a_ents["zurich_mirror_start"];
	Array::thread_all(level.players, &clientfield::set_to_player, "reflection_extracam", 1);
	Array::thread_all(level.players, &clientfield::set_to_player, "mirror_break", 1);
	level notify("hash_3e3847fd");
	level waittill("hash_80b2a624");
	var_29613ea0 clientfield::set("mirror_warp", 1);
	var_29613ea0 playsound("evt_mirror_warp_taylor");
	level waittill("hash_1f51b705");
	var_29613ea0 clientfield::set("mirror_warp", 0);
}

/*
	Name: function_2a895f94
	Namespace: namespace_6a04e6cd
	Checksum: 0x146B700C
	Offset: 0x1E70
	Size: 0x421
	Parameters: 1
	Flags: None
*/
function function_2a895f94(var_a3612ddd)
{
	self endon("disconnect");
	self endon("death");
	scene::add_scene_func("cin_zur_12_01_root_1st_mirror_taylor_0" + var_a3612ddd, &function_cbebe415, "play");
	var_b16f0715 = [];
	var_e0cf565f = Array::exclude(level.players, Array(self));
	foreach(e_guy in var_e0cf565f)
	{
		var_52b4a338 = util::spawn_player_clone(e_guy);
		var_52b4a338.var_f5434f17 = util::spawn_model("tag_origin", var_52b4a338 GetTagOrigin("tag_weapon_right"), var_52b4a338 GetTagAngles("tag_weapon_right"));
		e_weapon = e_guy.currentWeapon;
		var_52b4a338.var_f5434f17 UseWeaponModel(e_weapon, e_weapon.worldmodel, e_guy GetWeaponOptions(e_weapon));
		var_52b4a338.var_f5434f17 LinkTo(var_52b4a338, "tag_weapon_right");
		foreach(e_player in var_e0cf565f)
		{
			var_52b4a338 SetInvisibleToPlayer(e_player, 1);
			var_52b4a338.var_f5434f17 SetInvisibleToPlayer(e_player, 1);
		}
		Array::add(var_b16f0715, var_52b4a338);
	}
	self SetInvisibleToAll();
	self thread function_2398f048(var_b16f0715, var_a3612ddd);
	Array::add(var_b16f0715, self);
	level thread scene::Play("cin_zur_12_01_root_1st_mirror_taylor_0" + var_a3612ddd);
	level scene::Play("cin_zur_12_01_root_1st_mirror_0" + var_a3612ddd, var_b16f0715);
	util::function_93831e79("root_zurich_start");
	var_b16f0715 = Array::exclude(var_b16f0715, Array(self));
	Array::run_all(var_b16f0715, &delete);
	self show();
	self SetVisibleToAll();
	level notify("hash_e01132f9");
}

/*
	Name: function_2398f048
	Namespace: namespace_6a04e6cd
	Checksum: 0xC80B72A4
	Offset: 0x22A0
	Size: 0x1BB
	Parameters: 2
	Flags: None
*/
function function_2398f048(var_b16f0715, var_a3612ddd)
{
	self endon("disconnect");
	self endon("death");
	level waittill("hash_1f51b705");
	var_182ef0f0 = scene::get_existing_ent("taylor_0" + var_a3612ddd);
	var_182ef0f0 SetVisibleToPlayer(self);
	wait(0.5);
	foreach(var_52b4a338 in var_b16f0715)
	{
		if(isdefined(var_52b4a338.var_f5434f17))
		{
			var_52b4a338.var_f5434f17 Unlink();
			var_52b4a338.var_f5434f17 delete();
		}
	}
	Array::run_all(var_b16f0715, &SetInvisibleToPlayer, self, 1);
	self Hide();
	level waittill("hash_e01132f9");
	wait(3);
	self clientfield::set_to_player("reflection_extracam", 0);
}

/*
	Name: function_cbebe415
	Namespace: namespace_6a04e6cd
	Checksum: 0x49A68373
	Offset: 0x2468
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_cbebe415(a_ents)
{
	foreach(var_182ef0f0 in a_ents)
	{
		var_182ef0f0 SetInvisibleToAll();
	}
}

/*
	Name: function_9831305d
	Namespace: namespace_6a04e6cd
	Checksum: 0x24E2DE13
	Offset: 0x2508
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_9831305d()
{
	var_b6e5ad19 = GetEntArray("zurich_popup_poles", "targetname");
	for(i = 0; i < var_b6e5ad19.size; i++)
	{
		var_b6e5ad19[i].end_pos = var_b6e5ad19[i].origin;
		if(isdefined(var_b6e5ad19[i].target))
		{
			var_fb3442a9 = struct::get_array(var_b6e5ad19[i].target, "targetname");
			for(j = 0; j < var_fb3442a9.size; j++)
			{
				if(var_fb3442a9[j].script_noteworthy === "start_pos")
				{
					var_b6e5ad19[i].start_pos = var_fb3442a9[j].origin;
					var_b6e5ad19[i] moveto(var_b6e5ad19[i].start_pos, 0.05);
					continue;
				}
				if(var_fb3442a9[j].script_noteworthy === "fx_pos")
				{
					var_b6e5ad19[i].fx_pos = var_fb3442a9[j];
				}
			}
		}
	}
}

/*
	Name: function_3292451c
	Namespace: namespace_6a04e6cd
	Checksum: 0x5E19EE15
	Offset: 0x26D8
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_3292451c()
{
	var_6fbeca4a = 1;
	for(var_6fe9b606 = GetEnt("popup_pole_" + var_6fbeca4a, "script_noteworthy"); isdefined(var_6fe9b606);  = GetEnt("popup_pole_" + var_6fbeca4a, "script_noteworthy"))
	{
		var_6fe9b606 moveto(var_6fe9b606.end_pos, 0.5);
		v_ground = GroundTrace(var_6fe9b606.fx_pos.origin, var_6fe9b606.origin, 0, var_6fe9b606)["position"];
		var_f33892ac = util::spawn_model("tag_origin", v_ground, var_6fe9b606.angles);
		var_6fe9b606 waittill("movedone");
		var_f33892ac clientfield::increment("zurich_snow_rise");
		playsoundatposition("evt_roots_grow", var_f33892ac.origin);
		var_f33892ac thread function_df835392();
		exploder::exploder("lgt_zurichpole_exp_" + var_6fbeca4a);
		var_6fbeca4a++;
	}
}

/*
	Name: function_c88fe82
	Namespace: namespace_6a04e6cd
	Checksum: 0x588B62D9
	Offset: 0x28B0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_c88fe82()
{
	level dialog::remote("mcor_you_ever_say_or_do_s_0", 1, "NO_DNI");
	level dialog::remote("tayr_maretti_is_that_yo_0", 1, "NO_DNI");
	level dialog::remote("mcor_maybe_it_wasn_t_you_0", 1, "NO_DNI");
	level dialog::remote("mcor_maybe_it_was_someone_0", 1, "NO_DNI");
	level dialog::remote("tayr_what_the_fuck_0", 1, "NO_DNI");
	level dialog::function_13b3b16a("plyr_taylor_3", 1);
	level dialog::function_13b3b16a("plyr_are_you_still_with_m_0", 1);
}

/*
	Name: function_2d897f84
	Namespace: namespace_6a04e6cd
	Checksum: 0x9B6E11B2
	Offset: 0x2A00
	Size: 0x13D
	Parameters: 1
	Flags: None
*/
function function_2d897f84(str_objective)
{
	level endon(str_objective + "_done");
	level endon("hash_c955b42d");
	var_b1cdbf1d = 1;
	while(1)
	{
		var_f6e695c0 = struct::get("breadcrumb_zurichroot_" + var_b1cdbf1d, "targetname");
		var_b1fe230f = GetEnt("t_zurichroot_" + var_b1cdbf1d, "script_noteworthy");
		if(!isdefined(var_f6e695c0) || !isdefined(var_b1fe230f))
		{
			return;
		}
		objectives::set("cp_waypoint_breadcrumb", var_f6e695c0);
		var_b1fe230f waittill("trigger");
		level notify("hash_431e9a83");
		savegame::function_5d2cdd99();
		objectives::complete("cp_waypoint_breadcrumb", var_f6e695c0);
		var_b1cdbf1d++;
	}
}

/*
	Name: function_8182f3c5
	Namespace: namespace_6a04e6cd
	Checksum: 0x26632D43
	Offset: 0x2B48
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_8182f3c5()
{
	var_3e269f89 = GetEntArray("zurich_vinewall_trig", "targetname");
	Array::thread_all(var_3e269f89, &function_ddbd0859);
}

/*
	Name: function_ddbd0859
	Namespace: namespace_6a04e6cd
	Checksum: 0x2B9D12A6
	Offset: 0x2BA8
	Size: 0x291
	Parameters: 0
	Flags: None
*/
function function_ddbd0859()
{
	var_4cb02780 = GetEntArray(self.target, "targetname");
	for(i = 0; i < var_4cb02780.size; i++)
	{
		var_4cb02780[i].end_pos = var_4cb02780[i].origin;
		if(isdefined(var_4cb02780[i].script_string))
		{
			var_4cb02780[i] thread function_e8047245();
		}
		if(isdefined(var_4cb02780[i].target))
		{
			var_fb3442a9 = struct::get_array(var_4cb02780[i].target, "targetname");
			for(j = 0; j < var_fb3442a9.size; j++)
			{
				if(var_fb3442a9[j].script_noteworthy === "start_pos")
				{
					var_4cb02780[i].start_pos = var_fb3442a9[j].origin;
					var_4cb02780[i] moveto(var_4cb02780[i].start_pos, 0.05);
					continue;
				}
			}
		}
		else if(!isdefined(var_4cb02780[i].start_pos))
		{
			var_4cb02780[i] MoveZ(-128, 0.05);
		}
	}
	self waittill("trigger");
	foreach(e_wall in var_4cb02780)
	{
		e_wall thread function_300319e3();
	}
}

/*
	Name: function_300319e3
	Namespace: namespace_6a04e6cd
	Checksum: 0xD56A291C
	Offset: 0x2E48
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function function_300319e3()
{
	n_time = RandomFloatRange(0.2, 0.75);
	wait(n_time);
	self moveto(self.end_pos, n_time);
	if(isdefined(self.target))
	{
		var_abc323ed = struct::get_array(self.target, "targetname");
		for(i = 0; i < var_abc323ed.size; i++)
		{
			if(var_abc323ed[i].script_noteworthy === "fx_pos")
			{
				v_ground = GroundTrace(var_abc323ed[i].origin, self.origin, 0, self)["position"];
				var_f33892ac = util::spawn_model("tag_origin", v_ground, var_abc323ed[i].angles);
				self waittill("movedone");
				var_f33892ac clientfield::increment("zurich_snow_rise");
				playsoundatposition("evt_roots_grow", var_abc323ed[i].origin);
				var_f33892ac thread function_df835392();
				return;
			}
		}
	}
}

/*
	Name: function_e8047245
	Namespace: namespace_6a04e6cd
	Checksum: 0xCBFF9721
	Offset: 0x3020
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_e8047245()
{
	var_a8a64a67 = GetNodeArray(self.script_string, "targetname");
	foreach(nd_cover in var_a8a64a67)
	{
		SetEnableNode(nd_cover, 0);
	}
	self waittill("movedone");
	foreach(nd_cover in var_a8a64a67)
	{
		SetEnableNode(nd_cover, 1);
	}
}

/*
	Name: function_df835392
	Namespace: namespace_6a04e6cd
	Checksum: 0x19C13B44
	Offset: 0x3178
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_df835392()
{
	wait(3);
	self delete();
}

/*
	Name: function_187dfb55
	Namespace: namespace_6a04e6cd
	Checksum: 0x48F2CCFB
	Offset: 0x31A0
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_187dfb55()
{
	scene::add_scene_func("p7_fxanim_cp_zurich_roots_train_bundle", &function_74c17b69, "play");
	scene::add_scene_func("p7_fxanim_cp_zurich_roots_train_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "zurich_root_completed");
	level thread scene::init("p7_fxanim_cp_zurich_roots_train_bundle");
	level flag::wait_till("flag_start_zurich_train_logic");
	level thread function_b9295ca8();
	level thread function_ddc2d04e();
	level flag::wait_till("flag_zurich_root_final_encounter_complete");
	objectives::breadcrumb("t_zurichroot_traincars");
	trigger::wait_till("t_zurichroot_traincars");
	spawn_manager::kill("sm_zurich_root_end_rushers");
	playsoundatposition("evt_roots_train_start", (-21602, -25483, 1681));
	level thread function_a85c54c7();
	level scene::Play("p7_fxanim_cp_zurich_roots_train_bundle");
}

/*
	Name: function_a85c54c7
	Namespace: namespace_6a04e6cd
	Checksum: 0x4477B264
	Offset: 0x3350
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_a85c54c7()
{
	level waittill("hash_bf94f0c3");
	GetEnt("zur_root_train_blocker", "targetname") delete();
	objectives::breadcrumb("t_breadcrumb_zurichroot_exit");
}

/*
	Name: function_74c17b69
	Namespace: namespace_6a04e6cd
	Checksum: 0x19CB0FAE
	Offset: 0x33B8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_74c17b69(a_ents)
{
	foreach(e_ent in a_ents)
	{
		e_ent PlayRumbleOnEntity("cp_infection_hideout_stretch");
	}
}

/*
	Name: function_b9295ca8
	Namespace: namespace_6a04e6cd
	Checksum: 0xD2A8B5D6
	Offset: 0x3460
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b9295ca8()
{
	level endon("hash_e0d2827d");
	spawn_manager::function_27bf2e8("sm_zurich_root_end", 2);
	level flag::set("flag_zurich_root_final_encounter_complete");
}

/*
	Name: function_ddc2d04e
	Namespace: namespace_6a04e6cd
	Checksum: 0x3FB53A5D
	Offset: 0x34B8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ddc2d04e()
{
	level endon("hash_e0d2827d");
	wait(60);
	level flag::set("flag_zurich_root_final_encounter_complete");
}

