#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_quadtank_util;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_accolades;
#using scripts\cp\cp_mi_sing_sgen_enter_silo;
#using scripts\cp\cp_mi_sing_sgen_revenge_igc;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_5da6b440;

/*
	Name: function_62616b71
	Namespace: namespace_5da6b440
	Checksum: 0xFAE7B067
	Offset: 0x1D10
	Size: 0x461
	Parameters: 2
	Flags: None
*/
function function_62616b71(str_objective, var_74cd64bc)
{
	level scene::init("cin_sgen_01_intro_3rd_pre200_overlook_sh010");
	level scene::init("cin_sgen_01_intro_3rd_pre100_flyover");
	level clientfield::set("w_flyover_buoys", 1);
	load::function_c32ba481(1);
	foreach(e_player in level.activePlayers)
	{
		e_player FreezeControls(1);
	}
	util::do_chyron_text(&"CP_MI_SING_SGEN_INTRO_LINE_2_FULL", &"CP_MI_SING_SGEN_INTRO_LINE_2_SHORT", &"CP_MI_SING_SGEN_INTRO_LINE_3_FULL", &"CP_MI_SING_SGEN_INTRO_LINE_3_SHORT", &"CP_MI_SING_SGEN_INTRO_LINE_4_FULL", &"CP_MI_SING_SGEN_INTRO_LINE_4_SHORT", &"CP_MI_SING_SGEN_INTRO_LINE_5_FULL", &"CP_MI_SING_SGEN_INTRO_LINE_5_SHORT", "", "");
	level scene::add_scene_func("cin_sgen_01_intro_3rd_pre200_overlook_sh010", &function_12570551);
	level scene::add_scene_func("cin_sgen_01_intro_3rd_pre200_overlook_sh020", &function_d97219ae, "play");
	level scene::add_scene_func("cin_sgen_01_intro_3rd_pre200_overlook_sh060", &function_149dd934, "play");
	level scene::add_scene_func("cin_sgen_01_intro_3rd_pre200_overlook_sh060", &function_bd2f8313, "done");
	SetDvar("ai_awarenessenabled", 1);
	level thread function_87664862();
	level thread function_524fa1f4();
	level thread function_843ef2d4();
	exploder::exploder("sgen_flying_IGC");
	if(isdefined(level.BZM_SGENDialogue1Callback))
	{
		level thread [[level.BZM_SGENDialogue1Callback]]();
	}
	level thread function_32c69f8a();
	level thread namespace_d40478f6::function_6cad5ce0();
	level scene::Play("cin_sgen_01_intro_3rd_pre100_flyover");
	level clientfield::set("w_flyover_buoys", 0);
	if(isdefined(level.BZM_SGENDialogue1_1Callback))
	{
		level thread [[level.BZM_SGENDialogue1_1Callback]]();
	}
	level thread scene::Play("cin_sgen_01_intro_3rd_pre200_overlook_sh010");
	level thread function_4574902a();
	level flag::wait_till("intro_igc_done");
	level clientfield::set("gameplay_started", 1);
	util::function_93831e79("intro");
	foreach(e_player in level.activePlayers)
	{
		e_player FreezeControls(0);
	}
}

/*
	Name: function_32c69f8a
	Namespace: namespace_5da6b440
	Checksum: 0x3D65B44C
	Offset: 0x2180
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_32c69f8a()
{
	level waittill("fade_out");
	level thread util::screen_fade_out(2);
	level waittill("fade_in");
	level thread util::screen_fade_in(3);
}

/*
	Name: function_12570551
	Namespace: namespace_5da6b440
	Checksum: 0xC23BF262
	Offset: 0x21E0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_12570551(a_ents)
{
	a_ents["m_cinematic_hendricks"] clientfield::set("dni_eye", 1);
	level waittill("hash_f39f25df");
	level dialog::remote("kane_much_of_the_structur_0");
}

/*
	Name: function_149dd934
	Namespace: namespace_5da6b440
	Checksum: 0x6C6BD990
	Offset: 0x2250
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_149dd934(a_ents)
{
	level.var_2fd26037 = a_ents["hendricks_backpack"];
	util::init_hero("hendricks_backpack");
	trigger::use("enter_sgen_hendricks", "targetname", undefined, 1);
}

/*
	Name: function_d97219ae
	Namespace: namespace_5da6b440
	Checksum: 0x208AE4E6
	Offset: 0x22C0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_d97219ae(a_ents)
{
	var_5fd4d3b9 = GetEntArray("sgen_intro_igc_card", "targetname");
	foreach(blocker in var_5fd4d3b9)
	{
		blocker delete();
	}
}

/*
	Name: function_bd2f8313
	Namespace: namespace_5da6b440
	Checksum: 0x4615C50
	Offset: 0x2388
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_bd2f8313(a_ents)
{
	skipto::function_be8adfb8("intro");
}

/*
	Name: function_19a68bdb
	Namespace: namespace_5da6b440
	Checksum: 0xFB77AAAB
	Offset: 0x23B8
	Size: 0x53
	Parameters: 4
	Flags: None
*/
function function_19a68bdb(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	struct::delete_script_bundle("scene", "cin_sgen_01_intro_3rd_pre100_flyover");
	namespace_19d629e::function_a8e314e9();
}

/*
	Name: function_87664862
	Namespace: namespace_5da6b440
	Checksum: 0x19F6153C
	Offset: 0x2418
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_87664862()
{
	flag::wait_till("exterior_gone_hot");
	SetDvar("ai_awarenessenabled", 0);
}

/*
	Name: function_d43e5685
	Namespace: namespace_5da6b440
	Checksum: 0xA9A4DE38
	Offset: 0x2458
	Size: 0x823
	Parameters: 2
	Flags: None
*/
function function_d43e5685(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		SetDvar("ai_awarenessenabled", 1);
		level thread function_843ef2d4();
		level thread function_524fa1f4();
		level thread function_d97219ae();
		exploder::exploder("sgen_flying_IGC");
		SGEN::function_bff1a867(str_objective);
		level thread function_4574902a();
		load::function_a2995f22();
	}
	util::clientNotify("sw");
	level thread namespace_d40478f6::function_973b77f9();
	namespace_99202726::function_6a1ab5fc();
	namespace_99202726::function_b2309b8();
	namespace_99202726::function_6a2780bc();
	foreach(player in level.activePlayers)
	{
		player thread function_210baecb();
	}
	callback::on_spawned(&function_210baecb);
	var_f38271e7 = GetEnt("exterior_fountain_water", "targetname");
	level thread trigger::no_prone_think(var_f38271e7);
	vehicle::add_spawn_function("intro_truck", &function_ceeb020);
	trigger::use("t_intro_truck");
	objectives::set("cp_level_sgen_enter_sgen_no_pointer");
	var_378dd13e = GetEntArray("outside_color_triggers", "script_noteworthy");
	foreach(e_trig in var_378dd13e)
	{
		e_trig.script_color_stay_on = 1;
	}
	var_2fab4a6b = GetEntArray("trig_hendricks_stealth", "script_noteworthy");
	foreach(e_trig in var_2fab4a6b)
	{
		e_trig thread function_daa3910f();
	}
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_2fd26037 ai::set_ignoreme(1);
	level.var_2fd26037.var_c48463a8 = 0;
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "fast");
	level.var_2fd26037.goalRadius = 64;
	var_2ac88b1d = GetWeapon("ar_standard_hero", "suppressed", "acog", "fastreload", "extclip", "damage");
	level.var_2fd26037 ai::gun_switchto(var_2ac88b1d, "right");
	level thread function_a56f1c2e();
	t_door = GetEnt("trig_lobby_entrance", "targetname");
	t_door TriggerEnable(0);
	level thread function_6dc55b15();
	foreach(e_player in level.players)
	{
		e_player thread function_7d0e1b80();
	}
	level flag::set("start_technical");
	level flag::wait_till("start_enter_sgen");
	savegame::function_5d2cdd99();
	level thread function_32832330();
	level thread function_234a4910();
	level.var_2fd26037 thread function_34be1751();
	level.var_48b27857 thread function_9200d313();
	level.var_48b27857 waittill("death");
	level.var_48b27857 disconnectpaths();
	level flag::set("intro_quadtank_dead");
	a_axis = GetAITeamArray("axis");
	var_ce29d857 = GetEnt("exterior_retreat_killer", "targetname");
	foreach(e_ai in a_axis)
	{
		e_ai SetGoal(var_ce29d857, 1);
	}
	level flag::set("qtank_fight_completed");
	skipto::function_be8adfb8(str_objective);
	objectives::complete("cp_level_sgen_clear_entrance");
	namespace_99202726::function_45afef12();
	namespace_99202726::function_59fa6593();
	namespace_99202726::function_6d2fd9d2();
}

/*
	Name: function_da046478
	Namespace: namespace_5da6b440
	Checksum: 0x5C59DA95
	Offset: 0x2C88
	Size: 0x175
	Parameters: 0
	Flags: None
*/
function function_da046478()
{
	var_b640b7ec = GetEnt("exterior_quad_tank_retreat", "targetname");
	a_ai_enemies = spawner::get_ai_group_ai("exterior_guys");
	a_ai_enemies = ArraySort(a_ai_enemies, level.var_48b27857.origin, 0);
	for(i = 0; i < a_ai_enemies.size; i++)
	{
		if(isai(a_ai_enemies[i]) && a_ai_enemies[i].script_parameters !== "sniper")
		{
			a_ai_enemies[i] notify("retreating");
			a_ai_enemies[i] SetGoal(var_b640b7ec, 1);
			a_ai_enemies[i] thread namespace_cba4cc55::function_c8849158(800);
			wait(RandomFloatRange(2, 5));
		}
	}
}

/*
	Name: function_331e454
	Namespace: namespace_5da6b440
	Checksum: 0x2572BD6
	Offset: 0x2E08
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_331e454()
{
	a_ai_snipers = GetEntArray("sniper", "script_parameters");
	for(i = 0; i < a_ai_snipers.size; i++)
	{
		if(isalive(a_ai_snipers[i]))
		{
			level.var_2fd26037 ai::shoot_at_target("kill_within_time", a_ai_snipers[i], undefined, 10);
		}
	}
}

/*
	Name: function_a56f1c2e
	Namespace: namespace_5da6b440
	Checksum: 0x1BAD4A04
	Offset: 0x2EB8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_a56f1c2e()
{
	wait(10);
	var_b9b7fda9 = GetEnt("intro_no_sight", "targetname");
	var_b9b7fda9 delete();
}

/*
	Name: function_ceeb020
	Namespace: namespace_5da6b440
	Checksum: 0x885E2FED
	Offset: 0x2F10
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_ceeb020()
{
	self endon("death");
	self vehicle::lights_off();
	self SetSeatOccupied(0);
	self.script_objective = "gen_lab";
	self waittill("reached_end_node");
	level flag::set("intro_truck_arrived");
	Array::thread_all(self.riders, &function_2a8b80c4);
	level flag::wait_till("exterior_gone_hot");
	self vehicle::unload("all");
}

/*
	Name: function_2a8b80c4
	Namespace: namespace_5da6b440
	Checksum: 0xC83E3664
	Offset: 0x2FF8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_2a8b80c4()
{
	self endon("death");
	level endon("hash_766878c3");
	self ai::set_ignoreall(0);
	self util::waittill_any("damage", "death", "bulletwhizby");
	level flag::set("exterior_gone_hot");
}

/*
	Name: function_daa3910f
	Namespace: namespace_5da6b440
	Checksum: 0xDC7B82B5
	Offset: 0x3088
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_daa3910f()
{
	self endon("death");
	level endon("hash_6db95ed8");
	while(1)
	{
		self waittill("trigger", e_player);
		if(level.players.size == 1)
		{
			trigger::use(self.script_string, "targetname", e_player);
			wait(1);
		}
	}
}

/*
	Name: function_91e8545f
	Namespace: namespace_5da6b440
	Checksum: 0xD25848BA
	Offset: 0x3110
	Size: 0x123
	Parameters: 4
	Flags: None
*/
function function_91e8545f(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	struct::delete_script_bundle("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh020");
	struct::delete_script_bundle("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh020_female");
	struct::delete_script_bundle("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh030");
	struct::delete_script_bundle("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh030_female");
	struct::delete_script_bundle("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh040");
	struct::delete_script_bundle("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh050");
	struct::delete_script_bundle("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh060");
	callback::remove_on_spawned(&function_210baecb);
}

/*
	Name: function_234a4910
	Namespace: namespace_5da6b440
	Checksum: 0xFB677F38
	Offset: 0x3240
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_234a4910()
{
	var_e561bbaf = 0;
	foreach(player in level.activePlayers)
	{
		var_1bcd223d = player GetCurrentWeapon();
		if(WeaponHasAttachment(var_1bcd223d, "suppressed"))
		{
			var_e561bbaf = 1;
		}
	}
	if(!flag::get("exterior_gone_hot") && var_e561bbaf)
	{
		level.var_2fd26037 dialog::say("hend_54i_crawling_all_ove_0");
		wait(0.8);
	}
	if(!flag::get("exterior_gone_hot"))
	{
		level.var_2fd26037 dialog::say("hend_waiting_on_your_shot_0", 1);
	}
}

/*
	Name: function_6dc55b15
	Namespace: namespace_5da6b440
	Checksum: 0x3F1AC2E2
	Offset: 0x33A8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_6dc55b15()
{
	level thread objectives::breadcrumb("trig_obj_1");
	flag::wait_till("exterior_gone_hot");
	level thread objectives::breadcrumb("obj_intro_breadcrumb_3");
}

/*
	Name: function_2c6d8ae0
	Namespace: namespace_5da6b440
	Checksum: 0x23F93C53
	Offset: 0x3410
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_2c6d8ae0(str_endon, str_name)
{
	self endon(str_endon);
	level trigger::wait_till(str_name);
}

/*
	Name: function_7d0e1b80
	Namespace: namespace_5da6b440
	Checksum: 0x1AEFCD3D
	Offset: 0x3450
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_7d0e1b80()
{
	self endon("death");
	self thread function_cf842dc5();
	self thread function_cb09a77d();
	level flag::wait_till("exterior_gone_hot");
	level notify("stop_patrolling");
}

/*
	Name: function_cf842dc5
	Namespace: namespace_5da6b440
	Checksum: 0xF962020
	Offset: 0x34C8
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_cf842dc5()
{
	self endon("death");
	level endon("hash_766878c3");
	level endon("stop_patrolling");
	var_1bcd223d = self GetCurrentWeapon();
	while(1)
	{
		self waittill("weapon_fired");
		var_1bcd223d = self GetCurrentWeapon();
		if(!WeaponHasAttachment(var_1bcd223d, "suppressed"))
		{
			level flag::set("exterior_gone_hot");
		}
	}
}

/*
	Name: function_cb09a77d
	Namespace: namespace_5da6b440
	Checksum: 0xF3BBCFB
	Offset: 0x3588
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_cb09a77d()
{
	self endon("death");
	level endon("hash_766878c3");
	level endon("stop_patrolling");
	var_83181ea9[0] = "gadget_active_camo";
	var_83181ea9[1] = "gadget_es_strike";
	while(1)
	{
		self waittill("hash_81c0052c", var_db4f7ce4);
		b_safe = 0;
		foreach(var_86ce8156 in var_83181ea9)
		{
			if(IsSubStr(var_db4f7ce4.name, var_86ce8156))
			{
				b_safe = 1;
			}
		}
		if(!b_safe)
		{
			level flag::set("exterior_gone_hot");
		}
	}
}

/*
	Name: function_30b0b2ca
	Namespace: namespace_5da6b440
	Checksum: 0x156D87A
	Offset: 0x36D8
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_30b0b2ca()
{
	level endon("hash_766878c3");
	level.var_cb80bdd = 0;
	while(1)
	{
		if(level.var_cb80bdd >= 8)
		{
			break;
		}
		wait(1);
	}
	wait(0.5);
	var_4e5ceeda = GetCorpseArray();
	var_a76fb911 = ArrayGetClosest(level.players[0].origin, var_4e5ceeda);
	var_a1eda872 = util::spawn_model("tag_origin", var_a76fb911.origin, var_a76fb911.angles);
	a_ai_enemies = GetAITeamArray("axis");
	var_cb8a52f1 = ArrayGetClosest(var_a76fb911.origin, a_ai_enemies);
	if(isalive(var_cb8a52f1))
	{
		var_cb8a52f1 thread function_ef817b9c(var_a1eda872);
	}
}

/*
	Name: function_ef817b9c
	Namespace: namespace_5da6b440
	Checksum: 0x3C207432
	Offset: 0x3858
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_ef817b9c(var_9751fdd2)
{
	self endon("death");
	self notify("stop_patrolling");
	self.should_stop_patrolling = 0;
	self ai::set_behavior_attribute("sprint", 1);
	self ai::force_goal(var_9751fdd2.origin, 64, 1);
	level flag::set("exterior_gone_hot");
}

/*
	Name: function_f4386791
	Namespace: namespace_5da6b440
	Checksum: 0x7A21314B
	Offset: 0x38F8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f4386791()
{
	level flag::wait_till("enable_battle_volumes");
	var_e9e4b7d = GetEntArray("vol_enemy_reaction", "script_noteworthy");
	Array::run_all(var_e9e4b7d, &delete);
}

/*
	Name: function_4574902a
	Namespace: namespace_5da6b440
	Checksum: 0x256836DF
	Offset: 0x3978
	Size: 0x2C3
	Parameters: 0
	Flags: None
*/
function function_4574902a()
{
	level thread function_f4386791();
	level thread function_30b0b2ca();
	spawner::add_spawn_function_group("exterior_guys", "script_aigroup", &function_82755bcd);
	spawner::add_spawn_function_group("quadtank_reinforcement_guy", "targetname", &function_79e56538);
	spawner::simple_spawn("enemy_enter_sgen");
	spawner::simple_spawn("exterior_patroller");
	level thread scene::init("cin_gen_breakout_vign_orders");
	level battlechatter::function_d9f49fba(0);
	level flag::wait_till("exterior_gone_hot");
	level thread scene::Play("cin_gen_breakout_vign_orders");
	level battlechatter::function_d9f49fba(1);
	level flag::set("start_enter_sgen");
	a_t_color = GetEntArray("color_enter_sgen", "script_noteworthy");
	Array::run_all(a_t_color, &delete);
	spawner::waittill_ai_group_amount_killed("exterior_guys", 8);
	level flag::set("start_hendricks_move_up_battle_1");
	spawner::waittill_ai_group_amount_killed("exterior_guys", 12);
	level flag::set("start_hendricks_move_up_battle_2");
	spawner::waittill_ai_group_amount_killed("exterior_guys", 18);
	level flag::set("spawn_quad_tank");
	spawner::waittill_ai_group_amount_killed("exterior_guys", 25);
	level flag::set("fallback_to_qt");
}

/*
	Name: function_79e56538
	Namespace: namespace_5da6b440
	Checksum: 0xAEE88FE
	Offset: 0x3C48
	Size: 0x351
	Parameters: 0
	Flags: None
*/
function function_79e56538()
{
	self endon("death");
	self endon("retreating");
	var_45c136ef = GetEnt("vol_enemy_end", "targetname");
	self SetGoal(var_45c136ef, 1);
	level waittill("hash_9eb56acf");
	wait(RandomFloatRange(1, 3));
	self ClearGoalVolume();
	var_9b683040 = GetNodeArray("nd_attack_quadtank", "targetname");
	foreach(nd_attack in var_9b683040)
	{
		self thread ai::force_goal(nd_attack, 32, 1);
	}
	foreach(e_player in level.players)
	{
		self SetIgnoreEnt(e_player, 1);
	}
	self SetIgnoreEnt(level.var_2fd26037, 1);
	self thread monitor_player_damage();
	wait(RandomFloatRange(8, 11));
	self SetIgnoreEnt(level.var_2fd26037, 0);
	var_45c136ef = GetEnt("vol_enemy_end", "targetname");
	self SetGoal(var_45c136ef, 1);
	wait(RandomFloatRange(3, 5));
	self notify("hash_1ad878bf");
	foreach(e_player in level.players)
	{
		self SetIgnoreEnt(e_player, 0);
	}
}

/*
	Name: monitor_player_damage
	Namespace: namespace_5da6b440
	Checksum: 0xAB0E248B
	Offset: 0x3FA8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function monitor_player_damage()
{
	self endon("hash_1ad878bf");
	self waittill("damage");
	foreach(e_player in level.players)
	{
		self SetIgnoreEnt(e_player, 0);
	}
	self SetIgnoreEnt(level.var_2fd26037, 0);
}

/*
	Name: function_82755bcd
	Namespace: namespace_5da6b440
	Checksum: 0x677D9072
	Offset: 0x4080
	Size: 0x5A3
	Parameters: 0
	Flags: None
*/
function function_82755bcd()
{
	self endon("death");
	self endon("hash_dd3cd5b9");
	self thread function_efb86353();
	self thread function_e183f381();
	self.var_69dd5d62 = 1;
	self thread function_6f49bfa5();
	level flag::wait_till("start_technical");
	if(isdefined(self.script_string))
	{
		nd_start_node = function_ffbd411();
		self thread function_e28048de(nd_start_node);
	}
	if(isdefined(self.script_noteworthy))
	{
		scene::add_scene_func("cin_sgen_02_05_exterior_vign_using_ipad_guy01", &function_b75564dc, "play");
		if(isdefined(self.script_int))
		{
			self thread scene::init(self.script_noteworthy, self);
		}
		else
		{
			self thread scene::Play(self.script_noteworthy, self);
		}
	}
	level flag::wait_till("exterior_gone_hot");
	function_b81f9767();
	if(self.var_9ba4fd54 === 1)
	{
		level flag::wait_till("start_hendricks_move_up_battle_2");
	}
	if(isdefined(self.str_attack_node))
	{
		var_1c5878cd = GetNode(self.str_attack_node, "targetname");
		self ai::force_goal(var_1c5878cd.origin, 32, 1);
		level waittill("forever");
	}
	var_e9e4b7d = GetEntArray("vol_enemy_reaction", "script_noteworthy");
	foreach(e_vol in var_e9e4b7d)
	{
		if(self istouching(e_vol))
		{
			var_e35a0431 = GetEnt(e_vol.targetname, "targetname");
			self SetGoal(var_e35a0431, 1);
			break;
		}
		var_c3354820 = GetEntArray("vol_hendricks_stealth", "targetname");
		foreach(e_vol in var_c3354820)
		{
			if(self istouching(e_vol))
			{
				self SetGoal(e_vol, 1);
			}
		}
	}
	wait(RandomFloatRange(10, 12));
	self ClearGoalVolume();
	level flag::set("enable_battle_volumes");
	var_60a7dd2a = GetEnt("vol_exterior_area", "targetname");
	self SetGoal(var_60a7dd2a, 1);
	level flag::wait_till("start_hendricks_move_up_battle_1");
	self ClearGoalVolume();
	var_6ef3070f = GetEnt("vol_enemy_middle", "targetname");
	self SetGoal(var_6ef3070f, 1);
	level flag::wait_till("start_hendricks_move_up_battle_2");
	self ClearGoalVolume();
	var_45c136ef = GetEnt("vol_enemy_end", "targetname");
	self SetGoal(var_45c136ef, 1);
}

/*
	Name: function_e183f381
	Namespace: namespace_5da6b440
	Checksum: 0xA4CBDEB2
	Offset: 0x4630
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_e183f381()
{
	self endon("death");
	level endon("hash_766878c3");
	while(1)
	{
		wait(randomIntRange(5, 15));
		self playsound("amb_enemy_fake_radio");
	}
}

/*
	Name: function_b75564dc
	Namespace: namespace_5da6b440
	Checksum: 0x5E4F6DB7
	Offset: 0x4698
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_b75564dc(a_scene_ents)
{
	var_9ab0909 = a_scene_ents["tablet"];
	ai_guy = a_scene_ents["guy"];
	var_9ab0909 endon("death");
	var_9ab0909 thread function_9c58c518();
	level util::waittill_any_ents(level, "exterior_gone_hot", ai_guy, "damage", ai_guy, "death");
	ai_guy scene::stop();
	wait(0.05);
	var_9ab0909 PhysicsLaunch(var_9ab0909.origin, (0, 0, -1));
}

/*
	Name: function_9c58c518
	Namespace: namespace_5da6b440
	Checksum: 0x35F357FF
	Offset: 0x4788
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_9c58c518()
{
	level endon("hash_766878c3");
	self SetCanDamage(1);
	self waittill("damage");
	level flag::set("exterior_gone_hot");
}

/*
	Name: function_6f49bfa5
	Namespace: namespace_5da6b440
	Checksum: 0x784788E8
	Offset: 0x47E0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_6f49bfa5()
{
	self endon("death");
	level endon("hash_766878c3");
	self thread function_6808f370();
	self.goalRadius = 32;
	self.old_maxsightdistsqrd = self.maxsightdistsqrd;
	self.maxsightdistsqrd = 562500;
	self.fovcosine = 0.8;
	if(!SessionModeIsCampaignZombiesGame())
	{
		self ai::set_pacifist(1);
	}
	self util::waittill_any("damage", "bulletwhizby");
	self thread function_b81f9767(1);
	wait(1);
	if(isalive(self))
	{
		level flag::set("exterior_gone_hot");
	}
}

/*
	Name: function_b81f9767
	Namespace: namespace_5da6b440
	Checksum: 0x127D662B
	Offset: 0x4900
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_b81f9767(b_immediate)
{
	if(!isdefined(b_immediate))
	{
		b_immediate = 0;
	}
	self endon("death");
	self.goalRadius = 2048;
	self.maxsightdistsqrd = self.old_maxsightdistsqrd;
	self.fovcosine = 0;
	if(!SessionModeIsCampaignZombiesGame())
	{
		self ai::set_pacifist(0);
	}
	self.should_stop_patrolling = 1;
	if(isdefined(self.script_noteworthy))
	{
		wait(RandomFloatRange(0.3, 1.5));
		if(IsSubStr(self.script_noteworthy, "rummage"))
		{
			self thread scene::Play(self.script_noteworthy + "_react", self);
		}
		else
		{
			namespace_cba4cc55::function_9cb9697d(self.script_noteworthy);
		}
	}
}

/*
	Name: function_ffbd411
	Namespace: namespace_5da6b440
	Checksum: 0xAD88D046
	Offset: 0x4A28
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_ffbd411()
{
	switch(self.script_string)
	{
		case "nd_cargo_truck_driver":
		{
			self.var_87be2839 = "start_vehicle_patrols";
			self vehicle::get_in(level.var_a2059f5c, "driver", 1);
			break;
		}
		case "nd_cargo_truck_passenger":
		{
			self.var_87be2839 = "start_vehicle_patrols";
			self vehicle::get_in(level.var_a2059f5c, "passenger1", 1);
			break;
		}
		case "nd_left_walkway":
		{
			self.str_attack_node = "nd_left_walkway_attack";
			break;
		}
		case "nd_right_walkway":
		{
			self.str_attack_node = "nd_right_walkway_attack";
			break;
		}
		case "nd_big_rig":
		{
			self.str_attack_node = "nd_bigrig_attack";
			break;
		}
		case "nd_patrol_right_truck_driver":
		{
			self.var_87be2839 = "start_vehicle_patrols";
			self vehicle::get_in(level.var_8bf4b572, "driver", 1);
			break;
		}
		case "nd_right_driveway_path":
		{
			self.n_wait = 1.2;
			self thread function_5d6e495e();
			break;
		}
		case "nd_right_intro_shack":
		{
			self thread function_5d6e495e();
			break;
		}
		case "nd_left_driveway_path":
		{
			self.n_wait = 3;
			self thread function_5d6e495e();
			break;
		}
		case "nd_left_building_enemy_path":
		{
			self.var_87be2839 = "trig_left_exterior_building";
			self.var_9ba4fd54 = 1;
			self thread function_5d6e495e();
			break;
		}
	}
	nd_start_path = GetNode(self.script_string, "targetname");
	return nd_start_path;
}

/*
	Name: function_efb86353
	Namespace: namespace_5da6b440
	Checksum: 0x4323C261
	Offset: 0x4C60
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_efb86353()
{
	level endon("hash_766878c3");
	self waittill("death");
	level.var_cb80bdd++;
	if(self.script_string === "left_building_enemy")
	{
		if(level.players.size == 1)
		{
			trigger::use("trig_color_left_exterior_building_upstairs");
		}
	}
}

/*
	Name: function_5d6e495e
	Namespace: namespace_5da6b440
	Checksum: 0x2DF52ACA
	Offset: 0x4CD0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_5d6e495e()
{
	level endon("hash_766878c3");
	self endon("assisted_kill");
	self endon("hash_2f93f839");
	self.var_f9b223f5 = 1;
	self waittill("death", e_attacker);
	if(isPlayer(e_attacker) & !level flag::get("exterior_gone_hot"))
	{
		ai_close = ArrayGetClosest(self.origin, GetAITeamArray("axis"), 512);
		if(isalive(ai_close))
		{
			if(ai_close cansee(e_attacker) || ai_close cansee(self))
			{
				ai_close thread function_4e452acd(self.origin);
				ai_close thread function_94a23f13(e_attacker);
			}
		}
	}
}

/*
	Name: function_4e452acd
	Namespace: namespace_5da6b440
	Checksum: 0x5010CD8F
	Offset: 0x4E28
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_4e452acd(v_death_origin)
{
	self endon("death");
	wait(RandomFloatRange(0.4, 0.8));
	if(!level.var_2fd26037.var_c48463a8)
	{
		if(self.var_f9b223f5 === 1)
		{
			if(level.players.size == 1 && !util::within_fov(level.var_2fd26037.origin, level.players[0].angles, level.players[0].origin, cos(70)))
			{
				level.var_2fd26037.var_c48463a8 = 1;
				var_97b89aad = VectorNormalize(level.var_2fd26037 GetEye() - self GetEye());
				var_e27e8c7e = self GetEye() + VectorScale(var_97b89aad, 300);
				var_ad1ec231 = self GetEye();
				MagicBullet(level.var_2fd26037.weapon, var_e27e8c7e, var_ad1ec231, level.var_2fd26037);
				self kill(var_e27e8c7e, level.var_2fd26037);
			}
		}
	}
}

/*
	Name: function_94a23f13
	Namespace: namespace_5da6b440
	Checksum: 0x6562D4A0
	Offset: 0x5000
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_94a23f13(player)
{
	self endon("death");
	level endon("hash_766878c3");
	self notify("hash_1592960");
	if(isdefined(player) && DistanceSquared(self.origin, player.origin) > 40000)
	{
		if(!level flag::get("enemy_alerting_area"))
		{
			if(!SessionModeIsCampaignZombiesGame())
			{
				level flag::set("enemy_alerting_area");
				level util::delay(3, undefined, &flag::clear, "enemy_alerting_area");
				self scene::Play("cin_sgen_02_01_alerting_scene", self);
			}
		}
	}
	else
	{
		self thread function_b81f9767(1);
		wait(1);
	}
	level flag::set("exterior_gone_hot");
}

/*
	Name: function_e28048de
	Namespace: namespace_5da6b440
	Checksum: 0x326D4553
	Offset: 0x5168
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_e28048de(nd_start_path)
{
	self endon("death");
	level endon("hash_766878c3");
	if(isdefined(self.var_87be2839) && !level flag::get("exterior_gone_hot"))
	{
		level flag::wait_till(self.var_87be2839);
	}
	if(isdefined(self.n_wait))
	{
		wait(self.n_wait);
	}
	self thread ai::patrol(nd_start_path);
}

/*
	Name: function_843ef2d4
	Namespace: namespace_5da6b440
	Checksum: 0x612FE93C
	Offset: 0x5210
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_843ef2d4()
{
	level.var_b27f706d = GetWeapon("quadtank_main_turret_player");
	level.var_51d112fe = GetWeapon("quadtank_main_turret_rocketpods_straight");
	level.var_9e92e4b8 = GetWeapon("quadtank_main_turret_rocketpods_javelin");
	level.var_8bf4b572 = vehicle::simple_spawn_single("technical_fountain_right");
	level.var_8bf4b572 vehicle::lights_off();
	level.var_8bf4b572 SetSeatOccupied(0);
	level.var_8bf4b572 thread function_9e3af01c();
	var_1c0f637 = vehicle::simple_spawn_single("technical_fountain_left");
	var_1c0f637 vehicle::lights_off();
	var_1c0f637 SetSeatOccupied(0);
	var_1c0f637 thread function_d01267bd(level.players.size, 2.5, "start_hendricks_move_up_battle_2");
	var_1c0f637 thread function_9e3af01c();
	level.var_a2059f5c = vehicle::simple_spawn_single("intro_cargo_truck");
	level.var_a2059f5c vehicle::lights_off();
	level.var_a2059f5c thread function_9e3af01c();
	level flag::wait_till("exterior_gone_hot");
	level.var_8bf4b572 vehicle::unload("all");
	level.var_a2059f5c vehicle::unload("all");
}

/*
	Name: function_55f744bd
	Namespace: namespace_5da6b440
	Checksum: 0xE3FEFEA2
	Offset: 0x5430
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_55f744bd(str_start_node)
{
	self SetCanDamage(0);
	self playsound("evt_sgen_technical_drive");
	self thread vehicle::get_on_and_go_path(str_start_node);
	self waittill("reached_end_node");
	self disconnectpaths();
	self SetCanDamage(1);
}

/*
	Name: function_524fa1f4
	Namespace: namespace_5da6b440
	Checksum: 0x6C0F7475
	Offset: 0x54D0
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_524fa1f4()
{
	level.var_48b27857 = spawner::simple_spawn_single("entrance_qtank");
	level.var_48b27857 ai::set_ignoreme(1);
	level.var_48b27857 ai::set_ignoreall(1);
	level.var_48b27857 DisableAimAssist();
	level.var_48b27857 notsolid();
	level.var_48b27857 namespace_16f9ecd3::disable_thermal();
	level.var_48b27857 clientfield::set("quad_tank_tac_mode", 1);
	level.var_48b27857 util::function_e218424d();
	level.var_48b27857 quadtank::quadtank_weakpoint_display(0);
	if(level.players.size == 1)
	{
		level.var_48b27857.health = 2500;
	}
	level thread scene::init("cin_sgen_03_01_qt_attack_vign_reveal_qt01");
	level thread scene::init("p7_fxanim_cp_sgen_quadtank_reveal_debris_bundle");
}

/*
	Name: function_34be1751
	Namespace: namespace_5da6b440
	Checksum: 0x7E4B7E22
	Offset: 0x5648
	Size: 0x86B
	Parameters: 0
	Flags: None
*/
function function_34be1751()
{
	level flag::wait_till("exterior_gone_hot");
	var_2ac88b1d = GetWeapon("ar_standard_hero", "acog", "fastreload", "extclip", "damage");
	level.var_2fd26037 ai::gun_switchto(var_2ac88b1d, "right");
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 ai::set_ignoreme(0);
	level.var_2fd26037.goalRadius = 2048;
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 1);
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "off");
	if(!level flag::get("hendricks_on_hill"))
	{
		trigger::use("trig_color_security_exterior");
	}
	var_c3354820 = GetEntArray("vol_hendricks_stealth", "targetname");
	while(!level flag::get("start_hendricks_move_up_battle_1"))
	{
		foreach(e_vol in var_c3354820)
		{
			if(isdefined(e_vol))
			{
				if(level.var_2fd26037 istouching(e_vol) && e_vol.var_87d0e81f === 1)
				{
					e_vol.var_87d0e81f = 1;
					level.var_2fd26037.var_5b14c02a = GetEnt(e_vol.script_noteworthy, "targetname");
					level.var_2fd26037 SetGoal(level.var_2fd26037.var_5b14c02a, 1);
					if(!level.var_2fd26037 istouching(level.var_2fd26037.var_5b14c02a))
					{
						wait(1);
					}
					e_vol.var_87d0e81f = 0;
				}
			}
		}
		wait(5);
	}
	level.var_2fd26037 ClearGoalVolume();
	foreach(e_vol in var_c3354820)
	{
		if(isdefined(e_vol))
		{
			if(level.var_2fd26037 istouching(e_vol))
			{
				switch(e_vol.script_noteworthy)
				{
					case "vol_security_room":
					{
						level.var_f60a06d4 = 1;
						var_dad69a16 = GetEnt("trig_color_move_security_1", "targetname");
						var_b4d41fad = GetEnt("trig_color_move_security_2", "targetname");
						var_8ed1a544 = GetEnt("trig_color_move_security_3", "targetname");
						break;
					}
					case "vol_driveway":
					{
						level.var_f60a06d4 = 0;
						var_dad69a16 = GetEnt("trig_color_move_middle_1", "targetname");
						var_b4d41fad = GetEnt("trig_color_move_middle_2", "targetname");
						var_8ed1a544 = GetEnt("trig_color_move_middle_3", "targetname");
						break;
					}
					case "vol_left_building_exterior":
					{
						level.var_f60a06d4 = 0;
						var_dad69a16 = GetEnt("trig_color_left_building_1", "targetname");
						var_b4d41fad = GetEnt("trig_color_left_building_2", "targetname");
						var_8ed1a544 = GetEnt("trig_color_move_middle_3", "targetname");
						break;
					}
					case "vol_left_building":
					{
						level.var_f60a06d4 = 0;
						var_dad69a16 = GetEnt("trig_color_left_building_1", "targetname");
						var_b4d41fad = GetEnt("trig_color_left_building_2", "targetname");
						var_8ed1a544 = GetEnt("trig_color_move_middle_3", "targetname");
						break;
					}
					case default:
					{
						level.var_f60a06d4 = 0;
						var_dad69a16 = GetEnt("trig_color_move_middle_1", "targetname");
						var_b4d41fad = GetEnt("trig_color_move_middle_2", "targetname");
						var_8ed1a544 = GetEnt("trig_color_move_middle_3", "targetname");
						break;
					}
				}
			}
		}
	}
	if(!isdefined(var_dad69a16))
	{
		var_dad69a16 = GetEnt("trig_color_move_middle_1", "targetname");
	}
	if(!isdefined(var_b4d41fad))
	{
		var_b4d41fad = GetEnt("trig_color_move_middle_2", "targetname");
	}
	if(!isdefined(var_8ed1a544))
	{
		var_8ed1a544 = GetEnt("trig_color_move_middle_3", "targetname");
	}
	trigger::use(var_dad69a16.targetname);
	level flag::wait_till("start_hendricks_move_up_battle_2");
	trigger::use(var_b4d41fad.targetname);
	level flag::wait_till("spawn_quad_tank");
	var_3cfcee01 = GetEnt("vol_enemy_middle", "targetname");
	level.var_2fd26037 SetGoal(var_3cfcee01);
	level flag::wait_till("qtank_fight_completed");
	battlechatter::function_d9f49fba(0);
}

/*
	Name: function_9200d313
	Namespace: namespace_5da6b440
	Checksum: 0x515E3852
	Offset: 0x5EC0
	Size: 0x3A3
	Parameters: 0
	Flags: None
*/
function function_9200d313()
{
	level flag::wait_till("activate_quad_tank");
	level thread function_da046478();
	level thread function_331e454();
	spawner::simple_spawn("quadtank_reinforcement_guy");
	level thread namespace_d40478f6::function_3440789f();
	trigger::use("obj_intro_breadcrumb_3");
	util::delay(4, undefined, &objectives::set, "cp_level_sgen_clear_entrance", level.var_48b27857);
	level.var_48b27857 ai::set_ignoreme(0);
	level.var_48b27857 ai::set_ignoreall(0);
	level.var_48b27857 EnableAimAssist();
	level.var_48b27857 solid();
	level.var_48b27857 namespace_16f9ecd3::function_b3ce91e0();
	level.var_48b27857 clientfield::set("quad_tank_tac_mode", 0);
	level.var_48b27857.team = "team3";
	var_3bc3122a = GetEnt("qt_intro_target", "targetname");
	level.var_48b27857 ai::shoot_at_target("shoot_until_target_dead", var_3bc3122a);
	level.var_48b27857 thread function_f2daaec0();
	level.var_48b27857 thread function_e6160d3();
	level util::delay(2, undefined, &flag::set, "exterior_gone_hot");
	if(isdefined(level.BZM_SGENDialogue1_2Callback))
	{
		level thread [[level.BZM_SGENDialogue1_2Callback]]();
	}
	level thread scene::Play("p7_fxanim_cp_sgen_quadtank_reveal_debris_bundle");
	level scene::add_scene_func("cin_sgen_03_01_qt_attack_vign_reveal_qt01", &function_dce4d116);
	level scene::Play("cin_sgen_03_01_qt_attack_vign_reveal_qt01");
	savegame::function_5d2cdd99();
	level.var_48b27857 quadtank::quadtank_weakpoint_display(1);
	level.var_48b27857.goalRadius = 512;
	level.var_48b27857 SetNearGoalNotifyDist(128);
	level.var_48b27857 thread function_b59ee5b9();
	level flag::wait_till("intro_quadtank_dead");
	level thread namespace_d40478f6::function_973b77f9();
	level flag::wait_till_clear("quad_tank_nag_vo_playing");
	level thread dialog::remote("kane_core_destabilized_q_0", 1);
}

/*
	Name: function_dce4d116
	Namespace: namespace_5da6b440
	Checksum: 0x720691E
	Offset: 0x6270
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_dce4d116(a_ents)
{
	level.var_48b27857 waittill("turn_on");
	level.var_48b27857 quadtank::quadtank_on();
}

/*
	Name: function_e6160d3
	Namespace: namespace_5da6b440
	Checksum: 0xB94C3C9E
	Offset: 0x62B0
	Size: 0x3E3
	Parameters: 0
	Flags: None
*/
function function_e6160d3()
{
	self endon("death");
	var_e5018 = [];
	var_e5018[0] = "kane_keep_hammering_its_t_1";
	var_e5018[1] = "hend_what_are_you_waiting_2";
	var_e5018[2] = "hend_trophy_system_s_mark_0";
	var_e5018[3] = "hend_ain_t_gonna_do_damag_0";
	var_e5018[4] = "kane_keep_firing_on_its_t_0";
	var_cb546862 = [];
	var_cb546862[0] = "kane_trophy_system_offlin_0";
	var_cb546862[1] = "kane_quad_defense_disable_0";
	var_cb546862[2] = "hend_c_mon_hit_it_the_rp_0";
	var_cb546862[3] = "kane_use_an_rpg_or_a_gren_0";
	var_cb546862[4] = "hend_only_a_few_more_shot_0";
	var_cb546862[5] = "hend_hurry_up_use_your_r_0";
	var_cb546862[6] = "hend_an_rpg_will_weaken_i_0";
	var_b3480890 = [];
	var_b3480890[0] = "kane_clean_hit_0";
	var_b3480890[1] = "hend_good_shot_that_ba_0";
	var_b3480890[2] = "kane_one_more_direct_hit_0";
	var_b3480890[3] = "kane_direct_hit_few_more_0";
	var_b3480890[4] = "hend_it_s_weakening_0";
	var_1085ad79 = [];
	var_1085ad79[0] = "hend_hit_its_defensive_sy_0";
	var_1085ad79[1] = "kane_keep_hammering_its_t_0";
	var_1085ad79[2] = "hend_we_re_shooting_blank_0";
	var_7685eec3 = [];
	var_7685eec3[0] = "kane_trophy_system_offlin_1";
	var_7685eec3[1] = "hend_this_is_it_hit_it_w_0";
	var_7685eec3[2] = "hend_c_mon_shoot_that_f_0";
	callback::on_vehicle_damage(&function_4fc8c2e, self);
	level dialog::remote("kane_find_cover_quad_un_0", 1);
	level.var_2fd26037 dialog::say("hend_that_bastard_should_0", 1.5);
	level dialog::remote("kane_quad_tanks_have_a_tr_0", 2);
	level dialog::remote("kane_hit_the_quad_s_troph_0", 0.5);
	self thread function_749f2173();
	self thread function_624e7d89();
	self thread namespace_855113f3::function_35209d64();
	self thread function_91175921("vo_trophy_system_destroyed", var_7685eec3, 5);
	self thread function_91175921("vo_trophy_system_disabled", var_cb546862, 10, "quad_tank_trophy_system_destroyed");
	self thread function_91175921("vo_trophy_system_enabled", var_e5018, 10, "quad_tank_trophy_system_destroyed");
	self thread function_91175921("vo_direct_hit", var_b3480890);
	self thread function_91175921("vo_bullet_damage", var_1085ad79, 30);
}

/*
	Name: function_624e7d89
	Namespace: namespace_5da6b440
	Checksum: 0xB3F0C19F
	Offset: 0x66A0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_624e7d89()
{
	self endon("death");
	self waittill("trophy_system_destroyed");
	level flag::set("quad_tank_trophy_system_destroyed");
	while(1)
	{
		level notify("hash_868c73b");
		wait(RandomFloatRange(10, 15));
	}
}

/*
	Name: function_749f2173
	Namespace: namespace_5da6b440
	Checksum: 0x7D85A368
	Offset: 0x6720
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_749f2173()
{
	self endon("death");
	self endon("trophy_system_destroyed");
	while(1)
	{
		self waittill("trophy_system_disabled");
		level notify("hash_828f5f9a");
		self waittill("trophy_system_enabled");
		level notify("hash_e6776989");
	}
}

/*
	Name: function_91175921
	Namespace: namespace_5da6b440
	Checksum: 0x354D43FF
	Offset: 0x6788
	Size: 0x251
	Parameters: 4
	Flags: None
*/
function function_91175921(str_notify, var_cbd11028, var_b6c00097, str_endon_flag)
{
	self endon("death");
	foreach(str_vo in var_cbd11028)
	{
		if(level flag::get("intro_quadtank_dead"))
		{
			return;
		}
		if(isdefined(str_endon_flag) && level flag::get(str_endon_flag))
		{
			return;
		}
		level waittill(str_notify);
		if(level flag::get("quad_tank_nag_vo_playing"))
		{
			str_msg = level util::waittill_any_timeout(5, "quad_tank_nag_vo_playing", "intro_quadtank_dead");
			if(str_msg == "timeout" || str_msg == "intro_quadtank_dead")
			{
				continue;
			}
		}
		level flag::set("quad_tank_nag_vo_playing");
		if(StrStartsWith(str_vo, "hend"))
		{
			level.var_2fd26037 dialog::say(str_vo);
		}
		else
		{
			level thread dialog::remote(str_vo);
			level waittill("hash_120cde7f", var_c8ee7e7d);
			var_c8ee7e7d waittillmatch("done speaking");
		}
		wait(1);
		level flag::clear("quad_tank_nag_vo_playing");
		if(isdefined(var_b6c00097))
		{
			wait(var_b6c00097);
		}
	}
}

/*
	Name: function_4fc8c2e
	Namespace: namespace_5da6b440
	Checksum: 0x317E7367
	Offset: 0x69E8
	Size: 0xFD
	Parameters: 2
	Flags: None
*/
function function_4fc8c2e(obj, params)
{
	if(isPlayer(params.eAttacker))
	{
		if(params.sMeansOfDeath === "MOD_RIFLE_BULLET")
		{
			if(params.partName != "tag_target_lower" && params.partName != "tag_target_upper" && params.partName != "tag_defense_active" && params.partName != "tag_body_animate")
			{
				level notify("hash_52293e91");
			}
		}
		if(params.weapon.name === "launcher_standard")
		{
			level notify("hash_e09e14de");
		}
	}
}

/*
	Name: function_b59ee5b9
	Namespace: namespace_5da6b440
	Checksum: 0x9E300B5C
	Offset: 0x6AF0
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_b59ee5b9()
{
	self endon("death");
	var_9f3a0049 = struct::get_array("quadtank_positions", "script_noteworthy");
	s_next_pos = Array::random(var_9f3a0049);
	while(1)
	{
		if(s_next_pos == s_next_pos)
		{
			s_next_pos = Array::random(var_9f3a0049);
		}
		self SetGoal(s_next_pos.origin, 1);
		self util::waittill_either("near_goal", "goal");
		if(s_next_pos.script_string === "qt_pos_back")
		{
			if(level.var_f60a06d4 === 1)
			{
				trigger::use("trig_color_qt_right_fallback");
			}
			else
			{
				trigger::use("trig_color_qt_left_fallback");
			}
		}
		if(s_next_pos.script_string === "qt_pos_back")
		{
			if(level.var_f60a06d4 === 1)
			{
				trigger::use("trig_color_qt_right_push");
			}
			else
			{
				trigger::use("trig_color_qt_left_push");
			}
		}
		wait(RandomFloatRange(6, 9));
	}
}

/*
	Name: function_f2daaec0
	Namespace: namespace_5da6b440
	Checksum: 0xC5B15EC9
	Offset: 0x6CC0
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_f2daaec0()
{
	scene::add_scene_func("p7_fxanim_cp_sgen_truck_flip_crates_bundle", &function_78ca0a7d);
	self waittill("fire");
	wait(0.2);
	level thread scene::Play("p7_fxanim_cp_sgen_truck_flip_crates_bundle");
	var_3f9c346d = struct::get("qtank_impact", "targetname");
	RadiusDamage(var_3f9c346d.origin, 180, 500, 90, self);
	a_nodes = GetNodeArray("qt_truck_nodes", "script_noteworthy");
	foreach(nd_node in a_nodes)
	{
		SetEnableNode(nd_node, 0);
	}
	var_df4fa6d = GetEntArray("pickup_carver", "targetname");
	foreach(e_ent in var_df4fa6d)
	{
		e_ent delete();
	}
}

/*
	Name: function_78ca0a7d
	Namespace: namespace_5da6b440
	Checksum: 0x71683FB
	Offset: 0x6EE8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_78ca0a7d(a_ents)
{
	level waittill("hash_8d9c68d3");
	a_ents["truck_flip"] SetModel("veh_t7_civ_truck_pickup_yell_dead_not_flat");
}

/*
	Name: function_32832330
	Namespace: namespace_5da6b440
	Checksum: 0xDE7F270E
	Offset: 0x6F38
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_32832330()
{
	level flag::wait_till("qtank_fight_completed");
	level flag::clear("player_at_sgen_entrance");
	objectives::set("cp_level_sgen_enter_sgen_no_pointer");
	objectives::breadcrumb("obj_intro_breadcrumb_3");
	trigger::wait_till("obj_intro_breadcrumb_3", "targetname", undefined, 0);
	objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
	level flag::wait_till("hendricks_at_lobby_idle");
	t_door = GetEnt("trig_lobby_entrance", "targetname");
	t_door TriggerEnable(1);
	util::function_14518e76(t_door, &"cp_prompt_dni_sgen_hack_door", &"CP_MI_SING_SGEN_HACK", &function_5d647309);
	level thread function_6d9af09f(t_door.origin);
}

/*
	Name: function_5d647309
	Namespace: namespace_5da6b440
	Checksum: 0xF2AE5AE
	Offset: 0x70B0
	Size: 0x523
	Parameters: 1
	Flags: None
*/
function function_5d647309(e_player)
{
	self gameobjects::disable_object();
	level flag::set("lobby_door_opening");
	level thread scene::Play("cin_sgen_03_03_undeadqt_1st_transmit_player", e_player);
	e_player cybercom::function_f8669cbf(1);
	e_player clientfield::set_to_player("sndCCHacking", 2);
	e_player util::delay(1, undefined, &clientfield::increment_to_player, "hack_dni_fx");
	wait(0.5);
	var_8cc17559 = GetEntArray("exterior_hack_panel", "targetname");
	foreach(model in var_8cc17559)
	{
		model SetModel("p7_sgen_door_access_panel_hacked");
	}
	e_player thread function_27f3c2cd();
	level waittill("hash_7507e989");
	if(isdefined(e_player))
	{
		e_player clientfield::set_to_player("sndCCHacking", 0);
	}
	a_m_doors = GetEntArray("lobby_entrance_doors", "script_noteworthy");
	foreach(m_door in a_m_doors)
	{
		bm_clip = GetEnt(m_door.target, "targetname");
		bm_clip LinkTo(m_door);
	}
	n_time = 1;
	n_accel = 0.25;
	n_decel = 0.25;
	foreach(m_door in a_m_doors)
	{
		if(m_door.targetname == "lobby_entrance_door_left")
		{
			v_move = AnglesToForward(m_door.angles) * -60;
			m_door moveto(m_door.origin + v_move, n_time, n_accel, n_decel);
			playsoundatposition("evt_lobby_door_open", m_door.origin);
			continue;
		}
		v_move = AnglesToForward(m_door.angles) * 60;
		m_door moveto(m_door.origin + v_move, n_time, n_accel, n_decel);
	}
	wait(n_time);
	foreach(m_door in a_m_doors)
	{
		m_door connectpaths();
	}
	level flag::set("lobby_door_opened");
	self gameobjects::destroy_object(1);
}

/*
	Name: function_27f3c2cd
	Namespace: namespace_5da6b440
	Checksum: 0x4B061B13
	Offset: 0x75E0
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_27f3c2cd()
{
	level endon("hash_7507e989");
	self waittill("death");
	level notify("hash_7507e989");
}

/*
	Name: function_6d9af09f
	Namespace: namespace_5da6b440
	Checksum: 0x1456EBFC
	Offset: 0x7618
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_6d9af09f(sndOrigin)
{
	level waittill("hash_6d9af09f");
	playsoundatposition("evt_lobby_door_panelhack", sndOrigin);
}

/*
	Name: function_2c76d8aa
	Namespace: namespace_5da6b440
	Checksum: 0x2F5537B4
	Offset: 0x7658
	Size: 0x38B
	Parameters: 2
	Flags: None
*/
function function_2c76d8aa(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_d97219ae();
		spawner::simple_spawn_single("entrance_qtank", &function_86c5b0ca);
		exploder::exploder("sgen_flying_IGC");
		SGEN::function_bff1a867(str_objective);
		objectives::complete("cp_level_sgen_clear_entrance");
		t_door = GetEnt("trig_lobby_entrance", "targetname");
		t_door TriggerEnable(0);
		level flag::set("player_at_sgen_entrance");
		level flag::set("qtank_fight_completed");
		load::function_a2995f22();
		level thread function_32832330();
	}
	collectibles::add_collectible_params("p7_nc_sin_coa_02", undefined, VectorScale((0, -1, 0), 8));
	collectibles::function_37aecd21();
	SetDvar("ai_awarenessenabled", 0);
	scene::init("p7_fxanim_cp_sgen_overhang_building_glass_bundle");
	level thread function_b50db732();
	level thread function_51fb0632();
	level.var_2fd26037 thread function_68742ac0(var_74cd64bc);
	level flag::wait_till("lobby_door_opened");
	level scene::init("cin_sgen_05_01_discoverdata_vign_lookaround_bodies");
	level scene::init("pb_sgen_data_discovery_hack");
	if(isdefined(level.BZM_SGENDialogue1_3Callback))
	{
		level thread [[level.BZM_SGENDialogue1_3Callback]]();
	}
	exploder::exploder("lgt_sgen_obelisk_lobby");
	level.var_75c82874 = 1;
	objectives::complete("cp_level_sgen_hack_door");
	objectives::set("cp_level_sgen_investigate_sgen");
	var_c7d2cbe9 = GetEnt("trig_post_discover_data", "targetname");
	var_c7d2cbe9 TriggerEnable(0);
	trigger::wait_till("discover_data_breadcrumb_2");
	if(isdefined(level.BZM_SGENDialogue1_3Callback_Waittill_Done))
	{
		[[level.BZM_SGENDialogue1_3Callback_Waittill_Done]]();
	}
	function_547e0499();
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_86c5b0ca
	Namespace: namespace_5da6b440
	Checksum: 0x6D895506
	Offset: 0x79F0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_86c5b0ca()
{
	self.team = "neutral";
	self ai::set_ignoreme(1);
	level thread scene::init("cin_sgen_03_01_qt_attack_vign_reveal_qt01");
	level flag::wait_till("player_past_shimmy_wall");
	self delete();
}

/*
	Name: function_8903df94
	Namespace: namespace_5da6b440
	Checksum: 0x7D6732CC
	Offset: 0x7A80
	Size: 0x17B
	Parameters: 4
	Flags: None
*/
function function_8903df94(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(!(isdefined(level.var_75c82874) && level.var_75c82874))
	{
		level.var_75c82874 = 1;
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
	}
	struct::delete_script_bundle("scene", "cin_sgen_02_05_exterior_vign_using_ipad_guy01");
	struct::delete_script_bundle("scene", "cin_sgen_03_01_qt_attack_vign_reveal_qt01");
	struct::delete_script_bundle("scene", "cin_sgen_03_03_undeadqt_1st_transmit_player");
	struct::delete_script_bundle("scene", "cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks");
	struct::delete_script_bundle("scene", "cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks_moveintolobby");
	struct::delete_script_bundle("scene", "cin_sgen_04_01_lobby_vign_react_hendricks");
	function_9e3608e3("sgen_ocean_water");
	var_dee3d10a = GetEnt("discover_data_tele", "script_flag_set");
	var_dee3d10a.script_objective = "discover_data";
}

/*
	Name: function_51fb0632
	Namespace: namespace_5da6b440
	Checksum: 0x2013F052
	Offset: 0x7C08
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_51fb0632()
{
	level flag::wait_till("player_in_lobby");
	function_acdfe1fe("cp_sgen_env_LobbyMovie", 1);
	var_910bc1f3 = spawn("script_origin", (1414, -432, 304));
	var_910bc1f3 PlayLoopSound("amb_billboard_glitch_loop");
	sndent = spawn("script_origin", (-6, -1301, 250));
	sndent playsound("mus_coalescence_theme_lobby");
	wait(6);
	sndent playsound("mus_coalescence_theme_lobby_underscore");
	sndent dialog::say("rbot_welcome_to_coalescen_0");
	wait(45);
	sndent delete();
}

/*
	Name: function_b50db732
	Namespace: namespace_5da6b440
	Checksum: 0x4BD73914
	Offset: 0x7D58
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_b50db732()
{
	level flag::wait_till("player_at_sgen_entrance");
	level waittill("hash_33481609");
	objectives::set("cp_level_sgen_investigate_sgen");
	objectives::set("cp_level_sgen_investigate_sgen_atrium");
	objectives::breadcrumb("discover_data_breadcrumb_2");
}

/*
	Name: function_68742ac0
	Namespace: namespace_5da6b440
	Checksum: 0x48FE1EB5
	Offset: 0x7DE0
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_68742ac0(var_640e871b)
{
	level flag::wait_till("qtank_fight_completed");
	self ai::set_behavior_attribute("cqb", 1);
	self ai::set_behavior_attribute("sprint", 1);
	self colors::disable();
	level thread scene::Play("cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks");
	level util::waittill_any_timeout(25, "cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks_done");
	level flag::set("hendricks_at_lobby_idle");
	self thread function_79f61708();
	level flag::wait_till("lobby_door_opening");
	level scene::Play("cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks_moveintolobby");
	level.var_2fd26037 thread function_d05c5d63();
	level scene::Play("cin_sgen_04_01_lobby_vign_react_hendricks");
	self colors::set_force_color("r");
	self colors::enable();
	trigger::use("trig_hendricks_lobby_color");
	self waittill("goal");
	level notify("hash_33481609");
	level flag::wait_till("player_at_data_doors");
	level flag::set("hendricks_at_silo_doors");
}

/*
	Name: function_79f61708
	Namespace: namespace_5da6b440
	Checksum: 0x5096D4D0
	Offset: 0x8008
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_79f61708()
{
	level flag::wait_till("hendricks_at_lobby_idle");
	level dialog::remote("kane_interface_with_that_2");
	if(level flag::get("lobby_door_opening"))
	{
		return;
	}
	level endon("hash_6a13f4bf");
	wait(5);
	self dialog::say("hend_hey_let_s_go_0");
}

/*
	Name: function_d05c5d63
	Namespace: namespace_5da6b440
	Checksum: 0x3625094E
	Offset: 0x80A8
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_d05c5d63()
{
	self waittill("hash_b32ba9d");
	foreach(e_player in level.activePlayers)
	{
		if(Distance(self.origin, e_player.origin) <= 500)
		{
			self dialog::say("hend_don_t_get_skittish_0");
			break;
		}
	}
}

/*
	Name: function_547e0499
	Namespace: namespace_5da6b440
	Checksum: 0xC486EC5B
	Offset: 0x8188
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_547e0499()
{
	level flag::wait_till("hendricks_at_silo_doors");
	objectives::complete("cp_level_sgen_investigate_sgen");
	objectives::complete("cp_level_sgen_investigate_sgen_atrium");
	level.var_2fd26037 cybercom::function_f8669cbf(1);
	level.var_2fd26037 dialog::say("hend_interfacing_with_the_0");
	foreach(player in level.players)
	{
		player clientfield::set_to_player("sndSiloBG", 1);
	}
	wait(0.5);
	var_280d5f68 = GetEnt("silo_door_left", "targetname");
	var_3c301126 = GetEnt("silo_door_right", "targetname");
	var_280d5f68 RotateYaw(var_280d5f68.script_int, 1, 0.25, 0.4);
	playsoundatposition("evt_silo_door_open", var_280d5f68.origin);
	var_3c301126 RotateYaw(var_3c301126.script_int, 1, 0.25, 0.4);
	playsoundatposition("evt_silo_door_open", var_3c301126.origin);
	var_3c301126 waittill("rotatedone");
	level flag::set("silo_door_opened");
}

/*
	Name: function_6808f370
	Namespace: namespace_5da6b440
	Checksum: 0x5DA114A0
	Offset: 0x8420
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_6808f370()
{
	self endon("death");
	self endon("hash_1592960");
	level endon("hash_766878c3");
	var_32e6e795 = 0;
	var_50cacf55 = undefined;
	do
	{
		var_32e6e795 = 0;
		if(self.should_stop_patrolling === 1)
		{
			var_32e6e795 = 1;
		}
		var_32e6e795 = 1;
		var_50cacf55 = player;
		break;
		wait(0.1);
	}
	while(!!var_32e6e795);
	else
	{
		foreach(player in level.players)
		{
			if(!isdefined(player.active_camo) && player.active_camo && self cansee(player))
			{
			}
		}
	}
	self thread function_94a23f13(var_50cacf55);
}

/*
	Name: function_d01267bd
	Namespace: namespace_5da6b440
	Checksum: 0x35EBAA17
	Offset: 0x8590
	Size: 0x183
	Parameters: 3
	Flags: None
*/
function function_d01267bd(var_2e939094, n_delay, str_endon)
{
	if(!isdefined(var_2e939094))
	{
		var_2e939094 = 1;
	}
	if(!isdefined(n_delay))
	{
		n_delay = 1;
	}
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self endon("death");
	if(isdefined(str_endon))
	{
		level endon(str_endon);
	}
	level flag::wait_till("exterior_gone_hot");
	self turret::enable(1, 1);
	n_guys = 0;
	while(n_guys < var_2e939094)
	{
		ai_gunner = self vehicle::get_rider("gunner1");
		if(isalive(ai_gunner))
		{
			ai_gunner waittill("death");
		}
		else
		{
			ai_gunner = function_392ca6eb(self);
			if(isalive(ai_gunner))
			{
				ai_gunner vehicle::get_in(self, "gunner1", 0);
				n_guys++;
			}
		}
		wait(n_delay);
	}
}

/*
	Name: function_392ca6eb
	Namespace: namespace_5da6b440
	Checksum: 0xB97CCD92
	Offset: 0x8720
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_392ca6eb(vh_truck)
{
	a_ai_enemies = GetAIArchetypeArray("human", "axis");
	a_ai_gunners = ArraySortClosest(a_ai_enemies, vh_truck.origin);
	return a_ai_gunners[0];
}

/*
	Name: function_9e3af01c
	Namespace: namespace_5da6b440
	Checksum: 0xA4F5CA0D
	Offset: 0x8798
	Size: 0x249
	Parameters: 0
	Flags: None
*/
function function_9e3af01c()
{
	level endon("hash_a4b7fa05");
	while(1)
	{
		self waittill("damage", n_damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(weapon == level.var_b27f706d || weapon == level.var_51d112fe || weapon == level.var_9e92e4b8)
		{
			self DoDamage(self.health, self.origin);
			break;
		}
	}
	v_launch = AnglesToForward(self.angles) * -350 + VectorScale((0, 0, 1), 200);
	v_org = self.origin + AnglesToForward(self.angles) * 10;
	self LaunchVehicle(v_launch, v_org, 0);
	self thread function_a2ef2c8c();
	a_ai_riders = self.riders;
	foreach(ai in a_ai_riders)
	{
		ai DoDamage(ai.health, ai.origin);
	}
}

/*
	Name: function_a2ef2c8c
	Namespace: namespace_5da6b440
	Checksum: 0x53B32BD0
	Offset: 0x89F0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_a2ef2c8c()
{
	self endon("death");
	if(isdefined(60))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(60, "timeout");
	}
	self waittill("veh_landed");
	if(isdefined(self))
	{
		self playsound("evt_truck_impact");
	}
}

/*
	Name: function_210baecb
	Namespace: namespace_5da6b440
	Checksum: 0x5F8CF1B0
	Offset: 0x8A90
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_210baecb()
{
	self endon("death");
	while(1)
	{
		self waittill("weapon_change");
		if(self GetCurrentWeapon() == GetWeapon("launcher_standard"))
		{
			self thread function_7aa1381();
			break;
		}
	}
}

/*
	Name: function_7aa1381
	Namespace: namespace_5da6b440
	Checksum: 0x933B3066
	Offset: 0x8B10
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_7aa1381()
{
	self endon("death");
	self endon("hash_b6eb1761");
	if(!isdefined(self.var_c142b118))
	{
		self util::show_hint_text(&"COOP_EQUIP_XM53", 0, "weapon_swap_learned", 10);
		n_timeout = 0;
		while(self GetCurrentWeapon() == GetWeapon("launcher_standard") && n_timeout <= 10)
		{
			n_timeout = n_timeout + 0.1;
			wait(0.1);
		}
		self.var_c142b118 = 1;
		self util::hide_hint_text();
		self notify("hash_b6eb1761");
	}
}

