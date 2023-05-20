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
#using scripts\cp\cp_prologue_cyber_soldiers;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_gadget_sensory_overload;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
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

#namespace namespace_36e484c6;

/*
	Name: function_6feca657
	Namespace: namespace_36e484c6
	Checksum: 0xEC557AA9
	Offset: 0xF30
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6feca657()
{
	function_e1c5444e();
	function_283b0091();
	level thread namespace_21b2c1f2::function_3c37ec50();
	level thread function_82858e32();
}

/*
	Name: function_e1c5444e
	Namespace: namespace_36e484c6
	Checksum: 0xCEEF6BDE
	Offset: 0xF90
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e1c5444e()
{
	level namespace_ad23e503::function_c35e6aab("flag_player_fired_early");
}

/*
	Name: function_283b0091
	Namespace: namespace_36e484c6
	Checksum: 0xEA2675E9
	Offset: 0xFC0
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_283b0091()
{
	namespace_76d95162::function_d9f49fba(0);
	level.var_9db406db namespace_d84e54db::function_b4f5e3b9(1);
	level.var_9db406db namespace_d84e54db::function_c9e45d52(1);
	level.var_9db406db.var_7dfaf62 = 32;
	level.var_5d4087a6 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_5d4087a6 namespace_d84e54db::function_c9e45d52(1);
	level.var_5d4087a6.var_7dfaf62 = 32;
	level.var_5d4087a6.var_daf3a648 = 0;
	level.var_5d4087a6 namespace_6f7b2095::function_1b497663("p");
	level.var_5d4087a6 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level.var_5d4087a6 namespace_d84e54db::function_ceb883cd("sprint", 0);
	level.var_4d5a4697 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_4d5a4697 namespace_d84e54db::function_c9e45d52(1);
	level.var_4d5a4697.var_7dfaf62 = 32;
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037.var_7dfaf62 = 16;
	level.var_2fd26037.var_daf3a648 = 0;
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
	if(function_5b49d38c(level.var_7f246cd7))
	{
		level.var_7f246cd7 function_dc8c8404();
	}
}

/*
	Name: function_82858e32
	Namespace: namespace_36e484c6
	Checksum: 0xCAF36E10
	Offset: 0x1238
	Size: 0x5EB
	Parameters: 0
	Flags: None
*/
function function_82858e32()
{
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_escort_data_center");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_2909799b);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_b7634680);
	namespace_dabbe128::function_de1a6d25(&function_e2b1615a);
	level thread function_25c6144e();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "turn_off_tacmode_vfx", 1);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_vtol_tackle_windows_bundle");
	level thread namespace_d0ef8521::function_45d1556("dark_battle_breadcrumb_3");
	level thread function_a06c6f96();
	level thread function_4d2734fa();
	level thread function_c2326e34();
	level thread function_fc0859f();
	level thread function_edbf19b4();
	level thread function_312ac345();
	level.var_5d4087a6 thread function_43d5fd7a();
	level.var_9db406db namespace_d84e54db::function_ceb883cd("coverIdleOnly", 1);
	level.var_4d5a4697 namespace_d84e54db::function_ceb883cd("coverIdleOnly", 1);
	if(isdefined(level.var_9b180d27))
	{
		level thread [[level.var_9b180d27]]();
	}
	function_f7eee26d();
	while(!namespace_d5067552::function_b02fc450("sm_darkroom_spawner"))
	{
		wait(0.5);
	}
	level thread namespace_21b2c1f2::function_973b77f9();
	level notify("hash_a9e3188");
	level notify("hash_bd74d007");
	level namespace_82b91a51::function_ef3f75eb("sndDBW");
	level thread function_4e24163f();
	level thread function_7bd8c5a3();
	namespace_76d95162::function_d9f49fba(0);
	level namespace_cc27597::function_c35e6aab("cin_pro_13_01_vtoltackle_vign_takedown");
	wait(0.05);
	level.var_5d4087a6 function_169cc712(function_b4cb3503("hyperion_dark_battle_final", "targetname"), 1);
	level.var_2fd26037 function_169cc712(function_b4cb3503("hendricks_dark_battle_final", "targetname"), 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level thread namespace_d0ef8521::function_45d1556("dark_battle_breadcrumb_4");
	namespace_dabbe128::function_fad550c4(&function_e2b1615a);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(function_5b49d38c(var_5dc5e20a))
		{
			var_5dc5e20a thread function_63222c73();
			var_5dc5e20a thread function_4933d21a();
		}
	}
	function_37cbcf1a("evt_doorhack_dooropen", (13437, 2216, 252));
	function_62e89023(1, 0);
	level thread function_b3666179();
	level.var_5d4087a6 function_e11ce512();
	level.var_9db406db namespace_d84e54db::function_ceb883cd("coverIdleOnly", 0);
	level.var_4d5a4697 namespace_d84e54db::function_ceb883cd("coverIdleOnly", 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level.var_5d4087a6 namespace_d84e54db::function_ceb883cd("cqb", 0);
	namespace_d0ef8521::function_31cd1834("cp_level_prologue_escort_data_center");
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_find_vehicle");
	namespace_1d795d47::function_be8adfb8("skipto_dark_battle");
}

/*
	Name: function_7cd37960
	Namespace: namespace_36e484c6
	Checksum: 0x1AF7C2DB
	Offset: 0x1830
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_7cd37960()
{
	level endon("hash_7a9811b7");
	self waittill("hash_aa1618b0");
	level notify("hash_9babf62");
}

/*
	Name: function_997d6fdc
	Namespace: namespace_36e484c6
	Checksum: 0xCE981172
	Offset: 0x1868
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_997d6fdc()
{
	level endon("hash_7a9811b7");
	self waittill("hash_e5ccf3dc", var_f461b5d, var_dfcc01fd);
	level notify("hash_9babf62");
}

/*
	Name: function_f7eee26d
	Namespace: namespace_36e484c6
	Checksum: 0x415ADD12
	Offset: 0x18B8
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_f7eee26d()
{
	level endon("hash_b1b6677a");
	level endon("hash_9babf62");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_7cd37960);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_997d6fdc);
	namespace_4dbf3ae3::function_1ab5ebec("t_dark_battle_glass");
	level notify("hash_9babf62");
}

/*
	Name: function_e6296f02
	Namespace: namespace_36e484c6
	Checksum: 0x9F7FEA9E
	Offset: 0x1958
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_e6296f02(var_c77d2837)
{
	namespace_84970cc4::function_966ecb29(var_c77d2837, &function_dabc0173);
}

/*
	Name: function_dabc0173
	Namespace: namespace_36e484c6
	Checksum: 0x69B58F1D
	Offset: 0x1990
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_dabc0173()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_a1da348d = 0;
	level namespace_ad23e503::function_1ab5ebec("flag_player_fired_early");
	self function_470f7e4c();
	self namespace_d84e54db::function_c9e45d52(0);
	self thread function_ff2c3e0c();
}

/*
	Name: function_4d2734fa
	Namespace: namespace_36e484c6
	Checksum: 0xE8F4D990
	Offset: 0x1A48
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_4d2734fa()
{
	namespace_2f06d687::function_2b37a3c9("darkroom_spawner", "targetname", &function_ff2c3e0c);
	function_62e89023();
	namespace_d5067552::function_bae40a28("sm_darkroom_spawner");
	namespace_d5067552::function_347e835a("sm_darkroom_spawner");
	var_5ca9a217 = function_6ada35ba("outside_dark_battle_room", "targetname");
	var_84fda8df = 0;
	while(!var_84fda8df)
	{
		var_84fda8df = 1;
		var_e3b635fb = namespace_2f06d687::function_289e6fd1("aig_darkroom");
		foreach(var_d84e54db in var_e3b635fb)
		{
			if(var_d84e54db function_32fa5072(var_5ca9a217))
			{
				var_84fda8df = 0;
				break;
			}
		}
		wait(0.5);
	}
	function_62e89023(0, 0);
}

/*
	Name: function_4e24163f
	Namespace: namespace_36e484c6
	Checksum: 0x653651A7
	Offset: 0x1BF8
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_4e24163f()
{
	var_181a23a4 = function_6ada35ba("intelstation_bottom_door_l", "targetname");
	var_5c50a8aa = function_6ada35ba("intelstation_bottom_door_r", "targetname");
	var_96ba651b = VectorScale((1, 0, 0), 54);
	var_a3adc876 = 0.5;
	var_ebf82f1 = var_181a23a4.var_722885f3 + var_96ba651b;
	var_181a23a4 function_a96a2721(var_ebf82f1, var_a3adc876);
	var_ebf82f1 = var_5c50a8aa.var_722885f3 - var_96ba651b;
	var_5c50a8aa function_a96a2721(var_ebf82f1, var_a3adc876);
	var_181a23a4 waittill("hash_a21db68a");
	level.var_9db406db function_169cc712(function_b4cb3503("khalil_dark_battle_final", "targetname"), 1);
	wait(1);
	level.var_4d5a4697 function_169cc712(function_b4cb3503("minister_dark_battle_final", "targetname"), 1);
}

/*
	Name: function_b3666179
	Namespace: namespace_36e484c6
	Checksum: 0x39A33272
	Offset: 0x1DA8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_b3666179()
{
	var_e4f2f922 = function_6ada35ba("t_vtol_tackle_doors", "targetname");
	var_634d0729 = function_84970cc4(level.var_4d5a4697, level.var_2fd26037, level.var_9db406db, level.var_5d4087a6);
	level thread namespace_2cb3876f::function_21f52196("vtol_tackle_doors", var_e4f2f922);
	level thread namespace_2cb3876f::function_2e61b3e8("vtol_tackle_doors", var_e4f2f922, var_634d0729);
	while(!namespace_2cb3876f::function_cdd726fb("vtol_tackle_doors"))
	{
		wait(0.05);
	}
	function_62e89023(0, 0);
}

/*
	Name: function_62e89023
	Namespace: namespace_36e484c6
	Checksum: 0xE7EC0AE5
	Offset: 0x1EB0
	Size: 0x239
	Parameters: 2
	Flags: None
*/
function function_62e89023(var_c20d98a0, var_abf03d83)
{
	if(!isdefined(var_c20d98a0))
	{
		var_c20d98a0 = 1;
	}
	if(!isdefined(var_abf03d83))
	{
		var_abf03d83 = 1;
	}
	var_280d5f68 = function_6ada35ba("dark_battle_door_l", "targetname");
	var_3c301126 = function_6ada35ba("dark_battle_door_r", "targetname");
	var_d6628508 = 1;
	if(!var_c20d98a0)
	{
		var_d6628508 = 0.4;
	}
	if(var_abf03d83)
	{
		var_d6628508 = 0.05;
	}
	var_43eea8e5 = function_298b8148(var_280d5f68.var_6ab6f4fd);
	if(var_c20d98a0)
	{
		var_33219fd6 = var_280d5f68.var_722885f3 + var_43eea8e5 * 52 * -1;
		var_280d5f68 function_a96a2721(var_33219fd6, var_d6628508);
		var_dac99ad = var_3c301126.var_722885f3 + var_43eea8e5 * 52;
		var_3c301126 function_a96a2721(var_dac99ad, var_d6628508);
	}
	else
	{
		var_33219fd6 = var_280d5f68.var_722885f3 + var_43eea8e5 * 52;
		var_280d5f68 function_a96a2721(var_33219fd6, var_d6628508);
		var_dac99ad = var_3c301126.var_722885f3 + var_43eea8e5 * 52 * -1;
		var_3c301126 function_a96a2721(var_dac99ad, var_d6628508);
	}
	var_3c301126 waittill("hash_a21db68a");
}

/*
	Name: function_43d5fd7a
	Namespace: namespace_36e484c6
	Checksum: 0x24F6F07F
	Offset: 0x20F8
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_43d5fd7a()
{
	level namespace_cc27597::function_8f9f34e0("cin_pro_12_01_darkbattle_vign_dive_kill_enemyloop", &function_e6296f02);
	level thread namespace_71b8dba1::function_a463d127("hall_heads_up_we_have_m_0", undefined, "normal");
	level thread namespace_cc27597::function_43718187("cin_pro_12_01_darkbattle_vign_dive_kill_enemyloop");
	level thread function_356b8cd9();
	level.var_5d4087a6 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 function_169cc712(function_b4cb3503("hendricks_dark_battle_start", "targetname"), 1);
	level.var_5d4087a6 function_169cc712(function_b4cb3503("diaz_dark_battle_start", "targetname"), 1);
	namespace_82b91a51::function_6959d3ef(level.var_5d4087a6, "goal", level.var_2fd26037, "goal");
	wait(1);
	level namespace_ad23e503::function_43ac000b(function_84970cc4("dark_battle_player_upstairs", "flag_player_fired_early"));
	level namespace_cc27597::function_43718187("cin_pro_12_01_darkbattle_vign_dive_kill_start");
	level.var_5d4087a6 thread function_619c28d();
	level notify("hash_307c99bd");
	if(!level namespace_ad23e503::function_7922262b("flag_player_fired_early"))
	{
		level notify("hash_b1b6677a");
		level namespace_cc27597::function_43718187("cin_pro_12_01_darkbattle_vign_dive_kill_attack");
	}
	level.var_5d4087a6 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(1);
	level thread function_51caefff();
}

/*
	Name: function_619c28d
	Namespace: namespace_36e484c6
	Checksum: 0x7B43FE6F
	Offset: 0x2380
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_619c28d()
{
	level endon("hash_a9e3188");
	self namespace_71b8dba1::function_81141386("mare_remember_they_ain_0");
	wait(5);
	self namespace_71b8dba1::function_81141386("mare_take_it_slow_pick_0");
	wait(10);
	self namespace_71b8dba1::function_81141386("mare_use_your_advantage_0");
}

/*
	Name: function_356b8cd9
	Namespace: namespace_36e484c6
	Checksum: 0xD9486519
	Offset: 0x23F8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_356b8cd9()
{
	level endon("hash_b1b6677a");
	level namespace_ad23e503::function_1ab5ebec("flag_player_fired_early");
	level namespace_cc27597::function_fcf56ab5("cin_pro_12_01_darkbattle_vign_dive_kill_enemyloop");
}

/*
	Name: function_51caefff
	Namespace: namespace_36e484c6
	Checksum: 0x81CE57F6
	Offset: 0x2450
	Size: 0x1A5
	Parameters: 0
	Flags: None
*/
function function_51caefff()
{
	self endon("hash_a9e3188");
	var_72069915 = function_b4cb3503("hyperion_dark_battle_1", "targetname");
	level.var_5d4087a6 function_169cc712(var_72069915, 1);
	level.var_5d4087a6 waittill("hash_41d1aaf0");
	wait(5);
	var_9809137e = function_b4cb3503("hyperion_dark_battle_2", "targetname");
	level.var_5d4087a6 function_169cc712(var_9809137e, 1);
	level.var_5d4087a6 waittill("hash_41d1aaf0");
	wait(5);
	var_be0b8de7 = function_b4cb3503("hyperion_dark_battle_3", "targetname");
	level.var_5d4087a6 function_169cc712(var_be0b8de7, 1);
	level.var_5d4087a6 waittill("hash_41d1aaf0");
	wait(5);
	var_b3fa3508 = function_b4cb3503("hyperion_dark_battle_4", "targetname");
	level.var_5d4087a6 function_169cc712(var_b3fa3508, 1);
	level.var_5d4087a6 waittill("hash_41d1aaf0");
}

/*
	Name: function_312ac345
	Namespace: namespace_36e484c6
	Checksum: 0x8EE44502
	Offset: 0x2600
	Size: 0x185
	Parameters: 0
	Flags: None
*/
function function_312ac345()
{
	self endon("hash_a9e3188");
	level waittill("hash_307c99bd");
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(1);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	var_900c9df2 = function_b4cb3503("hendricks_dark_battle_1", "targetname");
	level.var_2fd26037 function_169cc712(var_900c9df2, 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	wait(6);
	var_6a0a2389 = function_b4cb3503("hendricks_dark_battle_2", "targetname");
	level.var_2fd26037 function_169cc712(var_6a0a2389, 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	wait(6);
	var_4407a920 = function_b4cb3503("hendricks_dark_battle_3", "targetname");
	level.var_2fd26037 function_169cc712(var_4407a920, 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
}

/*
	Name: function_c2326e34
	Namespace: namespace_36e484c6
	Checksum: 0x3416D9E7
	Offset: 0x2790
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_c2326e34()
{
	level endon("hash_c63a5f38");
	var_94ace873 = function_99201f25("dark_wall_logo_off", "targetname");
	var_cd29e581 = function_99201f25("dark_wall_logo_on", "targetname");
	foreach(var_491241ba in var_94ace873)
	{
		var_491241ba function_8c8e79fe();
	}
	level waittill("hash_400d768d");
	namespace_80983c42::function_67e7a937("light_exploder_darkbattle");
	level namespace_82b91a51::function_ef3f75eb("sndDBB");
	foreach(var_491241ba in var_cd29e581)
	{
		var_491241ba function_8c8e79fe();
	}
	foreach(var_491241ba in var_94ace873)
	{
		var_491241ba function_48f26766();
	}
	level waittill("hash_113f3cd3");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_16f9ecd3::function_35ce409, 1);
	level namespace_ad23e503::function_74d6b22f("ev_enabled");
	wait(1);
	level notify("hash_4289520f");
	level thread namespace_21b2c1f2::function_a0f24f9b();
}

/*
	Name: function_edbf19b4
	Namespace: namespace_36e484c6
	Checksum: 0xF450F73F
	Offset: 0x2A50
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_edbf19b4()
{
	level waittill("hash_7a9811b7");
	var_280d5f68 = function_6ada35ba("intelstation_balcony_door_l", "targetname");
	var_3c301126 = function_6ada35ba("intelstation_balcony_door_r", "targetname");
	function_37cbcf1a("evt_doorhack_dooropen", var_3c301126.var_722885f3);
	var_96ba651b = VectorScale((1, 0, 0), 54);
	var_c26efe11 = 0.5;
	var_ebf82f1 = var_280d5f68.var_722885f3 + var_96ba651b;
	var_280d5f68 function_a96a2721(var_ebf82f1, var_c26efe11);
	var_ebf82f1 = var_3c301126.var_722885f3 - var_96ba651b;
	var_3c301126 function_a96a2721(var_ebf82f1, var_c26efe11);
	var_3c301126 waittill("hash_a21db68a");
	var_3c301126 function_de8377bf();
	var_280d5f68 function_de8377bf();
}

/*
	Name: function_7bd8c5a3
	Namespace: namespace_36e484c6
	Checksum: 0xA1DFED8
	Offset: 0x2BD8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_7bd8c5a3()
{
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_clear_0", 1);
	level.var_5d4087a6 thread namespace_71b8dba1::function_81141386("mare_disabling_tactical_f_0", 0.5);
	wait(1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_16f9ecd3::function_35ce409, 0);
	level namespace_ad23e503::function_9d134160("ev_enabled");
	wait(1);
	namespace_80983c42::function_80983c42("light_exploder_darkbattle");
	level namespace_82b91a51::function_ef3f75eb("sndDBBe");
	level thread namespace_21b2c1f2::function_2a66b344();
}

/*
	Name: function_fc0859f
	Namespace: namespace_36e484c6
	Checksum: 0xC97FA59C
	Offset: 0x2CE0
	Size: 0x277
	Parameters: 0
	Flags: None
*/
function function_fc0859f()
{
	level waittill("hash_400d768d");
	wait(0.5);
	while(namespace_2f06d687::function_1913dec8("aig_darkroom") > 6)
	{
		var_7b3a5649 = function_b8494651("axis");
		var_e248524d = namespace_84970cc4::function_4219028b(level.var_2395e945[0].var_722885f3, var_7b3a5649, undefined, 4);
		var_1f76714 = function_84970cc4("hear_that", "cannot_hide", "happened_lights", "power_on");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e248524d.size; var_c957f6b6++)
		{
			if(function_5b49d38c(var_e248524d[0]))
			{
				var_e248524d[var_c957f6b6] function_11c60e29(var_1f76714[var_c957f6b6]);
			}
		}
		wait(1);
	}
	while(namespace_2f06d687::function_1913dec8("aig_darkroom") > 1)
	{
		var_7b3a5649 = function_b8494651("axis");
		var_e248524d = namespace_84970cc4::function_4219028b(level.var_2395e945[0].var_722885f3, var_7b3a5649, undefined, 4);
		var_1f76714 = function_84970cc4("cant_see", "please_no", "dont_take", "screw_this");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e248524d.size; var_c957f6b6++)
		{
			if(function_5b49d38c(var_e248524d[0]))
			{
				var_e248524d[var_c957f6b6] function_11c60e29(var_1f76714[var_c957f6b6]);
			}
		}
		wait(1);
	}
}

/*
	Name: function_11c60e29
	Namespace: namespace_36e484c6
	Checksum: 0xC806BD22
	Offset: 0x2F60
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function function_11c60e29(var_9ad1ca9a)
{
	var_5c20815 = function_72a94f05(0.4, 1);
	wait(var_5c20815);
	if(function_5b49d38c(self))
	{
		self notify("hash_2605e152", var_9ad1ca9a);
	}
}

/*
	Name: function_a06c6f96
	Namespace: namespace_36e484c6
	Checksum: 0x6EC1F347
	Offset: 0x2FD0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_a06c6f96()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_e7ad7b2d();
	}
	level.var_5d4087a6 thread function_2310d9a6();
	level.var_2fd26037 thread function_2310d9a6();
}

/*
	Name: function_ff2c3e0c
	Namespace: namespace_36e484c6
	Checksum: 0x736DF4D6
	Offset: 0x3098
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_ff2c3e0c()
{
	self endon("hash_bd74d007");
	self endon("hash_128f8789");
	self.var_a1da348d = 0;
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 32;
	self thread function_494e04e8();
	level waittill("hash_4289520f");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self.var_7dfaf62 = 32;
	self.var_2a373326 = 4096;
	var_fcc8a1d4 = function_dc99997a(1, 4);
	switch(var_fcc8a1d4)
	{
		case 1:
		{
			var_a60475e6 = "cin_gen_vign_confusion_01";
			break;
		}
		case 2:
		{
			var_a60475e6 = "cin_gen_vign_confusion_02";
			break;
		}
		case 3:
		{
			var_a60475e6 = "cin_gen_vign_confusion_03";
			break;
		}
		case default:
		{
			/#
				namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
			#/
			break;
		}
	}
	var_67520c6a = function_72a94f05(0.1, 0.5);
	wait(var_67520c6a);
	self thread namespace_cc27597::function_43718187(var_a60475e6, self);
	level waittill("hash_307c99bd");
	if(self namespace_cc27597::function_367f8966(var_a60475e6))
	{
		self namespace_cc27597::function_fcf56ab5(var_a60475e6);
	}
}

/*
	Name: function_494e04e8
	Namespace: namespace_36e484c6
	Checksum: 0xF426FC71
	Offset: 0x3298
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_494e04e8()
{
	self endon("hash_b1b6677a");
	self endon("hash_4289520f");
	self endon("hash_128f8789");
	level waittill("hash_9babf62");
	level namespace_ad23e503::function_74d6b22f("flag_player_fired_early");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self.var_7dfaf62 = 96;
}

/*
	Name: function_e7ad7b2d
	Namespace: namespace_36e484c6
	Checksum: 0x56BDB462
	Offset: 0x3318
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_e7ad7b2d()
{
	self endon("hash_bd74d007");
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_aa1618b0");
		self thread function_894eda11(1);
		wait(3);
	}
}

/*
	Name: function_2310d9a6
	Namespace: namespace_36e484c6
	Checksum: 0x68554026
	Offset: 0x3378
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_2310d9a6()
{
	self endon("hash_bd74d007");
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_b9a2e2cb");
		self thread function_894eda11(0.25);
		wait(3);
	}
}

/*
	Name: function_894eda11
	Namespace: namespace_36e484c6
	Checksum: 0x87F56B33
	Offset: 0x33D8
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function function_894eda11(var_10fcb680)
{
	self endon("hash_128f8789");
	self endon("hash_bd74d007");
	var_56dd1913 = function_99201f25("darkroom_enemy", "script_noteworthy");
	foreach(var_c8e5ddf8 in var_56dd1913)
	{
		if(function_5b49d38c(var_c8e5ddf8) && var_10fcb680 > function_72a94f05(0, 1))
		{
			if(var_c8e5ddf8.var_a1da348d == 0)
			{
				var_c8e5ddf8 thread function_d930bc63(self);
			}
		}
	}
}

/*
	Name: function_d930bc63
	Namespace: namespace_36e484c6
	Checksum: 0xE751DED0
	Offset: 0x3508
	Size: 0x255
	Parameters: 2
	Flags: None
*/
function function_d930bc63(var_377a9c22, var_62240a71)
{
	if(!isdefined(var_62240a71))
	{
		var_62240a71 = 5;
	}
	self endon("hash_128f8789");
	self.var_a1da348d = 1;
	if(function_65f192a6(var_377a9c22))
	{
		var_a03ca40a = var_377a9c22;
	}
	else
	{
		var_a03ca40a = function_9b7fda5e("script_model", var_377a9c22.var_722885f3 + VectorScale((0, 0, 1), 32));
		var_a03ca40a function_e48f905e("tag_origin");
		var_a03ca40a.var_3a90f16b = 1000;
		var_a03ca40a.var_2dd707 = 0;
		var_a03ca40a thread function_b52761fa(var_377a9c22, self);
		var_a03ca40a thread function_8b09dfcd(var_62240a71 + 1);
	}
	self function_169cc712(self.var_722885f3, 1);
	self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_a03ca40a, undefined, var_62240a71);
	wait(var_62240a71);
	self thread namespace_d84e54db::function_7a868ba5();
	self.var_a1da348d = 0;
	var_3af498bc = function_6734cbe7(self.var_722885f3, 192);
	foreach(var_90ca1fdd in var_3af498bc)
	{
		if(!function_4eb15419(var_90ca1fdd))
		{
			self function_169cc712(var_90ca1fdd);
			break;
		}
	}
}

/*
	Name: function_b52761fa
	Namespace: namespace_36e484c6
	Checksum: 0xE586D545
	Offset: 0x3768
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_b52761fa(var_377a9c22, var_c73fc1db)
{
	var_38c28fa2 = function_298b8148(var_377a9c22.var_6ab6f4fd);
	var_7dad3ff1 = var_38c28fa2 * 50;
	var_a0d5e21e = var_7dad3ff1 + var_377a9c22.var_722885f3;
	var_58670eab = var_7dad3ff1 * -1 + var_377a9c22.var_722885f3;
	var_67766dec = var_377a9c22.var_722885f3;
	var_20b9665f = var_377a9c22.var_722885f3 + VectorScale((0, 0, 1), 50);
	while(isdefined(var_c73fc1db) && var_c73fc1db.var_a1da348d == 1)
	{
		self function_a96a2721(var_58670eab, 0.5);
		self waittill("hash_a21db68a");
		self function_a96a2721(var_67766dec, 0.5);
		self waittill("hash_a21db68a");
		self function_a96a2721(var_a0d5e21e, 0.5);
		self waittill("hash_a21db68a");
		self function_a96a2721(var_20b9665f, 0.5);
		self waittill("hash_a21db68a");
	}
}

/*
	Name: function_8b09dfcd
	Namespace: namespace_36e484c6
	Checksum: 0xCB07E299
	Offset: 0x3940
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_8b09dfcd(var_62240a71)
{
	wait(var_62240a71);
	self function_dc8c8404();
}

/*
	Name: function_43fd3f0f
	Namespace: namespace_36e484c6
	Checksum: 0x2670F7F3
	Offset: 0x3970
	Size: 0x207
	Parameters: 1
	Flags: None
*/
function function_43fd3f0f(var_96db1e36)
{
	self endon("hash_128f8789");
	var_96db1e36 = 48 + var_96db1e36;
	self.var_a1da348d = 1;
	var_7d15e2f8 = 64 + var_96db1e36;
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		var_5cea64bb = self.var_6ab6f4fd;
		var_c9a3e270 = function_72a94f05(var_5cea64bb[1] + 30, var_5cea64bb[1] + 90);
		var_3fe16490 = (0, var_c9a3e270, 0);
		var_9b0373e4 = function_bc7ce905(var_3fe16490);
		var_80dea2ec = (0, 0, var_96db1e36);
		var_cab1ae2f = self.var_722885f3 + var_80dea2ec + var_9b0373e4 * var_7d15e2f8;
		var_a03ca40a = function_9b7fda5e("script_origin", var_cab1ae2f);
		var_a03ca40a.var_3a90f16b = 1000;
		var_62240a71 = 1.5;
		self function_169cc712(self.var_722885f3, 1);
		self namespace_d84e54db::function_d104c596("normal", var_a03ca40a, undefined, var_62240a71);
		wait(var_62240a71);
		var_a03ca40a function_dc8c8404();
	}
	self.var_a1da348d = 0;
}

/*
	Name: function_25c6144e
	Namespace: namespace_36e484c6
	Checksum: 0x4E71109B
	Offset: 0x3B80
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_25c6144e()
{
	namespace_2f06d687::function_2b37a3c9("vtol_tackle_guy", "script_noteworthy", &namespace_2cb3876f::function_35be2939, "vtol_guards_alerted");
	namespace_d5067552::function_bae40a28("vtol_tackle_spwn_mgr2");
}

/*
	Name: function_2909799b
	Namespace: namespace_36e484c6
	Checksum: 0x7469BC7E
	Offset: 0x3BE0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_2909799b()
{
	if(!self namespace_ad23e503::function_dbca4c5d("no_damage_taken"))
	{
		self namespace_ad23e503::function_c35e6aab("no_damage_taken");
	}
	self namespace_ad23e503::function_74d6b22f("no_damage_taken");
	self waittill("hash_f9348fda");
	self namespace_ad23e503::function_9d134160("no_damage_taken");
}

/*
	Name: function_4933d21a
	Namespace: namespace_36e484c6
	Checksum: 0xA61DE96F
	Offset: 0x3C78
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4933d21a()
{
	self endon("hash_128f8789");
	if(self namespace_ad23e503::function_dbca4c5d("no_damage_taken") && self namespace_ad23e503::function_7922262b("no_damage_taken"))
	{
		namespace_61c634f2::function_b9175513(self);
	}
}

/*
	Name: function_b7634680
	Namespace: namespace_36e484c6
	Checksum: 0x33412DC
	Offset: 0x3CE8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b7634680()
{
	self namespace_ad23e503::function_c35e6aab("used_only_melee", 1);
	self namespace_ad23e503::function_c35e6aab("melee_killed_ai");
	self thread function_b12285b9();
	self thread function_5f41b7ea();
}

/*
	Name: function_e2b1615a
	Namespace: namespace_36e484c6
	Checksum: 0xCEECC8AA
	Offset: 0x3D68
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_e2b1615a(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(var_a8563e07.var_3a212fd7 namespace_ad23e503::function_dbca4c5d("melee_killed_ai") && !var_a8563e07.var_3a212fd7 namespace_ad23e503::function_7922262b("melee_killed_ai"))
		{
			var_a8563e07.var_3a212fd7 namespace_ad23e503::function_74d6b22f("melee_killed_ai");
		}
	}
}

/*
	Name: function_b12285b9
	Namespace: namespace_36e484c6
	Checksum: 0x9214A0EF
	Offset: 0x3E18
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_b12285b9()
{
	self waittill("hash_e5ccf3dc", var_f461b5d, var_dfcc01fd);
	self namespace_ad23e503::function_9d134160("used_only_melee");
}

/*
	Name: function_5f41b7ea
	Namespace: namespace_36e484c6
	Checksum: 0x4B413ED9
	Offset: 0x3E68
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5f41b7ea()
{
	self waittill("hash_aa1618b0");
	self namespace_ad23e503::function_9d134160("used_only_melee");
}

/*
	Name: function_63222c73
	Namespace: namespace_36e484c6
	Checksum: 0x8BDC5066
	Offset: 0x3EA0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_63222c73()
{
	self endon("hash_128f8789");
	if(self namespace_ad23e503::function_dbca4c5d("used_only_melee") && self namespace_ad23e503::function_7922262b("used_only_melee") && self namespace_ad23e503::function_7922262b("melee_killed_ai"))
	{
		namespace_61c634f2::function_df19cf7c(self);
	}
}

#namespace namespace_1c6b20b7;

/*
	Name: function_e9166d2d
	Namespace: namespace_1c6b20b7
	Checksum: 0xE401CD8A
	Offset: 0x3F30
	Size: 0x3BB
	Parameters: 1
	Flags: None
*/
function function_e9166d2d(var_74cd64bc)
{
	var_6cf84815 = function_84970cc4(level.var_5d4087a6, level.var_92d245e2, level.var_9db406db, level.var_4d5a4697, level.var_2fd26037);
	namespace_84970cc4::function_966ecb29(var_6cf84815, &function_b243f34);
	if(!var_74cd64bc)
	{
		level namespace_ad23e503::function_1ab5ebec("dark_battle_end");
	}
	function_46853a2(var_74cd64bc);
	namespace_4dbf3ae3::function_42e87952("post_vtol_tackle_colors");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_9f824288::function_5d2cdd99();
	level thread function_551feb8e();
	level waittill("hash_147f8c7");
	level namespace_2cb3876f::function_6a5f89cb("skipto_vtol_tackle_ai");
	foreach(var_e4463170 in level.var_681ad194)
	{
		var_e4463170 thread namespace_d51ba4::function_f1dda14f("ally_0" + var_e4463170.var_a89679b6 + "_vtol_tackle_node");
		var_e4463170 function_b243f34();
	}
	level thread namespace_d0ef8521::function_45d1556("dark_battle_breadcrumb_5");
	namespace_84970cc4::function_966ecb29(var_6cf84815, &function_b243f34, 0);
	namespace_84970cc4::function_966ecb29(level.var_681ad194, &function_b243f34, 0);
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 namespace_6f7b2095::function_54bdb053();
	}
	level.var_92d245e2 namespace_6f7b2095::function_1b497663("o");
	var_277f35c0 = function_b4cb3503("theia_vtol_tackle_node", "targetname");
	level.var_5d4087a6 function_169cc712(var_277f35c0, 1);
	level.var_2fd26037 thread function_d7cf408b();
	level thread function_d64747d6();
	level namespace_ad23e503::function_1ab5ebec("vtol_tackle_move_allies");
	thread function_6490ef93();
	namespace_d5067552::function_2992720d("vtol_tackle_spwn_mgr", 1);
	level thread function_d017a379();
	level namespace_ad23e503::function_1ab5ebec("robot_reveal");
	namespace_1d795d47::function_be8adfb8("skipto_vtol_tackle");
}

/*
	Name: function_551feb8e
	Namespace: namespace_1c6b20b7
	Checksum: 0x84318EA6
	Offset: 0x42F8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_551feb8e()
{
	namespace_d5067552::function_bae40a28("vtol_tackle_spwn_mgr_door");
	namespace_2f06d687::function_7387a40a("vtol_tackle_staircase_guard");
}

/*
	Name: function_b243f34
	Namespace: namespace_1c6b20b7
	Checksum: 0x8FB1A16F
	Offset: 0x4338
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_b243f34(var_ca4b1dc7)
{
	if(!isdefined(var_ca4b1dc7))
	{
		var_ca4b1dc7 = 1;
	}
	if(var_ca4b1dc7)
	{
		self namespace_d84e54db::function_b4f5e3b9(1);
		self namespace_d84e54db::function_c9e45d52(1);
		self.var_7dfaf62 = 32;
	}
	else
	{
		self namespace_76d95162::function_d9f49fba(1);
		self namespace_d84e54db::function_b4f5e3b9(0);
		self namespace_d84e54db::function_c9e45d52(0);
	}
}

/*
	Name: function_46853a2
	Namespace: namespace_1c6b20b7
	Checksum: 0x4EBAABA6
	Offset: 0x43F8
	Size: 0x27B
	Parameters: 1
	Flags: None
*/
function function_46853a2(var_74cd64bc)
{
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_236046c4);
	level namespace_cc27597::function_8f9f34e0("cin_pro_13_01_vtoltackle_vign_takedown", &function_b007992c, "play");
	if(var_74cd64bc)
	{
		level thread namespace_cc27597::function_5c143f59("cin_pro_13_01_vtoltackle_vign_takedown", undefined, undefined, 0.2);
		level thread namespace_cc27597::function_5c143f59("cin_pro_13_01_vtoltackle_vign_takedown_khalil", undefined, undefined, 0.2);
		level thread namespace_cc27597::function_5c143f59("cin_pro_13_01_vtoltackle_vign_takedown_minister", undefined, undefined, 0.2);
	}
	else
	{
		level thread namespace_cc27597::function_43718187("cin_pro_13_01_vtoltackle_vign_takedown");
		level thread namespace_cc27597::function_43718187("cin_pro_13_01_vtoltackle_vign_takedown_khalil");
		level thread namespace_cc27597::function_43718187("cin_pro_13_01_vtoltackle_vign_takedown_minister");
	}
	level.var_5d4087a6 function_169cc712(function_b4cb3503("hyperion_post_dark_battle", "targetname"), 1);
	namespace_96fa87af::function_2962e239("vtol_vehicle");
	level thread function_623731e2();
	level thread function_321578a8();
	level thread function_1e5dba01();
	level waittill("hash_7ab4e268");
	level namespace_ad23e503::function_74d6b22f("vtol_has_crashed");
	level namespace_ad23e503::function_74d6b22f("vtol_guards_alerted");
	var_90ca1fdd = function_b4cb3503("prometheus_vtol_tackle_node2", "targetname");
	level.var_92d245e2 thread namespace_d84e54db::function_19e98020(var_90ca1fdd, 32);
}

/*
	Name: function_b007992c
	Namespace: namespace_1c6b20b7
	Checksum: 0x61634651
	Offset: 0x4680
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_b007992c(var_c77d2837)
{
	var_edc6e0e1 = var_c77d2837["vtol"];
	var_edc6e0e1.var_801bfae0 = "none";
	var_edc6e0e1 thread namespace_2cb3876f::function_dacec601("buzz_high", "stop_vh_rumble", 0.05, 0.1, 3000, 20);
	var_edc6e0e1 thread namespace_2cb3876f::function_c56034b7();
	level waittill("hash_3af3e792");
	var_edc6e0e1 notify("hash_128f8789");
	var_edc6e0e1 notify("hash_c5b436ee");
	var_edc6e0e1 function_e48f905e("veh_t7_mil_vtol_nrc_no_interior_d");
	level thread namespace_2cb3876f::function_2a0bc326(var_edc6e0e1.var_722885f3, 0.6, 2, 5000, 6);
	namespace_80983c42::function_80983c42("light_exploder_vtol_tackle_fire");
	wait(1);
	level thread namespace_2cb3876f::function_2a0bc326(var_edc6e0e1.var_722885f3, 0.3, 2, 5000, 6);
}

/*
	Name: function_1e5dba01
	Namespace: namespace_1c6b20b7
	Checksum: 0x2C19415C
	Offset: 0x47F8
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_1e5dba01()
{
	level waittill("hash_ec873a98");
	var_280d5f68 = function_6ada35ba("intelstation_exit_door_l", "targetname");
	var_3c301126 = function_6ada35ba("intelstation_exit_door_r", "targetname");
	var_96ba651b = (54, 0, 0);
	var_ebf82f1 = var_280d5f68.var_722885f3 + var_96ba651b;
	var_280d5f68 function_a96a2721(var_ebf82f1, 0.5);
	var_ebf82f1 = var_3c301126.var_722885f3 - var_96ba651b;
	var_3c301126 function_a96a2721(var_ebf82f1, 0.5);
	var_3c301126 waittill("hash_a21db68a");
	var_3c301126 function_de8377bf();
	var_280d5f68 function_de8377bf();
	level notify("hash_147f8c7");
}

/*
	Name: function_321578a8
	Namespace: namespace_1c6b20b7
	Checksum: 0xA0E73D1D
	Offset: 0x4968
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_321578a8()
{
	level waittill("hash_41679010");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_vtol_tackle_windows_bundle");
}

/*
	Name: function_623731e2
	Namespace: namespace_1c6b20b7
	Checksum: 0xDC0D2BC1
	Offset: 0x49A0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_623731e2()
{
	level waittill("hash_13ea3fcf");
	level thread namespace_21b2c1f2::function_f573bcb9();
	level namespace_71b8dba1::function_a463d127("tayr_easy_hold_your_fire_0", undefined, "normal");
}

/*
	Name: function_d64747d6
	Namespace: namespace_1c6b20b7
	Checksum: 0xE62D562C
	Offset: 0x49F8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_d64747d6()
{
	level thread namespace_21b2c1f2::function_49fef8f4();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_taylor_alpha_two_te_0", 2);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_comes_easy_now_hu_0", 1.5);
	level.var_92d245e2 namespace_71b8dba1::function_81141386("tayr_extract_is_the_satel_0", 0.5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_didn_t_answer_me_0", 0.5);
	level.var_5d4087a6 namespace_71b8dba1::function_81141386("mare_keep_up_secondary_r_0", 3);
}

/*
	Name: function_d7cf408b
	Namespace: namespace_1c6b20b7
	Checksum: 0x4176C7C1
	Offset: 0x4AE8
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_d7cf408b()
{
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	var_90ca1fdd = function_b4cb3503("hendricks_vtol_tackle_node2", "targetname");
	self function_169cc712(var_90ca1fdd, 1);
	self.var_7dfaf62 = 500;
}

/*
	Name: function_67877d47
	Namespace: namespace_1c6b20b7
	Checksum: 0xA96365F1
	Offset: 0x4B78
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_67877d47(var_bf0873ca)
{
	var_90ca1fdd = function_b4cb3503(var_bf0873ca, "targetname");
	self function_169cc712(var_90ca1fdd, 1);
}

/*
	Name: function_6490ef93
	Namespace: namespace_1c6b20b7
	Checksum: 0xEDFCE9B8
	Offset: 0x4BD8
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_6490ef93()
{
	var_67c6c543 = function_c20c2e8("dark_battle_guy", "targetname");
	foreach(var_78080f8f in var_67c6c543)
	{
		if(function_5b49d38c(var_78080f8f))
		{
			var_78080f8f function_2992720d();
		}
	}
}

/*
	Name: function_d017a379
	Namespace: namespace_1c6b20b7
	Checksum: 0x91E5947D
	Offset: 0x4CB0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d017a379()
{
	level namespace_2f06d687::function_72214789("vtol_tackle_enemies");
	namespace_4dbf3ae3::function_42e87952("robot_reveal_trig");
}

/*
	Name: function_236046c4
	Namespace: namespace_1c6b20b7
	Checksum: 0xEC57F130
	Offset: 0x4CF8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_236046c4()
{
	level endon("hash_51bc43cb");
	self waittill("hash_aa1618b0");
	level namespace_ad23e503::function_74d6b22f("vtol_guards_alerted");
	self thread function_ecf2e565();
}

/*
	Name: function_ecf2e565
	Namespace: namespace_1c6b20b7
	Checksum: 0x602C0766
	Offset: 0x4D58
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_ecf2e565()
{
	level endon("hash_51bc43cb");
	var_6d8dbcae = function_6ada35ba("vtol", "animname");
	while(1)
	{
		if(!isdefined(var_6d8dbcae))
		{
			wait(0.5);
			continue;
		}
		var_30299a05 = (function_dc99997a(-150, 150), function_dc99997a(-150, 150), function_dc99997a(-150, 150));
		function_87f3c622(function_c4d5ec1f("turret_bo3_mil_vtol_nrc"), var_6d8dbcae function_d48f2ab3("tag_gunner_barrel3") + VectorScale((0, -1, 0), 40), self.var_722885f3 + var_30299a05);
		wait(0.05);
	}
}

#namespace namespace_383c5321;

/*
	Name: function_c47ce0e9
	Namespace: namespace_383c5321
	Checksum: 0x55E4F2BC
	Offset: 0x4E80
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c47ce0e9()
{
	self.var_d937392f = 0;
}

