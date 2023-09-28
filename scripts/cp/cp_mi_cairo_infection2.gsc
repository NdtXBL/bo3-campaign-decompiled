#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_church;
#using scripts\cp\cp_mi_cairo_infection_forest;
#using scripts\cp\cp_mi_cairo_infection_forest_surreal;
#using scripts\cp\cp_mi_cairo_infection_foy_turret;
#using scripts\cp\cp_mi_cairo_infection_murders;
#using scripts\cp\cp_mi_cairo_infection_sgen_server_room;
#using scripts\cp\cp_mi_cairo_infection_tiger_tank;
#using scripts\cp\cp_mi_cairo_infection_underwater;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection_village;
#using scripts\cp\cp_mi_cairo_infection_village_surreal;
#using scripts\cp\cp_mi_cairo_infection2_fx;
#using scripts\cp\cp_mi_cairo_infection2_patch;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\cp\gametypes\_save;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_41f39a40;

/*
	Name: setup_rex_starts
	Namespace: namespace_41f39a40
	Checksum: 0xDE9B0970
	Offset: 0x948
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
	Namespace: namespace_41f39a40
	Checksum: 0x920F66A1
	Offset: 0x988
	Size: 0x39B
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
		SetClearanceCeiling(116);
	}
	savegame::function_8c0c4b3a("infection");
	util::function_286a5010(11);
	scene::add_wait_for_streamer_hint_scene("cin_inf_07_04_sarah_vign_03");
	scene::add_wait_for_streamer_hint_scene("cin_inf_08_blackstation_3rd_sh010");
	level flag::init("flag_player_enters_cave");
	skipto_setup();
	callback::on_spawned(&on_player_spawned);
	init_clientfields();
	namespace_9472df26::main();
	namespace_47ecfa2f::main();
	UNDERWATER::main();
	church::init_client_field_callback_funcs();
	forest::init_client_field_callback_funcs();
	village::init_client_field_callback_funcs();
	namespace_4e2074f4::init_client_field_callback_funcs();
	namespace_36cbf523::function_1d387f5d();
	namespace_f25bd8c8::function_66df416f();
	namespace_b7d29644::main();
	skipto::function_f3e035ef();
	load::main();
	SetDvar("compassmaxrange", "2100");
	game["strings"]["war_callsign_a"] = &"MPUI_CALLSIGN_MAPNAME_A";
	game["strings"]["war_callsign_b"] = &"MPUI_CALLSIGN_MAPNAME_B";
	game["strings"]["war_callsign_c"] = &"MPUI_CALLSIGN_MAPNAME_C";
	game["strings"]["war_callsign_d"] = &"MPUI_CALLSIGN_MAPNAME_D";
	game["strings"]["war_callsign_e"] = &"MPUI_CALLSIGN_MAPNAME_E";
	game["strings_menu"]["war_callsign_a"] = "@MPUI_CALLSIGN_MAPNAME_A";
	game["strings_menu"]["war_callsign_b"] = "@MPUI_CALLSIGN_MAPNAME_B";
	game["strings_menu"]["war_callsign_c"] = "@MPUI_CALLSIGN_MAPNAME_C";
	game["strings_menu"]["war_callsign_d"] = "@MPUI_CALLSIGN_MAPNAME_D";
	game["strings_menu"]["war_callsign_e"] = "@MPUI_CALLSIGN_MAPNAME_E";
	objectives::complete("cp_level_infection_find_dr");
	objectives::complete("cp_level_infection_defeat_sarah");
	objectives::complete("cp_level_infection_interface_sarah");
	objectives::complete("cp_level_infection_extract_intel");
	namespace_afff1403::function_7403e82b();
}

/*
	Name: init_clientfields
	Namespace: namespace_41f39a40
	Checksum: 0x4ED579B6
	Offset: 0xD30
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("world", "cathedral_water_state", 1, 1, "int");
	clientfield::register("world", "set_exposure_bank", 1, 2, "int");
}

/*
	Name: on_player_spawned
	Namespace: namespace_41f39a40
	Checksum: 0xAEBCC9C3
	Offset: 0xDA0
	Size: 0x2A9
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	var_aace7bde = skipto::function_8b19ec5d();
	if(isdefined(var_aace7bde))
	{
		switch(var_aace7bde[0])
		{
			case "sgen_server_room":
			{
				namespace_36cbf523::function_4f66eed6();
				self namespace_36cbf523::function_9f10c537();
				break;
			}
			case "forest_intro":
			{
				namespace_36cbf523::function_4f66eed6();
				self thread function_376778e8();
				break;
			}
			case "forest":
			{
				namespace_36cbf523::function_4f66eed6();
				self thread function_376778e8();
				break;
			}
			case "forest_surreal":
			{
				namespace_36cbf523::function_4f66eed6();
				break;
			}
			case "forest_wolves":
			{
				namespace_36cbf523::function_4f66eed6();
				break;
			}
			case "forest_sky_bridge":
			{
				namespace_36cbf523::function_4f66eed6();
				break;
			}
			case "forest_tunnel":
			{
				namespace_36cbf523::function_4f66eed6();
				break;
			}
			case "black_station":
			{
				namespace_36cbf523::function_4f66eed6();
				break;
			}
			case "village":
			{
				namespace_36cbf523::function_4f66eed6();
				self thread function_376778e8();
				break;
			}
			case "village_inception":
			{
				self thread function_376778e8(3);
				break;
			}
			case "church":
			{
				namespace_36cbf523::function_4f66eed6();
				self namespace_36cbf523::function_9f10c537();
				break;
			}
			case "cathedral":
			{
				namespace_36cbf523::function_4f66eed6();
				break;
			}
			case "underwater":
			{
				namespace_36cbf523::function_4f66eed6();
				break;
			}
			case "dev_cathedral_outro":
			{
				namespace_36cbf523::function_4f66eed6();
				break;
			}
			case "dev_black_station_intro":
			{
				namespace_36cbf523::function_4f66eed6();
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_376778e8
	Namespace: namespace_41f39a40
	Checksum: 0x6A8239B0
	Offset: 0x1058
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_376778e8(n_id)
{
	self namespace_36cbf523::function_822eb8e8();
	util::wait_network_frame();
	self namespace_36cbf523::function_72e40406(n_id);
}

/*
	Name: skipto_setup
	Namespace: namespace_41f39a40
	Checksum: 0x29306560
	Offset: 0x10B0
	Size: 0x3EB
	Parameters: 0
	Flags: None
*/
function skipto_setup()
{
	skipto::add("sgen_server_room", &namespace_9472df26::function_2fcfe223, "SGEN - SERVER ROOM", &namespace_9472df26::function_3ef23469);
	skipto::function_d68e678e("forest_intro", &forest::intro_main, "BASTOGNE INTRO", &forest::intro_cleanup);
	skipto::add("forest", &forest::function_a683b99a, "BASTOGNE", &forest::CleanUp);
	skipto::function_d68e678e("forest_surreal", &namespace_47c46a7d::main, "WORLD FALLS AWAY", &namespace_47c46a7d::CleanUp);
	skipto::function_d68e678e("forest_wolves", &namespace_47c46a7d::function_9f54e23d, "FOREST WOLVES", &namespace_47c46a7d::function_71196f64);
	skipto::add("forest_sky_bridge", &namespace_47c46a7d::function_48e4fcb4, "FOREST SKY BRIDGE", &namespace_47c46a7d::function_dd270bfd);
	skipto::add("forest_tunnel", &namespace_47c46a7d::function_cfaebb13, "FOREST TUNNEL", &namespace_47c46a7d::function_de606506);
	skipto::function_654c9dda("dev_black_station_intro", &namespace_47c46a7d::function_1983bda0, "DEV: BLACK STATION INTRO", &namespace_47c46a7d::function_503c0a2);
	skipto::function_d68e678e("black_station", &namespace_47ecfa2f::function_fbe0ab05, "BLACK STATION", &namespace_47ecfa2f::CleanUp);
	skipto::function_d68e678e("village", &village::main, "FOY", &village::CleanUp);
	skipto::function_d68e678e("village_inception", &namespace_4e2074f4::main, "FOLD", &namespace_4e2074f4::CleanUp);
	skipto::function_d68e678e("church", &church::function_56c1b3cc, "CHURCH", &church::function_7c4081cb);
	skipto::add("cathedral", &church::function_cbb5d383, "CATHEDRAL", &church::function_9fdc48d2);
	skipto::function_654c9dda("dev_cathedral_outro", &church::function_b6b71003, "CATHEDRAL", &church::function_956d2096);
	skipto::function_d68e678e("underwater", &UNDERWATER::function_9157ab7a, "UNDERWATER", &UNDERWATER::function_1c0537db);
	skipto::function_654c9dda("dev_skipto_infection_3", &function_377593d7);
}

/*
	Name: function_377593d7
	Namespace: namespace_41f39a40
	Checksum: 0x1373196C
	Offset: 0x14A8
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_377593d7(str_objective, var_74cd64bc)
{
	function_ad95a4a4("cp_mi_cairo_infection3");
	wait(0.05);
	switchmap_switch();
}

