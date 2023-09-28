#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_fx;
#using scripts\cp\cp_mi_cairo_infection_patch;
#using scripts\cp\cp_mi_cairo_infection_sgen_test_chamber;
#using scripts\cp\cp_mi_cairo_infection_sim_reality_starts;
#using scripts\cp\cp_mi_cairo_infection_sound;
#using scripts\cp\cp_mi_cairo_infection_theia_battle;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\util_shared;

#namespace namespace_1477b376;

/*
	Name: setup_rex_starts
	Namespace: namespace_1477b376
	Checksum: 0x1BDDDE66
	Offset: 0x650
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
	Namespace: namespace_1477b376
	Checksum: 0xF7F9B70
	Offset: 0x690
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function main()
{
	init_clientfields();
	SetClearanceCeiling(111);
	savegame::function_8c0c4b3a("infection");
	skipto_setup();
	util::function_286a5010(11);
	callback::on_spawned(&on_player_spawned);
	namespace_c3900363::main();
	namespace_b2b18209::main();
	namespace_9ac99a6e::main();
	namespace_f25bd8c8::function_66df416f();
	namespace_dff03fd3::main();
	namespace_5fae4ea::main();
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
	level._effect["player_dirt_loop"] = "dirt/fx_dust_sand_storm_player_loop";
	level.var_dc236bc8 = 1;
	namespace_bb56f921::function_7403e82b();
}

/*
	Name: init_clientfields
	Namespace: namespace_1477b376
	Checksum: 0x3DFDAE5D
	Offset: 0x940
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("world", "set_exposure_bank", 1, 2, "int");
}

/*
	Name: on_player_spawned
	Namespace: namespace_1477b376
	Checksum: 0xAFFE0D9D
	Offset: 0x980
	Size: 0x139
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
			case "vtol_arrival":
			{
				self namespace_36cbf523::function_9f10c537();
				break;
			}
			case "sarah_battle":
			{
				self util::set_lighting_state(1);
				self thread function_4fbaf6d6();
				break;
			}
			case "sarah_battle_end":
			{
				self util::set_lighting_state(1);
				break;
			}
			case "sim_reality_starts":
			{
				self thread function_376778e8();
				self namespace_36cbf523::function_9f10c537();
				break;
			}
			case "cyber_soliders_invest":
			case "sgen_test_chamber":
			case "time_lapse":
			{
				self namespace_36cbf523::function_9f10c537();
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
	Name: function_4fbaf6d6
	Namespace: namespace_1477b376
	Checksum: 0xE31C5C56
	Offset: 0xAC8
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_4fbaf6d6()
{
	level waittill("hash_9f92e1e");
	fx_origin = util::spawn_model("tag_origin", self.origin, self.angles);
	PlayFXOnTag(level._effect["player_dirt_loop"], fx_origin, "tag_origin");
	fx_origin LinkTo(self);
	level waittill("hash_ef5f6fb5");
	fx_origin delete();
}

/*
	Name: function_376778e8
	Namespace: namespace_1477b376
	Checksum: 0x4D8C7F9D
	Offset: 0xB88
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
	Namespace: namespace_1477b376
	Checksum: 0x44F55DD8
	Offset: 0xBE0
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function skipto_setup()
{
	skipto::add("vtol_arrival", &namespace_c3900363::function_e25e4f9, "VTOL ARRIVAL", &namespace_c3900363::function_f72443b3);
	skipto::add("sarah_battle", &namespace_c3900363::function_8721a9e0, "SARAH BATTLE", &namespace_c3900363::function_eaebdc16);
	skipto::function_d68e678e("sarah_battle_end", &namespace_c3900363::function_6714d6be, "SARAH BATTLE END", &namespace_c3900363::function_e6eaed98);
	skipto::add("sim_reality_starts", &namespace_b2b18209::function_d78d6232, "BIRTH OF THE AI", &namespace_b2b18209::function_2d3d4bcc);
	skipto::function_d68e678e("sgen_test_chamber", &namespace_9ac99a6e::function_c568c95b, "SGEN - 2060", &namespace_9ac99a6e::function_7985eb71);
	skipto::add("time_lapse", &namespace_9ac99a6e::function_21e8c919, "SGEN - TIME LAPSE", &namespace_9ac99a6e::function_f7f4cbd3);
	skipto::add("cyber_soliders_invest", &namespace_9ac99a6e::function_621e0975, "SGEN - 2070", &namespace_9ac99a6e::function_790aa7af);
	skipto::function_654c9dda("dev_skipto_infection_2", &function_1173196e);
	skipto::function_654c9dda("dev_skipto_infection_3", &function_377593d7);
}

/*
	Name: function_1173196e
	Namespace: namespace_1477b376
	Checksum: 0xF89BC712
	Offset: 0xE00
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_1173196e(str_objective, var_74cd64bc)
{
	function_ad95a4a4("cp_mi_cairo_infection2");
	wait(0.05);
	switchmap_switch();
}

/*
	Name: function_377593d7
	Namespace: namespace_1477b376
	Checksum: 0x4E46EF4C
	Offset: 0xE50
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

