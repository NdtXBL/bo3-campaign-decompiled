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
	Name: function_243693d4
	Namespace: namespace_22a8c92
	Checksum: 0x19AF30D3
	Offset: 0xD20
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_243693d4()
{
	namespace_82b91a51::function_3bf39ed7("coop");
	namespace_82b91a51::function_3bf39ed7("cpzm");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_22a8c92
	Checksum: 0x964320A4
	Offset: 0xD60
	Size: 0x34B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	if(function_27c72c1b() && 0)
	{
		function_863d6bb0(34);
	}
	else
	{
		function_863d6bb0(116);
	}
	function_2ce503ce(40);
	namespace_9f824288::function_8c0c4b3a("ramses");
	namespace_38256252::function_4d39a2af();
	namespace_38256252::function_43898266();
	namespace_38256252::function_e1862c87();
	namespace_38256252::function_6f52c808();
	namespace_38256252::function_7f657f7a();
	namespace_38256252::function_fec73937();
	namespace_38256252::function_a17fa88e();
	namespace_38256252::function_8e872dc8();
	namespace_38256252::function_3484502e();
	namespace_82b91a51::function_286a5010(5);
	function_2ea898a8();
	function_37af8a07();
	function_673254cc();
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_determine_what_salim_knows");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_interrogate_salim");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_protect_salim");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_eastern_checkpoint");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_demolish_arena_defend");
	function_6ada35ba("lgt_shadow_block_trans", "targetname") function_50ccee8d();
	namespace_391e4301::function_1903e7dc();
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_aa179d1b(&function_974050f);
	namespace_dabbe128::function_df3cb43b(&function_7ecec4bc);
	namespace_9c179137::function_d290ebfa();
	namespace_b16ee55e::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	namespace_397becbd::function_7403e82b();
	function_6c1294b8("compassmaxrange", "12000");
	function_6c1294b8("scr_security_breach_lose_contact_distance", 36000);
	function_6c1294b8("scr_security_breach_lost_contact_distance", 72000);
	/#
		function_2f40de54("Dev Block strings are not supported");
	#/
}

/*
	Name: function_2ea898a8
	Namespace: namespace_22a8c92
	Checksum: 0x4844D70C
	Offset: 0x10B8
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "player_spike_plant_postfx", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "arena_defend_fxanim_hunters", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "arena_defend_mobile_wall_damage", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "alley_fxanim_hunters", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "alley_fog_banks", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "alley_fxanim_curtains", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "vtol_igc_fxanim_hunter", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "qt_plaza_fxanim_hunters", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "theater_fxanim_swap", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "qt_plaza_outro_exposure", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "hide_statue_rubble", 1, 1, "int");
}

/*
	Name: function_37af8a07
	Namespace: namespace_22a8c92
	Checksum: 0xE1BC3712
	Offset: 0x12D8
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("vtol_igc_trigger_used");
	level namespace_ad23e503::function_c35e6aab("intro_igc_done");
	level namespace_ad23e503::function_c35e6aab("dead_turret_stop_station_ambients");
	level namespace_ad23e503::function_c35e6aab("station_walk_cleanup");
	level namespace_ad23e503::function_c35e6aab("weak_points_objective_active");
	level namespace_ad23e503::function_c35e6aab("sinkhole_charges_detonated");
	level namespace_ad23e503::function_c35e6aab("arena_defend_sinkhole_outro");
	level namespace_ad23e503::function_c35e6aab("player_has_dead_control");
	level namespace_ad23e503::function_c35e6aab("start_vtol_robot_drop_1");
	level namespace_ad23e503::function_c35e6aab("start_vtol_robot_drop_2");
	level namespace_ad23e503::function_c35e6aab("vtol_igc_done");
	level namespace_ad23e503::function_c35e6aab("freeway_battle_cleared");
	level namespace_ad23e503::function_c35e6aab("flak_vtol_ride_stop");
	level namespace_ad23e503::function_c35e6aab("flak_arena_defend_stop");
	level namespace_ad23e503::function_c35e6aab("flak_alley_stop");
}

/*
	Name: function_673254cc
	Namespace: namespace_22a8c92
	Checksum: 0x187B7CDC
	Offset: 0x14C8
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_d68e678e("arena_defend_intro", &namespace_4124d::function_21b8a3e1, "Arena Defend", &namespace_4124d::function_b162a3a4);
	namespace_1d795d47::function_69554b3e("arena_defend", &namespace_4124d::function_d290ebfa, "Arena Defend", &namespace_4124d::function_355070e1);
	namespace_1d795d47::function_d68e678e("sinkhole_collapse", &namespace_4124d::function_4451e1bd, "Sinkhole Collapse", &namespace_4124d::function_82a50f67);
	namespace_1d795d47::function_654c9dda("dev_weak_point_test", &namespace_4124d::function_dfb8409d, "Weak Point Test", &namespace_4124d::function_dfb8409d, "", "");
	namespace_1d795d47::function_654c9dda("dev_sinkhole_test", &namespace_4124d::function_f15cce15, "Sinkhole Test", &namespace_4124d::function_893047b8, "", "alley");
	namespace_1d795d47::function_d68e678e("alley", &function_8392bfa, "Alley", &function_76333904);
	namespace_1d795d47::function_d68e678e("vtol_igc", &function_5478458c, "VTOL IGC", &function_f3104d92);
	namespace_1d795d47::function_d68e678e("quad_tank_plaza", &function_277a2ec5, "Quad Tank Plaza", &function_fe70e19f);
	namespace_1d795d47::function_654c9dda("dev_statue_fall", &function_f723d487, "Statue Fall Test", &function_b966133d);
	namespace_1d795d47::function_654c9dda("dev_hacked_quadtank", &function_5d8a2262, "Test Hacked Quadtank", &function_c7cac5c);
	namespace_1d795d47::function_654c9dda("dev_qt_plaza_outro", &function_969d795a, "QT PLAZA OUTRO", &function_bf0bc064);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_22a8c92
	Checksum: 0xFBC7C4A4
	Offset: 0x17B8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self namespace_ad23e503::function_c35e6aab("linked_to_truck");
	self namespace_ad23e503::function_c35e6aab("spike_launcher_tutorial_complete");
}

/*
	Name: function_aebcf025
	Namespace: namespace_22a8c92
	Checksum: 0x6608CE93
	Offset: 0x1808
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
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
	if(level.var_31aefea8 === "arena_defend_intro" || level.var_31aefea8 === "arena_defend" || level.var_31aefea8 == "sinkhole_collapse" || level.var_31aefea8 === "dev_weak_point_test" || level.var_31aefea8 === "dev_sinkhole_test")
	{
		self namespace_391e4301::function_ad67ec60(1);
	}
}

/*
	Name: function_7ecec4bc
	Namespace: namespace_22a8c92
	Checksum: 0x81F04159
	Offset: 0x18C0
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_7ecec4bc()
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
function function_8392bfa(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_9e3608e3("alley_doors_open");
		namespace_391e4301::function_22e1a261();
		namespace_391e4301::function_f2f98cfc();
		namespace_391e4301::function_1aeb2873();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_d7916d65::function_a2995f22();
		level thread namespace_82b91a51::function_d8eaed3d(5);
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_go_to_safiya");
	if(isdefined(level.var_1b3f87f7))
	{
		level.var_1b3f87f7 function_dc8c8404();
	}
	namespace_391e4301::function_7255e66(1, "alley_mobile_armory");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	level.var_2fd26037 namespace_6f7b2095::function_1b497663("o");
	namespace_d7ca6f18::function_fc9630cb();
	namespace_95b31534::function_3a097ca4();
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
function function_76333904(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_4124d::function_d92a2132();
		level namespace_391e4301::function_22e1a261();
	}
	namespace_391e4301::function_7255e66(0, "alley_mobile_armory");
	function_2ce503ce(35);
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
function function_5478458c(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_2fd26037 namespace_6f7b2095::function_1b497663("o");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_391e4301::function_f2f98cfc();
		level namespace_cc27597::function_c35e6aab("cin_ram_06_05_safiya_1st_friendlydown_init");
		level thread namespace_a6a248fc::function_6b994041();
		namespace_d7916d65::function_a2995f22();
	}
	if(isdefined(level.var_b0c4695a))
	{
		level.var_b0c4695a function_dc8c8404();
	}
	namespace_dabbe128::function_91a3f14e(&function_974050f);
	level.var_2395e945 namespace_391e4301::function_25439df2();
	function_340269e0();
	function_54b31e43();
	level namespace_ad23e503::function_74d6b22f("flak_alley_stop");
	level thread namespace_95b31534::function_9f94867c();
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
function function_f3104d92(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_ramses_go_to_safiya");
	}
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_vtol_use");
	namespace_80983c42::function_dfc351df("transition");
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
function function_277a2ec5(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_cc27597::function_8f9f34e0("cin_ram_06_05_safiya_1st_friendlydown", &function_7cfa94ff, "init");
		namespace_cc27597::function_c35e6aab("cin_ram_06_05_safiya_1st_friendlydown");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_76d95162::function_d9f49fba(0);
		namespace_dabbe128::function_91a3f14e(&function_974050f);
		level thread function_7aef65a5();
		namespace_d7916d65::function_a2995f22();
		level thread namespace_94c82dbc::function_4492caaa();
		namespace_94c82dbc::function_ffea6b5();
		namespace_82b91a51::function_ef3f75eb("pst");
		function_340269e0();
		function_54b31e43();
	}
	else
	{
		namespace_76d95162::function_d9f49fba(1);
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
	namespace_cc27597::function_8f9f34e0("cin_ram_06_05_safiya_1st_friendlydown", &namespace_d7ca6f18::function_e78f7ba0, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_06_05_safiya_1st_friendlydown", &namespace_d7ca6f18::function_9585cf3, "done");
	level thread namespace_d7ca6f18::function_f3a727ef(1);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("truck_flip_vtol", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_5c143f59();
	level waittill("hash_c79c2551");
	level thread namespace_d7ca6f18::function_6ee65e7a();
	level namespace_82b91a51::function_7e61de2b(0, "black", "skipto_fade");
	namespace_82b91a51::function_67520c6a(1.5, undefined, &namespace_82b91a51::function_593c2af4, 1, "black", "skipto_fade");
	level namespace_cc27597::function_5c143f59("cin_ram_06_05_safiya_1st_friendlydown", undefined, undefined, 0.88, 1);
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_74d6b22f("vtol_igc_done");
	namespace_80983c42::function_593e8a39("fx_expl_qtplaza_hotel");
	namespace_84970cc4::function_eaab05dc(function_99201f25("lgt_vtol_block", "targetname"), &function_50ccee8d);
	namespace_82b91a51::function_a0938376();
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
function function_7cfa94ff(var_c77d2837)
{
	var_2aa82b86 = var_c77d2837["cin_ram_06_05_safiya_1st_friendlydown_vtol01"];
	var_2aa82b86 namespace_d7ca6f18::function_1e5c6903(1, "");
	var_2aa82b86 namespace_d7ca6f18::function_1e5c6903(1, "_d1");
	var_2aa82b86 namespace_d7ca6f18::function_1e5c6903(0, "_d2");
	level waittill("hash_6f5e60c5");
	var_2aa82b86 function_db20c8d6("tag_glass4_d2_animate");
	var_2aa82b86 function_123d36d9("tag_glass4_d3_animate");
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
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
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
	namespace_80983c42::function_80983c42("fx_expl_qtplaza_hotel");
	namespace_80983c42::function_80983c42("fx_expl_qtplaza_main");
	namespace_80983c42::function_80983c42("fx_expl_qtplaza_tracers");
	namespace_80983c42::function_80983c42("fx_expl_qtplaza_vista");
	namespace_80983c42::function_80983c42("ramses_vtol_down");
	namespace_80983c42::function_80983c42("LGT_theater");
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
function function_fe70e19f(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_destroy_quadtank");
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
function function_f723d487(var_b04bc952, var_74cd64bc)
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
function function_b966133d(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
function function_5d8a2262(var_b04bc952, var_74cd64bc)
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
function function_c7cac5c(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
function function_969d795a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level namespace_391e4301::function_c20af84a();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level namespace_ad23e503::function_c35e6aab("qt_plaza_outro_igc_started");
		level namespace_ad23e503::function_c35e6aab("qt_plaza_statue_destroyed");
		level namespace_ad23e503::function_c35e6aab("qt_plaza_rocket_building_destroyed");
		level namespace_ad23e503::function_c35e6aab("qt_plaza_mobile_wall_destroyed");
		namespace_94c82dbc::function_5cb0384();
		function_54b31e43();
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_cinema_collapse_bundle");
		namespace_80983c42::function_80983c42("fx_expl_bldg_rocket");
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
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
function function_bf0bc064(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

