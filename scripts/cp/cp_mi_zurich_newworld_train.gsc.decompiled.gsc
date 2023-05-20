#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_newworld;
#using scripts\cp\cp_mi_zurich_newworld_accolades;
#using scripts\cp\cp_mi_zurich_newworld_sound;
#using scripts\cp\cp_mi_zurich_newworld_util;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_c7062b04;

/*
	Name: function_7ce22dd3
	Namespace: namespace_c7062b04
	Checksum: 0xC05D0137
	Offset: 0x2258
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_7ce22dd3(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	namespace_76d95162::function_d9f49fba(0);
	function_cbf76d8c();
	function_de13d6e2();
	level thread namespace_e38c3c58::function_5a7ad30();
	function_50de96c5();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_50de96c5
	Namespace: namespace_c7062b04
	Checksum: 0x2263FF45
	Offset: 0x2300
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_50de96c5()
{
	level namespace_cc27597::function_c35e6aab("cin_new_01_01_whiteinfinite_1st_intro");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_train_intro_glass_bundle");
	level thread function_19b91013();
	namespace_d7916d65::function_c32ba481(1);
	level thread namespace_ce0e5f06::function_30ec5bf7();
	level namespace_82b91a51::function_46d3a558(&"CP_MI_ZURICH_NEWWORLD_INTRO_LINE_1_FULL", "", &"CP_MI_ZURICH_NEWWORLD_INTRO_LINE_3_FULL", &"CP_MI_ZURICH_NEWWORLD_INTRO_LINE_3_SHORT", &"CP_MI_ZURICH_NEWWORLD_INTRO_LINE_4_FULL", &"CP_MI_ZURICH_NEWWORLD_INTRO_LINE_4_SHORT", &"CP_MI_ZURICH_NEWWORLD_INTRO_LINE_5_FULL", &"CP_MI_ZURICH_NEWWORLD_INTRO_LINE_5_SHORT", "", "");
	if(isdefined(level.var_f7d455df))
	{
		level thread [[level.var_f7d455df]]();
	}
	level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_train_intro_glass_bundle", &function_f910c34a);
	level namespace_cc27597::function_8f9f34e0("cin_new_01_01_whiteinfinite_1st_intro", &function_7b872728);
	level namespace_cc27597::function_8f9f34e0("cin_new_01_01_whiteinfinite_1st_intro", &function_f8514554);
	level namespace_cc27597::function_9e5b8cdb("p7_fxanim_cp_newworld_train_intro_glass_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_train_intro_glass_bundle");
	level thread namespace_cc27597::function_43718187("cin_new_01_01_whiteinfinite_1st_intro");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_ce0e5f06::function_737d2864, &"CP_MI_ZURICH_NEWWORLD_LOCATION_TRAIN", &"CP_MI_ZURICH_NEWWORLD_TIME_TRAIN1");
	level thread function_6fe6a34d();
	level waittill("hash_a4a076ed");
	function_bea2b721(0);
	level namespace_ad23e503::function_74d6b22f("train_terrain_resume");
	namespace_80983c42::function_593e8a39("ex_white_inf_light");
	level notify("hash_6f4b6b65");
	level namespace_82b91a51::function_a0938376();
}

/*
	Name: function_f8514554
	Namespace: namespace_c7062b04
	Checksum: 0x2C80B84F
	Offset: 0x25C0
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function function_f8514554(var_c77d2837)
{
	level waittill("hash_3c94a047");
	level namespace_ad23e503::function_74d6b22f("infinite_white_transition");
	wait(0.6);
	namespace_cc27597::function_fcf56ab5("cin_new_01_01_whiteinfinite_1st_intro");
	var_c77d2837["taylor"] function_dc8c8404();
	level notify("hash_a4a076ed");
}

/*
	Name: function_f910c34a
	Namespace: namespace_c7062b04
	Checksum: 0x1BD08EED
	Offset: 0x2650
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_f910c34a(var_c77d2837)
{
	var_c77d2837["newworld_train_intro_glass"] function_8c8e79fe();
	var_c77d2837["newworld_train_intro_glass"] function_25b39be3(1);
	level waittill("hash_e66d6ef4");
	var_c77d2837["newworld_train_intro_glass"] function_48f26766();
}

/*
	Name: function_7b872728
	Namespace: namespace_c7062b04
	Checksum: 0x9EAB2692
	Offset: 0x26E0
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_7b872728(var_c77d2837)
{
	var_c77d2837["taylor"] function_25b39be3(1);
	var_c77d2837["whiteinfinite_civ_02"] function_25b39be3(1);
	var_c77d2837["whiteinfinite_civ_03"] function_25b39be3(1);
	var_c77d2837["whiteinfinite_civ_04"] function_25b39be3(1);
	var_c77d2837["whiteinfinite_civ_05"] function_25b39be3(1);
	var_c77d2837["whiteinfinite_civ_06"] function_25b39be3(1);
	var_c77d2837["whiteinfinite_civ_07"] function_25b39be3(1);
	var_c77d2837["player 1"] thread function_3edfb24f();
	level thread function_b7ef38e9();
	var_c77d2837["train_car"] thread function_63d2d91e();
	level thread function_bb60f445(var_c77d2837);
	var_c77d2837["player 1"] waittill("hash_c2e27e50");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		function_bea2b721(1);
		level namespace_ad23e503::function_74d6b22f("train_terrain_pause");
		level thread function_7d334045();
	}
}

/*
	Name: function_63d2d91e
	Namespace: namespace_c7062b04
	Checksum: 0xBDA87F7E
	Offset: 0x28F8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_63d2d91e()
{
	self namespace_71e9cb84::function_74d6b22f("train_fx_occlude", 1);
	var_bf143437 = function_99201f25("probe_inf_white_igc", "script_noteworthy");
	foreach(var_7aa19f58 in var_bf143437)
	{
		var_7aa19f58 function_37f7858a(self);
	}
	self waittill("hash_999f40e4");
	self function_db20c8d6("tag_glass");
	self namespace_71e9cb84::function_74d6b22f("train_fx_occlude", 0);
}

/*
	Name: function_bb60f445
	Namespace: namespace_c7062b04
	Checksum: 0x889D6B12
	Offset: 0x2A28
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_bb60f445(var_c77d2837)
{
	level waittill("hash_3886176e");
	var_6d4af883 = var_c77d2837["whiteinfinite_civ_07"];
	if(isdefined(var_6d4af883))
	{
		var_6d4af883 namespace_71e9cb84::function_74d6b22f("derez_ai_deaths", 1);
	}
	namespace_82b91a51::function_76f13293();
	if(isdefined(var_6d4af883))
	{
		var_6d4af883 function_8c8e79fe();
	}
}

/*
	Name: function_3edfb24f
	Namespace: namespace_c7062b04
	Checksum: 0xA65B038E
	Offset: 0x2AC0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3edfb24f()
{
	level waittill("hash_9a0a9e67");
	function_c4addffd();
}

/*
	Name: function_b7ef38e9
	Namespace: namespace_c7062b04
	Checksum: 0xA0A4FE6F
	Offset: 0x2AF0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b7ef38e9()
{
	level waittill("hash_b8f30df1");
	namespace_80983c42::function_80983c42("ex_white_inf_light");
}

/*
	Name: function_ccad2ef9
	Namespace: namespace_c7062b04
	Checksum: 0x9E82F523
	Offset: 0x2B28
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function function_ccad2ef9(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	function_de13d6e2(1);
	wait(3);
	namespace_ce0e5f06::function_bbd12ed2("cin_new_01_01_whiteinfinite_1st_intro");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_train_intro_glass_bundle");
}

/*
	Name: function_ab92d4b4
	Namespace: namespace_c7062b04
	Checksum: 0x35A68970
	Offset: 0x2BA8
	Size: 0x273
	Parameters: 2
	Flags: None
*/
function function_ab92d4b4(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_e61ead06(var_b04bc952);
		namespace_d7916d65::function_a2995f22();
		level thread namespace_ce0e5f06::function_30ec5bf7(1);
		break;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_ce0e5f06::function_974050f();
	}
	level namespace_71e9cb84::function_74d6b22f("train_main_fx_occlude", 1);
	namespace_76d95162::function_d9f49fba(0);
	level namespace_82b91a51::function_b85473ac(1);
	level namespace_71e9cb84::function_74d6b22f("set_fog_bank", 1);
	level thread function_cbf76d8c();
	level thread function_57409da3();
	level thread function_86f446dd();
	level thread function_75fc9f6a();
	function_e9ea11fb();
	function_14fcc74b();
	level thread function_704b33db();
	namespace_1d795d47::function_f58fccb8(var_b04bc952);
	level thread namespace_e38c3c58::function_57a2519c();
	function_98cac62e();
	namespace_82b91a51::function_93831e79("inbound_igc_teleport");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_98cac62e
	Namespace: namespace_c7062b04
	Checksum: 0xD68321F0
	Offset: 0x2E28
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_98cac62e()
{
	level namespace_cc27597::function_c35e6aab("cin_new_14_01_inbound_1st_preptalk");
	namespace_82b91a51::function_d8eaed3d(8);
	namespace_ce0e5f06::function_83a7d040();
	namespace_82b91a51::function_11a89b44();
	namespace_ce0e5f06::function_3383b379();
	namespace_cc27597::function_8f9f34e0("cin_new_14_01_inbound_1st_preptalk", &function_7ec04a94, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_14_01_inbound_1st_preptalk", &function_985304c3, "play");
	if(isdefined(level.var_911783b))
	{
		level thread [[level.var_911783b]]();
	}
	level thread function_64f742f7();
	namespace_cc27597::function_43718187("cin_new_14_01_inbound_1st_preptalk");
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_985304c3
	Namespace: namespace_c7062b04
	Checksum: 0x2EA32377
	Offset: 0x2F58
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_985304c3(var_c77d2837)
{
	level namespace_ad23e503::function_9d134160("infinite_white_transition");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_ce0e5f06::function_737d2864, &"CP_MI_ZURICH_NEWWORLD_LOCATION_TRAIN", &"CP_MI_ZURICH_NEWWORLD_TIME_TRAIN2");
}

/*
	Name: function_7ec04a94
	Namespace: namespace_c7062b04
	Checksum: 0x6BFE364C
	Offset: 0x2FC8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_7ec04a94(var_c77d2837)
{
	var_1c26230b = var_c77d2837["taylor"];
	var_1c26230b function_8c8e79fe();
	level waittill("hash_7d592b62");
	var_1c26230b thread namespace_ce0e5f06::function_c949a8ed(1);
	level waittill("hash_c07e4907");
	var_1c26230b thread namespace_ce0e5f06::function_4943984c(1);
}

/*
	Name: function_64f742f7
	Namespace: namespace_c7062b04
	Checksum: 0x4972E104
	Offset: 0x3060
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_64f742f7()
{
	level namespace_71e9cb84::function_74d6b22f("inbound_igc_glass", 1);
	level waittill("hash_64f742f7");
	level namespace_71e9cb84::function_74d6b22f("inbound_igc_glass", 2);
	level namespace_82b91a51::function_b85473ac(0);
	level namespace_71e9cb84::function_74d6b22f("set_fog_bank", 0);
}

/*
	Name: function_6ce77882
	Namespace: namespace_c7062b04
	Checksum: 0x1F3C442
	Offset: 0x30F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6ce77882()
{
	level namespace_71e9cb84::function_74d6b22f("inbound_igc_glass", 2);
}

/*
	Name: function_5e42668a
	Namespace: namespace_c7062b04
	Checksum: 0x72E81172
	Offset: 0x3128
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_5e42668a(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_158a9a65
	Namespace: namespace_c7062b04
	Checksum: 0x815AA661
	Offset: 0x3158
	Size: 0x343
	Parameters: 2
	Flags: None
*/
function function_158a9a65(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_e9ea11fb();
		function_14fcc74b();
		function_6ce77882();
		function_cbf76d8c();
		function_e61ead06(var_b04bc952);
		function_704b33db();
		level thread function_75fc9f6a();
		level thread function_57409da3();
		namespace_d7916d65::function_a2995f22();
		level namespace_71e9cb84::function_74d6b22f("train_main_fx_occlude", 1);
	}
	if(function_27c72c1b())
	{
		var_b3f0c3af = function_99201f25("train_stairs_carver_zm", "targetname");
		foreach(var_d874dcf in var_b3f0c3af)
		{
			var_d874dcf function_dc8c8404();
		}
	}
	namespace_82b91a51::function_67520c6a(0.6, undefined, &namespace_ce0e5f06::function_3e37f48b, 0);
	namespace_82b91a51::function_67520c6a(1, undefined, &function_1a874d86);
	level thread namespace_e38c3c58::function_c132cd41();
	level thread function_86f446dd();
	namespace_76d95162::function_d9f49fba(1);
	level namespace_82b91a51::function_b85473ac(0);
	level namespace_71e9cb84::function_74d6b22f("set_fog_bank", 0);
	function_c63fb1d();
	level thread function_8c0c3c47();
	level thread namespace_e38c3c58::function_a99be221();
	level thread namespace_37a1dc33::function_8bb97e0();
	level thread function_8b44d21a();
	function_b9045c8a();
	function_9301e221();
	function_6cff67b8();
	function_7710c097();
	function_510e462e();
}

/*
	Name: function_1a874d86
	Namespace: namespace_c7062b04
	Checksum: 0x60EAAD9B
	Offset: 0x34A8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_1a874d86()
{
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		if(isdefined(var_6bfe1586.var_175490fb.var_7116dac7))
		{
			var_6bfe1586 function_860a040a(var_6bfe1586.var_175490fb.var_7116dac7);
			var_6bfe1586.var_175490fb.var_90eb6ca7 = var_6bfe1586.var_175490fb.var_7116dac7;
			var_6bfe1586.var_175490fb.var_7116dac7 = undefined;
		}
	}
}

/*
	Name: function_d5af013f
	Namespace: namespace_c7062b04
	Checksum: 0xED7CAB91
	Offset: 0x35B0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_d5af013f(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_cbf76d8c
	Namespace: namespace_c7062b04
	Checksum: 0x1A2A3D0C
	Offset: 0x35E0
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_cbf76d8c()
{
	if(!level namespace_ad23e503::function_dbca4c5d("train_terrain_pause"))
	{
		level namespace_ad23e503::function_c35e6aab("train_terrain_pause");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("train_terrain_resume"))
	{
		level namespace_ad23e503::function_c35e6aab("train_terrain_resume");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("train_terrain_transition"))
	{
		level namespace_ad23e503::function_c35e6aab("train_terrain_transition");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("train_terrain_move_complete"))
	{
		level namespace_ad23e503::function_c35e6aab("train_terrain_move_complete");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("switch_to_forest"))
	{
		level namespace_ad23e503::function_c35e6aab("switch_to_forest");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("player_on_top_of_train"))
	{
		level namespace_ad23e503::function_c35e6aab("player_on_top_of_train");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("concussive_wave_tutorial_started"))
	{
		level namespace_ad23e503::function_c35e6aab("concussive_wave_tutorial_started");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("climb_up_spawns_complete"))
	{
		level namespace_ad23e503::function_c35e6aab("climb_up_spawns_complete");
	}
	if(!level namespace_ad23e503::function_dbca4c5d("climb_up_robots_cleared"))
	{
		level namespace_ad23e503::function_c35e6aab("climb_up_robots_cleared");
	}
}

/*
	Name: function_8b44d21a
	Namespace: namespace_c7062b04
	Checksum: 0x93B6655
	Offset: 0x3830
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_8b44d21a()
{
	var_31f0b803 = function_99201f25("train_neon_glass_destructible_1", "script_noteworthy");
	var_6a5caae4 = namespace_14b42b8a::function_7922262b("front_of_the_train", "targetname");
	var_31f0b803 = function_f926d8e8(var_31f0b803, var_6a5caae4.var_722885f3, 1);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_31f0b803.size; var_c957f6b6++)
	{
		var_31f0b803[var_c957f6b6] thread function_f889869b(var_c957f6b6 + 1);
	}
}

/*
	Name: function_f889869b
	Namespace: namespace_c7062b04
	Checksum: 0xD0515C95
	Offset: 0x3910
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_f889869b(var_4bc288a0)
{
	self waittill("hash_6445d1f2");
	namespace_80983c42::function_80983c42("ex_purple_glass_light_0" + var_4bc288a0);
}

/*
	Name: function_b9045c8a
	Namespace: namespace_c7062b04
	Checksum: 0x72C92CDA
	Offset: 0x3958
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b9045c8a()
{
	level thread function_3641dc88();
}

/*
	Name: function_9301e221
	Namespace: namespace_c7062b04
	Checksum: 0xCA845F7B
	Offset: 0x3980
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_9301e221()
{
	level thread function_7f06890d();
	namespace_4dbf3ae3::function_1ab5ebec("train_car_2_robot_spawn");
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_car_2_robot_charger", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_43718187();
}

/*
	Name: function_6cff67b8
	Namespace: namespace_c7062b04
	Checksum: 0x2F66DC99
	Offset: 0x3A00
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_6cff67b8()
{
	level namespace_71e9cb84::function_74d6b22f("train_robot_swing_glass_left", 1);
	level namespace_71e9cb84::function_74d6b22f("train_robot_swing_glass_right", 1);
	namespace_4dbf3ae3::function_1ab5ebec("robots_swing_in");
	level thread function_6114e822();
}

/*
	Name: function_7710c097
	Namespace: namespace_c7062b04
	Checksum: 0x6D875692
	Offset: 0x3A80
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_7710c097()
{
	level namespace_71e9cb84::function_74d6b22f("train_dropdown_glass", 1);
	namespace_cc27597::function_8f9f34e0("cin_new_16_01_detachbombcar_aie_drop", &function_d6c3792a, "init");
	level thread namespace_cc27597::function_c35e6aab("cin_new_16_01_detachbombcar_aie_drop");
	namespace_4dbf3ae3::function_1ab5ebec("train_car_4_robot_spawns");
	level thread function_6a30b44c();
	namespace_4dbf3ae3::function_1ab5ebec("train_car_4_robots_drop_through_glass");
	if(level.var_9b1393e7.size > 1)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("train_car_4_secondstory");
		var_f6c5842 thread function_c19bd331();
	}
	namespace_cc27597::function_8f9f34e0("cin_new_16_01_detachbombcar_aie_drop", &function_613f8b51, "play");
	level thread namespace_cc27597::function_43718187("cin_new_16_01_detachbombcar_aie_drop");
	level waittill("hash_60e2e11");
	level namespace_71e9cb84::function_74d6b22f("train_dropdown_glass", 2);
	level thread function_ce0fcc59();
}

/*
	Name: function_c19bd331
	Namespace: namespace_c7062b04
	Checksum: 0xFBB2419F
	Offset: 0x3C28
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_c19bd331()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_5b7e3888("goal", "near_goal");
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
}

/*
	Name: function_d6c3792a
	Namespace: namespace_c7062b04
	Checksum: 0x711FDE3F
	Offset: 0x3CB0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_d6c3792a(var_c77d2837)
{
	var_c77d2837["robot_second_floor_drop"] namespace_82b91a51::function_958c7633();
}

/*
	Name: function_613f8b51
	Namespace: namespace_c7062b04
	Checksum: 0xDC91F5
	Offset: 0x3CE8
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_613f8b51(var_c77d2837)
{
	level waittill("hash_613f8b51");
	var_31f0b803 = function_99201f25("train_neon_glass_destructible_1", "script_noteworthy");
	var_31f0b803 = function_f926d8e8(var_31f0b803, var_c77d2837["robot_second_floor_drop"].var_722885f3, 1);
	if(isdefined(var_31f0b803[0]))
	{
		var_31f0b803[0] function_c3945cd5(100, var_31f0b803[0].var_722885f3);
	}
	var_c77d2837["robot_second_floor_drop"] namespace_82b91a51::function_4b741fdc();
}

/*
	Name: function_510e462e
	Namespace: namespace_c7062b04
	Checksum: 0x116F9F12
	Offset: 0x3DD0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_510e462e()
{
	level thread function_c3cd70a1();
}

/*
	Name: function_7f06890d
	Namespace: namespace_c7062b04
	Checksum: 0x53E08A23
	Offset: 0x3DF8
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_7f06890d()
{
	namespace_4dbf3ae3::function_1ab5ebec("train_tutorial_takedown");
	level thread function_11711684("cybercom_rapidstrike", 0);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread namespace_ce0e5f06::function_6062e90("cybercom_rapidstrike", 0, "concsusive_wave_tutorial", 1, "CP_MI_ZURICH_NEWWORLD_TAKEDOWN");
	}
}

/*
	Name: function_6a30b44c
	Namespace: namespace_c7062b04
	Checksum: 0x933953B7
	Offset: 0x3F00
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_6a30b44c()
{
	var_7da8df42 = namespace_14b42b8a::function_7faf4c39("train_car_4_charging_stations", "targetname");
	foreach(var_1cbcb46d in var_7da8df42)
	{
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(function_72a94f05(0.25, 0.75));
	}
}

/*
	Name: function_ce0fcc59
	Namespace: namespace_c7062b04
	Checksum: 0xCA76B743
	Offset: 0x3FE0
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_ce0fcc59()
{
	level thread function_f3519ceb();
	level namespace_ad23e503::function_1ab5ebec("spawn_train_car4_rear_chargingstation_robots");
	var_7da8df42 = namespace_14b42b8a::function_7faf4c39("train_car_4_rear_charging_stations", "targetname");
	foreach(var_1cbcb46d in var_7da8df42)
	{
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(function_72a94f05(0.25, 0.75));
	}
}

/*
	Name: function_f3519ceb
	Namespace: namespace_c7062b04
	Checksum: 0x7EB0FE96
	Offset: 0x40F8
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_f3519ceb()
{
	level endon("hash_f4e446c7");
	var_64e85e6d = [];
	var_e3b635fb = function_b8494651("axis");
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(var_d84e54db.var_db7bb468 === "train_car_4_robots_front" && function_5b49d38c(var_d84e54db))
		{
			var_64e85e6d[var_64e85e6d.size] = var_d84e54db;
		}
	}
	if(var_64e85e6d.size > 0)
	{
		namespace_d84e54db::function_21fe06cc(var_64e85e6d);
		level namespace_ad23e503::function_74d6b22f("spawn_train_car4_rear_chargingstation_robots");
	}
}

/*
	Name: function_14fcc74b
	Namespace: namespace_c7062b04
	Checksum: 0x346B4C4D
	Offset: 0x4240
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_14fcc74b()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_charging_station_open_01_bundle", &function_1d0cebf2, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_charging_station_open_01_bundle", &function_5f93d88c, "done");
	namespace_cc27597::function_8f9f34e0("cin_new_scr_temp_robot_fwd", &function_45eba545, "init");
	namespace_cc27597::function_8f9f34e0("cin_new_scr_temp_robot_fwd", &function_c64ec951, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_scr_temp_robot_fwd", &function_cbeb52db, "done");
}

/*
	Name: function_1d0cebf2
	Namespace: namespace_c7062b04
	Checksum: 0x6002A24E
	Offset: 0x4340
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_1d0cebf2(var_c77d2837)
{
	if(isdefined(self.var_b07228b6))
	{
		if(self.var_caae374e === "last_car_robot_chargers")
		{
			var_1cbcb46d = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
			var_f6c5842 = namespace_2f06d687::function_7387a40a("last_train_car_robot");
			var_1cbcb46d namespace_cc27597::function_c35e6aab(var_f6c5842);
		}
		else
		{
			var_1cbcb46d = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
			var_1cbcb46d namespace_cc27597::function_c35e6aab();
		}
	}
}

/*
	Name: function_5f93d88c
	Namespace: namespace_c7062b04
	Checksum: 0x121796E
	Offset: 0x4428
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_5f93d88c(var_c77d2837)
{
	if(isdefined(self.var_b07228b6))
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_45eba545
	Namespace: namespace_c7062b04
	Checksum: 0x580EFC3E
	Offset: 0x4490
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_45eba545(var_c77d2837)
{
	var_c77d2837["train_wakeup_robot"] namespace_82b91a51::function_958c7633();
}

/*
	Name: function_c64ec951
	Namespace: namespace_c7062b04
	Checksum: 0x177F5D4B
	Offset: 0x44C8
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_c64ec951(var_c77d2837)
{
	var_c77d2837["train_wakeup_robot"] namespace_82b91a51::function_4b741fdc();
	if(self.var_caae374e === "rusher")
	{
		var_c77d2837["train_wakeup_robot"] namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
		var_c77d2837["train_wakeup_robot"] namespace_d84e54db::function_ceb883cd("sprint", 1);
	}
	if(isdefined(self.var_db7bb468))
	{
		var_c77d2837["train_wakeup_robot"].var_db7bb468 = self.var_db7bb468;
	}
}

/*
	Name: function_cbeb52db
	Namespace: namespace_c7062b04
	Checksum: 0xFE7F505C
	Offset: 0x45A0
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_cbeb52db(var_c77d2837)
{
	if(isdefined(self.var_b07228b6))
	{
		var_c9ae457a = function_6ada35ba(self.var_b07228b6, "targetname");
		if(!isdefined(var_c9ae457a))
		{
			var_c6342f3d = function_b4cb3503(self.var_b07228b6, "targetname");
			var_c77d2837["train_wakeup_robot"] function_169cc712(var_c6342f3d, 1);
			return;
		}
		var_c77d2837["train_wakeup_robot"] function_169cc712(var_c9ae457a, 1);
	}
}

/*
	Name: function_704b33db
	Namespace: namespace_c7062b04
	Checksum: 0xEA0A09AF
	Offset: 0x4680
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_704b33db()
{
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("main_train_robot_chargers", "script_noteworthy");
	foreach(var_1cbcb46d in var_3d2988cc)
	{
		var_1cbcb46d namespace_cc27597::function_c35e6aab();
	}
}

/*
	Name: function_5e667e1f
	Namespace: namespace_c7062b04
	Checksum: 0xBDC6A287
	Offset: 0x4740
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_5e667e1f()
{
	namespace_cc27597::function_8f9f34e0("cin_gen_traversal_robot_climb_train_right", &function_b30301a7, "done");
	namespace_cc27597::function_8f9f34e0("cin_gen_traversal_robot_climb_train_left", &function_b30301a7, "done");
	switch(level.var_9b1393e7.size)
	{
		case 1:
		case 2:
		{
			var_3e671a1 = 2;
			break;
		}
		case 3:
		{
			var_3e671a1 = 3;
			break;
		}
		case 4:
		{
			var_3e671a1 = 4;
			break;
		}
		case default:
		{
			var_3e671a1 = 0;
			break;
		}
	}
	for(var_c957f6b6 = 1; var_c957f6b6 < var_3e671a1 + 1; var_c957f6b6++)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("climb_up_robot");
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_roof1_climb_up_0" + var_c957f6b6, "targetname");
		var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_f6c5842);
	}
	level namespace_ad23e503::function_1ab5ebec("train_rooftop_roof1_climb_up_spawns");
	level thread function_f7302a65();
	for(var_c957f6b6 = 1; var_c957f6b6 < var_3e671a1 + 1; var_c957f6b6++)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_roof1_climb_up_0" + var_c957f6b6, "targetname");
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(0.1);
	}
	level namespace_ad23e503::function_74d6b22f("climb_up_spawns_complete");
}

/*
	Name: function_b30301a7
	Namespace: namespace_c7062b04
	Checksum: 0x65A46260
	Offset: 0x4998
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_b30301a7(var_c77d2837)
{
	wait(0.05);
	if(function_5b49d38c(var_c77d2837[0]) && var_c77d2837[0].var_caae374e === "train_robot_rushers")
	{
		var_c77d2837[0] namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
		var_c77d2837[0] namespace_d84e54db::function_ceb883cd("sprint", 1);
		if(self.var_caae374e === "train_rooftop_depth")
		{
			var_c77d2837[0] thread function_ca6ecfb3();
		}
	}
}

/*
	Name: function_382c53b4
	Namespace: namespace_c7062b04
	Checksum: 0x4BB20193
	Offset: 0x4A70
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_382c53b4()
{
	namespace_4dbf3ae3::function_1ab5ebec("train_concussive_wave_tutorial");
	namespace_d5067552::function_bae40a28("concussive_wave_tutorial_sm");
	level namespace_ad23e503::function_74d6b22f("concussive_wave_tutorial_started");
	level notify("hash_c02bc824");
	level.var_fbc6080 = 1;
	namespace_ce0e5f06::function_3e37f48b(1);
	if(!function_27c72c1b())
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
			{
				continue;
			}
			var_5dc5e20a namespace_ad23e503::function_c35e6aab("concussive_wave_show_use_ability_tutorial");
			var_5dc5e20a namespace_ad23e503::function_c35e6aab("concussive_wave_tutorial_vo_complete");
			var_5dc5e20a thread function_9f8dbaa2("cybercom_concussive", 1);
			var_5dc5e20a namespace_d00ec32::function_a724d44("cybercom_concussive", 1);
			var_5dc5e20a.var_175490fb.var_161c9be8 = 0;
			var_5dc5e20a thread namespace_ce0e5f06::function_948d4091("cybercom_concussive", 1, "begin_skipto_detach_bomb_igc_init", 1, "CP_MI_ZURICH_NEWWORLD_CONCUSSIVE_WAVE_TUTORIAL", "concussive_wave_show_use_ability_tutorial", "concussive_wave_tutorial_vo_complete");
			var_5dc5e20a thread function_54bd9482();
		}
	}
}

/*
	Name: function_54bd9482
	Namespace: namespace_c7062b04
	Checksum: 0x60C75D63
	Offset: 0x4C98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_54bd9482()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("concussive_wave_use_ability_tutorial", "targetname", self);
	self namespace_ad23e503::function_74d6b22f("concussive_wave_show_use_ability_tutorial");
}

/*
	Name: function_e61ead06
	Namespace: namespace_c7062b04
	Checksum: 0x6EFD1690
	Offset: 0x4CF8
	Size: 0x709
	Parameters: 1
	Flags: None
*/
function function_e61ead06(var_b04bc952)
{
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_drinks", &function_fc32f54, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_drinks", &function_ffaa48a3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_male01", &function_fc32f54, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_male01", &function_ffaa48a3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_male01_table", &function_fc32f54, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_male01_table", &function_ffaa48a3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_male02", &function_fc32f54, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_male02", &function_ffaa48a3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_female01", &function_fc32f54, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_female01", &function_ffaa48a3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_female01_table", &function_fc32f54, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_female01_table", &function_ffaa48a3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_female02", &function_fc32f54, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_female02", &function_ffaa48a3, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_female02_table", &function_fc32f54, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_01_train_vign_passengercar_female02_table", &function_ffaa48a3, "play");
	if(var_b04bc952 === "train_inbound_igc" || var_b04bc952 === "train_train_start" || var_b04bc952 === "underground_staging_room_igc")
	{
		var_3d2988cc = namespace_14b42b8a::function_7faf4c39("train_civilians_car_1", "script_noteworthy");
		foreach(var_1cbcb46d in var_3d2988cc)
		{
			var_1cbcb46d thread namespace_cc27597::function_43718187();
			wait(function_72a94f05(0, 0.25));
		}
		var_3d2988cc = namespace_14b42b8a::function_7faf4c39("train_civilians_car_2", "script_noteworthy");
		foreach(var_1cbcb46d in var_3d2988cc)
		{
			var_1cbcb46d thread namespace_cc27597::function_43718187();
			wait(function_72a94f05(0, 0.25));
		}
		var_3d2988cc = namespace_14b42b8a::function_7faf4c39("train_civilians_car_3", "script_noteworthy");
		foreach(var_1cbcb46d in var_3d2988cc)
		{
			var_1cbcb46d thread namespace_cc27597::function_43718187();
			wait(function_72a94f05(0, 0.25));
		}
		var_3d2988cc = namespace_14b42b8a::function_7faf4c39("train_civilians_car_4", "script_noteworthy");
		foreach(var_1cbcb46d in var_3d2988cc)
		{
			var_1cbcb46d thread namespace_cc27597::function_43718187();
			wait(function_72a94f05(0, 0.25));
		}
	}
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("train_civilians_car_5", "script_noteworthy");
	foreach(var_1cbcb46d in var_3d2988cc)
	{
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(function_72a94f05(0, 0.25));
	}
}

/*
	Name: function_fc32f54
	Namespace: namespace_c7062b04
	Checksum: 0x3C628438
	Offset: 0x5410
	Size: 0x213
	Parameters: 1
	Flags: None
*/
function function_fc32f54(var_c77d2837)
{
	level endon("hash_a72162f1");
	var_f11c18b5 = var_c77d2837["train_civilian_model"];
	if(!isdefined(var_f11c18b5))
	{
		var_f11c18b5 = var_c77d2837["train_civ_bartender_model"];
	}
	var_f11c18b5 endon("hash_bf294add");
	var_f11c18b5 function_8d63f8d0(1);
	var_f11c18b5.var_3a90f16b = 100;
	var_f11c18b5.var_ff1f6868 = "train_detach_bomb_igc";
	while(1)
	{
		var_f11c18b5 waittill("hash_f9348fda", var_74d0774f, var_a0ad4f34);
		if(var_74d0774f > 1)
		{
			break;
		}
	}
	if(function_65f192a6(var_a0ad4f34))
	{
		var_a0ad4f34 thread function_8e9219f();
	}
	if(!isdefined(var_f11c18b5))
	{
		return;
	}
	self namespace_cc27597::function_fcf56ab5();
	wait(0.05);
	var_f11c18b5 function_d7a0a9d8();
	if(isdefined(var_c77d2837["prop"]))
	{
		var_c77d2837["prop"] function_822f0cc5();
	}
	wait(0.1875);
	var_f11c18b5 notify("hash_ddb95805");
	var_f11c18b5 namespace_71e9cb84::function_74d6b22f("derez_model_deaths", 1);
	namespace_82b91a51::function_76f13293();
	wait(0.1);
	var_f11c18b5 function_dc8c8404();
	if(isdefined(var_c77d2837["prop"]))
	{
		var_c77d2837["prop"] function_dc8c8404();
	}
}

/*
	Name: function_ffaa48a3
	Namespace: namespace_c7062b04
	Checksum: 0xDD986CB4
	Offset: 0x5630
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_ffaa48a3(var_c77d2837)
{
	level endon("hash_a72162f1");
	var_f11c18b5 = var_c77d2837["train_civilian_model"];
	if(!isdefined(var_f11c18b5))
	{
		var_f11c18b5 = var_c77d2837["train_civ_bartender_model"];
	}
	var_f11c18b5 endon("hash_ddb95805");
	while(isdefined(var_f11c18b5) && !var_f11c18b5 function_4a8e782e())
	{
		wait(0.1);
	}
	if(!isdefined(var_f11c18b5))
	{
		return;
	}
	self namespace_cc27597::function_fcf56ab5();
	wait(0.05);
	var_f11c18b5 function_d7a0a9d8();
	if(isdefined(var_c77d2837["prop"]))
	{
		var_c77d2837["prop"] function_822f0cc5();
	}
	wait(0.09375);
	var_f11c18b5 notify("hash_bf294add");
	var_f11c18b5 namespace_71e9cb84::function_74d6b22f("derez_model_deaths", 1);
	namespace_82b91a51::function_76f13293();
	wait(0.1);
	var_f11c18b5 function_dc8c8404();
	if(isdefined(var_c77d2837["prop"]))
	{
		var_c77d2837["prop"] function_dc8c8404();
	}
}

/*
	Name: function_4a8e782e
	Namespace: namespace_c7062b04
	Checksum: 0xF5D3B2C1
	Offset: 0x57D0
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_4a8e782e()
{
	level endon("hash_a72162f1");
	self endon("hash_ddb95805");
	self endon("hash_bf294add");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(self function_32fa5072(var_5dc5e20a))
		{
			return 1;
		}
	}
	var_e3b635fb = function_b8494651("axis");
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(self function_32fa5072(var_d84e54db))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_6114e822
	Namespace: namespace_c7062b04
	Checksum: 0x267A6180
	Offset: 0x5950
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_6114e822()
{
	level thread function_783ceb85();
	var_83b961d3 = namespace_14b42b8a::function_7922262b("robot_swing_enter_left", "targetname");
	var_d2b65346 = namespace_14b42b8a::function_7922262b("robot_swing_enter_right", "targetname");
	namespace_cc27597::function_8f9f34e0("cin_new_15_02_train_aie_robot_swing_enter", &function_e1da9958, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_02_train_aie_robot_swing_enter", &function_5e60279a, "done");
	wait(0.5);
	var_83b961d3 thread namespace_cc27597::function_43718187();
	if(level.var_9b1393e7.size > 2)
	{
		wait(0.25);
		var_4ed87bd0 = namespace_14b42b8a::function_7922262b("robot_swing_enter_right2", "targetname");
		var_4ed87bd0 thread namespace_cc27597::function_43718187();
		wait(0.25);
		var_9c50e7ab = namespace_14b42b8a::function_7922262b("robot_swing_enter_left2", "targetname");
		var_9c50e7ab thread namespace_cc27597::function_43718187();
	}
	wait(0.5);
	var_d2b65346 thread namespace_cc27597::function_43718187();
	level thread function_132d9bfb();
}

/*
	Name: function_e1da9958
	Namespace: namespace_c7062b04
	Checksum: 0x4A7AE4A2
	Offset: 0x5B38
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_e1da9958(var_c77d2837)
{
	if(self.var_170527fb == "robot_swing_enter_left")
	{
		var_49f35e50 = "train_robot_swing_glass_left";
	}
	else if(self.var_170527fb == "robot_swing_enter_right")
	{
		var_49f35e50 = "train_robot_swing_glass_right";
	}
	else if(self.var_170527fb == "robot_swing_enter_right2")
	{
		var_49f35e50 = "train_robot_swing_right_extra";
	}
	else if(self.var_170527fb == "robot_swing_enter_left2")
	{
		var_49f35e50 = "train_robot_swing_left_extra";
	}
	var_c77d2837["train_wakeup_robot"] waittill("hash_ea465de6");
	level namespace_71e9cb84::function_74d6b22f(var_49f35e50, 2);
}

/*
	Name: function_5e60279a
	Namespace: namespace_c7062b04
	Checksum: 0xAA712611
	Offset: 0x5C18
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_5e60279a(var_c77d2837)
{
	wait(0.05);
	if(isdefined(self.var_b07228b6) && function_5b49d38c(var_c77d2837["train_wakeup_robot"]))
	{
		var_9de10fe3 = function_b4cb3503(self.var_b07228b6, "targetname");
		var_c77d2837["train_wakeup_robot"] namespace_d84e54db::function_19e98020(var_9de10fe3, 8);
	}
}

/*
	Name: function_132d9bfb
	Namespace: namespace_c7062b04
	Checksum: 0x84783ECE
	Offset: 0x5CC0
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_132d9bfb()
{
	wait(0.75);
	var_7da8df42 = namespace_14b42b8a::function_7faf4c39("train_car_3_charging_stations", "targetname");
	foreach(var_1cbcb46d in var_7da8df42)
	{
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(function_72a94f05(0.25, 0.75));
	}
}

/*
	Name: function_c3cd70a1
	Namespace: namespace_c7062b04
	Checksum: 0xD520E
	Offset: 0x5DA8
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_c3cd70a1()
{
	level thread function_e7752aae();
	namespace_71e9cb84::function_74d6b22f("train_lockdown_glass_left", 1);
	namespace_71e9cb84::function_74d6b22f("train_lockdown_glass_right", 1);
	namespace_4dbf3ae3::function_1ab5ebec("train_lockdown", undefined, undefined, 0);
	namespace_80983c42::function_80983c42("ex_breakglass");
	namespace_71e9cb84::function_74d6b22f("train_lockdown_shutters_1", 1);
	namespace_84970cc4::function_eaab05dc(function_99201f25("train_lockdown_door", "targetname"), &function_fde61077, -64, 0.5);
	level thread function_75c56cf();
	level thread function_123070a9();
	wait(1.5);
	namespace_cc27597::function_8f9f34e0("cin_new_15_02_train_aie_smash", &function_b8f52cb2, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_02_train_aie_smash", &function_1a199178, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_02_train_aie_smash", &function_ce450787, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_15_02_train_aie_smash", &function_84631064, "done");
	level thread namespace_cc27597::function_43718187("cin_new_15_02_train_aie_smash");
	level waittill("hash_ce450787");
	namespace_84970cc4::function_eaab05dc(function_99201f25("train_lockdown_glass", "targetname"), &function_dc8c8404);
}

/*
	Name: function_e7752aae
	Namespace: namespace_c7062b04
	Checksum: 0xDE4C412E
	Offset: 0x6020
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_e7752aae()
{
	namespace_cc27597::function_8f9f34e0("cin_new_15_02_train_aie_smash", &function_f1aa562d, "init");
	namespace_4dbf3ae3::function_1ab5ebec("start_lockdown_robots");
	level thread namespace_cc27597::function_c35e6aab("cin_new_15_02_train_aie_smash");
}

/*
	Name: function_f1aa562d
	Namespace: namespace_c7062b04
	Checksum: 0xA3403C82
	Offset: 0x6098
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_f1aa562d(var_c77d2837)
{
	namespace_82b91a51::function_76f13293();
	foreach(var_6104a93b in var_c77d2837)
	{
		var_6104a93b namespace_82b91a51::function_958c7633();
	}
}

/*
	Name: function_b8f52cb2
	Namespace: namespace_c7062b04
	Checksum: 0xE0274B6
	Offset: 0x6148
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_b8f52cb2(var_c77d2837)
{
	level waittill("hash_1a199178");
	var_c77d2837["lockdown_roof_robot_left"] namespace_82b91a51::function_4b741fdc();
	level waittill("hash_ce450787");
	var_c77d2837["lockdown_roof_robot_right"] namespace_82b91a51::function_4b741fdc();
}

/*
	Name: function_1a199178
	Namespace: namespace_c7062b04
	Checksum: 0x8F0BB5A7
	Offset: 0x61C0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_1a199178(var_c77d2837)
{
	level waittill("hash_1c281e62");
	level namespace_71e9cb84::function_74d6b22f("train_lockdown_glass_left", 2);
}

/*
	Name: function_ce450787
	Namespace: namespace_c7062b04
	Checksum: 0xBDA7ADA2
	Offset: 0x6208
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_ce450787(var_c77d2837)
{
	level waittill("hash_632087ff");
	level namespace_71e9cb84::function_74d6b22f("train_lockdown_glass_right", 2);
}

/*
	Name: function_84631064
	Namespace: namespace_c7062b04
	Checksum: 0x3A252275
	Offset: 0x6250
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_84631064(var_c77d2837)
{
	namespace_d0ef8521::function_45d1556("train_rooftop_breadcrumb");
}

/*
	Name: function_75c56cf
	Namespace: namespace_c7062b04
	Checksum: 0xED9F7061
	Offset: 0x6280
	Size: 0x7EB
	Parameters: 0
	Flags: None
*/
function function_75c56cf()
{
	namespace_71e9cb84::function_74d6b22f("train_lockdown_shutters_5", 1);
	var_f92a03e7 = function_6ada35ba("train_car_lockdown_04", "targetname");
	var_f92a03e7 function_7a33acf8();
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39("train_civilians_car_1", "script_noteworthy");
	foreach(var_1cbcb46d in var_5bcb8a4d)
	{
		if(var_1cbcb46d namespace_cc27597::function_367f8966())
		{
			var_1cbcb46d namespace_cc27597::function_fcf56ab5(1);
		}
	}
	level namespace_71e9cb84::function_74d6b22f("inbound_igc_glass", 0);
	namespace_71e9cb84::function_74d6b22f("train_lockdown_shutters_4", 1);
	var_f92a03e7 = function_6ada35ba("train_car_lockdown_03", "targetname");
	var_f92a03e7 function_7a33acf8();
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39("train_civilians_car_2", "script_noteworthy");
	foreach(var_1cbcb46d in var_5bcb8a4d)
	{
		if(var_1cbcb46d namespace_cc27597::function_367f8966())
		{
			var_1cbcb46d namespace_cc27597::function_fcf56ab5(1);
		}
	}
	var_809fd273 = namespace_14b42b8a::function_7922262b("train_car_2_robot_charger", "targetname");
	var_809fd273 namespace_cc27597::function_fcf56ab5(1);
	namespace_71e9cb84::function_74d6b22f("train_lockdown_shutters_3", 1);
	var_f92a03e7 = function_6ada35ba("train_car_lockdown_02", "targetname");
	var_f92a03e7 function_7a33acf8();
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39("train_civilians_car_3", "script_noteworthy");
	foreach(var_1cbcb46d in var_5bcb8a4d)
	{
		if(var_1cbcb46d namespace_cc27597::function_367f8966())
		{
			var_1cbcb46d namespace_cc27597::function_fcf56ab5(1);
		}
	}
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39("train_car_3_charging_stations", "targetname");
	foreach(var_1cbcb46d in var_5bcb8a4d)
	{
		if(var_1cbcb46d namespace_cc27597::function_367f8966())
		{
			var_1cbcb46d namespace_cc27597::function_fcf56ab5(1);
		}
	}
	level namespace_71e9cb84::function_74d6b22f("train_robot_swing_glass_left", 0);
	level namespace_71e9cb84::function_74d6b22f("train_robot_swing_glass_right", 0);
	namespace_71e9cb84::function_74d6b22f("train_lockdown_shutters_2", 1);
	var_dee3d10a = function_6ada35ba("train_rooftop_regroup_zone", "targetname");
	var_dee3d10a.var_3367c99d = 1000;
	var_dee3d10a waittill("hash_4dbf3ae3");
	var_f92a03e7 = function_6ada35ba("train_car_lockdown_01", "targetname");
	var_f92a03e7 function_7a33acf8();
	namespace_4dbf3ae3::function_42e87952("enable_car_0_respawns");
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39("train_civilians_car_4", "script_noteworthy");
	foreach(var_1cbcb46d in var_5bcb8a4d)
	{
		if(var_1cbcb46d namespace_cc27597::function_367f8966())
		{
			var_1cbcb46d namespace_cc27597::function_fcf56ab5(1);
		}
	}
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39("train_car_4_charging_stations", "targetname");
	foreach(var_1cbcb46d in var_5bcb8a4d)
	{
		if(var_1cbcb46d namespace_cc27597::function_367f8966())
		{
			var_1cbcb46d namespace_cc27597::function_fcf56ab5(1);
		}
	}
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39("train_car_4_rear_charging_stations", "targetname");
	foreach(var_1cbcb46d in var_5bcb8a4d)
	{
		if(var_1cbcb46d namespace_cc27597::function_367f8966())
		{
			var_1cbcb46d namespace_cc27597::function_fcf56ab5(1);
		}
	}
	level namespace_71e9cb84::function_74d6b22f("train_dropdown_glass", 0);
}

/*
	Name: function_7a33acf8
	Namespace: namespace_c7062b04
	Checksum: 0xBB5CBF1
	Offset: 0x6A78
	Size: 0x29F
	Parameters: 0
	Flags: None
*/
function function_7a33acf8()
{
	if(level namespace_ad23e503::function_7922262b("train_car_" + self.var_8202763a + "_locked_down"))
	{
		return;
	}
	self notify("hash_ab87488c");
	self endon("hash_ab87488c");
	var_b2131754 = self.var_8202763a + 1;
	if(level namespace_ad23e503::function_dbca4c5d("train_car_" + var_b2131754 + "_locked_down"))
	{
		level namespace_ad23e503::function_1ab5ebec("train_car_" + var_b2131754 + "_locked_down");
	}
	while(1)
	{
		var_e6e72236 = 1;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_32fa5072(self))
			{
				var_e6e72236 = 0;
				break;
			}
		}
		var_e3b635fb = function_b8494651("axis", "allies");
		foreach(var_d84e54db in var_e3b635fb)
		{
			if(var_d84e54db function_32fa5072(self))
			{
				var_e6e72236 = 0;
				break;
			}
		}
		if(var_e6e72236 == 1)
		{
			level namespace_ad23e503::function_74d6b22f("train_car_" + self.var_8202763a + "_locked_down");
			function_14d8c849(self.var_8202763a);
			break;
		}
		else
		{
			wait(0.1);
		}
	}
}

/*
	Name: function_14d8c849
	Namespace: namespace_c7062b04
	Checksum: 0xF6179DB5
	Offset: 0x6D20
	Size: 0x1D3
	Parameters: 1
	Flags: None
*/
function function_14d8c849(var_4bc288a0)
{
	namespace_4dbf3ae3::function_42e87952("disable_car_" + var_4bc288a0 + "_respawns");
	var_265e12e8 = function_6ada35ba("train_lockdown_door_0" + var_4bc288a0 + "_l", "targetname");
	var_3a80c4a6 = function_6ada35ba("train_lockdown_door_0" + var_4bc288a0 + "_r", "targetname");
	var_265e12e8 function_fde61077(-64, 0.2);
	var_3a80c4a6 function_fde61077(64, 0.2);
	var_3a80c4a6 function_921a1574("evt_train_door_close");
	var_265e12e8 waittill("hash_a21db68a");
	var_265e12e8 function_14c24d9d(0, 0);
	var_3a80c4a6 function_14c24d9d(0, 0);
	var_a7c049ac = function_6ada35ba("train_umbra_gate_0" + var_4bc288a0, "targetname");
	var_a7c049ac function_48f26766();
	var_a7c049ac function_4083a98e();
	function_bab1ff00("train_umbra_gate_0" + var_4bc288a0, 0);
}

/*
	Name: function_42e02b4
	Namespace: namespace_c7062b04
	Checksum: 0x8D38A9DF
	Offset: 0x6F00
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function function_42e02b4(var_4bc288a0)
{
	var_a7c049ac = function_6ada35ba("train_umbra_gate_0" + var_4bc288a0, "targetname");
	var_a7c049ac function_8c8e79fe();
	var_a7c049ac function_422037f5();
	var_a7c049ac function_de8377bf();
	function_bab1ff00("train_umbra_gate_0" + var_4bc288a0, 1);
	var_265e12e8 = function_6ada35ba("train_lockdown_door_0" + var_4bc288a0 + "_l", "targetname");
	var_3a80c4a6 = function_6ada35ba("train_lockdown_door_0" + var_4bc288a0 + "_r", "targetname");
	var_265e12e8 function_fde61077(64, 0.2);
	var_3a80c4a6 function_fde61077(-64, 0.2);
	var_3a80c4a6 function_921a1574("evt_train_door_open");
	var_265e12e8 waittill("hash_a21db68a");
	var_265e12e8 function_de8377bf();
	var_3a80c4a6 function_de8377bf();
	namespace_4dbf3ae3::function_42e87952("enable_car_" + var_4bc288a0 + "_respawns");
}

/*
	Name: function_57409da3
	Namespace: namespace_c7062b04
	Checksum: 0x67F4BE8F
	Offset: 0x7100
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_57409da3()
{
	level namespace_ad23e503::function_c35e6aab("train_car_4_locked_down");
	level namespace_ad23e503::function_c35e6aab("train_car_3_locked_down");
	level namespace_ad23e503::function_c35e6aab("train_car_2_locked_down");
	level namespace_ad23e503::function_c35e6aab("train_car_1_locked_down");
	var_a7c049ac = function_6ada35ba("train_umbra_gate_04", "targetname");
	var_a7c049ac function_8c8e79fe();
	var_a7c049ac function_422037f5();
	var_a7c049ac function_de8377bf();
	function_bab1ff00("train_umbra_gate_04", 1);
	namespace_4dbf3ae3::function_42e87952("disable_car_0_respawns");
	level thread function_14d8c849(3);
	level thread function_14d8c849(2);
	level thread function_14d8c849(1);
	namespace_4dbf3ae3::function_1ab5ebec("train_car_lockdown_03");
	function_42e02b4(3);
	var_f92a03e7 = function_6ada35ba("train_car_lockdown_04", "targetname");
	var_f92a03e7 thread function_7a33acf8();
	namespace_4dbf3ae3::function_1ab5ebec("train_car_lockdown_02");
	function_42e02b4(2);
	var_f92a03e7 = function_6ada35ba("train_car_lockdown_03", "targetname");
	var_f92a03e7 thread function_7a33acf8();
	namespace_4dbf3ae3::function_1ab5ebec("train_car_lockdown_01");
	function_42e02b4(1);
	var_f92a03e7 = function_6ada35ba("train_car_lockdown_02", "targetname");
	var_f92a03e7 thread function_7a33acf8();
}

/*
	Name: function_1b953f61
	Namespace: namespace_c7062b04
	Checksum: 0xE7F7A4DB
	Offset: 0x73C0
	Size: 0x205
	Parameters: 0
	Flags: None
*/
function function_1b953f61()
{
	switch(level.var_9b1393e7.size)
	{
		case 1:
		case 2:
		{
			var_3e671a1 = 2;
			break;
		}
		case 3:
		{
			var_3e671a1 = 4;
			break;
		}
		case 4:
		{
			var_3e671a1 = 4;
			break;
		}
		case default:
		{
			var_3e671a1 = 0;
			break;
		}
	}
	var_2d8e6fdb = [];
	for(var_c957f6b6 = 1; var_c957f6b6 < var_3e671a1 + 1; var_c957f6b6++)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("train_climb_robot");
		var_2d8e6fdb[var_2d8e6fdb.size] = var_f6c5842;
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_roof2_climb1_0" + var_c957f6b6, "targetname");
		var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_f6c5842);
	}
	level thread function_fa538321(var_2d8e6fdb);
	level thread function_33267d4e();
	level namespace_ad23e503::function_1ab5ebec("train_climb_robot_scene");
	for(var_c957f6b6 = 1; var_c957f6b6 < var_3e671a1 + 1; var_c957f6b6++)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_roof2_climb1_0" + var_c957f6b6, "targetname");
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(0.25);
	}
}

/*
	Name: function_fa538321
	Namespace: namespace_c7062b04
	Checksum: 0x7A9DC607
	Offset: 0x75D0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_fa538321(var_2d8e6fdb)
{
	level endon("hash_5e95ab82");
	namespace_d84e54db::function_21fe06cc(var_2d8e6fdb);
	level namespace_ad23e503::function_74d6b22f("spawn_wave2_climbers");
}

/*
	Name: function_33267d4e
	Namespace: namespace_c7062b04
	Checksum: 0xE443938D
	Offset: 0x7628
	Size: 0x1B5
	Parameters: 0
	Flags: None
*/
function function_33267d4e()
{
	switch(level.var_9b1393e7.size)
	{
		case 1:
		case 2:
		{
			var_3e671a1 = 2;
			break;
		}
		case 3:
		{
			var_3e671a1 = 4;
			break;
		}
		case 4:
		{
			var_3e671a1 = 6;
			break;
		}
		case default:
		{
			var_3e671a1 = 0;
			break;
		}
	}
	for(var_c957f6b6 = 1; var_c957f6b6 < var_3e671a1 + 1; var_c957f6b6++)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("train_climb_robot");
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_roof2_climb2_0" + var_c957f6b6, "targetname");
		var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_f6c5842);
	}
	level namespace_ad23e503::function_1ab5ebec("spawn_wave2_climbers");
	for(var_c957f6b6 = 1; var_c957f6b6 < var_3e671a1 + 1; var_c957f6b6++)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_roof2_climb2_0" + var_c957f6b6, "targetname");
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(0.25);
	}
}

/*
	Name: function_1cc09cbe
	Namespace: namespace_c7062b04
	Checksum: 0xB854174D
	Offset: 0x77E8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_1cc09cbe()
{
	level endon("hash_a72162f1");
	level thread function_72967a08();
	var_67825717 = function_6ada35ba("train_rooftop_volume", "targetname");
	while(isdefined(var_67825717))
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(!isdefined(var_5dc5e20a.var_91e69cc1) && var_5dc5e20a.var_91e69cc1 && var_5dc5e20a function_32fa5072(var_67825717))
			{
				var_67825717 thread function_e7124bea(var_5dc5e20a);
			}
		}
		wait(1);
	}
}

/*
	Name: function_72967a08
	Namespace: namespace_c7062b04
	Checksum: 0xE175E6C1
	Offset: 0x7928
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_72967a08()
{
	var_f92a03e7 = function_6ada35ba("player_enters_train_rooftop", "targetname");
	var_f92a03e7 waittill("hash_4dbf3ae3");
	function_d90d60f3();
	level.var_5e7ba27d = 1;
	level namespace_ad23e503::function_74d6b22f("player_on_top_of_train");
	level namespace_71e9cb84::function_74d6b22f("set_fog_bank", 1);
	level thread function_a4f749c7();
}

/*
	Name: function_a4f749c7
	Namespace: namespace_c7062b04
	Checksum: 0x9F65EDCF
	Offset: 0x79E8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a4f749c7()
{
	namespace_4dbf3ae3::function_1ab5ebec("player_exits_train_rooftop");
	function_d90d60f3(0);
}

/*
	Name: function_e7124bea
	Namespace: namespace_c7062b04
	Checksum: 0xF3CB23E3
	Offset: 0x7A28
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_e7124bea(var_6bfe1586)
{
	var_6bfe1586 endon("hash_128f8789");
	var_6bfe1586.var_91e69cc1 = 1;
	var_6bfe1586 namespace_71e9cb84::function_e9c3870b("train_rumble_loop", 1);
	var_6bfe1586 namespace_82b91a51::function_b85473ac(1);
	var_73bd72a3 = GetTime();
	var_6bfe1586 thread function_b4baa478();
	while(var_6bfe1586 function_32fa5072(self))
	{
		if(var_6bfe1586.var_6ab6f4fd[1] >= -90 && var_6bfe1586.var_6ab6f4fd[1] <= 90)
		{
			var_6bfe1586 function_5a7dd25d(1.2);
		}
		else
		{
			var_6bfe1586 function_5a7dd25d(0.7);
		}
		wait(0.05);
	}
	var_6bfe1586 namespace_71e9cb84::function_e9c3870b("train_rumble_loop", 0);
	var_6bfe1586 function_5a7dd25d(1);
	var_6bfe1586.var_91e69cc1 = 0;
	var_6bfe1586 namespace_82b91a51::function_b85473ac(0);
}

/*
	Name: function_b4baa478
	Namespace: namespace_c7062b04
	Checksum: 0x6303C55F
	Offset: 0x7BC0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_b4baa478()
{
	self endon("hash_128f8789");
	if(!(isdefined(self.var_ceb18b02) && self.var_ceb18b02))
	{
		self.var_ceb18b02 = 1;
		var_cbf4698a = self.var_2a48f7ab;
		self.var_2a48f7ab = 0.05;
		wait(5);
		self.var_2a48f7ab = var_cbf4698a;
	}
}

/*
	Name: function_86f446dd
	Namespace: namespace_c7062b04
	Checksum: 0xFDC15EB1
	Offset: 0x7C38
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_86f446dd()
{
	var_a8a64a67 = function_fe0cfd2e("train_rooftop_cover", "script_noteworthy");
	foreach(var_90ca1fdd in var_a8a64a67)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	namespace_71e9cb84::function_74d6b22f("train_brake_flaps", 1);
}

/*
	Name: function_77a5804
	Namespace: namespace_c7062b04
	Checksum: 0xD4FE4CC9
	Offset: 0x7D18
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_77a5804(var_6e2f783e)
{
	if(!isdefined(var_6e2f783e))
	{
		var_6e2f783e = 0;
	}
	if(!var_6e2f783e)
	{
		level namespace_ad23e503::function_1ab5ebec("player_on_top_of_train");
	}
	namespace_71e9cb84::function_74d6b22f("train_brake_flaps", 0);
	wait(0.25);
	var_a8a64a67 = function_fe0cfd2e("train_rooftop_cover", "script_noteworthy");
	foreach(var_90ca1fdd in var_a8a64a67)
	{
		function_d224409e(var_90ca1fdd, 1);
	}
}

/*
	Name: function_85eaeda4
	Namespace: namespace_c7062b04
	Checksum: 0x7B232353
	Offset: 0x7E40
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_85eaeda4()
{
	function_86f446dd();
	namespace_82b91a51::function_76f13293();
	function_77a5804(1);
}

/*
	Name: function_dbb1e1e3
	Namespace: namespace_c7062b04
	Checksum: 0xC03FE9D6
	Offset: 0x7E88
	Size: 0x68B
	Parameters: 2
	Flags: None
*/
function function_dbb1e1e3(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_c63fb1d();
		function_cbf76d8c();
		function_e61ead06(var_b04bc952);
		level thread function_75fc9f6a();
		level thread function_14d8c849(1);
		level thread function_e9ea11fb();
		level thread namespace_84970cc4::function_eaab05dc(function_99201f25("train_lockdown_door", "targetname"), &function_fde61077, -64, 0.5);
		level thread namespace_84970cc4::function_eaab05dc(function_99201f25("train_lockdown_glass", "targetname"), &function_dc8c8404);
		level thread function_14fcc74b();
		namespace_d7916d65::function_a2995f22();
		level namespace_71e9cb84::function_74d6b22f("train_main_fx_occlude", 1);
		namespace_71e9cb84::function_74d6b22f("train_lockdown_glass_left", 2);
		namespace_71e9cb84::function_74d6b22f("train_lockdown_glass_right", 2);
		namespace_80983c42::function_80983c42("ex_breakglass");
		namespace_71e9cb84::function_74d6b22f("train_lockdown_shutters_1", 1);
		level thread function_86f446dd();
		level thread function_123070a9();
		level thread namespace_d0ef8521::function_45d1556("train_rooftop_breadcrumb");
		var_dfcc01fd = namespace_ce0e5f06::function_71840183("cybercom_rapidstrike", 0);
		var_12b288c7 = var_dfcc01fd.var_4be20d44 + "_fired";
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(!var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
			{
				var_5dc5e20a thread function_e5b6ecf2(var_12b288c7);
			}
		}
		namespace_ce0e5f06::function_3e37f48b(0);
	}
	else
	{
		namespace_ce0e5f06::function_c1c980d8("t_vol_cull_stragglers_train_start");
	}
	var_a59819c6 = function_99201f25("train_roof_diable_respawns", "targetname");
	foreach(var_1bad7ee6 in var_a59819c6)
	{
		var_1bad7ee6 namespace_4dbf3ae3::function_42e87952();
	}
	namespace_dabbe128::function_de1a6d25(&function_9ee5007a);
	level thread function_1cc09cbe();
	level thread function_96977933();
	level thread function_f9012fc();
	level thread function_77a5804();
	level thread function_5e667e1f();
	level thread function_382c53b4();
	level thread function_8a983837();
	level thread function_441a5f5c();
	level thread function_13b3e595();
	level thread function_376cc585();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_train_quadtank_tarp_bundle");
	var_3b374bac = function_6ada35ba("train_detach_bomb_hack", "targetname");
	var_3b374bac function_175e6b8e(0);
	namespace_4dbf3ae3::function_1ab5ebec("train_1st_rooftop_enemy_spawns");
	if(level.var_9b1393e7.size > 1)
	{
		namespace_d5067552::function_bae40a28("train_first_rooftop_reinforcements_sm");
	}
	level namespace_ad23e503::function_1ab5ebec("climb_up_spawns_complete");
	level thread function_6ba3e1f3();
	function_8b13b1f8();
	function_5c66c0be();
	level thread function_cfb8d002();
	function_e84c6ac3();
	namespace_2f06d687::function_45679edd("last_train_car_robots", 0);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_376cc585
	Namespace: namespace_c7062b04
	Checksum: 0xED248FEA
	Offset: 0x8520
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_376cc585()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("cull_penultimate_stragglers");
	namespace_ce0e5f06::function_c1c980d8("t_vol_cull_stragglers_train_main");
}

/*
	Name: function_ead43429
	Namespace: namespace_c7062b04
	Checksum: 0x3D425BD
	Offset: 0x8570
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_ead43429(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_e9ea11fb
	Namespace: namespace_c7062b04
	Checksum: 0x367DAF9D
	Offset: 0x85A0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_e9ea11fb()
{
	namespace_2f06d687::function_2b37a3c9("train_robot_rushers", "script_noteworthy", &function_d0709553);
	namespace_2f06d687::function_2b37a3c9("train_roof1_reinforcements", "targetname", &function_422fbc49);
	namespace_2f06d687::function_2b37a3c9("train_rooftop_depth", "script_noteworthy", &function_ca6ecfb3);
}

/*
	Name: function_d0709553
	Namespace: namespace_c7062b04
	Checksum: 0x5D4A4CD5
	Offset: 0x8640
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_d0709553()
{
	self endon("hash_128f8789");
	if(self.var_e6e9b8de === "actor_spawner_enemy_sec_robot_cqb_shotgun")
	{
		self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
		self namespace_d84e54db::function_ceb883cd("sprint", 1);
	}
}

/*
	Name: function_422fbc49
	Namespace: namespace_c7062b04
	Checksum: 0x1A29F9A8
	Offset: 0x86B8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_422fbc49()
{
	self endon("hash_128f8789");
	self.var_15dfd6c = 0.1;
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	var_c9ae457a = function_6ada35ba(self.var_b07228b6, "targetname");
	self function_169cc712(var_c9ae457a, 1);
	var_adc17f12 = [];
	var_adc17f12[0] = "climb_up_robots_cleared";
	var_adc17f12[1] = "release_train_roof1_reinforcements";
	level namespace_ad23e503::function_43ac000b(var_adc17f12);
	self.var_15dfd6c = 1;
	self function_fb5720f7();
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
}

/*
	Name: function_ca6ecfb3
	Namespace: namespace_c7062b04
	Checksum: 0x66F667BF
	Offset: 0x87E8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_ca6ecfb3()
{
	self endon("hash_128f8789");
	self.var_15dfd6c = 0.1;
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(function_316422d1(self.var_722885f3, var_5dc5e20a.var_722885f3) <= 722500)
			{
				self.var_15dfd6c = 1;
				return;
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_6ba3e1f3
	Namespace: namespace_c7062b04
	Checksum: 0x14710568
	Offset: 0x88E0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6ba3e1f3()
{
	namespace_2f06d687::function_45679edd("climb_up_spawns", 0);
	level namespace_ad23e503::function_74d6b22f("climb_up_robots_cleared");
}

/*
	Name: function_8a983837
	Namespace: namespace_c7062b04
	Checksum: 0xC6AF9A
	Offset: 0x8928
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8a983837()
{
	namespace_cc27597::function_8f9f34e0("cin_gen_ambient_quadtank_inactive", &function_3f4179e6, "play");
	namespace_cc27597::function_43718187("cin_gen_ambient_quadtank_inactive");
}

/*
	Name: function_3f4179e6
	Namespace: namespace_c7062b04
	Checksum: 0x1053458
	Offset: 0x8980
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_3f4179e6(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 function_9ce09198(0);
	}
}

/*
	Name: function_8b13b1f8
	Namespace: namespace_c7062b04
	Checksum: 0x52BE6A64
	Offset: 0x8A20
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_8b13b1f8()
{
	level thread function_a9baa4e3();
	function_1b953f61();
	namespace_d5067552::function_bae40a28("train_second_rooftop_sm");
	level thread function_72338df1();
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("concussive_wave_2_robots_sm");
}

/*
	Name: function_72338df1
	Namespace: namespace_c7062b04
	Checksum: 0x9A883044
	Offset: 0x8AB0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_72338df1()
{
	level namespace_ad23e503::function_1ab5ebec("init_last_train_car_charging_stations");
	namespace_d5067552::function_2992720d("train_second_rooftop_sm");
}

/*
	Name: function_5c66c0be
	Namespace: namespace_c7062b04
	Checksum: 0x3ADC007E
	Offset: 0x8AF8
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_5c66c0be()
{
	level namespace_ad23e503::function_1ab5ebec("init_last_train_car_charging_stations");
	namespace_d5067552::function_bae40a28("end_cargo_car_sm");
	namespace_82b91a51::function_76f13293();
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("last_car_robot_chargers", "script_noteworthy");
	foreach(var_1cbcb46d in var_3d2988cc)
	{
		var_1cbcb46d namespace_cc27597::function_c35e6aab();
	}
}

/*
	Name: function_e84c6ac3
	Namespace: namespace_c7062b04
	Checksum: 0xC11D967C
	Offset: 0x8C00
	Size: 0x361
	Parameters: 0
	Flags: None
*/
function function_e84c6ac3()
{
	level thread function_96eacbb1();
	level namespace_ad23e503::function_1ab5ebec("spawn_last_train_car_enemies");
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("last_car_robot_chargers_left", "targetname");
	foreach(var_1cbcb46d in var_3d2988cc)
	{
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(function_72a94f05(0.1, 0.25));
	}
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("last_car_robot_chargers_center", "targetname");
	foreach(var_1cbcb46d in var_3d2988cc)
	{
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(function_72a94f05(0.1, 0.25));
	}
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("last_car_robot_chargers_right", "targetname");
	foreach(var_1cbcb46d in var_3d2988cc)
	{
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(function_72a94f05(0.1, 0.25));
	}
	level namespace_ad23e503::function_1ab5ebec("start_last_train_car_end_enemies");
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("last_car_robot_charger_end", "targetname");
	foreach(var_1cbcb46d in var_3d2988cc)
	{
		var_1cbcb46d thread namespace_cc27597::function_43718187();
		wait(function_72a94f05(0.1, 0.25));
	}
}

/*
	Name: function_96eacbb1
	Namespace: namespace_c7062b04
	Checksum: 0x35969134
	Offset: 0x8F70
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_96eacbb1()
{
	level endon("hash_70ca9767");
	namespace_d5067552::function_72e3dd35("end_cargo_car_sm");
	level namespace_ad23e503::function_74d6b22f("spawn_last_train_car_enemies");
}

/*
	Name: function_d90d60f3
	Namespace: namespace_c7062b04
	Checksum: 0x27E9125A
	Offset: 0x8FC0
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_d90d60f3(var_864a3d55)
{
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	if(var_864a3d55)
	{
		function_6c1294b8("phys_gravity_dir", (-1, 0, 0.9));
	}
	else
	{
		function_6c1294b8("phys_gravity_dir", (0, 0, 1));
	}
}

/*
	Name: function_143fa139
	Namespace: namespace_c7062b04
	Checksum: 0xB849C222
	Offset: 0x9040
	Size: 0x41B
	Parameters: 2
	Flags: None
*/
function function_143fa139(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_c63fb1d();
		function_cbf76d8c();
		level.var_fbc6080 = 1;
		level thread function_96977933();
		level thread function_f9012fc();
		level thread function_75fc9f6a();
		level thread function_441a5f5c();
		var_3d2988cc = namespace_14b42b8a::function_7faf4c39("last_car_robot_chargers", "script_noteworthy");
		foreach(var_1cbcb46d in var_3d2988cc)
		{
			var_1cbcb46d namespace_cc27597::function_5c143f59();
		}
		function_cfb8d002();
		var_3b374bac = function_6ada35ba("train_detach_bomb_hack", "targetname");
		var_3b374bac function_175e6b8e(0);
		namespace_d7916d65::function_c32ba481();
		level namespace_71e9cb84::function_74d6b22f("train_main_fx_occlude", 1);
		level namespace_82b91a51::function_b85473ac(0);
		level namespace_71e9cb84::function_74d6b22f("set_fog_bank", 0);
		level thread function_85eaeda4();
	}
	namespace_ce7c3ed5::function_2222cd4f("cp_newworld_env_detachbomb");
	namespace_76d95162::function_d9f49fba(0);
	namespace_71e9cb84::function_74d6b22f("train_lockdown_glass_left", 0);
	namespace_71e9cb84::function_74d6b22f("train_lockdown_glass_right", 0);
	namespace_71e9cb84::function_74d6b22f("train_lockdown_shutters_1", 0);
	level notify("hash_73e48fb7");
	namespace_82b91a51::function_d8eaed3d(9);
	var_6bfe1586 = function_84dc13df();
	namespace_ce0e5f06::function_3383b379();
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_underground_locate_terrorist");
	namespace_d0ef8521::function_74d6b22f("cp_level_newworld_train_disarm");
	level thread function_68c5ad6d();
	level thread namespace_ce0e5f06::function_30ec5bf7();
	function_67af13f9(var_6bfe1586);
	level waittill("hash_132422b6");
	level namespace_82b91a51::function_a0938376();
	level notify("hash_a72162f1");
	namespace_82b91a51::function_ef3f75eb("newworld_train_complete");
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_train_disarm");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_ea4ba3f3
	Namespace: namespace_c7062b04
	Checksum: 0x552F6D3D
	Offset: 0x9468
	Size: 0x123
	Parameters: 4
	Flags: None
*/
function function_ea4ba3f3(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc === 1)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_newworld_underground_locate_terrorist");
		namespace_d0ef8521::function_31cd1834("cp_level_newworld_train_subobj_hack_door");
	}
	level namespace_71e9cb84::function_74d6b22f("train_brake_flaps", 2);
	var_265e12e8 = function_6ada35ba("train_bomb_push_door_l", "targetname");
	var_265e12e8 function_dc8c8404();
	var_3a80c4a6 = function_6ada35ba("train_bomb_push_door_r", "targetname");
	var_3a80c4a6 function_dc8c8404();
	level notify("hash_f49d815e");
	level thread function_f0cad19e();
}

/*
	Name: function_84dc13df
	Namespace: namespace_c7062b04
	Checksum: 0x6E1B7013
	Offset: 0x9598
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_84dc13df()
{
	namespace_d0ef8521::function_74d6b22f("cp_level_newworld_train_subobj_hack_door");
	var_3b374bac = function_6ada35ba("train_detach_bomb_hack", "targetname");
	var_3b374bac function_175e6b8e(1);
	var_6bfe1586 = namespace_ce0e5f06::function_16dd8c5f("train_detach_bomb_hack", &"cp_level_newworld_access_door", &"CP_MI_ZURICH_NEWWORLD_HACK", "train_door_panel", "train_door_hacked", 0);
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_train_subobj_hack_door");
	return var_6bfe1586;
}

/*
	Name: function_cfb8d002
	Namespace: namespace_c7062b04
	Checksum: 0xD46F84EF
	Offset: 0x9668
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_cfb8d002()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_train_end_bundle", &function_368767cf, "init");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_train_end_bundle");
}

/*
	Name: function_368767cf
	Namespace: namespace_c7062b04
	Checksum: 0x783D2E4F
	Offset: 0x96C8
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_368767cf(var_c77d2837)
{
	var_3ebf068e = var_c77d2837["newworld_train_end"];
	var_3ebf068e function_8f279593();
	var_bf143437 = function_99201f25("snw_bomb_detach", "script_noteworthy");
	foreach(var_133e9095 in var_bf143437)
	{
		var_133e9095 function_37f7858a(var_3ebf068e);
	}
	var_3ebf068e function_8c8e79fe();
}

/*
	Name: function_67af13f9
	Namespace: namespace_c7062b04
	Checksum: 0x58A962CB
	Offset: 0x97E0
	Size: 0x293
	Parameters: 1
	Flags: None
*/
function function_67af13f9(var_6bfe1586)
{
	level notify("hash_70ca9767");
	level thread namespace_e38c3c58::function_922297e3();
	if(isdefined(level.var_700e70fe))
	{
		level thread [[level.var_700e70fe]]();
	}
	namespace_cc27597::function_8f9f34e0("cin_new_16_01_detachbombcar_1st_detach", &function_956507bd, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_16_01_detachbombcar_1st_detach", &function_c07e4907, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_16_01_detachbombcar_1st_detach", &function_87eb5c2, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_16_01_detachbombcar_1st_detach", &function_80caa10e, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_16_01_detachbombcar_1st_detach", &function_7db3194d, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_16_01_detachbombcar_1st_detach", &function_37f058fc, "play");
	level thread namespace_cc27597::function_43718187("cin_new_16_01_detachbombcar_1st_detach", var_6bfe1586);
	function_9e3608e3("train_bomb_exterior_hide");
	var_3ebf068e = function_6ada35ba("newworld_train_end", "targetname");
	var_3ebf068e function_48f26766();
	level waittill("hash_8fa0f2c");
	var_3a80c4a6 = function_6ada35ba("train_bomb_push_door_r", "targetname");
	var_3a80c4a6 function_fde61077(-64, 0.5);
	var_265e12e8 = function_6ada35ba("train_bomb_push_door_l", "targetname");
	var_265e12e8 function_fde61077(64, 0.5);
}

/*
	Name: function_956507bd
	Namespace: namespace_c7062b04
	Checksum: 0xF51919C5
	Offset: 0x9A80
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_956507bd(var_c77d2837)
{
	level endon("hash_c95de0a1");
	level waittill("hash_8b34418f");
	namespace_ce0e5f06::function_2eded728(1);
	level waittill("hash_8fa0f2c");
	namespace_ce0e5f06::function_2eded728(0);
}

/*
	Name: function_c07e4907
	Namespace: namespace_c7062b04
	Checksum: 0x545E0B76
	Offset: 0x9AE8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_c07e4907(var_c77d2837)
{
	var_1c26230b = var_c77d2837["taylor"];
	var_1c26230b function_8c8e79fe();
	var_1c26230b waittill("hash_24a44efc");
	var_1c26230b namespace_ce0e5f06::function_c949a8ed(1);
	var_1c26230b waittill("hash_32fc12d3");
	var_1c26230b namespace_ce0e5f06::function_4943984c();
}

/*
	Name: function_87eb5c2
	Namespace: namespace_c7062b04
	Checksum: 0x3D2466AA
	Offset: 0x9B80
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_87eb5c2(var_c77d2837)
{
	level waittill("hash_b6d3fdf6");
	namespace_ce0e5f06::function_2eded728(1);
	level waittill("hash_50398047");
	namespace_ce0e5f06::function_2eded728(0);
}

/*
	Name: function_80caa10e
	Namespace: namespace_c7062b04
	Checksum: 0xAB67C686
	Offset: 0x9BD8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_80caa10e(var_c77d2837)
{
	level waittill("hash_c15931f2");
	namespace_ce0e5f06::function_2eded728(1);
	function_acdfe1fe("cp_newworld_env_detachbomb");
	level waittill("hash_6bd55c0d");
	namespace_ce0e5f06::function_2eded728(0);
}

/*
	Name: function_7db3194d
	Namespace: namespace_c7062b04
	Checksum: 0xEF1CCAAB
	Offset: 0x9C48
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_7db3194d(var_c77d2837)
{
	level thread function_778d22d7(var_c77d2837);
	var_c77d2837["player 1"] waittill("hash_7db3194d");
	level notify("hash_c053b2ca");
	function_9e3608e3("train_bomb_models_hide");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_train_end_bundle");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level namespace_82b91a51::function_b85473ac(1);
		level namespace_71e9cb84::function_74d6b22f("set_fog_bank", 1);
	}
}

/*
	Name: function_778d22d7
	Namespace: namespace_c7062b04
	Checksum: 0xF0024C1D
	Offset: 0x9D20
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_778d22d7(var_c77d2837)
{
	var_c77d2837["player 1"] waittill("hash_fbe094ad");
	namespace_80983c42::function_80983c42("ex_bomb_igc");
	var_3ebf068e = function_6ada35ba("newworld_train_end", "targetname");
	var_3ebf068e namespace_71e9cb84::function_74d6b22f("train_explosion_fx", 1);
}

/*
	Name: function_37f058fc
	Namespace: namespace_c7062b04
	Checksum: 0x8A16877E
	Offset: 0x9DB8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_37f058fc(var_c77d2837)
{
	var_c77d2837["player 1"] waittill("hash_7d28806");
	level notify("hash_c95de0a1");
	level namespace_ad23e503::function_74d6b22f("infinite_white_transition");
}

/*
	Name: function_68c5ad6d
	Namespace: namespace_c7062b04
	Checksum: 0x557F2523
	Offset: 0x9E10
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_68c5ad6d()
{
	level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_newworld_train_quadtank_tarp_bundle", 1);
}

/*
	Name: function_de13d6e2
	Namespace: namespace_c7062b04
	Checksum: 0x28405B85
	Offset: 0x9E40
	Size: 0x589
	Parameters: 1
	Flags: None
*/
function function_de13d6e2(var_be1a191b)
{
	if(!isdefined(var_be1a191b))
	{
		var_be1a191b = 0;
	}
	level.var_55c8b6a7 = function_6ada35ba("train_terrain_country_01_track_01", "targetname");
	level.var_55c8b6a7 function_52874109("country_01_lighting");
	level.var_e3c1476c = function_6ada35ba("train_terrain_country_01_track_02", "targetname");
	level.var_e3c1476c function_52874109("country_02_lighting");
	level.var_9c3c1d5 = function_6ada35ba("train_terrain_country_01_track_03", "targetname");
	level.var_9c3c1d5 function_52874109("country_03_lighting");
	level.var_1bfadc08 = function_6ada35ba("train_terrain_country_02_track_01", "targetname");
	level.var_1bfadc08 function_52874109("country2_01_lighting");
	level.var_8e024b43 = function_6ada35ba("train_terrain_country_02_track_02", "targetname");
	level.var_8e024b43 function_52874109("country2_02_lighting");
	level.var_67ffd0da = function_6ada35ba("train_terrain_country_02_track_03", "targetname");
	level.var_67ffd0da function_52874109("country2_03_lighting");
	level.var_accc6632 = function_6ada35ba("train_terrain_tunnel_01_track_01", "targetname");
	level.var_accc6632 function_52874109("tunnel_01_lighting");
	level.var_86c9ebc9 = function_6ada35ba("train_terrain_tunnel_01_track_02", "targetname");
	level.var_86c9ebc9 function_52874109("tunnel_02_lighting");
	level.var_60c77160 = function_6ada35ba("train_terrain_tunnel_01_track_03", "targetname");
	level.var_60c77160 function_52874109("tunnel_03_lighting");
	level.var_689205c5 = function_6ada35ba("train_terrain_city_01_track_01", "targetname");
	level.var_8e94802e = function_6ada35ba("train_terrain_city_01_track_02", "targetname");
	level.var_b496fa97 = function_6ada35ba("train_terrain_city_01_track_03", "targetname");
	if(var_be1a191b == 1)
	{
		level.var_689205c5 function_dc8c8404();
		level.var_8e94802e function_dc8c8404();
		level.var_b496fa97 function_dc8c8404();
		var_84ff6356 = function_84970cc4(level.var_55c8b6a7, level.var_e3c1476c, level.var_9c3c1d5, level.var_1bfadc08, level.var_8e024b43, level.var_67ffd0da, level.var_accc6632, level.var_86c9ebc9, level.var_60c77160);
	}
	else
	{
		var_84ff6356 = function_84970cc4(level.var_55c8b6a7, level.var_e3c1476c, level.var_9c3c1d5, level.var_1bfadc08, level.var_8e024b43, level.var_67ffd0da, level.var_accc6632, level.var_86c9ebc9, level.var_60c77160, level.var_689205c5, level.var_8e94802e, level.var_b496fa97);
	}
	level.var_9cd0665b = var_84ff6356;
	foreach(var_7d2a21b6 in var_84ff6356)
	{
		if(isdefined(var_7d2a21b6.var_685c7a0b))
		{
			foreach(var_f4933ec0 in var_7d2a21b6.var_685c7a0b)
			{
				var_f4933ec0 function_37f7858a(var_7d2a21b6);
			}
		}
		function_8b08d700(var_7d2a21b6);
	}
}

/*
	Name: function_52874109
	Namespace: namespace_c7062b04
	Checksum: 0x28C912FB
	Offset: 0xA3D8
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_52874109(var_a466e982)
{
	var_d3ec9eeb = function_99201f25(var_a466e982, "script_noteworthy");
	if(isdefined(var_d3ec9eeb))
	{
		self.var_685c7a0b = var_d3ec9eeb;
	}
}

/*
	Name: function_8b08d700
	Namespace: namespace_c7062b04
	Checksum: 0x8BA5F452
	Offset: 0xA430
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_8b08d700(var_7d2a21b6)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_7d2a21b6), "Dev Block strings are not supported");
	#/
	if(isdefined(var_7d2a21b6.var_685c7a0b))
	{
		foreach(var_f4933ec0 in var_7d2a21b6.var_685c7a0b)
		{
			var_f4933ec0 function_50ccee8d();
		}
	}
	var_7d2a21b6 function_50ccee8d();
}

/*
	Name: function_c7d3965b
	Namespace: namespace_c7062b04
	Checksum: 0x77EF464B
	Offset: 0xA530
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_c7d3965b(var_7d2a21b6)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_7d2a21b6), "Dev Block strings are not supported");
	#/
	if(isdefined(var_7d2a21b6.var_685c7a0b))
	{
		foreach(var_f4933ec0 in var_7d2a21b6.var_685c7a0b)
		{
			var_f4933ec0 function_8c8e79fe();
		}
	}
	var_7d2a21b6 function_8c8e79fe();
}

/*
	Name: function_8db22683
	Namespace: namespace_c7062b04
	Checksum: 0x1FB84FBF
	Offset: 0xA630
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_8db22683(var_7d2a21b6)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_7d2a21b6), "Dev Block strings are not supported");
	#/
	if(isdefined(var_7d2a21b6.var_685c7a0b))
	{
		foreach(var_f4933ec0 in var_7d2a21b6.var_685c7a0b)
		{
			var_f4933ec0 function_48f26766();
		}
	}
	var_7d2a21b6 function_48f26766();
}

/*
	Name: function_a86fd374
	Namespace: namespace_c7062b04
	Checksum: 0xCB3EAD7E
	Offset: 0xA730
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_a86fd374()
{
	foreach(var_7d2a21b6 in level.var_9cd0665b)
	{
		function_8b08d700(var_7d2a21b6);
	}
}

/*
	Name: function_6fe6a34d
	Namespace: namespace_c7062b04
	Checksum: 0x16619496
	Offset: 0xA7C8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_6fe6a34d()
{
	var_927b5892 = level.var_689205c5;
	var_6c78de29 = level.var_8e94802e;
	var_467663c0 = level.var_b496fa97;
	level thread function_803e8029(var_927b5892, var_6c78de29, var_467663c0, 1);
	level namespace_71e9cb84::function_74d6b22f("sndTrainContext", 2);
}

/*
	Name: function_75fc9f6a
	Namespace: namespace_c7062b04
	Checksum: 0x46CF17CD
	Offset: 0xA858
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_75fc9f6a()
{
	var_927b5892 = level.var_55c8b6a7;
	var_6c78de29 = level.var_e3c1476c;
	var_467663c0 = level.var_9c3c1d5;
	level thread function_803e8029(var_927b5892, var_6c78de29, var_467663c0);
	level namespace_71e9cb84::function_74d6b22f("sndTrainContext", 1);
}

/*
	Name: function_3641dc88
	Namespace: namespace_c7062b04
	Checksum: 0xE1F75A3D
	Offset: 0xA8E8
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_3641dc88()
{
	var_718f1be5 = level.var_55c8b6a7;
	var_9791964e = level.var_e3c1476c;
	var_bd9410b7 = level.var_9c3c1d5;
	var_4cceec87 = level.var_accc6632;
	var_dac77d4c = level.var_86c9ebc9;
	var_c9f7b5 = level.var_60c77160;
	level namespace_ad23e503::function_1ab5ebec("train_switch_to_tunnel_environment");
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	level namespace_71e9cb84::function_74d6b22f("sndTrainContext", 0);
	level thread function_e00aaee6(var_718f1be5, var_9791964e, var_bd9410b7, var_4cceec87, var_dac77d4c, var_c9f7b5);
	namespace_ce0e5f06::function_85d8906c();
	level namespace_ad23e503::function_1ab5ebec("train_switch_to_forest_environment");
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	level namespace_71e9cb84::function_74d6b22f("sndTrainContext", 2);
	level thread function_e00aaee6(var_4cceec87, var_dac77d4c, var_c9f7b5, var_718f1be5, var_9791964e, var_bd9410b7);
	level namespace_82b91a51::function_67520c6a(6, undefined, &namespace_ce0e5f06::function_3383b379);
}

/*
	Name: function_c4addffd
	Namespace: namespace_c7062b04
	Checksum: 0xDC42BC36
	Offset: 0xAAC8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_c4addffd(var_ee7dbbc9)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 3;
	}
	var_4cceec87 = level.var_accc6632;
	var_dac77d4c = level.var_86c9ebc9;
	var_c9f7b5 = level.var_60c77160;
	var_f9c66158 = level.var_689205c5;
	var_6bcdd093 = level.var_8e94802e;
	var_45cb562a = level.var_b496fa97;
	namespace_ce0e5f06::function_85d8906c();
	level function_e00aaee6(level.var_2982cbda[0], level.var_2982cbda[1], level.var_2982cbda[2], var_4cceec87, var_dac77d4c, var_c9f7b5);
	wait(var_ee7dbbc9);
	level namespace_82b91a51::function_67520c6a(3, undefined, &namespace_ce0e5f06::function_3383b379);
	level function_e00aaee6(level.var_2982cbda[0], level.var_2982cbda[1], level.var_2982cbda[2], var_f9c66158, var_6bcdd093, var_45cb562a);
}

/*
	Name: function_441a5f5c
	Namespace: namespace_c7062b04
	Checksum: 0x2BAEBA82
	Offset: 0xAC40
	Size: 0x1BF
	Parameters: 0
	Flags: None
*/
function function_441a5f5c()
{
	level endon("hash_f49d815e");
	var_1f163712 = level.var_55c8b6a7;
	var_f913bca9 = level.var_e3c1476c;
	var_d3114240 = level.var_9c3c1d5;
	var_f1cc2435 = level.var_1bfadc08;
	var_17ce9e9e = level.var_8e024b43;
	var_3dd11907 = level.var_67ffd0da;
	while(1)
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported");
		#/
		level function_e00aaee6(level.var_2982cbda[0], level.var_2982cbda[1], level.var_2982cbda[2], var_f1cc2435, var_17ce9e9e, var_3dd11907);
		level namespace_71e9cb84::function_74d6b22f("sndTrainContext", 1);
		wait(function_72a94f05(4, 10));
		/#
			function_2e4b8c78("Dev Block strings are not supported");
		#/
		level function_e00aaee6(level.var_2982cbda[0], level.var_2982cbda[1], level.var_2982cbda[2], var_1f163712, var_f913bca9, var_d3114240);
		wait(function_72a94f05(4, 10));
	}
}

/*
	Name: function_803e8029
	Namespace: namespace_c7062b04
	Checksum: 0x52DF29A6
	Offset: 0xAE08
	Size: 0x1CB
	Parameters: 4
	Flags: None
*/
function function_803e8029(var_27ebb578, var_99f324b3, var_73f0aa4a, var_6dcdeb0e)
{
	if(!isdefined(var_6dcdeb0e))
	{
		var_6dcdeb0e = 0;
	}
	if(var_6dcdeb0e == 1)
	{
		var_47842d99 = namespace_14b42b8a::function_7922262b("train_terrain_origin_intro", "targetname");
	}
	else
	{
		var_47842d99 = namespace_14b42b8a::function_7922262b("train_terrain_origin", "targetname");
	}
	level namespace_ad23e503::function_9d134160("train_terrain_move_complete");
	level namespace_ad23e503::function_9d134160("train_terrain_transition");
	var_27ebb578.var_722885f3 = var_47842d99.var_722885f3 - VectorScale((1, 0, 0), 36736);
	var_99f324b3.var_722885f3 = var_47842d99.var_722885f3;
	if(isdefined(var_73f0aa4a))
	{
		var_73f0aa4a.var_722885f3 = var_47842d99.var_722885f3 + VectorScale((1, 0, 0), 36736);
	}
	level.var_5feedb29 = var_27ebb578.var_722885f3;
	function_8db22683(var_27ebb578);
	function_8db22683(var_99f324b3);
	function_8db22683(var_73f0aa4a);
	level thread function_8c130c9c(var_27ebb578, var_99f324b3, var_73f0aa4a);
}

/*
	Name: function_8c130c9c
	Namespace: namespace_c7062b04
	Checksum: 0x3345D272
	Offset: 0xAFE0
	Size: 0x353
	Parameters: 3
	Flags: None
*/
function function_8c130c9c(var_27ebb578, var_99f324b3, var_73f0aa4a)
{
	level endon("hash_6f4b6b65");
	level endon("hash_a72162f1");
	level endon("hash_f49d815e");
	level.var_2982cbda = function_84970cc4(var_27ebb578, var_99f324b3, var_73f0aa4a);
	while(!level namespace_ad23e503::function_7922262b("train_terrain_transition"))
	{
		function_c7d3965b(var_27ebb578);
		var_27ebb578.var_722885f3 = level.var_5feedb29;
		namespace_82b91a51::function_67520c6a(0.1, "train_terrain_stop", &function_8db22683, var_27ebb578);
		var_27ebb578 function_d7e3960e(36736, 4);
		var_99f324b3 function_d7e3960e(36736, 4);
		if(isdefined(var_73f0aa4a))
		{
			var_73f0aa4a function_d7e3960e(36736, 4);
		}
		wait(4);
		if(level namespace_ad23e503::function_7922262b("train_terrain_transition"))
		{
			break;
		}
		if(isdefined(var_73f0aa4a))
		{
			function_c7d3965b(var_73f0aa4a);
			var_73f0aa4a.var_722885f3 = level.var_5feedb29;
			namespace_82b91a51::function_67520c6a(0.1, "train_terrain_stop", &function_8db22683, var_73f0aa4a);
			var_27ebb578 function_d7e3960e(36736, 4);
			var_99f324b3 function_d7e3960e(36736, 4);
			var_73f0aa4a function_d7e3960e(36736, 4);
			wait(4);
			if(level namespace_ad23e503::function_7922262b("train_terrain_transition"))
			{
				break;
			}
		}
		function_c7d3965b(var_99f324b3);
		var_99f324b3.var_722885f3 = level.var_5feedb29;
		namespace_82b91a51::function_67520c6a(0.1, "train_terrain_stop", &function_8db22683, var_99f324b3);
		var_27ebb578 function_d7e3960e(36736, 4);
		var_99f324b3 function_d7e3960e(36736, 4);
		if(isdefined(var_73f0aa4a))
		{
			var_73f0aa4a function_d7e3960e(36736, 4);
		}
		wait(4);
	}
	level namespace_ad23e503::function_74d6b22f("train_terrain_move_complete");
}

/*
	Name: function_e00aaee6
	Namespace: namespace_c7062b04
	Checksum: 0x5A5C27BC
	Offset: 0xB340
	Size: 0x483
	Parameters: 6
	Flags: None
*/
function function_e00aaee6(var_408a63ba, var_1a87e951, var_f4856ee8, var_aeec5cb7, var_3ce4ed7c, var_62e767e5)
{
	level endon("hash_6f4b6b65");
	level endon("hash_a72162f1");
	level endon("hash_f49d815e");
	level namespace_ad23e503::function_74d6b22f("train_terrain_transition");
	level namespace_ad23e503::function_1ab5ebec("train_terrain_move_complete");
	level namespace_ad23e503::function_9d134160("train_terrain_move_complete");
	level namespace_ad23e503::function_9d134160("train_terrain_transition");
	var_66dbf59d = [];
	if(isdefined(var_62e767e5))
	{
		var_66dbf59d[0] = var_62e767e5;
	}
	var_66dbf59d[var_66dbf59d.size] = var_3ce4ed7c;
	var_66dbf59d[var_66dbf59d.size] = var_aeec5cb7;
	var_441a9c3c = var_66dbf59d.size;
	var_e3d03940 = [];
	if(isdefined(var_f4856ee8))
	{
		var_e3d03940[0] = var_f4856ee8;
	}
	var_e3d03940[var_e3d03940.size] = var_1a87e951;
	var_e3d03940[var_e3d03940.size] = var_408a63ba;
	var_bfa0f33f = namespace_14b42b8a::function_7922262b("back_of_the_train", "targetname");
	var_e3d03940 = function_f926d8e8(var_e3d03940, var_bfa0f33f.var_722885f3, 0);
	while(var_66dbf59d.size > 0)
	{
		var_691445b2 = var_e3d03940[var_e3d03940.size - 1];
		if(var_691445b2 === var_408a63ba || var_691445b2 === var_1a87e951 || var_691445b2 === var_f4856ee8)
		{
			function_8b08d700(var_e3d03940[var_e3d03940.size - 1]);
			namespace_84970cc4::function_c8d6f6a6(var_e3d03940, var_e3d03940.size - 1);
		}
		function_c7d3965b(var_66dbf59d[0]);
		var_66dbf59d[0].var_722885f3 = level.var_5feedb29;
		namespace_82b91a51::function_67520c6a(0.1, "train_terrain_stop", &function_8db22683, var_66dbf59d[0]);
		namespace_84970cc4::function_c3545e51(var_e3d03940, var_66dbf59d[0]);
		namespace_84970cc4::function_20b382ca(var_66dbf59d, 0);
		foreach(var_48b8273c in var_e3d03940)
		{
			var_48b8273c function_d7e3960e(36736, 4);
		}
		wait(4);
	}
	while(var_e3d03940.size > var_441a9c3c)
	{
		function_8b08d700(var_e3d03940[var_e3d03940.size - 1]);
		namespace_84970cc4::function_c8d6f6a6(var_e3d03940, var_e3d03940.size - 1);
	}
	if(isdefined(var_e3d03940[2]))
	{
		level thread function_8c130c9c(var_e3d03940[2], var_e3d03940[0], var_e3d03940[1]);
	}
	else
	{
		level thread function_8c130c9c(var_e3d03940[0], var_e3d03940[1], var_e3d03940[2]);
	}
}

/*
	Name: function_7d334045
	Namespace: namespace_c7062b04
	Checksum: 0xFDEDB4A6
	Offset: 0xB7D0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_7d334045()
{
	var_927b5892 = level.var_689205c5;
	var_6c78de29 = level.var_8e94802e;
	var_467663c0 = level.var_b496fa97;
	level notify("hash_f49d815e");
	var_927b5892 function_a96a2721(var_927b5892.var_722885f3, 0.05);
	var_6c78de29 function_a96a2721(var_6c78de29.var_722885f3, 0.05);
	var_467663c0 function_a96a2721(var_467663c0.var_722885f3, 0.05);
}

/*
	Name: function_9eb901e
	Namespace: namespace_c7062b04
	Checksum: 0x1F4F7560
	Offset: 0xB8A0
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_9eb901e()
{
	var_927b5892 = level.var_55c8b6a7;
	var_6c78de29 = level.var_e3c1476c;
	var_467663c0 = level.var_9c3c1d5;
	var_5087bc9f = level.var_1bfadc08;
	var_2a854236 = level.var_8e024b43;
	var_482c7cd = level.var_67ffd0da;
	level notify("hash_f49d815e");
	var_927b5892 function_a96a2721(var_927b5892.var_722885f3, 0.05);
	var_6c78de29 function_a96a2721(var_6c78de29.var_722885f3, 0.05);
	var_467663c0 function_a96a2721(var_467663c0.var_722885f3, 0.05);
	var_5087bc9f function_a96a2721(var_5087bc9f.var_722885f3, 0.05);
	var_2a854236 function_a96a2721(var_2a854236.var_722885f3, 0.05);
	var_482c7cd function_a96a2721(var_482c7cd.var_722885f3, 0.05);
}

/*
	Name: function_f0cad19e
	Namespace: namespace_c7062b04
	Checksum: 0x87C24AF9
	Offset: 0xBA28
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_f0cad19e()
{
	foreach(var_bf3222f4 in level.var_9cd0665b)
	{
		var_bf3222f4 function_dc8c8404();
	}
}

/*
	Name: function_96977933
	Namespace: namespace_c7062b04
	Checksum: 0x53FD4250
	Offset: 0xBAC0
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_96977933()
{
	level endon("hash_a72162f1");
	level thread function_820e1ea2();
	var_7b45393e = function_99201f25("train_bad_area", "targetname");
	foreach(var_f92a03e7 in var_7b45393e)
	{
		var_f92a03e7 thread function_8486688f();
	}
}

/*
	Name: function_8486688f
	Namespace: namespace_c7062b04
	Checksum: 0xCEA7A52A
	Offset: 0xBBA0
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_8486688f()
{
	level endon("hash_47ed8d40");
	var_f65c3861 = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_65669d7b);
		if(function_65f192a6(var_65669d7b) && (!isdefined(var_65669d7b.var_511157e8) && var_65669d7b.var_511157e8))
		{
			var_65669d7b function_b8862210("evt_plr_derez", var_65669d7b);
			var_65669d7b thread function_c24ce0f9(var_f65c3861);
		}
	}
}

/*
	Name: function_c24ce0f9
	Namespace: namespace_c7062b04
	Checksum: 0x92AF2474
	Offset: 0xBC78
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_c24ce0f9(var_f65c3861)
{
	self endon("hash_128f8789");
	while(1)
	{
		var_3c31865b = namespace_84970cc4::function_47d18840(var_f65c3861);
		if(!function_ba336b7(var_3c31865b.var_722885f3))
		{
			self.var_511157e8 = 1;
			self.var_255b9315 = 1;
			self function_83fd42b5();
			self function_8c8e79fe();
			self namespace_82b91a51::function_56cee95(1);
			self function_a30814d(var_3c31865b.var_722885f3);
			self function_eda2be50(var_3c31865b.var_6ab6f4fd);
			self namespace_71e9cb84::function_688ed188("postfx_igc");
			namespace_82b91a51::function_76f13293();
			self function_48f26766();
			self namespace_71e9cb84::function_74d6b22f("player_spawn_fx", 1);
			self namespace_82b91a51::function_67520c6a(2, "death", &namespace_71e9cb84::function_74d6b22f, "player_spawn_fx", 0);
			self thread function_f26eff53();
			wait(2);
			self function_4890e520();
			self namespace_82b91a51::function_56cee95(0);
			self.var_511157e8 = 0;
			self.var_255b9315 = 0;
			break;
		}
	}
}

/*
	Name: function_820e1ea2
	Namespace: namespace_c7062b04
	Checksum: 0x66875D3A
	Offset: 0xBE90
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_820e1ea2()
{
	level endon("hash_a72162f1");
	var_f92a03e7 = function_6ada35ba("train_bad_area_robots", "targetname");
	while(1)
	{
		var_f92a03e7 waittill("hash_4dbf3ae3", var_65669d7b);
		if(!function_65f192a6(var_65669d7b))
		{
			var_65669d7b function_2992720d();
		}
	}
}

/*
	Name: function_f9012fc
	Namespace: namespace_c7062b04
	Checksum: 0x1CC11D90
	Offset: 0xBF28
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_f9012fc()
{
	level endon("hash_a72162f1");
	var_32400ae0 = function_6ada35ba("train_grenades_make_duds", "targetname");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_35048235(var_32400ae0);
	}
	namespace_dabbe128::function_356a4ee1(&function_35048235, var_32400ae0);
}

/*
	Name: function_35048235
	Namespace: namespace_c7062b04
	Checksum: 0x756FD4AD
	Offset: 0xC018
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_35048235(var_32400ae0)
{
	level endon("hash_a72162f1");
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_e5ccf3dc", var_1a30a879);
		var_1a30a879 thread function_337c8c84(var_32400ae0);
	}
}

/*
	Name: function_337c8c84
	Namespace: namespace_c7062b04
	Checksum: 0x5E0A99E5
	Offset: 0xC080
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_337c8c84(var_32400ae0)
{
	self endon("hash_128f8789");
	if(isdefined(10))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(10, "timeout");
	}
	while(1)
	{
		if(self function_32fa5072(var_32400ae0))
		{
			if(isdefined(self))
			{
				self function_f9376476();
			}
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_9ee5007a
	Namespace: namespace_c7062b04
	Checksum: 0xB7A27F5
	Offset: 0xC148
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_9ee5007a(var_a8563e07)
{
	self thread function_be50cfd5();
	self thread function_50171558();
}

/*
	Name: function_be50cfd5
	Namespace: namespace_c7062b04
	Checksum: 0x8E9D43E9
	Offset: 0xC190
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_be50cfd5()
{
	self waittill("hash_d16125f3");
	if(isdefined(self))
	{
		self namespace_71e9cb84::function_74d6b22f("train_throw_robot_corpses", 1);
	}
}

/*
	Name: function_50171558
	Namespace: namespace_c7062b04
	Checksum: 0xFE5899D2
	Offset: 0xC1D8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_50171558()
{
	self waittill("hash_c67510f3", var_5d5ef481);
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 namespace_71e9cb84::function_74d6b22f("train_throw_robot_corpses", 1);
	}
}

/*
	Name: function_19b91013
	Namespace: namespace_c7062b04
	Checksum: 0x953A031C
	Offset: 0xC228
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_19b91013()
{
	var_d6e89d77 = namespace_14b42b8a::function_7922262b("intro_igc_train_vo", "targetname");
	var_2c3a4ffd = function_9b7fda5e("script_origin", var_d6e89d77.var_722885f3);
	level waittill("hash_c685b3a3");
	var_2c3a4ffd namespace_71b8dba1::function_81141386("trai_downtown_zurich_fin_0", 7, 1);
	var_2c3a4ffd function_dc8c8404();
}

/*
	Name: function_c63fb1d
	Namespace: namespace_c7062b04
	Checksum: 0xFF9497A4
	Offset: 0xC2E0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_c63fb1d()
{
	var_7066a248 = namespace_14b42b8a::function_7922262b("taylor_vo", "targetname");
	level.var_fc1953ce = function_9b7fda5e("script_origin", var_7066a248.var_722885f3);
}

/*
	Name: function_8c0c3c47
	Namespace: namespace_c7062b04
	Checksum: 0x99BEB3DB
	Offset: 0xC348
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_8c0c3c47()
{
	level namespace_ad23e503::function_c35e6aab("train_intro_vo_complete");
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_you_ve_been_here_bef_0", undefined, 1);
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_all_robots_should_be_0", 0.5, 1);
	level namespace_ad23e503::function_74d6b22f("train_intro_vo_complete");
}

/*
	Name: function_11711684
	Namespace: namespace_c7062b04
	Checksum: 0x699BEB4A
	Offset: 0xC3F0
	Size: 0x189
	Parameters: 2
	Flags: None
*/
function function_11711684(var_81a32895, var_2380d5c)
{
	level namespace_ad23e503::function_1ab5ebec("train_intro_vo_complete");
	var_dfcc01fd = namespace_ce0e5f06::function_71840183(var_81a32895, var_2380d5c);
	var_12b288c7 = var_dfcc01fd.var_4be20d44 + "_fired";
	var_a2cc98e = var_81a32895 + "_use_ability_tutorial";
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_takedown_is_another_0", 0.25, 1, var_5dc5e20a);
		var_5dc5e20a thread function_1563ec28(var_a2cc98e);
		var_5dc5e20a thread function_152eb171(var_12b288c7);
	}
}

/*
	Name: function_1563ec28
	Namespace: namespace_c7062b04
	Checksum: 0x73654281
	Offset: 0xC588
	Size: 0x145
	Parameters: 1
	Flags: None
*/
function function_1563ec28(var_a2cc98e)
{
	level endon("hash_e6f4684e");
	self endon(var_a2cc98e);
	self endon("hash_128f8789");
	if(!self namespace_ad23e503::function_dbca4c5d(var_a2cc98e))
	{
		return;
	}
	if(self namespace_ad23e503::function_7922262b(var_a2cc98e))
	{
		return;
	}
	wait(30);
	var_d16e6be2 = function_dc99997a(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_what_are_you_waiting_0", undefined, 1, self);
			break;
		}
		case 1:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_don_t_leave_me_hangi_0", undefined, 1, self);
			break;
		}
		case 2:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_i_m_aging_by_the_fuc_0", undefined, 1, self);
			break;
		}
	}
}

/*
	Name: function_152eb171
	Namespace: namespace_c7062b04
	Checksum: 0xD72B4971
	Offset: 0xC6D8
	Size: 0x139
	Parameters: 1
	Flags: None
*/
function function_152eb171(var_12b288c7)
{
	self endon("hash_128f8789");
	level endon("hash_e6f4684e");
	self thread function_e5b6ecf2(var_12b288c7, 1);
	self waittill(var_12b288c7);
	wait(0.25);
	var_d16e6be2 = function_dc99997a(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_that_s_how_you_take_0", undefined, 1, self);
			break;
		}
		case 1:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_nice_you_re_gettin_0", undefined, 1, self);
			break;
		}
		case 2:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_nice_takedown_righ_0", undefined, 1, self);
			break;
		}
	}
	self notify("hash_8bbc0169");
}

/*
	Name: function_e5b6ecf2
	Namespace: namespace_c7062b04
	Checksum: 0xB84F4F66
	Offset: 0xC820
	Size: 0x1C7
	Parameters: 2
	Flags: None
*/
function function_e5b6ecf2(var_12b288c7, var_a74dbb8c)
{
	self endon("hash_128f8789");
	level endon("hash_70ca9767");
	if(isdefined(var_a74dbb8c))
	{
		self namespace_82b91a51::function_9fcf3cd8(30, "takedown_tutorial_success_vo_complete");
		wait(15);
	}
	while(1)
	{
		self waittill(var_12b288c7);
		if(isdefined(level.var_fc1953ce.var_fe2c8dda) && level.var_fc1953ce.var_fe2c8dda)
		{
			continue;
		}
		if(isdefined(level.var_fc1953ce.var_c795bf9b) && level.var_fc1953ce.var_c795bf9b)
		{
			continue;
		}
		level.var_fc1953ce.var_c795bf9b = 1;
		wait(0.25);
		var_d16e6be2 = function_dc99997a(0, 3);
		switch(var_d16e6be2)
		{
			case 0:
			{
				level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_that_s_how_you_take_0", undefined, 1);
				break;
			}
			case 1:
			{
				level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_nice_you_re_gettin_0", undefined, 1);
				break;
			}
			case 2:
			{
				level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_nice_takedown_righ_0", undefined, 1);
				break;
			}
		}
		level thread function_11e947ae();
	}
}

/*
	Name: function_11e947ae
	Namespace: namespace_c7062b04
	Checksum: 0x9033CDAC
	Offset: 0xC9F0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_11e947ae()
{
	wait(30);
	level.var_fc1953ce.var_c795bf9b = 0;
}

/*
	Name: function_8e9219f
	Namespace: namespace_c7062b04
	Checksum: 0x8696F488
	Offset: 0xCA18
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_8e9219f()
{
	if(isdefined(self.var_470b117b) && self.var_470b117b)
	{
		return;
	}
	self.var_470b117b = 1;
	var_d16e6be2 = function_dc99997a(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_watch_the_civs_you_0", 0.5, 1, self);
			break;
		}
		case 1:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_this_may_be_sim_but_0", 0.5, 1, self);
			break;
		}
		case 2:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_if_this_shit_was_rea_0", 0.5, 1, self);
			break;
		}
	}
	self thread function_999e5485();
}

/*
	Name: function_999e5485
	Namespace: namespace_c7062b04
	Checksum: 0xD99FD7E0
	Offset: 0xCB48
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_999e5485()
{
	self endon("hash_128f8789");
	wait(30);
	self.var_470b117b = 0;
}

/*
	Name: function_783ceb85
	Namespace: namespace_c7062b04
	Checksum: 0x17A1C407
	Offset: 0xCB70
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_783ceb85()
{
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_watch_your_flank_th_0", undefined, 1);
}

/*
	Name: function_123070a9
	Namespace: namespace_c7062b04
	Checksum: 0x7C6732AB
	Offset: 0xCBA8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_123070a9()
{
	var_d6e89d77 = namespace_14b42b8a::function_7922262b("train_lockdown_vo", "targetname");
	var_2c3a4ffd = function_9b7fda5e("script_origin", (-20881, 15612, 4267));
	while(!level namespace_ad23e503::function_7922262b("stop_train_lockdown_vo"))
	{
		var_2c3a4ffd namespace_71b8dba1::function_81141386("trai_warning_train_going_0", undefined, 1);
		wait(5);
	}
	var_2c3a4ffd function_dc8c8404();
}

/*
	Name: function_9f8dbaa2
	Namespace: namespace_c7062b04
	Checksum: 0x1CB9356B
	Offset: 0xCC78
	Size: 0x11B
	Parameters: 2
	Flags: None
*/
function function_9f8dbaa2(var_81a32895, var_2380d5c)
{
	self endon("hash_848a4771");
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_use_concussive_wave_0", undefined, 1, self);
	self namespace_ad23e503::function_74d6b22f("concussive_wave_tutorial_vo_complete");
	var_dfcc01fd = namespace_ce0e5f06::function_71840183(var_81a32895, var_2380d5c);
	var_12b288c7 = var_dfcc01fd.var_4be20d44 + "_fired";
	var_a2cc98e = var_81a32895 + "_use_ability_tutorial";
	var_b41e8e5c = var_81a32895 + "_WW_tutorial";
	self thread function_32b93f59(var_b41e8e5c, var_a2cc98e);
	self thread function_3fbeb972(var_12b288c7);
}

/*
	Name: function_32b93f59
	Namespace: namespace_c7062b04
	Checksum: 0x6FF98EEC
	Offset: 0xCDA0
	Size: 0x1A5
	Parameters: 2
	Flags: None
*/
function function_32b93f59(var_b41e8e5c, var_a2cc98e)
{
	level endon("hash_70ca9767");
	self endon(var_a2cc98e);
	self endon("hash_128f8789");
	if(!self namespace_ad23e503::function_dbca4c5d(var_b41e8e5c))
	{
		return;
	}
	self namespace_ad23e503::function_1ab5ebec(var_b41e8e5c);
	wait(10);
	if(self namespace_ad23e503::function_7922262b(var_a2cc98e))
	{
		return;
	}
	var_d16e6be2 = function_dc99997a(0, 4);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_one_concussive_wave_0", undefined, 1, self);
			break;
		}
		case 1:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_let_me_see_you_can_d_0", undefined, 1, self);
			break;
		}
		case 2:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_quit_dicking_around_0", undefined, 1, self);
			break;
		}
		case 3:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_concussive_wave_is_o_0", undefined, 1, self);
			break;
		}
	}
}

/*
	Name: function_3fbeb972
	Namespace: namespace_c7062b04
	Checksum: 0xB3BE972B
	Offset: 0xCF50
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_3fbeb972(var_12b288c7)
{
	self endon("hash_128f8789");
	level endon("hash_70ca9767");
	self waittill("hash_f045e164");
	wait(0.75);
	var_d16e6be2 = function_dc99997a(0, 3);
	switch(var_d16e6be2)
	{
		case 0:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_fuck_yes_you_re_a_0", undefined, 1, self);
			break;
		}
		case 1:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_see_how_that_just_to_0", undefined, 1, self);
			break;
		}
		case 2:
		{
			level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_shock_and_awe_newbl_0", undefined, 1, self);
			break;
		}
	}
	self namespace_82b91a51::function_67520c6a(30, "death", &function_7bece35e);
}

/*
	Name: function_7bece35e
	Namespace: namespace_c7062b04
	Checksum: 0x2EB6D0D6
	Offset: 0xD0A0
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_7bece35e()
{
	self endon("hash_128f8789");
	level endon("hash_70ca9767");
	while(1)
	{
		self waittill("hash_f045e164");
		wait(0.75);
		if(isdefined(level.var_fc1953ce.var_fe2c8dda) && level.var_fc1953ce.var_fe2c8dda)
		{
			continue;
		}
		if(isdefined(level.var_fc1953ce.var_c795bf9b) && level.var_fc1953ce.var_c795bf9b)
		{
			continue;
		}
		level.var_fc1953ce.var_c795bf9b = 1;
		var_d16e6be2 = function_dc99997a(0, 3);
		switch(var_d16e6be2)
		{
			case 0:
			{
				level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_fuck_yes_you_re_a_0", undefined, 1);
				break;
			}
			case 1:
			{
				level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_see_how_that_just_to_0", undefined, 1);
				break;
			}
			case 2:
			{
				level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_shock_and_awe_newbl_0", undefined, 1);
				break;
			}
		}
		level thread function_631b737f();
	}
}

/*
	Name: function_631b737f
	Namespace: namespace_c7062b04
	Checksum: 0x415058E7
	Offset: 0xD230
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_631b737f()
{
	wait(30);
	level.var_fc1953ce.var_c795bf9b = 0;
}

/*
	Name: function_a9baa4e3
	Namespace: namespace_c7062b04
	Checksum: 0x282B555A
	Offset: 0xD258
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_a9baa4e3()
{
	if(function_27c72c1b())
	{
		return;
	}
	level namespace_ad23e503::function_c35e6aab("dni_supercomputer_vo_complete");
	namespace_4dbf3ae3::function_1ab5ebec("dni_supercomputer_vo");
	level thread namespace_d0ef8521::function_45d1556("breadcrumb_helper_find_bomb");
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_the_neural_network_p_0", undefined, 1);
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_you_better_pick_up_t_0", 0.5, 1);
	level namespace_ad23e503::function_74d6b22f("dni_supercomputer_vo_complete");
}

/*
	Name: function_f7302a65
	Namespace: namespace_c7062b04
	Checksum: 0xBD16C518
	Offset: 0xD348
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_f7302a65()
{
	wait(0.25);
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_you_got_hostiles_cli_0", undefined, 1);
}

/*
	Name: function_13b3e595
	Namespace: namespace_c7062b04
	Checksum: 0xE5E67B9E
	Offset: 0xD388
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_13b3e595()
{
	namespace_4dbf3ae3::function_1ab5ebec("player_near_last_car_VO");
	level.var_fc1953ce namespace_71b8dba1::function_81141386("tayr_keep_pushing_up_you_0", undefined, 1);
}

/*
	Name: function_f26eff53
	Namespace: namespace_c7062b04
	Checksum: 0x5B186BF6
	Offset: 0xD3D8
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_f26eff53()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_cd9625d0) && self.var_cd9625d0)
	{
		return;
	}
	if(!isdefined(self.var_bd355621))
	{
		self.var_bd355621 = function_84970cc4("tayr_watch_your_step_try_0", "tayr_you_fall_here_you_ge_0", "tayr_pick_yourself_up_and_0");
	}
	wait(0.5);
	var_46639773 = namespace_84970cc4::function_c8d6f6a6(self.var_bd355621, function_dc99997a(0, self.var_bd355621.size), 0);
	if(self.var_bd355621.size == 0)
	{
		self.var_bd355621 = undefined;
	}
	level.var_fc1953ce namespace_71b8dba1::function_81141386(var_46639773, undefined, 1, self);
	self thread function_d9c04d31();
}

/*
	Name: function_d9c04d31
	Namespace: namespace_c7062b04
	Checksum: 0xEEC328EE
	Offset: 0xD4E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d9c04d31()
{
	self endon("hash_128f8789");
	self.var_cd9625d0 = 1;
	wait(30);
	self.var_cd9625d0 = 0;
}

/*
	Name: function_8a8944d6
	Namespace: namespace_c7062b04
	Checksum: 0xCD6905C6
	Offset: 0xD520
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_8a8944d6(var_133e9095)
{
	/#
		while(isdefined(var_133e9095) && isdefined(self))
		{
			function_4e418837(var_133e9095.var_722885f3, self.var_722885f3, (1, 0, 0), 0.1);
			namespace_f96f74aa::function_172e04fa(var_133e9095.var_722885f3, 16, (1, 0, 0), 0.5, 1);
			namespace_f96f74aa::function_351b2d2a(self.var_722885f3, self.var_6ab6f4fd);
			namespace_f96f74aa::function_351b2d2a(var_133e9095.var_722885f3, var_133e9095.var_6ab6f4fd);
			wait(0.05);
		}
	#/
}

