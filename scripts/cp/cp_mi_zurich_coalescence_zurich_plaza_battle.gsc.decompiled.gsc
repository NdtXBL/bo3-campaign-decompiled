#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_quadtank_util;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_city;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_hq;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\coop;
#using scripts\shared\_oob;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\vehicles\_siegebot;

#namespace namespace_ca56958;

/*
	Name: function_9c1fc2fd
	Namespace: namespace_ca56958
	Checksum: 0x689B5290
	Offset: 0x1920
	Size: 0xF0B
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_c35e6aab("plaza_battle_hq_entrance_door_hacked");
	level namespace_ad23e503::function_c35e6aab("blast_doors_opened");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_approach_reached");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_blast_door_left" + "_opened");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_blast_door_right" + "_opened");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_blast_door_left" + "_ready");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_blast_door_right" + "_ready");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_exit_cleared");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_front_defenses_broken");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_hunter_destroyed");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_intro_artillery_in_position");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_intro_artillery_objective_start");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_kane_enter_ready");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_objective_started");
	level namespace_ad23e503::function_c35e6aab("plaza_boss_dead");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_vtol_drop_crew_completed");
	level namespace_ad23e503::function_c35e6aab("plaza_battle_intro_battle_start");
	/#
		level.var_d21daa68 = 0;
	#/
	/#
		level thread function_65cbc694();
	#/
	level thread function_ad90c3f4();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_5e1777fc(&function_5e1777fc);
	/#
		namespace_dabbe128::function_6aceae7c(&function_6aceae7c);
	#/
	/#
		namespace_dabbe128::function_5cf145c9(&function_5cf145c9);
	#/
	namespace_2f06d687::function_2b37a3c9("plaza_battle_artillery", "targetname", &function_29fa5d37);
	namespace_2f06d687::function_2b37a3c9("plaza_battle_intro_allies", "script_aigroup", &function_2b6c19a4);
	namespace_2f06d687::function_2b37a3c9("plaza_battle_reinforcements", "script_noteworthy", &function_f474e246);
	namespace_2f06d687::function_2b37a3c9("plaza_battle_siegebot", "script_noteworthy", &function_1dbc4cbb);
	namespace_2f06d687::function_2b37a3c9("plaza_battle_vehicle_ai_splined_entry", "script_noteworthy", &function_c89b08c9);
	namespace_2f06d687::function_2b37a3c9("plaza_vtol_robots", "targetname", &function_f474e246);
	namespace_2f06d687::function_2b37a3c9("robot_phalanx", "script_noteworthy", &function_4a1261ef);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_8e9083ff::function_da579a5d(var_b04bc952, 1);
		namespace_2f06d687::function_2b37a3c9("plaza_battle_boss", "targetname", &function_8fdd138);
		namespace_2f06d687::function_2b37a3c9("plaza_battle_alliies", "targetname", &function_adfa2b54);
		namespace_d5067552::function_bae40a28("plaza_battle_allies_left_spawn_manager");
		namespace_d5067552::function_bae40a28("plaza_battle_allies_right_spawn_manager");
		level.var_438d2fd9 = [];
		level.var_a06b011 = namespace_2f06d687::function_7387a40a("plaza_battle_boss");
		namespace_80983c42::function_80983c42("streets_tower_wasp_swarm");
		level namespace_71e9cb84::function_74d6b22f("zurich_city_ambience", 1);
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle", &namespace_8e9083ff::function_162b9ea0, "init");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle");
		namespace_d7916d65::function_a2995f22();
	}
	else
	{
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_e204c270);
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_424191b5);
	}
	function_9e3608e3("hq_entry_panel_hacked");
	if(isdefined(level.var_c50fbb10))
	{
		level thread [[level.var_c50fbb10]]();
	}
	level thread function_51e389ee(var_74cd64bc);
	level thread function_e0828083();
	level thread function_5e886797();
	level thread function_d9c927f6();
	level thread function_9590c294(var_74cd64bc);
	var_b8f9a884 = namespace_2f06d687::function_7387a40a("plaza_battle_turret", &function_5268b119);
	level thread namespace_8e9083ff::function_2361541e("plaza_battle");
	namespace_4dbf3ae3::function_1ab5ebec("plaza_battle_spawn_trig", undefined, undefined, 0);
	level thread namespace_67110270::function_228c7b0f();
	var_f7e53696 = function_99201f25("plaza_battle_intro_car_destroy_damagetrig", "targetname");
	namespace_84970cc4::function_966ecb29(var_f7e53696, &function_a2b45d70);
	namespace_cc27597::function_8f9f34e0("cin_zur_04_01_ext_vign_lockdown", &function_87ebab3e, "init");
	level namespace_cc27597::function_c35e6aab("cin_zur_04_01_ext_vign_lockdown");
	namespace_76d95162::function_d9f49fba(1);
	namespace_8e9083ff::function_1b3dfa61("plaza_battle_train_exit_breadcrumb_struct_trig", undefined, 180, 1000);
	level namespace_ad23e503::function_74d6b22f("plaza_battle_approach_reached");
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_intro_reached");
	level notify("hash_866f690c");
	function_bab1ff00("garage_umbra_gate", 0);
	namespace_4dbf3ae3::function_1ab5ebec("plaza_battle_midpoint_trig", undefined, undefined, 0);
	var_f7e53696 = function_99201f25("plaza_battle_intro_car_destroy_damagetrig", "targetname");
	namespace_84970cc4::function_7e64f710(var_f7e53696);
	var_c4a1b346 = function_6ada35ba("garage_cleanup_trig", "targetname");
	var_c4a1b346 function_dc8c8404();
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("plaza_boss_dead", "plaza_battle_hunter_destroyed", "plaza_battle_intro_artillery_destroyed"));
	level namespace_ad23e503::function_74d6b22f("plaza_battle_cleared");
	level thread namespace_67110270::function_973b77f9();
	var_5cca3f31 = function_6ada35ba("plaza_battle_blast_door_open_trig", "targetname");
	var_5cca3f31 namespace_8e9083ff::function_d1996775();
	function_6ddd4fa4("hq_entry_panel_hacked");
	function_9e3608e3("hq_entry_panel");
	level namespace_ad23e503::function_74d6b22f("plaza_battle_hq_entrance_door_hacked");
	function_bc249f36();
	level namespace_ad23e503::function_74d6b22f("blast_doors_opened");
	namespace_4dbf3ae3::function_1ab5ebec("plaza_battle_enter_hq_gathertrig", undefined, level.var_3d556bcd);
	level thread namespace_67110270::function_ce97ecac();
	function_59999862();
	var_e3b635fb = function_b8494651("axis", "allies");
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(!var_d84e54db namespace_82b91a51::function_d3426abc())
		{
			var_d84e54db function_dc8c8404();
		}
	}
	namespace_84970cc4::function_eaab05dc(function_bd90138e(), &function_dc8c8404);
	level.var_a06b011 = undefined;
	level.var_e651620c = undefined;
	level.var_438d2fd9 = undefined;
	level.var_782205f8 = undefined;
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586.var_33edeabe = 1;
	}
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 namespace_82b91a51::function_df6eb506(0);
	}
	level notify("hash_73e5a63e");
	namespace_dabbe128::function_a0ac4434(&function_aebcf025);
	namespace_dabbe128::function_7f6aa1c3(&function_5e1777fc);
	namespace_dabbe128::function_3f5e6667(&function_87f30e90);
	/#
		namespace_dabbe128::function_a09757b3(&function_6aceae7c);
	#/
	/#
		namespace_dabbe128::function_9fcef20a(&function_5cf145c9);
	#/
	/#
		level.var_d21daa68 = undefined;
	#/
	var_62e3398b = function_d35375b8("robot_phalanx", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_62e3398b, &namespace_2f06d687::function_81b8f7c, &function_4a1261ef);
	var_bf9f9fb8 = function_d35375b8("plaza_battle_boss", "targetname");
	namespace_84970cc4::function_966ecb29(var_bf9f9fb8, &namespace_2f06d687::function_81b8f7c, &function_8fdd138);
	level namespace_71e9cb84::function_74d6b22f("zurich_city_ambience", 0);
	level.var_3d556bcd thread namespace_8e9083ff::function_4fb68dd5();
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_cb30d060);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_ad90c3f4
	Namespace: namespace_ca56958
	Checksum: 0x1A4228E4
	Offset: 0x2838
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_ad90c3f4()
{
	level.var_a2319815 = function_9b7fda5e("trigger_box", (-5899, 34022, -4191), 0, 8000, 8000, 8000);
	level.var_a2319815 endon("hash_128f8789");
	var_a3d46ee4 = undefined;
	while(1)
	{
		level.var_a2319815 waittill("hash_4dbf3ae3", var_a3d46ee4);
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 function_2992720d();
		}
	}
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_ca56958
	Checksum: 0x1C31B5F6
	Offset: 0x28F8
	Size: 0x16B
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_8e9083ff::function_4d032f25(0);
	if(!var_74cd64bc)
	{
		level.var_3d556bcd thread namespace_8e9083ff::function_fe5160df(0);
	}
	level namespace_8e9083ff::function_b0f0dd1f(0);
	level thread namespace_8e9083ff::function_4a00a473("plaza_battle");
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_zurich_assault_hq_obj");
		namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_destroy_aspc_obj");
		namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_destroy_hunter_obj");
		namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_destroy_aspml_obj");
		namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_awaiting_obj");
		namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_hack_obj");
		namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_obj");
	}
	if(isdefined(level.var_a2319815))
	{
		level.var_a2319815 function_dc8c8404();
	}
}

/*
	Name: function_5ea42950
	Namespace: namespace_ca56958
	Checksum: 0xF1F896EA
	Offset: 0x2A70
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_5ea42950()
{
	level namespace_ad23e503::function_43ac000b(function_84970cc4("plaza_battle_intro_artillery_destroyed", "plaza_boss_dead"));
	var_fe0af0a5 = function_243bb261("plaza_battle_hunter_combat_spline", "targetname");
	var_782205f8 = namespace_2f06d687::function_7387a40a("zurich_ambient_hunter", &function_c89b08c9, var_fe0af0a5);
	var_782205f8 waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("plaza_battle_hunter_destroyed");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_e204c270
	Namespace: namespace_ca56958
	Checksum: 0xF92B9A50
	Offset: 0x2B50
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_e204c270()
{
	self endon("hash_128f8789");
	self notify("hash_1f15947d");
	self endon("hash_1f15947d");
	level endon("hash_ef7fbb43");
	do
	{
		self waittill("hash_9206d256", var_81ad4fd7);
	}
	while(!(!isdefined(var_81ad4fd7.var_84690dfd) && var_81ad4fd7.var_84690dfd));
	self waittill("hash_9206d256");
	while(!(isdefined(self.var_a2168b36) && self.var_a2168b36))
	{
		self namespace_c03736ba::function_e9f7384d();
		level namespace_82b91a51::function_5b7e3888("trophy_system_disabled", "trophy_system_destroyed");
		self thread function_2df89aaf();
	}
}

/*
	Name: function_2df89aaf
	Namespace: namespace_ca56958
	Checksum: 0x8FA4DACC
	Offset: 0x2C48
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_2df89aaf()
{
	self notify("hash_87667d63");
	self endon("hash_87667d63");
	self endon("hash_1f15947d");
	level endon("hash_ef7fbb43");
	while(!(isdefined(self.var_a2168b36) && self.var_a2168b36))
	{
		self waittill("hash_9206d256", var_81ad4fd7);
		if(isdefined(var_81ad4fd7.var_84690dfd) && var_81ad4fd7.var_84690dfd)
		{
			self.var_a2168b36 = 1;
			self notify("hash_1f15947d");
		}
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_ca56958
	Checksum: 0x9C7D2953
	Offset: 0x2D00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self thread function_2e5e657b();
	self function_424191b5();
	self function_e204c270();
}

/*
	Name: function_2e5e657b
	Namespace: namespace_ca56958
	Checksum: 0x71498006
	Offset: 0x2D58
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_2e5e657b()
{
	level endon("hash_a835a95b");
	self endon("hash_128f8789");
	if(level namespace_ad23e503::function_7922262b("plaza_battle_train_exit_reached"))
	{
		return;
	}
	while(1)
	{
		self waittill("hash_aa1618b0");
		var_b893746c = namespace_2f06d687::function_289e6fd1("robot_phalanx");
		foreach(var_d84e54db in var_b893746c)
		{
			var_b8f6e26f = self namespace_82b91a51::function_d61b846f(var_d84e54db function_501eb072(), 0.98, 1, self);
			if(var_b8f6e26f && self namespace_82b91a51::function_552ba2e2())
			{
				level namespace_ad23e503::function_74d6b22f("plaza_battle_intro_battle_start");
				return;
			}
		}
	}
}

/*
	Name: function_d32cd515
	Namespace: namespace_ca56958
	Checksum: 0x82CFFE3D
	Offset: 0x2EC0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_d32cd515()
{
	/#
		var_90911853 = function_c4d5ec1f("Dev Block strings are not supported");
		if(!self function_2103ff4b(var_90911853))
		{
			self function_860a040a(var_90911853);
			self function_67795b5f(var_90911853, var_90911853.var_c0b2188);
			self function_704b802a(var_90911853);
		}
	#/
}

/*
	Name: function_5e1777fc
	Namespace: namespace_ca56958
	Checksum: 0xEA04E259
	Offset: 0x2F70
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_5e1777fc(var_a8563e07)
{
	if(level.var_2395e945.size > 1 || !self.var_8fc0e50e === "robot" || !isdefined(var_a8563e07.var_3a212fd7) || !var_a8563e07.var_3a212fd7 namespace_82b91a51::function_d3426abc())
	{
		return;
	}
	self namespace_82b91a51::function_4b741fdc();
	self function_2992720d();
}

/*
	Name: function_6aceae7c
	Namespace: namespace_ca56958
	Checksum: 0x362A840B
	Offset: 0x3018
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_6aceae7c(var_d4457625)
{
	/#
		if(!self.var_8fc0e50e === "Dev Block strings are not supported" || !function_65f192a6(var_d4457625.var_3a212fd7))
		{
			return;
		}
		self function_2f458d44();
	#/
}

/*
	Name: function_5cf145c9
	Namespace: namespace_ca56958
	Checksum: 0xDB28B8A8
	Offset: 0x3080
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_5cf145c9(var_d4457625)
{
	/#
		if(!function_65f192a6(var_d4457625.var_3a212fd7))
		{
			return;
		}
		self function_2f458d44();
	#/
}

/*
	Name: function_2f458d44
	Namespace: namespace_ca56958
	Checksum: 0x10E7E4F1
	Offset: 0x30D0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_2f458d44()
{
	/#
		level.var_d21daa68++;
	#/
}

/*
	Name: function_65cbc694
	Namespace: namespace_ca56958
	Checksum: 0x11F51707
	Offset: 0x30E8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_65cbc694()
{
	/#
		level endon("hash_339fe39c");
		while(isdefined(level.var_d21daa68))
		{
			wait(4);
			function_d52b076d("Dev Block strings are not supported" + level.var_d21daa68);
		}
	#/
}

/*
	Name: function_87f30e90
	Namespace: namespace_ca56958
	Checksum: 0xE9D56688
	Offset: 0x3140
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_87f30e90()
{
	if(self.var_8fc0e50e === "robot")
	{
		if(!level namespace_ad23e503::function_7922262b("plaza_battle_cleared"))
		{
			self function_4e20543d();
			return;
		}
		self function_d297683e();
	}
}

/*
	Name: function_4e20543d
	Namespace: namespace_ca56958
	Checksum: 0x308603EE
	Offset: 0x31B0
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_4e20543d()
{
	self endon("hash_128f8789");
	var_a8a66403 = 22;
	if(level namespace_ad23e503::function_7922262b("plaza_battle_hunter_destroyed"))
	{
		var_a8a66403 = 40;
	}
	var_56f344e5 = namespace_8e9083ff::function_411dc61b(var_a8a66403, 18);
	if(function_26299103(100) <= var_56f344e5)
	{
		self namespace_6f7b2095::function_54bdb053();
	}
	wait(0.05);
	var_bd24b897 = namespace_8e9083ff::function_411dc61b(10, 5);
	if(function_26299103(100) <= var_bd24b897)
	{
		self function_bca2e7();
	}
}

/*
	Name: function_bca2e7
	Namespace: namespace_ca56958
	Checksum: 0xE9D97408
	Offset: 0x32C0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_bca2e7()
{
	self.var_c31055d = namespace_8e9083ff::function_411dc61b(function_b6b79a0(self.var_3a90f16b * 8), function_b6b79a0(self.var_3a90f16b / 2));
	self namespace_6f7b2095::function_54bdb053();
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_3");
	self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
	self.var_3e94206a = "axis";
}

/*
	Name: function_d297683e
	Namespace: namespace_ca56958
	Checksum: 0xA52051F6
	Offset: 0x33A0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_d297683e()
{
	self endon("hash_128f8789");
	self namespace_6f7b2095::function_54bdb053();
	wait(0.05);
	var_10fcb680 = namespace_8e9083ff::function_411dc61b(30, 25);
	if(function_26299103(100) <= var_10fcb680)
	{
		self function_bca2e7();
	}
}

/*
	Name: function_3b05fc1b
	Namespace: namespace_ca56958
	Checksum: 0x9F034580
	Offset: 0x3430
	Size: 0x317
	Parameters: 15
	Flags: None
*/
function function_3b05fc1b(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f)
{
	if(isdefined(level.var_7ebc8836) && function_e70ab977(var_3a212fd7))
	{
		if(level.var_7ebc8836)
		{
			var_df4257db = namespace_8e9083ff::function_411dc61b(5, -1);
			var_f9a179ed = function_b6b79a0(var_f9a179ed * var_df4257db);
		}
		else if(!level.var_7ebc8836)
		{
			var_f9a179ed = 0;
		}
	}
	var_e5315a4c = function_3f10449f().size;
	var_afbd0ff2 = self.var_38a62b0e * 0.4 - 0.02 * var_e5315a4c;
	if(var_ba36487d !== "MOD_UNKNOWN" && var_f9a179ed > var_afbd0ff2)
	{
		var_f9a179ed = var_afbd0ff2;
	}
	if(namespace_72ee5da4::function_8df80b43(self, var_dfcc01fd, var_ba36487d, var_51e6a548, var_3a212fd7))
	{
		var_bb219078 = 0.8 * self.var_c1239d26.var_9d16e332;
		var_a790be5a = 1.2 * self.var_c1239d26.var_9d16e332;
		self notify("hash_6044d9ae", function_72a94f05(var_bb219078, var_a790be5a), var_3a212fd7, var_51e6a548);
	}
	if(!isdefined(self.var_e542d7d4))
	{
		self.var_e542d7d4 = 0;
		self.var_156470d4 = self.var_e542d7d4;
	}
	var_156470d4 = namespace_96fa87af::function_b07a55e6(self.var_3a90f16b, var_f9a179ed, self.var_38a62b0e);
	if(var_156470d4 > self.var_e542d7d4)
	{
		self.var_156470d4 = var_156470d4;
	}
	if(self.var_156470d4 > self.var_e542d7d4)
	{
		self.var_e542d7d4 = self.var_156470d4;
		var_ec01147f = self function_b4980289(0);
		if(!isdefined(var_ec01147f))
		{
			self notify("hash_3a1e58a1");
		}
		namespace_96fa87af::function_99199795(self.var_e542d7d4);
	}
	return var_f9a179ed;
}

/*
	Name: function_51e389ee
	Namespace: namespace_ca56958
	Checksum: 0x5FF73CCA
	Offset: 0x3750
	Size: 0x34B
	Parameters: 1
	Flags: None
*/
function function_51e389ee(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_assault_hq_obj");
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_assault_hq_awaiting_obj");
		namespace_d0ef8521::function_50ccee8d("cp_level_zurich_assault_hq_obj");
	}
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_approach_reached");
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_assault_hq_awaiting_obj");
	namespace_d0ef8521::function_48f26766("cp_level_zurich_assault_hq_obj");
	namespace_d0ef8521::function_45d1556("plaza_battle_intro_breadcrumb_trig", "cp_waypoint_breadcrumb");
	namespace_d0ef8521::function_31cd1834("cp_level_zurich_assault_hq_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_enter_hq_awaiting_obj");
	level namespace_ad23e503::function_74d6b22f("plaza_battle_objective_started");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("plaza_battle_objective_started", "plaza_battle_intro_artillery_objective_start"));
	if(function_5b49d38c(level.var_e651620c))
	{
		namespace_d0ef8521::function_50ccee8d("cp_level_zurich_enter_hq_awaiting_obj");
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_enter_hq_destroy_aspc_obj", level.var_e651620c);
		level.var_e651620c waittill("hash_128f8789");
		namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_destroy_aspc_obj");
		namespace_d0ef8521::function_48f26766("cp_level_zurich_enter_hq_awaiting_obj");
	}
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_cleared");
	wait(0.05);
	namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_awaiting_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_enter_hq_hack_obj");
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_hq_entrance_door_hacked");
	namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_hack_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_enter_hq_awaiting_obj");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("plaza_battle_kane_enter_ready", "blast_doors_opened"));
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_enter_hq_obj");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("plaza_battle_hq_enter_gatherpoint"));
	namespace_4dbf3ae3::function_1ab5ebec("plaza_battle_enter_hq_gathertrig", undefined, level.var_3d556bcd);
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
	namespace_d0ef8521::function_31cd1834("cp_level_zurich_enter_hq_obj");
}

/*
	Name: function_3dc6a02c
	Namespace: namespace_ca56958
	Checksum: 0x9085DBDC
	Offset: 0x3AA8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_3dc6a02c(var_b04bc952)
{
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_enter_hq_awaiting_obj");
	namespace_d0ef8521::function_74d6b22f(var_b04bc952, self);
	self waittill("hash_128f8789");
	namespace_d0ef8521::function_31cd1834(var_b04bc952);
	namespace_d0ef8521::function_48f26766("cp_level_zurich_enter_hq_awaiting_obj");
}

/*
	Name: function_87ebab3e
	Namespace: namespace_ca56958
	Checksum: 0xCE2B67D8
	Offset: 0x3B28
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_87ebab3e(var_c77d2837)
{
	level endon("hash_1fc32e88");
	var_c77d2837["plaza_battle_intro_guy"] endon("hash_128f8789");
	var_7b7786bb = namespace_14b42b8a::function_7922262b("plaza_battle_intro_sitrep_trig_spot");
	var_c77d2837["plaza_battle_intro_guy"].var_ca3202d["bc"] = 0;
	var_c77d2837["plaza_battle_intro_guy"] namespace_6f7b2095::function_54bdb053();
	var_9de10fe3 = function_b4cb3503("plaza_battle_intro_guy_node", "targetname");
	var_c77d2837["plaza_battle_intro_guy"] function_169cc712(var_9de10fe3);
	var_af96fbd4 = function_9b7fda5e("trigger_radius", var_7b7786bb.var_722885f3, 0, 2292.3, 128);
	var_af96fbd4.var_ff1f6868 = "plaza_battle";
	var_af96fbd4 waittill("hash_4dbf3ae3");
	var_af96fbd4 function_dc8c8404();
	namespace_cc27597::function_8f9f34e0("cin_zur_04_01_ext_vign_lockdown", &function_da51418e, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_04_01_ext_vign_lockdown", &function_7c1c218, "done");
	level thread namespace_cc27597::function_43718187("cin_zur_04_01_ext_vign_lockdown");
}

/*
	Name: function_da51418e
	Namespace: namespace_ca56958
	Checksum: 0x14C2F05
	Offset: 0x3D18
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_da51418e(var_c77d2837)
{
	var_c77d2837["plaza_battle_intro_guy"] waittill("hash_499164c7");
	level namespace_71b8dba1::function_13b3b16a("plyr_we_ll_see_about_that_0");
	level namespace_ad23e503::function_74d6b22f("plaza_battle_intro_artillery_objective_start");
}

/*
	Name: function_7c1c218
	Namespace: namespace_ca56958
	Checksum: 0x7BEA0002
	Offset: 0x3D88
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_7c1c218(var_c77d2837)
{
	level endon("hash_1fc32e88");
	var_c77d2837["plaza_battle_intro_guy"] endon("hash_128f8789");
	var_c77d2837["plaza_battle_intro_guy"].var_ca3202d["bc"] = 1;
	level.var_e651620c namespace_82b91a51::function_5b7e3888("trophy_system_disabled", "trophy_system_destroyed", "death");
	var_c77d2837["plaza_battle_intro_guy"] namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_5e886797
	Namespace: namespace_ca56958
	Checksum: 0xD3AD7A48
	Offset: 0x3E38
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_5e886797()
{
	level namespace_ad23e503::function_1ab5ebec("blast_doors_opened");
	level namespace_71b8dba1::function_13b3b16a("plyr_you_still_with_me_k_0", 1);
	level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_i_m_still_with_you_0", 1);
}

/*
	Name: function_d9c927f6
	Namespace: namespace_ca56958
	Checksum: 0x6300813D
	Offset: 0x3EB0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_d9c927f6()
{
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_hunter_destroyed");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_don_t_know_if_you_1", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_it_s_not_too_late_to_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_give_yourself_up_and_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_know_me_you_can_0", 1);
}

/*
	Name: function_e0828083
	Namespace: namespace_ca56958
	Checksum: 0x515D1086
	Offset: 0x3F60
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e0828083()
{
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_intro_reached");
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_hunter_destroyed");
	level namespace_ad23e503::function_74d6b22f("plaza_battle_kane_enter_ready");
}

/*
	Name: function_c635bfa2
	Namespace: namespace_ca56958
	Checksum: 0xF589D884
	Offset: 0x3FE8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c635bfa2()
{
	self waittill("hash_128f8789");
}

/*
	Name: function_9b61634f
	Namespace: namespace_ca56958
	Checksum: 0x90D87D07
	Offset: 0x4000
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_9b61634f()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_intro_artillery_in_position");
}

/*
	Name: function_d0b419ee
	Namespace: namespace_ca56958
	Checksum: 0xFFDC218E
	Offset: 0x4038
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_d0b419ee()
{
	self waittill("hash_128f8789");
}

/*
	Name: function_c89b08c9
	Namespace: namespace_ca56958
	Checksum: 0xA7D68852
	Offset: 0x4050
	Size: 0x203
	Parameters: 1
	Flags: None
*/
function function_c89b08c9(var_9c1a7bea)
{
	self endon("hash_128f8789");
	if(!isdefined(var_9c1a7bea))
	{
		var_9c1a7bea = function_8f8fb3b0(self.var_b07228b6, "targetname");
	}
	if(!function_6e2770d8(var_9c1a7bea))
	{
		var_9c1a7bea = function_84970cc4(var_9c1a7bea);
	}
	var_3c54858a = namespace_84970cc4::function_47d18840(var_9c1a7bea);
	self namespace_72ee5da4::function_81b6f1ac();
	self namespace_d84e54db::function_c9e45d52(1);
	self function_80765127();
	if(self.var_70182c90 === "off")
	{
		return;
	}
	self function_76aa5b30(level.var_3d556bcd, 1);
	if(isdefined(self.var_8202763a))
	{
		self function_333fd8f0(self.var_8202763a);
	}
	self thread function_f8f7624b();
	self namespace_96fa87af::function_edb3a94e(var_3c54858a);
	self function_8dafb866();
	self namespace_72ee5da4::function_efe9815e();
	if(self.var_fd67e920 === "wasp")
	{
		self function_68e4ea91();
	}
	self namespace_d84e54db::function_c9e45d52(0);
	if(self.var_fd67e920 === "hunter")
	{
		self function_6c61fe9e();
	}
}

/*
	Name: function_29fa5d37
	Namespace: namespace_ca56958
	Checksum: 0x24647AC1
	Offset: 0x4260
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_29fa5d37()
{
	level.var_e651620c = self;
	/#
		if(function_29e06050(level.var_2395e945[0]))
		{
			self.var_3a90f16b = 1;
		}
	#/
	self function_76aa5b30(level.var_3d556bcd, 1);
	self namespace_855113f3::function_35209d64();
	self thread function_9200bc02();
	self function_e1159e2b();
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_74d6b22f("plaza_battle_intro_artillery_destroyed");
	level namespace_ad23e503::function_74d6b22f("plaza_battle_intro_artillery_in_position");
}

/*
	Name: function_2b6c19a4
	Namespace: namespace_ca56958
	Checksum: 0xE1084110
	Offset: 0x4368
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_2b6c19a4()
{
	self endon("hash_128f8789");
	if(level namespace_ad23e503::function_7922262b("plaza_battle_intro_artillery_destroyed") && !level namespace_ad23e503::function_7922262b("plaza_battle_hunter_destroyed"))
	{
		self namespace_82b91a51::function_958c7633();
	}
}

/*
	Name: function_adfa2b54
	Namespace: namespace_ca56958
	Checksum: 0xEC55592F
	Offset: 0x43D8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_adfa2b54()
{
	if(!level namespace_ad23e503::function_7922262b("plaza_battle_train_exit_reached"))
	{
		self namespace_82b91a51::function_958c7633();
		level namespace_ad23e503::function_1ab5ebec("plaza_battle_train_exit_reached");
		self namespace_82b91a51::function_4b741fdc();
	}
}

/*
	Name: function_1dbc4cbb
	Namespace: namespace_ca56958
	Checksum: 0xAACD3E1D
	Offset: 0x4458
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_1dbc4cbb()
{
	self.var_dc29a320 = &function_3b05fc1b;
	if(!isdefined(self.var_db7bb468))
	{
		return;
	}
	self thread function_9683c997();
	if(function_5b49d38c(self))
	{
		self function_7f39a78b();
	}
}

/*
	Name: function_91ec82e3
	Namespace: namespace_ca56958
	Checksum: 0xE610020A
	Offset: 0x44D0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_91ec82e3()
{
	self waittill("hash_128f8789");
	var_e936de8b = namespace_2f06d687::function_289e6fd1(self.var_3d2183f2);
	namespace_84970cc4::function_eaab05dc(var_e936de8b, &function_155239af);
}

/*
	Name: function_155239af
	Namespace: namespace_ca56958
	Checksum: 0xCB146E2C
	Offset: 0x4538
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_155239af()
{
	var_1ccab1f6 = self.var_3a90f16b;
	switch(level.var_2395e945.size)
	{
		case 1:
		{
			var_1ccab1f6 = function_b6b79a0(self.var_3a90f16b / 10);
			break;
		}
		case 2:
		{
			var_1ccab1f6 = function_b6b79a0(self.var_3a90f16b / 4);
			break;
		}
		case default:
		{
			return;
		}
	}
	if(var_1ccab1f6 > 0 && var_1ccab1f6 < self.var_3a90f16b)
	{
		self.var_3a90f16b = var_1ccab1f6;
	}
}

/*
	Name: function_9683c997
	Namespace: namespace_ca56958
	Checksum: 0xC99B12E0
	Offset: 0x4610
	Size: 0x5B3
	Parameters: 0
	Flags: None
*/
function function_9683c997()
{
	var_9b54f311 = self.var_db7bb468;
	var_e26726e5 = function_6ada35ba(var_9b54f311 + "_top", "targetname");
	var_53fda872 = function_6ada35ba(var_9b54f311 + "_mid", "targetname");
	var_3b8a22ab = function_6ada35ba(var_9b54f311 + "_bot", "targetname");
	if(!isdefined(var_e26726e5) || !isdefined(var_53fda872) || !isdefined(var_3b8a22ab))
	{
		return;
	}
	/#
		function_58f8da89(var_e26726e5);
	#/
	/#
		function_58f8da89(var_53fda872);
	#/
	/#
		function_58f8da89(var_3b8a22ab);
	#/
	var_496b7d52 = function_6ada35ba(var_9b54f311 + "_oob_trig", "targetname");
	if(isdefined(var_496b7d52))
	{
		var_496b7d52 function_dc8c8404();
	}
	var_e26726e5 endon("hash_128f8789");
	var_53fda872 endon("hash_128f8789");
	var_3b8a22ab endon("hash_128f8789");
	level namespace_ad23e503::function_9d134160(var_9b54f311 + "_ready");
	function_558d9f8d(var_e26726e5, var_53fda872, var_3b8a22ab);
	level namespace_ad23e503::function_74d6b22f(var_9b54f311 + "_opened");
	var_5e4ad50b = 1;
	do
	{
		wait(2);
		var_e3b635fb = function_b8494651("axis", "allies");
		var_c77d2837 = function_525ae497(var_e3b635fb, level.var_9b1393e7, 0, 0);
		var_c77d2837 = function_57efbe1(var_c77d2837, var_e26726e5.var_722885f3, 1);
		foreach(var_4c9c8550 in var_c77d2837)
		{
			if(function_316422d1(var_4c9c8550.var_722885f3, var_e26726e5.var_722885f3) > 512 * 512)
			{
				var_5e4ad50b = 0;
			}
		}
	}
	while(!var_5e4ad50b);
	var_c0b90cf4 = function_99201f25("plaza_battle_siegebot", "script_noteworthy");
	foreach(var_2221060d in var_c0b90cf4)
	{
		if(namespace_96fa87af::function_ed0c8cd8(var_2221060d))
		{
			if(function_316422d1(var_2221060d.var_722885f3, var_e26726e5.var_722885f3) <= 200 * 200)
			{
				var_2221060d function_dc8c8404();
			}
		}
	}
	function_558d9f8d(var_e26726e5, var_53fda872, var_3b8a22ab, -48, -24, 0.3, 0);
	var_496b7d52 = namespace_8e9083ff::function_3789d4db(var_9b54f311, "trigger_box", 512, 512, 512);
	var_496b7d52.var_170527fb = var_9b54f311 + "_oob_trig";
	var_496b7d52.var_ff1f6868 = "plaza_battle";
	if(!isdefined(level.var_29d8c635))
	{
		level.var_29d8c635 = [];
	}
	else if(!function_6e2770d8(level.var_29d8c635))
	{
		level.var_29d8c635 = function_84970cc4(level.var_29d8c635);
	}
	level.var_29d8c635[level.var_29d8c635.size] = var_496b7d52;
	var_496b7d52 thread namespace_6ece97b7::function_8bf6514d();
	level namespace_ad23e503::function_74d6b22f(var_9b54f311 + "_ready");
}

/*
	Name: function_558d9f8d
	Namespace: namespace_ca56958
	Checksum: 0xBFD78EEA
	Offset: 0x4BD0
	Size: 0x1CB
	Parameters: 7
	Flags: None
*/
function function_558d9f8d(var_e26726e5, var_53fda872, var_3b8a22ab, var_ccd4343c, var_cc2fbac4, var_78962fff, var_ee7dbbc9)
{
	if(!isdefined(var_ccd4343c))
	{
		var_ccd4343c = 48;
	}
	if(!isdefined(var_cc2fbac4))
	{
		var_cc2fbac4 = 24;
	}
	if(!isdefined(var_78962fff))
	{
		var_78962fff = 0.6;
	}
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0.1;
	}
	var_e26726e5 function_921a1574("evt_siegebot_door_open");
	var_3b8a22ab function_8bdea13c(var_ccd4343c, var_78962fff);
	var_3b8a22ab waittill("hash_a21db68a");
	var_3b8a22ab function_37f7858a(var_53fda872);
	wait(var_ee7dbbc9);
	var_53fda872 function_8bdea13c(var_ccd4343c, var_78962fff);
	var_53fda872 waittill("hash_a21db68a");
	var_53fda872 function_37f7858a(var_e26726e5);
	wait(var_ee7dbbc9);
	var_e26726e5 function_8bdea13c(var_ccd4343c + var_cc2fbac4, var_78962fff);
	var_e26726e5 waittill("hash_a21db68a");
	var_e26726e5 function_52fddbd0();
	var_53fda872 function_52fddbd0();
	var_3b8a22ab function_52fddbd0();
}

/*
	Name: function_8fdd138
	Namespace: namespace_ca56958
	Checksum: 0x508A6947
	Offset: 0x4DA8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_8fdd138()
{
	level.var_a06b011 = self;
	self.var_5330ac94 = namespace_82b91a51::function_b9fd52a4("tag_origin", self function_d48f2ab3("tag_target_upper"), self function_cd1d99bd("tag_target_upper"));
	self.var_5330ac94 function_37f7858a(self, "tag_target_upper", VectorScale((0, 0, 1), 256));
	/#
		if(function_29e06050(level.var_2395e945[0]))
		{
			self.var_3a90f16b = 1;
		}
	#/
	self thread function_9200bc02();
	self namespace_855113f3::function_35209d64();
	self function_695f38a7();
	self.var_5330ac94 function_dc8c8404();
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_74d6b22f("plaza_boss_dead");
}

/*
	Name: function_9200bc02
	Namespace: namespace_ca56958
	Checksum: 0x3D68DAB7
	Offset: 0x4F08
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_9200bc02()
{
	self waittill("hash_128f8789");
	var_2c3a4ffd = namespace_82b91a51::function_b9fd52a4("tag_origin", self function_d48f2ab3("tag_driver"), self function_cd1d99bd("tag_driver"));
	var_2c3a4ffd namespace_71e9cb84::function_74d6b22f("quadtank_raven_explosion", 1);
	wait(10);
	var_2c3a4ffd function_dc8c8404();
}

/*
	Name: function_f474e246
	Namespace: namespace_ca56958
	Checksum: 0xD1830023
	Offset: 0x4FC0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f474e246()
{
	if(isdefined(self.var_b07228b6))
	{
		self function_4ac5ac5a();
	}
}

/*
	Name: function_4ac5ac5a
	Namespace: namespace_ca56958
	Checksum: 0xE0E0EED3
	Offset: 0x4FF0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_4ac5ac5a()
{
	self endon("hash_128f8789");
	for(var_1cbcb46d = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname"); isdefined(var_1cbcb46d);  = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname"))
	{
		level namespace_cc27597::function_43718187(var_1cbcb46d.var_170527fb, "targetname", self);
		if(!isdefined(var_1cbcb46d.var_b07228b6))
		{
			break;
		}
	}
}

/*
	Name: function_b8380f70
	Namespace: namespace_ca56958
	Checksum: 0xB366C5F8
	Offset: 0x50B0
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_b8380f70()
{
	self.var_3a90f16b = 100000;
	self.var_3e94206a = "axis";
	self.var_7a04481c = namespace_8e9083ff::function_411dc61b(4000, 1000);
	self.var_90937e6 = namespace_14b42b8a::function_7faf4c39("plaza_battle_vtol_crash_point");
	var_e62c1231 = function_9b7fda5e("trigger_radius", self.var_722885f3 + VectorScale((0, 0, -1), 128), 0, 850, 400);
	var_e62c1231 function_8f279593();
	var_e62c1231 function_37f7858a(self);
	if(!isdefined(level.var_29d8c635))
	{
		level.var_29d8c635 = [];
	}
	else if(!function_6e2770d8(level.var_29d8c635))
	{
		level.var_29d8c635 = function_84970cc4(level.var_29d8c635);
	}
	level.var_29d8c635[level.var_29d8c635.size] = var_e62c1231;
	var_e62c1231 thread namespace_6ece97b7::function_8bf6514d();
	self thread namespace_96fa87af::function_edb3a94e(function_243bb261(self.var_b07228b6, "targetname"));
	self function_fbbb5f09();
	var_e62c1231 function_dc8c8404();
}

/*
	Name: function_fbbb5f09
	Namespace: namespace_ca56958
	Checksum: 0xE795E1FA
	Offset: 0x5288
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_fbbb5f09()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_4a1261ef
	Namespace: namespace_ca56958
	Checksum: 0x7A9CF46C
	Offset: 0x5488
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_4a1261ef()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_82b91a51::function_958c7633(self);
	level namespace_ad23e503::function_43ac000b(function_84970cc4("plaza_battle_intro_battle_start", "plaza_battle_train_exit_reached"));
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_82b91a51::function_4b741fdc(self);
	level namespace_ad23e503::function_d266a8b4(5, "plaza_battle_intro_reached");
	self namespace_d84e54db::function_ceb883cd("phalanx", 0);
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
}

/*
	Name: function_5268b119
	Namespace: namespace_ca56958
	Checksum: 0xB635D1B1
	Offset: 0x55D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_5268b119()
{
	self namespace_96fa87af::function_fdf99c07();
}

/*
	Name: function_9590c294
	Namespace: namespace_ca56958
	Checksum: 0xDBE7EA94
	Offset: 0x55F8
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_9590c294(var_74cd64bc)
{
	var_cdbd94b1 = "plaza_battle_front_left_phalanx";
	var_7680f4ba = "plaza_battle_front_right_phalanx";
	if(var_74cd64bc)
	{
		var_cdbd94b1 = "plaza_battle_front_left_phalanx_skipto";
		var_7680f4ba = "plaza_battle_front_right_phalanx_skipto";
	}
	namespace_d5067552::function_41cd3a68(25);
	level thread function_a9380c64(var_cdbd94b1);
	level thread function_68fbe95d(var_7680f4ba);
	level.var_3d556bcd thread function_9d42d43b();
	function_e87739b();
	function_9c800460();
	function_c2827ec9();
	function_808ee2d6();
	function_a6915d3f();
	namespace_d5067552::function_41cd3a68(32);
}

/*
	Name: function_e87739b
	Namespace: namespace_ca56958
	Checksum: 0x71D9FA77
	Offset: 0x5720
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_e87739b()
{
	level.var_7ebc8836 = 0;
	namespace_4dbf3ae3::function_42e87952("plaza_battle_intro_allies_colortrig");
	var_bb164c73 = function_99201f25("plaza_battle_siegebot_back_spawn_trig", "targetname");
	foreach(var_e537a693 in var_bb164c73)
	{
		namespace_4dbf3ae3::function_98be67bd(var_e537a693, undefined, &function_55a7a759, var_bb164c73);
	}
	namespace_4dbf3ae3::function_1ab5ebec("plaza_battle_spawn_trig", undefined, undefined, 0);
	/#
		function_d52b076d("Dev Block strings are not supported");
	#/
	function_8f5c1780();
	namespace_d5067552::function_bae40a28("plaza_battle_artillery_spawn_manager");
	var_ce8ca61d = namespace_8e9083ff::function_b0dd51f4("plaza_battle_intro_back_enemy");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("plaza_battle_reached", "plaza_battle_train_exit_reached"));
	var_edc6e0e1 = namespace_2f06d687::function_7387a40a("plaza_vtol_back_nocrew", &function_b8380f70);
	namespace_4dbf3ae3::function_42e87952("plaza_battle_intro_axis_colortrig");
	namespace_8e9083ff::function_2e1830eb("plaza_battle_robot_spawn_station_left", "plaza_battle");
	namespace_8e9083ff::function_2e1830eb("plaza_battle_robot_spawn_station_right", "plaza_battle");
	namespace_8e9083ff::function_2e1830eb("plaza_battle_robot_spawn_station_left2", "plaza_battle");
	namespace_8e9083ff::function_2e1830eb("plaza_battle_robot_spawn_station_right2", "plaza_battle");
	level thread function_4ef26b6("plaza_battle_room_robot_spawn_vign_right", "spawn_right_room_charging_robot");
	level thread function_4ef26b6("plaza_battle_room_robot_spawn_vign_left", "spawn_left_room_charging_robot");
}

/*
	Name: function_4ef26b6
	Namespace: namespace_ca56958
	Checksum: 0x7BCB31B0
	Offset: 0x5A00
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_4ef26b6(var_294306eb, var_db803bcf)
{
	level endon("hash_1fc32e88");
	namespace_4dbf3ae3::function_1ab5ebec(var_db803bcf, "script_noteworthy");
	var_ed98a51f = namespace_2f06d687::function_7387a40a("sec_exploder", undefined, undefined, undefined, undefined, undefined, undefined, 1);
	var_c55dcd82 = var_ed98a51f function_501eb072();
	var_ed98a51f endon("hash_128f8789");
	level namespace_cc27597::function_c35e6aab(var_294306eb, "targetname", var_ed98a51f);
	while(!var_ed98a51f namespace_8e9083ff::function_6f990596(406))
	{
		wait(0.5);
	}
	level namespace_cc27597::function_43718187(var_294306eb, "targetname", var_ed98a51f);
}

/*
	Name: function_55a7a759
	Namespace: namespace_ca56958
	Checksum: 0x2CC26FA0
	Offset: 0x5B20
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_55a7a759(var_bb164c73)
{
	wait(2);
	foreach(var_e537a693 in var_bb164c73)
	{
		if(!isdefined(var_e537a693))
		{
			break;
		}
		var_e537a693 namespace_4dbf3ae3::function_42e87952();
	}
}

/*
	Name: function_9c800460
	Namespace: namespace_ca56958
	Checksum: 0x56B863C2
	Offset: 0x5BD0
	Size: 0x2C3
	Parameters: 0
	Flags: None
*/
function function_9c800460()
{
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_intro_artillery_in_position");
	/#
		function_d52b076d("Dev Block strings are not supported");
	#/
	namespace_d5067552::function_bae40a28("plaza_battle_robot_left_spawn_manager");
	namespace_d5067552::function_bae40a28("plaza_battle_robot_right_spawn_manager");
	namespace_dabbe128::function_87f30e90(&function_87f30e90);
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_intro_artillery_destroyed");
	var_933bbc2c = namespace_2f06d687::function_289e6fd1("plaza_battle_intro_allies");
	namespace_84970cc4::function_966ecb29(var_933bbc2c, &namespace_82b91a51::function_958c7633);
	namespace_4dbf3ae3::function_42e87952("plaza_battle_intro_steps_allies_colortrig");
	namespace_4dbf3ae3::function_42e87952("plaza_battle_intro_steps_axis_colortrig");
	namespace_d5067552::function_2992720d("plaza_battle_robot_intro_left_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_robot_intro_right_spawn_manager", 1);
	namespace_d5067552::function_41cd3a68(15);
	var_64e85e6d = function_24e95264("axis", "robot");
	foreach(var_d84e54db in var_64e85e6d)
	{
		var_d84e54db.var_44a68a57 = &namespace_8e9083ff::function_8ac3f026;
	}
	var_edc6e0e1 = namespace_2f06d687::function_7387a40a("plaza_vtol_back", &function_b8380f70);
	level thread function_a30a9296();
	level namespace_ad23e503::function_74d6b22f("plaza_battle_vtol_drop_crew_completed");
	var_edc6e0e1 namespace_82b91a51::function_5b7e3888("reached_end_node", "death");
}

/*
	Name: function_a30a9296
	Namespace: namespace_ca56958
	Checksum: 0x3040C3CF
	Offset: 0x5EA0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a30a9296()
{
	level waittill("hash_594191c4");
	namespace_2f06d687::function_45679edd("plaza_vtol_riders", 3);
	namespace_d5067552::function_41cd3a68(20);
}

/*
	Name: function_c2827ec9
	Namespace: namespace_ca56958
	Checksum: 0x6B8EBB60
	Offset: 0x5EF0
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_c2827ec9()
{
	/#
		function_d52b076d("Dev Block strings are not supported");
	#/
	level thread function_5ea42950();
	namespace_4dbf3ae3::function_42e87952("plaza_battle_center_allies_colortrig");
	namespace_4dbf3ae3::function_42e87952("plaza_battle_center_axis_colortrig");
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_hunter_destroyed");
	level.var_7ebc8836 = 1;
	namespace_4dbf3ae3::function_42e87952("plaza_battle_center_hunter_colortrig");
	var_933bbc2c = namespace_2f06d687::function_289e6fd1("plaza_battle_intro_allies");
	namespace_84970cc4::function_966ecb29(var_933bbc2c, &namespace_82b91a51::function_4b741fdc);
	var_b1df9263 = namespace_8e9083ff::function_411dc61b(1.5, -0.5);
	var_1c97712d = namespace_8e9083ff::function_411dc61b(2, -0.5);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_left", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_right", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_left2", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_right2", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level namespace_ad23e503::function_43ac000b(function_84970cc4("plaza_battle_blast_door_left" + "_opened", "plaza_battle_blast_door_right" + "_opened"));
	namespace_d5067552::function_54bdb053("plaza_battle_robot_left_spawn_manager");
	namespace_d5067552::function_54bdb053("plaza_battle_robot_right_spawn_manager");
	namespace_d5067552::function_bae40a28("plaza_battle_robot_left_exit_spawn_manager");
	namespace_d5067552::function_bae40a28("plaza_battle_robot_right_exit_spawn_manager");
	namespace_4dbf3ae3::function_42e87952("plaza_battle_buildings_allies_colortrig");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("plaza_battle_blast_door_left" + "_opened", "plaza_battle_blast_door_right" + "_opened"));
	level thread function_68a21f36();
	function_781f3832();
	level.var_7ebc8836 = undefined;
	namespace_4dbf3ae3::function_42e87952("plaza_battle_boss_allies_colortrig");
	namespace_4dbf3ae3::function_42e87952("plaza_battle_boss_axis_colortrig");
}

/*
	Name: function_781f3832
	Namespace: namespace_ca56958
	Checksum: 0x4E309C04
	Offset: 0x6278
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_781f3832()
{
	wait(0.05);
	if(isdefined(10))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(10, "timeout");
	}
	namespace_2f06d687::function_45679edd("plaza_battle_back_siegebots", 1);
}

/*
	Name: function_68a21f36
	Namespace: namespace_ca56958
	Checksum: 0xF5EF173D
	Offset: 0x6308
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_68a21f36()
{
	namespace_d5067552::function_2992720d("plaza_battle_allies_left_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_allies_right_spawn_manager", 1);
	var_933bbc2c = namespace_2f06d687::function_289e6fd1("plaza_battle_intro_allies");
	foreach(var_d84e54db in var_933bbc2c)
	{
		self.var_44a68a57 = &namespace_8e9083ff::function_8ac3f026;
	}
	namespace_2f06d687::function_45679edd("plaza_battle_intro_allies", 6);
	function_781f3832();
	namespace_d5067552::function_bae40a28("plaza_battle_allies_left_center_spawn_manager");
	namespace_d5067552::function_bae40a28("plaza_battle_allies_right_center_spawn_manager");
}

/*
	Name: function_808ee2d6
	Namespace: namespace_ca56958
	Checksum: 0xAD363FA6
	Offset: 0x6458
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_808ee2d6()
{
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_cleared");
	/#
		function_d52b076d("Dev Block strings are not supported");
	#/
	namespace_8e9083ff::function_5b0d9c63("plaza_battle_robot_spawn_station_left");
	namespace_8e9083ff::function_5b0d9c63("plaza_battle_robot_spawn_station_right");
	namespace_8e9083ff::function_5b0d9c63("plaza_battle_robot_spawn_station_left2");
	namespace_8e9083ff::function_5b0d9c63("plaza_battle_robot_spawn_station_right2");
	namespace_d5067552::function_bae40a28("plaza_battle_robot_left_spawn_manager");
	namespace_d5067552::function_bae40a28("plaza_battle_robot_right_spawn_manager");
	namespace_d5067552::function_bae40a28("plaza_battle_robot_outro_left_spawn_manager");
	namespace_d5067552::function_bae40a28("plaza_battle_robot_outro_right_spawn_manager");
	level thread function_b727abb6();
	namespace_d5067552::function_2992720d("plaza_battle_robot_center_spawn_manager", 1);
}

/*
	Name: function_b727abb6
	Namespace: namespace_ca56958
	Checksum: 0x927D287F
	Offset: 0x65A0
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_b727abb6()
{
	level endon("hash_339fe39c");
	wait(9);
	level thread function_3363e7dd();
	wait(21);
	namespace_d5067552::function_41cd3a68(8);
	var_b1df9263 = namespace_8e9083ff::function_411dc61b(1, -0.2);
	var_1c97712d = namespace_8e9083ff::function_411dc61b(1.5, -0.2);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_left", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_right", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_left2", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_right2", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	wait(24);
	level thread function_7e5ba0bd("plaza_battle_blast_door_left");
	level thread function_7e5ba0bd("plaza_battle_blast_door_right");
}

/*
	Name: function_7e5ba0bd
	Namespace: namespace_ca56958
	Checksum: 0xFEE4FB3A
	Offset: 0x6758
	Size: 0x197
	Parameters: 1
	Flags: None
*/
function function_7e5ba0bd(var_9b54f311)
{
	level endon("hash_339fe39c");
	while(1)
	{
		if(!level namespace_ad23e503::function_7922262b(var_9b54f311 + "_ready"))
		{
			level namespace_ad23e503::function_d3de6822(var_9b54f311 + "_ready");
		}
		var_edad4a81 = function_99201f25(var_9b54f311, "script_string");
		foreach(var_c195d305 in var_edad4a81)
		{
			if(function_eddad593(var_c195d305))
			{
				var_20331917 = var_c195d305;
			}
		}
		var_51a7831a = namespace_2f06d687::function_7387a40a(var_20331917, undefined, undefined, undefined, undefined, undefined, undefined, 1);
		if(function_5b49d38c(var_51a7831a))
		{
			var_51a7831a waittill("hash_128f8789");
		}
		level namespace_ad23e503::function_1ab5ebec(var_9b54f311 + "_ready");
	}
}

/*
	Name: function_3363e7dd
	Namespace: namespace_ca56958
	Checksum: 0xCCDBB00E
	Offset: 0x68F8
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_3363e7dd()
{
	level endon("hash_339fe39c");
	var_8498e7d1 = function_84970cc4("plaza_vtol_front", "plaza_vtol_back");
	var_edc6e0e1 = namespace_2f06d687::function_7387a40a("plaza_vtol_front", &function_b8380f70);
	while(1)
	{
		var_edc6e0e1 waittill("hash_128f8789");
		wait(function_72a94f05(8, 10));
		var_fe0af0a5 = function_243bb261("plaza_battle_hunter_combat_spline", "targetname");
		var_782205f8 = namespace_2f06d687::function_7387a40a("zurich_ambient_hunter", &function_c89b08c9, var_fe0af0a5);
		var_782205f8 waittill("hash_128f8789");
		wait(function_72a94f05(8, 10));
		var_edc6e0e1 = namespace_2f06d687::function_7387a40a(namespace_84970cc4::function_47d18840(var_8498e7d1), &function_b8380f70);
	}
}

/*
	Name: function_a6915d3f
	Namespace: namespace_ca56958
	Checksum: 0xF37FFC7B
	Offset: 0x6A78
	Size: 0x2C3
	Parameters: 0
	Flags: None
*/
function function_a6915d3f()
{
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_hq_entrance_door_hacked");
	/#
		function_d52b076d("Dev Block strings are not supported");
	#/
	level namespace_ad23e503::function_1ab5ebec("blast_doors_opened");
	namespace_d5067552::function_2992720d("plaza_battle_artillery_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_allies_back_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_allies_middle_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_siegebot_right_middle_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_siegebot_left_middle_spawn_manager", 1);
	var_edc6e0e1 = namespace_2f06d687::function_7387a40a("plaza_vtol_back", &function_b8380f70);
	namespace_4dbf3ae3::function_42e87952("plaza_battle_facility_entrance_allies_colortrig");
	namespace_4dbf3ae3::function_42e87952("plaza_battle_facility_entrance_axis_colortrig");
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_exit_cleared");
	namespace_d5067552::function_2992720d("plaza_battle_allies_left_center_spawn_manager");
	namespace_d5067552::function_2992720d("plaza_battle_allies_right_center_spawn_manager");
	namespace_d5067552::function_2992720d("plaza_battle_robot_left_exit_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_robot_right_exit_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_robot_outro_left_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_robot_outro_right_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_boss_wasp_spawn_manager");
	namespace_d5067552::function_2992720d("plaza_battle_boss_wasp_rocket_spawn_manager");
	namespace_d5067552::function_2992720d("plaza_battle_robot_left_spawn_manager", 1);
	namespace_d5067552::function_2992720d("plaza_battle_robot_right_spawn_manager", 1);
	namespace_d5067552::function_41cd3a68(32);
}

/*
	Name: function_e111315c
	Namespace: namespace_ca56958
	Checksum: 0xF0B436
	Offset: 0x6D48
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e111315c()
{
	var_12e44341 = function_99201f25("plaza_battle_kane_choose_trig", "targetname");
	namespace_84970cc4::function_966ecb29(var_12e44341, &function_f058728a, self);
}

/*
	Name: function_f058728a
	Namespace: namespace_ca56958
	Checksum: 0x8E99D0E5
	Offset: 0x6DA8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_f058728a(var_3d556bcd)
{
	self endon("hash_128f8789");
	level endon("hash_ef7fbb43");
	self waittill("hash_4dbf3ae3");
	var_3d556bcd namespace_6f7b2095::function_bae40a28();
	var_3d556bcd namespace_6f7b2095::function_1b497663(self.var_db7bb468);
	var_12e44341 = function_99201f25("plaza_battle_kane_choose_trig", "targetname");
	namespace_84970cc4::function_7e64f710(var_12e44341);
}

/*
	Name: function_9d42d43b
	Namespace: namespace_ca56958
	Checksum: 0x285CB26D
	Offset: 0x6E58
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_9d42d43b()
{
	self endon("hash_128f8789");
	self function_b4aecd8e(1);
	self thread namespace_8e9083ff::function_2a6e38e();
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_approach_reached");
	self thread namespace_8e9083ff::function_d0103e8d();
	self namespace_d84e54db::function_b4f5e3b9(0);
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_intro_artillery_destroyed");
	self function_b4aecd8e(0);
	self function_e111315c();
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_cleared");
	level.var_3d556bcd namespace_6f7b2095::function_54bdb053();
	level.var_3d556bcd function_169cc712(function_b4cb3503("plaza_battle_kane_door_node", "targetname"), 1);
	level namespace_ad23e503::function_1ab5ebec("blast_doors_opened");
	self namespace_8e9083ff::function_121ba443();
	self function_169cc712(function_b4cb3503("plaza_battle_kane_lobby_node", "targetname"), 1);
}

/*
	Name: function_17645f9b
	Namespace: namespace_ca56958
	Checksum: 0xAD2065E1
	Offset: 0x7028
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_17645f9b()
{
	self endon("hash_128f8789");
	level endon("hash_ef7fbb43");
	var_c048597 = function_fe0cfd2e("plaza_battle_kane_intro_node", "targetname");
	while(1)
	{
		var_6bfe1586 = function_e7bdc1a1(self.var_722885f3, level.var_9b1393e7);
		var_ebdbffd3 = function_72a94f05(1.2, 2.1);
		if(!isdefined(var_6bfe1586))
		{
			wait(var_ebdbffd3);
			continue;
		}
		var_d031f937 = function_e7bdc1a1(var_6bfe1586.var_722885f3, var_c048597);
		if(!isdefined(var_d031f937))
		{
			wait(var_ebdbffd3);
			continue;
		}
		var_2b29ab06 = function_cb3d1c9b(var_d031f937.var_722885f3, self.var_722885f3) > 128 * 128;
		var_7bc86f48 = function_cb3d1c9b(var_6bfe1586.var_722885f3, self.var_722885f3) > 190 * 190;
		if(!var_2b29ab06 && !var_7bc86f48)
		{
			wait(var_ebdbffd3);
			continue;
		}
		if(!isdefined(function_9290c708(var_d031f937)))
		{
			self function_169cc712(var_d031f937, 0, 128);
			self waittill("hash_41d1aaf0");
		}
		wait(var_ebdbffd3);
	}
}

/*
	Name: function_aee0aa5d
	Namespace: namespace_ca56958
	Checksum: 0x817EB1F7
	Offset: 0x7250
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_aee0aa5d()
{
	if(level.var_2395e945.size > 2)
	{
		var_439371d = function_d35375b8("2_player_max", "script_string");
		namespace_84970cc4::function_eaab05dc(var_439371d, &function_dc8c8404);
		return;
	}
	var_439371d = function_d35375b8("3_player_min", "script_string");
	namespace_84970cc4::function_eaab05dc(var_439371d, &function_dc8c8404);
}

/*
	Name: function_a9380c64
	Namespace: namespace_ca56958
	Checksum: 0x6FC3807B
	Offset: 0x7308
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_a9380c64(var_cdbd94b1)
{
	level endon("hash_1fc32e88");
	level thread namespace_8e9083ff::function_e7fdcb95(var_cdbd94b1, "phanalx_wedge", 3, 1, 6, "plaza_battle_train_exit_reached", 1);
	level namespace_ad23e503::function_d266a8b4(10, "plaza_battle_artillery_intro_stop");
	namespace_2f06d687::function_45679edd("robot_phalanx", 4);
	level namespace_ad23e503::function_74d6b22f("plaza_battle_front_defenses_broken");
	namespace_d5067552::function_bae40a28("plaza_battle_robot_intro_left_spawn_manager");
}

/*
	Name: function_68fbe95d
	Namespace: namespace_ca56958
	Checksum: 0xDC06108F
	Offset: 0x73D8
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_68fbe95d(var_7680f4ba)
{
	level endon("hash_1fc32e88");
	level thread namespace_8e9083ff::function_e7fdcb95(var_7680f4ba, "phanalx_wedge", 3, 1, 7, "plaza_battle_train_exit_reached", 1);
	level namespace_ad23e503::function_d266a8b4(10, "plaza_battle_artillery_intro_stop");
	namespace_2f06d687::function_45679edd("robot_phalanx", 4);
	level namespace_ad23e503::function_74d6b22f("plaza_battle_front_defenses_broken");
	namespace_d5067552::function_bae40a28("plaza_battle_robot_intro_right_spawn_manager");
}

/*
	Name: function_695f38a7
	Namespace: namespace_ca56958
	Checksum: 0x2516C44E
	Offset: 0x74A8
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_695f38a7()
{
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_76aa5b30(level.var_3d556bcd, 1);
	self thread function_2686975a();
	self function_68cf1dc0();
	self thread function_d42cc4b0();
	self thread function_7d540ef1();
	self thread function_d1db5654();
	namespace_4dbf3ae3::function_1ab5ebec("plaza_battle_midpoint_trig", undefined, undefined, 0);
	if(!function_5b49d38c(self))
	{
		return;
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_hunter_destroyed");
	var_b3b33e02 = namespace_d5067552::function_423eae50("plaza_battle_boss_wasp_spawn_manager");
	var_8ba55d7b = namespace_d5067552::function_423eae50("plaza_battle_boss_wasp_spawn_manager");
	var_b3b33e02 = function_525ae497(var_b3b33e02, var_8ba55d7b, 0, 0);
	namespace_84970cc4::function_966ecb29(var_b3b33e02, &function_5a1e5a49);
	self thread function_3dc6a02c("cp_level_zurich_enter_hq_destroy_aspml_obj");
	if(function_5b49d38c(self))
	{
		self namespace_d84e54db::function_c9e45d52(0);
		self waittill("hash_128f8789");
	}
	var_b3b33e02 = namespace_d5067552::function_423eae50("plaza_battle_boss_wasp_spawn_manager");
	var_8ba55d7b = namespace_d5067552::function_423eae50("plaza_battle_boss_wasp_spawn_manager");
	var_b3b33e02 = function_525ae497(var_b3b33e02, var_8ba55d7b, 0, 0);
	namespace_84970cc4::function_966ecb29(var_b3b33e02, &function_c4b462a7);
}

/*
	Name: function_2686975a
	Namespace: namespace_ca56958
	Checksum: 0xF7708DC0
	Offset: 0x7760
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function function_2686975a()
{
	self endon("hash_128f8789");
	var_2ef061f7 = function_fe0cfd2e("plaza_battle_boss_patrol_node", "targetname");
	var_5576dc56 = undefined;
	while(1)
	{
		do
		{
			var_2ef061f7 = namespace_84970cc4::function_8332f7f6(var_2ef061f7);
			wait(0.05);
		}
		while(!var_2ef061f7[0] === var_5576dc56);
		foreach(var_f2c09364 in var_2ef061f7)
		{
			self function_169cc712(var_f2c09364.var_722885f3, 0, function_72a94f05(96, 196));
			self waittill("hash_48a3d97f");
			wait(function_72a94f05(6, 8));
		}
		var_5576dc56 = var_2ef061f7[var_2ef061f7.size - 1];
	}
}

/*
	Name: function_68cf1dc0
	Namespace: namespace_ca56958
	Checksum: 0x1DDEC30
	Offset: 0x78F8
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_68cf1dc0()
{
	level endon("hash_fbc32085");
	self endon("hash_128f8789");
	var_1534914d = [];
	var_e32e572f = namespace_14b42b8a::function_7faf4c39("plaza_battle_intro_boss_target_spots");
	foreach(var_1da6c387 in var_e32e572f)
	{
		var_1534914d[var_4bc288a0] = namespace_82b91a51::function_b9fd52a4("tag_origin", var_1da6c387.var_722885f3, var_1da6c387.var_6ab6f4fd);
		var_1534914d[var_4bc288a0].var_ff1f6868 = "plaza_battle";
		wait(0.05);
	}
	self function_3f3534a8(function_c4d5ec1f("quadtank_main_turret_rocketpods_javelin"));
	do
	{
		var_1534914d = namespace_84970cc4::function_8332f7f6(var_1534914d);
		foreach(var_377a9c22 in var_1534914d)
		{
			self function_3488d445(var_377a9c22);
			self function_90ad4ed1(0, var_377a9c22);
			wait(function_72a94f05(1, 1.4));
		}
	}
	while(!!level namespace_ad23e503::function_7922262b("plaza_battle_intro_artillery_destroyed"));
	level namespace_82b91a51::function_67520c6a(15, undefined, &namespace_84970cc4::function_7e64f710, var_1534914d);
}

/*
	Name: function_d42cc4b0
	Namespace: namespace_ca56958
	Checksum: 0x24168A2
	Offset: 0x7B88
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_d42cc4b0()
{
	self endon("hash_128f8789");
	while(1)
	{
		self namespace_d84e54db::function_b4f5e3b9(0);
		var_8b453fd2 = self namespace_82b91a51::function_9fcf3cd8(function_72a94f05(3, 5), "trophy_system_disabled", "trophy_system_destroyed", "damage");
		self namespace_d84e54db::function_b4f5e3b9(1);
		var_961d572f = function_41f575c3(level.var_9b1393e7);
		if(var_8b453fd2 == "timeout")
		{
			var_933bbc2c = function_b8494651("allies");
			var_961d572f = function_525ae497(var_961d572f, var_933bbc2c, 0, 0);
		}
		var_961d572f = namespace_84970cc4::function_8332f7f6(var_961d572f);
		self function_5aba74b(var_961d572f);
	}
}

/*
	Name: function_58e04ffd
	Namespace: namespace_ca56958
	Checksum: 0x7E4663CB
	Offset: 0x7CF0
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_58e04ffd()
{
	self endon("hash_128f8789");
	level.var_a06b011 endon("hash_128f8789");
	while(1)
	{
		self namespace_82b91a51::function_5b7e3888("trophy_system_disabled", "trophy_system_destroyed", "damage");
		var_961d572f = function_41f575c3(level.var_9b1393e7);
		var_961d572f = namespace_84970cc4::function_8332f7f6(var_961d572f);
		level.var_a06b011 function_5aba74b(var_961d572f);
	}
}

/*
	Name: function_5aba74b
	Namespace: namespace_ca56958
	Checksum: 0x44825C31
	Offset: 0x7DA8
	Size: 0x2AB
	Parameters: 1
	Flags: None
*/
function function_5aba74b(var_961d572f)
{
	self endon("hash_128f8789");
	self endon("hash_6530962c");
	self endon("hash_27175bcd");
	var_c817078c = 0;
	self function_3f3534a8(function_c4d5ec1f("quadtank_main_turret_rocketpods_javelin"));
	foreach(var_377a9c22 in var_961d572f)
	{
		if(function_5b49d38c(var_377a9c22) && !var_377a9c22 namespace_82b91a51::function_d3426abc())
		{
			var_31362a8b = (function_dc99997a(256 * -1, 256), function_dc99997a(256 * -1, 256), function_dc99997a(256 * -1, 256));
			var_a690d72c = var_377a9c22.var_722885f3 + var_31362a8b;
			var_746111be = namespace_82b91a51::function_b9fd52a4("tag_origin", var_a690d72c, var_377a9c22.var_6ab6f4fd);
			var_746111be.var_ff1f6868 = "plaza_battle";
			self function_3488d445(var_746111be);
			var_622504f0 = self function_90ad4ed1(0, var_746111be);
			var_622504f0 thread function_e15e7133(var_746111be);
			var_c817078c++;
			if(var_c817078c == 4)
			{
				break;
			}
			wait(function_72a94f05(1, 1.4));
		}
	}
	self function_62b52961();
}

/*
	Name: function_e15e7133
	Namespace: namespace_ca56958
	Checksum: 0x3DAB030F
	Offset: 0x8060
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_e15e7133(var_377a9c22)
{
	self waittill("hash_128f8789");
	var_377a9c22 function_dc8c8404();
}

/*
	Name: function_7d540ef1
	Namespace: namespace_ca56958
	Checksum: 0x8FBFB038
	Offset: 0x8098
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_7d540ef1()
{
	self endon("hash_128f8789");
	var_b711578c = function_c4d5ec1f("quadtank_main_turret_rocketpods_javelin");
	while(1)
	{
		self waittill("hash_aa1618b0", var_622504f0);
		if(var_b711578c === var_622504f0.var_c5b0e858)
		{
			var_622504f0 thread function_fc363a17();
		}
	}
}

/*
	Name: function_fc363a17
	Namespace: namespace_ca56958
	Checksum: 0xCD6162F9
	Offset: 0x8120
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_fc363a17()
{
	var_377a9c22 = self function_f175f855();
	if(isdefined(self) && isdefined(var_377a9c22))
	{
		if(var_377a9c22 namespace_82b91a51::function_d3426abc() || var_377a9c22.var_bab9655e === 0 || var_377a9c22.var_958c7633 === 1 || var_377a9c22.var_255b9315 === 1)
		{
			var_e32e572f = namespace_14b42b8a::function_7faf4c39("plaza_battle_intro_boss_target_spots");
			var_26aaa5cc = namespace_84970cc4::function_47d18840(var_e32e572f);
			var_746111be = namespace_82b91a51::function_b9fd52a4("tag_origin", var_26aaa5cc.var_722885f3, var_26aaa5cc.var_6ab6f4fd);
		}
		else if(function_65f192a6(var_377a9c22))
		{
			var_746111be = namespace_82b91a51::function_b9fd52a4("tag_origin", var_377a9c22.var_722885f3, var_377a9c22.var_6ab6f4fd);
		}
		if(isdefined(var_746111be))
		{
			self function_7847c931(var_746111be);
			self waittill("hash_128f8789");
			var_746111be function_dc8c8404();
		}
	}
}

/*
	Name: function_336b6c3e
	Namespace: namespace_ca56958
	Checksum: 0xE1FBA901
	Offset: 0x8308
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_336b6c3e(var_377a9c22)
{
	var_d9315cdd = 256 * 256;
	self function_71b5892a(var_377a9c22);
	if(isdefined(self) && isdefined(var_377a9c22))
	{
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
		}
	}
}

/*
	Name: function_71b5892a
	Namespace: namespace_ca56958
	Checksum: 0x759D812B
	Offset: 0x8428
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_71b5892a(var_377a9c22)
{
	self endon("hash_128f8789");
	var_9633e6ca = 3000;
	while(isdefined(var_377a9c22))
	{
		if(self function_1439c75a()[2] < -150 && function_cb3d1c9b(self.var_722885f3, var_377a9c22 function_e59527c1()) < var_9633e6ca * var_9633e6ca)
		{
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_e1159e2b
	Namespace: namespace_ca56958
	Checksum: 0x7A02B63D
	Offset: 0x84D8
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_e1159e2b()
{
	self endon("hash_128f8789");
	self namespace_ad23e503::function_c35e6aab("order_stop_fire");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		self function_76aa5b30(var_6bfe1586, 1);
	}
	self.var_c2fc9418 = 0;
	level namespace_82b91a51::function_f20332a2(self, "trophy_system_disabled", level, "plaza_battle_train_exit_reached");
	self thread function_58e04ffd();
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		self function_76aa5b30(var_6bfe1586, 0);
	}
	level namespace_82b91a51::function_f20332a2(self, "trophy_system_disabled", level, "plaza_battle_artillery_intro_stop");
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_front_defenses_broken");
	self.var_c2fc9418 = 1;
	self namespace_72ee5da4::function_81b6f1ac();
	self namespace_72ee5da4::function_efe9815e();
	self thread function_c635bfa2();
	self thread function_303a9547();
	self namespace_82b91a51::function_9fcf3cd8(20, "trophy_system_disabled", "trophy_system_destroyed", "near_goal");
	level namespace_ad23e503::function_74d6b22f("plaza_battle_intro_artillery_in_position");
	level namespace_ad23e503::function_1ab5ebec("plaza_boss_dead");
	self.var_5330ac94 = namespace_82b91a51::function_b9fd52a4("tag_origin", self function_d48f2ab3("tag_target_upper"), self function_cd1d99bd("tag_target_upper"));
	self.var_5330ac94 function_37f7858a(self, "tag_target_upper", VectorScale((0, 0, 1), 256));
	self.var_5330ac94.var_ff1f6868 = "plaza_battle";
	level.var_a06b011 = self;
	self thread function_2686975a();
}

/*
	Name: function_303a9547
	Namespace: namespace_ca56958
	Checksum: 0x14B2F16F
	Offset: 0x8848
	Size: 0x165
	Parameters: 0
	Flags: None
*/
function function_303a9547()
{
	self endon("hash_128f8789");
	var_2ef061f7 = function_fe0cfd2e("plaza_battle_artillery_patrol_node", "targetname");
	var_5576dc56 = undefined;
	while(1)
	{
		do
		{
			var_2ef061f7 = namespace_84970cc4::function_8332f7f6(var_2ef061f7);
			wait(0.05);
		}
		while(!var_2ef061f7[0] === var_5576dc56);
		foreach(var_f2c09364 in var_2ef061f7)
		{
			self function_169cc712(var_f2c09364.var_722885f3);
			self waittill("hash_48a3d97f");
			wait(function_72a94f05(5, 7));
		}
		var_5576dc56 = var_2ef061f7[var_2ef061f7.size - 1];
	}
}

/*
	Name: function_8f5c1780
	Namespace: namespace_ca56958
	Checksum: 0x7E0BC55B
	Offset: 0x89B8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_8f5c1780()
{
	if(!namespace_d5067552::function_56a7483f("plaza_battle_siegebot_left_middle_spawn_manager"))
	{
		namespace_d5067552::function_bae40a28("plaza_battle_siegebot_left_middle_spawn_manager");
	}
	if(!namespace_d5067552::function_56a7483f("plaza_battle_siegebot_right_middle_spawn_manager"))
	{
		namespace_d5067552::function_bae40a28("plaza_battle_siegebot_right_middle_spawn_manager");
	}
}

/*
	Name: function_d645af75
	Namespace: namespace_ca56958
	Checksum: 0x9BE1760B
	Offset: 0x8A28
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_d645af75()
{
	var_a44ce9b5 = namespace_2f06d687::function_289e6fd1("plaza_battle_center_siegebots");
	foreach(var_d84e54db in var_a44ce9b5)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			if(var_d84e54db.var_b07228b6 === "plaza_battle_artillery_left_goaltrig")
			{
				var_a6aa789c = "plaza_battle_siegebots_left_goaltrig";
			}
			else if(var_d84e54db.var_b07228b6 === "plaza_battle_artillery_right_goaltrig")
			{
				var_a6aa789c = "plaza_battle_siegebots_right_goaltrig";
			}
			var_284ca6ef = function_6ada35ba(var_a6aa789c, "targetname");
			var_d84e54db function_169cc712(var_284ca6ef);
		}
	}
}

/*
	Name: function_7f39a78b
	Namespace: namespace_ca56958
	Checksum: 0xBE6E71E9
	Offset: 0x8B80
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_7f39a78b()
{
	self endon("hash_128f8789");
	var_1e0937da = function_fe0cfd2e(self.var_db7bb468, "targetname");
	var_1528a05b = undefined;
	while(1)
	{
		do
		{
			var_1e0937da = namespace_84970cc4::function_8332f7f6(var_1e0937da);
			wait(0.05);
		}
		while(!var_1e0937da[0] === var_1528a05b);
		foreach(var_1528a05b in var_1e0937da)
		{
			self function_c985552d(var_1528a05b.var_722885f3, 1, 1);
			wait(function_72a94f05(3, 4));
		}
	}
}

/*
	Name: function_6c61fe9e
	Namespace: namespace_ca56958
	Checksum: 0x70B5DE43
	Offset: 0x8CC8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_6c61fe9e()
{
	/#
		if(function_29e06050(level.var_2395e945[0]))
		{
			self.var_3a90f16b = 1;
		}
	#/
	level.var_782205f8 = self;
	self thread function_934d33a5();
	if(!level namespace_ad23e503::function_7922262b("plaza_battle_cleared"))
	{
		self thread function_3dc6a02c("cp_level_zurich_enter_hq_destroy_hunter_obj");
		self thread function_d0b419ee();
	}
	self function_8f87de5f(7);
	self function_d769b9ad();
}

/*
	Name: function_934d33a5
	Namespace: namespace_ca56958
	Checksum: 0xF819DDF0
	Offset: 0x8DB8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_934d33a5()
{
	self.var_e62c1231 = function_9b7fda5e("trigger_radius", self.var_722885f3 + VectorScale((0, 0, -1), 60), 0, 256, 256);
	self.var_e62c1231 function_8f279593();
	self.var_e62c1231 function_37f7858a(self);
	if(!isdefined(level.var_29d8c635))
	{
		level.var_29d8c635 = [];
	}
	else if(!function_6e2770d8(level.var_29d8c635))
	{
		level.var_29d8c635 = function_84970cc4(level.var_29d8c635);
	}
	level.var_29d8c635[level.var_29d8c635.size] = self.var_e62c1231;
	self.var_e62c1231 thread namespace_6ece97b7::function_8bf6514d();
	self waittill("hash_128f8789");
	self.var_e62c1231 function_dc8c8404();
}

/*
	Name: function_6a38397a
	Namespace: namespace_ca56958
	Checksum: 0x4C2DA67E
	Offset: 0x8EE8
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_6a38397a()
{
	self endon("hash_128f8789");
	level endon("hash_1fc32e88");
	var_2ef061f7 = function_8f8fb3b0("plaza_battle_hunter_patrol_node", "targetname");
	while(1)
	{
		namespace_4dbf3ae3::function_1ab5ebec("plaza_battle_hunter_nofly_trig", undefined, self);
		var_f2c09364 = function_e7bdc1a1(self.var_722885f3, var_2ef061f7);
		self namespace_72ee5da4::function_81b6f1ac();
		self function_c985552d(var_f2c09364.var_722885f3, 1);
		self waittill("hash_48a3d97f");
		self namespace_72ee5da4::function_efe9815e();
	}
}

/*
	Name: function_d769b9ad
	Namespace: namespace_ca56958
	Checksum: 0xC386BE01
	Offset: 0x8FE8
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function function_d769b9ad()
{
	var_75532e17 = undefined;
	var_2ef061f7 = function_8f8fb3b0("plaza_battle_hunter_patrol_node", "targetname");
	var_fbae031 = function_243bb261("plaza_battle_hunter_patrol_start", "script_noteworthy");
	self namespace_72ee5da4::function_81b6f1ac();
	self function_42cddf81(32, 12, 8);
	self function_c985552d(var_fbae031.var_722885f3, 1);
	self namespace_82b91a51::function_564f2d81("death", "near_goal");
	if(isdefined(self))
	{
		self thread function_6a38397a();
	}
	while(isdefined(self))
	{
		do
		{
			var_2ef061f7 = namespace_84970cc4::function_8332f7f6(var_2ef061f7);
			wait(0.05);
		}
		while(!var_2ef061f7[0] === var_75532e17);
		var_75532e17 = var_2ef061f7[var_2ef061f7.size - 1];
		foreach(var_f2c09364 in var_2ef061f7)
		{
			var_1534914d = function_b8494651("allies");
			var_1534914d = function_525ae497(var_1534914d, level.var_9b1393e7, 1, 1);
			var_1534914d = function_f926d8e8(var_1534914d, self.var_722885f3, 0);
			var_f09d8d3c = function_72a94f05(1.5, 3);
			self namespace_72ee5da4::function_81b6f1ac();
			self function_df42c640(var_1534914d[0]);
			self function_c985552d(var_f2c09364.var_722885f3, 1);
			self namespace_82b91a51::function_564f2d81("death", "near_goal");
			self namespace_72ee5da4::function_efe9815e();
			wait(var_f09d8d3c);
		}
	}
}

/*
	Name: function_68e4ea91
	Namespace: namespace_ca56958
	Checksum: 0x4FF73BF2
	Offset: 0x9330
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_68e4ea91()
{
	if(function_5b49d38c(level.var_782205f8))
	{
		self function_5c638800();
	}
	else if(function_5b49d38c(level.var_a06b011))
	{
		self function_5a1e5a49();
	}
	else
	{
		self function_c4b462a7();
	}
}

/*
	Name: function_d1db5654
	Namespace: namespace_ca56958
	Checksum: 0xB4D7E05B
	Offset: 0x93C0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_d1db5654()
{
	level endon("hash_128f8789");
	var_965f3899 = undefined;
	level namespace_ad23e503::function_1ab5ebec("plaza_battle_vtol_drop_crew_completed");
	namespace_d5067552::function_bae40a28("plaza_battle_boss_wasp_spawn_manager");
	self thread function_69458aa0();
	do
	{
		var_965f3899 = function_b6b79a0(namespace_8e9083ff::function_411dc61b(3, -0.5));
		self namespace_82b91a51::function_5b7e3888("trophy_system_disabled", "trophy_system_destroyed");
	}
	while(!self.var_de9eba31 < var_965f3899);
	namespace_d5067552::function_bae40a28("plaza_battle_boss_wasp_rocket_spawn_manager");
}

/*
	Name: function_69458aa0
	Namespace: namespace_ca56958
	Checksum: 0x2190BA0E
	Offset: 0x94C8
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_69458aa0()
{
	self endon("hash_128f8789");
	while(1)
	{
		var_9be07199 = function_41f575c3(level.var_9b1393e7);
		var_9be07199 = namespace_84970cc4::function_8332f7f6(var_9be07199);
		foreach(var_6bfe1586 in var_9be07199)
		{
			if(var_6bfe1586 namespace_82b91a51::function_d61b846f(self.var_722885f3 + VectorScale((0, 0, 1), 256), 0.8, 1, var_6bfe1586) && (!isdefined(var_6bfe1586.var_1611b636) && var_6bfe1586.var_1611b636))
			{
				var_6bfe1586 function_baaaa286();
			}
		}
		wait(4);
	}
}

/*
	Name: function_baaaa286
	Namespace: namespace_ca56958
	Checksum: 0x417856E2
	Offset: 0x9618
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_baaaa286()
{
	level.var_a06b011 endon("hash_128f8789");
	var_b3b33e02 = namespace_d5067552::function_423eae50("plaza_battle_boss_wasp_spawn_manager");
	var_8ba55d7b = namespace_d5067552::function_423eae50("plaza_battle_boss_wasp_spawn_manager");
	var_b3b33e02 = function_525ae497(var_b3b33e02, var_8ba55d7b, 0, 0);
	foreach(var_aaefedf3 in var_b3b33e02)
	{
		if(!(isdefined(var_aaefedf3.var_56c95748) && var_aaefedf3.var_56c95748))
		{
			var_aaefedf3.var_56c95748 = 1;
			if(!isdefined(self.var_439c885e))
			{
				return;
			}
			var_aaefedf3 function_21f41d11(self);
			var_aaefedf3 function_169cc712(self.var_439c885e, 1);
			return;
		}
	}
}

/*
	Name: function_424191b5
	Namespace: namespace_ca56958
	Checksum: 0x7DBDC56D
	Offset: 0x9790
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_424191b5()
{
	if(isdefined(self.var_439c885e))
	{
		return;
	}
	self.var_439c885e = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self function_89c87c9c());
	self.var_439c885e.var_ff1f6868 = "plaza_battle";
	var_27c4935 = function_298b8148(self function_89c87c9c()) * 128;
	var_27c4935 = var_27c4935 + VectorScale((0, 0, 1), 64);
	self.var_439c885e function_37f7858a(self, "tag_origin", var_27c4935);
}

/*
	Name: function_cb30d060
	Namespace: namespace_ca56958
	Checksum: 0x9F7D3C04
	Offset: 0x9890
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_cb30d060()
{
	if(!isdefined(self.var_439c885e))
	{
		return;
	}
	self.var_439c885e function_dc8c8404();
}

/*
	Name: function_f8f7624b
	Namespace: namespace_ca56958
	Checksum: 0xE3E2A908
	Offset: 0x98C8
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_f8f7624b()
{
	self endon("hash_128f8789");
	self endon("hash_6cf6ac7e");
	self waittill("hash_cb0ad682");
	wait(function_72a94f05(0.1, 0.56));
	var_933bbc2c = function_b8494651("allies");
	var_933bbc2c = namespace_84970cc4::function_8332f7f6(var_933bbc2c);
	foreach(var_d84e54db in var_933bbc2c)
	{
		if(!var_d84e54db namespace_82b91a51::function_d3426abc())
		{
			self thread namespace_72ee5da4::function_afb82faf(function_72a94f05(8, 12), undefined, var_d84e54db);
			break;
		}
	}
}

/*
	Name: function_5a1e5a49
	Namespace: namespace_ca56958
	Checksum: 0x62BA2FEA
	Offset: 0x9A18
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5a1e5a49()
{
	self function_169cc712(level.var_a06b011.var_5330ac94, 0, 400, 96);
}

/*
	Name: function_5c638800
	Namespace: namespace_ca56958
	Checksum: 0xB302BF85
	Offset: 0x9A58
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5c638800()
{
	self function_169cc712(level.var_782205f8, 0, 128, 32);
}

/*
	Name: function_c4b462a7
	Namespace: namespace_ca56958
	Checksum: 0xADC413E7
	Offset: 0x9A90
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_c4b462a7()
{
	var_284ca6ef = function_6ada35ba("plaza_battle_wasp_goaltrig", "targetname");
	if(isdefined(var_284ca6ef))
	{
		self function_169cc712(var_284ca6ef);
	}
}

/*
	Name: function_bc249f36
	Namespace: namespace_ca56958
	Checksum: 0xA121E38F
	Offset: 0x9AF0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_bc249f36()
{
	var_ccbdc630 = function_6ada35ba("coalescence_gate", "targetname");
	var_ccbdc630 function_422037f5();
	function_bab1ff00("hq_atrium_umbra_gate", 1);
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle");
	level thread function_509fb0c4();
}

/*
	Name: function_59999862
	Namespace: namespace_ca56958
	Checksum: 0xD4996EA1
	Offset: 0x9B98
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_59999862()
{
	var_ccbdc630 = function_6ada35ba("coalescence_gate", "targetname");
	var_ccbdc630 function_4083a98e();
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_coalescence_tower_door_close_bundle");
	function_bab1ff00("hq_atrium_umbra_gate", 0);
	level namespace_ad23e503::function_74d6b22f("plaza_battle_exit_cleared");
}

/*
	Name: function_509fb0c4
	Namespace: namespace_ca56958
	Checksum: 0x2B856E82
	Offset: 0x9C40
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_509fb0c4()
{
	wait(1);
	level namespace_71e9cb84::function_74d6b22f("hq_amb", 1);
}

/*
	Name: function_a2b45d70
	Namespace: namespace_ca56958
	Checksum: 0xE25CD29
	Offset: 0x9C78
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_a2b45d70()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_6744b8e3
	Namespace: namespace_ca56958
	Checksum: 0x868470C8
	Offset: 0x9D68
	Size: 0x15F
	Parameters: 4
	Flags: None
*/
function function_6744b8e3(var_4d75b06, var_377a9c22, var_562b538e, var_431bc2a9)
{
	/#
		if(isdefined(var_377a9c22) && isdefined(var_4d75b06))
		{
			var_377a9c22 notify("hash_9aac4254");
			var_377a9c22 notify("hash_dc898c8");
			var_377a9c22 endon("hash_9aac4254");
			self endon("hash_128f8789");
			var_377a9c22 endon("hash_128f8789");
			var_377a9c22 thread namespace_8e9083ff::function_9ff5370d(var_562b538e, var_431bc2a9);
			var_4d75b06 thread namespace_8e9083ff::function_68a764f6(32, var_431bc2a9);
			var_4d75b06 thread namespace_8e9083ff::function_ff016910("Dev Block strings are not supported" + var_377a9c22 function_c7f3ce11(), var_431bc2a9);
			if(isdefined(var_377a9c22))
			{
				var_377a9c22 thread namespace_8e9083ff::function_c7d0d818(var_377a9c22, var_4d75b06, undefined, var_431bc2a9, "Dev Block strings are not supported");
			}
			var_4d75b06 waittill("hash_128f8789");
			var_377a9c22 notify("hash_dc898c8");
			var_4d75b06 notify("hash_5322c93b");
		}
	#/
}

/*
	Name: function_c58f2dba
	Namespace: namespace_ca56958
	Checksum: 0xB2BD6A0A
	Offset: 0x9ED0
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_c58f2dba()
{
	/#
		self thread namespace_8e9083ff::function_ff016910(self.var_76ec4fca);
		while(1)
		{
			function_8afd7e24(self.var_722885f3, self.var_ae11119e, (0, 1, 0), "Dev Block strings are not supported", self);
			wait(0.05);
		}
	#/
}

