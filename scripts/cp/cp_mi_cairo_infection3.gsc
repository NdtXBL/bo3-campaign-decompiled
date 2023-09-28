#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_hideout_outro;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection_zombies;
#using scripts\cp\cp_mi_cairo_infection3_fx;
#using scripts\cp\cp_mi_cairo_infection3_patch;
#using scripts\cp\cp_mi_cairo_infection3_sound;
#using scripts\cp\gametypes\_save;
#using scripts\shared\callbacks_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\util_shared;

#namespace namespace_67f614a9;

/*
	Name: setup_rex_starts
	Namespace: namespace_67f614a9
	Checksum: 0xE6CF1795
	Offset: 0x5F0
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
	Namespace: namespace_67f614a9
	Checksum: 0xD796EDB1
	Offset: 0x630
	Size: 0x323
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
		SetClearanceCeiling(17);
	}
	savegame::function_8c0c4b3a("infection");
	util::function_286a5010(11);
	skipto_setup();
	callback::on_spawned(&on_player_spawned);
	namespace_b0a87e94::main();
	namespace_6473bd03::main();
	namespace_f25bd8c8::function_66df416f();
	namespace_354df0e::main();
	namespace_63a1d0c1::main();
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
	objectives::complete("cp_level_infection_cross_chasm");
	objectives::complete("cp_level_infection_follow_sarah");
	objectives::complete("cp_level_infection_destroy_quadtank");
	objectives::complete("cp_level_infection_confront_sarah");
	namespace_a01e7786::function_7403e82b();
}

/*
	Name: on_player_spawned
	Namespace: namespace_67f614a9
	Checksum: 0xB29B281F
	Offset: 0x960
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self thread namespace_36cbf523::zombie_behind_vox();
	var_aace7bde = skipto::function_8b19ec5d();
	if(isdefined(var_aace7bde))
	{
		switch(var_aace7bde[0])
		{
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: skipto_setup
	Namespace: namespace_67f614a9
	Checksum: 0x193AC70F
	Offset: 0x9D0
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function skipto_setup()
{
	skipto::add("hideout", &namespace_6473bd03::function_206da579, "HIDEOUT", &namespace_6473bd03::function_299b5716);
	skipto::add("interrogation", &namespace_6473bd03::function_d039c886, "INTERROGATION", &namespace_6473bd03::function_3aef563f);
	skipto::add("city_barren", &namespace_6473bd03::function_607100ba, "STALINGRAD CREATION", &namespace_6473bd03::function_eebf61b);
	skipto::function_d68e678e("city", &namespace_6473bd03::function_67c4a95f, "ZOMBIES", &namespace_6473bd03::function_36ff1cdc);
	skipto::add("city_tree", &namespace_6473bd03::function_7bb61977, "ZOMBIES_END", &namespace_6473bd03::function_7e8dc9e7);
	skipto::function_d68e678e("city_nuked", &namespace_6473bd03::function_71d39006, "NUKE", &namespace_6473bd03::function_567b48bf);
	skipto::add("outro", &namespace_6473bd03::function_3e44f402, "OUTRO", &namespace_6473bd03::function_245d1883);
}

