#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_bridge;
#using scripts\cp\cp_prologue_cyber_soldiers;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace Hangar;

/*
	Name: function_83921c71
	Namespace: Hangar
	Checksum: 0x1B8199D1
	Offset: 0x1AC8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_83921c71()
{
	function_ce233fb8();
	function_5a60627b();
	spawner::add_spawn_function_group("hangar01_balcony_ai", "script_noteworthy", &ai_think);
	spawner::add_spawn_function_group("catwalk_stair_enemy", "targetname", &function_78f61bf2);
	level thread hangar_main();
}

/*
	Name: function_ce233fb8
	Namespace: Hangar
	Checksum: 0x5EB40E3E
	Offset: 0x1B70
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_ce233fb8()
{
	flag::init("alert_plane_hangar_enemies");
	level flag::init("plane_hangar_hendricks_ready_flag");
	level flag::init("plane_hangar_khalil_ready_flag");
	level flag::init("plane_hangar_minister_ready_flag");
	level flag::init("fireflies_used");
}

/*
	Name: function_5a60627b
	Namespace: Hangar
	Checksum: 0x781CC63C
	Offset: 0x1C18
	Size: 0x2F7
	Parameters: 0
	Flags: None
*/
function function_5a60627b()
{
	level.var_92d245e2 ai::set_ignoreall(1);
	level.var_92d245e2 ai::set_ignoreme(1);
	level.var_92d245e2.goalRadius = 16;
	level.var_f58c9f31 ai::set_ignoreall(1);
	level.var_f58c9f31 ai::set_ignoreme(1);
	level.var_f58c9f31.goalRadius = 16;
	level.var_f58c9f31.allowPain = 0;
	level.var_f58c9f31 colors::set_force_color("c");
	level.var_7f246cd7 ai::set_ignoreall(1);
	level.var_7f246cd7 ai::set_ignoreme(1);
	level.var_7f246cd7.goalRadius = 16;
	level.var_7f246cd7.allowPain = 0;
	level.var_7f246cd7 colors::set_force_color("o");
	level.var_5d4087a6 ai::set_ignoreall(1);
	level.var_5d4087a6 ai::set_ignoreme(1);
	level.var_5d4087a6.goalRadius = 16;
	level.var_5d4087a6.allowPain = 0;
	level.var_5d4087a6 colors::set_force_color("p");
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_2fd26037 ai::set_ignoreme(1);
	level.var_2fd26037.goalRadius = 16;
	level.var_2fd26037.allowPain = 0;
	level.var_9db406db ai::set_ignoreall(1);
	level.var_9db406db ai::set_ignoreme(1);
	level.var_9db406db.goalRadius = 16;
	level.var_4d5a4697 ai::set_ignoreall(1);
	level.var_4d5a4697 ai::set_ignoreme(1);
	level.var_4d5a4697.goalRadius = 16;
}

/*
	Name: hangar_main
	Namespace: Hangar
	Checksum: 0xBDAF13ED
	Offset: 0x1F18
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function hangar_main()
{
	level thread function_bd564a09();
	level thread scene::init("p7_fxanim_cp_prologue_hangar_window_rip_bundle");
	level thread namespace_21b2c1f2::function_46333a8a();
	level util::clientNotify("sndStartFakeBattle");
	level thread function_6ad5d018();
	level thread function_e92ad8ae();
	level thread function_4cf04b95();
	level thread function_30b7d0f9();
	level thread function_b439650f();
	level thread function_644150a();
	vehicle::add_spawn_function("vtol_collapse_apc_initial", &function_75381a71);
	level.var_fac57550 = vehicle::simple_spawn_single("vtol_collapse_apc_initial");
	wait(0.15);
	level.var_2fd26037 thread function_d418516(level.var_fac57550);
	level.var_9db406db thread function_d418516(level.var_fac57550);
	level.var_7f246cd7 thread function_e3521c43();
	function_e966c1c0(0);
	level flag::wait_till("plane_hangar_complete");
	skipto::function_be8adfb8("skipto_hangar");
}

/*
	Name: function_b439650f
	Namespace: Hangar
	Checksum: 0xDD6FD973
	Offset: 0x2120
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b439650f()
{
	level endon("hash_71456dc2");
	wait(60);
	level flag::set("move_plane_hangar_vehicles");
	level flag::set("move_plane_hangar_enemies");
	wait(60);
	level flag::set("move_catwalk_enemies");
}

/*
	Name: function_75381a71
	Namespace: Hangar
	Checksum: 0xEF3DD4EB
	Offset: 0x21A0
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_75381a71()
{
	wait(1);
	foreach(ai_rider in self.riders)
	{
		ai_rider thread util::magic_bullet_shield();
	}
	level waittill("hash_7452e7a8");
	foreach(ai_rider in self.riders)
	{
		ai_rider thread util::stop_magic_bullet_shield();
	}
}

/*
	Name: function_bd564a09
	Namespace: Hangar
	Checksum: 0x536C3BD3
	Offset: 0x22D0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_bd564a09()
{
	self endon("hash_d11bfa2f");
	level flag::wait_till("hangar_vtol_flyby");
	level thread namespace_2cb3876f::function_42da021e("vh_vtol_flyby", 119, 100);
}

/*
	Name: function_4cf04b95
	Namespace: Hangar
	Checksum: 0x40143CBA
	Offset: 0x2330
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_4cf04b95()
{
	spawner::add_spawn_function_group("aig_plane_hangar_enemies_main", "script_aigroup", &namespace_2cb3876f::function_c47ce0e9);
	level flag::wait_till("spawn_plane_hangar_enemies");
	spawner::simple_spawn("catwalk_window_enemies", &function_55a0215c);
	spawner::simple_spawn("shooter_enemy", &function_c9e0c14b);
	var_a2da570f = spawner::simple_spawn("sp_plane_hangar_initial_right", &function_4514b4cf);
	var_c5fb606f = GetEnt("plane_hangar_goal_vol_right_1", "targetname");
	var_53f3f134 = GetEnt("plane_hangar_goal_vol_right_2", "targetname");
	var_79f66b9d = GetEnt("plane_hangar_goal_vol_rear_2", "targetname");
	Array::thread_all(var_a2da570f, &function_fb6ce428, var_c5fb606f, var_53f3f134, var_79f66b9d);
	if(level.players.size > 2)
	{
		var_e39e4320 = spawner::simple_spawn("sp_plane_hangar_initial_left", &function_4514b4cf);
		var_48c65824 = GetEnt("plane_hangar_goal_vol_left_1", "targetname");
		var_bacdc75f = GetEnt("plane_hangar_goal_vol_left_2", "targetname");
		var_94cb4cf6 = GetEnt("plane_hangar_goal_vol_rear_2", "targetname");
		Array::thread_all(var_e39e4320, &function_fb6ce428, var_48c65824, var_bacdc75f, var_94cb4cf6);
	}
	level thread function_8f45c05e();
	Array::thread_all(level.players, &function_2af9c6c4);
	spawner::add_spawn_function_group("catwalk_battle_enemy_wave2", "targetname", &function_147616e2);
	level flag::wait_till("alert_plane_hangar_enemies");
	savegame::function_5d2cdd99();
	spawn_manager::enable("catwalk_enemy_wave2");
	level thread function_2810938e();
}

/*
	Name: function_4514b4cf
	Namespace: Hangar
	Checksum: 0x25D4E8F3
	Offset: 0x26A0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_4514b4cf()
{
	self endon("death");
	self.goalRadius = 16;
	self SetGoal(self.origin, 1);
	self SetIgnoreEnt(level.var_7f246cd7, 1);
	level.var_7f246cd7 SetIgnoreEnt(self, 1);
	level flag::wait_till("plane_hangar_enemies_fallback1");
	wait(5);
	self SetIgnoreEnt(level.var_7f246cd7, 0);
	level.var_7f246cd7 SetIgnoreEnt(self, 0);
}

/*
	Name: function_8f45c05e
	Namespace: Hangar
	Checksum: 0x87FB2DCB
	Offset: 0x2790
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_8f45c05e()
{
	level waittill("hash_94f1877f");
	level flag::set("alert_plane_hangar_enemies");
}

/*
	Name: function_2af9c6c4
	Namespace: Hangar
	Checksum: 0x3AD81D57
	Offset: 0x27C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_2af9c6c4()
{
	self waittill("weapon_fired");
	level flag::set("alert_plane_hangar_enemies");
}

/*
	Name: function_fb6ce428
	Namespace: Hangar
	Checksum: 0xA8F46499
	Offset: 0x2800
	Size: 0x18B
	Parameters: 3
	Flags: None
*/
function function_fb6ce428(var_3cee21ba, var_16eba751, var_f0e92ce8)
{
	self endon("death");
	self ai::set_ignoreall(1);
	self SetGoal(self.origin);
	level flag::wait_till("alert_plane_hangar_enemies");
	self ai::set_ignoreall(0);
	self SetGoal(var_3cee21ba);
	level flag::wait_till("plane_hangar_enemies_fallback1");
	self ai::set_ignoreall(1);
	self SetGoal(var_16eba751);
	self waittill("goal");
	self ai::set_ignoreall(0);
	level flag::wait_till("plane_hangar_enemies_fallback2");
	self ai::set_ignoreall(1);
	self SetGoal(var_f0e92ce8);
	self waittill("goal");
	self ai::set_ignoreall(0);
}

/*
	Name: function_147616e2
	Namespace: Hangar
	Checksum: 0xB97CF20E
	Offset: 0x2998
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_147616e2()
{
	self endon("death");
	var_5136eb95 = GetEnt("plane_hangar_goal_vol_rear_1", "targetname");
	var_773965fe = GetEnt("plane_hangar_goal_vol_rear_2", "targetname");
	self SetGoal(var_5136eb95);
	level flag::wait_till("plane_hangar_enemies_fallback2");
	self SetGoal(var_773965fe);
}

/*
	Name: function_c9e0c14b
	Namespace: Hangar
	Checksum: 0x123BB60D
	Offset: 0x2A60
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_c9e0c14b()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self SetGoal(self.origin);
	self.goalRadius = 16;
	level flag::wait_till("alert_plane_hangar_enemies");
	self ai::set_ignoreall(0);
	var_bd827604 = struct::get("plane_hangar_window", "targetname");
	var_6c9f55e = util::get_closest_player(var_bd827604.origin, "allies");
	self ai::shoot_at_target("normal", var_6c9f55e, undefined, 5);
	var_c5fb606f = GetEnt("plane_hangar_goal_vol_right_1", "targetname");
	var_53f3f134 = GetEnt("plane_hangar_goal_vol_right_2", "targetname");
	var_79f66b9d = GetEnt("plane_hangar_goal_vol_right_3", "targetname");
	self function_fb6ce428(var_c5fb606f, var_53f3f134, var_79f66b9d);
}

/*
	Name: function_55a0215c
	Namespace: Hangar
	Checksum: 0xEACD336A
	Offset: 0x2C20
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_55a0215c()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self SetGoal(self.origin, 1);
	level flag::wait_till("move_catwalk_enemies");
	n_goal = GetNode(self.script_noteworthy, "targetname");
	self SetGoal(n_goal, 1);
	self waittill("goal");
	self ai::set_ignoreall(0);
}

/*
	Name: function_4ee77dbb
	Namespace: Hangar
	Checksum: 0xBF01E4A
	Offset: 0x2CF8
	Size: 0xBB
	Parameters: 3
	Flags: None
*/
function function_4ee77dbb(vehiclename, name, targets)
{
	ai_rider = vehiclename vehicle::get_rider(name);
	if(isdefined(ai_rider))
	{
		ai_rider thread vehicle::get_out();
		ai_rider thread function_4514b4cf();
		if(targets.size == 3)
		{
			ai_rider thread function_fb6ce428(targets[0], targets[1], targets[2]);
		}
	}
}

/*
	Name: function_30b7d0f9
	Namespace: Hangar
	Checksum: 0x9FE58D83
	Offset: 0x2DC0
	Size: 0x353
	Parameters: 0
	Flags: None
*/
function function_30b7d0f9()
{
	var_c2777dd9 = "p7_fxanim_cp_prologue_hangar_doors_03_bundle";
	level thread scene::init(var_c2777dd9);
	level flag::wait_till("spawn_plane_hangar_enemies");
	vh_jeep = vehicle::simple_spawn_single("plane_hangar_jeep");
	var_a9993ca4 = vehicle::simple_spawn_single("plane_hangar_flatbed");
	vh_jeep vehicle::get_on_path(vh_jeep.target);
	var_a9993ca4 vehicle::get_on_path(var_a9993ca4.target);
	level flag::wait_till("move_plane_hangar_vehicles");
	vh_jeep thread vehicle::go_path();
	vh_jeep thread function_28d41b1d();
	vh_jeep playsound("evt_hangar_jeep_driveaway");
	wait(1);
	var_280d5f68 = GetEnt("plane_hangar_gate_l", "targetname");
	var_3c301126 = GetEnt("plane_hangar_gate_r", "targetname");
	var_9c7511b4 = struct::get("plane_hangar_gate_move_pos_l", "targetname");
	var_205c499a = struct::get("plane_hangar_gate_move_pos_r", "targetname");
	level thread function_a8cd091b(0, var_280d5f68, var_3c301126, var_9c7511b4, var_205c499a, var_c2777dd9, "umbra_gate_hangar_03");
	var_a9993ca4 thread vehicle::go_path();
	var_a9993ca4 playsound("evt_hangar_truck_drivestop");
	var_a9993ca4 waittill("reached_end_node");
	var_9b59c867[0] = GetEnt("plane_hangar_goal_vol_right_1", "targetname");
	var_9b59c867[1] = GetEnt("plane_hangar_goal_vol_right_2", "targetname");
	var_9b59c867[2] = GetEnt("plane_hangar_goal_vol_right_3", "targetname");
	function_4ee77dbb(var_a9993ca4, "driver", var_9b59c867);
	function_4ee77dbb(var_a9993ca4, "passenger1", var_9b59c867);
}

/*
	Name: function_28d41b1d
	Namespace: Hangar
	Checksum: 0xD81BA7E5
	Offset: 0x3120
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_28d41b1d()
{
	self endon("death");
	self waittill("reached_end_node");
	ai_driver = self vehicle::get_rider("driver");
	ai_rider = self vehicle::get_rider("passenger1");
	ai_driver delete();
	ai_rider delete();
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
}

/*
	Name: function_2810938e
	Namespace: Hangar
	Checksum: 0x72C6D307
	Offset: 0x3210
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_2810938e()
{
	self endon("hash_d11bfa2f");
	level flag::wait_till("alert_plane_hangar_enemies");
	level thread function_ed437e33();
	level flag::wait_till("plane_hangar_enemies_fallback3");
	spawn_manager::kill("catwalk_enemy_wave2");
	var_bfff0f24 = GetEntArray("plane_hangar_enemies", "script_noteworthy", 1);
	var_1d61ec5e = struct::get("plane_to_vtol_fallback_origin", "targetname");
	var_f6f0207c = Array::get_all_closest(var_1d61ec5e.origin, var_bfff0f24, undefined, 10);
	level thread function_19352a82(var_f6f0207c);
	var_46b9d820 = GetEnt("trig_vtol_goal_vol_rear", "targetname");
	for(i = 0; i < var_f6f0207c.size; i++)
	{
		var_f6f0207c[i] SetGoal(var_46b9d820);
	}
	function_e966c1c0(1);
	wait(5);
	trigger::use("plane_hangar_empty_color_allies", "targetname");
}

/*
	Name: function_ed437e33
	Namespace: Hangar
	Checksum: 0x248EA2A7
	Offset: 0x3408
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ed437e33()
{
	spawner::waittill_ai_group_ai_count("aig_plane_hangar_enemies_main", 5);
	level flag::set("plane_hangar_enemies_fallback3");
}

/*
	Name: function_f1b38a6e
	Namespace: Hangar
	Checksum: 0x8C3BCF3
	Offset: 0x3460
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_f1b38a6e(var_234899cf)
{
	var_e70be898 = self.origin;
	wait(10);
	if(DistanceSquared(self.origin, var_e70be898) < 262144)
	{
		nd_goal = GetNode(var_234899cf, "targetname");
		self ForceTeleport(nd_goal.origin);
	}
}

/*
	Name: function_e92ad8ae
	Namespace: Hangar
	Checksum: 0x17B2896E
	Offset: 0x3508
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_e92ad8ae()
{
	level.var_9db406db ai::set_behavior_attribute("vignette_mode", "off");
	level.var_4d5a4697 ai::set_behavior_attribute("vignette_mode", "off");
	level.var_2fd26037 colors::enable();
	trigger::use("hangar_move_friendlies_1", "targetname");
	level.var_9db406db thread function_f1b38a6e("node_cyber_khalil");
	level.var_4d5a4697 thread function_f1b38a6e("node_cyber_minister");
	level flag::wait_till("trig_hangar01_enemies");
	wait(4.5);
	level.var_2fd26037 colors::disable();
	level.var_9db406db colors::disable();
	level.var_4d5a4697 colors::disable();
	level.var_2fd26037 thread function_3683e3dd("cin_pro_10_01_hangar_vign_traverse_hendricks_start_idle");
	wait(1);
	level.var_9db406db thread function_7ae90dbb("cin_pro_10_01_hangar_vign_traverse_khalil_start_idle");
	wait(2.5);
	level.var_4d5a4697 thread function_7a87693b("cin_pro_10_01_hangar_vign_traverse_minister_start_idle");
	level thread function_bae363ed();
	level flag::wait_till("pallas_jump_inside_catwalk");
	if(level.players.size == 1)
	{
		level thread function_e6515192();
	}
	function_cf13969b();
	level waittill("hash_fdcdf647");
	level.var_2fd26037 colors::enable();
	trigger::use("t_hangar02_move_allies", undefined, undefined, 0);
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 ai::set_ignoreme(0);
	level thread scene::Play("cin_pro_10_01_hangar_vign_traverse_khalil_end_idle");
	level thread scene::Play("cin_pro_10_01_hangar_vign_traverse_minister_end_idle");
	wait(3);
	level thread scene::stop("cin_pro_10_01_hangar_vign_traverse_khalil_end_idle");
	level thread scene::stop("cin_pro_10_01_hangar_vign_traverse_minister_end_idle");
	level.var_9db406db colors::enable();
	level.var_4d5a4697 util::delay(2, undefined, &colors::enable);
	level.var_9db406db ai::set_ignoreall(0);
	level.var_9db406db ai::set_ignoreme(0);
}

/*
	Name: function_3683e3dd
	Namespace: Hangar
	Checksum: 0x52F57F5A
	Offset: 0x38A0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_3683e3dd(var_c2777dd9)
{
	self ai::set_behavior_attribute("disablearrivals", 1);
	var_9d01e85c = GetNode("hendricks_traversal_goal_1", "targetname");
	self SetGoal(var_9d01e85c, 1);
	self waittill("goal");
	self ai::set_behavior_attribute("disablearrivals", 0);
	level thread scene::Play(var_c2777dd9);
	level waittill("hash_9aebec3d");
	level flag::set("plane_hangar_hendricks_ready_flag");
}

/*
	Name: function_7ae90dbb
	Namespace: Hangar
	Checksum: 0xC444C969
	Offset: 0x3988
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_7ae90dbb(var_c2777dd9)
{
	self ai::set_behavior_attribute("disablearrivals", 1);
	var_9d01e85c = GetNode("khalil_traversal_goal_1", "targetname");
	self SetGoal(var_9d01e85c, 1);
	self waittill("goal");
	var_f095797 = GetNode("khalil_traversal_goal_2", "targetname");
	self SetGoal(var_f095797, 1);
	self waittill("goal");
	var_e906dd2e = GetNode("khalil_traversal_goal_3", "targetname");
	self SetGoal(var_e906dd2e, 1);
	self waittill("goal");
	self ai::set_behavior_attribute("disablearrivals", 0);
	level thread scene::Play(var_c2777dd9);
	level waittill("hash_bdaa4f6d");
	level flag::set("plane_hangar_khalil_ready_flag");
}

/*
	Name: function_7a87693b
	Namespace: Hangar
	Checksum: 0xAC6C9832
	Offset: 0x3B20
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_7a87693b(var_c2777dd9)
{
	self ai::set_behavior_attribute("disablearrivals", 1);
	var_9d01e85c = GetNode("minister_traversal_goal_1", "targetname");
	self SetGoal(var_9d01e85c, 1);
	self waittill("goal");
	var_f095797 = GetNode("minister_traversal_goal_2", "targetname");
	self SetGoal(var_f095797, 1);
	self waittill("goal");
	var_e906dd2e = GetNode("minister_traversal_goal_3", "targetname");
	self SetGoal(var_e906dd2e, 1);
	self waittill("goal");
	self ai::set_behavior_attribute("disablearrivals", 0);
	level thread scene::Play(var_c2777dd9);
	level waittill("hash_b0db1711");
	level flag::set("plane_hangar_minister_ready_flag");
}

/*
	Name: function_cf13969b
	Namespace: Hangar
	Checksum: 0xAAC4A37C
	Offset: 0x3CB8
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_cf13969b()
{
	level endon("hash_e4850787");
	level flag::wait_till_all(Array("plane_hangar_hendricks_ready_flag", "plane_hangar_khalil_ready_flag", "plane_hangar_minister_ready_flag"));
	level scene::Play("cin_pro_10_01_hangar_vign_traverse_hendricks_khalil_minister_move_01");
	level notify("hash_f38af553");
}

/*
	Name: function_e6515192
	Namespace: Hangar
	Checksum: 0x5D23FF7E
	Offset: 0x3D40
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_e6515192()
{
	level endon("hash_f38af553");
	level flag::wait_till_all(Array("plane_hangar_hendricks_ready_flag", "plane_hangar_khalil_ready_flag", "plane_hangar_minister_ready_flag"));
	level flag::wait_till("expedite_hangar_entrance");
	var_149cda0 = struct::get("s_hangar_door", "targetname");
	Array::thread_all(level.players, &util::waittill_player_not_looking_at, var_149cda0.origin);
	level notify("hash_e4850787");
	if(!scene::is_playing("cin_pro_10_01_hangar_vign_traverse_hendricks_khalil_minister_move_01"))
	{
		level thread scene::skipto_end("cin_pro_10_01_hangar_vign_traverse_hendricks_khalil_minister_move_01", undefined, undefined, 0.65);
	}
	wait(0.1);
	level.var_2fd26037 StopAnimScripted();
}

/*
	Name: function_bae363ed
	Namespace: Hangar
	Checksum: 0x84312C58
	Offset: 0x3E88
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_bae363ed()
{
	level waittill("hash_e4850787");
	var_280d5f68 = GetEnt("hangar02_door_left", "targetname");
	var_3c301126 = GetEnt("hangar02_door_right", "targetname");
	var_1f6ed387 = GetEnt("plane_hangar_side_door_left", "targetname");
	var_fcd5dfa1 = GetEnt("plane_hangar_side_door_right", "targetname");
	var_280d5f68 moveto(var_1f6ed387.origin, 0.5);
	var_3c301126 moveto(var_fcd5dfa1.origin, 0.5);
}

/*
	Name: function_590acc37
	Namespace: Hangar
	Checksum: 0xAA0A571F
	Offset: 0x3FB8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_590acc37()
{
	level flag::wait_till("trig_hangar01_enemies");
	a_sp_spawners = GetSpawnerArray("hangar01_enemy", "script_aigroup");
	a_ai_array = spawner::simple_spawn(a_sp_spawners);
	Array::thread_all(a_ai_array, &function_211f2948);
	Array::thread_all(a_ai_array, &function_b5a28004);
	level thread function_c218ce54();
	level scene::Play("cin_pro_10_01_hanger_vign_sensory_overload_start");
	level thread objectives::breadcrumb("hangar_breadcrumb_2");
	level thread function_25e65862();
}

/*
	Name: function_c218ce54
	Namespace: Hangar
	Checksum: 0x49CB639C
	Offset: 0x40E8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_c218ce54()
{
	level waittill("remove_blocker");
	var_7317cd21 = GetEnt("stun_cin_blocker", "targetname");
	var_7317cd21 delete();
}

/*
	Name: function_25e65862
	Namespace: Hangar
	Checksum: 0xA88A998E
	Offset: 0x4148
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_25e65862()
{
	wait(3);
	level.var_7f246cd7 thread dialog::say("diaz_move_into_the_next_h_0");
}

/*
	Name: function_b5a28004
	Namespace: Hangar
	Checksum: 0x257D7202
	Offset: 0x4180
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b5a28004()
{
	self endon("death");
	wait(30);
	self kill();
}

/*
	Name: function_211f2948
	Namespace: Hangar
	Checksum: 0xF65392BF
	Offset: 0x41B8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_211f2948()
{
	self setContents(8192);
	self.dontDropWeapon = 1;
	self setmaxhealth(15);
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self thread function_fd0a6295();
	self cybercom::function_59965309("cybercom_fireflyswarm");
	self waittill("death");
	self StartRagdoll(1);
}

/*
	Name: function_fd0a6295
	Namespace: Hangar
	Checksum: 0xA88513F9
	Offset: 0x4298
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_fd0a6295()
{
	self endon("death");
	self waittill("hash_b19658ba");
	self notify("bhtn_action_notify", "reactSensory");
	self playsound("gdt_sensory_feedback_start");
	self PlayLoopSound("gdt_sensory_feedback_lp_upg");
}

/*
	Name: function_aaf033f6
	Namespace: Hangar
	Checksum: 0x2B8D30
	Offset: 0x4310
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_aaf033f6()
{
	self endon("death");
	self waittill("reach_done");
	var_be53b69c = GetNode("pallas_hangar_anim_start", "targetname");
	self SetGoal(var_be53b69c, 1);
}

/*
	Name: function_644150a
	Namespace: Hangar
	Checksum: 0xA73C1E42
	Offset: 0x4380
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_644150a()
{
	sndent = spawn("script_origin", (7553, 1157, 207));
	sndent PlayLoopSound("evt_sensory_dudes_walla", 2);
	level flag::wait_till("trig_hangar01_enemies");
	wait(3);
	sndent delete();
}

/*
	Name: function_e3521c43
	Namespace: Hangar
	Checksum: 0xDBF60E50
	Offset: 0x4428
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_e3521c43()
{
	self colors::disable();
	self thread function_aaf033f6();
	level.var_7f246cd7 function_590acc37();
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self ai::set_behavior_attribute("sprint", 1);
	level thread function_e0540704();
	level flag::wait_till("pallas_jump_inside_catwalk");
	level flag::set("spawn_plane_hangar_enemies");
	level notify("hash_28b81543");
	level thread function_507f685c();
	self colors::set_force_color("o");
	level thread function_d11463aa();
	level scene::Play("cin_pro_10_01_hangar_vign_breakwindow");
	self ai::set_behavior_attribute("sprint", 0);
	level thread scene::Play("cin_pro_10_04_hangar_vign_leap_new_run_across");
	n_node = GetNode("pallas_temp_catwalk_end", "targetname");
	self SetGoal(n_node, 1);
	self waittill("goal");
	self thread function_ee8e1349();
	wait(0.5);
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self SetGoal(n_node, 1);
	level thread function_c8af325f();
	level flag::wait_till("pallas_jump_to_window");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	level thread scene::add_scene_func("cin_pro_10_04_hangar_vign_leap_new_wing2window", &function_84a7642b, "done");
	level notify("hash_35d2241b");
	level flag::wait_till("fireflies_used");
	self thread scene::Play("cin_pro_10_04_hangar_vign_leap_new_wing2window");
	level waittill("hash_d4a94cc6");
	level clientfield::set("diaz_break_1", 2);
}

/*
	Name: function_d11463aa
	Namespace: Hangar
	Checksum: 0x2E2F1EE5
	Offset: 0x47B0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d11463aa()
{
	level waittill("hash_94f1877f");
	level thread scene::Play("p7_fxanim_cp_prologue_hangar_window_rip_bundle");
	level waittill("hash_cab72ab7");
	var_61ee9c31 = GetEnt("hangar_glass_window", "targetname");
	var_61ee9c31 delete();
}

/*
	Name: function_ee8e1349
	Namespace: Hangar
	Checksum: 0xA2DE58E8
	Offset: 0x4838
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_ee8e1349()
{
	Array::thread_all(level.players, &function_b81dfc22);
	level thread function_2d8450d7();
	level waittill("hash_35d2241b");
	level thread function_cc32afb9();
	a_targets = GetEntArray("catwalk_window_enemies_ai", "targetname");
	if(a_targets.size > 0)
	{
		self cybercom::function_d240e350("cybercom_fireflyswarm", a_targets);
	}
	else
	{
		var_78e3eaf1 = GetEntArray("plane_hangar_enemies", "script_noteworthy", 1);
		var_262dcd37 = struct::get("plane_to_vtol_fallback_origin", "targetname");
		var_e2ceaf11 = Array::get_all_closest(var_262dcd37.origin, var_78e3eaf1, undefined, 3);
		self cybercom::function_d240e350("cybercom_fireflyswarm", var_e2ceaf11);
	}
	level flag::set("fireflies_used");
}

/*
	Name: function_cc32afb9
	Namespace: Hangar
	Checksum: 0xAEBA9423
	Offset: 0x49E0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_cc32afb9()
{
	level endon("hash_3e0bebe1");
	level.var_95790224 = [];
	while(1)
	{
		level waittill("hash_61df3d1c", swarm);
		level.var_95790224[level.var_95790224.size] = swarm;
		if(swarm.owner == self)
		{
			swarm.ignoreme = 1;
		}
	}
}

/*
	Name: function_b81dfc22
	Namespace: Hangar
	Checksum: 0x8D97B0C3
	Offset: 0x4A60
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_b81dfc22()
{
	self endon("death");
	wait(0.5);
	self util::waittill_player_looking_at(level.var_7f246cd7.origin + VectorScale((0, 0, 1), 50), 30);
	level notify("hash_35d2241b");
}

/*
	Name: function_2d8450d7
	Namespace: Hangar
	Checksum: 0xCFA1E76C
	Offset: 0x4AD0
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_2d8450d7()
{
	wait(15);
	level notify("hash_35d2241b");
}

/*
	Name: function_84a7642b
	Namespace: Hangar
	Checksum: 0x7E1C158D
	Offset: 0x4AF0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_84a7642b(a_ents)
{
	level flag::set("pallas_at_window");
}

/*
	Name: function_e0540704
	Namespace: Hangar
	Checksum: 0x665BB58A
	Offset: 0x4B28
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_e0540704()
{
	level endon("hash_28b81543");
	self waittill("goal");
	wait(4);
	level.var_7f246cd7 dialog::say("diaz_pick_up_the_damn_pac_0");
	wait(4);
	level.var_7f246cd7 dialog::say("diaz_you_wanna_get_the_mi_0");
	wait(5);
	level.var_7f246cd7 dialog::say("diaz_we_gotta_move_to_exf_0");
}

/*
	Name: function_507f685c
	Namespace: Hangar
	Checksum: 0x9387BDBF
	Offset: 0x4BC8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_507f685c()
{
	level waittill("hash_bf327f23");
	level.var_7f246cd7 dialog::say("diaz_on_my_position_let_0");
	level flag::wait_till("move_plane_hangar_enemies");
	var_49b32118 = GetEnt("pa_hangar_dialog", "targetname");
	var_49b32118 dialog::say("nrcp_infiltrators_moving_0", 0, 1);
}

/*
	Name: function_c8af325f
	Namespace: Hangar
	Checksum: 0x73CBA09C
	Offset: 0x4C78
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c8af325f()
{
	level flag::wait_till("plane_hangar_enemies_fallback3");
	level flag::set("pallas_jump_to_window");
}

/*
	Name: function_3dc00a0b
	Namespace: Hangar
	Checksum: 0x22E7190C
	Offset: 0x4CC8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3dc00a0b()
{
	e_target = GetEnt("cyber_soldiers_hangar_target", "targetname");
	self thread ai::shoot_at_target("normal", e_target, undefined, 100, 10000);
}

/*
	Name: function_f1dda14f
	Namespace: Hangar
	Checksum: 0x74B6E677
	Offset: 0x4D30
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_f1dda14f(var_bf0873ca)
{
	node = GetNode(var_bf0873ca, "targetname");
	self ForceTeleport(node.origin, node.angles, 1);
}

/*
	Name: function_78f61bf2
	Namespace: Hangar
	Checksum: 0x8B526CBE
	Offset: 0x4DA8
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_78f61bf2()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	if(isdefined(self.target))
	{
		var_4345e897 = self.goalRadius;
		nd = GetNode(self.target, "targetname");
		if(isdefined(nd))
		{
			self ai::force_goal(nd, 64, 1, undefined, 1);
			self ai::set_ignoreall(0);
			self ai::set_ignoreme(0);
		}
		if(isdefined(self.radius))
		{
			self.goalRadius = self.radius;
		}
	}
}

/*
	Name: ai_think
	Namespace: Hangar
	Checksum: 0xBE77485A
	Offset: 0x4EB8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function ai_think()
{
	self endon("death");
	self.goalRadius = 16;
	if(isdefined(self.target))
	{
		node = GetNode(self.target, "targetname");
		self SetGoal(node, 1);
	}
}

/*
	Name: function_6ad5d018
	Namespace: Hangar
	Checksum: 0xF2EA3269
	Offset: 0x4F38
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_6ad5d018()
{
	level.var_92d245e2 thread function_47f306da("prometheus_hangar_goal");
	level.var_f58c9f31 thread function_47f306da("theia_hangar_goal");
	level.var_5d4087a6 thread function_47f306da("hyperion_hangar_goal");
	level thread function_90b59893();
	spawner::add_spawn_function_group("hangar_ambient_ai", "script_noteworthy", &function_5f6c69c0);
	spawn_manager::enable("sm_hangar_ambient_combat");
	level thread function_1053dd4e();
	spawn_manager::function_72e3dd35("sm_hangar_ambient_combat");
	level notify("hash_bf48d580");
}

/*
	Name: function_1053dd4e
	Namespace: Hangar
	Checksum: 0x802F2782
	Offset: 0x5048
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_1053dd4e()
{
	self endon("hash_bf48d580");
	level flag::wait_till("side_cyberbattle_go");
	Array::thread_all(level.players, &function_1232fdd1);
	level waittill("hash_8f285b1d");
	wait(1);
	a_enemies = spawner::get_ai_group_ai("hangar_ambient_ai");
	if(a_enemies.size > 0)
	{
		level.var_92d245e2 cybercom::function_d240e350("cybercom_immolation", a_enemies);
	}
	wait(3);
	level.var_f58c9f31 cybercom::function_d240e350("cybercom_smokescreen");
	wait(4);
	a_enemies = spawner::get_ai_group_ai("hangar_ambient_ai");
	if(a_enemies.size > 0)
	{
		level.var_5d4087a6 cybercom::function_d240e350("cybercom_immolation", a_enemies);
	}
}

/*
	Name: function_1232fdd1
	Namespace: Hangar
	Checksum: 0x8426D243
	Offset: 0x5190
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_1232fdd1()
{
	self endon("hash_8f285b1d");
	wait(0.5);
	self util::waittill_player_looking_at(level.var_f58c9f31.origin + VectorScale((0, 0, 1), 64), 90, 1);
	level notify("hash_8f285b1d");
}

/*
	Name: function_90b59893
	Namespace: Hangar
	Checksum: 0xACE1865B
	Offset: 0x5200
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_90b59893()
{
	level endon("hash_bf48d580");
	var_8164b942 = GetEntArray("origin_ambient_grenade", "targetname");
	while(1)
	{
		n_rand = randomIntRange(4, 8);
		wait(n_rand);
		var_b311d2b0 = randomIntRange(0, var_8164b942.size);
		level.var_2fd26037 MagicGrenadeType(GetWeapon("frag_grenade"), var_8164b942[var_b311d2b0].origin, (0, 0, 0), 0.05);
	}
}

/*
	Name: function_47f306da
	Namespace: Hangar
	Checksum: 0xA35DA687
	Offset: 0x52F8
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_47f306da(s_node, var_74cd64bc)
{
	n_node = GetNode(s_node, "targetname");
	self ForceTeleport(n_node.origin, n_node.angles, 1);
	self SetGoal(n_node);
	wait(0.5);
	self show();
	self namespace_dccf27b3::function_9110a277(0);
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	a_ais = GetAITeamArray("axis", "axis");
	foreach(ai in a_ais)
	{
		if(ai.script_noteworthy !== "hangar_ambient_ai")
		{
			self SetIgnoreEnt(ai, 1);
		}
	}
	self.attackerAccuracy = 0.5;
	level waittill("hash_bf48d580");
	n_goal = GetNode(n_node.target, "targetname");
	self SetGoal(n_goal);
	self waittill("goal");
	self delete();
}

/*
	Name: function_5f6c69c0
	Namespace: Hangar
	Checksum: 0x53DB373D
	Offset: 0x5558
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_5f6c69c0()
{
	self.attackerAccuracy = 1;
	self.goalRadius = 16;
	self.var_38188e74 = 1;
	a_ais = GetAITeamArray("allies", "allies");
	foreach(ai in a_ais)
	{
		if(isdefined(ai.targetname) && ai.targetname != "theia_ai" && ai.targetname != "hyperion_ai" && ai.targetname != "prometheus_ai")
		{
			self SetIgnoreEnt(ai, 1);
		}
	}
	foreach(player in level.players)
	{
		self SetIgnoreEnt(player, 1);
	}
	var_257bbc01 = GetEnt("t_ambiant_hangar_goal_volume", "targetname");
	self SetGoal(var_257bbc01);
}

/*
	Name: function_de617dc2
	Namespace: Hangar
	Checksum: 0xA6F9E0E1
	Offset: 0x5788
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_de617dc2()
{
	trig = GetEnt("wing_r", "targetname");
	while(1)
	{
		trig waittill("trigger");
		exploder::exploder("fx_exploder_wing_bullet01");
		exploder::exploder("fx_exploder_wing_bullet02");
	}
}

/*
	Name: function_31427ccd
	Namespace: Hangar
	Checksum: 0x2459DAD1
	Offset: 0x5808
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_31427ccd()
{
	level thread namespace_21b2c1f2::function_46333a8a();
	function_99cdcfac();
	function_71e6db7();
	level thread function_8b7b1958();
}

/*
	Name: function_99cdcfac
	Namespace: Hangar
	Checksum: 0xF0D05DC7
	Offset: 0x5868
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_99cdcfac()
{
	level flag::init("door_close");
	level flag::init("hend_grenade_timeout");
	level flag::init("vtol_hit");
}

/*
	Name: function_71e6db7
	Namespace: Hangar
	Checksum: 0x6BEB86AD
	Offset: 0x58D8
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function function_71e6db7()
{
	level.var_92d245e2 ai::set_ignoreall(1);
	level.var_92d245e2 ai::set_ignoreme(1);
	level.var_92d245e2.goalRadius = 16;
	level.var_7f246cd7.goalRadius = 16;
	level.var_7f246cd7.allowPain = 0;
	level.var_7f246cd7 colors::set_force_color("o");
	level.var_2fd26037.goalRadius = 16;
	level.var_2fd26037.allowPain = 0;
	level.var_9db406db.goalRadius = 16;
	level.var_4d5a4697 ai::set_ignoreall(1);
	level.var_4d5a4697 ai::set_ignoreme(1);
	level.var_4d5a4697.goalRadius = 16;
}

/*
	Name: function_8b7b1958
	Namespace: Hangar
	Checksum: 0x28A17C20
	Offset: 0x5A10
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_8b7b1958()
{
	level thread namespace_2cb3876f::function_42da021e("vh_vtol_flyby_b", 50, 100);
	level thread function_4422735b();
	level thread function_8efb9b5c();
	level.var_7f246cd7 thread function_f9196d1d();
	level flag::wait_till("hanger3_battle_event");
	level.var_2fd26037 thread function_414c1d0();
	level.var_2fd26037 thread function_11855253();
	level thread function_9ada4a46();
	level thread function_9ea7f8ae();
	level.var_9db406db ai::set_ignoreall(1);
	level.var_9db406db ai::set_ignoreme(1);
	level thread function_55039e89();
	level thread function_e37c0060();
	level waittill("hash_8413e49c");
	level flag::wait_till("hangar_5_bc");
	level thread objectives::breadcrumb("hangar_breadcrumb_5");
	function_d81a4ec();
	level.var_7f246cd7 colors::enable();
	trigger::use("vtol_hangar_empty_color_allies", "targetname");
	level thread namespace_21b2c1f2::function_973b77f9();
	level flag::wait_till("hangar3_backdoor");
	function_e966c1c0(0);
	skipto::function_be8adfb8("skipto_vtol_collapse");
}

/*
	Name: function_4422735b
	Namespace: Hangar
	Checksum: 0x162E137C
	Offset: 0x5C78
	Size: 0x25D
	Parameters: 0
	Flags: None
*/
function function_4422735b()
{
	t_door = GetEnt("vtol_collapse_door_open", "targetname");
	a_friendly_ai = Array(level.var_4d5a4697, level.var_2fd26037, level.var_9db406db);
	level thread namespace_2cb3876f::function_21f52196("vtol_collapse_doors", t_door);
	level thread namespace_2cb3876f::function_2e61b3e8("vtol_collapse_doors", t_door, a_friendly_ai);
	while(!namespace_2cb3876f::function_cdd726fb("vtol_collapse_doors"))
	{
		wait(0.1);
	}
	var_ac769486 = GetEnt("clip_player_vtol_collapse_backtrack_doorway", "targetname");
	var_ac769486 MoveZ(100 * -1, 0.05);
	var_58576bff = GetEnt("vtol_hangar_in_l", "targetname");
	var_bbc00d9a = GetEnt("vtol_hangar_in_r", "targetname");
	vec_right = AnglesToRight(var_58576bff.angles);
	var_58576bff moveto(var_58576bff.origin - vec_right * 50, 0.5);
	var_bbc00d9a moveto(var_bbc00d9a.origin + vec_right * 44, 0.5);
	level notify("hash_3e92d474");
	level notify("hash_e3977daa");
}

/*
	Name: function_d43c2e1a
	Namespace: Hangar
	Checksum: 0x67D68B1
	Offset: 0x5EE0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d43c2e1a()
{
	level endon("death");
	level waittill("hash_cb897bce");
	level thread clientfield::set("vtol_missile_explode_trash_fx", 1);
}

/*
	Name: function_9ea7f8ae
	Namespace: Hangar
	Checksum: 0x6707E3A5
	Offset: 0x5F28
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_9ea7f8ae()
{
	var_fa1b3fb2 = GetEnt("trig_dam_vtol_collapse", "targetname");
	var_fa1b3fb2 SetCanDamage(0);
	level flag::wait_till("2nd_hangar_apc_in_pos");
	level flag::wait_till("vtol_destroy_obj");
	var_fa1b3fb2 SetCanDamage(1);
	var_dfb972a = GetEnt("vtol_hangar_missile_objective", "targetname");
	objectives::set("cp_level_prologue_destroy", var_dfb972a.origin);
	var_fa1b3fb2 trigger::wait_till();
	level notify("hash_36ad3c2e");
	level flag::set("vtol_hit");
}

/*
	Name: function_414c1d0
	Namespace: Hangar
	Checksum: 0x8FE631B7
	Offset: 0x6068
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_414c1d0()
{
	level endon("hash_36ad3c2e");
	n_goal = GetNode("n_hendricks_grenade", "targetname");
	self SetGoal(n_goal);
	self waittill("goal");
	self thread function_23e5e896();
	level flag::wait_till("hend_grenade_timeout");
	/#
		iprintln("Dev Block strings are not supported");
	#/
	wait(2);
	level flag::set("vtol_hit");
}

/*
	Name: function_23e5e896
	Namespace: Hangar
	Checksum: 0xBCCD46C5
	Offset: 0x6148
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_23e5e896()
{
	level endon("hash_36ad3c2e");
	self dialog::say("hend_our_weapons_are_no_g_0");
	if(vehicle::is_corpse(level.var_199de689))
	{
		wait(1);
	}
	else
	{
		level waittill("hash_723b53fc");
	}
	self thread dialog::say("hend_we_gotta_bring_down_1", 0.25);
	wait(1);
	level flag::set("vtol_destroy_obj");
	wait(7);
	self dialog::say("hend_we_ain_t_doing_shit_0");
	wait(5);
	level flag::set("hend_grenade_timeout");
}

/*
	Name: function_10ed8bd7
	Namespace: Hangar
	Checksum: 0x1B2D1B48
	Offset: 0x6238
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_10ed8bd7()
{
	var_c3adecbb = 0;
	n_starttime = GetTime();
	while(1)
	{
		wait(0.5);
		var_c3adecbb = GetTime() - n_starttime / 1000;
		if(var_c3adecbb >= 20)
		{
			break;
		}
	}
	level flag::set("hend_grenade_timeout");
}

/*
	Name: function_11855253
	Namespace: Hangar
	Checksum: 0xE6C53003
	Offset: 0x62C0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_11855253()
{
	self colors::disable();
	level waittill("hash_8413e49c");
	level thread function_15ce0cb4();
	self colors::enable();
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	level.var_7f246cd7 ai::set_ignoreall(0);
	level.var_7f246cd7 ai::set_ignoreme(0);
	trigger::use("vtol_hendricks_move_up_initial");
}

/*
	Name: function_15ce0cb4
	Namespace: Hangar
	Checksum: 0x74408061
	Offset: 0x6398
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_15ce0cb4()
{
	level.var_2fd26037 dialog::say("hend_apc_s_out_of_commiss_0");
}

/*
	Name: function_d418516
	Namespace: Hangar
	Checksum: 0xF2CCFDD0
	Offset: 0x63C8
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_d418516(var_c83dc06e)
{
	foreach(ai_rider in var_c83dc06e.riders)
	{
		self SetIgnoreEnt(ai_rider, 1);
	}
}

/*
	Name: function_55039e89
	Namespace: Hangar
	Checksum: 0x9A6293B3
	Offset: 0x6478
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_55039e89()
{
	spawner::add_spawn_function_group("sp_vtol_initial", "targetname", &function_d7dad356);
	spawner::add_spawn_function_group("sp_vtol_initial", "targetname", &namespace_2cb3876f::function_c47ce0e9);
	spawner::simple_spawn("sp_vtol_initial");
	spawner::add_spawn_function_group("sp_vtol_hangar_sideroom", "targetname", &function_d7dad356);
	spawner::add_spawn_function_group("sp_vtol_hangar_sideroom", "targetname", &namespace_2cb3876f::function_c47ce0e9);
	spawner::simple_spawn("sp_vtol_hangar_sideroom");
	spawner::add_spawn_function_group("aig_vtol_hangar_lower", "script_aigroup", &function_b7846718);
	spawner::add_spawn_function_group("aig_vtol_hangar_lower", "script_aigroup", &namespace_2cb3876f::function_c47ce0e9);
	spawn_manager::enable("sm_vtol_hangar_rear");
	spawner::add_spawn_function_group("aig_vtol_hangar_upper", "script_aigroup", &function_5d48dce7);
	spawner::add_spawn_function_group("aig_vtol_hangar_upper", "script_aigroup", &namespace_2cb3876f::function_c47ce0e9);
	spawn_manager::enable("sm_vtol_hangar_upper");
	level waittill("vtol_explosion");
	spawner::simple_spawn("sp_vtol_hangar_top_front");
}

/*
	Name: function_d7dad356
	Namespace: Hangar
	Checksum: 0x4D434AFA
	Offset: 0x6690
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_d7dad356()
{
	self endon("death");
	self thread function_f547728f();
	self thread function_f647689b();
	self thread function_d2bdf93e();
	self thread function_1e82f4b7();
	level waittill("hash_d2de9e1f");
	self ai::set_ignoreall(1);
	var_3f0f1f46 = GetEnt("trig_vtol_goal_vol_rear", "targetname");
	self SetGoal(var_3f0f1f46);
	self waittill("goal");
	self ai::set_ignoreall(1);
}

/*
	Name: function_1e82f4b7
	Namespace: Hangar
	Checksum: 0x4AEAF074
	Offset: 0x67A0
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_1e82f4b7()
{
	self endon("death");
	level flag::wait_till("door_close");
	var_c9aed927 = GetEntArray("outside_hangar_check", "targetname");
	foreach(var_26778947 in var_c9aed927)
	{
		if(self istouching(var_26778947) && isdefined(self))
		{
			self delete();
			return;
		}
	}
}

/*
	Name: function_b7846718
	Namespace: Hangar
	Checksum: 0xB3297D52
	Offset: 0x68B0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_b7846718()
{
	self thread function_f547728f();
	self thread function_f647689b();
	self thread function_d2bdf93e();
	var_3f0f1f46 = GetEnt("trig_vtol_goal_vol_rear", "targetname");
	self SetGoal(var_3f0f1f46);
}

/*
	Name: function_5d48dce7
	Namespace: Hangar
	Checksum: 0x99FDD4C9
	Offset: 0x6950
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_5d48dce7()
{
	self thread function_f547728f();
	self thread function_f647689b();
	self thread function_d2bdf93e();
	self.goalRadius = 16;
	trigger::use("vtol_hangar_upper_color", "targetname");
}

/*
	Name: function_d2bdf93e
	Namespace: Hangar
	Checksum: 0x6E5D7E79
	Offset: 0x69D8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d2bdf93e()
{
	self util::waittill_any("damage", "bulletwhizby", "pain", "proximity");
	self ai::set_ignoreall(0);
}

/*
	Name: function_f647689b
	Namespace: Hangar
	Checksum: 0x20607CDF
	Offset: 0x6A38
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_f647689b()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	level util::waittill_any("vtol_hit", "vtol_hangar_player_leaves_cover");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_f547728f
	Namespace: Hangar
	Checksum: 0x6D2AA3E
	Offset: 0x6AD8
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_f547728f()
{
	self endon("death");
	self.script_accuracy = 0.5;
	level waittill("hash_8413e49c");
	self.script_accuracy = 1;
}

/*
	Name: function_d81a4ec
	Namespace: Hangar
	Checksum: 0x7AA2911A
	Offset: 0x6B18
	Size: 0x289
	Parameters: 0
	Flags: None
*/
function function_d81a4ec()
{
	level thread function_114b96c0();
	level flag::wait_till("vtol_final_fallback");
	spawn_manager::kill("sm_vtol_hangar_upper");
	spawn_manager::kill("sm_vtol_hangar_rear");
	var_2373d08e = GetEnt("trig_vtol_goal_vol_fallback_final", "targetname");
	var_f694cded = spawner::get_ai_group_ai("aig_vtol_hangar_lower");
	a_ai_initial = spawner::get_ai_group_ai("aig_vtol_hangar_initial");
	var_7fc45f7c = spawner::get_ai_group_ai("aig_plane_hangar_enemies_main");
	Array::run_all(var_f694cded, &ClearGoalVolume);
	Array::run_all(a_ai_initial, &ClearGoalVolume);
	Array::run_all(var_7fc45f7c, &ClearGoalVolume);
	Array::run_all(var_f694cded, &SetGoal, var_2373d08e);
	Array::run_all(a_ai_initial, &SetGoal, var_2373d08e);
	Array::run_all(var_7fc45f7c, &SetGoal, var_2373d08e);
	trigger::use("vtol_hangar_upper_retreat", "targetname");
	level thread function_c1bac28();
	spawner::waittill_ai_group_ai_count("aig_vtol_hangar_lower", 0);
	spawner::waittill_ai_group_ai_count("aig_vtol_hangar_upper", 0);
	spawner::waittill_ai_group_ai_count("aig_vtol_hangar_initial", 0);
	spawner::waittill_ai_group_ai_count("aig_plane_hangar_enemies_main", 0);
	wait(2);
}

/*
	Name: function_c1bac28
	Namespace: Hangar
	Checksum: 0x53A24AFB
	Offset: 0x6DB0
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_c1bac28()
{
	level thread function_f6c934d0();
	wait(15);
	var_d2315634 = GetEnt("trig_vtol_goal_vol_fallback_final_defend_exit", "targetname");
	var_4b64857a = spawner::get_ai_group_ai("aig_vtol_hangar_upper");
	var_f694cded = spawner::get_ai_group_ai("aig_vtol_hangar_lower");
	a_ai_initial = spawner::get_ai_group_ai("aig_vtol_hangar_initial");
	var_7fc45f7c = spawner::get_ai_group_ai("aig_plane_hangar_enemies_main");
	var_20cedf03 = ArrayCombine(var_4b64857a, var_f694cded, 0, 0);
	var_20cedf03 = ArrayCombine(var_20cedf03, a_ai_initial, 0, 0);
	var_20cedf03 = ArrayCombine(var_20cedf03, var_7fc45f7c, 0, 0);
	foreach(enemy in var_20cedf03)
	{
		if(isalive(enemy))
		{
			enemy ClearGoalVolume();
			wait(0.1);
			enemy setgoalvolume(var_d2315634);
		}
	}
}

/*
	Name: function_f6c934d0
	Namespace: Hangar
	Checksum: 0x271FBE6A
	Offset: 0x6FD8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f6c934d0()
{
	level thread util::function_d8eaed3d(6);
	level waittill("hash_fc98480b");
	util::clear_streamer_hint();
}

/*
	Name: function_896f0868
	Namespace: Hangar
	Checksum: 0xF447287B
	Offset: 0x7020
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_896f0868()
{
	e_closest_player = ArrayGetClosest(self.origin, level.activePlayers);
	self.goalRadius = 128;
	self setgoalentity(e_closest_player);
	self ai::set_behavior_attribute("move_mode", "rambo");
}

/*
	Name: function_114b96c0
	Namespace: Hangar
	Checksum: 0x1C4F2721
	Offset: 0x70A8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_114b96c0()
{
	var_25002d73 = 6;
	while(var_25002d73 > 5)
	{
		var_25002d73 = spawner::get_ai_group_sentient_count("aig_vtol_hangar_lower") + spawner::get_ai_group_sentient_count("aig_vtol_hangar_initial") + spawner::get_ai_group_sentient_count("aig_plane_hangar_enemies_main");
		wait(0.5);
	}
	level flag::set("vtol_final_fallback");
}

/*
	Name: function_19352a82
	Namespace: Hangar
	Checksum: 0x85CF9813
	Offset: 0x7150
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function function_19352a82(a_ai_enemy)
{
	foreach(var_58c5eb41 in a_ai_enemy)
	{
		if(isalive(var_58c5eb41))
		{
			var_58c5eb41 dialog::say("nrcg_fall_back_fall_back_0");
			break;
		}
	}
}

/*
	Name: function_8efb9b5c
	Namespace: Hangar
	Checksum: 0x37156AED
	Offset: 0x7210
	Size: 0x3FB
	Parameters: 0
	Flags: None
*/
function function_8efb9b5c()
{
	level thread function_8bd46c9();
	foreach(player in level.players)
	{
		player.overridePlayerDamage = &function_e8443509;
	}
	a_e_targets = GetEntArray("first_apc_target", "targetname");
	t_hit = GetEnt("t_dam_apc_squibs", "targetname");
	foreach(e_target in a_e_targets)
	{
		if(isalive(level.var_fac57550))
		{
			level.var_fac57550 thread turret::shoot_at_target(e_target, 2.25, (0, 0, 0), 1, 0);
			level.var_fac57550 thread turret::shoot_at_target(e_target, 2.25, (0, 0, 0), 2, 0);
			level thread function_5792f76d(t_hit, e_target.origin);
			wait(2.25);
			level notify("hash_1a6f8b52");
		}
	}
	wait(2.25);
	foreach(player in level.players)
	{
		player.overridePlayerDamage = undefined;
	}
	level.var_41d1cac6 = 1;
	level.var_26dc9f18 = 2;
	level.var_3534f286 = 0.25;
	level.var_1a3fc6d8 = 0.5;
	if(isalive(level.var_fac57550))
	{
		level.var_fac57550 turret::set_burst_parameters(level.var_41d1cac6, level.var_26dc9f18, level.var_3534f286, level.var_1a3fc6d8, 1);
		level.var_fac57550 turret::set_burst_parameters(level.var_41d1cac6, level.var_26dc9f18, level.var_3534f286, level.var_1a3fc6d8, 2);
		level.var_fac57550 turret::enable(1, 1);
		level.var_fac57550 turret::enable(2, 1);
		level.var_fac57550 turret::disable_ai_getoff(1, 1);
		level.var_fac57550 turret::disable_ai_getoff(2, 1);
	}
}

/*
	Name: function_5792f76d
	Namespace: Hangar
	Checksum: 0x85F6416D
	Offset: 0x7618
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_5792f76d(t_hit, v_loc)
{
	self endon("death");
	level endon("hash_1d072da3");
	level endon("hash_1a6f8b52");
	t_hit waittill("trigger", e_who);
	if(e_who.team === "axis")
	{
		PhysicsExplosionSphere(v_loc, 250, 250, 0.7);
	}
}

/*
	Name: function_8bd46c9
	Namespace: Hangar
	Checksum: 0xDA8D8393
	Offset: 0x76B8
	Size: 0x4D3
	Parameters: 0
	Flags: None
*/
function function_8bd46c9()
{
	level flag::wait_till("activate_initial_apc");
	level thread function_b5a6b879();
	vehicle::add_spawn_function("vtol_collapse_apc", &function_75381a71);
	var_199de689 = vehicle::simple_spawn_single_and_drive("vtol_collapse_apc");
	level.var_199de689 = var_199de689;
	e_target = GetEnt("second_apc_target", "targetname");
	var_199de689 thread turret::shoot_at_target(e_target, 2, (0, 0, 0), 1, 0);
	var_199de689 thread turret::shoot_at_target(e_target, 2, (0, 0, 0), 2, 0);
	wait(2);
	var_199de689 turret::set_burst_parameters(level.var_41d1cac6, level.var_26dc9f18, level.var_3534f286, level.var_1a3fc6d8, 1);
	var_199de689 turret::set_burst_parameters(level.var_41d1cac6, level.var_26dc9f18, level.var_3534f286, level.var_1a3fc6d8, 2);
	var_199de689 turret::enable(1, 1);
	var_199de689 turret::enable(2, 1);
	var_199de689 turret::disable_ai_getoff(1, 1);
	var_199de689 turret::disable_ai_getoff(2, 1);
	var_199de689 waittill("reached_end_node");
	var_199de689 thread function_a2041661();
	level flag::set("2nd_hangar_apc_in_pos");
	level thread function_d43c2e1a();
	level flag::wait_till("vtol_hit");
	level notify("hash_7452e7a8");
	objectives::complete("cp_level_prologue_destroy");
	level thread function_2226d83();
	level thread scene::Play("p7_fxanim_cp_prologue_vtol_hangar_bundle");
	var_2ef9d306 = GetEnt("vtol_hangar_drop", "targetname");
	var_2ef9d306 thread namespace_2cb3876f::function_d723979e("swap_vtol_to_destroyed", "veh_t7_mil_vtol_nrc_no_interior_d", "vtol_collapse_done");
	level notify("hash_5a11bfd7");
	var_199de689 delete();
	wait(0.05);
	level.var_fac57550 delete();
	level waittill("vtol_explosion");
	var_fa3fe683 = GetEnt("vtol_hangar_explosion_origin", "targetname");
	RadiusDamage(var_fa3fe683.origin, 400, 2000, 800);
	PhysicsExplosionCylinder(var_fa3fe683.origin, 1200, 800, 0.5);
	level function_ce858cd3(1);
	var_1b63031d = GetEnt("vtol_ai_blockers", "targetname");
	var_1b63031d MoveZ(700, 0.05);
	util::delay(3, undefined, &function_62732b9d, var_fa3fe683.origin);
}

/*
	Name: function_62732b9d
	Namespace: Hangar
	Checksum: 0xA9879DF6
	Offset: 0x7B98
	Size: 0x13D
	Parameters: 2
	Flags: None
*/
function function_62732b9d(s_origin, n_radius)
{
	if(!isdefined(n_radius))
	{
		n_radius = 400;
	}
	deleteCorpses = [];
	foreach(corpse in GetCorpseArray())
	{
		if(Distance2D(corpse.origin, s_origin) < n_radius)
		{
			deleteCorpses[deleteCorpses.size] = corpse;
		}
	}
	for(index = 0; index < deleteCorpses.size; index++)
	{
		deleteCorpses[index] delete();
	}
}

/*
	Name: function_2226d83
	Namespace: Hangar
	Checksum: 0x3C7FEC43
	Offset: 0x7CE0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_2226d83()
{
	var_c9510c8e = GetEnt("vtol_hangar_explosion_origin", "targetname");
	level waittill("hash_4ceeb987");
	PlayRumbleOnPosition("cp_prologue_rumble_hangar_vtol_collapse_rocket_fall", var_c9510c8e.origin);
	level waittill("vtol_explosion");
	PlayRumbleOnPosition("cp_prologue_rumble_hangar_vtol_collapse_explosion", var_c9510c8e.origin);
	level waittill("hash_98f09713");
	PlayRumbleOnPosition("cp_prologue_rumble_hangar_vtol_collapse_hit_ground", var_c9510c8e.origin);
}

/*
	Name: function_b5a6b879
	Namespace: Hangar
	Checksum: 0xDD0C6848
	Offset: 0x7DB0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_b5a6b879()
{
	var_280d5f68 = GetEnt("hangar_gate_l", "targetname");
	var_3c301126 = GetEnt("hangar_gate_r", "targetname");
	var_9c7511b4 = struct::get("hangar_gate_move_pos_l", "targetname");
	var_205c499a = struct::get("hangar_gate_move_pos_r", "targetname");
	var_c2777dd9 = "p7_fxanim_cp_prologue_hangar_door_bundle";
	level function_a8cd091b(0, var_280d5f68, var_3c301126, var_9c7511b4, var_205c499a, var_c2777dd9, "umbra_gate_hangar_04");
	level flag::set("door_close");
}

/*
	Name: function_f9196d1d
	Namespace: Hangar
	Checksum: 0x657C09AE
	Offset: 0x7EE0
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function function_f9196d1d()
{
	level flag::wait_till("friendlies_jump_out_window");
	level thread function_f87b8938();
	level flag::wait_till("pallas_at_window");
	level thread scene::Play("cin_pro_10_04_hangar_vign_leap_new_jump_across");
	level waittill("hash_aea6d25d");
	level clientfield::set("diaz_break_2", 2);
	var_9e34fc53 = GetNode("n_pallas_vtol_tp", "targetname");
	level.var_7f246cd7 SetGoal(var_9e34fc53);
	level waittill("hash_8413e49c");
	trigger::use("pallas_move_up_initial");
	level flag::wait_till("diaz_ready_to_concuss");
	self colors::disable();
	var_5cbb67a5 = GetNode("diaz_concuss_node", "targetname");
	self SetGoal(var_5cbb67a5, 1);
	self waittill("goal");
	Array::thread_all(level.players, &function_5b79ea07);
	level thread function_570a8f9e();
	level waittill("hash_4939dbfa");
	level thread scene::Play("cin_pro_10_03_hangar_vign_concussive");
	level waittill("hash_bd8e9605");
	self cybercom::function_d240e350("cybercom_concussive", undefined, 0);
	self ClearForcedGoal();
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	var_c3c81269 = GetNode("diaz_concuss_cover_node", "targetname");
	self SetGoal(var_c3c81269, 1);
	self waittill("goal");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	function_e966c1c0(1);
}

/*
	Name: function_5b79ea07
	Namespace: Hangar
	Checksum: 0x6FA33C89
	Offset: 0x8210
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_5b79ea07()
{
	wait(0.5);
	self util::waittill_player_looking_at(level.var_7f246cd7.origin + VectorScale((0, 0, 1), 64), 90);
	level notify("hash_4939dbfa");
}

/*
	Name: function_570a8f9e
	Namespace: Hangar
	Checksum: 0x5D25B98C
	Offset: 0x8270
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_570a8f9e()
{
	wait(5);
	level notify("hash_4939dbfa");
}

/*
	Name: function_f87b8938
	Namespace: Hangar
	Checksum: 0xA753DCBC
	Offset: 0x8290
	Size: 0x1D9
	Parameters: 0
	Flags: None
*/
function function_f87b8938()
{
	spawner::add_spawn_function_ai_group("taylor_fodder_ai", &function_e3e4f0b8);
	level flag::wait_till("friendlies_jump_out_window");
	level.var_92d245e2 thread scene::Play("cin_pro_10_04_hangar_vign_coverfire_prometheus");
	level thread function_5f5d84df();
	wait(1.5);
	spawn_manager::enable("hangars_taylor_vign_fodder_manager");
	level.var_92d245e2 dialog::say("tayr_get_to_exfil_i_got_0");
	level.var_92d245e2 thread function_e547f97a();
	level waittill("hash_e3977daa");
	spawn_manager::disable("hangars_taylor_vign_fodder_manager");
	level notify("hash_71f2cae");
	level.var_92d245e2 delete();
	var_886e8d99 = GetEntArray("hangars_taylor_vign_fodder_spawner_ai", "targetname");
	foreach(fodder in var_886e8d99)
	{
		fodder delete();
	}
}

/*
	Name: function_e547f97a
	Namespace: Hangar
	Checksum: 0x6A77C238
	Offset: 0x8478
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_e547f97a()
{
	self endon("death");
	level endon("hash_e3977daa");
	level endon("hash_5565b88d");
	while(1)
	{
		a_enemies = spawner::get_ai_group_ai("taylor_fodder_ai");
		if(a_enemies.size === 0)
		{
			wait(2);
		}
		else
		{
			foreach(enemy in a_enemies)
			{
				if(isalive(enemy))
				{
					self ai::shoot_at_target("normal", enemy, undefined, RandomFloatRange(1, 3));
				}
			}
			wait(1.5);
		}
	}
}

/*
	Name: function_5f5d84df
	Namespace: Hangar
	Checksum: 0x4B148FF1
	Offset: 0x85C8
	Size: 0x135
	Parameters: 0
	Flags: None
*/
function function_5f5d84df()
{
	level endon("hash_73facd66");
	level endon("hash_5565b88d");
	while(1)
	{
		level flag::wait_till("player_in_taylor_coverfire");
		spawn_manager::enable("hangars_taylor_vign_fodder_manager");
		level flag::wait_till_clear("player_in_taylor_coverfire");
		spawn_manager::disable("hangars_taylor_vign_fodder_manager");
		a_enemies = spawner::get_ai_group_ai("taylor_fodder_ai");
		foreach(enemy in a_enemies)
		{
			enemy delete();
		}
	}
}

/*
	Name: function_e3e4f0b8
	Namespace: Hangar
	Checksum: 0x7A6DAA2D
	Offset: 0x8708
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_e3e4f0b8()
{
	self endon("death");
	level endon("hash_71f2cae");
	self.attackerAccuracy = 1;
	self.goalRadius = 32;
	self.var_38188e74 = 1;
	if(isdefined(level.var_92d245e2))
	{
		self ai::shoot_at_target("normal", level.var_92d245e2, undefined, 1000);
	}
	foreach(player in level.players)
	{
		self SetIgnoreEnt(player, 1);
	}
}

/*
	Name: function_e37c0060
	Namespace: Hangar
	Checksum: 0xAFD62008
	Offset: 0x8818
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e37c0060()
{
	level waittill("hash_8413e49c");
	wait(6);
	level dialog::remote("hall_diaz_i_m_in_positio_0", undefined, "normal");
	level.var_7f246cd7 dialog::say("diaz_copy_that_to_us_h_0");
	level flag::set("hangar_5_bc");
}

/*
	Name: function_e8443509
	Namespace: Hangar
	Checksum: 0x9C8E27FE
	Offset: 0x88A0
	Size: 0x7F
	Parameters: 13
	Flags: None
*/
function function_e8443509(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, modelIndex, psOffsetTime, vSurfaceNormal)
{
	if(eInflictor === level.var_fac57550)
	{
		return 0;
	}
}

/*
	Name: function_a2041661
	Namespace: Hangar
	Checksum: 0x1960B4FB
	Offset: 0x8928
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_a2041661()
{
	ai_driver = self vehicle::get_rider("driver");
	if(isalive(ai_driver))
	{
		ai_driver endon("death");
		ai_driver vehicle::get_out();
		n_node = GetNode("vtol_driver_node", "targetname");
		ai_driver SetGoal(n_node, 1);
		ai_driver util::stop_magic_bullet_shield();
	}
}

/*
	Name: function_a8cd091b
	Namespace: Hangar
	Checksum: 0x7F86BE11
	Offset: 0x8A00
	Size: 0x2DB
	Parameters: 7
	Flags: None
*/
function function_a8cd091b(var_a334437f, var_280d5f68, var_3c301126, var_9c7511b4, var_205c499a, var_c2777dd9, var_902e27b5)
{
	if(var_a334437f)
	{
		var_280d5f68 moveto(var_9c7511b4.origin, 0.05);
		var_3c301126 moveto(var_205c499a.origin, 0.05);
		level thread scene::skipto_end(var_c2777dd9);
		var_3c301126 disconnectpaths();
		var_280d5f68 disconnectpaths();
	}
	else
	{
		level thread scene::Play(var_c2777dd9);
		var_280d5f68 moveto(var_9c7511b4.origin, 6);
		var_3c301126 moveto(var_205c499a.origin, 6);
		sndnum = RandomInt(2);
		var_280d5f68 playsound("evt_hangar_door_start_l_" + sndnum);
		var_3c301126 playsound("evt_hangar_door_start_r_" + sndnum);
		var_280d5f68 PlayLoopSound("evt_hangar_door_loop_l", 2);
		var_3c301126 PlayLoopSound("evt_hangar_door_loop_r", 2);
		var_3c301126 waittill("movedone");
		var_3c301126 disconnectpaths();
		var_280d5f68 disconnectpaths();
		var_280d5f68 StopLoopSound(0.25);
		var_3c301126 StopLoopSound(0.25);
		var_280d5f68 playsound("evt_hangar_door_stop_l");
		var_3c301126 playsound("evt_hangar_door_stop_r");
		if(isdefined(var_902e27b5))
		{
			function_bab1ff00(var_902e27b5, 0);
		}
	}
}

/*
	Name: function_10ab649
	Namespace: Hangar
	Checksum: 0xCA9E620C
	Offset: 0x8CE8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_10ab649()
{
	var_280d5f68 = GetEnt("plane_hangar_out_l", "targetname");
	var_3c301126 = GetEnt("plane_hangar_out_r", "targetname");
	var_149cda0 = struct::get("plane_hangar_exit_close", "targetname");
	var_280d5f68 moveto(var_149cda0.origin, 0.5);
	var_3c301126 moveto(var_149cda0.origin, 0.5);
}

/*
	Name: function_9ada4a46
	Namespace: Hangar
	Checksum: 0x64DEC6F6
	Offset: 0x8DD8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_9ada4a46()
{
	level endon("hash_cb897bce");
	var_32400ae0 = GetEnt("trig_dam_vtol_grenade_accolade", "targetname");
	var_32400ae0 SetCanDamage(0);
	level flag::wait_till("2nd_hangar_apc_in_pos");
	wait(0.5);
	var_32400ae0 SetCanDamage(1);
	var_32400ae0 trigger::wait_till();
	if(isPlayer(var_32400ae0.who))
	{
		namespace_61c634f2::function_470fe5d8(var_32400ae0.who);
	}
}

/*
	Name: function_e966c1c0
	Namespace: Hangar
	Checksum: 0x7C0CC7BA
	Offset: 0x8ED0
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_e966c1c0(var_eb6e3c93)
{
	level.var_2fd26037.perfectaim = var_eb6e3c93;
	level.var_9db406db.perfectaim = var_eb6e3c93;
	level.var_7f246cd7.perfectaim = var_eb6e3c93;
}

/*
	Name: dynamic_run_speed
	Namespace: Hangar
	Checksum: 0x22CE66CC
	Offset: 0x8F20
	Size: 0x293
	Parameters: 2
	Flags: None
*/
function dynamic_run_speed(var_c047ec73, var_3b15866b)
{
	if(!isdefined(var_c047ec73))
	{
		var_c047ec73 = 250;
	}
	if(!isdefined(var_3b15866b))
	{
		var_3b15866b = var_c047ec73 * 0.5;
	}
	self notify("start_dynamic_run_speed");
	self endon("death");
	self endon("start_dynamic_run_speed");
	self endon("stop_dynamic_run_speed");
	self thread stop_dynamic_run_speed();
	while(1)
	{
		wait(0.05);
		if(!isdefined(self.goalpos))
		{
			continue;
		}
		v_goal = self.goalpos;
		e_player = ArrayGetClosest(v_goal, level.players);
		e_closest = ArrayGetClosest(v_goal, Array(e_player, self));
		n_dist = Distance2DSquared(self.origin, e_player.origin);
		is_behind = isPlayer(e_closest);
		if(n_dist < var_3b15866b * var_3b15866b || is_behind)
		{
			self ai::set_behavior_attribute("cqb", 0);
			self ai::set_behavior_attribute("sprint", 1);
			continue;
		}
		else if(n_dist < var_c047ec73 * var_c047ec73)
		{
			self ai::set_behavior_attribute("cqb", 0);
			self ai::set_behavior_attribute("sprint", 0);
			continue;
		}
		else if(n_dist > var_c047ec73 * var_c047ec73 * 1.25)
		{
			self ai::set_behavior_attribute("cqb", 1);
			self ai::set_behavior_attribute("sprint", 0);
			continue;
		}
	}
}

/*
	Name: stop_dynamic_run_speed
	Namespace: Hangar
	Checksum: 0x1B5AB6F9
	Offset: 0x91C0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function stop_dynamic_run_speed()
{
	self endon("start_dynamic_run_speed");
	self endon("death");
	self waittill("stop_dynamic_run_speed");
	self ai::set_behavior_attribute("cqb", 0);
	self ai::set_behavior_attribute("sprint", 0);
}

/*
	Name: function_ce858cd3
	Namespace: Hangar
	Checksum: 0x5B8CA4CC
	Offset: 0x9230
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_ce858cd3(var_9e9ed9f)
{
	if(!isdefined(var_9e9ed9f))
	{
		var_9e9ed9f = 0;
	}
	e_collision = GetEnt("hangar_vtol_crash_clip", "targetname");
	e_collision connectpaths();
	if(var_9e9ed9f)
	{
		e_collision MoveZ(1000, 0.05);
	}
	else
	{
		e_collision MoveZ(-1000, 0.05);
	}
	wait(0.05);
	if(isdefined(e_collision))
	{
		e_collision disconnectpaths(0, 0);
	}
}

/*
	Name: function_d3c9b1d1
	Namespace: Hangar
	Checksum: 0xA7BB8FAC
	Offset: 0x9318
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_d3c9b1d1(params)
{
	if(!isdefined(level.var_7f246cd7))
	{
		return;
	}
	if(!isdefined(level.var_fa73812c))
	{
		level.var_fa73812c = 1;
		level.var_446343dd = 0;
	}
	var_efeac590 = GetTime();
	if(isPlayer(params.eAttacker) && (level.var_fa73812c || 10000 < var_efeac590 - level.var_446343dd))
	{
		level.var_7f246cd7 notify("hash_2605e152", "generic_encourage");
		level.var_446343dd = var_efeac590;
		level.var_fa73812c = 0;
	}
}

