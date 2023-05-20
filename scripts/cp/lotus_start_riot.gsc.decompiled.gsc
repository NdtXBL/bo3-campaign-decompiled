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
	Name: function_c35e6aab
	Namespace: namespace_3b39ab74
	Checksum: 0xB1F35AFD
	Offset: 0x1150
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	level namespace_ad23e503::function_c35e6aab("intro_igc_done");
	level namespace_ad23e503::function_c35e6aab("start_hakim_speech");
	level namespace_ad23e503::function_c35e6aab("hakim_seen");
	level namespace_ad23e503::function_c35e6aab("hakim_assassination_start");
	level namespace_ad23e503::function_c35e6aab("khalil_in_door_vignette");
	level namespace_ad23e503::function_c35e6aab("hakim_security_door_open");
	namespace_71e9cb84::function_50f16166("world", "sndHakimPaVox", 1, 3, "int");
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
function function_e86a5395(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	level namespace_cc27597::function_8f9f34e0("cin_lot_01_planb_3rd_sh160", &function_1320bd25, "done");
	level namespace_cc27597::function_c35e6aab("cin_lot_01_planb_3rd_sh020");
	function_35dc675a();
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
	namespace_76d95162::function_d9f49fba(0);
	function_47dcfae8();
	level thread namespace_431cac9::function_484bc3aa(1);
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_hakim_assassinate");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_hakim_locate");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 1);
	namespace_d7916d65::function_c32ba481();
	level namespace_82b91a51::function_46d3a558(&"CP_MI_CAIRO_LOTUS_INTRO_LINE_1_FULL", "", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_2_FULL", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_2_SHORT", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_3_FULL", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_3_SHORT", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_4_FULL", &"CP_MI_CAIRO_LOTUS_INTRO_LINE_4_SHORT");
	level namespace_82b91a51::function_7e61de2b(0, "black", "lotus_fade_in");
	level thread namespace_66fe78fb::function_2c69b4a0();
	level thread namespace_cc27597::function_43718187("cin_lot_01_planb_3rd_sh020");
	level waittill("hash_9a9d029a");
	level namespace_82b91a51::function_593c2af4(1, "black", "lotus_fade_in");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	if(isdefined(level.var_19d8bbf0))
	{
		level thread [[level.var_19d8bbf0]]();
	}
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_overwhelm_siege1st", &function_b73b584a, "init");
	level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_overwhelm_siege1st");
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
function function_1320bd25(var_c77d2837)
{
	namespace_1d795d47::function_be8adfb8("plan_b");
	level thread namespace_82b91a51::function_a0938376();
	level namespace_82b91a51::function_93831e79("start_the_riots");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 0);
	level namespace_ad23e503::function_74d6b22f("intro_igc_done");
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
function function_88b5ab32(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_82b91a51::function_67520c6a(1, undefined, &namespace_431cac9::function_6fc3995f);
	function_6ada35ba("kill_after_mobileride", "targetname") function_175e6b8e(0);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_atrium_ravens_bundle");
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
	level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_open_door");
	level namespace_cc27597::function_c35e6aab("cin_lot_04_05_security_vign_melee_variation2");
	level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_scuffle_loop");
	level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_overwhelm_siege2nd");
	level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_overwhelm");
	level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_overwhelm_alt");
	level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_overwhelm_alt2");
	level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_takeout");
	level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_subdued");
	var_5cf8a2dd = function_6ada35ba("start_dead_scene", "targetname");
	var_5cf8a2dd namespace_4dbf3ae3::function_42e87952(undefined, undefined, var_5cf8a2dd);
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
function function_5fb7ec5(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		function_47dcfae8();
		level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_overwhelm_siege1st", &function_b73b584a, "init");
		level namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_overwhelm_siege1st");
		function_35dc675a();
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_hakim_assassinate");
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_hakim_locate");
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		level thread namespace_66fe78fb::function_973b77f9();
		level namespace_ad23e503::function_74d6b22f("intro_igc_done");
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_66fe78fb::function_973b77f9();
	level namespace_cc27597::function_c35e6aab("hakim_assassination_ravens", "targetname");
	function_c5116fb2();
	level thread namespace_431cac9::function_a516f0de("raven_decal_start_riots01", 5, 2);
	level namespace_82b91a51::function_ef3f75eb("sndLRstart");
	level namespace_431cac9::function_484bc3aa(1);
	level thread function_54e4839a();
	level thread function_e2d5189a();
	namespace_4dbf3ae3::function_1ab5ebec("riots_wave_two");
	level thread function_cf0c15cc();
	level thread namespace_431cac9::function_a516f0de("raven_decal_start_riots02");
	level namespace_cc27597::function_c35e6aab("cin_lot_02_02_startriots_vign_overridelock");
	var_f7ebb04b = namespace_4dbf3ae3::function_1ab5ebec("riots_wave_three");
	var_65669d7b = var_f7ebb04b.var_aef176e7;
	var_14f7f6f4 = 0;
	if(isdefined(var_65669d7b) && function_65f192a6(var_65669d7b) && var_65669d7b function_f3b38c23())
	{
		var_14f7f6f4 = 1;
	}
	level thread function_8ded8093(var_14f7f6f4);
	namespace_2f06d687::function_72214789("ai_group_riot_phalanx");
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	level notify("hash_c087d549", 1);
	namespace_4dbf3ae3::function_42e87952("color_phalanx_cleared");
	function_69903fa7(1);
	level thread function_786aab8d();
	if(level namespace_ad23e503::function_7922262b("khalil_in_door_vignette"))
	{
		level namespace_ad23e503::function_f0c72955(5, function_84970cc4("khalil_in_door_vignette"));
	}
	level thread namespace_cc27597::function_43718187("cin_lot_02_02_startriots_vign_overridelock");
	level thread namespace_82b91a51::function_d8eaed3d(2);
	level namespace_ad23e503::function_1ab5ebec("hakim_assassination_start");
	level namespace_82b91a51::function_ef3f75eb("sndLRstop");
	namespace_1d795d47::function_be8adfb8("start_the_riots");
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
	var_489b2980 = namespace_14b42b8a::function_7922262b("s_riots_phalanx_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b("s_riots_phalanx_end").var_722885f3;
	var_f835ddae = function_6ada35ba("sp_riots_phalanx", "targetname");
	if(var_ab4c4a9e)
	{
		var_f835ddae.var_55879659 = 1;
	}
	function_9b385ca5();
	var_2f359655 = var_2f359655;
	function_e6cab0ff(var_2f359655, "phalanx_reverse_wedge", var_489b2980, var_491bc153, 2, 5, var_f835ddae);
	var_f835ddae function_dc8c8404();
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
function function_a3cc6d62(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	namespace_80983c42::function_80983c42("fx_interior_ambient_falling_debris_tower1");
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
function function_92206070(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_ad23e503::function_74d6b22f("hakim_security_door_open");
		var_f2c7e89 = function_6ada35ba("keypad_door01", "targetname");
		if(isdefined(var_f2c7e89))
		{
			var_f2c7e89 function_8bdea13c(100, 0.5);
		}
		level thread function_8a2e81c3();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		function_47dcfae8();
		function_69903fa7(1);
		function_c5116fb2();
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		level namespace_cc27597::function_8f9f34e0("cin_lot_03_01_hakim_1st_kill_player", &function_9030e073);
		level namespace_cc27597::function_c35e6aab("cin_lot_03_01_hakim_1st_kill_player");
		namespace_d7916d65::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
		namespace_4dbf3ae3::function_42e87952("override_lock_done");
		level namespace_ad23e503::function_1ab5ebec("hakim_assassination_start");
	}
	while(!isdefined(level.var_81ba7f9e))
	{
		wait(0.05);
	}
	if(isdefined(level.var_f43e3f7))
	{
		level thread [[level.var_f43e3f7]]();
	}
	level thread namespace_431cac9::function_511cba45("atrium_to_security", 3, "cp_lotus_projection_ravengrafitti3");
	level namespace_cc27597::function_8f9f34e0("cin_lot_03_01_hakim_1st_kill_player", &function_cb65e794, "play");
	level thread namespace_cc27597::function_43718187("cin_lot_03_01_hakim_1st_kill_player", level.var_81ba7f9e);
	level.var_81ba7f9e = undefined;
	level waittill("hash_cdac0264");
	level namespace_cc27597::function_8f9f34e0("cin_lot_03_01_hakim_vign_toss", &function_caba12d2);
	level thread namespace_cc27597::function_43718187("cin_lot_03_01_hakim_vign_toss");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		wait(1);
	}
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_cc27597::function_43718187("cin_lot_04_01_security_vign_finishoff");
	}
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_cc27597::function_43718187("cin_lot_04_01_security_vign_finishoff_v02");
	}
	if(!namespace_cc27597::function_b1f75ee9())
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
function function_cb65e794(var_c77d2837)
{
	level thread function_11c401c8();
	level thread function_fd777f22();
	level thread function_9fe3e84();
	namespace_8e4b89e2::function_de57d320();
	level thread namespace_cc27597::function_c35e6aab("cin_lot_03_01_hakim_vign_toss");
	level thread namespace_cc27597::function_c35e6aab("cin_lot_04_01_security_vign_finishoff");
	level thread namespace_cc27597::function_c35e6aab("cin_lot_04_01_security_vign_weaponcivs");
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
	level thread namespace_cc27597::function_43718187("assassination_bodies", "targetname");
	level namespace_cc27597::function_fcf56ab5("cin_lot_02_02_startriots_vign_bangwindow");
	level namespace_cc27597::function_fcf56ab5("cin_gen_crowd_riot_activity");
	namespace_4dbf3ae3::function_42e87952("post_hakim_armed_civs");
	level thread namespace_cc27597::function_43718187("cin_lot_04_01_security_vign_weaponcivs");
	level thread namespace_cc27597::function_43718187("cin_lot_04_01_security_vign_weaponguards");
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
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_83fd42b5();
	}
	level waittill("hash_fa29b03d");
	level thread namespace_66fe78fb::function_36e942f6();
	level notify("hash_fb8a92fd");
	level namespace_71e9cb84::function_74d6b22f("swap_crowd_to_riot", 1);
	level namespace_82b91a51::function_93831e79("apartments");
	namespace_1d795d47::function_be8adfb8("general_hakim");
	wait(1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_4890e520();
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
function function_9030e073(var_c77d2837)
{
	var_c77d2837["player 1"] waittill("hash_5790cd4a");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("pickup_hakim_rumble_loop", 1);
		}
		var_c77d2837["player 1"] waittill("hash_957e5940");
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("pickup_hakim_rumble_loop", 0);
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
function function_14166bcb(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_hakim_assassinate");
	function_69903fa7(0);
	namespace_76d95162::function_d9f49fba(1);
	level thread namespace_431cac9::function_fda257c3();
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	namespace_80983c42::function_80983c42("fx_interior_ambient_tracer_fire_atrium");
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
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_open_door", &function_cd0fea70, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_open_door", &function_90a05c64);
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation2", &function_198186d, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_04_05_security_vign_melee_variation2", &namespace_431cac9::function_f2596cbe, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_scuffle_loop", &function_c1943fd, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_overwhelm_siege2nd", &function_adfe9569, "init");
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_overwhelm", &function_9f2861ce);
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_overwhelm", &function_2e3bc362);
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_overwhelm_siege2nd", &function_ace07855);
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_overwhelm_alt", &function_e85196be);
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_overwhelm_alt2", &function_a5b8cd1e);
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_overwhelm_alt2", &function_2e3bc362);
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_takeout", &function_50b42010);
	level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_subdued", &function_c0caa0cf, "init");
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
	namespace_4dbf3ae3::function_1ab5ebec("riots_wave_one");
	level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_scuffle_loop");
	level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_overwhelm");
	namespace_4dbf3ae3::function_1ab5ebec("riots_wave_two");
	if(level namespace_cc27597::function_444aea32("cin_lot_02_01_startriots_vign_overwhelm_siege1st"))
	{
		level notify("hash_7c5c433c");
		level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_overwhelm_siege1st");
	}
	level namespace_cc27597::function_a5195379("cin_lot_04_05_security_vign_melee_variation2", &function_198186d);
	level namespace_cc27597::function_a5195379("cin_lot_04_05_security_vign_melee_variation2", &namespace_431cac9::function_f2596cbe);
	level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_overwhelm_siege2nd");
	namespace_4dbf3ae3::function_1ab5ebec("riots_wave_three");
	level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_overwhelm_end");
	level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_overwhelm_alt");
	level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_overwhelm_alt2");
	level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_takeout");
	namespace_4dbf3ae3::function_1ab5ebec("riots_wave_four");
	level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_subdued");
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
function function_c1943fd(var_c77d2837)
{
	var_2eecd77a = var_c77d2837["scuffle_guard"];
	var_14c918e8 = var_c77d2837["scuffle_civ"];
	var_2eecd77a namespace_d84e54db::function_b4f5e3b9(1);
	var_2eecd77a namespace_d84e54db::function_c9e45d52(1);
	namespace_4dbf3ae3::function_1ab5ebec("riots_wave_one");
	while(function_5b49d38c(var_2eecd77a))
	{
		if(function_87ea89a(level.var_9db406db.var_722885f3, var_2eecd77a.var_722885f3) < 400)
		{
			level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
			var_2eecd77a namespace_d84e54db::function_c9e45d52(0);
			var_2eecd77a waittill("hash_128f8789");
			level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
			break;
		}
		wait(0.25);
	}
	if(function_5b49d38c(var_14c918e8))
	{
		level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_scuffle_cuvrun");
		wait(1);
		if(function_5b49d38c(var_14c918e8))
		{
			var_14c918e8 function_169cc712(function_b4cb3503("scuffle_retreat_goal", "targetname"), 1);
			var_14c918e8 thread namespace_431cac9::function_c8849158(500, 15);
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
function function_50b42010(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
		var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
		var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
	}
	level thread function_c06f06a5(var_c77d2837, self);
	level waittill("hash_f68ac3a");
	if(function_5b49d38c(var_c77d2837["takeout_guard"]))
	{
		level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_takeout_civkills", &function_da13419c);
		level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_takeout_civkills", &function_693d9b17);
		level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_takeout_civkills", &function_9ff47248);
		level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_takeout_civkills");
	}
	else
	{
		level namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_takeout_playerkills", &function_da13419c);
		level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_takeout_playerkills");
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
function function_c06f06a5(var_c77d2837, var_1cbcb46d)
{
	level endon("hash_f68ac3a");
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "death");
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5b49d38c(var_a3d46ee4) && var_a3d46ee4.var_3e94206a == "axis")
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(0);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
			self thread namespace_cc27597::function_fcf56ab5();
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
function function_693d9b17(var_c77d2837)
{
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "death");
	if(function_5b49d38c(var_c77d2837["takeout_guard"]))
	{
		if(var_c77d2837["takeout_guard"].var_f8da79d2 === 1)
		{
			var_c77d2837["takeout_guard"] function_422037f5();
			var_c77d2837["takeout_guard"] function_d7a0a9d8(1);
			var_c77d2837["takeout_guard"] function_2992720d();
		}
		else
		{
			var_c77d2837["takeout_guard"] namespace_d84e54db::function_b4f5e3b9(0);
			var_c77d2837["takeout_guard"] namespace_d84e54db::function_c9e45d52(0);
		}
	}
	self thread namespace_cc27597::function_fcf56ab5();
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
function function_9ff47248(var_c77d2837)
{
	var_c77d2837["takeout_guard"] waittill("hash_b5b1039c");
	var_c77d2837["takeout_guard"].var_f8da79d2 = 1;
	var_c77d2837["takeout_guard"] thread namespace_431cac9::function_3e9f1592();
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
function function_da13419c(var_c77d2837)
{
	var_ac318b32 = function_fe0cfd2e("takeout_retreat_goals", "targetname");
	var_52177c84 = 0;
	wait(1);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5b49d38c(var_a3d46ee4) && var_a3d46ee4.var_3e94206a == "allies")
		{
			var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
			var_a3d46ee4 function_169cc712(var_ac318b32[var_52177c84], 1);
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
function function_b73b584a(var_c77d2837)
{
	var_ac318b32 = function_fe0cfd2e("initial_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			level namespace_82b91a51::function_958c7633(var_a3d46ee4);
			if(var_a3d46ee4.var_3e94206a == "allies")
			{
				var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
				var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
				var_a3d46ee4 function_169cc712(var_ac318b32[var_52177c84], 1);
				var_52177c84++;
			}
		}
	}
	level thread function_f4561e7c(self, var_c77d2837);
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
function function_f4561e7c(var_1cbcb46d, var_c77d2837)
{
	level endon("hash_7c5c433c");
	level namespace_ad23e503::function_1ab5ebec("intro_igc_done");
	namespace_84970cc4::function_ce1a87ca(var_c77d2837, &namespace_82b91a51::function_4b741fdc);
	namespace_84970cc4::function_966ecb29(var_c77d2837, &function_51922beb);
	level waittill("hash_6fdc4680");
	level namespace_cc27597::function_fcf56ab5(var_1cbcb46d.var_1157a889);
	level.var_a1e195e4 = 0;
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5b49d38c(var_a3d46ee4) && var_a3d46ee4.var_3e94206a == "axis")
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(0);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
			level.var_a1e195e4++;
			level.var_3a013a47 = 0;
			var_a3d46ee4 thread function_b7323de8();
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
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	self waittill("hash_128f8789");
	level.var_3a013a47++;
	if(level.var_3a013a47 >= level.var_a1e195e4)
	{
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
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
		self namespace_82b91a51::function_5b7e3888("death", "damage", "bulletwhizby");
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
function function_adfe9569(var_c77d2837)
{
	namespace_4dbf3ae3::function_1ab5ebec("riots_wave_one");
	var_ac318b32 = function_fe0cfd2e("second_siege_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 namespace_82b91a51::function_958c7633();
			if(var_a3d46ee4.var_3e94206a == "allies")
			{
				var_a3d46ee4 function_169cc712(var_ac318b32[var_52177c84], 1);
				var_52177c84++;
				continue;
			}
			var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
		}
	}
	level thread function_17d17b52(var_c77d2837, self);
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
function function_ace07855(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
			if(var_a3d46ee4.var_3e94206a == "allies")
			{
				var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 5);
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
function function_17d17b52(var_c77d2837, var_294306eb)
{
	level endon("hash_2ff600cd");
	var_85e30c70 = function_84970cc4(var_c77d2837["second_riots_civ_1"], var_c77d2837["second_riots_civ_2"], var_c77d2837["second_riots_guard_1"]);
	namespace_84970cc4::function_1d74ca91(var_85e30c70, "death");
	if(function_5b49d38c(var_c77d2837["second_riots_guard_1"]))
	{
		var_c77d2837["second_riots_guard_1"] function_422037f5();
		var_c77d2837["second_riots_guard_1"] function_d7a0a9d8(1);
		var_c77d2837["second_riots_guard_1"] function_2992720d();
	}
	level namespace_cc27597::function_fcf56ab5(var_294306eb.var_1157a889);
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
function function_cd0fea70(var_c77d2837)
{
	var_c77d2837["open_door_guard"] namespace_d84e54db::function_b4f5e3b9(1);
	var_c77d2837["open_door_guard"] namespace_d84e54db::function_c9e45d52(1);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4) && function_5b49d38c(var_a3d46ee4))
		{
			namespace_82b91a51::function_958c7633(var_a3d46ee4);
		}
	}
	namespace_4dbf3ae3::function_1ab5ebec("start_the_riots_breadcrumb");
	level namespace_ad23e503::function_74d6b22f("khalil_in_door_vignette");
	level.var_9db406db namespace_6f7b2095::function_54bdb053();
	level.var_9db406db namespace_d84e54db::function_c9e45d52(1);
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("sprint", 1);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("cqb", 0);
	if(function_5b49d38c(var_c77d2837["open_door_guard"]))
	{
		var_c77d2837["open_door_guard"] thread namespace_431cac9::function_5b57004a();
		var_c77d2837["open_door_guard"] thread function_ef4d5e6c();
		namespace_82b91a51::function_4b741fdc(var_c77d2837["open_door_guard"]);
	}
	level thread namespace_cc27597::function_c35e6aab("cin_lot_02_01_startriots_vign_open_door_khalil");
	level.var_9db406db.var_7dfaf62 = 32;
	level.var_9db406db namespace_82b91a51::function_9fcf3cd8(10, "goal", "door_guard_killed");
	if(!function_5b49d38c(var_c77d2837["open_door_guard"]))
	{
		foreach(var_a3d46ee4 in var_c77d2837)
		{
			if(function_e70ab977(var_a3d46ee4))
			{
				namespace_82b91a51::function_4b741fdc(var_a3d46ee4);
			}
		}
		self thread namespace_cc27597::function_43718187();
	}
	else
	{
		level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_open_door_khalil");
		if(!level.var_9db406db namespace_957e94ce::function_7922262b("scriptedanim"))
		{
			level.var_9db406db namespace_957e94ce::function_1ff63c0f(3, function_84970cc4("scriptedanim"));
		}
		foreach(var_a3d46ee4 in var_c77d2837)
		{
			if(function_e70ab977(var_a3d46ee4))
			{
				namespace_82b91a51::function_4b741fdc(var_a3d46ee4);
			}
		}
		if(!function_5b49d38c(var_c77d2837["open_door_guard"]))
		{
			level namespace_cc27597::function_fcf56ab5("cin_lot_02_01_startriots_vign_open_door_khalil");
			self thread namespace_cc27597::function_43718187();
		}
		else
		{
			self thread namespace_cc27597::function_43718187();
			level.var_9db406db namespace_82b91a51::function_c9aa1ff("khalil_melee_started", 5);
			if(function_5b49d38c(var_c77d2837["open_door_guard"]))
			{
				var_c77d2837["open_door_guard"] thread namespace_431cac9::function_3e9f1592();
			}
			else
			{
				level namespace_cc27597::function_fcf56ab5("cin_lot_02_01_startriots_vign_open_door_khalil");
			}
		}
	}
	level.var_9db406db namespace_d84e54db::function_ceb883cd("sprint", 0);
	var_a8015c01 = function_b4cb3503("post_door_open_khalil", "targetname");
	level.var_9db406db function_169cc712(var_a8015c01, 1);
	level.var_9db406db waittill("hash_41d1aaf0");
	wait(0.5);
	level.var_9db406db namespace_d84e54db::function_c9e45d52(0);
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(0);
	level.var_9db406db namespace_6f7b2095::function_bae40a28();
	level namespace_ad23e503::function_9d134160("khalil_in_door_vignette");
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
	self waittill("hash_128f8789");
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
function function_90a05c64(var_c77d2837)
{
	var_ac318b32 = function_fe0cfd2e("open_door_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			if(var_a3d46ee4.var_3e94206a == "allies")
			{
				var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
				var_a3d46ee4 function_169cc712(var_ac318b32[var_52177c84], 1);
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
function function_198186d(var_c77d2837)
{
	level endon("hash_2ff600cd");
	var_ac318b32 = function_fe0cfd2e("hallway_1_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
			if(var_a3d46ee4.var_3e94206a == "allies")
			{
				var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
				var_a3d46ee4 function_169cc712(var_ac318b32[var_52177c84], 1);
				var_52177c84++;
			}
		}
	}
	var_c77d2837["vign_melee_nrc_1"] waittill("hash_b5b1039c");
	var_c77d2837["vign_melee_nrc_1"] thread namespace_431cac9::function_3e9f1592();
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
function function_2e3bc362(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
			var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
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
function function_9f2861ce(var_c77d2837)
{
	level endon("hash_2ff600cd");
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "death");
	namespace_4dbf3ae3::function_42e87952("riots_wave_three", "targetname");
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
function function_e85196be(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
			var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
		}
	}
	if(function_5b49d38c(var_c77d2837["overwhelm_alt_guard"]))
	{
		var_c77d2837["overwhelm_alt_guard"] thread namespace_431cac9::function_3e9f1592();
	}
	level thread function_2e629842(var_c77d2837, var_c77d2837["overwhelm_alt_shield"], self);
	level thread function_306be92b(var_c77d2837, self);
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
function function_2e629842(var_c77d2837, var_2d756179, var_1cbcb46d)
{
	function_81403b2f(var_c77d2837, var_c77d2837["overwhelm_alt_guard"]);
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "death");
	level thread namespace_cc27597::function_fcf56ab5(var_1cbcb46d.var_1157a889);
	var_2d756179 function_470f7e4c(0);
	var_2d756179 function_822f0cc5(var_2d756179.var_722885f3, VectorScale((0, 0, -1), 0.1));
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
function function_306be92b(var_c77d2837, var_1cbcb46d)
{
	var_ac318b32 = function_fe0cfd2e("overwhelm_alt_retreat_goals", "targetname");
	var_52177c84 = 0;
	do
	{
		wait(0.2);
	}
	while(!level namespace_cc27597::function_444aea32(var_1cbcb46d.var_1157a889));
	wait(0.05);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5b49d38c(var_a3d46ee4) && var_a3d46ee4.var_3e94206a === "allies")
		{
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
			var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
			var_a3d46ee4 function_169cc712(var_ac318b32[var_52177c84], 1);
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
function function_a5b8cd1e(var_c77d2837)
{
	level thread function_d6a7c0f4(var_c77d2837, self);
	if(function_5b49d38c(var_c77d2837["overwhelm_alt2_guard"]))
	{
		var_c77d2837["overwhelm_alt2_guard"] thread namespace_431cac9::function_3e9f1592();
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
function function_d6a7c0f4(var_c77d2837, var_1cbcb46d)
{
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "death");
	level namespace_cc27597::function_fcf56ab5(var_1cbcb46d.var_1157a889);
	var_ac318b32 = function_fe0cfd2e("overwhelm_alt2_retreat_goals", "targetname");
	var_52177c84 = 0;
	wait(0.05);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5b49d38c(var_a3d46ee4) && var_a3d46ee4.var_3e94206a === "allies")
		{
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
			var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
			var_a3d46ee4 function_169cc712(var_ac318b32[var_52177c84], 1);
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
function function_c0caa0cf(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
		}
	}
	namespace_4dbf3ae3::function_1ab5ebec("riots_wave_four");
	var_c77d2837["subdued_guard"] namespace_82b91a51::function_9fcf3cd8(6, "damage");
	wait(0.05);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5b49d38c(var_a3d46ee4))
		{
			if(var_a3d46ee4.var_3e94206a == "axis")
			{
				var_a3d46ee4 function_169cc712(var_a3d46ee4.var_722885f3);
				var_a3d46ee4 function_470f7e4c();
				var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
				var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(0);
			}
		}
	}
	namespace_cc27597::function_8f9f34e0("cin_lot_02_01_startriots_vign_subdued_kill", &function_80bcd913);
	level thread namespace_cc27597::function_43718187("cin_lot_02_01_startriots_vign_subdued_kill");
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
function function_80bcd913(var_c77d2837)
{
	var_ac318b32 = function_fe0cfd2e("subdued_retreat_goals", "targetname");
	var_52177c84 = 0;
	wait(1.5);
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_5b49d38c(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(0);
			var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
			var_a3d46ee4 function_169cc712(var_ac318b32[var_52177c84], 1);
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
function function_caba12d2(var_c77d2837)
{
	level endon("hash_402e6fa1");
	var_ac318b32 = function_fe0cfd2e("toss_retreat_goals", "targetname");
	var_52177c84 = 0;
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 namespace_d84e54db::function_b4f5e3b9(1);
			var_a3d46ee4 namespace_d84e54db::function_c9e45d52(1);
			var_a3d46ee4 thread namespace_431cac9::function_5b57004a();
			if(var_a3d46ee4.var_3e94206a == "allies")
			{
				var_a3d46ee4 thread namespace_431cac9::function_c8849158(500, 15);
				var_a3d46ee4 function_169cc712(var_ac318b32[var_52177c84], 1);
				var_52177c84++;
			}
		}
	}
	level thread function_461f82a0(var_c77d2837, self);
	if(isdefined(var_c77d2837["assassination_nrc"]))
	{
		var_c77d2837["assassination_nrc"] waittill("hash_b5b1039c");
		if(isdefined(var_c77d2837["assassination_nrc"]))
		{
			var_c77d2837["assassination_nrc"] thread namespace_431cac9::function_3e9f1592();
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
function function_461f82a0(var_c77d2837, var_1cbcb46d)
{
	level endon("hash_402e6fa1");
	namespace_84970cc4::function_1d74ca91(var_c77d2837, "death");
	if(function_5b49d38c(var_c77d2837["assassination_nrc"]))
	{
		var_c77d2837["assassination_nrc"] namespace_d84e54db::function_c9e45d52(0);
		var_c77d2837["assassination_nrc"] namespace_d84e54db::function_b4f5e3b9(0);
	}
	var_1cbcb46d namespace_cc27597::function_fcf56ab5();
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
	namespace_d0ef8521::function_45d1556("start_the_riots_breadcrumb");
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
	level namespace_71b8dba1::function_a463d127("kane_okay_nearest_secur_0", 1);
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_be_on_your_guard_th_0", 0.5);
	level namespace_ad23e503::function_1ab5ebec("hakim_seen");
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_there_he_is_general_0");
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_cairo_waits_to_attac_0", 3);
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
	if(level.var_31aefea8 === "start_the_riots")
	{
		level namespace_ad23e503::function_1ab5ebec("start_hakim_speech");
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
		level.var_6bd6767c function_921a1574("evt_mic_feedback");
		level namespace_71e9cb84::function_74d6b22f("sndHakimPaVox", 5);
		level.var_6bd6767c function_39419ae5();
		level.var_6bd6767c notify("hash_87b505ea");
		level.var_6bd6767c notify("hash_3962ec94");
		level.var_6bd6767c notify("hash_ad4a3c97");
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
	namespace_cc27597::function_8f9f34e0("cin_lot_02_02_startriots_vign_speech", &function_8a3bdac, "init");
	level namespace_cc27597::function_c35e6aab("hakim_speech", "targetname");
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
function function_8a3bdac(var_c77d2837)
{
	if(!isdefined(level.var_6bd6767c))
	{
		level.var_6bd6767c = var_c77d2837["general_hakim"];
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
function function_4410b0a7(var_29a3f99f, var_56d74922)
{
	level namespace_71e9cb84::function_74d6b22f("sndHakimPaVox", var_56d74922);
	level.var_6bd6767c namespace_71b8dba1::function_81141386(var_29a3f99f);
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
function function_69903fa7(var_aa7b6eee)
{
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(var_aa7b6eee);
	}
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db namespace_d84e54db::function_b4f5e3b9(var_aa7b6eee);
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
	namespace_76d95162::function_d9f49fba(0);
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("disablesprint", 1);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("useGrenades", 0);
	}
	if(isdefined(level.var_9db406db))
	{
		level.var_9db406db namespace_d84e54db::function_ceb883cd("cqb", 1);
		level.var_9db406db namespace_d84e54db::function_ceb883cd("disablesprint", 1);
		level.var_9db406db namespace_d84e54db::function_ceb883cd("useGrenades", 0);
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
	level waittill("hash_7b386e04");
	level thread namespace_cc27597::function_43718187("hakim_door_raven_fly_away", "targetname");
	var_f2c7e89 = function_6ada35ba("keypad_door01", "targetname");
	var_f2c7e89 function_8bdea13c(100, 0.5);
	var_f2c7e89 function_921a1574("evt_security_door_open");
	var_f2c7e89 waittill("hash_a21db68a");
	level namespace_ad23e503::function_74d6b22f("hakim_security_door_open");
	var_3f3fb113 = function_6ada35ba("override_lock_done", "targetname");
	if(isdefined(level.var_da26fef8))
	{
		level thread [[level.var_da26fef8]]();
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
	self endon("hash_128f8789");
	self.var_e9bd0b3a = self.var_b07228b6;
	self waittill("hash_41d1aaf0");
	self function_2992720d();
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
	namespace_80983c42::function_80983c42("fx_interior_ambient_tracer_fire_atrium");
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
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_hakim_locate");
	var_e4f2f922 = function_6ada35ba("start_the_riots_done", "targetname");
	level namespace_ad23e503::function_1ab5ebec("hakim_security_door_open");
	var_bfe9d19a = namespace_82b91a51::function_14518e76(var_e4f2f922, &"cp_level_lotus_hakim_door", &"CP_MI_CAIRO_LOTUS_OPEN", &function_c8f71637);
}

/*
	Name: function_c8f71637
	Namespace: namespace_3b39ab74
	Checksum: 0x28D9FF76
	Offset: 0x5D38
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_c8f71637(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	level.var_81ba7f9e = var_6bfe1586;
	var_935a64f = function_6ada35ba("mdl_general_door", "targetname");
	var_935a64f function_dc8c8404();
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_hakim_door");
	self namespace_a230c2b1::function_c5a39495(1);
}

