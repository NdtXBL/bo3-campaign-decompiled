#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_newworld_accolades;
#using scripts\cp\cp_mi_zurich_newworld_factory;
#using scripts\cp\cp_mi_zurich_newworld_fx;
#using scripts\cp\cp_mi_zurich_newworld_lab;
#using scripts\cp\cp_mi_zurich_newworld_patch;
#using scripts\cp\cp_mi_zurich_newworld_rooftops;
#using scripts\cp\cp_mi_zurich_newworld_sound;
#using scripts\cp\cp_mi_zurich_newworld_train;
#using scripts\cp\cp_mi_zurich_newworld_underground;
#using scripts\cp\cp_mi_zurich_newworld_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_b78a5cd7;

/*
	Name: function_243693d4
	Namespace: namespace_b78a5cd7
	Checksum: 0xCF91FDDA
	Offset: 0xEC8
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
	Namespace: namespace_b78a5cd7
	Checksum: 0xA751C7EF
	Offset: 0xF08
	Size: 0x1A3
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
	level.var_b8f294e8 = 1;
	namespace_37a1dc33::function_4d39a2af();
	namespace_9f824288::function_8c0c4b3a("newworld");
	function_2ea898a8();
	function_37af8a07();
	function_f53e79d4();
	namespace_bbfcd64f::function_d290ebfa();
	namespace_b5a65bd6::function_d290ebfa();
	function_673254cc();
	namespace_82b91a51::function_286a5010(10);
	namespace_dabbe128::function_356a4ee1(&function_72a45412);
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_aa179d1b(&namespace_ce0e5f06::function_974050f);
	namespace_d7916d65::function_d290ebfa();
	namespace_82e422e5::function_7403e82b();
	level thread function_4b0856b();
	namespace_ce0e5f06::function_3383b379();
}

/*
	Name: function_f53e79d4
	Namespace: namespace_b78a5cd7
	Checksum: 0xA6C72487
	Offset: 0x10B8
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_f53e79d4()
{
	level.var_c1aa5253["smk_idle_cauldron"] = "smoke/fx_smk_idle_cauldron";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_b78a5cd7
	Checksum: 0xB8C18419
	Offset: 0x10E0
	Size: 0x9F3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("actor", "diaz_camo_shader", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "name_diaz_wasp", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "weakpoint", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "factory_exterior_vents", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "open_vat_doors", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "chase_pedestrian_blockers", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "chase_train_rumble", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "spinning_vent_fxanim", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "crane_fxanim", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "underground_subway_debris", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "ability_wheel_tutorial", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "underground_subway_wires", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "inbound_igc_glass", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "train_robot_swing_glass_left", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "train_robot_swing_glass_right", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "train_robot_swing_left_extra", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "train_robot_swing_right_extra", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "train_dropdown_glass", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_glass_left", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_glass_right", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_1", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_2", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_3", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_4", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_5", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "train_throw_robot_corpses", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "train_throw_robot_corpses", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "train_brake_flaps", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "waterplant_rotate_fans", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "train_main_fx_occlude", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sndTrainContext", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "set_fog_bank", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("actor", "derez_ai_deaths", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "chase_suspect_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "wall_run_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "cs_rez_in_fx", 1, 2, "counter");
	namespace_71e9cb84::function_50f16166("actor", "cs_rez_out_fx", 1, 2, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "derez_ai_deaths", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "truck_explosion_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "derez_model_deaths", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "emp_door_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "smoke_grenade_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "frag_grenade_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "wall_break_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "train_explosion_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "wasp_hack_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "train_fx_occlude", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "wasp_hack_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "emp_vehicles_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "player_snow_fx", 1, 4, "int");
	namespace_71e9cb84::function_50f16166("allplayers", "player_spawn_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "emp_generator_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "train_rumble_loop", 1, 1, "int");
}

/*
	Name: function_37af8a07
	Namespace: namespace_b78a5cd7
	Checksum: 0x8CC348D6
	Offset: 0x1AE0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("foundry_remote_hijack_enabled");
	level namespace_ad23e503::function_c35e6aab("ptsd_active");
	level namespace_ad23e503::function_c35e6aab("ptsd_area_clear");
	level namespace_ad23e503::function_c35e6aab("chase_train_station_glass_ceiling");
	level namespace_ad23e503::function_c35e6aab("infinite_white_transition");
}

/*
	Name: function_4b0856b
	Namespace: namespace_b78a5cd7
	Checksum: 0x137BE0D3
	Offset: 0x1B90
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_4b0856b()
{
	namespace_2f06d687::function_2b37a3c9("civilian", "script_noteworthy", &function_efcad701);
	namespace_2f06d687::function_ef554cf7("axis", &namespace_ce0e5f06::function_e340d355);
	namespace_2f06d687::function_c6ffd13e("factory_allies", &namespace_82b91a51::function_958c7633);
	namespace_2f06d687::function_c6ffd13e("factory_allies", &namespace_ce0e5f06::function_e340d355);
	namespace_2f06d687::function_c6ffd13e("factory_intro_die", &namespace_ce0e5f06::function_e340d355);
	namespace_dabbe128::function_de1a6d25(&namespace_ce0e5f06::function_606dbca2);
}

/*
	Name: function_72a45412
	Namespace: namespace_b78a5cd7
	Checksum: 0x3B16A25F
	Offset: 0x1C90
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_72a45412()
{
	self namespace_ce0e5f06::function_1943bf79();
	if(!self namespace_ce0e5f06::function_c633d8fe())
	{
		self.var_fe7a7fe4 = 1;
		self namespace_71e9cb84::function_cc4d5165("hudItems.cybercoreSelectMenuDisabled", 1);
	}
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_b78a5cd7
	Checksum: 0x893F3DFF
	Offset: 0x1D00
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	if(!self namespace_ce0e5f06::function_c633d8fe())
	{
		self.var_83a2ce8d = 1;
	}
	self namespace_ce0e5f06::function_70176ad6();
}

/*
	Name: function_673254cc
	Namespace: namespace_b78a5cd7
	Checksum: 0x4CB9A9E9
	Offset: 0x1D50
	Size: 0x6F3
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_d68e678e("white_infinite_igc", &namespace_c7062b04::function_7ce22dd3, "White Infinite IGC", &namespace_c7062b04::function_ccad2ef9);
	namespace_1d795d47::function_d68e678e("factory_factory_intro_igc", &namespace_f8b9e1f8::function_e0b1e88a, "Factory  Factory Intro IGC", &namespace_f8b9e1f8::function_54113b74);
	namespace_1d795d47::function_69554b3e("factory_factory_exterior", &namespace_f8b9e1f8::function_5c3934c2, "Factory  Factory Exterior", &namespace_f8b9e1f8::function_8b155bc);
	namespace_1d795d47::function_d68e678e("factory_alley", &namespace_f8b9e1f8::function_8392bfa, "Factory  Alley", &namespace_f8b9e1f8::function_76333904);
	namespace_1d795d47::function_d68e678e("factory_warehouse", &namespace_f8b9e1f8::function_beff78dc, "Factory  Warehouse", &namespace_f8b9e1f8::function_e028fc02);
	namespace_1d795d47::function_d68e678e("factory_foundry", &namespace_f8b9e1f8::function_e886dd9a, "Factory  Foundry", &namespace_f8b9e1f8::function_5680eaa4);
	namespace_1d795d47::function_d68e678e("factory_vat_room", &namespace_f8b9e1f8::function_6aeb594c, "Factory  Vat Room", &namespace_f8b9e1f8::function_19fb5452);
	namespace_1d795d47::function_d68e678e("factory_inside_man_igc", &namespace_f8b9e1f8::function_6d9440c2, "Factory  Inside Man IGC", &namespace_f8b9e1f8::function_1a0c61bc);
	namespace_1d795d47::function_69554b3e("chase_apartment_igc", &namespace_36358f9c::function_c862f707, "Chase  Apartment IGC", &namespace_36358f9c::function_8aa535bd);
	namespace_1d795d47::function_d68e678e("chase_chase_start", &namespace_36358f9c::function_35d96059, "Chase  Chase Start", &namespace_36358f9c::function_1c5d5613);
	namespace_1d795d47::function_69554b3e("chase_bridge_collapse", &namespace_36358f9c::function_ec6ea2d4, "Chase  Bridge Collapse", &namespace_36358f9c::function_9ca3cbaa);
	namespace_1d795d47::function_69554b3e("chase_rooftops", &namespace_36358f9c::function_61decb2d, "Chase  Rooftops", &namespace_36358f9c::function_18f0e437);
	namespace_1d795d47::function_d68e678e("chase_old_zurich", &namespace_36358f9c::function_a7ce33a6, "Chase  Old Zurich", &namespace_36358f9c::function_4d063e30);
	namespace_1d795d47::function_69554b3e("chase_construction_site", &namespace_36358f9c::function_af48bb3e, "Chase  Construction Site", &namespace_36358f9c::function_2f1ed218);
	namespace_1d795d47::function_d68e678e("chase_glass_ceiling_igc", &namespace_36358f9c::function_9262d885, "Chase  Glass Ceiling IGC", &namespace_36358f9c::function_500cd65f);
	namespace_1d795d47::function_69554b3e("underground_pinned_down_igc", &namespace_2f45a7a1::function_78f1dce, "Underground  Pinned Down IGC", &namespace_2f45a7a1::function_2595088);
	namespace_1d795d47::function_69554b3e("underground_subway", &namespace_2f45a7a1::function_ec466e32, "Underground  Subway", &namespace_2f45a7a1::function_41f657cc);
	namespace_1d795d47::function_d68e678e("underground_crossroads", &namespace_2f45a7a1::function_95c9ad6c, "Underground  Crossroads", &namespace_2f45a7a1::function_1b150072);
	namespace_1d795d47::function_d68e678e("underground_construction", &namespace_2f45a7a1::function_c83c689a, "Underground  Construction Area", &namespace_2f45a7a1::function_363675a4);
	namespace_1d795d47::function_d68e678e("underground_maintenance", &namespace_2f45a7a1::function_984152f8, "Underground  Maintenance", &namespace_2f45a7a1::function_19da6b7e);
	namespace_1d795d47::function_d68e678e("underground_water_plant", &namespace_2f45a7a1::function_105344d6, "Underground  Water Treatment Plant", &namespace_2f45a7a1::function_217b1340);
	namespace_1d795d47::function_d68e678e("underground_staging_room_igc", &namespace_2f45a7a1::function_9f911334, "Underground  Staging Room IGC", &namespace_2f45a7a1::function_5240a50a);
	namespace_1d795d47::function_69554b3e("train_inbound_igc", &namespace_c7062b04::function_ab92d4b4, "Train  Inbound IGC", &namespace_c7062b04::function_5e42668a);
	namespace_1d795d47::function_69554b3e("train_train_start", &namespace_c7062b04::function_158a9a65, "Train  Train Start", &namespace_c7062b04::function_d5af013f);
	namespace_1d795d47::function_d68e678e("train_train_roof", &namespace_c7062b04::function_dbb1e1e3, "Train  Train Roof", &namespace_c7062b04::function_ead43429);
	namespace_1d795d47::function_d68e678e("train_detach_bomb_igc", &namespace_c7062b04::function_143fa139, "Train  Detach Bomb IGC", &namespace_c7062b04::function_ea4ba3f3);
	namespace_1d795d47::function_69554b3e("waking_up_igc", &namespace_d2831417::function_6383d314, "Waking Up IGC", &namespace_d2831417::function_3ff80cea);
	namespace_1d795d47::function_654c9dda("dev_lab", &namespace_d2831417::function_8f94ea53, "DEV:  Lab");
}

/*
	Name: function_efcad701
	Namespace: namespace_b78a5cd7
	Checksum: 0x71C446B
	Offset: 0x2450
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_efcad701()
{
	self.var_3a90f16b = 1;
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_80765127();
	self.var_69dd5d62 = 0;
	self namespace_d84e54db::function_ceb883cd("panic", 0);
	self thread function_1554ffe9();
	self thread namespace_ce0e5f06::function_523cdc93();
}

/*
	Name: function_3840d81a
	Namespace: namespace_b78a5cd7
	Checksum: 0x1235C211
	Offset: 0x2510
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_3840d81a(var_368248f2)
{
	self endon("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		return;
	}
	self namespace_d84e54db::function_ceb883cd("panic", 1);
	self function_c2931a36("vox_civ_panic_loop");
	self namespace_d84e54db::function_19e98020(var_368248f2, 8);
	self waittill("hash_41d1aaf0");
	namespace_ce0e5f06::function_523cdc93(0);
}

/*
	Name: function_1554ffe9
	Namespace: namespace_b78a5cd7
	Checksum: 0x17B95347
	Offset: 0x25D0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_1554ffe9()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_34914552", var_efb53e77);
		if(var_efb53e77.var_caae374e === "civilian")
		{
			continue;
		}
		if(self.var_a0f70d54 === var_efb53e77)
		{
			continue;
		}
		namespace_ce0e5f06::function_523cdc93(0);
		break;
	}
}

/*
	Name: function_2740a464
	Namespace: namespace_b78a5cd7
	Checksum: 0xF4E6613A
	Offset: 0x2660
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_2740a464(var_56c18f67)
{
	self waittill("hash_128f8789");
	var_56c18f67 namespace_82b91a51::function_20ffc8ff();
}

