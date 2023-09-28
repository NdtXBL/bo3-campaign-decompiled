#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_dark_battle;
#using scripts\cp\cp_mi_sing_sgen_revenge_igc;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_646f304f;

/*
	Name: function_1a420bcd
	Namespace: namespace_646f304f
	Checksum: 0x6747035E
	Offset: 0x17E0
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function function_1a420bcd(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		objectives::complete("cp_level_sgen_goto_server_room");
		function_4ef8cf79();
		level flag::set("weapons_research_vo_done");
		load::function_a2995f22();
	}
	level thread function_3a855484();
	level thread function_dda88b2e();
	level function_b8e4148d();
	objectives::set("cp_level_sgen_confront_pallas", level.var_7f246cd7);
}

/*
	Name: function_d15424d7
	Namespace: namespace_646f304f
	Checksum: 0x6CE56024
	Offset: 0x1940
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_d15424d7(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	struct::delete_script_bundle("cin_sgen_14_humanlab_3rd_sh005");
}

/*
	Name: function_1f2baf43
	Namespace: namespace_646f304f
	Checksum: 0x2CC80ADA
	Offset: 0x1988
	Size: 0x551
	Parameters: 2
	Flags: None
*/
function function_1f2baf43(str_objective, var_74cd64bc)
{
	objectives::complete("cp_level_sgen_goto_server_room");
	spawner::add_spawn_function_group("pallas_bot", "script_noteworthy", &function_a44a2f8d);
	spawner::add_spawn_function_group("pallas_core_guard", "script_noteworthy", &function_c92b9eaf);
	spawner::add_spawn_function_group("pallas_center_guard", "script_noteworthy", &function_a198a1);
	level flag::set("pallas_start");
	level.var_e16e585d = 0;
	level.var_e259308b = 0;
	level.var_9945a95d = 0;
	level.var_844375bd = struct::get_array("pallas_robot_dropdown");
	level thread function_7362d6c4();
	if(var_74cd64bc)
	{
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		objectives::complete("cp_level_sgen_goto_server_room");
		objectives::set("cp_level_sgen_confront_pallas");
		function_4ef8cf79();
		function_6e72c0ab("back", "open");
		var_be31aa9a = GetEnt("boss_fight_lift", "targetname");
		var_be31aa9a MoveZ(-1750, 0.1);
		load::function_a2995f22();
		level thread function_3a855484();
		Array::thread_all(level.players, &clientfield::set_to_player, "pallas_monitors_state", 2);
	}
	level thread function_8470b8c(var_74cd64bc);
	level thread function_4ee50667(var_74cd64bc);
	foreach(e_player in level.players)
	{
		e_player util::function_df6eb506(1);
	}
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_2fd26037 colors::set_force_color("r");
	level thread function_ab0e4cbe();
	level thread function_1497c676();
	level thread namespace_cba4cc55::delete_corpse();
	level thread function_c88aca45();
	level thread function_ecf57b76();
	level flag::wait_till("core_two_destroyed");
	level thread function_4301ab5f();
	level flag::wait_till("pallas_death");
	level notify("hash_f42cafec");
	var_915bcd4e = GetAITeamArray("team3");
	foreach(bot in var_915bcd4e)
	{
		bot delete();
	}
}

/*
	Name: function_5a8d1289
	Namespace: namespace_646f304f
	Checksum: 0xEA5CF40B
	Offset: 0x1EE8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_5a8d1289(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_bf36708e
	Namespace: namespace_646f304f
	Checksum: 0x34C54305
	Offset: 0x1F18
	Size: 0x43F
	Parameters: 2
	Flags: None
*/
function function_bf36708e(str_objective, var_74cd64bc)
{
	var_be31aa9a = GetEnt("boss_fight_lift", "targetname");
	level thread function_3452571c();
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		var_587da295 = GetEnt("pallas", "targetname");
		var_587da295 spawner::add_spawn_function(&function_ff91efc5);
		spawner::simple_spawn(var_587da295);
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::complete("cp_level_sgen_descend_into_core");
		objectives::complete("cp_level_sgen_goto_signal_source");
		objectives::complete("cp_level_sgen_goto_server_room");
		objectives::complete("cp_level_sgen_confront_pallas");
		function_4ef8cf79();
		function_6e72c0ab("back", "open");
		var_be31aa9a MoveZ(-1750, 0.05);
		level thread scene::init("cin_sgen_19_ghost_3rd_sh010");
		load::function_a2995f22();
	}
	else
	{
		level.var_cd52fefe = GetTime();
		util::screen_fade_out(0.25, "black", "ghost_fade");
		level util::player_lock_control();
	}
	Array::thread_all(level.players, &clientfield::set_to_player, "pallas_monitors_state", 3);
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	level thread function_d6b86f3d();
	level scene::add_scene_func("cin_sgen_19_ghost_3rd_sh010", &function_48b24f3d, "play");
	level scene::add_scene_func("cin_sgen_19_ghost_3rd_sh040", &function_ac1384da, "play");
	level scene::add_scene_func("cin_sgen_19_ghost_3rd_sh110", &function_c524f1b2, "play");
	level scene::add_scene_func("cin_sgen_19_ghost_3rd_sh050", &function_7d1791ba, "done");
	level scene::add_scene_func("cin_sgen_19_ghost_3rd_sh190", &function_90b577e6, "done");
	level thread scene::Play("p7_fxanim_cp_sgen_pallas_ai_tower_collapse_bundle");
	level thread function_38ce56e0();
	level clientfield::set("set_exposure_bank", 1);
	level scene::Play("cin_sgen_19_ghost_3rd_sh010");
	if(isdefined(level.BZM_SGENDialogue8Callback))
	{
		level thread [[level.BZM_SGENDialogue8Callback]]();
	}
}

/*
	Name: function_509b3c70
	Namespace: namespace_646f304f
	Checksum: 0x7176DD74
	Offset: 0x2360
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_509b3c70(a_ents)
{
	level waittill("hash_74753696");
	level util::screen_fade_out(0.45, "black", "twin_cover");
}

/*
	Name: function_6610aebe
	Namespace: namespace_646f304f
	Checksum: 0xD0FC3A01
	Offset: 0x23B0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_6610aebe(a_ents)
{
	a_ents["pallas_ai_tower"] ghost();
}

/*
	Name: function_c5372adb
	Namespace: namespace_646f304f
	Checksum: 0xC8D3AD1B
	Offset: 0x23E8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_c5372adb(a_ents)
{
	a_ents["pallas_ai_tower"] show();
}

/*
	Name: function_48b24f3d
	Namespace: namespace_646f304f
	Checksum: 0xDA7067EB
	Offset: 0x2420
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_48b24f3d(a_ents)
{
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 ghost();
	}
	if(isdefined(level.var_cd52fefe) && GetTime() - level.var_cd52fefe < 500)
	{
		util::wait_network_frame();
	}
	util::screen_fade_in(0, "black", "ghost_fade");
}

/*
	Name: function_ac1384da
	Namespace: namespace_646f304f
	Checksum: 0x9AE2C908
	Offset: 0x24C0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_ac1384da(a_ents)
{
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 show();
	}
}

/*
	Name: function_7d1791ba
	Namespace: namespace_646f304f
	Checksum: 0xA97FF07E
	Offset: 0x2500
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_7d1791ba(a_ents)
{
	level.var_7f246cd7 SetGoal(level.var_7f246cd7.origin, 1);
	level.var_7f246cd7.goalRadius = 8;
}

/*
	Name: function_c524f1b2
	Namespace: namespace_646f304f
	Checksum: 0xD17421B9
	Offset: 0x2558
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_c524f1b2(a_ents)
{
	foreach(var_9544d7c1 in a_ents)
	{
		if(var_9544d7c1 == level.var_2fd26037)
		{
			var_9544d7c1 cybercom::function_f8669cbf(1);
		}
	}
}

/*
	Name: function_38ce56e0
	Namespace: namespace_646f304f
	Checksum: 0xAFB47465
	Offset: 0x2608
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_38ce56e0()
{
	wait(0.05);
	var_b05603a8 = GetEntArray("pallas_core_destruct", "targetname");
	Array::run_all(var_b05603a8, &delete);
	var_8c77ffe9 = GetEntArray("pallas_rail_destruct", "targetname");
	Array::run_all(var_8c77ffe9, &delete);
}

/*
	Name: function_e3c54b48
	Namespace: namespace_646f304f
	Checksum: 0xDC13DE59
	Offset: 0x26C0
	Size: 0xC9
	Parameters: 4
	Flags: None
*/
function function_e3c54b48(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_sgen_confront_pallas");
	if(!var_74cd64bc)
	{
		foreach(e_player in level.players)
		{
			e_player util::function_df6eb506(0);
		}
	}
}

/*
	Name: function_90b577e6
	Namespace: namespace_646f304f
	Checksum: 0x46C6EEC3
	Offset: 0x2798
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_90b577e6(a_ents)
{
	util::clear_streamer_hint();
	skipto::function_be8adfb8("pallas_end");
}

/*
	Name: function_b8e4148d
	Namespace: namespace_646f304f
	Checksum: 0x3AF9C904
	Offset: 0x27D8
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_b8e4148d()
{
	level waittill("hash_f913de07");
	if(isdefined(level.BZM_SGENDialogue7Callback))
	{
		level thread [[level.BZM_SGENDialogue7Callback]]();
	}
	level dialog::remote("diaz_listen_do_you_hea_0");
	level dialog::remote("diaz_there_is_blood_on_ou_0", 0.5);
	level dialog::remote("diaz_you_know_who_i_am_i_0", 1);
	level dialog::function_13b3b16a("plyr_kane_i_ve_got_diaz_0", 0.3);
	level dialog::remote("diaz_taylor_is_right_0", 0.5);
	level dialog::remote("kane_oh_my_god_he_s_wi_0", 0.4);
	level dialog::remote("kane_he_s_directly_contro_0");
	level dialog::remote("kane_listen_to_me_we_0", 1);
	level dialog::remote("kane_right_now_he_s_uploa_0", 1);
}

/*
	Name: function_5ac1b440
	Namespace: namespace_646f304f
	Checksum: 0xDEA1BF08
	Offset: 0x2950
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_5ac1b440()
{
	var_8df90b18 = GetEntArray("pallas_elevator_probe", "targetname");
	a_lights = GetEntArray("pallas_elevator_light", "script_noteworthy");
	var_be31aa9a = GetEnt("boss_fight_lift", "targetname");
	Array::run_all(a_lights, &LinkTo, var_be31aa9a);
	Array::run_all(var_8df90b18, &LinkTo, var_be31aa9a);
}

/*
	Name: function_3a855484
	Namespace: namespace_646f304f
	Checksum: 0x1C0C2718
	Offset: 0x2A38
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_3a855484()
{
	scene::add_scene_func("cin_sgen_18_01_pallasfight_vign_crucifix_pallas_loop", &function_517f8c74, "play");
	var_587da295 = GetEnt("pallas", "targetname");
	var_764b080d = GetEnt("pallas2", "targetname");
	var_587da295 spawner::add_spawn_function(&function_ff91efc5);
	var_764b080d spawner::add_spawn_function(&function_ff91efc5, 1);
	level thread scene::Play("cin_sgen_18_01_pallasfight_vign_crucifix_pallas_loop");
	function_acdfe1fe("cp_sgen_env_diazserver", 1);
	level waittill("hash_2e9dd028");
	function_4a0fb95e("cp_sgen_env_diazserver");
	function_acdfe1fe("cp_sgen_env_diazserver", 1);
	level thread scene::Play("cin_sgen_18_01_pallasfight_vign_crucifix_pallas_stage2");
	level waittill("hash_2e9dd028");
	function_4a0fb95e("cp_sgen_env_diazserver");
	function_acdfe1fe("cp_sgen_env_diazserver", 1);
	level thread scene::Play("cin_sgen_18_01_pallasfight_vign_crucifix_pallas_stage3");
	level waittill("hash_eb30fd63");
	function_4a0fb95e("cp_sgen_env_diazserver");
}

/*
	Name: function_517f8c74
	Namespace: namespace_646f304f
	Checksum: 0xEDE493D
	Offset: 0x2C58
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_517f8c74(a_ents)
{
	level.var_7f246cd7 = a_ents["pallas_model"];
}

/*
	Name: function_ff91efc5
	Namespace: namespace_646f304f
	Checksum: 0x32506DD6
	Offset: 0x2C80
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_ff91efc5(var_74bf1e88)
{
	if(!isdefined(var_74bf1e88))
	{
		var_74bf1e88 = 0;
	}
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self DisableAimAssist();
	self.allowdeath = 0;
	self.noCybercom = 1;
	if(var_74bf1e88)
	{
		self SetForceNoCull();
		level.var_e934a4b7 = self;
	}
	else
	{
		level.var_7f246cd7 = self;
	}
}

/*
	Name: function_1497c676
	Namespace: namespace_646f304f
	Checksum: 0x40A63F23
	Offset: 0x2D40
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_1497c676()
{
	level namespace_4c73eafb::function_a8cfe9ae();
	level.var_2fd26037.ignoreme = 1;
	var_35925132 = struct::get("hendrick_console_hack", "targetname");
	level thread scene::Play("cin_sgen_18_01_pallasfight_vign_controls_hendricks_active", level.var_2fd26037);
	level waittill("hash_7d401fb9");
	var_35925132 thread scene::stop("cin_sgen_18_01_pallasfight_vign_controls_hendricks_active");
}

/*
	Name: main
	Namespace: namespace_646f304f
	Checksum: 0x99EC1590
	Offset: 0x2DF8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function main()
{
}

/*
	Name: function_8470b8c
	Namespace: namespace_646f304f
	Checksum: 0x17C1CB7D
	Offset: 0x2E08
	Size: 0x199
	Parameters: 1
	Flags: None
*/
function function_8470b8c(var_74cd64bc)
{
	level.var_51a695e5 = [];
	level.var_38f0e071 = [];
	level.var_87d58962 = [];
	var_91f66e00 = GetEntArray("pallas_intro_spawner", "targetname");
	foreach(var_dc854c29 in var_91f66e00)
	{
		var_f6c5842 = spawner::simple_spawn_single(var_dc854c29);
		if(isdefined(var_f6c5842))
		{
			if(var_74cd64bc)
			{
				if(isdefined(var_f6c5842.target))
				{
					nd_goal = GetNode(var_f6c5842.target, "targetname");
					var_f6c5842 ForceTeleport(nd_goal.origin, nd_goal.angles);
				}
			}
			var_f6c5842 thread function_f0f76126();
			util::wait_network_frame();
		}
	}
}

/*
	Name: function_ecf57b76
	Namespace: namespace_646f304f
	Checksum: 0x48201DAA
	Offset: 0x2FB0
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_ecf57b76()
{
	level endon("hash_eb30fd63");
	while(!level flag::get("pallas_death"))
	{
		level.var_51a695e5 = Array::remove_dead(level.var_51a695e5);
		level.var_38f0e071 = Array::remove_dead(level.var_38f0e071);
		level.var_87d58962 = Array::remove_dead(level.var_87d58962);
		wait(5);
	}
	level.var_51a695e5 = undefined;
	level.var_38f0e071 = undefined;
	level.var_87d58962 = undefined;
}

/*
	Name: function_a7dc2319
	Namespace: namespace_646f304f
	Checksum: 0x8FD68560
	Offset: 0x3068
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_a7dc2319()
{
	self endon("death");
	self ai::set_ignoreall(1);
	level flag::wait_till("pallas_ambush_over");
	self ai::set_ignoreall(0);
}

/*
	Name: function_a44a2f8d
	Namespace: namespace_646f304f
	Checksum: 0x27E5CE90
	Offset: 0x30D0
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_a44a2f8d()
{
	self endon("death");
	self.accuracy = 0.25;
	self ai::set_behavior_attribute("rogue_control_speed", "sprint");
	switch(level.var_e16e585d)
	{
		case 0:
		{
			self ai::set_behavior_attribute("rogue_control", "forced_level_1");
			break;
		}
		case 1:
		{
			self ai::set_behavior_attribute("rogue_control", "forced_level_2");
			break;
		}
		case 2:
		{
			self ai::set_behavior_attribute("rogue_control", "forced_level_2");
			self.script_string = "potential_hendricks_bot";
			self thread function_39072821();
			break;
		}
		case 3:
		{
			self thread function_39072821();
			break;
		}
	}
	if(!level flag::get("pallas_ambush_over"))
	{
		self thread function_a7dc2319();
	}
	else
	{
		self function_969fe47();
	}
	level flag::wait_till("pallas_ambush_over");
	var_b97ded2e = GetEnt("pallas_tier_two_volume", "targetname");
	self SetGoal(var_b97ded2e);
}

/*
	Name: function_a198a1
	Namespace: namespace_646f304f
	Checksum: 0xC8D02C2F
	Offset: 0x32C0
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_a198a1()
{
	self endon("death");
	self.accuracy = 0.25;
	self ai::set_behavior_attribute("rogue_control", "forced_level_1");
	self ai::set_behavior_attribute("can_become_rusher", 0);
	if(!level flag::get("pallas_ambush_over"))
	{
		self thread function_a7dc2319();
	}
	else
	{
		self function_969fe47();
	}
	level flag::wait_till("pallas_ambush_over");
	if(level.var_51a695e5.size < 3)
	{
		level.var_51a695e5[level.var_51a695e5.size] = self;
		var_b97ded2e = GetEnt("pallas_center_volume", "targetname");
	}
	else if(level.var_38f0e071.size < 6)
	{
		level.var_38f0e071[level.var_38f0e071.size] = self;
		var_b97ded2e = GetEnt("pallas_tier_two_volume", "targetname");
	}
	else
	{
		level.var_87d58962[level.var_87d58962.size] = self;
		var_b97ded2e = GetEnt("pallas_bottom_tier", "targetname");
	}
	self SetGoal(var_b97ded2e, 1);
	self thread function_39072821();
}

/*
	Name: function_c92b9eaf
	Namespace: namespace_646f304f
	Checksum: 0xC49617DD
	Offset: 0x34B8
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_c92b9eaf()
{
	self endon("death");
	self.accuracy = 0.25;
	self ai::set_behavior_attribute("rogue_control", "forced_level_1");
	self ai::set_behavior_attribute("force_cover", 1);
	self ai::set_behavior_attribute("can_become_rusher", 0);
	self function_969fe47();
	level.var_e259308b++;
	nd_guard = GetNode("core_guard" + level.var_e259308b, "script_noteworthy");
	var_b97ded2e = GetEnt("pallas_center_volume", "targetname");
	if(!isdefined(nd_guard) || IsNodeOccupied(nd_guard))
	{
		self SetGoal(var_b97ded2e, 1, 16, 16);
	}
	else
	{
		self SetGoal(nd_guard, 1, 16, 16);
	}
	self thread function_39072821();
}

/*
	Name: function_969fe47
	Namespace: namespace_646f304f
	Checksum: 0xFF06363A
	Offset: 0x3660
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_969fe47()
{
	self flag::init("in_playable_space");
	var_85919dec = Array::random(level.var_844375bd);
	var_85919dec scene::Play("cin_sgen_18_01_pallasfight_aie_jumpdown_robot01", self);
	self flag::set("in_playable_space");
}

/*
	Name: function_39072821
	Namespace: namespace_646f304f
	Checksum: 0x1138FDF8
	Offset: 0x36F0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_39072821()
{
	self endon("death");
	level flag::wait_till("tower_three_destroyed");
	self ai::set_behavior_attribute("rogue_control", "forced_level_3");
	if(GetTime() < level.var_94d58561)
	{
		self ai::set_behavior_attribute("rogue_control_speed", "run");
	}
	else
	{
		self ai::set_behavior_attribute("rogue_control_speed", "sprint");
	}
}

/*
	Name: function_4ef8cf79
	Namespace: namespace_646f304f
	Checksum: 0x22E22857
	Offset: 0x37B0
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_4ef8cf79()
{
	var_be31aa9a = GetEnt("boss_fight_lift", "targetname");
	var_be31aa9a SetMovingPlatformEnabled(1);
	var_be31aa9a.var_b2ce92e0 = [];
	var_be31aa9a.var_b2ce92e0["front"] = GetEnt("pallas_lift_front", "targetname");
	var_be31aa9a.var_b2ce92e0["front"].str_state = "close";
	var_be31aa9a.var_b2ce92e0["back"] = GetEnt("pallas_lift_back", "targetname");
	var_be31aa9a.var_b2ce92e0["back"].str_state = "close";
	Array::run_all(var_be31aa9a.var_b2ce92e0, &LinkTo, var_be31aa9a);
	var_be31aa9a.var_b2ce92e0["front"] clientfield::set("sm_elevator_door_state", 1);
	var_be31aa9a.var_b2ce92e0["back"] clientfield::set("sm_elevator_door_state", 2);
}

/*
	Name: function_6e72c0ab
	Namespace: namespace_646f304f
	Checksum: 0xB7E55B32
	Offset: 0x3978
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_6e72c0ab(str_side, str_state)
{
	var_be31aa9a = GetEnt("boss_fight_lift", "targetname");
	if(!var_be31aa9a.var_b2ce92e0[str_side].str_state === str_state)
	{
		var_be31aa9a.var_b2ce92e0[str_side].str_state = str_state;
		var_be31aa9a.var_b2ce92e0[str_side] Unlink();
		var_c49c82b9 = 150;
		if(str_state === "open")
		{
			var_c49c82b9 = var_c49c82b9 * -1;
		}
		var_be31aa9a.var_b2ce92e0[str_side] MoveZ(var_c49c82b9, 3.947368, 3.947368 * 0.1, 3.947368 * 0.25);
		if(str_state == "open")
		{
			var_be31aa9a.var_b2ce92e0[str_side] playsound("veh_lift_doors_open");
		}
		else
		{
			var_be31aa9a.var_b2ce92e0[str_side] playsound("veh_lift_doors_close");
		}
		var_be31aa9a.var_b2ce92e0[str_side] waittill("movedone");
		var_be31aa9a.var_b2ce92e0[str_side] LinkTo(var_be31aa9a);
		if(str_state == "open")
		{
			level flag::set("pallas_lift_" + str_side + "_open");
		}
		else
		{
			level flag::clear("pallas_lift_" + str_side + "_open");
		}
	}
}

/*
	Name: function_fe851f75
	Namespace: namespace_646f304f
	Checksum: 0xFE38FC73
	Offset: 0x3BE0
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_fe851f75(str_state)
{
	var_be31aa9a = GetEnt("boss_fight_lift", "targetname");
	if(!var_be31aa9a.var_631a2015["left"].str_state === str_state)
	{
		foreach(var_b018a7fa in var_be31aa9a.var_631a2015)
		{
			var_42c0d741 = var_b018a7fa.script_vector;
			if(str_state == "close")
			{
				var_42c0d741 = var_42c0d741 * -1;
			}
			var_b018a7fa.str_state = str_state;
			var_b018a7fa moveto(var_b018a7fa.origin + var_42c0d741, 3.947368, 3.947368 * 0.1, 3.947368 * 0.25);
		}
	}
}

/*
	Name: function_aab7d2d8
	Namespace: namespace_646f304f
	Checksum: 0xC993075
	Offset: 0x3D68
	Size: 0x2AB
	Parameters: 1
	Flags: None
*/
function function_aab7d2d8(str_direction)
{
	Array::run_all(level.players, &util::function_16c71b8, 1);
	var_be31aa9a = GetEnt("boss_fight_lift", "targetname");
	var_be31aa9a.str_direction = str_direction;
	var_d838974e = GetEnt("decon_fx_origin", "targetname");
	var_d838974e LinkTo(var_be31aa9a);
	PlayFXOnTag(level._effect["decon_mist"], var_d838974e, "tag_origin");
	var_d838974e playsound("veh_lift_mist");
	var_c49c82b9 = 1750;
	if(str_direction == "down")
	{
		var_c49c82b9 = var_c49c82b9 * -1;
	}
	var_be31aa9a MoveZ(var_c49c82b9, 48.61111, 48.61111 * 0.1, 48.61111 * 0.25);
	var_be31aa9a playsound("veh_lift_start");
	var_be2ea7e9 = spawn("script_origin", var_be31aa9a.origin);
	var_be2ea7e9 LinkTo(var_be31aa9a);
	var_be2ea7e9 PlayLoopSound("veh_lift_loop", 0.5);
	var_be31aa9a waittill("movedone");
	var_be2ea7e9 StopLoopSound(0.5);
	var_be31aa9a playsound("veh_lift_stop");
	var_be2ea7e9 delete();
	Array::run_all(level.players, &util::function_16c71b8, 0);
}

/*
	Name: function_2a8da7f0
	Namespace: namespace_646f304f
	Checksum: 0xA9804318
	Offset: 0x4020
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_2a8da7f0(n_state)
{
	var_be31aa9a = GetEnt("boss_fight_lift", "targetname");
	var_be31aa9a clientfield::set("sm_elevator_shader", n_state);
}

/*
	Name: function_dda88b2e
	Namespace: namespace_646f304f
	Checksum: 0xEF1F723
	Offset: 0x4088
	Size: 0x411
	Parameters: 0
	Flags: None
*/
function function_dda88b2e()
{
	function_6e72c0ab("front", "open");
	level flag::wait_till("weapons_research_vo_done");
	var_a3f7ac49 = GetEnt("pallas_lift_trigger", "targetname");
	var_a3f7ac49 namespace_cba4cc55::function_36a6e271();
	level thread function_5ac1b440();
	Array::thread_all(GetEntArray("head_track_model", "targetname"), &util::delay_notify, 0.05, "stop_head_track_player");
	Array::run_all(GetEntArray("pallas_lift_front_clip", "targetname"), &MoveZ, 112, 0.05);
	function_6e72c0ab("front", "close");
	function_2a8da7f0(3);
	level thread namespace_d40478f6::function_874f01d();
	level notify("hash_f913de07");
	level notify("hash_38764c78");
	a_ai = GetAITeamArray("team3");
	foreach(ai in a_ai)
	{
		if(isalive(ai))
		{
			ai delete();
		}
	}
	level clientfield::set("w_underwater_state", 0);
	objectives::complete("cp_level_sgen_goto_server_room_indicator", struct::get("pallas_elevator_descent_objective"));
	util::delay(3, undefined, &skipto::function_be8adfb8, "descent");
	Array::thread_all(level.players, &clientfield::set_to_player, "pallas_monitors_state", 2);
	function_aab7d2d8("down");
	function_6e72c0ab("back", "open");
	level notify("hash_7336a7fd");
	var_4d26ec84 = GetNodeArray("pallas_elevator_start", "script_noteworthy");
	foreach(node in var_4d26ec84)
	{
		LinkTraversal(node);
	}
}

/*
	Name: function_4aa034ed
	Namespace: namespace_646f304f
	Checksum: 0x364588DE
	Offset: 0x44A8
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_4aa034ed(var_74cd64bc)
{
	function_6e72c0ab("back", "close");
	if(!var_74cd64bc)
	{
		var_be31aa9a = GetEnt("boss_fight_lift", "targetname");
		var_be31aa9a.origin = var_be31aa9a.origin + VectorScale((0, 0, 1), 1750);
	}
	function_6e72c0ab("front", "open");
}

/*
	Name: function_adabc4c6
	Namespace: namespace_646f304f
	Checksum: 0xCA0739F0
	Offset: 0x4560
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_adabc4c6()
{
	level endon("hash_343d5e2c");
	self util::waittill_either("damage", "death");
	level flag::set("pallas_ambush_over");
}

/*
	Name: function_87d6b629
	Namespace: namespace_646f304f
	Checksum: 0xB021DD22
	Offset: 0x45C0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_87d6b629()
{
	level endon("hash_343d5e2c");
	Array::wait_any(level.players, "weapon_fired");
	level flag::set("pallas_ambush_over");
}

/*
	Name: function_4ee50667
	Namespace: namespace_646f304f
	Checksum: 0x291AB547
	Offset: 0x4618
	Size: 0x25B
	Parameters: 1
	Flags: None
*/
function function_4ee50667(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		var_34a8e0f = GetEnt("pallas_turret_enable_trigger", "targetname");
		var_34a8e0f.origin = var_34a8e0f.origin + VectorScale((0, -1, 0), 38);
		level waittill("hash_7336a7fd");
		trigger::wait_or_timeout(30, "pallas_turret_enable_trigger");
	}
	level thread namespace_d40478f6::function_973b77f9();
	savegame::function_5d2cdd99();
	level thread function_87d6b629();
	level dialog::function_13b3b16a("plyr_diaz_you_have_to_s_0", 1);
	Array::thread_all(level.players, &clientfield::set_to_player, "pallas_monitors_state", 1);
	level.var_7f246cd7 dialog::say("diaz_i_am_willing_to_d_0");
	level thread namespace_d40478f6::function_ad14681b();
	level flag::set("pallas_ambush_over");
	level dialog::remote("kane_the_only_way_to_disc_0", 2);
	level dialog::remote("hend_kane_i_m_currently_0");
	level dialog::remote("kane_access_the_primary_s_0");
	level dialog::remote("hend_you_re_the_boss_lad_0");
	level notify("hash_e44856f1");
	wait(2);
	level dialog::remote("kane_got_it_focus_fire_o_0", 2);
	level flag::set("pallas_intro_completed");
}

/*
	Name: function_ab0e4cbe
	Namespace: namespace_646f304f
	Checksum: 0x223686A8
	Offset: 0x4880
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_ab0e4cbe()
{
	level endon("hash_680acbda");
	while(1)
	{
		level waittill("save_restore");
		for(i = 1; i <= 3; i++)
		{
			var_41e38302 = GetEnt("diaz_ball_" + i, "targetname");
			var_41e38302 globallogic_ui::destroyWeakpointWidget(&"tag_weakpoint");
		}
	}
}

/*
	Name: function_c88aca45
	Namespace: namespace_646f304f
	Checksum: 0xF56A4D27
	Offset: 0x4930
	Size: 0xF27
	Parameters: 0
	Flags: None
*/
function function_c88aca45()
{
	level endon("hash_a9dda4e1");
	level waittill("hash_e44856f1");
	var_53769c03 = GetEntArray("pallas_coolant_control", "targetname");
	foreach(trigger in var_53769c03)
	{
		trigger setHintString(&"CP_MI_SING_SGEN_DESTROY_PILLAR");
		trigger TriggerEnable(0);
	}
	level flag::wait_till("pallas_intro_completed");
	var_61b0688 = GetEntArray("diaz_tower_1", "targetname");
	while(1)
	{
		level thread function_6030416();
		var_fa72961f = RandomInt(var_61b0688.size);
		var_6c5a6b2b = var_61b0688[var_fa72961f];
		var_61b0688 = Array::remove_index(var_61b0688, var_fa72961f);
		var_6c5a6b2b MoveZ(114, 4);
		playFX(level._effect["coolant_tower_unleash"], var_6c5a6b2b.origin + VectorScale((0, 0, -1), 250));
		var_6c5a6b2b playsound("evt_pillar_move");
		switch(level.var_e16e585d)
		{
			case 0:
			{
				level thread dialog::remote("kane_cooling_tower_one_ex_0", 1);
				break;
			}
			case 1:
			{
				level thread dialog::remote("kane_cooling_tower_two_ex_0", 1);
				break;
			}
			case 2:
			{
				level thread dialog::remote("kane_cooling_tower_three_0", 1);
				break;
			}
		}
		level thread function_e4f0c0ff();
		var_6c5a6b2b waittill("movedone");
		level thread function_fede65f(var_6c5a6b2b.script_float);
		var_2815ed68 = GetEntArray("pallas_coolant_control", "targetname");
		var_2815ed68 = ArraySortClosest(var_2815ed68, var_6c5a6b2b.origin);
		var_589f8c88 = var_2815ed68[0];
		level thread function_e1f7b7();
		level waittill("hash_6aac2089");
		Array::thread_all(level.players, &clientfield::set_to_player, "pallas_monitors_state", 2);
		objectives::complete("cp_level_sgen_destroy_tower");
		level.var_e16e585d++;
		var_6c5a6b2b playsound("evt_pillar_dest");
		playsoundatposition("evt_diaz_alarm", var_6c5a6b2b.origin);
		level thread function_47bd64a2();
		wait(5);
		Array::thread_all(level.players, &clientfield::set_to_player, "pallas_monitors_state", 0);
		level thread function_cc42d59b();
		var_589f8c88 TriggerEnable(1);
		s_temp = spawnstruct();
		s_temp.origin = var_589f8c88.origin + VectorScale((0, 0, 1), 16);
		s_temp.angles = var_589f8c88.angles;
		objectives::set("cp_level_sgen_release_coolant", s_temp.origin);
		if(level.var_e16e585d == 3)
		{
			level thread scene::init("cin_sgen_19_ghost_3rd_sh010");
		}
		var_fd110328 = 0;
		while(!var_fd110328)
		{
			var_589f8c88 waittill("trigger", e_player);
			if(!e_player laststand::player_is_in_laststand())
			{
				var_fd110328 = 1;
				e_player EnableInvulnerability();
			}
		}
		level notify("stage_completed");
		switch(level.var_e16e585d)
		{
			case 1:
			{
				spawn_manager::kill("sm_stage1_flood", 0);
				spawn_manager::kill("sm_stage1");
				level thread namespace_d40478f6::function_3d554ba8();
				break;
			}
			case 2:
			{
				spawn_manager::kill("sm_stage2_flood", 0);
				spawn_manager::kill("sm_stage2");
				level thread namespace_d40478f6::function_af5cbae3();
				break;
			}
			case 3:
			{
				spawn_manager::kill("sm_stage3_flood", 0);
				level thread namespace_d40478f6::function_895a407a();
				break;
			}
		}
		objectives::complete("cp_level_sgen_release_coolant", s_temp.origin);
		fx_struct = struct::get(var_589f8c88.target, "targetname");
		var_b788969e = var_589f8c88.script_noteworthy + var_589f8c88.script_string;
		switch(level.var_e16e585d)
		{
			case 1:
			case 2:
			{
				level scene::Play(var_b788969e + "_a", e_player);
				level thread scene::Play(var_b788969e + "_b", e_player);
				break;
			}
			case 3:
			{
				level scene::add_scene_func("p7_fxanim_cp_sgen_pallas_ai_tower_collapse_bundle", &function_c5372adb, "play");
				level scene::add_scene_func("p7_fxanim_cp_sgen_pallas_ai_tower_collapse_bundle", &function_6610aebe, "init");
				level thread scene::Play(var_b788969e + "_a", e_player);
				level thread scene::init("p7_fxanim_cp_sgen_pallas_ai_tower_collapse_bundle");
				level waittill(var_b788969e + "_a_done");
				level flag::set("pallas_death");
				Array::thread_all(level.players, &clientfield::set_to_player, "pallas_monitors_state", 3);
				e_player DisableInvulnerability();
				level thread skipto::function_be8adfb8("pallas_start");
				break;
			}
		}
		var_589f8c88 delete();
		level waittill("boom");
		level thread function_2532875f();
		fx_model = util::spawn_model("tag_origin", fx_struct.origin, fx_struct.angles);
		level namespace_cba4cc55::Quake(0.5, 1, fx_model.origin, 5000, 4, 7);
		level thread function_8c31d3c3(var_6c5a6b2b.script_float);
		wait(2);
		if(isdefined(e_player))
		{
			e_player DisableInvulnerability();
		}
		fx_model delete();
		switch(level.var_e16e585d)
		{
			case 1:
			{
				level notify("hash_2e9dd028");
				level dialog::function_13b3b16a("plyr_grenade_detonated_0");
				level dialog::remote("kane_it_worked_central_0");
				if(isdefined(level.BZM_OverrideLocomotion))
				{
					level thread [[level.BZM_OverrideLocomotion]](40, 40, 20);
				}
				if(isdefined(level.BZM_OverrideHealth))
				{
					level thread [[level.BZM_OverrideHealth]](150, 150, 150);
				}
				if(isdefined(level.BZM_OverrideSuicidalChance))
				{
					level thread [[level.BZM_OverrideSuicidalChance]](10);
				}
				break;
			}
			case 2:
			{
				level notify("hash_2e9dd028");
				level dialog::function_13b3b16a("plyr_successful_detonatio_0");
				level dialog::remote("kane_central_core_down_to_0");
				exploder::exploder("light_sgen_palas_em");
				var_419151a0 = struct::get("hendrick_console_hack");
				if(isdefined(level.BZM_OverrideLocomotion))
				{
					level thread [[level.BZM_OverrideLocomotion]](25, 50, 25);
				}
				if(isdefined(level.BZM_OverrideHealth))
				{
					level thread [[level.BZM_OverrideHealth]](175, 175, 175);
				}
				if(isdefined(level.BZM_OverrideSuicidalChance))
				{
					level thread [[level.BZM_OverrideSuicidalChance]](15);
				}
				if(!SessionModeIsCampaignZombiesGame())
				{
					objectives::set("cp_level_sgen_protect_hendricks", var_419151a0.origin);
				}
				break;
			}
		}
		savegame::function_5d2cdd99();
		Array::thread_all(level.players, &clientfield::set_to_player, "pallas_monitors_state", 1);
		wait(2);
		switch(level.var_e16e585d)
		{
			case 1:
			{
				spawn_manager::enable("sm_stage2");
				break;
			}
			case 2:
			{
				level.var_e259308b = 0;
				spawn_manager::enable("sm_stage3");
				level flag::set("core_two_destroyed");
				break;
			}
		}
		if(level.var_e16e585d == 1)
		{
			level dialog::remote("kane_working_on_opening_c_0", 2);
			level dialog::function_13b3b16a("plyr_hurry_up_kane_i_m_0", 3);
			function_75946123("sm_stage2", 4, 20);
		}
		else if(level.var_e16e585d == 2)
		{
			level dialog::remote("kane_working_on_tower_thr_0");
			wait(20);
			switch(level.players.size)
			{
				case 2:
				{
					n_spawn_count = 25;
					break;
				}
				case 3:
				{
					n_spawn_count = 30;
					break;
				}
				case 4:
				{
					n_spawn_count = 35;
					break;
				}
				case default:
				{
					n_spawn_count = 20;
					break;
				}
			}
			function_864a9c57("sm_stage3", n_spawn_count, 30);
			level notify("hash_265b1313");
			level thread function_e8ee435e();
			util::waittill_notify_or_timeout("all_suicide_bots_killed", 15);
			level flag::set("hendricks_attacked_done");
			if(!SessionModeIsCampaignZombiesGame())
			{
				objectives::complete("cp_level_sgen_protect_hendricks");
			}
		}
	}
}

/*
	Name: function_47bd64a2
	Namespace: namespace_646f304f
	Checksum: 0x70E513B2
	Offset: 0x5860
	Size: 0x115
	Parameters: 0
	Flags: None
*/
function function_47bd64a2()
{
	switch(level.var_e16e585d)
	{
		case 1:
		{
			level dialog::remote("kane_cooling_tower_one_of_0");
			break;
		}
		case 2:
		{
			level dialog::remote("kane_cooling_tower_two_of_0");
			break;
		}
		case 3:
		{
			level.var_94d58561 = GetTime() + 30000;
			level flag::set("tower_three_destroyed");
			level dialog::remote("kane_cooling_tower_three_1");
			level dialog::remote("hend_this_better_not_kill_0");
			level dialog::remote("kane_not_the_time_comman_0");
			exploder::exploder_stop("light_sgen_palas_em");
			break;
		}
	}
}

/*
	Name: function_75946123
	Namespace: namespace_646f304f
	Checksum: 0xC9457A23
	Offset: 0x5980
	Size: 0x8B
	Parameters: 3
	Flags: None
*/
function function_75946123(str_sm_name, n_ai_count, n_timeout)
{
	if(isdefined(n_timeout))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(n_timeout, "timeout");
	}
	spawn_manager::function_27bf2e8(str_sm_name, n_ai_count);
}

/*
	Name: function_864a9c57
	Namespace: namespace_646f304f
	Checksum: 0xBD4EA210
	Offset: 0x5A18
	Size: 0x8B
	Parameters: 3
	Flags: None
*/
function function_864a9c57(str_sm_name, n_spawn_count, n_timeout)
{
	if(isdefined(n_timeout))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(n_timeout, "timeout");
	}
	spawn_manager::function_740ea7ff(str_sm_name, n_spawn_count);
}

/*
	Name: function_e1f7b7
	Namespace: namespace_646f304f
	Checksum: 0x585CCF2C
	Offset: 0x5AB0
	Size: 0xED
	Parameters: 0
	Flags: None
*/
function function_e1f7b7()
{
	level endon("stage_completed");
	switch(level.var_e16e585d)
	{
		case 0:
		{
			spawn_manager::function_27bf2e8("sm_stage1", 3);
			spawn_manager::enable("sm_stage1_flood");
			break;
		}
		case 1:
		{
			spawn_manager::function_27bf2e8("sm_stage2", 3);
			spawn_manager::enable("sm_stage2_flood");
			break;
		}
		case 2:
		{
			level waittill("hash_6aac2089");
			spawn_manager::kill("sm_stage3");
			spawn_manager::enable("sm_stage3_flood");
			break;
		}
	}
}

/*
	Name: function_fede65f
	Namespace: namespace_646f304f
	Checksum: 0xAFEE5EE2
	Offset: 0x5BA8
	Size: 0x3F3
	Parameters: 1
	Flags: None
*/
function function_fede65f(var_45891e3b)
{
	var_45891e3b = Int(var_45891e3b);
	var_77224c8 = GetEnt("diaz_ball_" + var_45891e3b, "targetname");
	var_77224c8 globallogic_ui::createWeakpointWidget(&"tag_weakpoint");
	var_f831d587 = 300 * level.players.size;
	var_77224c8.health = var_f831d587;
	var_77224c8 thread function_f63f5d7a();
	exploder::exploder("pallas_fight_coolant_tower_" + var_45891e3b);
	while(var_77224c8.health >= var_f831d587 / 2)
	{
		var_77224c8 waittill("damage");
	}
	exploder::exploder("pallas_fight_dmg_1_tower_" + var_45891e3b);
	mdl_fx = util::spawn_model("tag_origin", var_77224c8.origin, var_77224c8.angles);
	PlayFXOnTag(level._effect["coolant_tower_damage_minor"], mdl_fx, "tag_origin");
	if(var_77224c8.health > 0)
	{
		var_77224c8 waittill("death");
	}
	var_77224c8 DisableAimAssist();
	var_77224c8 globallogic_ui::destroyWeakpointWidget(&"tag_weakpoint");
	switch(var_45891e3b)
	{
		case 1:
		{
			level thread scene::Play("coolant_hose_03", "targetname");
			level clientfield::set("tower_chunks2", 1);
			break;
		}
		case 2:
		{
			level thread scene::Play("coolant_hose_01", "targetname");
			level clientfield::set("tower_chunks1", 1);
			break;
		}
		case 3:
		{
			level thread scene::Play("coolant_hose_05", "targetname");
			level clientfield::set("tower_chunks3", 1);
			break;
		}
	}
	level namespace_cba4cc55::Quake(0.5, 1, var_77224c8.origin, 5000, 4, 7);
	exploder::exploder("pallas_fight_exp_tower_" + var_45891e3b);
	mdl_fx delete();
	level notify("hash_6aac2089");
	mdl_fx = util::spawn_model("tag_origin", var_77224c8.origin, var_77224c8.angles);
	PlayFXOnTag(level._effect["coolant_tower_damage_major"], mdl_fx, "tag_origin");
}

/*
	Name: function_f63f5d7a
	Namespace: namespace_646f304f
	Checksum: 0x3A0340C7
	Offset: 0x5FA8
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_f63f5d7a()
{
	self setContents(8192);
	self SetCanDamage(1);
	self EnableAimAssist();
	self.team = "axis";
	self clientfield::set("cooling_tower_damage", 1);
	objectives::set("cp_level_sgen_destroy_tower", self.origin + VectorScale((0, 0, 1), 18));
	while(self.health > 0)
	{
		self waittill("damage", damage, attacker, direction, point);
		playFX(level._effect["weakspot_impact"], point, direction * -1);
		attacker damagefeedback::update();
	}
	self clientfield::set("cooling_tower_damage", 0);
	self setContents(256);
	self SetCanDamage(0);
	self DisableAimAssist();
	self.team = "none";
}

/*
	Name: function_4301ab5f
	Namespace: namespace_646f304f
	Checksum: 0xB85E6183
	Offset: 0x6170
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_4301ab5f()
{
	level endon("hash_eb30fd63");
	level endon("hash_265b1313");
	level.var_eb13b054 = [];
	level.var_2d3af18b = 0;
	level.var_e15d967a = 8 + level.players.size * 2;
	var_cf1fb9af = 0;
	while(var_cf1fb9af < level.var_e15d967a)
	{
		for(i = 0; i < 2; i++)
		{
			if(!isalive(level.var_eb13b054[i]))
			{
				var_d495f536 = GetEntArray("potential_hendricks_bot", "script_string");
				var_9b203de1 = ArrayGetClosest(level.var_2fd26037.origin, var_d495f536);
				if(isalive(var_9b203de1))
				{
					var_9b203de1.script_string = undefined;
					level.var_eb13b054[i] = var_9b203de1;
					var_9b203de1 thread function_b8eb0475(i + 1);
					var_cf1fb9af++;
					util::wait_network_frame();
				}
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_e8ee435e
	Namespace: namespace_646f304f
	Checksum: 0xB2BC20FB
	Offset: 0x6310
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_e8ee435e()
{
	foreach(var_9b203de1 in level.var_eb13b054)
	{
		if(isalive(var_9b203de1))
		{
			var_9b203de1 waittill("death");
		}
	}
	wait(0.1);
	level notify("hash_e33ac8c");
}

/*
	Name: function_b8eb0475
	Namespace: namespace_646f304f
	Checksum: 0xFFBC0E93
	Offset: 0x63D0
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_b8eb0475(n_scene)
{
	self endon("death");
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self ai::set_behavior_attribute("rogue_control", "forced_level_3");
	self ai::set_ignoreall(1);
	self flag::wait_till("in_playable_space");
	level thread scene::Play("cin_sgen_18_01_pallasfight_vign_takedown_explode0" + n_scene, self);
	self waittill("start_timer");
	level thread function_f9909efe();
	switch(level.players.size)
	{
		case 2:
		{
			wait(5);
			break;
		}
		case 3:
		case 4:
		{
			wait(3);
			break;
		}
		case default:
		{
			wait(7);
			break;
		}
	}
	level thread scene::stop("cin_sgen_18_01_pallasfight_vign_takedown_explode0" + n_scene);
	self ai::set_behavior_attribute("rogue_force_explosion", 1);
	level thread function_5eceee36();
}

/*
	Name: function_5eceee36
	Namespace: namespace_646f304f
	Checksum: 0xBEBCCB52
	Offset: 0x6550
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_5eceee36()
{
	level.var_2d3af18b++;
	switch(level.var_2d3af18b)
	{
		case 1:
		{
			level clientfield::increment("observation_deck_destroy");
			level dialog::remote("hend_shit_kane_hurry_t_0", 1);
			break;
		}
		case 2:
		{
			level dialog::remote("hend_gimme_a_hand_i_got_0");
			break;
		}
		case 3:
		{
			level clientfield::increment("observation_deck_destroy");
			level dialog::remote("hend_i_m_getting_torn_up_0", 1);
			break;
		}
		case 4:
		{
			level dialog::remote("hend_robots_overtaking_my_0");
			break;
		}
		case 5:
		{
			level thread function_c79b403e();
			break;
		}
	}
}

/*
	Name: function_c79b403e
	Namespace: namespace_646f304f
	Checksum: 0x2C8BBF3F
	Offset: 0x6678
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_c79b403e()
{
	level clientfield::increment("observation_deck_destroy", 1);
	var_35925132 = struct::get("hendrick_console_hack", "targetname");
	var_35925132 thread scene::stop("cin_sgen_18_01_pallasfight_vign_controls_hendricks_active");
	wait(0.05);
	level.var_2fd26037 util::stop_magic_bullet_shield();
	level.var_2fd26037 DoDamage(level.var_2fd26037.health, level.var_2fd26037.origin);
	wait(3.5);
	util::missionfailedwrapper_nodeath(&"CP_MI_SING_SGEN_HENDRICKS_KILLED");
}

/*
	Name: function_f0f76126
	Namespace: namespace_646f304f
	Checksum: 0x3D55CA4E
	Offset: 0x6768
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f0f76126()
{
	self waittill("death");
	level.var_9945a95d++;
	if(level.var_9945a95d == 8)
	{
		spawn_manager::enable("sm_stage1");
	}
}

/*
	Name: function_e4f0c0ff
	Namespace: namespace_646f304f
	Checksum: 0xF9CA57CE
	Offset: 0x67B8
	Size: 0xED
	Parameters: 0
	Flags: None
*/
function function_e4f0c0ff()
{
	level endon("hash_6aac2089");
	wait(RandomFloatRange(10, 15));
	switch(level.var_e16e585d)
	{
		case 0:
		{
			level dialog::remote("hend_focus_fire_take_ou_0");
			wait(RandomFloatRange(15, 20));
			level dialog::remote("hend_disable_that_tower_t_0");
			break;
		}
		case 1:
		{
			level dialog::remote("kane_we_need_to_bring_dow_0");
			break;
		}
		case 2:
		{
			level dialog::remote("kane_take_the_tower_offli_0");
			break;
		}
	}
}

/*
	Name: function_cc42d59b
	Namespace: namespace_646f304f
	Checksum: 0x6D350E45
	Offset: 0x68B0
	Size: 0x205
	Parameters: 0
	Flags: None
*/
function function_cc42d59b()
{
	level endon("stage_completed");
	wait(RandomFloatRange(7, 10));
	switch(level.var_e16e585d)
	{
		case 1:
		{
			level dialog::remote("kane_you_ve_got_to_get_cl_0");
			wait(RandomFloatRange(8, 12));
			level dialog::remote("kane_come_on_climb_the_c_0");
			wait(RandomFloatRange(8, 12));
			level dialog::remote("hend_you_heard_her_get_o_0");
			wait(RandomFloatRange(8, 12));
			level dialog::remote("hend_climb_the_tower_hi_0");
			break;
		}
		case 2:
		{
			level dialog::remote("hend_get_another_grenade_0");
			wait(RandomFloatRange(12, 16));
			level dialog::remote("hend_we_re_running_out_of_2");
			break;
		}
		case 3:
		{
			level dialog::remote("hend_get_on_that_tower_an_0");
			wait(RandomFloatRange(12, 16));
			level dialog::remote("kane_get_a_grenade_in_the_0");
			wait(RandomFloatRange(12, 16));
			level dialog::remote("kane_blow_the_damn_core_0");
			break;
		}
	}
}

/*
	Name: function_6030416
	Namespace: namespace_646f304f
	Checksum: 0x30A9C4FC
	Offset: 0x6AC0
	Size: 0x40D
	Parameters: 0
	Flags: None
*/
function function_6030416()
{
	level endon("stage_completed");
	wait(RandomFloatRange(3, 5));
	switch(level.var_e16e585d)
	{
		case 0:
		{
			level.var_7f246cd7 dialog::say("diaz_listen_only_to_the_s_0");
			wait(RandomFloatRange(3, 5));
			level.var_7f246cd7 dialog::say("diaz_let_your_mind_relax_0");
			level.var_7f246cd7 dialog::say("diaz_let_your_thoughts_dr_0");
			wait(RandomFloatRange(5, 8));
			level.var_7f246cd7 dialog::say("diaz_let_the_bad_memories_0");
			level.var_7f246cd7 dialog::say("diaz_let_peace_be_upon_yo_0");
			break;
		}
		case 1:
		{
			level.var_7f246cd7 dialog::say("diaz_surrender_yourself_t_0");
			level.var_7f246cd7 dialog::say("diaz_let_them_wash_over_y_0");
			wait(RandomFloatRange(5, 8));
			level.var_7f246cd7 dialog::say("diaz_imagine_somewhere_ca_0");
			level.var_7f246cd7 dialog::say("diaz_imagine_somewhere_sa_0");
			wait(RandomFloatRange(5, 8));
			level.var_7f246cd7 dialog::say("diaz_imagine_yourself_0");
			level.var_7f246cd7 dialog::say("diaz_you_are_standing_in_0");
			wait(RandomFloatRange(5, 8));
			level.var_7f246cd7 dialog::say("diaz_the_trees_around_you_0");
			level.var_7f246cd7 dialog::say("diaz_pure_white_snowflake_0");
			break;
		}
		case 2:
		{
			level.var_7f246cd7 dialog::say("diaz_you_can_feel_them_me_0");
			level.var_7f246cd7 dialog::say("diaz_you_are_not_cold_0");
			wait(RandomFloatRange(3, 5));
			level.var_7f246cd7 dialog::say("diaz_it_cannot_overcome_t_0");
			level.var_7f246cd7 dialog::say("diaz_can_you_hear_it_0");
			level.var_7f246cd7 dialog::say("diaz_can_you_hear_it_0");
			wait(RandomFloatRange(3, 5));
			level.var_7f246cd7 dialog::say("diaz_do_you_hear_it_slowi_0");
			level.var_7f246cd7 dialog::say("diaz_you_are_slowing_it_0");
			wait(RandomFloatRange(3, 5));
			level.var_7f246cd7 dialog::say("diaz_you_are_in_control_0");
			level.var_7f246cd7 dialog::say("diaz_calm_0");
			level.var_7f246cd7 dialog::say("diaz_at_peace_0");
			break;
		}
	}
}

/*
	Name: function_f9909efe
	Namespace: namespace_646f304f
	Checksum: 0xEC0D4BFA
	Offset: 0x6ED8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f9909efe()
{
	if(!isdefined(level.var_4a6cbb96))
	{
		level.var_4a6cbb96 = 0;
	}
	if(!level.var_4a6cbb96)
	{
		level.var_4a6cbb96 = 1;
		level dialog::remote("hend_hey_i_got_grunts_c_0");
	}
}

/*
	Name: function_2532875f
	Namespace: namespace_646f304f
	Checksum: 0xBAA5781
	Offset: 0x6F38
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_2532875f(b_immediate)
{
	if(!isdefined(b_immediate))
	{
		b_immediate = 0;
	}
	var_961d572f = GetAITeamArray("team3");
	foreach(e_enemy in var_961d572f)
	{
		if(isalive(e_enemy))
		{
			e_enemy DoDamage(1000, e_enemy.origin);
			if(!b_immediate)
			{
				wait(RandomFloatRange(0.05, 0.2));
			}
		}
	}
}

/*
	Name: function_7362d6c4
	Namespace: namespace_646f304f
	Checksum: 0x1A0FA461
	Offset: 0x7058
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function function_7362d6c4()
{
	level thread function_3452571c();
	for(x = 1; x <= 8; x++)
	{
		level scene::init("coolant_hose_0" + x, "targetname");
	}
}

/*
	Name: function_d6b86f3d
	Namespace: namespace_646f304f
	Checksum: 0xC5287B7D
	Offset: 0x70D0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d6b86f3d()
{
	level waittill("hash_d6b86f3d");
	level thread scene::Play("coolant_hose_02", "targetname");
	level thread scene::Play("coolant_hose_04", "targetname");
	level thread scene::Play("coolant_hose_06", "targetname");
	level thread scene::Play("coolant_hose_07", "targetname");
	level thread scene::Play("coolant_hose_08", "targetname");
}

/*
	Name: function_3452571c
	Namespace: namespace_646f304f
	Checksum: 0x9EE197D2
	Offset: 0x71B0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3452571c()
{
	var_363ca6bb = GetEntArray("pallas_glass_break_whole", "script_noteworthy");
	Array::run_all(var_363ca6bb, &Hide);
}

/*
	Name: function_8c31d3c3
	Namespace: namespace_646f304f
	Checksum: 0x18D08F05
	Offset: 0x7210
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_8c31d3c3(var_7d1d4eb6)
{
	var_7d1d4eb6 = Int(var_7d1d4eb6);
	switch(var_7d1d4eb6)
	{
		case 1:
		{
			e_glass = GetEnt("pallas_glass_break_1", "targetname");
			break;
		}
		case 2:
		{
			e_glass = GetEnt("pallas_glass_break_3", "targetname");
			break;
		}
		case default:
		{
			e_glass = GetEnt("pallas_glass_break_2", "targetname");
			break;
		}
	}
	e_glass show();
}

/*
	Name: function_efa6b6f5
	Namespace: namespace_646f304f
	Checksum: 0x22B1F341
	Offset: 0x7308
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_efa6b6f5(robot)
{
	robot waittill("death");
	self delete();
}

/*
	Name: function_eea8b6a8
	Namespace: namespace_646f304f
	Checksum: 0x4EF627FF
	Offset: 0x7340
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_eea8b6a8()
{
	self endon("death");
	while(1)
	{
		foreach(player in level.players)
		{
			if(DistanceSquared(self.origin, player.origin) < 250000)
			{
				self notify("hash_43dfea79");
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_ad61b905
	Namespace: namespace_646f304f
	Checksum: 0xAEBB954D
	Offset: 0x7420
	Size: 0x157
	Parameters: 2
	Flags: None
*/
function function_ad61b905(str_triggername, str_sm)
{
	level endon("hash_eb30fd63");
	trigger = GetEnt(str_triggername, "targetname");
	while(1)
	{
		n_player = 0;
		foreach(player in level.players)
		{
			if(player istouching(trigger))
			{
				n_player = n_player + 1;
			}
		}
		if(n_player > 0)
		{
			spawn_manager::enable(str_sm);
		}
		else if(spawn_manager::is_enabled(str_sm))
		{
			spawn_manager::disable(str_sm);
		}
		wait(0.5);
	}
}

