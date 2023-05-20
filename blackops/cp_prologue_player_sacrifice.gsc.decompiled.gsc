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
#using scripts\cp\cp_prologue_robot_reveal;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_835fda7e;

/*
	Name: function_5dcf4c9a
	Namespace: namespace_835fda7e
	Checksum: 0xEF7D3CE5
	Offset: 0x1110
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function function_5dcf4c9a(var_74cd64bc)
{
	level namespace_ad23e503::function_1ab5ebec("apc_done");
	function_312356f();
	level thread function_a4e65a71();
	level thread function_d8ccdb23();
	level thread function_e92ad8ae();
	level thread function_cc4c4e16();
	level thread function_10b855b0();
	level thread function_2772c15e();
	level thread function_6ba94a8();
	level thread function_637fae36();
	level thread function_2e776cf4();
	level thread function_b5284617();
	level thread function_21c12b92();
	level.var_27b46342 = function_525ae497(function_b8494651("allies"), level.var_9b1393e7, 0, 0);
	level namespace_ad23e503::function_1ab5ebec("pod_go");
	if(isdefined(level.var_853e9314))
	{
		level thread [[level.var_853e9314]]();
	}
	level namespace_ad23e503::function_1ab5ebec("pod_gone");
	namespace_1d795d47::function_be8adfb8("skipto_robot_defend");
}

/*
	Name: function_21c12b92
	Namespace: namespace_835fda7e
	Checksum: 0xACDCDD15
	Offset: 0x1310
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_21c12b92()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a.var_c34702c6 = 0;
		var_5dc5e20a thread function_ae9ce6f0();
		var_5dc5e20a thread function_bfce7c2a();
	}
}

/*
	Name: function_ae9ce6f0
	Namespace: namespace_835fda7e
	Checksum: 0x48799C9F
	Offset: 0x13D0
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_ae9ce6f0()
{
	self endon("hash_643a7daf");
	self endon("hash_99343b5f");
	level endon("hash_9d83ef5");
	while(1)
	{
		self waittill("hash_aa1618b0", var_913ae498);
		if(var_913ae498.var_f4ae8e42 !== "pistol")
		{
			self.var_c34702c6 = 1;
			self notify("hash_99343b5f");
		}
	}
}

/*
	Name: function_bfce7c2a
	Namespace: namespace_835fda7e
	Checksum: 0xA33FBD40
	Offset: 0x1460
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_bfce7c2a()
{
	self endon("hash_643a7daf");
	self endon("hash_99343b5f");
	level endon("hash_9d83ef5");
	self waittill("hash_e5ccf3dc");
	self.var_c34702c6 = 1;
	self notify("hash_99343b5f");
}

/*
	Name: function_fe88fdb1
	Namespace: namespace_835fda7e
	Checksum: 0xEE5D0EE4
	Offset: 0x14B8
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_fe88fdb1()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(!(isdefined(var_5dc5e20a.var_c34702c6) && var_5dc5e20a.var_c34702c6))
		{
			namespace_61c634f2::function_51c49e5(var_5dc5e20a);
		}
	}
}

/*
	Name: function_2e776cf4
	Namespace: namespace_835fda7e
	Checksum: 0xC0ED92AC
	Offset: 0x1578
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_2e776cf4()
{
	level namespace_ad23e503::function_1ab5ebec("pod_go");
	var_fccc406f = namespace_14b42b8a::function_7faf4c39("rpg_begin");
	var_15b740f0 = namespace_14b42b8a::function_7922262b("pod_pos");
	var_90911853 = function_c4d5ec1f("launcher_standard_magic_bullet");
	foreach(var_7b5de48c in var_fccc406f)
	{
		wait(1);
		function_87f3c622(var_90911853, var_7b5de48c.var_722885f3, var_15b740f0.var_722885f3);
	}
	wait(0.3);
	level thread function_9716eddb();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_83fd42b5();
	}
	level namespace_ad23e503::function_1ab5ebec("pod_gone");
	level namespace_ad23e503::function_74d6b22f("rpg_done");
	level thread function_fe88fdb1();
}

/*
	Name: function_9716eddb
	Namespace: namespace_835fda7e
	Checksum: 0x2C99135E
	Offset: 0x17B8
	Size: 0x18F
	Parameters: 0
	Flags: None
*/
function function_9716eddb()
{
	level endon("hash_2e90f258");
	var_fccc406f = namespace_14b42b8a::function_7faf4c39("rpg_begin");
	var_90911853 = function_c4d5ec1f("launcher_standard_magic_bullet");
	while(1)
	{
		foreach(var_7b5de48c in var_fccc406f)
		{
			var_27c4935 = (function_dc99997a(-100, 100), function_dc99997a(-100, 100), function_dc99997a(-100, 100));
			function_87f3c622(var_90911853, var_7b5de48c.var_722885f3, namespace_14b42b8a::function_7922262b(var_7b5de48c.var_b07228b6).var_722885f3 + var_27c4935);
			wait(0.75);
		}
		wait(1.5);
	}
}

/*
	Name: function_d8ccdb23
	Namespace: namespace_835fda7e
	Checksum: 0x6E2544FB
	Offset: 0x1950
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_d8ccdb23()
{
	level.var_4d5a4697.var_2b04bf92 = 0.5;
	level.var_4d5a4697.var_d937392f = 0;
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
	level.var_4d5a4697 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("cqb", 1);
	level namespace_ad23e503::function_1ab5ebec("minister_pos");
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_637fae36
	Namespace: namespace_835fda7e
	Checksum: 0x4317A3F5
	Offset: 0x1A68
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_637fae36()
{
	var_27606155 = function_99201f25("trigger_ob_defend", "targetname");
	foreach(var_a57773f5 in var_27606155)
	{
		var_a57773f5 function_175e6b8e(1);
	}
	var_b957e40 = function_6ada35ba("trigger_apc_reinforce", "targetname");
	var_b957e40 function_175e6b8e(0);
	var_f3fb06d8 = function_6ada35ba("trigger_pod_lz", "targetname");
	var_f3fb06d8 function_175e6b8e(0);
	level namespace_ad23e503::function_1ab5ebec("shift_defend");
	var_b957e40 function_175e6b8e(1);
}

/*
	Name: function_a4e4e77d
	Namespace: namespace_835fda7e
	Checksum: 0xB3CA8AD1
	Offset: 0x1BF8
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_a4e4e77d()
{
	level waittill("hash_da66fd91");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_prologue_rumble_apc_offroad");
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_f1aa5a21("default", 5);
		var_5dc5e20a.var_1554f271 = &function_947bfdac;
	}
}

/*
	Name: function_8e9f8d38
	Namespace: namespace_835fda7e
	Checksum: 0x35ABC398
	Offset: 0x1D40
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_8e9f8d38()
{
	level.var_2fd26037 function_9869ab67(namespace_14b42b8a::function_7922262b("skipto_robot_defend_hendricks").var_722885f3);
	level namespace_2cb3876f::function_12ce22ee();
	foreach(var_e4463170 in level.var_933bbc2c)
	{
		var_e4463170.var_7dfaf62 = 16;
		var_e4463170 function_9869ab67(namespace_14b42b8a::function_7922262b("skipto_robot_defend_" + var_e4463170.var_170527fb).var_722885f3);
	}
}

/*
	Name: function_a4e65a71
	Namespace: namespace_835fda7e
	Checksum: 0xD7C57C98
	Offset: 0x1E68
	Size: 0x2E9
	Parameters: 0
	Flags: None
*/
function function_a4e65a71()
{
	wait(1);
	namespace_96fa87af::function_7387a40a("defend_truck_3");
	namespace_96fa87af::function_7387a40a("defend_truck_4");
	level thread function_ff1a7b45();
	level namespace_ad23e503::function_1ab5ebec("shift_defend");
	level thread function_633f337();
	level namespace_ad23e503::function_74d6b22f("pod_waypoint");
	level thread function_b0cce50c();
	wait(5);
	namespace_2f06d687::function_7387a40a("robot_defend_rpg");
	namespace_96fa87af::function_7387a40a("defend_truck_1");
	wait(1);
	namespace_96fa87af::function_7387a40a("defend_truck_2");
	level.var_d3659748 = namespace_96fa87af::function_7387a40a("defend_apc_3");
	level namespace_ad23e503::function_1ab5ebec("goto_pod");
	wait(3);
	level thread function_da3c5a9d();
	var_d3659748 = namespace_96fa87af::function_7387a40a("defend_apc_2");
	var_d3659748 thread function_2d1c6af3();
	wait(2);
	level namespace_ad23e503::function_74d6b22f("start_defend_countdown");
	if(level.var_2395e945.size > 1)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a.var_2a48f7ab = 0.5;
		}
		break;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_2a48f7ab = 0.4;
	}
}

/*
	Name: function_633f337
	Namespace: namespace_835fda7e
	Checksum: 0x30BDAA3E
	Offset: 0x2160
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function function_633f337()
{
	level namespace_ad23e503::function_1ab5ebec("minister_pos");
	namespace_d5067552::function_bae40a28("sm_robot_defend_tower");
	namespace_82b91a51::function_67520c6a(5, undefined, &namespace_d5067552::function_54bdb053, "sm_robot_defend_tower");
	wait(5);
	namespace_d5067552::function_bae40a28("sm_apc_reinforce");
	level namespace_ad23e503::function_1ab5ebec("start_defend_countdown");
	namespace_d5067552::function_bae40a28("sm_robot_pod");
	wait(2);
	namespace_d5067552::function_bae40a28("sm_hilltop_guard");
	namespace_d5067552::function_bae40a28("sm_perimeter_guard");
	wait(3);
	namespace_d5067552::function_bae40a28("sm_robot_defend_tower");
	namespace_d5067552::function_bae40a28("sm_defend_rpg");
	level waittill("hash_2ac435dc");
	namespace_d5067552::function_54bdb053("sm_robot_defend_tower");
	namespace_d5067552::function_54bdb053("sm_robot_pod");
	namespace_d5067552::function_54bdb053("sm_hilltop_guard");
	namespace_d5067552::function_54bdb053("sm_perimeter_guard");
	namespace_d5067552::function_54bdb053("sm_defend_rpg");
	level waittill("hash_935fbb41");
	namespace_9f824288::function_5d2cdd99();
	wait(2);
	namespace_d5067552::function_bae40a28("sm_robot_defend_tower");
	namespace_d5067552::function_bae40a28("sm_robot_pod");
	wait(2);
	namespace_d5067552::function_bae40a28("sm_hilltop_guard");
	namespace_d5067552::function_bae40a28("sm_perimeter_guard");
	wait(2);
	namespace_d5067552::function_bae40a28("sm_defend_rpg");
	wait(1);
	namespace_d5067552::function_2992720d("sm_robot_pod");
	namespace_d5067552::function_2992720d("sm_robot_defend_tower");
	namespace_d5067552::function_bae40a28("sm_robot_swarm");
	level namespace_ad23e503::function_1ab5ebec("pod_go");
	level thread namespace_21b2c1f2::function_fcb67450();
	namespace_d5067552::function_2992720d("sm_hilltop_guard");
	namespace_d5067552::function_2992720d("sm_perimeter_guard");
	namespace_d5067552::function_2992720d("sm_defend_rpg");
}

/*
	Name: function_ff1a7b45
	Namespace: namespace_835fda7e
	Checksum: 0x25E17EE8
	Offset: 0x24A8
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_ff1a7b45()
{
	wait(0.1);
	var_ff3ca8ae = function_6ada35ba("defend_truck_3_vh", "targetname");
	var_413044a1 = function_6ada35ba("defend_truck_4_vh", "targetname");
	var_977a939e = var_ff3ca8ae namespace_96fa87af::function_ad4ec07a("gunner1");
	var_d96e2f91 = var_413044a1 namespace_96fa87af::function_ad4ec07a("gunner1");
	while(function_5b49d38c(var_977a939e) || function_5b49d38c(var_d96e2f91))
	{
		wait(1);
	}
	level namespace_ad23e503::function_74d6b22f("shift_defend");
}

/*
	Name: function_2d1c6af3
	Namespace: namespace_835fda7e
	Checksum: 0xD6F2367B
	Offset: 0x25C0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2d1c6af3()
{
	self function_8d63f8d0(0);
	self waittill("hash_6cf6ac7e");
	wait(5);
	self function_8d63f8d0(1);
}

/*
	Name: function_40fd81b
	Namespace: namespace_835fda7e
	Checksum: 0x381E7C11
	Offset: 0x2610
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_40fd81b()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_d937392f = 0;
	self.var_7dfaf62 = 16;
	wait(function_72a94f05(2, 3.5));
	var_90911853 = function_c4d5ec1f("launcher_standard_magic_bullet");
	var_f8e04bb3 = self function_d48f2ab3("tag_flash");
	while(1)
	{
		var_5aebca26 = level.var_27b46342[function_26299103(level.var_27b46342.size)];
		if(isdefined(var_5aebca26))
		{
			var_27c4935 = (function_dc99997a(-100, 100), function_dc99997a(-100, 100), function_dc99997a(90, 100));
			var_377a9c22 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_5aebca26.var_722885f3 + var_27c4935);
			var_377a9c22.var_3a90f16b = 100;
			self namespace_d84e54db::function_d104c596("normal", var_377a9c22, "tag_origin", undefined);
			var_377a9c22 function_dc8c8404();
			wait(function_72a94f05(4, 5.5));
		}
		wait(0.1);
	}
}

/*
	Name: function_54454538
	Namespace: namespace_835fda7e
	Checksum: 0xFBB9AF33
	Offset: 0x2810
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_54454538()
{
	if(function_27c72c1b())
	{
		return;
	}
	self endon("hash_128f8789");
	self thread function_32c0959c();
	self thread function_3b49905c();
	self namespace_82b91a51::function_958c7633();
	self namespace_d84e54db::function_3c155012();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_d937392f = 0;
	self.var_7dfaf62 = 16;
	self waittill("hash_41d1aaf0");
	var_5aebca26 = function_6ada35ba("rpg_target", "targetname");
	var_5aebca26.var_3a90f16b = 1;
	var_90911853 = function_c4d5ec1f("launcher_standard_magic_bullet");
	var_f8e04bb3 = self function_d48f2ab3("tag_flash");
	wait(1);
	if(!isdefined(var_f8e04bb3))
	{
		var_f8e04bb3 = self.var_722885f3;
	}
	var_622504f0 = function_87f3c622(var_90911853, var_f8e04bb3, var_5aebca26.var_722885f3);
	var_622504f0 waittill("hash_128f8789");
	var_622504f0 thread namespace_5753664b::function_43718187("rock_explosion", var_622504f0.var_722885f3);
	wait(1);
	var_27c4935 = (40, 0, 72);
	var_5aebca26 function_a96a2721(level.var_9b1393e7[function_26299103(level.var_9b1393e7.size)].var_722885f3 + var_27c4935, 0.05);
	self thread namespace_d84e54db::function_d104c596("normal", var_5aebca26, undefined, undefined);
	self waittill("hash_7a868ba5");
	self namespace_82b91a51::function_4b741fdc();
	self namespace_d84e54db::function_8d86e3af();
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	var_5aebca26 function_dc8c8404();
}

/*
	Name: function_3b49905c
	Namespace: namespace_835fda7e
	Checksum: 0x27B65275
	Offset: 0x2B28
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_3b49905c()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("apc_arrive");
	self namespace_82b91a51::function_4b741fdc();
}

/*
	Name: function_32c0959c
	Namespace: namespace_835fda7e
	Checksum: 0x1EEB193
	Offset: 0x2B78
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_32c0959c()
{
	self waittill("hash_128f8789");
	if(level.var_2395e945.size > 1)
	{
		namespace_2f06d687::function_7387a40a("rpg_coop");
	}
}

/*
	Name: function_4b1fb716
	Namespace: namespace_835fda7e
	Checksum: 0x23B01732
	Offset: 0x2BC0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4b1fb716()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 4;
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
}

/*
	Name: function_64dd8530
	Namespace: namespace_835fda7e
	Checksum: 0xBE271FC3
	Offset: 0x2C30
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_64dd8530()
{
	self endon("hash_128f8789");
	self.var_d937392f = 0;
}

/*
	Name: function_96551790
	Namespace: namespace_835fda7e
	Checksum: 0x6941ACA9
	Offset: 0x2C50
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_96551790()
{
	self endon("hash_128f8789");
	self.var_d937392f = 0;
	namespace_2f06d687::function_371d219c("group_defend_1", 1);
	self function_2992720d();
}

/*
	Name: function_b9081af
	Namespace: namespace_835fda7e
	Checksum: 0xC6976A09
	Offset: 0x2CA8
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_b9081af()
{
	self endon("hash_128f8789");
	self namespace_6f7b2095::function_1b497663("o");
	self.var_d937392f = 0;
}

/*
	Name: function_7f708ee
	Namespace: namespace_835fda7e
	Checksum: 0xCF087A8E
	Offset: 0x2CE8
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_7f708ee()
{
	self endon("hash_128f8789");
	self.var_d937392f = 0;
}

/*
	Name: function_bf932181
	Namespace: namespace_835fda7e
	Checksum: 0xE995D795
	Offset: 0x2D08
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_bf932181()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 4;
	self namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("move_mode", "normal");
}

/*
	Name: function_c3228115
	Namespace: namespace_835fda7e
	Checksum: 0x93315D8C
	Offset: 0x2D88
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_c3228115(var_a917e7b9, var_cf1a6222)
{
	self endon("hash_128f8789");
	self thread namespace_37b990db::function_2aefd6ec(var_a917e7b9, 1);
	self thread namespace_37b990db::function_2aefd6ec(var_cf1a6222, 1);
	self namespace_37b990db::function_bae40a28(var_a917e7b9, 1);
	self namespace_37b990db::function_bae40a28(var_cf1a6222, 1);
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	self waittill("hash_6cf6ac7e");
	wait(1);
	var_44762fa4 = self namespace_96fa87af::function_ad4ec07a("driver");
	if(function_5b49d38c(var_44762fa4))
	{
		var_44762fa4 thread namespace_96fa87af::function_dca9dba2();
	}
}

/*
	Name: function_45c35350
	Namespace: namespace_835fda7e
	Checksum: 0x8A628A8E
	Offset: 0x2EC8
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_45c35350()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	self thread namespace_37b990db::function_2aefd6ec(1, 1);
	self namespace_37b990db::function_bae40a28(1, 1);
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	wait(1);
	self waittill("hash_6cf6ac7e");
	self namespace_82b91a51::function_4b741fdc();
	foreach(var_402c598a in self.var_d925663e)
	{
		if(function_5b49d38c(var_402c598a) && var_402c598a.var_219c140a != "gunner1")
		{
			var_402c598a thread namespace_2cb3876f::function_2f943869();
		}
	}
	var_5c20815 = function_72a94f05(20, 20 + function_62e4226e(20));
	wait(var_5c20815);
	self function_2992720d();
}

/*
	Name: function_b2d7edae
	Namespace: namespace_835fda7e
	Checksum: 0xA5A8B991
	Offset: 0x30A8
	Size: 0x229
	Parameters: 0
	Flags: None
*/
function function_b2d7edae()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	self thread namespace_37b990db::function_2aefd6ec(1, 1);
	self namespace_37b990db::function_bae40a28(1, 1);
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	wait(1);
	foreach(var_402c598a in self.var_d925663e)
	{
		if(function_5b49d38c(var_402c598a) && var_402c598a.var_219c140a == "gunner1")
		{
			self thread function_58b0f8d8(var_402c598a);
		}
	}
	self waittill("hash_6cf6ac7e");
	self namespace_82b91a51::function_4b741fdc();
	foreach(var_402c598a in self.var_d925663e)
	{
		if(function_5b49d38c(var_402c598a) && var_402c598a.var_219c140a != "gunner1")
		{
			var_402c598a thread namespace_2cb3876f::function_2f943869();
		}
	}
}

/*
	Name: function_58b0f8d8
	Namespace: namespace_835fda7e
	Checksum: 0xE84390AF
	Offset: 0x32E0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_58b0f8d8(var_dfb53de7)
{
	self endon("hash_128f8789");
	self waittill("hash_6cf6ac7e");
	if(function_5b49d38c(var_dfb53de7))
	{
		var_dfb53de7 waittill("hash_128f8789");
	}
	else
	{
		wait(2);
	}
	self function_c3945cd5(self.var_3a90f16b + 1, self.var_722885f3);
}

/*
	Name: function_98ae774
	Namespace: namespace_835fda7e
	Checksum: 0x40846AA0
	Offset: 0x3370
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_98ae774()
{
	self endon("hash_128f8789");
	if(function_26299103(6) < 2)
	{
		self namespace_2cb3876f::function_29c76f59();
	}
	else
	{
		self namespace_d84e54db::function_ceb883cd("move_mode", "marching");
	}
}

/*
	Name: function_9d374
	Namespace: namespace_835fda7e
	Checksum: 0x8AFBA2B6
	Offset: 0x33E8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_9d374()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_2cb3876f::function_29c76f59();
	var_713e715e = namespace_14b42b8a::function_7922262b("pod_pos");
	var_72237359 = [];
	while(var_72237359.size == 0)
	{
		var_72237359 = namespace_82b91a51::function_ee78923e(var_713e715e.var_722885f3, 64, 400, 70, 40);
		wait(0.25);
	}
	self function_169cc712(var_72237359[function_26299103(var_72237359.size)], 1);
}

/*
	Name: function_cc4c4e16
	Namespace: namespace_835fda7e
	Checksum: 0xA40AF0FE
	Offset: 0x34E8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_cc4c4e16()
{
	level namespace_ad23e503::function_1ab5ebec("shift_defend");
	level thread namespace_2cb3876f::function_47a62798(1);
	level namespace_ad23e503::function_1ab5ebec("pod_arrive");
	level thread namespace_2cb3876f::function_a5398264("rambo");
	level thread namespace_2cb3876f::function_db027040(1);
}

/*
	Name: function_e92ad8ae
	Namespace: namespace_835fda7e
	Checksum: 0x78D609CD
	Offset: 0x3588
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_e92ad8ae()
{
	wait(1);
	namespace_4dbf3ae3::function_42e87952("trig_defend_position_allies1");
	level namespace_ad23e503::function_1ab5ebec("shift_defend");
	level namespace_ad23e503::function_1ab5ebec("pod_arrive");
	namespace_9f824288::function_5d2cdd99();
	level thread function_f76b808e();
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_9db406db namespace_6f7b2095::function_54bdb053();
	level.var_4d5a4697 namespace_6f7b2095::function_54bdb053();
	namespace_4dbf3ae3::function_42e87952("trig_defend_position_allies2");
	wait(3);
	namespace_4dbf3ae3::function_42e87952("triggercolor_minister");
	wait(8);
	level thread function_9282c858();
}

/*
	Name: function_f76b808e
	Namespace: namespace_835fda7e
	Checksum: 0x99E7762B
	Offset: 0x36B8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_f76b808e()
{
	level namespace_cc27597::function_8f9f34e0("cin_pro_17_02_robotdefend_vign_hookup_minsterlloop", &function_4dc9c2f9, "play");
	level namespace_cc27597::function_8f9f34e0("cin_pro_17_02_robotdefend_vign_hookup_khalilloop", &function_4e2b6779, "play");
	level namespace_cc27597::function_8f9f34e0("cin_pro_17_02_robotdefend_vign_hookup_hendricksloop", &function_8600d87b, "play");
	level thread namespace_cc27597::function_43718187("cin_pro_17_02_robotdefend_vign_hookup_minsterlloop");
	level thread namespace_cc27597::function_43718187("cin_pro_17_02_robotdefend_vign_hookup_khalilloop");
	level thread namespace_cc27597::function_43718187("cin_pro_17_02_robotdefend_vign_hookup_hendricksloop");
	level thread function_5443e6cb();
	level thread function_deb83f0d();
	level namespace_ad23e503::function_1ab5ebec("ready_load");
	level namespace_cc27597::function_43718187("cin_pro_17_02_robotdefend_vign_hookup");
	level namespace_cc27597::function_43718187("cin_pro_17_02_robotdefend_vign_hookup_loop");
}

/*
	Name: function_deb83f0d
	Namespace: namespace_835fda7e
	Checksum: 0xF51C396
	Offset: 0x3848
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_deb83f0d()
{
	level endon("hash_3b063ae9");
	wait(15);
	level namespace_ad23e503::function_74d6b22f("ready_load");
}

/*
	Name: function_5443e6cb
	Namespace: namespace_835fda7e
	Checksum: 0x7528CCE5
	Offset: 0x3888
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5443e6cb()
{
	level endon("hash_3b063ae9");
	level namespace_82b91a51::function_8e66bc6("hendricks_ready", "khalil_ready", "minister_ready");
	level namespace_ad23e503::function_74d6b22f("ready_load");
}

/*
	Name: function_4dc9c2f9
	Namespace: namespace_835fda7e
	Checksum: 0x683A7506
	Offset: 0x38F0
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_4dc9c2f9(var_c77d2837)
{
	level notify("hash_43c7040");
}

/*
	Name: function_4e2b6779
	Namespace: namespace_835fda7e
	Checksum: 0x699E9630
	Offset: 0x3918
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_4e2b6779(var_c77d2837)
{
	level notify("hash_fecf35c0");
}

/*
	Name: function_8600d87b
	Namespace: namespace_835fda7e
	Checksum: 0x59658937
	Offset: 0x3940
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_8600d87b(var_c77d2837)
{
	level notify("hash_a4aaeab6");
}

/*
	Name: function_10b855b0
	Namespace: namespace_835fda7e
	Checksum: 0x7D49EC6E
	Offset: 0x3968
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_10b855b0()
{
	level namespace_ad23e503::function_1ab5ebec("shift_defend");
	namespace_4dbf3ae3::function_42e87952("triggercolor_enemy_path");
	level namespace_ad23e503::function_1ab5ebec("apc_reinforce");
	namespace_4dbf3ae3::function_42e87952("triggercolor_enemy_pod");
	level namespace_ad23e503::function_1ab5ebec("goto_pod");
	namespace_4dbf3ae3::function_42e87952("triggercolor_enemy_end");
}

/*
	Name: function_b0cce50c
	Namespace: namespace_835fda7e
	Checksum: 0xAA3F84CE
	Offset: 0x3A20
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_b0cce50c()
{
	var_15b740f0 = namespace_14b42b8a::function_7922262b("pod_pos");
	var_167090b7 = namespace_14b42b8a::function_7922262b("pod_defend");
	wait(2);
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_15b740f0);
	var_f3fb06d8 = function_6ada35ba("trigger_pod_lz", "targetname");
	var_6848ea7f = function_6ada35ba("trigger_apc_reinforce", "targetname");
	var_f3fb06d8 function_175e6b8e(1);
	var_6848ea7f thread function_a950a3ec();
	level thread function_a3ac9ae0();
	level namespace_ad23e503::function_1ab5ebec("pod_arrive");
	var_f3fb06d8 waittill("hash_4dbf3ae3");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_15b740f0);
	namespace_d0ef8521::function_50ccee8d("cp_level_prologue_goto_exfil");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_defend_pod", var_167090b7);
}

/*
	Name: function_a3ac9ae0
	Namespace: namespace_835fda7e
	Checksum: 0xEB012DA6
	Offset: 0x3BC8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_a3ac9ae0()
{
	level endon("hash_2ef4a1f0");
	namespace_d5067552::function_27bf2e8("sm_apc_reinforce", 2);
	wait(10);
	level namespace_ad23e503::function_74d6b22f("goto_pod");
}

/*
	Name: function_a950a3ec
	Namespace: namespace_835fda7e
	Checksum: 0xB0D2B7B0
	Offset: 0x3C20
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_a950a3ec()
{
	level endon("hash_2ef4a1f0");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		self thread function_cd56c2cf(var_5dc5e20a);
	}
	level.var_fc71d8f = 0;
	while(level.var_fc71d8f < level.var_2395e945.size)
	{
		wait(0.5);
	}
	level namespace_ad23e503::function_74d6b22f("goto_pod");
}

/*
	Name: function_cd56c2cf
	Namespace: namespace_835fda7e
	Checksum: 0xF53CB6A1
	Offset: 0x3D10
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_cd56c2cf(var_5dc5e20a)
{
	level endon("hash_2ef4a1f0");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_315e324);
		if(var_315e324 == var_5dc5e20a)
		{
			level.var_fc71d8f++;
		}
	}
}

/*
	Name: function_b5284617
	Namespace: namespace_835fda7e
	Checksum: 0x21A6C4BA
	Offset: 0x3D70
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_b5284617()
{
	level.var_4c225fa1 = function_6ada35ba("brush_pod", "targetname");
	namespace_96fa87af::function_994832bd("fxanim_vtol_pod", &function_de0720c1);
	namespace_96fa87af::function_994832bd("fxanim_pod", &function_52d9a509);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_vtol_pod_drop_off_bundle");
	level thread function_45756e82();
	level thread function_aba4324();
	level thread function_c0fa2edc();
	level thread function_2063548d();
	level waittill("hash_39aa5979");
	level namespace_ad23e503::function_74d6b22f("pod_on_ground");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_prologue_rumble_pod_land");
	}
	wait(3);
	level namespace_ad23e503::function_74d6b22f("pod_arrive");
	level namespace_ad23e503::function_1ab5ebec("ready_load");
	level thread function_6947ce3();
	level thread function_7a733ec7();
	level namespace_ad23e503::function_74d6b22f("dropship_return");
	function_81403b2f(level.var_27b46342, level.var_4d5a4697);
	function_81403b2f(level.var_27b46342, level.var_9db406db);
	function_81403b2f(level.var_27b46342, level.var_2fd26037);
	level namespace_ad23e503::function_1ab5ebec("pod_go");
	level namespace_cc27597::function_43718187("cin_pro_17_02_robotdefend_vign_hookup_explosion");
}

/*
	Name: function_4f43b0cc
	Namespace: namespace_835fda7e
	Checksum: 0x3A3CAE21
	Offset: 0x4060
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_4f43b0cc(var_c77d2837)
{
	namespace_80983c42::function_593e8a39("light_exploder_defend_radio_tower");
}

/*
	Name: function_7a733ec7
	Namespace: namespace_835fda7e
	Checksum: 0xC3511F33
	Offset: 0x4090
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_7a733ec7()
{
	level waittill("hash_b9036ca8");
	namespace_80983c42::function_80983c42("fx_exploder_vtol_pod_rotorwash");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("dropship_rumble_loop", 1);
	}
	level waittill("hash_958c9db6");
	namespace_80983c42::function_67e7a937("fx_exploder_vtol_pod_rotorwash");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("dropship_rumble_loop", 0);
	}
}

/*
	Name: function_2063548d
	Namespace: namespace_835fda7e
	Checksum: 0x53E0B8DD
	Offset: 0x4208
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_2063548d()
{
	level namespace_ad23e503::function_1ab5ebec("pod_loaded");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_defend_pod");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_get_out_alive");
	level.var_9b1393e7[0] function_c2931a36("evt_outro_tinnitus_lp", 4);
	level thread function_e7a97be1();
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
	function_657fb683();
	level thread namespace_82b91a51::function_593c2af4(1, "black", "cinematic_fader");
	level namespace_ad23e503::function_74d6b22f("pod_go");
	level thread function_f7af5999();
	function_a43cf0f6();
	namespace_cc27597::function_8f9f34e0("cin_pro_17_02_robotdefend_vign_hookup_player", &function_6e3b3bec, "play");
	level thread namespace_cc27597::function_43718187("cin_pro_17_02_robotdefend_vign_hookup_player");
	level namespace_82b91a51::function_ef3f75eb("sndOS1");
	level waittill("hash_7176ec93");
	level namespace_82b91a51::function_ef3f75eb("sndOS2");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("damage_heavy");
	}
	level thread namespace_82b91a51::function_7e61de2b(0.75, "black", "cinematic_fader");
	level function_7098f5fa();
	level namespace_ad23e503::function_74d6b22f("pod_gone");
}

/*
	Name: function_e7a97be1
	Namespace: namespace_835fda7e
	Checksum: 0x2461BFBE
	Offset: 0x44E0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_e7a97be1()
{
	wait(10);
	level.var_9b1393e7[0] function_eaa69754(5);
}

/*
	Name: function_657fb683
	Namespace: namespace_835fda7e
	Checksum: 0x145FA147
	Offset: 0x4518
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_657fb683()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(function_5b49d38c(var_5dc5e20a))
		{
			var_5dc5e20a thread function_c794d3c2();
			var_5dc5e20a thread namespace_cc27597::function_43718187("cin_pro_17_02_robotdefend_vign_hookup_player_explosion");
		}
	}
	wait(0.75);
	namespace_82b91a51::function_7e61de2b(0.5, "black", "cinematic_fader");
}

/*
	Name: function_a43cf0f6
	Namespace: namespace_835fda7e
	Checksum: 0xEFCDD2D
	Offset: 0x4618
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_a43cf0f6()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(function_5b49d38c(var_5dc5e20a))
		{
			var_5dc5e20a namespace_cc27597::function_fcf56ab5("cin_pro_17_02_robotdefend_vign_hookup_player_explosion");
		}
	}
}

/*
	Name: function_c794d3c2
	Namespace: namespace_835fda7e
	Checksum: 0x71DAA60A
	Offset: 0x46D0
	Size: 0x203
	Parameters: 4
	Flags: None
*/
function function_c794d3c2(var_5b1ebb35, var_7ad049d6, var_9bd58d85, var_688fa2d2)
{
	if(!isdefined(var_5b1ebb35))
	{
		var_5b1ebb35 = 300;
	}
	if(!isdefined(var_7ad049d6))
	{
		var_7ad049d6 = 100;
	}
	if(!isdefined(var_9bd58d85))
	{
		var_9bd58d85 = 1;
	}
	if(!isdefined(var_688fa2d2))
	{
		var_688fa2d2 = 1;
	}
	self endon("hash_128f8789");
	self function_83fd42b5();
	var_46ff2245 = function_bc7ce905(self.var_6ab6f4fd);
	var_652493a5 = var_46ff2245 * var_7ad049d6;
	var_f720f8d7 = self.var_722885f3 + (0, 0, var_5b1ebb35) + var_652493a5;
	var_f9f8910c = self.var_722885f3 + var_652493a5;
	var_90911853 = function_c4d5ec1f("launcher_standard_magic_bullet");
	function_87f3c622(var_90911853, var_f720f8d7, var_f9f8910c);
	self function_b8862210("evt_outro_explosion", self);
	wait(0.25);
	level thread namespace_5753664b::function_43718187("rock_explosion", var_f9f8910c);
	if(var_9bd58d85)
	{
		self function_e2af603e("cp_prologue_rumble_pod_land");
	}
	if(var_688fa2d2)
	{
		self function_f1aa5a21("default", 7);
	}
	self function_4890e520();
}

/*
	Name: function_6e3b3bec
	Namespace: namespace_835fda7e
	Checksum: 0x22526F32
	Offset: 0x48E0
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_6e3b3bec(var_c77d2837)
{
	var_a5eb4761 = namespace_14b42b8a::function_7922262b("s_rocket_player_hookup", "targetname");
	var_2c7e0a5a = namespace_14b42b8a::function_7922262b(var_a5eb4761.var_b07228b6, "targetname");
	level waittill("hash_37113ae1");
	var_90911853 = function_c4d5ec1f("launcher_standard_magic_bullet");
	function_87f3c622(var_90911853, var_a5eb4761.var_722885f3, var_2c7e0a5a.var_722885f3);
}

/*
	Name: function_f7af5999
	Namespace: namespace_835fda7e
	Checksum: 0x80BEB560
	Offset: 0x49B0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_f7af5999()
{
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_wait_my_team_s_still_0", 0.5);
	level.var_1eb7e8f5 namespace_71b8dba1::function_81141386("dops_negative_airspace_i_0", 0.5, 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_no_no_no_no_fu_0", 0.5);
}

/*
	Name: function_de0720c1
	Namespace: namespace_835fda7e
	Checksum: 0xFC5469DD
	Offset: 0x4A40
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_de0720c1()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	if(level namespace_ad23e503::function_7922262b("start_defend_countdown"))
	{
		self thread namespace_5753664b::function_43718187("dropship_spotlight", self.var_722885f3, self.var_6ab6f4fd, "notetrack_cease_fire", 1, "tag_fx_light_frontspot_ll");
	}
}

/*
	Name: function_52d9a509
	Namespace: namespace_835fda7e
	Checksum: 0x9894727A
	Offset: 0x4AD0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_52d9a509()
{
	self namespace_82b91a51::function_958c7633();
	var_a3781dbd = function_6ada35ba("pod_panel", "targetname");
	var_730a7fb0 = (-1.9, 53.5, 79.5);
	var_162bfcbf = VectorScale((-1, 0, 0), 180);
	var_17250c53 = function_bdcdc423(var_162bfcbf);
	var_a3781dbd function_37f7858a(self, "tag_origin", var_730a7fb0, var_17250c53);
	level namespace_ad23e503::function_1ab5ebec("pod_on_ground");
	function_eac31668(self.var_722885f3, 250, 150, 150, undefined, "MOD_EXPLOSIVE");
}

/*
	Name: function_aba4324
	Namespace: namespace_835fda7e
	Checksum: 0x660546F4
	Offset: 0x4C08
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_aba4324()
{
	wait(3.5);
	var_edc6e0e1 = function_6ada35ba("fxanim_vtol_pod", "animname");
	var_dc6cf86c = namespace_14b42b8a::function_7faf4c39("rpg_vtol");
	foreach(var_7b5de48c in var_dc6cf86c)
	{
		var_edc6e0e1 thread function_3df1f906(var_7b5de48c);
	}
}

/*
	Name: function_3df1f906
	Namespace: namespace_835fda7e
	Checksum: 0x82DADE53
	Offset: 0x4D00
	Size: 0x10D
	Parameters: 1
	Flags: None
*/
function function_3df1f906(var_7b5de48c)
{
	self endon("hash_128f8789");
	var_90911853 = function_c4d5ec1f("launcher_standard");
	for(var_c957f6b6 = 0; var_c957f6b6 < 8; var_c957f6b6++)
	{
		var_27c4935 = (function_dc99997a(-1500, -1300), function_dc99997a(-100, 100), function_dc99997a(-100, 100));
		function_87f3c622(var_90911853, var_7b5de48c.var_722885f3, self.var_722885f3 + var_27c4935);
		wait(function_72a94f05(1, 2));
	}
}

/*
	Name: function_6947ce3
	Namespace: namespace_835fda7e
	Checksum: 0xA2D231E2
	Offset: 0x4E18
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_6947ce3()
{
	wait(1);
	var_f5882947 = function_6ada35ba("fxanim_vtol_pod", "animname");
	var_f5882947 thread function_34d9d6a7();
	level waittill("hash_27dfe41d");
	level thread function_94856821();
}

/*
	Name: function_94856821
	Namespace: namespace_835fda7e
	Checksum: 0x9A0427F9
	Offset: 0x4E90
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_94856821()
{
	var_36b8634f = 902500;
	var_bfa0f33f = namespace_14b42b8a::function_7922262b("pod_pos");
	var_1534914d = function_33222815("robot");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_1534914d.size; var_c957f6b6++)
	{
		if(function_316422d1(var_bfa0f33f.var_722885f3, var_1534914d[var_c957f6b6].var_722885f3) <= var_36b8634f)
		{
			if(function_5b49d38c(var_1534914d[var_c957f6b6]))
			{
				var_1534914d[var_c957f6b6] namespace_d84e54db::function_ceb883cd("force_crawler", "gib_legs");
			}
		}
	}
}

/*
	Name: function_34d9d6a7
	Namespace: namespace_835fda7e
	Checksum: 0x3CE506B1
	Offset: 0x4FB8
	Size: 0x229
	Parameters: 0
	Flags: None
*/
function function_34d9d6a7()
{
	level waittill("hash_2ac435dc");
	level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_prologue_tower_vtol_collapse_v2_bundle", &function_4f43b0cc);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_tower_vtol_collapse_v2_bundle");
	namespace_80983c42::function_593e8a39("light_exploder_defend_radio_tower");
	var_28ca079b = 360000;
	var_ace21635 = 1000000;
	var_bfa0f33f = namespace_14b42b8a::function_7922262b("pod_pos");
	var_1534914d = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_1534914d.size; var_c957f6b6++)
	{
		if(function_5b49d38c(var_1534914d[var_c957f6b6]))
		{
			var_ccd4343c = function_316422d1(var_bfa0f33f.var_722885f3, var_1534914d[var_c957f6b6].var_722885f3);
			if(var_1534914d[var_c957f6b6].var_8fc0e50e === "human" && var_ccd4343c >= var_28ca079b && var_ccd4343c <= var_ace21635)
			{
				self function_114d2017(var_1534914d[var_c957f6b6]);
			}
			else if(var_1534914d[var_c957f6b6].var_8fc0e50e === "robot" && var_ccd4343c >= var_ace21635)
			{
				self function_114d2017(var_1534914d[var_c957f6b6]);
			}
			wait(0.5);
		}
	}
	level notify("hash_27dfe41d");
}

/*
	Name: function_114d2017
	Namespace: namespace_835fda7e
	Checksum: 0x97C4967B
	Offset: 0x51F0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_114d2017(var_377a9c22)
{
	var_8af78429 = function_c4d5ec1f("launcher_standard");
	var_9fab05ff = self function_d48f2ab3("tag_fx_rocket_pod_l");
	var_3185a0cf = var_377a9c22.var_722885f3;
	var_27c4935 = (function_dc99997a(-100, 100), function_dc99997a(-100, 100), function_dc99997a(-80, 80));
	var_973828cf = function_87f3c622(var_8af78429, var_9fab05ff, var_3185a0cf);
	var_973828cf thread function_1082845c(var_3185a0cf + var_27c4935);
	wait(0.5);
	var_4bd7a161 = self function_d48f2ab3("tag_fx_rocket_pod_r");
	var_973828cf = function_87f3c622(var_8af78429, var_4bd7a161, var_3185a0cf + var_27c4935);
	var_973828cf thread function_1082845c(var_3185a0cf + var_27c4935);
}

/*
	Name: function_1082845c
	Namespace: namespace_835fda7e
	Checksum: 0x597F59D1
	Offset: 0x5398
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_1082845c(var_3185a0cf)
{
	self waittill("hash_128f8789");
	function_eac31668(var_3185a0cf, 100, 1500, 500, undefined, "MOD_EXPLOSIVE");
}

/*
	Name: function_c0fa2edc
	Namespace: namespace_835fda7e
	Checksum: 0xA7D6EFD3
	Offset: 0x53E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_c0fa2edc()
{
	level waittill("hash_1a9aaaa8");
	level.var_4c225fa1 function_dc8c8404();
}

/*
	Name: function_312356f
	Namespace: namespace_835fda7e
	Checksum: 0xD1881655
	Offset: 0x5420
	Size: 0x433
	Parameters: 0
	Flags: None
*/
function function_312356f()
{
	namespace_96fa87af::function_994832bd("defend_truck_1", &function_45c35350);
	namespace_96fa87af::function_994832bd("defend_truck_2", &function_45c35350);
	namespace_96fa87af::function_994832bd("defend_truck_3", &function_b2d7edae);
	namespace_96fa87af::function_994832bd("defend_truck_4", &function_b2d7edae);
	namespace_96fa87af::function_994832bd("defend_apc_2", &function_c3228115, 1, 2);
	namespace_96fa87af::function_994832bd("defend_apc_3", &function_c3228115, 1, 2);
	namespace_2f06d687::function_2b37a3c9("ridge_guy", "targetname", &function_64dd8530);
	namespace_2f06d687::function_2b37a3c9("apc3_crew", "targetname", &function_4b1fb716);
	namespace_2f06d687::function_2b37a3c9("apc_reinforce", "targetname", &function_4b1fb716);
	namespace_2f06d687::function_2b37a3c9("group_defend_1", "script_aigroup", &function_96551790);
	namespace_2f06d687::function_2b37a3c9("rpg_intro", "script_aigroup", &function_54454538);
	namespace_2f06d687::function_2b37a3c9("group_apc", "script_aigroup", &function_b9081af);
	namespace_2f06d687::function_2b37a3c9("group_reinforce_1", "script_aigroup", &function_7f708ee);
	namespace_2f06d687::function_2b37a3c9("group_reinforce_2", "script_aigroup", &function_bf932181);
	namespace_2f06d687::function_2b37a3c9("group_reinforce_3", "script_aigroup", &function_7f708ee);
	namespace_2f06d687::function_2b37a3c9("group_defend_2", "script_aigroup", &function_b9081af);
	namespace_2f06d687::function_2b37a3c9("group_defend_3", "script_aigroup", &function_b9081af);
	namespace_2f06d687::function_2b37a3c9("group_pod_right", "script_aigroup", &function_b9081af);
	namespace_2f06d687::function_2b37a3c9("group_pod_left", "script_aigroup", &function_b9081af);
	namespace_2f06d687::function_2b37a3c9("group_pod_robot", "script_aigroup", &function_98ae774);
	namespace_2f06d687::function_2b37a3c9("defend_rpg", "targetname", &function_40fd81b);
	namespace_2f06d687::function_2b37a3c9("robot_swarm", "targetname", &function_9d374);
	namespace_2f06d687::function_2b37a3c9("group_tower_defender", "script_aigroup", &function_7f708ee);
}

/*
	Name: function_2772c15e
	Namespace: namespace_835fda7e
	Checksum: 0x54FC8776
	Offset: 0x5860
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_2772c15e()
{
	namespace_80983c42::function_80983c42("fx_exploder_background_exp_muz");
}

/*
	Name: function_6ba94a8
	Namespace: namespace_835fda7e
	Checksum: 0x59F83C54
	Offset: 0x5888
	Size: 0x3D3
	Parameters: 0
	Flags: None
*/
function function_6ba94a8()
{
	namespace_76d95162::function_d9f49fba(0);
	level thread namespace_21b2c1f2::function_92382f5c();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_there_s_our_ride_0");
	level.var_1eb7e8f5 namespace_71b8dba1::function_81141386("dops_exfil_pod_first_pass_0", 0.2, 1);
	level namespace_ad23e503::function_1ab5ebec("pod_on_ground");
	level.var_1eb7e8f5 namespace_71b8dba1::function_81141386("dops_exfil_pod_dropping_0", 0.5, 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_nrc_reinforcements_c_0", 1);
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_1ab5ebec("shift_defend");
	namespace_76d95162::function_d9f49fba(0);
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_minister_are_you_al_0", 0.5);
	level.var_4d5a4697 namespace_71b8dba1::function_81141386("said_i_m_fine_i_m_fine_0", 0.5);
	level namespace_ad23e503::function_74d6b22f("minister_pos");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_get_the_hel_1");
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_1ab5ebec("pod_waypoint");
	namespace_76d95162::function_d9f49fba(0);
	level thread function_77fe86ff();
	var_49b32118 = function_6ada35ba("pa_comm_tower", "targetname");
	var_49b32118 namespace_71b8dba1::function_81141386("nrcp_infiltrators_cornere_0", 0.2, 1);
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_1ab5ebec("dropship_return");
	namespace_76d95162::function_d9f49fba(0);
	level namespace_71b8dba1::function_a463d127("dops_drone_concentrating_0");
	level waittill("hash_2bc95ac2");
	level.var_1eb7e8f5 namespace_71b8dba1::function_81141386("dops_drone_is_in_position_0", 1, 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_secure_get_your_ass_1", 0.25);
	level namespace_ad23e503::function_74d6b22f("pod_loaded");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_get_your_ass_over_he_2", 1);
	level namespace_71b8dba1::function_a463d127("dops_drone_ready_to_move_0");
}

/*
	Name: function_77fe86ff
	Namespace: namespace_835fda7e
	Checksum: 0x2B9AA891
	Offset: 0x5C68
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_77fe86ff()
{
	level endon("hash_ba5c153");
	level namespace_ad23e503::function_1ab5ebec("pod_loaded");
	wait(5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_get_your_ass_over_he_1");
	wait(6);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_go_come_on_0");
	wait(6);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_the_drone_can_t_take_0");
}

/*
	Name: function_da3c5a9d
	Namespace: namespace_835fda7e
	Checksum: 0x40972F8E
	Offset: 0x5D18
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_da3c5a9d()
{
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_apc_from_the_right_0", 3);
}

/*
	Name: function_9282c858
	Namespace: namespace_835fda7e
	Checksum: 0x7F8A4F90
	Offset: 0x5D50
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_9282c858()
{
	level endon("hash_7673dfe9");
	wait(3);
	if(!level.var_fc71d8f)
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_move_move_move_0");
		wait(3);
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_get_over_here_come_0");
		wait(3);
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_i_need_you_on_my_pos_1");
		wait(3);
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_drone_ll_be_her_1");
	}
}

/*
	Name: function_7098f5fa
	Namespace: namespace_835fda7e
	Checksum: 0xB84CACB4
	Offset: 0x5E10
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_7098f5fa()
{
	level.var_2fd26037 namespace_71b8dba1::function_81141386("tayr_inbound_two_minutes_0", 0.5);
}

/*
	Name: function_947bfdac
	Namespace: namespace_835fda7e
	Checksum: 0x18DD4C8
	Offset: 0x5E48
	Size: 0xD5
	Parameters: 13
	Flags: None
*/
function function_947bfdac(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_ae725cb8, var_a5cf2304, var_7419ba1f)
{
	if(isdefined(var_dfcc01fd) && isdefined(var_dfcc01fd.var_4be20d44))
	{
		if(var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner3" || var_dfcc01fd.var_4be20d44 == "turret_bo3_mil_macv_gunner4")
		{
			var_f9a179ed = var_f9a179ed * 0.05;
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_45756e82
	Namespace: namespace_835fda7e
	Checksum: 0x55AF813C
	Offset: 0x5F28
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_45756e82(var_1fd9b48b)
{
	if(!isdefined(var_1fd9b48b))
	{
		var_1fd9b48b = "chicken_zone";
	}
	level endon("hash_7d7d7481");
	var_e512db80 = function_6ada35ba(var_1fd9b48b + "_trigger", "targetname");
	while(1)
	{
		var_e512db80 waittill("hash_4dbf3ae3", var_65669d7b);
		var_65669d7b function_d311c75a(var_1fd9b48b);
	}
}

/*
	Name: function_d311c75a
	Namespace: namespace_835fda7e
	Checksum: 0xAFF994D1
	Offset: 0x5FD0
	Size: 0x2BD
	Parameters: 1
	Flags: None
*/
function function_d311c75a(var_1fd9b48b)
{
	self endon("hash_128f8789");
	var_aa686173 = "player_exited_" + var_1fd9b48b;
	level endon(var_aa686173);
	level thread function_4d64d2f6(var_1fd9b48b);
	wait(7);
	var_4e9a9978 = var_1fd9b48b + "_target";
	var_592faea1 = namespace_14b42b8a::function_7faf4c39(var_1fd9b48b + "_src");
	var_9a93fef1 = namespace_14b42b8a::function_7faf4c39(var_1fd9b48b + "_src2");
	var_e32e572f = namespace_14b42b8a::function_7faf4c39(var_4e9a9978, "targetname");
	var_60057f63 = function_c4d5ec1f("launcher_standard");
	while(1)
	{
		var_51b841d8 = namespace_84970cc4::function_47d18840(var_9a93fef1);
		function_87f3c622(var_60057f63, var_51b841d8.var_722885f3, self.var_722885f3);
		for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
		{
			function_e78f61a0(var_60057f63, var_592faea1, var_e32e572f);
			wait(1);
		}
		wait(1);
		for(var_c957f6b6 = 0; var_c957f6b6 < 4; var_c957f6b6++)
		{
			var_55ad5a1e = namespace_84970cc4::function_47d18840(var_592faea1);
			function_87f3c622(var_60057f63, var_55ad5a1e.var_722885f3, self.var_722885f3);
			wait(1);
			var_51b841d8 = namespace_84970cc4::function_47d18840(var_9a93fef1);
			function_87f3c622(var_60057f63, var_51b841d8.var_722885f3, self.var_722885f3);
			wait(1);
		}
		wait(3);
	}
}

/*
	Name: function_e78f61a0
	Namespace: namespace_835fda7e
	Checksum: 0x2399FB9F
	Offset: 0x6298
	Size: 0x8B
	Parameters: 3
	Flags: None
*/
function function_e78f61a0(var_1d6db0a3, var_a35aa0b0, var_e32e572f)
{
	var_10729d99 = namespace_84970cc4::function_47d18840(var_a35aa0b0);
	var_26aaa5cc = namespace_84970cc4::function_47d18840(var_e32e572f);
	function_87f3c622(var_1d6db0a3, var_10729d99.var_722885f3, var_26aaa5cc.var_722885f3);
}

/*
	Name: function_4d64d2f6
	Namespace: namespace_835fda7e
	Checksum: 0xE989972E
	Offset: 0x6330
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_4d64d2f6(var_1fd9b48b)
{
	level endon("hash_128f8789");
	level endon("hash_7d7d7481");
	var_fe2701d = "player_touching_" + var_1fd9b48b;
	level namespace_ad23e503::function_d3de6822(var_fe2701d);
	var_aa686173 = "player_exited_" + var_1fd9b48b;
	level notify(var_aa686173);
}

