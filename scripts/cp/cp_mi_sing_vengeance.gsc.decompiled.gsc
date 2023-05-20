#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_accolades;
#using scripts\cp\cp_mi_sing_vengeance_dogleg_1;
#using scripts\cp\cp_mi_sing_vengeance_dogleg_2;
#using scripts\cp\cp_mi_sing_vengeance_fx;
#using scripts\cp\cp_mi_sing_vengeance_garage;
#using scripts\cp\cp_mi_sing_vengeance_intro;
#using scripts\cp\cp_mi_sing_vengeance_killing_streets;
#using scripts\cp\cp_mi_sing_vengeance_market;
#using scripts\cp\cp_mi_sing_vengeance_patch;
#using scripts\cp\cp_mi_sing_vengeance_quadtank_alley;
#using scripts\cp\cp_mi_sing_vengeance_safehouse;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_temple;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_hunter;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\vehicles\_wasp;

#namespace namespace_5a0096b2;

/*
	Name: function_243693d4
	Namespace: namespace_5a0096b2
	Checksum: 0x4B0E731A
	Offset: 0x14A8
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
	Namespace: namespace_5a0096b2
	Checksum: 0xE8BE100D
	Offset: 0x14E8
	Size: 0x4BB
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
	namespace_523da15d::function_4d39a2af();
	function_f7046c76();
	function_2ea898a8();
	function_37af8a07();
	function_673254cc();
	namespace_a1cfe497::function_d290ebfa();
	namespace_7c587e3e::function_d290ebfa();
	namespace_82b91a51::function_286a5010(8);
	namespace_9f824288::function_8c0c4b3a("vengeance");
	namespace_d7916d65::function_d290ebfa();
	namespace_465859d::function_7403e82b();
	namespace_63b4601c::function_60ce6396();
	function_6c1294b8("vengeance_save", "1");
	level thread namespace_628b256b::function_38bcd0();
	level thread namespace_e6a038a0::function_bd50a158();
	var_14edd77e = function_99201f25();
	foreach(var_2f06d687 in var_14edd77e)
	{
		if(function_eddad593(var_2f06d687))
		{
			var_2f06d687 notify("hash_ea73533e");
		}
	}
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "hanging_body_loop_civ";
	var_6a07eb6c[1] = "hanging_body_loop_civ_rope";
	namespace_cc27597::function_8f9f34e0("cin_ven_hanging_body_loop_vign_civ02", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_hanging_body_loop_vign_civ03", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_hanging_body_loop_vign_civ05", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_hanging_body_loop_vign_civ06", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_hanging_body_loop_vign_civ07", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_hanging_body_loop_vign_civ07ropeshort", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_hanging_body_loop_vign_civ08", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_hanging_body_loop_vign_civ09", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_d275cebc::function_93523442("p7_nc_sin_ven_01", 60, VectorScale((0, 0, 1), 15));
	namespace_d275cebc::function_93523442("p7_nc_sin_ven_02", 90, VectorScale((1, 0, 1), 15));
	namespace_d275cebc::function_93523442("p7_nc_sin_ven_03", 90, (-15, -15, 35));
	namespace_d275cebc::function_93523442("p7_nc_sin_ven_04", 60, VectorScale((0, 0, 1), 15));
	namespace_d275cebc::function_37aecd21();
}

/*
	Name: function_f7046c76
	Namespace: namespace_5a0096b2
	Checksum: 0x245CAA5E
	Offset: 0x19B0
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
	level.var_c1aa5253["fx_exp_grenade_emp"] = "explosions/fx_exp_grenade_emp";
	level.var_c1aa5253["fx_elec_enemy_juiced_shotgun"] = "electric/fx_elec_enemy_juiced_shotgun";
	level.var_c1aa5253["fx_elec_sparks_plane_sm_runner"] = "electric/fx_elec_sparks_plane_sm_runner";
	level.var_c1aa5253["fx_exp_emp_siegebot_veng"] = "explosions/fx_exp_emp_siegebot_veng";
	level.var_c1aa5253["fx_trail_missile_vista_veng"] = "weapon/fx_trail_missile_vista_veng";
	level.var_c1aa5253["fx_fuel_pour_far_ven"] = "water/fx_fuel_pour_far_ven";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_5a0096b2
	Checksum: 0xEA4D93BC
	Offset: 0x1A68
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "play_client_igc", 1, 4, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "normal_hide", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "normal_hide", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "mature_hide", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "mature_hide", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "apartment_light_fire_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "kill_qt_alley_light", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "xiulan_face_burn", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "fxanims_intro", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "fxanims_killing_streets", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "fxanims_dogleg_1", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "fxanims_dogleg_2", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "fxanims_garage_igc", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "fxanims_safehouse_explodes", 1, 1, "int");
}

/*
	Name: function_37af8a07
	Namespace: namespace_5a0096b2
	Checksum: 0x69E89B61
	Offset: 0x1D18
	Size: 0xBC3
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("intro_wall_done");
	level namespace_ad23e503::function_c35e6aab("apartment_entrance_door_open");
	level namespace_ad23e503::function_c35e6aab("set_breadcrumb_apartment1");
	level namespace_ad23e503::function_c35e6aab("set_breadcrumb_apartment2");
	level namespace_ad23e503::function_c35e6aab("set_breadcrumb_apartment3");
	level namespace_ad23e503::function_c35e6aab("breadcrumb_apartment1");
	level namespace_ad23e503::function_c35e6aab("breadcrumb_apartment2");
	level namespace_ad23e503::function_c35e6aab("breadcrumb_apartment3");
	level namespace_ad23e503::function_c35e6aab("hendricks_move_to_apartment_building");
	level namespace_ad23e503::function_c35e6aab("apartment_begin");
	level namespace_ad23e503::function_c35e6aab("player_looking");
	level namespace_ad23e503::function_c35e6aab("apartment_enemies_dead");
	level namespace_ad23e503::function_c35e6aab("apartment_enemy_dead");
	level namespace_ad23e503::function_c35e6aab("apartment_enemies_alerted");
	level namespace_ad23e503::function_c35e6aab("do_not_stop_apartment_scene");
	level namespace_ad23e503::function_c35e6aab("synckill_scene_complete");
	level namespace_ad23e503::function_c35e6aab("bedroom_scene_complete");
	level namespace_ad23e503::function_c35e6aab("apartment_complete");
	level namespace_ad23e503::function_c35e6aab("takedown_begin");
	level namespace_ad23e503::function_c35e6aab("takedown_moment_get_in_place");
	level namespace_ad23e503::function_c35e6aab("takedown_intro_anims_finished");
	level namespace_ad23e503::function_c35e6aab("all_players_ready_for_takedown");
	level namespace_ad23e503::function_c35e6aab("takedown_complete");
	level namespace_ad23e503::function_c35e6aab("takedown_backup_truck_stopped_flag");
	level namespace_ad23e503::function_c35e6aab("combat_enemies_retreating");
	level namespace_ad23e503::function_c35e6aab("move_hendricks_to_meat_market");
	level namespace_ad23e503::function_c35e6aab("hendricks_says_stay_down");
	level namespace_ad23e503::function_c35e6aab("killing_streets_begin");
	level namespace_ad23e503::function_c35e6aab("killing_streets_end");
	level namespace_ad23e503::function_c35e6aab("hendricks_break_ally_stealth");
	level namespace_ad23e503::function_c35e6aab("move_killing_streets_hendricks_node_05");
	level namespace_ad23e503::function_c35e6aab("move_killing_streets_hendricks_node_10");
	level namespace_ad23e503::function_c35e6aab("move_killing_streets_hendricks_node_15");
	level namespace_ad23e503::function_c35e6aab("killing_streets_intro_patroller_spawners_cleared");
	level namespace_ad23e503::function_c35e6aab("killing_streets_lineup_civilian_spawners_cleared");
	level namespace_ad23e503::function_c35e6aab("killing_streets_lineup_patroller_spawners_cleared");
	level namespace_ad23e503::function_c35e6aab("cin_ven_03_20_storelineup_vign_fire_done");
	level namespace_ad23e503::function_c35e6aab("killing_streets_lineup_patrollers_alerted");
	level namespace_ad23e503::function_c35e6aab("hendricks_cleared_meat_market_door");
	level namespace_ad23e503::function_c35e6aab("killing_streets_civilian_sniped");
	level namespace_ad23e503::function_c35e6aab("cin_ven_03_15_killingstreets_vign_done");
	level namespace_ad23e503::function_c35e6aab("dogleg_1_intro_taylor_vo_over");
	level namespace_ad23e503::function_c35e6aab("killing_streets_pre_apothecary_vo_done");
	level namespace_ad23e503::function_c35e6aab("cin_ven_04_10_cafedoor_3rd_enter_finished");
	level namespace_ad23e503::function_c35e6aab("dogleg_1_begin");
	level namespace_ad23e503::function_c35e6aab("dogleg_1_end");
	level namespace_ad23e503::function_c35e6aab("cafe_execution_thug_dead");
	level namespace_ad23e503::function_c35e6aab("cafe_molotov_thugs_alerted");
	level namespace_ad23e503::function_c35e6aab("cafe_burning_match_thrown");
	level namespace_ad23e503::function_c35e6aab("quadtank_alley_begin");
	level namespace_ad23e503::function_c35e6aab("quadtank_alley_end");
	level namespace_ad23e503::function_c35e6aab("show_temple_gather");
	level namespace_ad23e503::function_c35e6aab("temple_begin");
	level namespace_ad23e503::function_c35e6aab("temple_end");
	level namespace_ad23e503::function_c35e6aab("temple_stealth_broken");
	level namespace_ad23e503::function_c35e6aab("temple_hendricks_done");
	level namespace_ad23e503::function_c35e6aab("enable_arena_street_end_trigger");
	level namespace_ad23e503::function_c35e6aab("streets_begin");
	level namespace_ad23e503::function_c35e6aab("hendricks_out");
	level namespace_ad23e503::function_c35e6aab("dogleg_2_begin");
	level namespace_ad23e503::function_c35e6aab("dogleg_2_at_end");
	level namespace_ad23e503::function_c35e6aab("garage_igc_done");
	level namespace_ad23e503::function_c35e6aab("hendricks_at_market");
	level namespace_ad23e503::function_c35e6aab("players_at_market");
	level namespace_ad23e503::function_c35e6aab("players_in_market");
	level namespace_ad23e503::function_c35e6aab("in_veh_before_vo");
	level namespace_ad23e503::function_c35e6aab("technical_01_entered");
	level namespace_ad23e503::function_c35e6aab("technical_02_entered");
	level namespace_ad23e503::function_c35e6aab("start_obj_technicals");
	level namespace_ad23e503::function_c35e6aab("kill_sniper_nags");
	level namespace_ad23e503::function_c35e6aab("garage_main_snipers_cleared");
	level namespace_ad23e503::function_c35e6aab("garage_extra_snipers_cleared");
	level namespace_ad23e503::function_c35e6aab("quad_tank_start_anim");
	level namespace_ad23e503::function_c35e6aab("quad_battle_starts");
	level namespace_ad23e503::function_c35e6aab("quad_tank_wall_broken");
	level namespace_ad23e503::function_c35e6aab("qt_left_side");
	level namespace_ad23e503::function_c35e6aab("qt_right_side");
	level namespace_ad23e503::function_c35e6aab("quad_tank_downstairs");
	level namespace_ad23e503::function_c35e6aab("quad_tank_dead");
	level namespace_ad23e503::function_c35e6aab("quadtank_hijacked");
	level namespace_ad23e503::function_c35e6aab("qt_hijack_warlords_dead");
	level namespace_ad23e503::function_c35e6aab("qt_hijack_grunts_dead");
	level namespace_ad23e503::function_c35e6aab("qt_hijack_enemies_dead");
	level namespace_ad23e503::function_c35e6aab("quad_battle_ends");
	level namespace_ad23e503::function_c35e6aab("quad_enemies_done");
	level namespace_ad23e503::function_c35e6aab("hendricks_exiting_market");
	level namespace_ad23e503::function_c35e6aab("exiting_market");
	level namespace_ad23e503::function_c35e6aab("hendricks_at_plaza");
	level namespace_ad23e503::function_c35e6aab("players_at_plaza");
	level namespace_ad23e503::function_c35e6aab("start_plaza_wave_2");
	level namespace_ad23e503::function_c35e6aab("plaza_hendricks_jump");
	level namespace_ad23e503::function_c35e6aab("plaza_combat_live");
	level namespace_ad23e503::function_c35e6aab("plaza_cleared");
	level namespace_ad23e503::function_c35e6aab("starting_igc_12");
}

/*
	Name: function_673254cc
	Namespace: namespace_5a0096b2
	Checksum: 0x41F345B7
	Offset: 0x28E8
	Size: 0x537
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("intro", &namespace_8776ed6e::function_62616b71, "Intro", &namespace_8776ed6e::function_19a68bdb);
	namespace_1d795d47::function_654c9dda("dev_apartment", &namespace_8776ed6e::function_5cb54255, "Apartment", &namespace_8776ed6e::function_4762cf8f);
	namespace_1d795d47::function_d68e678e("takedown", &namespace_8776ed6e::function_20681e14, "Takedown", &namespace_8776ed6e::function_fcdc57ea);
	namespace_1d795d47::function_d68e678e("killing_streets", &namespace_62b73aed::function_5b3d7d44, "Killing Streets", &namespace_62b73aed::function_e416ac3a);
	namespace_1d795d47::function_d68e678e("dogleg_1", &namespace_445ee992::function_36184f5d, "Dogleg 1", &namespace_445ee992::function_8db83207);
	namespace_1d795d47::function_d68e678e("quadtank_alley", &namespace_6f44bbbf::function_f9314d0e, "Quadtank Alley", &namespace_6f44bbbf::function_1dc027c8);
	namespace_1d795d47::function_d68e678e("temple", &namespace_628b256b::function_80032d7e, "Temple Arena", &namespace_628b256b::function_299dec58);
	namespace_1d795d47::function_d68e678e("dogleg_2", &namespace_1e5c6f29::function_bfca9cc4, "Dogleg 2", &namespace_1e5c6f29::function_48a3cbba);
	namespace_1d795d47::function_d68e678e("garage_igc", &namespace_22334037::function_b17357cc, "Parking Garage IGC", &namespace_22334037::function_608352d2);
	namespace_1d795d47::function_654c9dda("dev_garage", &namespace_22334037::function_63a4033a, "Parking Garage Arena", &namespace_22334037::function_a55eff44);
	namespace_1d795d47::function_d68e678e("quad_battle", &namespace_e6a038a0::function_7b65c5ac, "Quad Tank Battle", &namespace_e6a038a0::function_463cdeb2);
	namespace_1d795d47::function_d68e678e("safehouse_plaza", &namespace_e6a038a0::function_6e671181, "Plaza Combat", &namespace_e6a038a0::function_e5fb7f0b);
	namespace_1d795d47::function_d68e678e("safehouse_explodes", &namespace_ce9d9fc1::function_26524bc8, "Safehouse Explodes", &namespace_ce9d9fc1::function_683ab16e);
	namespace_1d795d47::function_654c9dda("dev_safehouse_interior", &namespace_ce9d9fc1::function_29dad6e8, "Safehouse Interior", &namespace_ce9d9fc1::function_6bc33c8e);
	namespace_1d795d47::function_d68e678e("panic_room", &namespace_ce9d9fc1::function_6d9a830c, "Panic Room Scene", &namespace_ce9d9fc1::function_c328b12);
	/#
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &namespace_8776ed6e::function_616e9ab6, "Dev Block strings are not supported");
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &namespace_8776ed6e::function_8771151f, "Dev Block strings are not supported");
		namespace_1d795d47::function_654c9dda("Dev Block strings are not supported", &namespace_8776ed6e::function_7d5fbc40, "Dev Block strings are not supported");
	#/
	level.var_6b6097c5 = [];
	var_73044d06 = function_99201f25("objective", "targetname");
	foreach(var_5948b3df in var_73044d06)
	{
		if(isdefined(var_5948b3df.var_ff1f6868))
		{
			level.var_6b6097c5[var_5948b3df.var_ff1f6868] = var_5948b3df;
		}
	}
}

/*
	Name: function_974050f
	Namespace: namespace_5a0096b2
	Checksum: 0xE1251636
	Offset: 0x2E28
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_974050f()
{
	if(level.var_31aefea8 === "dogleg_1")
	{
		self namespace_63b4601c::function_b627f9ac(1);
		self thread namespace_63b4601c::function_12a1b6a0();
	}
}

