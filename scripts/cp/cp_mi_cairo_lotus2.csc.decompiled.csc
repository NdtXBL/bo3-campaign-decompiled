#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus2_fx;
#using scripts\cp\cp_mi_cairo_lotus2_patch_c;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\lotus_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_18d64fe2;

/*
	Name: function_d290ebfa
	Namespace: namespace_18d64fe2
	Checksum: 0x3A2071C3
	Offset: 0x910
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 3);
	function_2ea898a8();
	function_aa332733("enable_global_wind", 1);
	function_aa332733("wind_global_vector", "0 -50 -30");
	namespace_6f40bee7::function_d290ebfa();
	namespace_6cf6620e::function_d290ebfa();
	function_673254cc();
	namespace_431cac9::function_84d3f32a();
	namespace_d7916d65::function_d290ebfa();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_82b91a51::function_44333182(0);
	namespace_d25497b::function_7403e82b();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_18d64fe2
	Checksum: 0x94F6266D
	Offset: 0xA30
	Size: 0x46B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_e216c11c::function_336b3c36("cp_raven_hallucination", 1, 1, "cp_raven_hallucination", "cp_raven_hallucination");
	namespace_71e9cb84::function_50f16166("world", "vtol_hallway_destruction_cleanup", 1, 1, "int", &function_d2e9cebe, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "mobile_shop_link_ents", 1, 1, "int", &function_c1403f06, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "snow_fog", 1, 1, "int", &namespace_431cac9::function_a53d70f9, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "frost_post_fx", 1, 1, "int", &namespace_431cac9::function_d823aea7, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "skybridge_sand_fx", 1, 1, "int", &function_25c42a9e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_dust_fx", 1, 1, "int", &namespace_431cac9::function_b33fd8cd, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter", &namespace_431cac9::function_baae4949, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_ravens", 1, 1, "counter", &namespace_431cac9::function_16e0096d, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_frozen_forest", 1, 1, "counter", &namespace_431cac9::function_344d4c76, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "siegebot_fans", 1, 1, "int", &function_3dc881ea, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "hide_pursuit_decals", 1, 1, "counter", &function_ab84c40f, 0, 0);
	namespace_71e9cb84::function_50f16166("allplayers", "player_frost_breath", 1, 1, "int", &namespace_431cac9::function_df6eb506, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "hendricks_frost_breath", 1, 1, "int", &namespace_431cac9::function_b8a4442e, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "rogue_bot_fx", 1, 1, "int", &namespace_431cac9::function_536a14db, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "mobile_shop_fxanims", 1, 3, "int", &namespace_431cac9::function_571c4083, 0, 0);
}

/*
	Name: function_673254cc
	Namespace: namespace_18d64fe2
	Checksum: 0x2CAD71C6
	Offset: 0xEA8
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("prometheus_otr", &function_6a18d1d4, "Prometheus OTR");
	namespace_1d795d47::function_69554b3e("vtol_hallway", &function_6a18d1d4, "VTOL Hallway");
	namespace_1d795d47::function_69554b3e("mobile_shop_ride2", &function_2980c418, "Mobile Shop Ride 2");
	namespace_1d795d47::function_69554b3e("bridge_battle", &function_441f2e2c, "Get to the Detention Center");
	namespace_1d795d47::function_69554b3e("up_to_detention_center", &function_441f2e2c, "Get to the Detention Center");
	namespace_1d795d47::function_69554b3e("detention_center", &function_c1e7454e, "Detention Center");
	namespace_1d795d47::function_69554b3e("stand_down", &function_6a18d1d4, "Stand Down");
	namespace_1d795d47::function_69554b3e("pursuit", &function_5342496, "Pursuit");
	namespace_1d795d47::function_69554b3e("industrial_zone", &function_d7bef775, "Industrial Zone");
	namespace_1d795d47::function_69554b3e("sky_bridge1", &function_bf671d35, "Sky Bridge1");
	namespace_1d795d47::function_69554b3e("sky_bridge2", &function_e569979e, "Sky Bridge2");
	namespace_1d795d47::function_69554b3e("tower_2_ascent", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("prometheus_intro", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("boss_battle", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("old_friend", &function_6a18d1d4);
}

/*
	Name: function_6a18d1d4
	Namespace: namespace_18d64fe2
	Checksum: 0xF673DFDB
	Offset: 0x1168
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_6a18d1d4(var_b04bc952, var_74cd64bc)
{
}

/*
	Name: function_2980c418
	Namespace: namespace_18d64fe2
	Checksum: 0x137E325
	Offset: 0x1188
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_2980c418(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_lotus_vtol_hallway_destruction_01_bundle", &function_d0cca429, "play");
	}
}

/*
	Name: function_d0cca429
	Namespace: namespace_18d64fe2
	Checksum: 0x68C005F7
	Offset: 0x11E0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_d0cca429(var_c77d2837)
{
	wait(0.5);
	var_c77d2837["lotus_vtol_hallway_destruction02"] function_3d6438ae("set_anim", "p7_fxanim_cp_lotus_vtol_hallway_destruction_02_sanim", "set_shot", "default", "pause", "goto_end");
}

/*
	Name: function_441f2e2c
	Namespace: namespace_18d64fe2
	Checksum: 0x8FAB8CF9
	Offset: 0x1250
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function function_441f2e2c(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc || var_b04bc952 == "bridge_battle")
	{
		var_58e8d0ae = namespace_14b42b8a::function_7922262b("siege_anim_bridge_crowd_1");
		var_32e65645 = namespace_14b42b8a::function_7922262b("siege_anim_bridge_crowd_2");
		var_58e8d0ae thread namespace_cc27597::function_43718187("cin_lot_03_01_hakim_crowd_new");
		var_32e65645 thread namespace_cc27597::function_43718187("cin_lot_03_01_hakim_crowd_new");
	}
}

/*
	Name: function_c1e7454e
	Namespace: namespace_18d64fe2
	Checksum: 0xF06C0C8F
	Offset: 0x1310
	Size: 0xA3
	Parameters: 2
	Flags: None
*/
function function_c1e7454e(var_b04bc952, var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		var_58e8d0ae = namespace_14b42b8a::function_7922262b("siege_anim_bridge_crowd_1");
		var_32e65645 = namespace_14b42b8a::function_7922262b("siege_anim_bridge_crowd_2");
		var_58e8d0ae thread namespace_cc27597::function_fcf56ab5("cin_lot_03_01_hakim_crowd_new");
		var_32e65645 thread namespace_cc27597::function_fcf56ab5("cin_lot_03_01_hakim_crowd_new");
	}
}

/*
	Name: function_5342496
	Namespace: namespace_18d64fe2
	Checksum: 0xAE303E70
	Offset: 0x13C0
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_5342496(var_b04bc952, var_74cd64bc)
{
	var_58e8d0ae = namespace_14b42b8a::function_7922262b("siege_anim_pursuit_crowd_1");
	var_32e65645 = namespace_14b42b8a::function_7922262b("siege_anim_pursuit_crowd_2");
	var_58e8d0ae thread namespace_cc27597::function_43718187("cin_lot_03_01_hakim_crowd_new");
	var_32e65645 thread namespace_cc27597::function_43718187("cin_lot_03_01_hakim_crowd_new");
}

/*
	Name: function_d7bef775
	Namespace: namespace_18d64fe2
	Checksum: 0xD7BF4CB
	Offset: 0x1468
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_d7bef775(var_b04bc952, var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		var_58e8d0ae = namespace_14b42b8a::function_7922262b("siege_anim_pursuit_crowd_1");
		var_32e65645 = namespace_14b42b8a::function_7922262b("siege_anim_pursuit_crowd_2");
		var_58e8d0ae thread namespace_cc27597::function_fcf56ab5("cin_lot_03_01_hakim_crowd_new");
		var_32e65645 thread namespace_cc27597::function_fcf56ab5("cin_lot_03_01_hakim_crowd_new");
	}
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_dogfight_lrg_bundle", "scriptbundlename");
}

/*
	Name: function_bf671d35
	Namespace: namespace_18d64fe2
	Checksum: 0x8EF8F4FF
	Offset: 0x1540
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_bf671d35(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_dogfight_lrg_bundle", "scriptbundlename");
	}
}

/*
	Name: function_e569979e
	Namespace: namespace_18d64fe2
	Checksum: 0xB77F6D9F
	Offset: 0x1590
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_e569979e(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_dogfight_lrg_bundle", "scriptbundlename");
		level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_lotus_skybridge_vtol_crash_bundle", &function_614af0bc, "play");
	}
}

/*
	Name: function_614af0bc
	Namespace: namespace_18d64fe2
	Checksum: 0x1776E34E
	Offset: 0x1610
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_614af0bc(var_c77d2837)
{
	wait(0.5);
	var_c77d2837["fxanim_skybridge_vtol_debris"] function_3d6438ae("set_anim", "p7_fxanim_cp_lotus_skybridge_vtol_debris_sanim", "set_shot", "default", "pause", "goto_end");
}

/*
	Name: function_aebcf025
	Namespace: namespace_18d64fe2
	Checksum: 0x4ADAADC5
	Offset: 0x1680
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	level thread function_7c5fff02(var_ec74b091);
	self thread function_70f4b03d(var_ec74b091);
	self thread namespace_431cac9::function_74fb8848(var_ec74b091);
	var_8a357b77 = function_99201f25(var_ec74b091, "ventilation_fan", "targetname");
	namespace_84970cc4::function_966ecb29(var_8a357b77, &namespace_431cac9::function_a62110e9);
}

/*
	Name: function_d2e9cebe
	Namespace: namespace_18d64fe2
	Checksum: 0x40AACA7D
	Offset: 0x1738
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_d2e9cebe(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_cf815e6b = function_6ada35ba(var_ec74b091, "lotus_vtol_hallway_destruction02", "targetname");
		if(isdefined(var_cf815e6b))
		{
			var_cf815e6b function_dc8c8404();
		}
	}
}

/*
	Name: function_3dc881ea
	Namespace: namespace_18d64fe2
	Checksum: 0xE75BF33F
	Offset: 0x17E0
	Size: 0x141
	Parameters: 7
	Flags: None
*/
function function_3dc881ea(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_d596fadb = function_99201f25(var_ec74b091, "siegebot_fan", "targetname");
	foreach(var_5606c964 in var_d596fadb)
	{
		if(var_9193c732)
		{
			var_5606c964 function_cea50a94(1);
			var_5606c964 thread namespace_431cac9::function_a62110e9();
			continue;
		}
		var_5606c964 notify("hash_b1727ec2");
		var_5606c964 function_dc8c8404();
	}
}

/*
	Name: function_7c5fff02
	Namespace: namespace_18d64fe2
	Checksum: 0x7F0BFEE7
	Offset: 0x1930
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_7c5fff02(var_ec74b091)
{
	for(var_c957f6b6 = 135; var_c957f6b6 <= 165;  = 135)
	{
		var_d72a94c2 = "mobile_shop_2_floor_" + var_c957f6b6;
		var_f92a03e7 = function_6ada35ba(var_ec74b091, var_d72a94c2, "targetname");
		if(!isdefined(var_f92a03e7))
		{
		}
		else
		{
			var_f92a03e7.var_d2bd0484 = var_ec74b091;
			var_f92a03e7 waittill("hash_4dbf3ae3", var_8aaf83c0);
			level thread function_babb7bd8(var_f92a03e7);
		}
	}
}

/*
	Name: function_babb7bd8
	Namespace: namespace_18d64fe2
	Checksum: 0x41D431C4
	Offset: 0x1A10
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_babb7bd8(var_f92a03e7)
{
	level thread namespace_cc27597::function_43718187(var_f92a03e7.var_170527fb, "targetname");
	wait(5);
	level thread namespace_cc27597::function_fcf56ab5(var_f92a03e7.var_170527fb, "targetname");
}

/*
	Name: function_c1403f06
	Namespace: namespace_18d64fe2
	Checksum: 0x62E48E52
	Offset: 0x1A80
	Size: 0x117
	Parameters: 7
	Flags: None
*/
function function_c1403f06(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(self.var_64ad3bc2 !== 1)
	{
		var_a7327e9a = function_99201f25(var_ec74b091, self.var_db7bb468, "targetname");
		foreach(var_7c71a3fa in var_a7327e9a)
		{
			var_7c71a3fa function_37f7858a(self);
		}
		self.var_64ad3bc2 = 1;
	}
}

/*
	Name: function_25c42a9e
	Namespace: namespace_18d64fe2
	Checksum: 0x28AE849B
	Offset: 0x1BA0
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_25c42a9e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self thread function_c70785ee(var_ec74b091);
	}
	else
	{
		self notify("hash_614dea17");
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
		}
	}
}

/*
	Name: function_c70785ee
	Namespace: namespace_18d64fe2
	Checksum: 0x4FA155ED
	Offset: 0x1C50
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_c70785ee(var_ec74b091)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	self endon("hash_614dea17");
	while(1)
	{
		self.var_ac46de76 = function_2e9c26ef(var_ec74b091, level.var_c1aa5253["player_sand_skybridge"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
		wait(0.1);
	}
}

/*
	Name: function_70f4b03d
	Namespace: namespace_18d64fe2
	Checksum: 0x658E005C
	Offset: 0x1CD8
	Size: 0x127
	Parameters: 1
	Flags: None
*/
function function_70f4b03d(var_ec74b091)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	var_59579cf9 = function_6ada35ba(var_ec74b091, "turn_off_sand_fx", "targetname");
	var_c866fc0d = function_6ada35ba(var_ec74b091, "turn_on_sand_fx", "targetname");
	while(1)
	{
		if(!isdefined(var_59579cf9) || !isdefined(var_c866fc0d))
		{
			break;
		}
		if(isdefined(var_59579cf9))
		{
			var_59579cf9 waittill("hash_4dbf3ae3");
		}
		self function_25c42a9e(var_ec74b091, 1, 0, 0, 0, undefined, 0);
		if(isdefined(var_c866fc0d))
		{
			var_c866fc0d waittill("hash_4dbf3ae3");
		}
		self function_25c42a9e(var_ec74b091, 0, 1, 0, 0, undefined, 0);
	}
}

/*
	Name: function_ab84c40f
	Namespace: namespace_18d64fe2
	Checksum: 0xBCE4A775
	Offset: 0x1E08
	Size: 0xF1
	Parameters: 7
	Flags: None
*/
function function_ab84c40f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_1f716b64 = function_244f59e6("pursuit_snow_decals");
		foreach(var_4bc288a0 in var_1f716b64)
		{
			function_733db26(var_4bc288a0);
		}
	}
}

/*
	Name: function_71f88fc
	Namespace: namespace_18d64fe2
	Checksum: 0x799F1AFF
	Offset: 0x1F08
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_4bc288a0)
{
	switch(var_4bc288a0)
	{
		case 1:
		{
			function_2e76fa01("c_hro_hendricks_egypt_fb");
			function_71c4474e("cin_lot_05_01_hack_system_1st_breach_player");
			function_71c4474e("p7_fxanim_cp_lotus_monitor_security_bundle");
			function_1a2ef02e("cp_mi_cairo_lotus2");
			break;
		}
		case 2:
		{
			function_2e76fa01("c_hro_taylor_base_fb");
			function_2e76fa01("c_hro_hendricks_egypt_fb");
			function_2e76fa01("p7_cai_lotus_security_double_door_rt");
			function_2e76fa01("p7_cai_lotus_security_double_door_lt");
			function_2e76fa01("c_nrc_robot_grunt");
			break;
		}
		case 3:
		{
			function_71c4474e("cin_lot_10_01_skybridge_1st_push");
			break;
		}
		case default:
		{
			break;
		}
	}
}

