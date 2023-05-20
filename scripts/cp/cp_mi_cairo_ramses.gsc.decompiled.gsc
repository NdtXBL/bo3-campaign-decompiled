#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_accolades;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_level_start;
#using scripts\cp\cp_mi_cairo_ramses_nasser_interview;
#using scripts\cp\cp_mi_cairo_ramses_patch;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_station_fight;
#using scripts\cp\cp_mi_cairo_ramses_station_walk;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses_vtol_ride;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_ae122cd0;

/*
	Name: function_243693d4
	Namespace: namespace_ae122cd0
	Checksum: 0xE4511BD8
	Offset: 0x980
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
	Namespace: namespace_ae122cd0
	Checksum: 0x5A57B5B8
	Offset: 0x9C0
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	if(function_27c72c1b() && -1)
	{
		function_863d6bb0(34);
	}
	else
	{
		function_863d6bb0(23);
	}
	namespace_9f824288::function_8c0c4b3a("ramses");
	namespace_38256252::function_4d39a2af();
	namespace_38256252::function_43898266();
	namespace_38256252::function_e1862c87();
	namespace_38256252::function_3484502e();
	function_f7046c76();
	function_2ea898a8();
	function_37af8a07();
	function_de719a70();
	function_673254cc();
	namespace_82b91a51::function_286a5010(3);
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_96fa87af::function_994832bd("station_fight_turret", &function_66f28952);
	namespace_b9254c21::function_d290ebfa();
	namespace_39972b4::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	function_6c1294b8("compassmaxrange", "12000");
	level namespace_71e9cb84::function_74d6b22f("ramses_station_lamps", 1);
	/#
		function_2f40de54("Dev Block strings are not supported");
	#/
	level thread function_2b543535();
	level.var_dc236bc8 = 1;
	namespace_e9e39773::function_7403e82b();
}

/*
	Name: function_f7046c76
	Namespace: namespace_ae122cd0
	Checksum: 0x99EC1590
	Offset: 0xC08
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
}

/*
	Name: function_2ea898a8
	Namespace: namespace_ae122cd0
	Checksum: 0x368B3596
	Offset: 0xC18
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "hide_station_miscmodels", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "turn_on_rotating_fxanim_fans", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "turn_on_rotating_fxanim_lights", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "delete_fxanim_fans", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "nasser_interview_extra_cam", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "rap_blood_on_player", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "ramses_station_lamps", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "staging_area_intro", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "filter_ev_interference_toggle", 1, 1, "int");
}

/*
	Name: function_37af8a07
	Namespace: namespace_ae122cd0
	Checksum: 0xCFBC5F8E
	Offset: 0xDD8
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("dead_turrets_initialized");
	level namespace_ad23e503::function_c35e6aab("dead_turret_stop_station_ambients");
	level namespace_ad23e503::function_c35e6aab("station_walk_past_stairs");
	level namespace_ad23e503::function_c35e6aab("station_walk_complete");
	level namespace_ad23e503::function_c35e6aab("station_walk_cleanup");
	level namespace_ad23e503::function_c35e6aab("raps_intro_done");
	level namespace_ad23e503::function_c35e6aab("pod_hits_floor");
	level namespace_ad23e503::function_c35e6aab("ceiling_collapse_complete");
	level namespace_ad23e503::function_c35e6aab("drop_pod_opened_and_spawned");
	level namespace_ad23e503::function_c35e6aab("station_fight_completed");
	level namespace_ad23e503::function_c35e6aab("mobile_wall_fxanim_start");
	level namespace_ad23e503::function_c35e6aab("vtol_ride_started");
	level namespace_ad23e503::function_c35e6aab("vtol_ride_done");
	level namespace_ad23e503::function_c35e6aab("hendricks_jumpdirect_looping");
	level namespace_ad23e503::function_c35e6aab("khalil_jumpdirect_looping");
	level namespace_ad23e503::function_c35e6aab("flak_vtol_ride_stop");
}

/*
	Name: function_de719a70
	Namespace: namespace_ae122cd0
	Checksum: 0xD8CF3CA
	Offset: 0xFE8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_de719a70()
{
	namespace_1d795d47::function_f3e035ef();
	level.var_1e983b11 = 0;
	level.var_d829fe9f = 0;
	namespace_76d95162::function_d9f49fba(0, "bc");
	var_69e9c588 = function_99201f25("mobile_armory", "script_noteworthy");
	var_301cff54 = function_99201f25("ammo_cache", "script_noteworthy");
	level.var_2b205f01 = function_525ae497(var_69e9c588, var_301cff54, 0, 0);
}

/*
	Name: function_66f28952
	Namespace: namespace_ae122cd0
	Checksum: 0xA8A6A400
	Offset: 0x10C0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_66f28952()
{
	self.var_3e94206a = "allies";
}

/*
	Name: function_673254cc
	Namespace: namespace_ae122cd0
	Checksum: 0x1F861082
	Offset: 0x10E0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("level_start", &function_e4f36ca2, "level_start", &function_781ed89c);
	namespace_1d795d47::function_69554b3e("rs_walk_through", &function_4513d788, "rs_walk_through", &function_86fc3d2e);
	namespace_1d795d47::function_d68e678e("interview_dr_nasser", &function_ac4ae5cc, "interview_dr_nasser", &function_5b5ae0d2);
	namespace_1d795d47::function_d68e678e("defend_ramses_station", &namespace_bedc6a60::function_c35e6aab, "defend_ramses_station", &namespace_bedc6a60::function_355070e1);
	namespace_1d795d47::function_d68e678e("vtol_ride", &namespace_80a43443::function_c35e6aab, "vtol_ride", &namespace_80a43443::function_355070e1);
	namespace_1d795d47::function_654c9dda("dev_defend_station_test", &namespace_bedc6a60::function_f27ea617, "Defend Station Test", &namespace_bedc6a60::function_93364e1b, "", "");
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_ae122cd0
	Checksum: 0xE367E22C
	Offset: 0x1280
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self namespace_ad23e503::function_c35e6aab("linked_to_truck");
}

/*
	Name: function_aebcf025
	Namespace: namespace_ae122cd0
	Checksum: 0xD200B48A
	Offset: 0x12B0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self namespace_391e4301::function_ff06e7ac();
}

/*
	Name: function_e4f36ca2
	Namespace: namespace_ae122cd0
	Checksum: 0xA6C1E55C
	Offset: 0x12D8
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function function_e4f36ca2(var_b04bc952, var_74cd64bc)
{
	namespace_dabbe128::function_356a4ee1(&namespace_50196384::function_e9d1564a);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_50196384::function_e29f0dd6(var_b04bc952);
		namespace_391e4301::function_75734d29();
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_determine_what_salim_knows");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_meet_with_khalil");
	namespace_84970cc4::function_966ecb29(level.var_2b205f01, &namespace_16f9ecd3::function_14ec2d71);
	level.var_2fd26037 function_b97730be(1);
	level.var_2fd26037 function_cea50a94(1);
	level.var_7a9855f3 function_cea50a94(1);
	namespace_bedc6a60::function_f7abd273();
	namespace_bedc6a60::function_f21c9162("_combat");
	namespace_50196384::function_d290ebfa();
}

/*
	Name: function_781ed89c
	Namespace: namespace_ae122cd0
	Checksum: 0x10485DF1
	Offset: 0x1448
	Size: 0xCB
	Parameters: 4
	Flags: None
*/
function function_781ed89c(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_ramses_determine_what_salim_knows");
		namespace_d0ef8521::function_74d6b22f("cp_level_ramses_meet_with_khalil");
	}
	namespace_bedc6a60::function_f7abd273();
	namespace_bedc6a60::function_f21c9162("_combat");
	namespace_391e4301::function_75734d29();
	level namespace_cc27597::function_c35e6aab("cin_ram_04_02_easterncheck_vign_jumpdirect");
	level thread namespace_391e4301::function_a0a9f927();
}

/*
	Name: function_4513d788
	Namespace: namespace_ae122cd0
	Checksum: 0xEC8335C9
	Offset: 0x1520
	Size: 0x183
	Parameters: 2
	Flags: None
*/
function function_4513d788(var_b04bc952, var_74cd64bc)
{
	level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
	level.var_9db406db function_cea50a94(1);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_dabbe128::function_356a4ee1(&namespace_50196384::function_e9d1564a);
		namespace_7434c6b7::function_e29f0dd6(var_b04bc952);
		namespace_84970cc4::function_966ecb29(level.var_2b205f01, &namespace_16f9ecd3::function_14ec2d71);
		namespace_d7916d65::function_a2995f22();
		namespace_82b91a51::function_7e61de2b(0, "black", "skipto_fade");
		namespace_82b91a51::function_67520c6a(1, undefined, &namespace_82b91a51::function_593c2af4, 1, "black", "skipto_fade");
	}
	namespace_e55eaf53::function_c99967dc(0);
	namespace_391e4301::function_7255e66(0);
	namespace_7434c6b7::function_d290ebfa();
}

/*
	Name: function_86fc3d2e
	Namespace: namespace_ae122cd0
	Checksum: 0xEFB488D2
	Offset: 0x16B0
	Size: 0x53
	Parameters: 4
	Flags: None
*/
function function_86fc3d2e(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_go_to_holding_room");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_meet_with_khalil");
}

/*
	Name: function_ac4ae5cc
	Namespace: namespace_ae122cd0
	Checksum: 0x8786490D
	Offset: 0x1710
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function function_ac4ae5cc(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_e55eaf53::function_e29f0dd6();
		namespace_dabbe128::function_356a4ee1(&namespace_e55eaf53::function_1bcd464b);
		namespace_84970cc4::function_966ecb29(level.var_2b205f01, &namespace_16f9ecd3::function_14ec2d71);
		level.var_9db406db function_cea50a94(1);
		level.var_7a9855f3 function_cea50a94(1);
		level.var_2fd26037 function_cea50a94(1);
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_interrogate_salim");
	namespace_391e4301::function_7255e66(1);
	namespace_e55eaf53::function_d290ebfa(var_74cd64bc);
}

/*
	Name: function_5b5ae0d2
	Namespace: namespace_ae122cd0
	Checksum: 0xB918AEE8
	Offset: 0x1848
	Size: 0x143
	Parameters: 4
	Flags: None
*/
function function_5b5ae0d2(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_84970cc4::function_966ecb29(function_99201f25("mobile_armory", "script_noteworthy"), &namespace_16f9ecd3::function_e228c18a, 1);
		namespace_d0ef8521::function_31cd1834("cp_level_ramses_interrogate_salim");
		namespace_d0ef8521::function_31cd1834("cp_level_ramses_determine_what_salim_knows");
		namespace_d0ef8521::function_74d6b22f("cp_level_ramses_protect_salim");
	}
	namespace_7434c6b7::function_51f408f1();
	level namespace_82b91a51::function_ef3f75eb("walla_off");
	namespace_16f9ecd3::function_f0f40bb5();
	namespace_16f9ecd3::function_b3c589a6();
	namespace_391e4301::function_eabc6e2f();
	namespace_391e4301::function_d4a0bb54();
	namespace_391e4301::function_e7ebe596(0);
}

/*
	Name: function_2b543535
	Namespace: namespace_ae122cd0
	Checksum: 0x6E5E2DA
	Offset: 0x1998
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_2b543535()
{
	level waittill("hash_c7cc2fd");
	level namespace_82b91a51::function_ef3f75eb("sndIGC");
}

