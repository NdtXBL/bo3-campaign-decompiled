#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_elevator;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus2_fx;
#using scripts\cp\cp_mi_cairo_lotus2_patch;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_accolades;
#using scripts\cp\lotus_detention_center;
#using scripts\cp\lotus_pursuit;
#using scripts\cp\lotus_security_station;
#using scripts\cp\lotus_sky_bridge;
#using scripts\cp\lotus_util;
#using scripts\cp\voice\voice_lotus2;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_18d64fe2;

/*
	Name: function_243693d4
	Namespace: namespace_18d64fe2
	Checksum: 0x7BCE6C8F
	Offset: 0x760
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_243693d4()
{
	namespace_82b91a51::function_3bf39ed7("coop");
	namespace_82b91a51::function_3bf39ed7("cpzm");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_18d64fe2
	Checksum: 0x70EDDBE2
	Offset: 0x7A0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	if(function_27c72c1b() && 0)
	{
		function_863d6bb0(34);
	}
	else
	{
		function_863d6bb0(106);
	}
	namespace_9f824288::function_8c0c4b3a("lotus");
	namespace_82b91a51::function_286a5010(3);
	function_2ea898a8();
	function_39965f5d();
	function_673254cc();
	function_37af8a07();
	function_90b86ce7();
	namespace_d275cebc::function_93523442("p7_nc_cai_lot_05", 45, VectorScale((0, -1, 0), 20));
	namespace_d3549a89::function_e230521c();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_6f40bee7::function_d290ebfa();
	namespace_6cf6620e::function_d290ebfa();
	namespace_cc27597::function_6676939("cin_lot_08_01_standdown_sh010");
	namespace_d7916d65::function_d290ebfa();
	namespace_1d795d47::function_f3e035ef();
	namespace_431cac9::function_f80cafbd(0);
	namespace_431cac9::function_77bfc3b2();
	namespace_f4ff722a::function_66df416f();
	namespace_431cac9::function_3b6587d6(1, "lotus2_tower2_umbra_gate");
	namespace_431cac9::function_3b6587d6(1, "lotus2_tower1_debris_push_umbra_gate");
	namespace_cd1d0c2d::function_7403e82b();
}

/*
	Name: function_90b86ce7
	Namespace: namespace_18d64fe2
	Checksum: 0x6DEE387F
	Offset: 0x9B0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_90b86ce7()
{
	level thread function_25b90f43();
}

/*
	Name: function_25b90f43
	Namespace: namespace_18d64fe2
	Checksum: 0xE8DF14FE
	Offset: 0x9D8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_25b90f43()
{
	var_72634645 = function_a8fb77bd();
	var_72634645.var_722885f3 = (-3169.52, 1919.31, 15824);
	var_72634645.var_6ab6f4fd = (0, 0, 0);
	namespace_4dbf3ae3::function_1ab5ebec("industrial_zone_complete", "targetname");
	level.var_2fd26037 namespace_6f7b2095::function_89827d0f(var_72634645);
}

/*
	Name: function_2ea898a8
	Namespace: namespace_18d64fe2
	Checksum: 0xA96D67C5
	Offset: 0xA80
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_e216c11c::function_9be319f9("visionset", "cp_raven_hallucination", 1, 100, 1, 1);
	namespace_71e9cb84::function_50f16166("vehicle", "mobile_shop_link_ents", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "vtol_hallway_destruction_cleanup", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "snow_fog", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "frost_post_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "skybridge_sand_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_dust_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_ravens", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_frozen_forest", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "siegebot_fans", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "hide_pursuit_decals", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("allplayers", "player_frost_breath", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "hendricks_frost_breath", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "rogue_bot_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "mobile_shop_fxanims", 1, 3, "int");
}

/*
	Name: function_39965f5d
	Namespace: namespace_18d64fe2
	Checksum: 0x8A6F6391
	Offset: 0xD90
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_39965f5d()
{
	level.var_173c585e = 1;
}

/*
	Name: function_37af8a07
	Namespace: namespace_18d64fe2
	Checksum: 0x89BD1F56
	Offset: 0xDA8
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("security_station_breach_ai_cleared");
	level namespace_ad23e503::function_c35e6aab("prometheus_otr_cleared");
	level namespace_ad23e503::function_c35e6aab("zipline_done");
	level namespace_ad23e503::function_c35e6aab("hendricks_reached_vtol_hallway_door");
	level namespace_ad23e503::function_c35e6aab("mobile_shop2_start_trigger_enabled");
	level namespace_ad23e503::function_c35e6aab("sb1_initial_battle_done");
	level namespace_ad23e503::function_c35e6aab("skybridge_debris_cleared");
	level namespace_ad23e503::function_c35e6aab("play_wwz_vtol_crash");
	level namespace_ad23e503::function_c35e6aab("wwz_vtol_crash_done");
	level namespace_ad23e503::function_c35e6aab("mobile_shop_2_vo_done");
}

/*
	Name: function_aebcf025
	Namespace: namespace_18d64fe2
	Checksum: 0x99EC1590
	Offset: 0xEF8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_673254cc
	Namespace: namespace_18d64fe2
	Checksum: 0x17464961
	Offset: 0xF08
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_d68e678e("prometheus_otr", &namespace_8e4b89e2::function_5d64afc3, undefined, &namespace_8e4b89e2::function_a1a139dc);
	namespace_1d795d47::function_d68e678e("vtol_hallway", &namespace_20a6d5c1::function_ddf518df, undefined, &namespace_20a6d5c1::function_eef4fda8);
	namespace_1d795d47::function_d68e678e("mobile_shop_ride2", &namespace_20a6d5c1::function_9c0f8169, undefined, &namespace_20a6d5c1::function_dffbb166);
	namespace_1d795d47::function_d68e678e("bridge_battle", &namespace_20a6d5c1::function_57e7a8c9, undefined, &namespace_20a6d5c1::function_800cbac6);
	namespace_1d795d47::function_d68e678e("up_to_detention_center", &namespace_20a6d5c1::function_5b4279a3, undefined, &namespace_20a6d5c1::function_cbbe14bc);
	namespace_1d795d47::function_d68e678e("detention_center", &namespace_20a6d5c1::function_acdf71f3, undefined, &namespace_20a6d5c1::function_5730accc);
	namespace_1d795d47::function_d68e678e("stand_down", &namespace_ef6666f9::function_e44d217a, undefined, &namespace_ef6666f9::function_470ca661);
	namespace_1d795d47::function_69554b3e("pursuit", &namespace_ef6666f9::function_d290ebfa, undefined, &namespace_ef6666f9::function_9c97dac4);
	namespace_1d795d47::function_d68e678e("industrial_zone", &namespace_da5cdb0c::function_99c7c24f, undefined, &namespace_da5cdb0c::function_3ec62858);
	namespace_1d795d47::function_d68e678e("sky_bridge1", &namespace_da5cdb0c::function_4e9c70f, undefined, &namespace_da5cdb0c::function_ac629618);
	namespace_1d795d47::function_d68e678e("sky_bridge2", &namespace_da5cdb0c::function_38aca7a, undefined, &namespace_da5cdb0c::function_664a4f61);
	/#
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_cb714d39);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_97304dac);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_9e911591);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_662ff925);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_14a292be);
	#/
}

/*
	Name: function_cb714d39
	Namespace: namespace_18d64fe2
	Checksum: 0x80E7C9AE
	Offset: 0x1250
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_cb714d39(var_b04bc952, var_74cd64bc)
{
	/#
		function_ad95a4a4("Dev Block strings are not supported");
		wait(0.05);
		function_a63aee74();
	#/
}

/*
	Name: function_97304dac
	Namespace: namespace_18d64fe2
	Checksum: 0xB43A0C46
	Offset: 0x12A8
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_97304dac(var_b04bc952, var_74cd64bc)
{
	/#
		function_3330eab6("Dev Block strings are not supported");
	#/
}

/*
	Name: function_9e911591
	Namespace: namespace_18d64fe2
	Checksum: 0x94A1DB92
	Offset: 0x12E8
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_9e911591(var_b04bc952, var_74cd64bc)
{
	/#
		function_3330eab6("Dev Block strings are not supported");
	#/
}

/*
	Name: function_662ff925
	Namespace: namespace_18d64fe2
	Checksum: 0x1A697A23
	Offset: 0x1328
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_662ff925(var_b04bc952, var_74cd64bc)
{
	/#
		function_3330eab6("Dev Block strings are not supported");
	#/
}

/*
	Name: function_14a292be
	Namespace: namespace_18d64fe2
	Checksum: 0x8DD40F42
	Offset: 0x1368
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_14a292be(var_b04bc952, var_74cd64bc)
{
	/#
		function_3330eab6("Dev Block strings are not supported");
	#/
}

/*
	Name: function_3330eab6
	Namespace: namespace_18d64fe2
	Checksum: 0x6CBC178F
	Offset: 0x13A8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_3330eab6(var_a60475e6)
{
	/#
		level namespace_ad23e503::function_1ab5ebec("Dev Block strings are not supported");
		namespace_cc27597::function_43718187(var_a60475e6);
	#/
}

