#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_elevator;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus3_fx;
#using scripts\cp\cp_mi_cairo_lotus3_patch;
#using scripts\cp\cp_mi_cairo_lotus3_sound;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_accolades;
#using scripts\cp\lotus_boss_battle;
#using scripts\cp\lotus_t2_ascent;
#using scripts\cp\voice\voice_lotus3;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;

#namespace namespace_3ed8ca4b;

/*
	Name: function_243693d4
	Namespace: namespace_3ed8ca4b
	Checksum: 0x7DBF69F1
	Offset: 0x470
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
	Namespace: namespace_3ed8ca4b
	Checksum: 0x2756617B
	Offset: 0x4B0
	Size: 0x18B
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
		function_863d6bb0(29);
	}
	namespace_9f824288::function_8c0c4b3a("lotus");
	namespace_82b91a51::function_286a5010(4);
	function_2ea898a8();
	function_39965f5d();
	function_673254cc();
	function_e5037c3();
	namespace_ad522020::function_e230521c();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_f2fdb334::function_d290ebfa();
	namespace_85d8a9eb::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	namespace_f4ff722a::function_66df416f();
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_hakim_assassinate");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_capture_security_station");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_capture_taylor");
	namespace_a503a1b8::function_7403e82b();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_3ed8ca4b
	Checksum: 0x5EB61D2
	Offset: 0x648
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "sand_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "boss_left_outer_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "boss_left_inner_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "boss_right_inner_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "boss_right_outer_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "gunship_rumble_off", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "play_raps_trail_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "t2a_paper_burst", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "city_sky", 1, 1, "int");
}

/*
	Name: function_39965f5d
	Namespace: namespace_3ed8ca4b
	Checksum: 0x16739896
	Offset: 0x808
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_39965f5d()
{
	level.var_173c585e = 1;
}

/*
	Name: function_e5037c3
	Namespace: namespace_3ed8ca4b
	Checksum: 0x6D093D72
	Offset: 0x820
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_e5037c3()
{
	var_f29f9112 = function_99201f25("roof_ammo_caches", "prefabname");
	foreach(var_13326c99 in var_f29f9112)
	{
		var_13326c99 function_50ccee8d();
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_3ed8ca4b
	Checksum: 0xE8AE65FB
	Offset: 0x8E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self thread function_be673574();
}

/*
	Name: function_be673574
	Namespace: namespace_3ed8ca4b
	Checksum: 0xB68D9DFC
	Offset: 0x908
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_be673574()
{
	level namespace_ad23e503::function_1ab5ebec("boss_battle");
	self namespace_71e9cb84::function_e9c3870b("sand_fx", 1);
	level namespace_ad23e503::function_1ab5ebec("old_friend");
	self namespace_71e9cb84::function_e9c3870b("sand_fx", 0);
}

/*
	Name: function_673254cc
	Namespace: namespace_3ed8ca4b
	Checksum: 0xB176AFF9
	Offset: 0x998
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_d68e678e("tower_2_ascent", &namespace_1af1994::function_c4ecc384, undefined, &namespace_1af1994::function_c276f97f);
	namespace_1d795d47::function_d68e678e("prometheus_intro", &namespace_45eca03::function_ccc2baba, undefined, &namespace_45eca03::function_ec70e2a1);
	namespace_1d795d47::function_69554b3e("boss_battle", &namespace_45eca03::function_faf62cf1, undefined, &namespace_45eca03::function_b9eaf37e);
	namespace_1d795d47::function_d68e678e("old_friend", &namespace_45eca03::function_babb1dd5, undefined, &namespace_45eca03::function_5b067572);
	namespace_1d795d47::function_654c9dda("dev_pip_movie_capture", &namespace_1af1994::function_283f872d, undefined, &namespace_1af1994::function_df51a037);
}

