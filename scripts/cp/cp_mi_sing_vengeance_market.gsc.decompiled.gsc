#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_quadtank_util;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_accolades;
#using scripts\cp\cp_mi_sing_vengeance_garage;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\vehicles\_wasp;

#namespace namespace_e6a038a0;

/*
	Name: function_7b65c5ac
	Namespace: namespace_e6a038a0
	Checksum: 0x451045A0
	Offset: 0x1550
	Size: 0x56B
	Parameters: 2
	Flags: None
*/
function function_7b65c5ac(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b9785164);
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037.var_7dfaf62 = 32;
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
		namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_safehouse");
		level.var_29061a49 = namespace_96fa87af::function_7387a40a("garage_technical_01");
		level.var_29061a49 namespace_96fa87af::function_3762fc40();
		level.var_4f0894b2 = namespace_96fa87af::function_7387a40a("garage_technical_02");
		level.var_4f0894b2 namespace_96fa87af::function_3762fc40();
		var_21a4c59 = function_6ada35ba("cop_car_2", "targetname");
		var_21a4c59 function_2992720d();
		var_70f21d83 = namespace_14b42b8a::function_7922262b("garage_igc_script_node", "targetname");
		var_70f21d83 thread namespace_cc27597::function_43718187("cin_ven_06_15_parkingstructure_deadbodies");
		var_5b01a37b = namespace_14b42b8a::function_7922262b("quad_battle_script_node", "targetname");
		var_5b01a37b thread namespace_cc27597::function_c35e6aab("cin_ven_07_11_openpath_wall_vign");
		level thread namespace_22334037::function_f0f8ed9f(var_74cd64bc);
		namespace_63b4601c::function_e00864bd("rear_garage_umbra_gate", 1, "rear_garage_gate");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
		level thread function_31629d62();
		var_ecf5f255 = function_99201f25("quad_tank_color_triggers", "script_noteworthy");
		foreach(var_f7ebb04b in var_ecf5f255)
		{
			var_f7ebb04b function_175e6b8e(0);
			var_f7ebb04b.var_8ccee908 = 1;
		}
		namespace_d7916d65::function_a2995f22();
		wait(0.05);
		var_77d44b28 = function_6ada35ba("garage_player_gather_trigger", "targetname");
		var_77d44b28 function_175e6b8e(0);
		level thread function_3ae8447c();
		level thread namespace_63b4601c::function_5dbf4126();
	}
	function_43f446e3("quad_tank");
	var_43605624 = function_6ada35ba("exit_to_plaza", "targetname");
	var_43605624 function_175e6b8e(0);
	level thread namespace_63b4601c::function_ef909043();
	level thread function_745ca395();
	level.var_2fd26037 thread function_dfffe1a9();
	level thread function_7d7a1bdd();
	function_590d6717();
}

/*
	Name: function_463cdeb2
	Namespace: namespace_e6a038a0
	Checksum: 0x7EE105AF
	Offset: 0x1AC8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_463cdeb2(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_63b4601c::function_4e8207e9("garage_igc", 0);
}

/*
	Name: function_bd50a158
	Namespace: namespace_e6a038a0
	Checksum: 0x913866B4
	Offset: 0x1B10
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_bd50a158()
{
	var_2d4309d9 = function_6ada35ba("quad_battle_qt_ramp", "targetname");
	var_f92a03e7 = function_6ada35ba("quad_battle_qt_cleared_wall", "targetname");
	var_f92a03e7 function_175e6b8e(0);
	level namespace_ad23e503::function_1ab5ebec("quad_battle_starts");
	var_f92a03e7 function_175e6b8e(1);
	namespace_4dbf3ae3::function_1ab5ebec("quad_battle_qt_cleared_wall");
	var_2d4309d9 function_de8377bf();
	wait(0.05);
	var_2d4309d9 function_dc8c8404();
}

/*
	Name: function_590d6717
	Namespace: namespace_e6a038a0
	Checksum: 0xED0F2CCD
	Offset: 0x1C20
	Size: 0x4AB
	Parameters: 0
	Flags: None
*/
function function_590d6717()
{
	thread namespace_7c587e3e::function_10de79ba();
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_rally_on_me_and_let_0");
	level thread namespace_9fd035::function_973b77f9();
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
	namespace_4dbf3ae3::function_42e87952("hendricks_qt_color_start", "targetname");
	var_77d44b28 = function_6ada35ba("garage_player_gather_trigger", "targetname");
	var_77d44b28 function_175e6b8e(1);
	level thread namespace_d0ef8521::function_45d1556("garage_player_gather_trigger", "cp_waypoint_breadcrumb", 0);
	level namespace_ad23e503::function_1ab5ebec("players_at_market");
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_safehouse");
	function_acb4609c("veh_t7_drone_quadtank_54i", 10);
	namespace_cc27597::function_8f9f34e0("cin_ven_06_51_quadbattleintro_wall_vign", &namespace_63b4601c::function_ba7c52d5, "done", "quad_wall_static3");
	var_70f21d83 = namespace_14b42b8a::function_7922262b("quad_battle_script_node", "targetname");
	var_70f21d83 namespace_cc27597::function_c35e6aab("cin_ven_06_51_quadbattleintro_wall_vign");
	level namespace_ad23e503::function_1ab5ebec("quad_tank_start_anim");
	level thread function_27bbd465();
	if(isdefined(level.var_c8e36315))
	{
		level thread [[level.var_c8e36315]]();
	}
	var_70f21d83 thread namespace_cc27597::function_43718187("cin_ven_06_51_quadbattleintro_wall_vign");
	level thread namespace_7c587e3e::function_5bd9fe4();
	namespace_82b91a51::function_76f13293();
	wait(0.4);
	level thread namespace_63b4601c::function_1c347e72("quad_wall_static1", "quad_wall_non_static1");
	wait(0.35);
	level.var_3fc75f50 = namespace_2f06d687::function_7387a40a("plaza_quadtank", &function_74c7f0db);
	level.var_3fc75f50 thread namespace_855113f3::function_35209d64();
	namespace_dabbe128::function_d38f54b1(&function_4fc8c2e, level.var_3fc75f50);
	var_ecf5f255 = function_99201f25("quad_tank_color_triggers", "script_noteworthy");
	foreach(var_f7ebb04b in var_ecf5f255)
	{
		var_f7ebb04b function_175e6b8e(1);
		var_f7ebb04b.var_8ccee908 = 1;
	}
	level namespace_ad23e503::function_74d6b22f("quad_battle_starts");
	level thread function_e8676a98();
	level namespace_ad23e503::function_1ab5ebec("quad_enemies_done");
	level namespace_ad23e503::function_74d6b22f("quad_battle_ends");
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_1ab5ebec("exiting_market");
	namespace_1d795d47::function_be8adfb8("quad_battle");
}

/*
	Name: function_e8676a98
	Namespace: namespace_e6a038a0
	Checksum: 0x704F4436
	Offset: 0x20D8
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_e8676a98()
{
	if(level.var_9b1393e7.size > 1)
	{
		wait(8);
		level notify("hash_349fb948");
		namespace_d5067552::function_bae40a28("quad_battle_reinforcements");
		level namespace_ad23e503::function_43ac000b(function_84970cc4("quadtank_hijacked", "quad_tank_dead"));
		var_56dd1913 = namespace_2f06d687::function_289e6fd1("quad_battle_enemies");
		if(var_56dd1913.size > 0)
		{
			wait(10);
			namespace_d5067552::function_54bdb053("quad_battle_reinforcements");
		}
		var_2eebaf3b = function_6ada35ba("quad_battle_retreat_volume", "targetname");
		var_56dd1913 = namespace_2f06d687::function_289e6fd1("quad_battle_enemies");
		foreach(var_e98b4e9b in var_56dd1913)
		{
			if(function_5b49d38c(var_e98b4e9b))
			{
				var_e98b4e9b thread function_ee2d9cb4(var_2eebaf3b);
			}
		}
		if(var_56dd1913.size > 0)
		{
			wait(6);
		}
		if(namespace_ad23e503::function_7922262b("quadtank_hijacked"))
		{
			level namespace_ad23e503::function_1ab5ebec("qt_hijack_enemies_dead");
		}
		level namespace_ad23e503::function_74d6b22f("quad_enemies_done");
	}
	else
	{
		level namespace_ad23e503::function_43ac000b(function_84970cc4("quadtank_hijacked", "quad_tank_dead"));
		if(namespace_ad23e503::function_7922262b("quadtank_hijacked"))
		{
			level namespace_ad23e503::function_1ab5ebec("qt_hijack_enemies_dead");
		}
		level namespace_ad23e503::function_74d6b22f("quad_enemies_done");
	}
}

/*
	Name: function_ee2d9cb4
	Namespace: namespace_e6a038a0
	Checksum: 0x7AE33B03
	Offset: 0x2390
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_ee2d9cb4(var_45db3dab)
{
	self endon("hash_128f8789");
	self function_e11ce512();
	self function_fb5720f7();
	self.var_25d14901 = 0;
	self.var_6130afef = 0;
	wait(0.1);
	self function_169cc712(var_45db3dab, 1);
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
}

/*
	Name: function_74c7f0db
	Namespace: namespace_e6a038a0
	Checksum: 0x1AE04D23
	Offset: 0x2440
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_74c7f0db()
{
	self thread function_7c605010();
	self thread function_c5cf1c5();
	self function_b7cc66c6(level.var_9b1393e7[0]);
	self function_c7708f99("quad_tank");
	function_a45fee8b(self.var_722885f3, 192, 184, 5);
	function_49e95dc0("garage_hendricks", "quad_tank", 100);
	function_49e95dc0("quad_tank", "garage_hendricks", 10000);
	function_49e95dc0("garage_players", "quad_tank", 1000);
	namespace_82b91a51::function_67520c6a(2.5, undefined, &namespace_d0ef8521::function_74d6b22f, "cp_level_vengeance_destroy_quad", self);
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("quad_tank_dead");
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_destroy_quad");
}

/*
	Name: function_c5cf1c5
	Namespace: namespace_e6a038a0
	Checksum: 0x419B1057
	Offset: 0x25D0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_c5cf1c5()
{
	level endon("hash_91e59520");
	while(1)
	{
		level waittill("hash_91737d19", var_52b4a338);
		if(isdefined(var_52b4a338.var_fd67e920) && var_52b4a338.var_fd67e920 == "quadtank")
		{
			level namespace_ad23e503::function_74d6b22f("quadtank_hijacked");
			var_52b4a338 thread function_ca8f95ab();
		}
	}
}

/*
	Name: function_ca8f95ab
	Namespace: namespace_e6a038a0
	Checksum: 0x6526B2ED
	Offset: 0x2670
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_ca8f95ab()
{
	self waittill("hash_128f8789");
	var_7f6ee28b = function_9b7fda5e("trigger_box", (-18575, -17133.5, 224), 0, 504, 375, 448);
	wait(10);
	if(isdefined(self) && self function_32fa5072(var_7f6ee28b))
	{
		self function_dc8c8404();
	}
	var_7f6ee28b function_dc8c8404();
}

/*
	Name: function_7c605010
	Namespace: namespace_e6a038a0
	Checksum: 0x6AE7030A
	Offset: 0x2720
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_7c605010()
{
	self endon("hash_128f8789");
	var_c9ae457a = function_6ada35ba("qt_right_goalvolume", "targetname");
	self function_500dc2f7(384);
	self.var_7dfaf62 = 384;
	self function_169cc712(var_c9ae457a, 1);
	self waittill("hash_a2b47172");
	level namespace_ad23e503::function_74d6b22f("quad_tank_downstairs");
	var_19321990 = "right";
	while(1)
	{
		if(var_19321990 == "left")
		{
			var_19321990 = "right";
		}
		else if(var_19321990 == "right")
		{
			var_19321990 = "left";
		}
		level namespace_ad23e503::function_74d6b22f("qt_" + var_19321990 + "_side");
		self thread function_b331b9b2(var_19321990);
		self waittill("hash_a2b47172");
	}
}

/*
	Name: function_b331b9b2
	Namespace: namespace_e6a038a0
	Checksum: 0x78810B18
	Offset: 0x2878
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_b331b9b2(var_19321990)
{
	level notify("hash_b331b9b2");
	level endon("hash_b331b9b2");
	self endon("hash_128f8789");
	if(var_19321990 == "left")
	{
		var_c9ae457a = function_6ada35ba("qt_left_goalvolume", "targetname");
	}
	else if(var_19321990 == "right")
	{
		var_c9ae457a = function_6ada35ba("qt_right_goalvolume", "targetname");
	}
	if(function_5b49d38c(self))
	{
		self.var_7dfaf62 = 384;
		self function_169cc712(var_c9ae457a, 1);
	}
}

/*
	Name: function_a5928078
	Namespace: namespace_e6a038a0
	Checksum: 0x4B9E2490
	Offset: 0x2970
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_a5928078()
{
	level.var_3fc75f50 = namespace_2f06d687::function_7387a40a("plaza_quadtank");
	var_136e4f5c = namespace_14b42b8a::function_7922262b("quad_tank_checkpoint_death", "script_noteworthy");
	wait(0.05);
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	level.var_3fc75f50.var_722885f3 = var_136e4f5c.var_722885f3;
	level.var_3fc75f50 function_8d63f8d0(1);
	level.var_3fc75f50 namespace_82b91a51::function_4b741fdc();
	level.var_3fc75f50 function_2992720d();
}

/*
	Name: function_7d7a1bdd
	Namespace: namespace_e6a038a0
	Checksum: 0x9FF68FA4
	Offset: 0x2A60
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_7d7a1bdd()
{
	level endon("hash_52ec73a6");
	var_a3076518 = function_6ada35ba("sm_qt_hijack", "targetname");
	var_ab891f49 = function_6ada35ba("garage_enemy_n_goalvolume", "targetname");
	foreach(var_56b381f2 in function_99201f25(var_a3076518.var_b07228b6, "targetname"))
	{
		var_56b381f2 namespace_2f06d687::function_994832bd(&function_a59909a9, var_ab891f49);
	}
	var_443c7feb = function_6ada35ba("sm_qt_hijack_normal", "targetname");
	foreach(var_1e913765 in function_99201f25(var_443c7feb.var_b07228b6, "targetname"))
	{
		var_1e913765 namespace_2f06d687::function_994832bd(&function_a59909a9, var_ab891f49);
	}
	level namespace_ad23e503::function_1ab5ebec("quadtank_hijacked");
	namespace_d5067552::function_bae40a28("sm_qt_hijack");
	namespace_d5067552::function_bae40a28("sm_qt_hijack_normal");
	wait(0.5);
	level thread function_18ed3322();
	level thread function_547cd992();
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("qt_hijack_warlords_dead", "qt_hijack_grunts_dead"));
	level namespace_ad23e503::function_74d6b22f("qt_hijack_enemies_dead");
}

/*
	Name: function_a59909a9
	Namespace: namespace_e6a038a0
	Checksum: 0x68CCF2CB
	Offset: 0x2D38
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_a59909a9(var_9c169a5c)
{
	self function_169cc712(var_9c169a5c, 1);
}

/*
	Name: function_18ed3322
	Namespace: namespace_e6a038a0
	Checksum: 0x27891201
	Offset: 0x2D70
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_18ed3322()
{
	namespace_2f06d687::function_45679edd("qt_hijack_enemies", 0);
	level namespace_ad23e503::function_74d6b22f("qt_hijack_warlords_dead");
}

/*
	Name: function_547cd992
	Namespace: namespace_e6a038a0
	Checksum: 0xFFB245A6
	Offset: 0x2DB8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_547cd992()
{
	namespace_2f06d687::function_45679edd("garage_enemies", 0);
	level namespace_ad23e503::function_74d6b22f("qt_hijack_grunts_dead");
}

/*
	Name: function_dfffe1a9
	Namespace: namespace_e6a038a0
	Checksum: 0x4CEBE7B
	Offset: 0x2E00
	Size: 0x483
	Parameters: 0
	Flags: None
*/
function function_dfffe1a9()
{
	self namespace_76d95162::function_d9f49fba(0);
	level namespace_ad23e503::function_1ab5ebec("quad_tank_wall_broken");
	self namespace_6f7b2095::function_54bdb053();
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self.var_501514b8 = 1;
	self.var_df53bc6 = self.var_15dfd6c;
	self.var_15dfd6c = 0.2;
	var_a392d7f9 = function_b4cb3503("quad_battle_hendricks_node", "targetname");
	self function_156339b6(var_a392d7f9, 1);
	self waittill("hash_41d1aaf0");
	self thread function_fd7b3b3b();
	self thread function_1314293f();
	level namespace_ad23e503::function_1ab5ebec("quad_battle_ends");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_6f7b2095::function_54bdb053();
	self function_c15140d4();
	self.var_501514b8 = 0;
	self.var_15dfd6c = self.var_df53bc6;
	var_a392d7f9 = function_b4cb3503("hendricks_exit_market_node", "targetname");
	self function_156339b6(var_a392d7f9, 1);
	level thread namespace_d0ef8521::function_45d1556("goto_plaza_breadcrumb");
	level namespace_ad23e503::function_1ab5ebec("hendricks_exiting_market");
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	level thread function_64ae9198();
	self waittill("hash_41d1aaf0");
	var_43605624 = function_6ada35ba("exit_to_plaza", "targetname");
	var_43605624 function_175e6b8e(1);
	var_5b01a37b = namespace_14b42b8a::function_7922262b("quad_battle_script_node", "targetname");
	var_5b01a37b namespace_cc27597::function_43718187("cin_ven_07_10_enterplaza_vign");
	self function_169cc712(self.var_722885f3, 1);
	if(!level namespace_ad23e503::function_7922262b("exit_qt_battle"))
	{
		var_5b01a37b namespace_cc27597::function_c35e6aab("cin_ven_07_11_openpath_vign");
		level namespace_ad23e503::function_1ab5ebec("exit_qt_battle");
	}
	level thread function_8ccac57d();
	var_5b01a37b thread namespace_cc27597::function_43718187("cin_ven_07_11_openpath_wall_vign");
	var_5b01a37b namespace_cc27597::function_43718187("cin_ven_07_11_openpath_vign");
	self function_169cc712(self.var_722885f3, 1);
	level namespace_ad23e503::function_74d6b22f("exiting_market");
}

/*
	Name: function_8ccac57d
	Namespace: namespace_e6a038a0
	Checksum: 0x9B4246D4
	Offset: 0x3290
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_8ccac57d()
{
	level waittill("hash_8ccac57d");
	level namespace_ad23e503::function_74d6b22f("start_plaza_wave_2");
	var_ac036920 = function_6ada35ba("plaza_wall", "targetname");
	var_ac036920 function_de8377bf();
	var_ac036920 function_dc8c8404();
}

/*
	Name: function_fd7b3b3b
	Namespace: namespace_e6a038a0
	Checksum: 0x1B3BE1D
	Offset: 0x3320
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_fd7b3b3b()
{
	level.var_3fc75f50 endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("quad_tank_downstairs");
	self namespace_6f7b2095::function_bae40a28();
	wait(0.05);
	namespace_4dbf3ae3::function_42e87952("hendricks_qt_move_back");
}

/*
	Name: function_1314293f
	Namespace: namespace_e6a038a0
	Checksum: 0xF438EE65
	Offset: 0x3398
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_1314293f()
{
	level.var_3fc75f50 endon("hash_128f8789");
	while(1)
	{
		if(isdefined(self) && self function_839d99d7())
		{
			self namespace_d84e54db::function_d104c596("normal", level.var_3fc75f50, undefined, 5);
			wait(5);
		}
		wait(function_dc99997a(10, 20));
	}
}

/*
	Name: function_745ca395
	Namespace: namespace_e6a038a0
	Checksum: 0x83A41D08
	Offset: 0x3430
	Size: 0x43B
	Parameters: 0
	Flags: None
*/
function function_745ca395()
{
	level.var_2fd26037 notify("hash_6f33cd57");
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(1);
	level.var_2fd26037.var_5d9fbd2d = 0;
	level namespace_ad23e503::function_1ab5ebec("players_at_market");
	thread namespace_7c587e3e::function_af95bc45();
	level thread function_6f79b65d();
	wait(1);
	level.var_2fd26037 thread namespace_63b4601c::function_5fbec645("hend_stop_do_you_hear_t_1");
	wait(2);
	level namespace_ad23e503::function_74d6b22f("quad_tank_start_anim");
	level namespace_ad23e503::function_1ab5ebec("quad_tank_wall_broken");
	wait(0.5);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 thread function_f14d81a9();
	}
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_quad_tank_take_cove_1", 0);
	level namespace_ad23e503::function_1ab5ebec("quad_battle_starts");
	level namespace_71b8dba1::function_13b3b16a("plyr_draw_it_s_fire_i_ll_2");
	level.var_3fc75f50 thread function_43458bf2();
	level.var_3fc75f50 thread function_bc3db33d();
	level.var_3fc75f50 thread function_55c599e4();
	level.var_3fc75f50 thread function_e955ac45();
	level.var_3fc75f50 thread function_82671202();
	level.var_3fc75f50 thread function_23dea593();
	if(level.var_9b1393e7.size > 1)
	{
		level thread function_f8295b7();
	}
	level namespace_ad23e503::function_43ac000b(function_84970cc4("quadtank_hijacked", "quad_tank_dead"));
	wait(0.5);
	var_56dd1913 = namespace_2f06d687::function_289e6fd1("quad_battle_enemies");
	var_3d8a616b = namespace_2f06d687::function_289e6fd1("qt_hijack_enemies");
	if(var_56dd1913.size > 0)
	{
		namespace_22334037::function_73a79ca0("hend_i_think_it_s_down_fo_0");
	}
	else
	{
		namespace_22334037::function_73a79ca0("hend_i_think_we_got_it_l_0");
		if(var_3d8a616b.size > 0)
		{
			namespace_22334037::function_73a79ca0("hend_enemy_reinforcements_2");
		}
	}
	namespace_d0ef8521::function_48f26766("cp_level_vengeance_go_to_safehouse");
	level namespace_ad23e503::function_1ab5ebec("hendricks_exiting_market");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_taylor_fucked_up_h_0");
	wait(0.75);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_now_we_don_t_know_wh_0");
	level waittill("hash_15c8f178");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_even_if_they_ve_hack_0");
}

/*
	Name: function_f14d81a9
	Namespace: namespace_e6a038a0
	Checksum: 0x94B5D044
	Offset: 0x3878
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f14d81a9()
{
	level.var_3fc75f50 endon("hash_128f8789");
	self endon("hash_b8804640");
	wait(20);
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_we_need_something_bi_0");
}

/*
	Name: function_bc3db33d
	Namespace: namespace_e6a038a0
	Checksum: 0x514C0A9A
	Offset: 0x38C8
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_bc3db33d()
{
	level.var_3fc75f50 waittill("hash_6530962c");
	var_90911853 = function_c4d5ec1f("launcher_standard");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_1bcd223d = var_6bfe1586 function_48c6a3a2();
		if(var_6bfe1586 function_2103ff4b(var_90911853) && var_1bcd223d != var_90911853)
		{
			var_6bfe1586 thread namespace_82b91a51::function_32d40124(&"COOP_EQUIP_XM53", undefined, undefined, 6);
		}
	}
}

/*
	Name: function_43458bf2
	Namespace: namespace_e6a038a0
	Checksum: 0x3BE712B6
	Offset: 0x39F8
	Size: 0x177
	Parameters: 0
	Flags: None
*/
function function_43458bf2()
{
	level.var_3fc75f50 endon("hash_128f8789");
	self endon("hash_6530962c");
	wait(20);
	var_c823b7c6 = [];
	var_c823b7c6[0] = "hend_shoot_out_its_weak_p_1";
	var_c823b7c6[1] = "hend_we_can_t_touch_this_0";
	var_c823b7c6[2] = "hend_target_it_s_weak_poi_0";
	var_c823b7c6[3] = "hend_nothing_s_getting_th_0";
	var_c823b7c6[4] = "hend_i_can_t_get_a_clear_0";
	var_c2667465 = undefined;
	while(1)
	{
		var_616d3e3e = namespace_84970cc4::function_47d18840(var_c823b7c6);
		if(isdefined(var_c2667465) && var_c2667465 == var_616d3e3e)
		{
			while(var_c2667465 == var_616d3e3e)
			{
				var_616d3e3e = namespace_84970cc4::function_47d18840(var_c823b7c6);
				wait(0.05);
			}
		}
		if(!isdefined(var_c2667465) || var_c2667465 != var_616d3e3e)
		{
			var_c2667465 = var_616d3e3e;
		}
		level.var_2fd26037 namespace_22334037::function_73a79ca0(var_616d3e3e);
		wait(function_72a94f05(10, 15));
	}
}

/*
	Name: function_55c599e4
	Namespace: namespace_e6a038a0
	Checksum: 0x1F3BF369
	Offset: 0x3B78
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_55c599e4()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_6530962c");
		namespace_22334037::function_73a79ca0("hend_hit_it_with_a_rocket_1");
		self waittill("hash_f015cdf7");
		self thread function_455f3062();
		self waittill("hash_6530962c");
		namespace_22334037::function_73a79ca0("hend_defenses_down_hit_0");
	}
}

/*
	Name: function_455f3062
	Namespace: namespace_e6a038a0
	Checksum: 0xBE64571A
	Offset: 0x3C08
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_455f3062()
{
	self endon("hash_128f8789");
	self endon("hash_6530962c");
	wait(20);
	namespace_22334037::function_73a79ca0("hend_it_s_defense_system_0");
}

/*
	Name: function_e955ac45
	Namespace: namespace_e6a038a0
	Checksum: 0xE587A35D
	Offset: 0x3C50
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_e955ac45()
{
	self endon("hash_128f8789");
	self waittill("hash_f015cdf7");
	level namespace_71b8dba1::function_13b3b16a("plyr_how_the_hell_is_this_0");
	self waittill("hash_6530962c");
	self waittill("hash_f015cdf7");
	namespace_22334037::function_73a79ca0("hend_it_s_back_online_wa_0");
}

/*
	Name: function_4fc8c2e
	Namespace: namespace_e6a038a0
	Checksum: 0xF8922FE1
	Offset: 0x3CC8
	Size: 0x13D
	Parameters: 2
	Flags: None
*/
function function_4fc8c2e(var_56fd354c, var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(var_a8563e07.var_ba36487d === "MOD_RIFLE_BULLET" || var_a8563e07.var_ba36487d === "MOD_PISTOL_BULLET")
		{
			if(var_a8563e07.var_f105c26b != "tag_target_lower" && var_a8563e07.var_f105c26b != "tag_target_upper" && var_a8563e07.var_f105c26b != "tag_defense_active" && var_a8563e07.var_f105c26b != "tag_body_animate")
			{
				level notify("hash_52293e91");
			}
		}
		if(var_a8563e07.var_dfcc01fd.var_4be20d44 === "launcher_standard" || var_a8563e07.var_dfcc01fd.var_4be20d44 === "turret_bo3_civ_truck_pickup_tech_54i_grenade")
		{
			level notify("hash_e09e14de");
		}
	}
}

/*
	Name: function_82671202
	Namespace: namespace_e6a038a0
	Checksum: 0x9556BA8D
	Offset: 0x3E10
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_82671202()
{
	self endon("hash_128f8789");
	level waittill("hash_e09e14de");
	namespace_22334037::function_73a79ca0("hend_that_outta_slow_it_d_0");
}

/*
	Name: function_f8295b7
	Namespace: namespace_e6a038a0
	Checksum: 0x7A592131
	Offset: 0x3E50
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_f8295b7()
{
	level waittill("hash_349fb948");
	namespace_22334037::function_73a79ca0("hend_54i_coming_in_from_t_0");
}

/*
	Name: function_23dea593
	Namespace: namespace_e6a038a0
	Checksum: 0x1E383A71
	Offset: 0x3E88
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_23dea593()
{
	self endon("hash_128f8789");
	var_361ba23a = [];
	var_361ba23a[0] = "hend_keep_moving_don_t_l_2";
	while(1)
	{
		wait(45);
		var_616d3e3e = namespace_84970cc4::function_47d18840(var_361ba23a);
		namespace_22334037::function_73a79ca0(var_616d3e3e);
		var_361ba23a = namespace_84970cc4::function_d010fbb9(var_361ba23a, var_616d3e3e);
		if(var_361ba23a.size < 1)
		{
			break;
		}
	}
}

/*
	Name: function_3ae8447c
	Namespace: namespace_e6a038a0
	Checksum: 0x5000401D
	Offset: 0x3F38
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_3ae8447c()
{
	function_9e3608e3("quad_wall_static3");
	level namespace_ad23e503::function_1ab5ebec("quad_battle_starts");
	wait(1);
	level namespace_ad23e503::function_74d6b22f("quad_tank_wall_broken");
	function_9e3608e3("quad_wall_static2");
	var_1e8fa774 = function_6ada35ba("quad_battle_intro_wall_clip", "targetname");
	var_1e8fa774 function_dc8c8404();
}

/*
	Name: function_6f79b65d
	Namespace: namespace_e6a038a0
	Checksum: 0x5F8AE3BB
	Offset: 0x3FF8
	Size: 0x4DB
	Parameters: 0
	Flags: None
*/
function function_6f79b65d()
{
	level namespace_82b91a51::function_ef3f75eb("start_qt_stomp");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		function_4d3e98ed(var_6bfe1586.var_722885f3, 1, 0.5, 0.5, 0.5, 0, -1, 100, 7, 1, 1, 1, var_6bfe1586);
		var_6bfe1586 function_e2af603e("quadtank_footstep");
	}
	namespace_80983c42::function_80983c42("garage_wall_light_pulse");
	namespace_80983c42::function_80983c42("garage_wall_light_pulse_02");
	namespace_80983c42::function_80983c42("garage_dust_rattle");
	wait(1);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		function_4d3e98ed(var_6bfe1586.var_722885f3, 2, 1, 1, 0.5, 0, -1, 100, 7, 1, 1, 1, var_6bfe1586);
		var_6bfe1586 function_e2af603e("quadtank_footstep");
	}
	namespace_80983c42::function_80983c42("garage_wall_light_pulse_03");
	namespace_80983c42::function_80983c42("garage_dust_rattle");
	wait(1);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		function_4d3e98ed(var_6bfe1586.var_722885f3, 3, 2, 2, 0.5, 0, -1, 100, 7, 1, 1, 1, var_6bfe1586);
		var_6bfe1586 function_e2af603e("quadtank_footstep");
	}
	namespace_80983c42::function_80983c42("garage_wall_light_pulse_03");
	namespace_80983c42::function_80983c42("garage_dust_rattle");
	level namespace_ad23e503::function_1ab5ebec("quad_tank_wall_broken");
	level namespace_82b91a51::function_ef3f75eb("quad_tank_wall_broken");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		function_4d3e98ed(var_6bfe1586.var_722885f3, 5, 2, 2, 0.5, 0, -1, 100, 7, 1, 1, 1, var_6bfe1586);
		var_6bfe1586 function_e2af603e("quadtank_footstep");
	}
	namespace_80983c42::function_80983c42("garage_wall_light_pulse_02");
	namespace_80983c42::function_80983c42("garage_dust_rattle");
	wait(1);
	namespace_80983c42::function_67e7a937("garage_wall_light_pulse");
}

/*
	Name: function_27bbd465
	Namespace: namespace_e6a038a0
	Checksum: 0x95124D7D
	Offset: 0x44E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_27bbd465()
{
	namespace_80983c42::function_80983c42("garage_wall_light_flicker");
}

/*
	Name: function_31629d62
	Namespace: namespace_e6a038a0
	Checksum: 0x75A52CE7
	Offset: 0x4508
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_31629d62()
{
	var_e9ddc8f2 = function_99201f25("garage_damage_trigger", "targetname");
	foreach(var_f92a03e7 in var_e9ddc8f2)
	{
		var_ec523dd5 = function_6ada35ba(var_f92a03e7.var_b07228b6, "targetname");
		var_ec523dd5 function_dc8c8404();
		wait(0.1);
		var_f92a03e7 function_dc8c8404();
	}
}

/*
	Name: function_6e671181
	Namespace: namespace_e6a038a0
	Checksum: 0x1BBCC257
	Offset: 0x4618
	Size: 0x643
	Parameters: 2
	Flags: None
*/
function function_6e671181(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b9785164);
		level thread function_a5928078();
		var_21a4c59 = function_6ada35ba("cop_car_2", "targetname");
		var_21a4c59 function_2992720d();
		level thread namespace_63b4601c::function_ef909043();
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		wait(0.05);
		level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037.var_7dfaf62 = 32;
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
		level namespace_ad23e503::function_74d6b22f("start_plaza_wave_2");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
		level thread namespace_63b4601c::function_5dbf4126();
		var_70f21d83 = namespace_14b42b8a::function_7922262b("garage_igc_script_node", "targetname");
		var_70f21d83 thread namespace_cc27597::function_43718187("cin_ven_06_15_parkingstructure_deadbodies");
		var_5b01a37b = namespace_14b42b8a::function_7922262b("quad_battle_script_node", "targetname");
		var_5b01a37b thread namespace_cc27597::function_5c143f59("cin_ven_07_11_openpath_wall_vign");
		var_ac036920 = function_6ada35ba("plaza_wall", "targetname");
		var_ac036920 function_de8377bf();
		var_ac036920 function_dc8c8404();
		namespace_cc27597::function_8f9f34e0("cin_ven_06_51_quadbattleintro_wall_vign", &namespace_63b4601c::function_ba7c52d5, "done", "quad_wall_static3");
		level thread namespace_63b4601c::function_1c347e72("quad_wall_static1", "quad_wall_non_static1");
		var_70f21d83 = namespace_14b42b8a::function_7922262b("quad_battle_script_node", "targetname");
		var_70f21d83 thread namespace_cc27597::function_5c143f59("cin_ven_06_51_quadbattleintro_wall_vign");
		function_9e3608e3("quad_wall_static2");
		namespace_82b91a51::function_d8eaed3d(7);
		var_1e8fa774 = function_6ada35ba("quad_battle_intro_wall_clip", "targetname");
		var_1e8fa774 function_dc8c8404();
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
		level thread namespace_d0ef8521::function_45d1556("trig_safehouse_plaza_breadcrumb");
		level thread function_64ae9198(var_74cd64bc);
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a.var_255b9315 = 1;
		}
		namespace_d7916d65::function_a2995f22();
		level namespace_ad23e503::function_74d6b22f("initial_plaza_spawns");
		level thread function_88f591dc();
	}
	if(isdefined(level.var_ad06727a))
	{
		level namespace_ad06727a::function_fcf56ab5();
	}
	namespace_80983c42::function_80983c42("sh_tracer_all");
	namespace_523da15d::function_f03a38c7();
	level.var_2fd26037 thread function_fc4e0a9();
	level thread function_aecb2215();
	level thread namespace_7c587e3e::function_d56e8ba6();
	function_3a837c17();
}

/*
	Name: function_e5fb7f0b
	Namespace: namespace_e6a038a0
	Checksum: 0x929FDB0F
	Offset: 0x4C68
	Size: 0x13B
	Parameters: 4
	Flags: None
*/
function function_e5fb7f0b(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_10_parkingstructure_1st_shot08");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_15_parkingstructure_deadbodies");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_51_quadbattleintro_wall_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_07_10_enterplaza_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_07_11_openpath_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_07_11_openpath_wall_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_07_20_jumpdownplaza_vign");
}

/*
	Name: function_88f591dc
	Namespace: namespace_e6a038a0
	Checksum: 0x40E4C4E7
	Offset: 0x4DB0
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_88f591dc()
{
	wait(0.5);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_255b9315 = 0;
	}
}

/*
	Name: function_3a837c17
	Namespace: namespace_e6a038a0
	Checksum: 0x655F223
	Offset: 0x4E48
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_3a837c17()
{
	level thread function_214b5ddf();
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("hendricks_at_plaza", "players_at_plaza"));
	thread namespace_63b4601c::function_ffaf4723("rear_garage_umbra_vol", "rear_garage_umbra_gate", "rear_garage_gate", "noflag");
	wait(0.5);
	if(isdefined(level.var_ec448797))
	{
		level thread [[level.var_ec448797]]();
	}
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_safehouse");
	level namespace_ad23e503::function_74d6b22f("plaza_hendricks_jump");
	wait(1);
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_clear_plaza");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 thread function_29587c78();
	}
	level namespace_ad23e503::function_1ab5ebec("plaza_cleared");
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_clear_plaza");
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
	var_5e72d25 = function_6ada35ba("obj_enter_sh", "targetname");
	var_dd05070c = namespace_14b42b8a::function_7922262b(var_5e72d25.var_b07228b6, "targetname");
	level thread namespace_d0ef8521::function_45d1556("players_near_safehouse");
	namespace_d0ef8521::function_48f26766("cp_level_vengeance_go_to_safehouse");
	level thread namespace_82b91a51::function_d8eaed3d(5);
	level namespace_cc27597::function_c35e6aab("cin_ven_11_safehouse_3rd_sh010");
	wait(2);
	level.var_4c62d05f = function_f7d00e6a();
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_safehouse");
	namespace_1d795d47::function_be8adfb8("safehouse_plaza");
	namespace_523da15d::function_b4f6e07d();
}

/*
	Name: function_f7d00e6a
	Namespace: namespace_e6a038a0
	Checksum: 0xEFD46EE3
	Offset: 0x5148
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_f7d00e6a()
{
	var_a3a9af43 = function_6ada35ba("players_near_safehouse", "targetname");
	var_a3a9af43 endon("hash_128f8789");
	var_a3a9af43 namespace_4dbf3ae3::function_1ab5ebec();
	return var_a3a9af43.var_aef176e7;
}

/*
	Name: function_214b5ddf
	Namespace: namespace_e6a038a0
	Checksum: 0x2C62FE57
	Offset: 0x51B8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_214b5ddf()
{
	namespace_4dbf3ae3::function_1ab5ebec("plaza_combat_failsafe");
	namespace_80983c42::function_67e7a937("fire_light_balcony");
}

/*
	Name: function_fc4e0a9
	Namespace: namespace_e6a038a0
	Checksum: 0xAE8C1FD9
	Offset: 0x51F8
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function function_fc4e0a9()
{
	var_a392d7f9 = function_b4cb3503("hendricks_plaza_node", "targetname");
	self function_156339b6(var_a392d7f9, 1);
	self waittill("hash_41d1aaf0");
	level namespace_ad23e503::function_74d6b22f("hendricks_at_plaza");
	level namespace_ad23e503::function_1ab5ebec("plaza_hendricks_jump");
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	self.var_7dfaf62 = 16;
	var_ebe66fdc = namespace_14b42b8a::function_7922262b("safehouse_plaza_script_node", "targetname");
	var_ebe66fdc namespace_cc27597::function_43718187("cin_ven_07_20_jumpdownplaza_vign");
	self namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("start_plaza_color", "targetname");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 thread function_9af0090();
	}
	level namespace_ad23e503::function_1ab5ebec("plaza_combat_live");
	self namespace_76d95162::function_d9f49fba(1);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self thread namespace_63b4601c::function_5a886ae0();
	wait(10);
	var_f92a03e7 = function_6ada35ba("plaza_hendricks_color_sniper", "targetname");
	if(isdefined(var_f92a03e7))
	{
		namespace_4dbf3ae3::function_42e87952("plaza_hendricks_color_sniper", "targetname");
	}
	level namespace_ad23e503::function_1ab5ebec("plaza_cleared");
	self notify("hash_90a20e6d");
	self namespace_6f7b2095::function_54bdb053();
	var_a392d7f9 = function_b4cb3503("hendricks_approach_sh_node", "targetname");
	self function_156339b6(var_a392d7f9, 1);
}

/*
	Name: function_64ae9198
	Namespace: namespace_e6a038a0
	Checksum: 0xC51FF3D0
	Offset: 0x5528
	Size: 0xBB3
	Parameters: 1
	Flags: None
*/
function function_64ae9198(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	function_61d293c6();
	level namespace_ad23e503::function_c35e6aab("initial_plaza_spawns");
	level.var_b3e6718e = namespace_2f06d687::function_22356ba7("remote_snipers");
	var_493d4f49 = namespace_96fa87af::function_7387a40a("plaza_enemies_technical_01");
	var_6f3fc9b2 = namespace_96fa87af::function_7387a40a("plaza_enemies_technical_02");
	wait(0.05);
	namespace_2f06d687::function_22356ba7("plaza_enemies_wave_01");
	namespace_2f06d687::function_22356ba7("plaza_amws_0");
	wait(0.05);
	namespace_d5067552::function_bae40a28("plaza_allies_spawn_manager");
	function_67df0abc("54i_siegebots", "sh_allies");
	function_67df0abc("sh_wasps", "sh_allies");
	level.var_bcb63fa = namespace_2f06d687::function_22356ba7("plaza_warlords");
	namespace_d5067552::function_bae40a28("sh_wasp");
	if(var_74cd64bc)
	{
		level namespace_ad23e503::function_1ab5ebec("initial_plaza_spawns");
	}
	level namespace_ad23e503::function_1ab5ebec("start_plaza_wave_2");
	namespace_2f06d687::function_22356ba7("plaza_enemies_wave_02");
	level namespace_ad23e503::function_1ab5ebec("plaza_combat_live");
	var_8304f83c = function_6ada35ba("plaza_volume_01", "targetname");
	var_f50c6777 = function_6ada35ba("plaza_volume_02", "targetname");
	var_cf09ed0e = function_6ada35ba("plaza_volume_03", "targetname");
	var_10fd8901 = function_6ada35ba("plaza_volume_04", "targetname");
	var_df5035df = function_6ada35ba("sh_steps_volume", "targetname");
	level.var_4982c438 = var_8304f83c;
	namespace_d5067552::function_bae40a28("plaza_enemies_reinforcements");
	function_49e95dc0("players", "54i_warlords", 100000);
	namespace_4dbf3ae3::function_1ab5ebec("plaza_fallback_vol2", "targetname");
	level thread namespace_63b4601c::function_a084a58f();
	namespace_2f06d687::function_22356ba7("plaza_warlords_3");
	namespace_2f06d687::function_22356ba7("plaza_amws");
	level.var_4982c438 = var_f50c6777;
	level thread function_ea5edc3b(level.var_4982c438, var_8304f83c);
	level.var_bcb63fa = namespace_84970cc4::function_b87262e(level.var_bcb63fa);
	level.var_bcb63fa = namespace_84970cc4::function_5c13fae0(level.var_bcb63fa);
	if(level.var_bcb63fa.size < 1)
	{
		namespace_2f06d687::function_22356ba7("plaza_warlords_2");
	}
	namespace_4dbf3ae3::function_1ab5ebec("plaza_fallback_vol3", "targetname");
	level thread namespace_63b4601c::function_a084a58f();
	level.var_4982c438 = var_cf09ed0e;
	level thread function_ea5edc3b(level.var_4982c438, var_8304f83c, var_f50c6777);
	namespace_d5067552::function_54bdb053("plaza_allies_spawn_manager", 1);
	var_3ced446f = namespace_d5067552::function_423eae50("plaza_allies_spawn_manager");
	foreach(var_3b8db917 in var_3ced446f)
	{
		if(function_5b49d38c(var_3b8db917))
		{
			var_3b8db917 thread function_47370bbe();
		}
	}
	level thread function_892fb7e0();
	namespace_2f06d687::function_22356ba7("plaza_siegebots");
	function_49e95dc0("hendricks", "54i_siegebots", 1);
	function_49e95dc0("sh_allies", "54i_siegebots", 10);
	function_49e95dc0("players", "54i_siegebots", 100000);
	namespace_4dbf3ae3::function_1ab5ebec("plaza_fallback_vol4");
	level thread namespace_63b4601c::function_a084a58f();
	level.var_4982c438 = var_10fd8901;
	level thread function_ea5edc3b(level.var_4982c438, var_8304f83c, var_f50c6777, var_cf09ed0e);
	namespace_2f06d687::function_45679edd("plaza_enemies", 9);
	level thread namespace_63b4601c::function_a084a58f();
	namespace_80983c42::function_dfc351df("sh_tracer_all");
	var_28d235b6 = function_99201f25("plaza_small_spawn_triggers", "targetname");
	namespace_84970cc4::function_7e64f710(var_28d235b6);
	level.var_4982c438 = var_df5035df;
	var_35ef0ec1 = namespace_2f06d687::function_289e6fd1("plaza_enemies");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e) && function_5dbf7eca(var_6b45b25e.var_e6e9b8de, "human") && !function_5dbf7eca(var_6b45b25e.var_e6e9b8de, "warlord"))
		{
			var_6b45b25e namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
		}
	}
	level thread function_ea5edc3b(level.var_4982c438, var_8304f83c, var_f50c6777, var_cf09ed0e, var_10fd8901);
	namespace_2f06d687::function_45679edd("plaza_enemies", 4);
	level thread namespace_63b4601c::function_a084a58f();
	namespace_2f06d687::function_847149c(700);
	var_e5206be0 = function_6ada35ba("sh_steps_final_volume", "targetname");
	var_87cdd1a3 = function_6ada35ba("sh_allies_volume", "targetname");
	var_35ef0ec1 = namespace_2f06d687::function_289e6fd1("plaza_enemies");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e.var_caae374e) && var_6b45b25e.var_caae374e == "siegebot")
		{
			var_6b45b25e function_169cc712(var_87cdd1a3, 1);
			continue;
		}
		var_6b45b25e function_169cc712(var_e5206be0, 1);
	}
	namespace_2f06d687::function_45679edd("plaza_enemies", 1);
	var_35ef0ec1 = namespace_2f06d687::function_289e6fd1("plaza_enemies");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e) && !function_5dbf7eca(var_6b45b25e.var_e6e9b8de, "warlord") && (!isdefined(var_6b45b25e.var_caae374e) || (isdefined(var_6b45b25e.var_caae374e) && var_6b45b25e.var_caae374e != "siegebot")))
		{
			var_6b45b25e function_2992720d();
		}
	}
	namespace_2f06d687::function_45679edd("plaza_enemies", 0);
	level namespace_ad23e503::function_74d6b22f("plaza_cleared");
}

/*
	Name: function_61d293c6
	Namespace: namespace_e6a038a0
	Checksum: 0xB798490B
	Offset: 0x60E8
	Size: 0x719
	Parameters: 0
	Flags: None
*/
function function_61d293c6()
{
	function_43f446e3("players");
	function_43f446e3("hendricks");
	function_43f446e3("sh_allies");
	function_43f446e3("sh_wasps");
	function_43f446e3("54i_grunts");
	function_43f446e3("54i_reinforcements");
	function_43f446e3("54i_warlords");
	function_43f446e3("54i_siegebots");
	var_5ddef2e5 = function_3f10449f();
	foreach(var_6bfe1586 in var_5ddef2e5)
	{
		var_6bfe1586 function_c7708f99("players");
	}
	level.var_2fd26037 function_c7708f99("hendricks");
	namespace_2f06d687::function_2b37a3c9("remote_snipers", "targetname", &namespace_63b4601c::function_bce5a9e);
	namespace_2f06d687::function_ef554cf7("axis", &function_eef8125c);
	namespace_2f06d687::function_2b37a3c9("plaza_enemies_wave_01", "targetname", &function_d824ba94, "54i_grunts");
	namespace_2f06d687::function_2b37a3c9("plaza_enemies_wave_01", "targetname", &function_db772ecc, 1024);
	namespace_2f06d687::function_2b37a3c9("plaza_enemies_wave_02", "targetname", &function_d824ba94, "54i_grunts");
	namespace_2f06d687::function_2b37a3c9("plaza_enemies_wave_02", "targetname", &function_db772ecc, 1024);
	var_443c7feb = function_6ada35ba("plaza_enemies_reinforcements", "targetname");
	namespace_2f06d687::function_2b37a3c9(var_443c7feb.var_b07228b6, "targetname", &function_d824ba94, "54i_reinforcements");
	namespace_2f06d687::function_2b37a3c9(var_443c7feb.var_b07228b6, "targetname", &function_db772ecc, 1750);
	namespace_2f06d687::function_2b37a3c9(var_443c7feb.var_b07228b6, "targetname", &function_688b4ed7);
	namespace_2f06d687::function_2b37a3c9("plaza_warlords", "targetname", &function_d824ba94, "54i_warlords");
	namespace_2f06d687::function_2b37a3c9("plaza_warlords", "targetname", &function_b25bc7b2);
	namespace_2f06d687::function_2b37a3c9("plaza_warlords_2", "targetname", &function_d824ba94, "54i_warlords");
	namespace_2f06d687::function_2b37a3c9("plaza_warlords_2", "targetname", &function_b25bc7b2);
	namespace_2f06d687::function_2b37a3c9("plaza_warlords_3", "targetname", &function_d824ba94, "54i_warlords");
	namespace_2f06d687::function_2b37a3c9("plaza_warlords_3", "targetname", &function_b25bc7b2);
	namespace_2f06d687::function_2b37a3c9("plaza_siegebots", "targetname", &function_d824ba94, "54i_siegebots");
	namespace_2f06d687::function_2b37a3c9("plaza_siegebots", "targetname", &function_3dc47c4e);
	var_4b4c408f = function_6ada35ba("plaza_allies_spawn_manager", "targetname");
	namespace_2f06d687::function_2b37a3c9(var_4b4c408f.var_b07228b6, "targetname", &function_d824ba94, "sh_allies");
	namespace_2f06d687::function_2b37a3c9(var_4b4c408f.var_b07228b6, "targetname", &function_db772ecc, 768);
	var_3e8c1c00 = function_6ada35ba("sh_wasp", "targetname");
	var_b60b5e6b = function_6ada35ba("plaza_volume_center", "targetname");
	foreach(var_aaefedf3 in function_99201f25(var_3e8c1c00.var_b07228b6, "targetname"))
	{
		namespace_96fa87af::function_994832bd(var_aaefedf3.var_170527fb, &function_d824ba94, "sh_wasps");
		namespace_96fa87af::function_994832bd(var_aaefedf3.var_170527fb, &function_68e4ea91, var_b60b5e6b);
	}
}

/*
	Name: function_db772ecc
	Namespace: namespace_e6a038a0
	Checksum: 0xDE5D5BA8
	Offset: 0x6810
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_db772ecc(var_7dfaf62)
{
	self.var_7dfaf62 = var_7dfaf62;
}

/*
	Name: function_d824ba94
	Namespace: namespace_e6a038a0
	Checksum: 0xF70CE297
	Offset: 0x6830
	Size: 0x1D9
	Parameters: 1
	Flags: None
*/
function function_d824ba94(var_c5deafa2)
{
	self endon("hash_128f8789");
	self function_c7708f99(var_c5deafa2);
	if(level namespace_ad23e503::function_7922262b("plaza_combat_live"))
	{
		return;
	}
	if(var_c5deafa2 == "54i_grunts" || var_c5deafa2 == "54i_reinforcements" || var_c5deafa2 == "sh_wasps")
	{
		var_5ddef2e5 = function_3f10449f();
		foreach(var_6bfe1586 in var_5ddef2e5)
		{
			self function_76aa5b30(var_6bfe1586, 1);
		}
		level namespace_ad23e503::function_1ab5ebec("plaza_combat_live");
		var_5ddef2e5 = function_3f10449f();
		foreach(var_6bfe1586 in var_5ddef2e5)
		{
			self function_76aa5b30(var_6bfe1586, 0);
		}
	}
}

/*
	Name: function_688b4ed7
	Namespace: namespace_e6a038a0
	Checksum: 0x296E0C1F
	Offset: 0x6A18
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_688b4ed7()
{
	var_391b0dcb = [];
	var_391b0dcb[0] = function_6ada35ba("plaza_volume_01", "targetname");
	var_391b0dcb[1] = function_6ada35ba("plaza_volume_02", "targetname");
	var_391b0dcb[2] = function_6ada35ba("plaza_volume_03", "targetname");
	var_391b0dcb[3] = function_6ada35ba("plaza_volume_04", "targetname");
	var_391b0dcb[4] = function_6ada35ba("sh_steps_volume", "targetname");
	var_5e76f0af = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_391b0dcb.size; var_c957f6b6++)
	{
		if(var_391b0dcb[var_c957f6b6] == level.var_4982c438)
		{
			var_5e76f0af = var_c957f6b6;
		}
	}
	for(var_c957f6b6 = var_5e76f0af; var_c957f6b6 >= 0; var_c957f6b6--)
	{
		var_391b0dcb = namespace_84970cc4::function_8fdf50c0(var_391b0dcb, var_c957f6b6, 1);
	}
	if(var_391b0dcb.size == 0)
	{
		var_71484221 = function_6ada35ba("sh_steps_volume", "targetname");
	}
	else
	{
		var_71484221 = namespace_84970cc4::function_47d18840(var_391b0dcb);
	}
	self function_169cc712(var_71484221, 1);
}

/*
	Name: function_ea5edc3b
	Namespace: namespace_e6a038a0
	Checksum: 0x80E2C66E
	Offset: 0x6C18
	Size: 0x201
	Parameters: 5
	Flags: None
*/
function function_ea5edc3b(var_fe5aba79, var_242401fb, var_b21c92c0, var_d81f0d29, var_962b7136)
{
	var_56dd1913 = namespace_2f06d687::function_289e6fd1("plaza_enemies");
	foreach(var_e98b4e9b in var_56dd1913)
	{
		var_3a825beb = 0;
		if(!function_5b49d38c(var_e98b4e9b))
		{
			break;
		}
		if(isdefined(var_e98b4e9b.var_caae374e) && var_e98b4e9b.var_caae374e == "siegebot")
		{
			break;
		}
		if(isdefined(var_242401fb) && var_e98b4e9b function_32fa5072(var_242401fb))
		{
			var_3a825beb = 1;
		}
		if(isdefined(var_b21c92c0) && var_e98b4e9b function_32fa5072(var_b21c92c0))
		{
			var_3a825beb = 1;
		}
		if(isdefined(var_d81f0d29) && var_e98b4e9b function_32fa5072(var_d81f0d29))
		{
			var_3a825beb = 1;
		}
		if(isdefined(var_962b7136) && var_e98b4e9b function_32fa5072(var_962b7136))
		{
			var_3a825beb = 1;
		}
		if(var_3a825beb)
		{
			var_e98b4e9b function_169cc712(var_fe5aba79, 1);
		}
	}
}

/*
	Name: function_b25bc7b2
	Namespace: namespace_e6a038a0
	Checksum: 0x3E4AC244
	Offset: 0x6E28
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_b25bc7b2()
{
	self.var_a1ed1ed1 = 512;
	var_eaf20b66 = function_fe0cfd2e(self.var_caae374e, "targetname");
	foreach(var_90ca1fdd in var_eaf20b66)
	{
		self namespace_69ee7109::function_da308a83(var_90ca1fdd.var_722885f3, 4000, 8000);
	}
}

/*
	Name: function_3dc47c4e
	Namespace: namespace_e6a038a0
	Checksum: 0x12CDA8D2
	Offset: 0x6F10
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_3dc47c4e()
{
	var_9c169a5c = function_6ada35ba("gv_plaza_siegebot", "targetname");
	self function_169cc712(var_9c169a5c, 1);
}

/*
	Name: function_eef8125c
	Namespace: namespace_e6a038a0
	Checksum: 0xB01DACB0
	Offset: 0x6F68
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_eef8125c()
{
	self endon("hash_128f8789");
	if(!isdefined(self) || !function_5b49d38c(self))
	{
		return;
	}
	self.var_44a68a57 = &function_7273d688;
}

/*
	Name: function_7273d688
	Namespace: namespace_e6a038a0
	Checksum: 0x64ABCBC4
	Offset: 0x6FC0
	Size: 0xE7
	Parameters: 12
	Flags: None
*/
function function_7273d688(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_ae725cb8, var_a5cf2304, var_5d7e7ac2)
{
	if(isdefined(var_3a212fd7) && !function_65f192a6(var_3a212fd7) && var_3a212fd7 != level.var_2fd26037)
	{
		var_f9a179ed = 0;
	}
	else if(!level namespace_ad23e503::function_7922262b("plaza_combat_live"))
	{
		level namespace_ad23e503::function_74d6b22f("plaza_combat_live");
	}
	return var_f9a179ed;
}

/*
	Name: function_aecb2215
	Namespace: namespace_e6a038a0
	Checksum: 0x90D19214
	Offset: 0x70B0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_aecb2215()
{
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 thread function_dcf7f342();
	}
}

/*
	Name: function_dcf7f342
	Namespace: namespace_e6a038a0
	Checksum: 0xFCD16ACC
	Offset: 0x7148
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_dcf7f342()
{
	level endon("hash_e02b4765");
	while(1)
	{
		self waittill("hash_aa1618b0", var_6ced28a9);
		if(!function_b318b40(var_6ced28a9, "suppressed") || var_6ced28a9.var_4be20d44 != "ar_marksman_veng_hero_weap")
		{
			level namespace_ad23e503::function_74d6b22f("plaza_combat_live");
		}
	}
}

/*
	Name: function_68e4ea91
	Namespace: namespace_e6a038a0
	Checksum: 0xD623FE90
	Offset: 0x71E0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_68e4ea91(var_ab891f49)
{
	self endon("hash_128f8789");
	if(isdefined(var_ab891f49))
	{
		self function_169cc712(var_ab891f49, 1);
	}
}

/*
	Name: function_47370bbe
	Namespace: namespace_e6a038a0
	Checksum: 0x896EB2D9
	Offset: 0x7228
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_47370bbe()
{
	self endon("hash_128f8789");
	wait(function_72a94f05(1.5, 5));
	self function_2992720d();
}

/*
	Name: function_892fb7e0
	Namespace: namespace_e6a038a0
	Checksum: 0xA2645E14
	Offset: 0x7278
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_892fb7e0()
{
	level endon("hash_646ccd7c");
	level thread function_5f5b64cf();
	namespace_80983c42::function_80983c42("sh_lhs_fire");
	wait(2.5);
	namespace_80983c42::function_80983c42("sh_rhs_fire");
	wait(10);
	namespace_80983c42::function_80983c42("sh_cent_fire");
	wait(6);
	namespace_80983c42::function_80983c42("sh_upper_fire");
}

/*
	Name: function_5f5b64cf
	Namespace: namespace_e6a038a0
	Checksum: 0xCB8F437
	Offset: 0x7320
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_5f5b64cf()
{
	level waittill("hash_ffdc982b");
	namespace_80983c42::function_67e7a937("sh_lhs_fire");
	namespace_80983c42::function_67e7a937("sh_rhs_fire");
	namespace_80983c42::function_67e7a937("sh_cent_fire");
	namespace_80983c42::function_67e7a937("sh_upper_fire");
}

/*
	Name: function_29587c78
	Namespace: namespace_e6a038a0
	Checksum: 0x2CD01782
	Offset: 0x73A0
	Size: 0x357
	Parameters: 0
	Flags: None
*/
function function_29587c78()
{
	self endon("hash_643a7daf");
	level endon("hash_646ccd7c");
	while(1)
	{
		var_f8681460 = self function_501eb072();
		var_fd26df34 = function_bc7ce905(self function_89c87c9c());
		var_b3db42a9 = function_b8494651("axis");
		foreach(var_daf22616 in var_b3db42a9)
		{
			if(!isdefined(var_daf22616))
			{
				continue;
			}
			if(function_316422d1(self.var_722885f3, var_daf22616.var_722885f3) > 1048576)
			{
				continue;
			}
			var_bbf94a49 = var_daf22616.var_722885f3;
			if(function_5cfb84bb(var_daf22616))
			{
				var_bbf94a49 = var_daf22616 function_501eb072();
			}
			var_bd00ff2a = function_f679a325(var_bbf94a49 - var_f8681460);
			if(function_5f9a4869(var_fd26df34, var_bd00ff2a) > 0.99)
			{
				if(function_e7865c4b(var_bbf94a49, var_f8681460, 0, undefined))
				{
					if(function_5b49d38c(var_daf22616))
					{
						if(function_5dbf7eca(var_daf22616.var_e6e9b8de, "warlord"))
						{
							wait(7);
							continue;
						}
						if(function_5dbf7eca(var_daf22616.var_e6e9b8de, "rpg"))
						{
							if(namespace_d73b9283::function_d2c92ee7())
							{
								wait(7);
								continue;
							}
							else
							{
								wait(7);
								continue;
							}
						}
						if(isdefined(var_daf22616.var_e4daa8a7) && var_daf22616.var_219c140a == "gunner1")
						{
							wait(7);
							continue;
						}
						if(function_85e4c3b3(var_daf22616))
						{
							if(function_5dbf7eca(var_daf22616.var_9d34dca7, "wasp"))
							{
								level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_watch_the_skies_for_0", 0, 0, self);
								wait(7);
								continue;
							}
						}
					}
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_9af0090
	Namespace: namespace_e6a038a0
	Checksum: 0x6572EC89
	Offset: 0x7700
	Size: 0x10F
	Parameters: 0
	Flags: None
*/
function function_9af0090()
{
	self endon("hash_643a7daf");
	self endon("hash_c23c76ef");
	var_a8546f11 = [];
	var_a8546f11[0] = "hend_get_down_here_we_go_0";
	var_a8546f11[1] = "hend_i_m_being_flanked_g_0";
	var_a8546f11[2] = "hend_get_your_ass_down_he_0";
	self thread function_2b657656();
	while(1)
	{
		wait(function_dc99997a(10, 15));
		var_616d3e3e = namespace_84970cc4::function_47d18840(var_a8546f11);
		level.var_2fd26037 namespace_63b4601c::function_5fbec645(var_616d3e3e, 0, 0, self);
		var_a8546f11 = namespace_84970cc4::function_d010fbb9(var_a8546f11, var_616d3e3e);
		if(var_a8546f11.size < 1)
		{
			break;
		}
	}
}

/*
	Name: function_2b657656
	Namespace: namespace_e6a038a0
	Checksum: 0x41AE87E2
	Offset: 0x7818
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_2b657656()
{
	self endon("hash_643a7daf");
	namespace_4dbf3ae3::function_1ab5ebec("plaza_combat_failsafe", "targetname", self);
	self notify("hash_c23c76ef");
}

