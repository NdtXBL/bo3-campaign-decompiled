#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_accolades;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_level_start;
#using scripts\cp\cp_mi_cairo_ramses_nasser_interview;
#using scripts\cp\cp_mi_cairo_ramses_patch;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_station_fight;
#using scripts\cp\cp_mi_cairo_ramses_station_walk;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses_vtol_ride;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_ae122cd0;

/*
	Name: setup_rex_starts
	Namespace: namespace_ae122cd0
	Checksum: 0xE4511BD8
	Offset: 0x980
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
	Namespace: namespace_ae122cd0
	Checksum: 0x5A57B5B8
	Offset: 0x9C0
	Size: 0x23B
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
	savegame::function_8c0c4b3a("ramses");
	namespace_38256252::accolades_init();
	namespace_38256252::function_43898266();
	namespace_38256252::function_e1862c87();
	namespace_38256252::function_3484502e();
	Precache();
	init_clientfields();
	init_flags();
	init_level();
	setup_skiptos();
	util::function_286a5010(3);
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	vehicle::add_spawn_function("station_fight_turret", &function_66f28952);
	namespace_b9254c21::main();
	namespace_39972b4::main();
	load::main();
	SetDvar("compassmaxrange", "12000");
	level clientfield::set("ramses_station_lamps", 1);
	/#
		execdevgui("Dev Block strings are not supported");
	#/
	level thread function_2b543535();
	level.var_dc236bc8 = 1;
	namespace_e9e39773::function_7403e82b();
}

/*
	Name: Precache
	Namespace: namespace_ae122cd0
	Checksum: 0x99EC1590
	Offset: 0xC08
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Precache()
{
}

/*
	Name: init_clientfields
	Namespace: namespace_ae122cd0
	Checksum: 0x368B3596
	Offset: 0xC18
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("world", "hide_station_miscmodels", 1, 1, "int");
	clientfield::register("world", "turn_on_rotating_fxanim_fans", 1, 1, "int");
	clientfield::register("world", "turn_on_rotating_fxanim_lights", 1, 1, "int");
	clientfield::register("world", "delete_fxanim_fans", 1, 1, "int");
	clientfield::register("toplayer", "nasser_interview_extra_cam", 1, 1, "int");
	clientfield::register("toplayer", "rap_blood_on_player", 1, 1, "counter");
	clientfield::register("world", "ramses_station_lamps", 1, 1, "int");
	clientfield::register("world", "staging_area_intro", 1, 1, "int");
	clientfield::register("toplayer", "filter_ev_interference_toggle", 1, 1, "int");
}

/*
	Name: init_flags
	Namespace: namespace_ae122cd0
	Checksum: 0xCFBC5F8E
	Offset: 0xDD8
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("dead_turrets_initialized");
	level flag::init("dead_turret_stop_station_ambients");
	level flag::init("station_walk_past_stairs");
	level flag::init("station_walk_complete");
	level flag::init("station_walk_cleanup");
	level flag::init("raps_intro_done");
	level flag::init("pod_hits_floor");
	level flag::init("ceiling_collapse_complete");
	level flag::init("drop_pod_opened_and_spawned");
	level flag::init("station_fight_completed");
	level flag::init("mobile_wall_fxanim_start");
	level flag::init("vtol_ride_started");
	level flag::init("vtol_ride_done");
	level flag::init("hendricks_jumpdirect_looping");
	level flag::init("khalil_jumpdirect_looping");
	level flag::init("flak_vtol_ride_stop");
}

/*
	Name: init_level
	Namespace: namespace_ae122cd0
	Checksum: 0xD8CF3CA
	Offset: 0xFE8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function init_level()
{
	skipto::function_f3e035ef();
	level.var_1e983b11 = 0;
	level.var_d829fe9f = 0;
	battlechatter::function_d9f49fba(0, "bc");
	var_69e9c588 = GetEntArray("mobile_armory", "script_noteworthy");
	a_ammo_cache = GetEntArray("ammo_cache", "script_noteworthy");
	level.var_2b205f01 = ArrayCombine(var_69e9c588, a_ammo_cache, 0, 0);
}

/*
	Name: function_66f28952
	Namespace: namespace_ae122cd0
	Checksum: 0xA8A6A400
	Offset: 0x10C0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_66f28952()
{
	self.team = "allies";
}

/*
	Name: setup_skiptos
	Namespace: namespace_ae122cd0
	Checksum: 0x1F861082
	Offset: 0x10E0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::add("level_start", &function_e4f36ca2, "level_start", &function_781ed89c);
	skipto::add("rs_walk_through", &function_4513d788, "rs_walk_through", &function_86fc3d2e);
	skipto::function_d68e678e("interview_dr_nasser", &function_ac4ae5cc, "interview_dr_nasser", &function_5b5ae0d2);
	skipto::function_d68e678e("defend_ramses_station", &namespace_bedc6a60::init, "defend_ramses_station", &namespace_bedc6a60::done);
	skipto::function_d68e678e("vtol_ride", &namespace_80a43443::init, "vtol_ride", &namespace_80a43443::done);
	skipto::function_654c9dda("dev_defend_station_test", &namespace_bedc6a60::function_f27ea617, "Defend Station Test", &namespace_bedc6a60::function_93364e1b, "", "");
}

/*
	Name: on_player_connect
	Namespace: namespace_ae122cd0
	Checksum: 0xE367E22C
	Offset: 0x1280
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self flag::init("linked_to_truck");
}

/*
	Name: on_player_spawned
	Namespace: namespace_ae122cd0
	Checksum: 0xD200B48A
	Offset: 0x12B0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self namespace_391e4301::function_ff06e7ac();
}

/*
	Name: function_e4f36ca2
	Namespace: namespace_ae122cd0
	Checksum: 0xA6C1E55C
	Offset: 0x12D8
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function function_e4f36ca2(str_objective, var_74cd64bc)
{
	callback::on_spawned(&level_start::function_e9d1564a);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level_start::init_heroes(str_objective);
		namespace_391e4301::function_75734d29();
	}
	objectives::set("cp_level_ramses_determine_what_salim_knows");
	objectives::set("cp_level_ramses_meet_with_khalil");
	Array::thread_all(level.var_2b205f01, &namespace_16f9ecd3::function_14ec2d71);
	level.var_2fd26037 SetDedicatedShadow(1);
	level.var_2fd26037 SetHighDetail(1);
	level.var_7a9855f3 SetHighDetail(1);
	namespace_bedc6a60::function_f7abd273();
	namespace_bedc6a60::function_f21c9162("_combat");
	level_start::main();
}

/*
	Name: function_781ed89c
	Namespace: namespace_ae122cd0
	Checksum: 0x10485DF1
	Offset: 0x1448
	Size: 0xCB
	Parameters: 4
	Flags: None
*/
function function_781ed89c(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		objectives::set("cp_level_ramses_determine_what_salim_knows");
		objectives::set("cp_level_ramses_meet_with_khalil");
	}
	namespace_bedc6a60::function_f7abd273();
	namespace_bedc6a60::function_f21c9162("_combat");
	namespace_391e4301::function_75734d29();
	level scene::init("cin_ram_04_02_easterncheck_vign_jumpdirect");
	level thread namespace_391e4301::function_a0a9f927();
}

/*
	Name: function_4513d788
	Namespace: namespace_ae122cd0
	Checksum: 0xEC8335C9
	Offset: 0x1520
	Size: 0x183
	Parameters: 2
	Flags: None
*/
function function_4513d788(str_objective, var_74cd64bc)
{
	level.var_9db406db = util::function_740f8516("khalil");
	level.var_9db406db SetHighDetail(1);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		callback::on_spawned(&level_start::function_e9d1564a);
		namespace_7434c6b7::init_heroes(str_objective);
		Array::thread_all(level.var_2b205f01, &namespace_16f9ecd3::function_14ec2d71);
		load::function_a2995f22();
		util::screen_fade_out(0, "black", "skipto_fade");
		util::delay(1, undefined, &util::screen_fade_in, 1, "black", "skipto_fade");
	}
	namespace_e55eaf53::function_c99967dc(0);
	namespace_391e4301::function_7255e66(0);
	namespace_7434c6b7::main();
}

/*
	Name: function_86fc3d2e
	Namespace: namespace_ae122cd0
	Checksum: 0xEFB488D2
	Offset: 0x16B0
	Size: 0x53
	Parameters: 4
	Flags: None
*/
function function_86fc3d2e(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_ramses_go_to_holding_room");
	objectives::complete("cp_level_ramses_meet_with_khalil");
}

/*
	Name: function_ac4ae5cc
	Namespace: namespace_ae122cd0
	Checksum: 0x8786490D
	Offset: 0x1710
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function function_ac4ae5cc(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_e55eaf53::init_heroes();
		callback::on_spawned(&namespace_e55eaf53::function_1bcd464b);
		Array::thread_all(level.var_2b205f01, &namespace_16f9ecd3::function_14ec2d71);
		level.var_9db406db SetHighDetail(1);
		level.var_7a9855f3 SetHighDetail(1);
		level.var_2fd26037 SetHighDetail(1);
	}
	objectives::set("cp_level_ramses_interrogate_salim");
	namespace_391e4301::function_7255e66(1);
	namespace_e55eaf53::main(var_74cd64bc);
}

/*
	Name: function_5b5ae0d2
	Namespace: namespace_ae122cd0
	Checksum: 0xB918AEE8
	Offset: 0x1848
	Size: 0x143
	Parameters: 4
	Flags: None
*/
function function_5b5ae0d2(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		Array::thread_all(GetEntArray("mobile_armory", "script_noteworthy"), &namespace_16f9ecd3::function_e228c18a, 1);
		objectives::complete("cp_level_ramses_interrogate_salim");
		objectives::complete("cp_level_ramses_determine_what_salim_knows");
		objectives::set("cp_level_ramses_protect_salim");
	}
	namespace_7434c6b7::function_51f408f1();
	level util::clientNotify("walla_off");
	namespace_16f9ecd3::function_f0f40bb5();
	namespace_16f9ecd3::function_b3c589a6();
	namespace_391e4301::function_eabc6e2f();
	namespace_391e4301::function_d4a0bb54();
	namespace_391e4301::function_e7ebe596(0);
}

/*
	Name: function_2b543535
	Namespace: namespace_ae122cd0
	Checksum: 0x6E5E2DA
	Offset: 0x1998
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_2b543535()
{
	level waittill("hash_c7cc2fd");
	level util::clientNotify("sndIGC");
}

