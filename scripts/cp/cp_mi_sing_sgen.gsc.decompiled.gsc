#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen_accolades;
#using scripts\cp\cp_mi_sing_sgen_dark_battle;
#using scripts\cp\cp_mi_sing_sgen_enter_silo;
#using scripts\cp\cp_mi_sing_sgen_exterior;
#using scripts\cp\cp_mi_sing_sgen_fallen_soldiers;
#using scripts\cp\cp_mi_sing_sgen_flood;
#using scripts\cp\cp_mi_sing_sgen_fx;
#using scripts\cp\cp_mi_sing_sgen_pallas;
#using scripts\cp\cp_mi_sing_sgen_patch;
#using scripts\cp\cp_mi_sing_sgen_revenge_igc;
#using scripts\cp\cp_mi_sing_sgen_silo_swim;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_testing_lab_igc;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cp_mi_sing_sgen_uw_battle;
#using scripts\cp\cp_mi_sing_sgen_water_ride;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_fa13d4ba;

/*
	Name: function_243693d4
	Namespace: namespace_fa13d4ba
	Checksum: 0x7BC19DAA
	Offset: 0x1A30
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
	Namespace: namespace_fa13d4ba
	Checksum: 0x9EDCC896
	Offset: 0x1A70
	Size: 0x2A3
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
	function_f7046c76();
	function_2ea898a8();
	function_37af8a07();
	function_673254cc();
	function_b29072ff();
	function_1f7e5210();
	namespace_82b91a51::function_b499f765();
	namespace_82b91a51::function_286a5010(6);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_9f824288::function_8c0c4b3a("sgen");
	namespace_219c76cc::function_d290ebfa();
	namespace_172c963::function_d290ebfa();
	level.var_d829fe9f = 1;
	level.var_c04a7d54 = 1;
	level.var_173c585e = 1;
	if(function_6f1ebe57("skipto") === "dev_flood_combat")
	{
		namespace_cba4cc55::function_6d1a2a8d("flood_combat", "dev_flood_combat");
	}
	namespace_d7916d65::function_d290ebfa();
	namespace_643bc20::function_7403e82b();
	var_19aeddfe = namespace_14b42b8a::function_7faf4c39("dark_battle_align_2", "targetname");
	if(isdefined(var_19aeddfe) && var_19aeddfe.size > 1)
	{
		level.var_c490ab3b = var_19aeddfe[1].var_722885f3 - var_19aeddfe[0].var_722885f3;
	}
	var_c3f856f0 = function_6ada35ba("flood_defend_out_of_boundary_trig", "targetname");
	var_c3f856f0 function_8c1f7070();
	level thread function_4b0856b();
	level thread namespace_99202726::function_66df416f();
}

/*
	Name: function_1f7e5210
	Namespace: namespace_fa13d4ba
	Checksum: 0xFB27E6CC
	Offset: 0x1D20
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_1f7e5210()
{
	var_d227736c = function_9b7fda5e("trigger_box", (280, -600, -3610), 0, 3000, 3000, 3000);
	var_d227736c thread function_4fef5e4();
}

/*
	Name: function_4fef5e4
	Namespace: namespace_fa13d4ba
	Checksum: 0xAF1193C2
	Offset: 0x1D88
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_4fef5e4()
{
	self endon("hash_128f8789");
	level endon("hash_398666a0");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aef176e7);
		if(function_65f192a6(var_aef176e7))
		{
			var_aef176e7 function_2992720d();
		}
	}
}

/*
	Name: function_b29072ff
	Namespace: namespace_fa13d4ba
	Checksum: 0xB8772033
	Offset: 0x1E00
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_b29072ff()
{
	var_76099c5f = function_a8fb77bd();
	var_76099c5f.var_f8456b37 = 60;
	var_76099c5f.var_a4e8111c = VectorScale((-1, -1, 0), 5);
	level.var_3efe1e22["p7_nc_sin_coa_04"] = var_76099c5f;
}

/*
	Name: function_673254cc
	Namespace: namespace_fa13d4ba
	Checksum: 0x9F7944A8
	Offset: 0x1E70
	Size: 0x643
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("intro", &namespace_5da6b440::function_62616b71, "Intro", &namespace_5da6b440::function_19a68bdb);
	namespace_1d795d47::function_69554b3e("exterior", &namespace_5da6b440::function_d43e5685, "Exterior", &namespace_5da6b440::function_91e8545f);
	namespace_1d795d47::function_d68e678e("enter_lobby", &namespace_5da6b440::function_2c76d8aa, "Enter Lobby", &namespace_5da6b440::function_8903df94);
	namespace_1d795d47::function_d68e678e("discover_data", &namespace_9c567844::function_aa390943, "Discover Data", &namespace_9c567844::function_e59a6c89);
	namespace_1d795d47::function_d68e678e("aquarium_shimmy", &namespace_9c567844::function_17b49f2c, "Aquarium Shimmy", &namespace_9c567844::function_e28bb832);
	namespace_1d795d47::function_d68e678e("gen_lab", &namespace_9c567844::function_ab2e4091, "Genetics Lab", &namespace_9c567844::function_627360fb);
	namespace_1d795d47::function_d68e678e("post_gen_lab", &namespace_9c567844::function_d26cae1c, "Post Gen Lab", &namespace_9c567844::function_dcc3e542);
	namespace_1d795d47::function_d68e678e("chem_lab", &namespace_9c567844::function_f6774f56, "Chemical Lab", &namespace_9c567844::function_79f1dc0);
	namespace_1d795d47::function_d68e678e("post_chem_lab", &namespace_9c567844::function_4843e971, "Post Chem Lab", &namespace_9c567844::function_ff8909db);
	namespace_1d795d47::function_d68e678e("silo_floor", &namespace_9c567844::function_6926cd7f, "Silo Floor Battle", &namespace_9c567844::function_e3f81a25);
	namespace_1d795d47::function_d68e678e("under_silo", &namespace_9c567844::function_77964ef1, "Under Silo", &namespace_9c567844::function_2edb6f5b);
	namespace_1d795d47::function_d68e678e("fallen_soldiers", &namespace_ed09da6e::function_73eb52a7, "Fallen Soldiers", &namespace_ed09da6e::function_51f4af5d);
	namespace_1d795d47::function_d68e678e("testing_lab_igc", &namespace_a5e80dc::function_74581061, "Human Testing Lab", &namespace_a5e80dc::function_bfad6ceb);
	namespace_1d795d47::function_d68e678e("dark_battle", &namespace_4c73eafb::function_32dc1c24, "Dark Battle", &namespace_4c73eafb::function_bbb54b1a);
	namespace_1d795d47::function_d68e678e("charging_station", &namespace_4c73eafb::function_5f76850f, "Charging Station", &namespace_4c73eafb::function_9724b9d5);
	namespace_1d795d47::function_d68e678e("descent", &namespace_646f304f::function_1a420bcd, "Descent", &namespace_646f304f::function_d15424d7);
	namespace_1d795d47::function_69554b3e("pallas_start", &namespace_646f304f::function_1f2baf43, "pallas start", &namespace_646f304f::function_5a8d1289);
	namespace_1d795d47::function_69554b3e("pallas_end", &namespace_646f304f::function_bf36708e, "Pallas Death", &namespace_646f304f::function_e3c54b48);
	namespace_1d795d47::function_d68e678e("twin_revenge", &namespace_19d629e::function_cc756659, "Twin Revenge", &namespace_19d629e::function_b2f95c13);
	namespace_1d795d47::function_d68e678e("flood_combat", &namespace_caee6f4a::function_37c559db, "Flood Combat", &namespace_caee6f4a::function_ebe27bf1);
	namespace_1d795d47::function_d68e678e("flood_defend", &namespace_caee6f4a::function_ba34fbda, "Flood Defend", &namespace_caee6f4a::function_e2a342e4);
	namespace_1d795d47::function_d68e678e("underwater_battle", &namespace_b1c45cf3::function_297ca3c6, "Underwater Battle", &namespace_b1c45cf3::function_ceb4ae50);
	namespace_1d795d47::function_d68e678e("underwater_rail", &namespace_bfe2abac::function_b2f17f19, "Underwater Rail", &namespace_bfe2abac::function_88fd81d3);
	namespace_1d795d47::function_d68e678e("silo_swim", &namespace_da397ec0::function_d64c7d65, "Silo Swim", &namespace_da397ec0::function_9670e43f);
	namespace_1d795d47::function_654c9dda("dev_flood_combat", &namespace_caee6f4a::function_37c559db, "Flood Combat", &namespace_caee6f4a::function_ebe27bf1);
}

/*
	Name: function_f7046c76
	Namespace: namespace_fa13d4ba
	Checksum: 0x4682D5EF
	Offset: 0x24C0
	Size: 0x1DD
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
	level.var_c1aa5253["current_effect"] = "debris/fx_debris_underwater_current_sgen_os";
	level.var_c1aa5253["decon_mist"] = "steam/fx_steam_decon_fill_elevator_sgen";
	level.var_c1aa5253["drone_breadcrumb"] = "light/fx_temp_glow_cookie_crumb_sgen";
	level.var_c1aa5253["drone_sparks"] = "destruct/fx_dest_drone_mapper";
	level.var_c1aa5253["red_flare"] = "light/fx_light_emergency_flare_red";
	level.var_c1aa5253["water_spout"] = "water/fx_water_leak_torrent_md";
	level.var_c1aa5253["coolant_fx"] = "fog/fx_fog_coolant_jet_pallas_sgen";
	level.var_c1aa5253["fake_depth_charge_explosion"] = "explosions/fx_exp_underwater_depth_charge";
	level.var_c1aa5253["tidal_wave"] = "water/fx_temp_water_tidal_wave_sgen";
	level.var_c1aa5253["drone_splash"] = "water/fx_water_splash_25v25";
	level.var_c1aa5253["rock_explosion"] = "explosions/fx_exp_generic_lg";
	level.var_c1aa5253["coolant_tower_unleash"] = "fog/fx_fog_coolant_release_column_sgen";
	level.var_c1aa5253["coolant_tower_damage_minor"] = "fog/fx_fog_coolant_leak_md";
	level.var_c1aa5253["coolant_tower_damage_major"] = "fog/fx_fog_coolant_leak_lg";
	level.var_c1aa5253["depth_charge_explosion"] = "explosions/fx_exp_underwater_depth_charge";
	level.var_c1aa5253["underwater_flare"] = "light/fx_light_flare_ground_sgen";
	level.var_c1aa5253["weakspot_impact"] = "impacts/fx_bul_impact_metal_tower_core_sgen";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_fa13d4ba
	Checksum: 0x262B52E8
	Offset: 0x26A8
	Size: 0x8F3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "w_fxa_truck_flip", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "w_robot_window_break", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "silo_swim_bridge_fall", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "testing_lab_wires", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "w_underwater_state", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "w_flood_combat_windows_b", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "w_flood_combat_windows_c", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "elevator_light_probe", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "flood_defend_hallway_flood_siege", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "tower_chunks1", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "tower_chunks2", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "tower_chunks3", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "observation_deck_destroy", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "fallen_soldiers_client_fxanims", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "w_flyover_buoys", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "w_twin_igc_fxanim", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "set_exposure_bank", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "silo_debris", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("world", "ceiling_collapse", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("world", "debris_catwalk", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "debris_wall", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "debris_fall", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "debris_bridge", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "structural_weakness", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "sm_elevator_door_state", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "sm_elevator_shader", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "weakpoint", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "sm_depth_charge_fx", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "dni_eye", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "turn_fake_robot_eye", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "play_cia_robot_rogue_control", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "cooling_tower_damage", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "pallas_monitors_state", 1, function_eaa48678(3), "int");
	namespace_71e9cb84::function_50f16166("toplayer", "tp_water_sheeting", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "oed_interference", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "sndSiloBG", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "dust_motes", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "water_motes", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "water_teleport", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "extra_cam_ent", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "sm_depth_charge_fx", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "quad_tank_tac_mode", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "robot_bubbles", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "disable_tmode", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "sndStepSet", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sndLabWalla", 1, 1, "int");
	namespace_e216c11c::function_9be319f9("overlay", "earthquake_blur", 1, 50, 1, 1, &namespace_e216c11c::function_5b5719b, 0);
}

/*
	Name: function_37af8a07
	Namespace: namespace_fa13d4ba
	Checksum: 0x9B2C5E53
	Offset: 0x2FA8
	Size: 0xBAB
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	namespace_82b91a51::function_ab12ef82("start_level");
	namespace_d7916d65::function_73adcefc();
	level namespace_ad23e503::function_c35e6aab("important_vo_playing");
	level namespace_ad23e503::function_c35e6aab("exterior_start_patrol");
	level namespace_ad23e503::function_c35e6aab("hendricks_on_hill");
	level namespace_ad23e503::function_c35e6aab("start_vehicle_patrols");
	level namespace_ad23e503::function_c35e6aab("intro_igc_done");
	level namespace_ad23e503::function_c35e6aab("hendricks_intro_done");
	level namespace_ad23e503::function_c35e6aab("player_has_silenced_weap");
	level namespace_ad23e503::function_c35e6aab("start_technical");
	level namespace_ad23e503::function_c35e6aab("intro_truck_arrived");
	level namespace_ad23e503::function_c35e6aab("fallback_to_qt");
	level namespace_ad23e503::function_c35e6aab("hendricks_qt_reveal");
	level namespace_ad23e503::function_c35e6aab("intro_quadtank_dead");
	level namespace_ad23e503::function_c35e6aab("quad_tank_nag_vo_playing");
	level namespace_ad23e503::function_c35e6aab("quad_tank_trophy_system_destroyed");
	level namespace_ad23e503::function_c35e6aab("enemy_alerting_area");
	level namespace_ad23e503::function_c35e6aab("hendricks_at_lobby_idle");
	level namespace_ad23e503::function_c35e6aab("lobby_door_opening");
	level namespace_ad23e503::function_c35e6aab("lobby_door_opened");
	level namespace_ad23e503::function_c35e6aab("silo_door_opened");
	level namespace_ad23e503::function_c35e6aab("data_discovered");
	level namespace_ad23e503::function_c35e6aab("data_recovered");
	level namespace_ad23e503::function_c35e6aab("hendricks_move_to_under_fan");
	level namespace_ad23e503::function_c35e6aab("hendricks_corvus_examination");
	level namespace_ad23e503::function_c35e6aab("corvus_entrance_hendrick_idle_trigger");
	level namespace_ad23e503::function_c35e6aab("chem_door_open");
	level namespace_ad23e503::function_c35e6aab("player_raise_hendricks_player_ready");
	level namespace_ad23e503::function_c35e6aab("player_raise_hendricks_hendricks_ready");
	level namespace_ad23e503::function_c35e6aab("spawn_quadtank_reinforcements");
	level namespace_ad23e503::function_c35e6aab("start_hendricks_move_up_battle_1");
	level namespace_ad23e503::function_c35e6aab("start_hendricks_move_up_battle_2");
	level namespace_ad23e503::function_c35e6aab("gen_lab_cleared");
	level namespace_ad23e503::function_c35e6aab("hendricks_at_gen_lab_door");
	level namespace_ad23e503::function_c35e6aab("gen_lab_door_opened");
	level namespace_ad23e503::function_c35e6aab("bridge_collapse_safe");
	level namespace_ad23e503::function_c35e6aab("hendricks_door_line");
	level namespace_ad23e503::function_c35e6aab("spawn_quad_tank");
	level namespace_ad23e503::function_c35e6aab("enable_battle_volumes");
	level namespace_ad23e503::function_c35e6aab("pre_gen_lab_vo_done");
	level namespace_ad23e503::function_c35e6aab("qtank_fight_completed");
	level namespace_ad23e503::function_c35e6aab("mappy_path_active");
	level namespace_ad23e503::function_c35e6aab("hendricks_data_anim_done");
	level namespace_ad23e503::function_c35e6aab("hendricks_at_silo_doors");
	level namespace_ad23e503::function_c35e6aab("gen_lab_gone_hot");
	level namespace_ad23e503::function_c35e6aab("bridge_debris_player_kill");
	level namespace_ad23e503::function_c35e6aab("chem_lab_hendricks_movein_done");
	level namespace_ad23e503::function_c35e6aab("start_silo_ambush");
	level namespace_ad23e503::function_c35e6aab("start_floor_risers");
	level namespace_ad23e503::function_c35e6aab("all_players_outside_chem_lab");
	level namespace_ad23e503::function_c35e6aab("gen_lab_pip_off");
	level namespace_ad23e503::function_c35e6aab("exterior_gone_hot");
	level namespace_ad23e503::function_c35e6aab("hendricks_in_cqb");
	level namespace_ad23e503::function_c35e6aab("hendricks_in_gen_lab");
	level namespace_ad23e503::function_c35e6aab("drone_over_grate");
	level namespace_ad23e503::function_c35e6aab("drone_over_grate_real");
	level namespace_ad23e503::function_c35e6aab("drone_died");
	level namespace_ad23e503::function_c35e6aab("kane_data_callout");
	level namespace_ad23e503::function_c35e6aab("weapons_research_vo_start");
	level namespace_ad23e503::function_c35e6aab("weapons_research_vo_done");
	level namespace_ad23e503::function_c35e6aab("highlight_railing_glass");
	level namespace_ad23e503::function_c35e6aab("glass_railing_kicked");
	level namespace_ad23e503::function_c35e6aab("spawn_silo_robots");
	level namespace_ad23e503::function_c35e6aab("drone_silo_anim_done");
	level namespace_ad23e503::function_c35e6aab("drone_scanning");
	level namespace_ad23e503::function_c35e6aab("hendricks_at_silo_floor");
	level namespace_ad23e503::function_c35e6aab("send_drone_over_grate");
	level namespace_ad23e503::function_c35e6aab("silo_floor_cleared");
	level namespace_ad23e503::function_c35e6aab("silo_grate_open");
	level namespace_ad23e503::function_c35e6aab("pallas_intro_completed");
	level namespace_ad23e503::function_c35e6aab("pallas_start");
	level namespace_ad23e503::function_c35e6aab("pallas_end");
	level namespace_ad23e503::function_c35e6aab("core_two_destroyed");
	level namespace_ad23e503::function_c35e6aab("hendricks_attacked_done");
	level namespace_ad23e503::function_c35e6aab("tower_three_destroyed");
	level namespace_ad23e503::function_c35e6aab("dark_battle_hendricks_above");
	level namespace_ad23e503::function_c35e6aab("dark_battle_hendricks_ambush");
	level namespace_ad23e503::function_c35e6aab("pallas_ambush_over");
	level namespace_ad23e503::function_c35e6aab("fallen_soldiers_hendricks_ready");
	level namespace_ad23e503::function_c35e6aab("pallas_lift_front_open");
	level namespace_ad23e503::function_c35e6aab("pallas_lift_back_open");
	level namespace_ad23e503::function_c35e6aab("pallas_death");
	level namespace_ad23e503::function_c35e6aab("bridge_hit_1");
	level namespace_ad23e503::function_c35e6aab("bridge_hit_2");
	level namespace_ad23e503::function_c35e6aab("optics_out");
	level namespace_ad23e503::function_c35e6aab("defend_ready");
	level namespace_ad23e503::function_c35e6aab("hendricks_door_open");
	level namespace_ad23e503::function_c35e6aab("water_robot_spawned");
	level namespace_ad23e503::function_c35e6aab("pod_robot_spawned");
	level namespace_ad23e503::function_c35e6aab("depth_charges_cleared");
	level namespace_ad23e503::function_c35e6aab("player_raise_hendricks_hendricks");
	level namespace_ad23e503::function_c35e6aab("silo_swim_bridge_collapse");
	level namespace_ad23e503::function_c35e6aab("silo_swim_take_out");
	level namespace_ad23e503::function_c35e6aab("sgen_end_igc");
}

/*
	Name: function_4b0856b
	Namespace: namespace_fa13d4ba
	Checksum: 0x412E7781
	Offset: 0x3B60
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_4b0856b()
{
	var_c3938a0d = function_99201f25("t_mover", "targetname");
	namespace_84970cc4::function_966ecb29(var_c3938a0d, &namespace_cba4cc55::function_588a8011);
	var_66f34b09 = function_99201f25("enhanced_vision_on", "targetname");
	var_9e2795b5 = function_99201f25("enhanced_vision_off", "targetname");
	namespace_84970cc4::function_966ecb29(var_66f34b09, &function_5dd1ccff, 1);
	namespace_84970cc4::function_966ecb29(var_9e2795b5, &function_5dd1ccff, 0);
	var_2068ca6f = function_99201f25("water_movement_trigger", "targetname");
	namespace_84970cc4::function_966ecb29(var_2068ca6f, &function_db43be1e);
	level thread function_ec9fa3fe();
	level thread function_d481b315();
	level thread function_dedf5ad3();
	level thread function_3fbd8c78();
}

/*
	Name: function_bff1a867
	Namespace: namespace_fa13d4ba
	Checksum: 0x822476B7
	Offset: 0x3D10
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_bff1a867(var_b04bc952)
{
	if(var_b04bc952 == "intro" || var_b04bc952 == "exterior" || var_b04bc952 == "enter_lobby" || var_b04bc952 == "discover_data")
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks_backpack");
	}
	else
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	}
	if(!function_5dbf7eca(level.var_31aefea8, "dev_flood_combat"))
	{
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
	}
}

/*
	Name: function_3fbd8c78
	Namespace: namespace_fa13d4ba
	Checksum: 0x77BCA04B
	Offset: 0x3DE8
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function function_3fbd8c78()
{
	for(var_4f8217af = 2; var_4f8217af < 4; var_4f8217af++)
	{
		namespace_cc27597::function_8f9f34e0("cin_sgen_15_04_robot_ambush_aie_arise_robot0" + var_4f8217af, &function_ff4dec72, "init");
		namespace_cc27597::function_8f9f34e0("cin_sgen_15_04_robot_ambush_aie_arise_robot0" + var_4f8217af, &function_e860d344, "play");
	}
	for(var_4f8217af = 1; var_4f8217af < 5; var_4f8217af++)
	{
		namespace_cc27597::function_8f9f34e0("cin_sgen_13_01_robots_awaken_aie_awake_robot0" + var_4f8217af, &function_ff4dec72, "init");
		namespace_cc27597::function_8f9f34e0("cin_sgen_13_01_robots_awaken_aie_awake_robot0" + var_4f8217af, &function_e860d344, "play");
	}
	for(var_4f8217af = 1; var_4f8217af < 5; var_4f8217af++)
	{
		namespace_cc27597::function_8f9f34e0("cin_sgen_12_02_corvus_vign_wakeup_rail_robot_0" + var_4f8217af, &function_ff4dec72, "init");
		namespace_cc27597::function_8f9f34e0("cin_sgen_12_02_corvus_vign_wakeup_rail_robot_0" + var_4f8217af, &function_e860d344, "play");
	}
	namespace_cc27597::function_8f9f34e0("cin_sgen_16_01_charging_station_aie_idle_robot01", &function_ff4dec72, "init");
	namespace_cc27597::function_8f9f34e0("cin_sgen_16_01_charging_station_aie_idle_robot01", &function_ff4dec72, "play");
	namespace_cc27597::function_8f9f34e0("cin_sgen_16_01_charging_station_aie_fail_robot01", &function_ff4dec72, "init");
	namespace_cc27597::function_8f9f34e0("cin_sgen_16_01_charging_station_aie_fail_robot01", &function_ff4dec72, "play");
	for(var_4f8217af = 1; var_4f8217af < 7; var_4f8217af++)
	{
		namespace_cc27597::function_8f9f34e0("cin_sgen_16_01_charging_station_aie_awaken_robot0" + var_4f8217af, &function_e860d344, "play");
	}
	namespace_cc27597::function_8f9f34e0("cin_sgen_16_01_charging_station_aie_awaken_robot05_jumpdown", &function_e860d344, "play");
}

/*
	Name: function_aba4c411
	Namespace: namespace_fa13d4ba
	Checksum: 0x9AB3B3
	Offset: 0x40F8
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_aba4c411()
{
	var_1e8741a8 = function_99201f25("diaz_tower_1", "targetname");
	foreach(var_421c8255 in var_1e8741a8)
	{
		var_421c8255 function_8bdea13c(106, 0.05);
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_fa13d4ba
	Checksum: 0x2886601A
	Offset: 0x41C8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	if(level namespace_ad23e503::function_7922262b("optics_out"))
	{
		level thread function_5dd1ccff(0, 0, self);
	}
}

/*
	Name: function_ec9fa3fe
	Namespace: namespace_fa13d4ba
	Checksum: 0x2920AF6D
	Offset: 0x4218
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_ec9fa3fe()
{
	level namespace_ad23e503::function_1ab5ebec("silo_grate_open");
	var_d5ca9084 = function_99201f25("silo_floor_clip", "targetname");
	namespace_84970cc4::function_eaab05dc(var_d5ca9084, &function_dc8c8404);
	level namespace_ad23e503::function_1ab5ebec("silo_swim");
	var_d5ca9084 = function_99201f25("silo_grate", "targetname");
	namespace_84970cc4::function_eaab05dc(var_d5ca9084, &function_dc8c8404);
}

/*
	Name: function_7a4e1da3
	Namespace: namespace_fa13d4ba
	Checksum: 0xFC5AF39D
	Offset: 0x4300
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_7a4e1da3()
{
	if(isdefined(self.var_c26d3b77) && self.var_c26d3b77 != level.var_6c3e6703 && self function_2103ff4b(self.var_c26d3b77))
	{
		self function_cb53a41e(self.var_c26d3b77);
	}
	else
	{
		var_d646ce1c = self function_da26566c();
		if(isdefined(var_d646ce1c) && var_d646ce1c.size > 0)
		{
			self function_cb53a41e(var_d646ce1c[0]);
		}
	}
}

/*
	Name: function_5dd1ccff
	Namespace: namespace_fa13d4ba
	Checksum: 0xD2A2027
	Offset: 0x43C8
	Size: 0x2A9
	Parameters: 3
	Flags: None
*/
function function_5dd1ccff(var_864a3d55, var_5b1ec2c2, var_6bfe1586)
{
	if(!isdefined(var_5b1ec2c2))
	{
		var_5b1ec2c2 = 1;
	}
	level endon("hash_6a9c5cb5");
	while(1)
	{
		if(var_5b1ec2c2)
		{
			self waittill("hash_4dbf3ae3", var_6bfe1586);
		}
		if(!isdefined(var_6bfe1586.var_1e983b11))
		{
			var_6bfe1586.var_1e983b11 = level.var_1e983b11;
		}
		var_154f55d0 = var_6bfe1586.var_1e983b11;
		if(!var_864a3d55)
		{
			level namespace_ad23e503::function_74d6b22f("optics_out");
			var_6bfe1586 namespace_16f9ecd3::function_fc1750c9(0);
			var_6bfe1586 namespace_16f9ecd3::function_e234a6a6(0);
			if(isdefined(var_6bfe1586.var_175490fb.var_301030f7) && var_6bfe1586.var_175490fb.var_301030f7)
			{
				var_6bfe1586 namespace_5dc5e20a::function_18cd2f76();
				var_6bfe1586 namespace_5dc5e20a::function_75f710f6();
			}
			var_6bfe1586 namespace_175490fb::function_6c141a2d();
			var_6bfe1586 namespace_726a1ef0::function_ccca7010("cybercom_playermovement");
			if(var_864a3d55 != var_154f55d0)
			{
				namespace_82b91a51::function_964b7eb7(var_6bfe1586, &"CP_MI_SING_SGEN_VISION_INTERFERENCE");
			}
		}
		else
		{
			level namespace_ad23e503::function_9d134160("optics_out");
			var_6bfe1586 namespace_16f9ecd3::function_fc1750c9(1);
			var_6bfe1586 namespace_16f9ecd3::function_e234a6a6(1);
			var_6bfe1586 namespace_175490fb::function_e60e89fe();
			var_11f40d11 = var_6bfe1586 namespace_175490fb::function_cc812e3b("cybercom_playermovement");
			var_6bfe1586 namespace_726a1ef0::function_8ffa26e2("cybercom_playermovement", var_11f40d11);
			if(var_864a3d55 != var_154f55d0)
			{
				namespace_82b91a51::function_964b7eb7(var_6bfe1586, &"CP_MI_SING_SGEN_VISION_RESTORED");
			}
		}
		if(!var_5b1ec2c2)
		{
			return;
		}
	}
}

/*
	Name: function_ff4dec72
	Namespace: namespace_fa13d4ba
	Checksum: 0xA3BCD7FB
	Offset: 0x4680
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_ff4dec72(var_c77d2837)
{
	if(function_e70ab977(self))
	{
		self.var_255b9315 = 1;
		self namespace_16f9ecd3::function_a2477bbb();
		self function_80765127();
	}
	if(isdefined(var_c77d2837))
	{
		namespace_84970cc4::function_966ecb29(var_c77d2837, &function_ff4dec72);
	}
}

/*
	Name: function_e860d344
	Namespace: namespace_fa13d4ba
	Checksum: 0x480EDDA1
	Offset: 0x4718
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_e860d344(var_c77d2837)
{
	if(function_e70ab977(self))
	{
		self.var_255b9315 = 0;
		self namespace_16f9ecd3::function_b3ce91e0();
		self function_8dafb866();
	}
	if(isdefined(var_c77d2837))
	{
		namespace_84970cc4::function_966ecb29(var_c77d2837, &function_e860d344);
	}
}

/*
	Name: function_db43be1e
	Namespace: namespace_fa13d4ba
	Checksum: 0x31AEBA40
	Offset: 0x47A8
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_db43be1e()
{
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_6bfe1586);
		if(!(isdefined(var_6bfe1586.var_10cdd31) && var_6bfe1586.var_10cdd31))
		{
			self thread function_8084e40a(var_6bfe1586);
		}
	}
}

/*
	Name: function_8084e40a
	Namespace: namespace_fa13d4ba
	Checksum: 0xFDEE393C
	Offset: 0x4818
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_8084e40a(var_6bfe1586)
{
	var_6bfe1586 endon("hash_128f8789");
	self endon("hash_128f8789");
	var_6bfe1586.var_10cdd31 = 1;
	var_6bfe1586 function_5a7dd25d(0.7);
	var_6bfe1586 function_f5ba63f2(0);
	while(var_6bfe1586 function_32fa5072(self))
	{
		wait(0.1);
	}
	var_6bfe1586 function_f5ba63f2(1);
	var_6bfe1586 function_5a7dd25d(1);
	var_6bfe1586.var_10cdd31 = 0;
}

/*
	Name: function_d481b315
	Namespace: namespace_fa13d4ba
	Checksum: 0xDA651CEB
	Offset: 0x48F8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d481b315()
{
	var_15849db9 = function_99201f25("silo_rock_slide", "targetname");
	namespace_84970cc4::function_eaab05dc(var_15849db9, &function_7d0838b3, 2);
}

/*
	Name: function_1f0515fa
	Namespace: namespace_fa13d4ba
	Checksum: 0xA4343CD0
	Offset: 0x4958
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_1f0515fa(var_cbb15570, var_4bc288a0)
{
	if(!isdefined(var_4bc288a0))
	{
		var_4bc288a0 = 0;
	}
	var_19aeddfe = namespace_14b42b8a::function_7faf4c39(var_cbb15570, "targetname");
	var_6df191e = function_a8fb77bd();
	var_6df191e.var_722885f3 = var_19aeddfe[var_4bc288a0].var_722885f3;
	var_6df191e.var_6ab6f4fd = var_19aeddfe[var_4bc288a0].var_6ab6f4fd;
	var_6df191e.var_170527fb = var_cbb15570 + "_script";
	level.var_e90ed91e["targetname"][var_cbb15570 + "_script"] = function_84970cc4(var_6df191e);
}

/*
	Name: function_dedf5ad3
	Namespace: namespace_fa13d4ba
	Checksum: 0x4FECCB5F
	Offset: 0x4A68
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_dedf5ad3()
{
	var_e09dab06 = function_6ada35ba("flood_door_player_clip", "targetname");
	var_e09dab06 function_8bdea13c(128, 0.05);
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_entrance_door", "open");
}

