#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation;
#using scripts\cp\cp_mi_sing_blackstation_accolades;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_4040b6c2;

/*
	Name: function_9f5e1dcd
	Namespace: namespace_4040b6c2
	Checksum: 0xC6574FBE
	Offset: 0x1838
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_9f5e1dcd()
{
	level.var_e121f644 = 0;
	level.var_6999c9ec = 0;
	level.var_eaf20b66 = function_fe0cfd2e("black_station_warlord_preferred_node", "targetname");
	level.var_c5719229 = 0;
	level thread function_da25c72f();
	level thread function_86861a95();
	level thread function_d316aef3();
	level thread function_df797544();
	level thread function_7c8de67c();
	level thread function_1f5941f8();
	level thread function_41ad2775();
	level thread function_bb8d01e2();
	level thread function_c31f21d6();
	level thread function_60578067();
	level thread function_d9afa854();
	level thread function_46ae7f32();
	level thread function_9694617b();
	level thread function_c9bd2230();
	level thread function_d83742ed();
	level thread function_5493cb1d();
	level thread function_5e698598();
	if(isdefined(level.var_513b9d17))
	{
		level thread [[level.var_513b9d17]]();
	}
	level thread namespace_23567e72::function_328b2c47();
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_79e1cd97::function_d870e0, "trig_exterior_color01");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "toggle_rain_sprite", 0);
	level namespace_ad23e503::function_1ab5ebec("exterior_ready_weapons");
}

/*
	Name: function_5e698598
	Namespace: namespace_4040b6c2
	Checksum: 0xE9B8784B
	Offset: 0x1AD8
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_5e698598()
{
	level namespace_ad23e503::function_1ab5ebec("warlord_dead");
	var_a4f91ad6 = function_b8494651("axis");
	foreach(var_78080f8f in var_a4f91ad6)
	{
		if(var_78080f8f.var_722885f3[0] > -3100)
		{
			if(function_5b49d38c(var_78080f8f))
			{
				var_78080f8f function_2992720d();
			}
		}
	}
}

/*
	Name: function_3450aa78
	Namespace: namespace_4040b6c2
	Checksum: 0xBEDAB5
	Offset: 0x1BE8
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_3450aa78(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_blackstation_exterior_hendricks");
		namespace_79e1cd97::function_da579a5d("objective_blackstation_exterior");
		level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(1);
		level thread namespace_cc27597::function_43718187("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_kane_idle");
		namespace_d7916d65::function_a2995f22();
		var_23419962 = function_6ada35ba("trigger_talk_kane", "targetname");
		var_23419962 function_dc8c8404();
		level namespace_ad23e503::function_74d6b22f("hendricks_crossed");
		level namespace_ad23e503::function_74d6b22f("goto_zipline");
		level namespace_ad23e503::function_74d6b22f("talk_kane");
		level namespace_ad23e503::function_74d6b22f("hendricks_zipline");
		level function_5142ef8e();
		level function_b8052aae();
	}
	level thread namespace_79e1cd97::function_6778ea09("none");
	level namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_shutters_sm_02_blue_s4_bundle", &function_d6a0893b, "play");
	level thread namespace_cc27597::function_43718187("blackstation_exterior_shutters");
	level thread function_ac6ad822();
	function_d4f82627("set", "cp_mi_sing_blackstation_objective_end_igc");
	function_9f5e1dcd();
}

/*
	Name: function_b5e9c2fe
	Namespace: namespace_4040b6c2
	Checksum: 0x2318558B
	Offset: 0x1E48
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_b5e9c2fe(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_d6a0893b
	Namespace: namespace_4040b6c2
	Checksum: 0x20C7FDCB
	Offset: 0x1E78
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_d6a0893b(var_c77d2837)
{
	foreach(var_e62a2544 in var_c77d2837)
	{
		if(var_e62a2544.var_722885f3[2] < 200)
		{
			var_e62a2544 function_422037f5();
		}
	}
}

/*
	Name: function_ac6ad822
	Namespace: namespace_4040b6c2
	Checksum: 0xF2178C5E
	Offset: 0x1F38
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_ac6ad822()
{
	level endon("hash_d9d3bee3");
	while(1)
	{
		if(namespace_d73b9283::function_d2c92ee7())
		{
			namespace_80983c42::function_80983c42("exp_lightning_blackstation_exterior_f_01");
		}
		else
		{
			namespace_80983c42::function_80983c42("exp_lightning_blackstation_exterior_f_02");
		}
		wait(function_72a94f05(5, 8));
		if(namespace_d73b9283::function_d2c92ee7())
		{
			namespace_80983c42::function_80983c42("exp_lightning_blackstation_exterior_f_01");
		}
		else
		{
			namespace_80983c42::function_80983c42("exp_lightning_blackstation_exterior_f_02");
		}
		wait(function_72a94f05(5, 8));
	}
}

/*
	Name: function_5142ef8e
	Namespace: namespace_4040b6c2
	Checksum: 0xA23E8ACF
	Offset: 0x2030
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_5142ef8e()
{
	namespace_2f06d687::function_2b37a3c9("upper_group1", "targetname", &function_1492467b);
	namespace_2f06d687::function_2b37a3c9("exterior_robots", "targetname", &function_1492467b);
	namespace_2f06d687::function_2b37a3c9("lower_exterior_group01", "targetname", &function_1492467b);
	namespace_2f06d687::function_2b37a3c9("exterior_robots_guards", "script_aigroup", &function_337b5b09);
	namespace_2f06d687::function_2b37a3c9("exterior_robots_pathers", "script_aigroup", &function_6933f59e);
	namespace_2f06d687::function_2b37a3c9("lightning_struck_gib", "script_noteworthy", &function_dca80d71);
	namespace_2f06d687::function_2b37a3c9("lightning_struck_shock", "script_noteworthy", &function_dca80d71);
	namespace_2f06d687::function_2b37a3c9("lightning_launch_ai", "script_noteworthy", &function_63c0faf2);
	namespace_2f06d687::function_2b37a3c9("exterior_gunner_front", "script_noteworthy", &function_63c0faf2);
	namespace_2f06d687::function_2b37a3c9("blackstation_warlord_spawner", "script_noteworthy", &function_7ed3137d);
	namespace_2f06d687::function_2b37a3c9("exterior_patroller", "script_noteworthy", &function_6d08f715);
}

/*
	Name: function_86861a95
	Namespace: namespace_4040b6c2
	Checksum: 0xEAD854AE
	Offset: 0x2250
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_86861a95()
{
	var_b61d7410 = function_6ada35ba("trig_zipline01", "targetname");
	level thread function_b099c73d(var_b61d7410);
	var_2824e34b = function_6ada35ba("trig_zipline02", "targetname");
	level thread function_b099c73d(var_2824e34b);
	level thread function_b78bbba4();
}

/*
	Name: function_b8052aae
	Namespace: namespace_4040b6c2
	Checksum: 0x1BC9B6F2
	Offset: 0x2308
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_b8052aae()
{
	namespace_2f06d687::function_22356ba7("perimeter_patrol", &function_50eaaa70);
	wait(0.5);
	namespace_2f06d687::function_22356ba7("exterior_working_robots", &function_1492467b);
}

/*
	Name: function_d9afa854
	Namespace: namespace_4040b6c2
	Checksum: 0x9D7CBC6E
	Offset: 0x2370
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_d9afa854()
{
	level namespace_ad23e503::function_1ab5ebec("talk_kane");
	namespace_d5067552::function_bae40a28("sm_upper_group1");
	level namespace_ad23e503::function_1ab5ebec("ziplines_ready");
	namespace_2f06d687::function_22356ba7("lower_exterior_group01", &function_1492467b);
	wait(0.5);
	namespace_d5067552::function_bae40a28("sm_exterior_robots");
	level.var_4666226e = function_b8494651("axis");
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	namespace_2f06d687::function_22356ba7("sniper_exterior_group01", &function_bfa694b0);
}

/*
	Name: function_b0c674cf
	Namespace: namespace_4040b6c2
	Checksum: 0x9E5CF818
	Offset: 0x2488
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_b0c674cf()
{
	if(level.var_9b1393e7.size < 3)
	{
		if(level.var_d4bb1798 == "left")
		{
			namespace_2f06d687::function_7387a40a("sniper_right", &function_2dafb2d1);
		}
		else
		{
			namespace_2f06d687::function_7387a40a("sniper_left", &function_2dafb2d1);
		}
	}
	else
	{
		namespace_2f06d687::function_7387a40a("sniper_right", &function_2dafb2d1);
		namespace_2f06d687::function_7387a40a("sniper_left", &function_2dafb2d1);
	}
}

/*
	Name: function_41ad2775
	Namespace: namespace_4040b6c2
	Checksum: 0x2BB141C9
	Offset: 0x2570
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_41ad2775()
{
	level namespace_ad23e503::function_1ab5ebec("zipline_player_landed");
	level thread namespace_d0ef8521::function_45d1556("blackstation_exterior_breadcrumb");
	namespace_4dbf3ae3::function_1ab5ebec("trig_waypoint_station01");
	namespace_1d795d47::function_be8adfb8("objective_blackstation_exterior");
}

/*
	Name: function_3d53956f
	Namespace: namespace_4040b6c2
	Checksum: 0xC6F48D03
	Offset: 0x25F0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3d53956f()
{
	level thread namespace_d0ef8521::function_45d1556("blackstation_interior_breadcrumb");
}

/*
	Name: function_1e6e44af
	Namespace: namespace_4040b6c2
	Checksum: 0x804040F9
	Offset: 0x2620
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_1e6e44af()
{
	self endon("hash_128f8789");
	self endon("hash_b2d41628");
	namespace_4dbf3ae3::function_1ab5ebec("trig_waypoint_station00", "targetname", self);
	self namespace_82b91a51::function_16c71b8(1);
	do
	{
		wait(1);
	}
	while(!self function_32fa5072(function_6ada35ba("trig_waypoint_station00", "targetname")));
	self namespace_82b91a51::function_16c71b8(0);
	if(!level namespace_ad23e503::function_7922262b("exterior_ready_weapons"))
	{
		self function_1e6e44af();
	}
}

/*
	Name: function_d83742ed
	Namespace: namespace_4040b6c2
	Checksum: 0x62EB4FD
	Offset: 0x2708
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_d83742ed()
{
	level namespace_ad23e503::function_1ab5ebec("approach_intersection");
	level namespace_ad23e503::function_1ab5ebec("warlord_dead");
	namespace_4dbf3ae3::function_42e87952("triggercolor_station_advance");
	level namespace_ad23e503::function_1ab5ebec("goto_entrance");
	level thread function_a05c3d53();
	namespace_4dbf3ae3::function_42e87952("triggercolor_station_entrance");
	wait(2);
	level thread function_4b241521();
}

/*
	Name: function_4b241521
	Namespace: namespace_4040b6c2
	Checksum: 0xCBA047CC
	Offset: 0x27D8
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_4b241521()
{
	level namespace_ad23e503::function_1ab5ebec("exterior_clear");
	level namespace_cc27597::function_c35e6aab("cin_bla_14_02_blackstation_vign_takepoint");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_lantern_chinese_red_04_bs_bundle");
	level.var_2fd26037 thread function_8632f992();
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "slow");
	level.var_2fd26037 function_169cc712(function_b4cb3503("nd_door_kick", "targetname"), 1);
	level.var_2fd26037 namespace_82b91a51::function_5b7e3888("goal", "kick_door");
	wait(1);
	level thread namespace_cc27597::function_43718187("cin_gen_aie_door_kick");
	wait(1);
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("triggercolor_station_interior");
	level notify("hash_b5d76c65");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "off");
	function_6ada35ba("clip_station_door", "targetname") function_dc8c8404();
}

/*
	Name: function_8632f992
	Namespace: namespace_4040b6c2
	Checksum: 0x4AD8A331
	Offset: 0x29C8
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_8632f992()
{
	level endon("hash_b5d76c65");
	wait(15);
	self notify("hash_c5d15c3e");
}

/*
	Name: function_da25c72f
	Namespace: namespace_4040b6c2
	Checksum: 0x10AE3952
	Offset: 0x29F8
	Size: 0x59B
	Parameters: 0
	Flags: None
*/
function function_da25c72f()
{
	if(!isdefined(level.var_3d556bcd))
	{
		namespace_79e1cd97::function_da579a5d("objective_blackstation_exterior");
	}
	level.var_2fd26037 notify("hash_a2ba32d");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(1);
	level.var_3d556bcd namespace_d84e54db::function_c9e45d52(1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_1e6e44af();
	}
	level namespace_ad23e503::function_1ab5ebec("hendricks_crossed");
	level namespace_ad23e503::function_1ab5ebec("hendricks_zipline");
	level.var_2fd26037 function_169cc712(function_b4cb3503("node_zipline", "targetname"), 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level namespace_ad23e503::function_1ab5ebec("talk_kane");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "slow");
	level thread namespace_4297372::function_973b77f9();
	level thread namespace_cc27597::function_8f9f34e0("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_hendricks", &function_20aa53b9);
	level thread namespace_cc27597::function_8f9f34e0("cin_bla_13_02_looting_vign_looting_zipline", &function_29ec302d, "play");
	level thread namespace_cc27597::function_8f9f34e0("cin_bla_13_02_looting_vign_looting_zipline", &function_b8aa66aa, "done");
	level namespace_cc27597::function_43718187("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_hendricks");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "off");
	wait(4);
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_74d6b22f("ziplines_ready");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_station");
	level.var_2fd26037 thread function_2d102c76();
	level namespace_ad23e503::function_1ab5ebec("zipline_player_landed");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_5fc18bba);
	level thread function_7f259445();
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	level.var_2fd26037 thread namespace_79e1cd97::function_dccf6ccc();
	level.var_2fd26037 thread function_dfb9eb36();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(0);
	namespace_4dbf3ae3::function_42e87952("trig_exterior_color01");
	level.var_3d556bcd thread function_97b95534();
	level namespace_ad23e503::function_1ab5ebec("kane_move_up");
	level function_9d556a71(level.var_3d556bcd, "trig_zipline01");
	level.var_3d556bcd namespace_d84e54db::function_c9e45d52(0);
	level.var_3d556bcd thread function_2d102c76();
	level namespace_ad23e503::function_1ab5ebec("kane_landed");
	level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(0);
	level.var_3d556bcd namespace_d84e54db::function_c9e45d52(0);
	level.var_3d556bcd namespace_6f7b2095::function_1b497663("y");
	namespace_4dbf3ae3::function_42e87952("trig_exterior_color01", "targetname");
	wait(2);
	level.var_3d556bcd.var_5fb3c5fe = 0;
}

/*
	Name: function_29ec302d
	Namespace: namespace_4040b6c2
	Checksum: 0x26868271
	Offset: 0x2FA0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_29ec302d(var_c77d2837)
{
	var_3169a073 = function_6ada35ba("trig_zipline01", "targetname");
	var_3169a073.var_1dcdd471 = 1;
	level waittill("hash_808b60ca");
	level.var_2fd26037 function_921a1574("evt_zipline_attach");
	level.var_2fd26037 function_c2931a36("evt_zipline_npc_move", 0.3);
	wait(0.5);
	var_3169a073.var_1dcdd471 = 0;
}

/*
	Name: function_b8aa66aa
	Namespace: namespace_4040b6c2
	Checksum: 0x48A67AE3
	Offset: 0x3068
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_b8aa66aa(var_c77d2837)
{
	level.var_2fd26037 function_eaa69754(0.1);
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3);
	wait(0.5);
	namespace_4dbf3ae3::function_42e87952("triggercolor_zipline");
}

/*
	Name: function_20aa53b9
	Namespace: namespace_4040b6c2
	Checksum: 0xD9BECA75
	Offset: 0x30E8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_20aa53b9(var_c77d2837)
{
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_rendezvous");
	level namespace_cc27597::function_43718187("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_kane");
}

/*
	Name: function_a561f620
	Namespace: namespace_4040b6c2
	Checksum: 0x6552F4FB
	Offset: 0x3138
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_a561f620()
{
	level endon("hash_ad279290");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_at_zipline");
	if(level namespace_cc27597::function_367f8966("cin_bla_12_01_cross_debris_vign_point"))
	{
		level notify("hash_62f8dc0c");
		level namespace_cc27597::function_fcf56ab5("cin_bla_12_01_cross_debris_vign_point");
		var_bfa0f33f = namespace_14b42b8a::function_7922262b("hendricks_post_frogger");
		self namespace_1d795d47::function_d9b1ee00(var_bfa0f33f);
		self namespace_6f7b2095::function_bae40a28();
		level namespace_ad23e503::function_74d6b22f("hendricks_crossed");
		self namespace_d84e54db::function_b4f5e3b9(1);
	}
}

/*
	Name: function_7f259445
	Namespace: namespace_4040b6c2
	Checksum: 0x432EE5A1
	Offset: 0x3240
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_7f259445()
{
	level namespace_82b91a51::function_c9aa1ff("exterior_moved_forward", 30);
	level namespace_ad23e503::function_74d6b22f("exterior_ready_weapons");
	level namespace_ad23e503::function_1ab5ebec("lightning_strike_done");
	level namespace_ad23e503::function_74d6b22f("blackstation_exterior_engaged");
}

/*
	Name: function_97b95534
	Namespace: namespace_4040b6c2
	Checksum: 0xECAAEED6
	Offset: 0x32D0
	Size: 0x397
	Parameters: 0
	Flags: None
*/
function function_97b95534()
{
	level endon("hash_738cf8d9");
	self namespace_d84e54db::function_c9e45d52(1);
	self thread function_a420fa6e();
	self thread function_63a77d04();
	wait(5);
	var_45900c37 = function_6ada35ba("exterior_technical01_vh", "targetname");
	if(function_5b49d38c(var_45900c37))
	{
		var_dfb53de7 = var_45900c37 namespace_96fa87af::function_ad4ec07a("gunner1");
		if(function_5b49d38c(var_dfb53de7))
		{
			self thread namespace_d84e54db::function_d104c596("normal", var_dfb53de7, "j_head", undefined, undefined, 1);
			level namespace_5753664b::function_43718187("blood_headpop", var_dfb53de7 function_d48f2ab3("j_head"));
			var_dfb53de7 function_2992720d();
		}
	}
	wait(2);
	while(1)
	{
		var_24bbf032 = function_b8494651("axis");
		for(var_c957f6b6 = var_24bbf032.size - 1; var_c957f6b6 >= 0; var_c957f6b6--)
		{
			if(var_24bbf032[var_c957f6b6].var_8fc0e50e === "warlord")
			{
				function_6c668988(var_24bbf032, var_c957f6b6);
			}
		}
		if(level.var_9b1393e7.size)
		{
			var_6bfe1586 = level.var_9b1393e7[function_26299103(level.var_9b1393e7.size)];
			if(function_5b49d38c(var_6bfe1586))
			{
				var_64647720 = function_57efbe1(var_24bbf032, var_6bfe1586.var_722885f3);
				for(var_c957f6b6 = 0; var_c957f6b6 < var_64647720.size; var_c957f6b6++)
				{
					if(function_5b49d38c(var_64647720[var_c957f6b6]))
					{
						if(function_5b49d38c(var_6bfe1586))
						{
							if(var_6bfe1586 namespace_82b91a51::function_d61b846f(var_64647720[var_c957f6b6] function_d48f2ab3("j_head"), 0.85, 1) && var_64647720[var_c957f6b6].var_bab9655e === "true")
							{
								self function_3f00de07(var_64647720[var_c957f6b6]);
								break;
							}
						}
					}
				}
				wait(function_72a94f05(4, 5));
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_3f00de07
	Namespace: namespace_4040b6c2
	Checksum: 0x9A5DD807
	Offset: 0x3670
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_3f00de07(var_2eecd77a)
{
	var_2eecd77a endon("hash_128f8789");
	self thread namespace_d84e54db::function_d104c596("normal", var_2eecd77a, "j_head");
	wait(1);
	self.var_5fb3c5fe = 0;
	if(var_2eecd77a.var_8fc0e50e == "human")
	{
		level namespace_5753664b::function_43718187("blood_headpop", var_2eecd77a function_d48f2ab3("j_head"));
	}
	self.var_5fb3c5fe = 1;
	var_2eecd77a function_2992720d();
}

/*
	Name: function_a420fa6e
	Namespace: namespace_4040b6c2
	Checksum: 0x9C82B812
	Offset: 0x3740
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_a420fa6e()
{
	self endon("hash_63a77d04");
	while(1)
	{
		self function_62a7329();
		wait(0.05);
	}
}

/*
	Name: function_63a77d04
	Namespace: namespace_4040b6c2
	Checksum: 0x2A9347E2
	Offset: 0x3780
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_63a77d04()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_station_approach");
	self notify("hash_63a77d04");
	namespace_82b91a51::function_76f13293();
	self function_e01ff155();
}

/*
	Name: function_bb8d01e2
	Namespace: namespace_4040b6c2
	Checksum: 0x48CC1F46
	Offset: 0x37E0
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_bb8d01e2()
{
	level namespace_ad23e503::function_1ab5ebec("lightning_hit");
	level namespace_ad23e503::function_74d6b22f("lightning_strike");
	var_c6644e81 = namespace_14b42b8a::function_7922262b("station_strike01");
	level namespace_5753664b::function_43718187("lightning_strike", var_c6644e81.var_722885f3, VectorScale((-1, 0, 0), 90));
	namespace_80983c42::function_80983c42("fx_expl_lightning_strike_blkstn_ext");
	function_37cbcf1a("amb_2d_thunder_hits", var_c6644e81.var_722885f3);
	wait(0.5);
	level namespace_ad23e503::function_74d6b22f("lightning_strike_done");
}

/*
	Name: function_c31f21d6
	Namespace: namespace_4040b6c2
	Checksum: 0x92A51E16
	Offset: 0x38F8
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_c31f21d6()
{
	level endon("hash_47af7983");
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	wait(2);
	var_64e85e6d = function_99201f25("exterior_working_robots_ai", "targetname");
	foreach(var_f6c5842 in var_64e85e6d)
	{
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_5eb38a05, var_f6c5842);
	}
}

/*
	Name: function_5eb38a05
	Namespace: namespace_4040b6c2
	Checksum: 0x2B8BE1BE
	Offset: 0x3A00
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_5eb38a05(var_f6c5842)
{
	self endon("hash_128f8789");
	level endon("hash_47af7983");
	self namespace_82b91a51::function_3546be91(var_f6c5842 function_6083923(), 30, 1);
	level namespace_ad23e503::function_74d6b22f("lightning_hit");
}

/*
	Name: function_7c8de67c
	Namespace: namespace_4040b6c2
	Checksum: 0xDD8C16FA
	Offset: 0x3A80
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_7c8de67c()
{
	level endon("hash_d9d3bee3");
	level namespace_ad23e503::function_1ab5ebec("talk_kane");
	var_3de152e1 = namespace_14b42b8a::function_7faf4c39("ambient_strike");
	while(1)
	{
		var_c6644e81 = namespace_84970cc4::function_47d18840(var_3de152e1);
		level namespace_5753664b::function_43718187("lightning_strike", var_c6644e81.var_722885f3, VectorScale((-1, 0, 0), 90));
		function_37cbcf1a("amb_2d_thunder_hits", var_c6644e81.var_722885f3);
		wait(function_72a94f05(3.5, 5.5));
	}
}

/*
	Name: function_63c0faf2
	Namespace: namespace_4040b6c2
	Checksum: 0xD2D58AC8
	Offset: 0x3B88
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_63c0faf2()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("lightning_strike");
	wait(0.2);
	if(self.var_caae374e === "exterior_gunner_front")
	{
		self thread namespace_1fb6a2e5::function_43718187(self.var_1b425382.var_c60a0370);
		self function_d7a0a9d8();
		self function_8461d2b1((50, 0, 90));
		self namespace_957e94ce::function_9d134160("in_vehicle");
		namespace_96fa87af::function_d3fa882a(self.var_96fa87af, self.var_1b425382.var_c7b6e8e4);
		self.var_96fa87af = undefined;
		self.var_1b425382 = undefined;
		self namespace_1fb6a2e5::function_a0f305dc(undefined);
	}
	else
	{
		self function_d7a0a9d8();
		self function_8461d2b1((-50, -20, 50));
	}
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	self function_2992720d();
}

/*
	Name: function_60578067
	Namespace: namespace_4040b6c2
	Checksum: 0x2B884974
	Offset: 0x3D18
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_60578067()
{
	level namespace_ad23e503::function_1ab5ebec("lightning_strike");
	wait(0.5);
	var_af4e297a = function_6ada35ba("lightning_strike_sound", "targetname");
	var_af4e297a function_921a1574("fly_bot_head_sparks_disable");
}

/*
	Name: function_bfa694b0
	Namespace: namespace_4040b6c2
	Checksum: 0x7F118B33
	Offset: 0x3D98
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_bfa694b0()
{
	var_92f29fd5 = function_c4d5ec1f("launcher_guided_blackstation_ai");
	self namespace_d84e54db::function_7901ac63(var_92f29fd5, "right");
	self thread function_4472fea7();
}

/*
	Name: function_4472fea7
	Namespace: namespace_4040b6c2
	Checksum: 0xC1DBA0EF
	Offset: 0x3E08
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_4472fea7()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_7eb7322a", var_e40110b0);
		if(isdefined(var_e40110b0) && isdefined(self.var_6050ab17))
		{
			var_ccd4343c = function_b6b79a0(function_7d15e2f8(self.var_722885f3, self.var_6050ab17.var_722885f3) * 0.05);
			var_e8ea412b = function_dc99997a(var_ccd4343c * -1, var_ccd4343c);
			var_27c4935 = (var_e8ea412b, var_e8ea412b, var_e8ea412b);
			var_e40110b0 function_7847c931(self.var_6050ab17, var_27c4935);
		}
	}
}

/*
	Name: function_2d102c76
	Namespace: namespace_4040b6c2
	Checksum: 0x9A91BB7
	Offset: 0x3F18
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2d102c76()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_station_cqb", "targetname", self);
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
}

/*
	Name: function_1f5941f8
	Namespace: namespace_4040b6c2
	Checksum: 0x49B2252F
	Offset: 0x3F68
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_1f5941f8()
{
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	namespace_2f06d687::function_2b37a3c9("lower_exterior_group02", "targetname", &function_1492467b);
	namespace_2f06d687::function_2b37a3c9("exterior_group03", "targetname", &function_b690ea0e);
	foreach(var_d84e54db in level.var_4666226e)
	{
		if(isdefined(var_d84e54db))
		{
			var_d84e54db notify("hash_bb2402d8");
		}
	}
	level.var_4666226e = [];
	wait(3);
	level namespace_ad23e503::function_74d6b22f("exterior_truck_event");
	level namespace_ad23e503::function_1ab5ebec("warlord_go");
	namespace_d5067552::function_bae40a28("sm_lower_group");
	level thread function_31b6dec0();
	namespace_d5067552::function_bae40a28("exterior_group03_sm");
	level namespace_ad23e503::function_1ab5ebec("warlord_dead");
	namespace_d5067552::function_2992720d("exterior_group03_sm");
}

/*
	Name: function_c9bd2230
	Namespace: namespace_4040b6c2
	Checksum: 0xF8199157
	Offset: 0x4150
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_c9bd2230()
{
	level namespace_ad23e503::function_1ab5ebec("warlord_go");
	namespace_d5067552::function_bae40a28("sm_warlord_station");
}

/*
	Name: function_31b6dec0
	Namespace: namespace_4040b6c2
	Checksum: 0xC3DFCE1
	Offset: 0x4198
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_31b6dec0()
{
	level endon("hash_5bbdd349");
	while(function_e4eab046() > 12 + 2)
	{
		wait(1);
	}
	level namespace_ad23e503::function_74d6b22f("warlord_go");
}

/*
	Name: function_7ed3137d
	Namespace: namespace_4040b6c2
	Checksum: 0x69F15B6A
	Offset: 0x4208
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_7ed3137d()
{
	self endon("hash_128f8789");
	level.var_e121f644++;
	self function_c7708f99("warlords");
	function_49e95dc0("heroes", "warlords", -1000);
	self thread function_5d3711fa();
	foreach(var_90ca1fdd in level.var_eaf20b66)
	{
		self namespace_69ee7109::function_da308a83(var_90ca1fdd.var_722885f3, 3000, 5000);
	}
	self function_169cc712(function_b4cb3503(self.var_db7bb468, "targetname"), 1);
	self waittill("hash_41d1aaf0");
	self function_e11ce512();
	level namespace_ad23e503::function_1ab5ebec("goto_entrance");
	self function_169cc712(function_6ada35ba("vol_warlord_retreat", "targetname"));
}

/*
	Name: function_5d3711fa
	Namespace: namespace_4040b6c2
	Checksum: 0x125831D4
	Offset: 0x43D0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_5d3711fa()
{
	self waittill("hash_128f8789");
	level.var_6999c9ec++;
	if(level.var_e121f644 == level.var_6999c9ec)
	{
		level namespace_ad23e503::function_74d6b22f("warlord_dead");
	}
}

/*
	Name: function_a05c3d53
	Namespace: namespace_4040b6c2
	Checksum: 0x9A3102B9
	Offset: 0x4428
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_a05c3d53()
{
	level endon("hash_30c6d441");
	while(1)
	{
		var_24bbf032 = function_b8494651("axis");
		if(!var_24bbf032.size)
		{
			level namespace_ad23e503::function_74d6b22f("exterior_clear");
		}
		wait(1);
	}
}

/*
	Name: function_46ae7f32
	Namespace: namespace_4040b6c2
	Checksum: 0xA7804E78
	Offset: 0x4498
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_46ae7f32()
{
	level namespace_ad23e503::function_1ab5ebec("ziplines_ready");
	var_35a302af = namespace_96fa87af::function_7387a40a("exterior_technical01");
	var_35a302af endon("hash_128f8789");
	var_35a302af namespace_96fa87af::function_3762fc40();
	var_35a302af namespace_82b91a51::function_958c7633();
	var_35a302af thread function_d1825549();
	var_35a302af thread function_1ff678ce();
	var_35a302af thread namespace_96fa87af::function_edb3a94e(function_243bb261(var_35a302af.var_b07228b6, "targetname"));
	var_35a302af thread namespace_79e1cd97::function_c262adca();
	level waittill("hash_64b56edd");
	var_35a302af function_333fd8f0(0, 15, 5);
	var_dfb53de7 = var_35a302af namespace_96fa87af::function_ad4ec07a("gunner1");
	while(function_5b49d38c(var_dfb53de7))
	{
		wait(0.5);
	}
	wait(1);
	var_35a302af function_6ae7eead(15);
	var_35a302af function_921a1574("evt_tech_driveup_3");
	level namespace_ad23e503::function_1ab5ebec("lightning_strike");
	var_35a302af namespace_37b990db::function_9d695d9e(0);
	var_35a302af waittill("hash_6cf6ac7e");
	var_35a302af namespace_82b91a51::function_4b741fdc();
	var_35a302af thread namespace_79e1cd97::function_fae23684("driver");
	var_35a302af function_917f75ac(0);
	var_35a302af function_991ad231();
}

/*
	Name: function_d1825549
	Namespace: namespace_4040b6c2
	Checksum: 0xC873A4CC
	Offset: 0x4718
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d1825549()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	self namespace_37b990db::function_bae40a28(1, 1);
}

/*
	Name: function_1ff678ce
	Namespace: namespace_4040b6c2
	Checksum: 0x2DFBB2CC
	Offset: 0x4770
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1ff678ce()
{
	level waittill("hash_271be752");
	level namespace_ad23e503::function_74d6b22f("truck_in_position");
}

/*
	Name: function_d316aef3
	Namespace: namespace_4040b6c2
	Checksum: 0x26F09A27
	Offset: 0x47A8
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_d316aef3()
{
	var_35a302af = namespace_96fa87af::function_7387a40a("exterior_technical02");
	var_35a302af endon("hash_128f8789");
	var_35a302af namespace_96fa87af::function_3762fc40();
	var_35a302af namespace_82b91a51::function_958c7633();
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	wait(2);
	var_35a302af namespace_37b990db::function_bae40a28(1, 1);
	var_35a302af thread namespace_96fa87af::function_edb3a94e(function_243bb261(var_35a302af.var_b07228b6, "targetname"));
	var_35a302af function_921a1574("evt_tech_driveup_4");
	var_35a302af waittill("hash_6cf6ac7e");
	var_35a302af namespace_82b91a51::function_4b741fdc();
	wait(1);
	var_44762fa4 = var_35a302af namespace_96fa87af::function_ad4ec07a("driver");
	if(function_5b49d38c(var_44762fa4))
	{
		var_44762fa4 namespace_6f7b2095::function_1b497663("r");
		var_44762fa4 namespace_96fa87af::function_dca9dba2();
	}
	var_35a302af function_917f75ac(0);
	var_35a302af function_991ad231();
	var_35a302af thread namespace_79e1cd97::function_d01267bd(2, 2, "cross_street");
}

/*
	Name: function_df797544
	Namespace: namespace_4040b6c2
	Checksum: 0xF7A0E27
	Offset: 0x49B0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_df797544()
{
	var_35a302af = namespace_96fa87af::function_7387a40a("exterior_technical03");
	var_35a302af endon("hash_128f8789");
	var_35a302af namespace_96fa87af::function_3762fc40();
	var_35a302af namespace_82b91a51::function_958c7633();
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	var_35a302af thread namespace_96fa87af::function_edb3a94e(function_243bb261(var_35a302af.var_b07228b6, "targetname"));
	var_35a302af function_921a1574("evt_tech_driveup_5");
	var_35a302af function_6ae7eead(35);
	var_35a302af namespace_37b990db::function_bae40a28(1, 1);
	var_35a302af waittill("hash_6cf6ac7e");
	var_35a302af namespace_82b91a51::function_4b741fdc();
	wait(1);
	var_44762fa4 = var_35a302af namespace_96fa87af::function_ad4ec07a("driver");
	if(function_5b49d38c(var_44762fa4))
	{
		var_44762fa4 namespace_6f7b2095::function_1b497663("r");
		var_44762fa4 namespace_96fa87af::function_dca9dba2();
	}
	var_35a302af function_917f75ac(0);
	var_35a302af function_991ad231();
	var_35a302af thread namespace_79e1cd97::function_d01267bd(2, 2, "cross_street");
}

/*
	Name: function_3d8fcbfe
	Namespace: namespace_4040b6c2
	Checksum: 0x770747D3
	Offset: 0x4BC8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_3d8fcbfe(var_35a302af)
{
	self endon("hash_128f8789");
	self namespace_96fa87af::function_230eadd7(var_35a302af, "gunner1");
	while(!self namespace_957e94ce::function_7922262b("in_vehicle"))
	{
		if(!var_35a302af namespace_957e94ce::function_7922262b("driveroccupied"))
		{
			self namespace_96fa87af::function_230eadd7(var_35a302af, "driver");
		}
		else
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_78b9affb
	Namespace: namespace_4040b6c2
	Checksum: 0x8D48FBA8
	Offset: 0x4C78
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_78b9affb()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	self notify("hash_eba9585e");
	self namespace_d84e54db::function_ceb883cd("patrol", 0);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_8401b524
	Namespace: namespace_4040b6c2
	Checksum: 0xDDB05651
	Offset: 0x4D10
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_8401b524()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("lightning_strike");
	self notify("hash_eba9585e");
	self namespace_d84e54db::function_ceb883cd("patrol", 0);
	wait(function_72a94f05(0.5, 1));
	var_bea85066 = function_b4cb3503(self.var_caae374e, "script_noteworthy");
	if(isdefined(var_bea85066))
	{
		self function_169cc712(function_b4cb3503(self.var_caae374e, "script_noteworthy"), 1);
		self waittill("hash_41d1aaf0");
		self function_e11ce512();
	}
}

/*
	Name: function_50eaaa70
	Namespace: namespace_4040b6c2
	Checksum: 0xB7BBE377
	Offset: 0x4E28
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_50eaaa70()
{
	self endon("hash_128f8789");
	self namespace_6f7b2095::function_1b497663("r");
	self thread function_862c1664();
	self thread function_78b9affb();
	self thread function_8401b524();
	self thread function_1492467b();
	self namespace_d84e54db::function_ceb883cd("patrol", 1);
	self thread namespace_d84e54db::function_99e190ff(function_b4cb3503(self.var_caae374e, "targetname"));
	self namespace_82b91a51::function_5b7e3888("damage", "bulletwhizby", "grenadedanger", "death", "projectile_impact", "under_attack");
	level namespace_ad23e503::function_74d6b22f("exterior_ready_weapons");
	level namespace_ad23e503::function_74d6b22f("blackstation_exterior_engaged");
}

/*
	Name: function_1492467b
	Namespace: namespace_4040b6c2
	Checksum: 0x3833308D
	Offset: 0x4F98
	Size: 0x1B7
	Parameters: 0
	Flags: None
*/
function function_1492467b()
{
	self endon("hash_128f8789");
	if(self.var_8fc0e50e == "human")
	{
		self namespace_6f7b2095::function_1b497663("r");
	}
	self thread function_862c1664();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_82b91a51::function_5b7e3888("damage", "bulletwhizby", "grenadedanger", "death", "projectile_impact", "under_attack");
	level namespace_ad23e503::function_74d6b22f("exterior_ready_weapons");
	level namespace_ad23e503::function_74d6b22f("blackstation_exterior_engaged");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self.var_2a373326 = self.var_98207841;
	foreach(var_d84e54db in level.var_4666226e)
	{
		if(isdefined(var_d84e54db))
		{
			var_d84e54db notify("hash_bb2402d8");
		}
	}
	level.var_4666226e = [];
}

/*
	Name: function_2dafb2d1
	Namespace: namespace_4040b6c2
	Checksum: 0x3F615388
	Offset: 0x5158
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_2dafb2d1()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_862c1664
	Namespace: namespace_4040b6c2
	Checksum: 0x4733A06D
	Offset: 0x51C0
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_862c1664()
{
	self endon("hash_128f8789");
	level endon("hash_db81c671");
	self.var_98207841 = self.var_2a373326;
	self.var_2a373326 = 360000;
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(self function_75754e3a(var_5dc5e20a))
			{
				level namespace_ad23e503::function_74d6b22f("blackstation_exterior_engaged");
			}
		}
		wait(0.3);
	}
}

/*
	Name: function_dca80d71
	Namespace: namespace_4040b6c2
	Checksum: 0x4BCDFFBF
	Offset: 0x52C0
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_dca80d71()
{
	self endon("hash_128f8789");
	if(!level namespace_ad23e503::function_7922262b("lightning_strike"))
	{
		if(self.var_caae374e == "lightning_struck_gib")
		{
			self function_169cc712(self.var_722885f3, 1);
		}
		level namespace_ad23e503::function_1ab5ebec("lightning_strike");
		self namespace_d84e54db::function_c9e45d52(1);
		self function_80765127();
		wait(function_62e4226e(1));
		self namespace_5753664b::function_43718187("disabled_robot", self.var_722885f3, undefined, 15, 1, "j_neck");
		switch(function_26299103(4))
		{
			case 0:
			{
				var_294306eb = "cin_bla_13_02_looting_vign_lightningstrike_robot01";
				break;
			}
			case 1:
			{
				var_294306eb = "cin_bla_13_02_looting_vign_lightningstrike_robot02";
				break;
			}
			case 2:
			{
				var_294306eb = "cin_bla_13_02_looting_vign_lightningstrike_robot03";
				break;
			}
			case 3:
			{
				var_294306eb = "cin_bla_13_02_looting_vign_lightningstrike_robot04";
				break;
			}
		}
		self thread function_84aabd4b(var_294306eb);
	}
}

/*
	Name: function_84aabd4b
	Namespace: namespace_4040b6c2
	Checksum: 0x84A9CA2D
	Offset: 0x5478
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_84aabd4b(var_294306eb)
{
	self endon("hash_128f8789");
	var_ec24660 = 6;
	var_39dd968a = 10;
	self namespace_cc27597::function_43718187(var_294306eb + "_zapped", self);
	self thread namespace_cc27597::function_43718187(var_294306eb + "_loop", self);
	wait(function_72a94f05(var_ec24660, var_39dd968a));
	if(self.var_caae374e === "lightning_struck_gib")
	{
		self namespace_d84e54db::function_ceb883cd("force_crawler", "gib_legs");
		self function_2992720d();
	}
	else
	{
		self namespace_cc27597::function_43718187(var_294306eb, self);
		self function_8dafb866();
		self namespace_d84e54db::function_b4f5e3b9(0);
		self namespace_d84e54db::function_c9e45d52(0);
		self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	}
}

/*
	Name: function_337b5b09
	Namespace: namespace_4040b6c2
	Checksum: 0xC71959C7
	Offset: 0x5600
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_337b5b09()
{
	self endon("hash_128f8789");
	if(self.var_caae374e === "robot_patrol")
	{
		self namespace_d84e54db::function_ceb883cd("move_mode", "normal");
	}
	else
	{
		self function_169cc712(self.var_722885f3, 0, 128);
		self namespace_d84e54db::function_ceb883cd("move_mode", "guard");
	}
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	self.var_7dfaf62 = 1000;
	self namespace_d84e54db::function_ceb883cd("move_mode", "normal");
}

/*
	Name: function_6933f59e
	Namespace: namespace_4040b6c2
	Checksum: 0x2D70ED39
	Offset: 0x56F8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_6933f59e()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("zipline_player_landed");
	var_3c54858a = function_6d5b92c7(self.var_722885f3);
	self function_169cc712(var_3c54858a);
}

/*
	Name: function_6d08f715
	Namespace: namespace_4040b6c2
	Checksum: 0xDF84FE1F
	Offset: 0x5770
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6d08f715()
{
	self endon("hash_128f8789");
	self thread namespace_d84e54db::function_99e190ff(function_6d5b92c7(self.var_722885f3));
}

/*
	Name: function_b690ea0e
	Namespace: namespace_4040b6c2
	Checksum: 0x9DC981D1
	Offset: 0x57B8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b690ea0e()
{
	self endon("hash_128f8789");
	self namespace_6f7b2095::function_1b497663("r");
}

/*
	Name: function_dfb9eb36
	Namespace: namespace_4040b6c2
	Checksum: 0x8DF5EE6F
	Offset: 0x57F0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_dfb9eb36()
{
	level namespace_ad23e503::function_1ab5ebec("warlord_dead");
	self notify("hash_d60979de");
	wait(1);
	while(function_b8494651("axis").size > 2)
	{
		wait(0.5);
	}
	var_24bbf032 = function_b8494651("axis");
	if(var_24bbf032.size)
	{
		self namespace_79e1cd97::function_4f96504c(var_24bbf032[0]);
		if(function_5b49d38c(var_24bbf032[0]))
		{
			self namespace_175490fb::function_d240e350("cybercom_fireflyswarm", var_24bbf032[0], 0, 1);
		}
	}
}

/*
	Name: function_5fc18bba
	Namespace: namespace_4040b6c2
	Checksum: 0x52C309FE
	Offset: 0x58F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5fc18bba()
{
	self endon("hash_128f8789");
	level endon("hash_db81c671");
	self waittill("hash_aa1618b0");
	level namespace_ad23e503::function_74d6b22f("blackstation_exterior_engaged");
}

/*
	Name: function_2a47a71c
	Namespace: namespace_4040b6c2
	Checksum: 0xC3792B2E
	Offset: 0x5948
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_2a47a71c(var_1e9fba3)
{
	if(var_1e9fba3 == 0)
	{
		return (-4768, 10399, 329);
	}
	else if(var_1e9fba3 == 1)
	{
		return (-4768, 10355, 329);
	}
	else if(var_1e9fba3 == 2)
	{
		return (-5618, 9366, 329);
	}
	else
	{
		return (-5618, 9294, 329);
	}
}

/*
	Name: function_34a9c09e
	Namespace: namespace_4040b6c2
	Checksum: 0xF9C56FE3
	Offset: 0x59D0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_34a9c09e()
{
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_688ed188("postfx_igc", 1);
	self function_faf8f736(1);
	wait(0.5);
	var_be173713 = function_2a47a71c(self function_c7f3ce11());
	self function_a30814d(var_be173713);
	self function_eda2be50((0, 0, 0));
	self function_faf8f736(0);
}

/*
	Name: function_45f61c3c
	Namespace: namespace_4040b6c2
	Checksum: 0x7A4796E8
	Offset: 0x5AA8
	Size: 0x54B
	Parameters: 3
	Flags: None
*/
function function_45f61c3c(var_62e11f41, var_10729d99, var_96eed922)
{
	self endon("hash_128f8789");
	self thread namespace_79e1cd97::function_ed7faf05();
	var_ad470f8c = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	var_ccd4343c = function_7d15e2f8(var_10729d99.var_722885f3, var_96eed922.var_722885f3);
	var_78962fff = var_ccd4343c / 750;
	self function_e6152ede();
	self function_518a4a08();
	self function_1c75a89a(0);
	self function_f5ba63f2(0);
	var_ad470f8c function_b8862210("evt_zipline_attach", self);
	self.var_23304c9e = 1;
	var_ad470f8c.var_722885f3 = self.var_722885f3;
	var_ad470f8c.var_6ab6f4fd = self.var_6ab6f4fd;
	self namespace_82b91a51::function_16c71b8(0);
	self function_e2af603e("cp_blackstation_zipline_attach_rumble");
	var_ad470f8c function_a96a2721(var_10729d99.var_722885f3, 0.05);
	var_ad470f8c function_c0b6566f(var_10729d99.var_6ab6f4fd, 0.05);
	var_f32c41e7 = GetTime();
	var_ad470f8c namespace_cc27597::function_43718187("cin_gen_traversal_zipline_player_attach", self);
	if(GetTime() - var_f32c41e7 < 0.5)
	{
		var_6ec94357 = 1;
	}
	if(!(isdefined(var_6ec94357) && var_6ec94357))
	{
		self namespace_71e9cb84::function_e9c3870b("wind_blur", 1);
		var_ad470f8c thread namespace_cc27597::function_43718187("cin_gen_traversal_zipline_player_idle", self);
		self namespace_71e9cb84::function_e9c3870b("zipline_rumble_loop", 1);
		self namespace_71e9cb84::function_74d6b22f("zipline_sound_loop", 1);
		self function_c2931a36("evt_zipline_move", 0.3);
		var_ad470f8c function_a96a2721(var_96eed922.var_722885f3, var_78962fff, 0, 0);
		var_ad470f8c waittill("hash_a21db68a");
		var_ad470f8c function_b8862210("evt_zipline_attach", self);
		self namespace_71e9cb84::function_e9c3870b("wind_blur", 0);
		self function_e2af603e("cp_blackstation_zipline_dismount_rumble");
		self namespace_71e9cb84::function_e9c3870b("zipline_rumble_loop", 0);
		self namespace_71e9cb84::function_74d6b22f("zipline_sound_loop", 0);
		self function_eaa69754(0.5);
		var_ad470f8c namespace_cc27597::function_43718187("cin_gen_traversal_zipline_player_dismount", self);
	}
	self function_e2af603e("cp_blackstation_zipline_land_rumble");
	self.var_23304c9e = 0;
	self notify("hash_4d91a838");
	self function_6c8f914f();
	self function_4b9f6977();
	self function_1c75a89a(1);
	self function_f5ba63f2(1);
	self thread namespace_79e1cd97::function_2c33b48e();
	level namespace_ad23e503::function_74d6b22f("zipline_player_landed");
	wait(0.3);
	var_ad470f8c function_dc8c8404();
	self function_4890e520();
	if(isdefined(var_6ec94357) && var_6ec94357)
	{
		function_34a9c09e();
	}
}

/*
	Name: function_b099c73d
	Namespace: namespace_4040b6c2
	Checksum: 0xD56CB600
	Offset: 0x6000
	Size: 0x1F7
	Parameters: 1
	Flags: None
*/
function function_b099c73d(var_62e11f41)
{
	var_62e11f41 function_175e6b8e(0);
	var_62e11f41.var_1dcdd471 = 0;
	level namespace_ad23e503::function_1ab5ebec("ziplines_ready");
	var_744d4302 = namespace_82b91a51::function_14518e76(var_62e11f41, &"cp_level_blackstation_zipline", &"CP_MI_SING_BLACKSTATION_ZIPLINE_TEXT", &function_a7b2f59e);
	var_744d4302.var_bca3110 = 1;
	var_744d4302.var_4dbf3ae3 = var_62e11f41;
	var_744d4302 thread function_76529a7a();
	while(var_62e11f41.var_1dcdd471)
	{
		wait(0.1);
	}
	var_62e11f41 function_175e6b8e(1);
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_zipline", var_62e11f41.var_722885f3);
	var_10729d99 = namespace_14b42b8a::function_7922262b(var_62e11f41.var_b07228b6, "targetname");
	var_96eed922 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
	while(!level namespace_ad23e503::function_7922262b("zipline_done"))
	{
		while(var_62e11f41.var_1dcdd471 == 1)
		{
			wait(0.25);
		}
		var_744d4302 namespace_a230c2b1::function_ed0abeee();
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_a7b2f59e
	Namespace: namespace_4040b6c2
	Checksum: 0x6003C256
	Offset: 0x6200
	Size: 0x22F
	Parameters: 1
	Flags: None
*/
function function_a7b2f59e(var_6bfe1586)
{
	var_6bfe1586 function_83fd42b5();
	namespace_4dbf3ae3::function_42e87952("trig_zipline_player_spawns", "targetname", var_6bfe1586);
	level thread namespace_4297372::function_f152b1dc();
	level namespace_ad23e503::function_74d6b22f(self.var_4dbf3ae3.var_170527fb);
	self.var_4dbf3ae3.var_1dcdd471 = 1;
	self namespace_a230c2b1::function_e54c54c3();
	namespace_d0ef8521::function_66c6f97b("cp_level_blackstation_zipline", self.var_4dbf3ae3.var_722885f3);
	if(!level.var_c5719229)
	{
		level.var_c5719229 = 1;
		if(self.var_4dbf3ae3.var_170527fb == "trig_zipline01")
		{
			level.var_d4bb1798 = "left";
		}
		else
		{
			level.var_d4bb1798 = "right";
		}
		level thread function_b0c674cf();
	}
	var_10729d99 = namespace_14b42b8a::function_7922262b(self.var_4dbf3ae3.var_b07228b6, "targetname");
	var_96eed922 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
	var_6bfe1586 namespace_79e1cd97::function_ed7faf05();
	var_6bfe1586 notify("hash_b2d41628");
	var_6bfe1586 namespace_82b91a51::function_16c71b8(1);
	var_6bfe1586 thread function_45f61c3c(self.var_4dbf3ae3, var_10729d99, var_96eed922);
	wait(1.5);
	self.var_4dbf3ae3.var_1dcdd471 = 0;
}

/*
	Name: function_b78bbba4
	Namespace: namespace_4040b6c2
	Checksum: 0xE0D61B58
	Offset: 0x6438
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_b78bbba4()
{
	while(!level namespace_ad23e503::function_7922262b("zipline_done"))
	{
		var_d0f085 = namespace_4dbf3ae3::function_1ab5ebec("trig_zipline_player_spawns", "targetname");
		var_d0f085.var_aef176e7.var_af1dcf8b = 1;
		if(level.var_9b1393e7.size)
		{
			var_4f204e66 = 1;
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				if(var_5dc5e20a.var_af1dcf8b !== 1)
				{
					var_4f204e66 = 0;
					break;
				}
			}
			if(var_4f204e66)
			{
				level namespace_ad23e503::function_74d6b22f("zipline_done");
			}
		}
	}
}

/*
	Name: function_76529a7a
	Namespace: namespace_4040b6c2
	Checksum: 0x24EC92A1
	Offset: 0x6588
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_76529a7a()
{
	level namespace_ad23e503::function_1ab5ebec("zipline_done");
	self namespace_a230c2b1::function_c5a39495();
	function_9e3608e3("collapse_frogger_water");
	function_9e3608e3("lt_wharf_water");
	function_9e3608e3("vista_water");
}

/*
	Name: function_1357e282
	Namespace: namespace_4040b6c2
	Checksum: 0x5B51D567
	Offset: 0x6618
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_1357e282(var_eda6085e)
{
	self waittill("hash_a21db68a");
	if(function_65f192a6(var_eda6085e))
	{
		var_eda6085e function_eaa69754(0.5);
	}
	var_e5642e86 = function_eed6dab7(self.var_722885f3, 100, 48);
	if(isdefined(var_e5642e86))
	{
		self function_a96a2721(var_e5642e86, 0.25);
	}
	if(!function_65f192a6(var_eda6085e))
	{
		self namespace_cc27597::function_43718187("cin_gen_traversal_zipline_enemy02_dismount", var_eda6085e);
	}
	self function_52fddbd0();
	self function_dc8c8404();
	if(var_eda6085e == level.var_3d556bcd)
	{
		level namespace_ad23e503::function_74d6b22f("kane_landed");
	}
	else if(function_65f192a6(var_eda6085e))
	{
		var_eda6085e thread namespace_79e1cd97::function_2c33b48e();
		level namespace_ad23e503::function_74d6b22f("zipline_player_landed");
		var_eda6085e namespace_82b91a51::function_16c71b8(0);
	}
}

/*
	Name: function_9d556a71
	Namespace: namespace_4040b6c2
	Checksum: 0x82920E9
	Offset: 0x67C8
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_9d556a71(var_3b8db917, var_4faa1e49)
{
	var_3169a073 = function_6ada35ba(var_4faa1e49, "targetname");
	var_3169a073.var_1dcdd471 = 1;
	var_10729d99 = namespace_14b42b8a::function_7922262b(var_3169a073.var_b07228b6, "targetname");
	var_96eed922 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
	var_3b8db917 function_921a1574("evt_zipline_attach");
	var_eeed805e = namespace_82b91a51::function_b9fd52a4("tag_origin", var_10729d99.var_722885f3, var_10729d99.var_6ab6f4fd);
	if(var_3b8db917 == level.var_3d556bcd)
	{
		var_eeed805e namespace_cc27597::function_43718187("cin_gen_traversal_zipline_enemy02_attach", var_3b8db917);
	}
	var_3b8db917 function_c2931a36("evt_zipline_npc_move", 0.3);
	var_eeed805e thread namespace_cc27597::function_43718187("cin_gen_traversal_zipline_enemy02_idle", var_3b8db917);
	var_ccd4343c = function_7d15e2f8(var_10729d99.var_722885f3, var_96eed922.var_722885f3);
	var_78962fff = var_ccd4343c / 750;
	var_eeed805e function_a96a2721(var_96eed922.var_722885f3, var_78962fff, var_78962fff / 2, 0.1);
	var_eeed805e thread function_1357e282(var_3b8db917);
	var_3b8db917 function_eaa69754(0.5);
	var_3169a073.var_1dcdd471 = 0;
}

/*
	Name: function_9694617b
	Namespace: namespace_4040b6c2
	Checksum: 0xC6C5092D
	Offset: 0x6A30
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_9694617b()
{
	level namespace_ad23e503::function_1ab5ebec("blackstation_exterior_engaged");
	level namespace_71b8dba1::function_a463d127("kane_you_got_hostiles_inb_0", 1);
	level namespace_ad23e503::function_1ab5ebec("lightning_strike");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_their_grunts_will_ha_0", 1);
	level namespace_ad23e503::function_1ab5ebec("warlord_go");
	level namespace_71b8dba1::function_a463d127("kane_enemy_warlord_0", 2);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_reinforcements_comin_1", 2);
	level namespace_ad23e503::function_1ab5ebec("goto_entrance");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_we_got_eyes_o_0", 5);
}

/*
	Name: function_a870c9be
	Namespace: namespace_4040b6c2
	Checksum: 0x307C78E
	Offset: 0x6B78
	Size: 0x373
	Parameters: 2
	Flags: None
*/
function function_a870c9be(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_blackstation_interior");
		namespace_79e1cd97::function_da579a5d("objective_blackstation_interior");
		level.var_3d556bcd namespace_6f7b2095::function_1b497663("y");
		namespace_4dbf3ae3::function_42e87952("trig_blackstation_interior");
		level thread function_5493cb1d();
		level namespace_ad23e503::function_74d6b22f("blackstation_entry");
		namespace_d0ef8521::function_31cd1834("cp_level_blackstation_rendezvous");
		namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_station");
		level namespace_cc27597::function_c35e6aab("cin_bla_14_02_blackstation_vign_takepoint");
		while(!namespace_cc27597::function_92591589("cin_bla_14_02_blackstation_vign_takepoint"))
		{
			wait(0.05);
		}
		namespace_d7916d65::function_a2995f22();
	}
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_goto_station");
	level namespace_cc27597::function_c35e6aab("cin_bla_14_06_blackstation_1st_approachdoor");
	level thread function_3d53956f();
	level thread namespace_79e1cd97::function_6778ea09("none");
	namespace_2f06d687::function_2b37a3c9("group_driller", "script_aigroup", &function_872c1dfe);
	namespace_2f06d687::function_2b37a3c9("interior_looter1", "targetname", &function_fa27d153);
	level thread function_fb2359a2();
	level thread function_c51fef21();
	level thread function_fc21e39b();
	level thread function_7bba9576();
	level thread function_bd050a2d();
	level.var_2fd26037 notify("hash_a2ba32d");
	level.var_3d556bcd notify("hash_a2ba32d");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level.var_3d556bcd namespace_d84e54db::function_ceb883cd("cqb", 1);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_71e9cb84::function_74d6b22f("sndBlackStationSounds", 1);
}

/*
	Name: function_2846e098
	Namespace: namespace_4040b6c2
	Checksum: 0x780507AD
	Offset: 0x6EF8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_2846e098(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_blackstation");
}

/*
	Name: function_fb2359a2
	Namespace: namespace_4040b6c2
	Checksum: 0x25F68114
	Offset: 0x6F40
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_fb2359a2()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_waypoint_station03");
	level thread namespace_cc27597::function_43718187("cin_bla_14_05_blackstation_vign_drilling_idle");
	level thread namespace_cc27597::function_43718187("cin_bla_14_04_blackstation_aie_looting_a_idle");
	level namespace_ad23e503::function_1ab5ebec("drill_engaged");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_bd050a2d
	Namespace: namespace_4040b6c2
	Checksum: 0x7C73B7BE
	Offset: 0x6FF8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_bd050a2d()
{
	level namespace_ad23e503::function_1ab5ebec("driller_patrol");
	level namespace_ad23e503::function_d266a8b4(8, "drill_engaged");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_872c1dfe
	Namespace: namespace_4040b6c2
	Checksum: 0xA5015C12
	Offset: 0x7078
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_872c1dfe()
{
	self endon("hash_128f8789");
	self thread function_99610c91();
	self thread function_2a08d4df();
	level namespace_ad23e503::function_1ab5ebec("drill_engaged");
	level thread namespace_cc27597::function_43718187(self.var_caae374e);
}

/*
	Name: function_2a08d4df
	Namespace: namespace_4040b6c2
	Checksum: 0x96CD5EA2
	Offset: 0x7100
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_2a08d4df()
{
	self endon("hash_128f8789");
	level endon("hash_f666d28a");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(self function_75754e3a(var_5dc5e20a) && self.var_170527fb != "interior_looter1_ai")
			{
				level namespace_ad23e503::function_74d6b22f("drill_engaged");
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_99610c91
	Namespace: namespace_4040b6c2
	Checksum: 0x38D2B451
	Offset: 0x71F8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_99610c91()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_5b7e3888("damage", "bulletwhizby", "grenadedanger", "death", "projectile_impact", "driller_go");
	level namespace_ad23e503::function_74d6b22f("drill_engaged");
}

/*
	Name: function_fa27d153
	Namespace: namespace_4040b6c2
	Checksum: 0x6A9EA79B
	Offset: 0x7278
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_fa27d153()
{
	self endon("hash_128f8789");
	self thread function_99610c91();
	level namespace_ad23e503::function_1ab5ebec("drill_engaged");
	level thread namespace_cc27597::function_43718187("cin_bla_14_04_blackstation_aie_looting_a_react");
}

/*
	Name: function_7bba9576
	Namespace: namespace_4040b6c2
	Checksum: 0x4A9E264F
	Offset: 0x72E8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_7bba9576()
{
	level namespace_ad23e503::function_1ab5ebec("drill_engaged");
	level thread namespace_cc27597::function_43718187("cin_bla_14_05_blackstation_vign_drilling_react4");
	level namespace_71e9cb84::function_74d6b22f("sndDrillWalla", 0);
	var_88fd08c3 = function_b8494651("axis");
	foreach(var_973053c8 in var_88fd08c3)
	{
		var_973053c8 notify("hash_af52fefa");
	}
	level.var_54dc3c4c = function_9b7fda5e("script_origin", (-712, 9546, 368));
	level.var_54dc3c4c function_c2931a36("vox_black_15_02_004_salm");
}

/*
	Name: function_893b7d1f
	Namespace: namespace_4040b6c2
	Checksum: 0xC7222FE4
	Offset: 0x7448
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_893b7d1f()
{
	self endon("hash_128f8789");
	level endon("hash_f666d28a");
	self waittill("hash_aa1618b0");
	level namespace_ad23e503::function_74d6b22f("driller_patrol");
	level namespace_ad23e503::function_74d6b22f("drill_engaged");
}

/*
	Name: function_c51fef21
	Namespace: namespace_4040b6c2
	Checksum: 0x559A5F6C
	Offset: 0x74B8
	Size: 0x353
	Parameters: 0
	Flags: None
*/
function function_c51fef21()
{
	var_e4f2f922 = function_6ada35ba("trig_end_igc_door", "targetname");
	var_e4f2f922 function_175e6b8e(0);
	namespace_2f06d687::function_72214789("group_driller");
	namespace_4dbf3ae3::function_42e87952("triggercolor_station_door");
	level thread namespace_4297372::function_973b77f9();
	wait(1);
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_door", namespace_14b42b8a::function_7922262b("outro_igc"));
	var_e4f2f922 function_175e6b8e(1);
	var_e4f2f922 namespace_4dbf3ae3::function_1ab5ebec();
	var_e4f2f922 function_dc8c8404();
	level.var_54dc3c4c function_eaa69754();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_79e1cd97::function_ed7faf05();
	}
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_3d556bcd namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3);
	level.var_3d556bcd function_169cc712(level.var_3d556bcd.var_722885f3);
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	level thread namespace_4297372::function_6048af60();
	level namespace_cc27597::function_43718187("cin_bla_14_06_blackstation_1st_approachdoor", var_e4f2f922.var_aef176e7);
	var_935a64f = function_6ada35ba("bs_station_clip", "targetname");
	var_935a64f function_422037f5();
	var_935a64f function_de8377bf();
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_door", namespace_14b42b8a::function_7922262b("outro_igc"));
	namespace_1d795d47::function_be8adfb8("objective_blackstation_interior");
	wait(1);
	level.var_54dc3c4c function_dc8c8404();
}

/*
	Name: function_5493cb1d
	Namespace: namespace_4040b6c2
	Checksum: 0x86F452A9
	Offset: 0x7818
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_5493cb1d()
{
	level namespace_ad23e503::function_1ab5ebec("blackstation_entry");
	level thread namespace_4297372::function_674f7650();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_okay_let_s_see_wh_0");
	level namespace_ad23e503::function_1ab5ebec("driller_sound");
	level namespace_71e9cb84::function_74d6b22f("sndDrillWalla", 1);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_893b7d1f();
	}
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_something_up_ahead_0");
}

/*
	Name: function_fc21e39b
	Namespace: namespace_4040b6c2
	Checksum: 0xCB45286
	Offset: 0x7968
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_fc21e39b()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_blackstation_interior");
	level.var_2fd26037 thread function_7c4f357d("nd_hendricks_boiler", "hendricks_ready");
	level.var_3d556bcd thread function_7c4f357d("nd_kane_boiler", "kane_ready");
	namespace_82b91a51::function_8e66bc6("hendricks_ready", "kane_ready");
	namespace_79e1cd97::function_ca7fecc0();
	level namespace_cc27597::function_8f9f34e0("cin_bla_14_02_blackstation_vign_takepoint", &function_362c6fe1);
	level namespace_cc27597::function_43718187("cin_bla_14_02_blackstation_vign_takepoint");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_center");
	var_935a64f = function_6ada35ba("clip_boiler_room", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f function_dc8c8404();
	}
	namespace_9f824288::function_5d2cdd99();
	function_d4f82627("set", "cp_mi_sing_blackstation_objective_end_igc");
}

/*
	Name: function_362c6fe1
	Namespace: namespace_4040b6c2
	Checksum: 0x866C675A
	Offset: 0x7AF0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_362c6fe1(var_c77d2837)
{
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	level.var_3d556bcd namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("triggercolor_past_boiler");
}

/*
	Name: function_7c4f357d
	Namespace: namespace_4040b6c2
	Checksum: 0x863F5DCE
	Offset: 0x7B50
	Size: 0x77
	Parameters: 2
	Flags: None
*/
function function_7c4f357d(var_9e2ba1f1, var_8b453fd2)
{
	self namespace_6f7b2095::function_54bdb053();
	self function_169cc712(function_b4cb3503(var_9e2ba1f1, "targetname"), 1);
	self waittill("hash_41d1aaf0");
	wait(1);
	level notify(var_8b453fd2);
}

/*
	Name: function_2783ca83
	Namespace: namespace_4040b6c2
	Checksum: 0x2CF64020
	Offset: 0x7BD0
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function function_2783ca83(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_end_igc");
		namespace_79e1cd97::function_da579a5d("objective_end_igc");
		level namespace_cc27597::function_c35e6aab("cin_bla_15_outro_3rd_sh010");
		namespace_d7916d65::function_c32ba481();
	}
	level notify("hash_dde01e26");
	level thread namespace_4297372::function_6048af60();
	level thread namespace_4fe3eef1::function_9908d262("mus_blackstation_theme_intro");
	level namespace_cc27597::function_8f9f34e0("cin_bla_15_outro_3rd_sh010", &function_bffd5cf, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bla_15_outro_3rd_sh070", &function_f94ebed5, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bla_15_outro_3rd_sh210", &function_c10be1, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bla_15_outro_3rd_sh210", &function_92a23169, "done");
	if(isdefined(level.var_8b2530b4))
	{
		level thread [[level.var_8b2530b4]]();
	}
	namespace_84970cc4::function_eaab05dc(function_bd90138e(), &function_dc8c8404);
	level namespace_cc27597::function_43718187("cin_bla_15_outro_3rd_sh010");
}

/*
	Name: function_392085c9
	Namespace: namespace_4040b6c2
	Checksum: 0x80529951
	Offset: 0x7DD8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_392085c9(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_f94ebed5
	Namespace: namespace_4040b6c2
	Checksum: 0x6E0E383C
	Offset: 0x7E08
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_f94ebed5(var_c77d2837)
{
	level thread namespace_cc27597::function_43718187("cin_bla_15_outro_3rd_sh070_bodies");
}

/*
	Name: function_bffd5cf
	Namespace: namespace_4040b6c2
	Checksum: 0x369FB9DC
	Offset: 0x7E40
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_bffd5cf(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("outro_exposure", 1);
	level waittill("hash_8823b64");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	level namespace_ce7c3ed5::function_3f0b2996(0.5);
}

/*
	Name: function_c10be1
	Namespace: namespace_4040b6c2
	Checksum: 0x59C2CD39
	Offset: 0x7EC8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_c10be1(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_82b91a51::function_16c71b8(1);
	}
}

/*
	Name: function_92a23169
	Namespace: namespace_4040b6c2
	Checksum: 0xC540C7B0
	Offset: 0x7F70
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_92a23169(var_c77d2837)
{
	namespace_1d795d47::function_be8adfb8("objective_end_igc");
}

