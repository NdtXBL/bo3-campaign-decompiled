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
	Name: setup_rex_starts
	Namespace: namespace_7cb27be0
	Checksum: 0x3DCB24CA
	Offset: 0x6B0
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
	var_a7be1923 = GetNode("start_mobile_0_top_across_128", "targetname");
	LinkTraversal(var_a7be1923);
	UnlinkTraversal(var_a7be1923);
	var_7d15b22d = GetNode("start_mobile_0_across_128", "targetname");
	LinkTraversal(var_7d15b22d);
	UnlinkTraversal(var_7d15b22d);
	var_ba891ade = GetNode("start_mobile_0_up_160", "targetname");
	LinkTraversal(var_ba891ade);
	UnlinkTraversal(var_ba891ade);
}

/*
	Name: main
	Namespace: namespace_7cb27be0
	Checksum: 0x89F00C47
	Offset: 0x808
	Size: 0x2DB
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
		SetClearanceCeiling(23);
	}
	function_70a1a72e();
	savegame::function_8c0c4b3a("lotus");
	if(!SessionModeIsCampaignZombiesGame())
	{
		level.var_173c585e = 1;
		callback::on_spawned(&on_player_spawned);
	}
	namespace_f95714f2::init_voice();
	util::function_286a5010(3);
	Precache();
	init_clientfields();
	init_flags();
	setup_skiptos();
	function_e8474b63();
	collectibles::add_collectible_params("p7_nc_cai_lot_05", 45, VectorScale((0, -1, 0), 20));
	namespace_90072e58::main();
	namespace_9bdf8ed1::main();
	namespace_9750c824::main();
	namespace_3b39ab74::init();
	namespace_8e4b89e2::init();
	load::main();
	skipto::function_f3e035ef();
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
	Name: Precache
	Namespace: namespace_7cb27be0
	Checksum: 0x99EC1590
	Offset: 0xAF0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Precache()
{
}

/*
	Name: init_flags
	Namespace: namespace_7cb27be0
	Checksum: 0x84E2A78C
	Offset: 0xB00
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("hendricks_breach_line_done");
	level flag::init("mobile_shop_vo_done");
	level flag::init("security_shop_unload");
	level flag::init("security_shop_stopped");
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
	level scene::init("p7_fxanim_cp_lotus_monitors_atrium_fall_bundle");
}

/*
	Name: init_clientfields
	Namespace: namespace_7cb27be0
	Checksum: 0x35906219
	Offset: 0xBC0
	Size: 0x333
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	visionset_mgr::register_info("visionset", "cp_raven_hallucination", 1, 100, 1, 1);
	clientfield::register("world", "hs_fxinit_vent", 1, 1, "int");
	clientfield::register("world", "hs_fxanim_vent", 1, 1, "int");
	clientfield::register("world", "swap_crowd_to_riot", 1, 1, "int");
	clientfield::register("world", "crowd_anims_off", 1, 1, "int");
	clientfield::register("scriptmover", "mobile_shop_fxanims", 1, 3, "int");
	clientfield::register("scriptmover", "raven_decal", 1, 1, "int");
	clientfield::register("toplayer", "snow_fog", 1, 1, "int");
	clientfield::register("toplayer", "postfx_futz", 1, 1, "counter");
	clientfield::register("toplayer", "postfx_ravens", 1, 1, "counter");
	clientfield::register("toplayer", "postfx_frozen_forest", 1, 1, "counter");
	clientfield::register("toplayer", "frost_post_fx", 1, 1, "int");
	clientfield::register("allplayers", "player_frost_breath", 1, 1, "int");
	clientfield::register("actor", "hendricks_frost_breath", 1, 1, "int");
	clientfield::register("toplayer", "pickup_hakim_rumble_loop", 1, 1, "int");
	clientfield::register("toplayer", "mobile_shop_rumble_loop", 1, 1, "int");
	clientfield::register("toplayer", "player_dust_fx", 1, 1, "int");
}

/*
	Name: setup_skiptos
	Namespace: namespace_7cb27be0
	Checksum: 0x7FBA356F
	Offset: 0xF00
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::add("plan_b", &namespace_3b39ab74::function_e86a5395, undefined, &namespace_3b39ab74::function_88b5ab32);
	skipto::add("start_the_riots", &namespace_3b39ab74::function_5fb7ec5, undefined, &namespace_3b39ab74::function_a3cc6d62);
	skipto::function_d68e678e("general_hakim", &namespace_3b39ab74::function_92206070, undefined, &namespace_3b39ab74::function_14166bcb);
	skipto::function_d68e678e("apartments", &namespace_8e4b89e2::function_cd269efc, undefined, &namespace_8e4b89e2::function_46593e07);
	skipto::function_d68e678e("atrium_battle", &namespace_8e4b89e2::function_963d89c4, undefined, &namespace_8e4b89e2::function_57b2d9ef);
	skipto::function_d68e678e("to_security_station", &namespace_8e4b89e2::function_41534d2a, undefined, &namespace_8e4b89e2::function_2d424c3d);
	skipto::function_d68e678e("hack_the_system", &namespace_8e4b89e2::function_f5f5e18e, undefined, &namespace_8e4b89e2::function_2f8e8d25);
	/#
		skipto::function_654c9dda("Dev Block strings are not supported", &function_a56ed2d0);
		skipto::function_654c9dda("Dev Block strings are not supported", &function_cb714d39);
		skipto::function_654c9dda("Dev Block strings are not supported", &function_50499b8);
		skipto::function_654c9dda("Dev Block strings are not supported", &function_770c08f3);
		skipto::function_654c9dda("Dev Block strings are not supported", &function_51098e8a);
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
function function_a56ed2d0(str_objective, var_74cd64bc)
{
	/#
		function_ad95a4a4("Dev Block strings are not supported");
		wait(0.05);
		switchmap_switch();
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
function function_cb714d39(str_objective, var_74cd64bc)
{
	/#
		function_ad95a4a4("Dev Block strings are not supported");
		wait(0.05);
		switchmap_switch();
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
function function_50499b8(str_objective, var_74cd64bc)
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
function function_770c08f3(str_objective, var_74cd64bc)
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
function function_51098e8a(str_objective, var_74cd64bc)
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
function function_3330eab6(str_anim)
{
	/#
		level flag::wait_till("Dev Block strings are not supported");
		scene::Play(str_anim);
	#/
}

/*
	Name: on_player_spawned
	Namespace: namespace_7cb27be0
	Checksum: 0x99EC1590
	Offset: 0x1328
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

