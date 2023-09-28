#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_mapping_drone;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_exterior;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\warlord;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_9c567844;

/*
	Name: function_aa390943
	Namespace: namespace_9c567844
	Checksum: 0x9A69B4A5
	Offset: 0x21A8
	Size: 0x423
	Parameters: 2
	Flags: None
*/
function function_aa390943(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_acdfe1fe("cp_sgen_env_LobbyMovie", 1);
		SGEN::function_bff1a867(str_objective);
		level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
		level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
		objectives::complete("cp_level_sgen_investigate_sgen");
		level flag::set("hendricks_at_silo_doors");
		level scene::init("p7_fxanim_cp_sgen_overhang_building_glass_bundle");
		level scene::init("cin_sgen_05_01_discoverdata_vign_lookaround_hendricks");
		level scene::init("pb_sgen_data_discovery_hack");
		var_c7d2cbe9 = GetEnt("trig_post_discover_data", "targetname");
		var_c7d2cbe9 TriggerEnable(0);
		exploder::exploder("sgen_flying_IGC");
		load::function_a2995f22();
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("sndSiloBG", 1);
		}
		namespace_5da6b440::function_547e0499();
	}
	level thread function_ab1ca63f();
	level flag::wait_till("silo_door_opened");
	if(isdefined(level.BZM_SGENDialogue2Callback))
	{
		level thread [[level.BZM_SGENDialogue2Callback]]();
	}
	level thread function_ab489996();
	level thread function_370bcbcc();
	level thread namespace_d40478f6::function_26fc5a92();
	level thread scene::Play("cin_sgen_05_01_discoverdata_vign_lookaround_hendricks");
	level waittill("hash_dd334053");
	level thread util::function_d8eaed3d(6);
	level util::delay(2, undefined, &function_2f312deb);
	level flag::wait_till("data_recovered");
	namespace_2afd69a::spawn_drone();
	level scene::add_scene_func("cin_sgen_06_01_followleader_vign_activate_eac_hendricks", &function_8e9806c5);
	level scene::add_scene_func("cin_sgen_06_01_followleader_vign_activate_eac_drone", &function_8cf3dc94);
	level thread scene::Play("cin_sgen_06_01_followleader_vign_activate_eac_drone");
	level thread scene::Play("cin_sgen_06_01_followleader_vign_activate_eac_hendricks");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_370bcbcc
	Namespace: namespace_9c567844
	Checksum: 0xB162F5A8
	Offset: 0x25D8
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_370bcbcc()
{
	var_f3ad9584 = GetEnt("emf_device", "targetname");
	level waittill("hash_dd334053");
	var_d202c753 = spawn("script_origin", var_f3ad9584.origin);
	var_d202c753 PlayLoopSound("evt_emf_signal");
	level flag::wait_till("kane_data_callout");
	t_use = spawn("trigger_radius_use", var_f3ad9584.origin, 0, 32, 32);
	t_use TriggerIgnoreTeam();
	t_use SetVisibleToAll();
	t_use SetTeamForTrigger("none");
	t_use UseTriggerRequireLookAt();
	var_d67faff5 = util::function_14518e76(t_use, &"cp_prompt_dni_sgen_hack_emf_source", &"CP_MI_SING_SGEN_HACK", &function_41ebcee5, Array(var_f3ad9584));
	level flag::wait_till("data_discovered");
	var_d202c753 StopLoopSound();
	objectives::complete("cp_level_sgen_locate_emf");
	var_d67faff5 gameobjects::disable_object();
	level flag::wait_till("data_recovered");
	var_d67faff5 gameobjects::destroy_object(1, 0);
}

/*
	Name: function_41ebcee5
	Namespace: namespace_9c567844
	Checksum: 0x5AC2DCFC
	Offset: 0x2828
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_41ebcee5(e_player)
{
	level flag::set("data_discovered");
	level scene::add_scene_func("pb_sgen_data_discovery_hack", &function_692aa639);
	level scene::Play("pb_sgen_data_discovery_hack", e_player);
	level flag::set("data_recovered");
}

/*
	Name: function_8cf3dc94
	Namespace: namespace_9c567844
	Checksum: 0x4C2C1251
	Offset: 0x28C8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_8cf3dc94(a_ents)
{
	level.var_ea764859 vehicle::lights_off();
	level.var_ea764859.script_objective = "fallen_soldiers";
	level waittill("hash_3ac74ca");
	level.var_ea764859 vehicle::lights_on();
}

/*
	Name: function_692aa639
	Namespace: namespace_9c567844
	Checksum: 0xECD8D60E
	Offset: 0x2938
	Size: 0x149
	Parameters: 1
	Flags: None
*/
function function_692aa639(a_ents)
{
	wait(2.5);
	foreach(var_9544d7c1 in a_ents)
	{
		if(isPlayer(var_9544d7c1))
		{
			var_9544d7c1 cybercom::function_f8669cbf(1);
			var_9544d7c1 clientfield::set_to_player("sndCCHacking", 2);
			var_9544d7c1 util::delay(1, "death", &clientfield::increment_to_player, "hack_dni_fx");
			var_9544d7c1 util::delay(2, "death", &clientfield::set_to_player, "sndCCHacking", 0);
		}
	}
}

/*
	Name: function_ab489996
	Namespace: namespace_9c567844
	Checksum: 0x40BE74AC
	Offset: 0x2A90
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_ab489996()
{
	level thread function_cc8a136f();
	level thread function_782fe79e();
	level flag::wait_till("play_building_glass_debris");
	level thread scene::Play("p7_fxanim_cp_sgen_overhang_building_glass_bundle");
}

/*
	Name: function_782fe79e
	Namespace: namespace_9c567844
	Checksum: 0xD9E2483D
	Offset: 0x2B10
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_782fe79e()
{
	level endon("hash_c391ab53");
	var_7c70a111 = GetEnt("trig_lookat_glass_debris", "targetname");
	level.players[0] util::waittill_player_looking_at(var_7c70a111.origin, 0.8, 0);
	level flag::set("play_building_glass_debris");
}

/*
	Name: function_cc8a136f
	Namespace: namespace_9c567844
	Checksum: 0xF2948E11
	Offset: 0x2BA8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_cc8a136f()
{
	level endon("hash_c391ab53");
	wait(10);
	level flag::set("play_building_glass_debris");
}

/*
	Name: function_2f312deb
	Namespace: namespace_9c567844
	Checksum: 0x128B7329
	Offset: 0x2BE8
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_2f312deb()
{
	level flag::set("kane_data_callout");
	level dialog::remote("kane_i_m_picking_up_an_em_0");
	level flag::wait_till("data_discovered");
	level dialog::function_13b3b16a("plyr_got_it_uploading_0");
	level dialog::remote("kane_the_looters_didn_t_j_0");
	level.var_2fd26037 waittill("hash_efcaa5e4");
	level dialog::remote("kane_message_received_and_0");
	level flag::wait_till("post_discover_data");
	level thread namespace_d40478f6::function_fb17452c();
	level.var_2fd26037 dialog::say("hend_stick_to_the_ledge_0");
}

/*
	Name: function_e59a6c89
	Namespace: namespace_9c567844
	Checksum: 0x55ECC9D
	Offset: 0x2D20
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_e59a6c89(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	struct::delete_script_bundle("scene", "cin_sgen_05_01_discoverdata_1st_handgesture_player_dataacquired");
}

/*
	Name: function_ab1ca63f
	Namespace: namespace_9c567844
	Checksum: 0x4D5EB9D3
	Offset: 0x2D70
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_ab1ca63f()
{
	level flag::wait_till("discover_data_tele");
	util::wait_network_frame();
	function_4a0fb95e("cp_sgen_env_lobbymovie");
	util::wait_network_frame();
	function_4a0fb95e("cp_sgen_env_LobbyMovie");
}

/*
	Name: function_17b49f2c
	Namespace: namespace_9c567844
	Checksum: 0xD17CFA4
	Offset: 0x2DF0
	Size: 0x383
	Parameters: 2
	Flags: None
*/
function function_17b49f2c(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		namespace_2afd69a::spawn_drone("nd_post_discover_data");
		level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
		level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
		var_ed29ccc2 = GetEnt("bm_discover_data_player_clip", "targetname");
		var_ed29ccc2 delete();
		var_95951a6d = GetEnt("trig_discover_data_kill", "targetname");
		var_95951a6d delete();
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::set("cp_level_sgen_descend_into_core");
		level scene::skipto_end("p7_fxanim_cp_sgen_hendricks_railing_kick_bundle");
		level flag::set("hendricks_data_anim_done");
		level flag::set("glass_railing_kicked");
		load::function_a2995f22();
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("sndSiloBG", 1);
		}
	}
	level thread function_2e4ed53c(var_74cd64bc);
	level thread function_8e0d5dae();
	level thread function_552e0e0a();
	level thread function_982aa3da();
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 thread function_183c2b6();
	level.var_ea764859 thread function_f142d622();
	level thread function_d3711d76();
	level thread function_e7bc299d();
	level flag::wait_till("player_past_shimmy_wall");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_e28bb832
	Namespace: namespace_9c567844
	Checksum: 0x9A4AE22F
	Offset: 0x3180
	Size: 0x103
	Parameters: 4
	Flags: None
*/
function function_e28bb832(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	struct::delete_script_bundle("scene", "p7_fxanim_cp_sgen_overhang_building_glass_bundle");
	struct::delete_script_bundle("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh010");
	struct::delete_script_bundle("scene", "cin_sgen_03_03_undeadqt_vign_limitedpower_corpses");
	struct::delete_script_bundle("scene", "cin_sgen_05_01_discoverdata_vign_lookaround_hendricks");
	struct::delete_script_bundle("scene", "cin_sgen_05_01_discoverdata_1st_handgestrure_player_dataacquired");
	struct::delete_script_bundle("scene", "cin_sgen_06_01_followleader_vign_activate_eac_drone");
	struct::delete_script_bundle("scene", "cin_sgen_06_01_followleader_vign_activate_eac_hendricks");
}

/*
	Name: function_e7bc299d
	Namespace: namespace_9c567844
	Checksum: 0x3F21DEB3
	Offset: 0x3290
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_e7bc299d()
{
	level flag::wait_till("hendricks_follow1_wait2");
	level clientfield::increment("debris_catwalk", 1);
	level flag::wait_till("play_shimmy_wall_debris");
	level clientfield::increment("debris_wall", 1);
}

/*
	Name: function_552e0e0a
	Namespace: namespace_9c567844
	Checksum: 0x663AF13E
	Offset: 0x3320
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_552e0e0a()
{
	level flag::wait_till("glass_railing_kicked");
	objectives::breadcrumb("post_data_breadcrumb");
	level flag::wait_till("post_discover_data");
	var_95951a6d = GetEnt("trig_discover_data_kill", "targetname");
	if(isdefined(var_95951a6d))
	{
		var_95951a6d delete();
	}
	objectives::set("cp_level_sgen_descend_into_core");
	objectives::breadcrumb("obj_first_jump_down");
	function_d693b44a();
}

/*
	Name: function_8e9806c5
	Namespace: namespace_9c567844
	Checksum: 0x19C2B48F
	Offset: 0x3418
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_8e9806c5(a_ents)
{
	level waittill("hash_922f2f3");
	level.var_2fd26037 SetModel("spawner_ally_hero_hendricks_sgen");
	level.var_2fd26037.animName = "hendricks";
	util::clear_streamer_hint();
	level flag::wait_till("highlight_railing_glass");
	var_eb043fdb = GetEnt("railing_kick", "animname");
	var_eb043fdb thread namespace_16f9ecd3::function_e228c18a(0, "glass_railing_kicked");
	level flag::wait_till("glass_railing_kicked");
	level thread scene::Play("p7_fxanim_cp_sgen_hendricks_railing_kick_bundle");
	level waittill("hash_359ae459");
	var_ed29ccc2 = GetEnt("bm_discover_data_player_clip", "targetname");
	var_ed29ccc2 delete();
	var_c7d2cbe9 = GetEnt("trig_post_discover_data", "targetname");
	var_c7d2cbe9 TriggerEnable(1);
}

/*
	Name: function_183c2b6
	Namespace: namespace_9c567844
	Checksum: 0xD1F010AF
	Offset: 0x35D0
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_183c2b6()
{
	level flag::wait_till("hendricks_data_anim_done");
	level flag::wait_till("post_discover_data");
	level scene::Play("cin_sgen_06_02_followtheleader_vign_hendricks_traversal_start");
	level flag::wait_till("hendricks_follow1_jump1");
	level scene::Play("cin_sgen_06_02_followtheleader_vign_hendricks_traversal_finish");
	self colors::enable();
	trigger::use("trig_color_post_first_jump", undefined, undefined, 0);
	level flag::wait_till("hendricks_follow1_wait3");
	trigger::use("pre_gen_lab_after_slide");
	level scene::Play("cin_sgen_06_02_followleader_vign_slide_hendricks");
	level flag::wait_till("player_near_shimmy");
	level.var_2fd26037 thread function_45dfc585();
}

/*
	Name: function_2e4ed53c
	Namespace: namespace_9c567844
	Checksum: 0x804420E9
	Offset: 0x3748
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_2e4ed53c(var_74cd64bc)
{
	level flag::wait_till("post_discover_data");
	if(var_74cd64bc)
	{
		level.var_2fd26037 dialog::say("hend_hey_let_s_go_0");
		level.var_2fd26037 dialog::say("hend_stick_to_the_ledge_0", 1);
	}
	wait(3);
	level flag::wait_till("enter_silo_killings_vo");
	wait(2);
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
	level dialog::function_13b3b16a("plyr_the_footage_we_saw_o_0");
	level.var_2fd26037 dialog::say("hend_i_ve_known_taylor_a_0", 1.5);
	level dialog::function_13b3b16a("plyr_maybe_he_wasn_t_the_0", 0.75);
	level.var_2fd26037 dialog::say("hend_even_so_doesn_t_ex_0", 1.33);
	level dialog::function_13b3b16a("plyr_we_ll_get_to_the_bot_0", 1);
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 1);
}

/*
	Name: function_8e0d5dae
	Namespace: namespace_9c567844
	Checksum: 0x63340086
	Offset: 0x3938
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_8e0d5dae()
{
	var_4fee738e = GetEnt("dust_fx", "targetname");
	var_4fee738e endon("death");
	while(1)
	{
		var_4fee738e waittill("trigger", who);
		if(isPlayer(who))
		{
			var_4fee738e SetInvisibleToPlayer(who);
			who clientfield::set_to_player("dust_motes", 1);
		}
	}
}

/*
	Name: function_d3711d76
	Namespace: namespace_9c567844
	Checksum: 0x194E5E4F
	Offset: 0x39F8
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_d3711d76()
{
	var_4121a753 = GetEnt("oarfish", "targetname");
	level flag::wait_till("hendricks_follow1_wait2");
	var_4121a753.angles = var_4121a753.angles + VectorScale((-1, 0, 0), 15);
	n_time = 10;
	s_target = var_4121a753;
	while(isdefined(s_target.target))
	{
		s_target = struct::get(s_target.target, "targetname");
		var_4121a753 moveto(s_target.origin, n_time);
		var_4121a753 RotateTo(s_target.angles, n_time, n_time / 2, n_time / 2);
		wait(n_time);
	}
}

/*
	Name: function_ab2e4091
	Namespace: namespace_9c567844
	Checksum: 0x73F1E0C7
	Offset: 0x3B40
	Size: 0x2E3
	Parameters: 2
	Flags: None
*/
function function_ab2e4091(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		namespace_2afd69a::spawn_drone("nd_start_gen_lab");
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::set("cp_level_sgen_descend_into_core");
		level.var_2fd26037 thread function_45dfc585();
		level thread function_d693b44a();
		level thread namespace_d40478f6::function_fb17452c();
		load::function_a2995f22();
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("sndSiloBG", 1);
			player clientfield::set_to_player("dust_motes", 1);
		}
	}
	level thread function_bed09c90();
	level clientfield::set("sndLabWalla", 1);
	level.var_ea764859 thread function_a6381cd();
	var_fe6ba37c = GetEnt("trig_gen_lab_door_player_check", "targetname");
	var_fe6ba37c TriggerEnable(0);
	level thread function_7e668807();
	level thread scene::init("p7_fxanim_cp_sgen_lab_ceiling_light_01_bundle");
	level thread scene::init("p7_fxanim_cp_sgen_lab_ceiling_light_02_bundle");
	level flag::wait_till_all(Array("hendricks_at_gen_lab_door", "player_at_gen_lab_door"));
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_d693b44a
	Namespace: namespace_9c567844
	Checksum: 0x3D4459
	Offset: 0x3E30
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d693b44a()
{
	objectives::breadcrumb("sgen_lab_breadcrumb_1");
	level flag::wait_till("gen_lab_cleared");
	objectives::breadcrumb("sgen_labs_exit_breadcrumb");
}

/*
	Name: function_bed09c90
	Namespace: namespace_9c567844
	Checksum: 0xDC0C4178
	Offset: 0x3E90
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_bed09c90()
{
	level flag::wait_till("trig_spawn_gen_lab");
	a_m_doors = GetEntArray("lobby_entrance_doors", "script_noteworthy");
	var_280d5f68 = GetEnt("silo_door_left", "targetname");
	var_3c301126 = GetEnt("silo_door_right", "targetname");
	var_280d5f68 RotateYaw(91, 1, 0.25, 0.4);
	playsoundatposition("evt_silo_door_open", var_280d5f68.origin);
	var_3c301126 RotateYaw(-91, 1, 0.25, 0.4);
	playsoundatposition("evt_silo_door_open", var_3c301126.origin);
}

/*
	Name: function_7e668807
	Namespace: namespace_9c567844
	Checksum: 0xB876E
	Offset: 0x4018
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_7e668807()
{
	level flag::wait_till("trig_spawn_gen_lab");
	level thread function_eee46d16();
	level thread function_a05adac1();
	level.var_2fd26037 thread function_c7a9d766();
	foreach(e_player in level.activePlayers)
	{
		e_player thread function_7d0e1b80();
	}
	level thread function_65b50bfd();
	level flag::wait_till("player_mid_gen_lab");
	spawner::simple_spawn("gen_lab_enemy_wave_2", &function_3121a98c);
	level thread function_f092b9c1();
}

/*
	Name: function_3121a98c
	Namespace: namespace_9c567844
	Checksum: 0x7CD258C1
	Offset: 0x4188
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_3121a98c()
{
	self.goalRadius = 1024;
	self ai::set_behavior_attribute("cqb", 1);
	var_e2f91888 = GetEnt("vol_gen_lab_fallback", "targetname");
	self SetGoal(var_e2f91888);
}

/*
	Name: function_a05adac1
	Namespace: namespace_9c567844
	Checksum: 0xB8D10AFF
	Offset: 0x4210
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a05adac1()
{
	level flag::wait_till("gen_lab_gone_hot");
	level battlechatter::function_d9f49fba(1);
	spawner::simple_spawn("gen_lab_reinforcements");
}

/*
	Name: function_65b50bfd
	Namespace: namespace_9c567844
	Checksum: 0xF98EAB23
	Offset: 0x4270
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_65b50bfd()
{
	level flag::wait_till("player_front_gen_lab");
	level flag::set("gen_lab_gone_hot");
	level thread namespace_d40478f6::function_b345d175();
}

/*
	Name: function_c7a9d766
	Namespace: namespace_9c567844
	Checksum: 0xB601F72C
	Offset: 0x42D8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_c7a9d766()
{
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	level flag::wait_till("gen_lab_gone_hot");
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
}

/*
	Name: function_7d0e1b80
	Namespace: namespace_9c567844
	Checksum: 0x99648A7B
	Offset: 0x4368
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_7d0e1b80()
{
	self endon("death");
	self ai::set_ignoreme(1);
	level flag::wait_till("gen_lab_gone_hot");
	if(self.active_camo === 1)
	{
		self waittill("hash_1d75a6cc");
	}
	self ai::set_ignoreme(0);
}

/*
	Name: function_eee46d16
	Namespace: namespace_9c567844
	Checksum: 0xC00E23B3
	Offset: 0x43E8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_eee46d16()
{
	spawner::waittill_ai_group_amount_killed("gen_lab_enemies", 3);
	trigger::use("gen_lab_color_chain_front", undefined, undefined, 0);
	spawner::waittill_ai_group_amount_killed("gen_lab_enemies", 6);
	spawner::waittill_ai_group_cleared("gen_lab_warlords");
	trigger::use("gen_lab_color_chain_mid", undefined, undefined, 0);
}

/*
	Name: function_426de534
	Namespace: namespace_9c567844
	Checksum: 0x2CBF91FD
	Offset: 0x4490
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_426de534(a_ents)
{
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent thread function_3764d5e();
		}
	}
}

/*
	Name: function_3764d5e
	Namespace: namespace_9c567844
	Checksum: 0xF796C529
	Offset: 0x4548
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3764d5e()
{
	level endon("hash_c95fad0d");
	self waittill("damage");
	namespace_cba4cc55::function_9cb9697d(self.current_scene);
	level flag::set("gen_lab_gone_hot");
	level thread namespace_d40478f6::function_b345d175();
}

/*
	Name: function_1cc12213
	Namespace: namespace_9c567844
	Checksum: 0xF7746F3
	Offset: 0x45C0
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_1cc12213()
{
	self endon("death");
	self.old_maxsightdistsqrd = self.maxsightdistsqrd;
	self.maxsightdistsqrd = 360000;
	self.fovcosine = 0.95;
	self thread function_9ce64b5a();
	self thread function_d7c7eef1();
	self namespace_16f9ecd3::function_6e4b8a4f();
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	if(self.script_string === "gen_lab_force_hot_guy")
	{
		self thread function_552c9cce();
	}
	level flag::wait_till("gen_lab_gone_hot");
	self.maxsightdistsqrd = self.old_maxsightdistsqrd;
	self.fovcosine = 0;
	self ai::set_behavior_attribute("cqb", 1);
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	self.goalRadius = 1024;
	if(self.script_string === "cover_office")
	{
		var_36b24c48 = GetEnt("gen_lab_office_goalvolume", "targetname");
	}
	else
	{
		var_36b24c48 = GetEnt("gen_lab_soldier_goal", "targetname");
	}
	self SetGoal(var_36b24c48);
	level flag::wait_till("player_mid_gen_lab");
	var_e2f91888 = GetEnt("vol_gen_lab_fallback", "targetname");
	self SetGoal(var_e2f91888);
}

/*
	Name: function_9ce64b5a
	Namespace: namespace_9c567844
	Checksum: 0xDED5163
	Offset: 0x4830
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_9ce64b5a()
{
	level endon("hash_c95fad0d");
	self endon("death");
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(self cansee(player))
			{
				level flag::set("gen_lab_gone_hot");
				level thread namespace_d40478f6::function_b345d175();
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_d7c7eef1
	Namespace: namespace_9c567844
	Checksum: 0xD1FC1799
	Offset: 0x4928
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d7c7eef1()
{
	self util::waittill_any("bulletwhizby", "grenade_fire");
	level flag::set("gen_lab_gone_hot");
}

/*
	Name: function_552c9cce
	Namespace: namespace_9c567844
	Checksum: 0xB47596B1
	Offset: 0x4980
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_552c9cce()
{
	level endon("hash_c95fad0d");
	self endon("death");
	level flag::wait_till("hendricks_in_gen_lab");
	var_17a7bd69 = GetNode("nd_gen_lab_patrol_force_hot", "targetname");
	self thread ai::patrol(var_17a7bd69);
}

/*
	Name: function_aafbf321
	Namespace: namespace_9c567844
	Checksum: 0xD55FFA52
	Offset: 0x4A08
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_aafbf321()
{
	self endon("death");
	self namespace_16f9ecd3::function_6e4b8a4f();
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	level flag::wait_till("gen_lab_gone_hot");
	self SetGoal(self.origin);
	self.goalRadius = 1024;
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	self WarlordInterface::SetWarlordAggressiveMode(1);
	self function_f61c0df8("node_gen_lab_warlord_preferred", 3, 5);
}

/*
	Name: function_627360fb
	Namespace: namespace_9c567844
	Checksum: 0x20CCF83F
	Offset: 0x4B20
	Size: 0xE3
	Parameters: 4
	Flags: None
*/
function function_627360fb(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level flag::set("gen_lab_door_opened");
	struct::delete_script_bundle("scene", "cin_sgen_06_02_followtheleader_vign_hendricks_traversal_start");
	struct::delete_script_bundle("scene", "cin_sgen_06_02_followtheleader_vign_hendricks_traversal_finish");
	struct::delete_script_bundle("scene", "cin_sgen_06_02_followleader_vign_slide_hendricks");
	struct::delete_script_bundle("scene", "cin_sgen_06_02_follow_leader_vign_wallrun");
	struct::delete_script_bundle("scene", "cin_sgen_07_01_genlab_vign_patrol");
}

/*
	Name: function_f092b9c1
	Namespace: namespace_9c567844
	Checksum: 0x5B51E2D
	Offset: 0x4C10
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_f092b9c1()
{
	spawner::waittill_ai_group_cleared("gen_lab_enemies");
	spawner::waittill_ai_group_cleared("gen_lab_warlords");
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	level flag::set("gen_lab_cleared");
	level thread namespace_d40478f6::function_973b77f9();
	level thread namespace_d40478f6::function_d930fe43();
	level battlechatter::function_d9f49fba(0);
}

/*
	Name: function_f61c0df8
	Namespace: namespace_9c567844
	Checksum: 0x491A2AA
	Offset: 0x4CD0
	Size: 0xE9
	Parameters: 3
	Flags: None
*/
function function_f61c0df8(var_e39815ad, n_time_min, n_time_max)
{
	var_91efa0da = GetNodeArray(var_e39815ad, "targetname");
	foreach(node in var_91efa0da)
	{
		self WarlordInterface::AddPreferedPoint(node.origin, n_time_min * 1000, n_time_max * 1000);
	}
}

/*
	Name: function_45dfc585
	Namespace: namespace_9c567844
	Checksum: 0x136E376A
	Offset: 0x4DC8
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_45dfc585()
{
	self colors::disable();
	var_387075d5 = GetNode("nd_hendricks_post_shimmy_wall", "targetname");
	self thread ai::force_goal(var_387075d5, 32);
	level flag::wait_till("player_past_shimmy_wall");
	level scene::Play("cin_sgen_06_02_follow_leader_vign_wallrun");
	self ai::set_behavior_attribute("cqb", 1);
	self ai::set_behavior_attribute("sprint", 0);
	var_d5b5e0a8 = GetNode("nd_hendricks_outside_gen_lab", "targetname");
	self thread ai::force_goal(var_d5b5e0a8, 32);
	level flag::wait_till("hendricks_gen_lab_intro_color");
	var_cb5df8f8 = GetNode("nd_hendricks_front_gen_lab", "targetname");
	self ai::force_goal(var_cb5df8f8, 32);
	level flag::set("hendricks_in_gen_lab");
	self colors::enable();
	level thread function_532aa385();
	level flag::wait_till("gen_lab_gone_hot");
	level.var_2fd26037 ai::set_ignoreall(0);
	level thread namespace_d40478f6::function_b345d175();
	self.goalRadius = 1024;
	level flag::wait_till("gen_lab_cleared");
	self colors::disable();
	var_320f1cb = GetNode("nd_gen_lab_door", "targetname");
	self SetGoal(var_320f1cb, 1);
	self waittill("goal");
	level flag::set("hendricks_at_gen_lab_door");
	level flag::wait_till("gen_lab_door_opened");
	self colors::enable();
}

/*
	Name: function_532aa385
	Namespace: namespace_9c567844
	Checksum: 0x7E1BC53F
	Offset: 0x50F0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_532aa385()
{
	level endon("hash_c95fad0d");
	var_c085d91c = [];
	var_c085d91c[0] = "hendricks_in_gen_lab";
	var_c085d91c[1] = "pre_gen_lab_vo_done";
	level flag::wait_till_any(var_c085d91c);
	if(!level flag::get("gen_lab_gone_hot"))
	{
		level.var_2fd26037 dialog::say("hend_take_the_first_shot_0");
	}
}

/*
	Name: function_d26cae1c
	Namespace: namespace_9c567844
	Checksum: 0x80B3264D
	Offset: 0x5198
	Size: 0x323
	Parameters: 2
	Flags: None
*/
function function_d26cae1c(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		namespace_2afd69a::spawn_drone("nd_post_gen_lab_start");
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::set("cp_level_sgen_descend_into_core");
		level thread objectives::breadcrumb("sgen_labs_exit_breadcrumb");
		var_6d927f8e = GetEnt("gen_lab_end_door", "targetname");
		var_6d927f8e delete();
		level flag::set("gen_lab_door_opened");
		load::function_a2995f22();
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("sndSiloBG", 1);
			player clientfield::set_to_player("dust_motes", 1);
		}
		level thread namespace_d40478f6::function_d930fe43();
	}
	level notify("hash_996f8b77");
	level thread function_8a4d2dee();
	level thread function_a6226aba();
	level.var_2fd26037 thread function_201e2a08();
	level.var_ea764859 thread function_2c83d390();
	var_58d37bcd = GetEnt("trig_bridge_kill_trigger", "targetname");
	var_58d37bcd TriggerEnable(0);
	var_dee3d10a = GetEnt("1", "scriptgroup_playerspawns_regroup");
	var_dee3d10a.var_3367c99d = 500;
	level flag::wait_till("follow_chem_lab");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_dcc3e542
	Namespace: namespace_9c567844
	Checksum: 0x234A98DC
	Offset: 0x54C8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_dcc3e542(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_982aa3da
	Namespace: namespace_9c567844
	Checksum: 0x2DDF89FB
	Offset: 0x54F8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_982aa3da()
{
	level endon("hash_8210273d");
	level flag::wait_till("gen_lab_hendricks_safety");
	level flag::set("hendricks_follow1_jump1");
	level flag::set("hendricks_follow1_wait2");
	level flag::set("hendricks_follow1_wait3");
	level flag::set("hendricks_follow1_wait4");
}

/*
	Name: function_8a4d2dee
	Namespace: namespace_9c567844
	Checksum: 0x1B3562B1
	Offset: 0x55B0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_8a4d2dee()
{
	function_9e3608e3("silo_bridge_edge_break_static");
	level clientfield::increment("debris_fall", 1);
	level flag::wait_till("main_bridge_collapse");
	level thread scene::Play("p7_fxanim_cp_sgen_bridge_silo_debris_bundle");
	level scene::Play("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
	function_6ddd4fa4("silo_bridge_edge_break_static");
	level flag::wait_till("post_bridge_collapse_rocks");
	level clientfield::increment("debris_bridge", 1);
}

/*
	Name: function_201e2a08
	Namespace: namespace_9c567844
	Checksum: 0xA8CABE74
	Offset: 0x56B0
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_201e2a08()
{
	level scene::Play("cin_sgen_08_01_followleader_2_vign_pathfinding_aie_jumpdown_hendricks");
	level flag::wait_till("hendricks_follow2_wallrun_trick");
	scene::add_scene_func("cin_sgen_09_01_chemlab_vign_windowknock_robots_start", &function_67a6b650);
	level thread scene::Play("cin_sgen_09_01_chemlab_vign_windowknock_robots_start");
	level scene::Play("cin_sgen_08_01_followleader2_vign_wallrun");
	level flag::wait_till("hendricks_wallrun_done");
	self SetGoal(GetNode("nd_before_bridge_collapse", "targetname"), 1);
	self ai::set_behavior_attribute("cqb", 1);
	self ai::set_behavior_attribute("sprint", 0);
	level flag::wait_till("post_bridge_collapse_rocks");
	self thread dialog::say("hend_watch_your_step_t_1", 1);
	level scene::stop("cin_sgen_08_01_followleader2_vign_wallrun");
	self SetGoal(GetNode("nd_after_bridge_collapse", "targetname"), 1);
	self waittill("goal");
	self ai::set_behavior_attribute("cqb", 0);
	self ai::set_behavior_attribute("sprint", 1);
}

/*
	Name: function_a6226aba
	Namespace: namespace_9c567844
	Checksum: 0x68E58474
	Offset: 0x58E0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a6226aba()
{
	level flag::wait_till("hendricks_follow2_jumpdown");
	level.var_2fd26037 dialog::say("hend_you_trying_to_send_u_0");
	level dialog::remote("kane_i_just_want_the_same_0", 0.75);
}

/*
	Name: function_f6774f56
	Namespace: namespace_9c567844
	Checksum: 0x610B0D61
	Offset: 0x5958
	Size: 0x363
	Parameters: 2
	Flags: None
*/
function function_f6774f56(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		namespace_2afd69a::spawn_drone("nd_follow_chem_lab");
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::set("cp_level_sgen_descend_into_core");
		level scene::skipto_end("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
		level flag::set("hendricks_wallrun_done");
		scene::add_scene_func("cin_sgen_09_01_chemlab_vign_windowknock_robots_start", &function_67a6b650);
		level thread scene::Play("cin_sgen_09_01_chemlab_vign_windowknock_robots_start");
		level thread namespace_d40478f6::function_d930fe43();
		load::function_a2995f22();
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("sndSiloBG", 1);
			player clientfield::set_to_player("dust_motes", 1);
		}
	}
	else if(isdefined(level.BZM_SGENDialogue3Callback))
	{
		level thread [[level.BZM_SGENDialogue3Callback]]();
	}
	level.var_2fd26037 thread function_53d46eee();
	level.var_ea764859 thread function_1acc965e();
	level scene::init("cin_sgen_09_02_chem_lab_vign_opendoor_hendricks");
	level scene::init("cin_sgen_11_02_silofloor_vign_notice_hendricks");
	level thread function_631aad();
	level thread function_5a74dfe6();
	level thread function_144d5a8a();
	var_3fe0a4d2 = GetEnt("trig_player_at_silo_floor", "targetname");
	var_3fe0a4d2 TriggerEnable(0);
	level flag::wait_till("follow3_1");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_79f1dc0
	Namespace: namespace_9c567844
	Checksum: 0xE5BB9D77
	Offset: 0x5CC8
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_79f1dc0(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level flag::set("chem_door_open");
	struct::delete_script_bundle("cin_sgen_09_01_chemlab_vign_windowknock_robots_stop");
	struct::delete_script_bundle("cin_sgen_09_01_chemlab_vign_windowknock_hendricks_start_idle");
	struct::delete_script_bundle("cin_sgen_09_01_chemlab_vign_windowknock_hendricks_moveinroom");
}

/*
	Name: function_631aad
	Namespace: namespace_9c567844
	Checksum: 0xD33C153E
	Offset: 0x5D60
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_631aad()
{
	level thread objectives::breadcrumb("obj_chem_lab_mid_breadcrumb");
	level flag::wait_till("player_in_chem_lab");
	level waittill("hash_7afd09b6");
	objectives::breadcrumb("obj_chem_lab_door_breadcrumb");
}

/*
	Name: function_53d46eee
	Namespace: namespace_9c567844
	Checksum: 0x3399E2BE
	Offset: 0x5DD8
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function function_53d46eee()
{
	level flag::wait_till("hendricks_wallrun_done");
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self ai::set_behavior_attribute("cqb", 1);
	self ai::set_behavior_attribute("sprint", 0);
	level thread scene::Play("cin_sgen_09_01_chemlab_vign_windowknock_hendricks_start_idle");
	level waittill("hash_797660ac");
	level flag::wait_till("chem_lab_start");
	level scene::Play("cin_sgen_09_01_chemlab_vign_windowknock_hendricks_moveinroom");
	level flag::wait_till("player_in_chem_lab");
	level thread scene::Play("cin_sgen_09_01_chemlab_vign_windowknock_robots_stop");
	level thread scene::Play("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree");
	level flag::wait_till("chem_lab_hendricks_movein_done");
	level thread scene::Play("cin_sgen_09_02_chem_lab_vign_opendoor_hendricks");
	level waittill("hash_99a916d7");
	var_91729078 = GetEnt("chem_lab_door_player_clip", "targetname");
	var_91729078 notsolid();
	level waittill("hash_7afd09b6");
	level thread function_c411551e();
	level flag::set("chem_door_open");
	trigger::wait_till("trig_silo_floor_player_check");
	level flag::set("all_players_outside_chem_lab");
	var_91729078 solid();
	level scene::Play("cin_sgen_09_02_chem_lab_vign_exitdoor_hendricks");
	level.var_2fd26037 ai::set_ignoreme(0);
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 1);
	self thread function_abf124c5();
}

/*
	Name: function_c411551e
	Namespace: namespace_9c567844
	Checksum: 0x27353F98
	Offset: 0x6110
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_c411551e()
{
	level endon("hash_a643ceff");
	level endon("hash_41959839");
	wait(8);
	level.var_2fd26037 dialog::say("hend_i_m_not_gonna_hold_i_0");
	wait(10);
	level.var_2fd26037 dialog::say("hend_wanna_pick_up_the_pa_0");
}

/*
	Name: function_144d5a8a
	Namespace: namespace_9c567844
	Checksum: 0xE1B20752
	Offset: 0x6188
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_144d5a8a()
{
	scene::add_scene_func("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree", &function_67a6b650);
	scene::init("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree");
	level thread function_ed4bb74b();
	level flag::wait_till("start_chem_lab_robot_scare");
	level thread scene::Play("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree_stop");
}

/*
	Name: function_ed4bb74b
	Namespace: namespace_9c567844
	Checksum: 0x36BCEDC7
	Offset: 0x6230
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_ed4bb74b()
{
	level clientfield::set("w_robot_window_break", 2);
	level waittill("hash_d4320be3");
	level thread namespace_d40478f6::function_98762d53();
	level notify("hash_aa7c8a11");
	level.players[0] thread dialog::function_13b3b16a("plyr_shit_1", 1);
	level clientfield::set("w_robot_window_break", 1);
}

/*
	Name: function_67a6b650
	Namespace: namespace_9c567844
	Checksum: 0xF1D5B476
	Offset: 0x62D8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_67a6b650(a_ents)
{
	Array::thread_all_ents(a_ents, &function_7bff1955);
}

/*
	Name: function_7bff1955
	Namespace: namespace_9c567844
	Checksum: 0xCD17296F
	Offset: 0x6310
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_7bff1955(e_robot)
{
	e_robot Attach("c_cia_robot_dam_1_lights_1");
	e_robot clientfield::set("play_cia_robot_rogue_control", 1);
	e_robot waittill("lights_out");
	e_robot clientfield::set("play_cia_robot_rogue_control", 0);
}

/*
	Name: function_4843e971
	Namespace: namespace_9c567844
	Checksum: 0x22A075E3
	Offset: 0x6398
	Size: 0x3AB
	Parameters: 2
	Flags: None
*/
function function_4843e971(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
		level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
		level flag::set("player_in_chem_lab");
		namespace_2afd69a::spawn_drone("nd_pre_ambush");
		level.var_ea764859 thread function_3054092d();
		level.var_2fd26037 thread function_abf124c5();
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::set("cp_level_sgen_descend_into_core");
		level scene::skipto_end("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
		level scene::skipto_end("cin_sgen_09_02_chem_lab_vign_exitdoor_hendricks");
		scene::add_scene_func("cin_sgen_11_02_silofloor_vign_notice_hendricks", &function_2e68b5db, "init");
		level scene::init("cin_sgen_11_02_silofloor_vign_notice_hendricks");
		level thread function_5a74dfe6();
		level thread namespace_d40478f6::function_98762d53();
		level flag::set("follow3_1");
		var_3fe0a4d2 = GetEnt("trig_player_at_silo_floor", "targetname");
		var_3fe0a4d2 TriggerEnable(0);
		level flag::set("chem_door_open");
		load::function_a2995f22();
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("sndSiloBG", 1);
			player clientfield::set_to_player("dust_motes", 1);
		}
	}
	level thread function_9ed55736();
	level flag::wait_till("player_at_silo_floor");
	if(isdefined(level.BZM_SGENDialogue4Callback))
	{
		level thread [[level.BZM_SGENDialogue4Callback]]();
	}
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_ff8909db
	Namespace: namespace_9c567844
	Checksum: 0x96F7F73
	Offset: 0x6750
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_ff8909db(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	struct::delete_script_bundle("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree");
	struct::delete_script_bundle("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree_stop");
	struct::delete_script_bundle("cin_sgen_09_02_chem_lab_vign_opendoor_hendricks");
	struct::delete_script_bundle("cin_sgen_09_02_chem_lab_vign_exitdoor_hendricks");
}

/*
	Name: function_9ed55736
	Namespace: namespace_9c567844
	Checksum: 0xC93FB03B
	Offset: 0x67E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9ed55736()
{
	objectives::breadcrumb("obj_chem_lab_slide_breadcrumb");
}

/*
	Name: function_abf124c5
	Namespace: namespace_9c567844
	Checksum: 0x7A4C4912
	Offset: 0x6808
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_abf124c5()
{
	level thread function_dce4e081();
	self.goalRadius = 32;
	var_bb56ca64 = GetNode("nd_hendricks_post_chem_lab", "targetname");
	self SetGoal(var_bb56ca64.origin, 1);
	level flag::wait_till("hendricks_follow3_wait1");
	level scene::Play("cin_sgen_10_01_followleader3_vign_slide");
	var_f98517de = GetNode("hendricks_silo_floor", "targetname");
	self ai::force_goal(var_f98517de, 32);
	self thread function_fe2615a5();
}

/*
	Name: function_dce4e081
	Namespace: namespace_9c567844
	Checksum: 0x7F4D13DD
	Offset: 0x6930
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_dce4e081()
{
	level dialog::remote("plyr_kane_could_someone_0");
	level dialog::remote("kane_it_s_unlikely_that_a_0");
}

/*
	Name: function_c15000a5
	Namespace: namespace_9c567844
	Checksum: 0xCCCA64C2
	Offset: 0x6980
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_c15000a5()
{
	level flag::wait_till("player_ev_tutorial");
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.var_aa3f3ac2) && player.var_aa3f3ac2)
		{
			return;
			continue;
		}
		player thread util::show_hint_text(&"CP_MI_SING_SGEN_EV_TUTORIAL", 0, "enhanced_vision_activated", 5);
	}
}

/*
	Name: function_6926cd7f
	Namespace: namespace_9c567844
	Checksum: 0xBF257ACC
	Offset: 0x6A78
	Size: 0x2E3
	Parameters: 2
	Flags: None
*/
function function_6926cd7f(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
		level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
		level.var_2fd26037 thread function_fe2615a5();
		namespace_2afd69a::spawn_drone("nd_highlight_grate");
		level.var_ea764859 thread function_fdbec74b();
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::set("cp_level_sgen_descend_into_core");
		level scene::skipto_end("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
		scene::add_scene_func("cin_sgen_11_02_silofloor_vign_notice_hendricks", &function_2e68b5db, "init");
		level scene::init("cin_sgen_11_02_silofloor_vign_notice_hendricks");
		level flag::set("follow3_1");
		level thread function_5a74dfe6();
		load::function_a2995f22();
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("sndSiloBG", 1);
			player clientfield::set_to_player("dust_motes", 1);
		}
		level flag::set("start_silo_floor_battle");
	}
	level thread function_6720a440();
	function_ee660c8a();
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_6720a440
	Namespace: namespace_9c567844
	Checksum: 0x852DB5AC
	Offset: 0x6D68
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_6720a440()
{
	level flag::wait_till("hendricks_at_silo_floor");
	level flag::wait_till("player_at_silo_floor");
	level flag::set("send_drone_over_grate");
	level.var_2fd26037 dialog::say("hend_recon_drone_says_the_0");
	level.var_2fd26037 dialog::say("hend_anyone_wanna_bet_a_h_0", 0.5);
	playsoundatposition(" evt_metal_bang", (-624, 995, -2569));
	wait(1);
	playsoundatposition("mus_coalescence_theme_silo", (-624, 995, -2569));
	wait(1);
	level notify("ambush");
	level thread namespace_d40478f6::function_e596bdfd();
	level flag::set("start_floor_risers");
	level.var_2fd26037 dialog::say("hend_whoa_what_the_hel_0");
	level.var_2fd26037 dialog::say("hend_whoa_whoa_0", 1);
	level dialog::remote("kane_hendricks_they_re_t_0");
	level flag::wait_till("start_silo_ambush");
	level battlechatter::function_d9f49fba(1);
}

/*
	Name: function_fe2615a5
	Namespace: namespace_9c567844
	Checksum: 0xCB8B5FCA
	Offset: 0x6F60
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_fe2615a5()
{
	level flag::set("hendricks_at_silo_floor");
	var_3fe0a4d2 = GetEnt("trig_player_at_silo_floor", "targetname");
	var_3fe0a4d2 TriggerEnable(1);
	level flag::wait_till("player_at_silo_floor");
	var_fefa0361 = GetNode("nd_hendricks_silo_front", "targetname");
	self ai::force_goal(var_fefa0361, 32);
	level flag::wait_till("start_silo_ambush");
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	objectives::set("cp_level_sgen_silo_kill");
	var_2131da4e = GetNode("nd_hendricks_silo_fallback", "targetname");
	self ai::force_goal(var_2131da4e, 32);
}

/*
	Name: function_ee660c8a
	Namespace: namespace_9c567844
	Checksum: 0xE1179DB7
	Offset: 0x70F0
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function function_ee660c8a()
{
	Array::thread_all(GetSpawnerArray("silo_robot_rusher", "script_noteworthy"), &spawner::add_spawn_function, &function_e45f3fb4);
	Array::thread_all(GetSpawnerArray("middle_room_robots", "targetname"), &spawner::add_spawn_function, &function_13ad6b1f);
	Array::thread_all(GetSpawnerArray("silo_ambush_robots", "targetname"), &spawner::add_spawn_function, &function_13ad6b1f);
	savegame::function_5d2cdd99();
	level flag::wait_till("start_silo_ambush");
	level.var_ea764859 namespace_2afd69a::function_74191a2(1);
	level thread function_b8692659();
	if(level.players.size > 1)
	{
		n_delay = 20;
	}
	else
	{
		n_delay = 30;
	}
	level thread flag::delay_set(n_delay, "spawn_silo_robots");
	level flag::wait_till("spawn_silo_robots");
	level util::delay(2, undefined, &function_847fb8ed, "break_higher_balcony_right");
	level util::delay(4.5, undefined, &function_847fb8ed, "break_higher_balcony_left");
	spawner::simple_spawn("silo_ambush_robots");
	spawner::waittill_ai_group_cleared("silo_floor_robots");
	level thread namespace_d40478f6::function_973b77f9();
	level battlechatter::function_d9f49fba(0);
	level.var_ea764859 namespace_2afd69a::function_74191a2(0);
	level flag::set("silo_floor_cleared");
	level.var_2fd26037 dialog::say("hend_all_clear_who_the_h_0", 1);
	level dialog::remote("kane_i_don_t_know_i_m_0", 0.5);
	objectives::complete("cp_level_sgen_silo_kill");
}

/*
	Name: function_b8692659
	Namespace: namespace_9c567844
	Checksum: 0x2184882E
	Offset: 0x7428
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_b8692659()
{
	wait(5);
	spawner::simple_spawn("middle_room_robots");
	if(level.players.size > 1)
	{
		n_killed = 4;
	}
	else
	{
		n_killed = 6;
	}
	spawner::waittill_ai_group_amount_killed("silo_floor_robots", n_killed);
	level flag::set("spawn_silo_robots");
}

/*
	Name: function_5a74dfe6
	Namespace: namespace_9c567844
	Checksum: 0xC87EBFEB
	Offset: 0x74C8
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_5a74dfe6()
{
	level thread function_cc37bee6("front_robot_riser_01", 1);
	level thread function_cc37bee6("front_robot_riser_02", 3.5);
	level thread function_cc37bee6("front_robot_riser_03", 2.5);
	level thread function_cc37bee6("middle_room_riser_01", 1);
	level thread function_cc37bee6("middle_room_riser_02", 3);
	level thread function_cc37bee6("middle_room_riser_03", 1.5);
	level thread function_cc37bee6("middle_room_riser_04", 4);
	level flag::wait_till("start_floor_risers");
	wait(2);
	level thread function_847fb8ed("break_lower_balcony");
	level flag::set("start_silo_ambush");
}

/*
	Name: function_847fb8ed
	Namespace: namespace_9c567844
	Checksum: 0x84595D8
	Offset: 0x7630
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_847fb8ed(var_5b3b7ceb)
{
	var_80fc8ac2 = struct::get(var_5b3b7ceb);
	var_895e60d2 = struct::get_array(var_80fc8ac2.target);
	for(i = 0; i < 5; i++)
	{
		var_895e60d2 = Array::randomize(var_895e60d2);
		foreach(var_c62a5d83 in var_895e60d2)
		{
			MagicBullet(level.var_2fd26037.weapon, var_80fc8ac2.origin, var_c62a5d83.origin);
			wait(RandomFloatRange(0.05, 0.2));
		}
	}
}

/*
	Name: function_cc37bee6
	Namespace: namespace_9c567844
	Checksum: 0x86A05701
	Offset: 0x77A8
	Size: 0x2B3
	Parameters: 2
	Flags: None
*/
function function_cc37bee6(str_align, n_delay)
{
	var_a269823c = spawner::simple_spawn_single("robot_riser_spawner");
	var_a269823c endon("death");
	var_a269823c namespace_16f9ecd3::disable_thermal();
	var_a269823c clientfield::set("disable_tmode", 1);
	var_a269823c DisableAimAssist();
	var_a269823c function_73a47766(0);
	var_a269823c ai::set_behavior_attribute("robot_lights", 2);
	s_align = struct::get(str_align);
	s_align thread scene::init(var_a269823c);
	level flag::wait_till("start_floor_risers");
	if(isdefined(n_delay))
	{
		wait(n_delay);
	}
	var_a269823c ai::set_behavior_attribute("rogue_control", "forced_level_1");
	var_a269823c ai::set_behavior_attribute("robot_lights", 0);
	s_align thread scene::Play(var_a269823c);
	var_a269823c namespace_16f9ecd3::function_b3ce91e0();
	var_a269823c clientfield::set("disable_tmode", 0);
	var_a269823c EnableAimAssist();
	var_a269823c function_73a47766(1);
	if(isdefined(s_align.target))
	{
		nd_goal = GetNode(s_align.target, "targetname");
		var_a269823c SetGoal(nd_goal, 1);
	}
	else
	{
		var_5a6f1df6 = GetEnt("silo_floor_volume", "targetname");
		var_a269823c SetGoal(var_5a6f1df6);
	}
}

/*
	Name: function_13ad6b1f
	Namespace: namespace_9c567844
	Checksum: 0x607E9952
	Offset: 0x7A68
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_13ad6b1f()
{
	self endon("death");
	self ai::set_behavior_attribute("rogue_control", "forced_level_1");
	if(isdefined(self.target))
	{
		nd_goal = GetNode(self.target, "targetname");
		self ai::force_goal(nd_goal, 32);
	}
	else
	{
		var_5a6f1df6 = GetEnt("silo_floor_volume", "targetname");
		self SetGoal(var_5a6f1df6, 1);
	}
}

/*
	Name: function_e45f3fb4
	Namespace: namespace_9c567844
	Checksum: 0xF0C71CDD
	Offset: 0x7B50
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e45f3fb4()
{
	self endon("death");
	self ai::set_behavior_attribute("rogue_control", "forced_level_1");
	if(level.players.size == 1)
	{
		wait(RandomFloatRange(0.5, 2.5));
	}
	self ai::set_behavior_attribute("move_mode", "rusher");
	self ai::set_behavior_attribute("sprint", 1);
}

/*
	Name: function_e3f81a25
	Namespace: namespace_9c567844
	Checksum: 0xA430CD31
	Offset: 0x7C08
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function function_e3f81a25(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	struct::delete_script_bundle("scene", "cin_sgen_08_01_followleader_2_vign_pathfinding_aie_jumpdown_hendricks");
	struct::delete_script_bundle("scene", "cin_sgen_08_01_followleader2_vign_wallrun");
	struct::delete_script_bundle("scene", "cin_sgen_09_01_chemlab_vign_windowknock_robots_start");
	struct::delete_script_bundle("scene", "cin_sgen_10_01_followleader3_vign_slide");
	struct::delete_script_bundle("scene", "p7_fxanim_cp_sgen_hendricks_railing_kick_bundle");
}

/*
	Name: function_73a47766
	Namespace: namespace_9c567844
	Checksum: 0xAE026F32
	Offset: 0x7CD8
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_73a47766(b_state)
{
	if(b_state)
	{
		self cybercom::function_a1f70a02("cybercom_servoshortout");
		self cybercom::function_a1f70a02("cybercom_systemoverload");
		self cybercom::function_a1f70a02("cybercom_immolation");
		self cybercom::function_a1f70a02("cybercom_fireflyswarm");
		self cybercom::function_a1f70a02("cybercom_iffoverride");
		self cybercom::function_a1f70a02("cybercom_surge");
	}
	else
	{
		self cybercom::function_59965309("cybercom_servoshortout");
		self cybercom::function_59965309("cybercom_systemoverload");
		self cybercom::function_59965309("cybercom_immolation");
		self cybercom::function_59965309("cybercom_fireflyswarm");
		self cybercom::function_59965309("cybercom_iffoverride");
		self cybercom::function_59965309("cybercom_surge");
	}
}

/*
	Name: function_77964ef1
	Namespace: namespace_9c567844
	Checksum: 0x5639C810
	Offset: 0x7E78
	Size: 0x3D3
	Parameters: 2
	Flags: None
*/
function function_77964ef1(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		SGEN::function_bff1a867(str_objective);
		namespace_2afd69a::spawn_drone("nd_silo_grate");
		level.var_ea764859 thread function_e6e2c015();
		level scene::skipto_end("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
		scene::add_scene_func("cin_sgen_11_02_silofloor_vign_notice_hendricks", &function_2e68b5db, "init");
		level scene::init("cin_sgen_11_02_silofloor_vign_notice_hendricks");
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::set("cp_level_sgen_descend_into_core");
		level flag::set("silo_floor_cleared");
		level flag::set("drone_over_grate");
		level flag::set("start_silo_ambush");
		level flag::wait_till("all_players_spawned");
		level thread namespace_d40478f6::function_71f06599();
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("sndSiloBG", 1);
		}
		load::function_a2995f22();
	}
	level clientfield::set("w_underwater_state", 1);
	level clientfield::set("fallen_soldiers_client_fxanims", 1);
	level.var_2fd26037 function_28906173();
	level flag::wait_till("enter_corvus");
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("sndSiloBG", 0);
		player clientfield::set_to_player("dust_motes", 0);
	}
	objectives::complete("cp_level_sgen_descend_into_core");
	skipto::function_be8adfb8(str_objective);
	level thread function_8738e00c();
}

/*
	Name: function_1ebdd30c
	Namespace: namespace_9c567844
	Checksum: 0xFA713318
	Offset: 0x8258
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1ebdd30c()
{
	objectives::breadcrumb("under_silo_breadcrumb");
}

/*
	Name: function_2edb6f5b
	Namespace: namespace_9c567844
	Checksum: 0x8DE191A9
	Offset: 0x8280
	Size: 0x14B
	Parameters: 4
	Flags: None
*/
function function_2edb6f5b(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level flag::set("silo_grate_open");
	struct::delete_script_bundle("p7_fxanim_cp_sgen_lab_ceiling_light_01_bundle");
	struct::delete_script_bundle("p7_fxanim_cp_sgen_lab_ceiling_light_02_bundle");
	struct::delete_script_bundle("p7_fxanim_cp_sgen_monkey_jar_bundle");
	struct::delete_script_bundle("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
	struct::delete_script_bundle("cin_sgen_11_02_silofloor_vign_notice_hendricks");
	struct::delete_script_bundle("cin_sgen_11_02_silofloor_vign_notice_drone");
	struct::delete_script_bundle("cin_sgen_11_02_silofloor_traverse_vign_hendricks_firstjump");
	struct::delete_script_bundle("cin_sgen_11_02_silofloor_traverse_vign_hendricks_secondjump");
	struct::delete_script_bundle("cin_sgen_11_02_silofloor_traverse_vign_hendricks_thirdjump");
	struct::delete_script_bundle("cin_sgen_11_02_silofloor_traverse_vign_hendricks_fourthjump");
	struct::delete_script_bundle("cin_sgen_11_02_silofloor_traverse_vign_hendricks_fifthjump");
}

/*
	Name: function_8738e00c
	Namespace: namespace_9c567844
	Checksum: 0x3FEA6C2B
	Offset: 0x83D8
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_8738e00c()
{
	a_bodies = GetCorpseArray();
	foreach(corpse in a_bodies)
	{
		if(isdefined(corpse))
		{
			corpse delete();
			wait(0.05);
		}
	}
}

/*
	Name: function_2e68b5db
	Namespace: namespace_9c567844
	Checksum: 0x15DD925D
	Offset: 0x84A0
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_2e68b5db(a_scene_ents)
{
	level flag::wait_till("drone_over_grate");
	a_scene_ents["silo_floor_grate"] clientfield::set("structural_weakness", 1);
	level flag::wait_till("start_silo_ambush");
	a_scene_ents["silo_floor_grate"] clientfield::set("structural_weakness", 0);
	level flag::wait_till("drone_over_grate_real");
	a_scene_ents["silo_floor_grate"] clientfield::set("structural_weakness", 1);
	level flag::wait_till("silo_grate_open");
	a_scene_ents["silo_floor_grate"] clientfield::set("structural_weakness", 0);
}

/*
	Name: function_28906173
	Namespace: namespace_9c567844
	Checksum: 0x13AEBFEC
	Offset: 0x85E8
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_28906173()
{
	self ai::set_behavior_attribute("cqb", 1);
	self ai::set_behavior_attribute("sprint", 0);
	level flag::wait_till("silo_floor_regroup");
	level thread function_c15000a5();
	level flag::wait_till("drone_over_grate_real");
	if(isdefined(level.BZM_SGENDialogue4_1Callback))
	{
		level thread [[level.BZM_SGENDialogue4_1Callback]]();
	}
	scene::Play("cin_sgen_11_02_silofloor_vign_notice_hendricks");
	level thread function_953a1437();
	level thread function_1ebdd30c();
	level thread util::clientNotify("sound_kill_thunder");
	level scene::Play("cin_sgen_11_02_silofloor_traverse_vign_hendricks_firstjump");
	level.var_2fd26037 waittill("hash_568ee845");
	wait(1);
	level flag::wait_till("hendricks_under_silo_second_jump");
	level thread scene::Play("cin_sgen_11_02_silofloor_traverse_vign_hendricks_secondjump");
	level.var_2fd26037 waittill("hash_568ee845");
	level flag::wait_till("hendricks_under_silo_third_jump");
	level thread scene::Play("cin_sgen_11_02_silofloor_traverse_vign_hendricks_thirdjump");
	level.var_2fd26037 waittill("hash_568ee845");
	level flag::wait_till("hendricks_under_silo_fourth_jump");
	level thread scene::Play("cin_sgen_11_02_silofloor_traverse_vign_hendricks_fourthjump");
	level.var_2fd26037 waittill("hash_568ee845");
	level flag::wait_till("hendricks_under_silo_fifth_jump");
	level scene::Play("cin_sgen_11_02_silofloor_traverse_vign_hendricks_fifthjump");
	var_d3556aed = GetNode("nd_post_jump_downs", "targetname");
	self SetGoal(var_d3556aed, 1);
}

/*
	Name: function_953a1437
	Namespace: namespace_9c567844
	Checksum: 0x733CB123
	Offset: 0x88C8
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_953a1437()
{
	level dialog::remote("kane_limited_light_ahead_0", 1);
	level.var_2fd26037 dialog::say("hend_copy_that_kane_0", 0.8);
	level flag::wait_till("hendricks_under_silo_second_jump");
	level.var_2fd26037 dialog::say("hend_hustle_recon_drone_0");
	level flag::wait_till("drone_died");
	level.var_2fd26037 dialog::say("hend_kane_we_lost_the_f_0");
	level dialog::remote("kane_negative_beat_blu_0", 1);
	level.var_2fd26037 dialog::say("hend_fucking_tech_0", 0.5);
	level dialog::remote("kane_keep_moving_gps_co_0", 1);
	objectives::complete("cp_level_sgen_descend_into_core");
	objectives::set("cp_level_sgen_find_recon_drone", level.var_ea764859);
}

/*
	Name: function_f142d622
	Namespace: namespace_9c567844
	Checksum: 0x28CE592C
	Offset: 0x8A40
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_f142d622()
{
	self thread function_80ea03f0();
	level flag::wait_till("post_discover_data");
	if(level scene::is_active("cin_sgen_06_01_followleader_vign_activate_eac_drone"))
	{
		level scene::stop("cin_sgen_06_01_followleader_vign_activate_eac_drone");
	}
	self namespace_2afd69a::follow_path("nd_post_discover_data", "post_discover_data");
	level flag::wait_till("player_past_shimmy_wall");
}

/*
	Name: function_80ea03f0
	Namespace: namespace_9c567844
	Checksum: 0x21D4D078
	Offset: 0x8B10
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_80ea03f0()
{
	level flag::wait_till("player_past_shimmy_wall");
	self notify("hash_c4902f95");
	if(level flag::get("drone_scanning"))
	{
		level flag::clear("drone_scanning");
	}
	self namespace_2afd69a::function_6a8adcf6(35);
}

/*
	Name: function_51e1520f
	Namespace: namespace_9c567844
	Checksum: 0x3C2BE89F
	Offset: 0x8BA0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_51e1520f()
{
	wait(3.4);
	level.var_2fd26037 dialog::say("hend_shit_damn_54i_are_0");
	level dialog::function_13b3b16a("plyr_i_think_it_s_time_we_0");
	level flag::set("pre_gen_lab_vo_done");
}

/*
	Name: function_a6381cd
	Namespace: namespace_9c567844
	Checksum: 0xD6E182C1
	Offset: 0x8C18
	Size: 0x433
	Parameters: 0
	Flags: None
*/
function function_a6381cd()
{
	level scene::init("cin_sgen_07_01_genlab_vign_patrol");
	self namespace_2afd69a::function_6a8adcf6(25);
	self namespace_2afd69a::follow_path("nd_start_gen_lab");
	self namespace_2afd69a::function_74191a2(1);
	scene::add_scene_func("cin_sgen_07_01_genlab_vign_patrol", &function_426de534, "play");
	spawner::simple_spawn_single("gen_lab_warlord", &function_aafbf321);
	spawner::simple_spawn_single("gen_lab_warlord2", &function_aafbf321);
	spawner::simple_spawn_single("gen_lab_enemy_1", &function_1cc12213);
	spawner::simple_spawn_single("gen_lab_enemy_2", &function_1cc12213);
	spawner::simple_spawn_single("gen_lab_enemy_3", &function_1cc12213);
	spawner::simple_spawn_single("gen_lab_enemy_4", &function_1cc12213);
	spawner::simple_spawn_single("gen_lab_enemy_5", &function_1cc12213);
	if(isdefined(level.BZM_SGENDialogue2_1Callback))
	{
		level thread [[level.BZM_SGENDialogue2_1Callback]]();
	}
	level thread scene::Play("cin_sgen_07_01_genlab_vign_patrol");
	level thread function_51e1520f();
	level LUI::play_movie("cp_sgen_pip_mappingdrone01", "pip");
	level notify("hash_12cb211a");
	self namespace_2afd69a::function_6a8adcf6(5);
	self namespace_2afd69a::follow_path("gen_lab_wait_goal");
	level flag::wait_till("gen_lab_cleared");
	self namespace_2afd69a::function_74191a2(0);
	self namespace_2afd69a::function_6a8adcf6(10);
	self thread namespace_2afd69a::follow_path("nd_follow_gen_lab_mid");
	self waittill("hash_f6e9e60f");
	self namespace_2afd69a::function_6a8adcf6(5);
	level flag::wait_till("hendricks_at_gen_lab_door");
	var_fe6ba37c = GetEnt("trig_gen_lab_door_player_check", "targetname");
	var_fe6ba37c TriggerEnable(1);
	level flag::wait_till("player_at_gen_lab_door");
	var_6d927f8e = GetEnt("gen_lab_end_door", "targetname");
	var_6d927f8e MoveZ(100, 2, 1);
	var_6d927f8e playsound("evt_genlab_door_open");
	var_6d927f8e waittill("movedone");
	level flag::set("gen_lab_door_opened");
}

/*
	Name: function_2c83d390
	Namespace: namespace_9c567844
	Checksum: 0xB911F2E7
	Offset: 0x9058
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_2c83d390()
{
	self namespace_2afd69a::function_6a8adcf6(15);
	self namespace_2afd69a::follow_path("nd_post_gen_lab_start");
	self thread namespace_2afd69a::follow_path("nd_drone_bridge_path", "hendricks_follow2_wallrun_trick");
	self waittill("hash_f6e9e60f");
	self namespace_2afd69a::function_6a8adcf6(5);
	level flag::wait_till("follow_chem_lab");
}

/*
	Name: function_1acc965e
	Namespace: namespace_9c567844
	Checksum: 0xC47A93D3
	Offset: 0x9110
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_1acc965e()
{
	self namespace_2afd69a::function_2dde6e87();
	self namespace_2afd69a::function_6a8adcf6(5);
	self namespace_2afd69a::follow_path("nd_follow_chem_lab", "chem_lab_start");
	self namespace_2afd69a::follow_path("nd_post_chem_lab", "chem_door_open");
	self thread function_3054092d();
}

/*
	Name: function_3054092d
	Namespace: namespace_9c567844
	Checksum: 0xFBEE0DB8
	Offset: 0x91B8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3054092d()
{
	self namespace_2afd69a::function_6a8adcf6(10);
	self namespace_2afd69a::follow_path("nd_pre_ambush", "follow3_1");
	self thread function_fdbec74b();
}

/*
	Name: function_fdbec74b
	Namespace: namespace_9c567844
	Checksum: 0x69D7D302
	Offset: 0x9220
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_fdbec74b()
{
	self namespace_2afd69a::function_6a8adcf6(15);
	self namespace_2afd69a::follow_path("nd_highlight_grate", "send_drone_over_grate");
	level flag::set("drone_over_grate");
	self namespace_2afd69a::function_6a8adcf6(15);
	self namespace_2afd69a::follow_path("nd_ambush_react", "start_floor_risers");
	self thread function_e6e2c015();
}

/*
	Name: function_e6e2c015
	Namespace: namespace_9c567844
	Checksum: 0xCC7A2DDE
	Offset: 0x92E8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_e6e2c015()
{
	self namespace_2afd69a::function_6a8adcf6(15);
	self namespace_2afd69a::follow_path("nd_silo_grate", "silo_floor_cleared");
	level thread scene::init("cin_sgen_11_02_silofloor_vign_notice_drone");
	level flag::set("drone_over_grate_real");
	level flag::wait_till("silo_grate_open");
	level thread namespace_d40478f6::function_71f06599();
	level scene::Play("cin_sgen_11_02_silofloor_vign_notice_drone");
	self.DrivePath = 0;
	self namespace_2afd69a::function_6a8adcf6(25);
	self namespace_2afd69a::follow_path("nd_silo_floor_platform_1", "hendricks_under_silo_second_jump", &function_fa0e227a);
}

/*
	Name: function_fa0e227a
	Namespace: namespace_9c567844
	Checksum: 0xA33EC3C2
	Offset: 0x9428
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_fa0e227a()
{
	level LUI::prime_movie("cp_sgen_pip_mappingdrone02");
	self waittill("hash_5e3e50f0");
	level LUI::play_movie("cp_sgen_pip_mappingdrone02", "pip");
	level flag::set("drone_died");
	PlayFXOnTag(level._effect["drone_sparks"], self, "tag_origin");
	self vehicle::lights_off();
	self vehicle::toggle_sounds(0);
}

