#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_accolades;
#using scripts\cp\cp_mi_cairo_ramses_arena_defend;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses2_fx;
#using scripts\cp\cp_mi_cairo_ramses2_sound;
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
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_raps;

#namespace namespace_95b31534;

/*
	Name: function_3a097ca4
	Namespace: namespace_95b31534
	Checksum: 0xDBFB7E2D
	Offset: 0xDC0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3a097ca4()
{
	function_f7046c76();
	level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
	function_373b56fb();
	namespace_1d795d47::function_be8adfb8("alley");
}

/*
	Name: function_f7046c76
	Namespace: namespace_95b31534
	Checksum: 0xC096AF60
	Offset: 0xE28
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
	level namespace_ad23e503::function_c35e6aab("alley_event_started");
	level namespace_ad23e503::function_c35e6aab("alley_midpoint_reached");
	level.var_c1aa5253["large_explosion"] = "explosions/fx_exp_generic_lg";
}

/*
	Name: function_85ed7760
	Namespace: namespace_95b31534
	Checksum: 0x1C60FE47
	Offset: 0xE90
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_85ed7760()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_player_alley_entrance");
	level thread namespace_a6a248fc::function_1912af43();
	level thread namespace_a6a248fc::function_bd60b52a();
	namespace_76d95162::function_d9f49fba(0);
	namespace_4dbf3ae3::function_42e87952("trig_color_post_entrance", "targetname", undefined, 0);
	level namespace_71b8dba1::function_13b3b16a("plrf_kane_it_feels_a_lo_0", 2);
	level namespace_71b8dba1::function_a463d127("kane_wait_i_think_0", 1);
	level namespace_71b8dba1::function_a463d127("ecmd_ambush_we_have_a_b_0");
	level namespace_71b8dba1::function_13b3b16a("plrf_kane_sit_rep_are_0");
	level namespace_71b8dba1::function_a463d127("kane_it_was_taylor_the_0", 3);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_how_did_taylo_0", 0.5);
	level namespace_71b8dba1::function_a463d127("tayr_she_s_telling_the_tr_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_taylor_is_that_you_0");
	level namespace_71b8dba1::function_a463d127("tayr_you_know_you_know_0");
	level namespace_71b8dba1::function_13b3b16a("plrf_kane_can_you_run_a_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_not_from_here_i_m_0", 1.5);
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_373b56fb
	Namespace: namespace_95b31534
	Checksum: 0xAE615CF2
	Offset: 0x10B0
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_373b56fb()
{
	namespace_2f06d687::function_2b37a3c9("alley_wasps", "script_noteworthy", &function_5a13e2e9);
	namespace_2f06d687::function_2b37a3c9("amws_enemy", "script_noteworthy", &function_5a13e2e9);
	namespace_2f06d687::function_2b37a3c9("alley_egypt_intro_guy", "targetname", &function_1a98b08b, "alley_gone_hot");
	namespace_2f06d687::function_2b37a3c9("alley_nrc_intro_guy", "targetname", &function_1a98b08b, "alley_gone_hot");
	namespace_2f06d687::function_2b37a3c9("alley_nrc_front_guy", "targetname", &function_1a98b08b, "alley_gone_hot");
	namespace_2f06d687::function_2b37a3c9("alley_egypt_mid_guy", "targetname", &function_1a98b08b, "player_front_alley_end");
	namespace_2f06d687::function_2b37a3c9("alley_nrc_mid_guy", "targetname", &function_1a98b08b, "player_front_alley_end");
	namespace_2f06d687::function_2b37a3c9("alley_egypt_mid_guy", "targetname", &function_3631db68, "player_end_battle", "switching_alley_colors");
	namespace_2f06d687::function_2b37a3c9("alley_egypt_mid_retreat_guy", "targetname", &function_3631db68, "player_end_battle", "switching_alley_colors");
	namespace_38256252::function_17a34ad1();
	level namespace_ad23e503::function_74d6b22f("alley_event_started");
	level thread namespace_4124d::function_9f94867c();
	level thread function_7762bd57();
	level thread function_85ed7760();
	level thread function_ce0ce11f();
	level thread function_e9214214();
	function_d23acc2c();
	namespace_9f824288::function_5d2cdd99();
	function_77ea6913();
	level notify("hash_6f120ac6");
	namespace_38256252::function_cee86b3b();
}

/*
	Name: function_1a98b08b
	Namespace: namespace_95b31534
	Checksum: 0x8AA37956
	Offset: 0x13B0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_1a98b08b(var_4ac85f5f)
{
	self endon("hash_128f8789");
	self endon("hash_cb188399");
	self thread function_d8dddf8e();
	self namespace_391e4301::function_f08afb37();
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	wait(function_dc99997a(1, 3));
	self namespace_391e4301::function_f08afb37(0, 1);
}

/*
	Name: function_d8dddf8e
	Namespace: namespace_95b31534
	Checksum: 0xF96FC2E6
	Offset: 0x1450
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d8dddf8e()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
}

/*
	Name: function_3631db68
	Namespace: namespace_95b31534
	Checksum: 0xB4E80B2C
	Offset: 0x14B0
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_3631db68(var_4ac85f5f, var_aa686173)
{
	if(!isdefined(var_aa686173))
	{
		var_aa686173 = "";
	}
	self endon("hash_128f8789");
	self endon(var_aa686173);
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	self namespace_6f7b2095::function_1b497663("b");
}

/*
	Name: function_5a13e2e9
	Namespace: namespace_95b31534
	Checksum: 0x7F7A71AC
	Offset: 0x1530
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5a13e2e9()
{
	self endon("hash_128f8789");
	var_8fee761f = function_6ada35ba(self.var_b07228b6, "targetname");
	self function_e65887e4(var_8fee761f.var_722885f3);
}

/*
	Name: function_d23acc2c
	Namespace: namespace_95b31534
	Checksum: 0x4C7EDF9C
	Offset: 0x1598
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_d23acc2c()
{
	level thread function_f15f3660();
	namespace_4dbf3ae3::function_1ab5ebec("trig_start_alley_intro");
	level namespace_71e9cb84::function_74d6b22f("alley_fxanim_curtains", 1);
	namespace_d5067552::function_bae40a28("sm_alley_egypt_intro");
	namespace_d5067552::function_bae40a28("sm_alley_nrc_front");
	namespace_2f06d687::function_22356ba7("alley_nrc_intro_guy");
	foreach(var_2dd5c5dd in level.var_6a876531)
	{
		var_2dd5c5dd thread function_52b6b016();
	}
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 thread function_ee5e3ead("player_alley_start");
	}
	level thread function_93a76cd8();
	level thread function_88dbcef();
	level namespace_82b91a51::function_9fcf3cd8(30, "start_wasps", "intro_cleared");
	level notify("hash_44ba5526");
	namespace_d5067552::function_bae40a28("sm_alley_nrc_intro_wasp");
	level namespace_ad23e503::function_1ab5ebec("player_mid_alley");
	level thread namespace_a6a248fc::function_767cbb3e();
	level thread function_fd17bfa8();
	level thread function_f4c9aec9();
	level namespace_cc27597::function_c35e6aab("cin_ram_06_05_safiya_1st_friendlydown_init");
	namespace_d5067552::function_2992720d("sm_alley_egypt_intro");
	namespace_d5067552::function_bae40a28("sm_alley_egypt_mid");
	namespace_d5067552::function_bae40a28("sm_alley_nrc_mid");
	namespace_d5067552::function_bae40a28("sm_alley_nrc_mid_wasp");
	level namespace_ad23e503::function_1ab5ebec("start_retreat_scenes");
	level thread function_3026c43e();
	level thread function_8dad6b29();
}

/*
	Name: function_f4c9aec9
	Namespace: namespace_95b31534
	Checksum: 0x411195D4
	Offset: 0x1908
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f4c9aec9()
{
	level endon("hash_48072105");
	namespace_4dbf3ae3::function_1ab5ebec("trig_start_retreat_scenes");
	level namespace_ad23e503::function_74d6b22f("start_retreat_scenes");
}

/*
	Name: function_8dad6b29
	Namespace: namespace_95b31534
	Checksum: 0x81B89E61
	Offset: 0x1958
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_8dad6b29()
{
	namespace_2f06d687::function_22356ba7("alley_egypt_mid_retreat_guy");
	level namespace_82b91a51::function_c9aa1ff("force_flanker_spawns", 3);
	namespace_2f06d687::function_22356ba7("alley_nrc_mid_flanker");
	function_bd46ff5e();
}

/*
	Name: function_88dbcef
	Namespace: namespace_95b31534
	Checksum: 0xD76E6968
	Offset: 0x19C8
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_88dbcef()
{
	namespace_2f06d687::function_c0434ff5("alley_nrc_intro", 4);
	level notify("hash_23c6c016");
}

/*
	Name: function_93a76cd8
	Namespace: namespace_95b31534
	Checksum: 0x79A7E559
	Offset: 0x1A08
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_93a76cd8()
{
	level namespace_ad23e503::function_1ab5ebec("alley_gone_hot");
	namespace_4dbf3ae3::function_42e87952("trig_color_alley_intro", "targetname", undefined, 0);
	namespace_2f06d687::function_c0434ff5("alley_nrc_intro", 4);
	namespace_4dbf3ae3::function_42e87952("trig_color_alley_front", "targetname", undefined, 0);
	var_293366a0 = namespace_2f06d687::function_41e09b9("alley_nrc_intro");
	while(var_293366a0 >= 2 && !level namespace_ad23e503::function_7922262b("player_mid_alley"))
	{
		var_293366a0 = namespace_2f06d687::function_41e09b9("alley_nrc_intro");
		wait(0.25);
	}
	namespace_4dbf3ae3::function_42e87952("trig_color_alley_mid", "targetname", undefined, 0);
}

/*
	Name: function_ee5e3ead
	Namespace: namespace_95b31534
	Checksum: 0xB9DFA4CD
	Offset: 0x1B50
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_ee5e3ead(var_87be2839)
{
	self endon("hash_643a7daf");
	self.var_255b9315 = 1;
	level namespace_ad23e503::function_9d134160("alley_gone_hot");
	level namespace_ad23e503::function_1ab5ebec(var_87be2839);
	self thread function_9cf4888f();
	level thread function_f5b7c9c();
	level namespace_ad23e503::function_1ab5ebec("alley_gone_hot");
	self.var_255b9315 = 0;
}

/*
	Name: function_f5b7c9c
	Namespace: namespace_95b31534
	Checksum: 0xFB9F0C6B
	Offset: 0x1C10
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_f5b7c9c()
{
	level endon("hash_8f9f4f12");
	wait(15);
	level namespace_ad23e503::function_74d6b22f("alley_gone_hot");
}

/*
	Name: function_9cf4888f
	Namespace: namespace_95b31534
	Checksum: 0x826A62BD
	Offset: 0x1C50
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9cf4888f()
{
	level endon("hash_8f9f4f12");
	self waittill("hash_aa1618b0");
	level namespace_ad23e503::function_74d6b22f("alley_gone_hot");
}

/*
	Name: function_52b6b016
	Namespace: namespace_95b31534
	Checksum: 0x35DDC5FC
	Offset: 0x1C98
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_52b6b016()
{
	self endon("hash_128f8789");
	if(!isdefined(self))
	{
		return;
	}
	self.var_255b9315 = 1;
	self.var_c584775c = 1;
	level namespace_ad23e503::function_1ab5ebec("alley_gone_hot");
	self.var_255b9315 = 0;
	self.var_c584775c = 0;
}

/*
	Name: function_eb966d36
	Namespace: namespace_95b31534
	Checksum: 0x5E08327B
	Offset: 0x1D08
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_eb966d36()
{
	self endon("hash_128f8789");
	wait(function_dc99997a(1, 3));
	var_80baaa8b = function_b4cb3503("rooftop_delete_node", "targetname");
	self thread namespace_d84e54db::function_19e98020(var_80baaa8b, 32);
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
}

/*
	Name: function_fd17bfa8
	Namespace: namespace_95b31534
	Checksum: 0x4FD669BD
	Offset: 0x1DA8
	Size: 0x4DB
	Parameters: 0
	Flags: None
*/
function function_fd17bfa8()
{
	var_82f9827b = namespace_2f06d687::function_289e6fd1("alley_egypt_intro_roofop");
	foreach(var_5abbae22 in var_82f9827b)
	{
		var_5abbae22 thread function_eb966d36();
	}
	var_d6395e7f = function_fe0cfd2e("hendricks_jump_traversal", "script_noteworthy");
	foreach(var_90ca1fdd in var_d6395e7f)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	function_25db07ad();
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 1);
	var_d8c194ab = function_b4cb3503("hendricks_alley_far", "targetname");
	level.var_2fd26037 thread namespace_d84e54db::function_19e98020(var_d8c194ab, 64);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	foreach(var_90ca1fdd in var_d6395e7f)
	{
		function_d224409e(var_90ca1fdd, 1);
	}
	var_3715568c = function_b4cb3503("hendricks_alley_jump", "targetname");
	level.var_2fd26037 thread namespace_d84e54db::function_19e98020(var_3715568c, 64);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
	function_42725e9e();
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_d5067552::function_27bf2e8("sm_alley_nrc_end", 4);
	level thread function_71d278f4(6);
	namespace_d5067552::function_27bf2e8("sm_alley_nrc_end", 1);
	var_933bbc2c = function_b8494651("allies");
	function_81403b2f(var_933bbc2c, level.var_2fd26037);
	foreach(var_d84e54db in var_933bbc2c)
	{
		var_d84e54db notify("hash_d8fe841c");
		if(isdefined(var_d84e54db namespace_6f7b2095::function_e731e36f()))
		{
			var_d84e54db namespace_6f7b2095::function_1b497663("c");
		}
	}
	level thread function_71d278f4(5);
	namespace_4dbf3ae3::function_42e87952("trig_color_alley_end", undefined, undefined, 0);
	var_933bbc2c = undefined;
}

/*
	Name: function_25db07ad
	Namespace: namespace_95b31534
	Checksum: 0xFB747827
	Offset: 0x2290
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_25db07ad()
{
	level endon("hash_7721f10");
	namespace_d5067552::function_27bf2e8("sm_alley_nrc_mid", 1);
	level namespace_ad23e503::function_74d6b22f("start_retreat_scenes");
}

/*
	Name: function_42725e9e
	Namespace: namespace_95b31534
	Checksum: 0x3C0904AA
	Offset: 0x22E8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_42725e9e()
{
	if(!level namespace_ad23e503::function_7922262b("dead_alley_complete") && !level namespace_ad23e503::function_7922262b("player_at_sinkhole"))
	{
		level endon("hash_f2fae592");
		level endon("hash_75cadf3d");
		namespace_2f06d687::function_c0434ff5("back_alley_nrc_flankers", 1);
		namespace_2f06d687::function_45679edd("back_alley_nrc_flankers", 1);
		namespace_4dbf3ae3::function_42e87952("trig_start_back_alley", "targetname");
	}
}

/*
	Name: function_77ea6913
	Namespace: namespace_95b31534
	Checksum: 0x7AD9D82A
	Offset: 0x23B0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_77ea6913()
{
	level thread function_71d278f4(9);
	level namespace_ad23e503::function_1ab5ebec("player_end_battle");
	namespace_2f06d687::function_22356ba7("alley_nrc_end_frontline");
	namespace_d5067552::function_bae40a28("sm_alley_nrc_end");
	namespace_d5067552::function_bae40a28("sm_alley_nrc_end_wasp");
	namespace_2f06d687::function_22356ba7("alley_nrc_end_amws");
	level namespace_ad23e503::function_1ab5ebec("dead_alley_complete");
	level thread namespace_71b8dba1::function_a463d127("kane_systems_are_still_pr_0");
	namespace_d5067552::function_2992720d("sm_alley_egypt_mid", 1);
	level thread namespace_a6a248fc::function_973b77f9();
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	var_d6535c67 = function_b4cb3503("hendricks_pre_vtol", "targetname");
	level.var_2fd26037 thread namespace_d84e54db::function_19e98020(var_d6535c67, 32);
	level thread function_74fb47d();
}

/*
	Name: function_e9214214
	Namespace: namespace_95b31534
	Checksum: 0x83029D7C
	Offset: 0x2550
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_e9214214()
{
	level waittill("hash_c00a7aee");
	var_f377c056 = function_b4cb3503("table_flip_node", "targetname");
	function_d224409e(var_f377c056, 0);
	var_3a90b959 = namespace_2f06d687::function_7387a40a("alley_table_flipper");
	var_3a90b959 endon("hash_128f8789");
	var_3a90b959 function_169cc712(var_3a90b959.var_722885f3, 1, 32);
	var_3a90b959 namespace_d84e54db::function_b4f5e3b9(1);
	var_3a90b959 namespace_d84e54db::function_c9e45d52(1);
	level namespace_cc27597::function_c35e6aab("cin_gen_aie_table_flip", var_3a90b959);
	level namespace_ad23e503::function_1ab5ebec("player_front_alley_end");
	namespace_82b91a51::function_958c7633(var_3a90b959);
	level namespace_ad23e503::function_1ab5ebec("start_retreat_scenes");
	level namespace_cc27597::function_43718187("cin_gen_aie_table_flip", var_3a90b959);
	function_d224409e(var_f377c056, 1);
	var_3a90b959 namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
	var_3a90b959 function_e11ce512();
	var_3a90b959 function_169cc712(var_f377c056, 0, 64);
	var_3a90b959 namespace_d84e54db::function_b4f5e3b9(0);
	var_3a90b959 namespace_d84e54db::function_c9e45d52(0);
	namespace_82b91a51::function_4b741fdc(var_3a90b959);
}

/*
	Name: function_3026c43e
	Namespace: namespace_95b31534
	Checksum: 0xABC5F337
	Offset: 0x2790
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3026c43e()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_wounded_crawl_scene_01");
	var_3a90b959 = namespace_2f06d687::function_7387a40a("wounded_crawl_01_actor");
	level namespace_cc27597::function_43718187("wounded_crawl_scene_01", "targetname", var_3a90b959);
}

/*
	Name: function_bd46ff5e
	Namespace: namespace_95b31534
	Checksum: 0xD77F2330
	Offset: 0x2808
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_bd46ff5e()
{
	var_8060ff07 = namespace_2f06d687::function_22356ba7("wounded_help_01_actor", &namespace_d84e54db::function_b4f5e3b9, 1);
	foreach(var_d84e54db in var_8060ff07)
	{
		var_d84e54db namespace_82b91a51::function_958c7633();
		var_d84e54db namespace_d84e54db::function_ceb883cd("cqb", 1);
		var_d84e54db function_169cc712(namespace_14b42b8a::function_7922262b("wounded_help_scene_01").var_722885f3, 1, 64);
	}
	namespace_84970cc4::function_1ab5ebec(var_8060ff07, "goal");
	foreach(var_d84e54db in var_8060ff07)
	{
		var_d84e54db namespace_82b91a51::function_4b741fdc();
	}
	level namespace_cc27597::function_43718187("wounded_help_scene_01", "targetname", var_8060ff07);
}

/*
	Name: function_ce0ce11f
	Namespace: namespace_95b31534
	Checksum: 0x77ECA6C6
	Offset: 0x29F0
	Size: 0x3EB
	Parameters: 0
	Flags: None
*/
function function_ce0ce11f()
{
	var_3fad69d2 = function_fe0cfd2e("alley_post_rocket_attack_node", "targetname");
	foreach(var_90ca1fdd in var_3fad69d2)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	namespace_cc27597::function_c35e6aab("cin_ram_06_01_safiya_vign_killed");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_rocket_attack");
	var_dfcc01fd = function_c4d5ec1f("quadtank_main_turret_rocketpods_straight");
	var_5513d70a = namespace_14b42b8a::function_7faf4c39("alley_rocket_extra_launch_points", "script_noteworthy");
	for(var_c957f6b6 = 1; var_c957f6b6 <= var_5513d70a.size; var_c957f6b6++)
	{
		var_1cb0b6fb = function_6ada35ba("alley_extra_target_" + var_c957f6b6, "targetname");
		var_1cb0b6fb.var_3a90f16b = 100;
		var_90c119b0 = namespace_14b42b8a::function_7922262b("alley_extra_launch_point_" + var_c957f6b6).var_722885f3;
		function_87f3c622(var_dfcc01fd, var_90c119b0, var_1cb0b6fb.var_722885f3, undefined, var_1cb0b6fb);
		wait(0.35);
	}
	var_377a9c22 = function_6ada35ba("alley_rocket_target", "targetname");
	var_377a9c22.var_3a90f16b = 100;
	var_1987d48e = namespace_14b42b8a::function_7922262b("alley_rocket_launch_point").var_722885f3;
	var_3c91fda1 = function_87f3c622(var_dfcc01fd, var_1987d48e, var_377a9c22.var_722885f3, undefined, var_377a9c22);
	while(function_cb3d1c9b(var_3c91fda1.var_722885f3, var_377a9c22.var_722885f3) > 62500)
	{
		wait(0.05);
	}
	namespace_cc27597::function_43718187("cin_ram_06_01_safiya_vign_killed");
	foreach(var_90ca1fdd in var_3fad69d2)
	{
		function_d224409e(var_90ca1fdd, 1);
	}
	var_377a9c22 function_dc8c8404();
	var_1cb0b6fb function_dc8c8404();
	level notify("hash_c00a7aee");
	function_38d8eaf7();
}

/*
	Name: function_f15f3660
	Namespace: namespace_95b31534
	Checksum: 0xADAF45AC
	Offset: 0x2DE8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f15f3660()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_start_alley_intro");
	level namespace_ad23e503::function_74d6b22f("flak_arena_defend_stop");
	level thread namespace_391e4301::function_1b048d07();
}

/*
	Name: function_38d8eaf7
	Namespace: namespace_95b31534
	Checksum: 0xD4FD262C
	Offset: 0x2E48
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_38d8eaf7()
{
	level namespace_71e9cb84::function_74d6b22f("alley_fxanim_hunters", 1);
}

/*
	Name: function_9f94867c
	Namespace: namespace_95b31534
	Checksum: 0x90FE1041
	Offset: 0x2E78
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_9f94867c()
{
	level namespace_71e9cb84::function_74d6b22f("alley_fxanim_hunters", 0);
}

/*
	Name: function_7762bd57
	Namespace: namespace_95b31534
	Checksum: 0xFF0AC85E
	Offset: 0x2EA8
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_7762bd57()
{
	var_b32b0647 = namespace_14b42b8a::function_7922262b("alley_intro_objective");
	var_8d669714 = namespace_14b42b8a::function_7922262b("alley_middle_objective");
	var_96eed922 = namespace_14b42b8a::function_7922262b("alley_end_objective");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_b32b0647);
	level namespace_ad23e503::function_1ab5ebec("player_alley_start");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_b32b0647);
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_8d669714);
	level namespace_ad23e503::function_1ab5ebec("player_front_alley_end");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_8d669714);
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_96eed922);
	level namespace_ad23e503::function_1ab5ebec("dead_alley_complete");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_96eed922);
}

/*
	Name: function_74fb47d
	Namespace: namespace_95b31534
	Checksum: 0xE0C1B1A1
	Offset: 0x3048
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_74fb47d()
{
	level thread function_71d278f4(4);
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db function_dc8c8404();
	}
	function_bb5a83d6();
	namespace_d5067552::function_2992720d("sm_alley_nrc_intro", 1);
	namespace_d5067552::function_2992720d("sm_alley_nrc_mid", 1);
	var_e3b635fb = function_b8494651("axis", "allies");
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_trigger_used");
	foreach(var_f4b1d057 in var_e3b635fb)
	{
		if(isdefined(var_f4b1d057) && var_f4b1d057 != level.var_2fd26037)
		{
			var_f4b1d057 function_dc8c8404();
		}
	}
}

/*
	Name: function_bb5a83d6
	Namespace: namespace_95b31534
	Checksum: 0xC43C1DA8
	Offset: 0x31D0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_bb5a83d6()
{
	var_70603b4b = function_99201f25("veh_vtol_ride_player_truck_vh", "targetname");
	foreach(var_6772c32b in var_70603b4b)
	{
		var_6772c32b.var_3e3a41eb = 1;
		var_6772c32b notify("hash_128f8789");
		if(!function_5b49d38c(var_6772c32b))
		{
			var_6772c32b function_dc8c8404();
		}
	}
}

/*
	Name: function_71d278f4
	Namespace: namespace_95b31534
	Checksum: 0x6BBFD96C
	Offset: 0x32D0
	Size: 0x1E9
	Parameters: 1
	Flags: None
*/
function function_71d278f4(var_71905650)
{
	level notify("hash_c423ca59");
	level endon("hash_c360cc23");
	level endon("hash_c423ca59");
	var_30e37099 = namespace_14b42b8a::function_7922262b("alley_end_objective").var_722885f3;
	while(1)
	{
		var_f72a8f03 = function_525ae497(namespace_2f06d687::function_289e6fd1("alley_egypt_intro"), namespace_2f06d687::function_289e6fd1("alley_egypt_mid"), 0, 0);
		var_51e5da07 = var_f72a8f03.size - var_71905650;
		if(var_51e5da07 > 0)
		{
			var_9f7060a9 = function_f926d8e8(var_f72a8f03, var_30e37099, 0, var_51e5da07);
			while(var_9f7060a9.size > 0)
			{
				for(var_c957f6b6 = 0; var_c957f6b6 < var_9f7060a9.size; var_c957f6b6++)
				{
					if(isdefined(var_9f7060a9[var_c957f6b6]))
					{
						var_9f7060a9[var_c957f6b6] namespace_6f7b2095::function_54bdb053();
						var_9f7060a9[var_c957f6b6] thread function_c8849158(200);
						continue;
					}
					function_6c668988(var_9f7060a9, var_c957f6b6);
				}
				namespace_84970cc4::function_1ab5ebec(var_9f7060a9, "delete_success", 10);
				wait(0.05);
				break;
			}
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_c8849158
	Namespace: namespace_95b31534
	Checksum: 0x7AC8746D
	Offset: 0x34C8
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_c8849158(var_ccd4343c)
{
	self notify("hash_a348be44");
	self endon("hash_128f8789");
	self endon("hash_a348be44");
	var_2540d664 = 0;
	while(var_2540d664 == 0)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(function_7d15e2f8(self.var_722885f3, var_5dc5e20a.var_722885f3) > var_ccd4343c && var_5dc5e20a namespace_82b91a51::function_d61b846f(self.var_722885f3, undefined, 0) == 0)
			{
				var_2540d664 = 1;
			}
		}
		if(var_2540d664 == 0)
		{
			wait(1);
		}
	}
	self notify("hash_264eced4");
	self function_dc8c8404();
}

