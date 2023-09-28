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
	Name: setup_rex_starts
	Namespace: namespace_3ed8ca4b
	Checksum: 0x7DBF69F1
	Offset: 0x470
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function setup_rex_starts()
{
	util::add_gametype("coop");
	util::add_gametype("cpzm");
}

/*
	Name: main
	Namespace: namespace_3ed8ca4b
	Checksum: 0x2756617B
	Offset: 0x4B0
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function main()
{
	if(SessionModeIsCampaignZombiesGame() && -1)
	{
		SetClearanceCeiling(34);
	}
	else
	{
		SetClearanceCeiling(29);
	}
	savegame::function_8c0c4b3a("lotus");
	util::function_286a5010(4);
	init_clientfields();
	function_39965f5d();
	setup_skiptos();
	function_e5037c3();
	namespace_ad522020::init_voice();
	callback::on_spawned(&on_player_spawned);
	namespace_f2fdb334::main();
	namespace_85d8a9eb::main();
	load::main();
	namespace_f4ff722a::function_66df416f();
	objectives::complete("cp_level_lotus_hakim_assassinate");
	objectives::complete("cp_level_lotus_capture_security_station");
	objectives::set("cp_level_lotus_capture_taylor");
	namespace_a503a1b8::function_7403e82b();
}

/*
	Name: init_clientfields
	Namespace: namespace_3ed8ca4b
	Checksum: 0x5EB61D2
	Offset: 0x648
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("toplayer", "sand_fx", 1, 1, "int");
	clientfield::register("vehicle", "boss_left_outer_fx", 1, 1, "int");
	clientfield::register("vehicle", "boss_left_inner_fx", 1, 1, "int");
	clientfield::register("vehicle", "boss_right_inner_fx", 1, 1, "int");
	clientfield::register("vehicle", "boss_right_outer_fx", 1, 1, "int");
	clientfield::register("vehicle", "gunship_rumble_off", 1, 1, "int");
	clientfield::register("vehicle", "play_raps_trail_fx", 1, 1, "int");
	clientfield::register("world", "t2a_paper_burst", 1, 1, "int");
	clientfield::register("world", "city_sky", 1, 1, "int");
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
	var_f29f9112 = GetEntArray("roof_ammo_caches", "prefabname");
	foreach(cache in var_f29f9112)
	{
		cache Hide();
	}
}

/*
	Name: on_player_spawned
	Namespace: namespace_3ed8ca4b
	Checksum: 0xE8AE65FB
	Offset: 0x8E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
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
	level flag::wait_till("boss_battle");
	self clientfield::set_to_player("sand_fx", 1);
	level flag::wait_till("old_friend");
	self clientfield::set_to_player("sand_fx", 0);
}

/*
	Name: setup_skiptos
	Namespace: namespace_3ed8ca4b
	Checksum: 0xB176AFF9
	Offset: 0x998
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::function_d68e678e("tower_2_ascent", &namespace_1af1994::function_c4ecc384, undefined, &namespace_1af1994::function_c276f97f);
	skipto::function_d68e678e("prometheus_intro", &namespace_45eca03::function_ccc2baba, undefined, &namespace_45eca03::function_ec70e2a1);
	skipto::add("boss_battle", &namespace_45eca03::function_faf62cf1, undefined, &namespace_45eca03::function_b9eaf37e);
	skipto::function_d68e678e("old_friend", &namespace_45eca03::function_babb1dd5, undefined, &namespace_45eca03::function_5b067572);
	skipto::function_654c9dda("dev_pip_movie_capture", &namespace_1af1994::function_283f872d, undefined, &namespace_1af1994::function_df51a037);
}

