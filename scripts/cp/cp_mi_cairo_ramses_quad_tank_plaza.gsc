#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_accolades;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses2_fx;
#using scripts\cp\cp_mi_cairo_ramses2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\vehicles\_raps;

#namespace namespace_94c82dbc;

/*
	Name: function_b39397dc
	Namespace: namespace_94c82dbc
	Checksum: 0x4F0C3AB0
	Offset: 0x27E8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b39397dc()
{
	Precache();
	function_3a837c17();
}

/*
	Name: Precache
	Namespace: namespace_94c82dbc
	Checksum: 0x99EC1590
	Offset: 0x2818
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Precache()
{
}

/*
	Name: function_ffea6b5
	Namespace: namespace_94c82dbc
	Checksum: 0x735C89FA
	Offset: 0x2828
	Size: 0x409
	Parameters: 0
	Flags: None
*/
function function_ffea6b5()
{
	level.var_6c4e8561 = GetWeapon("quadtank_main_turret");
	level.var_b27f706d = GetWeapon("quadtank_main_turret_player");
	level.var_51d112fe = GetWeapon("quadtank_main_turret_rocketpods_straight");
	level.var_9e92e4b8 = GetWeapon("quadtank_main_turret_rocketpods_javelin");
	level flag::init("quad_tank_1_destroyed");
	level flag::init("quad_tank_2_spawned");
	level flag::init("quad_tank_2_destroyed");
	level flag::init("spawn_quad_tank_3");
	level flag::init("quad_tank_3_spawned");
	level flag::init("demo_player_controlled_quadtank");
	level flag::init("qt1_left_side");
	level flag::init("qt1_right_side");
	level flag::init("qt1_died_in_a_bad_place");
	level flag::init("qt_targets_statue");
	level flag::init("qt_plaza_statue_destroyed");
	level flag::init("qt_plaza_rocket_building_destroyed");
	level flag::init("qt_plaza_theater_destroyed");
	level flag::init("qt_plaza_theater_enemies_cleared");
	level flag::init("qt_plaza_mobile_wall_destroyed");
	level flag::init("obj_plaza_cleared");
	level flag::init("obj_player_at_plaza_igc");
	level flag::init("obj_follow_khalil");
	level flag::init("spawn_second_quadtank");
	level flag::init("third_quadtank_killed");
	level flag::init("qt_plaza_outro_igc_started");
	level thread function_380293ce();
	level thread function_5f09970f();
	a_nd_nodes = GetNodeArray("mobile_wall_exposed_nodes", "targetname");
	foreach(node in a_nd_nodes)
	{
		SetEnableNode(node, 0);
	}
}

/*
	Name: function_315508b4
	Namespace: namespace_94c82dbc
	Checksum: 0x50711712
	Offset: 0x2C40
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_315508b4()
{
	var_cc018542 = GetWeapon("launcher_standard");
	self GiveWeapon(var_cc018542);
}

/*
	Name: function_380293ce
	Namespace: namespace_94c82dbc
	Checksum: 0x115AC575
	Offset: 0x2C90
	Size: 0x4EB
	Parameters: 0
	Flags: None
*/
function function_380293ce()
{
	namespace_38256252::function_f77ccfb1();
	namespace_38256252::function_359e6bb1();
	function_61d293c6();
	function_29d63628();
	function_3535efe1();
	function_8ad4d7c();
	function_5cb0384();
	level thread function_31b1f0d3();
	level thread function_f794a879();
	a_e_goalvolume = GetEntArray("qt_plaza_start_amws_goalvolume", "targetname");
	var_5f595bb3 = GetEntArray("qt_plaza_start_amws", "targetname");
	level.var_73b96584 = [];
	foreach(var_aa888c9b in var_5f595bb3)
	{
		var_31e90922 = spawner::simple_spawn_single(var_aa888c9b);
		if(isdefined(var_31e90922))
		{
			var_31e90922 SetGoal(a_e_goalvolume[0], 1);
			a_e_goalvolume = Array::remove_index(a_e_goalvolume, 0);
			level.var_73b96584[level.var_73b96584.size] = var_31e90922;
		}
		util::wait_network_frame();
	}
	util::wait_network_frame();
	vehicle::simple_spawn("qt_plaza_turret");
	util::wait_network_frame();
	spawn_manager::enable("sm_egypt_plaza_wall");
	util::wait_network_frame();
	spawn_manager::enable("sm_egypt_palace_window");
	util::wait_network_frame();
	spawn_manager::enable("sm_egypt_quadtank");
	util::wait_network_frame();
	spawn_manager::enable("sm_egypt_siegebot");
	util::wait_network_frame();
	var_408caf2f = GetEnt("sm_nrc_siegebot", "targetname");
	level thread spawn_manager::function_617b3ed2("sm_nrc_siegebot", &function_cd53f16b, var_408caf2f, 20, 25, 2);
	spawn_manager::enable("sm_nrc_siegebot");
	util::wait_network_frame();
	var_408caf2f = GetEnt("sm_nrc_quadtank", "targetname");
	level thread spawn_manager::function_617b3ed2("sm_nrc_quadtank", &function_cd53f16b, var_408caf2f, 20, 25, 4);
	spawn_manager::enable("sm_nrc_quadtank");
	util::wait_network_frame();
	spawn_manager::enable("qt1_nrc_wasp_sm");
	util::wait_network_frame();
	spawn_manager::enable("sm_nrc_govt_building_rpg");
	util::wait_network_frame();
	trigger::use("trig_color_vtol_igc_allies", "targetname");
	trigger::use("trig_color_post_vtol_igc_axis", "targetname");
	setthreatbias("NRC_Quadtank", "Egyptian_RPG_guys", 100000);
	while(!isdefined(level.var_6e86c9d5))
	{
		wait(0.05);
	}
	level thread function_ba1db1();
}

/*
	Name: function_ba1db1
	Namespace: namespace_94c82dbc
	Checksum: 0xC69C452A
	Offset: 0x3188
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_ba1db1()
{
	level flag::wait_till("vtol_igc_done");
	var_9104e155 = GetEnt("egyptian_retreat_guy_left_ai", "targetname");
	var_9104e155 thread function_4605fadc();
}

/*
	Name: function_4605fadc
	Namespace: namespace_94c82dbc
	Checksum: 0x75621750
	Offset: 0x31F8
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_4605fadc()
{
	self endon("death");
	self ai::set_behavior_attribute("disablearrivals", 1);
	nd_pos = GetNode("retreat_guy_left_path", "targetname");
	while(isdefined(nd_pos))
	{
		self ai::force_goal(nd_pos, 128, 0, "near_goal", 1, 1);
		self util::waittill_any("near_goal", "goal");
		if(isdefined(nd_pos.target))
		{
			nd_pos = GetNode(nd_pos.target, "targetname");
		}
		else
		{
			nd_pos = undefined;
		}
	}
	s_scene = struct::get("s_qt_plaza_egypt_debriscover", "targetname");
	s_scene scene::Play(self);
	nd_pos = GetNode("retreat_guy_left_path_02", "targetname");
	while(isdefined(nd_pos))
	{
		self ai::force_goal(nd_pos, 128, 0, "near_goal", 1, 1);
		self util::waittill_any("near_goal", "goal");
		if(isdefined(nd_pos.target))
		{
			nd_pos = GetNode(nd_pos.target, "targetname");
		}
		else
		{
			nd_pos = undefined;
		}
	}
	self ai::set_ignoreall(0);
	self util::stop_magic_bullet_shield();
}

/*
	Name: function_69be7033
	Namespace: namespace_94c82dbc
	Checksum: 0xAABA8AE6
	Offset: 0x3448
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_69be7033()
{
	self endon("death");
	nd_pos = GetNode("retreat_guy_right_path", "targetname");
	self ai::set_ignoreall(1);
	while(isdefined(nd_pos))
	{
		self ai::force_goal(nd_pos, 128, 0, "near_goal", 1, 1);
		self util::waittill_any("near_goal", "goal");
		if(isdefined(nd_pos.target))
		{
			nd_pos = GetNode(nd_pos.target, "targetname");
		}
		else
		{
			nd_pos = undefined;
		}
	}
	self ai::set_ignoreall(0);
	self util::stop_magic_bullet_shield();
}

/*
	Name: function_61d293c6
	Namespace: namespace_94c82dbc
	Checksum: 0xDF59B84
	Offset: 0x3580
	Size: 0xA43
	Parameters: 0
	Flags: None
*/
function function_61d293c6()
{
	CreateThreatBiasGroup("Egyptian_RPG_guys");
	CreateThreatBiasGroup("NRC_Quadtank");
	CreateThreatBiasGroup("NRC_center_guys");
	CreateThreatBiasGroup("NRC_QT1_Shotgunners");
	CreateThreatBiasGroup("Players");
	CreateThreatBiasGroup("PlayerVehicles");
	CreateThreatBiasGroup("Egyptian_AI_near_players");
	CreateThreatBiasGroup("NRC_RPG_guys");
	CreateThreatBiasGroup("NRC_QT2_Robot_Rushers");
	CreateThreatBiasGroup("Egyptian_Theater_guys");
	CreateThreatBiasGroup("QT2_NRC_Raps");
	CreateThreatBiasGroup("QT2_Egyptian_Guys_on_Blocks");
	CreateThreatBiasGroup("NRC_Wasps");
	CreateThreatBiasGroup("NRC_AMWS");
	CreateThreatBiasGroup("NRC_theater_guys");
	setthreatbias("Players", "QT2_NRC_Raps", 1000);
	setthreatbias("PlayerVehicles", "QT2_NRC_Raps", 10000);
	setthreatbias("PlayerVehicles", "NRC_AMWS", 10000);
	setthreatbias("Players", "NRC_Quadtank", 0);
	setthreatbias("Players", "NRC_QT1_Shotgunners", -1000);
	setthreatbias("Players", "NRC_center_guys", -1000);
	setthreatbias("Players", "NRC_theater_guys", -1000);
	setthreatbias("Players", "NRC_Wasps", -1000);
	setthreatbias("Players", "NRC_AMWS", -1000);
	vehicle::add_spawn_function("demo_intro_mlrs_quadtank", &function_2bca1f0e);
	vehicle::add_hijack_function("demo_intro_mlrs_quadtank", &function_147b8da0);
	vehicle::add_spawn_function("artillery_quadtank", &function_92eb91a6);
	vehicle::add_hijack_function("artillery_quadtank", &function_147b8da0);
	vehicle::add_spawn_function("third_quadtank", &function_8f133c4d);
	vehicle::add_hijack_function("third_quadtank", &function_147b8da0);
	vehicle::add_spawn_function("qt_plaza_controllable_qt_raps", &function_861838cc);
	vehicle::add_spawn_function("qt_plaza_start_amws", &function_6626abd1);
	vehicle::add_spawn_function("qt1_nrc_amws", &function_d7eebeaa);
	vehicle::add_spawn_function("qt1_raps", &function_66735742);
	vehicle::add_spawn_function("qt_plaza_turret", &function_125f2ec4);
	vehicle::add_spawn_function("qt2_nrc_wasps", &function_af815dad);
	vehicle::add_spawn_function("qt2_nrc_wasps_berm", &function_fa8862c4);
	vehicle::add_spawn_function("qt2_nrc_wasps_palace", &function_eea6d34c);
	vehicle::add_spawn_function("qt2_raps", &function_505566c3);
	spawner::add_spawn_function_group("egypt_palace_window_guys", "targetname", &function_10a7788);
	spawner::add_spawn_function_group("egyptian_retreat_guy_left", "targetname", &function_3dd4db8a);
	spawner::add_spawn_function_group("egyptian_retreat_guy_right", "targetname", &function_3dd4db8a);
	spawner::add_spawn_function_group("statue_fall_guys", "targetname", &function_f3b08607);
	spawner::add_spawn_function_group("nrc_govt_building_rpg_guys", "targetname", &function_cfe4e726);
	spawner::add_spawn_function_group("nrc_rpg_berm_guys", "targetname", &function_5030bfcf);
	spawner::add_spawn_function_group("nrc_quadtank_guys", "targetname", &function_7f6c7e92);
	spawner::add_spawn_function_group("qt2_robot_rushers", "targetname", &function_17b4845b);
	spawner::add_spawn_function_group("qt2_ally_theater", "targetname", &function_663d1007);
	spawner::add_spawn_function_group("nrc_mobile_wall", "targetname", &function_7ea3ae59);
	spawner::add_spawn_function_group("nrc_theater", "targetname", &function_26fe7ac7);
	var_a72e524 = GetEntArray("plaza_wasps", "script_noteworthy");
	foreach(var_5aaf616 in var_a72e524)
	{
		var_5aaf616 spawner::add_spawn_function(&function_f12c1985);
	}
	var_5528d9d7 = GetEntArray("egypt_palace_window_guys", "targetname");
	var_c6e36417 = GetEntArray("egypt_plaza_wall_guy", "targetname");
	var_d9be40d5 = ArrayCombine(var_5528d9d7, var_c6e36417, 1, 0);
	foreach(sp_rpg in var_d9be40d5)
	{
		sp_rpg spawner::add_spawn_function(&function_18b305fb);
	}
	var_8cc24621 = GetEntArray("nrc_govt_building_rpg_guys", "targetname");
	var_2a6141a6 = GetEntArray("nrc_rpg_berm_guys", "targetname");
	var_de51d953 = ArrayCombine(var_8cc24621, var_2a6141a6, 1, 0);
	foreach(sp_rpg in var_de51d953)
	{
		sp_rpg spawner::add_spawn_function(&function_3a1fb3d);
	}
	spawner::simple_spawn("egyptian_retreat_guy_left");
}

/*
	Name: function_18b305fb
	Namespace: namespace_94c82dbc
	Checksum: 0x1FE7639F
	Offset: 0x3FD0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_18b305fb()
{
	self SetThreatBiasGroup("Egyptian_RPG_guys");
	e_goalvolume = GetEnt(self.target, "targetname");
	self SetGoal(e_goalvolume, 1);
}

/*
	Name: function_3a1fb3d
	Namespace: namespace_94c82dbc
	Checksum: 0x1AD13284
	Offset: 0x4048
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3a1fb3d()
{
	self SetThreatBiasGroup("NRC_RPG_guys");
}

/*
	Name: function_2bca1f0e
	Namespace: namespace_94c82dbc
	Checksum: 0xC575136D
	Offset: 0x4078
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_2bca1f0e()
{
	self endon("death");
	self thread function_4f1744c6();
	self util::magic_bullet_shield();
	self quadtank::quadtank_weakpoint_display(0);
	level flag::wait_till("vtol_igc_done");
	self util::stop_magic_bullet_shield();
	self quadtank::quadtank_weakpoint_display(1);
	self thread function_58013167();
	self thread function_8c0917d4();
	self thread function_80a9f826();
}

/*
	Name: function_4f1744c6
	Namespace: namespace_94c82dbc
	Checksum: 0x6ECF0477
	Offset: 0x4170
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_4f1744c6()
{
	self endon("death");
	level endon("hash_9585cf3");
	a_s_spots = struct::get_array("demo_qt1_vtol_igc_movement", "targetname");
	while(1)
	{
		s_spot = Array::random(a_s_spots);
		self SetGoal(s_spot.origin, 1);
		self waittill("hash_a2b47172");
	}
}

/*
	Name: function_58013167
	Namespace: namespace_94c82dbc
	Checksum: 0x76FECDBE
	Offset: 0x4220
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_58013167()
{
	self endon("death");
	self flag::init("intro_qt_damage_threshold_reached");
	self thread function_5aabda9f();
	if(math::cointoss())
	{
		a_s_spots = struct::get_array("demo_qt1_movement_left_side", "targetname");
		str_side = "left";
		continue;
	}
	a_s_spots = struct::get_array("demo_qt1_movement_right_side", "targetname");
	str_side = "right";
	while(1)
	{
		self function_6e99d691(a_s_spots, str_side);
		s_spot = struct::get("demo_qt1_movement_travel", "targetname");
		self SetGoal(s_spot.origin, 1);
		self waittill("hash_a2b47172");
		if(str_side == "left" || self flag::get("intro_qt_damage_threshold_reached"))
		{
			str_side = "right";
		}
		else if(str_side == "right" && !self flag::get("intro_qt_damage_threshold_reached"))
		{
			str_side = "left";
		}
		level flag::set("qt1_" + str_side + "_side");
		level thread function_36783b5e(str_side);
		a_s_spots = struct::get_array("demo_qt1_movement_" + str_side + "_side", "targetname");
	}
}

/*
	Name: function_5aabda9f
	Namespace: namespace_94c82dbc
	Checksum: 0xF0FE3B5F
	Offset: 0x4470
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_5aabda9f()
{
	self endon("death");
	var_78a0d7c6 = self.health / 2;
	while(1)
	{
		self waittill("damage");
		if(self.health <= var_78a0d7c6)
		{
			self notify("hash_6e17cb8c");
			self flag::set("intro_qt_damage_threshold_reached");
			break;
		}
	}
}

/*
	Name: function_6e99d691
	Namespace: namespace_94c82dbc
	Checksum: 0xC843466C
	Offset: 0x4500
	Size: 0x135
	Parameters: 2
	Flags: None
*/
function function_6e99d691(a_s_spots, str_side)
{
	self endon("trophy_system_enabled");
	if(isdefined(60))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(60, "timeout");
	}
	if(str_side == "left")
	{
		self endon("hash_6e17cb8c");
	}
	var_e5fcbdaa = undefined;
	while(1)
	{
		while(1)
		{
			s_spot = Array::random(a_s_spots);
			if(isdefined(var_e5fcbdaa) && var_e5fcbdaa == s_spot)
			{
				continue;
			}
			else
			{
				break;
			}
		}
		self SetGoal(s_spot.origin, 1);
		self waittill("hash_a2b47172");
		var_e5fcbdaa = s_spot;
	}
}

/*
	Name: function_8c0917d4
	Namespace: namespace_94c82dbc
	Checksum: 0x63DFDADB
	Offset: 0x4640
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_8c0917d4()
{
	self waittill("death");
	e_trigger = GetEnt("qt1_death_trigger", "targetname");
	if(!isdefined(self))
	{
		return;
	}
	if(self istouching(e_trigger))
	{
		wait(5);
		self disconnectpaths();
		level flag::set("qt1_died_in_a_bad_place");
	}
}

/*
	Name: function_6626abd1
	Namespace: namespace_94c82dbc
	Checksum: 0x452307C2
	Offset: 0x46F0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_6626abd1()
{
	self endon("death");
	self endon("hash_f0738128");
	self util::magic_bullet_shield();
	level flag::wait_till("vtol_igc_done");
	self util::stop_magic_bullet_shield();
}

/*
	Name: function_d7eebeaa
	Namespace: namespace_94c82dbc
	Checksum: 0x8B5D78B2
	Offset: 0x4760
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_d7eebeaa()
{
	self endon("death");
	self SetThreatBiasGroup("NRC_AMWS");
	if(level flag::get("qt1_left_side"))
	{
		e_goalvolume = GetEnt("qt1_amws_right_goalvolume", "targetname");
		self SetGoal(e_goalvolume, 1);
	}
	else if(level flag::get("qt1_right_side"))
	{
		e_goalvolume = GetEnt("qt1_amws_left_goalvolume", "targetname");
		self SetGoal(e_goalvolume, 1);
	}
	self thread function_eafc7e80();
}

/*
	Name: function_eafc7e80
	Namespace: namespace_94c82dbc
	Checksum: 0x9B60C446
	Offset: 0x4878
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_eafc7e80()
{
	self endon("death");
	trigger::wait_till("qt_plaza_alley_spawn_trigger", "targetname", self);
	level notify("hash_f922378a");
}

/*
	Name: function_36783b5e
	Namespace: namespace_94c82dbc
	Checksum: 0x37D8C42B
	Offset: 0x48C8
	Size: 0x1E9
	Parameters: 1
	Flags: None
*/
function function_36783b5e(str_side)
{
	level notify("hash_36783b5e");
	level endon("hash_36783b5e");
	level flag::wait_till("vtol_igc_done");
	if(str_side == "left")
	{
		e_goalvolume = GetEnt("qt1_amws_right_goalvolume", "targetname");
	}
	else if(str_side == "right")
	{
		e_goalvolume = GetEnt("qt1_amws_left_goalvolume", "targetname");
	}
	var_c4ee2066 = GetEntArray("qt_plaza_start_amws_ai", "targetname", 1);
	var_c3aabf4a = GetEntArray("qt1_nrc_amws_ai", "targetname", 1);
	var_b9229bcd = ArrayCombine(var_c4ee2066, var_c3aabf4a, 1, 0);
	foreach(amws in var_b9229bcd)
	{
		if(isalive(amws))
		{
			amws SetGoal(e_goalvolume, 1);
		}
	}
}

/*
	Name: function_8f133c4d
	Namespace: namespace_94c82dbc
	Checksum: 0x5EC918A4
	Offset: 0x4AC0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_8f133c4d()
{
	self endon("death");
	var_b680c0d7 = struct::get("qt3_goalpos", "targetname");
	self SetGoal(var_b680c0d7.origin);
	self waittill("hash_a2b47172");
	level notify("hash_ef81aaa7");
	e_goalvolume = GetEnt("third_quadtank_goalvolume", "targetname");
	self SetGoal(e_goalvolume, 1);
}

/*
	Name: function_ca22c738
	Namespace: namespace_94c82dbc
	Checksum: 0xE0B990CF
	Offset: 0x4B88
	Size: 0x107
	Parameters: 1
	Flags: None
*/
function function_ca22c738(e_target)
{
	self endon("death");
	self endon("hash_28b25b09");
	var_26080a40 = GetWeapon("quadtank_main_turret_rocketpods_straight");
	self.perfectaim = 1;
	while(1)
	{
		self vehicle_ai::SetTurretTarget(e_target, 0);
		self util::waittill_any_timeout(10, "turret_on_target");
		for(i = 0; i < 4 && isdefined(e_target); i++)
		{
			self SetVehWeapon(var_26080a40);
			self FireWeapon(0, e_target);
			wait(0.8);
		}
		wait(10);
	}
}

/*
	Name: function_f536966
	Namespace: namespace_94c82dbc
	Checksum: 0x7C2F2DE1
	Offset: 0x4C98
	Size: 0x4F3
	Parameters: 0
	Flags: None
*/
function function_f536966()
{
	s_target = struct::get("qt3_cannon_shot_pos", "targetname");
	e_target = spawn("script_model", s_target.origin);
	e_target SetModel("tag_origin");
	e_target.health = 100;
	self thread function_ca22c738(e_target);
	n_count = 0;
	t_damage = GetEnt("trigger_palace_collapse", "targetname");
	while(1)
	{
		t_damage waittill("damage", n_damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(attacker === self || attacker === level.var_efe14c34)
		{
			if(type === "MOD_PROJECTILE" || type === "MOD_PROJECTILE_SPLASH")
			{
				n_count++;
				if(n_count > 1)
				{
					e_target notify("death");
					self notify("hash_28b25b09");
					self.perfectaim = 0;
					self ClearTurretTarget(0);
					self SetVehWeapon(GetWeapon("quadtank_main_turret_rocketpods_javelin"));
					break;
				}
			}
		}
	}
	level thread scene::Play("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle");
	level flag::set("qt_plaza_rocket_building_destroyed");
	t_damage delete();
	e_target delete();
	level thread function_447e47c0();
	function_b78937aa("qt2_intro_org");
	var_1e5c6939 = GetEnt("palace_corner_breach_carver", "targetname");
	var_1e5c6939 delete();
	var_bce21891 = GetEntArray("palace_corner_breach", "targetname");
	foreach(var_8fa50159 in var_bce21891)
	{
		if(isdefined(var_8fa50159))
		{
			var_8fa50159 delete();
		}
	}
	var_64dd962c = GetEntArray("palace_corner_blocker", "targetname");
	foreach(e_debris in var_64dd962c)
	{
		e_debris solid();
		e_debris disconnectpaths();
		e_debris show();
	}
	var_cac8b10c = GetEnt("palace_corner_breach_collision", "targetname");
	var_cac8b10c solid();
}

/*
	Name: function_447e47c0
	Namespace: namespace_94c82dbc
	Checksum: 0x7F08EBB2
	Offset: 0x5198
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_447e47c0()
{
	level endon("hash_a4b7fa05");
	spawn_manager::disable("sm_egypt_palace_window");
	a_ai = spawn_manager::get_ai("sm_egypt_palace_window");
	foreach(ai in a_ai)
	{
		if(isalive(ai))
		{
			ai kill();
		}
	}
	s_pos = struct::get("qt3_cannon_shot_pos", "targetname");
	PhysicsExplosionSphere(s_pos.origin, 768, 768, 1);
	wait(20);
	spawn_manager::enable("sm_egypt_palace_window");
}

/*
	Name: function_5a4025b4
	Namespace: namespace_94c82dbc
	Checksum: 0xD055A3D3
	Offset: 0x5300
	Size: 0x24D
	Parameters: 0
	Flags: None
*/
function function_5a4025b4()
{
	foreach(player in level.players)
	{
		player.ignoreme = 1;
		player EnableInvulnerability();
	}
	foreach(hero in level.heroes)
	{
		hero.ignoreme = 1;
	}
	level flag::wait_till("vtol_igc_done");
	wait(5);
	foreach(player in level.players)
	{
		player.ignoreme = 0;
		player DisableInvulnerability();
	}
	foreach(hero in level.heroes)
	{
		hero.ignoreme = 0;
	}
}

/*
	Name: function_10a7788
	Namespace: namespace_94c82dbc
	Checksum: 0x85BD4A8D
	Offset: 0x5558
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_10a7788()
{
	self endon("death");
	self.ignoreSuppression = 1;
	e_goalvolume = GetEnt(self.target, "targetname");
	self SetGoal(e_goalvolume, 1);
}

/*
	Name: function_3dd4db8a
	Namespace: namespace_94c82dbc
	Checksum: 0x8C48CC67
	Offset: 0x55C8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3dd4db8a()
{
	self endon("death");
	self util::magic_bullet_shield();
	nd_goal = GetNode(self.target, "targetname");
	self SetGoal(nd_goal, 1);
}

/*
	Name: function_125f2ec4
	Namespace: namespace_94c82dbc
	Checksum: 0x679026A5
	Offset: 0x5640
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_125f2ec4()
{
	if(!isdefined(level.var_34a51b7b))
	{
		level.var_34a51b7b = [];
	}
	level.var_34a51b7b[level.var_34a51b7b.size] = self;
	self util::magic_bullet_shield();
	self vehicle::toggle_sounds(0);
	level flag::wait_till("vtol_igc_done");
	self vehicle::toggle_sounds(1);
}

/*
	Name: function_af815dad
	Namespace: namespace_94c82dbc
	Checksum: 0xBAD05E1D
	Offset: 0x56E0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_af815dad()
{
	self endon("death");
	self SetThreatBiasGroup("NRC_Wasps");
	e_goalvolume = GetEnt("pre_qt2_nrc_wasp_goalvolume", "targetname");
	self SetGoal(e_goalvolume, 1);
	self thread function_dd6f7fa6();
}

/*
	Name: function_fa8862c4
	Namespace: namespace_94c82dbc
	Checksum: 0x9F5BB68E
	Offset: 0x5778
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_fa8862c4()
{
	self endon("death");
	self SetThreatBiasGroup("NRC_Wasps");
	e_goalvolume = GetEnt("qt2_nrc_wasp_berm_goalvolume", "targetname");
	self SetGoal(e_goalvolume, 1);
	self.attackerAccuracy = 0.25;
	self thread function_dd6f7fa6();
}

/*
	Name: function_eea6d34c
	Namespace: namespace_94c82dbc
	Checksum: 0x5B257B04
	Offset: 0x5820
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_eea6d34c()
{
	self endon("death");
	self SetThreatBiasGroup("NRC_Wasps");
	e_goalvolume = GetEnt("qt2_nrc_wasp_palace_goalvolume", "targetname");
	self SetGoal(e_goalvolume, 1);
	self.attackerAccuracy = 0.25;
	self thread function_dd6f7fa6();
}

/*
	Name: function_505566c3
	Namespace: namespace_94c82dbc
	Checksum: 0xF697BB6A
	Offset: 0x58C8
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_505566c3()
{
	self endon("death");
	self SetThreatBiasGroup("QT2_NRC_Raps");
	trigger::wait_till("qt_plaza_alley_spawn_trigger", "targetname", self);
	level notify("hash_c09bd13a");
}

/*
	Name: function_a5a3b915
	Namespace: namespace_94c82dbc
	Checksum: 0x6D82FACE
	Offset: 0x5930
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_a5a3b915()
{
	level endon("hash_a4b7fa05");
	var_8d2625e1 = struct::get_array("qt_plaza_magic_bullet_rpg", "targetname");
	weapon = GetWeapon("launcher_standard");
	while(1)
	{
		var_109bf731 = randomIntRange(1, 4);
		for(i = 0; i < var_109bf731; i++)
		{
			s_start_point = Array::random(var_8d2625e1);
			var_8ae3db40 = struct::get_array(s_start_point.target, "targetname");
			var_197d929 = Array::random(var_8ae3db40);
			MagicBullet(weapon, s_start_point.origin, var_197d929.origin);
			wait(RandomFloatRange(2, 4));
		}
		wait(RandomFloatRange(20, 30));
	}
}

/*
	Name: function_3a837c17
	Namespace: namespace_94c82dbc
	Checksum: 0xDE6E39E
	Offset: 0x5AD0
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_3a837c17()
{
	level flag::wait_till("vtol_igc_done");
	level clientfield::set("alley_fxanim_curtains", 0);
	level.var_2fd26037 util::delay(10, undefined, &colors::set_force_color, "o");
	trigger::use("trig_color_post_vtol_igc_allies", "targetname");
	level thread function_767a3b7e();
	level thread function_77029c68();
	foreach(player in level.players)
	{
		player thread function_3460d45c();
	}
	callback::on_spawned(&function_3460d45c);
	level thread function_a9213e0b();
	level thread function_9866bb6();
	level thread function_8b6b15aa();
	level thread function_ffaf7dc4();
	if(isdefined(level.BZM_RAMSESDialogue7_1Callback))
	{
		level thread [[level.BZM_RAMSESDialogue7_1Callback]]();
	}
	level thread function_faf0f13b();
	level flag::wait_till("quad_tank_1_destroyed");
	level thread function_c85c8f91();
	level flag::wait_till("spawn_quad_tank_3");
	level thread function_ba0708a2();
}

/*
	Name: function_ffaf7dc4
	Namespace: namespace_94c82dbc
	Checksum: 0x100C6353
	Offset: 0x5D48
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_ffaf7dc4()
{
	level endon("hash_a4b7fa05");
	var_8c4a6a64 = GetEntArray("qtp_palace_rubble", "targetname");
	Array::run_all(var_8c4a6a64, &notsolid);
	level waittill("hash_7352ee5f");
	Array::run_all(var_8c4a6a64, &solid);
}

/*
	Name: function_767a3b7e
	Namespace: namespace_94c82dbc
	Checksum: 0x33AAA3A3
	Offset: 0x5DE0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_767a3b7e()
{
	while(1)
	{
		if(level.players.size > 1)
		{
			setignoremegroup("NRC_center_guys", "Egyptian_RPG_guys");
		}
		if(flag::get("quad_tank_1_destroyed"))
		{
			break;
		}
		level waittill("player_spawned");
	}
}

/*
	Name: function_77029c68
	Namespace: namespace_94c82dbc
	Checksum: 0x8F4C4BC4
	Offset: 0x5E60
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_77029c68()
{
	setignoremegroup("Players", "NRC_RPG_guys");
	setignoremegroup("Egyptian_AI_near_players", "NRC_RPG_guys");
	level thread function_ccebe14c();
}

/*
	Name: function_31b1f0d3
	Namespace: namespace_94c82dbc
	Checksum: 0x4501E22E
	Offset: 0x5EC8
	Size: 0x135
	Parameters: 0
	Flags: None
*/
function function_31b1f0d3()
{
	level endon("hash_9d9cd8de");
	foreach(player in level.players)
	{
		player SetThreatBiasGroup("Players");
	}
	while(1)
	{
		level waittill("player_spawned");
		foreach(player in level.players)
		{
			player SetThreatBiasGroup("Players");
		}
	}
}

/*
	Name: function_ccebe14c
	Namespace: namespace_94c82dbc
	Checksum: 0xD76BEC3A
	Offset: 0x6008
	Size: 0x277
	Parameters: 0
	Flags: None
*/
function function_ccebe14c()
{
	level endon("hash_9d9cd8de");
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			a_ai = GetAITeamArray("allies");
			foreach(ai in a_ai)
			{
				if(isdefined(ai.script_noteworthy) && ai.script_noteworthy == "qt_plaza_egyptian_rpg")
				{
					continue;
				}
				var_7c6b6ceb = ai GetThreatBiasGroup();
				if(isdefined(var_7c6b6ceb) && var_7c6b6ceb != "Egyptian_AI_near_players")
				{
					continue;
				}
				n_distance = Distance2DSquared(ai.origin, player.origin);
				if(n_distance <= 65536)
				{
					ai SetThreatBiasGroup("Egyptian_AI_near_players");
					ai.var_b26635f = 1;
					continue;
				}
				if(isdefined(ai.var_b26635f) && ai.var_b26635f)
				{
					ai SetThreatBiasGroup();
					ai.var_b26635f = 0;
				}
			}
			wait(0.1);
		}
		wait(1);
	}
}

/*
	Name: function_5f09970f
	Namespace: namespace_94c82dbc
	Checksum: 0x33DC902
	Offset: 0x6288
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_5f09970f()
{
	level thread function_9b403dd();
	level waittill("hash_53ee6132");
	level thread function_bc2f26d7();
	level thread function_83ec649e();
}

/*
	Name: function_bc2f26d7
	Namespace: namespace_94c82dbc
	Checksum: 0xEE95AD3D
	Offset: 0x62E8
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function function_bc2f26d7()
{
	a_ai = spawner::simple_spawn("qt_plaza_egyptian_wounded");
	var_a917350c = GetEnt("egyptian_wounded_carver", "targetname");
	var_a917350c disconnectpaths();
	var_b9229bcd = GetEntArray("qt_plaza_start_amws_ai", "targetname", 1);
	var_31e90922 = Array::random(var_b9229bcd);
	var_31e90922 notify("hash_f0738128");
	var_31e90922 util::magic_bullet_shield();
	s_target = struct::get("egyptian_wounded_target", "targetname");
	e_target = spawn("script_model", s_target.origin);
	e_target SetModel("tag_origin");
	e_target.health = 100;
	var_31e90922 thread ai::shoot_at_target("shoot_until_target_dead", e_target);
	s_scene = struct::get("scene_qt_plaza_egyptian_wounded", "targetname");
	s_scene scene::skipto_end(a_ai, undefined, undefined, 0.375);
	var_31e90922 util::stop_magic_bullet_shield();
	var_a917350c delete();
	e_target notify("death");
	e_target delete();
}

/*
	Name: function_3a7f574e
	Namespace: namespace_94c82dbc
	Checksum: 0xF77A91EC
	Offset: 0x6530
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_3a7f574e()
{
	self endon("death");
	self ai::set_ignoreme(1);
	self util::magic_bullet_shield();
}

/*
	Name: function_83ec649e
	Namespace: namespace_94c82dbc
	Checksum: 0x9478802B
	Offset: 0x6578
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_83ec649e()
{
	a_ai = spawner::simple_spawn("qt_plaza_egyptian_rescueinjured_guy", &function_3a7f574e);
	e_clip1 = GetEnt("qt_plaza_left_vignette_carver1", "targetname");
	e_clip1 disconnectpaths();
	var_c72c183f = GetEnt("qt_plaza_left_vignette_carver2", "targetname");
	var_c72c183f disconnectpaths();
	s_scene = struct::get("scene_qt_plaza_rescueinjured_r", "targetname");
	s_scene thread scene::skipto_end(a_ai, undefined, undefined, 0.25);
	level waittill("hash_59bf9070");
	e_clip1 delete();
	foreach(ai in a_ai)
	{
		if(isalive(ai))
		{
			ai ai::set_ignoreme(0);
			ai util::stop_magic_bullet_shield();
			ai colors::set_force_color("p");
			if(ai.animName === "arena_defend_intro_r_injured")
			{
				var_5ef22e15 = ai;
				var_5ef22e15 util::delay(60, "death", &kill);
			}
		}
	}
	if(isdefined(var_5ef22e15))
	{
		var_5ef22e15 waittill("death");
	}
	var_c72c183f delete();
}

/*
	Name: function_9b403dd
	Namespace: namespace_94c82dbc
	Checksum: 0xB75FF951
	Offset: 0x6818
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_9b403dd()
{
	level waittill("hash_a59e04f0");
	var_3d2988cc = struct::get_array("qt_plaza_last_stand_guys", "targetname");
	foreach(s_scene in var_3d2988cc)
	{
		n_time = RandomFloatRange(0.05, 0.15);
		s_scene thread scene::skipto_end(undefined, undefined, undefined, n_time);
	}
}

/*
	Name: function_1fe24d50
	Namespace: namespace_94c82dbc
	Checksum: 0x4164581D
	Offset: 0x6928
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_1fe24d50()
{
	level.var_2fd26037 dialog::say("hend_we_need_to_clear_the_0");
	wait(1.5);
	level.var_2fd26037 dialog::say("hend_quad_tank_on_the_de_0");
	wait(1);
	level.var_2fd26037 dialog::say("hend_grab_that_launcher_a_0");
	level flag::wait_till("quad_tank_1_destroyed");
	level.var_2fd26037 dialog::say("hend_yeah_tank_down_kee_0");
	level flag::wait_till("obj_plaza_cleared");
	level.var_9db406db dialog::say("khal_regroup_on_me_0");
}

/*
	Name: function_f794a879
	Namespace: namespace_94c82dbc
	Checksum: 0xA51A6B63
	Offset: 0x6A28
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_f794a879()
{
	var_6b1c7f11 = spawner::simple_spawn_single("demo_intro_mlrs_quadtank");
	level.var_6e86c9d5 = var_6b1c7f11;
	var_6b1c7f11 SetThreatBiasGroup("NRC_Quadtank");
	setthreatbias("Players", "NRC_Quadtank", -9999);
	var_6b1c7f11 quadtank::remove_repulsor();
	var_6b1c7f11 util::magic_bullet_shield();
	level flag::wait_till("vtol_igc_done");
	var_6b1c7f11 quadtank::quadtank_projectile_watcher();
	var_6b1c7f11 thread function_27b2ebf2();
	callback::on_vehicle_damage(&function_15abacf7);
	objectives::set("cp_level_ramses_destroy_quadtank", var_6b1c7f11);
	var_6b1c7f11 util::stop_magic_bullet_shield();
	level thread function_19351c55();
	level thread function_5a7e506e();
	spawn_manager::disable("qt1_nrc_wasp_sm");
	setthreatbias("Players", "NRC_Quadtank", 0);
	var_6b1c7f11 util::delay(3, undefined, &function_f536966);
	var_6b1c7f11 util::waittill_any("enter_vehicle", "death", "CloneAndRemoveEntity");
	level flag::set("quad_tank_1_destroyed");
	callback::remove_on_vehicle_damage(&function_15abacf7);
	savegame::function_5d2cdd99();
	objectives::complete("cp_level_ramses_destroy_quadtank");
}

/*
	Name: function_27b2ebf2
	Namespace: namespace_94c82dbc
	Checksum: 0xC8576D52
	Offset: 0x6CB0
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function function_27b2ebf2()
{
	self endon("death");
	var_fae93870 = 0;
	var_c1df3693 = 2;
	var_9a15ea97 = GetWeapon("launcher_standard");
	while(1)
	{
		self waittill("hash_d9877503", missile);
		if(missile.weapon === var_9a15ea97)
		{
			var_fae93870++;
			if(var_fae93870 >= var_c1df3693)
			{
				foreach(player in level.activePlayers)
				{
					player util::show_hint_text(&"CP_MI_CAIRO_RAMSES_QUADTANK_REPULSOR_HINT");
				}
				var_fae93870 = 0;
				var_c1df3693 = var_c1df3693 * 2;
			}
			wait(0.25);
		}
	}
}

/*
	Name: function_15abacf7
	Namespace: namespace_94c82dbc
	Checksum: 0xFD241341
	Offset: 0x6E10
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_15abacf7(params)
{
	if(level.var_6e86c9d5 === self && self quadtank::trophy_disabled())
	{
		if(isPlayer(params.eAttacker) && IsSubStr(params.sMeansOfDeath, "BULLET"))
		{
			player = params.eAttacker;
			if(isdefined(player.var_799b1d0e))
			{
				player.var_799b1d0e = player.var_799b1d0e + params.iDamage;
			}
			else
			{
				player.var_799b1d0e = params.iDamage;
			}
			if(player.var_799b1d0e > 999)
			{
				player util::show_hint_text(&"CP_MI_CAIRO_RAMSES_QUADTANK_ROCKETS_HINT");
				player.var_799b1d0e = 0;
			}
		}
	}
}

/*
	Name: function_19351c55
	Namespace: namespace_94c82dbc
	Checksum: 0x14766A82
	Offset: 0x6F50
	Size: 0x331
	Parameters: 0
	Flags: None
*/
function function_19351c55()
{
	Array::wait_till(level.var_73b96584, "death");
	a_nd_nodes = GetNodeArray("qt1_nrc_truck_nodes", "script_noteworthy");
	foreach(node in a_nd_nodes)
	{
		SetEnableNode(node, 0);
	}
	wait(5);
	var_9f3935f2 = spawner::simple_spawn_single("nrc_qt1_truck");
	if(!isdefined(var_9f3935f2))
	{
		return;
	}
	var_9f3935f2 thread function_5cbc0fea();
	var_9f3935f2 thread function_c2a9c2e3();
	ai_gunner = spawner::simple_spawn_single("nrc_technical_gunner");
	ai_gunner vehicle::get_in(var_9f3935f2, "gunner1", 1);
	ai_driver = spawner::simple_spawn_single("nrc_technical_gunner");
	ai_driver vehicle::get_in(var_9f3935f2, "driver", 1);
	nd_truck_start = GetVehicleNode(var_9f3935f2.target, "targetname");
	var_9f3935f2 thread vehicle::get_on_and_go_path(nd_truck_start);
	var_9f3935f2 thread function_e4aa3ab2(ai_driver);
	var_9f3935f2 turret::enable(1, 1);
	var_9f3935f2 MakeVehicleUsable();
	var_9f3935f2 SetSeatOccupied(0);
	var_9f3935f2 util::waittill_any("death", "reached_end_node");
	foreach(node in a_nd_nodes)
	{
		SetEnableNode(node, 1);
	}
}

/*
	Name: function_c2a9c2e3
	Namespace: namespace_94c82dbc
	Checksum: 0x861B91FD
	Offset: 0x7290
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_c2a9c2e3()
{
	self endon("death");
	self waittill("hash_89126c82");
	wait(1);
	self playsound("evt_tech_driveup_qt");
}

/*
	Name: function_5a7e506e
	Namespace: namespace_94c82dbc
	Checksum: 0x73C1D93
	Offset: 0x72D8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_5a7e506e()
{
	level endon("hash_8bc106af");
	Array::wait_till(level.var_73b96584, "death");
	level thread function_f922378a();
	var_408caf2f = GetEnt("qt1_nrc_amws_sm", "targetname");
	level thread spawn_manager::function_617b3ed2("qt1_nrc_amws_sm", &function_cd53f16b, var_408caf2f, 10, 15, 2);
	spawn_manager::enable("qt1_nrc_amws_sm");
}

/*
	Name: function_c85c8f91
	Namespace: namespace_94c82dbc
	Checksum: 0x60B54624
	Offset: 0x73A8
	Size: 0x693
	Parameters: 0
	Flags: None
*/
function function_c85c8f91()
{
	var_edbda753 = GetEntArray("egyptian_retreat_guy_left_ai", "targetname");
	foreach(ai_guy in var_edbda753)
	{
		if(isalive(ai_guy))
		{
			ai_guy DoDamage(ai_guy.health, ai_guy.origin);
		}
	}
	trigger::use("trig_color_quadtank2_allies");
	trigger::use("trig_color_quadtank2_axis");
	level thread function_df4c5d7e();
	level notify("hash_b3aeb693");
	spawn_manager::disable("qt1_nrc_amws_sm");
	e_goalvolume = GetEnt("post_qt1_amws_goalvolume", "targetname");
	var_b9229bcd = spawn_manager::get_ai("qt1_nrc_amws_sm");
	foreach(amws in var_b9229bcd)
	{
		amws SetGoal(e_goalvolume, 1);
	}
	spawn_manager::enable("qt2_nrc_wasp_sm");
	spawn_manager::enable("sm_egypt_statue_fall");
	if(!level flag::get("qt_plaza_theater_destroyed"))
	{
		spawn_manager::enable("sm_egypt_theater");
	}
	level.var_9db406db = util::function_740f8516("khalil");
	level.var_9db406db colors::set_force_color("o");
	var_6836c6ff = struct::get("khalil_start", "targetname");
	level.var_9db406db skipto::function_d9b1ee00(var_6836c6ff);
	wait(5);
	level notify("hash_4232e97");
	spawn_manager::disable("qt2_nrc_wasp_sm");
	level thread function_db836bc0();
	scene::add_scene_func("p7_fxanim_cp_ramses_qt_plaza_palace_wall_collapse_bundle", &function_e0ba07f1, "play");
	level scene::Play("p7_fxanim_cp_ramses_qt_plaza_palace_wall_collapse_bundle");
	level.var_76601d99 thread function_aa16fea2();
	level flag::set("quad_tank_2_spawned");
	objectives::set("cp_level_ramses_destroy_quadtank", level.var_76601d99);
	var_408caf2f = GetEnt("qt2_nrc_wasp2_palace_sm", "targetname");
	level thread spawn_manager::function_617b3ed2("qt2_nrc_wasp2_palace_sm", &function_cd53f16b, var_408caf2f, 15, 20, 3);
	spawn_manager::enable("qt2_nrc_wasp2_palace_sm");
	var_408caf2f = GetEnt("qt2_nrc_robot_rushers_sm", "targetname");
	level thread spawn_manager::function_617b3ed2("qt2_nrc_robot_rushers_sm", &function_cd53f16b, var_408caf2f, 10, 15, 3);
	spawn_manager::enable("qt2_nrc_robot_rushers_sm");
	setignoremegroup("Egyptian_RPG_guys", "NRC_QT2_Robot_Rushers");
	level thread function_3b542458();
	level thread function_2bfb7457();
	spawn_manager::enable("qt2_nrc_raps_sm");
	level thread function_c09bd13a();
	setignoremegroup("Egyptian_Theater_guys", "NRC_QT2_Robot_Rushers");
	setignoremegroup("NRC_QT2_Robot_Rushers", "Egyptian_Theater_guys");
	level flag::wait_till_any(Array("qt_plaza_statue_destroyed", "quad_tank_2_destroyed", "demo_player_controlled_quadtank"));
	if(isalive(level.var_76601d99))
	{
		level.var_76601d99 thread function_a65108b6();
		level.var_76601d99 thread function_6fd11e63();
	}
	level flag::wait_till_any(Array("quad_tank_2_destroyed", "demo_player_controlled_quadtank"));
	objectives::complete("cp_level_ramses_destroy_quadtank");
}

/*
	Name: function_39ae1bbe
	Namespace: namespace_94c82dbc
	Checksum: 0x74228755
	Offset: 0x7A48
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_39ae1bbe()
{
	level notify("hash_93673435");
	spawn_manager::disable("sm_nrc_depth");
	while(1)
	{
		var_f3e62b98 = spawn_manager::get_ai("sm_nrc_depth");
		if(var_f3e62b98.size <= 2)
		{
			break;
		}
		wait(1);
	}
	spawn_manager::enable("sm_nrc_qt2_depth");
}

/*
	Name: function_2bfb7457
	Namespace: namespace_94c82dbc
	Checksum: 0x6C18C948
	Offset: 0x7AE8
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function function_2bfb7457()
{
	level endon("hash_a4b7fa05");
	setignoremegroup("QT2_NRC_Raps", "QT2_Egyptian_Guys_on_Blocks");
	e_trigger = GetEnt("qt2_egyptian_guys_on_blocks", "targetname");
	while(1)
	{
		e_trigger waittill("trigger", ent);
		var_7fa343c9 = ent GetThreatBiasGroup();
		if(var_7fa343c9 == "QT2_Egyptian_Guys_on_Blocks")
		{
			wait(0.1);
			continue;
		}
		else
		{
			ent SetThreatBiasGroup("QT2_Egyptian_Guys_on_Blocks");
		}
	}
}

/*
	Name: function_e0ba07f1
	Namespace: namespace_94c82dbc
	Checksum: 0xE9E350E0
	Offset: 0x7BD0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_e0ba07f1(a_ents)
{
	e_wall = GetEnt("qt_plaza_palace_wall_collapse", "targetname");
	e_wall thread function_1af8bdd3();
	e_wall thread function_3cde9b26();
}

/*
	Name: function_1af8bdd3
	Namespace: namespace_94c82dbc
	Checksum: 0x18CD0A90
	Offset: 0x7C40
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_1af8bdd3()
{
	self waittill("hash_1af8bdd3");
	level notify("hash_78a974fe");
	spawn_manager::disable("sm_nrc_siegebot");
	function_b78937aa("qt2_intro_org");
}

/*
	Name: function_3cde9b26
	Namespace: namespace_94c82dbc
	Checksum: 0x22A4179C
	Offset: 0x7C98
	Size: 0x46B
	Parameters: 0
	Flags: None
*/
function function_3cde9b26()
{
	self waittill("hash_3cde9b26");
	level.var_76601d99.trophy_system_health = 0;
	level.var_76601d99.trophy_disables = 999;
	level.var_76601d99.displayweakpoint = 0;
	level.var_76601d99 quadtank::quadtank_on();
	level.var_76601d99 quadtank::remove_repulsor();
	level.var_76601d99 quadtank::quadtank_weakpoint_display(0);
	level.var_76601d99 vehicle_ai::set_state("scripted");
	n_damage = level.var_76601d99.healthdefault * 0.25;
	var_7e1ceefd = Int(n_damage);
	level.var_76601d99.health = level.var_76601d99.health - var_7e1ceefd;
	level.var_76601d99 vehicle::set_damage_fx_level(1);
	level.var_76601d99 HidePart("tag_lidar_null", "", 1);
	level.var_76601d99 HidePart("tag_defense_active");
	level.var_76601d99 notify("trophy_system_destroyed");
	level notify("trophy_system_destroyed", level.var_76601d99);
	level.var_76601d99 util::delay(3, undefined, &vehicle::toggle_lights_group, 1, 0);
	var_ea3d7abf = GetEntArray("qt_fall_event", "targetname");
	foreach(var_8fa50159 in var_ea3d7abf)
	{
		if(isdefined(var_8fa50159))
		{
			var_8fa50159 delete();
		}
	}
	t_kill = GetEnt("qt2_intro_kill_trigger", "targetname");
	a_ai = GetAIArray();
	var_b857e377 = ArrayCombine(a_ai, level.players, 1, 0);
	foreach(e_actor in var_b857e377)
	{
		if(e_actor util::is_hero())
		{
			continue;
		}
		if(e_actor.targetname === "artillery_quadtank_ai")
		{
			continue;
		}
		if(e_actor istouching(t_kill))
		{
			if(isPlayer(e_actor))
			{
				e_actor DoDamage(e_actor.health, e_actor.origin);
				break;
				continue;
			}
			e_actor kill();
			break;
		}
	}
	function_b78937aa("qt2_intro_org");
}

/*
	Name: function_92eb91a6
	Namespace: namespace_94c82dbc
	Checksum: 0xC32EB381
	Offset: 0x8110
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_92eb91a6()
{
	level.var_76601d99 = self;
	self quadtank::quadtank_off();
	self thread function_aa763092();
	self thread function_b4789248();
}

/*
	Name: function_703b62d1
	Namespace: namespace_94c82dbc
	Checksum: 0xECF4759F
	Offset: 0x8170
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_703b62d1(var_fd827376)
{
	if(!isdefined(var_fd827376))
	{
		var_fd827376 = 0;
	}
	var_55141f56 = spawner::simple_spawn_single("artillery_quadtank");
	var_55141f56 ai::set_ignoreme(1);
	var_55141f56 ai::set_ignoreall(1);
	var_55141f56 quadtank::quadtank_weakpoint_display(0);
	if(!var_fd827376)
	{
		var_55141f56 SetThreatBiasGroup("NRC_Quadtank");
	}
	level.var_76601d99 = var_55141f56;
	return var_55141f56;
}

/*
	Name: function_a65108b6
	Namespace: namespace_94c82dbc
	Checksum: 0xF6E2A824
	Offset: 0x8240
	Size: 0x10F
	Parameters: 0
	Flags: None
*/
function function_a65108b6()
{
	self endon("death");
	if(!level flag::get("qt1_died_in_a_bad_place"))
	{
		s_pos = struct::get("qt2_movement_path_A", "targetname");
		continue;
	}
	s_pos = struct::get("qt2_movement_path_B", "targetname");
	while(isdefined(s_pos))
	{
		self SetGoal(s_pos.origin, 1);
		self waittill("hash_a2b47172");
		if(isdefined(s_pos.target))
		{
			s_pos = struct::get(s_pos.target, "targetname");
		}
		else
		{
			s_pos = undefined;
		}
	}
}

/*
	Name: function_aa763092
	Namespace: namespace_94c82dbc
	Checksum: 0x2B06211F
	Offset: 0x8358
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_aa763092()
{
	level endon("hash_2d88f225");
	self waittill("death");
	wait(2);
	level flag::set("quad_tank_2_destroyed");
	savegame::function_5d2cdd99();
	trigger::use("trig_color_quadtank3_allies");
	trigger::use("trig_color_quadtank3_axis");
	wait(10);
	level flag::set("spawn_quad_tank_3");
	level thread function_32450fc();
}

/*
	Name: function_b4789248
	Namespace: namespace_94c82dbc
	Checksum: 0x6535C3F9
	Offset: 0x8428
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_b4789248()
{
	level endon("hash_e0b2f224");
	self waittill("hash_bda2a10e");
	level flag::set("demo_player_controlled_quadtank");
	level thread function_c6a0a6e5(self);
	level thread function_32450fc();
	wait(10);
	level flag::set("spawn_quad_tank_3");
}

/*
	Name: function_6fde5d65
	Namespace: namespace_94c82dbc
	Checksum: 0xB84A39BC
	Offset: 0x84C0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_6fde5d65()
{
	battlechatter::function_d9f49fba(0);
	level dialog::remote("tayr_we_need_to_expose_0");
	level dialog::remote("tayr_you_know_me_hendric_0", 2);
	level dialog::remote("tayr_you_were_supposed_to_0", 2);
	level dialog::remote("tayr_all_you_had_to_do_wa_0", 2);
	level dialog::remote("tayr_we_need_to_speak_to_0", 2);
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_32450fc
	Namespace: namespace_94c82dbc
	Checksum: 0x556F1F5D
	Offset: 0x85A0
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function function_32450fc()
{
	level notify("hash_d1397f00");
	spawn_manager::disable("qt2_nrc_wasp2_palace_sm");
	level notify("hash_d1eb1d04");
	spawn_manager::disable("qt2_nrc_wasp2_berm_sm");
	e_goalvolume = GetEnt("post_qt2_wasp_goalvolume", "targetname");
	var_daa1cfc3 = spawn_manager::get_ai("qt2_nrc_wasp2_palace_sm");
	var_1edff0a3 = spawn_manager::get_ai("qt2_nrc_wasp2_berm_sm");
	var_528b1313 = ArrayCombine(var_daa1cfc3, var_1edff0a3, 1, 0);
	foreach(var_aaefedf3 in var_528b1313)
	{
		var_aaefedf3 SetGoal(e_goalvolume, 1);
	}
}

/*
	Name: function_c6a0a6e5
	Namespace: namespace_94c82dbc
	Checksum: 0x6B76E140
	Offset: 0x8738
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_c6a0a6e5(var_55141f56)
{
	level notify("hash_a5b3808b");
	spawn_manager::disable("qt2_nrc_robot_rushers_sm");
	trigger::use("trig_color_player_controlled_QT_allies", "targetname");
	trigger::use("trig_color_player_controlled_QT_axis", "targetname");
	level thread function_f659f8de();
	while(!isdefined(level.var_dbed449f))
	{
		wait(0.1);
	}
	level thread function_437a78f9();
	level thread function_4b083f55();
	level thread function_ff5161bd();
	level flag::wait_till_any(Array("qt_plaza_theater_destroyed", "qt_plaza_theater_enemies_cleared", "spawn_quad_tank_3"));
	wait(3);
	spawn_manager::enable("qt_plaza_controllable_qt_raps_sm");
	level flag::set("spawn_quad_tank_3");
}

/*
	Name: function_437a78f9
	Namespace: namespace_94c82dbc
	Checksum: 0xF582090F
	Offset: 0x88A8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_437a78f9()
{
	wait(3);
	a_nd_nodes = GetNodeArray("mobile_wall_exposed_nodes", "targetname");
	foreach(node in a_nd_nodes)
	{
		SetEnableNode(node, 1);
	}
	spawn_manager::enable("nrc_mobile_wall_sm");
	spawn_manager::enable("demo_qt2_wasp_sm");
}

/*
	Name: function_faf0f13b
	Namespace: namespace_94c82dbc
	Checksum: 0x4EF91D9
	Offset: 0x89A8
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_faf0f13b()
{
	level endon("hash_a4b7fa05");
	while(1)
	{
		level waittill("ClonedEntity", clone);
		if(clone.scriptvehicletype === "quadtank")
		{
			level.var_dbed449f = clone;
			level.var_dbed449f thread function_1491a9ea();
		}
	}
}

/*
	Name: function_1491a9ea
	Namespace: namespace_94c82dbc
	Checksum: 0xF38B711C
	Offset: 0x8A28
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1491a9ea()
{
	self endon("death");
	wait(5);
	self vehicle::lights_off();
}

/*
	Name: function_ff5161bd
	Namespace: namespace_94c82dbc
	Checksum: 0x7260E3C8
	Offset: 0x8A60
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ff5161bd()
{
	level endon("hash_9d9cd8de");
	spawn_manager::function_740ea7ff("nrc_theater_sm", 6);
	level flag::set("qt_plaza_theater_enemies_cleared");
}

/*
	Name: function_f659f8de
	Namespace: namespace_94c82dbc
	Checksum: 0x480AD598
	Offset: 0x8AB8
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_f659f8de()
{
	spawn_manager::disable("sm_egypt_theater");
	var_5b1067a4 = spawn_manager::get_ai("sm_egypt_theater");
	foreach(var_a30bd475 in var_5b1067a4)
	{
		var_a30bd475.health = 1;
	}
	wait(5);
	spawn_manager::enable("nrc_theater_sm");
	var_4f0f0c4c = GetEntArray("breach_doors", "targetname");
	foreach(var_97ed0dad in var_4f0f0c4c)
	{
		var_97ed0dad delete();
	}
	level thread function_d98bac2();
}

/*
	Name: function_4b083f55
	Namespace: namespace_94c82dbc
	Checksum: 0x7C0AF8A5
	Offset: 0x8C68
	Size: 0x4A9
	Parameters: 0
	Flags: None
*/
function function_4b083f55()
{
	a_nd_nodes = GetNodeArray("qt3_nrc_truck_nodes", "script_noteworthy");
	foreach(node in a_nd_nodes)
	{
		SetEnableNode(node, 0);
	}
	a_nd_nodes = GetNodeArray("qt1_nrc_truck_nodes", "script_noteworthy");
	foreach(node in a_nd_nodes)
	{
		SetEnableNode(node, 0);
	}
	var_f29ad39f = GetEntArray("nrc_qt3_truck", "targetname");
	var_9a38d227 = 1;
	foreach(var_2e36c27c in var_f29ad39f)
	{
		var_9f3935f2 = spawner::simple_spawn_single(var_2e36c27c);
		if(isdefined(var_9f3935f2))
		{
			var_9f3935f2 thread function_5cbc0fea();
			ai_gunner = spawner::simple_spawn_single("nrc_technical_gunner");
			ai_gunner vehicle::get_in(var_9f3935f2, "gunner1", 1);
			ai_driver = spawner::simple_spawn_single("nrc_technical_gunner");
			ai_driver vehicle::get_in(var_9f3935f2, "driver", 1);
			nd_truck_start = GetVehicleNode(var_9f3935f2.target, "targetname");
			var_9f3935f2 thread vehicle::get_on_and_go_path(nd_truck_start);
			var_9f3935f2 thread function_e4aa3ab2(ai_driver);
			var_9f3935f2 thread function_56b0a5d2(var_9a38d227);
			var_9a38d227 = var_9a38d227 + 1;
			var_9f3935f2 MakeVehicleUsable();
			var_9f3935f2 SetSeatOccupied(0);
			var_9f3935f2 turret::enable(1, 1);
		}
		wait(RandomFloatRange(2, 5));
	}
	level thread function_4c7236e3();
	wait(5);
	a_nd_nodes = GetNodeArray("qt1_nrc_truck_nodes", "script_noteworthy");
	foreach(node in a_nd_nodes)
	{
		SetEnableNode(node, 1);
	}
}

/*
	Name: function_56b0a5d2
	Namespace: namespace_94c82dbc
	Checksum: 0x692FA170
	Offset: 0x9120
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_56b0a5d2(counter)
{
	self endon("death");
	self waittill("hash_89126c82");
	self playsound("evt_tech_driveup_qt_pair_" + counter);
}

/*
	Name: function_e4aa3ab2
	Namespace: namespace_94c82dbc
	Checksum: 0x560C114D
	Offset: 0x9170
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_e4aa3ab2(ai_driver)
{
	self endon("death");
	self waittill("reached_end_node");
	if(isalive(ai_driver))
	{
		ai_driver vehicle::get_out();
	}
}

/*
	Name: function_5cbc0fea
	Namespace: namespace_94c82dbc
	Checksum: 0xB8470825
	Offset: 0x91D0
	Size: 0x249
	Parameters: 0
	Flags: None
*/
function function_5cbc0fea()
{
	level endon("hash_a4b7fa05");
	while(1)
	{
		self waittill("damage", n_damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(weapon == level.var_b27f706d || weapon == level.var_51d112fe || weapon == level.var_9e92e4b8)
		{
			self DoDamage(self.health, self.origin);
			break;
		}
	}
	v_launch = AnglesToForward(self.angles) * -350 + VectorScale((0, 0, 1), 200);
	v_org = self.origin + AnglesToForward(self.angles) * 10;
	self LaunchVehicle(v_launch, v_org, 0);
	self thread function_1b1a9f3a();
	a_ai_riders = self.riders;
	foreach(ai in a_ai_riders)
	{
		ai DoDamage(ai.health, ai.origin);
	}
}

/*
	Name: function_1b1a9f3a
	Namespace: namespace_94c82dbc
	Checksum: 0xFDCBB610
	Offset: 0x9428
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_1b1a9f3a()
{
	self endon("death");
	if(isdefined(60))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(60, "timeout");
	}
	self waittill("veh_landed");
	if(isdefined(self))
	{
		self playsound("evt_truck_impact");
	}
}

/*
	Name: function_861838cc
	Namespace: namespace_94c82dbc
	Checksum: 0x2C2D9F86
	Offset: 0x94C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_861838cc()
{
	self endon("death");
	self SetThreatBiasGroup("QT2_NRC_Raps");
}

/*
	Name: function_66735742
	Namespace: namespace_94c82dbc
	Checksum: 0xBD2BD3A7
	Offset: 0x9500
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_66735742()
{
	self endon("death");
	self SetThreatBiasGroup("QT2_NRC_Raps");
	self ai::set_ignoreme(1);
	self thread function_29ad7024();
	self thread function_6be08268();
}

/*
	Name: function_29ad7024
	Namespace: namespace_94c82dbc
	Checksum: 0x274E9C58
	Offset: 0x9580
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_29ad7024()
{
	level endon("hash_b4989133");
	level endon("hash_8bc106af");
	self endon("hash_f4ce781d");
	self waittill("hash_bda2a10e");
	self notify("hash_21d7c009");
	level notify("hash_b4989133");
}

/*
	Name: function_6be08268
	Namespace: namespace_94c82dbc
	Checksum: 0x5351AB69
	Offset: 0x95D8
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_6be08268()
{
	level endon("hash_b4989133");
	level endon("hash_8bc106af");
	self endon("hash_21d7c009");
	self waittill("death");
	wait(2);
	if(isdefined(self))
	{
		self notify("hash_f4ce781d");
	}
}

/*
	Name: function_aa16fea2
	Namespace: namespace_94c82dbc
	Checksum: 0x56285473
	Offset: 0x9638
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_aa16fea2()
{
	self endon("death");
	var_6587b577 = (10731, -15846, 200);
	self vehicle_ai::SetTurretTarget(var_6587b577, 0);
	self util::waittill_any_timeout(3, "turret_on_target");
	s_target = struct::get("qt_target_statue", "targetname");
	e_target = spawn("script_model", s_target.origin);
	e_target SetModel("tag_origin");
	e_target.health = 100;
	e_trigger = GetEnt("statue_fall_damage_trigger", "targetname");
	self.perfectaim = 1;
	self.aim_set_by_shoot_at_target = 1;
	self vehicle_ai::set_state("combat");
	self thread ai::shoot_at_target("shoot_until_target_dead", e_target);
	self thread function_b4cabdde();
	level flag::set("qt_targets_statue");
	while(1)
	{
		e_trigger waittill("damage", n_damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(attacker == self && isdefined(weapon) && weapon == level.var_6c4e8561)
		{
			e_target notify("death");
			level flag::set("qt_plaza_statue_destroyed");
			self.perfectaim = 0;
			self.aim_set_by_shoot_at_target = 0;
			break;
		}
	}
	level thread function_3ec052d8();
	e_target delete();
	level thread function_7432965b();
	wait(2);
	self thread function_24cd2cab();
}

/*
	Name: function_24cd2cab
	Namespace: namespace_94c82dbc
	Checksum: 0xA5D00058
	Offset: 0x9950
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_24cd2cab()
{
	self endon("death");
	s_target = struct::get("mobile_wall_fxanim", "targetname");
	self vehicle_ai::SetTurretTarget(s_target.origin, 0);
	self util::waittill_any_timeout(3, "turret_on_target");
	e_target = spawn("script_model", s_target.origin);
	e_target SetModel("tag_origin");
	e_target.health = 100;
	e_trigger = GetEnt("mobile_wall_damage_trigger", "targetname");
	self.perfectaim = 1;
	self.aim_set_by_shoot_at_target = 1;
	self vehicle_ai::set_state("combat");
	self thread ai::shoot_at_target("shoot_until_target_dead", e_target);
	while(1)
	{
		e_trigger waittill("damage", n_damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(attacker == self && isdefined(weapon) && weapon == level.var_6c4e8561)
		{
			e_target notify("death");
			level flag::set("qt_plaza_mobile_wall_destroyed");
			self.perfectaim = 0;
			self.aim_set_by_shoot_at_target = 0;
			break;
		}
	}
	level thread function_fdcd27b4();
	e_target delete();
}

/*
	Name: function_f3b08607
	Namespace: namespace_94c82dbc
	Checksum: 0xDECB01FD
	Offset: 0x9BF0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f3b08607()
{
	self endon("death");
	self util::magic_bullet_shield();
	self ai::set_ignoreme(1);
	self waittill("hash_9490ad38");
	self util::stop_magic_bullet_shield();
	self ai::set_ignoreme(0);
}

/*
	Name: function_b4cabdde
	Namespace: namespace_94c82dbc
	Checksum: 0xBF2EE783
	Offset: 0x9C70
	Size: 0x395
	Parameters: 0
	Flags: None
*/
function function_b4cabdde()
{
	a_ai = GetEntArray("statue_fall_guys_ai", "targetname", 1);
	spawn_manager::kill("sm_egypt_statue_fall");
	var_3d2988cc = struct::get_array("qt_plaza_statue_retreat", "targetname");
	var_8f99a358 = ArrayCopy(var_3d2988cc);
	while(isalive(self) && self.getreadytofire === 0)
	{
		wait(0.05);
	}
	foreach(ai in a_ai)
	{
		s_scene = ArrayGetClosest(ai.origin, var_8f99a358);
		ArrayRemoveValue(var_8f99a358, s_scene, 0);
		s_scene thread scene::init(ai);
		wait(RandomFloatRange(0.1, 0.25));
	}
	level flag::wait_till_any(Array("qt_plaza_statue_destroyed", "quad_tank_2_destroyed", "demo_player_controlled_quadtank"));
	if(level flag::get("qt_plaza_statue_destroyed"))
	{
		level thread function_e388dd6b(a_ai);
		foreach(s_scene in var_3d2988cc)
		{
			s_scene thread scene::Play();
			wait(RandomFloatRange(0.1, 0.25));
		}
	}
	else
	{
		level scene::stop("cin_gen_react_retreat");
	}
	foreach(ai in a_ai)
	{
		if(isalive(ai))
		{
			ai notify("hash_9490ad38");
			ai.goalRadius = 512;
		}
	}
}

/*
	Name: function_cfe4e726
	Namespace: namespace_94c82dbc
	Checksum: 0xB427ED6F
	Offset: 0xA010
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_cfe4e726()
{
	self endon("death");
	e_goalvolume = GetEnt(self.target, "targetname");
	self SetGoal(e_goalvolume, 1);
	self.ignoreSuppression = 1;
	trigger::wait_till(self.target, "targetname", self);
	level notify("hash_9866bb6");
}

/*
	Name: function_26fe7ac7
	Namespace: namespace_94c82dbc
	Checksum: 0x849BE914
	Offset: 0xA0B0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_26fe7ac7()
{
	self SetThreatBiasGroup("NRC_theater_guys");
}

/*
	Name: function_5030bfcf
	Namespace: namespace_94c82dbc
	Checksum: 0x3B32E264
	Offset: 0xA0E0
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_5030bfcf()
{
	self endon("death");
	e_goalvolume = GetEnt(self.target, "targetname");
	self SetGoal(e_goalvolume, 1);
	trigger::wait_till(self.target, "targetname", self);
	level notify("hash_8b6b15aa");
}

/*
	Name: function_7f6c7e92
	Namespace: namespace_94c82dbc
	Checksum: 0xF49268FB
	Offset: 0xA170
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_7f6c7e92()
{
	self endon("death");
	self SetThreatBiasGroup("NRC_center_guys");
	if(level.players.size > 1)
	{
		a_ai = spawn_manager::get_ai("sm_nrc_quadtank");
		if(a_ai.size > 0 && isdefined(level.var_34a51b7b) && level.var_34a51b7b.size > 0)
		{
			foreach(e_turret in level.var_34a51b7b)
			{
				e_turret turret::set_ignore_ent_array(a_ai, 0);
			}
		}
	}
	else if(!level flag::get("quad_tank_1_destroyed"))
	{
		if(IsSubStr(self.classname, "shotgun"))
		{
			n_count = spawner::get_ai_group_ai("qt1_nrc_shotgunner").size;
			if(n_count < 4)
			{
				self thread function_831f9a1b();
			}
		}
		else
		{
			self thread function_6639b8f8();
		}
	}
}

/*
	Name: function_831f9a1b
	Namespace: namespace_94c82dbc
	Checksum: 0xD5D69BAF
	Offset: 0xA338
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_831f9a1b()
{
	self endon("death");
	self flag::init("nrc_qt1_shotgunner_rush");
	self SetThreatBiasGroup("NRC_QT1_Shotgunners");
	setignoremegroup("NRC_QT1_Shotgunners", "Egyptian_RPG_guys");
	setignoremegroup("Egyptian_RPG_guys", "NRC_QT1_Shotgunners");
	self thread function_10c25a20();
	self waittill("goal");
	wait(RandomFloatRange(5, 20));
	self flag::set("nrc_qt1_shotgunner_rush");
	a_nd_nodes = GetNodeArray("nrc_shotgun_rusher_node", "targetname");
	nd_goal = Array::random(a_nd_nodes);
	self SetGoal(nd_goal, 1);
	self thread function_6d46c512();
}

/*
	Name: function_10c25a20
	Namespace: namespace_94c82dbc
	Checksum: 0x5E42E168
	Offset: 0xA4B8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_10c25a20()
{
	self endon("death");
	self endon("hash_cb188399");
	self namespace_391e4301::function_f08afb37();
	util::waittill_any_ents(level, "quad_tank_1_destroyed", self, "nrc_qt1_shotgunner_rush");
	self namespace_391e4301::function_f08afb37(0);
}

/*
	Name: function_6d46c512
	Namespace: namespace_94c82dbc
	Checksum: 0x12644067
	Offset: 0xA530
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_6d46c512()
{
	self endon("death");
	e_goalvolume = GetEnt("qt1_nrc_rusher_goalvolume", "targetname");
	while(1)
	{
		e_goalvolume waittill("trigger", ent);
		if(ent == self)
		{
			break;
		}
	}
	self SetGoal(e_goalvolume, 1);
}

/*
	Name: function_6639b8f8
	Namespace: namespace_94c82dbc
	Checksum: 0x230A5225
	Offset: 0xA5C8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_6639b8f8()
{
	self endon("death");
	self endon("hash_cb188399");
	self namespace_391e4301::function_f08afb37();
	level flag::wait_till("quad_tank_1_destroyed");
	self namespace_391e4301::function_f08afb37(0);
}

/*
	Name: function_17b4845b
	Namespace: namespace_94c82dbc
	Checksum: 0xDB720FAB
	Offset: 0xA638
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_17b4845b()
{
	self endon("death");
	self SetThreatBiasGroup("NRC_QT2_Robot_Rushers");
	setignoremegroup("Egyptian_RPG_guys", "NRC_QT2_Robot_Rushers");
	self ai::set_behavior_attribute("move_mode", "rusher");
	self ai::set_behavior_attribute("sprint", 1);
	trigger::wait_till("robot_callout_vo_trigger", "targetname", self);
	level notify("hash_3b542458");
}

/*
	Name: function_663d1007
	Namespace: namespace_94c82dbc
	Checksum: 0xF63AF920
	Offset: 0xA708
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_663d1007()
{
	self endon("death");
	self SetThreatBiasGroup("Egyptian_Theater_guys");
}

/*
	Name: function_7ea3ae59
	Namespace: namespace_94c82dbc
	Checksum: 0x867FAB86
	Offset: 0xA740
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_7ea3ae59()
{
	self endon("death");
	var_3d2988cc = struct::get_array("qt_plaza_traverse_mobile_wall", "targetname");
	var_3d2988cc = Array::randomize(var_3d2988cc);
	while(1)
	{
		foreach(s_scene in var_3d2988cc)
		{
			if(!s_scene scene::is_playing())
			{
				s_scene scene::Play(self);
				return;
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_29d63628
	Namespace: namespace_94c82dbc
	Checksum: 0x587368F9
	Offset: 0xA848
	Size: 0x301
	Parameters: 0
	Flags: None
*/
function function_29d63628()
{
	var_4a38f1ec = GetEntArray("wing_carver_slanty", "targetname");
	foreach(var_a917350c in var_4a38f1ec)
	{
		var_a917350c notsolid();
		var_a917350c connectpaths();
	}
	var_4a38f1ec = GetEntArray("wing_carver_upright", "targetname");
	foreach(var_a917350c in var_4a38f1ec)
	{
		var_a917350c notsolid();
		var_a917350c connectpaths();
	}
	var_4562cbcf = GetEntArray("wing_slanty_collision", "targetname");
	foreach(e_clip in var_4562cbcf)
	{
		e_clip notsolid();
		e_clip connectpaths();
	}
	var_4562cbcf = GetEntArray("wing_collision_upright", "targetname");
	foreach(e_clip in var_4562cbcf)
	{
		e_clip notsolid();
		e_clip connectpaths();
	}
}

/*
	Name: function_3535efe1
	Namespace: namespace_94c82dbc
	Checksum: 0x986659A9
	Offset: 0xAB58
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_3535efe1()
{
	var_60571323 = GetEntArray("post_collapse_collision", "targetname");
	foreach(e_clip in var_60571323)
	{
		e_clip notsolid();
		e_clip connectpaths();
	}
	function_4bc5cb50();
}

/*
	Name: function_8ad4d7c
	Namespace: namespace_94c82dbc
	Checksum: 0x80E1D32F
	Offset: 0xAC40
	Size: 0x221
	Parameters: 0
	Flags: None
*/
function function_8ad4d7c()
{
	var_64dd962c = GetEntArray("palace_corner_blocker", "targetname");
	foreach(e_debris in var_64dd962c)
	{
		e_debris notsolid();
		e_debris connectpaths();
		e_debris Hide();
	}
	a_nd_nodes = GetNodeArray("qt_plaza_palace_corner_cover", "script_noteworthy");
	foreach(node in a_nd_nodes)
	{
		SetEnableNode(node, 0);
	}
	wait(0.1);
	foreach(node in a_nd_nodes)
	{
		SetEnableNode(node, 1);
	}
}

/*
	Name: function_5cb0384
	Namespace: namespace_94c82dbc
	Checksum: 0xD86C4CBE
	Offset: 0xAE70
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_5cb0384()
{
	var_ff82325f = GetEnt("outro_shot_010_shadow", "targetname");
	var_ff82325f Hide();
	var_ff82325f = GetEnt("outro_shot_020_shadow", "targetname");
	var_ff82325f Hide();
	var_ff82325f = GetEnt("outro_shot_040_shadow", "targetname");
	var_ff82325f Hide();
}

/*
	Name: function_3ec052d8
	Namespace: namespace_94c82dbc
	Checksum: 0xB2DF3824
	Offset: 0xAF30
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3ec052d8()
{
	scene::add_scene_func("p7_fxanim_cp_ramses_quadtank_statue_bundle", &function_5fea384c, "play");
	level scene::Play("p7_fxanim_cp_ramses_quadtank_statue_bundle");
}

/*
	Name: function_5fea384c
	Namespace: namespace_94c82dbc
	Checksum: 0x7463B76E
	Offset: 0xAF90
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_5fea384c()
{
	function_b78937aa("s_statue_pos");
	var_172dde81 = GetEnt("quadtank_statue", "targetname");
	var_172dde81 thread function_70435b1b();
	var_172dde81 thread function_373383b0();
}

/*
	Name: function_70435b1b
	Namespace: namespace_94c82dbc
	Checksum: 0x41D81BF7
	Offset: 0xB010
	Size: 0x3F3
	Parameters: 0
	Flags: None
*/
function function_70435b1b()
{
	self waittill("hash_70435b1b");
	function_b78937aa("bird_wing_impact");
	var_4a38f1ec = GetEntArray("wing_carver_upright", "targetname");
	foreach(var_a917350c in var_4a38f1ec)
	{
		var_a917350c solid();
		var_a917350c disconnectpaths();
	}
	var_4562cbcf = GetEntArray("wing_collision_upright", "targetname");
	foreach(e_clip in var_4562cbcf)
	{
		e_clip solid();
		e_clip disconnectpaths();
	}
	var_a7f11dbf = GetEntArray("trig_kill_bird_wing", "targetname");
	a_ai = GetAIArray();
	var_b857e377 = ArrayCombine(a_ai, level.players, 1, 0);
	foreach(e_actor in var_b857e377)
	{
		if(e_actor util::is_hero())
		{
			break;
		}
		if(e_actor === level.var_dbed449f)
		{
			e_actor DoDamage(e_actor.health, e_actor.origin);
		}
		foreach(t_kill in var_a7f11dbf)
		{
			if(e_actor istouching(t_kill))
			{
				if(isPlayer(e_actor))
				{
					e_actor DoDamage(e_actor.health, e_actor.origin);
					break;
					continue;
				}
				e_actor kill();
				break;
			}
		}
	}
}

/*
	Name: function_373383b0
	Namespace: namespace_94c82dbc
	Checksum: 0xE94E3EF2
	Offset: 0xB410
	Size: 0x4AB
	Parameters: 0
	Flags: None
*/
function function_373383b0()
{
	self waittill("hash_373383b0");
	function_b78937aa("bird_body_impact");
	var_4a38f1ec = GetEntArray("wing_carver_slanty", "targetname");
	foreach(var_a917350c in var_4a38f1ec)
	{
		var_a917350c solid();
		var_a917350c disconnectpaths();
	}
	var_4562cbcf = GetEntArray("wing_slanty_collision", "targetname");
	foreach(e_clip in var_4562cbcf)
	{
		e_clip solid();
		e_clip disconnectpaths();
	}
	var_21868e86 = GetNodeArray("statue_fall_cover_nodes", "targetname");
	foreach(var_7d824fa6 in var_21868e86)
	{
		SetEnableNode(var_7d824fa6, 0);
	}
	var_a7f11dbf = GetEntArray("trig_kill_bird_body", "targetname");
	a_ai = GetAIArray();
	var_b857e377 = ArrayCombine(a_ai, level.players, 1, 0);
	foreach(e_actor in var_b857e377)
	{
		if(e_actor util::is_hero())
		{
			break;
		}
		if(e_actor === level.var_dbed449f)
		{
			e_actor DoDamage(e_actor.health, e_actor.origin);
		}
		foreach(t_kill in var_a7f11dbf)
		{
			if(e_actor istouching(t_kill))
			{
				if(isPlayer(e_actor))
				{
					e_actor DoDamage(e_actor.health, e_actor.origin);
					break;
					continue;
				}
				e_actor kill();
				break;
			}
		}
	}
}

/*
	Name: function_ba0708a2
	Namespace: namespace_94c82dbc
	Checksum: 0x94C07C7A
	Offset: 0xB8C8
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_ba0708a2()
{
	level thread function_6fde5d65();
	var_b0b3743d = spawner::simple_spawn_single("third_quadtank");
	level.var_ba0708a2 = var_b0b3743d;
	var_b0b3743d SetThreatBiasGroup("NRC_Quadtank");
	var_b0b3743d thread function_180ef4c7();
	level flag::set("quad_tank_3_spawned");
	objectives::set("cp_level_ramses_destroy_quadtank", var_b0b3743d);
	level thread namespace_a6a248fc::function_63054139();
	level thread function_7ced451a();
	var_2d14a2a4 = GetEntArray("oh_yeah_explosion", "targetname");
	foreach(e_piece in var_2d14a2a4)
	{
		e_piece delete();
	}
	scene::add_scene_func("p7_fxanim_cp_ramses_quadtank_plaza_glass_building_bundle", &function_b8afae40, "done");
	level thread scene::Play("p7_fxanim_cp_ramses_quadtank_plaza_glass_building_bundle");
	function_b78937aa("glass_building_pos");
	var_b0b3743d thread function_6fd11e63();
	level flag::wait_till("third_quadtank_killed");
	objectives::complete("cp_level_ramses_destroy_quadtank");
	level notify("hash_a5b3808b");
	spawn_manager::disable("qt2_nrc_robot_rushers_sm");
	level notify("hash_941e824f");
	spawn_manager::disable("sm_nrc_quadtank");
	function_f9e42df5();
}

/*
	Name: function_f9e42df5
	Namespace: namespace_94c82dbc
	Checksum: 0x3B8F3F85
	Offset: 0xBB90
	Size: 0x6E3
	Parameters: 1
	Flags: None
*/
function function_f9e42df5(var_fd827376)
{
	if(!isdefined(var_fd827376))
	{
		var_fd827376 = 0;
	}
	level thread scene::init("cin_ram_08_gettofreeway_3rd_sh010");
	namespace_38256252::function_84fd481b();
	namespace_38256252::function_c31ee41b();
	level thread util::function_d8eaed3d(4, 1);
	if(isdefined(level.var_dbed449f) && level.var_dbed449f.targetname === "third_quadtank_ai")
	{
		wait(15);
	}
	wait(3);
	level clientfield::set("sndIGCsnapshot", 4);
	util::screen_fade_out(3);
	Array::run_all(level.activePlayers, &EnableInvulnerability);
	function_e2d7342();
	function_f43eaed9();
	level thread function_e1f59e09();
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 dialog::say("hend_that_s_the_last_of_1", 0.5);
	wait(1);
	level clientfield::set("sndIGCsnapshot", 0);
	level flag::set("qt_plaza_outro_igc_started");
	level thread namespace_a6a248fc::function_ff483e3c();
	level thread audio::unlockFrontendMusic("mus_ramses_battle_intro");
	level thread scene::init("p7_fxanim_cp_ramses_flyover_plaza_cinematic_bundle");
	vehicle::add_spawn_function("qt_plaza_outro_vtol_flyovers", &function_cda7e0dc);
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh010", &function_3ac3f1f8, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh020", &function_1c433532, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh010", &function_edfa8509, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh010", &function_7f81dc0a, "done");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh020", &function_b54fb58e, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh030", &function_a5697ed9, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh020", &function_91033548, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh030", &function_39b3e8bb, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh020", &function_5e9771a6, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh020", &function_68ec61cd, "done");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh040", &function_e31876ac, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh040", &function_40ffea00, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh050", &function_892c9e40, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh030", &function_b8670a1c, "play");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh030", &function_ed468ba2, "done");
	scene::add_scene_func("cin_ram_08_gettofreeway_3rd_sh320", &function_fdd71532, "play");
	level clientfield::set("qt_plaza_outro_exposure", 1);
	level clientfield::set("gameplay_started", 0);
	if(isdefined(level.BZM_RAMSESDialogue8Callback))
	{
		level thread [[level.BZM_RAMSESDialogue8Callback]]();
	}
	util::delay(1, undefined, &util::screen_fade_in, 1);
	Array::run_all(level.activePlayers, &DisableInvulnerability);
	level thread scene::Play("cin_ram_08_gettofreeway_3rd_sh010");
	if(!level flag::get("qt_plaza_statue_destroyed"))
	{
		level scene::skipto_end("p7_fxanim_cp_ramses_quadtank_statue_bundle");
	}
	if(!level flag::get("qt_plaza_rocket_building_destroyed"))
	{
		level scene::skipto_end("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle");
	}
	if(!level flag::get("qt_plaza_mobile_wall_destroyed"))
	{
		level scene::skipto_end("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
	}
}

/*
	Name: function_e2d7342
	Namespace: namespace_94c82dbc
	Checksum: 0xFCB4E438
	Offset: 0xC280
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_e2d7342()
{
	var_aafd7555 = 0;
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.hijacked_vehicle_entity))
		{
			var_aafd7555 = 1;
			player.hijacked_vehicle_entity usevehicle(player, 0);
		}
	}
	if(var_aafd7555)
	{
		wait(5);
	}
	else
	{
		wait(2);
	}
}

/*
	Name: function_3ac3f1f8
	Namespace: namespace_94c82dbc
	Checksum: 0xC278FE36
	Offset: 0xC368
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_3ac3f1f8(a_ents)
{
	trigger::use("trigger_play_corpse_scenes_initial");
}

/*
	Name: function_1c433532
	Namespace: namespace_94c82dbc
	Checksum: 0x625A76DC
	Offset: 0xC398
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_1c433532(a_ents)
{
	trigger::use("trigger_play_corpse_scenes_sh030");
}

/*
	Name: function_b54fb58e
	Namespace: namespace_94c82dbc
	Checksum: 0xB3B3AE77
	Offset: 0xC3C8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_b54fb58e(a_ents)
{
	function_9e3608e3("quadtank_statue_static2");
	level clientfield::set("hide_statue_rubble", 1);
}

/*
	Name: function_a5697ed9
	Namespace: namespace_94c82dbc
	Checksum: 0xA0B999E4
	Offset: 0xC418
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_a5697ed9(a_ents)
{
	wait(0.05);
	function_6ddd4fa4("quadtank_statue_static2");
	level clientfield::set("hide_statue_rubble", 0);
}

/*
	Name: function_fdd71532
	Namespace: namespace_94c82dbc
	Checksum: 0xAA86C84B
	Offset: 0xC470
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_fdd71532(a_ents)
{
	level waittill("level_fade_out");
	level clientfield::set("sndIGCsnapshot", 4);
	level.var_6e1075a2 = 0;
	if(!scene::is_skipping_in_progress())
	{
		util::screen_fade_out(0.9, "black", "end_level_fade");
	}
	if(level.skipto_point !== "dev_qt_plaza_outro")
	{
		skipto::function_be8adfb8("quad_tank_plaza");
	}
	else
	{
		skipto::function_be8adfb8("dev_qt_plaza_outro");
	}
}

/*
	Name: function_91033548
	Namespace: namespace_94c82dbc
	Checksum: 0x824515F3
	Offset: 0xC550
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_91033548(a_ents)
{
	trigger::use("vtol_flyover_spawn_sh020");
	level thread scene::Play("p7_fxanim_cp_ramses_flyover_plaza_cinematic_bundle");
	level waittill("hash_67d3927a");
	trigger::use("vtol_flyover_spawn_sh020_part_2");
	level waittill("hash_8dd60ce3");
	trigger::use("vtol_flyover_spawn_sh020_part_3");
}

/*
	Name: function_39b3e8bb
	Namespace: namespace_94c82dbc
	Checksum: 0xFC2309C5
	Offset: 0xC5F0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_39b3e8bb(a_ents)
{
	trigger::use("vtol_flyover_spawn_sh030");
	level waittill("hash_816e1e05");
	trigger::use("vtol_flyover_spawn_sh030_part_2");
}

/*
	Name: function_cda7e0dc
	Namespace: namespace_94c82dbc
	Checksum: 0x71A6C0E9
	Offset: 0xC648
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_cda7e0dc()
{
	self endon("death");
	var_f6ae891b = [];
	a_s_structs = struct::get_array(self.target, "targetname");
	foreach(struct in a_s_structs)
	{
		e_model = spawn("script_model", struct.origin);
		e_model.angles = struct.angles;
		e_model SetModel(struct.model);
		e_model LinkTo(self);
		var_f6ae891b[var_f6ae891b.size] = e_model;
	}
	self waittill("reached_end_node");
	Array::run_all(var_f6ae891b, &delete);
	self delete();
}

/*
	Name: function_b8670a1c
	Namespace: namespace_94c82dbc
	Checksum: 0xF65609FF
	Offset: 0xC7E8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_b8670a1c(a_ents)
{
	level.sun_shadow_split_distance = 0;
	level.var_ac69c49c = level.sun_shadow_split_distance;
	level util::set_sun_shadow_split_distance(5000);
}

/*
	Name: function_ed468ba2
	Namespace: namespace_94c82dbc
	Checksum: 0xC5916595
	Offset: 0xC838
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_ed468ba2(a_ents)
{
	if(isdefined(level.var_ac69c49c))
	{
		level util::set_sun_shadow_split_distance(level.var_ac69c49c);
	}
}

/*
	Name: function_edfa8509
	Namespace: namespace_94c82dbc
	Checksum: 0x6139D7A7
	Offset: 0xC878
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_edfa8509(a_ents)
{
	var_ff82325f = GetEnt("outro_shot_010_shadow", "targetname");
	var_ff82325f show();
}

/*
	Name: function_7f81dc0a
	Namespace: namespace_94c82dbc
	Checksum: 0xB3CE29C0
	Offset: 0xC8D0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_7f81dc0a(a_ents)
{
	var_ff82325f = GetEnt("outro_shot_010_shadow", "targetname");
	var_ff82325f Hide();
}

/*
	Name: function_5e9771a6
	Namespace: namespace_94c82dbc
	Checksum: 0xA7BB3B79
	Offset: 0xC928
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_5e9771a6(a_ents)
{
	var_ff82325f = GetEnt("outro_shot_020_shadow", "targetname");
	var_ff82325f show();
}

/*
	Name: function_68ec61cd
	Namespace: namespace_94c82dbc
	Checksum: 0x14C0842F
	Offset: 0xC980
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_68ec61cd(a_ents)
{
	var_ff82325f = GetEnt("outro_shot_020_shadow", "targetname");
	var_ff82325f Hide();
}

/*
	Name: function_e31876ac
	Namespace: namespace_94c82dbc
	Checksum: 0x710DD588
	Offset: 0xC9D8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_e31876ac(a_ents)
{
	var_ff82325f = GetEnt("outro_shot_040_shadow", "targetname");
	var_ff82325f show();
}

/*
	Name: function_40ffea00
	Namespace: namespace_94c82dbc
	Checksum: 0x7BEF09E2
	Offset: 0xCA30
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_40ffea00(a_ents)
{
	function_9e3608e3("quadtank_statue_static2");
	var_64dd962c = GetEntArray("palace_corner_blocker", "targetname");
	foreach(e_debris in var_64dd962c)
	{
		e_debris delete();
	}
}

/*
	Name: function_892c9e40
	Namespace: namespace_94c82dbc
	Checksum: 0xB0FA33F1
	Offset: 0xCB10
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_892c9e40(a_ents)
{
	function_6ddd4fa4("quadtank_statue_static2");
}

/*
	Name: function_180ef4c7
	Namespace: namespace_94c82dbc
	Checksum: 0xB70D1AB5
	Offset: 0xCB40
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_180ef4c7()
{
	self waittill("death");
	level flag::set("third_quadtank_killed");
}

/*
	Name: function_7ced451a
	Namespace: namespace_94c82dbc
	Checksum: 0x4F5580BE
	Offset: 0xCB78
	Size: 0x1DD
	Parameters: 0
	Flags: None
*/
function function_7ced451a()
{
	startPosition = struct::get("qt_plaza_new_bldg_phalanx_start", "targetname");
	endPosition = struct::get("qt_plaza_new_bldg_phalanx_end", "targetname");
	var_88fc10b2 = GetEnt("nrc_phalanx_spawner_cqb", "targetname", 0);
	var_62f99649 = GetEnt("nrc_phalanx_spawner_assault", "targetname", 0);
	function_9b385ca5();
	phalanx = RobotPhalanx;
	Initialize(phalanx, "phalanx_column", startPosition.origin, endPosition.origin, 2, 4, var_88fc10b2);
	level.phalanx = phalanx;
	level thread function_cc1c9255();
	robots = ArrayCombine(ArrayCombine(phalanx.tier1Robots_, phalanx.tier2Robots_, 0, 0), phalanx.tier3Robots_, 0, 0);
	ai::waittill_dead(robots, 6);
	spawn_manager::enable("sm_nrc_quadtank3_robots");
	level.phalanx = undefined;
}

/*
	Name: function_cc1c9255
	Namespace: namespace_94c82dbc
	Checksum: 0x5E353CA5
	Offset: 0xCD60
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_cc1c9255()
{
	wait(15);
	if(isdefined(level.phalanx))
	{
		level.phalanx RobotPhalanx::ScatterPhalanx();
	}
}

/*
	Name: function_f12c1985
	Namespace: namespace_94c82dbc
	Checksum: 0xE744EB53
	Offset: 0xCDA0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_f12c1985()
{
	self endon("death");
	var_56a9d451 = GetEnt(self.target, "targetname");
	self SetGoal(var_56a9d451, 1);
	self thread function_dd6f7fa6();
}

/*
	Name: function_dd6f7fa6
	Namespace: namespace_94c82dbc
	Checksum: 0xBCEE21A4
	Offset: 0xCE18
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_dd6f7fa6()
{
	self endon("death");
	trigger::wait_till("qt_plaza_wasp_vo_trigger", "targetname", self);
	level notify("hash_b2673901");
}

/*
	Name: function_cd53f16b
	Namespace: namespace_94c82dbc
	Checksum: 0x8333071B
	Offset: 0xCE68
	Size: 0x1CB
	Parameters: 3
	Flags: None
*/
function function_cd53f16b(n_min_wait, n_max_wait, var_eadffde8)
{
	level endon(self.targetname + "_wave_spawner_stop");
	/#
		Assert(n_min_wait <= n_max_wait, "Dev Block strings are not supported");
	#/
	/#
		Assert(var_eadffde8 <= self.sm_active_count_max, "Dev Block strings are not supported");
	#/
	level flag::wait_till("all_players_spawned");
	while(isdefined(self) && level.players.size == 1)
	{
		while(isdefined(self))
		{
			var_f3e62b98 = spawn_manager::get_ai(self.targetname);
			if(isdefined(var_f3e62b98.size) && var_f3e62b98.size < self.sm_active_count_max)
			{
				wait(0.1);
				continue;
			}
			else
			{
				spawn_manager::disable(self.targetname);
				break;
			}
		}
		while(isdefined(self))
		{
			var_f3e62b98 = spawn_manager::get_ai(self.targetname);
			if(isdefined(var_f3e62b98.size) && var_f3e62b98.size <= var_eadffde8)
			{
				wait(RandomFloatRange(n_min_wait, n_max_wait));
				spawn_manager::enable(self.targetname);
				break;
			}
			else
			{
				wait(0.1);
			}
		}
	}
}

/*
	Name: function_147b8da0
	Namespace: namespace_94c82dbc
	Checksum: 0x44F13CBA
	Offset: 0xD040
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_147b8da0()
{
	level.var_dbed449f = self;
	spawn_manager::enable("sm_nrc_berm_rpg", 1);
	self thread function_e07edd0e();
	self.threatbias = 3000;
	level thread function_e9bc4a8a();
	if(self.targetname !== "third_quadtank_ai")
	{
		objectives::complete("cp_level_ramses_destroy_quadtank");
	}
}

/*
	Name: function_e07edd0e
	Namespace: namespace_94c82dbc
	Checksum: 0x5D854CD7
	Offset: 0xD0E0
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_e07edd0e()
{
	self waittill("death");
	level.var_dbed449f = undefined;
	level.var_efe14c34 = undefined;
}

/*
	Name: function_3460d45c
	Namespace: namespace_94c82dbc
	Checksum: 0x6D330C9A
	Offset: 0xD110
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_3460d45c()
{
	self endon("disconnect");
	while(1)
	{
		self waittill("ClonedEntity", var_52b4a338);
		var_52b4a338 SetThreatBiasGroup("PlayerVehicles");
		if(isdefined(var_52b4a338.archetype) && var_52b4a338.archetype == "quadtank")
		{
			level.var_efe14c34 = self;
		}
	}
}

/*
	Name: function_e9bc4a8a
	Namespace: namespace_94c82dbc
	Checksum: 0x3F745E6D
	Offset: 0xD1A8
	Size: 0x3FB
	Parameters: 0
	Flags: None
*/
function function_e9bc4a8a()
{
	level endon("hash_a4b7fa05");
	level.var_dbed449f endon("death");
	if(flag::get("qt_plaza_theater_destroyed"))
	{
		return;
	}
	level thread function_d283a64d();
	level thread function_5aeb8678();
	level flag::wait_till("qt_plaza_theater_destroyed");
	scene::add_scene_func("p7_fxanim_cp_ramses_cinema_collapse_bundle", &function_c56ab13c, "play");
	level thread scene::Play("p7_fxanim_cp_ramses_cinema_collapse_bundle");
	function_4911582b();
	exploder::exploder_stop("LGT_theater");
	spawn_manager::disable("nrc_theater_sm");
	spawn_manager::disable("sm_egypt_theater");
	e_trigger = GetEnt("trigger_cinema_collapse", "targetname");
	level thread function_21deb0d2(e_trigger);
	var_a8a64a67 = GetNodeArray("qt_plaza_theater_cover_node", "script_noteworthy");
	foreach(node in var_a8a64a67)
	{
		SetEnableNode(node, 0);
	}
	var_60571323 = GetEntArray("post_collapse_collision", "targetname");
	foreach(e_clip in var_60571323)
	{
		e_clip solid();
		e_clip disconnectpaths();
	}
	var_2ac13e86 = GetEntArray("pre_collapse_collision", "targetname");
	foreach(e_clip in var_2ac13e86)
	{
		e_clip notsolid();
	}
	function_b78937aa("theater_fxanim_org");
	Array::run_all(GetEntArray("qt_plaza_theater_ammo", "targetname"), &delete);
}

/*
	Name: function_c56ab13c
	Namespace: namespace_94c82dbc
	Checksum: 0x27FC06F4
	Offset: 0xD5B0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_c56ab13c(a_ents)
{
	var_aed142c5 = a_ents["cinema_collapse"];
	var_aed142c5 thread function_a77bfc56();
	var_aed142c5 thread function_4b75170f();
	var_aed142c5 thread function_fd1a064a();
}

/*
	Name: function_21deb0d2
	Namespace: namespace_94c82dbc
	Checksum: 0xB6D619FD
	Offset: 0xD628
	Size: 0x3A1
	Parameters: 2
	Flags: None
*/
function function_21deb0d2(e_trigger, var_914edfb2)
{
	if(!isdefined(var_914edfb2))
	{
		var_914edfb2 = 0;
	}
	a_ai = GetAIArray();
	foreach(ai in a_ai)
	{
		if(isdefined(level.var_dbed449f) && ai == level.var_dbed449f)
		{
			if(var_914edfb2 && ai istouching(e_trigger))
			{
				ai DoDamage(ai.health, ai.origin);
				continue;
			}
			else
			{
				continue;
			}
		}
		if(isdefined(ai.archetype) && ai.archetype == "quadtank")
		{
			if(var_914edfb2 && ai istouching(e_trigger))
			{
				ai DoDamage(ai.health, ai.origin);
				continue;
			}
			else
			{
				continue;
			}
		}
		if(ai istouching(e_trigger) && !ai util::is_hero())
		{
			ai kill();
		}
	}
	a_spots = skipto::function_3529c409("cinema_teleport_outside");
	foreach(player in level.players)
	{
		if(player istouching(e_trigger))
		{
			if(isdefined(player.hijacked_vehicle_entity) && a_spots.size > 0)
			{
				player thread function_2ea9c430(a_spots[0]);
				ArrayRemoveIndex(a_spots, 0);
			}
			else
			{
				player DoDamage(player.health, player.origin);
			}
		}
		if(isdefined(player.hijacked_vehicle_entity) && player.hijacked_vehicle_entity istouching(e_trigger))
		{
			player.hijacked_vehicle_entity usevehicle(player, 0);
		}
	}
}

/*
	Name: function_2ea9c430
	Namespace: namespace_94c82dbc
	Checksum: 0xDC6E6DFA
	Offset: 0xD9D8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_2ea9c430(s_teleport_spot)
{
	self endon("death");
	self waittill("hash_c68b15c8");
	wait(0.05);
	wait(0.05);
	self SetOrigin(s_teleport_spot.origin);
	self SetPlayerAngles(s_teleport_spot.angles);
}

/*
	Name: function_d283a64d
	Namespace: namespace_94c82dbc
	Checksum: 0x3ECDBEF1
	Offset: 0xDA58
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_d283a64d()
{
	level endon("hash_8ca69c57");
	level.var_dbed449f endon("death");
	e_trigger = GetEnt("trigger_cinema_collapse", "targetname");
	while(1)
	{
		e_trigger waittill("damage", n_damage, attacker, direction_vec, point, type, modelName, tagName, partName, weapon, iDFlags);
		if(attacker === level.var_efe14c34)
		{
			if(type === "MOD_PROJECTILE" || type === "MOD_PROJECTILE_SPLASH")
			{
				level flag::set("qt_plaza_theater_destroyed");
				e_trigger delete();
				break;
			}
		}
	}
}

/*
	Name: function_5aeb8678
	Namespace: namespace_94c82dbc
	Checksum: 0xB7D64A17
	Offset: 0xDBB0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_5aeb8678()
{
	level endon("hash_8ca69c57");
	level.var_dbed449f endon("death");
	while(1)
	{
		level.var_dbed449f waittill("weapon_fired", projectile);
		projectile thread function_edf54d14();
	}
}

/*
	Name: function_edf54d14
	Namespace: namespace_94c82dbc
	Checksum: 0xF9577D6A
	Offset: 0xDC18
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_edf54d14()
{
	self endon("death");
	e_trigger = GetEnt("trigger_cinema_collapse", "targetname");
	while(1)
	{
		if(self istouching(e_trigger))
		{
			self notify("death");
		}
		wait(0.05);
	}
}

/*
	Name: function_a77bfc56
	Namespace: namespace_94c82dbc
	Checksum: 0x89C87B23
	Offset: 0xDC98
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_a77bfc56()
{
	self waittill("hash_9290cf69");
	e_trigger = GetEnt("theater_fxanim_kill_trigger_left", "targetname");
	level thread function_21deb0d2(e_trigger, 1);
	function_b78937aa("theater_fxanim_left_debris");
}

/*
	Name: function_4b75170f
	Namespace: namespace_94c82dbc
	Checksum: 0x5ED8A29F
	Offset: 0xDD18
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_4b75170f()
{
	self waittill("hash_ddd8ce9c");
	e_trigger = GetEnt("theater_fxanim_kill_trigger_right", "targetname");
	level thread function_21deb0d2(e_trigger, 1);
	function_b78937aa("theater_fxanim_right_debris");
}

/*
	Name: function_fd1a064a
	Namespace: namespace_94c82dbc
	Checksum: 0x5FD443FA
	Offset: 0xDD98
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_fd1a064a()
{
	self waittill("hash_2399452d");
	e_trigger = GetEnt("theater_fxanim_kill_trigger_center", "targetname");
	level thread function_21deb0d2(e_trigger, 1);
	function_b78937aa("theater_fxanim_center_debris");
}

/*
	Name: function_45140126
	Namespace: namespace_94c82dbc
	Checksum: 0x5711A905
	Offset: 0xDE18
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_45140126()
{
	level endon("hash_a4b7fa05");
	while(1)
	{
		e_trigger = GetEnt("test_quadtank_damage", "targetname");
		e_trigger waittill("trigger", ent);
		if(isdefined(level.var_efe14c34) && ent == level.var_efe14c34)
		{
			var_62c010e3 = GetEntArray("physics_test_objects", "targetname");
			foreach(e_obj in var_62c010e3)
			{
				e_obj PhysicsLaunch(e_obj.origin, VectorScale((0, 0, 1), 20));
			}
		}
	}
}

/*
	Name: function_fdcd27b4
	Namespace: namespace_94c82dbc
	Checksum: 0x13F9DECC
	Offset: 0xDF70
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_fdcd27b4()
{
	level thread scene::Play("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
	function_b78937aa("mobile_wall_fxanim");
	var_366ecd15 = GetEntArray("mobile_wall_explosion_hidden", "targetname");
	foreach(var_fff2323a in var_366ecd15)
	{
		var_fff2323a Hide();
	}
}

/*
	Name: function_899f8822
	Namespace: namespace_94c82dbc
	Checksum: 0xB0D6ADA6
	Offset: 0xE068
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_899f8822()
{
	level clientfield::set("vtol_igc_fxanim_hunter", 1);
}

/*
	Name: function_4492caaa
	Namespace: namespace_94c82dbc
	Checksum: 0x9FF14170
	Offset: 0xE098
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4492caaa()
{
	level clientfield::set("qt_plaza_fxanim_hunters", 1);
}

/*
	Name: function_e1f59e09
	Namespace: namespace_94c82dbc
	Checksum: 0xD724F356
	Offset: 0xE0C8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e1f59e09()
{
	level clientfield::set("qt_plaza_fxanim_hunters", 0);
}

/*
	Name: function_4bc5cb50
	Namespace: namespace_94c82dbc
	Checksum: 0x19FC100D
	Offset: 0xE0F8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4bc5cb50()
{
	level clientfield::set("theater_fxanim_swap", 1);
	Array::run_all(GetEntArray("destroyed_interior", "targetname"), &Hide);
}

/*
	Name: function_4911582b
	Namespace: namespace_94c82dbc
	Checksum: 0x37714FB9
	Offset: 0xE168
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_4911582b()
{
	level clientfield::set("theater_fxanim_swap", 0);
	var_f6ae891b = GetEntArray("pristine_interior", "targetname");
	foreach(e_model in var_f6ae891b)
	{
		e_model Hide();
	}
	Array::run_all(GetEntArray("destroyed_interior", "targetname"), &show);
}

/*
	Name: function_b78937aa
	Namespace: namespace_94c82dbc
	Checksum: 0xC092490
	Offset: 0xE288
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_b78937aa(str_targetname)
{
	s_pos = struct::get(str_targetname, "targetname");
	foreach(e_player in level.players)
	{
		n_distance_squared = Distance2DSquared(s_pos.origin, e_player.origin);
		if(n_distance_squared < 1000000)
		{
			e_player PlayRumbleOnEntity("tank_damage_heavy_mp");
			Earthquake(0.65, 0.7, e_player.origin, 128);
			if(n_distance_squared < 62500)
			{
				e_player shellshock("default", 1.5);
			}
		}
	}
}

/*
	Name: function_a9213e0b
	Namespace: namespace_94c82dbc
	Checksum: 0xE1BA638F
	Offset: 0xE410
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_a9213e0b()
{
	var_c9fd3802 = [];
	var_c9fd3802[0] = "hend_grab_some_cover_go_0";
	var_c9fd3802[1] = "hend_get_outta_there_fin_0";
	str_line = Array::random(var_c9fd3802);
	level.var_2fd26037 thread dialog::say(str_line);
}

/*
	Name: function_80a9f826
	Namespace: namespace_94c82dbc
	Checksum: 0x6A11D41
	Offset: 0xE490
	Size: 0x18F
	Parameters: 0
	Flags: None
*/
function function_80a9f826()
{
	level endon("hash_8bc106af");
	var_83e15cc6 = [];
	var_83e15cc6[0] = "hend_bring_down_that_son_0";
	var_83e15cc6[1] = "hend_that_quad_s_armed_wi_0";
	var_83e15cc6[2] = "hend_quad_s_rockets_are_g_0";
	var_864f1072 = [];
	var_864f1072[0] = "kane_take_out_that_quad_b_0";
	var_864f1072[1] = "kane_that_quad_s_rockets_0";
	var_e6e0d46e = undefined;
	var_36a7c200 = undefined;
	while(1)
	{
		self waittill("trophy_system_disabled");
		if(math::cointoss())
		{
			str_line = function_46197f76(var_83e15cc6, var_e6e0d46e);
			level.var_2fd26037 dialog::say(str_line);
			var_e6e0d46e = str_line;
		}
		else
		{
			str_line = function_46197f76(var_864f1072, var_36a7c200);
			level dialog::remote(str_line);
			var_36a7c200 = str_line;
		}
		wait(RandomFloatRange(45, 60));
	}
}

/*
	Name: function_f922378a
	Namespace: namespace_94c82dbc
	Checksum: 0x5E324516
	Offset: 0xE628
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_f922378a()
{
	level endon("hash_8bc106af");
	level waittill("hash_f922378a");
	var_c9fd3802 = [];
	var_c9fd3802[0] = "esl3_amws_incoming_0";
	var_c9fd3802[1] = "esl4_amws_inbound_grab_s_0";
	var_c9fd3802[2] = "esl1_evasives_amws_inbou_0";
	var_c9fd3802[3] = "egy2_spotted_enemy_amw_mo_0";
	var_c9fd3802[4] = "esl3_eyes_on_hostile_amw_0";
	var_45e7b1aa = undefined;
	while(1)
	{
		do
		{
			wait(0.15);
			var_df8a7392 = spawn_manager::get_ai("qt1_nrc_amws_sm");
		}
		while(!var_df8a7392.size < 1);
		a_ai_1 = spawn_manager::get_ai("sm_egypt_siegebot");
		a_ai_2 = spawn_manager::get_ai("sm_egypt_quadtank");
		a_ai = ArrayCombine(a_ai_1, a_ai_2, 1, 0);
		if(a_ai.size > 0)
		{
			var_58c5eb41 = undefined;
			a_ai = Array::randomize(a_ai);
			foreach(ai in a_ai)
			{
				if(isalive(ai) && ai.is_talking !== 1)
				{
					var_58c5eb41 = ai;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				str_line = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 dialog::say(str_line);
				var_45e7b1aa = str_line;
				wait(RandomFloatRange(30, 45));
			}
			else
			{
				wait(1);
			}
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_c09bd13a
	Namespace: namespace_94c82dbc
	Checksum: 0xCADA874E
	Offset: 0xE900
	Size: 0x48B
	Parameters: 0
	Flags: None
*/
function function_c09bd13a()
{
	level endon("hash_9d9cd8de");
	var_c9fd3802 = [];
	var_c9fd3802[0] = "esl1_hostile_raps_moving_0";
	var_c9fd3802[1] = "egy2_look_out_raps_inco_0";
	var_c9fd3802[2] = "esl3_take_cover_raps_inb_0";
	var_c9fd3802[3] = "esl4_hostile_raps_inbound_0";
	var_c9fd3802[4] = "esl1_enemy_raps_coming_in_0";
	var_c9fd3802[5] = "egy2_hostile_raps_inbound_0";
	var_c9fd3802[6] = "esl3_enemy_raps_moving_on_0";
	var_c9fd3802[7] = "esl4_hostile_raps_inbound_1";
	var_c9fd3802[8] = "esl1_raps_coming_in_find_0";
	var_c9fd3802[9] = "egy2_hostile_raps_look_o_0";
	var_3b620724 = [];
	var_3b620724[0] = "khal_raps_incoming_0";
	var_3b620724[1] = "khal_raps_move_0";
	var_3b620724[2] = "khal_find_cover_raps_in_0";
	var_3b620724[3] = "khal_look_out_raps_0";
	var_3b620724[4] = "khal_enemy_raps_inbound_0";
	var_3b620724[5] = "khal_heads_up_enemy_rap_0";
	var_3b620724[6] = "khal_hostile_raps_inbound_0";
	var_3b620724[7] = "khal_enemy_raps_0";
	var_3b620724[8] = "khal_raps_moving_in_0";
	var_3b620724[9] = "khal_incoming_raps_0";
	var_45e7b1aa = undefined;
	var_9ef5f81e = undefined;
	level waittill("hash_c09bd13a");
	while(1)
	{
		if(math::cointoss())
		{
			str_line = function_46197f76(var_3b620724, var_9ef5f81e);
			level.var_9db406db dialog::say(str_line);
			var_9ef5f81e = str_line;
			wait(RandomFloatRange(30, 45));
		}
		else
		{
			wait(0.15);
			var_6ee22718 = spawner::get_ai_group_sentient_count("nrc_raps");
			a_ai_1 = spawn_manager::get_ai("sm_egypt_siegebot");
			a_ai_2 = spawn_manager::get_ai("sm_egypt_quadtank");
			a_ai = ArrayCombine(a_ai_1, a_ai_2, 1, 0);
			if(a_ai.size > 0)
			{
				var_58c5eb41 = undefined;
				a_ai = Array::randomize(a_ai);
				foreach(ai in a_ai)
				{
					if(isalive(ai) && ai.is_talking !== 1)
					{
						var_58c5eb41 = ai;
						break;
					}
				}
				if(isdefined(var_58c5eb41))
				{
					str_line = function_46197f76(var_c9fd3802, var_45e7b1aa);
					var_58c5eb41 dialog::say(str_line);
					var_45e7b1aa = str_line;
					wait(RandomFloatRange(30, 45));
				}
				else
				{
					wait(1);
				}
			}
			else
			{
				wait(1);
			}
		}
		do
		{
		}
		while(!var_6ee22718 < 1);
	}
}

/*
	Name: function_6fd11e63
	Namespace: namespace_94c82dbc
	Checksum: 0xCBA4A35
	Offset: 0xED98
	Size: 0x221
	Parameters: 0
	Flags: None
*/
function function_6fd11e63()
{
	level endon("hash_e0b2f224");
	level endon("hash_2d88f225");
	level endon("hash_9d9cd8de");
	var_83e15cc6 = [];
	var_83e15cc6[0] = "hend_focus_fire_on_that_a_0";
	var_83e15cc6[1] = "hend_finally_a_fair_fight_0";
	var_83e15cc6[2] = "hend_we_gotta_bring_down_0";
	var_83e15cc6[3] = "hend_bring_down_that_son_0";
	var_83e15cc6[4] = "hend_that_quad_s_armed_wi_0";
	var_83e15cc6[5] = "hend_quad_s_rockets_are_g_0";
	var_864f1072 = [];
	var_864f1072[0] = "kane_focus_fire_on_that_a_0";
	var_864f1072[1] = "kane_take_down_that_artil_0";
	var_864f1072[2] = "kane_you_gotta_bring_down_0";
	var_864f1072[3] = "kane_focus_weapon_fire_on_0";
	var_864f1072[4] = "kane_take_out_that_quad_b_0";
	var_864f1072[5] = "kane_that_quad_s_rockets_0";
	var_e6e0d46e = undefined;
	var_36a7c200 = undefined;
	while(1)
	{
		wait(RandomFloatRange(60, 90));
		if(math::cointoss())
		{
			str_line = function_46197f76(var_83e15cc6, var_e6e0d46e);
			level.var_2fd26037 dialog::say(str_line);
			var_e6e0d46e = str_line;
		}
		else
		{
			str_line = function_46197f76(var_864f1072, var_36a7c200);
			level dialog::remote(str_line);
			var_36a7c200 = str_line;
		}
	}
}

/*
	Name: function_df4c5d7e
	Namespace: namespace_94c82dbc
	Checksum: 0xC19392D7
	Offset: 0xEFC8
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_df4c5d7e()
{
	var_c9fd3802 = [];
	var_c9fd3802[0] = "esl1_go_push_them_back_0";
	var_c9fd3802[1] = "egy2_move_up_move_up_0";
	var_c9fd3802[2] = "esl3_move_up_take_new_po_0";
	var_c9fd3802[3] = "esl4_come_on_push_forwar_0";
	var_c9fd3802[4] = "esl1_let_s_move_let_s_mo_0";
	var_45e7b1aa = undefined;
	var_522ce6c6 = 0;
	wait(6);
	while(var_522ce6c6 < 2)
	{
		a_ai_1 = spawn_manager::get_ai("sm_egypt_siegebot");
		a_ai_2 = spawn_manager::get_ai("sm_egypt_quadtank");
		a_ai = ArrayCombine(a_ai_1, a_ai_2, 1, 0);
		if(a_ai.size > 0)
		{
			var_58c5eb41 = undefined;
			a_ai = Array::randomize(a_ai);
			foreach(ai in a_ai)
			{
				if(isalive(ai) && ai.is_talking !== 1)
				{
					var_58c5eb41 = ai;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				str_line = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 dialog::say(str_line);
				var_522ce6c6++;
				var_45e7b1aa = str_line;
				wait(RandomFloatRange(1.5, 2.5));
			}
			else
			{
				wait(1);
			}
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_9866bb6
	Namespace: namespace_94c82dbc
	Checksum: 0xDF3D63C8
	Offset: 0xF270
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_9866bb6()
{
	level endon("hash_9d9cd8de");
	var_c9fd3802 = [];
	var_c9fd3802[0] = "esl3_rpg_top_of_the_pala_0";
	var_c9fd3802[1] = "esl4_rpg_spotted_top_flo_0";
	var_45e7b1aa = undefined;
	var_522ce6c6 = 0;
	level waittill("hash_9866bb6");
	while(var_522ce6c6 < 2)
	{
		a_ai_1 = spawn_manager::get_ai("sm_egypt_siegebot");
		a_ai_2 = spawn_manager::get_ai("sm_egypt_quadtank");
		a_ai = ArrayCombine(a_ai_1, a_ai_2, 1, 0);
		if(a_ai.size > 0)
		{
			var_58c5eb41 = undefined;
			a_ai = Array::randomize(a_ai);
			foreach(ai in a_ai)
			{
				if(isalive(ai) && ai.is_talking !== 1)
				{
					var_58c5eb41 = ai;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				str_line = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 dialog::say(str_line);
				var_522ce6c6++;
				var_45e7b1aa = str_line;
				wait(RandomFloatRange(60, 120));
			}
			else
			{
				wait(1);
			}
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_8b6b15aa
	Namespace: namespace_94c82dbc
	Checksum: 0xA723A6F9
	Offset: 0xF4E0
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_8b6b15aa()
{
	level endon("hash_9d9cd8de");
	var_c9fd3802 = [];
	var_c9fd3802[0] = "esl1_rpg_top_of_the_berm_0";
	var_c9fd3802[1] = "egy2_look_out_rpg_on_the_0";
	var_45e7b1aa = undefined;
	var_522ce6c6 = 0;
	while(var_522ce6c6 < 2)
	{
		level waittill("hash_8b6b15aa");
		a_ai_1 = spawn_manager::get_ai("sm_egypt_siegebot");
		a_ai_2 = spawn_manager::get_ai("sm_egypt_quadtank");
		a_ai = ArrayCombine(a_ai_1, a_ai_2, 1, 0);
		if(a_ai.size > 0)
		{
			var_58c5eb41 = undefined;
			a_ai = Array::randomize(a_ai);
			foreach(ai in a_ai)
			{
				if(isalive(ai) && ai.is_talking !== 1)
				{
					var_58c5eb41 = ai;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				str_line = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 dialog::say(str_line);
				var_522ce6c6++;
				var_45e7b1aa = str_line;
				wait(RandomFloatRange(60, 120));
			}
			else
			{
				wait(1);
			}
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_db836bc0
	Namespace: namespace_94c82dbc
	Checksum: 0xAB8AD264
	Offset: 0xF750
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_db836bc0()
{
	level waittill("hash_eb237993");
	level thread namespace_a6a248fc::function_19e0cb0e();
	level thread namespace_a6a248fc::function_98c9ec2a();
	level.var_2fd26037 thread dialog::say("hend_look_out_we_got_inc_0");
	level waittill("hash_c520ff2a");
	level.var_2fd26037 thread dialog::say("hend_vtol_down_don_t_ha_0");
	level waittill("hash_9f1e84c1");
	level.var_2fd26037 dialog::say("hend_shit_quad_is_functi_0");
}

/*
	Name: function_e388dd6b
	Namespace: namespace_94c82dbc
	Checksum: 0xC5A480BC
	Offset: 0xF818
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_e388dd6b(a_ai)
{
	var_c9fd3802 = [];
	var_c9fd3802[0] = "esl1_get_outta_there_0";
	var_c9fd3802[1] = "egy2_move_move_move_1";
	var_c9fd3802[2] = "esl3_scatter_get_outta_t_0";
	var_c9fd3802[3] = "esl4_incoming_move_0";
	var_c9fd3802[4] = "esl3_scatter_scatter_in_0";
	var_522ce6c6 = 0;
	var_45e7b1aa = undefined;
	while(var_522ce6c6 < 2)
	{
		if(a_ai.size > 0)
		{
			var_58c5eb41 = undefined;
			a_ai = Array::randomize(a_ai);
			foreach(ai in a_ai)
			{
				if(isalive(ai) && ai.is_talking !== 1)
				{
					var_58c5eb41 = ai;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				str_line = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 dialog::say(str_line);
				var_522ce6c6++;
				var_45e7b1aa = str_line;
				wait(RandomFloatRange(0.5, 1.5));
			}
			else
			{
				wait(1);
			}
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_7432965b
	Namespace: namespace_94c82dbc
	Checksum: 0xE0345075
	Offset: 0xFA40
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_7432965b()
{
	level.var_2fd26037 thread dialog::say("hend_statue_s_coming_down_0", 1);
}

/*
	Name: function_3b542458
	Namespace: namespace_94c82dbc
	Checksum: 0xB44838ED
	Offset: 0xFA78
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_3b542458()
{
	level endon("hash_9d9cd8de");
	var_c9fd3802 = [];
	var_c9fd3802[0] = "esl4_eyes_on_hostile_gis_0";
	var_c9fd3802[1] = "esl3_enemy_grunts_spotted_0";
	var_c9fd3802[2] = "egy2_hostile_grunts_movin_0";
	var_c9fd3802[3] = "esl1_grunts_spotted_0";
	var_c9fd3802[4] = "esl4_i_got_sights_on_host_0";
	var_45e7b1aa = undefined;
	level waittill("hash_3b542458");
	while(1)
	{
		a_ai_1 = spawn_manager::get_ai("sm_egypt_siegebot");
		a_ai_2 = spawn_manager::get_ai("sm_egypt_quadtank");
		a_ai = ArrayCombine(a_ai_1, a_ai_2, 1, 0);
		if(a_ai.size > 0)
		{
			var_58c5eb41 = undefined;
			a_ai = Array::randomize(a_ai);
			foreach(ai in a_ai)
			{
				if(isalive(ai) && ai.is_talking !== 1)
				{
					var_58c5eb41 = ai;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				str_line = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 dialog::say(str_line);
				var_45e7b1aa = str_line;
				wait(RandomFloatRange(60, 120));
			}
			else
			{
				wait(1);
			}
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_4c7236e3
	Namespace: namespace_94c82dbc
	Checksum: 0x12E0B3D3
	Offset: 0xFD10
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_4c7236e3()
{
	level.var_2fd26037 thread dialog::say("esl1_technical_spotted_t_0", 1);
}

/*
	Name: function_d98bac2
	Namespace: namespace_94c82dbc
	Checksum: 0xF368E
	Offset: 0xFD48
	Size: 0x21D
	Parameters: 0
	Flags: None
*/
function function_d98bac2()
{
	wait(2);
	var_c9fd3802 = [];
	var_c9fd3802[0] = "esl3_spotted_hostiles_in_0";
	var_c9fd3802[1] = "esl4_hostile_forces_insid_0";
	var_c9fd3802[2] = "esl1_they_re_coming_throu_0";
	while(1)
	{
		a_ai_1 = spawn_manager::get_ai("sm_egypt_siegebot");
		a_ai_2 = spawn_manager::get_ai("sm_egypt_quadtank");
		a_ai = ArrayCombine(a_ai_1, a_ai_2, 1, 0);
		if(a_ai.size > 0)
		{
			var_58c5eb41 = undefined;
			a_ai = Array::randomize(a_ai);
			foreach(ai in a_ai)
			{
				if(isalive(ai) && ai.is_talking !== 1)
				{
					var_58c5eb41 = ai;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				str_line = Array::random(var_c9fd3802);
				var_58c5eb41 dialog::say(str_line);
				return;
			}
			else
			{
				wait(1);
			}
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_b8afae40
	Namespace: namespace_94c82dbc
	Checksum: 0x29835A67
	Offset: 0xFF70
	Size: 0x2F7
	Parameters: 1
	Flags: None
*/
function function_b8afae40(a_ents)
{
	level endon("hash_9d9cd8de");
	var_ce5b55e5 = level.var_ba0708a2.origin;
	a_ai = GetAITeamArray("allies");
	a_ai = ArraySortClosest(a_ai, var_ce5b55e5);
	var_58c5eb41 = undefined;
	foreach(ai in a_ai)
	{
		if(!ai util::is_hero() && isalive(ai) && ai.is_talking !== 1)
		{
			var_58c5eb41 = ai;
			break;
		}
	}
	wait(5);
	var_c9fd3802 = [];
	var_c9fd3802[0] = "esl1_grunt_company_comin_0";
	var_c9fd3802[1] = "egy2_eyes_on_hostile_grun_0";
	var_c9fd3802[2] = "esl3_spotted_hostile_grun_0";
	var_c9fd3802[3] = "esl4_grab_some_cover_hos_0";
	var_c9fd3802[4] = "esl3_gi_company_spotted_a_0";
	while(1)
	{
		a_ai = GetAITeamArray("allies");
		a_ai = ArraySortClosest(a_ai, var_ce5b55e5);
		ai = undefined;
		for(i = 0; i < a_ai.size; i++)
		{
			ai = a_ai[i];
			if(!ai util::is_hero() && isalive(ai) && (!isdefined(ai.is_talking) && ai.is_talking))
			{
				break;
			}
		}
		if(isdefined(ai))
		{
			str_line = Array::random(var_c9fd3802);
			ai dialog::say(str_line);
			return;
		}
		else
		{
			wait(0.25);
		}
	}
}

/*
	Name: function_46197f76
	Namespace: namespace_94c82dbc
	Checksum: 0x3E4EEE1
	Offset: 0x10270
	Size: 0x89
	Parameters: 2
	Flags: None
*/
function function_46197f76(var_c9fd3802, var_45e7b1aa)
{
	var_c9fd3802 = Array::randomize(var_c9fd3802);
	for(i = 0; i < var_c9fd3802.size; i++)
	{
		var_675395aa = var_c9fd3802[i];
		if(var_675395aa !== var_45e7b1aa)
		{
			return var_675395aa;
		}
	}
	return var_45e7b1aa;
}

/*
	Name: function_f43eaed9
	Namespace: namespace_94c82dbc
	Checksum: 0x5D354746
	Offset: 0x10308
	Size: 0x3E9
	Parameters: 0
	Flags: None
*/
function function_f43eaed9()
{
	spawn_manager::kill("sm_egypt_plaza_wall");
	spawn_manager::kill("sm_egypt_palace_window");
	spawn_manager::kill("sm_egypt_quadtank");
	spawn_manager::kill("sm_egypt_siegebot");
	spawn_manager::kill("sm_nrc_siegebot");
	spawn_manager::kill("sm_nrc_quadtank");
	spawn_manager::kill("sm_nrc_depth");
	spawn_manager::kill("sm_nrc_berm_rpg");
	spawn_manager::kill("qt1_nrc_wasp_sm");
	spawn_manager::kill("sm_nrc_govt_building_rpg");
	spawn_manager::kill("qt1_nrc_amws_sm");
	spawn_manager::kill("qt1_nrc_raps_sm");
	spawn_manager::kill("qt2_nrc_wasp_sm");
	spawn_manager::kill("sm_egypt_theater");
	spawn_manager::kill("qt2_nrc_wasp2_berm_sm");
	spawn_manager::kill("qt2_nrc_wasp2_palace_sm");
	spawn_manager::kill("qt2_nrc_robot_rushers_sm");
	spawn_manager::kill("qt2_nrc_raps_sm");
	spawn_manager::kill("sm_nrc_qt2_depth");
	spawn_manager::kill("nrc_mobile_wall_sm");
	spawn_manager::kill("demo_qt2_wasp_sm");
	spawn_manager::kill("qt_plaza_controllable_qt_raps_sm");
	spawn_manager::kill("nrc_theater_sm");
	spawn_manager::kill("sm_nrc_quadtank3_robots");
	a_ai = GetAIArray();
	foreach(ai in a_ai)
	{
		if(!ai util::is_hero())
		{
			if(ai !== level.var_dbed449f && ai.vehicleType !== "veh_bo3_civ_truck_pickup_tech_nrc_nolights")
			{
				ai delete();
			}
		}
	}
	a_corpses = GetCorpseArray();
	foreach(corpse in a_corpses)
	{
		if(corpse.vehicleType !== "veh_bo3_civ_truck_pickup_tech_nrc_nolights")
		{
			corpse delete();
		}
	}
}

/*
	Name: function_7d4abfb6
	Namespace: namespace_94c82dbc
	Checksum: 0x6C439269
	Offset: 0x10700
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_7d4abfb6()
{
	level thread scene::init("p7_fxanim_cp_ramses_quadtank_statue_bundle");
	level thread scene::init("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
	level flag::wait_till("first_player_spawned");
	wait(3);
	IPrintLnBold("Statue about to fall");
	var_6b1c7f11 = spawner::simple_spawn_single("demo_intro_mlrs_quadtank");
	var_6b1c7f11 util::magic_bullet_shield();
	var_6b1c7f11 vehicle_ai::function_81b6f1ac(1);
	wait(1);
	level thread scene::Play("cin_ram_07_04_plaza_vign_quaddefeated");
	level thread scene::Play("p7_fxanim_cp_ramses_quadtank_statue_bundle");
	wait(8);
	level thread scene::Play("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
}

/*
	Name: function_fb5c1d72
	Namespace: namespace_94c82dbc
	Checksum: 0x933E8E09
	Offset: 0x10840
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_fb5c1d72()
{
	var_55141f56 = function_703b62d1(1);
	function_c6a0a6e5(var_55141f56);
}

