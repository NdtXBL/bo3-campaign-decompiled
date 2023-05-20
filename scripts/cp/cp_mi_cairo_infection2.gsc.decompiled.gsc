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
	Name: function_243693d4
	Namespace: namespace_41f39a40
	Checksum: 0xDE9B0970
	Offset: 0x948
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
	Namespace: namespace_41f39a40
	Checksum: 0x920F66A1
	Offset: 0x988
	Size: 0x39B
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
		function_863d6bb0(116);
	}
	namespace_9f824288::function_8c0c4b3a("infection");
	namespace_82b91a51::function_286a5010(11);
	namespace_cc27597::function_6676939("cin_inf_07_04_sarah_vign_03");
	namespace_cc27597::function_6676939("cin_inf_08_blackstation_3rd_sh010");
	level namespace_ad23e503::function_c35e6aab("flag_player_enters_cave");
	function_a1a20c49();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	function_2ea898a8();
	namespace_9472df26::function_d290ebfa();
	namespace_47ecfa2f::function_d290ebfa();
	namespace_bcdc229e::function_d290ebfa();
	namespace_1bcb6ea8::function_ff58a260();
	namespace_e1dfe97e::function_ff58a260();
	namespace_8cdbec1b::function_ff58a260();
	namespace_4e2074f4::function_ff58a260();
	namespace_36cbf523::function_1d387f5d();
	namespace_f25bd8c8::function_66df416f();
	namespace_b7d29644::function_d290ebfa();
	namespace_1d795d47::function_f3e035ef();
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
	namespace_d0ef8521::function_31cd1834("cp_level_infection_extract_intel");
	namespace_afff1403::function_7403e82b();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_41f39a40
	Checksum: 0x4ED579B6
	Offset: 0xD30
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "cathedral_water_state", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "set_exposure_bank", 1, 2, "int");
}

/*
	Name: function_aebcf025
	Namespace: namespace_41f39a40
	Checksum: 0xAEBCC9C3
	Offset: 0xDA0
	Size: 0x2A9
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	var_aace7bde = namespace_1d795d47::function_8b19ec5d();
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
function function_376778e8(var_62e1e54b)
{
	self namespace_36cbf523::function_822eb8e8();
	namespace_82b91a51::function_76f13293();
	self namespace_36cbf523::function_72e40406(var_62e1e54b);
}

/*
	Name: function_a1a20c49
	Namespace: namespace_41f39a40
	Checksum: 0x29306560
	Offset: 0x10B0
	Size: 0x3EB
	Parameters: 0
	Flags: None
*/
function function_a1a20c49()
{
	namespace_1d795d47::function_69554b3e("sgen_server_room", &namespace_9472df26::function_2fcfe223, "SGEN - SERVER ROOM", &namespace_9472df26::function_3ef23469);
	namespace_1d795d47::function_d68e678e("forest_intro", &namespace_e1dfe97e::function_5855575b, "BASTOGNE INTRO", &namespace_e1dfe97e::function_dcdf9aa0);
	namespace_1d795d47::function_69554b3e("forest", &namespace_e1dfe97e::function_a683b99a, "BASTOGNE", &namespace_e1dfe97e::function_32e49d5b);
	namespace_1d795d47::function_d68e678e("forest_surreal", &namespace_47c46a7d::function_d290ebfa, "WORLD FALLS AWAY", &namespace_47c46a7d::function_32e49d5b);
	namespace_1d795d47::function_d68e678e("forest_wolves", &namespace_47c46a7d::function_9f54e23d, "FOREST WOLVES", &namespace_47c46a7d::function_71196f64);
	namespace_1d795d47::function_69554b3e("forest_sky_bridge", &namespace_47c46a7d::function_48e4fcb4, "FOREST SKY BRIDGE", &namespace_47c46a7d::function_dd270bfd);
	namespace_1d795d47::function_69554b3e("forest_tunnel", &namespace_47c46a7d::function_cfaebb13, "FOREST TUNNEL", &namespace_47c46a7d::function_de606506);
	namespace_1d795d47::function_654c9dda("dev_black_station_intro", &namespace_47c46a7d::function_1983bda0, "DEV: BLACK STATION INTRO", &namespace_47c46a7d::function_503c0a2);
	namespace_1d795d47::function_d68e678e("black_station", &namespace_47ecfa2f::function_fbe0ab05, "BLACK STATION", &namespace_47ecfa2f::function_32e49d5b);
	namespace_1d795d47::function_d68e678e("village", &namespace_8cdbec1b::function_d290ebfa, "FOY", &namespace_8cdbec1b::function_32e49d5b);
	namespace_1d795d47::function_d68e678e("village_inception", &namespace_4e2074f4::function_d290ebfa, "FOLD", &namespace_4e2074f4::function_32e49d5b);
	namespace_1d795d47::function_d68e678e("church", &namespace_1bcb6ea8::function_56c1b3cc, "CHURCH", &namespace_1bcb6ea8::function_7c4081cb);
	namespace_1d795d47::function_69554b3e("cathedral", &namespace_1bcb6ea8::function_cbb5d383, "CATHEDRAL", &namespace_1bcb6ea8::function_9fdc48d2);
	namespace_1d795d47::function_654c9dda("dev_cathedral_outro", &namespace_1bcb6ea8::function_b6b71003, "CATHEDRAL", &namespace_1bcb6ea8::function_956d2096);
	namespace_1d795d47::function_d68e678e("underwater", &namespace_bcdc229e::function_9157ab7a, "UNDERWATER", &namespace_bcdc229e::function_1c0537db);
	namespace_1d795d47::function_654c9dda("dev_skipto_infection_3", &function_377593d7);
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
function function_377593d7(var_b04bc952, var_74cd64bc)
{
	function_ad95a4a4("cp_mi_cairo_infection3");
	wait(0.05);
	function_a63aee74();
}

