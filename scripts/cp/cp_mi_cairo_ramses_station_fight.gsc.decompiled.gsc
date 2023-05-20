#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_accolades;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_level_start;
#using scripts\cp\cp_mi_cairo_ramses_nasser_interview;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_station_walk;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses_vtol_ride;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_raps;

#namespace namespace_bedc6a60;

/*
	Name: function_c35e6aab
	Namespace: namespace_bedc6a60
	Checksum: 0x30B5C57F
	Offset: 0x1810
	Size: 0x55B
	Parameters: 2
	Flags: None
*/
function function_c35e6aab(var_b04bc952, var_74cd64bc)
{
	namespace_dabbe128::function_a0ac4434(&namespace_50196384::function_e9d1564a);
	namespace_2f06d687::function_2b37a3c9("station_fight_scene_robot", "script_noteworthy", &function_3aea851b);
	namespace_2f06d687::function_2b37a3c9("station_fight_balcony_turret_steal_robot", "targetname", &function_28238a2a);
	namespace_2f06d687::function_2b37a3c9("balcony_station_fight_ai", "script_noteworthy", &namespace_391e4301::function_258b9bad, "end_balcony_shields", 1);
	namespace_2f06d687::function_2b37a3c9("balcony_robot_ai", "script_string", &function_23c641de);
	namespace_2f06d687::function_2b37a3c9("right_side_station_fight_ai", "script_noteworthy", &namespace_391e4301::function_258b9bad, "player_is_close", 1);
	namespace_2f06d687::function_2b37a3c9("right_side_station_fight_ai", "script_noteworthy", &function_157bd88d);
	namespace_2f06d687::function_2b37a3c9("rap_drive_to_point_explode", "script_noteworthy", &function_8d670bce);
	namespace_2f06d687::function_2b37a3c9("station_fight_raps_jump_raps", "targetname", &function_3e73806);
	namespace_2f06d687::function_2b37a3c9("actor_spawner_enemy_dps_robot_assault_ar", "classname", &function_46eb86a4);
	namespace_2f06d687::function_2b37a3c9("actor_spawner_enemy_dps_robot_cqb_shotgun", "classname", &function_46eb86a4);
	namespace_2f06d687::function_2b37a3c9("actor_spawner_enemy_dps_robot_suppressor_ar", "classname", &function_46eb86a4);
	namespace_2f06d687::function_2b37a3c9("actor_spawner_enemy_dps_robot_suppressor_mg", "classname", &function_46eb86a4);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_7434c6b7::function_bbd12ed2(0);
		level thread function_e5ed2910();
		level thread namespace_391e4301::function_e950228a();
		level namespace_cc27597::function_c35e6aab("cin_ram_03_01_defend_1st_rapsintro");
		level thread function_91e74b85();
		level namespace_82b91a51::function_d8eaed3d(2, 1);
	}
	else
	{
		level thread namespace_82b91a51::function_d8eaed3d(2, 1);
	}
	level.var_85b298df = function_b4cb3503("khalil_station_fight_start_node", "targetname");
	function_d224409e(level.var_85b298df, 0);
	function_dfedb0b8(var_b04bc952, var_74cd64bc);
	if(namespace_cc27597::function_367f8966("cin_ram_02_04_interview_part04"))
	{
		namespace_cc27597::function_fcf56ab5("cin_ram_02_04_interview_part04");
	}
	if(isdefined(level.var_d2285e9a))
	{
		level thread [[level.var_d2285e9a]]();
	}
	level thread namespace_cc27597::function_43718187("cin_ram_02_04_interview_part04_end_loops");
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 thread namespace_50196384::function_8ae96a69();
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_lotus_towers_hunters_swarm_bundle");
	namespace_38256252::function_6f52c808();
	namespace_38256252::function_7f657f7a();
	namespace_38256252::function_fec73937();
	namespace_38256252::function_a17fa88e();
	namespace_76d95162::function_d9f49fba(1, "bc");
	function_d290ebfa(var_74cd64bc);
	namespace_1d795d47::function_be8adfb8("defend_ramses_station");
}

/*
	Name: function_355070e1
	Namespace: namespace_bedc6a60
	Checksum: 0xFCDA1BBC
	Offset: 0x1D78
	Size: 0x53
	Parameters: 4
	Flags: None
*/
function function_355070e1(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_38256252::function_b13b2dae();
	namespace_38256252::function_ed5f8c84();
	namespace_38256252::function_6d6e6d0d();
}

/*
	Name: function_d290ebfa
	Namespace: namespace_bedc6a60
	Checksum: 0x5D0E9FE4
	Offset: 0x1DD8
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_d290ebfa(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22(1);
		namespace_84970cc4::function_966ecb29(function_99201f25("ammo_cache", "script_noteworthy"), &namespace_16f9ecd3::function_14ec2d71);
	}
	namespace_82b91a51::function_76f13293();
	level thread function_77e31f62();
	level thread function_588f1876();
	level thread function_8c26918a();
	namespace_71e9cb84::function_74d6b22f("hide_station_miscmodels", 0);
	namespace_71e9cb84::function_74d6b22f("delete_fxanim_fans", 1);
	function_bedc6a60();
}

/*
	Name: function_77e31f62
	Namespace: namespace_bedc6a60
	Checksum: 0x867AA43A
	Offset: 0x1EF0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_77e31f62()
{
	wait(0.05);
	level namespace_82b91a51::function_ef3f75eb("hosp_amb");
	level namespace_82b91a51::function_ef3f75eb("inv");
}

/*
	Name: function_3aea851b
	Namespace: namespace_bedc6a60
	Checksum: 0x19F0B0D
	Offset: 0x1F48
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3aea851b()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_db7bb468), "Dev Block strings are not supported" + self.var_722885f3 + "Dev Block strings are not supported");
	#/
	self namespace_cc27597::function_43718187(self.var_db7bb468, self);
}

/*
	Name: function_bb2cfd0f
	Namespace: namespace_bedc6a60
	Checksum: 0x9A8B40DB
	Offset: 0x1FB0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_bb2cfd0f()
{
	self endon("hash_128f8789");
	var_10729d99 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	var_305876e1 = function_9b7fda5e("script_model", var_10729d99.var_722885f3);
	var_305876e1 function_e48f905e("veh_t7_drone_raps");
	self function_9e35fc47(var_10729d99, var_305876e1);
}

/*
	Name: function_9e35fc47
	Namespace: namespace_bedc6a60
	Checksum: 0x2E789E4F
	Offset: 0x2060
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_9e35fc47(var_10729d99, var_305876e1)
{
	self endon("hash_128f8789");
	var_a0e1464d = namespace_14b42b8a::function_7faf4c39(var_10729d99.var_b07228b6, "targetname");
	var_96eed922 = var_a0e1464d[function_26299103(var_a0e1464d.size)];
	var_305876e1.var_722885f3 = var_10729d99.var_722885f3;
	var_305876e1.var_6ab6f4fd = var_10729d99.var_6ab6f4fd;
	var_305876e1 function_a96a2721(var_96eed922.var_722885f3, 1.1);
	var_305876e1 waittill("hash_a21db68a");
	self.var_722885f3 = var_305876e1.var_722885f3;
	self.var_6ab6f4fd = var_305876e1.var_6ab6f4fd;
	var_305876e1 function_dc8c8404();
}

/*
	Name: function_8d670bce
	Namespace: namespace_bedc6a60
	Checksum: 0xC153FA92
	Offset: 0x21A0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_8d670bce()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_b07228b6))
	{
		var_2188bf75 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname").var_722885f3;
	}
	else
	{
		self function_169cc712(level.var_9b1393e7[0]);
		return;
	}
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_72ee5da4::function_81b6f1ac();
	self function_500dc2f7(128);
	self function_c985552d(var_2188bf75, 0, 1);
	self namespace_82b91a51::function_9fcf3cd8(5, "goal", "near_goal", "force_goal", "change_state");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self function_ada64136();
	self namespace_72ee5da4::function_efe9815e("combat");
}

/*
	Name: function_3e73806
	Namespace: namespace_bedc6a60
	Checksum: 0x8E066F1C
	Offset: 0x2340
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_3e73806()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_c1239d26.var_d0034c58 = 32;
	self.var_c1239d26.var_f41b40f8 = 1;
	if(isdefined(self.var_b07228b6))
	{
		var_83fa3476 = function_243bb261(self.var_b07228b6, "targetname");
		self namespace_96fa87af::function_edb3a94e(var_83fa3476);
	}
	else if(isdefined(self.var_8202763a))
	{
		self function_be0dddf9(80);
	}
	self namespace_72ee5da4::function_efe9815e("combat");
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_be0dddf9
	Namespace: namespace_bedc6a60
	Checksum: 0x2D7C1D6
	Offset: 0x2458
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_be0dddf9(var_499c19ba)
{
	self endon("hash_128f8789");
	var_c4fe4fc7 = function_bc7ce905(self.var_6ab6f4fd);
	var_14341d4d = var_c4fe4fc7 * var_499c19ba;
	self.var_4f749468 = 1;
	self function_7d4fb40(var_14341d4d, self.var_722885f3 + VectorScale((0, 0, -1), 4));
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_8202763a), "Dev Block strings are not supported" + self.var_722885f3 + "Dev Block strings are not supported");
	#/
	wait(self.var_8202763a);
	self.var_4f749468 = 0;
}

/*
	Name: function_28238a2a
	Namespace: namespace_bedc6a60
	Checksum: 0xFA396E44
	Offset: 0x2538
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_28238a2a()
{
	self.var_7dfaf62 = 96;
	var_b8f9a884 = function_9cb37000("station_capture_turret", "script_noteworthy");
	var_b8f9a884 = var_b8f9a884[0];
	self endon("hash_128f8789");
	self function_169cc712(var_b8f9a884.var_722885f3, 1);
	self waittill("hash_41d1aaf0");
	var_b8f9a884 thread function_dc5930d5(self);
	self function_421b19bb(var_b8f9a884);
}

/*
	Name: function_dc5930d5
	Namespace: namespace_bedc6a60
	Checksum: 0x15253519
	Offset: 0x2608
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_dc5930d5(var_dfb53de7)
{
	self endon("hash_128f8789");
	self.var_3e94206a = "axis";
	var_dfb53de7 waittill("hash_128f8789");
	var_dfb53de7 function_52fddbd0();
	self.var_3e94206a = "allies";
}

/*
	Name: function_421b19bb
	Namespace: namespace_bedc6a60
	Checksum: 0x65A0184
	Offset: 0x2670
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_421b19bb(var_b8f9a884)
{
	self endon("hash_128f8789");
	var_2dc8ad57 = function_6ada35ba("station_fight_enemy_balcony_goaltrig", "targetname");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_9869ab67(var_b8f9a884.var_722885f3, var_b8f9a884.var_6ab6f4fd, 1);
	self function_37f7858a(var_b8f9a884);
	var_b8f9a884 waittill("hash_128f8789");
	self function_e11ce512();
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self function_52fddbd0();
	self.var_7dfaf62 = 1024;
	self function_169cc712(var_2dc8ad57);
}

/*
	Name: function_ffd0e6b9
	Namespace: namespace_bedc6a60
	Checksum: 0x99EC1590
	Offset: 0x27C8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_ffd0e6b9()
{
}

/*
	Name: function_dfedb0b8
	Namespace: namespace_bedc6a60
	Checksum: 0x19EA4317
	Offset: 0x27D8
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function function_dfedb0b8(var_b04bc952, var_74cd64bc)
{
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
	level.var_7a9855f3 = namespace_82b91a51::function_740f8516("rachel");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_7a9855f3 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_7a9855f3 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037.var_7dfaf62 = 32;
	level.var_9db406db.var_7dfaf62 = 32;
	level.var_7a9855f3.var_7dfaf62 = 32;
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3);
	if(var_74cd64bc)
	{
		function_c052d16e();
	}
}

/*
	Name: function_c052d16e
	Namespace: namespace_bedc6a60
	Checksum: 0x371DE942
	Offset: 0x2938
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_c052d16e()
{
	var_f18b8368 = namespace_14b42b8a::function_7922262b("defend_ramses_station_hendricks_start_spot", "targetname");
	var_5c2809be = namespace_14b42b8a::function_7922262b("defend_ramses_station_khalil_start_spot", "targetname");
	level.var_2fd26037 function_9869ab67(var_f18b8368.var_722885f3, var_f18b8368.var_6ab6f4fd, 1);
	level.var_9db406db function_9869ab67(var_5c2809be.var_722885f3, var_5c2809be.var_6ab6f4fd, 1);
}

/*
	Name: function_8a4e8db7
	Namespace: namespace_bedc6a60
	Checksum: 0xC92E7F58
	Offset: 0x2A10
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_8a4e8db7()
{
	var_53acb497 = function_99201f25("station_fight_turret", "targetname");
	namespace_84970cc4::function_966ecb29(var_53acb497, &function_785ac501);
}

/*
	Name: function_785ac501
	Namespace: namespace_bedc6a60
	Checksum: 0x3DF4CD7E
	Offset: 0x2A70
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_785ac501()
{
	var_d5f66652 = namespace_14b42b8a::function_7922262b(self.var_db7bb468, "targetname");
	var_93cb1c05 = function_9b7fda5e("trigger_radius", self.var_722885f3, 0, var_d5f66652.var_f8456b37, 128);
	var_93cb1c05.var_ff1f6868 = "vtol_ride";
	var_76bcdea7 = self;
	self thread namespace_391e4301::function_b0ef4ae7(var_d5f66652);
	level waittill("hash_eae489c0");
	var_76bcdea7 function_6727bc7f(var_d5f66652, var_93cb1c05);
}

/*
	Name: function_b87ae655
	Namespace: namespace_bedc6a60
	Checksum: 0x1B2A092A
	Offset: 0x2B50
	Size: 0xEF
	Parameters: 2
	Flags: None
*/
function function_b87ae655(var_d5f66652, var_93cb1c05)
{
	var_b8f9a884 = function_6ada35ba("station_fight_turret_respawn", "targetname");
	var_b8f9a884.var_3e94206a = "allies";
	var_70345f7f = namespace_82b91a51::function_b9fd52a4(self.var_6df9264, self.var_722885f3, self.var_6ab6f4fd);
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
	var_b8f9a884 thread function_2217e3ee(var_70345f7f, var_d5f66652, var_93cb1c05);
	return var_70345f7f;
}

/*
	Name: function_2217e3ee
	Namespace: namespace_bedc6a60
	Checksum: 0x6BDEB3BE
	Offset: 0x2C48
	Size: 0xE3
	Parameters: 3
	Flags: None
*/
function function_2217e3ee(var_70345f7f, var_d5f66652, var_93cb1c05)
{
	level endon("hash_b6718d61");
	level namespace_ad23e503::function_1ab5ebec("station_fight_body_pull_scene_completed");
	self.var_722885f3 = var_70345f7f.var_722885f3;
	self.var_6ab6f4fd = var_70345f7f.var_6ab6f4fd;
	var_70345f7f function_dc8c8404();
	self thread namespace_391e4301::function_b0ef4ae7(var_d5f66652);
	if(!level namespace_ad23e503::function_7922262b("station_fight_completed"))
	{
		self thread function_6727bc7f(var_d5f66652, var_93cb1c05);
	}
}

/*
	Name: function_bedc6a60
	Namespace: namespace_bedc6a60
	Checksum: 0x3A99E100
	Offset: 0x2D38
	Size: 0x5A3
	Parameters: 0
	Flags: None
*/
function function_bedc6a60()
{
	var_1bd4d1f2 = function_6ada35ba("station_fight_raps_jump", "targetname");
	var_1bd4d1f2 namespace_391e4301::function_486f25d(2, 1);
	namespace_d5067552::function_bae40a28("sm_initial_balcony_spawn");
	namespace_d5067552::function_bae40a28("sm_balcony_robots");
	level thread namespace_391e4301::function_8afb19cc("sm_balcony_robots", "sm_initial_balcony_spawn");
	level waittill("hash_3e9d30d3");
	namespace_d5067552::function_bae40a28("sm_initial_recovery_right_spawn");
	level thread namespace_2f06d687::function_22356ba7("custom_raps");
	level waittill("hash_aeb6f9d9");
	namespace_82b91a51::function_a0938376();
	namespace_4dbf3ae3::function_4ab4cb6(20, "trigger_ceiling_collapse");
	level notify("hash_1ca7165");
	level thread function_aa370a40();
	namespace_d5067552::function_bae40a28("station_fight_raps_jump");
	wait(3);
	namespace_d5067552::function_bae40a28("sm_ceiling_fight_server_robots");
	namespace_d5067552::function_bae40a28("sm_server_fights_ceiling_ally");
	level thread namespace_391e4301::function_8afb19cc("sm_ceiling_fight_server_robots", "sm_server_fights_ceiling_ally");
	wait(3);
	level thread function_d44417a0();
	namespace_82b91a51::function_76f13293();
	level thread function_cbcb2bb();
	namespace_82b91a51::function_76f13293();
	level thread function_e59f097a();
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("sm_right_across_gap_human");
	level thread function_21130bd8("sm_right_across_gap_human");
	level thread function_934468e4("sm_right_across_gap_human");
	wait(10);
	namespace_d5067552::function_bae40a28("sm_rap_trickle");
	function_917e4a1b();
	namespace_d5067552::function_72e3dd35("station_fight_wave1_robots_left");
	namespace_d5067552::function_72e3dd35("station_fight_wave1_robots_right");
	namespace_d5067552::function_72e3dd35("sm_ceiling_fight_server_robots");
	namespace_d5067552::function_72e3dd35("station_fight_raps_jump");
	namespace_d5067552::function_72e3dd35("sm_balcony_robots");
	level namespace_ad23e503::function_1ab5ebec("station_phalanx_dead");
	level namespace_ad23e503::function_1ab5ebec("station_right_phalanx_dead");
	level namespace_ad23e503::function_1ab5ebec("station_center_phalanx_dead");
	if(!level namespace_ad23e503::function_7922262b("drop_pod_opened_and_spawned"))
	{
		namespace_4dbf3ae3::function_42e87952("trig_open_pod", "targetname");
		wait(1);
	}
	level namespace_2f06d687::function_72214789("droppod_ai");
	var_262d783a = namespace_d5067552::function_423eae50("sm_rap_trickle");
	namespace_d5067552::function_2992720d("sm_rap_trickle");
	foreach(var_388753bb in var_262d783a)
	{
		var_388753bb namespace_a7941edd::function_c1eaf281();
	}
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	level namespace_ad23e503::function_74d6b22f("station_fight_completed");
	if(isdefined(level.var_a6e609d2))
	{
		level thread [[level.var_a6e609d2]]();
	}
	namespace_76d95162::function_d9f49fba(0, "bc");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_defend_station");
	level thread namespace_82b91a51::function_d8eaed3d(3);
	level thread function_52111922();
	function_c01d9b2();
	level thread function_1d0e7c11();
}

/*
	Name: function_91e74b85
	Namespace: namespace_bedc6a60
	Checksum: 0x73B79017
	Offset: 0x32E8
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_91e74b85()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	level namespace_ad23e503::function_c35e6aab("station_fight_started");
	namespace_2f06d687::function_2b37a3c9("initial_station_fight_ai", "script_noteworthy", &function_d0f8bc28, "station_fight_started");
	namespace_2f06d687::function_2b37a3c9("initial_station_fight_ai", "script_noteworthy", &namespace_391e4301::function_258b9bad, "ceiling_collapse_complete", 1);
	namespace_d5067552::function_bae40a28("station_fight_wave1_robots_left");
	namespace_d5067552::function_bae40a28("sm_initial_arch_spawn_left");
	namespace_d5067552::function_bae40a28("station_fight_wave1_robots_right");
	namespace_d5067552::function_bae40a28("sm_initial_arch_spawn_right");
	namespace_d5067552::function_bae40a28("sm_initial_recovery_left_spawn");
	level thread function_97cdc17e();
	level namespace_ad23e503::function_1ab5ebec("station_fight_started");
	level thread namespace_391e4301::function_8afb19cc("station_fight_wave1_robots_left", "sm_initial_arch_spawn_left");
	level thread namespace_391e4301::function_8afb19cc("station_fight_wave1_robots_right", "sm_initial_arch_spawn_right");
	level thread function_845b69ec("sm_initial_arch_spawn_right", "sm_initial_arch_spawn_left");
}

/*
	Name: function_d0f8bc28
	Namespace: namespace_bedc6a60
	Checksum: 0xD1377F0C
	Offset: 0x34D8
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_d0f8bc28(var_4ac85f5f)
{
	self endon("hash_128f8789");
	if(isdefined(self.var_b07228b6))
	{
		var_57825414 = function_6ada35ba(self.var_b07228b6, "targetname");
		if(!isdefined(var_57825414))
		{
			var_9de10fe3 = function_b4cb3503(self.var_b07228b6, "targetname");
		}
	}
	self function_169cc712(self.var_722885f3, 0, 32);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
	if(isdefined(var_57825414))
	{
		self function_169cc712(var_57825414);
	}
	else if(isdefined(var_9de10fe3))
	{
		self function_169cc712(var_9de10fe3);
	}
	else
	{
		self.var_7dfaf62 = 512;
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_52111922
	Namespace: namespace_bedc6a60
	Checksum: 0xF742B9DF
	Offset: 0x3668
	Size: 0x1A5
	Parameters: 0
	Flags: None
*/
function function_52111922()
{
	var_3ced446f = function_b8494651("allies");
	var_3f8fb967 = namespace_84970cc4::function_d010fbb9(var_3ced446f, level.var_6a876531);
	var_3f8fb967 = namespace_84970cc4::function_b87262e(var_3f8fb967);
	var_1d1c81b8 = function_fe0cfd2e("station_fight_end_patrol", "targetname");
	if(var_1d1c81b8.size > var_3f8fb967.size)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_3f8fb967.size; var_c957f6b6++)
		{
			var_3f8fb967[var_c957f6b6].var_7dfaf62 = 32;
			var_3f8fb967[var_c957f6b6] namespace_d84e54db::function_b4f5e3b9(1);
			var_3f8fb967[var_c957f6b6] namespace_d84e54db::function_ceb883cd("patrol", 1);
			var_3f8fb967[var_c957f6b6] namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
			var_3f8fb967[var_c957f6b6] function_169cc712(var_1d1c81b8[var_c957f6b6], 1);
			wait(function_72a94f05(0.25, 1));
		}
	}
}

/*
	Name: function_917e4a1b
	Namespace: namespace_bedc6a60
	Checksum: 0xA7765D42
	Offset: 0x3818
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_917e4a1b()
{
	do
	{
		wait(0.5);
		var_56dd1913 = function_b8494651("axis");
	}
	while(!var_56dd1913.size > 3);
	foreach(var_d84e54db in var_56dd1913)
	{
		var_d84e54db thread function_d02622d1();
	}
}

/*
	Name: function_d02622d1
	Namespace: namespace_bedc6a60
	Checksum: 0xED2147F2
	Offset: 0x38E8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_d02622d1()
{
	self endon("hash_128f8789");
	do
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(!var_5dc5e20a namespace_82b91a51::function_d61b846f(self.var_722885f3) && function_7d15e2f8(self.var_722885f3, namespace_82b91a51::function_fa8a28f1(self.var_722885f3, "allies").var_722885f3) > 200)
			{
				var_d8c90b1a = 1;
			}
			wait(0.05);
		}
		wait(0.05);
	}
	while(!!isdefined(var_d8c90b1a));
	self namespace_82b91a51::function_4b741fdc();
	self function_2992720d();
}

/*
	Name: function_157bd88d
	Namespace: namespace_bedc6a60
	Checksum: 0xDE990E9D
	Offset: 0x3A40
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_157bd88d()
{
	self endon("hash_128f8789");
	if(self.var_170527fb == "right_across_gap_human")
	{
		level namespace_ad23e503::function_1ab5ebec("player_right_side_gap");
	}
	else
	{
		level namespace_ad23e503::function_1ab5ebec("player_right_side");
	}
	self notify("hash_56ab4b64");
}

/*
	Name: function_23c641de
	Namespace: namespace_bedc6a60
	Checksum: 0xB248F3AA
	Offset: 0x3AC0
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_23c641de()
{
	self endon("hash_128f8789");
	while(isdefined(level.var_9db406db) && function_7d15e2f8(self.var_722885f3, level.var_9db406db.var_722885f3) > 128)
	{
		wait(0.25);
	}
	self notify("hash_7da9c1ae");
}

/*
	Name: function_46eb86a4
	Namespace: namespace_bedc6a60
	Checksum: 0x2AC1E0B4
	Offset: 0x3B30
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_46eb86a4()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("ceiling_collapse_complete");
	while(1)
	{
		self waittill("hash_1156f946", var_377a9c22);
		if(var_377a9c22 == level.var_9db406db || var_377a9c22 == level.var_2fd26037)
		{
			self notify("hash_9b484394");
		}
		else if(var_377a9c22 != level.var_9db406db && var_377a9c22 != level.var_2fd26037 && !function_65f192a6(var_377a9c22))
		{
			var_377a9c22 notify("hash_9b484394");
		}
	}
}

/*
	Name: function_4ebb88f6
	Namespace: namespace_bedc6a60
	Checksum: 0xCBA128F5
	Offset: 0x3C08
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_4ebb88f6()
{
	namespace_2f06d687::function_2b37a3c9("robot_intro_robot", "targetname", &namespace_d84e54db::function_c9e45d52, 1);
	namespace_2f06d687::function_2b37a3c9("robot_intro_robot", "targetname", &namespace_82b91a51::function_958c7633);
	level namespace_cc27597::function_c35e6aab("cin_ram_03_02_defend_vign_robotintro");
	namespace_4dbf3ae3::function_1ab5ebec("trig_robot_intro_vignette");
	var_6104a93b = function_6ada35ba("robot_intro_robot_ai", "targetname");
	var_75443889 = function_6ada35ba("robot_intro_guy_ai", "targetname");
	var_6104a93b namespace_82b91a51::function_4b741fdc();
	level thread namespace_cc27597::function_43718187("cin_ram_03_02_defend_vign_robotintro");
	var_6104a93b thread function_ad9d7c7a(var_75443889);
	level namespace_82b91a51::function_c9aa1ff("cin_ram_03_02_defend_vign_robotintro_done", 7);
	if(function_5b49d38c(var_6104a93b))
	{
		var_6104a93b namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
		var_6104a93b namespace_d84e54db::function_c9e45d52(0);
	}
}

/*
	Name: function_ad9d7c7a
	Namespace: namespace_bedc6a60
	Checksum: 0xF9BAF995
	Offset: 0x3DD8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_ad9d7c7a(var_75443889)
{
	level endon("hash_293342ef");
	self waittill("hash_128f8789");
	namespace_cc27597::function_fcf56ab5("cin_ram_03_02_defend_vign_robotintro");
	if(function_5b49d38c(var_75443889))
	{
		var_75443889 function_d7a0a9d8();
		var_75443889 namespace_82b91a51::function_4b741fdc();
		var_75443889 function_2992720d();
	}
}

/*
	Name: function_aa370a40
	Namespace: namespace_bedc6a60
	Checksum: 0x742D1185
	Offset: 0x3E80
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_aa370a40()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_open_pod", "targetname");
	namespace_9f824288::function_5d2cdd99();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_station_ceiling_vtol_bundle");
	level namespace_ad23e503::function_74d6b22f("drop_pod_opened_and_spawned");
	level thread function_697c5b58();
	var_2ef9d306 = function_6ada35ba("station_ceiling_troopcarrier", "targetname");
	var_2ef9d306 function_de8377bf();
	wait(0.2);
	var_f10bb7b8 = function_6ada35ba("vtol_navmesh_cutter", "targetname");
	var_f10bb7b8 function_14c24d9d();
	wait(0.5);
}

/*
	Name: function_d44417a0
	Namespace: namespace_bedc6a60
	Checksum: 0x73C7290D
	Offset: 0x3FA8
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_d44417a0()
{
	level namespace_ad23e503::function_c35e6aab("station_phalanx_dead");
	var_14c96146 = namespace_14b42b8a::function_7922262b("station_phalanx_start", "targetname").var_722885f3;
	var_e2ea1b3f = namespace_14b42b8a::function_7922262b("station_phalanx_end", "targetname").var_722885f3;
	if(level.var_2395e945.size == 1)
	{
		var_9d16f6ba = 3;
	}
	else
	{
		var_9d16f6ba = level.var_2395e945.size + 2;
	}
	function_9b385ca5();
	var_a3decff = var_3bc9e3b7;
	function_e6cab0ff(var_a3decff, "phalanx_column_right", var_14c96146, var_e2ea1b3f, 1);
	var_422e7ca6 = function_525ae497(function_525ae497(var_a3decff.var_73d3be38, var_a3decff.var_d00dab6d, 0, 0), var_a3decff.var_75841262, 0, 0);
	namespace_84970cc4::function_1ab5ebec(var_422e7ca6, "death");
	level namespace_ad23e503::function_74d6b22f("station_phalanx_dead");
}

/*
	Name: function_cbcb2bb
	Namespace: namespace_bedc6a60
	Checksum: 0x65A64EEE
	Offset: 0x4160
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_cbcb2bb()
{
	level namespace_ad23e503::function_c35e6aab("station_right_phalanx_dead");
	var_14c96146 = namespace_14b42b8a::function_7922262b("station_right_phalanx_start", "targetname").var_722885f3;
	var_e2ea1b3f = namespace_14b42b8a::function_7922262b("station_right_phalanx_end", "targetname").var_722885f3;
	function_9b385ca5();
	var_a3decff = var_3bc9e3b7;
	function_e6cab0ff(var_a3decff, "phanalx_wedge", var_14c96146, var_e2ea1b3f, 2);
	var_61a19dc6 = function_525ae497(function_525ae497(var_a3decff.var_73d3be38, var_a3decff.var_d00dab6d, 0, 0), var_a3decff.var_75841262, 0, 0);
	foreach(var_6104a93b in var_61a19dc6)
	{
		var_6104a93b thread namespace_391e4301::function_258b9bad("gap_soldiers_dead", 1, "station_right_phalanx_scatter");
		var_6104a93b thread namespace_391e4301::function_258b9bad("player_is_close", 1, "station_right_phalanx_scatter");
	}
	level thread function_3da9f438(var_e2ea1b3f);
	var_a3decff thread function_32800c59("station_right_phalanx_scatter");
	namespace_84970cc4::function_1ab5ebec(var_61a19dc6, "death");
	level namespace_ad23e503::function_74d6b22f("station_right_phalanx_dead");
}

/*
	Name: function_e59f097a
	Namespace: namespace_bedc6a60
	Checksum: 0x917A6FB2
	Offset: 0x43D8
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_e59f097a()
{
	level namespace_ad23e503::function_c35e6aab("station_center_phalanx_dead");
	var_14c96146 = namespace_14b42b8a::function_7922262b("station_center_phalanx_start", "targetname").var_722885f3;
	var_e2ea1b3f = namespace_14b42b8a::function_7922262b("station_center_phalanx_end", "targetname").var_722885f3;
	if(level.var_2395e945.size < 3)
	{
		var_9d16f6ba = 4;
	}
	else
	{
		var_9d16f6ba = level.var_2395e945.size + 2;
	}
	function_9b385ca5();
	var_a3decff = var_3bc9e3b7;
	function_e6cab0ff(var_a3decff, "phalanx_column_right", var_14c96146, var_e2ea1b3f, 1);
	var_a3decff thread function_a6f57c70(20);
	var_61a19dc6 = function_525ae497(function_525ae497(var_a3decff.var_73d3be38, var_a3decff.var_d00dab6d, 0, 0), var_a3decff.var_75841262, 0, 0);
	namespace_84970cc4::function_1ab5ebec(var_61a19dc6, "death");
	level namespace_ad23e503::function_74d6b22f("station_center_phalanx_dead");
}

/*
	Name: function_32800c59
	Namespace: namespace_bedc6a60
	Checksum: 0xBB1DEC6B
	Offset: 0x45A8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_32800c59(var_ed2ece1e)
{
	level waittill(var_ed2ece1e);
	self namespace_3bc9e3b7::function_da4b4a9();
}

/*
	Name: function_a6f57c70
	Namespace: namespace_bedc6a60
	Checksum: 0x70CF0072
	Offset: 0x45E0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a6f57c70(var_ee7dbbc9)
{
	level endon("hash_fd4ef89f");
	wait(var_ee7dbbc9);
	if(isdefined(self))
	{
		self namespace_3bc9e3b7::function_da4b4a9();
	}
}

/*
	Name: function_3da9f438
	Namespace: namespace_bedc6a60
	Checksum: 0xEF3490A1
	Offset: 0x4628
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_3da9f438(var_3c23ee9a)
{
	level endon("hash_e02eae28");
	do
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(isdefined(var_5dc5e20a) && var_5dc5e20a namespace_82b91a51::function_d61b846f(var_3c23ee9a))
			{
				if(function_7d15e2f8(var_5dc5e20a.var_722885f3, var_3c23ee9a) < 800)
				{
					level notify("hash_56ab4b64");
					level notify("hash_37b64350");
					return;
				}
			}
			wait(0.05);
		}
		wait(0.1);
	}
	while(!1);
}

/*
	Name: function_21130bd8
	Namespace: namespace_bedc6a60
	Checksum: 0xD6E2BE10
	Offset: 0x4740
	Size: 0x71
	Parameters: 1
	Flags: None
*/
function function_21130bd8(var_5159fb67)
{
	level endon("hash_e02eae28");
	do
	{
		wait(0.5);
		var_46c58ac8 = namespace_d5067552::function_423eae50(var_5159fb67);
	}
	while(!(var_46c58ac8.size > 0 || namespace_d5067552::function_56a7483f(var_5159fb67)));
	level notify("hash_bc33b894");
}

/*
	Name: function_934468e4
	Namespace: namespace_bedc6a60
	Checksum: 0x4D152FF8
	Offset: 0x47C0
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_934468e4(var_5159fb67)
{
	level endon("hash_bc33b894");
	level namespace_82b91a51::function_5b7e3888("station_right_phalanx_dead", "station_right_phalanx_scatter");
	var_46c58ac8 = namespace_d5067552::function_423eae50(var_5159fb67);
	foreach(var_fbc8888 in var_46c58ac8)
	{
		var_fbc8888.var_7dfaf62 = 1024;
	}
}

/*
	Name: function_f117c7bd
	Namespace: namespace_bedc6a60
	Checksum: 0xC04C93C8
	Offset: 0x48B0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_f117c7bd(var_f3a8e7d6)
{
	var_1957a2a5 = namespace_d5067552::function_423eae50("station_fight_wave1_robots_left");
	namespace_84970cc4::function_966ecb29(var_1957a2a5, &function_44fa8311);
}

/*
	Name: function_44fa8311
	Namespace: namespace_bedc6a60
	Checksum: 0x6BC9C7F1
	Offset: 0x4910
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_44fa8311()
{
	self endon("hash_128f8789");
	wait(function_72a94f05(0.15, 0.5));
	namespace_82b91a51::function_4b741fdc(self);
	self function_2992720d();
}

/*
	Name: function_697c5b58
	Namespace: namespace_bedc6a60
	Checksum: 0xE3AB4164
	Offset: 0x4978
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_697c5b58()
{
	var_c4152dcd = namespace_2f06d687::function_22356ba7("droppod_robot", &function_658e0c1a);
	wait(0.5);
	function_57efbe1(var_c4152dcd, namespace_14b42b8a::function_7922262b("drop_pod_fire_loc").var_722885f3);
	foreach(var_6104a93b in var_c4152dcd)
	{
		if(function_5b49d38c(var_6104a93b))
		{
			var_6104a93b namespace_d84e54db::function_b4f5e3b9(0);
			var_6104a93b namespace_d84e54db::function_c9e45d52(0);
			var_6104a93b namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
			var_6104a93b notify("hash_8402d7bd");
			var_6104a93b.var_69dd5d62 = undefined;
			wait(1);
		}
	}
	namespace_84970cc4::function_1ab5ebec(var_c4152dcd, "death");
	function_6ada35ba("drop_pod_fire_clip", "targetname") function_8bdea13c(100, 0.05);
}

/*
	Name: function_658e0c1a
	Namespace: namespace_bedc6a60
	Checksum: 0x6E855605
	Offset: 0x4B58
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_658e0c1a()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_69dd5d62 = 1;
	self namespace_391e4301::function_258b9bad("out_of_pod", 1);
}

/*
	Name: function_588f1876
	Namespace: namespace_bedc6a60
	Checksum: 0x80681524
	Offset: 0x4BC8
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_588f1876()
{
	level waittill("hash_aeb6f9d9");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level thread function_7ba3e35a();
	namespace_2f06d687::function_45679edd("custom_raps", 0);
	var_2eae89db = namespace_14b42b8a::function_7922262b("cin_gen_melee_hendricks_stomp_gibbedrobot", "scriptbundlename");
	level.var_2fd26037 function_169cc712(var_2eae89db.var_722885f3, 0, 128);
	level namespace_ad23e503::function_1ab5ebec("pod_hits_floor");
	level.var_2fd26037 function_cea50a94(0);
	while(function_7d15e2f8(level.var_2fd26037.var_722885f3, var_2eae89db.var_722885f3) > 600 && !level namespace_ad23e503::function_7922262b("drop_pod_opened_and_spawned"))
	{
		wait(0.25);
	}
	if(!level namespace_ad23e503::function_7922262b("drop_pod_opened_and_spawned"))
	{
		namespace_cc27597::function_43718187("cin_gen_melee_hendricks_stomp_gibbedrobot");
	}
	else if(namespace_cc27597::function_444aea32("cin_gen_melee_hendricks_stomp_gibbedrobot"))
	{
		namespace_cc27597::function_fcf56ab5("cin_gen_melee_hendricks_stomp_gibbedrobot");
	}
	var_b200e7a3 = function_6ada35ba("station_fight_allies_near_goal", "targetname");
	level.var_2fd26037 function_169cc712(var_b200e7a3);
	var_3ced446f = function_2ba4336d("recovery_room_allies", "script_aigroup");
	foreach(var_d84e54db in var_3ced446f)
	{
		var_d84e54db function_169cc712(var_b200e7a3, 1);
	}
	level namespace_ad23e503::function_1ab5ebec("drop_pod_opened_and_spawned");
	level.var_2fd26037 function_169cc712(function_6ada35ba("station_fight_drop_pod_goal", "targetname"));
	level namespace_ad23e503::function_1ab5ebec("station_fight_completed");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("disablesprint", 1);
	level namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks");
}

/*
	Name: function_845b69ec
	Namespace: namespace_bedc6a60
	Checksum: 0x53C2E490
	Offset: 0x4F50
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_845b69ec(var_b5a8817e, var_8fa60715)
{
	level endon("hash_1ca7165");
	namespace_4dbf3ae3::function_1ab5ebec("trig_start_rap_intro", "targetname");
	wait(15);
	var_f91ffbc4 = namespace_d5067552::function_423eae50(var_b5a8817e);
	var_f91ffbc4 = function_525ae497(var_f91ffbc4, namespace_d5067552::function_423eae50(var_8fa60715), 0, 0);
	var_f91ffbc4 = namespace_84970cc4::function_8332f7f6(var_f91ffbc4);
	foreach(var_5abbae22 in var_f91ffbc4)
	{
		if(isdefined(var_5abbae22))
		{
			var_5abbae22 notify("hash_9b484394");
		}
		wait(2);
	}
}

/*
	Name: function_7ba3e35a
	Namespace: namespace_bedc6a60
	Checksum: 0x3300B28C
	Offset: 0x5098
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_7ba3e35a()
{
	function_d224409e(level.var_85b298df, 1);
	level.var_9db406db function_169cc712(level.var_85b298df, 0, 64);
	level.var_85b298df = undefined;
	level namespace_ad23e503::function_1ab5ebec("ceiling_collapse_complete");
	level thread namespace_cc27597::function_43718187("cin_ram_03_03_defend_vign_balconybash_khalil_init");
	level waittill("hash_40171b94");
	if(namespace_cc27597::function_367f8966("cin_ram_03_03_defend_vign_balconybash_khalil_init"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_ram_03_03_defend_vign_balconybash_khalil_init");
	}
	level namespace_cc27597::function_43718187("cin_ram_03_03_defend_vign_balconybash");
	var_c9ae457a = function_6ada35ba("initial_balcony_friendly_volume", "targetname");
	level.var_9db406db function_169cc712(var_c9ae457a);
	namespace_d5067552::function_72e3dd35("sm_balcony_robots");
	var_c9ae457a = function_6ada35ba("second_balcony_friendly_volume", "targetname");
	level.var_9db406db function_169cc712(var_c9ae457a);
	level namespace_ad23e503::function_1ab5ebec("drop_pod_opened_and_spawned");
	level.var_9db406db function_169cc712(function_b4cb3503("khalil_balcony_platform_node", "targetname"), 1);
	level namespace_ad23e503::function_1ab5ebec("station_fight_completed");
	level.var_9db406db namespace_d84e54db::function_ceb883cd("disablesprint", 1);
	namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil");
}

/*
	Name: function_1a2278be
	Namespace: namespace_bedc6a60
	Checksum: 0x2215521A
	Offset: 0x5300
	Size: 0x1D3
	Parameters: 1
	Flags: None
*/
function function_1a2278be(var_c77d2837)
{
	var_6104a93b = var_c77d2837["balcony_bash_robot"];
	var_75443889 = var_c77d2837["balcony_bash_soldier"];
	var_75443889 namespace_d84e54db::function_c9e45d52(1);
	var_75443889 thread function_3ee9fc92();
	var_6104a93b.var_7dfaf62 = 32;
	var_6104a93b namespace_d84e54db::function_b4f5e3b9(1);
	var_6104a93b namespace_d84e54db::function_c9e45d52(1);
	namespace_82b91a51::function_958c7633(var_6104a93b);
	var_6104a93b function_169cc712(var_6104a93b.var_722885f3, 1);
	level waittill("hash_6daeefef");
	var_75443889 namespace_d84e54db::function_c9e45d52(0);
	namespace_82b91a51::function_4b741fdc(var_6104a93b);
	var_6104a93b waittill("hash_128f8789");
	namespace_cc27597::function_fcf56ab5("cin_ram_03_03_defend_vign_balconybash");
	if(isdefined(var_75443889) && function_5b49d38c(var_75443889) && var_75443889 namespace_ad23e503::function_7922262b("past_ragdoll_frame"))
	{
		var_75443889 function_d7a0a9d8();
		var_75443889 function_2992720d();
	}
}

/*
	Name: function_3ee9fc92
	Namespace: namespace_bedc6a60
	Checksum: 0x37963E44
	Offset: 0x54E0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3ee9fc92()
{
	self namespace_ad23e503::function_c35e6aab("past_ragdoll_frame");
	self endon("hash_128f8789");
	self waittill("hash_8368b9dc");
	self namespace_ad23e503::function_74d6b22f("past_ragdoll_frame");
}

/*
	Name: function_c0443db4
	Namespace: namespace_bedc6a60
	Checksum: 0x153151BF
	Offset: 0x5548
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c0443db4(var_c77d2837)
{
	var_6104a93b = var_c77d2837["stomped_robot"];
	if(function_5b49d38c(var_6104a93b))
	{
		var_6104a93b namespace_d84e54db::function_c9e45d52(1);
		var_6104a93b function_80765127();
	}
}

/*
	Name: function_8c26918a
	Namespace: namespace_bedc6a60
	Checksum: 0x788AC3A7
	Offset: 0x55C8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_8c26918a()
{
	namespace_cc27597::function_8f9f34e0("cin_gen_melee_hendricks_stomp_gibbedrobot", &function_c0443db4, "init");
	namespace_cc27597::function_c35e6aab("cin_gen_melee_hendricks_stomp_gibbedrobot");
	level thread function_38729c16();
	level thread function_cb0ba609();
	function_2674a7fb();
	level notify("hash_e14845f6");
	level thread namespace_e4c0c552::function_f444bf8e();
	level namespace_ad23e503::function_1ab5ebec("station_fight_completed");
	level thread namespace_e4c0c552::function_9bda9447();
}

/*
	Name: function_38729c16
	Namespace: namespace_bedc6a60
	Checksum: 0xC1C1C11C
	Offset: 0x56B8
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_38729c16()
{
	level thread function_98b76328();
	level thread function_bf01a134();
	level thread function_370bd9a9();
	namespace_cc27597::function_8f9f34e0("cin_ram_03_01_defend_1st_rapsintro", &function_d10a6306, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_03_01_defend_1st_rapsintro", &function_3b3f857a, "done");
	namespace_391e4301::function_ac2b4535("cin_ram_03_01_defend_1st_rapsintro", "defend_ramses_station");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_255b9315 = 1;
	}
	function_6ada35ba("raps_intro_door_clip", "targetname") function_dc8c8404();
	level.var_7a9855f3 function_cea50a94(0);
	level.var_9db406db function_cea50a94(0);
	level namespace_ad23e503::function_74d6b22f("station_fight_started");
	level namespace_cc27597::function_43718187("cin_ram_03_01_defend_1st_rapsintro", level.var_be0fc6c8);
	level namespace_ad23e503::function_74d6b22f("raps_intro_done");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_defend_station");
	wait(1.5);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_255b9315 = 0;
	}
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_97cdc17e
	Namespace: namespace_bedc6a60
	Checksum: 0xE3762655
	Offset: 0x5990
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_97cdc17e()
{
	var_5d7a0794 = namespace_2f06d687::function_7387a40a("station_fight_wounded_guy");
	namespace_cc27597::function_c35e6aab("cin_gen_wounded_last_stand_guy01", var_5d7a0794);
	var_5d7a0794 = namespace_2f06d687::function_7387a40a("station_fight_wounded_guy");
	namespace_cc27597::function_c35e6aab("cin_gen_wounded_last_stand_guy02", var_5d7a0794);
	var_5d7a0794 = namespace_2f06d687::function_7387a40a("station_fight_wounded_guy");
	namespace_cc27597::function_c35e6aab("cin_gen_wounded_last_stand_guy03", var_5d7a0794);
	level namespace_ad23e503::function_1ab5ebec("station_fight_started");
	level thread namespace_cc27597::function_43718187("cin_gen_wounded_last_stand_guy02");
	level waittill("hash_aeb6f9d9");
	level thread namespace_cc27597::function_43718187("cin_gen_wounded_last_stand_guy01");
	level thread namespace_cc27597::function_43718187("cin_gen_wounded_last_stand_guy03");
}

/*
	Name: function_d10a6306
	Namespace: namespace_bedc6a60
	Checksum: 0x7D93FE9F
	Offset: 0x5AD8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_d10a6306(var_c77d2837)
{
	level waittill("hash_581ac182");
	var_75443889 = var_c77d2837["rap_intro_guy"];
	var_75443889 function_e48f905e("c_ega_soldier_3_pincushion_armoff_fb");
}

/*
	Name: function_3b3f857a
	Namespace: namespace_bedc6a60
	Checksum: 0x23387351
	Offset: 0x5B30
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_3b3f857a(var_c77d2837)
{
	var_c77d2837["rap_intro_guy"] namespace_71e9cb84::function_331efedc("hide_graphic_content", 1);
	var_c77d2837["arm"] namespace_71e9cb84::function_331efedc("hide_graphic_content", 1);
	var_c77d2837["shrapnel02"] namespace_71e9cb84::function_331efedc("hide_graphic_content", 1);
	var_c77d2837["shrapnel03"] namespace_71e9cb84::function_331efedc("hide_graphic_content", 1);
	var_c77d2837["shrapnel04"] namespace_71e9cb84::function_331efedc("hide_graphic_content", 1);
	var_c77d2837["shrapnel06"] namespace_71e9cb84::function_331efedc("hide_graphic_content", 1);
	var_c77d2837["shrapnel07"] namespace_71e9cb84::function_331efedc("hide_graphic_content", 1);
}

/*
	Name: function_896cfa4c
	Namespace: namespace_bedc6a60
	Checksum: 0xC9D0DF67
	Offset: 0x5C98
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_896cfa4c(var_c77d2837)
{
	namespace_82b91a51::function_76f13293();
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 namespace_71e9cb84::function_331efedc("hide_graphic_content", 1);
	}
}

/*
	Name: function_370bd9a9
	Namespace: namespace_bedc6a60
	Checksum: 0x1EAFC909
	Offset: 0x5D50
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_370bd9a9()
{
	level waittill("hash_646da0a");
	level thread function_31000a81();
	level waittill("hash_646da0a");
	level thread function_31000a81();
}

/*
	Name: function_31000a81
	Namespace: namespace_bedc6a60
	Checksum: 0xFCD4FC6
	Offset: 0x5DA0
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_31000a81()
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		if(var_6bfe1586.var_67c7c241 === "cin_ram_03_01_defend_1st_rapsintro")
		{
			var_6bfe1586 namespace_71e9cb84::function_688ed188("rap_blood_on_player");
		}
	}
}

/*
	Name: function_98b76328
	Namespace: namespace_bedc6a60
	Checksum: 0xE14E91AE
	Offset: 0x5E58
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_98b76328()
{
	level waittill("hash_f532337c");
	level namespace_82b91a51::function_ef3f75eb("dro");
}

/*
	Name: function_bf01a134
	Namespace: namespace_bedc6a60
	Checksum: 0xB71D00BE
	Offset: 0x5E90
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_bf01a134()
{
	level waittill("hash_ecd64ab9");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_raps_explosion_bundle");
}

/*
	Name: function_2674a7fb
	Namespace: namespace_bedc6a60
	Checksum: 0x8A65D407
	Offset: 0x5EC8
	Size: 0x1A5
	Parameters: 0
	Flags: None
*/
function function_2674a7fb()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_station_ceiling_vtol_bundle", &function_e4e450c1, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_station_ceiling_bundle", &function_9c5046ad, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_station_ceiling_bundle", &function_316c9fe0, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_station_ceiling_bundle", &function_f117c7bd, "done");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_station_ceiling_bundle");
	level waittill("hash_1ca7165");
	level thread function_fea402e8();
	level thread function_a97a010f();
	level thread function_16c6b95d();
	level function_bded1c1e();
	level namespace_ad23e503::function_74d6b22f("ceiling_collapse_complete");
	level namespace_cc27597::function_c35e6aab("p_ramses_lift_wing_blockage");
	level notify("hash_eae489c0");
	level notify("hash_d758e82");
}

/*
	Name: function_16c6b95d
	Namespace: namespace_bedc6a60
	Checksum: 0x2DDE91DE
	Offset: 0x6078
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_16c6b95d()
{
	level waittill("hash_16c6b95d");
	namespace_80983c42::function_80983c42("ceiling_colapse");
}

/*
	Name: function_14b2c542
	Namespace: namespace_bedc6a60
	Checksum: 0x70AE380B
	Offset: 0x60B0
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_14b2c542(var_c77d2837)
{
	var_a7625465 = namespace_14b42b8a::function_7faf4c39("station_phys_pulse", "targetname");
	foreach(var_14b42b8a in var_a7625465)
	{
		function_8f0c1eed(var_14b42b8a.var_722885f3, 255, 1, namespace_d73b9283::function_4e8104ae(20));
		wait(0.05);
	}
}

/*
	Name: function_bded1c1e
	Namespace: namespace_bedc6a60
	Checksum: 0xC24974F5
	Offset: 0x61A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_bded1c1e()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_station_ceiling_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_station_ceiling_vtol_bundle");
}

/*
	Name: function_a97a010f
	Namespace: namespace_bedc6a60
	Checksum: 0x9063BDC4
	Offset: 0x61F8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_a97a010f()
{
	level waittill("hash_673d93c8");
	level namespace_ad23e503::function_74d6b22f("pod_hits_floor");
	if(namespace_d5067552::function_423eae50("station_fight_wave1_robots_left").size > 0)
	{
		var_8f75db49 = namespace_14b42b8a::function_7922262b("pod_radius_damage", "targetname");
		function_eac31668(var_8f75db49.var_722885f3, 300, 1000, 500, undefined, "MOD_EXPLOSIVE");
	}
}

/*
	Name: function_e4e450c1
	Namespace: namespace_bedc6a60
	Checksum: 0x52BA8C4E
	Offset: 0x62B0
	Size: 0x191
	Parameters: 0
	Flags: None
*/
function function_e4e450c1()
{
	level waittill("hash_1bc0fb5c");
	level namespace_71e9cb84::function_74d6b22f("defend_fog_banks", 1);
	var_c0be4d28 = function_99201f25("station_roof_hole", "targetname");
	foreach(var_fd7c985 in var_c0be4d28)
	{
		var_fd7c985 function_dc8c8404();
	}
	var_2f5160f4 = function_99201f25("roof_hole_blocker", "targetname");
	foreach(var_4c225fa1 in var_2f5160f4)
	{
		var_4c225fa1 function_50ccee8d();
	}
}

/*
	Name: function_316c9fe0
	Namespace: namespace_bedc6a60
	Checksum: 0x65691FD
	Offset: 0x6450
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_316c9fe0()
{
	function_acb4609c("p7_fxanim_cp_ramses_station_ceiling_static_end_dial_01_mod", 10);
	function_acb4609c("p7_fxanim_cp_ramses_station_ceiling_static_end_dial_02_mod", 10);
	function_acb4609c("p7_fxanim_cp_ramses_station_ceiling_static_end_dial_03_mod", 10);
	wait(1);
	var_673a4bf = function_99201f25("station_ceiling_pristine", "targetname");
	foreach(var_fd7c985 in var_673a4bf)
	{
		var_fd7c985 function_dc8c8404();
	}
	level waittill("hash_77815dc");
	level thread function_c5b9bd41("_combat");
	function_eede49df();
	function_14b2c542();
}

/*
	Name: function_fea402e8
	Namespace: namespace_bedc6a60
	Checksum: 0x5BCE1CB8
	Offset: 0x65C0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_fea402e8()
{
	level waittill("hash_a2d108ca");
	level namespace_391e4301::function_e950228a(0);
}

/*
	Name: function_9c5046ad
	Namespace: namespace_bedc6a60
	Checksum: 0xD2978D0D
	Offset: 0x65F0
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_9c5046ad(var_c77d2837)
{
	var_10ec3c1e = namespace_14b42b8a::function_7faf4c39("station_fight_glass_pulse", "targetname");
	wait(1.4);
	foreach(var_d8e7bbc in var_10ec3c1e)
	{
		function_be97adee(var_d8e7bbc.var_722885f3, var_d8e7bbc.var_f8456b37, 500, 400);
		wait(function_72a94f05(0.5, 0.75));
	}
}

/*
	Name: function_cb0ba609
	Namespace: namespace_bedc6a60
	Checksum: 0xCA37A35A
	Offset: 0x6700
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_cb0ba609()
{
	namespace_2f06d687::function_2b37a3c9("balcony_bash_robot", "targetname", &namespace_d84e54db::function_c9e45d52, 1);
	namespace_cc27597::function_8f9f34e0("cin_ram_03_03_defend_vign_balconybash", &function_1a2278be, "init");
	namespace_cc27597::function_8f9f34e0("cin_ram_03_01_defend_vign_shrapnelpinned_01", &function_896cfa4c, "init");
	namespace_cc27597::function_8f9f34e0("cin_ram_03_01_defend_vign_shrapnelpinned_03", &function_896cfa4c, "init");
	level namespace_cc27597::function_c35e6aab("cin_ram_03_03_defend_vign_balconybash");
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("cin_ram_03_03_defend_vign_debriscover_aligned");
	level thread function_4ebb88f6();
	level namespace_cc27597::function_c35e6aab("cin_ram_03_01_defend_vign_shrapnelpinned_01");
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("cin_ram_03_01_defend_vign_shrapnelpinned_03");
	level thread namespace_cc27597::function_43718187("cin_gen_deathpose_m_floor_shrapnel01");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_gen_deathpose_m_floor_shrapnel02");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_gen_deathpose_m_floor_shrapnel03");
	level thread function_8eaad758();
	level waittill("hash_d758e82");
	level thread namespace_cc27597::function_43718187("cin_ram_03_03_defend_vign_debriscover_aligned");
}

/*
	Name: function_8eaad758
	Namespace: namespace_bedc6a60
	Checksum: 0x1EE214F9
	Offset: 0x6950
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_8eaad758()
{
	level endon("hash_6ad08dae");
	var_bfdab3ed = namespace_2f06d687::function_7387a40a("shrapnel_guy");
	namespace_82b91a51::function_958c7633(var_bfdab3ed);
	var_bfdab3ed namespace_d84e54db::function_c9e45d52(1);
	namespace_4dbf3ae3::function_1ab5ebec("trig_shrapnel_death_scene");
	namespace_2f06d687::function_7387a40a("shrapnel_raps", &function_77c1726a);
	namespace_82b91a51::function_4b741fdc(var_bfdab3ed);
	namespace_cc27597::function_43718187("cin_ram_03_01_defend_vign_shrapnelpinned_04", var_bfdab3ed);
}

/*
	Name: function_77c1726a
	Namespace: namespace_bedc6a60
	Checksum: 0xB35D1A7B
	Offset: 0x6A30
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_77c1726a()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_b07228b6), "Dev Block strings are not supported");
	#/
	var_2188bf75 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname").var_722885f3;
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self function_c985552d(var_2188bf75, 1, 1);
	level waittill("hash_56447163");
	self namespace_a7941edd::function_c1eaf281();
}

/*
	Name: function_6727bc7f
	Namespace: namespace_bedc6a60
	Checksum: 0x62480C45
	Offset: 0x6B10
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_6727bc7f(var_d5f66652, var_93cb1c05)
{
	self function_1bac4fcc(var_d5f66652, var_93cb1c05);
	if(isdefined(self))
	{
		self namespace_16f9ecd3::function_14ec2d71();
	}
}

/*
	Name: function_1bac4fcc
	Namespace: namespace_bedc6a60
	Checksum: 0xDA7745BC
	Offset: 0x6B70
	Size: 0x9F
	Parameters: 2
	Flags: None
*/
function function_1bac4fcc(var_d5f66652, var_93cb1c05)
{
	level endon("hash_6ad08dae");
	self endon("hash_128f8789");
	while(isdefined(self))
	{
		var_93cb1c05 waittill("hash_4dbf3ae3", var_6bfe1586);
		while(isdefined(var_93cb1c05) && function_5b49d38c(var_6bfe1586) && var_6bfe1586 function_32fa5072(var_93cb1c05))
		{
			wait(0.1);
		}
	}
}

/*
	Name: function_a353c3d9
	Namespace: namespace_bedc6a60
	Checksum: 0x62AB818B
	Offset: 0x6C18
	Size: 0x361
	Parameters: 0
	Flags: None
*/
function function_a353c3d9()
{
	var_53d1df2a = [];
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_03_02_defend_1st_pullbody";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_05_interview_vign_nassersitting";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_03_03_defend_vign_balconybash";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_03_03_defend_vign_debriscover_aligned";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_03_02_defend_vign_last_stand_death_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_03_02_defend_vign_last_stand_death_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_03_02_defend_vign_last_stand_death_guy03";
	foreach(var_294306eb in var_53d1df2a)
	{
		if(level namespace_cc27597::function_444aea32(var_294306eb))
		{
			level thread namespace_cc27597::function_fcf56ab5(var_294306eb, 1);
			wait(0.1);
		}
	}
}

/*
	Name: function_6327cae3
	Namespace: namespace_bedc6a60
	Checksum: 0x727BECC7
	Offset: 0x6F88
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_6327cae3()
{
	var_b8f9a884 = function_6ada35ba("station_fight_turret_respawn", "targetname");
	if(isdefined(var_b8f9a884))
	{
		var_b8f9a884.var_3e3a41eb = 1;
		var_b8f9a884 notify("hash_128f8789");
		if(!function_5b49d38c(var_b8f9a884))
		{
			var_b8f9a884 function_dc8c8404();
		}
	}
}

/*
	Name: function_2cae968
	Namespace: namespace_bedc6a60
	Checksum: 0xDBAE8567
	Offset: 0x7020
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_2cae968()
{
	var_64e85e6d = function_b8494651("axis");
	foreach(var_d84e54db in var_64e85e6d)
	{
		if(!function_85e4c3b3(var_d84e54db))
		{
			var_d84e54db namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
		}
	}
}

/*
	Name: function_f21c9162
	Namespace: namespace_bedc6a60
	Checksum: 0x27577CD3
	Offset: 0x7100
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_f21c9162(var_d51654a4)
{
	if(!isdefined(var_d51654a4))
	{
		var_d51654a4 = "";
	}
	function_9e3608e3("station_clutter" + var_d51654a4);
	var_522666ed = function_99201f25("station_clutter" + var_d51654a4, "targetname");
	var_d4a391c5 = function_99201f25("station_clutter" + var_d51654a4, "script_noteworthy");
	var_c160029e = function_99201f25("station_clutter_collision" + var_d51654a4, "targetname");
	var_9adf475b = function_99201f25("station_stairs" + var_d51654a4, "targetname");
	var_522666ed namespace_391e4301::function_6b4b5556(1);
	var_522666ed namespace_391e4301::function_41f6f501();
	var_d4a391c5 namespace_391e4301::function_6b4b5556(1);
	var_c160029e namespace_391e4301::function_41f6f501();
	var_9adf475b namespace_391e4301::function_6b4b5556();
}

/*
	Name: function_c5b9bd41
	Namespace: namespace_bedc6a60
	Checksum: 0x63A6CE25
	Offset: 0x72A8
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_c5b9bd41(var_d51654a4)
{
	if(!isdefined(var_d51654a4))
	{
		var_d51654a4 = "";
	}
	function_6ddd4fa4("station_clutter" + var_d51654a4);
	var_522666ed = function_99201f25("station_clutter" + var_d51654a4, "targetname");
	var_d4a391c5 = function_99201f25("station_clutter" + var_d51654a4, "script_noteworthy");
	var_c160029e = function_99201f25("station_clutter_collision" + var_d51654a4, "targetname");
	var_9adf475b = function_99201f25("station_stairs" + var_d51654a4, "targetname");
	var_522666ed namespace_391e4301::function_da54f24b();
	var_c160029e namespace_391e4301::function_da54f24b();
	var_522666ed namespace_391e4301::function_64a470cf(1);
	var_d4a391c5 namespace_391e4301::function_64a470cf(1);
	var_9adf475b namespace_391e4301::function_64a470cf();
	var_27da165 = namespace_14b42b8a::function_7faf4c39("station_clutter" + var_d51654a4, "targetname");
	var_27da165 namespace_391e4301::function_c3458a6();
}

/*
	Name: function_eede49df
	Namespace: namespace_bedc6a60
	Checksum: 0xA927A386
	Offset: 0x7490
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_eede49df(var_d51654a4, var_f5b4e706)
{
	if(!isdefined(var_d51654a4))
	{
		var_d51654a4 = "";
	}
	if(!isdefined(var_f5b4e706))
	{
		var_f5b4e706 = 0;
	}
	var_522666ed = function_99201f25("station_clutter" + var_d51654a4, "targetname");
	var_c160029e = function_99201f25("station_clutter_collision" + var_d51654a4, "targetname");
	var_4095c0be = function_99201f25("station_clutter_nocol" + var_d51654a4, "targetname");
	var_9adf475b = function_99201f25("station_stairs" + var_d51654a4, "targetname");
	function_9e3608e3("station_clutter" + var_d51654a4);
	if(var_f5b4e706)
	{
		var_3e671a1 = 0;
		foreach(var_fff2323a in var_522666ed)
		{
			var_fff2323a function_de8377bf();
			var_3e671a1++;
			if(var_3e671a1 > 1)
			{
				wait(0.05);
				var_3e671a1 = 0;
			}
		}
	}
	namespace_84970cc4::function_7e64f710(var_522666ed);
	namespace_84970cc4::function_7e64f710(var_c160029e);
	namespace_84970cc4::function_7e64f710(var_4095c0be);
	namespace_84970cc4::function_7e64f710(var_9adf475b);
}

/*
	Name: function_f7abd273
	Namespace: namespace_bedc6a60
	Checksum: 0xC2756381
	Offset: 0x76F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f7abd273()
{
	var_6a205876 = function_99201f25("station_defend_after", "script_noteworthy");
	var_6a205876 namespace_391e4301::function_6b4b5556();
}

/*
	Name: function_e5ed2910
	Namespace: namespace_bedc6a60
	Checksum: 0x62B310DC
	Offset: 0x7748
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_e5ed2910()
{
	var_dbe7a735 = function_99201f25("station_defend_after", "script_noteworthy");
	var_dbe7a735 namespace_391e4301::function_64a470cf(1);
	namespace_82b91a51::function_76f13293();
	var_c1633987 = function_99201f25("station_defend_before", "script_noteworthy");
	namespace_84970cc4::function_7e64f710(var_c1633987);
	namespace_82b91a51::function_76f13293();
	var_5cd1a106 = function_99201f25("droppod_hole", "targetname");
	foreach(var_bb2701f in var_5cd1a106)
	{
		var_bb2701f function_dc8c8404();
	}
}

/*
	Name: function_c01d9b2
	Namespace: namespace_bedc6a60
	Checksum: 0xAB51ED00
	Offset: 0x78B0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_c01d9b2()
{
	wait(2);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_all_clear_that_s_t_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_patch_us_into_0", 1);
	level namespace_71b8dba1::function_a463d127("ecmd_ramses_1_1_priority_0");
	level namespace_71b8dba1::function_a463d127("ecmd_request_all_emergenc_0");
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_copy_that_but_we_l_0");
	level namespace_71b8dba1::function_a463d127("ecmd_confirmed_vtol_sup_0");
}

/*
	Name: function_1d0e7c11
	Namespace: namespace_bedc6a60
	Checksum: 0xC9B2EE0E
	Offset: 0x7988
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_1d0e7c11()
{
	wait(5);
	var_e3b635fb = function_b8494651("allies");
	function_81403b2f(var_e3b635fb, level.var_2fd26037, 0);
	function_81403b2f(var_e3b635fb, level.var_9db406db, 0);
	var_e3b635fb = function_57efbe1(var_e3b635fb, level.var_2395e945[0].var_722885f3);
	if(isdefined(var_e3b635fb[0]))
	{
		if(namespace_d73b9283::function_d2c92ee7())
		{
			var_e3b635fb[0] thread namespace_71b8dba1::function_81141386("esl3_how_did_they_beat_ou_0");
		}
		else
		{
			var_e3b635fb[0] thread namespace_71b8dba1::function_81141386("esl4_impossible_how_did_0");
		}
	}
}

/*
	Name: function_f27ea617
	Namespace: namespace_bedc6a60
	Checksum: 0x42311316
	Offset: 0x7A98
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_f27ea617(var_b04bc952, var_74cd64bc)
{
	function_eede49df();
	function_c5b9bd41("_combat");
	function_c35e6aab("defend_ramses_station", var_74cd64bc);
}

/*
	Name: function_93364e1b
	Namespace: namespace_bedc6a60
	Checksum: 0x99EC1590
	Offset: 0x7B00
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_93364e1b()
{
}

