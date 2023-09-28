#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\_vehicle_platform;
#using scripts\cp\cp_mi_cairo_lotus_sound;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_accolades;
#using scripts\cp\lotus_detention_center;
#using scripts\cp\lotus_util;
#using scripts\shared\ai\phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_8e4b89e2;

/*
	Name: function_cd269efc
	Namespace: namespace_8e4b89e2
	Checksum: 0x4EA9CDB4
	Offset: 0x1F60
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_cd269efc(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_9db406db = util::function_740f8516("khalil");
		skipto::teleport_ai(str_objective);
		function_de57d320();
		level scene::skipto_end_noai("cin_lot_04_01_security_vign_weaponcivs");
		level thread scene::Play("assassination_bodies", "targetname");
		trigger::use("post_hakim_armed_civs");
		level flag::wait_till("first_player_spawned");
		clientfield::set("swap_crowd_to_riot", 1);
		load::function_a2995f22();
		level thread scene::Play("cin_lot_04_01_security_vign_weaponguards");
		level namespace_431cac9::function_484bc3aa(1);
		level thread namespace_66fe78fb::function_36e942f6();
		level notify("hash_72d53556");
	}
	objectives::set("cp_level_lotus_capture_security_station");
	objectives::set("cp_level_lotus_to_security_station");
	level thread function_5fed4787();
	level thread function_a2032fbb();
	level.var_9db406db thread function_e8ea29f3(var_74cd64bc);
	trigger::wait_till("apartments_complete");
	skipto::function_be8adfb8("apartments");
}

/*
	Name: function_46593e07
	Namespace: namespace_8e4b89e2
	Checksum: 0xC272AF9B
	Offset: 0x21C0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_46593e07(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_e8ea29f3
	Namespace: namespace_8e4b89e2
	Checksum: 0x26B90495
	Offset: 0x21F0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_e8ea29f3(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		self waittill("hash_aa1b20a2");
	}
	do
	{
		wait(0.25);
	}
	while(!self.is_talking === 1);
	wait(5);
	level flag::wait_till("apartment_clear_magic_bullet");
	self dialog::say("khal_drive_the_nrc_out_of_0");
}

/*
	Name: function_a2032fbb
	Namespace: namespace_8e4b89e2
	Checksum: 0x852B32A9
	Offset: 0x2278
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_a2032fbb(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	level thread scene::init("cin_lot_04_03_security_vign_stairshot");
	s_align = struct::get("security_vign_breakout", "targetname");
	s_align scene::add_scene_func("cin_lot_04_01_security_vign_beaten_breakout_loop", &function_b5d037ab, "init", s_align);
	s_align scene::init("cin_lot_04_01_security_vign_beaten_breakout_loop");
	if(!var_74cd64bc)
	{
		trigger::wait_till("post_up_before_stairs");
		spawn_manager::enable("sm_atrium_battle");
		function_c687efb();
	}
}

/*
	Name: function_963d89c4
	Namespace: namespace_8e4b89e2
	Checksum: 0x49B50CB6
	Offset: 0x2388
	Size: 0x4DB
	Parameters: 2
	Flags: None
*/
function function_963d89c4(str_objective, var_74cd64bc)
{
	var_725a58df = GetEnt("mobile_shop_0_model", "script_noteworthy");
	var_f4595f48 = GetEnt("mobile_shop_0_clip", "script_noteworthy");
	var_576c11ba = GetEnt("mobile_shop_0_player_clip", "script_noteworthy");
	var_725a58df LinkTo(var_f4595f48);
	var_576c11ba LinkTo(var_f4595f48);
	var_47d90b65 = GetEnt("mobile_shop_1_vehicle", "targetname");
	var_47d90b65 ghost();
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread function_a2032fbb(var_74cd64bc);
		level scene::init("mobile_shop_ravens", "targetname");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_9db406db = util::function_740f8516("khalil");
		level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
		level.var_9db406db ai::set_behavior_attribute("cqb", 1);
		skipto::teleport_ai(str_objective);
		objectives::set("cp_level_lotus_capture_security_station");
		objectives::set("cp_level_lotus_to_security_station");
		spawn_manager::enable("sm_atrium_battle");
		level thread function_c687efb();
		trigger::use("post_up_before_stairs");
		load::function_a2995f22();
		level notify("hash_72d53556");
		clientfield::set("swap_crowd_to_riot", 1);
		level namespace_431cac9::function_484bc3aa(1);
		level thread namespace_66fe78fb::function_36e942f6();
	}
	else
	{
		level scene::init("mobile_shop_ravens", "targetname");
	}
	level thread function_c370e3e();
	level thread function_c2d878c1();
	level thread function_2bb3bfaa();
	level thread function_445b4b54();
	level thread function_a10660d2();
	level thread function_dfaa08e3();
	level thread function_80d145c5();
	level thread function_e0f59e66();
	flag::wait_till("start_atrium_battle");
	level thread namespace_431cac9::function_a516f0de("raven_decal_atrium_battle", 5, 5);
	level thread function_6ee2c51b();
	level flag::wait_till("shop_1_elevator_up");
	function_769fdf5b();
	level flag::wait_till("atrium_done");
	skipto::function_be8adfb8("atrium_battle");
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level.var_9db406db ai::set_behavior_attribute("cqb", 0);
}

/*
	Name: function_6ee2c51b
	Namespace: namespace_8e4b89e2
	Checksum: 0x3A2B240F
	Offset: 0x2870
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_6ee2c51b()
{
	spawner::waittill_ai_group_ai_count("atrium_enemy", 2);
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	level flag::set("hero_mobile_shop_board");
}

/*
	Name: function_57b2d9ef
	Namespace: namespace_8e4b89e2
	Checksum: 0x779CD8A
	Offset: 0x28D8
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function function_57b2d9ef(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		function_769fdf5b();
	}
	GetEnt("kill_after_mobileride", "targetname") TriggerEnable(1);
}

/*
	Name: function_769fdf5b
	Namespace: namespace_8e4b89e2
	Checksum: 0xF0383105
	Offset: 0x2958
	Size: 0x2DB
	Parameters: 0
	Flags: None
*/
function function_769fdf5b()
{
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation1", &namespace_431cac9::function_5da90c71, "init");
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation1", &function_3807296);
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation2", &namespace_431cac9::function_5da90c71, "init");
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation2", &namespace_431cac9::function_f2596cbe);
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation2", &function_ad02ed86);
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation3", &namespace_431cac9::function_5da90c71, "init");
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation3", &function_3807296);
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation4", &namespace_431cac9::function_5da90c71, "init");
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation4", &function_3807296);
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation5", &namespace_431cac9::function_5da90c71, "init");
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation5", &function_5bdeffa9);
	level scene::add_scene_func("cin_lot_04_07_security_vign_headshot_loop", &function_3d3111c6, "init");
	level thread scene::init("cin_lot_04_07_security_vign_headshot_loop");
	level thread scene::init("cin_lot_04_05_security_vign_melee_variation1");
	level thread scene::init("security_melee1", "targetname");
	level thread scene::init("cin_lot_04_05_security_vign_melee_variation3");
	level thread scene::init("cin_lot_04_05_security_vign_melee_variation4");
	level thread scene::init("cin_lot_04_05_security_vign_melee_variation5");
}

/*
	Name: function_41534d2a
	Namespace: namespace_8e4b89e2
	Checksum: 0x8B699605
	Offset: 0x2C40
	Size: 0x2CB
	Parameters: 2
	Flags: None
*/
function function_41534d2a(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level flag::set("mobile_shop_vo_done");
		level scene::skipto_end("p7_fxanim_cp_lotus_monitors_atrium_fall_bundle");
		level scene::init("security_mobile_shop_fall");
		trigger::use("start_security_station");
		trigger::use("security_spawner");
		trigger::use("atrium_done");
		skipto::teleport_ai(str_objective);
		objectives::set("cp_level_lotus_capture_security_station");
		objectives::set("cp_level_lotus_to_security_station");
		load::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
		level thread namespace_66fe78fb::function_36e942f6();
	}
	objectives::show("cp_level_lotus_to_security_station");
	level thread namespace_431cac9::function_a516f0de("raven_decal_security_hall", 5, 5);
	level scene::init("vent_hallway_ravens", "targetname");
	level thread scene::Play("cin_lot_04_07_security_vign_headshot_loop");
	level notify("hash_ef61cb8");
	level thread function_b402dcb9();
	level thread function_7804d8d9();
	level thread function_e20f0a12();
	level thread function_8b94205a();
	level thread function_322aa3e0();
	level thread function_32477a75();
	trigger::wait_till("to_security_station_done");
	skipto::function_be8adfb8("to_security_station");
}

/*
	Name: function_2d424c3d
	Namespace: namespace_8e4b89e2
	Checksum: 0xEF4966AE
	Offset: 0x2F18
	Size: 0x69
	Parameters: 4
	Flags: None
*/
function function_2d424c3d(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db delete();
	}
	level notify("hash_1206d494");
	level notify("hash_c087d549", 1);
}

/*
	Name: function_3807296
	Namespace: namespace_8e4b89e2
	Checksum: 0xD718481E
	Offset: 0x2F90
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_3807296(a_ents)
{
	level endon("hash_376f3a30");
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			ent util::stop_magic_bullet_shield();
			if(ent.team == "allies")
			{
				ent thread namespace_431cac9::function_c8849158(500, 15);
				ent thread namespace_431cac9::function_5b57004a();
			}
		}
	}
	if(self.scriptbundlename == "cin_lot_04_05_security_vign_melee_variation4")
	{
		level thread function_a80b1613(a_ents, self);
	}
	else
	{
		level thread function_f761fb9c(a_ents, self);
	}
	ai_civ = a_ents["vign_melee_civ_1"];
	if(isdefined(ai_civ))
	{
		ai_civ waittill("hash_b5b1039c");
		if(isalive(ai_civ))
		{
			ai_civ.var_f8da79d2 = 1;
			ai_civ thread namespace_431cac9::function_3e9f1592();
		}
	}
}

/*
	Name: function_f761fb9c
	Namespace: namespace_8e4b89e2
	Checksum: 0x625C541F
	Offset: 0x3198
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function function_f761fb9c(a_ents, s_scene)
{
	level endon("hash_376f3a30");
	Array::wait_any(a_ents, "damage");
	if(isalive(a_ents["vign_melee_nrc_1"]))
	{
		a_ents["vign_melee_nrc_1"] ai::set_ignoreall(0);
		a_ents["vign_melee_nrc_1"] ai::set_ignoreme(0);
	}
	s_scene scene::stop();
	wait(0.05);
	ai_civ = a_ents["vign_melee_civ_1"];
	if(isalive(ai_civ))
	{
		ai_civ util::stop_magic_bullet_shield();
		ai_civ notsolid();
		ai_civ StartRagdoll(1);
		ai_civ kill();
	}
}

/*
	Name: function_a80b1613
	Namespace: namespace_8e4b89e2
	Checksum: 0xD4CE05E6
	Offset: 0x32F8
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_a80b1613(a_ents, s_scene)
{
	level endon("hash_376f3a30");
	level thread function_d14babf0(a_ents["vign_melee_nrc_1"]);
	level thread function_34bcf791(a_ents["vign_melee_nrc_2"]);
	level thread function_339f4fbb(a_ents["vign_melee_civ_1"]);
	level waittill("hash_eef00e2");
	if(level.var_9e4b7906 === 1)
	{
		a_ents["vign_melee_civ_1"] waittill("hash_b5b1039c");
	}
	level.var_9e4b7906 = undefined;
	if(isalive(a_ents["vign_melee_nrc_1"]))
	{
		a_ents["vign_melee_nrc_1"] ai::set_ignoreall(0);
		a_ents["vign_melee_nrc_1"] ai::set_ignoreme(0);
	}
	if(isalive(a_ents["vign_melee_nrc_2"]))
	{
		a_ents["vign_melee_nrc_1"] ai::set_ignoreall(0);
		a_ents["vign_melee_nrc_1"] ai::set_ignoreme(0);
	}
	s_scene scene::stop();
	wait(0.05);
	if(isalive(a_ents["vign_melee_civ_1"]))
	{
		a_ents["vign_melee_civ_1"] SetGoal(GetNode("vign_melee_4_goal", "targetname"), 1);
	}
}

/*
	Name: function_d14babf0
	Namespace: namespace_8e4b89e2
	Checksum: 0xF85C0D40
	Offset: 0x3518
	Size: 0x49
	Parameters: 1
	Flags: None
*/
function function_d14babf0(var_2ddfb28d)
{
	level endon("hash_eef00e2");
	var_2ddfb28d util::waittill_any("death", "damage");
	level notify("hash_eef00e2");
}

/*
	Name: function_34bcf791
	Namespace: namespace_8e4b89e2
	Checksum: 0x6D2F704A
	Offset: 0x3570
	Size: 0x71
	Parameters: 1
	Flags: None
*/
function function_34bcf791(var_53e22cf6)
{
	level endon("hash_eef00e2");
	var_53e22cf6 util::waittill_any("death", "damage");
	if(!isalive(var_53e22cf6))
	{
		level.var_9e4b7906 = 1;
	}
	level notify("hash_eef00e2");
}

/*
	Name: function_339f4fbb
	Namespace: namespace_8e4b89e2
	Checksum: 0xF5756D7B
	Offset: 0x35F0
	Size: 0x79
	Parameters: 1
	Flags: None
*/
function function_339f4fbb(var_9100eb74)
{
	level endon("hash_eef00e2");
	var_9100eb74 util::waittill_any("death", "point_of_no_return");
	if(isalive(var_9100eb74))
	{
		var_9100eb74 thread namespace_431cac9::function_3e9f1592();
	}
	level notify("hash_eef00e2");
}

/*
	Name: function_ad02ed86
	Namespace: namespace_8e4b89e2
	Checksum: 0x58F013D7
	Offset: 0x3678
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_ad02ed86(a_ents)
{
	level endon("hash_376f3a30");
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			ent util::stop_magic_bullet_shield();
			ent thread namespace_431cac9::function_5b57004a();
			if(ent.team == "allies")
			{
				ent thread namespace_431cac9::function_c8849158(500, 15);
			}
		}
	}
	a_ents["vign_melee_nrc_1"] waittill("hash_b5b1039c");
	a_ents["vign_melee_nrc_1"] thread namespace_431cac9::function_3e9f1592();
}

/*
	Name: function_5bdeffa9
	Namespace: namespace_8e4b89e2
	Checksum: 0xCA5BE5F
	Offset: 0x37F8
	Size: 0x1E1
	Parameters: 1
	Flags: None
*/
function function_5bdeffa9(a_ents)
{
	level endon("hash_376f3a30");
	foreach(ent in a_ents)
	{
		ent util::stop_magic_bullet_shield();
		if(ent.team === "axis")
		{
			ent ai::set_ignoreme(0);
			ent ai::set_ignoreall(0);
			continue;
		}
		ent thread namespace_431cac9::function_3e9f1592();
	}
	a_ents["vign_melee_nrc_1"] waittill("death");
	foreach(ent in a_ents)
	{
		if(isalive(ent) && IsActor(ent))
		{
			ent notsolid();
			ent kill();
		}
	}
}

/*
	Name: function_f5f5e18e
	Namespace: namespace_8e4b89e2
	Checksum: 0xB7820F4A
	Offset: 0x39E8
	Size: 0x54B
	Parameters: 2
	Flags: None
*/
function function_f5f5e18e(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(str_objective);
		nd_start = GetNode("hs_hendricks_start", "targetname");
		level.var_2fd26037 SetGoal(nd_start, 1);
		level scene::init("vent_hallway_ravens", "targetname");
		scene::skipto_end_noai("cin_lot_04_09_security_vign_flee");
		level thread scene::skipto_end("p7_fxanim_cp_lotus_wall_hole_nrc_raps_bundle");
		level thread scene::skipto_end("p7_fxanim_cp_lotus_monitors_atrium_fall_bundle");
		var_941c4cee = GetEnt("raps_breach_no_sight", "targetname");
		var_941c4cee delete();
		load::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
		level thread function_32477a75();
		objectives::set("cp_level_lotus_capture_security_station");
		objectives::set("cp_level_lotus_to_security_station");
		level flag::set("hendricks_breach_line_done");
		trigger::use("trig_cqb_hendricks", "targetname", undefined, 0);
	}
	function_e1e0f9da();
	level notify("hash_376f3a30");
	level notify("hash_c087d549", 1);
	level clientfield::set("hs_fxinit_vent", 1);
	exploder::exploder("light_exploder_secstation");
	level thread namespace_431cac9::function_e577c596("vent_hallway_ravens", GetEnt("trig_vent_hallway_ravens", "targetname"), "vent_hallway_raven_decals", "cp_lotus_projection_ravengrafitti1");
	level thread function_db1878f3();
	level thread function_5098ba58();
	level thread function_14a5dbed();
	level thread function_3a2620ab();
	function_986134c7();
	savegame::function_fb150717();
	function_acdfe1fe("cp_lotus1_env_hacksystemcarnage", 1);
	t_hack = GetEnt("hack_the_system", "targetname");
	t_hack TriggerEnable(0);
	trigger::wait_till("security_station_start");
	level thread util::function_d8eaed3d(3);
	var_a178d2fe = GetEnt("security_door_damage", "targetname");
	var_a178d2fe delete();
	level scene::init("cin_lot_05_01_hack_system_1st_security_station");
	function_a2946402();
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	savegame::function_5d2cdd99();
	level flag::set("hack_the_system_ready");
	level flag::wait_till("hack_the_system_vo_done");
	t_hack TriggerEnable(1);
	objectives::complete("cp_level_lotus_defend", struct::get("defend_objective_marker"));
	util::function_14518e76(t_hack, &"cp_level_lotus_hack_console", &"CP_MI_CAIRO_LOTUS_HACK_SYSTEM", &function_dc25fc43);
}

/*
	Name: function_dc25fc43
	Namespace: namespace_8e4b89e2
	Checksum: 0xAAC9674B
	Offset: 0x3F40
	Size: 0x2CB
	Parameters: 1
	Flags: None
*/
function function_dc25fc43(e_player)
{
	level thread namespace_66fe78fb::function_8836c025();
	objectives::complete("cp_level_lotus_hack_console");
	if(isdefined(level.BZM_LOTUSDialogue3Callback))
	{
		level thread [[level.BZM_LOTUSDialogue3Callback]]();
	}
	level thread scene::add_scene_func("cin_lot_05_01_hack_system_1st_security_station", &end_fade_out, "skip_started");
	level thread scene::Play("cin_lot_05_01_hack_system_1st_security_station", e_player);
	foreach(player in level.players)
	{
		player cybercom::function_f8669cbf(1);
	}
	self gameobjects::disable_object();
	level thread function_b8a4442e();
	wait(3.33);
	level thread function_9f2e38f0();
	foreach(player in level.players)
	{
		player thread function_c7402e23();
	}
	exploder::exploder("lgt_raven");
	level thread namespace_431cac9::function_78805698();
	level thread function_8309c8fd();
	level waittill("hash_481ec310");
	if(!scene::is_skipping_in_progress())
	{
		level clientfield::set("sndIGCsnapshot", 4);
		level LUI::screen_fade_out(1.5, "white");
	}
	skipto::function_be8adfb8("hack_the_system");
}

/*
	Name: end_fade_out
	Namespace: namespace_8e4b89e2
	Checksum: 0xB2F3ACBB
	Offset: 0x4218
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
	Name: function_9f2e38f0
	Namespace: namespace_8e4b89e2
	Checksum: 0xAA7F2746
	Offset: 0x42D8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_9f2e38f0()
{
	level waittill("hash_302eb0c9");
	function_4a0fb95e("cp_lotus1_env_hacksystemcarnage");
	level waittill("hash_f78646c5");
	function_acdfe1fe("cp_lotus1_pip_meditateloop");
}

/*
	Name: function_b8a4442e
	Namespace: namespace_8e4b89e2
	Checksum: 0xCDD262D3
	Offset: 0x4338
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b8a4442e()
{
	level.var_2fd26037 waittill("hash_a5038e77");
	level.var_2fd26037 clientfield::set("hendricks_frost_breath", 0);
	wait(1);
	level.var_2fd26037 clientfield::set("hendricks_frost_breath", 1);
}

/*
	Name: function_8309c8fd
	Namespace: namespace_8e4b89e2
	Checksum: 0xCE8E09FF
	Offset: 0x43A8
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_8309c8fd()
{
	wait(0.15);
	var_222d6912 = GetEntArray("otus_snow_pile_security", "targetname");
	foreach(var_51fb1917 in var_222d6912)
	{
		var_51fb1917 show();
	}
}

/*
	Name: function_c7402e23
	Namespace: namespace_8e4b89e2
	Checksum: 0x42B526DB
	Offset: 0x4470
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_c7402e23()
{
	self notify("hash_7507ad85");
	self endon("hash_7507ad85");
	self endon("death");
	self.var_5b9f1ca7 = 1;
	self.var_6e127f9d = 0;
	do
	{
		PlayFXOnCamera(level._effect["fx_snow_lotus"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
		wait(0.05);
	}
	while(!!self flag::get("end_snow_fx"));
}

/*
	Name: function_a2946402
	Namespace: namespace_8e4b89e2
	Checksum: 0x8995B21D
	Offset: 0x4518
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_a2946402()
{
	spawner::waittill_ai_group_ai_count("security_guard", 2);
	var_78e73676 = spawner::get_ai_group_ai("security_guard");
	foreach(ai in var_78e73676)
	{
		e_target = util::get_closest_player(ai.origin, "allies");
		ai SetGoal(e_target.origin, 0, 256);
	}
	spawner::waittill_ai_group_ai_count("security_guard", 0);
	wait(1.5);
}

/*
	Name: function_db1878f3
	Namespace: namespace_8e4b89e2
	Checksum: 0x9B499703
	Offset: 0x4658
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_db1878f3()
{
	level flag::init("hack_the_system_ready");
	level flag::init("hack_the_system_vo_done");
}

/*
	Name: function_14a5dbed
	Namespace: namespace_8e4b89e2
	Checksum: 0x70C463B1
	Offset: 0x46A8
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_14a5dbed()
{
	objectives::breadcrumb("trig_breadcrum_hack_the_system");
	level notify("hash_70a98384");
}

/*
	Name: function_5098ba58
	Namespace: namespace_8e4b89e2
	Checksum: 0x4EE50FF
	Offset: 0x46E0
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_5098ba58()
{
	battlechatter::function_d9f49fba(0);
	level thread namespace_66fe78fb::function_f2d3d939();
	level flag::wait_till("hendricks_breach_line_done");
	level dialog::remote("kane_that_air_duct_leads_0");
	level waittill("hash_4487ad99");
	wait(1);
	level dialog::function_13b3b16a("plyr_take_it_easy_hendri_0");
	level dialog::function_13b3b16a("plyr_this_isn_t_you_it_s_0");
	level flag::wait_till("hs_breadcrumb_complete");
	wait(1);
	foreach(player in level.players)
	{
		player thread function_beaa4aae();
	}
	if(!level flag::get("close_to_vent"))
	{
		level dialog::remote("kane_there_that_vent_d_0");
		wait(1);
	}
	if(!level flag::get("hendricks_duct_three"))
	{
		level dialog::function_13b3b16a("plyr_at_least_we_got_the_0");
	}
	level flag::wait_till("inside_security_station");
	level.var_2fd26037 dialog::say("hend_spread_out_and_grab_0");
	battlechatter::function_d9f49fba(1);
	level flag::wait_till("hack_the_system_ready");
	battlechatter::function_d9f49fba(0);
	level thread namespace_66fe78fb::function_973b77f9();
	level thread dialog::remote("kane_interface_with_that_1");
	level flag::set("hack_the_system_vo_done");
}

/*
	Name: function_beaa4aae
	Namespace: namespace_8e4b89e2
	Checksum: 0x7990B77C
	Offset: 0x49C0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_beaa4aae(var_f1658cab)
{
	self endon("death");
	self endon("hash_c1bf0633");
	if(!isdefined(var_f1658cab))
	{
		var_f1658cab = GetEnt("trig_vent_area", "targetname");
	}
	var_f1658cab trigger::wait_till(undefined, undefined, self);
	self util::function_16c71b8(1);
	while(self istouching(var_f1658cab))
	{
		wait(0.25);
	}
	self util::function_16c71b8(0);
	self thread function_beaa4aae(var_f1658cab);
}

/*
	Name: function_32477a75
	Namespace: namespace_8e4b89e2
	Checksum: 0x6001804F
	Offset: 0x4AA8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_32477a75()
{
	level scene::init("cin_lot_04_09_security_vign_airduct01");
	trigger::wait_till("trig_cqb_hendricks", "targetname", undefined, 0);
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
	level.var_2fd26037 util::waittill_notify_or_timeout("goal", 3);
	level thread function_7d81252f();
}

/*
	Name: function_986134c7
	Namespace: namespace_8e4b89e2
	Checksum: 0xFA0DD580
	Offset: 0x4B88
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_986134c7()
{
	util::waittill_either("play_fxanim_vent", "play_fxanim_vent_group");
	if(level.players.size == 1)
	{
		flag::wait_till("play_fxanim_vent");
	}
	if(isdefined(level.BZM_LOTUSDialogue2_4Callback))
	{
		level thread [[level.BZM_LOTUSDialogue2_4Callback]]();
	}
	var_38c5f0d6 = function_bdb77f87("trig_fxanim_vent");
	playsoundatposition("evt_vent_screen_shake", (0, 0, 0));
	wait(1);
	Array::run_all(var_38c5f0d6, &PlayRumbleOnEntity, "cp_level_lotus_fxanim_vent");
	level clientfield::set("hs_fxanim_vent", 1);
}

/*
	Name: function_bdb77f87
	Namespace: namespace_8e4b89e2
	Checksum: 0xAD78977E
	Offset: 0x4C90
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_bdb77f87(str_trigger)
{
	var_8bfaaefe = GetEnt(str_trigger, "targetname");
	var_38c5f0d6 = [];
	foreach(player in level.players)
	{
		if(player istouching(var_8bfaaefe))
		{
			if(!isdefined(var_38c5f0d6))
			{
				var_38c5f0d6 = [];
			}
			else if(!IsArray(var_38c5f0d6))
			{
				var_38c5f0d6 = Array(var_38c5f0d6);
			}
			var_38c5f0d6[var_38c5f0d6.size] = player;
		}
	}
	return var_38c5f0d6;
}

/*
	Name: function_3a2620ab
	Namespace: namespace_8e4b89e2
	Checksum: 0x6C52483E
	Offset: 0x4DD0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_3a2620ab()
{
	var_222d6912 = GetEntArray("otus_snow_pile_security", "targetname");
	foreach(var_1dd40297 in var_222d6912)
	{
		var_1dd40297 Hide();
	}
	scene::add_scene_func("cin_lot_04_09_security_1st_kickgrate", &function_14223de2, "init");
	level thread scene::init("cin_lot_04_09_security_1st_kickgrate");
	level waittill("hash_70a98384");
	objectives::complete("cp_level_lotus_to_security_station");
	var_93a27bfd = GetEnt("security_station_grate", "targetname");
	var_2661661a = util::function_14518e76(var_93a27bfd, &"cp_level_lotus_interact_breach", &"CP_MI_CAIRO_LOTUS_BREACH", &function_bad59a8e);
	level thread function_2a69536(var_2661661a);
}

/*
	Name: function_14223de2
	Namespace: namespace_8e4b89e2
	Checksum: 0xC3C8F1AD
	Offset: 0x4F90
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_14223de2(a_ents)
{
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent SetHighDetail(0);
		}
	}
}

/*
	Name: function_2a69536
	Namespace: namespace_8e4b89e2
	Checksum: 0x1EA2FACB
	Offset: 0x5048
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_2a69536(var_2661661a)
{
	level endon("hash_54f5cf77");
	t_damage = trigger::wait_till("vent_damage_trigger");
	if(isPlayer(t_damage.who))
	{
		var_2661661a thread function_bad59a8e(t_damage.who);
	}
}

/*
	Name: function_bad59a8e
	Namespace: namespace_8e4b89e2
	Checksum: 0x820FDB7
	Offset: 0x50D0
	Size: 0x273
	Parameters: 1
	Flags: None
*/
function function_bad59a8e(e_player)
{
	level notify("hash_54f5cf77");
	scene::add_scene_func("cin_lot_04_09_security_1st_kickgrate", &function_4af11e24, "players_done");
	level thread scene::Play("cin_lot_04_09_security_1st_kickgrate", e_player);
	foreach(player in level.players)
	{
		player EnableInvulnerability();
	}
	level notify("hash_fe7439eb");
	level thread namespace_66fe78fb::function_86781870();
	spawn_manager::enable("sm_security_station");
	objectives::complete("cp_level_lotus_interact_breach");
	objectives::set("cp_level_lotus_defend", struct::get("defend_objective_marker"));
	self gameobjects::disable_object();
	foreach(player in level.players)
	{
		player util::function_16c71b8(0);
	}
	level thread function_afe7a8b3();
	level scene::Play("cin_lot_04_09_security_vign_airduct03");
	level clientfield::set("crowd_anims_off", 1);
	self gameobjects::destroy_object(1);
}

/*
	Name: function_afe7a8b3
	Namespace: namespace_8e4b89e2
	Checksum: 0x99F82F6A
	Offset: 0x5350
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_afe7a8b3()
{
	wait(1);
	foreach(ai in GetAITeamArray("axis"))
	{
		if(ai.script_aigroup !== "security_guard")
		{
			ai delete();
		}
	}
}

/*
	Name: function_4af11e24
	Namespace: namespace_8e4b89e2
	Checksum: 0xFF0E9B9C
	Offset: 0x5418
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_4af11e24(a_ents)
{
	level util::function_93831e79("after_kick_grate");
	foreach(player in level.players)
	{
		player DisableInvulnerability();
	}
}

/*
	Name: function_2f8e8d25
	Namespace: namespace_8e4b89e2
	Checksum: 0x9E4C25DD
	Offset: 0x54D8
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function function_2f8e8d25(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_lotus_interact_breach");
	objectives::complete("cp_level_lotus_hack_console");
	objectives::complete("cp_level_lotus_capture_security_station");
}

/*
	Name: function_5d64afc3
	Namespace: namespace_8e4b89e2
	Checksum: 0x45E2A133
	Offset: 0x5550
	Size: 0x3C3
	Parameters: 2
	Flags: None
*/
function function_5d64afc3(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	level scene::init("vtol_hallway_ravens", "targetname");
	var_222d6912 = GetEntArray("otus_snow_pile_security", "targetname");
	foreach(var_1dd40297 in var_222d6912)
	{
		var_1dd40297 delete();
	}
	function_e1e0f9da();
	if(var_74cd64bc)
	{
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai("prometheus_otr");
		scene::skipto_end_noai("cin_lot_04_09_security_1st_kickgrate");
		level namespace_431cac9::function_484bc3aa(1);
	}
	objectives::complete("cp_level_lotus_hakim_assassinate");
	objectives::complete("cp_level_lotus_capture_security_station");
	objectives::set("cp_menu_objective_awaiting_update");
	level thread namespace_a92ad484::function_8836c025();
	var_a178d2fe = GetEnt("security_door_damage", "targetname");
	var_a178d2fe Hide();
	var_a178d2fe notsolid();
	level scene::init("cin_lot_05_01_hack_system_1st_breach_hendricks");
	level scene::init("cin_lot_05_01_hack_system_1st_breach_player");
	load::function_a2995f22();
	level scene::Play("cin_lot_05_01_hack_system_1st_breach_player");
	level util::function_93831e79("prometheus_otr");
	level thread function_966f4e31();
	var_a178d2fe playsound("evt_prebreach");
	wait(1);
	level thread scene::Play("cin_lot_05_01_hack_system_1st_breach_hendricks");
	level waittill("hash_9589cacc");
	level thread namespace_a92ad484::function_fd00a4f2();
	var_a178d2fe stopSound("evt_prebreach");
	level thread function_8667d536(var_a178d2fe);
	level flag::wait_till("security_station_breach_ai_cleared");
	skipto::function_be8adfb8("prometheus_otr");
	objectives::Hide("cp_menu_objective_awaiting_update");
}

/*
	Name: function_966f4e31
	Namespace: namespace_8e4b89e2
	Checksum: 0x4520D04
	Offset: 0x5920
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_966f4e31()
{
	battlechatter::function_d9f49fba(0);
	level waittill("hash_ec01b627");
	level dialog::function_13b3b16a("plyr_kane_i_hope_you_r_0");
	level dialog::remote("kane_thirty_seconds_hold_0");
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_a1a139dc
	Namespace: namespace_8e4b89e2
	Checksum: 0xCAF067FD
	Offset: 0x59A8
	Size: 0x9B
	Parameters: 4
	Flags: None
*/
function function_a1a139dc(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_lotus_hakim_assassinate");
	objectives::complete("cp_level_lotus_capture_security_station");
	objectives::set("cp_level_lotus_capture_taylor");
	objectives::set("cp_level_lotus_go_to_taylor_prison_cell");
	if(var_74cd64bc)
	{
		function_e1e0f9da();
	}
}

/*
	Name: init
	Namespace: namespace_8e4b89e2
	Checksum: 0xE512CE58
	Offset: 0x5A50
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function init()
{
	spawner::add_spawn_function_group("newly_armed_civ", "targetname", &marked_for_death);
	spawner::add_spawn_function_group("mobile0_interior_soldiers", "script_noteworthy", &function_df344ae6);
	spawner::add_spawn_function_group("atrium_runners", "targetname", &function_5554d5f8);
	spawner::add_spawn_function_group("fleeing_civ", "script_noteworthy", &function_da4d024c);
	spawner::add_spawn_function_group("security_station_first_wave", "targetname", &function_c871015b);
	spawner::add_spawn_function_group("headshot_robots", "script_noteworthy", &function_2a70544b);
	level flag::init("shop_1_elevator_up");
	level flag::init("entermobile_done");
	level flag::init("enemy_mobile_shop_done");
	level flag::init("hero_mobile_ride_over");
	level flag::init("khalil_boarded_mobile_shop");
}

/*
	Name: function_e0f59e66
	Namespace: namespace_8e4b89e2
	Checksum: 0xCDF424ED
	Offset: 0x5C20
	Size: 0x271
	Parameters: 0
	Flags: None
*/
function function_e0f59e66()
{
	var_8a0d5994 = namespace_431cac9::function_b26ca094("mobile_security_1_group", 1, 1, 1, "veh_t7_turret_auto_sentry");
	level flag::wait_till("shop_1_elevator_up");
	trigger::use("mobile_security_1_trigger", "script_noteworthy");
	foreach(turret in var_8a0d5994.var_75cccf1)
	{
		turret thread function_6a4a23df();
	}
	level notify("hash_7bf693f");
	level thread namespace_66fe78fb::function_f3bdd599();
	level waittill("hash_1a64b222");
	var_34f79b2f = struct::get("security_molotov_origin");
	foreach(turret in var_8a0d5994.var_75cccf1)
	{
		v_velocity = VectorNormalize(turret.origin - var_34f79b2f.origin) * 3000;
		level.players[0] MagicGrenadeType(GetWeapon("molotov_grenade"), var_34f79b2f.origin + VectorScale((0, 0, 1), 25), v_velocity);
		wait(0.5);
	}
}

/*
	Name: function_6a4a23df
	Namespace: namespace_8e4b89e2
	Checksum: 0x7336F1F1
	Offset: 0x5EA0
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_6a4a23df()
{
	level endon("hash_1a64b222");
	a_s_targets = struct::get_array("security_platform_target");
	while(1)
	{
		var_bab21612 = Array::random(a_s_targets);
		n_timer = RandomFloatRange(0.2, 0.7) * 20;
		for(i = 0; i < n_timer; i++)
		{
			MagicBullet(GetWeapon("ar_standard"), self GetTagOrigin("tag_barrel") + VectorScale((0, -1, 0), 40), var_bab21612.origin);
			wait(0.05);
		}
		wait(RandomFloatRange(0.75, 2));
	}
}

/*
	Name: function_5fed4787
	Namespace: namespace_8e4b89e2
	Checksum: 0x733995E9
	Offset: 0x5FE8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_5fed4787()
{
	level thread function_56ab9afe();
	level thread function_8c0c7a73();
	level thread function_7cc50c55();
	level thread function_f5ac9464();
	level thread function_7973e192();
	level thread function_82850b73();
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level.var_9db406db ai::set_behavior_attribute("cqb", 1);
	spawner::waittill_ai_group_cleared("apartment_front");
	spawner::waittill_ai_group_cleared("ai_group_apt_phalanx");
	spawner::waittill_ai_group_cleared("apartment_rear");
	trigger::use("post_up_before_stairs", "targetname", undefined, 0);
}

/*
	Name: function_de57d320
	Namespace: namespace_8e4b89e2
	Checksum: 0xD216FDB1
	Offset: 0x6148
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_de57d320()
{
	level scene::add_scene_func("cin_lot_04_01_security_vign_holddown", &function_4f022f94, "init");
	level scene::init("civ_hold_guard_1", "targetname");
	level scene::init("civ_hold_guard_2", "targetname");
	level scene::init("cin_lot_04_01_security_vign_weaponguards");
}

/*
	Name: function_8c0c7a73
	Namespace: namespace_8e4b89e2
	Checksum: 0x192C40DA
	Offset: 0x61F8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_8c0c7a73()
{
	level thread scene::Play("cin_lot_04_01_security_aie_enter");
	scene::add_scene_func("cin_lot_04_02_security_vign_drag", &function_7097716c, "init");
	level scene::init("cin_lot_04_02_security_vign_drag");
	level thread scene::Play("civ_hold_guard_1", "targetname");
	wait(1);
	level thread scene::Play("civ_hold_guard_2", "targetname");
	flag::wait_till("start_apartment_battle");
	level thread namespace_431cac9::function_a516f0de("raven_decal_apartments", 5, 5);
	level scene::Play("cin_lot_04_02_security_vign_drag");
}

/*
	Name: function_7097716c
	Namespace: namespace_8e4b89e2
	Checksum: 0x8EEBAEE6
	Offset: 0x6328
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_7097716c(a_ents)
{
	a_ents["drag_civilian"] ai::set_ignoreme(1);
	level waittill("hash_870fc78d");
	if(isalive(a_ents["drag_civilian"]))
	{
		a_ents["drag_civilian"] ai::set_ignoreme(0);
	}
}

/*
	Name: function_7cc50c55
	Namespace: namespace_8e4b89e2
	Checksum: 0x3776572F
	Offset: 0x63C0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_7cc50c55()
{
	level scene::add_scene_func("cin_lot_04_02_security_vign_run_a_civ01", &function_a0813430, "init");
	level scene::add_scene_func("cin_lot_04_02_security_vign_run_b_civ01", &function_a0813430, "init");
	level scene::init("cin_lot_04_02_security_vign_run_a_civ01");
	level scene::init("cin_lot_04_02_security_vign_run_b_civ01");
	trigger::wait_till("trigger_first_apartment_civs");
	level thread scene::Play("cin_lot_04_02_security_vign_run_a_civ01");
	trigger::wait_till("trigger_second_apartment_civs");
	level thread scene::Play("cin_lot_04_02_security_vign_run_b_civ01");
}

/*
	Name: function_a0813430
	Namespace: namespace_8e4b89e2
	Checksum: 0xDA2C7036
	Offset: 0x64E0
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_a0813430(a_ents)
{
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreme(1);
			ent ai::set_ignoreall(1);
		}
	}
}

/*
	Name: function_4f022f94
	Namespace: namespace_8e4b89e2
	Checksum: 0x36535365
	Offset: 0x65B8
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_4f022f94(a_ents)
{
	level endon("hash_59fd7ee0");
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			ent thread namespace_431cac9::function_5b57004a();
		}
	}
	Array::wait_any(a_ents, "death");
	if(isalive(a_ents["enemy"]))
	{
		a_ents["enemy"] notsolid();
		a_ents["enemy"] StartRagdoll(1);
		a_ents["enemy"] kill();
	}
	else if(isalive(a_ents["newly_armed_civ"]))
	{
		a_ents["newly_armed_civ"] ai::set_ignoreall(0);
		a_ents["newly_armed_civ"] ai::set_ignoreme(0);
		a_ents["newly_armed_civ"] StopAnimScripted();
		a_ents["newly_armed_civ"] ai::set_behavior_attribute("cqb", 1);
	}
}

/*
	Name: function_56ab9afe
	Namespace: namespace_8e4b89e2
	Checksum: 0x954C127C
	Offset: 0x6810
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_56ab9afe()
{
	objectives::breadcrumb("apartments_breadcrumb");
}

/*
	Name: function_f5ac9464
	Namespace: namespace_8e4b89e2
	Checksum: 0xEEAB8D68
	Offset: 0x6838
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f5ac9464()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	spawner::add_spawn_function_ai_group("apartment_front", &util::magic_bullet_shield);
	flag::wait_till("apartment_clear_magic_bullet");
	spawner::remove_spawn_function_ai_group("apartment_front", &util::magic_bullet_shield);
	Array::run_all(spawner::get_ai_group_ai("apartment_front"), &util::stop_magic_bullet_shield);
}

/*
	Name: function_7973e192
	Namespace: namespace_8e4b89e2
	Checksum: 0x3D06EADD
	Offset: 0x6900
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_7973e192()
{
	trigger::wait_till("trigger_apartment_riotshields");
	v_start = struct::get("s_apt_2_phalanx_start").origin;
	v_end = struct::get("s_apt_2_phalanx_end").origin;
	var_f835ddae = GetEnt("sp_apartments_phalanx", "targetname");
	function_9b385ca5();
	phalanx = phalanx;
	Initialize(phalanx, "phanalx_wedge", v_start, v_end, 1, 1, var_f835ddae);
	v_start = struct::get("s_apt_1_phalanx_start").origin;
	v_end = struct::get("s_apt_1_phalanx_end").origin;
	function_9b385ca5();
	phalanx = phalanx;
	Initialize(phalanx, "phanalx_wedge", v_start, v_end, 1, 1, var_f835ddae);
	var_f835ddae delete();
}

/*
	Name: marked_for_death
	Namespace: namespace_8e4b89e2
	Checksum: 0x5C2D4EF7
	Offset: 0x6AB8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function marked_for_death()
{
	self endon("death");
	wait(1);
	if(self flagsys::get("scriptedanim"))
	{
		self flagsys::wait_till_clear("scriptedanim");
	}
	wait(RandomFloatRange(20, 30));
	self kill();
}

/*
	Name: function_82850b73
	Namespace: namespace_8e4b89e2
	Checksum: 0x23F51BC7
	Offset: 0x6B48
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_82850b73()
{
	level scene::add_scene_func("cin_lot_04_02_security_vign_wave", &function_26d2d4be, "init");
	level scene::init("cin_lot_04_02_security_vign_wave");
	flag::wait_till("apartment_clear_magic_bullet");
	level thread scene::skipto_end("cin_lot_04_02_security_vign_wave", undefined, undefined, 0.3);
	wait(1);
	level notify("hash_9fdb7d54");
}

/*
	Name: function_26d2d4be
	Namespace: namespace_8e4b89e2
	Checksum: 0xB701B522
	Offset: 0x6BF8
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_26d2d4be(a_ents)
{
	a_ents["wave_civilian"] ai::set_ignoreall(1);
	a_ents["wave_civilian"] ai::set_ignoreme(1);
	a_ents["wave_civilian"] util::magic_bullet_shield();
	level waittill("hash_9fdb7d54");
	if(isalive(a_ents["wave_civilian"]))
	{
		a_ents["wave_civilian"] ai::set_ignoreall(0);
		a_ents["wave_civilian"] ai::set_ignoreme(0);
		a_ents["wave_civilian"] util::stop_magic_bullet_shield();
		a_ents["wave_civilian"] SetGoal(GetNode("post_wave_cover", "targetname"), 1);
	}
}

/*
	Name: function_445b4b54
	Namespace: namespace_8e4b89e2
	Checksum: 0xAFC27DBB
	Offset: 0x6D60
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_445b4b54()
{
	objectives::breadcrumb("atrium_battle_breadcrumb");
	level flag::wait_till("mobile_shop_1_top");
	objectives::set("cp_level_lotus_defend_mobile_shop", struct::get("hero_shop_gather", "script_noteworthy"));
	objectives::Hide("cp_level_lotus_to_security_station");
	level flag::wait_till("shop_1_elevator_up");
	objectives::complete("cp_level_lotus_defend_mobile_shop", struct::get("hero_shop_gather", "script_noteworthy"));
}

/*
	Name: function_dfaa08e3
	Namespace: namespace_8e4b89e2
	Checksum: 0xE2B9F942
	Offset: 0x6E50
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_dfaa08e3()
{
	level flag::wait_till("player_at_atrium_main");
	namespace_431cac9::function_fe64b86b("rainman", struct::get("atrium_battle_corpse_drop"), 0);
	wait(5);
	namespace_431cac9::function_fe64b86b("rainman", struct::get("atrium_battle_corpse_drop2"), 0);
}

/*
	Name: function_c370e3e
	Namespace: namespace_8e4b89e2
	Checksum: 0x9140A4F7
	Offset: 0x6EF0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c370e3e()
{
	s_align = struct::get("security_vign_breakout", "targetname");
	s_align thread scene::Play("cin_lot_04_01_security_vign_beaten_breakout_loop");
}

/*
	Name: function_b5d037ab
	Namespace: namespace_8e4b89e2
	Checksum: 0x77CBC7D4
	Offset: 0x6F48
	Size: 0x383
	Parameters: 2
	Flags: None
*/
function function_b5d037ab(a_ents, s_align)
{
	s_align endon("scene_done");
	foreach(ent in a_ents)
	{
		ent ai::set_ignoreme(1);
		ent ai::set_ignoreall(1);
		ent util::magic_bullet_shield();
	}
	level flag::wait_till("start_atrium_battle");
	foreach(ent in a_ents)
	{
		ent util::stop_magic_bullet_shield();
		ent thread namespace_431cac9::function_5b57004a();
	}
	a_ents["beaten_breakout_civ_01"] thread function_794875cb(s_align, "cin_lot_04_01_security_vign_beaten_breakout_civ01_death", a_ents);
	a_ents["beaten_breakout_civ_02"] thread function_794875cb(s_align, "cin_lot_04_01_security_vign_beaten_breakout_civ02_death", a_ents);
	a_ents["beaten_breakout_nrc"] thread function_794875cb(s_align, "cin_lot_04_01_security_vign_beaten_breakout_nrc_death", a_ents);
	s_align endon("hash_5ba67727");
	level flag::wait_till("player_at_atrium_main");
	wait(RandomFloatRange(5, 10));
	if(isalive(a_ents["beaten_breakout_civ_01"]) && isalive(a_ents["beaten_breakout_civ_02"]) && isalive(a_ents["beaten_breakout_nrc"]))
	{
		var_845111f3 = struct::get("security_vign_magic_bullet", "targetname");
		var_7e64c6f8 = Array::random(a_ents);
		MagicBullet(GetWeapon("ar_standard"), var_845111f3.origin, var_7e64c6f8 GetTagOrigin("j_head"));
		var_7e64c6f8 DoDamage(1, var_845111f3.origin);
	}
}

/*
	Name: function_794875cb
	Namespace: namespace_8e4b89e2
	Checksum: 0xEB8D62DE
	Offset: 0x72D8
	Size: 0x1BB
	Parameters: 3
	Flags: None
*/
function function_794875cb(s_align, str_scene, a_ents)
{
	self endon("hash_c5781b2");
	self waittill("damage");
	s_align notify("hash_5ba67727");
	foreach(ent in a_ents)
	{
		if(ent != self)
		{
			ent notify("hash_c5781b2");
		}
		if(ent.team != "axis")
		{
			ent ai::set_ignoreme(0);
			ent ai::set_ignoreall(0);
			ent thread namespace_431cac9::function_c8849158(1000);
			continue;
		}
		ent thread util::delay(1, undefined, &namespace_431cac9::function_3e9f1592);
	}
	if(self.team != "axis")
	{
		self thread util::delay(1, undefined, &namespace_431cac9::function_3e9f1592);
	}
	s_align thread scene::Play(str_scene);
}

/*
	Name: function_965ed288
	Namespace: namespace_8e4b89e2
	Checksum: 0x54160998
	Offset: 0x74A0
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_965ed288()
{
	self endon("goal");
	function_cdecd316();
	self notify("goal");
}

/*
	Name: function_f92e06f2
	Namespace: namespace_8e4b89e2
	Checksum: 0xC1EADE96
	Offset: 0x74E0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_f92e06f2()
{
	self endon("death");
	self endon("goal");
	function_cdecd316();
	goal_node = GetNode("hendricks_roof_goal", "targetname");
	self ForceTeleport(goal_node.origin);
	self notify("hash_75b3f7dc");
}

/*
	Name: function_cdecd316
	Namespace: namespace_8e4b89e2
	Checksum: 0xF4D9ACDD
	Offset: 0x7578
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_cdecd316()
{
	v_origin = self.origin;
	n_time = GetTime();
	while(GetTime() - n_time < 5000)
	{
		wait(0.05);
		if(self.origin != v_origin)
		{
			v_origin = self.origin;
			n_time = GetTime();
		}
	}
}

/*
	Name: function_80d145c5
	Namespace: namespace_8e4b89e2
	Checksum: 0x740FAFA5
	Offset: 0x75F0
	Size: 0x761
	Parameters: 0
	Flags: None
*/
function function_80d145c5()
{
	level scene::init("cin_lot_04_06_security_vign_entermobile");
	var_47d90b65 = GetEnt("mobile_shop_1_vehicle", "targetname");
	var_47d90b65 SetCanDamage(0);
	var_c8256c12 = GetNode("entermobile1_start", "targetname");
	LinkTraversal(var_c8256c12);
	level flag::wait_till("enemy_mobile_shop_done");
	level flag::wait_till("hero_mobile_shop_board");
	level scene::add_scene_func("cin_lot_04_06_security_vign_entermobile", &function_4f07d8eb, "done");
	level scene::add_scene_func("cin_lot_04_06_security_vign_entermobile", &function_eca1e72e, "play");
	level thread scene::Play("cin_lot_04_06_security_vign_entermobile");
	level.var_9db406db thread function_965ed288();
	level flag::wait_till("khalil_boarded_mobile_shop");
	savegame::function_5d2cdd99();
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 ai::set_behavior_attribute("disablesprint", 0);
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 1);
	level.var_2fd26037 SetGoal(GetNode("hendricks_roof_goal", "targetname"), 1);
	level.var_2fd26037 thread function_f92e06f2();
	level.var_2fd26037 util::waittill_any("goal", "failsafe_teleport");
	level.var_2fd26037.allowbattlechatter["bc"] = 0;
	level.var_2fd26037 ai::set_ignoreall(1);
	level flag::wait_till("entermobile_done");
	if(isdefined(level.BZM_LOTUSDialogue2_1Callback))
	{
		level thread [[level.BZM_LOTUSDialogue2_1Callback]]();
	}
	e_trigger = GetEnt("mobile_shop_1_start_trigger", "script_noteworthy");
	e_trigger namespace_431cac9::function_36a6e271(0, level.heroes);
	wait(0.5);
	var_c8256c12 = GetNode("entermobile1_start", "targetname");
	foreach(player in level.players)
	{
		player thread function_40c7669();
	}
	UnlinkTraversal(var_c8256c12);
	level.var_2fd26037 LinkTo(var_47d90b65);
	level flag::set("shop_1_elevator_up");
	level thread function_282a605e();
	spawn_manager::enable("sm_hero_shop_enemies");
	UnlinkTraversal(var_c8256c12);
	function_9b385ca5();
	level.var_c4e28386 = var_fa0d90fd;
	init(level.var_c4e28386, "mobile_shop_1");
	var_47d90b65 thread function_e99d2077();
	trigger::wait_till("atrium_done", undefined, undefined, 0);
	level flag::set("hero_mobile_ride_over");
	if(isdefined(level.BZM_LOTUSDialogue2_2Callback))
	{
		level thread [[level.BZM_LOTUSDialogue2_2Callback]]();
	}
	var_f89fb348 = GetNode("start_mobile_1_roof_across_128", "targetname");
	LinkTraversal(var_f89fb348);
	wait(1.5);
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037.allowbattlechatter["bc"] = 1;
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
	level.var_2fd26037 Unlink();
	level.var_2fd26037 SetGoal(GetNode("end_mobile_1_roof_across_128", "targetname"), 1);
	level.var_2fd26037 waittill("goal");
	level.var_2fd26037 colors::enable();
	trigger::use("start_security_station");
	a_enemies = spawner::get_ai_group_ai("hero_shop_ambient");
	foreach(enemy in a_enemies)
	{
		enemy kill();
		wait(RandomFloatRange(0.2, 0.5));
	}
}

/*
	Name: function_eca1e72e
	Namespace: namespace_8e4b89e2
	Checksum: 0x929C6201
	Offset: 0x7D60
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_eca1e72e(a_ents)
{
	level flag::set("khalil_boarded_mobile_shop");
}

/*
	Name: function_40c7669
	Namespace: namespace_8e4b89e2
	Checksum: 0xDC198405
	Offset: 0x7D98
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_40c7669()
{
	level endon("hash_59fd7ee0");
	self endon("death");
	while(1)
	{
		v_loc = GetNode("hendricks_roof_goal", "targetname").origin;
		if(v_loc[2] - self.origin[2] > 500)
		{
			self EnableInvulnerability();
			util::missionfailedwrapper_nodeath(&"CP_MI_CAIRO_LOTUS_MOBILE_SHOP");
		}
		wait(1);
	}
}

/*
	Name: function_282a605e
	Namespace: namespace_8e4b89e2
	Checksum: 0x6A436E5A
	Offset: 0x7E58
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_282a605e()
{
	level notify("hash_c087d549", 1);
	level waittill("hash_2d770a81");
	wait(0.5);
	namespace_431cac9::function_e577c596("mobile_shop_ravens", undefined, "mobile_shop_raven_decals", "cp_lotus_projection_ravengrafitti4");
	level scene::stop("p7_fxanim_cp_lotus_atrium_ravens_bundle");
	level notify("hash_c4a944f0");
}

/*
	Name: function_c687efb
	Namespace: namespace_8e4b89e2
	Checksum: 0xE4CD622C
	Offset: 0x7EE8
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_c687efb()
{
	level thread function_d4538b37();
	var_1475fbe1 = GetEntArray("atrium_battle_main", "script_noteworthy");
	spawner::simple_spawn(var_1475fbe1);
	var_1475fbe1 = GetEntArray("mobile0_interior_soldiers", "script_noteworthy");
	spawner::simple_spawn(var_1475fbe1);
	flag::wait_till("start_atrium_battle");
	trigger::use("start_enemy_mobile_shop", "script_noteworthy");
	level flag::wait_till("security_shop_unload");
	var_85129eab = GetNode("start_mobile_0_interior_across_128", "targetname");
	LinkTraversal(var_85129eab);
	wait(10);
	UnlinkTraversal(var_85129eab);
	level notify("hash_834140d7");
	level flag::wait_till_timeout(8, "security_shop_stopped");
	var_a7be1923 = GetNode("start_mobile_0_top_across_128", "targetname");
	LinkTraversal(var_a7be1923);
	var_7d15b22d = GetNode("start_mobile_0_across_128", "targetname");
	LinkTraversal(var_7d15b22d);
	var_ba891ade = GetNode("start_mobile_0_up_160", "targetname");
	LinkTraversal(var_ba891ade);
	level flag::set("enemy_mobile_shop_done");
}

/*
	Name: function_d4538b37
	Namespace: namespace_8e4b89e2
	Checksum: 0x66B1226C
	Offset: 0x8150
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d4538b37()
{
	level waittill("hash_8a1b1b48");
	level flag::set("security_shop_unload");
	level waittill("hash_efce9878");
	level flag::set("security_shop_stopped");
}

/*
	Name: function_2bb3bfaa
	Namespace: namespace_8e4b89e2
	Checksum: 0xE4360F08
	Offset: 0x81B0
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_2bb3bfaa()
{
	level scene::init("p7_fxanim_cp_lotus_monitors_atrium_fall_02_bundle");
	level scene::init("atrium_mobile_shop_fall_1");
	level scene::init("atrium_mobile_shop_fall_2");
	level scene::init("security_mobile_shop_fall");
	level flag::wait_till("player_at_atrium_main");
	level thread scene::Play("p7_fxanim_cp_lotus_monitors_atrium_fall_02_bundle");
	trigger::wait_till("ambient_rocket_1");
	function_cc59fc62("s_fx_monitor_rocket_foreshadow");
	util::delay(3, undefined, &scene::Play, "atrium_mobile_shop_fall_1");
	trigger::wait_till("ambient_rocket_2");
	function_cc59fc62("s_fx_monitor_rocket_foreshadow_2");
	trigger::wait_till("trigger_fx_monitors");
	function_cc59fc62("s_fx_monitor_rocket");
	level thread scene::Play("p7_fxanim_cp_lotus_monitors_atrium_fall_bundle");
	level flag::wait_till("shop_1_elevator_up");
	util::delay(5, undefined, &scene::Play, "atrium_mobile_shop_fall_2");
}

/*
	Name: function_cc59fc62
	Namespace: namespace_8e4b89e2
	Checksum: 0x75DF1E8D
	Offset: 0x83B0
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_cc59fc62(str_targetname)
{
	var_a448a262 = struct::get(str_targetname, "targetname");
	var_38433989 = struct::get(var_a448a262.target, "targetname");
	var_5e92b8ab = GetWeapon("smaw");
	e_rocket = MagicBullet(var_5e92b8ab, var_a448a262.origin, var_38433989.origin);
	e_rocket waittill("death");
}

/*
	Name: function_df344ae6
	Namespace: namespace_8e4b89e2
	Checksum: 0xEA9B786C
	Offset: 0x8490
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_df344ae6()
{
	self endon("death");
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	level waittill("hash_8a1b1b48");
	nd_goal = GetNode(self.script_string, "targetname");
	if(isdefined(nd_goal.radius))
	{
		self SetGoal(nd_goal, 1);
	}
	else
	{
		self SetGoal(nd_goal);
	}
	self waittill("goal");
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
}

/*
	Name: function_4f07d8eb
	Namespace: namespace_8e4b89e2
	Checksum: 0x8EAC3870
	Offset: 0x85A0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_4f07d8eb(a_ents)
{
	level flag::set("entermobile_done");
	level waittill("hash_9a441d9e");
	level scene::stop("cin_lot_04_06_security_vign_entermobile");
	level.var_9db406db ai::set_ignoreall(1);
	level.var_9db406db ai::set_ignoreme(1);
	level waittill("hash_e0d4b687");
	level.var_9db406db delete();
}

/*
	Name: function_c2d878c1
	Namespace: namespace_8e4b89e2
	Checksum: 0x346668A6
	Offset: 0x8668
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c2d878c1()
{
	level flag::wait_till("start_stair_shoot");
	level thread scene::Play("cin_lot_04_03_security_vign_stairshot");
}

/*
	Name: function_a10660d2
	Namespace: namespace_8e4b89e2
	Checksum: 0x12BC01D2
	Offset: 0x86B8
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_a10660d2()
{
	level flag::wait_till("start_stair_shoot");
	level.var_9db406db thread dialog::say("khal_watch_your_fire_th_0");
	level waittill("hash_8a1b1b48");
	battlechatter::function_d9f49fba(0);
	level dialog::remote("kane_there_commandeer_th_0");
	level dialog::function_13b3b16a("plyr_copy_that_moving_0", 0.5);
	level.var_9db406db dialog::say("khal_here_they_come_cut_0", 0.7);
	battlechatter::function_d9f49fba(1);
	trigger::wait_till("mobile_shop_1_wait", undefined, undefined, 0);
	level.var_9db406db dialog::say("khal_hold_on_the_roof_i_0");
	level flag::wait_till("shop_1_elevator_up");
	level.var_9db406db dialog::say("khal_i_ll_take_us_up_giv_0");
	level.var_9db406db dialog::say("khal_nrc_reinforcements_a_0", 2);
	level dialog::function_13b3b16a("plyr_you_got_a_suggestion_2", 0.25);
	level waittill("hash_c4a944f0");
	level.var_9db406db dialog::say("khal_go_ahead_i_need_to_0", 0.5);
	level notify("hash_e0d4b687");
	level.var_2fd26037 dialog::say("hend_go_for_it_boy_scout_0", 0.25);
	level flag::set("mobile_shop_vo_done");
}

/*
	Name: function_5554d5f8
	Namespace: namespace_8e4b89e2
	Checksum: 0x98A583E7
	Offset: 0x8910
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_5554d5f8()
{
	self endon("death");
	wait(RandomFloatRange(1, 5));
	self ai::set_ignoreme(0);
	self waittill("goal");
	self kill();
}

/*
	Name: function_3153496d
	Namespace: namespace_8e4b89e2
	Checksum: 0xCFAAEA08
	Offset: 0x8980
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_3153496d()
{
	self SetThreatBiasGroup("lvl_one_ambient");
	self thread function_2f52df3();
}

/*
	Name: function_2f52df3
	Namespace: namespace_8e4b89e2
	Checksum: 0xE703C939
	Offset: 0x89C8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2f52df3()
{
	self endon("death");
	self waittill("goal");
	self kill();
}

/*
	Name: function_e99d2077
	Namespace: namespace_8e4b89e2
	Checksum: 0xA872EDA2
	Offset: 0x8A08
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function function_e99d2077()
{
	wait(1.4);
	while(!level flag::get("hero_mobile_ride_over"))
	{
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("mobile_shop_rumble_loop", 1);
		}
		self util::waittill_either("reached_node", "reached_end_node");
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("mobile_shop_rumble_loop", 0);
		}
		wait(1.4);
	}
}

/*
	Name: function_8b94205a
	Namespace: namespace_8e4b89e2
	Checksum: 0x8EA68623
	Offset: 0x8B90
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8b94205a()
{
	objectives::breadcrumb("to_security_station_breadcrumb");
}

/*
	Name: function_2a70544b
	Namespace: namespace_8e4b89e2
	Checksum: 0x9E5C9AB
	Offset: 0x8BB8
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_2a70544b()
{
	level endon("hash_e4c92343");
	self waittill("death");
	spawn_manager::enable("sm_after_mobile_shop1");
	level notify("hash_e4c92343");
}

/*
	Name: function_7804d8d9
	Namespace: namespace_8e4b89e2
	Checksum: 0xB8058191
	Offset: 0x8C08
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_7804d8d9()
{
	trigger::wait_till("trigger_raps_wall");
	spawn_manager::enable("sm_wall_breech");
	spawn_manager::enable("sm_wall_breech_raps");
	wait(1);
	level thread scene::Play("p7_fxanim_cp_lotus_wall_hole_nrc_raps_bundle");
	var_941c4cee = GetEnt("raps_breach_no_sight", "targetname");
	var_941c4cee delete();
}

/*
	Name: function_e20f0a12
	Namespace: namespace_8e4b89e2
	Checksum: 0x68AB2A62
	Offset: 0x8CC0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e20f0a12()
{
	trigger::wait_till("security_mobile_shop_fall");
	level thread scene::Play("security_mobile_shop_fall");
}

/*
	Name: function_b402dcb9
	Namespace: namespace_8e4b89e2
	Checksum: 0x35F1913
	Offset: 0x8D08
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_b402dcb9()
{
	level scene::init("cin_lot_04_09_security_vign_flee");
	level flag::wait_till("security_station_first_raps");
	level scene::add_scene_func("cin_lot_04_09_security_vign_flee", &function_e4ea8ea0);
	level scene::Play("cin_lot_04_09_security_vign_flee");
}

/*
	Name: function_e4ea8ea0
	Namespace: namespace_8e4b89e2
	Checksum: 0xEECD2CB0
	Offset: 0x8DA0
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_e4ea8ea0(a_ents)
{
	e_goal_volume = GetEnt("gv_security_station_slaughter", "targetname");
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent SetGoal(e_goal_volume, 1);
		}
	}
}

/*
	Name: function_3d3111c6
	Namespace: namespace_8e4b89e2
	Checksum: 0x64F53CCA
	Offset: 0x8E88
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function function_3d3111c6(a_ents)
{
	level flag::init("robot_vs_civ_finish");
	ai_civ = a_ents["vign_headshot_civ"];
	var_f6c5842 = a_ents["vign_headshot_robot"];
	ai_civ ai::set_ignoreme(1);
	ai_civ thread function_75e170d1();
	var_f6c5842 ai::set_ignoreme(1);
	var_f6c5842 thread function_75e170d1();
	level waittill("hash_ef61cb8");
	level flag::wait_till_any_timeout(4, Array("robot_vs_civ_finish"));
	if(isalive(ai_civ))
	{
		if(isalive(var_f6c5842))
		{
			ai_civ thread function_4be7964c(var_f6c5842);
			ai_civ util::magic_bullet_shield();
			level thread scene::Play("cin_lot_04_07_security_vign_headshot");
			var_f6c5842 ai::set_ignoreme(0);
			level waittill("hash_8a548864");
			if(isalive(ai_civ))
			{
				ai_civ util::stop_magic_bullet_shield();
				ai_civ StartRagdoll(1);
				ai_civ kill();
			}
		}
		else
		{
			level scene::stop("cin_lot_04_07_security_vign_headshot_loop");
			wait(0.25);
			ai_civ SetGoal(GetNode("vign_headshot_goal", "targetname"), 1);
		}
	}
	else if(isalive(var_f6c5842))
	{
		var_f6c5842 ai::set_ignoreme(0);
		self scene::stop();
	}
}

/*
	Name: function_75e170d1
	Namespace: namespace_8e4b89e2
	Checksum: 0xADD57BBF
	Offset: 0x9150
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_75e170d1()
{
	self endon("hash_5b2aa9ce");
	self waittill("death");
	level flag::set("robot_vs_civ_finish");
}

/*
	Name: function_4be7964c
	Namespace: namespace_8e4b89e2
	Checksum: 0x800E1756
	Offset: 0x9198
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_4be7964c(var_f6c5842)
{
	self waittill("death");
	if(level scene::is_active("cin_lot_04_07_security_vign_headshot"))
	{
		var_f6c5842 StopAnimScripted(0.5);
	}
}

/*
	Name: function_322aa3e0
	Namespace: namespace_8e4b89e2
	Checksum: 0xF06B8EE
	Offset: 0x91F8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_322aa3e0()
{
	level flag::wait_till("mobile_shop_vo_done");
	battlechatter::function_d9f49fba(0);
	wait(2);
	level thread namespace_66fe78fb::function_d116b1d8();
	level dialog::remote("kane_i_got_a_dozen_of_civ_0", 2);
	battlechatter::function_d9f49fba(1);
	level flag::wait_till("security_station_nrc_reinforce");
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 dialog::say("hend_more_nrc_moving_in_0", 2);
	level dialog::remote("kane_they_re_locking_down_0", 1);
	level flag::wait_till("security_station_player_in_wall");
	level thread namespace_66fe78fb::function_973b77f9();
	level.var_2fd26037 dialog::say("hend_moving_through_breac_0");
	level flag::set("hendricks_breach_line_done");
}

/*
	Name: function_da4d024c
	Namespace: namespace_8e4b89e2
	Checksum: 0x96E85A61
	Offset: 0x9388
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_da4d024c()
{
	self ai::set_ignoreall(1);
}

/*
	Name: function_7d81252f
	Namespace: namespace_8e4b89e2
	Checksum: 0xBA61FC4D
	Offset: 0x93B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_7d81252f()
{
	level endon("hash_4394ca68");
	level thread function_e633ccb6();
	if(isdefined(level.BZM_LOTUSDialogue2_3Callback))
	{
		level thread [[level.BZM_LOTUSDialogue2_3Callback]]();
	}
	level scene::Play("cin_lot_04_09_security_vign_airduct01");
	flag::wait_till("rflag_hendircks_vent_anim_2");
	level scene::Play("cin_lot_04_09_security_vign_airduct02");
	level scene::init("cin_lot_04_09_security_vign_airduct03");
}

/*
	Name: function_e633ccb6
	Namespace: namespace_8e4b89e2
	Checksum: 0x5BA87E66
	Offset: 0x9470
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e633ccb6()
{
	var_a39fe0e2 = GetEnt("vent_down_clip", "targetname");
	var_a39fe0e2 notsolid();
	level waittill("hash_dc460b51");
	var_935a64f = GetEnt("vent_clip", "targetname");
	var_935a64f delete();
	var_a39fe0e2 solid();
}

/*
	Name: function_c871015b
	Namespace: namespace_8e4b89e2
	Checksum: 0x1C32A04B
	Offset: 0x9528
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c871015b()
{
	self endon("death");
	self ai::set_ignoreall(1);
	wait(5);
	self ai::set_ignoreall(0);
}

/*
	Name: function_8667d536
	Namespace: namespace_8e4b89e2
	Checksum: 0xB88DF02C
	Offset: 0x9578
	Size: 0x5C3
	Parameters: 1
	Flags: None
*/
function function_8667d536(var_a178d2fe)
{
	var_4f05370f = GetEnt("breach_leader", "script_noteworthy");
	var_c28cf7b4 = struct::get_array("breach_origin");
	foreach(struct in var_c28cf7b4)
	{
		var_4f05370f MagicGrenadeType(GetWeapon("willy_pete_nd"), struct.origin, (0, 0, 1), 0.05);
	}
	level thread scene::Play("p7_fxanim_cp_lotus_security_station_door_bundle");
	level notify("hash_ec01b627");
	var_a178d2fe show();
	var_a178d2fe solid();
	var_2820f5e9 = GetEntArray("security_door_intact", "targetname");
	Array::run_all(var_2820f5e9, &delete);
	var_f63341eb = struct::get("breach_grenade_origin");
	a_s_targets = struct::get_array("breach_target");
	foreach(struct in a_s_targets)
	{
		v_velocity = VectorNormalize(struct.origin - var_f63341eb.origin) * 500;
		var_4f05370f MagicGrenadeType(GetWeapon("flash_grenade"), var_f63341eb.origin, v_velocity, 0.5);
	}
	foreach(struct in a_s_targets)
	{
		v_velocity = VectorNormalize(struct.origin - var_f63341eb.origin) * 500;
		var_4f05370f MagicGrenadeType(GetWeapon("willy_pete_nd"), var_f63341eb.origin, v_velocity, 0.5);
	}
	var_c42a71ee = struct::get("reverse_breach_epicenter", "targetname");
	foreach(e_player in level.players)
	{
		e_player PlayRumbleOnEntity("damage_heavy");
		Earthquake(0.2, 0.05, e_player.origin, 120);
		e_player shellshock("default", 0.6);
	}
	level thread namespace_20a6d5c1::function_80318e87(1);
	namespace_431cac9::function_e58f5689();
	level thread scene::Play("to_detention_center1_initial_bodies", "targetname");
	spawn_manager::enable("sm_security_station_breach");
	spawn_manager::enable("sm_security_station_breach_raps");
	level thread function_603b0189();
	spawn_manager::function_72e3dd35("sm_security_station_breach_raps");
	spawn_manager::function_72e3dd35("sm_security_station_breach");
	level flag::set("security_station_breach_ai_cleared");
}

/*
	Name: function_603b0189
	Namespace: namespace_8e4b89e2
	Checksum: 0xDF26B6B6
	Offset: 0x9B48
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_603b0189()
{
	level endon("hash_78d60236");
	trigger::wait_till("vtol_fly_by");
	level flag::set("security_station_breach_ai_cleared");
}

/*
	Name: function_e1e0f9da
	Namespace: namespace_8e4b89e2
	Checksum: 0x9006D0E6
	Offset: 0x9B98
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_e1e0f9da()
{
	a_doors = GetEntArray("locker_door_right", "script_noteworthy");
	foreach(e_door in a_doors)
	{
		e_door RotateYaw(120, 1);
	}
}

