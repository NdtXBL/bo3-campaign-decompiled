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
	Name: function_243693d4
	Namespace: namespace_67f614a9
	Checksum: 0xE6CF1795
	Offset: 0x5F0
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
	Namespace: namespace_67f614a9
	Checksum: 0xD796EDB1
	Offset: 0x630
	Size: 0x323
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
		function_863d6bb0(17);
	}
	namespace_9f824288::function_8c0c4b3a("infection");
	namespace_82b91a51::function_286a5010(11);
	function_a1a20c49();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_b0a87e94::function_d290ebfa();
	namespace_6473bd03::function_d290ebfa();
	namespace_f25bd8c8::function_66df416f();
	namespace_354df0e::function_d290ebfa();
	namespace_63a1d0c1::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	function_6c1294b8("compassmaxrange", "2100");
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
	namespace_d0ef8521::function_31cd1834("cp_level_infection_find_dr");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_defeat_sarah");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_interface_sarah");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_cross_chasm");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_follow_sarah");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_destroy_quadtank");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_confront_sarah");
	namespace_a01e7786::function_7403e82b();
}

/*
	Name: function_aebcf025
	Namespace: namespace_67f614a9
	Checksum: 0xB29B281F
	Offset: 0x960
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self thread namespace_36cbf523::function_b9217cbc();
	var_aace7bde = namespace_1d795d47::function_8b19ec5d();
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
	Name: function_a1a20c49
	Namespace: namespace_67f614a9
	Checksum: 0x193AC70F
	Offset: 0x9D0
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_a1a20c49()
{
	namespace_1d795d47::function_69554b3e("hideout", &namespace_6473bd03::function_206da579, "HIDEOUT", &namespace_6473bd03::function_299b5716);
	namespace_1d795d47::function_69554b3e("interrogation", &namespace_6473bd03::function_d039c886, "INTERROGATION", &namespace_6473bd03::function_3aef563f);
	namespace_1d795d47::function_69554b3e("city_barren", &namespace_6473bd03::function_607100ba, "STALINGRAD CREATION", &namespace_6473bd03::function_eebf61b);
	namespace_1d795d47::function_d68e678e("city", &namespace_6473bd03::function_67c4a95f, "ZOMBIES", &namespace_6473bd03::function_36ff1cdc);
	namespace_1d795d47::function_69554b3e("city_tree", &namespace_6473bd03::function_7bb61977, "ZOMBIES_END", &namespace_6473bd03::function_7e8dc9e7);
	namespace_1d795d47::function_d68e678e("city_nuked", &namespace_6473bd03::function_71d39006, "NUKE", &namespace_6473bd03::function_567b48bf);
	namespace_1d795d47::function_69554b3e("outro", &namespace_6473bd03::function_3e44f402, "OUTRO", &namespace_6473bd03::function_245d1883);
}

