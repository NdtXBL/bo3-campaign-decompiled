#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_cross_debris;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_641b22d4;

/*
	Name: function_c9040e7d
	Namespace: namespace_641b22d4
	Checksum: 0x93376447
	Offset: 0xD68
	Size: 0x1DB
	Parameters: 2
	Flags: None
*/
function function_c9040e7d(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_comm_relay");
		namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_relay");
		namespace_79e1cd97::function_bff1a867("objective_comm_relay_traverse");
		namespace_79e1cd97::function_da579a5d("objective_relay_traverse_kane");
		level.var_3d556bcd namespace_d84e54db::function_c9e45d52(1);
		level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 function_169cc712(function_b4cb3503("hendricks_intro_end", "targetname"), 1);
		level.var_3d556bcd function_169cc712(function_b4cb3503("kane_intro_end", "targetname"), 1);
		level thread namespace_79e1cd97::function_90db9f9c();
		level thread namespace_cc27597::function_43718187("cin_bla_10_01_kaneintro_end_idle");
		namespace_d7916d65::function_a2995f22();
		level thread namespace_4297372::function_6c35b4f3();
	}
	level thread namespace_79e1cd97::function_6778ea09("light_ne");
	function_d04ca07c();
}

/*
	Name: function_311be427
	Namespace: namespace_641b22d4
	Checksum: 0xC239680
	Offset: 0xF50
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_311be427(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_d04ca07c
	Namespace: namespace_641b22d4
	Checksum: 0xF7CC7780
	Offset: 0xF80
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_d04ca07c()
{
	level thread function_3cd30cbd();
	level thread function_e312f792();
	level thread function_e762f0f7();
	level.var_2fd26037 thread function_9ead7187();
	if(isdefined(level.var_655a6f1d))
	{
		level thread [[level.var_655a6f1d]]();
	}
	function_6c97cd4();
	namespace_4dbf3ae3::function_1ab5ebec("trig_comm_relay_spawns", "targetname");
	namespace_1d795d47::function_be8adfb8("objective_comm_relay_traverse");
}

/*
	Name: function_a2073f94
	Namespace: namespace_641b22d4
	Checksum: 0xD76C9AFD
	Offset: 0x1058
	Size: 0x17B
	Parameters: 2
	Flags: None
*/
function function_a2073f94(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_comm_relay");
		namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_goto_relay");
		namespace_79e1cd97::function_bff1a867("objective_comm_relay");
		namespace_79e1cd97::function_da579a5d("objective_blackstation_exterior");
		level.var_2fd26037 thread function_9ead7187();
		level.var_3d556bcd namespace_d84e54db::function_c9e45d52(1);
		level.var_3d556bcd namespace_d84e54db::function_b4f5e3b9(1);
		level thread function_9520d9e4(var_74cd64bc);
		function_6c97cd4();
		namespace_4dbf3ae3::function_42e87952("trig_comm_relay_spawns", "targetname");
		level thread function_9e1e35a();
		level thread namespace_4297372::function_6c35b4f3();
		namespace_d7916d65::function_a2995f22();
	}
	function_20386e5d();
}

/*
	Name: function_6c97cd4
	Namespace: namespace_641b22d4
	Checksum: 0xE6F48E20
	Offset: 0x11E0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_6c97cd4()
{
	namespace_2f06d687::function_2b37a3c9("comm_relay_group01", "targetname", &function_8d47a6e7);
	namespace_2f06d687::function_2b37a3c9("comm_relay_group02", "targetname", &function_3245f6e9);
	namespace_2f06d687::function_2b37a3c9("comm_relay_patroller", "script_noteworthy", &function_e3e0028);
	namespace_2f06d687::function_2b37a3c9("comm_relay_retreater", "script_noteworthy", &function_70643fc);
	namespace_2f06d687::function_22356ba7("comm_relay_awaken_robot1", &function_1cf52369);
	namespace_82b91a51::function_76f13293();
	namespace_2f06d687::function_22356ba7("comm_relay_awaken_robot2", &function_1cf52369);
	namespace_82b91a51::function_76f13293();
	namespace_2f06d687::function_22356ba7("comm_relay_awaken_robot3", &function_1cf52369);
}

/*
	Name: function_7e7b796a
	Namespace: namespace_641b22d4
	Checksum: 0x149387CB
	Offset: 0x1348
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_7e7b796a(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_goto_relay");
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_comm_relay");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_blackstation");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_rendezvous");
}

/*
	Name: function_20386e5d
	Namespace: namespace_641b22d4
	Checksum: 0x25971162
	Offset: 0x13D8
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_20386e5d()
{
	level thread function_76732cae();
	level thread function_5c3fb5af();
	level thread function_e011018();
	level thread function_bcbf009b();
	level thread function_5470e1dd();
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_79e1cd97::function_d870e0, "trig_comm_relay_approach");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_79e1cd97::function_d870e0, "comm_relay_interior_hendricks");
	var_f0e94a11 = function_6ada35ba("clear_robot_use", "targetname");
	var_f0e94a11 function_175e6b8e(0);
	namespace_2f06d687::function_7387a40a("comm_relay_igc_robot", &function_6d389c01);
	level namespace_ad23e503::function_1ab5ebec("relay_reinforce");
	namespace_2f06d687::function_22356ba7("comm_relay_back_room_humans");
	namespace_2f06d687::function_22356ba7("comm_relay_group03", &function_aadd72bd);
	level namespace_ad23e503::function_1ab5ebec("comm_relay_hacked");
	namespace_1d795d47::function_be8adfb8("objective_comm_relay");
	level.var_2fd26037 notify("hash_d60979de");
}

/*
	Name: function_76732cae
	Namespace: namespace_641b22d4
	Checksum: 0x92EA9B6B
	Offset: 0x15D8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_76732cae()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_comm_relay_window");
	var_ca17143d = namespace_14b42b8a::function_7922262b("comm_relay_glass");
	function_be97adee(var_ca17143d.var_722885f3, 10, 5000, 5000);
}

/*
	Name: function_7b57f76b
	Namespace: namespace_641b22d4
	Checksum: 0x1EE7D8C
	Offset: 0x1650
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7b57f76b()
{
	wait(5);
	self function_dc8c8404();
}

/*
	Name: function_3cd30cbd
	Namespace: namespace_641b22d4
	Checksum: 0x4662B43
	Offset: 0x1678
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_3cd30cbd()
{
	level namespace_d0ef8521::function_45d1556("comm_relay_traverse_breadcrumb");
	level namespace_d0ef8521::function_45d1556("breadcrumb_comm_relay_climb", "cp_level_blackstation_climb");
	level namespace_d0ef8521::function_45d1556("breadcrumb_cross_bridge");
	level namespace_d0ef8521::function_45d1556("comm_relay_breadcrumb");
	level namespace_d0ef8521::function_45d1556("waypoint_comm_relay");
}

/*
	Name: function_9e1e35a
	Namespace: namespace_641b22d4
	Checksum: 0xAA433413
	Offset: 0x1730
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_9e1e35a()
{
	level namespace_d0ef8521::function_45d1556("comm_relay_breadcrumb");
	level namespace_d0ef8521::function_45d1556("waypoint_comm_relay");
}

/*
	Name: function_e312f792
	Namespace: namespace_641b22d4
	Checksum: 0xDE404BDA
	Offset: 0x1780
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_e312f792()
{
	level thread function_9520d9e4();
	level endon("hash_90257695");
	namespace_4dbf3ae3::function_1ab5ebec("t_comms_vo");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_so_kane_now_that_t_0");
	level namespace_71b8dba1::function_a463d127("kane_strike_and_strip_b_0", 0.5);
	level namespace_71b8dba1::function_13b3b16a("plyr_what_about_evac_for_0", 0.5);
	level namespace_71b8dba1::function_a463d127("kane_facts_are_the_stat_0", 0.5);
	level namespace_ad23e503::function_1ab5ebec("comm_relay_dialog02");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_we_re_approac_0");
}

/*
	Name: function_9520d9e4
	Namespace: namespace_641b22d4
	Checksum: 0x7F9A525E
	Offset: 0x18A0
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_9520d9e4(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	level namespace_ad23e503::function_1ab5ebec("relay_room_clear");
	level thread namespace_4297372::function_d4c52995();
	level thread namespace_cc27597::function_43718187("cin_bla_11_01_comm_vign_scramble_hendricks_start");
	level thread function_8f139027();
	level namespace_ad23e503::function_74d6b22f("comm_relay_hendricks_ready");
	level namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
}

/*
	Name: function_8f139027
	Namespace: namespace_641b22d4
	Checksum: 0x7F899C57
	Offset: 0x1978
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_8f139027()
{
	level endon("hash_60ad62af");
	wait(25);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_come_on_get_to_work_0");
	wait(15);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_don_t_got_all_day_0");
}

/*
	Name: function_6d389c01
	Namespace: namespace_641b22d4
	Checksum: 0x7C5C7773
	Offset: 0x19E0
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_6d389c01()
{
	self.var_7dfaf62 = 4;
	self.var_342d9e3a = 1;
	self namespace_d84e54db::function_ceb883cd("can_gib", 0);
	var_ebfa948 = self.var_3a90f16b;
	self.var_3a90f16b = self.var_3a90f16b * 2;
	self.var_bab9655e = 0;
	self thread function_862c1664();
	self.var_a1f56f1f = 1;
	namespace_4dbf3ae3::function_1ab5ebec("trig_comm_relay_igc_robot", "targetname", self);
	var_d874dcf = function_6ada35ba("comm_relay_console_clip", "targetname");
	var_d874dcf function_8bdea13c(512, 0.05);
	var_d874dcf waittill("hash_a21db68a");
	self namespace_82b91a51::function_5b7e3888("enemy", "damage", "bulletwhizby", "comm_relay_proximity", "comm_relay_engaged");
	level namespace_ad23e503::function_74d6b22f("comm_relay_engaged");
	self.var_a1f56f1f = 0;
	while(self.var_3a90f16b > var_ebfa948)
	{
		wait(0.05);
	}
	level thread namespace_cc27597::function_43718187("cin_bla_11_06_comm_vign_scramble_destroyrobot", self);
	var_d874dcf function_dc8c8404();
	self function_422037f5();
	self namespace_16f9ecd3::function_a2477bbb();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_ceb883cd("robot_lights", 2);
	level waittill("hash_c11ac5b0");
	level namespace_ad23e503::function_74d6b22f("igc_robot_down");
	level namespace_ad23e503::function_1ab5ebec("comm_relay_hendricks_ready");
	var_f0e94a11 = function_6ada35ba("clear_robot_use", "targetname");
	var_f0e94a11 function_175e6b8e(1);
	namespace_82b91a51::function_14518e76(var_f0e94a11, &"cp_level_blackstation_hack_relay", &"CP_MI_SING_BLACKSTATION_MOVE_ROBOT", &function_af9d4545, self);
}

/*
	Name: function_af9d4545
	Namespace: namespace_641b22d4
	Checksum: 0x18EA4246
	Offset: 0x1CF8
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_af9d4545(var_6bfe1586)
{
	var_6bfe1586 endon("hash_128f8789");
	self namespace_a230c2b1::function_e54c54c3();
	var_6bfe1586 thread function_4c16ca2b();
	var_6bfe1586 thread namespace_79e1cd97::function_ed7faf05();
	level notify("hash_60ad62af");
	level thread namespace_4297372::function_cde82250();
	level thread namespace_4297372::function_6c35b4f3();
	var_f6c5842 = function_6ada35ba("comm_relay_igc_robot_ai", "targetname");
	if(isdefined(level.var_ba246cea))
	{
		level thread [[level.var_ba246cea]]();
	}
	level namespace_cc27597::function_8f9f34e0("cin_bla_11_01_comm_vign_scramble_player_start", &function_104ecb4b);
	level namespace_cc27597::function_8f9f34e0("cin_bla_11_01_comm_vign_scramble_player_end", &function_77ccb9da, "play");
	level namespace_cc27597::function_43718187("cin_bla_11_01_comm_vign_scramble_player_start", function_84970cc4(var_6bfe1586, var_f6c5842));
	level thread namespace_cc27597::function_43718187("cin_bla_11_01_comm_vign_scramble_hendricks_end");
	level namespace_cc27597::function_43718187("cin_bla_11_01_comm_vign_scramble_player_end", function_84970cc4(var_6bfe1586));
	var_6bfe1586 thread namespace_79e1cd97::function_2c33b48e();
	level namespace_ad23e503::function_74d6b22f("comm_relay_hacked");
	level thread function_7b8a2da8();
}

/*
	Name: function_77ccb9da
	Namespace: namespace_641b22d4
	Checksum: 0xA6AE2274
	Offset: 0x1F10
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_77ccb9da(var_c77d2837)
{
	level thread function_53f20e51();
	level thread function_5be784f3();
	var_6bfe1586 = var_c77d2837["player 1"];
	while(!level namespace_ad23e503::function_7922262b("comm_relay_pulse"))
	{
		var_6bfe1586 namespace_175490fb::function_f8669cbf(1);
		wait(3.05);
	}
}

/*
	Name: function_53f20e51
	Namespace: namespace_641b22d4
	Checksum: 0x5AC500E8
	Offset: 0x1FB8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_53f20e51()
{
	level waittill("hash_311e66ea");
	level namespace_ad23e503::function_74d6b22f("comm_relay_pulse");
}

/*
	Name: function_5be784f3
	Namespace: namespace_641b22d4
	Checksum: 0xE8DFD64E
	Offset: 0x1FF0
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_5be784f3()
{
	function_6ada35ba("com_curve_on", "targetname") function_dc8c8404();
	function_6ada35ba("com_rugged_on", "targetname") function_dc8c8404();
	function_6ada35ba("com_curve_glitch_1", "targetname") function_48f26766();
	function_6ada35ba("com_rugged_glitch_1", "targetname") function_48f26766();
	wait(7);
	function_6ada35ba("com_curve_glitch_1", "targetname") function_dc8c8404();
	function_6ada35ba("com_rugged_glitch_1", "targetname") function_dc8c8404();
	function_6ada35ba("com_curve_glitch_2", "targetname") function_48f26766();
	function_6ada35ba("com_rugged_glitch_2", "targetname") function_48f26766();
	level namespace_ad23e503::function_1ab5ebec("comm_relay_pulse");
	function_6ada35ba("com_curve_glitch_2", "targetname") function_dc8c8404();
	function_6ada35ba("com_rugged_glitch_2", "targetname") function_dc8c8404();
	function_6ada35ba("com_curve_off", "targetname") function_48f26766();
	function_6ada35ba("com_rugged_off", "targetname") function_48f26766();
}

/*
	Name: function_104ecb4b
	Namespace: namespace_641b22d4
	Checksum: 0x989A4A3A
	Offset: 0x2268
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_104ecb4b(var_c77d2837)
{
	level waittill("hash_7fd4ec9d");
	var_6104a93b = var_c77d2837["comm_relay_igc_robot"];
	if(isdefined(var_6104a93b))
	{
		var_6104a93b function_cb3bf380(var_6104a93b.var_6b67fbcf);
	}
	level waittill("hash_82ab74b7");
	level thread namespace_cc27597::function_43718187("cin_bla_11_01_comm_vign_scramble_hendricks_talk2kane");
}

/*
	Name: function_4c16ca2b
	Namespace: namespace_641b22d4
	Checksum: 0x5EDD15FC
	Offset: 0x22F8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_4c16ca2b()
{
	level endon("hash_549a5f32");
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("comm_relay_hacked");
	level.var_2fd26037 function_470f7e4c();
}

/*
	Name: function_6c35b4f3
	Namespace: namespace_641b22d4
	Checksum: 0x55B22437
	Offset: 0x2358
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6c35b4f3()
{
	level namespace_ad23e503::function_1ab5ebec("comm_relay_hacked");
	level thread namespace_4297372::function_6c35b4f3();
}

/*
	Name: function_9ead7187
	Namespace: namespace_641b22d4
	Checksum: 0xEE52CBF3
	Offset: 0x23A0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_9ead7187()
{
	level endon("hash_ef8dbf74");
	self.var_c584775c = 1;
	level namespace_ad23e503::function_1ab5ebec("comm_relay_engaged");
	self thread namespace_79e1cd97::function_dccf6ccc();
	self.var_c584775c = 0;
	level namespace_ad23e503::function_1ab5ebec("relay_room_clear");
	namespace_4dbf3ae3::function_42e87952("trig_hendricks_comm_relay02", "targetname");
	level namespace_ad23e503::function_1ab5ebec("comm_relay_hacked");
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level namespace_cc27597::function_8f9f34e0("cin_bla_11_02_comm_vign_doorkick", &function_6eaf20ba);
	level thread namespace_cc27597::function_43718187("cin_bla_11_02_comm_vign_doorkick", level.var_2fd26037);
}

/*
	Name: function_6eaf20ba
	Namespace: namespace_641b22d4
	Checksum: 0x6EBF5854
	Offset: 0x24F8
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_6eaf20ba(var_c77d2837)
{
	level endon("hash_ef8dbf74");
	wait(0.5);
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("triggercolor_walkway");
	wait(0.5);
	function_6ada35ba("comrelay_door_clip_right", "targetname") function_dc8c8404();
	function_6ada35ba("comrelay_door_clip_left", "targetname") function_dc8c8404();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level notify("hash_4881db90");
}

/*
	Name: function_7b8a2da8
	Namespace: namespace_641b22d4
	Checksum: 0x607B1AFB
	Offset: 0x25F0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_7b8a2da8()
{
	level endon("hash_4881db90");
	wait(10);
	level notify("hash_ef8dbf74");
	var_36332336 = function_b4cb3503("node_comm_door", "targetname");
	level.var_2fd26037 namespace_1d795d47::function_d9b1ee00(var_36332336);
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level namespace_e785bfa0::function_b0ed4f4f();
	namespace_4dbf3ae3::function_42e87952("triggercolor_walkway");
}

/*
	Name: function_aadd72bd
	Namespace: namespace_641b22d4
	Checksum: 0x89CCFF96
	Offset: 0x26D0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_aadd72bd()
{
	self endon("hash_128f8789");
	wait(function_26299103(5));
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
}

/*
	Name: function_8d47a6e7
	Namespace: namespace_641b22d4
	Checksum: 0x213BB742
	Offset: 0x2728
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_8d47a6e7()
{
	self endon("hash_128f8789");
	self thread function_862c1664();
	self.var_a1f56f1f = 1;
	self namespace_82b91a51::function_5b7e3888("enemy", "damage", "bulletwhizby", "comm_relay_proximity", "comm_relay_engaged");
	level namespace_ad23e503::function_74d6b22f("comm_relay_engaged");
	namespace_d5067552::function_bae40a28("comm_relay_group02_sm", 1);
	self.var_a1f56f1f = 0;
	if(self.var_8fc0e50e == "robot")
	{
		self function_169cc712(function_6ada35ba("comm_relay_goal_volume", "targetname"));
		level namespace_ad23e503::function_1ab5ebec("comm_relay_back_room");
		self function_169cc712(function_6ada35ba("comm_relay_back_volume", "targetname"), 1);
	}
}

/*
	Name: function_862c1664
	Namespace: namespace_641b22d4
	Checksum: 0x851A966A
	Offset: 0x2888
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_862c1664()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("trig_comm_relay_proximity", "targetname");
	self notify("hash_2bab7a99");
}

/*
	Name: function_3245f6e9
	Namespace: namespace_641b22d4
	Checksum: 0xD95B8FA1
	Offset: 0x28D0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_3245f6e9()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
}

/*
	Name: function_e3e0028
	Namespace: namespace_641b22d4
	Checksum: 0xBC5F1703
	Offset: 0x2910
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_e3e0028()
{
	self endon("hash_128f8789");
	level endon("hash_90257695");
	var_ea475169 = function_6d5b92c7(self.var_722885f3);
	do
	{
		self namespace_d84e54db::function_19e98020(var_ea475169, 4);
		self waittill("hash_41d1aaf0");
		if(isdefined(var_ea475169.var_85057f6d) && isdefined(var_ea475169.var_bfef2183))
		{
			self namespace_d84e54db::function_19e98020(self.var_722885f3 + function_bc7ce905(var_ea475169.var_6ab6f4fd) * 16, 4);
			wait(function_72a94f05(var_ea475169.var_85057f6d, var_ea475169.var_bfef2183));
		}
		var_ea475169 = function_b4cb3503(var_ea475169.var_b07228b6, "targetname");
	}
	while(!isdefined(var_ea475169));
}

/*
	Name: function_70643fc
	Namespace: namespace_641b22d4
	Checksum: 0xC5843702
	Offset: 0x2A50
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_70643fc()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("comm_relay_engaged");
	self function_169cc712(function_6ada35ba("comm_relay_back_volume", "targetname"), 1);
}

/*
	Name: function_1cf52369
	Namespace: namespace_641b22d4
	Checksum: 0x6652E9A
	Offset: 0x2AC0
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_1cf52369()
{
	self endon("hash_128f8789");
	level endon("hash_4c3316ac");
	self.var_caae374e = "awakened_robot";
	var_1cbcb46d = namespace_14b42b8a::function_7922262b(self.var_b07228b6);
	var_1cbcb46d namespace_cc27597::function_c35e6aab(var_1cbcb46d.var_1157a889, self);
	var_85178a47 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_1cbcb46d.var_722885f3, var_1cbcb46d.var_6ab6f4fd + VectorScale((0, 1, 0), 90));
	var_85178a47 namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_charging_station_open_01_bundle");
	level namespace_ad23e503::function_1ab5ebec("comm_relay_engaged");
	level namespace_82b91a51::function_9fcf3cd8(45, "comm_relay_back_room", "defenders_low");
	wait(function_72a94f05(2.5, 4));
	level namespace_cc27597::function_8f9f34e0(var_1cbcb46d.var_1157a889, &function_48aa6d93, "done");
	var_1cbcb46d thread namespace_cc27597::function_43718187(var_1cbcb46d.var_1157a889, self);
	level namespace_ad23e503::function_74d6b22f("awakening_begun");
	var_85178a47 namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_charging_station_open_01_bundle");
	var_85178a47 function_dc8c8404();
	level namespace_ad23e503::function_74d6b22f("awakening_end");
	self function_169cc712(function_6ada35ba("comm_relay_back_volume", "targetname"));
}

/*
	Name: function_48aa6d93
	Namespace: namespace_641b22d4
	Checksum: 0x939C8323
	Offset: 0x2D18
	Size: 0x8D
	Parameters: 1
	Flags: None
*/
function function_48aa6d93(var_c77d2837)
{
	foreach(var_f6c5842 in var_c77d2837)
	{
		var_f6c5842.var_b16fc475 = 1;
	}
}

/*
	Name: function_5c3fb5af
	Namespace: namespace_641b22d4
	Checksum: 0x8CFC1D61
	Offset: 0x2DB0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_5c3fb5af()
{
	level thread function_66606bc7();
	level thread function_5458238e();
	level namespace_ad23e503::function_1ab5ebec("comm_relay_back_room");
	namespace_d5067552::function_2992720d("comm_relay_group02_sm", 1);
	namespace_2f06d687::function_72214789("comm_relay_defenders");
	level namespace_ad23e503::function_1ab5ebec("igc_robot_down");
	level namespace_ad23e503::function_1ab5ebec("no_awakened_robots");
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_74d6b22f("relay_room_clear");
}

/*
	Name: function_66606bc7
	Namespace: namespace_641b22d4
	Checksum: 0x53287A9E
	Offset: 0x2ED8
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_66606bc7()
{
	level namespace_ad23e503::function_1ab5ebec("comm_relay_engaged");
	namespace_2f06d687::function_371d219c("comm_relay_defenders", 4);
	level notify("hash_50f53660");
}

/*
	Name: function_5458238e
	Namespace: namespace_641b22d4
	Checksum: 0xFD17A345
	Offset: 0x2F38
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_5458238e()
{
	level endon("hash_4c3316ac");
	while(1)
	{
		wait(0.25);
		level.var_1cf6a131 = function_c20c2e8("awakened_robot", "script_noteworthy");
		if(level.var_1cf6a131.size > 0)
		{
			level namespace_ad23e503::function_2698b54f("no_awakened_robots", 0);
		}
		else
		{
			level namespace_ad23e503::function_74d6b22f("no_awakened_robots");
		}
	}
}

/*
	Name: function_5470e1dd
	Namespace: namespace_641b22d4
	Checksum: 0x3192663B
	Offset: 0x2FE0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5470e1dd()
{
	var_e0d020c4 = function_6ada35ba("e_table_linker", "targetname");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_48e2699d, var_e0d020c4);
}

/*
	Name: function_48e2699d
	Namespace: namespace_641b22d4
	Checksum: 0x488C1EC3
	Offset: 0x3048
	Size: 0xC7
	Parameters: 1
	Flags: None
*/
function function_48e2699d(var_27fbdccf)
{
	level endon("hash_bcbf009b");
	self endon("hash_128f8789");
	var_5f0fc534 = 250000;
	while(1)
	{
		self namespace_82b91a51::function_3546be91(var_27fbdccf.var_722885f3, 25, 0, self);
		if(function_316422d1(self.var_722885f3, var_27fbdccf.var_722885f3) <= var_5f0fc534)
		{
			level namespace_ad23e503::function_74d6b22f("go_flippers");
		}
		wait(0.1);
	}
}

/*
	Name: function_e011018
	Namespace: namespace_641b22d4
	Checksum: 0xE7D13F44
	Offset: 0x3118
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e011018()
{
	level namespace_ad23e503::function_1ab5ebec("go_flippers");
	namespace_2f06d687::function_22356ba7("comm_relay_table_flippers", &function_34bb534a);
}

/*
	Name: function_34bb534a
	Namespace: namespace_641b22d4
	Checksum: 0x545B53C8
	Offset: 0x3170
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_34bb534a()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 8;
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self waittill("hash_41d1aaf0");
	level namespace_ad23e503::function_74d6b22f("table_flip");
	self.var_7dfaf62 = 2048;
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
}

/*
	Name: function_bcbf009b
	Namespace: namespace_641b22d4
	Checksum: 0xC1294EB9
	Offset: 0x3208
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_bcbf009b()
{
	level namespace_ad23e503::function_1ab5ebec("table_flip");
	var_da8380b3 = function_99201f25("com_relay_table", "targetname");
	namespace_79e1cd97::function_da77906f(var_da8380b3, "connect");
	var_e0d020c4 = function_6ada35ba("e_table_linker", "targetname");
	foreach(var_a3d46ee4 in var_da8380b3)
	{
		var_a3d46ee4 function_37f7858a(var_e0d020c4);
	}
	var_e0d020c4 function_5613042d(88, 0.4);
	var_e0d020c4 waittill("hash_a21db68a");
	namespace_79e1cd97::function_da77906f(var_da8380b3, "disconnect");
}

/*
	Name: function_e762f0f7
	Namespace: namespace_641b22d4
	Checksum: 0x7A0EAD7E
	Offset: 0x3380
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_e762f0f7()
{
	namespace_84970cc4::function_966ecb29(function_99201f25("trig_atrium_glass", "targetname"), &function_be761c1);
}

/*
	Name: function_be761c1
	Namespace: namespace_641b22d4
	Checksum: 0x5E5AF84C
	Offset: 0x33D0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_be761c1()
{
	var_b71ed4a2 = self.var_722885f3;
	self namespace_4dbf3ae3::function_1ab5ebec();
	if(isdefined(self.var_caae374e) && self.var_caae374e == "atrium_delete_path_clip")
	{
		function_6ada35ba("hendricks_window_clip", "targetname") function_dc8c8404();
	}
	function_be97adee(var_b71ed4a2, 10, 500, 500);
}

