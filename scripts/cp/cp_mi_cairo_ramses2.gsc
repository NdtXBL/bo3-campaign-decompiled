#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_accolades;
#using scripts\cp\cp_mi_cairo_ramses_alley;
#using scripts\cp\cp_mi_cairo_ramses_arena_defend;
#using scripts\cp\cp_mi_cairo_ramses_quad_tank_plaza;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses_vtol_igc;
#using scripts\cp\cp_mi_cairo_ramses2_fx;
#using scripts\cp\cp_mi_cairo_ramses2_patch;
#using scripts\cp\cp_mi_cairo_ramses2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_22a8c92;

/*
	Name: setup_rex_starts
	Namespace: namespace_22a8c92
	Checksum: 0x19AF30D3
	Offset: 0xD20
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function setup_rex_starts()
{
	util::add_gametype("coop");
	util::add_gametype("cpzm");
}

/*
	Name: main
	Namespace: namespace_22a8c92
	Checksum: 0x964320A4
	Offset: 0xD60
	Size: 0x34B
	Parameters: 0
	Flags: None
*/
function main()
{
	if(SessionModeIsCampaignZombiesGame() && 0)
	{
		SetClearanceCeiling(34);
	}
	else
	{
		SetClearanceCeiling(116);
	}
	SetAILimit(40);
	savegame::function_8c0c4b3a("ramses");
	namespace_38256252::accolades_init();
	namespace_38256252::function_43898266();
	namespace_38256252::function_e1862c87();
	namespace_38256252::function_6f52c808();
	namespace_38256252::function_7f657f7a();
	namespace_38256252::function_fec73937();
	namespace_38256252::function_a17fa88e();
	namespace_38256252::function_8e872dc8();
	namespace_38256252::function_3484502e();
	util::function_286a5010(5);
	init_clientfields();
	init_flags();
	setup_skiptos();
	objectives::complete("cp_level_ramses_determine_what_salim_knows");
	objectives::complete("cp_level_ramses_interrogate_salim");
	objectives::complete("cp_level_ramses_protect_salim");
	objectives::complete("cp_level_ramses_eastern_checkpoint");
	objectives::set("cp_level_ramses_demolish_arena_defend");
	GetEnt("lgt_shadow_block_trans", "targetname") Hide();
	namespace_391e4301::function_1903e7dc();
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	callback::on_loadout(&function_974050f);
	callback::on_laststand(&on_player_last_stand);
	namespace_9c179137::main();
	namespace_b16ee55e::main();
	load::main();
	namespace_397becbd::function_7403e82b();
	SetDvar("compassmaxrange", "12000");
	SetDvar("scr_security_breach_lose_contact_distance", 36000);
	SetDvar("scr_security_breach_lost_contact_distance", 72000);
	/#
		execdevgui("Dev Block strings are not supported");
	#/
}

/*
	Name: init_clientfields
	Namespace: namespace_22a8c92
	Checksum: 0x4844D70C
	Offset: 0x10B8
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("toplayer", "player_spike_plant_postfx", 1, 1, "counter");
	clientfield::register("world", "arena_defend_fxanim_hunters", 1, 1, "int");
	clientfield::register("world", "arena_defend_mobile_wall_damage", 1, 1, "int");
	clientfield::register("world", "alley_fxanim_hunters", 1, 1, "int");
	clientfield::register("world", "alley_fog_banks", 1, 1, "int");
	clientfield::register("world", "alley_fxanim_curtains", 1, 1, "int");
	clientfield::register("world", "vtol_igc_fxanim_hunter", 1, 1, "int");
	clientfield::register("world", "qt_plaza_fxanim_hunters", 1, 1, "int");
	clientfield::register("world", "theater_fxanim_swap", 1, 1, "int");
	clientfield::register("world", "qt_plaza_outro_exposure", 1, 1, "int");
	clientfield::register("world", "hide_statue_rubble", 1, 1, "int");
}

/*
	Name: init_flags
	Namespace: namespace_22a8c92
	Checksum: 0xE1BC3712
	Offset: 0x12D8
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("vtol_igc_trigger_used");
	level flag::init("intro_igc_done");
	level flag::init("dead_turret_stop_station_ambients");
	level flag::init("station_walk_cleanup");
	level flag::init("weak_points_objective_active");
	level flag::init("sinkhole_charges_detonated");
	level flag::init("arena_defend_sinkhole_outro");
	level flag::init("player_has_dead_control");
	level flag::init("start_vtol_robot_drop_1");
	level flag::init("start_vtol_robot_drop_2");
	level flag::init("vtol_igc_done");
	level flag::init("freeway_battle_cleared");
	level flag::init("flak_vtol_ride_stop");
	level flag::init("flak_arena_defend_stop");
	level flag::init("flak_alley_stop");
}

/*
	Name: setup_skiptos
	Namespace: namespace_22a8c92
	Checksum: 0x187B7CDC
	Offset: 0x14C8
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::function_d68e678e("arena_defend_intro", &namespace_4124d::intro, "Arena Defend", &namespace_4124d::intro_done);
	skipto::add("arena_defend", &namespace_4124d::main, "Arena Defend", &namespace_4124d::done);
	skipto::function_d68e678e("sinkhole_collapse", &namespace_4124d::function_4451e1bd, "Sinkhole Collapse", &namespace_4124d::function_82a50f67);
	skipto::function_654c9dda("dev_weak_point_test", &namespace_4124d::function_dfb8409d, "Weak Point Test", &namespace_4124d::function_dfb8409d, "", "");
	skipto::function_654c9dda("dev_sinkhole_test", &namespace_4124d::function_f15cce15, "Sinkhole Test", &namespace_4124d::function_893047b8, "", "alley");
	skipto::function_d68e678e("alley", &function_8392bfa, "Alley", &function_76333904);
	skipto::function_d68e678e("vtol_igc", &function_5478458c, "VTOL IGC", &function_f3104d92);
	skipto::function_d68e678e("quad_tank_plaza", &function_277a2ec5, "Quad Tank Plaza", &function_fe70e19f);
	skipto::function_654c9dda("dev_statue_fall", &function_f723d487, "Statue Fall Test", &function_b966133d);
	skipto::function_654c9dda("dev_hacked_quadtank", &function_5d8a2262, "Test Hacked Quadtank", &function_c7cac5c);
	skipto::function_654c9dda("dev_qt_plaza_outro", &function_969d795a, "QT PLAZA OUTRO", &function_bf0bc064);
}

/*
	Name: on_player_connect
	Namespace: namespace_22a8c92
	Checksum: 0xFBC7C4A4
	Offset: 0x17B8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self flag::init("linked_to_truck");
	self flag::init("spike_launcher_tutorial_complete");
}

/*
	Name: on_player_spawned
	Namespace: namespace_22a8c92
	Checksum: 0x6608CE93
	Offset: 0x1808
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self namespace_391e4301::function_ff06e7ac();
}

/*
	Name: function_974050f
	Namespace: namespace_22a8c92
	Checksum: 0xDF79D088
	Offset: 0x1830
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_974050f()
{
	if(level.skipto_point === "arena_defend_intro" || level.skipto_point === "arena_defend" || level.skipto_point == "sinkhole_collapse" || level.skipto_point === "dev_weak_point_test" || level.skipto_point === "dev_sinkhole_test")
	{
		self namespace_391e4301::function_ad67ec60(1);
	}
}

/*
	Name: on_player_last_stand
	Namespace: namespace_22a8c92
	Checksum: 0x81F04159
	Offset: 0x18C0
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function on_player_last_stand()
{
	self notify("hash_f4dfb01b");
	self notify("hash_a426d615");
}

/*
	Name: function_8392bfa
	Namespace: namespace_22a8c92
	Checksum: 0xF7FA489
	Offset: 0x18E8
	Size: 0x18B
	Parameters: 2
	Flags: None
*/
function function_8392bfa(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		function_9e3608e3("alley_doors_open");
		namespace_391e4301::function_22e1a261();
		namespace_391e4301::function_f2f98cfc();
		namespace_391e4301::function_1aeb2873();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(str_objective);
		load::function_a2995f22();
		level thread util::function_d8eaed3d(5);
	}
	objectives::set("cp_level_ramses_go_to_safiya");
	if(isdefined(level.var_1b3f87f7))
	{
		level.var_1b3f87f7 delete();
	}
	namespace_391e4301::function_7255e66(1, "alley_mobile_armory");
	level.var_2fd26037 colors::enable();
	level.var_2fd26037 colors::set_force_color("o");
	namespace_d7ca6f18::function_fc9630cb();
	alley::function_3a097ca4();
}

/*
	Name: function_76333904
	Namespace: namespace_22a8c92
	Checksum: 0xCAE3ADF9
	Offset: 0x1A80
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_76333904(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		namespace_4124d::function_d92a2132();
		level namespace_391e4301::function_22e1a261();
	}
	namespace_391e4301::function_7255e66(0, "alley_mobile_armory");
	SetAILimit(35);
	function_9e3608e3("qtp_vtol_nose");
}

/*
	Name: function_5478458c
	Namespace: namespace_22a8c92
	Checksum: 0xC65592ED
	Offset: 0x1B30
	Size: 0x1D3
	Parameters: 2
	Flags: None
*/
function function_5478458c(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_2fd26037 colors::set_force_color("o");
		skipto::teleport_ai(str_objective);
		namespace_391e4301::function_f2f98cfc();
		level scene::init("cin_ram_06_05_safiya_1st_friendlydown_init");
		level thread namespace_a6a248fc::function_6b994041();
		load::function_a2995f22();
	}
	if(isdefined(level.var_b0c4695a))
	{
		level.var_b0c4695a delete();
	}
	callback::remove_on_loadout(&function_974050f);
	level.players namespace_391e4301::function_25439df2();
	function_340269e0();
	function_54b31e43();
	level flag::set("flak_alley_stop");
	level thread alley::function_9f94867c();
	level thread namespace_94c82dbc::function_4492caaa();
	namespace_d7ca6f18::function_fc9630cb();
	namespace_d7ca6f18::function_f72dae68(var_74cd64bc);
}

/*
	Name: function_f3104d92
	Namespace: namespace_22a8c92
	Checksum: 0x4554FA82
	Offset: 0x1D10
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_f3104d92(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		objectives::complete("cp_level_ramses_go_to_safiya");
	}
	objectives::complete("cp_level_ramses_vtol_use");
	exploder::kill_exploder("transition");
	namespace_391e4301::function_fb967724();
}

/*
	Name: function_277a2ec5
	Namespace: namespace_22a8c92
	Checksum: 0xC7DD5B24
	Offset: 0x1DA0
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_277a2ec5(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		scene::add_scene_func("cin_ram_06_05_safiya_1st_friendlydown", &function_7cfa94ff, "init");
		scene::init("cin_ram_06_05_safiya_1st_friendlydown");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(str_objective);
		battlechatter::function_d9f49fba(0);
		callback::remove_on_loadout(&function_974050f);
		level thread function_7aef65a5();
		load::function_a2995f22();
		level thread namespace_94c82dbc::function_4492caaa();
		namespace_94c82dbc::function_ffea6b5();
		util::clientNotify("pst");
		function_340269e0();
		function_54b31e43();
	}
	else
	{
		battlechatter::function_d9f49fba(1);
	}
	namespace_d7ca6f18::function_fc9630cb();
	namespace_94c82dbc::function_b39397dc();
}

/*
	Name: function_7aef65a5
	Namespace: namespace_22a8c92
	Checksum: 0xDA592E04
	Offset: 0x1F50
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_7aef65a5()
{
	level thread namespace_94c82dbc::function_5a4025b4();
	level thread namespace_d7ca6f18::function_35210922();
	scene::add_scene_func("cin_ram_06_05_safiya_1st_friendlydown", &namespace_d7ca6f18::function_e78f7ba0, "play");
	scene::add_scene_func("cin_ram_06_05_safiya_1st_friendlydown", &namespace_d7ca6f18::function_9585cf3, "done");
	level thread namespace_d7ca6f18::function_f3a727ef(1);
	s_scene = struct::get("truck_flip_vtol", "targetname");
	s_scene thread scene::skipto_end();
	level waittill("hash_c79c2551");
	level thread namespace_d7ca6f18::function_6ee65e7a();
	level util::screen_fade_out(0, "black", "skipto_fade");
	util::delay(1.5, undefined, &util::screen_fade_in, 1, "black", "skipto_fade");
	level scene::skipto_end("cin_ram_06_05_safiya_1st_friendlydown", undefined, undefined, 0.88, 1);
	battlechatter::function_d9f49fba(1);
	level flag::set("vtol_igc_done");
	exploder::exploder_stop("fx_expl_qtplaza_hotel");
	Array::run_all(GetEntArray("lgt_vtol_block", "targetname"), &Hide);
	util::clear_streamer_hint();
}

/*
	Name: function_7cfa94ff
	Namespace: namespace_22a8c92
	Checksum: 0xDB47D6E6
	Offset: 0x21A0
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_7cfa94ff(a_ents)
{
	var_2aa82b86 = a_ents["cin_ram_06_05_safiya_1st_friendlydown_vtol01"];
	var_2aa82b86 namespace_d7ca6f18::function_1e5c6903(1, "");
	var_2aa82b86 namespace_d7ca6f18::function_1e5c6903(1, "_d1");
	var_2aa82b86 namespace_d7ca6f18::function_1e5c6903(0, "_d2");
	level waittill("hash_6f5e60c5");
	var_2aa82b86 HidePart("tag_glass4_d2_animate");
	var_2aa82b86 ShowPart("tag_glass4_d3_animate");
}

/*
	Name: function_340269e0
	Namespace: namespace_22a8c92
	Checksum: 0x20FEEC1C
	Offset: 0x2278
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_340269e0()
{
	level scene::init("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
}

/*
	Name: function_54b31e43
	Namespace: namespace_22a8c92
	Checksum: 0xE23D841A
	Offset: 0x22A8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_54b31e43()
{
	exploder::exploder("fx_expl_qtplaza_hotel");
	exploder::exploder("fx_expl_qtplaza_main");
	exploder::exploder("fx_expl_qtplaza_tracers");
	exploder::exploder("fx_expl_qtplaza_vista");
	exploder::exploder("ramses_vtol_down");
	exploder::exploder("LGT_theater");
}

/*
	Name: function_fe70e19f
	Namespace: namespace_22a8c92
	Checksum: 0x29365680
	Offset: 0x2348
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_fe70e19f(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_ramses_destroy_quadtank");
}

/*
	Name: function_f723d487
	Namespace: namespace_22a8c92
	Checksum: 0xDA5960B0
	Offset: 0x2390
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_f723d487(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7ca6f18::function_fc9630cb();
		namespace_94c82dbc::function_7d4abfb6();
	}
}

/*
	Name: function_b966133d
	Namespace: namespace_22a8c92
	Checksum: 0x5936A9D
	Offset: 0x23D8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_b966133d(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_5d8a2262
	Namespace: namespace_22a8c92
	Checksum: 0xB69A1C91
	Offset: 0x2408
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_5d8a2262(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_94c82dbc::function_fb5c1d72();
	}
}

/*
	Name: function_c7cac5c
	Namespace: namespace_22a8c92
	Checksum: 0x37466756
	Offset: 0x2440
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_c7cac5c(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_969d795a
	Namespace: namespace_22a8c92
	Checksum: 0xFE7D90F1
	Offset: 0x2470
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_969d795a(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level namespace_391e4301::function_c20af84a();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_9db406db = util::function_740f8516("khalil");
		level flag::init("qt_plaza_outro_igc_started");
		level flag::init("qt_plaza_statue_destroyed");
		level flag::init("qt_plaza_rocket_building_destroyed");
		level flag::init("qt_plaza_mobile_wall_destroyed");
		namespace_94c82dbc::function_5cb0384();
		function_54b31e43();
		level scene::skipto_end("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle");
		level scene::skipto_end("p7_fxanim_cp_ramses_cinema_collapse_bundle");
		exploder::exploder("fx_expl_bldg_rocket");
		level flag::wait_till("all_players_spawned");
		namespace_94c82dbc::function_f9e42df5(1);
	}
}

/*
	Name: function_bf0bc064
	Namespace: namespace_22a8c92
	Checksum: 0xC077932C
	Offset: 0x2620
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_bf0bc064(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

