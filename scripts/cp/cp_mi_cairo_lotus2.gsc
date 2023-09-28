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
	Name: setup_rex_starts
	Namespace: namespace_18d64fe2
	Checksum: 0x7BCE6C8F
	Offset: 0x760
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
	Namespace: namespace_18d64fe2
	Checksum: 0x70EDDBE2
	Offset: 0x7A0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function main()
{
	if(SessionModeIsCampaignZombiesGame() && 0)
	{
		SetClearanceCeiling(34);
	}
	else
	{
		SetClearanceCeiling(106);
	}
	savegame::function_8c0c4b3a("lotus");
	util::function_286a5010(3);
	init_clientfields();
	function_39965f5d();
	setup_skiptos();
	init_flags();
	function_90b86ce7();
	collectibles::add_collectible_params("p7_nc_cai_lot_05", 45, VectorScale((0, -1, 0), 20));
	namespace_d3549a89::init_voice();
	callback::on_spawned(&on_player_spawned);
	namespace_6f40bee7::main();
	namespace_6cf6620e::main();
	scene::add_wait_for_streamer_hint_scene("cin_lot_08_01_standdown_sh010");
	load::main();
	skipto::function_f3e035ef();
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
	var_72634645 = spawnstruct();
	var_72634645.origin = (-3169.52, 1919.31, 15824);
	var_72634645.angles = (0, 0, 0);
	trigger::wait_till("industrial_zone_complete", "targetname");
	level.var_2fd26037 colors::function_89827d0f(var_72634645);
}

/*
	Name: init_clientfields
	Namespace: namespace_18d64fe2
	Checksum: 0xA96D67C5
	Offset: 0xA80
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	visionset_mgr::register_info("visionset", "cp_raven_hallucination", 1, 100, 1, 1);
	clientfield::register("vehicle", "mobile_shop_link_ents", 1, 1, "int");
	clientfield::register("world", "vtol_hallway_destruction_cleanup", 1, 1, "int");
	clientfield::register("toplayer", "snow_fog", 1, 1, "int");
	clientfield::register("toplayer", "frost_post_fx", 1, 1, "int");
	clientfield::register("toplayer", "skybridge_sand_fx", 1, 1, "int");
	clientfield::register("toplayer", "player_dust_fx", 1, 1, "int");
	clientfield::register("toplayer", "postfx_futz", 1, 1, "counter");
	clientfield::register("toplayer", "postfx_ravens", 1, 1, "counter");
	clientfield::register("toplayer", "postfx_frozen_forest", 1, 1, "counter");
	clientfield::register("toplayer", "siegebot_fans", 1, 1, "int");
	clientfield::register("toplayer", "hide_pursuit_decals", 1, 1, "counter");
	clientfield::register("allplayers", "player_frost_breath", 1, 1, "int");
	clientfield::register("actor", "hendricks_frost_breath", 1, 1, "int");
	clientfield::register("scriptmover", "rogue_bot_fx", 1, 1, "int");
	clientfield::register("scriptmover", "mobile_shop_fxanims", 1, 3, "int");
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
	Name: init_flags
	Namespace: namespace_18d64fe2
	Checksum: 0x89BD1F56
	Offset: 0xDA8
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("security_station_breach_ai_cleared");
	level flag::init("prometheus_otr_cleared");
	level flag::init("zipline_done");
	level flag::init("hendricks_reached_vtol_hallway_door");
	level flag::init("mobile_shop2_start_trigger_enabled");
	level flag::init("sb1_initial_battle_done");
	level flag::init("skybridge_debris_cleared");
	level flag::init("play_wwz_vtol_crash");
	level flag::init("wwz_vtol_crash_done");
	level flag::init("mobile_shop_2_vo_done");
}

/*
	Name: on_player_spawned
	Namespace: namespace_18d64fe2
	Checksum: 0x99EC1590
	Offset: 0xEF8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: setup_skiptos
	Namespace: namespace_18d64fe2
	Checksum: 0x17464961
	Offset: 0xF08
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::function_d68e678e("prometheus_otr", &namespace_8e4b89e2::function_5d64afc3, undefined, &namespace_8e4b89e2::function_a1a139dc);
	skipto::function_d68e678e("vtol_hallway", &namespace_20a6d5c1::function_ddf518df, undefined, &namespace_20a6d5c1::function_eef4fda8);
	skipto::function_d68e678e("mobile_shop_ride2", &namespace_20a6d5c1::function_9c0f8169, undefined, &namespace_20a6d5c1::function_dffbb166);
	skipto::function_d68e678e("bridge_battle", &namespace_20a6d5c1::function_57e7a8c9, undefined, &namespace_20a6d5c1::function_800cbac6);
	skipto::function_d68e678e("up_to_detention_center", &namespace_20a6d5c1::function_5b4279a3, undefined, &namespace_20a6d5c1::function_cbbe14bc);
	skipto::function_d68e678e("detention_center", &namespace_20a6d5c1::function_acdf71f3, undefined, &namespace_20a6d5c1::function_5730accc);
	skipto::function_d68e678e("stand_down", &namespace_ef6666f9::function_e44d217a, undefined, &namespace_ef6666f9::function_470ca661);
	skipto::add("pursuit", &namespace_ef6666f9::main, undefined, &namespace_ef6666f9::function_9c97dac4);
	skipto::function_d68e678e("industrial_zone", &namespace_da5cdb0c::function_99c7c24f, undefined, &namespace_da5cdb0c::function_3ec62858);
	skipto::function_d68e678e("sky_bridge1", &namespace_da5cdb0c::function_4e9c70f, undefined, &namespace_da5cdb0c::function_ac629618);
	skipto::function_d68e678e("sky_bridge2", &namespace_da5cdb0c::function_38aca7a, undefined, &namespace_da5cdb0c::function_664a4f61);
	/#
		skipto::function_654c9dda("Dev Block strings are not supported", &function_cb714d39);
		skipto::function_654c9dda("Dev Block strings are not supported", &function_97304dac);
		skipto::function_654c9dda("Dev Block strings are not supported", &function_9e911591);
		skipto::function_654c9dda("Dev Block strings are not supported", &function_662ff925);
		skipto::function_654c9dda("Dev Block strings are not supported", &function_14a292be);
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
function function_cb714d39(str_objective, var_74cd64bc)
{
	/#
		function_ad95a4a4("Dev Block strings are not supported");
		wait(0.05);
		switchmap_switch();
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
function function_97304dac(str_objective, var_74cd64bc)
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
function function_9e911591(str_objective, var_74cd64bc)
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
function function_662ff925(str_objective, var_74cd64bc)
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
function function_14a292be(str_objective, var_74cd64bc)
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
function function_3330eab6(str_anim)
{
	/#
		level flag::wait_till("Dev Block strings are not supported");
		scene::Play(str_anim);
	#/
}

