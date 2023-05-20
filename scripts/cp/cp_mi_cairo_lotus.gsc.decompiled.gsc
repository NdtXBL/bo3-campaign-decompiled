#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_elevator;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\_vehicle_platform;
#using scripts\cp\cp_mi_cairo_lotus_anim;
#using scripts\cp\cp_mi_cairo_lotus_fx;
#using scripts\cp\cp_mi_cairo_lotus_patch;
#using scripts\cp\cp_mi_cairo_lotus_sound;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_accolades;
#using scripts\cp\lotus_security_station;
#using scripts\cp\lotus_start_riot;
#using scripts\cp\lotus_util;
#using scripts\cp\voice\voice_lotus1;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_7cb27be0;

/*
	Name: function_243693d4
	Namespace: namespace_7cb27be0
	Checksum: 0x3DCB24CA
	Offset: 0x6B0
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
	Name: function_70a1a72e
	Namespace: namespace_7cb27be0
	Checksum: 0xE7C23907
	Offset: 0x6F0
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_70a1a72e()
{
	var_a7be1923 = function_b4cb3503("start_mobile_0_top_across_128", "targetname");
	function_47d28a09(var_a7be1923);
	function_9ab58e36(var_a7be1923);
	var_7d15b22d = function_b4cb3503("start_mobile_0_across_128", "targetname");
	function_47d28a09(var_7d15b22d);
	function_9ab58e36(var_7d15b22d);
	var_ba891ade = function_b4cb3503("start_mobile_0_up_160", "targetname");
	function_47d28a09(var_ba891ade);
	function_9ab58e36(var_ba891ade);
}

/*
	Name: function_d290ebfa
	Namespace: namespace_7cb27be0
	Checksum: 0x89F00C47
	Offset: 0x808
	Size: 0x2DB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	if(function_27c72c1b() && -1)
	{
		function_863d6bb0(34);
	}
	else
	{
		function_863d6bb0(23);
	}
	function_70a1a72e();
	namespace_9f824288::function_8c0c4b3a("lotus");
	if(!function_27c72c1b())
	{
		level.var_173c585e = 1;
		namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	}
	namespace_f95714f2::function_e230521c();
	namespace_82b91a51::function_286a5010(3);
	function_f7046c76();
	function_2ea898a8();
	function_37af8a07();
	function_673254cc();
	function_e8474b63();
	namespace_d275cebc::function_93523442("p7_nc_cai_lot_05", 45, VectorScale((0, -1, 0), 20));
	namespace_90072e58::function_d290ebfa();
	namespace_9bdf8ed1::function_d290ebfa();
	namespace_9750c824::function_d290ebfa();
	namespace_3b39ab74::function_c35e6aab();
	namespace_8e4b89e2::function_c35e6aab();
	namespace_d7916d65::function_d290ebfa();
	namespace_1d795d47::function_f3e035ef();
	level thread namespace_431cac9::function_d720c23e("atrium_battle_a");
	level thread namespace_431cac9::function_d720c23e("atrium_battle_b");
	level thread namespace_431cac9::function_d720c23e("atrium_battle_c");
	level thread namespace_431cac9::function_d720c23e("atrium_battle_d");
	level thread namespace_431cac9::function_d720c23e("atrium_battle_e");
	level thread namespace_431cac9::function_d720c23e("atrium_battle_f");
	level thread namespace_431cac9::function_d720c23e("atrium_battle_g");
	level.var_dc236bc8 = 1;
	level.var_6e1075a2 = 0;
	namespace_f4ff722a::function_66df416f();
	namespace_91f7aee3::function_7403e82b();
}

/*
	Name: function_f7046c76
	Namespace: namespace_7cb27be0
	Checksum: 0x99EC1590
	Offset: 0xAF0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
}

/*
	Name: function_37af8a07
	Namespace: namespace_7cb27be0
	Checksum: 0x84E2A78C
	Offset: 0xB00
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("hendricks_breach_line_done");
	level namespace_ad23e503::function_c35e6aab("mobile_shop_vo_done");
	level namespace_ad23e503::function_c35e6aab("security_shop_unload");
	level namespace_ad23e503::function_c35e6aab("security_shop_stopped");
}

/*
	Name: function_e8474b63
	Namespace: namespace_7cb27be0
	Checksum: 0xC90E1D55
	Offset: 0xB90
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e8474b63()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_monitors_atrium_fall_bundle");
}

/*
	Name: function_2ea898a8
	Namespace: namespace_7cb27be0
	Checksum: 0x35906219
	Offset: 0xBC0
	Size: 0x333
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_e216c11c::function_9be319f9("visionset", "cp_raven_hallucination", 1, 100, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "hs_fxinit_vent", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "hs_fxanim_vent", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "swap_crowd_to_riot", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "crowd_anims_off", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "mobile_shop_fxanims", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_decal", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "snow_fog", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_ravens", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_frozen_forest", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "frost_post_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("allplayers", "player_frost_breath", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "hendricks_frost_breath", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "pickup_hakim_rumble_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "mobile_shop_rumble_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_dust_fx", 1, 1, "int");
}

/*
	Name: function_673254cc
	Namespace: namespace_7cb27be0
	Checksum: 0x7FBA356F
	Offset: 0xF00
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("plan_b", &namespace_3b39ab74::function_e86a5395, undefined, &namespace_3b39ab74::function_88b5ab32);
	namespace_1d795d47::function_69554b3e("start_the_riots", &namespace_3b39ab74::function_5fb7ec5, undefined, &namespace_3b39ab74::function_a3cc6d62);
	namespace_1d795d47::function_d68e678e("general_hakim", &namespace_3b39ab74::function_92206070, undefined, &namespace_3b39ab74::function_14166bcb);
	namespace_1d795d47::function_d68e678e("apartments", &namespace_8e4b89e2::function_cd269efc, undefined, &namespace_8e4b89e2::function_46593e07);
	namespace_1d795d47::function_d68e678e("atrium_battle", &namespace_8e4b89e2::function_963d89c4, undefined, &namespace_8e4b89e2::function_57b2d9ef);
	namespace_1d795d47::function_d68e678e("to_security_station", &namespace_8e4b89e2::function_41534d2a, undefined, &namespace_8e4b89e2::function_2d424c3d);
	namespace_1d795d47::function_d68e678e("hack_the_system", &namespace_8e4b89e2::function_f5f5e18e, undefined, &namespace_8e4b89e2::function_2f8e8d25);
	/#
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_a56ed2d0);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_cb714d39);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_50499b8);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_770c08f3);
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &function_51098e8a);
	#/
}

/*
	Name: function_a56ed2d0
	Namespace: namespace_7cb27be0
	Checksum: 0x176DCD81
	Offset: 0x1168
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_a56ed2d0(var_b04bc952, var_74cd64bc)
{
	/#
		function_ad95a4a4("Dev Block strings are not supported");
		wait(0.05);
		function_a63aee74();
	#/
}

/*
	Name: function_cb714d39
	Namespace: namespace_7cb27be0
	Checksum: 0x464B35
	Offset: 0x11C0
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
	Name: function_50499b8
	Namespace: namespace_7cb27be0
	Checksum: 0xB4FC3E77
	Offset: 0x1218
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_50499b8(var_b04bc952, var_74cd64bc)
{
	/#
		function_3330eab6("Dev Block strings are not supported");
	#/
}

/*
	Name: function_770c08f3
	Namespace: namespace_7cb27be0
	Checksum: 0x3ECABD1C
	Offset: 0x1258
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_770c08f3(var_b04bc952, var_74cd64bc)
{
	/#
		function_3330eab6("Dev Block strings are not supported");
	#/
}

/*
	Name: function_51098e8a
	Namespace: namespace_7cb27be0
	Checksum: 0x15F684E1
	Offset: 0x1298
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_51098e8a(var_b04bc952, var_74cd64bc)
{
	/#
		function_3330eab6("Dev Block strings are not supported");
	#/
}

/*
	Name: function_3330eab6
	Namespace: namespace_7cb27be0
	Checksum: 0xD7A2BD42
	Offset: 0x12D8
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

/*
	Name: function_aebcf025
	Namespace: namespace_7cb27be0
	Checksum: 0x99EC1590
	Offset: 0x1328
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

