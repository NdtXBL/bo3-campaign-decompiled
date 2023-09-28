#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\lotus_security_station;
#using scripts\cp\lotus_util;
#using scripts\shared\ai\phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_3b39ab74;

/*
	Name: init
	Namespace: namespace_3b39ab74
	Checksum: 0xB1F35AFD
	Offset: 0x1150
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function init()
{
	level flag::init("intro_igc_done");
	level flag::init("start_hakim_speech");
	level flag::init("hakim_seen");
	level flag::init("hakim_assassination_start");
	level flag::init("khalil_in_door_vignette");
	level flag::init("hakim_security_door_open");
	clientfield::register("world", "sndHakimPaVox", 1, 3, "int");
	namespace_431cac9::function_77bfc3b2();
}

/*
	Name: function_e86a5395
	Namespace: namespace_3b39ab74
	Checksum: 0x3A56C62F
	Offset: 0x1260
	Size: 0x2E3
	Parameters: 2
	Flags: None
*/
function function_e86a5395(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	level scene::add_scene_func("cin_lot_01_planb_3rd_sh160", &function_1320bd25, "done");
	level scene::init("cin_lot_01_planb_3rd_sh020");
	function_35dc675a();
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_9db406db = util::function_740f8516("khalil");
	battlechatter::function_d9f49fba(0);
	function_47dcfae8();
	level thread namespace_431cac9::function_484bc3aa(1);
	objectives::set("cp_level_lotus_hakim_assassinate");
	objectives::set("cp_level_lotus_hakim_locate");
	level clientfield::set("sndIGCsnapshot", 1);
	load::function_c32ba481();
	level util::do_chyron_text(&"CP_MI_CAIRO_LOTUS_INTRO_LINE_1_FULL", "", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_2_FULL", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_2_SHORT", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_3_FULL", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_3_SHORT", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_4_FULL", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_4_SHORT");
	level util::screen_fade_out(0, "black", "lotus_fade_in");
	level thread namespace_66fe78fb::function_2c69b4a0();
	level thread scene::Play("cin_lot_01_planb_3rd_sh020");
	level waittill("start_fade_in");
	level util::screen_fade_in(1, "black", "lotus_fade_in");
	level clientfield::set("gameplay_started", 1);
	if(isdefined(level.BZM_LOTUSDialogue1Callback))
	{
		level thread [[level.BZM_LOTUSDialogue1Callback]]();
	}
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_overwhelm_siege1st", &function_b73b584a, "init");
	level scene::init("cin_lot_02_01_startriots_vign_overwhelm_siege1st");
}

/*
	Name: function_1320bd25
	Namespace: namespace_3b39ab74
	Checksum: 0x316944DF
	Offset: 0x1550
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_1320bd25(a_ents)
{
	skipto::function_be8adfb8("plan_b");
	level thread util::clear_streamer_hint();
	level util::function_93831e79("start_the_riots");
	level clientfield::set("sndIGCsnapshot", 0);
	level flag::set("intro_igc_done");
}

/*
	Name: function_88b5ab32
	Namespace: namespace_3b39ab74
	Checksum: 0x9B3A3393
	Offset: 0x15F8
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_88b5ab32(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread util::delay(1, undefined, &namespace_431cac9::function_6fc3995f);
	GetEnt("kill_after_mobileride", "targetname") TriggerEnable(0);
	level thread scene::Play("p7_fxanim_cp_lotus_atrium_ravens_bundle");
}

/*
	Name: function_35dc675a
	Namespace: namespace_3b39ab74
	Checksum: 0x75A5354D
	Offset: 0x16A8
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_35dc675a()
{
	function_6bf216f3();
	level scene::init("cin_lot_02_01_startriots_vign_open_door");
	level scene::init("cin_lot_04_05_security_vign_melee_variation2");
	level scene::init("cin_lot_02_01_startriots_vign_scuffle_loop");
	level scene::init("cin_lot_02_01_startriots_vign_overwhelm_siege2nd");
	level scene::init("cin_lot_02_01_startriots_vign_overwhelm");
	level scene::init("cin_lot_02_01_startriots_vign_overwhelm_alt");
	level scene::init("cin_lot_02_01_startriots_vign_overwhelm_alt2");
	level scene::init("cin_lot_02_01_startriots_vign_takeout");
	level scene::init("cin_lot_02_01_startriots_vign_subdued");
	var_5cf8a2dd = GetEnt("start_dead_scene", "targetname");
	var_5cf8a2dd trigger::use(undefined, undefined, var_5cf8a2dd);
}

/*
	Name: function_5fb7ec5
	Namespace: namespace_3b39ab74
	Checksum: 0x7225AA05
	Offset: 0x1830
	Size: 0x503
	Parameters: 2
	Flags: None
*/
function function_5fb7ec5(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_9db406db = util::function_740f8516("khalil");
		function_47dcfae8();
		level scene::add_scene_func("cin_lot_02_01_startriots_vign_overwhelm_siege1st", &function_b73b584a, "init");
		level scene::init("cin_lot_02_01_startriots_vign_overwhelm_siege1st");
		function_35dc675a();
		skipto::teleport_ai(str_objective);
		objectives::set("cp_level_lotus_hakim_assassinate");
		objectives::set("cp_level_lotus_hakim_locate");
		level flag::wait_till("all_players_spawned");
		level thread namespace_66fe78fb::function_973b77f9();
		level flag::set("intro_igc_done");
		load::function_a2995f22();
	}
	level thread namespace_66fe78fb::function_973b77f9();
	level scene::init("hakim_assassination_ravens", "targetname");
	function_c5116fb2();
	level thread namespace_431cac9::function_a516f0de("raven_decal_start_riots01", 5, 2);
	level util::clientNotify("sndLRstart");
	level namespace_431cac9::function_484bc3aa(1);
	level thread function_54e4839a();
	level thread function_e2d5189a();
	trigger::wait_till("riots_wave_two");
	level thread function_cf0c15cc();
	level thread namespace_431cac9::function_a516f0de("raven_decal_start_riots02");
	level scene::init("cin_lot_02_02_startriots_vign_overridelock");
	e_trig = trigger::wait_till("riots_wave_three");
	e_who = e_trig.who;
	b_sprinting = 0;
	if(isdefined(e_who) && isPlayer(e_who) && e_who issprinting())
	{
		b_sprinting = 1;
	}
	level thread function_8ded8093(b_sprinting);
	spawner::waittill_ai_group_cleared("ai_group_riot_phalanx");
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	level notify("hash_c087d549", 1);
	trigger::use("color_phalanx_cleared");
	function_69903fa7(1);
	level thread function_786aab8d();
	if(level flag::get("khalil_in_door_vignette"))
	{
		level flag::wait_till_clear_any_timeout(5, Array("khalil_in_door_vignette"));
	}
	level thread scene::Play("cin_lot_02_02_startriots_vign_overridelock");
	level thread util::function_d8eaed3d(2);
	level flag::wait_till("hakim_assassination_start");
	level util::clientNotify("sndLRstop");
	skipto::function_be8adfb8("start_the_riots");
}

/*
	Name: function_8ded8093
	Namespace: namespace_3b39ab74
	Checksum: 0xF7B35AF2
	Offset: 0x1D40
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_8ded8093(var_ab4c4a9e)
{
	if(!isdefined(var_ab4c4a9e))
	{
		var_ab4c4a9e = 0;
	}
	v_start = struct::get("s_riots_phalanx_start").origin;
	v_end = struct::get("s_riots_phalanx_end").origin;
	var_f835ddae = GetEnt("sp_riots_phalanx", "targetname");
	if(var_ab4c4a9e)
	{
		var_f835ddae.ignorespawninglimit = 1;
	}
	function_9b385ca5();
	phalanx = phalanx;
	Initialize(phalanx, "phalanx_reverse_wedge", v_start, v_end, 2, 5, var_f835ddae);
	var_f835ddae delete();
}

/*
	Name: function_a3cc6d62
	Namespace: namespace_3b39ab74
	Checksum: 0x19186433
	Offset: 0x1E70
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_a3cc6d62(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level flag::wait_till("all_players_spawned");
	exploder::exploder("fx_interior_ambient_falling_debris_tower1");
}

/*
	Name: function_92206070
	Namespace: namespace_3b39ab74
	Checksum: 0xE0855AF6
	Offset: 0x1ED8
	Size: 0x3AB
	Parameters: 2
	Flags: None
*/
function function_92206070(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level flag::set("hakim_security_door_open");
		e_door = GetEnt("keypad_door01", "targetname");
		if(isdefined(e_door))
		{
			e_door MoveZ(100, 0.5);
		}
		level thread function_8a2e81c3();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_9db406db = util::function_740f8516("khalil");
		function_47dcfae8();
		function_69903fa7(1);
		function_c5116fb2();
		skipto::teleport_ai(str_objective);
		level scene::add_scene_func("cin_lot_03_01_hakim_1st_kill_player", &function_9030e073);
		level scene::init("cin_lot_03_01_hakim_1st_kill_player");
		load::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
		trigger::use("override_lock_done");
		level flag::wait_till("hakim_assassination_start");
	}
	while(!isdefined(level.var_81ba7f9e))
	{
		wait(0.05);
	}
	if(isdefined(level.BZM_LOTUSDialogue2Callback))
	{
		level thread [[level.BZM_LOTUSDialogue2Callback]]();
	}
	level thread namespace_431cac9::function_511cba45("atrium_to_security", 3, "cp_lotus_projection_ravengrafitti3");
	level scene::add_scene_func("cin_lot_03_01_hakim_1st_kill_player", &function_cb65e794, "play");
	level thread scene::Play("cin_lot_03_01_hakim_1st_kill_player", level.var_81ba7f9e);
	level.var_81ba7f9e = undefined;
	level waittill("hash_cdac0264");
	level scene::add_scene_func("cin_lot_03_01_hakim_vign_toss", &function_caba12d2);
	level thread scene::Play("cin_lot_03_01_hakim_vign_toss");
	if(!scene::is_skipping_in_progress())
	{
		wait(1);
	}
	if(!scene::is_skipping_in_progress())
	{
		level thread scene::Play("cin_lot_04_01_security_vign_finishoff");
	}
	if(!scene::is_skipping_in_progress())
	{
		level thread scene::Play("cin_lot_04_01_security_vign_finishoff_v02");
	}
	if(!scene::is_skipping_in_progress())
	{
		level thread function_92c0ed5c();
	}
}

/*
	Name: function_cb65e794
	Namespace: namespace_3b39ab74
	Checksum: 0xF8A62856
	Offset: 0x2290
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_cb65e794(a_ents)
{
	level thread function_11c401c8();
	level thread function_fd777f22();
	level thread function_9fe3e84();
	namespace_8e4b89e2::function_de57d320();
	level thread scene::init("cin_lot_03_01_hakim_vign_toss");
	level thread scene::init("cin_lot_04_01_security_vign_finishoff");
	level thread scene::init("cin_lot_04_01_security_vign_weaponcivs");
}

/*
	Name: function_fd777f22
	Namespace: namespace_3b39ab74
	Checksum: 0xA5126C4E
	Offset: 0x2360
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_fd777f22()
{
	level waittill("hash_1470068a");
	level thread scene::Play("assassination_bodies", "targetname");
	level scene::stop("cin_lot_02_02_startriots_vign_bangwindow");
	level scene::stop("cin_gen_crowd_riot_activity");
	trigger::use("post_hakim_armed_civs");
	level thread scene::Play("cin_lot_04_01_security_vign_weaponcivs");
	level thread scene::Play("cin_lot_04_01_security_vign_weaponguards");
}

/*
	Name: function_9fe3e84
	Namespace: namespace_3b39ab74
	Checksum: 0xDE82BC7D
	Offset: 0x2438
	Size: 0x199
	Parameters: 0
	Flags: None
*/
function function_9fe3e84()
{
	foreach(player in level.players)
	{
		player EnableInvulnerability();
	}
	level waittill("hash_fa29b03d");
	level thread namespace_66fe78fb::function_36e942f6();
	level notify("hash_fb8a92fd");
	level clientfield::set("swap_crowd_to_riot", 1);
	level util::function_93831e79("apartments");
	skipto::function_be8adfb8("general_hakim");
	wait(1);
	foreach(player in level.players)
	{
		player DisableInvulnerability();
	}
}

/*
	Name: function_9030e073
	Namespace: namespace_3b39ab74
	Checksum: 0xE620F53D
	Offset: 0x25E0
	Size: 0x169
	Parameters: 1
	Flags: None
*/
function function_9030e073(a_ents)
{
	a_ents["player 1"] waittill("hash_5790cd4a");
	if(!scene::is_skipping_in_progress())
	{
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("pickup_hakim_rumble_loop", 1);
		}
		a_ents["player 1"] waittill("hash_957e5940");
		foreach(player in level.activePlayers)
		{
			player clientfield::set_to_player("pickup_hakim_rumble_loop", 0);
		}
	}
}

/*
	Name: function_14166bcb
	Namespace: namespace_3b39ab74
	Checksum: 0x9C6B7A17
	Offset: 0x2758
	Size: 0xBB
	Parameters: 4
	Flags: None
*/
function function_14166bcb(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_lotus_hakim_assassinate");
	function_69903fa7(0);
	battlechatter::function_d9f49fba(1);
	level thread namespace_431cac9::function_fda257c3();
	level flag::wait_till("all_players_spawned");
	exploder::exploder("fx_interior_ambient_tracer_fire_atrium");
}

/*
	Name: function_6bf216f3
	Namespace: namespace_3b39ab74
	Checksum: 0xC0CEF60D
	Offset: 0x2820
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_6bf216f3()
{
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_open_door", &function_cd0fea70, "init");
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_open_door", &function_90a05c64);
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation2", &function_198186d, "init");
	level scene::add_scene_func("cin_lot_04_05_security_vign_melee_variation2", &namespace_431cac9::function_f2596cbe, "init");
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_scuffle_loop", &function_c1943fd, "init");
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_overwhelm_siege2nd", &function_adfe9569, "init");
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_overwhelm", &function_9f2861ce);
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_overwhelm", &function_2e3bc362);
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_overwhelm_siege2nd", &function_ace07855);
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_overwhelm_alt", &function_e85196be);
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_overwhelm_alt2", &function_a5b8cd1e);
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_overwhelm_alt2", &function_2e3bc362);
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_takeout", &function_50b42010);
	level scene::add_scene_func("cin_lot_02_01_startriots_vign_subdued", &function_c0caa0cf, "init");
}

/*
	Name: function_54e4839a
	Namespace: namespace_3b39ab74
	Checksum: 0x595904B6
	Offset: 0x2A90
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_54e4839a()
{
	trigger::wait_till("riots_wave_one");
	level thread scene::Play("cin_lot_02_01_startriots_vign_scuffle_loop");
	level thread scene::Play("cin_lot_02_01_startriots_vign_overwhelm");
	trigger::wait_till("riots_wave_two");
	if(level scene::is_active("cin_lot_02_01_startriots_vign_overwhelm_siege1st"))
	{
		level notify("hash_7c5c433c");
		level thread scene::Play("cin_lot_02_01_startriots_vign_overwhelm_siege1st");
	}
	level scene::remove_scene_func("cin_lot_04_05_security_vign_melee_variation2", &function_198186d);
	level scene::remove_scene_func("cin_lot_04_05_security_vign_melee_variation2", &namespace_431cac9::function_f2596cbe);
	level thread scene::Play("cin_lot_02_01_startriots_vign_overwhelm_siege2nd");
	trigger::wait_till("riots_wave_three");
	level thread scene::Play("cin_lot_02_01_startriots_vign_overwhelm_end");
	level thread scene::Play("cin_lot_02_01_startriots_vign_overwhelm_alt");
	level thread scene::Play("cin_lot_02_01_startriots_vign_overwhelm_alt2");
	level thread scene::Play("cin_lot_02_01_startriots_vign_takeout");
	trigger::wait_till("riots_wave_four");
	level thread scene::Play("cin_lot_02_01_startriots_vign_subdued");
}

/*
	Name: function_c1943fd
	Namespace: namespace_3b39ab74
	Checksum: 0xABE3A5A
	Offset: 0x2C98
	Size: 0x203
	Parameters: 1
	Flags: None
*/
function function_c1943fd(a_ents)
{
	ai_enemy = a_ents["scuffle_guard"];
	ai_civ = a_ents["scuffle_civ"];
	ai_enemy ai::set_ignoreall(1);
	ai_enemy ai::set_ignoreme(1);
	trigger::wait_till("riots_wave_one");
	while(isalive(ai_enemy))
	{
		if(Distance2D(level.var_9db406db.origin, ai_enemy.origin) < 400)
		{
			level.var_2fd26037 ai::set_ignoreall(1);
			ai_enemy ai::set_ignoreme(0);
			ai_enemy waittill("death");
			level.var_2fd26037 ai::set_ignoreall(0);
			break;
		}
		wait(0.25);
	}
	if(isalive(ai_civ))
	{
		level thread scene::Play("cin_lot_02_01_startriots_vign_scuffle_cuvrun");
		wait(1);
		if(isalive(ai_civ))
		{
			ai_civ SetGoal(GetNode("scuffle_retreat_goal", "targetname"), 1);
			ai_civ thread namespace_431cac9::function_c8849158(500, 15);
		}
	}
}

/*
	Name: function_50b42010
	Namespace: namespace_3b39ab74
	Checksum: 0x5E6881CA
	Offset: 0x2EA8
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function function_50b42010(a_ents)
{
	foreach(ent in a_ents)
	{
		ent ai::set_ignoreall(1);
		ent ai::set_ignoreme(1);
		ent thread namespace_431cac9::function_5b57004a();
	}
	level thread function_c06f06a5(a_ents, self);
	level waittill("hash_f68ac3a");
	if(isalive(a_ents["takeout_guard"]))
	{
		level scene::add_scene_func("cin_lot_02_01_startriots_vign_takeout_civkills", &function_da13419c);
		level scene::add_scene_func("cin_lot_02_01_startriots_vign_takeout_civkills", &function_693d9b17);
		level scene::add_scene_func("cin_lot_02_01_startriots_vign_takeout_civkills", &function_9ff47248);
		level thread scene::Play("cin_lot_02_01_startriots_vign_takeout_civkills");
	}
	else
	{
		level scene::add_scene_func("cin_lot_02_01_startriots_vign_takeout_playerkills", &function_da13419c);
		level thread scene::Play("cin_lot_02_01_startriots_vign_takeout_playerkills");
	}
}

/*
	Name: function_c06f06a5
	Namespace: namespace_3b39ab74
	Checksum: 0x114E2CF8
	Offset: 0x30A8
	Size: 0x129
	Parameters: 2
	Flags: None
*/
function function_c06f06a5(a_ents, s_scene)
{
	level endon("hash_f68ac3a");
	Array::wait_any(a_ents, "death");
	foreach(ent in a_ents)
	{
		if(isalive(ent) && ent.team == "axis")
		{
			ent ai::set_ignoreall(0);
			ent ai::set_ignoreme(0);
			self thread scene::stop();
		}
	}
}

/*
	Name: function_693d9b17
	Namespace: namespace_3b39ab74
	Checksum: 0xCF0515D4
	Offset: 0x31E0
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_693d9b17(a_ents)
{
	Array::wait_any(a_ents, "death");
	if(isalive(a_ents["takeout_guard"]))
	{
		if(a_ents["takeout_guard"].var_f8da79d2 === 1)
		{
			a_ents["takeout_guard"] notsolid();
			a_ents["takeout_guard"] StartRagdoll(1);
			a_ents["takeout_guard"] kill();
		}
		else
		{
			a_ents["takeout_guard"] ai::set_ignoreall(0);
			a_ents["takeout_guard"] ai::set_ignoreme(0);
		}
	}
	self thread scene::stop();
}

/*
	Name: function_9ff47248
	Namespace: namespace_3b39ab74
	Checksum: 0xC371726E
	Offset: 0x3328
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_9ff47248(a_ents)
{
	a_ents["takeout_guard"] waittill("hash_b5b1039c");
	a_ents["takeout_guard"].var_f8da79d2 = 1;
	a_ents["takeout_guard"] thread namespace_431cac9::function_3e9f1592();
}

/*
	Name: function_da13419c
	Namespace: namespace_3b39ab74
	Checksum: 0x88ED2ABB
	Offset: 0x3398
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_da13419c(a_ents)
{
	a_nd_goals = GetNodeArray("takeout_retreat_goals", "targetname");
	var_52177c84 = 0;
	wait(1);
	foreach(ent in a_ents)
	{
		if(isalive(ent) && ent.team == "allies")
		{
			ent thread namespace_431cac9::function_c8849158(500, 15);
			ent SetGoal(a_nd_goals[var_52177c84], 1);
			var_52177c84++;
		}
	}
}

/*
	Name: function_b73b584a
	Namespace: namespace_3b39ab74
	Checksum: 0xB231493A
	Offset: 0x34D8
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_b73b584a(a_ents)
{
	a_nd_goals = GetNodeArray("initial_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			level util::magic_bullet_shield(ent);
			if(ent.team == "allies")
			{
				ent thread namespace_431cac9::function_c8849158(500, 15);
				ent thread namespace_431cac9::function_5b57004a();
				ent SetGoal(a_nd_goals[var_52177c84], 1);
				var_52177c84++;
			}
		}
	}
	level thread function_f4561e7c(self, a_ents);
}

/*
	Name: function_f4561e7c
	Namespace: namespace_3b39ab74
	Checksum: 0xC9855FF1
	Offset: 0x3698
	Size: 0x1B1
	Parameters: 2
	Flags: None
*/
function function_f4561e7c(s_scene, a_ents)
{
	level endon("hash_7c5c433c");
	level flag::wait_till("intro_igc_done");
	Array::thread_all_ents(a_ents, &util::stop_magic_bullet_shield);
	Array::thread_all(a_ents, &function_51922beb);
	level waittill("hash_6fdc4680");
	level scene::stop(s_scene.scriptbundlename);
	level.var_a1e195e4 = 0;
	foreach(ent in a_ents)
	{
		if(isalive(ent) && ent.team == "axis")
		{
			ent ai::set_ignoreall(0);
			ent ai::set_ignoreme(0);
			level.var_a1e195e4++;
			level.var_3a013a47 = 0;
			ent thread function_b7323de8();
		}
	}
}

/*
	Name: function_b7323de8
	Namespace: namespace_3b39ab74
	Checksum: 0x3769C21E
	Offset: 0x3858
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_b7323de8()
{
	level.var_9db406db ai::set_ignoreall(0);
	level.var_2fd26037 ai::set_ignoreall(0);
	self waittill("death");
	level.var_3a013a47++;
	if(level.var_3a013a47 >= level.var_a1e195e4)
	{
		level.var_2fd26037 ai::set_ignoreall(1);
		level.var_9db406db ai::set_ignoreall(1);
		level.var_3a013a47 = undefined;
		level.var_a1e195e4 = undefined;
	}
}

/*
	Name: function_51922beb
	Namespace: namespace_3b39ab74
	Checksum: 0x6B97EF43
	Offset: 0x3910
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_51922beb()
{
	if(isdefined(self))
	{
		self util::waittill_any("death", "damage", "bulletwhizby");
		level notify("hash_6fdc4680");
	}
}

/*
	Name: function_adfe9569
	Namespace: namespace_3b39ab74
	Checksum: 0x2D7B348F
	Offset: 0x3968
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_adfe9569(a_ents)
{
	trigger::wait_till("riots_wave_one");
	a_nd_goals = GetNodeArray("second_siege_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			ent util::magic_bullet_shield();
			if(ent.team == "allies")
			{
				ent SetGoal(a_nd_goals[var_52177c84], 1);
				var_52177c84++;
				continue;
			}
			ent thread namespace_431cac9::function_5b57004a();
		}
	}
	level thread function_17d17b52(a_ents, self);
}

/*
	Name: function_ace07855
	Namespace: namespace_3b39ab74
	Checksum: 0xB88A0AAB
	Offset: 0x3B20
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_ace07855(a_ents)
{
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent util::stop_magic_bullet_shield();
			if(ent.team == "allies")
			{
				ent thread namespace_431cac9::function_c8849158(500, 5);
			}
		}
	}
}

/*
	Name: function_17d17b52
	Namespace: namespace_3b39ab74
	Checksum: 0x3AD0EA6C
	Offset: 0x3C10
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_17d17b52(a_ents, str_scene)
{
	level endon("hash_2ff600cd");
	var_85e30c70 = Array(a_ents["second_riots_civ_1"], a_ents["second_riots_civ_2"], a_ents["second_riots_guard_1"]);
	Array::wait_any(var_85e30c70, "death");
	if(isalive(a_ents["second_riots_guard_1"]))
	{
		a_ents["second_riots_guard_1"] notsolid();
		a_ents["second_riots_guard_1"] StartRagdoll(1);
		a_ents["second_riots_guard_1"] kill();
	}
	level scene::stop(str_scene.scriptbundlename);
}

/*
	Name: function_cd0fea70
	Namespace: namespace_3b39ab74
	Checksum: 0x56B4697B
	Offset: 0x3D40
	Size: 0x693
	Parameters: 1
	Flags: None
*/
function function_cd0fea70(a_ents)
{
	a_ents["open_door_guard"] ai::set_ignoreall(1);
	a_ents["open_door_guard"] ai::set_ignoreme(1);
	foreach(ent in a_ents)
	{
		if(isai(ent) && isalive(ent))
		{
			util::magic_bullet_shield(ent);
		}
	}
	trigger::wait_till("start_the_riots_breadcrumb");
	level flag::set("khalil_in_door_vignette");
	level.var_9db406db colors::disable();
	level.var_9db406db ai::set_ignoreme(1);
	level.var_9db406db ai::set_ignoreall(1);
	level.var_9db406db ai::set_behavior_attribute("sprint", 1);
	level.var_9db406db ai::set_behavior_attribute("cqb", 0);
	if(isalive(a_ents["open_door_guard"]))
	{
		a_ents["open_door_guard"] thread namespace_431cac9::function_5b57004a();
		a_ents["open_door_guard"] thread function_ef4d5e6c();
		util::stop_magic_bullet_shield(a_ents["open_door_guard"]);
	}
	level thread scene::init("cin_lot_02_01_startriots_vign_open_door_khalil");
	level.var_9db406db.goalRadius = 32;
	level.var_9db406db util::waittill_any_timeout(10, "goal", "door_guard_killed");
	if(!isalive(a_ents["open_door_guard"]))
	{
		foreach(ent in a_ents)
		{
			if(isai(ent))
			{
				util::stop_magic_bullet_shield(ent);
			}
		}
		self thread scene::Play();
	}
	else
	{
		level thread scene::Play("cin_lot_02_01_startriots_vign_open_door_khalil");
		if(!level.var_9db406db flagsys::get("scriptedanim"))
		{
			level.var_9db406db flagsys::wait_till_any_timeout(3, Array("scriptedanim"));
		}
		foreach(ent in a_ents)
		{
			if(isai(ent))
			{
				util::stop_magic_bullet_shield(ent);
			}
		}
		if(!isalive(a_ents["open_door_guard"]))
		{
			level scene::stop("cin_lot_02_01_startriots_vign_open_door_khalil");
			self thread scene::Play();
		}
		else
		{
			self thread scene::Play();
			level.var_9db406db util::waittill_notify_or_timeout("khalil_melee_started", 5);
			if(isalive(a_ents["open_door_guard"]))
			{
				a_ents["open_door_guard"] thread namespace_431cac9::function_3e9f1592();
			}
			else
			{
				level scene::stop("cin_lot_02_01_startriots_vign_open_door_khalil");
			}
		}
	}
	level.var_9db406db ai::set_behavior_attribute("sprint", 0);
	nd_end = GetNode("post_door_open_khalil", "targetname");
	level.var_9db406db SetGoal(nd_end, 1);
	level.var_9db406db waittill("goal");
	wait(0.5);
	level.var_9db406db ai::set_ignoreme(0);
	level.var_9db406db ai::set_ignoreall(0);
	level.var_9db406db colors::enable();
	level flag::clear("khalil_in_door_vignette");
}

/*
	Name: function_ef4d5e6c
	Namespace: namespace_3b39ab74
	Checksum: 0x40E6A23B
	Offset: 0x43E0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ef4d5e6c()
{
	self waittill("death");
	level.var_9db406db notify("hash_fd767fe1");
}

/*
	Name: function_90a05c64
	Namespace: namespace_3b39ab74
	Checksum: 0x2F753963
	Offset: 0x4410
	Size: 0x167
	Parameters: 1
	Flags: None
*/
function function_90a05c64(a_ents)
{
	a_nd_goals = GetNodeArray("open_door_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			if(ent.team == "allies")
			{
				ent thread namespace_431cac9::function_c8849158(500, 15);
				ent SetGoal(a_nd_goals[var_52177c84], 1);
				var_52177c84++;
			}
		}
	}
}

/*
	Name: function_198186d
	Namespace: namespace_3b39ab74
	Checksum: 0x4BF3EB72
	Offset: 0x4580
	Size: 0x1C3
	Parameters: 1
	Flags: None
*/
function function_198186d(a_ents)
{
	level endon("hash_2ff600cd");
	a_nd_goals = GetNodeArray("hallway_1_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			ent thread namespace_431cac9::function_5b57004a();
			if(ent.team == "allies")
			{
				ent thread namespace_431cac9::function_c8849158(500, 15);
				ent SetGoal(a_nd_goals[var_52177c84], 1);
				var_52177c84++;
			}
		}
	}
	a_ents["vign_melee_nrc_1"] waittill("hash_b5b1039c");
	a_ents["vign_melee_nrc_1"] thread namespace_431cac9::function_3e9f1592();
}

/*
	Name: function_2e3bc362
	Namespace: namespace_3b39ab74
	Checksum: 0xA8396988
	Offset: 0x4750
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_2e3bc362(a_ents)
{
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			ent thread namespace_431cac9::function_c8849158(500, 15);
			ent thread namespace_431cac9::function_5b57004a();
		}
	}
}

/*
	Name: function_9f2861ce
	Namespace: namespace_3b39ab74
	Checksum: 0xA0D4BE45
	Offset: 0x4860
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_9f2861ce(a_ents)
{
	level endon("hash_2ff600cd");
	Array::wait_any(a_ents, "death");
	trigger::use("riots_wave_three", "targetname");
}

/*
	Name: function_e85196be
	Namespace: namespace_3b39ab74
	Checksum: 0xE1FF7916
	Offset: 0x48C0
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_e85196be(a_ents)
{
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			ent thread namespace_431cac9::function_c8849158(500, 15);
			ent thread namespace_431cac9::function_5b57004a();
		}
	}
	if(isalive(a_ents["overwhelm_alt_guard"]))
	{
		a_ents["overwhelm_alt_guard"] thread namespace_431cac9::function_3e9f1592();
	}
	level thread function_2e629842(a_ents, a_ents["overwhelm_alt_shield"], self);
	level thread function_306be92b(a_ents, self);
}

/*
	Name: function_2e629842
	Namespace: namespace_3b39ab74
	Checksum: 0x8008104C
	Offset: 0x4A50
	Size: 0xCB
	Parameters: 3
	Flags: None
*/
function function_2e629842(a_ents, var_2d756179, s_scene)
{
	ArrayRemoveValue(a_ents, a_ents["overwhelm_alt_guard"]);
	Array::wait_any(a_ents, "death");
	level thread scene::stop(s_scene.scriptbundlename);
	var_2d756179 StopAnimScripted(0);
	var_2d756179 PhysicsLaunch(var_2d756179.origin, VectorScale((0, 0, -1), 0.1));
}

/*
	Name: function_306be92b
	Namespace: namespace_3b39ab74
	Checksum: 0x648087C2
	Offset: 0x4B28
	Size: 0x18F
	Parameters: 2
	Flags: None
*/
function function_306be92b(a_ents, s_scene)
{
	a_nd_goals = GetNodeArray("overwhelm_alt_retreat_goals", "targetname");
	var_52177c84 = 0;
	do
	{
		wait(0.2);
	}
	while(!level scene::is_active(s_scene.scriptbundlename));
	wait(0.05);
	foreach(ent in a_ents)
	{
		if(isalive(ent) && ent.team === "allies")
		{
			ent ai::set_ignoreme(0);
			ent thread namespace_431cac9::function_c8849158(500, 15);
			ent SetGoal(a_nd_goals[var_52177c84], 1);
			var_52177c84++;
		}
	}
}

/*
	Name: function_a5b8cd1e
	Namespace: namespace_3b39ab74
	Checksum: 0xBBA87575
	Offset: 0x4CC0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_a5b8cd1e(a_ents)
{
	level thread function_d6a7c0f4(a_ents, self);
	if(isalive(a_ents["overwhelm_alt2_guard"]))
	{
		a_ents["overwhelm_alt2_guard"] thread namespace_431cac9::function_3e9f1592();
	}
}

/*
	Name: function_d6a7c0f4
	Namespace: namespace_3b39ab74
	Checksum: 0xECE31871
	Offset: 0x4D30
	Size: 0x19F
	Parameters: 2
	Flags: None
*/
function function_d6a7c0f4(a_ents, s_scene)
{
	Array::wait_any(a_ents, "death");
	level scene::stop(s_scene.scriptbundlename);
	a_nd_goals = GetNodeArray("overwhelm_alt2_retreat_goals", "targetname");
	var_52177c84 = 0;
	wait(0.05);
	foreach(ent in a_ents)
	{
		if(isalive(ent) && ent.team === "allies")
		{
			ent ai::set_ignoreme(0);
			ent thread namespace_431cac9::function_c8849158(500, 15);
			ent SetGoal(a_nd_goals[var_52177c84], 1);
			var_52177c84++;
		}
	}
}

/*
	Name: function_c0caa0cf
	Namespace: namespace_3b39ab74
	Checksum: 0x9E15C789
	Offset: 0x4ED8
	Size: 0x28B
	Parameters: 1
	Flags: None
*/
function function_c0caa0cf(a_ents)
{
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			ent thread namespace_431cac9::function_c8849158(500, 15);
		}
	}
	trigger::wait_till("riots_wave_four");
	a_ents["subdued_guard"] util::waittill_any_timeout(6, "damage");
	wait(0.05);
	foreach(ent in a_ents)
	{
		if(isalive(ent))
		{
			if(ent.team == "axis")
			{
				ent SetGoal(ent.origin);
				ent StopAnimScripted();
				ent ai::set_ignoreme(0);
				ent ai::set_ignoreall(0);
			}
		}
	}
	scene::add_scene_func("cin_lot_02_01_startriots_vign_subdued_kill", &function_80bcd913);
	level thread scene::Play("cin_lot_02_01_startriots_vign_subdued_kill");
}

/*
	Name: function_80bcd913
	Namespace: namespace_3b39ab74
	Checksum: 0x450EB248
	Offset: 0x5170
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_80bcd913(a_ents)
{
	a_nd_goals = GetNodeArray("subdued_retreat_goals", "targetname");
	var_52177c84 = 0;
	wait(1.5);
	foreach(ent in a_ents)
	{
		if(isalive(ent))
		{
			ent ai::set_ignoreme(0);
			ent thread namespace_431cac9::function_c8849158(500, 15);
			ent SetGoal(a_nd_goals[var_52177c84], 1);
			var_52177c84++;
		}
	}
}

/*
	Name: function_caba12d2
	Namespace: namespace_3b39ab74
	Checksum: 0xF4441140
	Offset: 0x52B0
	Size: 0x203
	Parameters: 1
	Flags: None
*/
function function_caba12d2(a_ents)
{
	level endon("hash_402e6fa1");
	a_nd_goals = GetNodeArray("toss_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(ent in a_ents)
	{
		if(isai(ent))
		{
			ent ai::set_ignoreall(1);
			ent ai::set_ignoreme(1);
			ent thread namespace_431cac9::function_5b57004a();
			if(ent.team == "allies")
			{
				ent thread namespace_431cac9::function_c8849158(500, 15);
				ent SetGoal(a_nd_goals[var_52177c84], 1);
				var_52177c84++;
			}
		}
	}
	level thread function_461f82a0(a_ents, self);
	if(isdefined(a_ents["assassination_nrc"]))
	{
		a_ents["assassination_nrc"] waittill("hash_b5b1039c");
		if(isdefined(a_ents["assassination_nrc"]))
		{
			a_ents["assassination_nrc"] thread namespace_431cac9::function_3e9f1592();
		}
	}
}

/*
	Name: function_461f82a0
	Namespace: namespace_3b39ab74
	Checksum: 0x1618D558
	Offset: 0x54C0
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_461f82a0(a_ents, s_scene)
{
	level endon("hash_402e6fa1");
	Array::wait_any(a_ents, "death");
	if(isalive(a_ents["assassination_nrc"]))
	{
		a_ents["assassination_nrc"] ai::set_ignoreme(0);
		a_ents["assassination_nrc"] ai::set_ignoreall(0);
	}
	s_scene scene::stop();
}

/*
	Name: function_cf0c15cc
	Namespace: namespace_3b39ab74
	Checksum: 0xE673F227
	Offset: 0x5588
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_cf0c15cc()
{
	objectives::breadcrumb("start_the_riots_breadcrumb");
	level thread function_8a2e81c3();
}

/*
	Name: function_e2d5189a
	Namespace: namespace_3b39ab74
	Checksum: 0x743DC46C
	Offset: 0x55C8
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_e2d5189a()
{
	level dialog::remote("kane_okay_nearest_secur_0", 1);
	level.var_9db406db dialog::say("khal_be_on_your_guard_th_0", 0.5);
	level flag::wait_till("hakim_seen");
	level.var_9db406db dialog::say("khal_there_he_is_general_0");
	level.var_9db406db dialog::say("khal_cairo_waits_to_attac_0", 3);
}

/*
	Name: function_f7410faa
	Namespace: namespace_3b39ab74
	Checksum: 0xE02F97F1
	Offset: 0x5688
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_f7410faa()
{
	level.var_6bd6767c endon("hash_87b505ea");
	if(level.skipto_point === "start_the_riots")
	{
		level flag::wait_till("start_hakim_speech");
		function_4410b0a7("haki_citizens_of_cairo_w_0", 1);
		wait(0.5);
		function_4410b0a7("haki_the_nile_river_coali_0", 2);
		wait(1);
	}
	function_4410b0a7("haki_ramses_was_meant_to_0", 3);
	wait(0.7);
	function_4410b0a7("haki_anyone_seen_assistin_0", 4);
}

/*
	Name: function_11c401c8
	Namespace: namespace_3b39ab74
	Checksum: 0x65724C01
	Offset: 0x5768
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_11c401c8()
{
	level waittill("hash_87b505ea");
	if(isdefined(level.var_6bd6767c))
	{
		level.var_6bd6767c playsound("evt_mic_feedback");
		level clientfield::set("sndHakimPaVox", 5);
		level.var_6bd6767c stopsounds();
		level.var_6bd6767c notify("hash_87b505ea");
		level.var_6bd6767c notify("kill_pending_dialog");
		level.var_6bd6767c notify("cancel speaking");
	}
}

/*
	Name: function_c5116fb2
	Namespace: namespace_3b39ab74
	Checksum: 0xA7E91338
	Offset: 0x5820
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_c5116fb2()
{
	scene::add_scene_func("cin_lot_02_02_startriots_vign_speech", &function_8a3bdac, "init");
	level scene::init("hakim_speech", "targetname");
}

/*
	Name: function_8a3bdac
	Namespace: namespace_3b39ab74
	Checksum: 0x53C765C5
	Offset: 0x5888
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_8a3bdac(a_ents)
{
	if(!isdefined(level.var_6bd6767c))
	{
		level.var_6bd6767c = a_ents["general_hakim"];
	}
	level thread function_f7410faa();
}

/*
	Name: function_4410b0a7
	Namespace: namespace_3b39ab74
	Checksum: 0x597CD8BD
	Offset: 0x58D8
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_4410b0a7(var_29a3f99f, sndnum)
{
	level clientfield::set("sndHakimPaVox", sndnum);
	level.var_6bd6767c dialog::say(var_29a3f99f);
}

/*
	Name: function_69903fa7
	Namespace: namespace_3b39ab74
	Checksum: 0x3BC838CC
	Offset: 0x5938
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_69903fa7(b_ignore)
{
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 ai::set_ignoreall(b_ignore);
	}
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db ai::set_ignoreall(b_ignore);
	}
}

/*
	Name: function_47dcfae8
	Namespace: namespace_3b39ab74
	Checksum: 0x11B05F3F
	Offset: 0x59A0
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_47dcfae8()
{
	battlechatter::function_d9f49fba(0);
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
		level.var_2fd26037 ai::set_behavior_attribute("disablesprint", 1);
		level.var_2fd26037 ai::set_behavior_attribute("useGrenades", 0);
	}
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db ai::set_behavior_attribute("cqb", 1);
		level.var_9db406db ai::set_behavior_attribute("disablesprint", 1);
		level.var_9db406db ai::set_behavior_attribute("useGrenades", 0);
	}
}

/*
	Name: function_786aab8d
	Namespace: namespace_3b39ab74
	Checksum: 0x79CDABE1
	Offset: 0x5AB8
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_786aab8d()
{
	level waittill("open_door");
	level thread scene::Play("hakim_door_raven_fly_away", "targetname");
	e_door = GetEnt("keypad_door01", "targetname");
	e_door MoveZ(100, 0.5);
	e_door playsound("evt_security_door_open");
	e_door waittill("movedone");
	level flag::set("hakim_security_door_open");
	var_3f3fb113 = GetEnt("override_lock_done", "targetname");
	if(isdefined(level.BZM_LOTUSDialogue12Callback))
	{
		level thread [[level.BZM_LOTUSDialogue12Callback]]();
	}
	level thread namespace_431cac9::function_e577c596("hakim_assassination_ravens", var_3f3fb113, "hakim_door", "cp_lotus_projection_ravengrafitti2");
}

/*
	Name: function_2f52df3
	Namespace: namespace_3b39ab74
	Checksum: 0xF7335152
	Offset: 0x5C08
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2f52df3()
{
	self endon("death");
	self.scenegoal = self.target;
	self waittill("goal");
	self kill();
}

/*
	Name: function_92c0ed5c
	Namespace: namespace_3b39ab74
	Checksum: 0xAC2BB44A
	Offset: 0x5C58
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_92c0ed5c()
{
	exploder::exploder("fx_interior_ambient_tracer_fire_atrium");
	level notify("hash_72d53556");
}

/*
	Name: function_8a2e81c3
	Namespace: namespace_3b39ab74
	Checksum: 0x49D38875
	Offset: 0x5C90
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_8a2e81c3()
{
	objectives::complete("cp_level_lotus_hakim_locate");
	t_door = GetEnt("start_the_riots_done", "targetname");
	level flag::wait_till("hakim_security_door_open");
	e_gameobject = util::function_14518e76(t_door, &"cp_level_lotus_hakim_door", &"CP_MI_CAIRO_LOTUS_OPEN", &breach_door_opened);
}

/*
	Name: breach_door_opened
	Namespace: namespace_3b39ab74
	Checksum: 0x28D9FF76
	Offset: 0x5D38
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function breach_door_opened(e_player)
{
	self gameobjects::disable_object();
	level.var_81ba7f9e = e_player;
	var_935a64f = GetEnt("mdl_general_door", "targetname");
	var_935a64f delete();
	objectives::complete("cp_level_lotus_hakim_door");
	self gameobjects::destroy_object(1);
}

