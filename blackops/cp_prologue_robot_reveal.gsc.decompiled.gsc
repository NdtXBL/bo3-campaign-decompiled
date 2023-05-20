#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_12501af4;

/*
	Name: function_78909aa1
	Namespace: namespace_12501af4
	Checksum: 0xCFF8E5B1
	Offset: 0xDD8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_78909aa1()
{
	level function_f06522c8();
	level function_7c0dd98b();
	namespace_2f06d687::function_2b37a3c9("sp_initial_robots", "targetname", &function_12501af4);
	namespace_2f06d687::function_2b37a3c9("robot_aigroup", "script_aigroup", &function_12501af4);
	level thread function_284c8a64();
}

/*
	Name: function_f06522c8
	Namespace: namespace_12501af4
	Checksum: 0x80667D8
	Offset: 0xE90
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f06522c8()
{
	var_f412ff43 = function_6ada35ba("vtol_tackle_color", "targetname");
	var_f412ff43 function_175e6b8e(0);
}

/*
	Name: function_7c0dd98b
	Namespace: namespace_12501af4
	Checksum: 0x2E087367
	Offset: 0xEE8
	Size: 0x297
	Parameters: 0
	Flags: None
*/
function function_7c0dd98b()
{
	level.var_f58c9f31 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_f58c9f31 namespace_d84e54db::function_c9e45d52(1);
	level.var_f58c9f31.var_7dfaf62 = 16;
	level.var_f58c9f31.var_daf3a648 = 0;
	level.var_92d245e2 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_92d245e2 namespace_d84e54db::function_c9e45d52(1);
	level.var_92d245e2.var_7dfaf62 = 16;
	level.var_92d245e2.var_daf3a648 = 0;
	level.var_5d4087a6 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_5d4087a6 namespace_d84e54db::function_c9e45d52(1);
	level.var_5d4087a6.var_7dfaf62 = 16;
	level.var_5d4087a6.var_daf3a648 = 0;
	level.var_7f246cd7 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_7f246cd7 namespace_d84e54db::function_c9e45d52(1);
	level.var_7f246cd7.var_7dfaf62 = 16;
	level.var_7f246cd7.var_daf3a648 = 0;
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037.var_7dfaf62 = 16;
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
	level.var_9db406db namespace_d84e54db::function_c9e45d52(1);
	level.var_9db406db.var_7dfaf62 = 16;
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_4d5a4697 namespace_d84e54db::function_c9e45d52(1);
	level.var_4d5a4697.var_7dfaf62 = 16;
}

/*
	Name: function_284c8a64
	Namespace: namespace_12501af4
	Checksum: 0xB52848FF
	Offset: 0x1188
	Size: 0x7B3
	Parameters: 0
	Flags: None
*/
function function_284c8a64()
{
	namespace_76d95162::function_d9f49fba(0);
	level thread function_48cd673e();
	level thread function_874bf7f();
	level thread function_79c2bdec();
	level thread function_341ece1b();
	level thread function_38c8ec92();
	level thread function_9fb290a5();
	level thread function_94976a83();
	level thread function_4a895a11();
	level thread namespace_d0ef8521::function_45d1556("breadcrumb_robot_horde");
	level thread function_96157f5d();
	var_933bbc2c = namespace_2cb3876f::function_6ee0e1a5();
	foreach(var_e4463170 in var_933bbc2c)
	{
		var_e4463170 namespace_d84e54db::function_ceb883cd("cqb", 1);
	}
	level namespace_ad23e503::function_1ab5ebec("player_in_alley");
	namespace_2cb3876f::function_b50f5d52();
	var_933bbc2c = namespace_2cb3876f::function_6ee0e1a5();
	var_933bbc2c[var_933bbc2c.size] = level.var_f58c9f31;
	var_933bbc2c[var_933bbc2c.size] = level.var_2fd26037;
	var_933bbc2c[var_933bbc2c.size] = level.var_9db406db;
	var_933bbc2c[var_933bbc2c.size] = level.var_7f246cd7;
	var_933bbc2c[var_933bbc2c.size] = level.var_5d4087a6;
	foreach(var_e4463170 in var_933bbc2c)
	{
		var_e4463170 namespace_d84e54db::function_b4f5e3b9(1);
		var_e4463170 namespace_d84e54db::function_c9e45d52(1);
	}
	level thread function_90882a34();
	level thread function_59071a25();
	level thread function_f7a7c69a();
	namespace_82b91a51::function_67520c6a(0.5, undefined, &namespace_80983c42::function_80983c42, "fx_exploder_fog_light_horde");
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_1ab5ebec("robot_contact");
	level.var_f58c9f31 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_7f246cd7 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_5d4087a6 namespace_d84e54db::function_b4f5e3b9(0);
	foreach(var_e4463170 in var_933bbc2c)
	{
		var_e4463170 namespace_d84e54db::function_b4f5e3b9(0);
		var_e4463170 thread function_54900cca();
	}
	level thread function_3d5fceb9();
	wait(8);
	level namespace_ad23e503::function_74d6b22f("open_fire");
	foreach(var_e4463170 in var_933bbc2c)
	{
		var_e4463170 namespace_d84e54db::function_ceb883cd("cqb", 0);
	}
	level namespace_1eb7e8f5::function_50d6bf35("vehicle_apc_hijack_node", 0);
	level thread function_d105c430();
	namespace_dabbe128::function_356a4ee1(&function_51a9314a);
	level thread function_51280ee5();
	level namespace_ad23e503::function_1ab5ebec("garage_open");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_defend_theia", level.var_92d245e2);
	level.var_74745e55 = namespace_14b42b8a::function_7922262b("garage_door", "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", level.var_74745e55);
	namespace_4dbf3ae3::function_42e87952("triggercolor_allies_garage");
	namespace_cc27597::function_8f9f34e0("cin_pro_15_01_opendoor_vign_getinside_khalil_minister_hendricks", &function_21350de5, "play");
	level thread namespace_cc27597::function_43718187("cin_pro_15_01_opendoor_vign_getinside_khalil_minister_hendricks");
	level waittill("hash_e41afc83");
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
	level namespace_ad23e503::function_1ab5ebec("players_in_garage");
	level namespace_ad23e503::function_1ab5ebec("allies_in_garage");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_find_vehicle");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_goto_exfil");
	level namespace_ad23e503::function_1ab5ebec("garage_closed");
	level namespace_ad23e503::function_1ab5ebec("minister_apc_done");
	namespace_dabbe128::function_a0ac4434(&function_51a9314a);
	namespace_1d795d47::function_be8adfb8("skipto_robot_horde");
}

/*
	Name: function_96157f5d
	Namespace: namespace_12501af4
	Checksum: 0x5C706A68
	Offset: 0x1948
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_96157f5d()
{
	var_9a246ea8 = function_6ada35ba("t_robot_horde_oob", "targetname");
	if(isdefined(var_9a246ea8))
	{
		level namespace_ad23e503::function_1ab5ebec("vo_robot");
		wait(1.9);
		var_9a246ea8 function_175e6b8e(1);
	}
}

/*
	Name: function_21350de5
	Namespace: namespace_12501af4
	Checksum: 0x5D6752C2
	Offset: 0x19C8
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_21350de5(var_c77d2837)
{
	var_94848710 = var_c77d2837["minister"];
	var_94848710 waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("minister_apc_done");
}

/*
	Name: function_4a895a11
	Namespace: namespace_12501af4
	Checksum: 0x4AEC78AF
	Offset: 0x1A28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4a895a11()
{
	level waittill("hash_d1ef0d27");
	wait(1);
	function_37cbcf1a("evt_robot_fake_battle", (15815, -745, 497));
}

/*
	Name: function_94976a83
	Namespace: namespace_12501af4
	Checksum: 0x2CF03A12
	Offset: 0x1A70
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_94976a83()
{
	namespace_4dbf3ae3::function_42e87952("triggercolor_allies_stairs");
	namespace_4dbf3ae3::function_1ab5ebec("triggercolor_alley");
	namespace_4dbf3ae3::function_42e87952("triggercolor_allies_alley");
	level namespace_ad23e503::function_1ab5ebec("player_in_alley");
	namespace_4dbf3ae3::function_42e87952("triggercolor_allies_alley");
	wait(1.5);
	namespace_4dbf3ae3::function_42e87952("robot_defend_color_chain1");
}

/*
	Name: function_54900cca
	Namespace: namespace_12501af4
	Checksum: 0x15D23AE6
	Offset: 0x1B20
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_54900cca()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("garage_enter");
	self.var_501514b8 = 1;
	wait(3);
	self namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_ad23e503::function_1ab5ebec("allies_in_garage");
	self.var_501514b8 = 0;
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_59071a25
	Namespace: namespace_12501af4
	Checksum: 0x74610C44
	Offset: 0x1BC0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_59071a25()
{
	namespace_4dbf3ae3::function_1ab5ebec("player_inside_garage");
	level namespace_ad23e503::function_74d6b22f("players_in_garage");
	level thread namespace_21b2c1f2::function_fb0b7bb6();
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", level.var_74745e55);
}

/*
	Name: function_f7a7c69a
	Namespace: namespace_12501af4
	Checksum: 0x9634BEA7
	Offset: 0x1C40
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_f7a7c69a()
{
	var_ede59fe8 = function_6ada35ba("player_inside_garage", "targetname");
	var_933bbc2c = namespace_2cb3876f::function_6ee0e1a5();
	foreach(var_e4463170 in var_933bbc2c)
	{
		while(function_5b49d38c(var_e4463170) && !var_e4463170 function_32fa5072(var_ede59fe8))
		{
			wait(0.1);
		}
	}
	level namespace_ad23e503::function_74d6b22f("allies_in_garage");
}

/*
	Name: function_90882a34
	Namespace: namespace_12501af4
	Checksum: 0x2DF9512E
	Offset: 0x1D68
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_90882a34()
{
	level namespace_ad23e503::function_1ab5ebec("spawn_robot_horde");
	if(isdefined(level.var_3afb66ba))
	{
		level thread [[level.var_3afb66ba]]();
	}
	namespace_d5067552::function_bae40a28("sm_initial_robots");
	wait(3);
	namespace_d5067552::function_bae40a28("sm_robot_horde1");
	wait(1);
	namespace_d5067552::function_bae40a28("sm_robot_horde2");
	wait(1);
	namespace_d5067552::function_bae40a28("sm_robot_horde3");
	level namespace_ad23e503::function_1ab5ebec("players_in_garage");
	namespace_d5067552::function_2992720d("sm_initial_robots");
	namespace_d5067552::function_2992720d("sm_robot_horde1");
	namespace_d5067552::function_2992720d("sm_robot_horde2");
	namespace_d5067552::function_2992720d("sm_robot_horde3");
}

/*
	Name: function_9fb290a5
	Namespace: namespace_12501af4
	Checksum: 0x423552ED
	Offset: 0x1EB0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_9fb290a5()
{
	var_14b42b8a = namespace_14b42b8a::function_7922262b("sndRobotRattle", "targetname");
	var_f612891c = namespace_14b42b8a::function_7922262b(var_14b42b8a.var_b07228b6, "targetname");
	var_a3d46ee4 = function_9b7fda5e("script_model", var_14b42b8a.var_722885f3);
	while(!namespace_ad23e503::function_7922262b("players_in_garage"))
	{
		var_a3d46ee4 function_921a1574("evt_robot_reveal_step");
		wait(0.3);
		var_a3d46ee4 namespace_71e9cb84::function_74d6b22f("sndRattle", 1);
		wait(0.8);
		var_a3d46ee4 namespace_71e9cb84::function_74d6b22f("sndRattle", 0);
	}
	var_a3d46ee4 function_c2931a36("evt_robot_fake_battle_lp", 5);
}

/*
	Name: function_51280ee5
	Namespace: namespace_12501af4
	Checksum: 0x4E76CF15
	Offset: 0x2000
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_51280ee5()
{
	level namespace_ad23e503::function_1ab5ebec("garage_open");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_door_01_open_bundle");
	wait(0.3);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_door_02_open_bundle");
	namespace_4dbf3ae3::function_42e87952("t_motorpool_spawns_enable", "targetname");
	level namespace_ad23e503::function_1ab5ebec("players_in_garage");
	level namespace_ad23e503::function_1ab5ebec("allies_in_garage");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_door_01_close_bundle");
	wait(0.3);
	level namespace_ad23e503::function_74d6b22f("garage_closed");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_door_02_close_bundle");
	function_c2619de1();
}

/*
	Name: function_c2619de1
	Namespace: namespace_12501af4
	Checksum: 0xD70F9F75
	Offset: 0x2150
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_c2619de1()
{
	var_9869c63b = function_6ada35ba("t_kill_robots_inside_garage", "targetname");
	var_24bbf032 = function_b8494651("axis");
	foreach(var_2eecd77a in var_24bbf032)
	{
		if(function_5b49d38c(var_2eecd77a))
		{
			if(var_2eecd77a function_32fa5072(var_9869c63b))
			{
				var_2eecd77a namespace_d84e54db::function_8c969347(function_62e4226e(0.25));
				continue;
			}
			var_2eecd77a function_dc8c8404();
		}
	}
}

/*
	Name: function_d105c430
	Namespace: namespace_12501af4
	Checksum: 0x6D1ECE4F
	Offset: 0x22A0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_d105c430()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_51a9314a();
	}
}

/*
	Name: function_51a9314a
	Namespace: namespace_12501af4
	Checksum: 0x303967D8
	Offset: 0x2338
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_51a9314a()
{
	self endon("hash_128f8789");
	self.var_cbf4698a = self.var_2a48f7ab;
	self.var_2a48f7ab = 0;
	self thread function_10302408();
	level namespace_ad23e503::function_1ab5ebec("players_in_garage");
	self.var_2a48f7ab = self.var_cbf4698a;
}

/*
	Name: function_10302408
	Namespace: namespace_12501af4
	Checksum: 0xFD0FA3F6
	Offset: 0x23B8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_10302408()
{
	level endon("hash_eecef59c");
	self endon("hash_128f8789");
	while(self.var_2a48f7ab < 1)
	{
		wait(1);
		self.var_2a48f7ab = self.var_2a48f7ab + 0.1;
	}
}

/*
	Name: function_12501af4
	Namespace: namespace_12501af4
	Checksum: 0xCDD7CB1C
	Offset: 0x2410
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_12501af4()
{
	level endon("hash_64ad6809");
	self endon("hash_128f8789");
	self.var_7dfaf62 = 32;
	self thread function_e583f6c3();
	self thread function_75db1a12();
	self thread function_cea2a123();
	self waittill("hash_41d1aaf0");
	self.var_7dfaf62 = 2048;
	wait(3);
	self.var_5ed2f6d3 = 1;
}

/*
	Name: function_75db1a12
	Namespace: namespace_12501af4
	Checksum: 0xC55137E8
	Offset: 0x24B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_75db1a12()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("garage_closed");
	self function_169cc712(self.var_722885f3, 1);
	self namespace_d84e54db::function_b4f5e3b9(1);
}

/*
	Name: function_cea2a123
	Namespace: namespace_12501af4
	Checksum: 0x62EAF59B
	Offset: 0x2520
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_cea2a123()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("garage_open");
	wait(5);
	self namespace_d84e54db::function_ceb883cd("move_mode", "marching");
}

/*
	Name: function_e583f6c3
	Namespace: namespace_12501af4
	Checksum: 0x9D459A34
	Offset: 0x2580
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e583f6c3()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_ad23e503::function_1ab5ebec("open_fire");
	wait(3);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_48cd673e
	Namespace: namespace_12501af4
	Checksum: 0xF5A19524
	Offset: 0x25F0
	Size: 0x1A1
	Parameters: 0
	Flags: None
*/
function function_48cd673e()
{
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_9db406db namespace_6f7b2095::function_54bdb053();
	level.var_4d5a4697 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 thread function_85de96a6("hendricks");
	level.var_9db406db thread function_85de96a6("khalil");
	level.var_4d5a4697 thread function_85de96a6("minister");
	namespace_82b91a51::function_8e66bc6("hendricks_ready", "khalil_ready", "minister_ready");
	level namespace_ad23e503::function_1ab5ebec("goto_alley");
	level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_dismantle");
	level.var_2fd26037 function_e11ce512();
	level.var_9db406db function_e11ce512();
	level.var_4d5a4697 function_e11ce512();
	level thread function_20e7e38e();
	level namespace_ad23e503::function_1ab5ebec("prometheus_stop_directing");
	level notify("hash_8f3f5759");
}

/*
	Name: function_85de96a6
	Namespace: namespace_12501af4
	Checksum: 0x55CD2DDB
	Offset: 0x27A0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_85de96a6(var_cbb15570)
{
	var_9de10fe3 = function_b4cb3503(var_cbb15570 + "_robot_entry", "targetname");
	self function_169cc712(var_9de10fe3, 1);
	self waittill("hash_41d1aaf0");
	level notify(var_cbb15570 + "_ready");
}

/*
	Name: function_20e7e38e
	Namespace: namespace_12501af4
	Checksum: 0xD926897
	Offset: 0x2828
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_20e7e38e()
{
	self endon("hash_8f3f5759");
	wait(5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_c_mon_exfil_s_just_0");
	wait(5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_get_the_min_0");
	wait(5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_can_t_miss_our_pi_0");
}

/*
	Name: function_874bf7f
	Namespace: namespace_12501af4
	Checksum: 0xFB3BEC18
	Offset: 0x28B8
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_874bf7f()
{
	level thread function_c091ae43();
	level thread function_82869bf4();
	level thread function_f4e0744a();
	level thread namespace_cc27597::function_8f9f34e0("cin_pro_14_01_robothorde_vign_directing", &function_7ad76fc0, "play");
	if(!level namespace_ad23e503::function_7922262b("prom_point"))
	{
		level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_directing");
		level namespace_ad23e503::function_1ab5ebec("taylor_direct");
	}
	level namespace_ad23e503::function_1ab5ebec("prom_point");
	level namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_directing_pointing");
	if(!level namespace_ad23e503::function_7922262b("prometheus_stop_directing"))
	{
		level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_directing");
	}
	level namespace_ad23e503::function_1ab5ebec("spawn_robot_horde");
	wait(2);
	level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_dismantle_new_prometheus");
	level waittill("hash_a4b8e7ad");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_defend_theia", level.var_92d245e2);
	level namespace_ad23e503::function_1ab5ebec("garage_open");
	level namespace_cc27597::function_43718187("cin_pro_15_01_opendoor_vign_getinside_new_prometheus_move");
	level.var_92d245e2 function_169cc712(level.var_92d245e2.var_722885f3, 1);
}

/*
	Name: function_7ad76fc0
	Namespace: namespace_12501af4
	Checksum: 0x119AA1F2
	Offset: 0x2B08
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_7ad76fc0(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("taylor_direct");
}

/*
	Name: function_c091ae43
	Namespace: namespace_12501af4
	Checksum: 0x16046980
	Offset: 0x2B40
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c091ae43()
{
	level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_dismantle_theia");
	level namespace_ad23e503::function_1ab5ebec("garage_open");
	level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_dismantle_theia_shoot");
}

/*
	Name: function_82869bf4
	Namespace: namespace_12501af4
	Checksum: 0xAF16BBF5
	Offset: 0x2BB0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_82869bf4()
{
	level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_dismantle_diaz");
	level namespace_ad23e503::function_1ab5ebec("garage_open");
	level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_dismantle_diaz_shoot");
}

/*
	Name: function_f4e0744a
	Namespace: namespace_12501af4
	Checksum: 0xA250517E
	Offset: 0x2C20
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f4e0744a()
{
	level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_dismantle_maretti");
	level namespace_ad23e503::function_1ab5ebec("garage_open");
	level thread namespace_cc27597::function_43718187("cin_pro_14_01_robothorde_vign_dismantle_maretti_shoot");
}

/*
	Name: function_38c8ec92
	Namespace: namespace_12501af4
	Checksum: 0x1402EA2B
	Offset: 0x2C90
	Size: 0x393
	Parameters: 0
	Flags: None
*/
function function_38c8ec92()
{
	level endon("hash_e41afc83");
	var_49b32118 = function_6ada35ba("pa_nrc_warning", "targetname");
	var_49b32118 namespace_71b8dba1::function_81141386("nrcp_warning_nrc_grunt_i_0", 0, 1);
	level namespace_ad23e503::function_1ab5ebec("player_in_alley");
	function_e3231637(1);
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_you_guys_hear_tha_0", 0.5);
	level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_you_re_hearing_thing_0", 0.5);
	level namespace_ad23e503::function_74d6b22f("spawn_robot_horde");
	level thread namespace_21b2c1f2::function_448421b7();
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_hey_fuck_you_0", 0.5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_shut_up_i_hear_it_t_0", 0.5);
	level namespace_ad23e503::function_74d6b22f("robot_contact");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_holy_shit_0", 0.5);
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_contact_contact_0", 0.5);
	wait(0.5);
	function_e3231637(0);
	level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_incoming_bots_a_s_0", 0.5);
	level.var_92d245e2 namespace_71b8dba1::function_81141386("tayr_we_need_that_door_op_0", 0.5);
	level.var_92d245e2 namespace_71b8dba1::function_81141386("tayr_give_us_some_cover_f_0");
	level namespace_ad23e503::function_74d6b22f("garage_open");
	level.var_92d245e2 namespace_71b8dba1::function_81141386("tayr_get_inside_go_go_0", 0.6);
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_get_to_the_extract_0", 1);
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_we_ll_deal_with_robo_0", 0.35);
	level.var_f58c9f31 namespace_71b8dba1::function_81141386("hall_get_the_minister_ins_0", 0.5);
	level thread namespace_21b2c1f2::function_37a511a();
	if(!level namespace_ad23e503::function_7922262b("players_in_garage") && !function_27c72c1b())
	{
		level thread function_f0042481();
	}
}

/*
	Name: function_e3231637
	Namespace: namespace_12501af4
	Checksum: 0x85E235F0
	Offset: 0x3030
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_e3231637(var_8a4b0c9)
{
	if(isdefined(level.var_681ad194))
	{
		foreach(var_75443889 in level.var_681ad194)
		{
			var_75443889 namespace_d84e54db::function_7bf590dd(var_8a4b0c9);
			if(var_8a4b0c9)
			{
				wait(function_72a94f05(0.1, 0.75));
			}
		}
	}
}

/*
	Name: function_f0042481
	Namespace: namespace_12501af4
	Checksum: 0x3F3E2563
	Offset: 0x3108
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_f0042481()
{
	level endon("hash_64b7ce47");
	wait(4);
	level.var_92d245e2 namespace_71b8dba1::function_81141386("tayr_you_re_dead_out_ther_0");
	wait(5);
	level.var_92d245e2 namespace_71b8dba1::function_81141386("tayr_we_gotta_move_come_0");
	wait(5);
	level.var_92d245e2 namespace_71b8dba1::function_81141386("tayr_drone_s_almost_here_0");
	wait(5);
	level notify("hash_47d961ae");
	namespace_d5067552::function_2992720d("sm_robot_horde1");
	namespace_d5067552::function_2992720d("sm_robot_horde2");
	namespace_d5067552::function_2992720d("sm_robot_horde3");
	namespace_82b91a51::function_207f8667(&"CP_MI_ETH_PROLOGUE_GARAGE_FAIL");
}

/*
	Name: function_1fd1d84b
	Namespace: namespace_12501af4
	Checksum: 0xB71BDE2E
	Offset: 0x3208
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_1fd1d84b(var_a3d46ee4)
{
	level.var_7f246cd7 function_169cc712(level.var_7f246cd7.var_722885f3, 1);
	level.var_5d4087a6 function_169cc712(level.var_5d4087a6.var_722885f3, 1);
}

/*
	Name: function_3d5fceb9
	Namespace: namespace_12501af4
	Checksum: 0xC662DFF4
	Offset: 0x3280
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_3d5fceb9()
{
	level namespace_ad23e503::function_1ab5ebec("cyber_soldiers_kill_robots");
	var_5d83ea = function_99201f25("robot_clip", "targetname");
	foreach(var_b340b98b in var_5d83ea)
	{
		var_b340b98b function_dc8c8404();
	}
}

/*
	Name: function_341ece1b
	Namespace: namespace_12501af4
	Checksum: 0x7A7801C4
	Offset: 0x3360
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_341ece1b()
{
	var_c8af31c9 = function_6ada35ba("clip_player_garage", "targetname");
	var_c8af31c9 function_8bdea13c(200 * -1, 0.05);
	level namespace_ad23e503::function_1ab5ebec("garage_open");
	var_c8af31c9 function_8bdea13c(200, 2);
	var_c8af31c9 waittill("hash_a21db68a");
	level namespace_ad23e503::function_1ab5ebec("players_in_garage");
	var_c8af31c9 function_8bdea13c(200 * -1, 0.05);
}

/*
	Name: function_79c2bdec
	Namespace: namespace_12501af4
	Checksum: 0x58E01218
	Offset: 0x3460
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_79c2bdec()
{
	var_935a64f = function_6ada35ba("clip_ai_garage", "targetname");
	level namespace_ad23e503::function_1ab5ebec("garage_open");
	var_935a64f function_422037f5();
	var_935a64f function_de8377bf();
	level namespace_ad23e503::function_74d6b22f("garage_enter");
	level namespace_ad23e503::function_1ab5ebec("garage_closed");
	wait(1);
	var_935a64f function_4083a98e();
	var_935a64f function_14c24d9d();
}

