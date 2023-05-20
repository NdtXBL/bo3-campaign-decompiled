#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_bridge;
#using scripts\cp\cp_prologue_cyber_soldiers;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_d51ba4;

/*
	Name: function_83921c71
	Namespace: namespace_d51ba4
	Checksum: 0x1B8199D1
	Offset: 0x1AC8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_83921c71()
{
	function_ce233fb8();
	function_5a60627b();
	namespace_2f06d687::function_2b37a3c9("hangar01_balcony_ai", "script_noteworthy", &function_33ec51ea);
	namespace_2f06d687::function_2b37a3c9("catwalk_stair_enemy", "targetname", &function_78f61bf2);
	level thread function_10d2e714();
}

/*
	Name: function_ce233fb8
	Namespace: namespace_d51ba4
	Checksum: 0x5EB40E3E
	Offset: 0x1B70
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_ce233fb8()
{
	namespace_ad23e503::function_c35e6aab("alert_plane_hangar_enemies");
	level namespace_ad23e503::function_c35e6aab("plane_hangar_hendricks_ready_flag");
	level namespace_ad23e503::function_c35e6aab("plane_hangar_khalil_ready_flag");
	level namespace_ad23e503::function_c35e6aab("plane_hangar_minister_ready_flag");
	level namespace_ad23e503::function_c35e6aab("fireflies_used");
}

/*
	Name: function_5a60627b
	Namespace: namespace_d51ba4
	Checksum: 0x781CC63C
	Offset: 0x1C18
	Size: 0x2F7
	Parameters: 0
	Flags: None
*/
function function_5a60627b()
{
	level.var_92d245e2 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_92d245e2 namespace_d84e54db::function_c9e45d52(1);
	level.var_92d245e2.var_7dfaf62 = 16;
	level.var_f58c9f31 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_f58c9f31 namespace_d84e54db::function_c9e45d52(1);
	level.var_f58c9f31.var_7dfaf62 = 16;
	level.var_f58c9f31.var_daf3a648 = 0;
	level.var_f58c9f31 namespace_6f7b2095::function_1b497663("c");
	level.var_7f246cd7 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_7f246cd7 namespace_d84e54db::function_c9e45d52(1);
	level.var_7f246cd7.var_7dfaf62 = 16;
	level.var_7f246cd7.var_daf3a648 = 0;
	level.var_7f246cd7 namespace_6f7b2095::function_1b497663("o");
	level.var_5d4087a6 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_5d4087a6 namespace_d84e54db::function_c9e45d52(1);
	level.var_5d4087a6.var_7dfaf62 = 16;
	level.var_5d4087a6.var_daf3a648 = 0;
	level.var_5d4087a6 namespace_6f7b2095::function_1b497663("p");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037.var_7dfaf62 = 16;
	level.var_2fd26037.var_daf3a648 = 0;
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
	level.var_9db406db namespace_d84e54db::function_c9e45d52(1);
	level.var_9db406db.var_7dfaf62 = 16;
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_4d5a4697 namespace_d84e54db::function_c9e45d52(1);
	level.var_4d5a4697.var_7dfaf62 = 16;
}

/*
	Name: function_10d2e714
	Namespace: namespace_d51ba4
	Checksum: 0xBDAF13ED
	Offset: 0x1F18
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_10d2e714()
{
	level thread function_bd564a09();
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_hangar_window_rip_bundle");
	level thread namespace_21b2c1f2::function_46333a8a();
	level namespace_82b91a51::function_ef3f75eb("sndStartFakeBattle");
	level thread function_6ad5d018();
	level thread function_e92ad8ae();
	level thread function_4cf04b95();
	level thread function_30b7d0f9();
	level thread function_b439650f();
	level thread function_644150a();
	namespace_96fa87af::function_994832bd("vtol_collapse_apc_initial", &function_75381a71);
	level.var_fac57550 = namespace_96fa87af::function_7387a40a("vtol_collapse_apc_initial");
	wait(0.15);
	level.var_2fd26037 thread function_d418516(level.var_fac57550);
	level.var_9db406db thread function_d418516(level.var_fac57550);
	level.var_7f246cd7 thread function_e3521c43();
	function_e966c1c0(0);
	level namespace_ad23e503::function_1ab5ebec("plane_hangar_complete");
	namespace_1d795d47::function_be8adfb8("skipto_hangar");
}

/*
	Name: function_b439650f
	Namespace: namespace_d51ba4
	Checksum: 0xDD6FD973
	Offset: 0x2120
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b439650f()
{
	level endon("hash_71456dc2");
	wait(60);
	level namespace_ad23e503::function_74d6b22f("move_plane_hangar_vehicles");
	level namespace_ad23e503::function_74d6b22f("move_plane_hangar_enemies");
	wait(60);
	level namespace_ad23e503::function_74d6b22f("move_catwalk_enemies");
}

/*
	Name: function_75381a71
	Namespace: namespace_d51ba4
	Checksum: 0xEF3DD4EB
	Offset: 0x21A0
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_75381a71()
{
	wait(1);
	foreach(var_402c598a in self.var_d925663e)
	{
		var_402c598a thread namespace_82b91a51::function_958c7633();
	}
	level waittill("hash_7452e7a8");
	foreach(var_402c598a in self.var_d925663e)
	{
		var_402c598a thread namespace_82b91a51::function_4b741fdc();
	}
}

/*
	Name: function_bd564a09
	Namespace: namespace_d51ba4
	Checksum: 0x536C3BD3
	Offset: 0x22D0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_bd564a09()
{
	self endon("hash_d11bfa2f");
	level namespace_ad23e503::function_1ab5ebec("hangar_vtol_flyby");
	level thread namespace_2cb3876f::function_42da021e("vh_vtol_flyby", 119, 100);
}

/*
	Name: function_4cf04b95
	Namespace: namespace_d51ba4
	Checksum: 0x40143CBA
	Offset: 0x2330
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_4cf04b95()
{
	namespace_2f06d687::function_2b37a3c9("aig_plane_hangar_enemies_main", "script_aigroup", &namespace_2cb3876f::function_c47ce0e9);
	level namespace_ad23e503::function_1ab5ebec("spawn_plane_hangar_enemies");
	namespace_2f06d687::function_22356ba7("catwalk_window_enemies", &function_55a0215c);
	namespace_2f06d687::function_22356ba7("shooter_enemy", &function_c9e0c14b);
	var_a2da570f = namespace_2f06d687::function_22356ba7("sp_plane_hangar_initial_right", &function_4514b4cf);
	var_c5fb606f = function_6ada35ba("plane_hangar_goal_vol_right_1", "targetname");
	var_53f3f134 = function_6ada35ba("plane_hangar_goal_vol_right_2", "targetname");
	var_79f66b9d = function_6ada35ba("plane_hangar_goal_vol_rear_2", "targetname");
	namespace_84970cc4::function_966ecb29(var_a2da570f, &function_fb6ce428, var_c5fb606f, var_53f3f134, var_79f66b9d);
	if(level.var_2395e945.size > 2)
	{
		var_e39e4320 = namespace_2f06d687::function_22356ba7("sp_plane_hangar_initial_left", &function_4514b4cf);
		var_48c65824 = function_6ada35ba("plane_hangar_goal_vol_left_1", "targetname");
		var_bacdc75f = function_6ada35ba("plane_hangar_goal_vol_left_2", "targetname");
		var_94cb4cf6 = function_6ada35ba("plane_hangar_goal_vol_rear_2", "targetname");
		namespace_84970cc4::function_966ecb29(var_e39e4320, &function_fb6ce428, var_48c65824, var_bacdc75f, var_94cb4cf6);
	}
	level thread function_8f45c05e();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_2af9c6c4);
	namespace_2f06d687::function_2b37a3c9("catwalk_battle_enemy_wave2", "targetname", &function_147616e2);
	level namespace_ad23e503::function_1ab5ebec("alert_plane_hangar_enemies");
	namespace_9f824288::function_5d2cdd99();
	namespace_d5067552::function_bae40a28("catwalk_enemy_wave2");
	level thread function_2810938e();
}

/*
	Name: function_4514b4cf
	Namespace: namespace_d51ba4
	Checksum: 0x25D4E8F3
	Offset: 0x26A0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_4514b4cf()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 16;
	self function_169cc712(self.var_722885f3, 1);
	self function_76aa5b30(level.var_7f246cd7, 1);
	level.var_7f246cd7 function_76aa5b30(self, 1);
	level namespace_ad23e503::function_1ab5ebec("plane_hangar_enemies_fallback1");
	wait(5);
	self function_76aa5b30(level.var_7f246cd7, 0);
	level.var_7f246cd7 function_76aa5b30(self, 0);
}

/*
	Name: function_8f45c05e
	Namespace: namespace_d51ba4
	Checksum: 0x87FB2DCB
	Offset: 0x2790
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_8f45c05e()
{
	level waittill("hash_94f1877f");
	level namespace_ad23e503::function_74d6b22f("alert_plane_hangar_enemies");
}

/*
	Name: function_2af9c6c4
	Namespace: namespace_d51ba4
	Checksum: 0x3AD81D57
	Offset: 0x27C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_2af9c6c4()
{
	self waittill("hash_aa1618b0");
	level namespace_ad23e503::function_74d6b22f("alert_plane_hangar_enemies");
}

/*
	Name: function_fb6ce428
	Namespace: namespace_d51ba4
	Checksum: 0xA8F46499
	Offset: 0x2800
	Size: 0x18B
	Parameters: 3
	Flags: None
*/
function function_fb6ce428(var_3cee21ba, var_16eba751, var_f0e92ce8)
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_169cc712(self.var_722885f3);
	level namespace_ad23e503::function_1ab5ebec("alert_plane_hangar_enemies");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self function_169cc712(var_3cee21ba);
	level namespace_ad23e503::function_1ab5ebec("plane_hangar_enemies_fallback1");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_169cc712(var_16eba751);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(0);
	level namespace_ad23e503::function_1ab5ebec("plane_hangar_enemies_fallback2");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_169cc712(var_f0e92ce8);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_147616e2
	Namespace: namespace_d51ba4
	Checksum: 0xB97CF20E
	Offset: 0x2998
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_147616e2()
{
	self endon("hash_128f8789");
	var_5136eb95 = function_6ada35ba("plane_hangar_goal_vol_rear_1", "targetname");
	var_773965fe = function_6ada35ba("plane_hangar_goal_vol_rear_2", "targetname");
	self function_169cc712(var_5136eb95);
	level namespace_ad23e503::function_1ab5ebec("plane_hangar_enemies_fallback2");
	self function_169cc712(var_773965fe);
}

/*
	Name: function_c9e0c14b
	Namespace: namespace_d51ba4
	Checksum: 0x123BB60D
	Offset: 0x2A60
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_c9e0c14b()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_169cc712(self.var_722885f3);
	self.var_7dfaf62 = 16;
	level namespace_ad23e503::function_1ab5ebec("alert_plane_hangar_enemies");
	self namespace_d84e54db::function_b4f5e3b9(0);
	var_bd827604 = namespace_14b42b8a::function_7922262b("plane_hangar_window", "targetname");
	var_6c9f55e = namespace_82b91a51::function_fa8a28f1(var_bd827604.var_722885f3, "allies");
	self namespace_d84e54db::function_d104c596("normal", var_6c9f55e, undefined, 5);
	var_c5fb606f = function_6ada35ba("plane_hangar_goal_vol_right_1", "targetname");
	var_53f3f134 = function_6ada35ba("plane_hangar_goal_vol_right_2", "targetname");
	var_79f66b9d = function_6ada35ba("plane_hangar_goal_vol_right_3", "targetname");
	self function_fb6ce428(var_c5fb606f, var_53f3f134, var_79f66b9d);
}

/*
	Name: function_55a0215c
	Namespace: namespace_d51ba4
	Checksum: 0xEACD336A
	Offset: 0x2C20
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_55a0215c()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_169cc712(self.var_722885f3, 1);
	level namespace_ad23e503::function_1ab5ebec("move_catwalk_enemies");
	var_96ee9e5d = function_b4cb3503(self.var_caae374e, "targetname");
	self function_169cc712(var_96ee9e5d, 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_4ee77dbb
	Namespace: namespace_d51ba4
	Checksum: 0xBF01E4A
	Offset: 0x2CF8
	Size: 0xBB
	Parameters: 3
	Flags: None
*/
function function_4ee77dbb(var_aa87ada2, var_4be20d44, var_b3db42a9)
{
	var_402c598a = var_aa87ada2 namespace_96fa87af::function_ad4ec07a(var_4be20d44);
	if(isdefined(var_402c598a))
	{
		var_402c598a thread namespace_96fa87af::function_dca9dba2();
		var_402c598a thread function_4514b4cf();
		if(var_b3db42a9.size == 3)
		{
			var_402c598a thread function_fb6ce428(var_b3db42a9[0], var_b3db42a9[1], var_b3db42a9[2]);
		}
	}
}

/*
	Name: function_30b7d0f9
	Namespace: namespace_d51ba4
	Checksum: 0x9FE58D83
	Offset: 0x2DC0
	Size: 0x353
	Parameters: 0
	Flags: None
*/
function function_30b7d0f9()
{
	var_c2777dd9 = "p7_fxanim_cp_prologue_hangar_doors_03_bundle";
	level thread namespace_cc27597::function_c35e6aab(var_c2777dd9);
	level namespace_ad23e503::function_1ab5ebec("spawn_plane_hangar_enemies");
	var_edd777e6 = namespace_96fa87af::function_7387a40a("plane_hangar_jeep");
	var_a9993ca4 = namespace_96fa87af::function_7387a40a("plane_hangar_flatbed");
	var_edd777e6 namespace_96fa87af::function_b6b0ca71(var_edd777e6.var_b07228b6);
	var_a9993ca4 namespace_96fa87af::function_b6b0ca71(var_a9993ca4.var_b07228b6);
	level namespace_ad23e503::function_1ab5ebec("move_plane_hangar_vehicles");
	var_edd777e6 thread namespace_96fa87af::function_ff72658f();
	var_edd777e6 thread function_28d41b1d();
	var_edd777e6 function_921a1574("evt_hangar_jeep_driveaway");
	wait(1);
	var_280d5f68 = function_6ada35ba("plane_hangar_gate_l", "targetname");
	var_3c301126 = function_6ada35ba("plane_hangar_gate_r", "targetname");
	var_9c7511b4 = namespace_14b42b8a::function_7922262b("plane_hangar_gate_move_pos_l", "targetname");
	var_205c499a = namespace_14b42b8a::function_7922262b("plane_hangar_gate_move_pos_r", "targetname");
	level thread function_a8cd091b(0, var_280d5f68, var_3c301126, var_9c7511b4, var_205c499a, var_c2777dd9, "umbra_gate_hangar_03");
	var_a9993ca4 thread namespace_96fa87af::function_ff72658f();
	var_a9993ca4 function_921a1574("evt_hangar_truck_drivestop");
	var_a9993ca4 waittill("hash_6cf6ac7e");
	var_9b59c867[0] = function_6ada35ba("plane_hangar_goal_vol_right_1", "targetname");
	var_9b59c867[1] = function_6ada35ba("plane_hangar_goal_vol_right_2", "targetname");
	var_9b59c867[2] = function_6ada35ba("plane_hangar_goal_vol_right_3", "targetname");
	function_4ee77dbb(var_a9993ca4, "driver", var_9b59c867);
	function_4ee77dbb(var_a9993ca4, "passenger1", var_9b59c867);
}

/*
	Name: function_28d41b1d
	Namespace: namespace_d51ba4
	Checksum: 0xD81BA7E5
	Offset: 0x3120
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_28d41b1d()
{
	self endon("hash_128f8789");
	self waittill("hash_6cf6ac7e");
	var_44762fa4 = self namespace_96fa87af::function_ad4ec07a("driver");
	var_402c598a = self namespace_96fa87af::function_ad4ec07a("passenger1");
	var_44762fa4 function_dc8c8404();
	var_402c598a function_dc8c8404();
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_2810938e
	Namespace: namespace_d51ba4
	Checksum: 0x72C6D307
	Offset: 0x3210
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_2810938e()
{
	self endon("hash_d11bfa2f");
	level namespace_ad23e503::function_1ab5ebec("alert_plane_hangar_enemies");
	level thread function_ed437e33();
	level namespace_ad23e503::function_1ab5ebec("plane_hangar_enemies_fallback3");
	namespace_d5067552::function_2992720d("catwalk_enemy_wave2");
	var_bfff0f24 = function_99201f25("plane_hangar_enemies", "script_noteworthy", 1);
	var_1d61ec5e = namespace_14b42b8a::function_7922262b("plane_to_vtol_fallback_origin", "targetname");
	var_f6f0207c = namespace_84970cc4::function_4219028b(var_1d61ec5e.var_722885f3, var_bfff0f24, undefined, 10);
	level thread function_19352a82(var_f6f0207c);
	var_46b9d820 = function_6ada35ba("trig_vtol_goal_vol_rear", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_f6f0207c.size; var_c957f6b6++)
	{
		var_f6f0207c[var_c957f6b6] function_169cc712(var_46b9d820);
	}
	function_e966c1c0(1);
	wait(5);
	namespace_4dbf3ae3::function_42e87952("plane_hangar_empty_color_allies", "targetname");
}

/*
	Name: function_ed437e33
	Namespace: namespace_d51ba4
	Checksum: 0x248EA2A7
	Offset: 0x3408
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ed437e33()
{
	namespace_2f06d687::function_45679edd("aig_plane_hangar_enemies_main", 5);
	level namespace_ad23e503::function_74d6b22f("plane_hangar_enemies_fallback3");
}

/*
	Name: function_f1b38a6e
	Namespace: namespace_d51ba4
	Checksum: 0x8C3BCF3
	Offset: 0x3460
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_f1b38a6e(var_234899cf)
{
	var_e70be898 = self.var_722885f3;
	wait(10);
	if(function_cb3d1c9b(self.var_722885f3, var_e70be898) < 262144)
	{
		var_9de10fe3 = function_b4cb3503(var_234899cf, "targetname");
		self function_9869ab67(var_9de10fe3.var_722885f3);
	}
}

/*
	Name: function_e92ad8ae
	Namespace: namespace_d51ba4
	Checksum: 0x17B2896E
	Offset: 0x3508
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_e92ad8ae()
{
	level.var_9db406db namespace_d84e54db::function_ceb883cd("vignette_mode", "off");
	level.var_4d5a4697 namespace_d84e54db::function_ceb883cd("vignette_mode", "off");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("hangar_move_friendlies_1", "targetname");
	level.var_9db406db thread function_f1b38a6e("node_cyber_khalil");
	level.var_4d5a4697 thread function_f1b38a6e("node_cyber_minister");
	level namespace_ad23e503::function_1ab5ebec("trig_hangar01_enemies");
	wait(4.5);
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_9db406db namespace_6f7b2095::function_54bdb053();
	level.var_4d5a4697 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 thread function_3683e3dd("cin_pro_10_01_hangar_vign_traverse_hendricks_start_idle");
	wait(1);
	level.var_9db406db thread function_7ae90dbb("cin_pro_10_01_hangar_vign_traverse_khalil_start_idle");
	wait(2.5);
	level.var_4d5a4697 thread function_7a87693b("cin_pro_10_01_hangar_vign_traverse_minister_start_idle");
	level thread function_bae363ed();
	level namespace_ad23e503::function_1ab5ebec("pallas_jump_inside_catwalk");
	if(level.var_2395e945.size == 1)
	{
		level thread function_e6515192();
	}
	function_cf13969b();
	level waittill("hash_fdcdf647");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("t_hangar02_move_allies", undefined, undefined, 0);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level thread namespace_cc27597::function_43718187("cin_pro_10_01_hangar_vign_traverse_khalil_end_idle");
	level thread namespace_cc27597::function_43718187("cin_pro_10_01_hangar_vign_traverse_minister_end_idle");
	wait(3);
	level thread namespace_cc27597::function_fcf56ab5("cin_pro_10_01_hangar_vign_traverse_khalil_end_idle");
	level thread namespace_cc27597::function_fcf56ab5("cin_pro_10_01_hangar_vign_traverse_minister_end_idle");
	level.var_9db406db namespace_6f7b2095::function_bae40a28();
	level.var_4d5a4697 namespace_82b91a51::function_67520c6a(2, undefined, &namespace_6f7b2095::function_bae40a28);
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(0);
	level.var_9db406db namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_3683e3dd
	Namespace: namespace_d51ba4
	Checksum: 0x52F57F5A
	Offset: 0x38A0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_3683e3dd(var_c2777dd9)
{
	self namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
	var_9d01e85c = function_b4cb3503("hendricks_traversal_goal_1", "targetname");
	self function_169cc712(var_9d01e85c, 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("disablearrivals", 0);
	level thread namespace_cc27597::function_43718187(var_c2777dd9);
	level waittill("hash_9aebec3d");
	level namespace_ad23e503::function_74d6b22f("plane_hangar_hendricks_ready_flag");
}

/*
	Name: function_7ae90dbb
	Namespace: namespace_d51ba4
	Checksum: 0xC444C969
	Offset: 0x3988
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_7ae90dbb(var_c2777dd9)
{
	self namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
	var_9d01e85c = function_b4cb3503("khalil_traversal_goal_1", "targetname");
	self function_169cc712(var_9d01e85c, 1);
	self waittill("hash_41d1aaf0");
	var_f095797 = function_b4cb3503("khalil_traversal_goal_2", "targetname");
	self function_169cc712(var_f095797, 1);
	self waittill("hash_41d1aaf0");
	var_e906dd2e = function_b4cb3503("khalil_traversal_goal_3", "targetname");
	self function_169cc712(var_e906dd2e, 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("disablearrivals", 0);
	level thread namespace_cc27597::function_43718187(var_c2777dd9);
	level waittill("hash_bdaa4f6d");
	level namespace_ad23e503::function_74d6b22f("plane_hangar_khalil_ready_flag");
}

/*
	Name: function_7a87693b
	Namespace: namespace_d51ba4
	Checksum: 0xAC6C9832
	Offset: 0x3B20
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_7a87693b(var_c2777dd9)
{
	self namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
	var_9d01e85c = function_b4cb3503("minister_traversal_goal_1", "targetname");
	self function_169cc712(var_9d01e85c, 1);
	self waittill("hash_41d1aaf0");
	var_f095797 = function_b4cb3503("minister_traversal_goal_2", "targetname");
	self function_169cc712(var_f095797, 1);
	self waittill("hash_41d1aaf0");
	var_e906dd2e = function_b4cb3503("minister_traversal_goal_3", "targetname");
	self function_169cc712(var_e906dd2e, 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("disablearrivals", 0);
	level thread namespace_cc27597::function_43718187(var_c2777dd9);
	level waittill("hash_b0db1711");
	level namespace_ad23e503::function_74d6b22f("plane_hangar_minister_ready_flag");
}

/*
	Name: function_cf13969b
	Namespace: namespace_d51ba4
	Checksum: 0xAAC4A37C
	Offset: 0x3CB8
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_cf13969b()
{
	level endon("hash_e4850787");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("plane_hangar_hendricks_ready_flag", "plane_hangar_khalil_ready_flag", "plane_hangar_minister_ready_flag"));
	level namespace_cc27597::function_43718187("cin_pro_10_01_hangar_vign_traverse_hendricks_khalil_minister_move_01");
	level notify("hash_f38af553");
}

/*
	Name: function_e6515192
	Namespace: namespace_d51ba4
	Checksum: 0x5D23FF7E
	Offset: 0x3D40
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_e6515192()
{
	level endon("hash_f38af553");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("plane_hangar_hendricks_ready_flag", "plane_hangar_khalil_ready_flag", "plane_hangar_minister_ready_flag"));
	level namespace_ad23e503::function_1ab5ebec("expedite_hangar_entrance");
	var_149cda0 = namespace_14b42b8a::function_7922262b("s_hangar_door", "targetname");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_82b91a51::function_b6ecb7d7, var_149cda0.var_722885f3);
	level notify("hash_e4850787");
	if(!namespace_cc27597::function_367f8966("cin_pro_10_01_hangar_vign_traverse_hendricks_khalil_minister_move_01"))
	{
		level thread namespace_cc27597::function_5c143f59("cin_pro_10_01_hangar_vign_traverse_hendricks_khalil_minister_move_01", undefined, undefined, 0.65);
	}
	wait(0.1);
	level.var_2fd26037 function_470f7e4c();
}

/*
	Name: function_bae363ed
	Namespace: namespace_d51ba4
	Checksum: 0x84312C58
	Offset: 0x3E88
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_bae363ed()
{
	level waittill("hash_e4850787");
	var_280d5f68 = function_6ada35ba("hangar02_door_left", "targetname");
	var_3c301126 = function_6ada35ba("hangar02_door_right", "targetname");
	var_1f6ed387 = function_6ada35ba("plane_hangar_side_door_left", "targetname");
	var_fcd5dfa1 = function_6ada35ba("plane_hangar_side_door_right", "targetname");
	var_280d5f68 function_a96a2721(var_1f6ed387.var_722885f3, 0.5);
	var_3c301126 function_a96a2721(var_fcd5dfa1.var_722885f3, 0.5);
}

/*
	Name: function_590acc37
	Namespace: namespace_d51ba4
	Checksum: 0xAA0A571F
	Offset: 0x3FB8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_590acc37()
{
	level namespace_ad23e503::function_1ab5ebec("trig_hangar01_enemies");
	var_8786c160 = function_d35375b8("hangar01_enemy", "script_aigroup");
	var_7b3a5649 = namespace_2f06d687::function_22356ba7(var_8786c160);
	namespace_84970cc4::function_966ecb29(var_7b3a5649, &function_211f2948);
	namespace_84970cc4::function_966ecb29(var_7b3a5649, &function_b5a28004);
	level thread function_c218ce54();
	level namespace_cc27597::function_43718187("cin_pro_10_01_hanger_vign_sensory_overload_start");
	level thread namespace_d0ef8521::function_45d1556("hangar_breadcrumb_2");
	level thread function_25e65862();
}

/*
	Name: function_c218ce54
	Namespace: namespace_d51ba4
	Checksum: 0x49CB639C
	Offset: 0x40E8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_c218ce54()
{
	level waittill("hash_736529ea");
	var_7317cd21 = function_6ada35ba("stun_cin_blocker", "targetname");
	var_7317cd21 function_dc8c8404();
}

/*
	Name: function_25e65862
	Namespace: namespace_d51ba4
	Checksum: 0xA88A998E
	Offset: 0x4148
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_25e65862()
{
	wait(3);
	level.var_7f246cd7 thread namespace_71b8dba1::function_81141386("diaz_move_into_the_next_h_0");
}

/*
	Name: function_b5a28004
	Namespace: namespace_d51ba4
	Checksum: 0x257D7202
	Offset: 0x4180
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b5a28004()
{
	self endon("hash_128f8789");
	wait(30);
	self function_2992720d();
}

/*
	Name: function_211f2948
	Namespace: namespace_d51ba4
	Checksum: 0xF65392BF
	Offset: 0x41B8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_211f2948()
{
	self function_a9dcd549(8192);
	self.var_84edac03 = 1;
	self function_e7117eb1(15);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self thread function_fd0a6295();
	self namespace_175490fb::function_59965309("cybercom_fireflyswarm");
	self waittill("hash_128f8789");
	self function_d7a0a9d8(1);
}

/*
	Name: function_fd0a6295
	Namespace: namespace_d51ba4
	Checksum: 0xA88513F9
	Offset: 0x4298
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_fd0a6295()
{
	self endon("hash_128f8789");
	self waittill("hash_b19658ba");
	self notify("hash_b64936fe", "reactSensory");
	self function_921a1574("gdt_sensory_feedback_start");
	self function_c2931a36("gdt_sensory_feedback_lp_upg");
}

/*
	Name: function_aaf033f6
	Namespace: namespace_d51ba4
	Checksum: 0x2B8D30
	Offset: 0x4310
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_aaf033f6()
{
	self endon("hash_128f8789");
	self waittill("hash_5f79991d");
	var_be53b69c = function_b4cb3503("pallas_hangar_anim_start", "targetname");
	self function_169cc712(var_be53b69c, 1);
}

/*
	Name: function_644150a
	Namespace: namespace_d51ba4
	Checksum: 0xA73C1E42
	Offset: 0x4380
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_644150a()
{
	var_1c4260d1 = function_9b7fda5e("script_origin", (7553, 1157, 207));
	var_1c4260d1 function_c2931a36("evt_sensory_dudes_walla", 2);
	level namespace_ad23e503::function_1ab5ebec("trig_hangar01_enemies");
	wait(3);
	var_1c4260d1 function_dc8c8404();
}

/*
	Name: function_e3521c43
	Namespace: namespace_d51ba4
	Checksum: 0xDBF60E50
	Offset: 0x4428
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_e3521c43()
{
	self namespace_6f7b2095::function_54bdb053();
	self thread function_aaf033f6();
	level.var_7f246cd7 function_590acc37();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	level thread function_e0540704();
	level namespace_ad23e503::function_1ab5ebec("pallas_jump_inside_catwalk");
	level namespace_ad23e503::function_74d6b22f("spawn_plane_hangar_enemies");
	level notify("hash_28b81543");
	level thread function_507f685c();
	self namespace_6f7b2095::function_1b497663("o");
	level thread function_d11463aa();
	level namespace_cc27597::function_43718187("cin_pro_10_01_hangar_vign_breakwindow");
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	level thread namespace_cc27597::function_43718187("cin_pro_10_04_hangar_vign_leap_new_run_across");
	var_277f35c0 = function_b4cb3503("pallas_temp_catwalk_end", "targetname");
	self function_169cc712(var_277f35c0, 1);
	self waittill("hash_41d1aaf0");
	self thread function_ee8e1349();
	wait(0.5);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self function_169cc712(var_277f35c0, 1);
	level thread function_c8af325f();
	level namespace_ad23e503::function_1ab5ebec("pallas_jump_to_window");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	level thread namespace_cc27597::function_8f9f34e0("cin_pro_10_04_hangar_vign_leap_new_wing2window", &function_84a7642b, "done");
	level notify("hash_35d2241b");
	level namespace_ad23e503::function_1ab5ebec("fireflies_used");
	self thread namespace_cc27597::function_43718187("cin_pro_10_04_hangar_vign_leap_new_wing2window");
	level waittill("hash_d4a94cc6");
	level namespace_71e9cb84::function_74d6b22f("diaz_break_1", 2);
}

/*
	Name: function_d11463aa
	Namespace: namespace_d51ba4
	Checksum: 0x2E2F1EE5
	Offset: 0x47B0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d11463aa()
{
	level waittill("hash_94f1877f");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_hangar_window_rip_bundle");
	level waittill("hash_cab72ab7");
	var_61ee9c31 = function_6ada35ba("hangar_glass_window", "targetname");
	var_61ee9c31 function_dc8c8404();
}

/*
	Name: function_ee8e1349
	Namespace: namespace_d51ba4
	Checksum: 0xA2DE58E8
	Offset: 0x4838
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_ee8e1349()
{
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_b81dfc22);
	level thread function_2d8450d7();
	level waittill("hash_35d2241b");
	level thread function_cc32afb9();
	var_d3f6be49 = function_99201f25("catwalk_window_enemies_ai", "targetname");
	if(var_d3f6be49.size > 0)
	{
		self namespace_175490fb::function_d240e350("cybercom_fireflyswarm", var_d3f6be49);
	}
	else
	{
		var_78e3eaf1 = function_99201f25("plane_hangar_enemies", "script_noteworthy", 1);
		var_262dcd37 = namespace_14b42b8a::function_7922262b("plane_to_vtol_fallback_origin", "targetname");
		var_e2ceaf11 = namespace_84970cc4::function_4219028b(var_262dcd37.var_722885f3, var_78e3eaf1, undefined, 3);
		self namespace_175490fb::function_d240e350("cybercom_fireflyswarm", var_e2ceaf11);
	}
	level namespace_ad23e503::function_74d6b22f("fireflies_used");
}

/*
	Name: function_cc32afb9
	Namespace: namespace_d51ba4
	Checksum: 0xAEBA9423
	Offset: 0x49E0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_cc32afb9()
{
	level endon("hash_3e0bebe1");
	level.var_95790224 = [];
	while(1)
	{
		level waittill("hash_61df3d1c", var_284c5bbb);
		level.var_95790224[level.var_95790224.size] = var_284c5bbb;
		if(var_284c5bbb.var_5e36fd2e == self)
		{
			var_284c5bbb.var_255b9315 = 1;
		}
	}
}

/*
	Name: function_b81dfc22
	Namespace: namespace_d51ba4
	Checksum: 0x8D97B0C3
	Offset: 0x4A60
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_b81dfc22()
{
	self endon("hash_128f8789");
	wait(0.5);
	self namespace_82b91a51::function_3546be91(level.var_7f246cd7.var_722885f3 + VectorScale((0, 0, 1), 50), 30);
	level notify("hash_35d2241b");
}

/*
	Name: function_2d8450d7
	Namespace: namespace_d51ba4
	Checksum: 0xCFA1E76C
	Offset: 0x4AD0
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_2d8450d7()
{
	wait(15);
	level notify("hash_35d2241b");
}

/*
	Name: function_84a7642b
	Namespace: namespace_d51ba4
	Checksum: 0x7E1C158D
	Offset: 0x4AF0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_84a7642b(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("pallas_at_window");
}

/*
	Name: function_e0540704
	Namespace: namespace_d51ba4
	Checksum: 0x665BB58A
	Offset: 0x4B28
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_e0540704()
{
	level endon("hash_28b81543");
	self waittill("hash_41d1aaf0");
	wait(4);
	level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_pick_up_the_damn_pac_0");
	wait(4);
	level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_you_wanna_get_the_mi_0");
	wait(5);
	level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_we_gotta_move_to_exf_0");
}

/*
	Name: function_507f685c
	Namespace: namespace_d51ba4
	Checksum: 0x9387BDBF
	Offset: 0x4BC8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_507f685c()
{
	level waittill("hash_bf327f23");
	level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_on_my_position_let_0");
	level namespace_ad23e503::function_1ab5ebec("move_plane_hangar_enemies");
	var_49b32118 = function_6ada35ba("pa_hangar_dialog", "targetname");
	var_49b32118 namespace_71b8dba1::function_81141386("nrcp_infiltrators_moving_0", 0, 1);
}

/*
	Name: function_c8af325f
	Namespace: namespace_d51ba4
	Checksum: 0x73CBA09C
	Offset: 0x4C78
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c8af325f()
{
	level namespace_ad23e503::function_1ab5ebec("plane_hangar_enemies_fallback3");
	level namespace_ad23e503::function_74d6b22f("pallas_jump_to_window");
}

/*
	Name: function_3dc00a0b
	Namespace: namespace_d51ba4
	Checksum: 0x22E7190C
	Offset: 0x4CC8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3dc00a0b()
{
	var_377a9c22 = function_6ada35ba("cyber_soldiers_hangar_target", "targetname");
	self thread namespace_d84e54db::function_d104c596("normal", var_377a9c22, undefined, 100, 10000);
}

/*
	Name: function_f1dda14f
	Namespace: namespace_d51ba4
	Checksum: 0x74B6E677
	Offset: 0x4D30
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_f1dda14f(var_bf0873ca)
{
	var_90ca1fdd = function_b4cb3503(var_bf0873ca, "targetname");
	self function_9869ab67(var_90ca1fdd.var_722885f3, var_90ca1fdd.var_6ab6f4fd, 1);
}

/*
	Name: function_78f61bf2
	Namespace: namespace_d51ba4
	Checksum: 0x8B526CBE
	Offset: 0x4DA8
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_78f61bf2()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	if(isdefined(self.var_b07228b6))
	{
		var_4345e897 = self.var_7dfaf62;
		var_48b27c8f = function_b4cb3503(self.var_b07228b6, "targetname");
		if(isdefined(var_48b27c8f))
		{
			self namespace_d84e54db::function_19e98020(var_48b27c8f, 64, 1, undefined, 1);
			self namespace_d84e54db::function_b4f5e3b9(0);
			self namespace_d84e54db::function_c9e45d52(0);
		}
		if(isdefined(self.var_f8456b37))
		{
			self.var_7dfaf62 = self.var_f8456b37;
		}
	}
}

/*
	Name: function_33ec51ea
	Namespace: namespace_d51ba4
	Checksum: 0xBE77485A
	Offset: 0x4EB8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_33ec51ea()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 16;
	if(isdefined(self.var_b07228b6))
	{
		var_90ca1fdd = function_b4cb3503(self.var_b07228b6, "targetname");
		self function_169cc712(var_90ca1fdd, 1);
	}
}

/*
	Name: function_6ad5d018
	Namespace: namespace_d51ba4
	Checksum: 0xF2EA3269
	Offset: 0x4F38
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_6ad5d018()
{
	level.var_92d245e2 thread function_47f306da("prometheus_hangar_goal");
	level.var_f58c9f31 thread function_47f306da("theia_hangar_goal");
	level.var_5d4087a6 thread function_47f306da("hyperion_hangar_goal");
	level thread function_90b59893();
	namespace_2f06d687::function_2b37a3c9("hangar_ambient_ai", "script_noteworthy", &function_5f6c69c0);
	namespace_d5067552::function_bae40a28("sm_hangar_ambient_combat");
	level thread function_1053dd4e();
	namespace_d5067552::function_72e3dd35("sm_hangar_ambient_combat");
	level notify("hash_bf48d580");
}

/*
	Name: function_1053dd4e
	Namespace: namespace_d51ba4
	Checksum: 0x802F2782
	Offset: 0x5048
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_1053dd4e()
{
	self endon("hash_bf48d580");
	level namespace_ad23e503::function_1ab5ebec("side_cyberbattle_go");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_1232fdd1);
	level waittill("hash_8f285b1d");
	wait(1);
	var_56dd1913 = namespace_2f06d687::function_289e6fd1("hangar_ambient_ai");
	if(var_56dd1913.size > 0)
	{
		level.var_92d245e2 namespace_175490fb::function_d240e350("cybercom_immolation", var_56dd1913);
	}
	wait(3);
	level.var_f58c9f31 namespace_175490fb::function_d240e350("cybercom_smokescreen");
	wait(4);
	var_56dd1913 = namespace_2f06d687::function_289e6fd1("hangar_ambient_ai");
	if(var_56dd1913.size > 0)
	{
		level.var_5d4087a6 namespace_175490fb::function_d240e350("cybercom_immolation", var_56dd1913);
	}
}

/*
	Name: function_1232fdd1
	Namespace: namespace_d51ba4
	Checksum: 0x8426D243
	Offset: 0x5190
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_1232fdd1()
{
	self endon("hash_8f285b1d");
	wait(0.5);
	self namespace_82b91a51::function_3546be91(level.var_f58c9f31.var_722885f3 + VectorScale((0, 0, 1), 64), 90, 1);
	level notify("hash_8f285b1d");
}

/*
	Name: function_90b59893
	Namespace: namespace_d51ba4
	Checksum: 0xACE1865B
	Offset: 0x5200
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_90b59893()
{
	level endon("hash_bf48d580");
	var_8164b942 = function_99201f25("origin_ambient_grenade", "targetname");
	while(1)
	{
		var_5955d439 = function_dc99997a(4, 8);
		wait(var_5955d439);
		var_b311d2b0 = function_dc99997a(0, var_8164b942.size);
		level.var_2fd26037 function_ecf27a98(function_c4d5ec1f("frag_grenade"), var_8164b942[var_b311d2b0].var_722885f3, (0, 0, 0), 0.05);
	}
}

/*
	Name: function_47f306da
	Namespace: namespace_d51ba4
	Checksum: 0xA35DA687
	Offset: 0x52F8
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_47f306da(var_5b01a37b, var_74cd64bc)
{
	var_277f35c0 = function_b4cb3503(var_5b01a37b, "targetname");
	self function_9869ab67(var_277f35c0.var_722885f3, var_277f35c0.var_6ab6f4fd, 1);
	self function_169cc712(var_277f35c0);
	wait(0.5);
	self function_48f26766();
	self namespace_dccf27b3::function_9110a277(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	var_f7c3e69a = function_b8494651("axis", "axis");
	foreach(var_d84e54db in var_f7c3e69a)
	{
		if(var_d84e54db.var_caae374e !== "hangar_ambient_ai")
		{
			self function_76aa5b30(var_d84e54db, 1);
		}
	}
	self.var_2a48f7ab = 0.5;
	level waittill("hash_bf48d580");
	var_96ee9e5d = function_b4cb3503(var_277f35c0.var_b07228b6, "targetname");
	self function_169cc712(var_96ee9e5d);
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
}

/*
	Name: function_5f6c69c0
	Namespace: namespace_d51ba4
	Checksum: 0x53DB373D
	Offset: 0x5558
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_5f6c69c0()
{
	self.var_2a48f7ab = 1;
	self.var_7dfaf62 = 16;
	self.var_38188e74 = 1;
	var_f7c3e69a = function_b8494651("allies", "allies");
	foreach(var_d84e54db in var_f7c3e69a)
	{
		if(isdefined(var_d84e54db.var_170527fb) && var_d84e54db.var_170527fb != "theia_ai" && var_d84e54db.var_170527fb != "hyperion_ai" && var_d84e54db.var_170527fb != "prometheus_ai")
		{
			self function_76aa5b30(var_d84e54db, 1);
		}
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		self function_76aa5b30(var_5dc5e20a, 1);
	}
	var_257bbc01 = function_6ada35ba("t_ambiant_hangar_goal_volume", "targetname");
	self function_169cc712(var_257bbc01);
}

/*
	Name: function_de617dc2
	Namespace: namespace_d51ba4
	Checksum: 0xA6F9E0E1
	Offset: 0x5788
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_de617dc2()
{
	var_5948b3df = function_6ada35ba("wing_r", "targetname");
	while(1)
	{
		var_5948b3df waittill("hash_4dbf3ae3");
		namespace_80983c42::function_80983c42("fx_exploder_wing_bullet01");
		namespace_80983c42::function_80983c42("fx_exploder_wing_bullet02");
	}
}

/*
	Name: function_31427ccd
	Namespace: namespace_d51ba4
	Checksum: 0x2459DAD1
	Offset: 0x5808
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_31427ccd()
{
	level thread namespace_21b2c1f2::function_46333a8a();
	function_99cdcfac();
	function_71e6db7();
	level thread function_8b7b1958();
}

/*
	Name: function_99cdcfac
	Namespace: namespace_d51ba4
	Checksum: 0xF0D05DC7
	Offset: 0x5868
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_99cdcfac()
{
	level namespace_ad23e503::function_c35e6aab("door_close");
	level namespace_ad23e503::function_c35e6aab("hend_grenade_timeout");
	level namespace_ad23e503::function_c35e6aab("vtol_hit");
}

/*
	Name: function_71e6db7
	Namespace: namespace_d51ba4
	Checksum: 0x6BEB86AD
	Offset: 0x58D8
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function function_71e6db7()
{
	level.var_92d245e2 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_92d245e2 namespace_d84e54db::function_c9e45d52(1);
	level.var_92d245e2.var_7dfaf62 = 16;
	level.var_7f246cd7.var_7dfaf62 = 16;
	level.var_7f246cd7.var_daf3a648 = 0;
	level.var_7f246cd7 namespace_6f7b2095::function_1b497663("o");
	level.var_2fd26037.var_7dfaf62 = 16;
	level.var_2fd26037.var_daf3a648 = 0;
	level.var_9db406db.var_7dfaf62 = 16;
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_4d5a4697 namespace_d84e54db::function_c9e45d52(1);
	level.var_4d5a4697.var_7dfaf62 = 16;
}

/*
	Name: function_8b7b1958
	Namespace: namespace_d51ba4
	Checksum: 0x28A17C20
	Offset: 0x5A10
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_8b7b1958()
{
	level thread namespace_2cb3876f::function_42da021e("vh_vtol_flyby_b", 50, 100);
	level thread function_4422735b();
	level thread function_8efb9b5c();
	level.var_7f246cd7 thread function_f9196d1d();
	level namespace_ad23e503::function_1ab5ebec("hanger3_battle_event");
	level.var_2fd26037 thread function_414c1d0();
	level.var_2fd26037 thread function_11855253();
	level thread function_9ada4a46();
	level thread function_9ea7f8ae();
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
	level.var_9db406db namespace_d84e54db::function_c9e45d52(1);
	level thread function_55039e89();
	level thread function_e37c0060();
	level waittill("hash_8413e49c");
	level namespace_ad23e503::function_1ab5ebec("hangar_5_bc");
	level thread namespace_d0ef8521::function_45d1556("hangar_breadcrumb_5");
	function_d81a4ec();
	level.var_7f246cd7 namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("vtol_hangar_empty_color_allies", "targetname");
	level thread namespace_21b2c1f2::function_973b77f9();
	level namespace_ad23e503::function_1ab5ebec("hangar3_backdoor");
	function_e966c1c0(0);
	namespace_1d795d47::function_be8adfb8("skipto_vtol_collapse");
}

/*
	Name: function_4422735b
	Namespace: namespace_d51ba4
	Checksum: 0x162E137C
	Offset: 0x5C78
	Size: 0x25D
	Parameters: 0
	Flags: None
*/
function function_4422735b()
{
	var_e4f2f922 = function_6ada35ba("vtol_collapse_door_open", "targetname");
	var_634d0729 = function_84970cc4(level.var_4d5a4697, level.var_2fd26037, level.var_9db406db);
	level thread namespace_2cb3876f::function_21f52196("vtol_collapse_doors", var_e4f2f922);
	level thread namespace_2cb3876f::function_2e61b3e8("vtol_collapse_doors", var_e4f2f922, var_634d0729);
	while(!namespace_2cb3876f::function_cdd726fb("vtol_collapse_doors"))
	{
		wait(0.1);
	}
	var_ac769486 = function_6ada35ba("clip_player_vtol_collapse_backtrack_doorway", "targetname");
	var_ac769486 function_8bdea13c(100 * -1, 0.05);
	var_58576bff = function_6ada35ba("vtol_hangar_in_l", "targetname");
	var_bbc00d9a = function_6ada35ba("vtol_hangar_in_r", "targetname");
	var_cab7ecc2 = function_298b8148(var_58576bff.var_6ab6f4fd);
	var_58576bff function_a96a2721(var_58576bff.var_722885f3 - var_cab7ecc2 * 50, 0.5);
	var_bbc00d9a function_a96a2721(var_bbc00d9a.var_722885f3 + var_cab7ecc2 * 44, 0.5);
	level notify("hash_3e92d474");
	level notify("hash_e3977daa");
}

/*
	Name: function_d43c2e1a
	Namespace: namespace_d51ba4
	Checksum: 0x67D68B1
	Offset: 0x5EE0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d43c2e1a()
{
	level endon("hash_128f8789");
	level waittill("hash_cb897bce");
	level thread namespace_71e9cb84::function_74d6b22f("vtol_missile_explode_trash_fx", 1);
}

/*
	Name: function_9ea7f8ae
	Namespace: namespace_d51ba4
	Checksum: 0x6707E3A5
	Offset: 0x5F28
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_9ea7f8ae()
{
	var_fa1b3fb2 = function_6ada35ba("trig_dam_vtol_collapse", "targetname");
	var_fa1b3fb2 function_8d63f8d0(0);
	level namespace_ad23e503::function_1ab5ebec("2nd_hangar_apc_in_pos");
	level namespace_ad23e503::function_1ab5ebec("vtol_destroy_obj");
	var_fa1b3fb2 function_8d63f8d0(1);
	var_dfb972a = function_6ada35ba("vtol_hangar_missile_objective", "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_destroy", var_dfb972a.var_722885f3);
	var_fa1b3fb2 namespace_4dbf3ae3::function_1ab5ebec();
	level notify("hash_36ad3c2e");
	level namespace_ad23e503::function_74d6b22f("vtol_hit");
}

/*
	Name: function_414c1d0
	Namespace: namespace_d51ba4
	Checksum: 0x8FE631B7
	Offset: 0x6068
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_414c1d0()
{
	level endon("hash_36ad3c2e");
	var_96ee9e5d = function_b4cb3503("n_hendricks_grenade", "targetname");
	self function_169cc712(var_96ee9e5d);
	self waittill("hash_41d1aaf0");
	self thread function_23e5e896();
	level namespace_ad23e503::function_1ab5ebec("hend_grenade_timeout");
	/#
		function_d52b076d("Dev Block strings are not supported");
	#/
	wait(2);
	level namespace_ad23e503::function_74d6b22f("vtol_hit");
}

/*
	Name: function_23e5e896
	Namespace: namespace_d51ba4
	Checksum: 0xBCCD46C5
	Offset: 0x6148
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_23e5e896()
{
	level endon("hash_36ad3c2e");
	self namespace_71b8dba1::function_81141386("hend_our_weapons_are_no_g_0");
	if(namespace_96fa87af::function_ed0c8cd8(level.var_199de689))
	{
		wait(1);
	}
	else
	{
		level waittill("hash_723b53fc");
	}
	self thread namespace_71b8dba1::function_81141386("hend_we_gotta_bring_down_1", 0.25);
	wait(1);
	level namespace_ad23e503::function_74d6b22f("vtol_destroy_obj");
	wait(7);
	self namespace_71b8dba1::function_81141386("hend_we_ain_t_doing_shit_0");
	wait(5);
	level namespace_ad23e503::function_74d6b22f("hend_grenade_timeout");
}

/*
	Name: function_10ed8bd7
	Namespace: namespace_d51ba4
	Checksum: 0x1B2D1B48
	Offset: 0x6238
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_10ed8bd7()
{
	var_c3adecbb = 0;
	var_638ec873 = GetTime();
	while(1)
	{
		wait(0.5);
		var_c3adecbb = GetTime() - var_638ec873 / 1000;
		if(var_c3adecbb >= 20)
		{
			break;
		}
	}
	level namespace_ad23e503::function_74d6b22f("hend_grenade_timeout");
}

/*
	Name: function_11855253
	Namespace: namespace_d51ba4
	Checksum: 0xE6C53003
	Offset: 0x62C0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_11855253()
{
	self namespace_6f7b2095::function_54bdb053();
	level waittill("hash_8413e49c");
	level thread function_15ce0cb4();
	self namespace_6f7b2095::function_bae40a28();
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	level.var_7f246cd7 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_7f246cd7 namespace_d84e54db::function_c9e45d52(0);
	namespace_4dbf3ae3::function_42e87952("vtol_hendricks_move_up_initial");
}

/*
	Name: function_15ce0cb4
	Namespace: namespace_d51ba4
	Checksum: 0x74408061
	Offset: 0x6398
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_15ce0cb4()
{
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_apc_s_out_of_commiss_0");
}

/*
	Name: function_d418516
	Namespace: namespace_d51ba4
	Checksum: 0xF2CCFDD0
	Offset: 0x63C8
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_d418516(var_c83dc06e)
{
	foreach(var_402c598a in var_c83dc06e.var_d925663e)
	{
		self function_76aa5b30(var_402c598a, 1);
	}
}

/*
	Name: function_55039e89
	Namespace: namespace_d51ba4
	Checksum: 0x9A6293B3
	Offset: 0x6478
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_55039e89()
{
	namespace_2f06d687::function_2b37a3c9("sp_vtol_initial", "targetname", &function_d7dad356);
	namespace_2f06d687::function_2b37a3c9("sp_vtol_initial", "targetname", &namespace_2cb3876f::function_c47ce0e9);
	namespace_2f06d687::function_22356ba7("sp_vtol_initial");
	namespace_2f06d687::function_2b37a3c9("sp_vtol_hangar_sideroom", "targetname", &function_d7dad356);
	namespace_2f06d687::function_2b37a3c9("sp_vtol_hangar_sideroom", "targetname", &namespace_2cb3876f::function_c47ce0e9);
	namespace_2f06d687::function_22356ba7("sp_vtol_hangar_sideroom");
	namespace_2f06d687::function_2b37a3c9("aig_vtol_hangar_lower", "script_aigroup", &function_b7846718);
	namespace_2f06d687::function_2b37a3c9("aig_vtol_hangar_lower", "script_aigroup", &namespace_2cb3876f::function_c47ce0e9);
	namespace_d5067552::function_bae40a28("sm_vtol_hangar_rear");
	namespace_2f06d687::function_2b37a3c9("aig_vtol_hangar_upper", "script_aigroup", &function_5d48dce7);
	namespace_2f06d687::function_2b37a3c9("aig_vtol_hangar_upper", "script_aigroup", &namespace_2cb3876f::function_c47ce0e9);
	namespace_d5067552::function_bae40a28("sm_vtol_hangar_upper");
	level waittill("hash_ccdbd3be");
	namespace_2f06d687::function_22356ba7("sp_vtol_hangar_top_front");
}

/*
	Name: function_d7dad356
	Namespace: namespace_d51ba4
	Checksum: 0x4D434AFA
	Offset: 0x6690
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_d7dad356()
{
	self endon("hash_128f8789");
	self thread function_f547728f();
	self thread function_f647689b();
	self thread function_d2bdf93e();
	self thread function_1e82f4b7();
	level waittill("hash_d2de9e1f");
	self namespace_d84e54db::function_b4f5e3b9(1);
	var_3f0f1f46 = function_6ada35ba("trig_vtol_goal_vol_rear", "targetname");
	self function_169cc712(var_3f0f1f46);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(1);
}

/*
	Name: function_1e82f4b7
	Namespace: namespace_d51ba4
	Checksum: 0x4AEAF074
	Offset: 0x67A0
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_1e82f4b7()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("door_close");
	var_c9aed927 = function_99201f25("outside_hangar_check", "targetname");
	foreach(var_26778947 in var_c9aed927)
	{
		if(self function_32fa5072(var_26778947) && isdefined(self))
		{
			self function_dc8c8404();
			return;
		}
	}
}

/*
	Name: function_b7846718
	Namespace: namespace_d51ba4
	Checksum: 0xB3297D52
	Offset: 0x68B0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_b7846718()
{
	self thread function_f547728f();
	self thread function_f647689b();
	self thread function_d2bdf93e();
	var_3f0f1f46 = function_6ada35ba("trig_vtol_goal_vol_rear", "targetname");
	self function_169cc712(var_3f0f1f46);
}

/*
	Name: function_5d48dce7
	Namespace: namespace_d51ba4
	Checksum: 0x99FDD4C9
	Offset: 0x6950
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_5d48dce7()
{
	self thread function_f547728f();
	self thread function_f647689b();
	self thread function_d2bdf93e();
	self.var_7dfaf62 = 16;
	namespace_4dbf3ae3::function_42e87952("vtol_hangar_upper_color", "targetname");
}

/*
	Name: function_d2bdf93e
	Namespace: namespace_d51ba4
	Checksum: 0x6E5D7E79
	Offset: 0x69D8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d2bdf93e()
{
	self namespace_82b91a51::function_5b7e3888("damage", "bulletwhizby", "pain", "proximity");
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_f647689b
	Namespace: namespace_d51ba4
	Checksum: 0x20607CDF
	Offset: 0x6A38
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_f647689b()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	level namespace_82b91a51::function_5b7e3888("vtol_hit", "vtol_hangar_player_leaves_cover");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_f547728f
	Namespace: namespace_d51ba4
	Checksum: 0x6D2AA3E
	Offset: 0x6AD8
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_f547728f()
{
	self endon("hash_128f8789");
	self.var_15dfd6c = 0.5;
	level waittill("hash_8413e49c");
	self.var_15dfd6c = 1;
}

/*
	Name: function_d81a4ec
	Namespace: namespace_d51ba4
	Checksum: 0x7AA2911A
	Offset: 0x6B18
	Size: 0x289
	Parameters: 0
	Flags: None
*/
function function_d81a4ec()
{
	level thread function_114b96c0();
	level namespace_ad23e503::function_1ab5ebec("vtol_final_fallback");
	namespace_d5067552::function_2992720d("sm_vtol_hangar_upper");
	namespace_d5067552::function_2992720d("sm_vtol_hangar_rear");
	var_2373d08e = function_6ada35ba("trig_vtol_goal_vol_fallback_final", "targetname");
	var_f694cded = namespace_2f06d687::function_289e6fd1("aig_vtol_hangar_lower");
	var_687c18ba = namespace_2f06d687::function_289e6fd1("aig_vtol_hangar_initial");
	var_7fc45f7c = namespace_2f06d687::function_289e6fd1("aig_plane_hangar_enemies_main");
	namespace_84970cc4::function_eaab05dc(var_f694cded, &function_fb5720f7);
	namespace_84970cc4::function_eaab05dc(var_687c18ba, &function_fb5720f7);
	namespace_84970cc4::function_eaab05dc(var_7fc45f7c, &function_fb5720f7);
	namespace_84970cc4::function_eaab05dc(var_f694cded, &function_169cc712, var_2373d08e);
	namespace_84970cc4::function_eaab05dc(var_687c18ba, &function_169cc712, var_2373d08e);
	namespace_84970cc4::function_eaab05dc(var_7fc45f7c, &function_169cc712, var_2373d08e);
	namespace_4dbf3ae3::function_42e87952("vtol_hangar_upper_retreat", "targetname");
	level thread function_c1bac28();
	namespace_2f06d687::function_45679edd("aig_vtol_hangar_lower", 0);
	namespace_2f06d687::function_45679edd("aig_vtol_hangar_upper", 0);
	namespace_2f06d687::function_45679edd("aig_vtol_hangar_initial", 0);
	namespace_2f06d687::function_45679edd("aig_plane_hangar_enemies_main", 0);
	wait(2);
}

/*
	Name: function_c1bac28
	Namespace: namespace_d51ba4
	Checksum: 0x53A24AFB
	Offset: 0x6DB0
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_c1bac28()
{
	level thread function_f6c934d0();
	wait(15);
	var_d2315634 = function_6ada35ba("trig_vtol_goal_vol_fallback_final_defend_exit", "targetname");
	var_4b64857a = namespace_2f06d687::function_289e6fd1("aig_vtol_hangar_upper");
	var_f694cded = namespace_2f06d687::function_289e6fd1("aig_vtol_hangar_lower");
	var_687c18ba = namespace_2f06d687::function_289e6fd1("aig_vtol_hangar_initial");
	var_7fc45f7c = namespace_2f06d687::function_289e6fd1("aig_plane_hangar_enemies_main");
	var_20cedf03 = function_525ae497(var_4b64857a, var_f694cded, 0, 0);
	var_20cedf03 = function_525ae497(var_20cedf03, var_687c18ba, 0, 0);
	var_20cedf03 = function_525ae497(var_20cedf03, var_7fc45f7c, 0, 0);
	foreach(var_6050ab17 in var_20cedf03)
	{
		if(function_5b49d38c(var_6050ab17))
		{
			var_6050ab17 function_fb5720f7();
			wait(0.1);
			var_6050ab17 function_86408aa8(var_d2315634);
		}
	}
}

/*
	Name: function_f6c934d0
	Namespace: namespace_d51ba4
	Checksum: 0x271FBE6A
	Offset: 0x6FD8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f6c934d0()
{
	level thread namespace_82b91a51::function_d8eaed3d(6);
	level waittill("hash_fc98480b");
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_896f0868
	Namespace: namespace_d51ba4
	Checksum: 0xF447287B
	Offset: 0x7020
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_896f0868()
{
	var_4eb49a16 = function_e7bdc1a1(self.var_722885f3, level.var_9b1393e7);
	self.var_7dfaf62 = 128;
	self function_c6f2cccf(var_4eb49a16);
	self namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
}

/*
	Name: function_114b96c0
	Namespace: namespace_d51ba4
	Checksum: 0x1C4F2721
	Offset: 0x70A8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_114b96c0()
{
	var_25002d73 = 6;
	while(var_25002d73 > 5)
	{
		var_25002d73 = namespace_2f06d687::function_41e09b9("aig_vtol_hangar_lower") + namespace_2f06d687::function_41e09b9("aig_vtol_hangar_initial") + namespace_2f06d687::function_41e09b9("aig_plane_hangar_enemies_main");
		wait(0.5);
	}
	level namespace_ad23e503::function_74d6b22f("vtol_final_fallback");
}

/*
	Name: function_19352a82
	Namespace: namespace_d51ba4
	Checksum: 0x85CF9813
	Offset: 0x7150
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function function_19352a82(var_1f6e1fda)
{
	foreach(var_58c5eb41 in var_1f6e1fda)
	{
		if(function_5b49d38c(var_58c5eb41))
		{
			var_58c5eb41 namespace_71b8dba1::function_81141386("nrcg_fall_back_fall_back_0");
			break;
		}
	}
}

/*
	Name: function_8efb9b5c
	Namespace: namespace_d51ba4
	Checksum: 0x37156AED
	Offset: 0x7210
	Size: 0x3FB
	Parameters: 0
	Flags: None
*/
function function_8efb9b5c()
{
	level thread function_8bd46c9();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_1554f271 = &function_e8443509;
	}
	var_1534914d = function_99201f25("first_apc_target", "targetname");
	var_2df9fcc1 = function_6ada35ba("t_dam_apc_squibs", "targetname");
	foreach(var_377a9c22 in var_1534914d)
	{
		if(function_5b49d38c(level.var_fac57550))
		{
			level.var_fac57550 thread namespace_37b990db::function_d104c596(var_377a9c22, 2.25, (0, 0, 0), 1, 0);
			level.var_fac57550 thread namespace_37b990db::function_d104c596(var_377a9c22, 2.25, (0, 0, 0), 2, 0);
			level thread function_5792f76d(var_2df9fcc1, var_377a9c22.var_722885f3);
			wait(2.25);
			level notify("hash_1a6f8b52");
		}
	}
	wait(2.25);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_1554f271 = undefined;
	}
	level.var_41d1cac6 = 1;
	level.var_26dc9f18 = 2;
	level.var_3534f286 = 0.25;
	level.var_1a3fc6d8 = 0.5;
	if(function_5b49d38c(level.var_fac57550))
	{
		level.var_fac57550 namespace_37b990db::function_f4546867(level.var_41d1cac6, level.var_26dc9f18, level.var_3534f286, level.var_1a3fc6d8, 1);
		level.var_fac57550 namespace_37b990db::function_f4546867(level.var_41d1cac6, level.var_26dc9f18, level.var_3534f286, level.var_1a3fc6d8, 2);
		level.var_fac57550 namespace_37b990db::function_bae40a28(1, 1);
		level.var_fac57550 namespace_37b990db::function_bae40a28(2, 1);
		level.var_fac57550 namespace_37b990db::function_2aefd6ec(1, 1);
		level.var_fac57550 namespace_37b990db::function_2aefd6ec(2, 1);
	}
}

/*
	Name: function_5792f76d
	Namespace: namespace_d51ba4
	Checksum: 0x85F6416D
	Offset: 0x7618
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_5792f76d(var_2df9fcc1, var_9794db6e)
{
	self endon("hash_128f8789");
	level endon("hash_1d072da3");
	level endon("hash_1a6f8b52");
	var_2df9fcc1 waittill("hash_4dbf3ae3", var_65669d7b);
	if(var_65669d7b.var_3e94206a === "axis")
	{
		function_534b3cba(var_9794db6e, 250, 250, 0.7);
	}
}

/*
	Name: function_8bd46c9
	Namespace: namespace_d51ba4
	Checksum: 0xDA8D8393
	Offset: 0x76B8
	Size: 0x4D3
	Parameters: 0
	Flags: None
*/
function function_8bd46c9()
{
	level namespace_ad23e503::function_1ab5ebec("activate_initial_apc");
	level thread function_b5a6b879();
	namespace_96fa87af::function_994832bd("vtol_collapse_apc", &function_75381a71);
	var_199de689 = namespace_96fa87af::function_2962e239("vtol_collapse_apc");
	level.var_199de689 = var_199de689;
	var_377a9c22 = function_6ada35ba("second_apc_target", "targetname");
	var_199de689 thread namespace_37b990db::function_d104c596(var_377a9c22, 2, (0, 0, 0), 1, 0);
	var_199de689 thread namespace_37b990db::function_d104c596(var_377a9c22, 2, (0, 0, 0), 2, 0);
	wait(2);
	var_199de689 namespace_37b990db::function_f4546867(level.var_41d1cac6, level.var_26dc9f18, level.var_3534f286, level.var_1a3fc6d8, 1);
	var_199de689 namespace_37b990db::function_f4546867(level.var_41d1cac6, level.var_26dc9f18, level.var_3534f286, level.var_1a3fc6d8, 2);
	var_199de689 namespace_37b990db::function_bae40a28(1, 1);
	var_199de689 namespace_37b990db::function_bae40a28(2, 1);
	var_199de689 namespace_37b990db::function_2aefd6ec(1, 1);
	var_199de689 namespace_37b990db::function_2aefd6ec(2, 1);
	var_199de689 waittill("hash_6cf6ac7e");
	var_199de689 thread function_a2041661();
	level namespace_ad23e503::function_74d6b22f("2nd_hangar_apc_in_pos");
	level thread function_d43c2e1a();
	level namespace_ad23e503::function_1ab5ebec("vtol_hit");
	level notify("hash_7452e7a8");
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_destroy");
	level thread function_2226d83();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_vtol_hangar_bundle");
	var_2ef9d306 = function_6ada35ba("vtol_hangar_drop", "targetname");
	var_2ef9d306 thread namespace_2cb3876f::function_d723979e("swap_vtol_to_destroyed", "veh_t7_mil_vtol_nrc_no_interior_d", "vtol_collapse_done");
	level notify("hash_5a11bfd7");
	var_199de689 function_dc8c8404();
	wait(0.05);
	level.var_fac57550 function_dc8c8404();
	level waittill("hash_ccdbd3be");
	var_fa3fe683 = function_6ada35ba("vtol_hangar_explosion_origin", "targetname");
	function_eac31668(var_fa3fe683.var_722885f3, 400, 2000, 800);
	function_a45fee8b(var_fa3fe683.var_722885f3, 1200, 800, 0.5);
	level function_ce858cd3(1);
	var_1b63031d = function_6ada35ba("vtol_ai_blockers", "targetname");
	var_1b63031d function_8bdea13c(700, 0.05);
	namespace_82b91a51::function_67520c6a(3, undefined, &function_62732b9d, var_fa3fe683.var_722885f3);
}

/*
	Name: function_62732b9d
	Namespace: namespace_d51ba4
	Checksum: 0xA9879DF6
	Offset: 0x7B98
	Size: 0x13D
	Parameters: 2
	Flags: None
*/
function function_62732b9d(var_47842d99, var_562b538e)
{
	if(!isdefined(var_562b538e))
	{
		var_562b538e = 400;
	}
	var_d96f8b8b = [];
	foreach(var_1e25855 in function_bd90138e())
	{
		if(function_87ea89a(var_1e25855.var_722885f3, var_47842d99) < var_562b538e)
		{
			var_d96f8b8b[var_d96f8b8b.size] = var_1e25855;
		}
	}
	for(var_5e76f0af = 0; var_5e76f0af < var_d96f8b8b.size; var_5e76f0af++)
	{
		var_d96f8b8b[var_5e76f0af] function_dc8c8404();
	}
}

/*
	Name: function_2226d83
	Namespace: namespace_d51ba4
	Checksum: 0x3C7FEC43
	Offset: 0x7CE0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_2226d83()
{
	var_c9510c8e = function_6ada35ba("vtol_hangar_explosion_origin", "targetname");
	level waittill("hash_4ceeb987");
	function_5e09918e("cp_prologue_rumble_hangar_vtol_collapse_rocket_fall", var_c9510c8e.var_722885f3);
	level waittill("hash_ccdbd3be");
	function_5e09918e("cp_prologue_rumble_hangar_vtol_collapse_explosion", var_c9510c8e.var_722885f3);
	level waittill("hash_98f09713");
	function_5e09918e("cp_prologue_rumble_hangar_vtol_collapse_hit_ground", var_c9510c8e.var_722885f3);
}

/*
	Name: function_b5a6b879
	Namespace: namespace_d51ba4
	Checksum: 0xDD0C6848
	Offset: 0x7DB0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_b5a6b879()
{
	var_280d5f68 = function_6ada35ba("hangar_gate_l", "targetname");
	var_3c301126 = function_6ada35ba("hangar_gate_r", "targetname");
	var_9c7511b4 = namespace_14b42b8a::function_7922262b("hangar_gate_move_pos_l", "targetname");
	var_205c499a = namespace_14b42b8a::function_7922262b("hangar_gate_move_pos_r", "targetname");
	var_c2777dd9 = "p7_fxanim_cp_prologue_hangar_door_bundle";
	level function_a8cd091b(0, var_280d5f68, var_3c301126, var_9c7511b4, var_205c499a, var_c2777dd9, "umbra_gate_hangar_04");
	level namespace_ad23e503::function_74d6b22f("door_close");
}

/*
	Name: function_f9196d1d
	Namespace: namespace_d51ba4
	Checksum: 0x657C09AE
	Offset: 0x7EE0
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function function_f9196d1d()
{
	level namespace_ad23e503::function_1ab5ebec("friendlies_jump_out_window");
	level thread function_f87b8938();
	level namespace_ad23e503::function_1ab5ebec("pallas_at_window");
	level thread namespace_cc27597::function_43718187("cin_pro_10_04_hangar_vign_leap_new_jump_across");
	level waittill("hash_aea6d25d");
	level namespace_71e9cb84::function_74d6b22f("diaz_break_2", 2);
	var_9e34fc53 = function_b4cb3503("n_pallas_vtol_tp", "targetname");
	level.var_7f246cd7 function_169cc712(var_9e34fc53);
	level waittill("hash_8413e49c");
	namespace_4dbf3ae3::function_42e87952("pallas_move_up_initial");
	level namespace_ad23e503::function_1ab5ebec("diaz_ready_to_concuss");
	self namespace_6f7b2095::function_54bdb053();
	var_5cbb67a5 = function_b4cb3503("diaz_concuss_node", "targetname");
	self function_169cc712(var_5cbb67a5, 1);
	self waittill("hash_41d1aaf0");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_5b79ea07);
	level thread function_570a8f9e();
	level waittill("hash_4939dbfa");
	level thread namespace_cc27597::function_43718187("cin_pro_10_03_hangar_vign_concussive");
	level waittill("hash_bd8e9605");
	self namespace_175490fb::function_d240e350("cybercom_concussive", undefined, 0);
	self function_e11ce512();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	var_c3c81269 = function_b4cb3503("diaz_concuss_cover_node", "targetname");
	self function_169cc712(var_c3c81269, 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	function_e966c1c0(1);
}

/*
	Name: function_5b79ea07
	Namespace: namespace_d51ba4
	Checksum: 0x6FA33C89
	Offset: 0x8210
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_5b79ea07()
{
	wait(0.5);
	self namespace_82b91a51::function_3546be91(level.var_7f246cd7.var_722885f3 + VectorScale((0, 0, 1), 64), 90);
	level notify("hash_4939dbfa");
}

/*
	Name: function_570a8f9e
	Namespace: namespace_d51ba4
	Checksum: 0x5D25B98C
	Offset: 0x8270
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_570a8f9e()
{
	wait(5);
	level notify("hash_4939dbfa");
}

/*
	Name: function_f87b8938
	Namespace: namespace_d51ba4
	Checksum: 0xA753DCBC
	Offset: 0x8290
	Size: 0x1D9
	Parameters: 0
	Flags: None
*/
function function_f87b8938()
{
	namespace_2f06d687::function_c6ffd13e("taylor_fodder_ai", &function_e3e4f0b8);
	level namespace_ad23e503::function_1ab5ebec("friendlies_jump_out_window");
	level.var_92d245e2 thread namespace_cc27597::function_43718187("cin_pro_10_04_hangar_vign_coverfire_prometheus");
	level thread function_5f5d84df();
	wait(1.5);
	namespace_d5067552::function_bae40a28("hangars_taylor_vign_fodder_manager");
	level.var_92d245e2 namespace_71b8dba1::function_81141386("tayr_get_to_exfil_i_got_0");
	level.var_92d245e2 thread function_e547f97a();
	level waittill("hash_e3977daa");
	namespace_d5067552::function_54bdb053("hangars_taylor_vign_fodder_manager");
	level notify("hash_71f2cae");
	level.var_92d245e2 function_dc8c8404();
	var_886e8d99 = function_99201f25("hangars_taylor_vign_fodder_spawner_ai", "targetname");
	foreach(var_7c27e379 in var_886e8d99)
	{
		var_7c27e379 function_dc8c8404();
	}
}

/*
	Name: function_e547f97a
	Namespace: namespace_d51ba4
	Checksum: 0x6A77C238
	Offset: 0x8478
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_e547f97a()
{
	self endon("hash_128f8789");
	level endon("hash_e3977daa");
	level endon("hash_5565b88d");
	while(1)
	{
		var_56dd1913 = namespace_2f06d687::function_289e6fd1("taylor_fodder_ai");
		if(var_56dd1913.size === 0)
		{
			wait(2);
		}
		else
		{
			foreach(var_6050ab17 in var_56dd1913)
			{
				if(function_5b49d38c(var_6050ab17))
				{
					self namespace_d84e54db::function_d104c596("normal", var_6050ab17, undefined, function_72a94f05(1, 3));
				}
			}
			wait(1.5);
		}
	}
}

/*
	Name: function_5f5d84df
	Namespace: namespace_d51ba4
	Checksum: 0x4B148FF1
	Offset: 0x85C8
	Size: 0x135
	Parameters: 0
	Flags: None
*/
function function_5f5d84df()
{
	level endon("hash_73facd66");
	level endon("hash_5565b88d");
	while(1)
	{
		level namespace_ad23e503::function_1ab5ebec("player_in_taylor_coverfire");
		namespace_d5067552::function_bae40a28("hangars_taylor_vign_fodder_manager");
		level namespace_ad23e503::function_d3de6822("player_in_taylor_coverfire");
		namespace_d5067552::function_54bdb053("hangars_taylor_vign_fodder_manager");
		var_56dd1913 = namespace_2f06d687::function_289e6fd1("taylor_fodder_ai");
		foreach(var_6050ab17 in var_56dd1913)
		{
			var_6050ab17 function_dc8c8404();
		}
	}
}

/*
	Name: function_e3e4f0b8
	Namespace: namespace_d51ba4
	Checksum: 0x7A6DAA2D
	Offset: 0x8708
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_e3e4f0b8()
{
	self endon("hash_128f8789");
	level endon("hash_71f2cae");
	self.var_2a48f7ab = 1;
	self.var_7dfaf62 = 32;
	self.var_38188e74 = 1;
	if(isdefined(level.var_92d245e2))
	{
		self namespace_d84e54db::function_d104c596("normal", level.var_92d245e2, undefined, 1000);
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		self function_76aa5b30(var_5dc5e20a, 1);
	}
}

/*
	Name: function_e37c0060
	Namespace: namespace_d51ba4
	Checksum: 0xAFD62008
	Offset: 0x8818
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e37c0060()
{
	level waittill("hash_8413e49c");
	wait(6);
	level namespace_71b8dba1::function_a463d127("hall_diaz_i_m_in_positio_0", undefined, "normal");
	level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_copy_that_to_us_h_0");
	level namespace_ad23e503::function_74d6b22f("hangar_5_bc");
}

/*
	Name: function_e8443509
	Namespace: namespace_d51ba4
	Checksum: 0x9C8E27FE
	Offset: 0x88A0
	Size: 0x7F
	Parameters: 13
	Flags: None
*/
function function_e8443509(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_ae725cb8, var_a5cf2304, var_7419ba1f)
{
	if(var_51e6a548 === level.var_fac57550)
	{
		return 0;
	}
}

/*
	Name: function_a2041661
	Namespace: namespace_d51ba4
	Checksum: 0x1960B4FB
	Offset: 0x8928
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_a2041661()
{
	var_44762fa4 = self namespace_96fa87af::function_ad4ec07a("driver");
	if(function_5b49d38c(var_44762fa4))
	{
		var_44762fa4 endon("hash_128f8789");
		var_44762fa4 namespace_96fa87af::function_dca9dba2();
		var_277f35c0 = function_b4cb3503("vtol_driver_node", "targetname");
		var_44762fa4 function_169cc712(var_277f35c0, 1);
		var_44762fa4 namespace_82b91a51::function_4b741fdc();
	}
}

/*
	Name: function_a8cd091b
	Namespace: namespace_d51ba4
	Checksum: 0x7F86BE11
	Offset: 0x8A00
	Size: 0x2DB
	Parameters: 7
	Flags: None
*/
function function_a8cd091b(var_a334437f, var_280d5f68, var_3c301126, var_9c7511b4, var_205c499a, var_c2777dd9, var_902e27b5)
{
	if(var_a334437f)
	{
		var_280d5f68 function_a96a2721(var_9c7511b4.var_722885f3, 0.05);
		var_3c301126 function_a96a2721(var_205c499a.var_722885f3, 0.05);
		level thread namespace_cc27597::function_5c143f59(var_c2777dd9);
		var_3c301126 function_14c24d9d();
		var_280d5f68 function_14c24d9d();
	}
	else
	{
		level thread namespace_cc27597::function_43718187(var_c2777dd9);
		var_280d5f68 function_a96a2721(var_9c7511b4.var_722885f3, 6);
		var_3c301126 function_a96a2721(var_205c499a.var_722885f3, 6);
		var_56d74922 = function_26299103(2);
		var_280d5f68 function_921a1574("evt_hangar_door_start_l_" + var_56d74922);
		var_3c301126 function_921a1574("evt_hangar_door_start_r_" + var_56d74922);
		var_280d5f68 function_c2931a36("evt_hangar_door_loop_l", 2);
		var_3c301126 function_c2931a36("evt_hangar_door_loop_r", 2);
		var_3c301126 waittill("hash_a21db68a");
		var_3c301126 function_14c24d9d();
		var_280d5f68 function_14c24d9d();
		var_280d5f68 function_eaa69754(0.25);
		var_3c301126 function_eaa69754(0.25);
		var_280d5f68 function_921a1574("evt_hangar_door_stop_l");
		var_3c301126 function_921a1574("evt_hangar_door_stop_r");
		if(isdefined(var_902e27b5))
		{
			function_bab1ff00(var_902e27b5, 0);
		}
	}
}

/*
	Name: function_10ab649
	Namespace: namespace_d51ba4
	Checksum: 0xCA9E620C
	Offset: 0x8CE8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_10ab649()
{
	var_280d5f68 = function_6ada35ba("plane_hangar_out_l", "targetname");
	var_3c301126 = function_6ada35ba("plane_hangar_out_r", "targetname");
	var_149cda0 = namespace_14b42b8a::function_7922262b("plane_hangar_exit_close", "targetname");
	var_280d5f68 function_a96a2721(var_149cda0.var_722885f3, 0.5);
	var_3c301126 function_a96a2721(var_149cda0.var_722885f3, 0.5);
}

/*
	Name: function_9ada4a46
	Namespace: namespace_d51ba4
	Checksum: 0x64DEC6F6
	Offset: 0x8DD8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_9ada4a46()
{
	level endon("hash_cb897bce");
	var_32400ae0 = function_6ada35ba("trig_dam_vtol_grenade_accolade", "targetname");
	var_32400ae0 function_8d63f8d0(0);
	level namespace_ad23e503::function_1ab5ebec("2nd_hangar_apc_in_pos");
	wait(0.5);
	var_32400ae0 function_8d63f8d0(1);
	var_32400ae0 namespace_4dbf3ae3::function_1ab5ebec();
	if(function_65f192a6(var_32400ae0.var_aef176e7))
	{
		namespace_61c634f2::function_470fe5d8(var_32400ae0.var_aef176e7);
	}
}

/*
	Name: function_e966c1c0
	Namespace: namespace_d51ba4
	Checksum: 0x7C0CC7BA
	Offset: 0x8ED0
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_e966c1c0(var_eb6e3c93)
{
	level.var_2fd26037.var_5ed2f6d3 = var_eb6e3c93;
	level.var_9db406db.var_5ed2f6d3 = var_eb6e3c93;
	level.var_7f246cd7.var_5ed2f6d3 = var_eb6e3c93;
}

/*
	Name: function_ba29155a
	Namespace: namespace_d51ba4
	Checksum: 0x22CE66CC
	Offset: 0x8F20
	Size: 0x293
	Parameters: 2
	Flags: None
*/
function function_ba29155a(var_c047ec73, var_3b15866b)
{
	if(!isdefined(var_c047ec73))
	{
		var_c047ec73 = 250;
	}
	if(!isdefined(var_3b15866b))
	{
		var_3b15866b = var_c047ec73 * 0.5;
	}
	self notify("hash_2f5b059f");
	self endon("hash_128f8789");
	self endon("hash_2f5b059f");
	self endon("hash_a2ba32d");
	self thread function_a2ba32d();
	while(1)
	{
		wait(0.05);
		if(!isdefined(self.var_ae11119e))
		{
			continue;
		}
		var_2188bf75 = self.var_ae11119e;
		var_6bfe1586 = function_e7bdc1a1(var_2188bf75, level.var_2395e945);
		var_4ec85d4a = function_e7bdc1a1(var_2188bf75, function_84970cc4(var_6bfe1586, self));
		var_ccd4343c = function_316422d1(self.var_722885f3, var_6bfe1586.var_722885f3);
		var_c4197ac8 = function_65f192a6(var_4ec85d4a);
		if(var_ccd4343c < var_3b15866b * var_3b15866b || var_c4197ac8)
		{
			self namespace_d84e54db::function_ceb883cd("cqb", 0);
			self namespace_d84e54db::function_ceb883cd("sprint", 1);
			continue;
		}
		else if(var_ccd4343c < var_c047ec73 * var_c047ec73)
		{
			self namespace_d84e54db::function_ceb883cd("cqb", 0);
			self namespace_d84e54db::function_ceb883cd("sprint", 0);
			continue;
		}
		else if(var_ccd4343c > var_c047ec73 * var_c047ec73 * 1.25)
		{
			self namespace_d84e54db::function_ceb883cd("cqb", 1);
			self namespace_d84e54db::function_ceb883cd("sprint", 0);
			continue;
		}
	}
}

/*
	Name: function_a2ba32d
	Namespace: namespace_d51ba4
	Checksum: 0x1B5AB6F9
	Offset: 0x91C0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_a2ba32d()
{
	self endon("hash_2f5b059f");
	self endon("hash_128f8789");
	self waittill("hash_a2ba32d");
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
}

/*
	Name: function_ce858cd3
	Namespace: namespace_d51ba4
	Checksum: 0x5B8CA4CC
	Offset: 0x9230
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_ce858cd3(var_9e9ed9f)
{
	if(!isdefined(var_9e9ed9f))
	{
		var_9e9ed9f = 0;
	}
	var_7925d66f = function_6ada35ba("hangar_vtol_crash_clip", "targetname");
	var_7925d66f function_de8377bf();
	if(var_9e9ed9f)
	{
		var_7925d66f function_8bdea13c(1000, 0.05);
	}
	else
	{
		var_7925d66f function_8bdea13c(-1000, 0.05);
	}
	wait(0.05);
	if(isdefined(var_7925d66f))
	{
		var_7925d66f function_14c24d9d(0, 0);
	}
}

/*
	Name: function_d3c9b1d1
	Namespace: namespace_d51ba4
	Checksum: 0xA7BB8FAC
	Offset: 0x9318
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_d3c9b1d1(var_a8563e07)
{
	if(!isdefined(level.var_7f246cd7))
	{
		return;
	}
	if(!isdefined(level.var_fa73812c))
	{
		level.var_fa73812c = 1;
		level.var_446343dd = 0;
	}
	var_efeac590 = GetTime();
	if(function_65f192a6(var_a8563e07.var_3a212fd7) && (level.var_fa73812c || 10000 < var_efeac590 - level.var_446343dd))
	{
		level.var_7f246cd7 notify("hash_2605e152", "generic_encourage");
		level.var_446343dd = var_efeac590;
		level.var_fa73812c = 0;
	}
}

