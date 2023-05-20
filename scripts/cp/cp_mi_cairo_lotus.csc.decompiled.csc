#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus_fx;
#using scripts\cp\cp_mi_cairo_lotus_patch_c;
#using scripts\cp\cp_mi_cairo_lotus_sound;
#using scripts\cp\lotus_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\math_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_7cb27be0;

/*
	Name: function_d290ebfa
	Namespace: namespace_7cb27be0
	Checksum: 0xD069524F
	Offset: 0x958
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 3);
	function_2ea898a8();
	namespace_9bdf8ed1::function_d290ebfa();
	namespace_9750c824::function_d290ebfa();
	function_673254cc();
	namespace_431cac9::function_84d3f32a();
	namespace_d7916d65::function_d290ebfa();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_82b91a51::function_44333182(0);
	namespace_1a639ab1::function_7403e82b();
}

/*
	Name: function_aebcf025
	Namespace: namespace_7cb27be0
	Checksum: 0xEE7AC811
	Offset: 0xA38
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_8a357b77 = function_99201f25(var_ec74b091, "ventilation_fan", "targetname");
	namespace_84970cc4::function_966ecb29(var_8a357b77, &namespace_431cac9::function_a62110e9);
	var_5dc5e20a thread namespace_431cac9::function_74fb8848(var_ec74b091);
	var_5dc5e20a thread function_f61f00f(var_ec74b091);
}

/*
	Name: function_f61f00f
	Namespace: namespace_7cb27be0
	Checksum: 0x67D23501
	Offset: 0xAF8
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_f61f00f(var_ec74b091)
{
	self notify("hash_78bd6500");
	self endon("hash_78bd6500");
	var_f92a03e7 = function_6ada35ba(var_ec74b091, "mobile_shop_1_final_ascent", "targetname");
	if(function_27c72c1b() && !isdefined(var_f92a03e7))
	{
		return;
	}
	var_f92a03e7.var_d2bd0484 = var_ec74b091;
	var_f92a03e7 waittill("hash_4dbf3ae3", var_8aaf83c0);
	var_f92a03e7 thread namespace_4dbf3ae3::function_d1278be0(var_8aaf83c0, &function_df453073);
}

/*
	Name: function_2ea898a8
	Namespace: namespace_7cb27be0
	Checksum: 0x5690D9FC
	Offset: 0xBD8
	Size: 0x4B3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_e216c11c::function_336b3c36("cp_raven_hallucination", 1, 1, "cp_raven_hallucination", "cp_raven_hallucination");
	namespace_71e9cb84::function_50f16166("world", "hs_fxinit_vent", 1, 1, "int", &function_579de1bd, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "hs_fxanim_vent", 1, 1, "int", &function_42adde46, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "swap_crowd_to_riot", 1, 1, "int", &function_a24b1d9f, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "crowd_anims_off", 1, 1, "int", &function_a24774f1, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "mobile_shop_fxanims", 1, 3, "int", &namespace_431cac9::function_571c4083, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_decal", 1, 1, "int", &namespace_431cac9::function_ace9894c, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "pickup_hakim_rumble_loop", 1, 1, "int", &function_448b79a2, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "mobile_shop_rumble_loop", 1, 1, "int", &function_29c8893e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_dust_fx", 1, 1, "int", &namespace_431cac9::function_b33fd8cd, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "snow_fog", 1, 1, "int", &namespace_431cac9::function_a53d70f9, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "frost_post_fx", 1, 1, "int", &namespace_431cac9::function_d823aea7, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter", &namespace_431cac9::function_baae4949, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_ravens", 1, 1, "counter", &namespace_431cac9::function_16e0096d, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_frozen_forest", 1, 1, "counter", &namespace_431cac9::function_344d4c76, 0, 0);
	namespace_71e9cb84::function_50f16166("allplayers", "player_frost_breath", 1, 1, "int", &namespace_431cac9::function_df6eb506, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "hendricks_frost_breath", 1, 1, "int", &namespace_431cac9::function_b8a4442e, 0, 0);
}

/*
	Name: function_448b79a2
	Namespace: namespace_7cb27be0
	Checksum: 0x95EDFD09
	Offset: 0x1098
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_448b79a2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_8dedca9c(var_ec74b091, "cp_prologue_rumble_dropship");
	}
	else
	{
		self function_8a0ba272(var_ec74b091, "cp_prologue_rumble_dropship");
	}
}

/*
	Name: function_29c8893e
	Namespace: namespace_7cb27be0
	Checksum: 0xF1137F94
	Offset: 0x1138
	Size: 0xD3
	Parameters: 7
	Flags: None
*/
function function_29c8893e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_e2af603e(var_ec74b091, "cp_lotus_rumble_mobile_shop_shift");
		self function_8dedca9c(var_ec74b091, "cp_lotus_rumble_mobile_shop_ride");
	}
	else
	{
		self function_8a0ba272(var_ec74b091, "cp_lotus_rumble_mobile_shop_ride");
		self function_e2af603e(var_ec74b091, "cp_lotus_rumble_mobile_shop_shift");
	}
}

/*
	Name: function_71f88fc
	Namespace: namespace_7cb27be0
	Checksum: 0x54A33E9C
	Offset: 0x1218
	Size: 0x1C9
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_4bc288a0)
{
	switch(var_4bc288a0)
	{
		case 1:
		{
			function_71c4474e("cin_lot_01_planb_3rd_sh020");
			function_71c4474e("cin_lot_01_planb_3rd_sh030");
			function_71c4474e("cin_lot_01_planb_3rd_sh040");
			function_71c4474e("cin_lot_01_planb_3rd_sh050");
			function_71c4474e("cin_lot_01_planb_3rd_sh060");
			function_71c4474e("cin_lot_01_planb_3rd_sh070");
			function_71c4474e("cin_lot_01_planb_3rd_sh080");
			function_71c4474e("cin_lot_01_planb_3rd_sh090");
			function_71c4474e("cin_lot_01_planb_3rd_sh100");
			function_71c4474e("cin_lot_01_planb_3rd_sh120");
			function_71c4474e("cin_lot_01_planb_3rd_sh130");
			function_71c4474e("cin_lot_01_planb_3rd_sh140");
			function_71c4474e("cin_lot_01_planb_3rd_sh150");
			function_71c4474e("cin_lot_01_planb_3rd_sh160");
			break;
		}
		case 2:
		{
			break;
		}
		case 3:
		{
			function_71c4474e("p7_fxanim_cp_lotus_monitor_security_bundle");
			function_71c4474e("cin_lot_05_01_hack_system_1st_security_station");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_673254cc
	Namespace: namespace_7cb27be0
	Checksum: 0xFA5A23DF
	Offset: 0x13F0
	Size: 0x413
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("plan_b", &function_6a18d1d4, "Plan B");
	namespace_1d795d47::function_69554b3e("start_the_riots", &function_51d0627f, "Start the Riots");
	namespace_1d795d47::function_69554b3e("general_hakim", &function_c7545f90, "General Hakim");
	namespace_1d795d47::function_69554b3e("apartments", &function_6a18d1d4, "Apartments");
	namespace_1d795d47::function_69554b3e("atrium_battle", &function_963d89c4, "Atrium Battle");
	namespace_1d795d47::function_69554b3e("to_security_station", &function_41534d2a, "To Security Station");
	namespace_1d795d47::function_69554b3e("hack_the_system", &function_6a18d1d4, "Hack the System");
	namespace_1d795d47::function_69554b3e("prometheus_otr", &function_6a18d1d4, "Prometheus OTR");
	namespace_1d795d47::function_69554b3e("vtol_hallway", &function_6a18d1d4, "VTOL Hallway");
	namespace_1d795d47::function_69554b3e("mobile_shop_ride2", &function_6a18d1d4, "Mobile Shop Ride 2");
	namespace_1d795d47::function_69554b3e("to_detention_center3", &function_6a18d1d4, "Get to the Detention Center");
	namespace_1d795d47::function_69554b3e("to_detention_center4", &function_6a18d1d4, "Get to the Detention Center");
	namespace_1d795d47::function_69554b3e("detention_center", &function_6a18d1d4, "Detention Center");
	namespace_1d795d47::function_69554b3e("stand_down", &function_6a18d1d4, "Stand Down");
	namespace_1d795d47::function_69554b3e("pursuit", &function_6a18d1d4, "Pursuit");
	namespace_1d795d47::function_69554b3e("sky_bridge", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("tower_2_ascent", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("minigun_platform", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("platform_fall", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("hunter", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("prometheus_intro", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("boss_battle", &function_6a18d1d4);
	namespace_1d795d47::function_69554b3e("old_friend", &function_6a18d1d4);
}

/*
	Name: function_6a18d1d4
	Namespace: namespace_7cb27be0
	Checksum: 0x94D723D
	Offset: 0x1810
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_6a18d1d4(var_b04bc952, var_74cd64bc)
{
}

/*
	Name: function_51d0627f
	Namespace: namespace_7cb27be0
	Checksum: 0x5402AD65
	Offset: 0x1830
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_51d0627f(var_b04bc952, var_74cd64bc)
{
	level thread namespace_cc27597::function_43718187("crowds_early", "script_noteworthy");
	level thread namespace_cc27597::function_43718187("crowds_hakim", "script_noteworthy");
}

/*
	Name: function_c7545f90
	Namespace: namespace_7cb27be0
	Checksum: 0xECB68DC2
	Offset: 0x18A8
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_c7545f90(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread namespace_cc27597::function_43718187("crowds_hakim", "script_noteworthy");
	}
	level thread namespace_cc27597::function_fcf56ab5("crowds_early", "script_noteworthy");
	level thread namespace_cc27597::function_43718187("crowds_atrium", "script_noteworthy");
}

/*
	Name: function_a24b1d9f
	Namespace: namespace_7cb27be0
	Checksum: 0x87BE6775
	Offset: 0x1948
	Size: 0x2B1
	Parameters: 7
	Flags: None
*/
function function_a24b1d9f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level namespace_cc27597::function_fcf56ab5("crowds_atrium", "script_noteworthy");
	level namespace_cc27597::function_fcf56ab5("cin_lot_03_01_hakim_crowd_riot");
	var_70f028db = namespace_14b42b8a::function_7faf4c39("crowds_hakim", "script_noteworthy");
	foreach(var_f4a44050 in var_70f028db)
	{
		if(var_f4a44050.var_db7bb468 !== "do_not_swap")
		{
			var_f4a44050 namespace_cc27597::function_fcf56ab5();
			var_1cbcb46d = namespace_14b42b8a::function_9b7fda5e(var_f4a44050.var_722885f3, var_f4a44050.var_6ab6f4fd);
			var_1cbcb46d thread namespace_cc27597::function_43718187("cin_lot_03_01_hakim_crowd_riot");
		}
	}
	var_70f028db = namespace_14b42b8a::function_7faf4c39("crowds_atrium", "script_noteworthy");
	foreach(var_f4a44050 in var_70f028db)
	{
		var_1cbcb46d = namespace_14b42b8a::function_9b7fda5e(var_f4a44050.var_722885f3, var_f4a44050.var_6ab6f4fd);
		var_ee7dbbc9 = function_62e4226e(10);
		var_1cbcb46d thread namespace_82b91a51::function_67520c6a(var_ee7dbbc9, undefined, &namespace_cc27597::function_43718187, "cin_lot_03_01_hakim_crowd_riot");
	}
}

/*
	Name: function_a24774f1
	Namespace: namespace_7cb27be0
	Checksum: 0xEC09DDAF
	Offset: 0x1C08
	Size: 0xFB
	Parameters: 7
	Flags: None
*/
function function_a24774f1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level namespace_cc27597::function_fcf56ab5("crowds_atrium", "script_noteworthy");
	level namespace_cc27597::function_fcf56ab5("crowds_mobile_shop_1", "script_noteworthy");
	level namespace_cc27597::function_fcf56ab5("crowds_hakim", "script_noteworthy");
	level namespace_cc27597::function_fcf56ab5("crowds_to_security_station", "script_noteworthy");
	level namespace_cc27597::function_fcf56ab5("cin_lot_03_01_hakim_crowd_riot");
}

/*
	Name: function_963d89c4
	Namespace: namespace_7cb27be0
	Checksum: 0xA09412DF
	Offset: 0x1D10
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_963d89c4(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread namespace_cc27597::function_43718187("crowds_atrium", "script_noteworthy");
		level thread namespace_cc27597::function_43718187("crowds_hakim", "script_noteworthy");
	}
	level thread namespace_cc27597::function_43718187("crowds_mobile_shop_1", "script_noteworthy");
}

/*
	Name: function_df453073
	Namespace: namespace_7cb27be0
	Checksum: 0xD42A4FB6
	Offset: 0x1DB0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_df453073(var_8aaf83c0)
{
	level thread namespace_cc27597::function_43718187("crowds_to_security_station", "script_noteworthy");
	level thread namespace_cc27597::function_fcf56ab5("crowds_hakim", "script_noteworthy");
	level thread namespace_cc27597::function_fcf56ab5("crowds_atrium", "script_noteworthy");
}

/*
	Name: function_41534d2a
	Namespace: namespace_7cb27be0
	Checksum: 0xFCE688B3
	Offset: 0x1E40
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_41534d2a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread namespace_cc27597::function_43718187("crowds_to_security_station", "script_noteworthy");
		level thread namespace_cc27597::function_fcf56ab5("crowds_hakim", "script_noteworthy");
		level thread namespace_cc27597::function_fcf56ab5("crowds_atrium", "script_noteworthy");
	}
}

/*
	Name: function_579de1bd
	Namespace: namespace_7cb27be0
	Checksum: 0xCAC3E820
	Offset: 0x1EE0
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_579de1bd(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_f9aa8824)
{
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_vents_bundle");
}

/*
	Name: function_42adde46
	Namespace: namespace_7cb27be0
	Checksum: 0xA9E267C
	Offset: 0x1F48
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_42adde46(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_f9aa8824)
{
	if(var_3a04fa7e)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_vents_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_trash_paper_burst_up_01_bundle");
	}
}

