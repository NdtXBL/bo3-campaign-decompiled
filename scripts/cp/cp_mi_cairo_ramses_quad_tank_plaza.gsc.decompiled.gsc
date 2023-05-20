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
	function_f7046c76();
	function_3a837c17();
}

/*
	Name: function_f7046c76
	Namespace: namespace_94c82dbc
	Checksum: 0x99EC1590
	Offset: 0x2818
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
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
	level.var_6c4e8561 = function_c4d5ec1f("quadtank_main_turret");
	level.var_b27f706d = function_c4d5ec1f("quadtank_main_turret_player");
	level.var_51d112fe = function_c4d5ec1f("quadtank_main_turret_rocketpods_straight");
	level.var_9e92e4b8 = function_c4d5ec1f("quadtank_main_turret_rocketpods_javelin");
	level namespace_ad23e503::function_c35e6aab("quad_tank_1_destroyed");
	level namespace_ad23e503::function_c35e6aab("quad_tank_2_spawned");
	level namespace_ad23e503::function_c35e6aab("quad_tank_2_destroyed");
	level namespace_ad23e503::function_c35e6aab("spawn_quad_tank_3");
	level namespace_ad23e503::function_c35e6aab("quad_tank_3_spawned");
	level namespace_ad23e503::function_c35e6aab("demo_player_controlled_quadtank");
	level namespace_ad23e503::function_c35e6aab("qt1_left_side");
	level namespace_ad23e503::function_c35e6aab("qt1_right_side");
	level namespace_ad23e503::function_c35e6aab("qt1_died_in_a_bad_place");
	level namespace_ad23e503::function_c35e6aab("qt_targets_statue");
	level namespace_ad23e503::function_c35e6aab("qt_plaza_statue_destroyed");
	level namespace_ad23e503::function_c35e6aab("qt_plaza_rocket_building_destroyed");
	level namespace_ad23e503::function_c35e6aab("qt_plaza_theater_destroyed");
	level namespace_ad23e503::function_c35e6aab("qt_plaza_theater_enemies_cleared");
	level namespace_ad23e503::function_c35e6aab("qt_plaza_mobile_wall_destroyed");
	level namespace_ad23e503::function_c35e6aab("obj_plaza_cleared");
	level namespace_ad23e503::function_c35e6aab("obj_player_at_plaza_igc");
	level namespace_ad23e503::function_c35e6aab("obj_follow_khalil");
	level namespace_ad23e503::function_c35e6aab("spawn_second_quadtank");
	level namespace_ad23e503::function_c35e6aab("third_quadtank_killed");
	level namespace_ad23e503::function_c35e6aab("qt_plaza_outro_igc_started");
	level thread function_380293ce();
	level thread function_5f09970f();
	var_d0aa3ba1 = function_fe0cfd2e("mobile_wall_exposed_nodes", "targetname");
	foreach(var_90ca1fdd in var_d0aa3ba1)
	{
		function_d224409e(var_90ca1fdd, 0);
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
	var_cc018542 = function_c4d5ec1f("launcher_standard");
	self function_860a040a(var_cc018542);
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
	var_a78d745a = function_99201f25("qt_plaza_start_amws_goalvolume", "targetname");
	var_5f595bb3 = function_99201f25("qt_plaza_start_amws", "targetname");
	level.var_73b96584 = [];
	foreach(var_aa888c9b in var_5f595bb3)
	{
		var_31e90922 = namespace_2f06d687::function_7387a40a(var_aa888c9b);
		if(isdefined(var_31e90922))
		{
			var_31e90922 function_169cc712(var_a78d745a[0], 1);
			var_a78d745a = namespace_84970cc4::function_8fdf50c0(var_a78d745a, 0);
			level.var_73b96584[level.var_73b96584.size] = var_31e90922;
		}
		namespace_82b91a51::function_76f13293();
	}
	namespace_82b91a51::function_76f13293();
	namespace_96fa87af::function_22356ba7("qt_plaza_turret");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("sm_egypt_plaza_wall");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("sm_egypt_palace_window");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("sm_egypt_quadtank");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("sm_egypt_siegebot");
	namespace_82b91a51::function_76f13293();
	var_408caf2f = function_6ada35ba("sm_nrc_siegebot", "targetname");
	level thread namespace_d5067552::function_617b3ed2("sm_nrc_siegebot", &function_cd53f16b, var_408caf2f, 20, 25, 2);
	namespace_d5067552::function_bae40a28("sm_nrc_siegebot");
	namespace_82b91a51::function_76f13293();
	var_408caf2f = function_6ada35ba("sm_nrc_quadtank", "targetname");
	level thread namespace_d5067552::function_617b3ed2("sm_nrc_quadtank", &function_cd53f16b, var_408caf2f, 20, 25, 4);
	namespace_d5067552::function_bae40a28("sm_nrc_quadtank");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("qt1_nrc_wasp_sm");
	namespace_82b91a51::function_76f13293();
	namespace_d5067552::function_bae40a28("sm_nrc_govt_building_rpg");
	namespace_82b91a51::function_76f13293();
	namespace_4dbf3ae3::function_42e87952("trig_color_vtol_igc_allies", "targetname");
	namespace_4dbf3ae3::function_42e87952("trig_color_post_vtol_igc_axis", "targetname");
	function_49e95dc0("NRC_Quadtank", "Egyptian_RPG_guys", 100000);
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
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_done");
	var_9104e155 = function_6ada35ba("egyptian_retreat_guy_left_ai", "targetname");
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
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
	var_af4078ec = function_b4cb3503("retreat_guy_left_path", "targetname");
	while(isdefined(var_af4078ec))
	{
		self namespace_d84e54db::function_19e98020(var_af4078ec, 128, 0, "near_goal", 1, 1);
		self namespace_82b91a51::function_5b7e3888("near_goal", "goal");
		if(isdefined(var_af4078ec.var_b07228b6))
		{
			var_af4078ec = function_b4cb3503(var_af4078ec.var_b07228b6, "targetname");
		}
		else
		{
			var_af4078ec = undefined;
		}
	}
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("s_qt_plaza_egypt_debriscover", "targetname");
	var_1cbcb46d namespace_cc27597::function_43718187(self);
	var_af4078ec = function_b4cb3503("retreat_guy_left_path_02", "targetname");
	while(isdefined(var_af4078ec))
	{
		self namespace_d84e54db::function_19e98020(var_af4078ec, 128, 0, "near_goal", 1, 1);
		self namespace_82b91a51::function_5b7e3888("near_goal", "goal");
		if(isdefined(var_af4078ec.var_b07228b6))
		{
			var_af4078ec = function_b4cb3503(var_af4078ec.var_b07228b6, "targetname");
		}
		else
		{
			var_af4078ec = undefined;
		}
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_82b91a51::function_4b741fdc();
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
	self endon("hash_128f8789");
	var_af4078ec = function_b4cb3503("retreat_guy_right_path", "targetname");
	self namespace_d84e54db::function_b4f5e3b9(1);
	while(isdefined(var_af4078ec))
	{
		self namespace_d84e54db::function_19e98020(var_af4078ec, 128, 0, "near_goal", 1, 1);
		self namespace_82b91a51::function_5b7e3888("near_goal", "goal");
		if(isdefined(var_af4078ec.var_b07228b6))
		{
			var_af4078ec = function_b4cb3503(var_af4078ec.var_b07228b6, "targetname");
		}
		else
		{
			var_af4078ec = undefined;
		}
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_82b91a51::function_4b741fdc();
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
	function_43f446e3("Egyptian_RPG_guys");
	function_43f446e3("NRC_Quadtank");
	function_43f446e3("NRC_center_guys");
	function_43f446e3("NRC_QT1_Shotgunners");
	function_43f446e3("Players");
	function_43f446e3("PlayerVehicles");
	function_43f446e3("Egyptian_AI_near_players");
	function_43f446e3("NRC_RPG_guys");
	function_43f446e3("NRC_QT2_Robot_Rushers");
	function_43f446e3("Egyptian_Theater_guys");
	function_43f446e3("QT2_NRC_Raps");
	function_43f446e3("QT2_Egyptian_Guys_on_Blocks");
	function_43f446e3("NRC_Wasps");
	function_43f446e3("NRC_AMWS");
	function_43f446e3("NRC_theater_guys");
	function_49e95dc0("Players", "QT2_NRC_Raps", 1000);
	function_49e95dc0("PlayerVehicles", "QT2_NRC_Raps", 10000);
	function_49e95dc0("PlayerVehicles", "NRC_AMWS", 10000);
	function_49e95dc0("Players", "NRC_Quadtank", 0);
	function_49e95dc0("Players", "NRC_QT1_Shotgunners", -1000);
	function_49e95dc0("Players", "NRC_center_guys", -1000);
	function_49e95dc0("Players", "NRC_theater_guys", -1000);
	function_49e95dc0("Players", "NRC_Wasps", -1000);
	function_49e95dc0("Players", "NRC_AMWS", -1000);
	namespace_96fa87af::function_994832bd("demo_intro_mlrs_quadtank", &function_2bca1f0e);
	namespace_96fa87af::function_a379ac50("demo_intro_mlrs_quadtank", &function_147b8da0);
	namespace_96fa87af::function_994832bd("artillery_quadtank", &function_92eb91a6);
	namespace_96fa87af::function_a379ac50("artillery_quadtank", &function_147b8da0);
	namespace_96fa87af::function_994832bd("third_quadtank", &function_8f133c4d);
	namespace_96fa87af::function_a379ac50("third_quadtank", &function_147b8da0);
	namespace_96fa87af::function_994832bd("qt_plaza_controllable_qt_raps", &function_861838cc);
	namespace_96fa87af::function_994832bd("qt_plaza_start_amws", &function_6626abd1);
	namespace_96fa87af::function_994832bd("qt1_nrc_amws", &function_d7eebeaa);
	namespace_96fa87af::function_994832bd("qt1_raps", &function_66735742);
	namespace_96fa87af::function_994832bd("qt_plaza_turret", &function_125f2ec4);
	namespace_96fa87af::function_994832bd("qt2_nrc_wasps", &function_af815dad);
	namespace_96fa87af::function_994832bd("qt2_nrc_wasps_berm", &function_fa8862c4);
	namespace_96fa87af::function_994832bd("qt2_nrc_wasps_palace", &function_eea6d34c);
	namespace_96fa87af::function_994832bd("qt2_raps", &function_505566c3);
	namespace_2f06d687::function_2b37a3c9("egypt_palace_window_guys", "targetname", &function_10a7788);
	namespace_2f06d687::function_2b37a3c9("egyptian_retreat_guy_left", "targetname", &function_3dd4db8a);
	namespace_2f06d687::function_2b37a3c9("egyptian_retreat_guy_right", "targetname", &function_3dd4db8a);
	namespace_2f06d687::function_2b37a3c9("statue_fall_guys", "targetname", &function_f3b08607);
	namespace_2f06d687::function_2b37a3c9("nrc_govt_building_rpg_guys", "targetname", &function_cfe4e726);
	namespace_2f06d687::function_2b37a3c9("nrc_rpg_berm_guys", "targetname", &function_5030bfcf);
	namespace_2f06d687::function_2b37a3c9("nrc_quadtank_guys", "targetname", &function_7f6c7e92);
	namespace_2f06d687::function_2b37a3c9("qt2_robot_rushers", "targetname", &function_17b4845b);
	namespace_2f06d687::function_2b37a3c9("qt2_ally_theater", "targetname", &function_663d1007);
	namespace_2f06d687::function_2b37a3c9("nrc_mobile_wall", "targetname", &function_7ea3ae59);
	namespace_2f06d687::function_2b37a3c9("nrc_theater", "targetname", &function_26fe7ac7);
	var_a72e524 = function_99201f25("plaza_wasps", "script_noteworthy");
	foreach(var_5aaf616 in var_a72e524)
	{
		var_5aaf616 namespace_2f06d687::function_994832bd(&function_f12c1985);
	}
	var_5528d9d7 = function_99201f25("egypt_palace_window_guys", "targetname");
	var_c6e36417 = function_99201f25("egypt_plaza_wall_guy", "targetname");
	var_d9be40d5 = function_525ae497(var_5528d9d7, var_c6e36417, 1, 0);
	foreach(var_25a9e204 in var_d9be40d5)
	{
		var_25a9e204 namespace_2f06d687::function_994832bd(&function_18b305fb);
	}
	var_8cc24621 = function_99201f25("nrc_govt_building_rpg_guys", "targetname");
	var_2a6141a6 = function_99201f25("nrc_rpg_berm_guys", "targetname");
	var_de51d953 = function_525ae497(var_8cc24621, var_2a6141a6, 1, 0);
	foreach(var_25a9e204 in var_de51d953)
	{
		var_25a9e204 namespace_2f06d687::function_994832bd(&function_3a1fb3d);
	}
	namespace_2f06d687::function_22356ba7("egyptian_retreat_guy_left");
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
	self function_c7708f99("Egyptian_RPG_guys");
	var_c9ae457a = function_6ada35ba(self.var_b07228b6, "targetname");
	self function_169cc712(var_c9ae457a, 1);
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
	self function_c7708f99("NRC_RPG_guys");
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
	self endon("hash_128f8789");
	self thread function_4f1744c6();
	self namespace_82b91a51::function_958c7633();
	self namespace_3fc75f50::function_4c6ee4cc(0);
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_done");
	self namespace_82b91a51::function_4b741fdc();
	self namespace_3fc75f50::function_4c6ee4cc(1);
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
	self endon("hash_128f8789");
	level endon("hash_9585cf3");
	var_4fdbb65a = namespace_14b42b8a::function_7faf4c39("demo_qt1_vtol_igc_movement", "targetname");
	while(1)
	{
		var_3c31865b = namespace_84970cc4::function_47d18840(var_4fdbb65a);
		self function_169cc712(var_3c31865b.var_722885f3, 1);
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
	self endon("hash_128f8789");
	self namespace_ad23e503::function_c35e6aab("intro_qt_damage_threshold_reached");
	self thread function_5aabda9f();
	if(namespace_d73b9283::function_d2c92ee7())
	{
		var_4fdbb65a = namespace_14b42b8a::function_7faf4c39("demo_qt1_movement_left_side", "targetname");
		var_19321990 = "left";
		continue;
	}
	var_4fdbb65a = namespace_14b42b8a::function_7faf4c39("demo_qt1_movement_right_side", "targetname");
	var_19321990 = "right";
	while(1)
	{
		self function_6e99d691(var_4fdbb65a, var_19321990);
		var_3c31865b = namespace_14b42b8a::function_7922262b("demo_qt1_movement_travel", "targetname");
		self function_169cc712(var_3c31865b.var_722885f3, 1);
		self waittill("hash_a2b47172");
		if(var_19321990 == "left" || self namespace_ad23e503::function_7922262b("intro_qt_damage_threshold_reached"))
		{
			var_19321990 = "right";
		}
		else if(var_19321990 == "right" && !self namespace_ad23e503::function_7922262b("intro_qt_damage_threshold_reached"))
		{
			var_19321990 = "left";
		}
		level namespace_ad23e503::function_74d6b22f("qt1_" + var_19321990 + "_side");
		level thread function_36783b5e(var_19321990);
		var_4fdbb65a = namespace_14b42b8a::function_7faf4c39("demo_qt1_movement_" + var_19321990 + "_side", "targetname");
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
	self endon("hash_128f8789");
	var_78a0d7c6 = self.var_3a90f16b / 2;
	while(1)
	{
		self waittill("hash_f9348fda");
		if(self.var_3a90f16b <= var_78a0d7c6)
		{
			self notify("hash_6e17cb8c");
			self namespace_ad23e503::function_74d6b22f("intro_qt_damage_threshold_reached");
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
function function_6e99d691(var_4fdbb65a, var_19321990)
{
	self endon("hash_f015cdf7");
	if(isdefined(60))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(60, "timeout");
	}
	if(var_19321990 == "left")
	{
		self endon("hash_6e17cb8c");
	}
	var_e5fcbdaa = undefined;
	while(1)
	{
		while(1)
		{
			var_3c31865b = namespace_84970cc4::function_47d18840(var_4fdbb65a);
			if(isdefined(var_e5fcbdaa) && var_e5fcbdaa == var_3c31865b)
			{
				continue;
			}
			else
			{
				break;
			}
		}
		self function_169cc712(var_3c31865b.var_722885f3, 1);
		self waittill("hash_a2b47172");
		var_e5fcbdaa = var_3c31865b;
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
	self waittill("hash_128f8789");
	var_f92a03e7 = function_6ada35ba("qt1_death_trigger", "targetname");
	if(!isdefined(self))
	{
		return;
	}
	if(self function_32fa5072(var_f92a03e7))
	{
		wait(5);
		self function_14c24d9d();
		level namespace_ad23e503::function_74d6b22f("qt1_died_in_a_bad_place");
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
	self endon("hash_128f8789");
	self endon("hash_f0738128");
	self namespace_82b91a51::function_958c7633();
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_done");
	self namespace_82b91a51::function_4b741fdc();
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
	self endon("hash_128f8789");
	self function_c7708f99("NRC_AMWS");
	if(level namespace_ad23e503::function_7922262b("qt1_left_side"))
	{
		var_c9ae457a = function_6ada35ba("qt1_amws_right_goalvolume", "targetname");
		self function_169cc712(var_c9ae457a, 1);
	}
	else if(level namespace_ad23e503::function_7922262b("qt1_right_side"))
	{
		var_c9ae457a = function_6ada35ba("qt1_amws_left_goalvolume", "targetname");
		self function_169cc712(var_c9ae457a, 1);
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
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("qt_plaza_alley_spawn_trigger", "targetname", self);
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
function function_36783b5e(var_19321990)
{
	level notify("hash_36783b5e");
	level endon("hash_36783b5e");
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_done");
	if(var_19321990 == "left")
	{
		var_c9ae457a = function_6ada35ba("qt1_amws_right_goalvolume", "targetname");
	}
	else if(var_19321990 == "right")
	{
		var_c9ae457a = function_6ada35ba("qt1_amws_left_goalvolume", "targetname");
	}
	var_c4ee2066 = function_99201f25("qt_plaza_start_amws_ai", "targetname", 1);
	var_c3aabf4a = function_99201f25("qt1_nrc_amws_ai", "targetname", 1);
	var_b9229bcd = function_525ae497(var_c4ee2066, var_c3aabf4a, 1, 0);
	foreach(var_cdb298ad in var_b9229bcd)
	{
		if(function_5b49d38c(var_cdb298ad))
		{
			var_cdb298ad function_169cc712(var_c9ae457a, 1);
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
	self endon("hash_128f8789");
	var_b680c0d7 = namespace_14b42b8a::function_7922262b("qt3_goalpos", "targetname");
	self function_169cc712(var_b680c0d7.var_722885f3);
	self waittill("hash_a2b47172");
	level notify("hash_ef81aaa7");
	var_c9ae457a = function_6ada35ba("third_quadtank_goalvolume", "targetname");
	self function_169cc712(var_c9ae457a, 1);
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
function function_ca22c738(var_377a9c22)
{
	self endon("hash_128f8789");
	self endon("hash_28b25b09");
	var_26080a40 = function_c4d5ec1f("quadtank_main_turret_rocketpods_straight");
	self.var_5ed2f6d3 = 1;
	while(1)
	{
		self namespace_72ee5da4::function_5cbfc55e(var_377a9c22, 0);
		self namespace_82b91a51::function_9fcf3cd8(10, "turret_on_target");
		for(var_c957f6b6 = 0; var_c957f6b6 < 4 && isdefined(var_377a9c22); var_c957f6b6++)
		{
			self function_3f3534a8(var_26080a40);
			self function_90ad4ed1(0, var_377a9c22);
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
	var_26aaa5cc = namespace_14b42b8a::function_7922262b("qt3_cannon_shot_pos", "targetname");
	var_377a9c22 = function_9b7fda5e("script_model", var_26aaa5cc.var_722885f3);
	var_377a9c22 function_e48f905e("tag_origin");
	var_377a9c22.var_3a90f16b = 100;
	self thread function_ca22c738(var_377a9c22);
	var_3e671a1 = 0;
	var_2eb20475 = function_6ada35ba("trigger_palace_collapse", "targetname");
	while(1)
	{
		var_2eb20475 waittill("hash_f9348fda", var_74d0774f, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_a0ad4f34 === self || var_a0ad4f34 === level.var_efe14c34)
		{
			if(var_fe311e35 === "MOD_PROJECTILE" || var_fe311e35 === "MOD_PROJECTILE_SPLASH")
			{
				var_3e671a1++;
				if(var_3e671a1 > 1)
				{
					var_377a9c22 notify("hash_128f8789");
					self notify("hash_28b25b09");
					self.var_5ed2f6d3 = 0;
					self function_62b52961(0);
					self function_3f3534a8(function_c4d5ec1f("quadtank_main_turret_rocketpods_javelin"));
					break;
				}
			}
		}
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle");
	level namespace_ad23e503::function_74d6b22f("qt_plaza_rocket_building_destroyed");
	var_2eb20475 function_dc8c8404();
	var_377a9c22 function_dc8c8404();
	level thread function_447e47c0();
	function_b78937aa("qt2_intro_org");
	var_1e5c6939 = function_6ada35ba("palace_corner_breach_carver", "targetname");
	var_1e5c6939 function_dc8c8404();
	var_bce21891 = function_99201f25("palace_corner_breach", "targetname");
	foreach(var_8fa50159 in var_bce21891)
	{
		if(isdefined(var_8fa50159))
		{
			var_8fa50159 function_dc8c8404();
		}
	}
	var_64dd962c = function_99201f25("palace_corner_blocker", "targetname");
	foreach(var_48b3274c in var_64dd962c)
	{
		var_48b3274c function_4083a98e();
		var_48b3274c function_14c24d9d();
		var_48b3274c function_48f26766();
	}
	var_cac8b10c = function_6ada35ba("palace_corner_breach_collision", "targetname");
	var_cac8b10c function_4083a98e();
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
	namespace_d5067552::function_54bdb053("sm_egypt_palace_window");
	var_e3b635fb = namespace_d5067552::function_423eae50("sm_egypt_palace_window");
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_2992720d();
		}
	}
	var_bfa0f33f = namespace_14b42b8a::function_7922262b("qt3_cannon_shot_pos", "targetname");
	function_534b3cba(var_bfa0f33f.var_722885f3, 768, 768, 1);
	wait(20);
	namespace_d5067552::function_bae40a28("sm_egypt_palace_window");
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
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_255b9315 = 1;
		var_5dc5e20a function_83fd42b5();
	}
	foreach(var_717a34e1 in level.var_6a876531)
	{
		var_717a34e1.var_255b9315 = 1;
	}
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_done");
	wait(5);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_255b9315 = 0;
		var_5dc5e20a function_4890e520();
	}
	foreach(var_717a34e1 in level.var_6a876531)
	{
		var_717a34e1.var_255b9315 = 0;
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
	self endon("hash_128f8789");
	self.var_501514b8 = 1;
	var_c9ae457a = function_6ada35ba(self.var_b07228b6, "targetname");
	self function_169cc712(var_c9ae457a, 1);
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
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	var_9de10fe3 = function_b4cb3503(self.var_b07228b6, "targetname");
	self function_169cc712(var_9de10fe3, 1);
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
	self namespace_82b91a51::function_958c7633();
	self namespace_96fa87af::function_42496438(0);
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_done");
	self namespace_96fa87af::function_42496438(1);
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
	self endon("hash_128f8789");
	self function_c7708f99("NRC_Wasps");
	var_c9ae457a = function_6ada35ba("pre_qt2_nrc_wasp_goalvolume", "targetname");
	self function_169cc712(var_c9ae457a, 1);
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
	self endon("hash_128f8789");
	self function_c7708f99("NRC_Wasps");
	var_c9ae457a = function_6ada35ba("qt2_nrc_wasp_berm_goalvolume", "targetname");
	self function_169cc712(var_c9ae457a, 1);
	self.var_2a48f7ab = 0.25;
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
	self endon("hash_128f8789");
	self function_c7708f99("NRC_Wasps");
	var_c9ae457a = function_6ada35ba("qt2_nrc_wasp_palace_goalvolume", "targetname");
	self function_169cc712(var_c9ae457a, 1);
	self.var_2a48f7ab = 0.25;
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
	self endon("hash_128f8789");
	self function_c7708f99("QT2_NRC_Raps");
	namespace_4dbf3ae3::function_1ab5ebec("qt_plaza_alley_spawn_trigger", "targetname", self);
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
	var_8d2625e1 = namespace_14b42b8a::function_7faf4c39("qt_plaza_magic_bullet_rpg", "targetname");
	var_dfcc01fd = function_c4d5ec1f("launcher_standard");
	while(1)
	{
		var_109bf731 = function_dc99997a(1, 4);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_109bf731; var_c957f6b6++)
		{
			var_26db055e = namespace_84970cc4::function_47d18840(var_8d2625e1);
			var_8ae3db40 = namespace_14b42b8a::function_7faf4c39(var_26db055e.var_b07228b6, "targetname");
			var_197d929 = namespace_84970cc4::function_47d18840(var_8ae3db40);
			function_87f3c622(var_dfcc01fd, var_26db055e.var_722885f3, var_197d929.var_722885f3);
			wait(function_72a94f05(2, 4));
		}
		wait(function_72a94f05(20, 30));
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
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_done");
	level namespace_71e9cb84::function_74d6b22f("alley_fxanim_curtains", 0);
	level.var_2fd26037 namespace_82b91a51::function_67520c6a(10, undefined, &namespace_6f7b2095::function_1b497663, "o");
	namespace_4dbf3ae3::function_42e87952("trig_color_post_vtol_igc_allies", "targetname");
	level thread function_767a3b7e();
	level thread function_77029c68();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_3460d45c();
	}
	namespace_dabbe128::function_356a4ee1(&function_3460d45c);
	level thread function_a9213e0b();
	level thread function_9866bb6();
	level thread function_8b6b15aa();
	level thread function_ffaf7dc4();
	if(isdefined(level.var_a9b12b6))
	{
		level thread [[level.var_a9b12b6]]();
	}
	level thread function_faf0f13b();
	level namespace_ad23e503::function_1ab5ebec("quad_tank_1_destroyed");
	level thread function_c85c8f91();
	level namespace_ad23e503::function_1ab5ebec("spawn_quad_tank_3");
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
	var_8c4a6a64 = function_99201f25("qtp_palace_rubble", "targetname");
	namespace_84970cc4::function_eaab05dc(var_8c4a6a64, &function_422037f5);
	level waittill("hash_7352ee5f");
	namespace_84970cc4::function_eaab05dc(var_8c4a6a64, &function_4083a98e);
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
		if(level.var_2395e945.size > 1)
		{
			function_67df0abc("NRC_center_guys", "Egyptian_RPG_guys");
		}
		if(namespace_ad23e503::function_7922262b("quad_tank_1_destroyed"))
		{
			break;
		}
		level waittill("hash_719f4ee5");
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
	function_67df0abc("Players", "NRC_RPG_guys");
	function_67df0abc("Egyptian_AI_near_players", "NRC_RPG_guys");
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
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_c7708f99("Players");
	}
	while(1)
	{
		level waittill("hash_719f4ee5");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_c7708f99("Players");
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
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_e3b635fb = function_b8494651("allies");
			foreach(var_d84e54db in var_e3b635fb)
			{
				if(isdefined(var_d84e54db.var_caae374e) && var_d84e54db.var_caae374e == "qt_plaza_egyptian_rpg")
				{
					continue;
				}
				var_7c6b6ceb = var_d84e54db function_492daadd();
				if(isdefined(var_7c6b6ceb) && var_7c6b6ceb != "Egyptian_AI_near_players")
				{
					continue;
				}
				var_6389ab3d = function_316422d1(var_d84e54db.var_722885f3, var_5dc5e20a.var_722885f3);
				if(var_6389ab3d <= 65536)
				{
					var_d84e54db function_c7708f99("Egyptian_AI_near_players");
					var_d84e54db.var_b26635f = 1;
					continue;
				}
				if(isdefined(var_d84e54db.var_b26635f) && var_d84e54db.var_b26635f)
				{
					var_d84e54db function_c7708f99();
					var_d84e54db.var_b26635f = 0;
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
	var_e3b635fb = namespace_2f06d687::function_22356ba7("qt_plaza_egyptian_wounded");
	var_a917350c = function_6ada35ba("egyptian_wounded_carver", "targetname");
	var_a917350c function_14c24d9d();
	var_b9229bcd = function_99201f25("qt_plaza_start_amws_ai", "targetname", 1);
	var_31e90922 = namespace_84970cc4::function_47d18840(var_b9229bcd);
	var_31e90922 notify("hash_f0738128");
	var_31e90922 namespace_82b91a51::function_958c7633();
	var_26aaa5cc = namespace_14b42b8a::function_7922262b("egyptian_wounded_target", "targetname");
	var_377a9c22 = function_9b7fda5e("script_model", var_26aaa5cc.var_722885f3);
	var_377a9c22 function_e48f905e("tag_origin");
	var_377a9c22.var_3a90f16b = 100;
	var_31e90922 thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_377a9c22);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("scene_qt_plaza_egyptian_wounded", "targetname");
	var_1cbcb46d namespace_cc27597::function_5c143f59(var_e3b635fb, undefined, undefined, 0.375);
	var_31e90922 namespace_82b91a51::function_4b741fdc();
	var_a917350c function_dc8c8404();
	var_377a9c22 notify("hash_128f8789");
	var_377a9c22 function_dc8c8404();
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
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_82b91a51::function_958c7633();
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
	var_e3b635fb = namespace_2f06d687::function_22356ba7("qt_plaza_egyptian_rescueinjured_guy", &function_3a7f574e);
	var_5524a904 = function_6ada35ba("qt_plaza_left_vignette_carver1", "targetname");
	var_5524a904 function_14c24d9d();
	var_c72c183f = function_6ada35ba("qt_plaza_left_vignette_carver2", "targetname");
	var_c72c183f function_14c24d9d();
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("scene_qt_plaza_rescueinjured_r", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_5c143f59(var_e3b635fb, undefined, undefined, 0.25);
	level waittill("hash_59bf9070");
	var_5524a904 function_dc8c8404();
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db namespace_d84e54db::function_c9e45d52(0);
			var_d84e54db namespace_82b91a51::function_4b741fdc();
			var_d84e54db namespace_6f7b2095::function_1b497663("p");
			if(var_d84e54db.var_b691b9cf === "arena_defend_intro_r_injured")
			{
				var_5ef22e15 = var_d84e54db;
				var_5ef22e15 namespace_82b91a51::function_67520c6a(60, "death", &function_2992720d);
			}
		}
	}
	if(isdefined(var_5ef22e15))
	{
		var_5ef22e15 waittill("hash_128f8789");
	}
	var_c72c183f function_dc8c8404();
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
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("qt_plaza_last_stand_guys", "targetname");
	foreach(var_1cbcb46d in var_3d2988cc)
	{
		var_78962fff = function_72a94f05(0.05, 0.15);
		var_1cbcb46d thread namespace_cc27597::function_5c143f59(undefined, undefined, undefined, var_78962fff);
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
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_need_to_clear_the_0");
	wait(1.5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_quad_tank_on_the_de_0");
	wait(1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_grab_that_launcher_a_0");
	level namespace_ad23e503::function_1ab5ebec("quad_tank_1_destroyed");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_yeah_tank_down_kee_0");
	level namespace_ad23e503::function_1ab5ebec("obj_plaza_cleared");
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_regroup_on_me_0");
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
	var_6b1c7f11 = namespace_2f06d687::function_7387a40a("demo_intro_mlrs_quadtank");
	level.var_6e86c9d5 = var_6b1c7f11;
	var_6b1c7f11 function_c7708f99("NRC_Quadtank");
	function_49e95dc0("Players", "NRC_Quadtank", -9999);
	var_6b1c7f11 namespace_3fc75f50::function_dd8d3882();
	var_6b1c7f11 namespace_82b91a51::function_958c7633();
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_done");
	var_6b1c7f11 namespace_3fc75f50::function_a093b43b();
	var_6b1c7f11 thread function_27b2ebf2();
	namespace_dabbe128::function_d38f54b1(&function_15abacf7);
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_destroy_quadtank", var_6b1c7f11);
	var_6b1c7f11 namespace_82b91a51::function_4b741fdc();
	level thread function_19351c55();
	level thread function_5a7e506e();
	namespace_d5067552::function_54bdb053("qt1_nrc_wasp_sm");
	function_49e95dc0("Players", "NRC_Quadtank", 0);
	var_6b1c7f11 namespace_82b91a51::function_67520c6a(3, undefined, &function_f536966);
	var_6b1c7f11 namespace_82b91a51::function_5b7e3888("enter_vehicle", "death", "CloneAndRemoveEntity");
	level namespace_ad23e503::function_74d6b22f("quad_tank_1_destroyed");
	namespace_dabbe128::function_129f29ea(&function_15abacf7);
	namespace_9f824288::function_5d2cdd99();
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_destroy_quadtank");
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
	self endon("hash_128f8789");
	var_fae93870 = 0;
	var_c1df3693 = 2;
	var_9a15ea97 = function_c4d5ec1f("launcher_standard");
	while(1)
	{
		self waittill("hash_d9877503", var_4a93c703);
		if(var_4a93c703.var_dfcc01fd === var_9a15ea97)
		{
			var_fae93870++;
			if(var_fae93870 >= var_c1df3693)
			{
				foreach(var_5dc5e20a in level.var_9b1393e7)
				{
					var_5dc5e20a namespace_82b91a51::function_32d40124(&"CP_MI_CAIRO_RAMSES_QUADTANK_REPULSOR_HINT");
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
function function_15abacf7(var_a8563e07)
{
	if(level.var_6e86c9d5 === self && self namespace_3fc75f50::function_fcd2c4ce())
	{
		if(function_65f192a6(var_a8563e07.var_3a212fd7) && function_5dbf7eca(var_a8563e07.var_ba36487d, "BULLET"))
		{
			var_5dc5e20a = var_a8563e07.var_3a212fd7;
			if(isdefined(var_5dc5e20a.var_799b1d0e))
			{
				var_5dc5e20a.var_799b1d0e = var_5dc5e20a.var_799b1d0e + var_a8563e07.var_f9a179ed;
			}
			else
			{
				var_5dc5e20a.var_799b1d0e = var_a8563e07.var_f9a179ed;
			}
			if(var_5dc5e20a.var_799b1d0e > 999)
			{
				var_5dc5e20a namespace_82b91a51::function_32d40124(&"CP_MI_CAIRO_RAMSES_QUADTANK_ROCKETS_HINT");
				var_5dc5e20a.var_799b1d0e = 0;
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
	namespace_84970cc4::function_1ab5ebec(level.var_73b96584, "death");
	var_d0aa3ba1 = function_fe0cfd2e("qt1_nrc_truck_nodes", "script_noteworthy");
	foreach(var_90ca1fdd in var_d0aa3ba1)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	wait(5);
	var_9f3935f2 = namespace_2f06d687::function_7387a40a("nrc_qt1_truck");
	if(!isdefined(var_9f3935f2))
	{
		return;
	}
	var_9f3935f2 thread function_5cbc0fea();
	var_9f3935f2 thread function_c2a9c2e3();
	var_dfb53de7 = namespace_2f06d687::function_7387a40a("nrc_technical_gunner");
	var_dfb53de7 namespace_96fa87af::function_230eadd7(var_9f3935f2, "gunner1", 1);
	var_44762fa4 = namespace_2f06d687::function_7387a40a("nrc_technical_gunner");
	var_44762fa4 namespace_96fa87af::function_230eadd7(var_9f3935f2, "driver", 1);
	var_51a35d76 = function_243bb261(var_9f3935f2.var_b07228b6, "targetname");
	var_9f3935f2 thread namespace_96fa87af::function_edb3a94e(var_51a35d76);
	var_9f3935f2 thread function_e4aa3ab2(var_44762fa4);
	var_9f3935f2 namespace_37b990db::function_bae40a28(1, 1);
	var_9f3935f2 function_991ad231();
	var_9f3935f2 function_917f75ac(0);
	var_9f3935f2 namespace_82b91a51::function_5b7e3888("death", "reached_end_node");
	foreach(var_90ca1fdd in var_d0aa3ba1)
	{
		function_d224409e(var_90ca1fdd, 1);
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
	self endon("hash_128f8789");
	self waittill("hash_89126c82");
	wait(1);
	self function_921a1574("evt_tech_driveup_qt");
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
	namespace_84970cc4::function_1ab5ebec(level.var_73b96584, "death");
	level thread function_f922378a();
	var_408caf2f = function_6ada35ba("qt1_nrc_amws_sm", "targetname");
	level thread namespace_d5067552::function_617b3ed2("qt1_nrc_amws_sm", &function_cd53f16b, var_408caf2f, 10, 15, 2);
	namespace_d5067552::function_bae40a28("qt1_nrc_amws_sm");
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
	var_edbda753 = function_99201f25("egyptian_retreat_guy_left_ai", "targetname");
	foreach(var_78080f8f in var_edbda753)
	{
		if(function_5b49d38c(var_78080f8f))
		{
			var_78080f8f function_c3945cd5(var_78080f8f.var_3a90f16b, var_78080f8f.var_722885f3);
		}
	}
	namespace_4dbf3ae3::function_42e87952("trig_color_quadtank2_allies");
	namespace_4dbf3ae3::function_42e87952("trig_color_quadtank2_axis");
	level thread function_df4c5d7e();
	level notify("hash_b3aeb693");
	namespace_d5067552::function_54bdb053("qt1_nrc_amws_sm");
	var_c9ae457a = function_6ada35ba("post_qt1_amws_goalvolume", "targetname");
	var_b9229bcd = namespace_d5067552::function_423eae50("qt1_nrc_amws_sm");
	foreach(var_cdb298ad in var_b9229bcd)
	{
		var_cdb298ad function_169cc712(var_c9ae457a, 1);
	}
	namespace_d5067552::function_bae40a28("qt2_nrc_wasp_sm");
	namespace_d5067552::function_bae40a28("sm_egypt_statue_fall");
	if(!level namespace_ad23e503::function_7922262b("qt_plaza_theater_destroyed"))
	{
		namespace_d5067552::function_bae40a28("sm_egypt_theater");
	}
	level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
	level.var_9db406db namespace_6f7b2095::function_1b497663("o");
	var_6836c6ff = namespace_14b42b8a::function_7922262b("khalil_start", "targetname");
	level.var_9db406db namespace_1d795d47::function_d9b1ee00(var_6836c6ff);
	wait(5);
	level notify("hash_4232e97");
	namespace_d5067552::function_54bdb053("qt2_nrc_wasp_sm");
	level thread function_db836bc0();
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_qt_plaza_palace_wall_collapse_bundle", &function_e0ba07f1, "play");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_qt_plaza_palace_wall_collapse_bundle");
	level.var_76601d99 thread function_aa16fea2();
	level namespace_ad23e503::function_74d6b22f("quad_tank_2_spawned");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_destroy_quadtank", level.var_76601d99);
	var_408caf2f = function_6ada35ba("qt2_nrc_wasp2_palace_sm", "targetname");
	level thread namespace_d5067552::function_617b3ed2("qt2_nrc_wasp2_palace_sm", &function_cd53f16b, var_408caf2f, 15, 20, 3);
	namespace_d5067552::function_bae40a28("qt2_nrc_wasp2_palace_sm");
	var_408caf2f = function_6ada35ba("qt2_nrc_robot_rushers_sm", "targetname");
	level thread namespace_d5067552::function_617b3ed2("qt2_nrc_robot_rushers_sm", &function_cd53f16b, var_408caf2f, 10, 15, 3);
	namespace_d5067552::function_bae40a28("qt2_nrc_robot_rushers_sm");
	function_67df0abc("Egyptian_RPG_guys", "NRC_QT2_Robot_Rushers");
	level thread function_3b542458();
	level thread function_2bfb7457();
	namespace_d5067552::function_bae40a28("qt2_nrc_raps_sm");
	level thread function_c09bd13a();
	function_67df0abc("Egyptian_Theater_guys", "NRC_QT2_Robot_Rushers");
	function_67df0abc("NRC_QT2_Robot_Rushers", "Egyptian_Theater_guys");
	level namespace_ad23e503::function_43ac000b(function_84970cc4("qt_plaza_statue_destroyed", "quad_tank_2_destroyed", "demo_player_controlled_quadtank"));
	if(function_5b49d38c(level.var_76601d99))
	{
		level.var_76601d99 thread function_a65108b6();
		level.var_76601d99 thread function_6fd11e63();
	}
	level namespace_ad23e503::function_43ac000b(function_84970cc4("quad_tank_2_destroyed", "demo_player_controlled_quadtank"));
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_destroy_quadtank");
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
	namespace_d5067552::function_54bdb053("sm_nrc_depth");
	while(1)
	{
		var_f3e62b98 = namespace_d5067552::function_423eae50("sm_nrc_depth");
		if(var_f3e62b98.size <= 2)
		{
			break;
		}
		wait(1);
	}
	namespace_d5067552::function_bae40a28("sm_nrc_qt2_depth");
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
	function_67df0abc("QT2_NRC_Raps", "QT2_Egyptian_Guys_on_Blocks");
	var_f92a03e7 = function_6ada35ba("qt2_egyptian_guys_on_blocks", "targetname");
	while(1)
	{
		var_f92a03e7 waittill("hash_4dbf3ae3", var_a3d46ee4);
		var_7fa343c9 = var_a3d46ee4 function_492daadd();
		if(var_7fa343c9 == "QT2_Egyptian_Guys_on_Blocks")
		{
			wait(0.1);
			continue;
		}
		else
		{
			var_a3d46ee4 function_c7708f99("QT2_Egyptian_Guys_on_Blocks");
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
function function_e0ba07f1(var_c77d2837)
{
	var_ec523dd5 = function_6ada35ba("qt_plaza_palace_wall_collapse", "targetname");
	var_ec523dd5 thread function_1af8bdd3();
	var_ec523dd5 thread function_3cde9b26();
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
	namespace_d5067552::function_54bdb053("sm_nrc_siegebot");
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
	level.var_76601d99.var_ef5ed6ae = 0;
	level.var_76601d99.var_de9eba31 = 999;
	level.var_76601d99.var_da1f4811 = 0;
	level.var_76601d99 namespace_3fc75f50::function_fefa9078();
	level.var_76601d99 namespace_3fc75f50::function_dd8d3882();
	level.var_76601d99 namespace_3fc75f50::function_4c6ee4cc(0);
	level.var_76601d99 namespace_72ee5da4::function_fa59cc99("scripted");
	var_74d0774f = level.var_76601d99.var_38a62b0e * 0.25;
	var_7e1ceefd = function_b6b79a0(var_74d0774f);
	level.var_76601d99.var_3a90f16b = level.var_76601d99.var_3a90f16b - var_7e1ceefd;
	level.var_76601d99 namespace_96fa87af::function_99199795(1);
	level.var_76601d99 function_db20c8d6("tag_lidar_null", "", 1);
	level.var_76601d99 function_db20c8d6("tag_defense_active");
	level.var_76601d99 notify("hash_27175bcd");
	level notify("hash_27175bcd", level.var_76601d99);
	level.var_76601d99 namespace_82b91a51::function_67520c6a(3, undefined, &namespace_96fa87af::function_492f8fe7, 1, 0);
	var_ea3d7abf = function_99201f25("qt_fall_event", "targetname");
	foreach(var_8fa50159 in var_ea3d7abf)
	{
		if(isdefined(var_8fa50159))
		{
			var_8fa50159 function_dc8c8404();
		}
	}
	var_66ee586a = function_6ada35ba("qt2_intro_kill_trigger", "targetname");
	var_e3b635fb = function_c20c2e8();
	var_b857e377 = function_525ae497(var_e3b635fb, level.var_2395e945, 1, 0);
	foreach(var_d08db518 in var_b857e377)
	{
		if(var_d08db518 namespace_82b91a51::function_d3426abc())
		{
			continue;
		}
		if(var_d08db518.var_170527fb === "artillery_quadtank_ai")
		{
			continue;
		}
		if(var_d08db518 function_32fa5072(var_66ee586a))
		{
			if(function_65f192a6(var_d08db518))
			{
				var_d08db518 function_c3945cd5(var_d08db518.var_3a90f16b, var_d08db518.var_722885f3);
				break;
				continue;
			}
			var_d08db518 function_2992720d();
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
	self namespace_3fc75f50::function_a389866();
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
	var_55141f56 = namespace_2f06d687::function_7387a40a("artillery_quadtank");
	var_55141f56 namespace_d84e54db::function_c9e45d52(1);
	var_55141f56 namespace_d84e54db::function_b4f5e3b9(1);
	var_55141f56 namespace_3fc75f50::function_4c6ee4cc(0);
	if(!var_fd827376)
	{
		var_55141f56 function_c7708f99("NRC_Quadtank");
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
	self endon("hash_128f8789");
	if(!level namespace_ad23e503::function_7922262b("qt1_died_in_a_bad_place"))
	{
		var_bfa0f33f = namespace_14b42b8a::function_7922262b("qt2_movement_path_A", "targetname");
		continue;
	}
	var_bfa0f33f = namespace_14b42b8a::function_7922262b("qt2_movement_path_B", "targetname");
	while(isdefined(var_bfa0f33f))
	{
		self function_169cc712(var_bfa0f33f.var_722885f3, 1);
		self waittill("hash_a2b47172");
		if(isdefined(var_bfa0f33f.var_b07228b6))
		{
			var_bfa0f33f = namespace_14b42b8a::function_7922262b(var_bfa0f33f.var_b07228b6, "targetname");
		}
		else
		{
			var_bfa0f33f = undefined;
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
	self waittill("hash_128f8789");
	wait(2);
	level namespace_ad23e503::function_74d6b22f("quad_tank_2_destroyed");
	namespace_9f824288::function_5d2cdd99();
	namespace_4dbf3ae3::function_42e87952("trig_color_quadtank3_allies");
	namespace_4dbf3ae3::function_42e87952("trig_color_quadtank3_axis");
	wait(10);
	level namespace_ad23e503::function_74d6b22f("spawn_quad_tank_3");
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
	level namespace_ad23e503::function_74d6b22f("demo_player_controlled_quadtank");
	level thread function_c6a0a6e5(self);
	level thread function_32450fc();
	wait(10);
	level namespace_ad23e503::function_74d6b22f("spawn_quad_tank_3");
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
	namespace_76d95162::function_d9f49fba(0);
	level namespace_71b8dba1::function_a463d127("tayr_we_need_to_expose_0");
	level namespace_71b8dba1::function_a463d127("tayr_you_know_me_hendric_0", 2);
	level namespace_71b8dba1::function_a463d127("tayr_you_were_supposed_to_0", 2);
	level namespace_71b8dba1::function_a463d127("tayr_all_you_had_to_do_wa_0", 2);
	level namespace_71b8dba1::function_a463d127("tayr_we_need_to_speak_to_0", 2);
	namespace_76d95162::function_d9f49fba(1);
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
	namespace_d5067552::function_54bdb053("qt2_nrc_wasp2_palace_sm");
	level notify("hash_d1eb1d04");
	namespace_d5067552::function_54bdb053("qt2_nrc_wasp2_berm_sm");
	var_c9ae457a = function_6ada35ba("post_qt2_wasp_goalvolume", "targetname");
	var_daa1cfc3 = namespace_d5067552::function_423eae50("qt2_nrc_wasp2_palace_sm");
	var_1edff0a3 = namespace_d5067552::function_423eae50("qt2_nrc_wasp2_berm_sm");
	var_528b1313 = function_525ae497(var_daa1cfc3, var_1edff0a3, 1, 0);
	foreach(var_aaefedf3 in var_528b1313)
	{
		var_aaefedf3 function_169cc712(var_c9ae457a, 1);
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
	namespace_d5067552::function_54bdb053("qt2_nrc_robot_rushers_sm");
	namespace_4dbf3ae3::function_42e87952("trig_color_player_controlled_QT_allies", "targetname");
	namespace_4dbf3ae3::function_42e87952("trig_color_player_controlled_QT_axis", "targetname");
	level thread function_f659f8de();
	while(!isdefined(level.var_dbed449f))
	{
		wait(0.1);
	}
	level thread function_437a78f9();
	level thread function_4b083f55();
	level thread function_ff5161bd();
	level namespace_ad23e503::function_43ac000b(function_84970cc4("qt_plaza_theater_destroyed", "qt_plaza_theater_enemies_cleared", "spawn_quad_tank_3"));
	wait(3);
	namespace_d5067552::function_bae40a28("qt_plaza_controllable_qt_raps_sm");
	level namespace_ad23e503::function_74d6b22f("spawn_quad_tank_3");
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
	var_d0aa3ba1 = function_fe0cfd2e("mobile_wall_exposed_nodes", "targetname");
	foreach(var_90ca1fdd in var_d0aa3ba1)
	{
		function_d224409e(var_90ca1fdd, 1);
	}
	namespace_d5067552::function_bae40a28("nrc_mobile_wall_sm");
	namespace_d5067552::function_bae40a28("demo_qt2_wasp_sm");
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
		level waittill("hash_91737d19", var_11ee1e64);
		if(var_11ee1e64.var_fd67e920 === "quadtank")
		{
			level.var_dbed449f = var_11ee1e64;
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
	self endon("hash_128f8789");
	wait(5);
	self namespace_96fa87af::function_3762fc40();
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
	namespace_d5067552::function_740ea7ff("nrc_theater_sm", 6);
	level namespace_ad23e503::function_74d6b22f("qt_plaza_theater_enemies_cleared");
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
	namespace_d5067552::function_54bdb053("sm_egypt_theater");
	var_5b1067a4 = namespace_d5067552::function_423eae50("sm_egypt_theater");
	foreach(var_a30bd475 in var_5b1067a4)
	{
		var_a30bd475.var_3a90f16b = 1;
	}
	wait(5);
	namespace_d5067552::function_bae40a28("nrc_theater_sm");
	var_4f0f0c4c = function_99201f25("breach_doors", "targetname");
	foreach(var_97ed0dad in var_4f0f0c4c)
	{
		var_97ed0dad function_dc8c8404();
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
	var_d0aa3ba1 = function_fe0cfd2e("qt3_nrc_truck_nodes", "script_noteworthy");
	foreach(var_90ca1fdd in var_d0aa3ba1)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	var_d0aa3ba1 = function_fe0cfd2e("qt1_nrc_truck_nodes", "script_noteworthy");
	foreach(var_90ca1fdd in var_d0aa3ba1)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	var_f29ad39f = function_99201f25("nrc_qt3_truck", "targetname");
	var_9a38d227 = 1;
	foreach(var_2e36c27c in var_f29ad39f)
	{
		var_9f3935f2 = namespace_2f06d687::function_7387a40a(var_2e36c27c);
		if(isdefined(var_9f3935f2))
		{
			var_9f3935f2 thread function_5cbc0fea();
			var_dfb53de7 = namespace_2f06d687::function_7387a40a("nrc_technical_gunner");
			var_dfb53de7 namespace_96fa87af::function_230eadd7(var_9f3935f2, "gunner1", 1);
			var_44762fa4 = namespace_2f06d687::function_7387a40a("nrc_technical_gunner");
			var_44762fa4 namespace_96fa87af::function_230eadd7(var_9f3935f2, "driver", 1);
			var_51a35d76 = function_243bb261(var_9f3935f2.var_b07228b6, "targetname");
			var_9f3935f2 thread namespace_96fa87af::function_edb3a94e(var_51a35d76);
			var_9f3935f2 thread function_e4aa3ab2(var_44762fa4);
			var_9f3935f2 thread function_56b0a5d2(var_9a38d227);
			var_9a38d227 = var_9a38d227 + 1;
			var_9f3935f2 function_991ad231();
			var_9f3935f2 function_917f75ac(0);
			var_9f3935f2 namespace_37b990db::function_bae40a28(1, 1);
		}
		wait(function_72a94f05(2, 5));
	}
	level thread function_4c7236e3();
	wait(5);
	var_d0aa3ba1 = function_fe0cfd2e("qt1_nrc_truck_nodes", "script_noteworthy");
	foreach(var_90ca1fdd in var_d0aa3ba1)
	{
		function_d224409e(var_90ca1fdd, 1);
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
function function_56b0a5d2(var_e7020f3)
{
	self endon("hash_128f8789");
	self waittill("hash_89126c82");
	self function_921a1574("evt_tech_driveup_qt_pair_" + var_e7020f3);
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
function function_e4aa3ab2(var_44762fa4)
{
	self endon("hash_128f8789");
	self waittill("hash_6cf6ac7e");
	if(function_5b49d38c(var_44762fa4))
	{
		var_44762fa4 namespace_96fa87af::function_dca9dba2();
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
		self waittill("hash_f9348fda", var_74d0774f, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_dfcc01fd == level.var_b27f706d || var_dfcc01fd == level.var_51d112fe || var_dfcc01fd == level.var_9e92e4b8)
		{
			self function_c3945cd5(self.var_3a90f16b, self.var_722885f3);
			break;
		}
	}
	var_cfcb49a5 = function_bc7ce905(self.var_6ab6f4fd) * -350 + VectorScale((0, 0, 1), 200);
	var_c6f2fa46 = self.var_722885f3 + function_bc7ce905(self.var_6ab6f4fd) * 10;
	self function_7d4fb40(var_cfcb49a5, var_c6f2fa46, 0);
	self thread function_1b1a9f3a();
	var_39352a5 = self.var_d925663e;
	foreach(var_d84e54db in var_39352a5)
	{
		var_d84e54db function_c3945cd5(var_d84e54db.var_3a90f16b, var_d84e54db.var_722885f3);
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
	self endon("hash_128f8789");
	if(isdefined(60))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(60, "timeout");
	}
	self waittill("hash_32ae4445");
	if(isdefined(self))
	{
		self function_921a1574("evt_truck_impact");
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
	self endon("hash_128f8789");
	self function_c7708f99("QT2_NRC_Raps");
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
	self endon("hash_128f8789");
	self function_c7708f99("QT2_NRC_Raps");
	self namespace_d84e54db::function_c9e45d52(1);
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
	self waittill("hash_128f8789");
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
	self endon("hash_128f8789");
	var_6587b577 = (10731, -15846, 200);
	self namespace_72ee5da4::function_5cbfc55e(var_6587b577, 0);
	self namespace_82b91a51::function_9fcf3cd8(3, "turret_on_target");
	var_26aaa5cc = namespace_14b42b8a::function_7922262b("qt_target_statue", "targetname");
	var_377a9c22 = function_9b7fda5e("script_model", var_26aaa5cc.var_722885f3);
	var_377a9c22 function_e48f905e("tag_origin");
	var_377a9c22.var_3a90f16b = 100;
	var_f92a03e7 = function_6ada35ba("statue_fall_damage_trigger", "targetname");
	self.var_5ed2f6d3 = 1;
	self.var_31380cef = 1;
	self namespace_72ee5da4::function_fa59cc99("combat");
	self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_377a9c22);
	self thread function_b4cabdde();
	level namespace_ad23e503::function_74d6b22f("qt_targets_statue");
	while(1)
	{
		var_f92a03e7 waittill("hash_f9348fda", var_74d0774f, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_a0ad4f34 == self && isdefined(var_dfcc01fd) && var_dfcc01fd == level.var_6c4e8561)
		{
			var_377a9c22 notify("hash_128f8789");
			level namespace_ad23e503::function_74d6b22f("qt_plaza_statue_destroyed");
			self.var_5ed2f6d3 = 0;
			self.var_31380cef = 0;
			break;
		}
	}
	level thread function_3ec052d8();
	var_377a9c22 function_dc8c8404();
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
	self endon("hash_128f8789");
	var_26aaa5cc = namespace_14b42b8a::function_7922262b("mobile_wall_fxanim", "targetname");
	self namespace_72ee5da4::function_5cbfc55e(var_26aaa5cc.var_722885f3, 0);
	self namespace_82b91a51::function_9fcf3cd8(3, "turret_on_target");
	var_377a9c22 = function_9b7fda5e("script_model", var_26aaa5cc.var_722885f3);
	var_377a9c22 function_e48f905e("tag_origin");
	var_377a9c22.var_3a90f16b = 100;
	var_f92a03e7 = function_6ada35ba("mobile_wall_damage_trigger", "targetname");
	self.var_5ed2f6d3 = 1;
	self.var_31380cef = 1;
	self namespace_72ee5da4::function_fa59cc99("combat");
	self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_377a9c22);
	while(1)
	{
		var_f92a03e7 waittill("hash_f9348fda", var_74d0774f, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_a0ad4f34 == self && isdefined(var_dfcc01fd) && var_dfcc01fd == level.var_6c4e8561)
		{
			var_377a9c22 notify("hash_128f8789");
			level namespace_ad23e503::function_74d6b22f("qt_plaza_mobile_wall_destroyed");
			self.var_5ed2f6d3 = 0;
			self.var_31380cef = 0;
			break;
		}
	}
	level thread function_fdcd27b4();
	var_377a9c22 function_dc8c8404();
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
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	self namespace_d84e54db::function_c9e45d52(1);
	self waittill("hash_9490ad38");
	self namespace_82b91a51::function_4b741fdc();
	self namespace_d84e54db::function_c9e45d52(0);
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
	var_e3b635fb = function_99201f25("statue_fall_guys_ai", "targetname", 1);
	namespace_d5067552::function_2992720d("sm_egypt_statue_fall");
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("qt_plaza_statue_retreat", "targetname");
	var_8f99a358 = function_41f575c3(var_3d2988cc);
	while(function_5b49d38c(self) && self.var_872042b7 === 0)
	{
		wait(0.05);
	}
	foreach(var_d84e54db in var_e3b635fb)
	{
		var_1cbcb46d = function_e7bdc1a1(var_d84e54db.var_722885f3, var_8f99a358);
		function_81403b2f(var_8f99a358, var_1cbcb46d, 0);
		var_1cbcb46d thread namespace_cc27597::function_c35e6aab(var_d84e54db);
		wait(function_72a94f05(0.1, 0.25));
	}
	level namespace_ad23e503::function_43ac000b(function_84970cc4("qt_plaza_statue_destroyed", "quad_tank_2_destroyed", "demo_player_controlled_quadtank"));
	if(level namespace_ad23e503::function_7922262b("qt_plaza_statue_destroyed"))
	{
		level thread function_e388dd6b(var_e3b635fb);
		foreach(var_1cbcb46d in var_3d2988cc)
		{
			var_1cbcb46d thread namespace_cc27597::function_43718187();
			wait(function_72a94f05(0.1, 0.25));
		}
	}
	else
	{
		level namespace_cc27597::function_fcf56ab5("cin_gen_react_retreat");
	}
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db notify("hash_9490ad38");
			var_d84e54db.var_7dfaf62 = 512;
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
	self endon("hash_128f8789");
	var_c9ae457a = function_6ada35ba(self.var_b07228b6, "targetname");
	self function_169cc712(var_c9ae457a, 1);
	self.var_501514b8 = 1;
	namespace_4dbf3ae3::function_1ab5ebec(self.var_b07228b6, "targetname", self);
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
	self function_c7708f99("NRC_theater_guys");
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
	self endon("hash_128f8789");
	var_c9ae457a = function_6ada35ba(self.var_b07228b6, "targetname");
	self function_169cc712(var_c9ae457a, 1);
	namespace_4dbf3ae3::function_1ab5ebec(self.var_b07228b6, "targetname", self);
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
	self endon("hash_128f8789");
	self function_c7708f99("NRC_center_guys");
	if(level.var_2395e945.size > 1)
	{
		var_e3b635fb = namespace_d5067552::function_423eae50("sm_nrc_quadtank");
		if(var_e3b635fb.size > 0 && isdefined(level.var_34a51b7b) && level.var_34a51b7b.size > 0)
		{
			foreach(var_76bcdea7 in level.var_34a51b7b)
			{
				var_76bcdea7 namespace_37b990db::function_37450ddc(var_e3b635fb, 0);
			}
		}
	}
	else if(!level namespace_ad23e503::function_7922262b("quad_tank_1_destroyed"))
	{
		if(function_5dbf7eca(self.var_e6e9b8de, "shotgun"))
		{
			var_3e671a1 = namespace_2f06d687::function_289e6fd1("qt1_nrc_shotgunner").size;
			if(var_3e671a1 < 4)
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
	self endon("hash_128f8789");
	self namespace_ad23e503::function_c35e6aab("nrc_qt1_shotgunner_rush");
	self function_c7708f99("NRC_QT1_Shotgunners");
	function_67df0abc("NRC_QT1_Shotgunners", "Egyptian_RPG_guys");
	function_67df0abc("Egyptian_RPG_guys", "NRC_QT1_Shotgunners");
	self thread function_10c25a20();
	self waittill("hash_41d1aaf0");
	wait(function_72a94f05(5, 20));
	self namespace_ad23e503::function_74d6b22f("nrc_qt1_shotgunner_rush");
	var_d0aa3ba1 = function_fe0cfd2e("nrc_shotgun_rusher_node", "targetname");
	var_9de10fe3 = namespace_84970cc4::function_47d18840(var_d0aa3ba1);
	self function_169cc712(var_9de10fe3, 1);
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
	self endon("hash_128f8789");
	self endon("hash_cb188399");
	self namespace_391e4301::function_f08afb37();
	namespace_82b91a51::function_39b48811(level, "quad_tank_1_destroyed", self, "nrc_qt1_shotgunner_rush");
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
	self endon("hash_128f8789");
	var_c9ae457a = function_6ada35ba("qt1_nrc_rusher_goalvolume", "targetname");
	while(1)
	{
		var_c9ae457a waittill("hash_4dbf3ae3", var_a3d46ee4);
		if(var_a3d46ee4 == self)
		{
			break;
		}
	}
	self function_169cc712(var_c9ae457a, 1);
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
	self endon("hash_128f8789");
	self endon("hash_cb188399");
	self namespace_391e4301::function_f08afb37();
	level namespace_ad23e503::function_1ab5ebec("quad_tank_1_destroyed");
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
	self endon("hash_128f8789");
	self function_c7708f99("NRC_QT2_Robot_Rushers");
	function_67df0abc("Egyptian_RPG_guys", "NRC_QT2_Robot_Rushers");
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	namespace_4dbf3ae3::function_1ab5ebec("robot_callout_vo_trigger", "targetname", self);
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
	self endon("hash_128f8789");
	self function_c7708f99("Egyptian_Theater_guys");
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
	self endon("hash_128f8789");
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("qt_plaza_traverse_mobile_wall", "targetname");
	var_3d2988cc = namespace_84970cc4::function_8332f7f6(var_3d2988cc);
	while(1)
	{
		foreach(var_1cbcb46d in var_3d2988cc)
		{
			if(!var_1cbcb46d namespace_cc27597::function_367f8966())
			{
				var_1cbcb46d namespace_cc27597::function_43718187(self);
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
	var_4a38f1ec = function_99201f25("wing_carver_slanty", "targetname");
	foreach(var_a917350c in var_4a38f1ec)
	{
		var_a917350c function_422037f5();
		var_a917350c function_de8377bf();
	}
	var_4a38f1ec = function_99201f25("wing_carver_upright", "targetname");
	foreach(var_a917350c in var_4a38f1ec)
	{
		var_a917350c function_422037f5();
		var_a917350c function_de8377bf();
	}
	var_4562cbcf = function_99201f25("wing_slanty_collision", "targetname");
	foreach(var_d874dcf in var_4562cbcf)
	{
		var_d874dcf function_422037f5();
		var_d874dcf function_de8377bf();
	}
	var_4562cbcf = function_99201f25("wing_collision_upright", "targetname");
	foreach(var_d874dcf in var_4562cbcf)
	{
		var_d874dcf function_422037f5();
		var_d874dcf function_de8377bf();
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
	var_60571323 = function_99201f25("post_collapse_collision", "targetname");
	foreach(var_d874dcf in var_60571323)
	{
		var_d874dcf function_422037f5();
		var_d874dcf function_de8377bf();
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
	var_64dd962c = function_99201f25("palace_corner_blocker", "targetname");
	foreach(var_48b3274c in var_64dd962c)
	{
		var_48b3274c function_422037f5();
		var_48b3274c function_de8377bf();
		var_48b3274c function_50ccee8d();
	}
	var_d0aa3ba1 = function_fe0cfd2e("qt_plaza_palace_corner_cover", "script_noteworthy");
	foreach(var_90ca1fdd in var_d0aa3ba1)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	wait(0.1);
	foreach(var_90ca1fdd in var_d0aa3ba1)
	{
		function_d224409e(var_90ca1fdd, 1);
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
	var_ff82325f = function_6ada35ba("outro_shot_010_shadow", "targetname");
	var_ff82325f function_50ccee8d();
	var_ff82325f = function_6ada35ba("outro_shot_020_shadow", "targetname");
	var_ff82325f function_50ccee8d();
	var_ff82325f = function_6ada35ba("outro_shot_040_shadow", "targetname");
	var_ff82325f function_50ccee8d();
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
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_quadtank_statue_bundle", &function_5fea384c, "play");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_quadtank_statue_bundle");
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
	var_172dde81 = function_6ada35ba("quadtank_statue", "targetname");
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
	var_4a38f1ec = function_99201f25("wing_carver_upright", "targetname");
	foreach(var_a917350c in var_4a38f1ec)
	{
		var_a917350c function_4083a98e();
		var_a917350c function_14c24d9d();
	}
	var_4562cbcf = function_99201f25("wing_collision_upright", "targetname");
	foreach(var_d874dcf in var_4562cbcf)
	{
		var_d874dcf function_4083a98e();
		var_d874dcf function_14c24d9d();
	}
	var_a7f11dbf = function_99201f25("trig_kill_bird_wing", "targetname");
	var_e3b635fb = function_c20c2e8();
	var_b857e377 = function_525ae497(var_e3b635fb, level.var_2395e945, 1, 0);
	foreach(var_d08db518 in var_b857e377)
	{
		if(var_d08db518 namespace_82b91a51::function_d3426abc())
		{
			break;
		}
		if(var_d08db518 === level.var_dbed449f)
		{
			var_d08db518 function_c3945cd5(var_d08db518.var_3a90f16b, var_d08db518.var_722885f3);
		}
		foreach(var_66ee586a in var_a7f11dbf)
		{
			if(var_d08db518 function_32fa5072(var_66ee586a))
			{
				if(function_65f192a6(var_d08db518))
				{
					var_d08db518 function_c3945cd5(var_d08db518.var_3a90f16b, var_d08db518.var_722885f3);
					break;
					continue;
				}
				var_d08db518 function_2992720d();
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
	var_4a38f1ec = function_99201f25("wing_carver_slanty", "targetname");
	foreach(var_a917350c in var_4a38f1ec)
	{
		var_a917350c function_4083a98e();
		var_a917350c function_14c24d9d();
	}
	var_4562cbcf = function_99201f25("wing_slanty_collision", "targetname");
	foreach(var_d874dcf in var_4562cbcf)
	{
		var_d874dcf function_4083a98e();
		var_d874dcf function_14c24d9d();
	}
	var_21868e86 = function_fe0cfd2e("statue_fall_cover_nodes", "targetname");
	foreach(var_7d824fa6 in var_21868e86)
	{
		function_d224409e(var_7d824fa6, 0);
	}
	var_a7f11dbf = function_99201f25("trig_kill_bird_body", "targetname");
	var_e3b635fb = function_c20c2e8();
	var_b857e377 = function_525ae497(var_e3b635fb, level.var_2395e945, 1, 0);
	foreach(var_d08db518 in var_b857e377)
	{
		if(var_d08db518 namespace_82b91a51::function_d3426abc())
		{
			break;
		}
		if(var_d08db518 === level.var_dbed449f)
		{
			var_d08db518 function_c3945cd5(var_d08db518.var_3a90f16b, var_d08db518.var_722885f3);
		}
		foreach(var_66ee586a in var_a7f11dbf)
		{
			if(var_d08db518 function_32fa5072(var_66ee586a))
			{
				if(function_65f192a6(var_d08db518))
				{
					var_d08db518 function_c3945cd5(var_d08db518.var_3a90f16b, var_d08db518.var_722885f3);
					break;
					continue;
				}
				var_d08db518 function_2992720d();
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
	var_b0b3743d = namespace_2f06d687::function_7387a40a("third_quadtank");
	level.var_ba0708a2 = var_b0b3743d;
	var_b0b3743d function_c7708f99("NRC_Quadtank");
	var_b0b3743d thread function_180ef4c7();
	level namespace_ad23e503::function_74d6b22f("quad_tank_3_spawned");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_destroy_quadtank", var_b0b3743d);
	level thread namespace_a6a248fc::function_63054139();
	level thread function_7ced451a();
	var_2d14a2a4 = function_99201f25("oh_yeah_explosion", "targetname");
	foreach(var_56ef6b49 in var_2d14a2a4)
	{
		var_56ef6b49 function_dc8c8404();
	}
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_quadtank_plaza_glass_building_bundle", &function_b8afae40, "done");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_quadtank_plaza_glass_building_bundle");
	function_b78937aa("glass_building_pos");
	var_b0b3743d thread function_6fd11e63();
	level namespace_ad23e503::function_1ab5ebec("third_quadtank_killed");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_destroy_quadtank");
	level notify("hash_a5b3808b");
	namespace_d5067552::function_54bdb053("qt2_nrc_robot_rushers_sm");
	level notify("hash_941e824f");
	namespace_d5067552::function_54bdb053("sm_nrc_quadtank");
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
	level thread namespace_cc27597::function_c35e6aab("cin_ram_08_gettofreeway_3rd_sh010");
	namespace_38256252::function_84fd481b();
	namespace_38256252::function_c31ee41b();
	level thread namespace_82b91a51::function_d8eaed3d(4, 1);
	if(isdefined(level.var_dbed449f) && level.var_dbed449f.var_170527fb === "third_quadtank_ai")
	{
		wait(15);
	}
	wait(3);
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	namespace_82b91a51::function_7e61de2b(3);
	namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_83fd42b5);
	function_e2d7342();
	function_f43eaed9();
	level thread function_e1f59e09();
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_s_the_last_of_1", 0.5);
	wait(1);
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 0);
	level namespace_ad23e503::function_74d6b22f("qt_plaza_outro_igc_started");
	level thread namespace_a6a248fc::function_ff483e3c();
	level thread namespace_4fe3eef1::function_9908d262("mus_ramses_battle_intro");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_flyover_plaza_cinematic_bundle");
	namespace_96fa87af::function_994832bd("qt_plaza_outro_vtol_flyovers", &function_cda7e0dc);
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh010", &function_3ac3f1f8, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh020", &function_1c433532, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh010", &function_edfa8509, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh010", &function_7f81dc0a, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh020", &function_b54fb58e, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh030", &function_a5697ed9, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh020", &function_91033548, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh030", &function_39b3e8bb, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh020", &function_5e9771a6, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh020", &function_68ec61cd, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh040", &function_e31876ac, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh040", &function_40ffea00, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh050", &function_892c9e40, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh030", &function_b8670a1c, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh030", &function_ed468ba2, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_08_gettofreeway_3rd_sh320", &function_fdd71532, "play");
	level namespace_71e9cb84::function_74d6b22f("qt_plaza_outro_exposure", 1);
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	if(isdefined(level.var_d6cbae75))
	{
		level thread [[level.var_d6cbae75]]();
	}
	namespace_82b91a51::function_67520c6a(1, undefined, &namespace_82b91a51::function_593c2af4, 1);
	namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_4890e520);
	level thread namespace_cc27597::function_43718187("cin_ram_08_gettofreeway_3rd_sh010");
	if(!level namespace_ad23e503::function_7922262b("qt_plaza_statue_destroyed"))
	{
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_quadtank_statue_bundle");
	}
	if(!level namespace_ad23e503::function_7922262b("qt_plaza_rocket_building_destroyed"))
	{
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_quadtank_plaza_building_rocket_bundle");
	}
	if(!level namespace_ad23e503::function_7922262b("qt_plaza_mobile_wall_destroyed"))
	{
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
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
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_a03af093))
		{
			var_aafd7555 = 1;
			var_5dc5e20a.var_a03af093 function_16337f9e(var_5dc5e20a, 0);
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
function function_3ac3f1f8(var_c77d2837)
{
	namespace_4dbf3ae3::function_42e87952("trigger_play_corpse_scenes_initial");
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
function function_1c433532(var_c77d2837)
{
	namespace_4dbf3ae3::function_42e87952("trigger_play_corpse_scenes_sh030");
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
function function_b54fb58e(var_c77d2837)
{
	function_9e3608e3("quadtank_statue_static2");
	level namespace_71e9cb84::function_74d6b22f("hide_statue_rubble", 1);
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
function function_a5697ed9(var_c77d2837)
{
	wait(0.05);
	function_6ddd4fa4("quadtank_statue_static2");
	level namespace_71e9cb84::function_74d6b22f("hide_statue_rubble", 0);
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
function function_fdd71532(var_c77d2837)
{
	level waittill("hash_faad7d97");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	level.var_6e1075a2 = 0;
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_82b91a51::function_7e61de2b(0.9, "black", "end_level_fade");
	}
	if(level.var_31aefea8 !== "dev_qt_plaza_outro")
	{
		namespace_1d795d47::function_be8adfb8("quad_tank_plaza");
	}
	else
	{
		namespace_1d795d47::function_be8adfb8("dev_qt_plaza_outro");
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
function function_91033548(var_c77d2837)
{
	namespace_4dbf3ae3::function_42e87952("vtol_flyover_spawn_sh020");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_flyover_plaza_cinematic_bundle");
	level waittill("hash_67d3927a");
	namespace_4dbf3ae3::function_42e87952("vtol_flyover_spawn_sh020_part_2");
	level waittill("hash_8dd60ce3");
	namespace_4dbf3ae3::function_42e87952("vtol_flyover_spawn_sh020_part_3");
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
function function_39b3e8bb(var_c77d2837)
{
	namespace_4dbf3ae3::function_42e87952("vtol_flyover_spawn_sh030");
	level waittill("hash_816e1e05");
	namespace_4dbf3ae3::function_42e87952("vtol_flyover_spawn_sh030_part_2");
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
	self endon("hash_128f8789");
	var_f6ae891b = [];
	var_32075ff = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
	foreach(var_14b42b8a in var_32075ff)
	{
		var_3125b750 = function_9b7fda5e("script_model", var_14b42b8a.var_722885f3);
		var_3125b750.var_6ab6f4fd = var_14b42b8a.var_6ab6f4fd;
		var_3125b750 function_e48f905e(var_14b42b8a.var_6df9264);
		var_3125b750 function_37f7858a(self);
		var_f6ae891b[var_f6ae891b.size] = var_3125b750;
	}
	self waittill("hash_6cf6ac7e");
	namespace_84970cc4::function_eaab05dc(var_f6ae891b, &function_dc8c8404);
	self function_dc8c8404();
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
function function_b8670a1c(var_c77d2837)
{
	level.var_2435cc61 = 0;
	level.var_ac69c49c = level.var_2435cc61;
	level namespace_82b91a51::function_5d60e278(5000);
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
function function_ed468ba2(var_c77d2837)
{
	if(isdefined(level.var_ac69c49c))
	{
		level namespace_82b91a51::function_5d60e278(level.var_ac69c49c);
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
function function_edfa8509(var_c77d2837)
{
	var_ff82325f = function_6ada35ba("outro_shot_010_shadow", "targetname");
	var_ff82325f function_48f26766();
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
function function_7f81dc0a(var_c77d2837)
{
	var_ff82325f = function_6ada35ba("outro_shot_010_shadow", "targetname");
	var_ff82325f function_50ccee8d();
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
function function_5e9771a6(var_c77d2837)
{
	var_ff82325f = function_6ada35ba("outro_shot_020_shadow", "targetname");
	var_ff82325f function_48f26766();
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
function function_68ec61cd(var_c77d2837)
{
	var_ff82325f = function_6ada35ba("outro_shot_020_shadow", "targetname");
	var_ff82325f function_50ccee8d();
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
function function_e31876ac(var_c77d2837)
{
	var_ff82325f = function_6ada35ba("outro_shot_040_shadow", "targetname");
	var_ff82325f function_48f26766();
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
function function_40ffea00(var_c77d2837)
{
	function_9e3608e3("quadtank_statue_static2");
	var_64dd962c = function_99201f25("palace_corner_blocker", "targetname");
	foreach(var_48b3274c in var_64dd962c)
	{
		var_48b3274c function_dc8c8404();
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
function function_892c9e40(var_c77d2837)
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
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("third_quadtank_killed");
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
	var_37613e3e = namespace_14b42b8a::function_7922262b("qt_plaza_new_bldg_phalanx_start", "targetname");
	var_b8b1f3cd = namespace_14b42b8a::function_7922262b("qt_plaza_new_bldg_phalanx_end", "targetname");
	var_88fc10b2 = function_6ada35ba("nrc_phalanx_spawner_cqb", "targetname", 0);
	var_62f99649 = function_6ada35ba("nrc_phalanx_spawner_assault", "targetname", 0);
	function_9b385ca5();
	var_2f359655 = var_3bc9e3b7;
	function_e6cab0ff(var_2f359655, "phalanx_column", var_37613e3e.var_722885f3, var_b8b1f3cd.var_722885f3, 2, 4, var_88fc10b2);
	level.var_2f359655 = var_2f359655;
	level thread function_cc1c9255();
	var_422e7ca6 = function_525ae497(function_525ae497(var_2f359655.var_73d3be38, var_2f359655.var_d00dab6d, 0, 0), var_2f359655.var_75841262, 0, 0);
	namespace_d84e54db::function_21fe06cc(var_422e7ca6, 6);
	namespace_d5067552::function_bae40a28("sm_nrc_quadtank3_robots");
	level.var_2f359655 = undefined;
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
	if(isdefined(level.var_2f359655))
	{
		level.var_2f359655 namespace_3bc9e3b7::function_da4b4a9();
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
	self endon("hash_128f8789");
	var_56a9d451 = function_6ada35ba(self.var_b07228b6, "targetname");
	self function_169cc712(var_56a9d451, 1);
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
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("qt_plaza_wasp_vo_trigger", "targetname", self);
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
function function_cd53f16b(var_ec24660, var_39dd968a, var_eadffde8)
{
	level endon(self.var_170527fb + "_wave_spawner_stop");
	/#
		namespace_33b293fd::function_a7ee953(var_ec24660 <= var_39dd968a, "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(var_eadffde8 <= self.var_e290d32d, "Dev Block strings are not supported");
	#/
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	while(isdefined(self) && level.var_2395e945.size == 1)
	{
		while(isdefined(self))
		{
			var_f3e62b98 = namespace_d5067552::function_423eae50(self.var_170527fb);
			if(isdefined(var_f3e62b98.size) && var_f3e62b98.size < self.var_e290d32d)
			{
				wait(0.1);
				continue;
			}
			else
			{
				namespace_d5067552::function_54bdb053(self.var_170527fb);
				break;
			}
		}
		while(isdefined(self))
		{
			var_f3e62b98 = namespace_d5067552::function_423eae50(self.var_170527fb);
			if(isdefined(var_f3e62b98.size) && var_f3e62b98.size <= var_eadffde8)
			{
				wait(function_72a94f05(var_ec24660, var_39dd968a));
				namespace_d5067552::function_bae40a28(self.var_170527fb);
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
	namespace_d5067552::function_bae40a28("sm_nrc_berm_rpg", 1);
	self thread function_e07edd0e();
	self.var_d28ae602 = 3000;
	level thread function_e9bc4a8a();
	if(self.var_170527fb !== "third_quadtank_ai")
	{
		namespace_d0ef8521::function_31cd1834("cp_level_ramses_destroy_quadtank");
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
	self waittill("hash_128f8789");
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
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_91737d19", var_52b4a338);
		var_52b4a338 function_c7708f99("PlayerVehicles");
		if(isdefined(var_52b4a338.var_8fc0e50e) && var_52b4a338.var_8fc0e50e == "quadtank")
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
	level.var_dbed449f endon("hash_128f8789");
	if(namespace_ad23e503::function_7922262b("qt_plaza_theater_destroyed"))
	{
		return;
	}
	level thread function_d283a64d();
	level thread function_5aeb8678();
	level namespace_ad23e503::function_1ab5ebec("qt_plaza_theater_destroyed");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_cinema_collapse_bundle", &function_c56ab13c, "play");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_cinema_collapse_bundle");
	function_4911582b();
	namespace_80983c42::function_593e8a39("LGT_theater");
	namespace_d5067552::function_54bdb053("nrc_theater_sm");
	namespace_d5067552::function_54bdb053("sm_egypt_theater");
	var_f92a03e7 = function_6ada35ba("trigger_cinema_collapse", "targetname");
	level thread function_21deb0d2(var_f92a03e7);
	var_a8a64a67 = function_fe0cfd2e("qt_plaza_theater_cover_node", "script_noteworthy");
	foreach(var_90ca1fdd in var_a8a64a67)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	var_60571323 = function_99201f25("post_collapse_collision", "targetname");
	foreach(var_d874dcf in var_60571323)
	{
		var_d874dcf function_4083a98e();
		var_d874dcf function_14c24d9d();
	}
	var_2ac13e86 = function_99201f25("pre_collapse_collision", "targetname");
	foreach(var_d874dcf in var_2ac13e86)
	{
		var_d874dcf function_422037f5();
	}
	function_b78937aa("theater_fxanim_org");
	namespace_84970cc4::function_eaab05dc(function_99201f25("qt_plaza_theater_ammo", "targetname"), &function_dc8c8404);
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
function function_c56ab13c(var_c77d2837)
{
	var_aed142c5 = var_c77d2837["cinema_collapse"];
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
function function_21deb0d2(var_f92a03e7, var_914edfb2)
{
	if(!isdefined(var_914edfb2))
	{
		var_914edfb2 = 0;
	}
	var_e3b635fb = function_c20c2e8();
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(isdefined(level.var_dbed449f) && var_d84e54db == level.var_dbed449f)
		{
			if(var_914edfb2 && var_d84e54db function_32fa5072(var_f92a03e7))
			{
				var_d84e54db function_c3945cd5(var_d84e54db.var_3a90f16b, var_d84e54db.var_722885f3);
				continue;
			}
			else
			{
				continue;
			}
		}
		if(isdefined(var_d84e54db.var_8fc0e50e) && var_d84e54db.var_8fc0e50e == "quadtank")
		{
			if(var_914edfb2 && var_d84e54db function_32fa5072(var_f92a03e7))
			{
				var_d84e54db function_c3945cd5(var_d84e54db.var_3a90f16b, var_d84e54db.var_722885f3);
				continue;
			}
			else
			{
				continue;
			}
		}
		if(var_d84e54db function_32fa5072(var_f92a03e7) && !var_d84e54db namespace_82b91a51::function_d3426abc())
		{
			var_d84e54db function_2992720d();
		}
	}
	var_95589644 = namespace_1d795d47::function_3529c409("cinema_teleport_outside");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_32fa5072(var_f92a03e7))
		{
			if(isdefined(var_5dc5e20a.var_a03af093) && var_95589644.size > 0)
			{
				var_5dc5e20a thread function_2ea9c430(var_95589644[0]);
				function_6c668988(var_95589644, 0);
			}
			else
			{
				var_5dc5e20a function_c3945cd5(var_5dc5e20a.var_3a90f16b, var_5dc5e20a.var_722885f3);
			}
		}
		if(isdefined(var_5dc5e20a.var_a03af093) && var_5dc5e20a.var_a03af093 function_32fa5072(var_f92a03e7))
		{
			var_5dc5e20a.var_a03af093 function_16337f9e(var_5dc5e20a, 0);
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
function function_2ea9c430(var_b5c1cc55)
{
	self endon("hash_128f8789");
	self waittill("hash_c68b15c8");
	wait(0.05);
	wait(0.05);
	self function_a30814d(var_b5c1cc55.var_722885f3);
	self function_eda2be50(var_b5c1cc55.var_6ab6f4fd);
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
	level.var_dbed449f endon("hash_128f8789");
	var_f92a03e7 = function_6ada35ba("trigger_cinema_collapse", "targetname");
	while(1)
	{
		var_f92a03e7 waittill("hash_f9348fda", var_74d0774f, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_a0ad4f34 === level.var_efe14c34)
		{
			if(var_fe311e35 === "MOD_PROJECTILE" || var_fe311e35 === "MOD_PROJECTILE_SPLASH")
			{
				level namespace_ad23e503::function_74d6b22f("qt_plaza_theater_destroyed");
				var_f92a03e7 function_dc8c8404();
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
	level.var_dbed449f endon("hash_128f8789");
	while(1)
	{
		level.var_dbed449f waittill("hash_aa1618b0", var_148fb98c);
		var_148fb98c thread function_edf54d14();
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
	self endon("hash_128f8789");
	var_f92a03e7 = function_6ada35ba("trigger_cinema_collapse", "targetname");
	while(1)
	{
		if(self function_32fa5072(var_f92a03e7))
		{
			self notify("hash_128f8789");
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
	var_f92a03e7 = function_6ada35ba("theater_fxanim_kill_trigger_left", "targetname");
	level thread function_21deb0d2(var_f92a03e7, 1);
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
	var_f92a03e7 = function_6ada35ba("theater_fxanim_kill_trigger_right", "targetname");
	level thread function_21deb0d2(var_f92a03e7, 1);
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
	var_f92a03e7 = function_6ada35ba("theater_fxanim_kill_trigger_center", "targetname");
	level thread function_21deb0d2(var_f92a03e7, 1);
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
		var_f92a03e7 = function_6ada35ba("test_quadtank_damage", "targetname");
		var_f92a03e7 waittill("hash_4dbf3ae3", var_a3d46ee4);
		if(isdefined(level.var_efe14c34) && var_a3d46ee4 == level.var_efe14c34)
		{
			var_62c010e3 = function_99201f25("physics_test_objects", "targetname");
			foreach(var_8b6fbf68 in var_62c010e3)
			{
				var_8b6fbf68 function_822f0cc5(var_8b6fbf68.var_722885f3, VectorScale((0, 0, 1), 20));
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
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
	function_b78937aa("mobile_wall_fxanim");
	var_366ecd15 = function_99201f25("mobile_wall_explosion_hidden", "targetname");
	foreach(var_fff2323a in var_366ecd15)
	{
		var_fff2323a function_50ccee8d();
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
	level namespace_71e9cb84::function_74d6b22f("vtol_igc_fxanim_hunter", 1);
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
	level namespace_71e9cb84::function_74d6b22f("qt_plaza_fxanim_hunters", 1);
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
	level namespace_71e9cb84::function_74d6b22f("qt_plaza_fxanim_hunters", 0);
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
	level namespace_71e9cb84::function_74d6b22f("theater_fxanim_swap", 1);
	namespace_84970cc4::function_eaab05dc(function_99201f25("destroyed_interior", "targetname"), &function_50ccee8d);
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
	level namespace_71e9cb84::function_74d6b22f("theater_fxanim_swap", 0);
	var_f6ae891b = function_99201f25("pristine_interior", "targetname");
	foreach(var_3125b750 in var_f6ae891b)
	{
		var_3125b750 function_50ccee8d();
	}
	namespace_84970cc4::function_eaab05dc(function_99201f25("destroyed_interior", "targetname"), &function_48f26766);
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
function function_b78937aa(var_a0b86a77)
{
	var_bfa0f33f = namespace_14b42b8a::function_7922262b(var_a0b86a77, "targetname");
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_7f4006e3 = function_316422d1(var_bfa0f33f.var_722885f3, var_6bfe1586.var_722885f3);
		if(var_7f4006e3 < 1000000)
		{
			var_6bfe1586 function_e2af603e("tank_damage_heavy_mp");
			function_9cf04c2e(0.65, 0.7, var_6bfe1586.var_722885f3, 128);
			if(var_7f4006e3 < 62500)
			{
				var_6bfe1586 function_f1aa5a21("default", 1.5);
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
	var_46639773 = namespace_84970cc4::function_47d18840(var_c9fd3802);
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386(var_46639773);
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
		self waittill("hash_6530962c");
		if(namespace_d73b9283::function_d2c92ee7())
		{
			var_46639773 = function_46197f76(var_83e15cc6, var_e6e0d46e);
			level.var_2fd26037 namespace_71b8dba1::function_81141386(var_46639773);
			var_e6e0d46e = var_46639773;
		}
		else
		{
			var_46639773 = function_46197f76(var_864f1072, var_36a7c200);
			level namespace_71b8dba1::function_a463d127(var_46639773);
			var_36a7c200 = var_46639773;
		}
		wait(function_72a94f05(45, 60));
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
			var_df8a7392 = namespace_d5067552::function_423eae50("qt1_nrc_amws_sm");
		}
		while(!var_df8a7392.size < 1);
		var_ac9c19b = namespace_d5067552::function_423eae50("sm_egypt_siegebot");
		var_98c25260 = namespace_d5067552::function_423eae50("sm_egypt_quadtank");
		var_e3b635fb = function_525ae497(var_ac9c19b, var_98c25260, 1, 0);
		if(var_e3b635fb.size > 0)
		{
			var_58c5eb41 = undefined;
			var_e3b635fb = namespace_84970cc4::function_8332f7f6(var_e3b635fb);
			foreach(var_d84e54db in var_e3b635fb)
			{
				if(function_5b49d38c(var_d84e54db) && var_d84e54db.var_fe2c8dda !== 1)
				{
					var_58c5eb41 = var_d84e54db;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				var_46639773 = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 namespace_71b8dba1::function_81141386(var_46639773);
				var_45e7b1aa = var_46639773;
				wait(function_72a94f05(30, 45));
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
		if(namespace_d73b9283::function_d2c92ee7())
		{
			var_46639773 = function_46197f76(var_3b620724, var_9ef5f81e);
			level.var_9db406db namespace_71b8dba1::function_81141386(var_46639773);
			var_9ef5f81e = var_46639773;
			wait(function_72a94f05(30, 45));
		}
		else
		{
			wait(0.15);
			var_6ee22718 = namespace_2f06d687::function_41e09b9("nrc_raps");
			var_ac9c19b = namespace_d5067552::function_423eae50("sm_egypt_siegebot");
			var_98c25260 = namespace_d5067552::function_423eae50("sm_egypt_quadtank");
			var_e3b635fb = function_525ae497(var_ac9c19b, var_98c25260, 1, 0);
			if(var_e3b635fb.size > 0)
			{
				var_58c5eb41 = undefined;
				var_e3b635fb = namespace_84970cc4::function_8332f7f6(var_e3b635fb);
				foreach(var_d84e54db in var_e3b635fb)
				{
					if(function_5b49d38c(var_d84e54db) && var_d84e54db.var_fe2c8dda !== 1)
					{
						var_58c5eb41 = var_d84e54db;
						break;
					}
				}
				if(isdefined(var_58c5eb41))
				{
					var_46639773 = function_46197f76(var_c9fd3802, var_45e7b1aa);
					var_58c5eb41 namespace_71b8dba1::function_81141386(var_46639773);
					var_45e7b1aa = var_46639773;
					wait(function_72a94f05(30, 45));
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
		wait(function_72a94f05(60, 90));
		if(namespace_d73b9283::function_d2c92ee7())
		{
			var_46639773 = function_46197f76(var_83e15cc6, var_e6e0d46e);
			level.var_2fd26037 namespace_71b8dba1::function_81141386(var_46639773);
			var_e6e0d46e = var_46639773;
		}
		else
		{
			var_46639773 = function_46197f76(var_864f1072, var_36a7c200);
			level namespace_71b8dba1::function_a463d127(var_46639773);
			var_36a7c200 = var_46639773;
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
		var_ac9c19b = namespace_d5067552::function_423eae50("sm_egypt_siegebot");
		var_98c25260 = namespace_d5067552::function_423eae50("sm_egypt_quadtank");
		var_e3b635fb = function_525ae497(var_ac9c19b, var_98c25260, 1, 0);
		if(var_e3b635fb.size > 0)
		{
			var_58c5eb41 = undefined;
			var_e3b635fb = namespace_84970cc4::function_8332f7f6(var_e3b635fb);
			foreach(var_d84e54db in var_e3b635fb)
			{
				if(function_5b49d38c(var_d84e54db) && var_d84e54db.var_fe2c8dda !== 1)
				{
					var_58c5eb41 = var_d84e54db;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				var_46639773 = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 namespace_71b8dba1::function_81141386(var_46639773);
				var_522ce6c6++;
				var_45e7b1aa = var_46639773;
				wait(function_72a94f05(1.5, 2.5));
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
		var_ac9c19b = namespace_d5067552::function_423eae50("sm_egypt_siegebot");
		var_98c25260 = namespace_d5067552::function_423eae50("sm_egypt_quadtank");
		var_e3b635fb = function_525ae497(var_ac9c19b, var_98c25260, 1, 0);
		if(var_e3b635fb.size > 0)
		{
			var_58c5eb41 = undefined;
			var_e3b635fb = namespace_84970cc4::function_8332f7f6(var_e3b635fb);
			foreach(var_d84e54db in var_e3b635fb)
			{
				if(function_5b49d38c(var_d84e54db) && var_d84e54db.var_fe2c8dda !== 1)
				{
					var_58c5eb41 = var_d84e54db;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				var_46639773 = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 namespace_71b8dba1::function_81141386(var_46639773);
				var_522ce6c6++;
				var_45e7b1aa = var_46639773;
				wait(function_72a94f05(60, 120));
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
		var_ac9c19b = namespace_d5067552::function_423eae50("sm_egypt_siegebot");
		var_98c25260 = namespace_d5067552::function_423eae50("sm_egypt_quadtank");
		var_e3b635fb = function_525ae497(var_ac9c19b, var_98c25260, 1, 0);
		if(var_e3b635fb.size > 0)
		{
			var_58c5eb41 = undefined;
			var_e3b635fb = namespace_84970cc4::function_8332f7f6(var_e3b635fb);
			foreach(var_d84e54db in var_e3b635fb)
			{
				if(function_5b49d38c(var_d84e54db) && var_d84e54db.var_fe2c8dda !== 1)
				{
					var_58c5eb41 = var_d84e54db;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				var_46639773 = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 namespace_71b8dba1::function_81141386(var_46639773);
				var_522ce6c6++;
				var_45e7b1aa = var_46639773;
				wait(function_72a94f05(60, 120));
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
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_look_out_we_got_inc_0");
	level waittill("hash_c520ff2a");
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_vtol_down_don_t_ha_0");
	level waittill("hash_9f1e84c1");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_shit_quad_is_functi_0");
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
function function_e388dd6b(var_e3b635fb)
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
		if(var_e3b635fb.size > 0)
		{
			var_58c5eb41 = undefined;
			var_e3b635fb = namespace_84970cc4::function_8332f7f6(var_e3b635fb);
			foreach(var_d84e54db in var_e3b635fb)
			{
				if(function_5b49d38c(var_d84e54db) && var_d84e54db.var_fe2c8dda !== 1)
				{
					var_58c5eb41 = var_d84e54db;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				var_46639773 = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 namespace_71b8dba1::function_81141386(var_46639773);
				var_522ce6c6++;
				var_45e7b1aa = var_46639773;
				wait(function_72a94f05(0.5, 1.5));
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
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_statue_s_coming_down_0", 1);
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
		var_ac9c19b = namespace_d5067552::function_423eae50("sm_egypt_siegebot");
		var_98c25260 = namespace_d5067552::function_423eae50("sm_egypt_quadtank");
		var_e3b635fb = function_525ae497(var_ac9c19b, var_98c25260, 1, 0);
		if(var_e3b635fb.size > 0)
		{
			var_58c5eb41 = undefined;
			var_e3b635fb = namespace_84970cc4::function_8332f7f6(var_e3b635fb);
			foreach(var_d84e54db in var_e3b635fb)
			{
				if(function_5b49d38c(var_d84e54db) && var_d84e54db.var_fe2c8dda !== 1)
				{
					var_58c5eb41 = var_d84e54db;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				var_46639773 = function_46197f76(var_c9fd3802, var_45e7b1aa);
				var_58c5eb41 namespace_71b8dba1::function_81141386(var_46639773);
				var_45e7b1aa = var_46639773;
				wait(function_72a94f05(60, 120));
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
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("esl1_technical_spotted_t_0", 1);
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
		var_ac9c19b = namespace_d5067552::function_423eae50("sm_egypt_siegebot");
		var_98c25260 = namespace_d5067552::function_423eae50("sm_egypt_quadtank");
		var_e3b635fb = function_525ae497(var_ac9c19b, var_98c25260, 1, 0);
		if(var_e3b635fb.size > 0)
		{
			var_58c5eb41 = undefined;
			var_e3b635fb = namespace_84970cc4::function_8332f7f6(var_e3b635fb);
			foreach(var_d84e54db in var_e3b635fb)
			{
				if(function_5b49d38c(var_d84e54db) && var_d84e54db.var_fe2c8dda !== 1)
				{
					var_58c5eb41 = var_d84e54db;
					break;
				}
			}
			if(isdefined(var_58c5eb41))
			{
				var_46639773 = namespace_84970cc4::function_47d18840(var_c9fd3802);
				var_58c5eb41 namespace_71b8dba1::function_81141386(var_46639773);
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
function function_b8afae40(var_c77d2837)
{
	level endon("hash_9d9cd8de");
	var_ce5b55e5 = level.var_ba0708a2.var_722885f3;
	var_e3b635fb = function_b8494651("allies");
	var_e3b635fb = function_57efbe1(var_e3b635fb, var_ce5b55e5);
	var_58c5eb41 = undefined;
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(!var_d84e54db namespace_82b91a51::function_d3426abc() && function_5b49d38c(var_d84e54db) && var_d84e54db.var_fe2c8dda !== 1)
		{
			var_58c5eb41 = var_d84e54db;
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
		var_e3b635fb = function_b8494651("allies");
		var_e3b635fb = function_57efbe1(var_e3b635fb, var_ce5b55e5);
		var_d84e54db = undefined;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			var_d84e54db = var_e3b635fb[var_c957f6b6];
			if(!var_d84e54db namespace_82b91a51::function_d3426abc() && function_5b49d38c(var_d84e54db) && (!isdefined(var_d84e54db.var_fe2c8dda) && var_d84e54db.var_fe2c8dda))
			{
				break;
			}
		}
		if(isdefined(var_d84e54db))
		{
			var_46639773 = namespace_84970cc4::function_47d18840(var_c9fd3802);
			var_d84e54db namespace_71b8dba1::function_81141386(var_46639773);
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
	var_c9fd3802 = namespace_84970cc4::function_8332f7f6(var_c9fd3802);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_c9fd3802.size; var_c957f6b6++)
	{
		var_675395aa = var_c9fd3802[var_c957f6b6];
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
	namespace_d5067552::function_2992720d("sm_egypt_plaza_wall");
	namespace_d5067552::function_2992720d("sm_egypt_palace_window");
	namespace_d5067552::function_2992720d("sm_egypt_quadtank");
	namespace_d5067552::function_2992720d("sm_egypt_siegebot");
	namespace_d5067552::function_2992720d("sm_nrc_siegebot");
	namespace_d5067552::function_2992720d("sm_nrc_quadtank");
	namespace_d5067552::function_2992720d("sm_nrc_depth");
	namespace_d5067552::function_2992720d("sm_nrc_berm_rpg");
	namespace_d5067552::function_2992720d("qt1_nrc_wasp_sm");
	namespace_d5067552::function_2992720d("sm_nrc_govt_building_rpg");
	namespace_d5067552::function_2992720d("qt1_nrc_amws_sm");
	namespace_d5067552::function_2992720d("qt1_nrc_raps_sm");
	namespace_d5067552::function_2992720d("qt2_nrc_wasp_sm");
	namespace_d5067552::function_2992720d("sm_egypt_theater");
	namespace_d5067552::function_2992720d("qt2_nrc_wasp2_berm_sm");
	namespace_d5067552::function_2992720d("qt2_nrc_wasp2_palace_sm");
	namespace_d5067552::function_2992720d("qt2_nrc_robot_rushers_sm");
	namespace_d5067552::function_2992720d("qt2_nrc_raps_sm");
	namespace_d5067552::function_2992720d("sm_nrc_qt2_depth");
	namespace_d5067552::function_2992720d("nrc_mobile_wall_sm");
	namespace_d5067552::function_2992720d("demo_qt2_wasp_sm");
	namespace_d5067552::function_2992720d("qt_plaza_controllable_qt_raps_sm");
	namespace_d5067552::function_2992720d("nrc_theater_sm");
	namespace_d5067552::function_2992720d("sm_nrc_quadtank3_robots");
	var_e3b635fb = function_c20c2e8();
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(!var_d84e54db namespace_82b91a51::function_d3426abc())
		{
			if(var_d84e54db !== level.var_dbed449f && var_d84e54db.var_9d34dca7 !== "veh_bo3_civ_truck_pickup_tech_nrc_nolights")
			{
				var_d84e54db function_dc8c8404();
			}
		}
	}
	var_d7188244 = function_bd90138e();
	foreach(var_1e25855 in var_d7188244)
	{
		if(var_1e25855.var_9d34dca7 !== "veh_bo3_civ_truck_pickup_tech_nrc_nolights")
		{
			var_1e25855 function_dc8c8404();
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
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_quadtank_statue_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
	level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
	wait(3);
	function_2e4b8c78("Statue about to fall");
	var_6b1c7f11 = namespace_2f06d687::function_7387a40a("demo_intro_mlrs_quadtank");
	var_6b1c7f11 namespace_82b91a51::function_958c7633();
	var_6b1c7f11 namespace_72ee5da4::function_81b6f1ac(1);
	wait(1);
	level thread namespace_cc27597::function_43718187("cin_ram_07_04_plaza_vign_quaddefeated");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_quadtank_statue_bundle");
	wait(8);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_mobile_wall_explode_bundle");
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

