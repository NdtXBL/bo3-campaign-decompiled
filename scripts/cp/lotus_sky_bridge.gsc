#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\lotus_security_station;
#using scripts\cp\lotus_util;
#using scripts\shared\ai\archetype_robot;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
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
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_da5cdb0c;

/*
	Name: function_99c7c24f
	Namespace: namespace_da5cdb0c
	Checksum: 0xF4D15217
	Offset: 0x2100
	Size: 0x513
	Parameters: 2
	Flags: None
*/
function function_99c7c24f(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_2fd26037.allowbattlechatter["bc"] = 0;
		trigger::use("body_fall_trigger");
		namespace_431cac9::function_69533bc9();
		skipto::teleport_ai(str_objective);
		load::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
	}
	callback::remove_on_spawned(&namespace_431cac9::function_6edd9874);
	callback::remove_on_spawned(&namespace_431cac9::function_5157e72f);
	exploder::kill_exploder("fx_interior_snow_1");
	level.var_2fd26037 clientfield::set("hendricks_frost_breath", 0);
	GetEnt("trig_oob_industrial_zone", "targetname") TriggerEnable(0);
	level.var_2fd26037.goalRadius = 128;
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level flag::init("wallsmash_done");
	level thread function_9d01fecc();
	spawner::add_spawn_function_group("industrial_nrc", "script_noteworthy", &function_885b5bfb);
	exploder::exploder("fx_vista_read2a");
	namespace_431cac9::function_176c92fd();
	function_67db331d("skybridge_event_10-39_broken", "hide");
	function_67db331d("skybridge_event_10-41_broken", "hide");
	function_67db331d("skybridge_event_10-42_broken", "hide");
	var_95dd38e4 = GetEntArray("skybridge_event_10-41", "targetname");
	foreach(var_93700c60 in var_95dd38e4)
	{
		var_93700c60.origin = var_93700c60.origin + VectorScale((1, 0, 0), 9206);
	}
	wait(0.1);
	function_56782c4("skybridge00a_custom_traversal", 1);
	function_56782c4("skybridge01_custom_traversal", 1);
	function_56782c4("skybridge01a_custom_traversal", 1);
	function_56782c4("skybridge02_custom_traversal", 1);
	level thread function_6e922340();
	level thread function_fbd7205();
	level thread function_8175b0d4(1);
	level thread function_fbaeb3a1();
	level thread function_9f38eee8();
	wait(1);
	level thread function_4354b307();
	level flag::wait_till("cin_hendricks_observes_go");
	level thread function_b5b850b7();
	trigger::wait_till("industrial_zone_complete");
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	skipto::function_be8adfb8("industrial_zone");
}

/*
	Name: function_9d01fecc
	Namespace: namespace_da5cdb0c
	Checksum: 0xFC5774F9
	Offset: 0x2620
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_9d01fecc()
{
	battlechatter::function_d9f49fba(0);
	flag::wait_till("flag_wallsmash");
	level.var_2fd26037 dialog::say("hend_kane_we_need_a_way_0");
	level dialog::say("kane_that_door_should_get_0", 1);
	level thread namespace_a92ad484::function_208b0a38();
	level notify("hash_49e3585a");
	level waittill("hash_bf54b99c");
	level.var_2fd26037 dialog::say("hend_that_ll_work_too_l_0", 0.5);
	wait(2);
	level flag::wait_till("init_industrial_robot_attack_01");
	level dialog::remote("kane_you_better_hustle_0");
	wait(3);
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_b5b850b7
	Namespace: namespace_da5cdb0c
	Checksum: 0xCEEA4D80
	Offset: 0x2760
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b5b850b7()
{
	flag::wait_till("flag_industrial_spawn_2");
	level thread namespace_431cac9::function_99514074("industrial_robo_entrance_jumpdown01", "industrial_robo_entrant01");
	level thread namespace_431cac9::function_99514074("industrial_robo_entrance_jumpdown02", "industrial_robo_entrant02", "flag_grand_entrance_02");
}

/*
	Name: function_4354b307
	Namespace: namespace_da5cdb0c
	Checksum: 0x27198924
	Offset: 0x27E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4354b307()
{
	objectives::breadcrumb("industrial_breadcrumb01");
	flag::wait_till("wallsmash_done");
	objectives::breadcrumb("industrial_breadcrumb03");
}

/*
	Name: function_3ec62858
	Namespace: namespace_da5cdb0c
	Checksum: 0xF1745118
	Offset: 0x2838
	Size: 0xCB
	Parameters: 4
	Flags: None
*/
function function_3ec62858(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread scene::init("skybridge_2_falling_shop", "targetname");
	level thread scene::init("skybridge_2_falling_shop_2", "targetname");
	level flag::init("khalil_convo_done");
	level flag::init("skybridge_final_vo_can_play");
	battlechatter::function_d9f49fba(0);
}

/*
	Name: function_9f38eee8
	Namespace: namespace_da5cdb0c
	Checksum: 0xC9E858E7
	Offset: 0x2910
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_9f38eee8()
{
	var_a112a6b7 = GetEnt("industrial_wallbreak_decal", "targetname");
	if(isdefined(var_a112a6b7))
	{
		var_a112a6b7 Hide();
	}
	level scene::init("cin_lot_09_02_pursuit_vign_wallsmash");
	level waittill("hash_49e3585a");
	level flag::wait_till("flag_wallsmash");
	if(level flag::exists("hendricks_stomps_cin_done"))
	{
		level flag::wait_till("hendricks_stomps_cin_done");
	}
	var_7e20817e = GetEnt("industrial_wallbreak", "targetname");
	if(isdefined(var_7e20817e))
	{
		var_7e20817e Hide();
		var_7e20817e delete();
	}
	if(isdefined(var_a112a6b7))
	{
		var_a112a6b7 show();
	}
	var_8215eb73 = GetEnt("wallsmash_playerclip", "targetname");
	var_8215eb73 delete();
	level thread scene::Play("cin_lot_09_02_pursuit_vign_wallsmash");
	wait(0.5);
	level notify("hash_bf54b99c");
	var_258dd90b = struct::get("hendricks_stomps_cin", "targetname");
	if(var_258dd90b scene::is_playing(var_258dd90b.scriptbundlename))
	{
		level.var_2fd26037 StopAnimScripted(0.3);
	}
	var_f6c5842 = GetEnt("cin_lot_09_02_pursuit_vign_wallsmash_robot_ai", "targetname");
	if(isalive(var_f6c5842))
	{
		level.var_2fd26037 ai::shoot_at_target("normal", var_f6c5842, undefined, 0.75);
	}
	level flag::set("wallsmash_done");
	spawner::waittill_ai_group_cleared("wallsmash_robot");
	trigger::use("trig_hendricks_through_hole", "targetname");
	flag::wait_till("flag_industrial_spawn_2");
	var_935a64f = GetEnt("industrial_jump_robot_clip", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f delete();
	}
}

/*
	Name: function_885b5bfb
	Namespace: namespace_da5cdb0c
	Checksum: 0x63060BC9
	Offset: 0x2C98
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_885b5bfb(n_level, str_volume)
{
	self endon("death");
	if(self.archetype == "robot")
	{
		self ai::set_behavior_attribute("rogue_control", "forced_level_" + n_level);
		if(isdefined(str_volume))
		{
			e_goalvolume = GetEnt(str_volume + "_1", "targetname");
			self SetGoal(e_goalvolume);
		}
	}
	else
	{
		self ai::set_behavior_attribute("can_initiateaivsaimelee", 0);
		self ai::set_behavior_attribute("can_melee", 0);
	}
	self.overrideActorDamage = &function_9ce96a15;
	trigger::wait_till("trig_industrial_end_fight");
	self.var_fd5a8f70 = 1;
	if(isdefined(str_volume))
	{
		trigger::wait_till("trig_industrial_spawn_1");
		e_goalvolume = GetEnt(str_volume + "_2", "targetname");
		self SetGoal(e_goalvolume);
		flag::wait_till("flag_industrial_spawn_2");
		self ClearGoalVolume();
	}
}

/*
	Name: function_9ce96a15
	Namespace: namespace_da5cdb0c
	Checksum: 0x708D628B
	Offset: 0x2E70
	Size: 0xB9
	Parameters: 12
	Flags: None
*/
function function_9ce96a15(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, str_weapon, v_point, v_dir, str_hit_loc, n_model_index, psOffsetTime, str_bone_name)
{
	if(self.var_fd5a8f70 === 1 && self.archetype == "human")
	{
		n_damage = self.health;
	}
	else if(!isPlayer(e_inflictor))
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_fbaeb3a1
	Namespace: namespace_da5cdb0c
	Checksum: 0x82BA91FE
	Offset: 0x2F38
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_fbaeb3a1()
{
	spawner::add_spawn_function_group("industrial_robot_attack_02_robot", "targetname", &ai::set_behavior_attribute, "rogue_control", "level_2");
	flag::wait_till("cin_hendricks_observes_go");
	function_91311306();
	if(!level flag::get("flag_wallsmash"))
	{
		flag::init("hendricks_stomps_cin_done");
		level namespace_431cac9::function_283fcbc5("hendricks_stomps_cin", "hendricks_stomps_cin_robot", "at_industrial_outside", 0, 1);
		flag::set("hendricks_stomps_cin_done");
	}
	scene::add_scene_func("cin_gen_melee_robot_nogun_overhead_throw_init", &function_faa38388, "init");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_01", "forced_level_2", "do_industrial_robot_attack_01", undefined, "industrial_zone_done");
	flag::wait_till("flag_industrial_rvh");
	level thread namespace_431cac9::function_df89b05b("industrial_rvh_choke_throw", "forced_level_1", "industrial_rvh_choke_throw_go", 0.1, "industrial_zone_done");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_02", "forced_level_1", "industrial_robot_attack_02_go", 0.1, "industrial_zone_done");
	scene::remove_scene_func("cin_gen_melee_robot_nogun_overhead_throw_init", &function_faa38388, "init");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_03", "forced_level_1", "industrial_robot_attack_03_go", 0, "industrial_zone_done");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_03a", "forced_level_1", "industrial_robot_attack_03_go", 0.5, "industrial_zone_done");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_03b", "forced_level_1", "industrial_robot_attack_03_go", 1, "industrial_zone_done");
	scene::init("cin_lot_10_01_skybridge_1st_init_shop");
}

/*
	Name: function_faa38388
	Namespace: namespace_da5cdb0c
	Checksum: 0x591EEB3B
	Offset: 0x3230
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_faa38388(a_ents)
{
	a_ents["nrc_soldier_thrown"] endon("death");
	level waittill("hash_9aa959d8");
	a_ents["nrc_soldier_thrown"] StopAnimScripted();
	a_ents["nrc_soldier_thrown"] StartRagdoll();
}

/*
	Name: function_91311306
	Namespace: namespace_da5cdb0c
	Checksum: 0xD4895A8B
	Offset: 0x32B0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_91311306()
{
	level flag::wait_till("all_players_spawned");
	if(!level flag::get("flag_wallsmash"))
	{
		s_scene = struct::get("cin_hendricks_observes", "targetname");
		s_scene scene::init(level.var_2fd26037);
		s_scene thread scene::Play(level.var_2fd26037);
		util::waittill_any("flag_wallsmash", "cin_lot_09_02_pursuit_vign_observation_done");
		s_scene scene::stop();
		level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	}
	var_b81735e0 = GetEnt("hendricks_dont_fall_clip", "targetname");
	var_b81735e0 delete();
}

/*
	Name: function_4e9c70f
	Namespace: namespace_da5cdb0c
	Checksum: 0xFDE0DD9B
	Offset: 0x3408
	Size: 0x89B
	Parameters: 2
	Flags: None
*/
function function_4e9c70f(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_2fd26037.allowbattlechatter["bc"] = 0;
		skipto::teleport_ai(str_objective);
		scene::init("cin_lot_10_01_skybridge_1st_init_shop");
		namespace_431cac9::function_69533bc9();
		level util::function_d8eaed3d(3, 1);
		load::function_a2995f22();
		namespace_431cac9::function_176c92fd();
		exploder::exploder("fx_vista_read2a");
	}
	else
	{
		level thread util::function_d8eaed3d(3, 1);
		namespace_431cac9::function_8738e00c();
	}
	var_8ef169cb = spawnlogic::get_spawnpoint_array("cp_coop_respawn", 1);
	foreach(var_921e9701 in var_8ef169cb)
	{
		if(var_921e9701.script_objective === "sky_bridge1")
		{
			var_921e9701.disabled = 1;
			level flagsys::set("spawnpoints_dirty");
		}
	}
	foreach(player in level.players)
	{
		player namespace_431cac9::function_f21ea22f();
	}
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level.var_2fd26037 ai::set_behavior_attribute("move_mode", "rambo");
	spawner::add_spawn_function_group("wwz_vtol_block_rushing_players", "targetname", &function_15bb85bc);
	level scene::init("p7_fxanim_cp_lotus_mobile_shop_sky01_bundle");
	level scene::init("p7_fxanim_cp_lotus_mobile_shop_sky02_bundle");
	level scene::init("p7_fxanim_cp_lotus_mobile_shop_sky03_break_bundle");
	level scene::init("p7_fxanim_cp_lotus_skybridge_hunter_crash_01_bundle");
	level scene::init("p7_fxanim_cp_lotus_skybridge_hunter_crash_02_bundle");
	level scene::init("p7_fxanim_cp_lotus_skybridge_hunter_crash_03_bundle");
	level scene::init("p7_fxanim_cp_lotus_skybridge_hunter_crash_04_bundle");
	level thread function_fbd7205();
	function_67db331d("skybridge_event_10-39_broken", "hide");
	function_67db331d("skybridge_event_10-41_broken", "hide");
	function_67db331d("skybridge_event_10-42_broken", "hide");
	function_56782c4("sb_1_broken_start", 1);
	level thread function_5fcdf0e7(1);
	level thread function_c23650f9();
	function_12e65254(var_74cd64bc);
	level flag::wait_till("skybridge_debris_cleared");
	savegame::function_fb150717();
	var_8ef169cb = spawnlogic::get_spawnpoint_array("cp_coop_respawn", 1);
	foreach(var_921e9701 in var_8ef169cb)
	{
		if(var_921e9701.script_objective === "sky_bridge1")
		{
			var_921e9701.disabled = undefined;
			level flagsys::set("spawnpoints_dirty");
		}
	}
	level thread function_c07c8c85();
	level namespace_431cac9::function_484bc3aa(0);
	function_8bb390e5(1);
	namespace_431cac9::function_f80cafbd(1);
	level.var_941f173a = 0;
	foreach(player in level.players)
	{
		player thread function_fdb69d4a();
	}
	level thread function_8175b0d4(7);
	level thread function_5fcdf0e7(2);
	level thread function_5fcdf0e7(3, 1, &function_236dcbd8);
	level thread function_5fcdf0e7(4);
	trigger::use("hendricks_color_sky_bridge1_start");
	level thread function_8b154406(var_74cd64bc, "sky_bridge1_obj_breadcrumb");
	level thread function_54838261();
	level thread function_a070d03f();
	level thread function_fd34fb22();
	trigger::wait_till("trig_mobile_shop_sky01");
	level thread function_132d3902();
	level thread function_98c38bd4();
	level thread scene::Play("p7_fxanim_cp_lotus_mobile_shop_sky01_bundle");
	level waittill("hash_9a772ab1");
	trigger::use("hendricks_color_sky_bridge1_post_shop_fall");
	function_2ecaeb37();
	level thread function_70f27cf6();
	trigger::wait_till("sky_bridge1_complete");
	skipto::function_be8adfb8("sky_bridge1");
}

/*
	Name: function_ac629618
	Namespace: namespace_da5cdb0c
	Checksum: 0xD13E573E
	Offset: 0x3CB0
	Size: 0xF3
	Parameters: 4
	Flags: None
*/
function function_ac629618(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		objectives::complete("cp_level_lotus_go_to_skybridge");
		objectives::complete("cp_level_lotus_clear_debris");
		objectives::set("cp_level_lotus_go_to_tower_two");
		level flag::set("khalil_convo_done");
		namespace_431cac9::function_3b6587d6(0, "lotus2_tower1_debris_push_umbra_gate");
		level scene::skipto_end("cin_lot_10_01_skybridge_1st_init_shop");
	}
	namespace_431cac9::function_3b6587d6(0, "lotus2_tower2_umbra_gate");
}

/*
	Name: function_2ecaeb37
	Namespace: namespace_da5cdb0c
	Checksum: 0xF2518666
	Offset: 0x3DB0
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_2ecaeb37()
{
	var_b3f0c3af = GetEntArray("mobile_shop_fall_1_clip", "targetname");
	v_loc = struct::get("skybridge_mobile_shop_crash_loc").origin;
	foreach(e_clip in var_b3f0c3af)
	{
		e_clip delete();
	}
	wait(0.05);
	a_corpses = GetCorpseArray();
	foreach(e_corpse in a_corpses)
	{
		if(Distance2D(v_loc, e_corpse.origin) < 250)
		{
			e_corpse delete();
		}
	}
	PhysicsJolt(v_loc, 250, 0, (0, 0, -1));
}

/*
	Name: function_54838261
	Namespace: namespace_da5cdb0c
	Checksum: 0xBFB93F60
	Offset: 0x3F98
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_54838261()
{
	level flag::wait_till("player_at_crash_point");
	if(!level flag::get("wwz_vtol_crash_done"))
	{
		objectives::Hide("cp_waypoint_breadcrumb");
	}
}

/*
	Name: function_231ed907
	Namespace: namespace_da5cdb0c
	Checksum: 0x290C4B27
	Offset: 0x4000
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_231ed907()
{
	if(isdefined(15))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(15, "timeout");
	}
	spawner::waittill_ai_group_count("industrial_zone_robots", 2);
}

/*
	Name: function_12e65254
	Namespace: namespace_da5cdb0c
	Checksum: 0x7AAD08DE
	Offset: 0x4088
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_12e65254(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	var_8800fa4a = GetEnt("trig_debris_push", "targetname");
	var_8800fa4a TriggerEnable(0);
	var_a917350c = GetEnt("debris_push_carver", "targetname");
	var_a917350c connectpaths();
	function_231ed907();
	scene::init("cin_lot_10_01_skybridge_1st_push", level.var_2fd26037);
	if(var_74cd64bc)
	{
		wait(1);
	}
	level flag::init("debris_push_ready");
	level flag::init("debris_push_started");
	level thread function_90b6f882();
	level.var_2fd26037 waittill("hash_82588407");
	level flag::set("debris_push_ready");
	objectives::complete("cp_level_lotus_go_to_skybridge");
	var_8800fa4a TriggerEnable(1);
	util::function_14518e76(var_8800fa4a, &"cp_level_lotus_clear_debris", &"CP_MI_CAIRO_LOTUS_CLEAR", &function_9d1fa3b5);
}

/*
	Name: function_9d1fa3b5
	Namespace: namespace_da5cdb0c
	Checksum: 0x9CB6BF3
	Offset: 0x4260
	Size: 0x243
	Parameters: 1
	Flags: None
*/
function function_9d1fa3b5(e_player)
{
	self gameobjects::disable_object();
	level flag::set("debris_push_started");
	namespace_431cac9::function_3b6587d6(0, "lotus2_tower1_debris_push_umbra_gate");
	level thread namespace_a92ad484::function_1d1fd3af();
	objectives::complete("cp_level_lotus_clear_debris");
	objectives::set("cp_level_lotus_go_to_tower_two");
	level thread function_9e8d7e95();
	var_935a64f = GetEnt("debris_push_clip", "targetname");
	var_935a64f connectpaths();
	var_935a64f delete();
	scene::add_scene_func("cin_lot_10_01_skybridge_1st_push", &function_2fc33d6d, "play");
	scene::Play("cin_lot_10_01_skybridge_1st_push", e_player);
	level flag::set("skybridge_debris_cleared");
	level util::function_93831e79("after_debris_push_player_pos");
	GetEnt("trig_oob_industrial_zone", "targetname") TriggerEnable(1);
	GetEnt("pursuit_oob", "targetname") delete();
	level thread function_e50bbb52();
	self gameobjects::destroy_object(1);
}

/*
	Name: function_90b6f882
	Namespace: namespace_da5cdb0c
	Checksum: 0x631C6822
	Offset: 0x44B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_90b6f882()
{
	level dialog::remote("kane_taylor_just_entered_0", 2);
	level dialog::function_13b3b16a("plyr_he_s_headed_to_the_r_0", 0.5);
	if(!level flag::get("debris_push_started"))
	{
		level flag::wait_till("debris_push_ready");
		level.var_2fd26037 dialog::say("hend_gimme_a_hand_0", 0.25);
	}
}

/*
	Name: function_2fc33d6d
	Namespace: namespace_da5cdb0c
	Checksum: 0xA2CE9A21
	Offset: 0x4570
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function function_2fc33d6d(a_ents)
{
	level waittill("hash_3d336d3b");
	var_d3b22312 = struct::get("hunter_crash_intro", "script_noteworthy");
	var_d3b22312 scene::Play();
	wait(0.1);
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("artillery_rumble");
		Earthquake(0.65, 0.7, player.origin, 128);
	}
}

/*
	Name: function_c23650f9
	Namespace: namespace_da5cdb0c
	Checksum: 0x93357B3D
	Offset: 0x46A0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c23650f9()
{
	trigger::wait_till("hendricks_exited_industrial_zone", "targetname");
	var_a917350c = GetEnt("debris_push_carver", "targetname");
	var_a917350c disconnectpaths();
}

/*
	Name: function_9e8d7e95
	Namespace: namespace_da5cdb0c
	Checksum: 0xB3042836
	Offset: 0x4710
	Size: 0x3E3
	Parameters: 0
	Flags: None
*/
function function_9e8d7e95()
{
	wait(2);
	level thread function_d5c66ea2("thrown_sb1_shot01_align");
	level thread function_d5c66ea2("thrown_sb1_double01_align", &function_87326039, &function_8a89718c);
	wait(0.05);
	level thread function_46627c19(14, "exited_industrial_zone", RandomFloatRange(1, 4));
	level thread function_46627c19(12, "exited_industrial_zone", RandomFloatRange(2, 5));
	level thread function_46627c19(13, "exited_industrial_zone", RandomFloatRange(2, 5));
	level thread function_46627c19(20, "trig_mobile_shop_sky01", RandomFloatRange(1, 4), "mobile_shop_kill");
	level thread function_46627c19(21, "trig_mobile_shop_sky01", RandomFloatRange(2, 5), "mobile_shop_kill");
	level thread function_46627c19(22, "trig_mobile_shop_sky01", RandomFloatRange(2, 5), "mobile_shop_kill");
	level thread function_46627c19(2, "trig_stop_pre_wwz_vtol_rvh", RandomFloatRange(10, 16));
	level thread function_46627c19(3, "trig_stop_pre_wwz_vtol_rvh", RandomFloatRange(10, 16));
	level thread function_46627c19(4, "trig_stop_pre_wwz_vtol_rvh", RandomFloatRange(10, 16));
	level thread function_46627c19(5, "trig_stop_pre_wwz_vtol_rvh", RandomFloatRange(10, 16));
	function_56782c4("skybridge01_custom_traversal", 0);
	function_67db331d("skybridge_event_10-39_broken", "show");
	function_67db331d("skybridge_event_10-41_broken", "show");
	function_67db331d("skybridge_event_10-41", "delete");
	wait(5);
	spawner::add_spawn_function_group("robot_long_jump", "script_string", &function_d5a3009e);
	spawn_manager::enable("sm_sky_bridge_0");
	level thread scene::Play("cin_lot_10_01_skybridge_vign_jump_robot05");
}

/*
	Name: function_8a89718c
	Namespace: namespace_da5cdb0c
	Checksum: 0x5455CF7C
	Offset: 0x4B00
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_8a89718c(a_ents)
{
	s_goal = struct::get("sky_bridge_1_del_goal", "targetname");
	foreach(ai_actor in a_ents)
	{
		if(isalive(ai_actor))
		{
			ai_actor ai::set_ignoreall(1);
			ai_actor SetGoal(s_goal.origin);
			ai_actor thread namespace_8e4b89e2::function_2f52df3();
			wait(RandomFloatRange(0.5, 2));
		}
	}
}

/*
	Name: function_d5a3009e
	Namespace: namespace_da5cdb0c
	Checksum: 0xE894EEA
	Offset: 0x4C40
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d5a3009e()
{
	self endon("death");
	self ai::set_ignoreall(1);
	wait(RandomFloatRange(2, 3));
	if(!isdefined(level.var_4704ff29))
	{
		level.var_4704ff29 = 1;
	}
	else
	{
		level.var_4704ff29++;
		level.var_4704ff29++;
		if(level.var_4704ff29 > 4)
		{
			return;
		}
	}
	self scene::Play("cin_lot_10_01_skybridge_vign_jump_robot0" + level.var_4704ff29, Array(self));
	self ai::set_ignoreall(0);
}

/*
	Name: function_87326039
	Namespace: namespace_da5cdb0c
	Checksum: 0x52CAAB83
	Offset: 0x4D20
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_87326039()
{
	self ai::set_ignoreall(1);
	self scene::Play("cin_lot_10_01_skybridge_vign_jump_robot03", Array(self));
	self ai::set_ignoreall(0);
}

/*
	Name: function_fd34fb22
	Namespace: namespace_da5cdb0c
	Checksum: 0x2F5520F2
	Offset: 0x4D90
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_fd34fb22()
{
	trigger::wait_till("exited_industrial_zone", "targetname");
	do
	{
		var_264ebbeb = GetAITeamArray("team3");
		var_264ebbeb = ArrayCombine(var_264ebbeb, GetAITeamArray("axis"), 0, 0);
		var_264ebbeb = Array::filter(var_264ebbeb, 0, &function_67fe0ba5, "sb1_initial_battle_area");
		wait(0.2);
	}
	while(!var_264ebbeb.size);
	level flag::set("sb1_initial_battle_done");
}

/*
	Name: function_236dcbd8
	Namespace: namespace_da5cdb0c
	Checksum: 0xC2BEF9D3
	Offset: 0x4E78
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_236dcbd8()
{
	self waittill("hash_40f1c00");
	var_32cf47f = struct::get("fxanim_mobile_shop02_skybridge", "targetname");
	var_32cf47f scene::Play();
}

/*
	Name: function_67db331d
	Namespace: namespace_da5cdb0c
	Checksum: 0x8AD4461
	Offset: 0x4ED8
	Size: 0x141
	Parameters: 2
	Flags: None
*/
function function_67db331d(str_name, str_state)
{
	var_493d6271 = GetEntArray(str_name, "targetname");
	foreach(var_93700c60 in var_493d6271)
	{
		if(str_state == "hide")
		{
			var_93700c60 ghost();
			var_93700c60 notsolid();
			continue;
		}
		if(str_state == "show")
		{
			var_93700c60 show();
			var_93700c60 solid();
			continue;
		}
		var_93700c60 delete();
	}
}

/*
	Name: function_46627c19
	Namespace: namespace_da5cdb0c
	Checksum: 0xACCABDA2
	Offset: 0x5028
	Size: 0x23B
	Parameters: 4
	Flags: None
*/
function function_46627c19(n_index, str_trigger, n_wait, str_kill_notify)
{
	var_f6c5842 = spawner::simple_spawn_single("rvh_robot_" + n_index);
	var_f6c5842.var_fd5a8f70 = 0;
	if(isdefined(str_trigger))
	{
		var_3f3a4339 = spawner::simple_spawn_single("rvh_human_" + n_index);
		var_3f3a4339 ai::set_behavior_attribute("can_initiateaivsaimelee", 0);
		var_3f3a4339.var_fd5a8f70 = 0;
		var_3f3a4339.overrideActorDamage = &function_383fe57e;
		var_3f3a4339 SetEntityTarget(var_f6c5842);
		var_f6c5842.overrideActorDamage = &function_383fe57e;
		var_f6c5842 SetEntityTarget(var_3f3a4339);
		var_f6c5842 function_d61ede6b(1);
		if(isdefined(str_kill_notify))
		{
			var_3f3a4339 thread function_699800ba(str_kill_notify);
			var_f6c5842 thread function_699800ba(str_kill_notify);
		}
		trigger::wait_till(str_trigger);
		if(isdefined(n_wait))
		{
			wait(n_wait);
		}
		if(isalive(var_3f3a4339))
		{
			var_3f3a4339 ai::set_ignoreall(0);
			var_3f3a4339 ai::set_ignoreme(0);
			var_3f3a4339.var_fd5a8f70 = 1;
		}
	}
	if(isalive(var_f6c5842))
	{
		var_f6c5842 function_d61ede6b(0);
	}
}

/*
	Name: function_699800ba
	Namespace: namespace_da5cdb0c
	Checksum: 0x7F6E4602
	Offset: 0x5270
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_699800ba(str_notify)
{
	self endon("death");
	level waittill(str_notify);
	wait(0.05);
	self kill();
}

/*
	Name: function_383fe57e
	Namespace: namespace_da5cdb0c
	Checksum: 0xC491A1BA
	Offset: 0x52B8
	Size: 0x107
	Parameters: 12
	Flags: None
*/
function function_383fe57e(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, str_weapon, v_point, v_dir, str_hit_loc, n_model_index, psOffsetTime, str_bone_name)
{
	if(isdefined(e_inflictor))
	{
		if(!isPlayer(e_inflictor))
		{
			if(self.var_fd5a8f70 === 1 || e_inflictor.targetname === "wwz_vtol_vh")
			{
				n_damage = self.health;
			}
			else if(e_inflictor.team === "axis" || e_inflictor.team === "team3")
			{
				n_damage = 0;
			}
		}
	}
	return n_damage;
}

/*
	Name: function_d61ede6b
	Namespace: namespace_da5cdb0c
	Checksum: 0x3BDA4D60
	Offset: 0x53C8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_d61ede6b(b_ignore)
{
	foreach(player in level.players)
	{
		self SetIgnoreEnt(player, b_ignore);
	}
}

/*
	Name: function_98c38bd4
	Namespace: namespace_da5cdb0c
	Checksum: 0x14AA0139
	Offset: 0x5470
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_98c38bd4()
{
	trigger::wait_till("start_sky_bridge_bottom_rvh_battle", "targetname");
	level thread function_46627c19(6, "end_skybridge2_rvh", 0);
	level thread function_46627c19(7, "end_skybridge2_rvh", RandomFloatRange(0, 2));
	level thread function_46627c19(8, "end_skybridge2_rvh", RandomFloatRange(0, 2));
}

/*
	Name: function_808ed174
	Namespace: namespace_da5cdb0c
	Checksum: 0x1D7C15BC
	Offset: 0x5530
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_808ed174()
{
	self ai::set_behavior_attribute("rogue_control", "forced_level_2");
	nd_traversal = GetNode("fall_to_death_traversal", "targetname");
	self ai::set_behavior_attribute("rogue_control_force_goal", nd_traversal.origin);
}

/*
	Name: function_f0763a16
	Namespace: namespace_da5cdb0c
	Checksum: 0x50ABB85A
	Offset: 0x55C0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_f0763a16()
{
	var_a03a2e28 = GetEnt("sky_bridge1_hurryup_hunter01", "targetname") spawner::spawn();
	var_a03a2e28 SetVehMaxSpeed(60);
	var_a03a2e28 vehicle_ai::function_81b6f1ac();
	var_a03a2e28 AttachPath(GetVehicleNode(var_a03a2e28.target, "targetname"));
	var_a03a2e28 StartPath();
}

/*
	Name: function_a070d03f
	Namespace: namespace_da5cdb0c
	Checksum: 0x7FADE1AD
	Offset: 0x5690
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_a070d03f()
{
	trigger::wait_till("exited_industrial_zone");
	var_e4630460 = function_c9c1e189("sky_bridge_flyby_vtol");
	var_566a739b = function_c9c1e189("sky_bridge_flyby_vtol02");
	var_e4630460 thread function_ec3fbb5c("sb1_flyby_vtol", 1, 6, 1);
	wait(2);
	var_566a739b thread function_ec3fbb5c("sb1_flyby_vtol02", 1, 6, 1);
	trigger::wait_till("trig_wwz_vtol");
	var_e4630460.var_d700fcda = 0;
	var_566a739b.var_d700fcda = 0;
}

/*
	Name: function_2e696104
	Namespace: namespace_da5cdb0c
	Checksum: 0x3EDB3403
	Offset: 0x5798
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_2e696104()
{
	var_e4630460 = function_c9c1e189("sky_bridge_flyby_vtol");
	var_566a739b = function_c9c1e189("sky_bridge_flyby_vtol02");
	var_e4630460 thread function_ec3fbb5c("sb1_flyby_vtol", 4, 6, 0);
	wait(5);
	var_566a739b thread function_ec3fbb5c("sb1_flyby_vtol02", 4, 6, 0);
}

/*
	Name: function_c07c8c85
	Namespace: namespace_da5cdb0c
	Checksum: 0x51029564
	Offset: 0x5848
	Size: 0x8BB
	Parameters: 0
	Flags: None
*/
function function_c07c8c85()
{
	var_a917350c = GetEnt("wwz_vtol_crash_carver", "targetname");
	var_a917350c connectpaths();
	level thread dialog::remote("vtlp_air_support_coming_i_0", 1);
	wait(3);
	level notify("hash_f84c667e");
	vh_vtol = vehicle::simple_spawn_single_and_drive("wwz_vtol");
	vh_vtol util::magic_bullet_shield();
	vh_vtol flag::init("set_0_done");
	vh_vtol thread function_c8a963d2();
	vh_vtol thread function_c5005576();
	level thread namespace_a92ad484::function_12202095();
	level thread function_555c7428();
	scene::add_scene_func("cin_lot_10_02_skybridge_vign_wwzfinale_approach", &function_2bf854b3, "play");
	level thread scene::Play("cin_lot_10_02_skybridge_vign_wwzfinale_approach");
	vh_vtol waittill("reached_end_node");
	vh_vtol ClearVehGoalPos();
	vh_vtol ClearLookAtEnt();
	vh_vtol.animName = "fxanim_skybridge_vtol";
	level thread scene::Play("p7_fxanim_cp_lotus_skybridge_vtol_idle_bundle", vh_vtol);
	objectives::Hide("cp_waypoint_breadcrumb");
	level thread scene::Play("cin_lot_10_02_skybridge_vign_wwzfinale");
	level waittill("hash_441e4f3");
	vh_vtol util::stop_magic_bullet_shield();
	vh_vtol.delete_on_death = 1;
	vh_vtol notify("death");
	if(!isalive(vh_vtol))
	{
		vh_vtol delete();
	}
	level thread scene::Play("p7_fxanim_cp_lotus_skybridge_vtol_crash_bundle");
	var_692f87a6 = GetEnt("fxanim_skybridge_vtol", "targetname");
	var_692f87a6 thread function_c5005576();
	trigger::use("kill_sm_wwz_vtol_block_rushing_players", "targetname");
	level waittill("hash_2989fcfb");
	playsoundatposition("evt_bridge_explosion", var_692f87a6.origin);
	var_b9acdfe5 = struct::get("smoke_raven_location");
	playFX(level._effect["raven_explosion"], var_b9acdfe5.origin, (1, 1, 0), (0, 0, 1));
	e_volume = GetEnt("vol_wwz_crash", "targetname");
	var_c9f1aa5e = GetAITeamArray("team3");
	var_c9f1aa5e = ArrayCombine(var_c9f1aa5e, GetAITeamArray("axis"), 0, 0);
	var_c9f1aa5e = ArraySortClosest(var_c9f1aa5e, level.var_2fd26037.origin);
	var_6f23fc2e = 0;
	foreach(var_f6c5842 in var_c9f1aa5e)
	{
		if(var_f6c5842 istouching(e_volume))
		{
			var_f6c5842 DoDamage(var_f6c5842.health, var_f6c5842.origin, undefined, undefined, undefined, "MOD_GRENADE_SPLASH");
		}
	}
	function_56782c4("sb_1_broken_start", 0);
	function_67db331d("skybridge_event_10-42", "hide");
	function_67db331d("skybridge_event_10-42-clip", "hide");
	function_67db331d("skybridge_event_10-42_broken", "show");
	var_a917350c disconnectpaths();
	GetEnt("lotus2_vtol_crash_roof_clip", "targetname") delete();
	GetEnt("skybridge_crash_oob", "targetname") delete();
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("artillery_rumble");
		Earthquake(0.65, 0.7, player.origin, 128);
	}
	trigger::use("hunter_crashes_after_wwz_vtol");
	wait(3);
	level flag::set("wwz_vtol_crash_done");
	level thread function_2e696104();
	objectives::show("cp_waypoint_breadcrumb");
	level.var_2fd26037 colors::disable();
	level scene::init("cin_lot_10_03_skybridge_vign_vtoljump_hendricks_start", level.var_2fd26037);
	level waittill("hash_baec8538");
	flag::wait_till("hendricks_jump_down_to_vtol");
	level scene::stop("cin_lot_10_03_skybridge_vign_vtoljump_hendricks_start");
	level scene::Play("cin_lot_10_03_skybridge_vign_vtoljump_hendricks", level.var_2fd26037);
	level scene::init("cin_lot_10_03_skybridge_vign_vtoljump_hendricks_end", level.var_2fd26037);
	flag::wait_till("hendricks_jump_across_from_vtol");
	if(isdefined(level.BZM_LOTUSDialogue4_1Callback))
	{
		level thread [[level.BZM_LOTUSDialogue4_1Callback]]();
	}
	level scene::Play("cin_lot_10_03_skybridge_vign_vtoljump_hendricks_end", level.var_2fd26037);
	trigger::use("end_skybridge2_rvh");
	level.var_2fd26037 colors::enable();
}

/*
	Name: function_c5005576
	Namespace: namespace_da5cdb0c
	Checksum: 0x3A79960B
	Offset: 0x6110
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_c5005576()
{
	self endon("death");
	self endon("hash_2989fcfb");
	while(1)
	{
		PlayRumbleOnPosition("cp_lotus_rumble_wwz_vtol", self.origin);
		wait(0.1);
	}
}

/*
	Name: function_c8a963d2
	Namespace: namespace_da5cdb0c
	Checksum: 0xBD74C60C
	Offset: 0x6168
	Size: 0x1EF
	Parameters: 0
	Flags: None
*/
function function_c8a963d2()
{
	self endon("death");
	self endon("hash_2989fcfb");
	wait(1);
	a_enemies = GetAIArray("rvh_ambient_first", "script_string");
	foreach(ai_enemy in a_enemies)
	{
		if(isalive(ai_enemy))
		{
			self turret::shoot_at_target(ai_enemy, -1, undefined, 0);
		}
	}
	self flag::set("set_0_done");
	while(1)
	{
		var_c9f1aa5e = GetAIArray("sky_bridge_swarm", "script_string");
		foreach(var_f6c5842 in var_c9f1aa5e)
		{
			if(isalive(var_f6c5842))
			{
				self turret::shoot_at_target(var_f6c5842, -1, undefined, 0);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_15bb85bc
	Namespace: namespace_da5cdb0c
	Checksum: 0xEEA8A4DA
	Offset: 0x6360
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_15bb85bc()
{
	var_f93e39e2 = struct::get_array("wwz_vtol_block_rushing_players_align", "targetname");
	do
	{
		var_fd20b602 = Array::random(var_f93e39e2);
		wait(0.2);
	}
	while(!var_fd20b602.occupied === 1);
	var_fd20b602.occupied = 1;
	self function_179b4ac6(var_fd20b602, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
	var_fd20b602.occupied = 0;
	self ai::set_ignoreall(1);
	v_goal = GetEnt("wwz_target", "targetname").origin;
	self SetGoal(v_goal, 0, 1200);
	self util::waittill_any("goal", "near_goal");
	self ai::set_ignoreall(0);
	self SetGoal(self.origin, 0, 1200);
}

/*
	Name: function_555c7428
	Namespace: namespace_da5cdb0c
	Checksum: 0xABDD7C14
	Offset: 0x64E8
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_555c7428()
{
	level dialog::remote("khal_central_i_need_rein_0", 3);
	level dialog::remote("kane_khalil_gimme_a_sit_0", 2);
	level dialog::remote("kane_lost_central_comms_0", 2);
	level dialog::remote("ecmd_lieutenant_khalil_s_0", 1);
	level dialog::function_13b3b16a("plyr_kane_what_about_kha_0", 1);
	level dialog::remote("kane_john_taylor_is_yo_0");
	level dialog::remote("kane_i_promise_0", 0.5);
	level flag::set("khalil_convo_done");
}

/*
	Name: function_70f27cf6
	Namespace: namespace_da5cdb0c
	Checksum: 0xC33FB0F2
	Offset: 0x6600
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_70f27cf6()
{
	level flag::wait_till("khalil_convo_done");
	wait(1);
	level flag::wait_till("hendricks_jump_down_to_vtol");
	level dialog::function_13b3b16a("plyr_kane_how_long_until_0", 3);
	level dialog::remote("kane_few_minutes_tops_g_0", 2);
	level flag::wait_till("wont_be_long_now");
	level dialog::remote("plyr_it_won_t_be_long_now_0");
	level flag::set("skybridge_final_vo_can_play");
}

/*
	Name: function_132d3902
	Namespace: namespace_da5cdb0c
	Checksum: 0xFD649B81
	Offset: 0x66F0
	Size: 0x315
	Parameters: 0
	Flags: None
*/
function function_132d3902()
{
	level thread function_92d695a8();
	trigger::wait_till("trig_sb_climbers_0");
	str_side = "right_";
	var_c2d82f9b = function_feb90a14(3);
	var_f5253661 = 0;
	for(i = 0; i < 3; i++)
	{
		ai_climber = spawner::simple_spawn_single("sb_1_normal_climber");
		var_43b313f7 = var_c2d82f9b[var_f5253661];
		var_adf03719 = struct::get("sb_normal_climb_" + str_side + var_43b313f7);
		ai_climber thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
		if(str_side == "left_")
		{
			str_side = "right_";
		}
		else
		{
			str_side = "left_";
		}
		var_f5253661++;
		if(var_f5253661 == var_c2d82f9b.size)
		{
			var_c2d82f9b = random_shuffle(var_c2d82f9b);
			var_f5253661 = 0;
		}
		if(math::cointoss())
		{
			ai_climber ai::set_behavior_attribute("rogue_control", "forced_level_3");
		}
		wait(RandomFloatRange(0.3, 1));
	}
	if(level.players.size > 2)
	{
		for(i = 0; i < 2; i++)
		{
			ai_climber = spawner::simple_spawn_single("sb_forced_level_1");
			var_43b313f7 = RandomInt(1);
			var_adf03719 = struct::get("sb_fast_climb_" + str_side + var_43b313f7);
			ai_climber thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
			if(str_side == "left_")
			{
				str_side = "right_";
			}
			else
			{
				str_side = "left_";
			}
			wait(RandomFloatRange(0.3, 1));
		}
	}
}

/*
	Name: function_feb90a14
	Namespace: namespace_da5cdb0c
	Checksum: 0x877E8082
	Offset: 0x6A10
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_feb90a14(var_aaa62b0c)
{
	var_c2d82f9b = [];
	for(i = 0; i < var_aaa62b0c; i++)
	{
		if(!isdefined(var_c2d82f9b))
		{
			var_c2d82f9b = [];
		}
		else if(!IsArray(var_c2d82f9b))
		{
			var_c2d82f9b = Array(var_c2d82f9b);
		}
		var_c2d82f9b[var_c2d82f9b.size] = i;
	}
	var_c2d82f9b = random_shuffle(var_c2d82f9b);
	return var_c2d82f9b;
}

/*
	Name: random_shuffle
	Namespace: namespace_da5cdb0c
	Checksum: 0x7436BB1C
	Offset: 0x6AD8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function random_shuffle(a_items)
{
	b_done_shuffling = undefined;
	item = a_items[a_items.size - 1];
	while(!(isdefined(b_done_shuffling) && b_done_shuffling))
	{
		a_items = Array::randomize(a_items);
		if(a_items[0] != item)
		{
			b_done_shuffling = 1;
		}
		wait(0.05);
	}
	return a_items;
}

/*
	Name: function_92d695a8
	Namespace: namespace_da5cdb0c
	Checksum: 0x4581A354
	Offset: 0x6B78
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_92d695a8()
{
	level endon("hash_2989fcfb");
	level waittill("hash_f84c667e");
	level thread function_88e98712();
	var_f6c5842 = spawner::simple_spawn_single("robot_swarm_t2");
	var_f6c5842.script_string = "sky_bridge_swarm";
	var_c2d82f9b = function_feb90a14(13);
	for(i = 0; i < var_c2d82f9b.size; i++)
	{
		ai_climber = spawner::simple_spawn_single("sb_forced_level_2");
		ai_climber.script_string = "sky_bridge_swarm";
		var_adf03719 = struct::get("sb_fast_climb_swarm_" + var_c2d82f9b[i]);
		ai_climber thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
		wait(RandomFloatRange(1, 3));
	}
	level notify("hash_88e98712");
}

/*
	Name: function_88e98712
	Namespace: namespace_da5cdb0c
	Checksum: 0x5BA87903
	Offset: 0x6D08
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_88e98712()
{
	level endon("hash_2989fcfb");
	level waittill("hash_88e98712");
	var_c2d82f9b = function_feb90a14(13);
	var_f5253661 = 0;
	while(1)
	{
		a_robots = GetAIArray("sky_bridge_swarm", "script_string");
		if(a_robots.size < 13)
		{
			ai_climber = spawner::simple_spawn_single("sb_forced_level_2");
			ai_climber.script_string = "sky_bridge_swarm";
			var_adf03719 = struct::get("sb_fast_climb_swarm_continue_" + var_c2d82f9b[var_f5253661]);
			ai_climber thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
			var_f5253661++;
			if(var_f5253661 == var_c2d82f9b.size)
			{
				var_c2d82f9b = random_shuffle(var_c2d82f9b);
				var_f5253661 = 0;
			}
		}
		util::wait_network_frame();
	}
}

/*
	Name: function_179b4ac6
	Namespace: namespace_da5cdb0c
	Checksum: 0x2065164B
	Offset: 0x6E98
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_179b4ac6(var_adf03719, str_animation)
{
	self endon("death");
	self function_d61ede6b(1);
	self animation::Play(str_animation, var_adf03719);
	self function_d61ede6b(0);
}

/*
	Name: function_b7f9ae1f
	Namespace: namespace_da5cdb0c
	Checksum: 0x4BD7B01A
	Offset: 0x6F10
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_b7f9ae1f(nd_goto)
{
	self waittill("scriptedanim");
	self ai::force_goal(nd_goto, 64, 1, undefined, undefined, 1);
}

/*
	Name: function_d5c66ea2
	Namespace: namespace_da5cdb0c
	Checksum: 0xBCD62CA9
	Offset: 0x6F60
	Size: 0x3A1
	Parameters: 3
	Flags: None
*/
function function_d5c66ea2(var_e270de9a, var_1c0be1aa, var_a6902cc5)
{
	if(!isdefined(var_1c0be1aa))
	{
		var_1c0be1aa = undefined;
	}
	if(!isdefined(var_a6902cc5))
	{
		var_a6902cc5 = undefined;
	}
	s_align = struct::get(var_e270de9a, "targetname");
	if(IsSubStr(var_e270de9a, "double"))
	{
		var_f6c5842 = spawner::simple_spawn_single("vign_thrown_robot_level_2", &util::magic_bullet_shield);
		var_3f3a4339 = spawner::simple_spawn_single("vign_thrown_human", &util::magic_bullet_shield);
		var_e71e42f3 = spawner::simple_spawn_single("vign_thrown_human02");
		a_ents = Array(var_3f3a4339, var_e71e42f3, var_f6c5842);
		foreach(ent in a_ents)
		{
			ent util::stop_magic_bullet_shield();
		}
		s_align scene::Play("cin_lot_09_02_pursuit_vign_thrown_double", a_ents);
	}
	else if(IsSubStr(var_e270de9a, "shot"))
	{
		var_3f3a4339 = spawner::simple_spawn_single("vign_thrown_human", &util::magic_bullet_shield);
		var_f6c5842 = spawner::simple_spawn_single("vign_thrown_robot_level_1");
		a_ents = Array(var_3f3a4339, var_f6c5842);
		foreach(ent in a_ents)
		{
			ent util::stop_magic_bullet_shield();
		}
		s_align scene::Play("cin_lot_09_02_pursuit_vign_thrown_shot", a_ents);
		if(isalive(var_f6c5842))
		{
			var_f6c5842 ai::set_behavior_attribute("rogue_control", "level_2");
		}
	}
	if(isdefined(var_1c0be1aa))
	{
		if(isdefined(var_f6c5842) && isalive(var_f6c5842))
		{
			var_f6c5842 thread [[var_1c0be1aa]]();
		}
	}
	if(isdefined(var_a6902cc5))
	{
		level thread [[var_a6902cc5]](a_ents);
	}
}

/*
	Name: function_38aca7a
	Namespace: namespace_da5cdb0c
	Checksum: 0x685520EE
	Offset: 0x7310
	Size: 0x87B
	Parameters: 2
	Flags: None
*/
function function_38aca7a(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(str_objective);
		level.var_2fd26037.allowbattlechatter["bc"] = 0;
		namespace_431cac9::function_69533bc9();
		level scene::skipto_end("p7_fxanim_cp_lotus_skybridge_vtol_crash_bundle");
		level scene::skipto_end("p7_fxanim_cp_lotus_mobile_shop_sky01_bundle");
		level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
		level.var_2fd26037 ai::set_behavior_attribute("move_mode", "normal");
		level scene::init("p7_fxanim_cp_lotus_mobile_shop_sky03_break_bundle");
		level scene::init("p7_fxanim_cp_lotus_skybridge_hunter_crash_01_bundle");
		level scene::init("p7_fxanim_cp_lotus_skybridge_hunter_crash_02_bundle");
		level scene::init("p7_fxanim_cp_lotus_skybridge_hunter_crash_03_bundle");
		level scene::init("p7_fxanim_cp_lotus_skybridge_hunter_crash_04_bundle");
		namespace_431cac9::function_f80cafbd(1);
		level thread function_fbd7205();
		level thread function_8175b0d4(0);
		level thread function_46627c19(6, "hendricks_color_sky_bridge2_start", 0);
		level thread function_46627c19(7, "hendricks_color_sky_bridge2_start", RandomFloatRange(0, 2));
		level thread function_46627c19(8, "hendricks_color_sky_bridge2_start", RandomFloatRange(0, 2));
		level thread function_8b154406(var_74cd64bc, "sky_bridge2_obj_breadcrumb");
		level thread function_e50bbb52();
		load::function_a2995f22();
		exploder::exploder("fx_exterior_vtol_bridge_crash");
		exploder::exploder("fx_vista_read2a");
		namespace_431cac9::function_176c92fd();
		level flag::set("khalil_convo_done");
		level flag::set("hendricks_jump_down_to_vtol");
		function_8bb390e5(1);
		level thread function_70f27cf6();
	}
	spawner::add_spawn_function_group("sb_wasp", "script_noteworthy", &function_92753586);
	function_67db331d("skybridge_event_10-42", "delete");
	function_67db331d("skybridge_event_10-42-clip", "delete");
	function_67db331d("skybridge_event_10-42_broken", "show");
	level thread function_843bdbe4();
	level thread function_5fcdf0e7(5);
	if(level.players.size > 2)
	{
		ai_climber = spawner::simple_spawn_single("sb_1_normal_climber");
		var_adf03719 = struct::get("sb_normal_climb_2");
		ai_climber thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_sideclimb_robot02");
		spawn_manager::enable("sm_sky_bridge_2");
	}
	level thread function_1294d662();
	function_be1c6bc9("trig_sky_bridge_bottom_0");
	trigger::use("trig_sky_bridge_bottom_0", "targetname", undefined, 0);
	wait(1);
	trigger::use("trig_sb2_top_0", "targetname", undefined, 0);
	ai_climber = spawner::simple_spawn_single("sb_1_normal_climber");
	var_adf03719 = struct::get("sb_normal_climb_1");
	ai_climber thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_sideclimb_robot02");
	trigger::wait_till("sky_bridge2_hendricks_vo");
	level thread function_f6434b1f();
	trigger::wait_till("trig_sb_2_retreat");
	a_robots = GetAIArray("sb_2_shooters", "script_string");
	e_volume = GetEnt("vol_sb_2_retreat", "targetname");
	foreach(var_f6c5842 in a_robots)
	{
		var_f6c5842 SetGoal(e_volume, 1);
	}
	level thread function_fa01f7b8();
	trigger::wait_till("sky_bridge2_final_vo");
	level thread function_80b5176f();
	var_7ab662a3 = trigger::wait_till("sky_bridge2_complete");
	level notify("hash_5de07fa5");
	if(isdefined(level.BZM_LOTUSDialogue4_2Callback))
	{
		level thread [[level.BZM_LOTUSDialogue4_2Callback]]();
	}
	level thread dialog::function_13b3b16a("plyr_kane_something_s_wr_0", 1.5);
	level thread scene::add_scene_func("cin_lot_09_01_pursuit_1st_switch_start", &end_fade_out, "skip_started");
	level thread scene::Play("cin_lot_09_01_pursuit_1st_switch_start", var_7ab662a3.who);
	Array::thread_all(level.activePlayers, &function_35cef19b);
	level waittill("hash_6a4e357d");
	level clientfield::set("sndIGCsnapshot", 4);
	skipto::function_be8adfb8("sky_bridge2");
}

/*
	Name: end_fade_out
	Namespace: namespace_da5cdb0c
	Checksum: 0xB3F5ECA5
	Offset: 0x7B98
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function end_fade_out(a_ents)
{
	foreach(player in level.activePlayers)
	{
		player SetLowReady(1);
	}
	util::screen_fade_out(0, "black");
}

/*
	Name: function_35cef19b
	Namespace: namespace_da5cdb0c
	Checksum: 0x36AB68AB
	Offset: 0x7C58
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_35cef19b()
{
	self endon("death");
	var_de0db1fd = 0.5;
	var_66c3b4b9 = 0.6;
	while(var_66c3b4b9 >= 0)
	{
		self clientfield::set_to_player("hijack_static_effect", 1);
		wait(var_de0db1fd);
		self clientfield::set_to_player("hijack_static_effect", 0);
		wait(var_66c3b4b9);
		var_66c3b4b9 = var_66c3b4b9 - 0.05;
		var_de0db1fd = var_de0db1fd + 0.1;
	}
	self clientfield::set_to_player("hijack_static_effect", 1);
}

/*
	Name: function_1294d662
	Namespace: namespace_da5cdb0c
	Checksum: 0xDDF5AF4A
	Offset: 0x7D40
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1294d662()
{
	trigger::wait_till("hendricks_color_sky_bridge2_start");
	ai_climber = spawner::simple_spawn_single("sb_1_normal_climber");
	var_adf03719 = struct::get("sb_normal_climb_0");
	ai_climber thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_sideclimb_robot02");
}

/*
	Name: function_843bdbe4
	Namespace: namespace_da5cdb0c
	Checksum: 0xFC0EDFDB
	Offset: 0x7DD8
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_843bdbe4()
{
	level waittill("hash_74eca106");
	var_e4630460 = function_c9c1e189("sky_bridge_flyby_vtol");
	var_566a739b = function_c9c1e189("sky_bridge_flyby_vtol02");
	var_e4630460 thread function_ec3fbb5c("sb2_flyby_vtol", 1, 1, 0);
	wait(2);
	var_566a739b thread function_ec3fbb5c("sb2_flyby_vtol02", 1, 1, 0);
}

/*
	Name: function_f6434b1f
	Namespace: namespace_da5cdb0c
	Checksum: 0x8702E80B
	Offset: 0x7E98
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_f6434b1f()
{
	var_e4630460 = function_c9c1e189("sky_bridge_flyby_vtol");
	var_566a739b = function_c9c1e189("sky_bridge_flyby_vtol02");
	var_e4630460 thread function_ec3fbb5c("sb2_flyby_vtol", 2, 2, 0);
	wait(2);
	var_566a739b thread function_ec3fbb5c("sb2_flyby_vtol02", 2, 2, 0);
}

/*
	Name: function_be1c6bc9
	Namespace: namespace_da5cdb0c
	Checksum: 0xFF8C04E6
	Offset: 0x7F48
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_be1c6bc9(str_endon)
{
	level endon(str_endon);
	while(1)
	{
		var_bdd1b88a = GetAITeamArray("team3");
		var_bdd1b88a = ArrayCombine(var_bdd1b88a, GetAITeamArray("axis"), 0, 0);
		var_bdd1b88a = Array::filter(var_bdd1b88a, 0, &function_67fe0ba5, "sky_bridge2_start_area");
		if(!var_bdd1b88a.size)
		{
			return;
		}
		wait(0.2);
	}
}

/*
	Name: function_67fe0ba5
	Namespace: namespace_da5cdb0c
	Checksum: 0xB7426CE6
	Offset: 0x8010
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function function_67fe0ba5(e_entity, str_name)
{
	e_volume = GetEnt(str_name, "targetname");
	if(e_entity istouching(e_volume))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_80b5176f
	Namespace: namespace_da5cdb0c
	Checksum: 0x737C8147
	Offset: 0x8080
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_80b5176f()
{
	level flag::wait_till("skybridge_final_vo_can_play");
	level.var_2fd26037 dialog::say("hend_taylor_it_s_just_yo_0");
	level.var_2fd26037 dialog::say("hend_this_isn_t_you_it_0", 0.5);
	level.var_2fd26037 thread dialog::say("hend_what_is_it_john_wh_0", 1);
	wait(5.5);
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("hijack_static_effect", 1);
		wait(0.5);
		player clientfield::set_to_player("hijack_static_effect", 0);
	}
}

/*
	Name: function_92753586
	Namespace: namespace_da5cdb0c
	Checksum: 0xC41FA35E
	Offset: 0x81E0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_92753586()
{
	self.team = "team3";
	a_friendlies = GetAIArray("friendly_vtol_crew_ai", "targetname");
	a_friendlies = Array::remove_dead(a_friendlies, 0);
	if(a_friendlies.size > 0)
	{
		self SetEntityTarget(Array::random(a_friendlies));
	}
}

/*
	Name: function_fa01f7b8
	Namespace: namespace_da5cdb0c
	Checksum: 0x3302791F
	Offset: 0x8280
	Size: 0x191
	Parameters: 0
	Flags: None
*/
function function_fa01f7b8()
{
	level waittill("hash_a31a8136");
	level thread namespace_a92ad484::function_beaa78ac();
	exploder::exploder("fx_sky_bridge_tower2_exp1");
	var_cc034878 = GetEntArray("tower2_ext_wall_explode_clean", "targetname");
	foreach(var_93700c60 in var_cc034878)
	{
		var_93700c60 delete();
	}
	var_1adcc6bf = GetEntArray("tower2_ext_wall_explode_destroy", "targetname");
	foreach(var_93700c60 in var_1adcc6bf)
	{
		var_93700c60 show();
	}
}

/*
	Name: function_664a4f61
	Namespace: namespace_da5cdb0c
	Checksum: 0xED20EB9A
	Offset: 0x8420
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_664a4f61(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_6e922340
	Namespace: namespace_da5cdb0c
	Checksum: 0xA281BAC6
	Offset: 0x8450
	Size: 0x633
	Parameters: 0
	Flags: None
*/
function function_6e922340()
{
	level endon("hash_cdd1ff1a");
	level.var_986e1af6 = GetEnt("skybridge_flyby_vtol_ea", "targetname") spawner::spawn();
	level.var_b68f1f5e = GetEnt("skybridge_flyby_hunter_nrc", "targetname") spawner::spawn();
	level.var_b68f1f5e SetVehMaxSpeed(125);
	level.var_b68f1f5e vehicle_ai::function_81b6f1ac();
	level.var_b68f1f5e ai::set_ignoreme(1);
	var_26778947 = GetEnt("trig_industrial_outside", "targetname");
	var_1a9e6c60 = var_26778947 GetOrigin();
	var_26778947 waittill("trigger");
	level scene::Play("p7_fxanim_cp_lotus_skybridge_hunter_intro_bundle");
	var_4b9443a2 = GetVehicleNode("skybridge_flyby_vtol_opening_chaser_start", "targetname");
	var_377191e4 = GetVehicleNode("skybridge_flyby_vtol_opening_chased_start", "targetname");
	var_780ea365 = level.var_986e1af6;
	var_cbe20803 = level.var_b68f1f5e;
	var_780ea365 AttachPath(var_4b9443a2);
	var_780ea365 StartPath();
	wait(0.5);
	Earthquake(0.45, 0.75, var_1a9e6c60, 256);
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("grenade_rumble");
	}
	wait(1);
	var_cbe20803 AttachPath(var_377191e4);
	var_cbe20803 StartPath();
	wait(0.5);
	Earthquake(0.45, 0.75, var_1a9e6c60, 256);
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("grenade_rumble");
	}
	var_780ea365 waittill("reached_end_node");
	var_1969d6b4 = RandomFloatRange(2, 3.5);
	while(1)
	{
		var_6c6f2d1e = randomIntRange(1, 4);
		var_4b9443a2 = GetVehicleNode("skybridge_flyby_vtol_" + var_6c6f2d1e + "_chaser_start", "targetname");
		var_377191e4 = GetVehicleNode("skybridge_flyby_vtol_" + var_6c6f2d1e + "_chased_start", "targetname");
		var_aa5679bb = RandomInt(1);
		switch(var_aa5679bb)
		{
			case 0:
			{
				var_780ea365 = level.var_986e1af6;
				var_cbe20803 = level.var_b68f1f5e;
				break;
			}
			case 1:
			{
				var_780ea365 = level.var_b68f1f5e;
				var_cbe20803 = level.var_986e1af6;
				break;
			}
			case 2:
			{
				var_780ea365 = level.var_986e1af6;
				var_cbe20803 = undefined;
				break;
			}
			case 3:
			{
				var_780ea365 = level.var_b68f1f5e;
				var_cbe20803 = undefined;
				break;
			}
		}
		var_780ea365 AttachPath(var_4b9443a2);
		var_780ea365 StartPath();
		wait(RandomFloatRange(1, 1.5));
		if(isdefined(var_cbe20803))
		{
			var_cbe20803 AttachPath(var_377191e4);
			var_cbe20803 StartPath();
		}
		var_780ea365 waittill("reached_end_node");
		wait(var_1969d6b4);
		var_1969d6b4 = RandomFloatRange(2, 3.5);
	}
}

/*
	Name: function_fdb69d4a
	Namespace: namespace_da5cdb0c
	Checksum: 0x94E11ECC
	Offset: 0x8A90
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_fdb69d4a()
{
	self endon("death");
	level.var_36f2abde = (-2636, -1390, 15832);
	if(!level flag::get("play_wwz_vtol_crash"))
	{
		if(!level flag::get("sb1_initial_battle_done"))
		{
			self function_3ab6abff();
			wait(2);
		}
		self thread function_d6f89ec3();
		function_af70fd8a(0, (-2636, -1390, 15832));
		level waittill("hash_72b07ac2");
	}
	if(!level flag::get("wwz_vtol_crash_done"))
	{
		function_af70fd8a(1);
		level waittill("hash_8e9d93f4");
		wait(2);
	}
	if(!level flag::get("jumpdown_to_cross_vtol"))
	{
		function_af70fd8a(0, (2327, -966, 15603.06));
		level waittill("hash_6fe7650a");
	}
	function_af70fd8a(0, (-997, 1966, 15136));
}

/*
	Name: function_af70fd8a
	Namespace: namespace_da5cdb0c
	Checksum: 0xF5C3A08B
	Offset: 0x8C18
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_af70fd8a(b_pause, var_81647593)
{
	if(!isdefined(var_81647593))
	{
		var_81647593 = undefined;
	}
	if(isdefined(var_81647593))
	{
		level.var_36f2abde = var_81647593;
	}
	if(!b_pause)
	{
		function_5e17f9d3();
	}
	level.var_941f173a = !b_pause;
}

/*
	Name: function_3ab6abff
	Namespace: namespace_da5cdb0c
	Checksum: 0xC24207AA
	Offset: 0x8C88
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_3ab6abff()
{
	self endon("death");
	level endon("hash_624fe616");
	trigger::wait_till("start_dawdler_check", "targetname", self);
}

/*
	Name: function_d6f89ec3
	Namespace: namespace_da5cdb0c
	Checksum: 0x59039B2C
	Offset: 0x8CD0
	Size: 0x3CB
	Parameters: 0
	Flags: None
*/
function function_d6f89ec3()
{
	var_7be70491 = 20 * 0.2;
	var_b77bdab = Int(1 / 0.2);
	var_acd23ae0 = 2 * var_b77bdab;
	var_e95d58b2 = 3 * var_b77bdab;
	var_e4609c20 = 12 * var_b77bdab;
	var_9a176c0c = 3 * var_b77bdab;
	var_a6b5a5f2 = 8 * var_b77bdab;
	self endon("death");
	level endon("hash_16e710ad");
	function_5e17f9d3();
	while(1)
	{
		if(level.var_941f173a)
		{
			if(level.var_d87b4b0e > 0)
			{
				level.var_d87b4b0e--;
			}
			if(level.var_3d810458 > 0)
			{
				level.var_3d810458--;
			}
			var_48529301 = Distance2D(self.origin, level.var_36f2abde);
			var_50a0147f = level.var_272cec8f - var_48529301;
			Array::push_front(level.var_757ec91f, var_50a0147f);
			level.var_272cec8f = var_48529301;
			if(level.var_757ec91f.size > var_acd23ae0)
			{
				ArrayRemoveIndex(level.var_757ec91f, var_acd23ae0, 0);
			}
			var_97147322 = math::array_average(level.var_757ec91f);
			if(var_97147322 < 0)
			{
				level.var_6f5f5ea0 = level.var_6f5f5ea0 + 2;
			}
			else if(var_97147322 < var_7be70491)
			{
				level.var_6f5f5ea0++;
			}
			else if(level.var_6f5f5ea0 > 0)
			{
				level.var_6f5f5ea0 = level.var_6f5f5ea0 - 4;
			}
			level.var_6f5f5ea0 = math::clamp(level.var_6f5f5ea0, 0, var_e4609c20);
			/#
				iprintln("Dev Block strings are not supported" + var_97147322 + "Dev Block strings are not supported" + level.var_6f5f5ea0);
			#/
			if(level.var_6f5f5ea0 >= var_e4609c20)
			{
				if(level.var_d87b4b0e <= 0)
				{
					/#
						iprintln("Dev Block strings are not supported");
					#/
					self thread function_98cf27e0();
					level.var_d87b4b0e = var_a6b5a5f2;
				}
			}
			else if(level.var_6f5f5ea0 > var_e95d58b2)
			{
				if(level.var_3d810458 <= 0)
				{
					/#
						iprintln("Dev Block strings are not supported");
					#/
					self thread function_2806a9b0(level.var_d1f071b6);
					level.var_3d810458 = var_9a176c0c;
					level.var_d1f071b6++;
				}
			}
		}
		wait(0.2);
	}
}

/*
	Name: function_5e17f9d3
	Namespace: namespace_da5cdb0c
	Checksum: 0xA0E02BE9
	Offset: 0x90A8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_5e17f9d3()
{
	level.var_6f5f5ea0 = 0;
	level.var_d87b4b0e = 0;
	level.var_3d810458 = 0;
	level.var_d1f071b6 = 0;
	level.var_757ec91f = [];
	level.var_272cec8f = Distance2D(self.origin, level.var_36f2abde);
}

/*
	Name: function_2806a9b0
	Namespace: namespace_da5cdb0c
	Checksum: 0xCDFAA67D
	Offset: 0x9120
	Size: 0x2F5
	Parameters: 1
	Flags: None
*/
function function_2806a9b0(var_d1f071b6)
{
	self endon("death");
	var_f49de915 = 2 + var_d1f071b6;
	if(randomIntRange(0, 100) < 40)
	{
		var_73aa72ef = GetWeapon("launcher_standard");
		var_6788cc47 = 1;
		var_eb493f55 = 2;
		n_max_wait = 1;
	}
	else
	{
		var_73aa72ef = GetWeapon("lmg_light");
		var_6788cc47 = 6;
		var_eb493f55 = 20;
		n_max_wait = 0.1;
	}
	var_fda0d24 = struct::get_array("warn_dawdler_magicbullet_source", "targetname");
	var_f49de915 = math::clamp(var_f49de915, 2, var_fda0d24.size);
	for(i = var_f49de915; i > 0; i--)
	{
		s_source = Array::random(var_fda0d24);
		var_4b9c2228 = randomIntRange(var_6788cc47, var_eb493f55);
		do
		{
			var_8bfbf121 = randomIntRange(50, 250);
			var_b1a681f4 = randomIntRange(50, 250);
			if(RandomInt(100) < 50)
			{
			}
			else
			{
			}
			var_8bfbf121 = var_8bfbf121 * -1;
			if(RandomInt(100) < 50)
			{
			}
			else
			{
			}
			var_b1a681f4 = var_b1a681f4 * -1;
			MagicBullet(var_73aa72ef, s_source.origin, self.origin + (var_8bfbf121, var_b1a681f4, 0));
			wait(RandomFloatRange(0, n_max_wait));
			var_4b9c2228--;
		}
		while(!var_4b9c2228 > 0);
		Array::exclude(var_fda0d24, s_source);
	}
}

/*
	Name: function_98cf27e0
	Namespace: namespace_da5cdb0c
	Checksum: 0xD813CE2D
	Offset: 0x9420
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_98cf27e0()
{
	var_db68bd31 = struct::get_array("hunter_crash_kill_lagger_impact_point", "targetname");
	var_4edc1532 = ArrayGetClosest(self.origin, var_db68bd31);
	if(var_4edc1532.script_int < 10)
	{
	}
	else
	{
	}
	var_8d8f9222 = "hunter_crash_kill_lagger";
	var_f4e069ec = struct::get(var_8d8f9222 + var_4edc1532.script_int, "script_noteworthy");
	var_1346ba83 = util::spawn_model("veh_t7_drone_hunter_nrc");
	var_f4e069ec thread function_d07395cc(var_1346ba83);
	var_b58ae759 = var_1346ba83 util::waittill_any_timeout(5, "hunter_crash_impact");
	if(var_b58ae759 === "hunter_crash_impact")
	{
		if(!SessionModeIsCampaignZombiesGame())
		{
			RadiusDamage(var_4edc1532.origin, 500, self.health * 2, self.health, undefined, "MOD_EXPLOSIVE");
		}
	}
}

/*
	Name: function_fbd7205
	Namespace: namespace_da5cdb0c
	Checksum: 0xDECDDF3A
	Offset: 0x95D0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_fbd7205()
{
	var_eb48c16a = struct::get_array("p7_fxanim_cp_lotus_dogfight_bundle", "scriptbundlename");
	Array::thread_all(var_eb48c16a, &scene::Play);
}

/*
	Name: function_c9c1e189
	Namespace: namespace_da5cdb0c
	Checksum: 0x32CF61F7
	Offset: 0x9630
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_c9c1e189(str_spawner_name)
{
	var_6d37f6c1 = vehicle::simple_spawn(str_spawner_name);
	var_6d37f6c1[0] util::magic_bullet_shield();
	return var_6d37f6c1[0];
}

/*
	Name: function_ec3fbb5c
	Namespace: namespace_da5cdb0c
	Checksum: 0x75292EF2
	Offset: 0x9690
	Size: 0x1F3
	Parameters: 4
	Flags: None
*/
function function_ec3fbb5c(str_name, var_b793b0f2, var_3882bd7, b_looping)
{
	var_e8cd1704 = var_b793b0f2;
	var_e5e24312 = 0;
	self.var_d700fcda = 1;
	while(var_e8cd1704 <= var_3882bd7 && self.var_d700fcda)
	{
		var_4acb8b18 = GetVehicleNode(str_name + "_path0" + var_e8cd1704, "targetname");
		self AttachPath(var_4acb8b18);
		self StartPath();
		self waittill("reached_end_node");
		n_wait = RandomFloatRange(6, 12);
		var_c1ced5dc = n_wait * 0.3 * var_e5e24312;
		var_c1ced5dc = math::clamp(var_c1ced5dc, 0, 60);
		wait(n_wait + var_c1ced5dc);
		var_e8cd1704++;
		if(b_looping)
		{
			if(var_e8cd1704 > var_3882bd7)
			{
				var_e8cd1704 = var_b793b0f2;
				var_e5e24312++;
			}
		}
	}
	self util::stop_magic_bullet_shield();
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
}

/*
	Name: function_8175b0d4
	Namespace: namespace_da5cdb0c
	Checksum: 0x48200FE0
	Offset: 0x9890
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_8175b0d4(var_aa750b18)
{
	level notify("hash_5de07fa5");
	level endon("hash_5de07fa5");
	var_824105f2 = struct::get_array("hunter_crash_ambient", "script_noteworthy");
	wait(var_aa750b18);
	while(1)
	{
		var_2e29ca4a = Array::random(var_824105f2);
		var_2e29ca4a scene::Play(var_2e29ca4a.scriptbundlename);
		var_824105f2 = Array::exclude(var_824105f2, var_2e29ca4a);
		var_8643fc8a = RandomFloatRange(2, 10);
		wait(var_8643fc8a);
		if(var_824105f2.size == 0)
		{
			var_824105f2 = struct::get_array("hunter_crash_ambient", "script_noteworthy");
		}
	}
}

/*
	Name: function_5fcdf0e7
	Namespace: namespace_da5cdb0c
	Checksum: 0xEE7963E9
	Offset: 0x99D0
	Size: 0x16D
	Parameters: 4
	Flags: None
*/
function function_5fcdf0e7(n_index, var_e34a0fe5, func_spawn, param_1)
{
	if(!isdefined(var_e34a0fe5))
	{
		var_e34a0fe5 = undefined;
	}
	var_63ef22cf = struct::get_array("hunter_crash_group0" + n_index, "script_noteworthy");
	trigger::wait_till("hunter_crash_group0" + n_index, "script_noteworthy");
	foreach(var_f4e069ec in var_63ef22cf)
	{
		var_1346ba83 = util::spawn_model("veh_t7_drone_hunter_nrc");
		var_f4e069ec thread function_d07395cc(var_1346ba83);
		if(isdefined(var_e34a0fe5) && var_7ca663de == var_e34a0fe5)
		{
			var_1346ba83 thread [[func_spawn]](param_1);
		}
	}
}

/*
	Name: function_d07395cc
	Namespace: namespace_da5cdb0c
	Checksum: 0xD7C3D4CD
	Offset: 0x9B48
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_d07395cc(var_79ddcc8b)
{
	self util::script_delay();
	self scene::Play(var_79ddcc8b);
}

/*
	Name: function_56782c4
	Namespace: namespace_da5cdb0c
	Checksum: 0x60225955
	Offset: 0x9B90
	Size: 0xE1
	Parameters: 2
	Flags: None
*/
function function_56782c4(var_87b2bbe5, b_link)
{
	var_5ab883a0 = GetNodeArray(var_87b2bbe5, "targetname");
	foreach(nd_start in var_5ab883a0)
	{
		if(b_link)
		{
			LinkTraversal(nd_start);
			continue;
		}
		UnlinkTraversal(nd_start);
	}
}

/*
	Name: function_8b154406
	Namespace: namespace_da5cdb0c
	Checksum: 0x549B23DE
	Offset: 0x9C80
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_8b154406(var_74cd64bc, var_778cc6bb)
{
	objectives::breadcrumb(var_778cc6bb);
}

/*
	Name: function_8bb390e5
	Namespace: namespace_da5cdb0c
	Checksum: 0x61B93979
	Offset: 0x9CB8
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_8bb390e5(b_enable)
{
	if(b_enable)
	{
	}
	else
	{
	}
	var_9dff5377 = 0;
	foreach(player in level.players)
	{
		player clientfield::set_to_player("skybridge_sand_fx", var_9dff5377);
	}
}

/*
	Name: function_2bf854b3
	Namespace: namespace_da5cdb0c
	Checksum: 0xE7B07945
	Offset: 0x9D80
	Size: 0x23B
	Parameters: 1
	Flags: None
*/
function function_2bf854b3(a_ents)
{
	var_d27e665b = a_ents["lot_10_02_skybridge_vign_wwzfinale_robot01"];
	var_6076f720 = a_ents["lot_10_02_skybridge_vign_wwzfinale_robot02"];
	var_86797189 = a_ents["lot_10_02_skybridge_vign_wwzfinale_robot03"];
	var_4485d596 = a_ents["lot_10_02_skybridge_vign_wwzfinale_robot04"];
	var_6a884fff = a_ents["lot_10_02_skybridge_vign_wwzfinale_robot05"];
	if(isdefined(var_d27e665b))
	{
		var_d27e665b clientfield::set("rogue_bot_fx", 1);
	}
	if(isdefined(var_6076f720))
	{
		var_6076f720 clientfield::set("rogue_bot_fx", 1);
	}
	if(isdefined(var_86797189))
	{
		var_86797189 clientfield::set("rogue_bot_fx", 1);
	}
	if(isdefined(var_4485d596))
	{
		var_4485d596 clientfield::set("rogue_bot_fx", 1);
	}
	if(isdefined(var_6a884fff))
	{
		var_6a884fff clientfield::set("rogue_bot_fx", 1);
	}
	level waittill("hash_2989fcfb");
	if(isdefined(var_d27e665b))
	{
		var_d27e665b clientfield::set("rogue_bot_fx", 0);
	}
	if(isdefined(var_6076f720))
	{
		var_6076f720 clientfield::set("rogue_bot_fx", 0);
	}
	if(isdefined(var_86797189))
	{
		var_86797189 clientfield::set("rogue_bot_fx", 0);
	}
	if(isdefined(var_4485d596))
	{
		var_4485d596 clientfield::set("rogue_bot_fx", 0);
	}
	if(isdefined(var_6a884fff))
	{
		var_6a884fff clientfield::set("rogue_bot_fx", 0);
	}
}

/*
	Name: function_e50bbb52
	Namespace: namespace_da5cdb0c
	Checksum: 0xB416E94C
	Offset: 0x9FC8
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_e50bbb52()
{
	var_a974bdb4 = GetEnt("trigger_skybridge_umbra_gate", "targetname");
	while(1)
	{
		while(util::any_player_is_touching(var_a974bdb4, "allies"))
		{
			wait(0.25);
		}
		namespace_431cac9::function_3b6587d6(1, "lotus1_industrial_zone_umbra_gate");
		var_a974bdb4 trigger::wait_till();
		namespace_431cac9::function_3b6587d6(0, "lotus1_industrial_zone_umbra_gate");
	}
}

