#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_accolades;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_level_start;
#using scripts\cp\cp_mi_cairo_ramses_nasser_interview;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_station_walk;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses_vtol_ride;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_raps;

#namespace namespace_bedc6a60;

/*
	Name: init
	Namespace: namespace_bedc6a60
	Checksum: 0x30B5C57F
	Offset: 0x1810
	Size: 0x55B
	Parameters: 2
	Flags: None
*/
function init(str_objective, var_74cd64bc)
{
	callback::remove_on_spawned(&level_start::function_e9d1564a);
	spawner::add_spawn_function_group("station_fight_scene_robot", "script_noteworthy", &function_3aea851b);
	spawner::add_spawn_function_group("station_fight_balcony_turret_steal_robot", "targetname", &function_28238a2a);
	spawner::add_spawn_function_group("balcony_station_fight_ai", "script_noteworthy", &namespace_391e4301::function_258b9bad, "end_balcony_shields", 1);
	spawner::add_spawn_function_group("balcony_robot_ai", "script_string", &function_23c641de);
	spawner::add_spawn_function_group("right_side_station_fight_ai", "script_noteworthy", &namespace_391e4301::function_258b9bad, "player_is_close", 1);
	spawner::add_spawn_function_group("right_side_station_fight_ai", "script_noteworthy", &function_157bd88d);
	spawner::add_spawn_function_group("rap_drive_to_point_explode", "script_noteworthy", &function_8d670bce);
	spawner::add_spawn_function_group("station_fight_raps_jump_raps", "targetname", &function_3e73806);
	spawner::add_spawn_function_group("actor_spawner_enemy_dps_robot_assault_ar", "classname", &function_46eb86a4);
	spawner::add_spawn_function_group("actor_spawner_enemy_dps_robot_cqb_shotgun", "classname", &function_46eb86a4);
	spawner::add_spawn_function_group("actor_spawner_enemy_dps_robot_suppressor_ar", "classname", &function_46eb86a4);
	spawner::add_spawn_function_group("actor_spawner_enemy_dps_robot_suppressor_mg", "classname", &function_46eb86a4);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level namespace_7434c6b7::function_bbd12ed2(0);
		level thread function_e5ed2910();
		level thread namespace_391e4301::function_e950228a();
		level scene::init("cin_ram_03_01_defend_1st_rapsintro");
		level thread function_91e74b85();
		level util::function_d8eaed3d(2, 1);
	}
	else
	{
		level thread util::function_d8eaed3d(2, 1);
	}
	level.var_85b298df = GetNode("khalil_station_fight_start_node", "targetname");
	SetEnableNode(level.var_85b298df, 0);
	function_dfedb0b8(str_objective, var_74cd64bc);
	if(scene::is_playing("cin_ram_02_04_interview_part04"))
	{
		scene::stop("cin_ram_02_04_interview_part04");
	}
	if(isdefined(level.BZM_RAMSESDialogue3Callback))
	{
		level thread [[level.BZM_RAMSESDialogue3Callback]]();
	}
	level thread scene::Play("cin_ram_02_04_interview_part04_end_loops");
	foreach(e_player in level.players)
	{
		e_player thread level_start::function_8ae96a69();
	}
	level thread scene::Play("p7_fxanim_cp_ramses_lotus_towers_hunters_swarm_bundle");
	namespace_38256252::function_6f52c808();
	namespace_38256252::function_7f657f7a();
	namespace_38256252::function_fec73937();
	namespace_38256252::function_a17fa88e();
	battlechatter::function_d9f49fba(1, "bc");
	main(var_74cd64bc);
	skipto::function_be8adfb8("defend_ramses_station");
}

/*
	Name: done
	Namespace: namespace_bedc6a60
	Checksum: 0xFCDA1BBC
	Offset: 0x1D78
	Size: 0x53
	Parameters: 4
	Flags: None
*/
function done(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_38256252::function_b13b2dae();
	namespace_38256252::function_ed5f8c84();
	namespace_38256252::function_6d6e6d0d();
}

/*
	Name: main
	Namespace: namespace_bedc6a60
	Checksum: 0x5D0E9FE4
	Offset: 0x1DD8
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function main(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_a2995f22(1);
		Array::thread_all(GetEntArray("ammo_cache", "script_noteworthy"), &namespace_16f9ecd3::function_14ec2d71);
	}
	util::wait_network_frame();
	level thread function_77e31f62();
	level thread function_588f1876();
	level thread function_8c26918a();
	clientfield::set("hide_station_miscmodels", 0);
	clientfield::set("delete_fxanim_fans", 1);
	function_bedc6a60();
}

/*
	Name: function_77e31f62
	Namespace: namespace_bedc6a60
	Checksum: 0x867AA43A
	Offset: 0x1EF0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_77e31f62()
{
	wait(0.05);
	level util::clientNotify("hosp_amb");
	level util::clientNotify("inv");
}

/*
	Name: function_3aea851b
	Namespace: namespace_bedc6a60
	Checksum: 0x19F0B0D
	Offset: 0x1F48
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3aea851b()
{
	/#
		Assert(isdefined(self.script_string), "Dev Block strings are not supported" + self.origin + "Dev Block strings are not supported");
	#/
	self scene::Play(self.script_string, self);
}

/*
	Name: function_bb2cfd0f
	Namespace: namespace_bedc6a60
	Checksum: 0x9A8B40DB
	Offset: 0x1FB0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_bb2cfd0f()
{
	self endon("death");
	s_start = struct::get(self.target, "targetname");
	var_305876e1 = spawn("script_model", s_start.origin);
	var_305876e1 SetModel("veh_t7_drone_raps");
	self function_9e35fc47(s_start, var_305876e1);
}

/*
	Name: function_9e35fc47
	Namespace: namespace_bedc6a60
	Checksum: 0x2E789E4F
	Offset: 0x2060
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_9e35fc47(s_start, var_305876e1)
{
	self endon("death");
	var_a0e1464d = struct::get_array(s_start.target, "targetname");
	s_end = var_a0e1464d[RandomInt(var_a0e1464d.size)];
	var_305876e1.origin = s_start.origin;
	var_305876e1.angles = s_start.angles;
	var_305876e1 moveto(s_end.origin, 1.1);
	var_305876e1 waittill("movedone");
	self.origin = var_305876e1.origin;
	self.angles = var_305876e1.angles;
	var_305876e1 delete();
}

/*
	Name: function_8d670bce
	Namespace: namespace_bedc6a60
	Checksum: 0xC153FA92
	Offset: 0x21A0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_8d670bce()
{
	self endon("death");
	if(isdefined(self.target))
	{
		v_goal = struct::get(self.target, "targetname").origin;
	}
	else
	{
		self SetGoal(level.activePlayers[0]);
		return;
	}
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self vehicle_ai::function_81b6f1ac();
	self SetNearGoalNotifyDist(128);
	self SetVehGoalPos(v_goal, 0, 1);
	self util::waittill_any_timeout(5, "goal", "near_goal", "force_goal", "change_state");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self ClearVehGoalPos();
	self vehicle_ai::function_efe9815e("combat");
}

/*
	Name: function_3e73806
	Namespace: namespace_bedc6a60
	Checksum: 0x8E066F1C
	Offset: 0x2340
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_3e73806()
{
	self endon("death");
	self ai::set_ignoreme(1);
	self.settings.detonation_distance = 32;
	self.settings.jump_chance = 1;
	if(isdefined(self.target))
	{
		var_83fa3476 = GetVehicleNode(self.target, "targetname");
		self vehicle::get_on_and_go_path(var_83fa3476);
	}
	else if(isdefined(self.script_int))
	{
		self function_be0dddf9(80);
	}
	self vehicle_ai::function_efe9815e("combat");
	self ai::set_ignoreme(0);
}

/*
	Name: function_be0dddf9
	Namespace: namespace_bedc6a60
	Checksum: 0x2D7C1D6
	Offset: 0x2458
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_be0dddf9(n_scale)
{
	self endon("death");
	v_direction = AnglesToForward(self.angles);
	v_force = v_direction * n_scale;
	self.is_jumping = 1;
	self LaunchVehicle(v_force, self.origin + VectorScale((0, 0, -1), 4));
	/#
		Assert(isdefined(self.script_int), "Dev Block strings are not supported" + self.origin + "Dev Block strings are not supported");
	#/
	wait(self.script_int);
	self.is_jumping = 0;
}

/*
	Name: function_28238a2a
	Namespace: namespace_bedc6a60
	Checksum: 0xFA396E44
	Offset: 0x2538
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_28238a2a()
{
	self.goalRadius = 96;
	vh_turret = GetVehicleArray("station_capture_turret", "script_noteworthy");
	vh_turret = vh_turret[0];
	self endon("death");
	self SetGoal(vh_turret.origin, 1);
	self waittill("goal");
	vh_turret thread function_dc5930d5(self);
	self function_421b19bb(vh_turret);
}

/*
	Name: function_dc5930d5
	Namespace: namespace_bedc6a60
	Checksum: 0x15253519
	Offset: 0x2608
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_dc5930d5(ai_gunner)
{
	self endon("death");
	self.team = "axis";
	ai_gunner waittill("death");
	ai_gunner Unlink();
	self.team = "allies";
}

/*
	Name: function_421b19bb
	Namespace: namespace_bedc6a60
	Checksum: 0x65A0184
	Offset: 0x2670
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_421b19bb(vh_turret)
{
	self endon("death");
	var_2dc8ad57 = GetEnt("station_fight_enemy_balcony_goaltrig", "targetname");
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self ForceTeleport(vh_turret.origin, vh_turret.angles, 1);
	self LinkTo(vh_turret);
	vh_turret waittill("death");
	self ClearForcedGoal();
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	self Unlink();
	self.goalRadius = 1024;
	self SetGoal(var_2dc8ad57);
}

/*
	Name: function_ffd0e6b9
	Namespace: namespace_bedc6a60
	Checksum: 0x99EC1590
	Offset: 0x27C8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_ffd0e6b9()
{
}

/*
	Name: function_dfedb0b8
	Namespace: namespace_bedc6a60
	Checksum: 0x19EA4317
	Offset: 0x27D8
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function function_dfedb0b8(str_objective, var_74cd64bc)
{
	level.var_2fd26037 = util::function_740f8516("hendricks");
	level.var_9db406db = util::function_740f8516("khalil");
	level.var_7a9855f3 = util::function_740f8516("rachel");
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_7a9855f3 ai::set_ignoreall(1);
	level.var_7a9855f3 ai::set_ignoreme(1);
	level.var_2fd26037.goalRadius = 32;
	level.var_9db406db.goalRadius = 32;
	level.var_7a9855f3.goalRadius = 32;
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin);
	if(var_74cd64bc)
	{
		function_c052d16e();
	}
}

/*
	Name: function_c052d16e
	Namespace: namespace_bedc6a60
	Checksum: 0x371DE942
	Offset: 0x2938
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_c052d16e()
{
	var_f18b8368 = struct::get("defend_ramses_station_hendricks_start_spot", "targetname");
	var_5c2809be = struct::get("defend_ramses_station_khalil_start_spot", "targetname");
	level.var_2fd26037 ForceTeleport(var_f18b8368.origin, var_f18b8368.angles, 1);
	level.var_9db406db ForceTeleport(var_5c2809be.origin, var_5c2809be.angles, 1);
}

/*
	Name: init_turrets
	Namespace: namespace_bedc6a60
	Checksum: 0xC92E7F58
	Offset: 0x2A10
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function init_turrets()
{
	var_53acb497 = GetEntArray("station_fight_turret", "targetname");
	Array::thread_all(var_53acb497, &function_785ac501);
}

/*
	Name: function_785ac501
	Namespace: namespace_bedc6a60
	Checksum: 0x3DF4CD7E
	Offset: 0x2A70
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_785ac501()
{
	s_obj = struct::get(self.script_string, "targetname");
	t_obj = spawn("trigger_radius", self.origin, 0, s_obj.radius, 128);
	t_obj.script_objective = "vtol_ride";
	e_turret = self;
	self thread namespace_391e4301::function_b0ef4ae7(s_obj);
	level waittill("hash_eae489c0");
	e_turret function_6727bc7f(s_obj, t_obj);
}

/*
	Name: function_b87ae655
	Namespace: namespace_bedc6a60
	Checksum: 0x1B2A092A
	Offset: 0x2B50
	Size: 0xEF
	Parameters: 2
	Flags: None
*/
function function_b87ae655(s_obj, t_obj)
{
	vh_turret = GetEnt("station_fight_turret_respawn", "targetname");
	vh_turret.team = "allies";
	m_turret = util::spawn_model(self.model, self.origin, self.angles);
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
	vh_turret thread function_2217e3ee(m_turret, s_obj, t_obj);
	return m_turret;
}

/*
	Name: function_2217e3ee
	Namespace: namespace_bedc6a60
	Checksum: 0x6BDEB3BE
	Offset: 0x2C48
	Size: 0xE3
	Parameters: 3
	Flags: None
*/
function function_2217e3ee(m_turret, s_obj, t_obj)
{
	level endon("hash_b6718d61");
	level flag::wait_till("station_fight_body_pull_scene_completed");
	self.origin = m_turret.origin;
	self.angles = m_turret.angles;
	m_turret delete();
	self thread namespace_391e4301::function_b0ef4ae7(s_obj);
	if(!level flag::get("station_fight_completed"))
	{
		self thread function_6727bc7f(s_obj, t_obj);
	}
}

/*
	Name: function_bedc6a60
	Namespace: namespace_bedc6a60
	Checksum: 0x3A99E100
	Offset: 0x2D38
	Size: 0x5A3
	Parameters: 0
	Flags: None
*/
function function_bedc6a60()
{
	var_1bd4d1f2 = GetEnt("station_fight_raps_jump", "targetname");
	var_1bd4d1f2 namespace_391e4301::function_486f25d(2, 1);
	spawn_manager::enable("sm_initial_balcony_spawn");
	spawn_manager::enable("sm_balcony_robots");
	level thread namespace_391e4301::function_8afb19cc("sm_balcony_robots", "sm_initial_balcony_spawn");
	level waittill("hash_3e9d30d3");
	spawn_manager::enable("sm_initial_recovery_right_spawn");
	level thread spawner::simple_spawn("custom_raps");
	level waittill("hash_aeb6f9d9");
	util::clear_streamer_hint();
	trigger::wait_or_timeout(20, "trigger_ceiling_collapse");
	level notify("hash_1ca7165");
	level thread function_aa370a40();
	spawn_manager::enable("station_fight_raps_jump");
	wait(3);
	spawn_manager::enable("sm_ceiling_fight_server_robots");
	spawn_manager::enable("sm_server_fights_ceiling_ally");
	level thread namespace_391e4301::function_8afb19cc("sm_ceiling_fight_server_robots", "sm_server_fights_ceiling_ally");
	wait(3);
	level thread function_d44417a0();
	util::wait_network_frame();
	level thread function_cbcb2bb();
	util::wait_network_frame();
	level thread function_e59f097a();
	util::wait_network_frame();
	spawn_manager::enable("sm_right_across_gap_human");
	level thread function_21130bd8("sm_right_across_gap_human");
	level thread function_934468e4("sm_right_across_gap_human");
	wait(10);
	spawn_manager::enable("sm_rap_trickle");
	function_917e4a1b();
	spawn_manager::function_72e3dd35("station_fight_wave1_robots_left");
	spawn_manager::function_72e3dd35("station_fight_wave1_robots_right");
	spawn_manager::function_72e3dd35("sm_ceiling_fight_server_robots");
	spawn_manager::function_72e3dd35("station_fight_raps_jump");
	spawn_manager::function_72e3dd35("sm_balcony_robots");
	level flag::wait_till("station_phalanx_dead");
	level flag::wait_till("station_right_phalanx_dead");
	level flag::wait_till("station_center_phalanx_dead");
	if(!level flag::get("drop_pod_opened_and_spawned"))
	{
		trigger::use("trig_open_pod", "targetname");
		wait(1);
	}
	level spawner::waittill_ai_group_cleared("droppod_ai");
	var_262d783a = spawn_manager::get_ai("sm_rap_trickle");
	spawn_manager::kill("sm_rap_trickle");
	foreach(var_388753bb in var_262d783a)
	{
		var_388753bb raps::detonate();
	}
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	level flag::set("station_fight_completed");
	if(isdefined(level.BZM_RAMSESDialogue3_1Callback))
	{
		level thread [[level.BZM_RAMSESDialogue3_1Callback]]();
	}
	battlechatter::function_d9f49fba(0, "bc");
	objectives::complete("cp_level_ramses_defend_station");
	level thread util::function_d8eaed3d(3);
	level thread function_52111922();
	function_c01d9b2();
	level thread function_1d0e7c11();
}

/*
	Name: function_91e74b85
	Namespace: namespace_bedc6a60
	Checksum: 0x73B79017
	Offset: 0x32E8
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_91e74b85()
{
	level flag::wait_till("all_players_connected");
	level flag::init("station_fight_started");
	spawner::add_spawn_function_group("initial_station_fight_ai", "script_noteworthy", &function_d0f8bc28, "station_fight_started");
	spawner::add_spawn_function_group("initial_station_fight_ai", "script_noteworthy", &namespace_391e4301::function_258b9bad, "ceiling_collapse_complete", 1);
	spawn_manager::enable("station_fight_wave1_robots_left");
	spawn_manager::enable("sm_initial_arch_spawn_left");
	spawn_manager::enable("station_fight_wave1_robots_right");
	spawn_manager::enable("sm_initial_arch_spawn_right");
	spawn_manager::enable("sm_initial_recovery_left_spawn");
	level thread function_97cdc17e();
	level flag::wait_till("station_fight_started");
	level thread namespace_391e4301::function_8afb19cc("station_fight_wave1_robots_left", "sm_initial_arch_spawn_left");
	level thread namespace_391e4301::function_8afb19cc("station_fight_wave1_robots_right", "sm_initial_arch_spawn_right");
	level thread function_845b69ec("sm_initial_arch_spawn_right", "sm_initial_arch_spawn_left");
}

/*
	Name: function_d0f8bc28
	Namespace: namespace_bedc6a60
	Checksum: 0xD1377F0C
	Offset: 0x34D8
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_d0f8bc28(str_flag)
{
	self endon("death");
	if(isdefined(self.target))
	{
		e_goal = GetEnt(self.target, "targetname");
		if(!isdefined(e_goal))
		{
			nd_goal = GetNode(self.target, "targetname");
		}
	}
	self SetGoal(self.origin, 0, 32);
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	level flag::wait_till(str_flag);
	if(isdefined(e_goal))
	{
		self SetGoal(e_goal);
	}
	else if(isdefined(nd_goal))
	{
		self SetGoal(nd_goal);
	}
	else
	{
		self.goalRadius = 512;
	}
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_52111922
	Namespace: namespace_bedc6a60
	Checksum: 0xF742B9DF
	Offset: 0x3668
	Size: 0x1A5
	Parameters: 0
	Flags: None
*/
function function_52111922()
{
	a_allies = GetAITeamArray("allies");
	var_3f8fb967 = Array::exclude(a_allies, level.heroes);
	var_3f8fb967 = Array::remove_dead(var_3f8fb967);
	var_1d1c81b8 = GetNodeArray("station_fight_end_patrol", "targetname");
	if(var_1d1c81b8.size > var_3f8fb967.size)
	{
		for(i = 0; i < var_3f8fb967.size; i++)
		{
			var_3f8fb967[i].goalRadius = 32;
			var_3f8fb967[i] ai::set_ignoreall(1);
			var_3f8fb967[i] ai::set_behavior_attribute("patrol", 1);
			var_3f8fb967[i] ai::set_behavior_attribute("disablearrivals", 1);
			var_3f8fb967[i] SetGoal(var_1d1c81b8[i], 1);
			wait(RandomFloatRange(0.25, 1));
		}
	}
}

/*
	Name: function_917e4a1b
	Namespace: namespace_bedc6a60
	Checksum: 0xA7765D42
	Offset: 0x3818
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_917e4a1b()
{
	do
	{
		wait(0.5);
		a_enemies = GetAITeamArray("axis");
	}
	while(!a_enemies.size > 3);
	foreach(ai in a_enemies)
	{
		ai thread function_d02622d1();
	}
}

/*
	Name: function_d02622d1
	Namespace: namespace_bedc6a60
	Checksum: 0xED2147F2
	Offset: 0x38E8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_d02622d1()
{
	self endon("death");
	do
	{
		foreach(player in level.activePlayers)
		{
			if(!player util::is_player_looking_at(self.origin) && Distance(self.origin, util::get_closest_player(self.origin, "allies").origin) > 200)
			{
				var_d8c90b1a = 1;
			}
			wait(0.05);
		}
		wait(0.05);
	}
	while(!!isdefined(var_d8c90b1a));
	self util::stop_magic_bullet_shield();
	self kill();
}

/*
	Name: function_157bd88d
	Namespace: namespace_bedc6a60
	Checksum: 0xDE990E9D
	Offset: 0x3A40
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_157bd88d()
{
	self endon("death");
	if(self.targetname == "right_across_gap_human")
	{
		level flag::wait_till("player_right_side_gap");
	}
	else
	{
		level flag::wait_till("player_right_side");
	}
	self notify("hash_56ab4b64");
}

/*
	Name: function_23c641de
	Namespace: namespace_bedc6a60
	Checksum: 0xB248F3AA
	Offset: 0x3AC0
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_23c641de()
{
	self endon("death");
	while(isdefined(level.var_9db406db) && Distance(self.origin, level.var_9db406db.origin) > 128)
	{
		wait(0.25);
	}
	self notify("hash_7da9c1ae");
}

/*
	Name: function_46eb86a4
	Namespace: namespace_bedc6a60
	Checksum: 0x2AC1E0B4
	Offset: 0x3B30
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_46eb86a4()
{
	self endon("death");
	level flag::wait_till("ceiling_collapse_complete");
	while(1)
	{
		self waittill("failed_melee_mbs", e_target);
		if(e_target == level.var_9db406db || e_target == level.var_2fd26037)
		{
			self notify("hash_9b484394");
		}
		else if(e_target != level.var_9db406db && e_target != level.var_2fd26037 && !isPlayer(e_target))
		{
			e_target notify("hash_9b484394");
		}
	}
}

/*
	Name: function_4ebb88f6
	Namespace: namespace_bedc6a60
	Checksum: 0xCBA128F5
	Offset: 0x3C08
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_4ebb88f6()
{
	spawner::add_spawn_function_group("robot_intro_robot", "targetname", &ai::set_ignoreme, 1);
	spawner::add_spawn_function_group("robot_intro_robot", "targetname", &util::magic_bullet_shield);
	level scene::init("cin_ram_03_02_defend_vign_robotintro");
	trigger::wait_till("trig_robot_intro_vignette");
	e_robot = GetEnt("robot_intro_robot_ai", "targetname");
	e_soldier = GetEnt("robot_intro_guy_ai", "targetname");
	e_robot util::stop_magic_bullet_shield();
	level thread scene::Play("cin_ram_03_02_defend_vign_robotintro");
	e_robot thread function_ad9d7c7a(e_soldier);
	level util::waittill_notify_or_timeout("cin_ram_03_02_defend_vign_robotintro_done", 7);
	if(isalive(e_robot))
	{
		e_robot ai::set_behavior_attribute("move_mode", "rusher");
		e_robot ai::set_ignoreme(0);
	}
}

/*
	Name: function_ad9d7c7a
	Namespace: namespace_bedc6a60
	Checksum: 0xF9BAF995
	Offset: 0x3DD8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_ad9d7c7a(e_soldier)
{
	level endon("hash_293342ef");
	self waittill("death");
	scene::stop("cin_ram_03_02_defend_vign_robotintro");
	if(isalive(e_soldier))
	{
		e_soldier StartRagdoll();
		e_soldier util::stop_magic_bullet_shield();
		e_soldier kill();
	}
}

/*
	Name: function_aa370a40
	Namespace: namespace_bedc6a60
	Checksum: 0x742D1185
	Offset: 0x3E80
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_aa370a40()
{
	trigger::wait_till("trig_open_pod", "targetname");
	savegame::function_5d2cdd99();
	level thread scene::Play("p7_fxanim_cp_ramses_station_ceiling_vtol_bundle");
	level flag::set("drop_pod_opened_and_spawned");
	level thread function_697c5b58();
	var_2ef9d306 = GetEnt("station_ceiling_troopcarrier", "targetname");
	var_2ef9d306 connectpaths();
	wait(0.2);
	var_f10bb7b8 = GetEnt("vtol_navmesh_cutter", "targetname");
	var_f10bb7b8 disconnectpaths();
	wait(0.5);
}

/*
	Name: function_d44417a0
	Namespace: namespace_bedc6a60
	Checksum: 0x73C7290D
	Offset: 0x3FA8
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_d44417a0()
{
	level flag::init("station_phalanx_dead");
	v_start_position = struct::get("station_phalanx_start", "targetname").origin;
	var_e2ea1b3f = struct::get("station_phalanx_end", "targetname").origin;
	if(level.players.size == 1)
	{
		n_ai_count = 3;
	}
	else
	{
		n_ai_count = level.players.size + 2;
	}
	function_9b385ca5();
	var_a3decff = RobotPhalanx;
	Initialize(var_a3decff, "phalanx_column_right", v_start_position, var_e2ea1b3f, 1);
	robots = ArrayCombine(ArrayCombine(var_a3decff.tier1Robots_, var_a3decff.tier2Robots_, 0, 0), var_a3decff.tier3Robots_, 0, 0);
	Array::wait_till(robots, "death");
	level flag::set("station_phalanx_dead");
}

/*
	Name: function_cbcb2bb
	Namespace: namespace_bedc6a60
	Checksum: 0x65A64EEE
	Offset: 0x4160
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_cbcb2bb()
{
	level flag::init("station_right_phalanx_dead");
	v_start_position = struct::get("station_right_phalanx_start", "targetname").origin;
	var_e2ea1b3f = struct::get("station_right_phalanx_end", "targetname").origin;
	function_9b385ca5();
	var_a3decff = RobotPhalanx;
	Initialize(var_a3decff, "phanalx_wedge", v_start_position, var_e2ea1b3f, 2);
	a_robots = ArrayCombine(ArrayCombine(var_a3decff.tier1Robots_, var_a3decff.tier2Robots_, 0, 0), var_a3decff.tier3Robots_, 0, 0);
	foreach(e_robot in a_robots)
	{
		e_robot thread namespace_391e4301::function_258b9bad("gap_soldiers_dead", 1, "station_right_phalanx_scatter");
		e_robot thread namespace_391e4301::function_258b9bad("player_is_close", 1, "station_right_phalanx_scatter");
	}
	level thread function_3da9f438(var_e2ea1b3f);
	var_a3decff thread function_32800c59("station_right_phalanx_scatter");
	Array::wait_till(a_robots, "death");
	level flag::set("station_right_phalanx_dead");
}

/*
	Name: function_e59f097a
	Namespace: namespace_bedc6a60
	Checksum: 0x917A6FB2
	Offset: 0x43D8
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_e59f097a()
{
	level flag::init("station_center_phalanx_dead");
	v_start_position = struct::get("station_center_phalanx_start", "targetname").origin;
	var_e2ea1b3f = struct::get("station_center_phalanx_end", "targetname").origin;
	if(level.players.size < 3)
	{
		n_ai_count = 4;
	}
	else
	{
		n_ai_count = level.players.size + 2;
	}
	function_9b385ca5();
	var_a3decff = RobotPhalanx;
	Initialize(var_a3decff, "phalanx_column_right", v_start_position, var_e2ea1b3f, 1);
	var_a3decff thread function_a6f57c70(20);
	a_robots = ArrayCombine(ArrayCombine(var_a3decff.tier1Robots_, var_a3decff.tier2Robots_, 0, 0), var_a3decff.tier3Robots_, 0, 0);
	Array::wait_till(a_robots, "death");
	level flag::set("station_center_phalanx_dead");
}

/*
	Name: function_32800c59
	Namespace: namespace_bedc6a60
	Checksum: 0xBB1DEC6B
	Offset: 0x45A8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_32800c59(var_ed2ece1e)
{
	level waittill(var_ed2ece1e);
	self RobotPhalanx::ScatterPhalanx();
}

/*
	Name: function_a6f57c70
	Namespace: namespace_bedc6a60
	Checksum: 0x70CF0072
	Offset: 0x45E0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a6f57c70(n_delay)
{
	level endon("hash_fd4ef89f");
	wait(n_delay);
	if(isdefined(self))
	{
		self RobotPhalanx::ScatterPhalanx();
	}
}

/*
	Name: function_3da9f438
	Namespace: namespace_bedc6a60
	Checksum: 0xEF3490A1
	Offset: 0x4628
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_3da9f438(var_3c23ee9a)
{
	level endon("hash_e02eae28");
	do
	{
		foreach(player in level.activePlayers)
		{
			if(isdefined(player) && player util::is_player_looking_at(var_3c23ee9a))
			{
				if(Distance(player.origin, var_3c23ee9a) < 800)
				{
					level notify("hash_56ab4b64");
					level notify("hash_37b64350");
					return;
				}
			}
			wait(0.05);
		}
		wait(0.1);
	}
	while(!1);
}

/*
	Name: function_21130bd8
	Namespace: namespace_bedc6a60
	Checksum: 0xD6E2BE10
	Offset: 0x4740
	Size: 0x71
	Parameters: 1
	Flags: None
*/
function function_21130bd8(var_5159fb67)
{
	level endon("hash_e02eae28");
	do
	{
		wait(0.5);
		var_46c58ac8 = spawn_manager::get_ai(var_5159fb67);
	}
	while(!(var_46c58ac8.size > 0 || spawn_manager::is_enabled(var_5159fb67)));
	level notify("hash_bc33b894");
}

/*
	Name: function_934468e4
	Namespace: namespace_bedc6a60
	Checksum: 0x4D152FF8
	Offset: 0x47C0
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_934468e4(var_5159fb67)
{
	level endon("hash_bc33b894");
	level util::waittill_any("station_right_phalanx_dead", "station_right_phalanx_scatter");
	var_46c58ac8 = spawn_manager::get_ai(var_5159fb67);
	foreach(var_fbc8888 in var_46c58ac8)
	{
		var_fbc8888.goalRadius = 1024;
	}
}

/*
	Name: function_f117c7bd
	Namespace: namespace_bedc6a60
	Checksum: 0xC04C93C8
	Offset: 0x48B0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_f117c7bd(str_spawn_manager)
{
	var_1957a2a5 = spawn_manager::get_ai("station_fight_wave1_robots_left");
	Array::thread_all(var_1957a2a5, &function_44fa8311);
}

/*
	Name: function_44fa8311
	Namespace: namespace_bedc6a60
	Checksum: 0x6BC9C7F1
	Offset: 0x4910
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_44fa8311()
{
	self endon("death");
	wait(RandomFloatRange(0.15, 0.5));
	util::stop_magic_bullet_shield(self);
	self kill();
}

/*
	Name: function_697c5b58
	Namespace: namespace_bedc6a60
	Checksum: 0xE3AB4164
	Offset: 0x4978
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_697c5b58()
{
	var_c4152dcd = spawner::simple_spawn("droppod_robot", &function_658e0c1a);
	wait(0.5);
	ArraySortClosest(var_c4152dcd, struct::get("drop_pod_fire_loc").origin);
	foreach(e_robot in var_c4152dcd)
	{
		if(isalive(e_robot))
		{
			e_robot ai::set_ignoreall(0);
			e_robot ai::set_ignoreme(0);
			e_robot ai::set_behavior_attribute("move_mode", "rusher");
			e_robot notify("hash_8402d7bd");
			e_robot.var_69dd5d62 = undefined;
			wait(1);
		}
	}
	Array::wait_till(var_c4152dcd, "death");
	GetEnt("drop_pod_fire_clip", "targetname") MoveZ(100, 0.05);
}

/*
	Name: function_658e0c1a
	Namespace: namespace_bedc6a60
	Checksum: 0x6E855605
	Offset: 0x4B58
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_658e0c1a()
{
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.var_69dd5d62 = 1;
	self namespace_391e4301::function_258b9bad("out_of_pod", 1);
}

/*
	Name: function_588f1876
	Namespace: namespace_bedc6a60
	Checksum: 0x80681524
	Offset: 0x4BC8
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_588f1876()
{
	level waittill("hash_aeb6f9d9");
	level.var_2fd26037 ai::set_ignoreall(0);
	level thread function_7ba3e35a();
	spawner::waittill_ai_group_ai_count("custom_raps", 0);
	var_2eae89db = struct::get("cin_gen_melee_hendricks_stomp_gibbedrobot", "scriptbundlename");
	level.var_2fd26037 SetGoal(var_2eae89db.origin, 0, 128);
	level flag::wait_till("pod_hits_floor");
	level.var_2fd26037 SetHighDetail(0);
	while(Distance(level.var_2fd26037.origin, var_2eae89db.origin) > 600 && !level flag::get("drop_pod_opened_and_spawned"))
	{
		wait(0.25);
	}
	if(!level flag::get("drop_pod_opened_and_spawned"))
	{
		scene::Play("cin_gen_melee_hendricks_stomp_gibbedrobot");
	}
	else if(scene::is_active("cin_gen_melee_hendricks_stomp_gibbedrobot"))
	{
		scene::stop("cin_gen_melee_hendricks_stomp_gibbedrobot");
	}
	var_b200e7a3 = GetEnt("station_fight_allies_near_goal", "targetname");
	level.var_2fd26037 SetGoal(var_b200e7a3);
	a_allies = GetActorArray("recovery_room_allies", "script_aigroup");
	foreach(ai in a_allies)
	{
		ai SetGoal(var_b200e7a3, 1);
	}
	level flag::wait_till("drop_pod_opened_and_spawned");
	level.var_2fd26037 SetGoal(GetEnt("station_fight_drop_pod_goal", "targetname"));
	level flag::wait_till("station_fight_completed");
	level.var_2fd26037 ai::set_behavior_attribute("disablesprint", 1);
	level scene::Play("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks");
}

/*
	Name: function_845b69ec
	Namespace: namespace_bedc6a60
	Checksum: 0x53C2E490
	Offset: 0x4F50
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_845b69ec(var_b5a8817e, var_8fa60715)
{
	level endon("hash_1ca7165");
	trigger::wait_till("trig_start_rap_intro", "targetname");
	wait(15);
	a_soldiers = spawn_manager::get_ai(var_b5a8817e);
	a_soldiers = ArrayCombine(a_soldiers, spawn_manager::get_ai(var_8fa60715), 0, 0);
	a_soldiers = Array::randomize(a_soldiers);
	foreach(e_guy in a_soldiers)
	{
		if(isdefined(e_guy))
		{
			e_guy notify("hash_9b484394");
		}
		wait(2);
	}
}

/*
	Name: function_7ba3e35a
	Namespace: namespace_bedc6a60
	Checksum: 0x3300B28C
	Offset: 0x5098
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_7ba3e35a()
{
	SetEnableNode(level.var_85b298df, 1);
	level.var_9db406db SetGoal(level.var_85b298df, 0, 64);
	level.var_85b298df = undefined;
	level flag::wait_till("ceiling_collapse_complete");
	level thread scene::Play("cin_ram_03_03_defend_vign_balconybash_khalil_init");
	level waittill("hash_40171b94");
	if(scene::is_playing("cin_ram_03_03_defend_vign_balconybash_khalil_init"))
	{
		level scene::stop("cin_ram_03_03_defend_vign_balconybash_khalil_init");
	}
	level scene::Play("cin_ram_03_03_defend_vign_balconybash");
	e_goalvolume = GetEnt("initial_balcony_friendly_volume", "targetname");
	level.var_9db406db SetGoal(e_goalvolume);
	spawn_manager::function_72e3dd35("sm_balcony_robots");
	e_goalvolume = GetEnt("second_balcony_friendly_volume", "targetname");
	level.var_9db406db SetGoal(e_goalvolume);
	level flag::wait_till("drop_pod_opened_and_spawned");
	level.var_9db406db SetGoal(GetNode("khalil_balcony_platform_node", "targetname"), 1);
	level flag::wait_till("station_fight_completed");
	level.var_9db406db ai::set_behavior_attribute("disablesprint", 1);
	scene::Play("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil");
}

/*
	Name: function_1a2278be
	Namespace: namespace_bedc6a60
	Checksum: 0x2215521A
	Offset: 0x5300
	Size: 0x1D3
	Parameters: 1
	Flags: None
*/
function function_1a2278be(a_ents)
{
	e_robot = a_ents["balcony_bash_robot"];
	e_soldier = a_ents["balcony_bash_soldier"];
	e_soldier ai::set_ignoreme(1);
	e_soldier thread function_3ee9fc92();
	e_robot.goalRadius = 32;
	e_robot ai::set_ignoreall(1);
	e_robot ai::set_ignoreme(1);
	util::magic_bullet_shield(e_robot);
	e_robot SetGoal(e_robot.origin, 1);
	level waittill("hash_6daeefef");
	e_soldier ai::set_ignoreme(0);
	util::stop_magic_bullet_shield(e_robot);
	e_robot waittill("death");
	scene::stop("cin_ram_03_03_defend_vign_balconybash");
	if(isdefined(e_soldier) && isalive(e_soldier) && e_soldier flag::get("past_ragdoll_frame"))
	{
		e_soldier StartRagdoll();
		e_soldier kill();
	}
}

/*
	Name: function_3ee9fc92
	Namespace: namespace_bedc6a60
	Checksum: 0x37963E44
	Offset: 0x54E0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3ee9fc92()
{
	self flag::init("past_ragdoll_frame");
	self endon("death");
	self waittill("hash_8368b9dc");
	self flag::set("past_ragdoll_frame");
}

/*
	Name: function_c0443db4
	Namespace: namespace_bedc6a60
	Checksum: 0x153151BF
	Offset: 0x5548
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c0443db4(a_ents)
{
	e_robot = a_ents["stomped_robot"];
	if(isalive(e_robot))
	{
		e_robot ai::set_ignoreme(1);
		e_robot DisableAimAssist();
	}
}

/*
	Name: function_8c26918a
	Namespace: namespace_bedc6a60
	Checksum: 0x788AC3A7
	Offset: 0x55C8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_8c26918a()
{
	scene::add_scene_func("cin_gen_melee_hendricks_stomp_gibbedrobot", &function_c0443db4, "init");
	scene::init("cin_gen_melee_hendricks_stomp_gibbedrobot");
	level thread function_38729c16();
	level thread function_cb0ba609();
	function_2674a7fb();
	level notify("hash_e14845f6");
	level thread namespace_e4c0c552::function_f444bf8e();
	level flag::wait_till("station_fight_completed");
	level thread namespace_e4c0c552::function_9bda9447();
}

/*
	Name: function_38729c16
	Namespace: namespace_bedc6a60
	Checksum: 0xC1C1C11C
	Offset: 0x56B8
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_38729c16()
{
	level thread function_98b76328();
	level thread function_bf01a134();
	level thread function_370bd9a9();
	scene::add_scene_func("cin_ram_03_01_defend_1st_rapsintro", &function_d10a6306, "play");
	scene::add_scene_func("cin_ram_03_01_defend_1st_rapsintro", &function_3b3f857a, "done");
	namespace_391e4301::function_ac2b4535("cin_ram_03_01_defend_1st_rapsintro", "defend_ramses_station");
	foreach(player in level.players)
	{
		player.ignoreme = 1;
	}
	GetEnt("raps_intro_door_clip", "targetname") delete();
	level.var_7a9855f3 SetHighDetail(0);
	level.var_9db406db SetHighDetail(0);
	level flag::set("station_fight_started");
	level scene::Play("cin_ram_03_01_defend_1st_rapsintro", level.var_be0fc6c8);
	level flag::set("raps_intro_done");
	objectives::set("cp_level_ramses_defend_station");
	wait(1.5);
	foreach(player in level.players)
	{
		player.ignoreme = 0;
	}
	savegame::function_5d2cdd99();
}

/*
	Name: function_97cdc17e
	Namespace: namespace_bedc6a60
	Checksum: 0xE3762655
	Offset: 0x5990
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_97cdc17e()
{
	var_5d7a0794 = spawner::simple_spawn_single("station_fight_wounded_guy");
	scene::init("cin_gen_wounded_last_stand_guy01", var_5d7a0794);
	var_5d7a0794 = spawner::simple_spawn_single("station_fight_wounded_guy");
	scene::init("cin_gen_wounded_last_stand_guy02", var_5d7a0794);
	var_5d7a0794 = spawner::simple_spawn_single("station_fight_wounded_guy");
	scene::init("cin_gen_wounded_last_stand_guy03", var_5d7a0794);
	level flag::wait_till("station_fight_started");
	level thread scene::Play("cin_gen_wounded_last_stand_guy02");
	level waittill("hash_aeb6f9d9");
	level thread scene::Play("cin_gen_wounded_last_stand_guy01");
	level thread scene::Play("cin_gen_wounded_last_stand_guy03");
}

/*
	Name: function_d10a6306
	Namespace: namespace_bedc6a60
	Checksum: 0x7D93FE9F
	Offset: 0x5AD8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_d10a6306(a_ents)
{
	level waittill("hash_581ac182");
	e_soldier = a_ents["rap_intro_guy"];
	e_soldier SetModel("c_ega_soldier_3_pincushion_armoff_fb");
}

/*
	Name: function_3b3f857a
	Namespace: namespace_bedc6a60
	Checksum: 0x23387351
	Offset: 0x5B30
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_3b3f857a(a_ents)
{
	a_ents["rap_intro_guy"] clientfield::increment("hide_graphic_content", 1);
	a_ents["arm"] clientfield::increment("hide_graphic_content", 1);
	a_ents["shrapnel02"] clientfield::increment("hide_graphic_content", 1);
	a_ents["shrapnel03"] clientfield::increment("hide_graphic_content", 1);
	a_ents["shrapnel04"] clientfield::increment("hide_graphic_content", 1);
	a_ents["shrapnel06"] clientfield::increment("hide_graphic_content", 1);
	a_ents["shrapnel07"] clientfield::increment("hide_graphic_content", 1);
}

/*
	Name: function_896cfa4c
	Namespace: namespace_bedc6a60
	Checksum: 0xC9D0DF67
	Offset: 0x5C98
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_896cfa4c(a_ents)
{
	util::wait_network_frame();
	foreach(ent in a_ents)
	{
		ent clientfield::increment("hide_graphic_content", 1);
	}
}

/*
	Name: function_370bd9a9
	Namespace: namespace_bedc6a60
	Checksum: 0x1EAFC909
	Offset: 0x5D50
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_370bd9a9()
{
	level waittill("hash_646da0a");
	level thread function_31000a81();
	level waittill("hash_646da0a");
	level thread function_31000a81();
}

/*
	Name: function_31000a81
	Namespace: namespace_bedc6a60
	Checksum: 0xFCD4FC6
	Offset: 0x5DA0
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_31000a81()
{
	foreach(e_player in level.players)
	{
		if(e_player.current_scene === "cin_ram_03_01_defend_1st_rapsintro")
		{
			e_player clientfield::increment_to_player("rap_blood_on_player");
		}
	}
}

/*
	Name: function_98b76328
	Namespace: namespace_bedc6a60
	Checksum: 0xE14E91AE
	Offset: 0x5E58
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_98b76328()
{
	level waittill("hash_f532337c");
	level util::clientNotify("dro");
}

/*
	Name: function_bf01a134
	Namespace: namespace_bedc6a60
	Checksum: 0xB71D00BE
	Offset: 0x5E90
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_bf01a134()
{
	level waittill("hash_ecd64ab9");
	level scene::Play("p7_fxanim_cp_ramses_raps_explosion_bundle");
}

/*
	Name: function_2674a7fb
	Namespace: namespace_bedc6a60
	Checksum: 0x8A65D407
	Offset: 0x5EC8
	Size: 0x1A5
	Parameters: 0
	Flags: None
*/
function function_2674a7fb()
{
	scene::add_scene_func("p7_fxanim_cp_ramses_station_ceiling_vtol_bundle", &function_e4e450c1, "init");
	scene::add_scene_func("p7_fxanim_cp_ramses_station_ceiling_bundle", &function_9c5046ad, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_station_ceiling_bundle", &function_316c9fe0, "play");
	scene::add_scene_func("p7_fxanim_cp_ramses_station_ceiling_bundle", &function_f117c7bd, "done");
	level scene::init("p7_fxanim_cp_ramses_station_ceiling_bundle");
	level waittill("hash_1ca7165");
	level thread function_fea402e8();
	level thread function_a97a010f();
	level thread function_16c6b95d();
	level function_bded1c1e();
	level flag::set("ceiling_collapse_complete");
	level scene::init("p_ramses_lift_wing_blockage");
	level notify("hash_eae489c0");
	level notify("hash_d758e82");
}

/*
	Name: function_16c6b95d
	Namespace: namespace_bedc6a60
	Checksum: 0x2DDE91DE
	Offset: 0x6078
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_16c6b95d()
{
	level waittill("hash_16c6b95d");
	exploder::exploder("ceiling_colapse");
}

/*
	Name: function_14b2c542
	Namespace: namespace_bedc6a60
	Checksum: 0x70AE380B
	Offset: 0x60B0
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_14b2c542(a_ents)
{
	a_structs = struct::get_array("station_phys_pulse", "targetname");
	foreach(struct in a_structs)
	{
		PhysicsJolt(struct.origin, 255, 1, math::random_vector(20));
		wait(0.05);
	}
}

/*
	Name: function_bded1c1e
	Namespace: namespace_bedc6a60
	Checksum: 0xC24974F5
	Offset: 0x61A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_bded1c1e()
{
	level thread scene::Play("p7_fxanim_cp_ramses_station_ceiling_bundle");
	level scene::init("p7_fxanim_cp_ramses_station_ceiling_vtol_bundle");
}

/*
	Name: function_a97a010f
	Namespace: namespace_bedc6a60
	Checksum: 0x9063BDC4
	Offset: 0x61F8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_a97a010f()
{
	level waittill("hash_673d93c8");
	level flag::set("pod_hits_floor");
	if(spawn_manager::get_ai("station_fight_wave1_robots_left").size > 0)
	{
		var_8f75db49 = struct::get("pod_radius_damage", "targetname");
		RadiusDamage(var_8f75db49.origin, 300, 1000, 500, undefined, "MOD_EXPLOSIVE");
	}
}

/*
	Name: function_e4e450c1
	Namespace: namespace_bedc6a60
	Checksum: 0x52BA8C4E
	Offset: 0x62B0
	Size: 0x191
	Parameters: 0
	Flags: None
*/
function function_e4e450c1()
{
	level waittill("hash_1bc0fb5c");
	level clientfield::set("defend_fog_banks", 1);
	var_c0be4d28 = GetEntArray("station_roof_hole", "targetname");
	foreach(piece in var_c0be4d28)
	{
		piece delete();
	}
	var_2f5160f4 = GetEntArray("roof_hole_blocker", "targetname");
	foreach(var_4c225fa1 in var_2f5160f4)
	{
		var_4c225fa1 Hide();
	}
}

/*
	Name: function_316c9fe0
	Namespace: namespace_bedc6a60
	Checksum: 0x65691FD
	Offset: 0x6450
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_316c9fe0()
{
	StreamerModelHint("p7_fxanim_cp_ramses_station_ceiling_static_end_dial_01_mod", 10);
	StreamerModelHint("p7_fxanim_cp_ramses_station_ceiling_static_end_dial_02_mod", 10);
	StreamerModelHint("p7_fxanim_cp_ramses_station_ceiling_static_end_dial_03_mod", 10);
	wait(1);
	var_673a4bf = GetEntArray("station_ceiling_pristine", "targetname");
	foreach(piece in var_673a4bf)
	{
		piece delete();
	}
	level waittill("hash_77815dc");
	level thread function_c5b9bd41("_combat");
	function_eede49df();
	function_14b2c542();
}

/*
	Name: function_fea402e8
	Namespace: namespace_bedc6a60
	Checksum: 0x5BCE1CB8
	Offset: 0x65C0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_fea402e8()
{
	level waittill("hash_a2d108ca");
	level namespace_391e4301::function_e950228a(0);
}

/*
	Name: function_9c5046ad
	Namespace: namespace_bedc6a60
	Checksum: 0xD2978D0D
	Offset: 0x65F0
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_9c5046ad(a_ents)
{
	var_10ec3c1e = struct::get_array("station_fight_glass_pulse", "targetname");
	wait(1.4);
	foreach(s in var_10ec3c1e)
	{
		glassRadiusDamage(s.origin, s.radius, 500, 400);
		wait(RandomFloatRange(0.5, 0.75));
	}
}

/*
	Name: function_cb0ba609
	Namespace: namespace_bedc6a60
	Checksum: 0xCA37A35A
	Offset: 0x6700
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_cb0ba609()
{
	spawner::add_spawn_function_group("balcony_bash_robot", "targetname", &ai::set_ignoreme, 1);
	scene::add_scene_func("cin_ram_03_03_defend_vign_balconybash", &function_1a2278be, "init");
	scene::add_scene_func("cin_ram_03_01_defend_vign_shrapnelpinned_01", &function_896cfa4c, "init");
	scene::add_scene_func("cin_ram_03_01_defend_vign_shrapnelpinned_03", &function_896cfa4c, "init");
	level scene::init("cin_ram_03_03_defend_vign_balconybash");
	util::wait_network_frame();
	level scene::init("cin_ram_03_03_defend_vign_debriscover_aligned");
	level thread function_4ebb88f6();
	level scene::init("cin_ram_03_01_defend_vign_shrapnelpinned_01");
	util::wait_network_frame();
	level scene::init("cin_ram_03_01_defend_vign_shrapnelpinned_03");
	level thread scene::Play("cin_gen_deathpose_m_floor_shrapnel01");
	util::wait_network_frame();
	level thread scene::Play("cin_gen_deathpose_m_floor_shrapnel02");
	util::wait_network_frame();
	level thread scene::Play("cin_gen_deathpose_m_floor_shrapnel03");
	level thread function_8eaad758();
	level waittill("hash_d758e82");
	level thread scene::Play("cin_ram_03_03_defend_vign_debriscover_aligned");
}

/*
	Name: function_8eaad758
	Namespace: namespace_bedc6a60
	Checksum: 0x1EE214F9
	Offset: 0x6950
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_8eaad758()
{
	level endon("hash_6ad08dae");
	var_bfdab3ed = spawner::simple_spawn_single("shrapnel_guy");
	util::magic_bullet_shield(var_bfdab3ed);
	var_bfdab3ed ai::set_ignoreme(1);
	trigger::wait_till("trig_shrapnel_death_scene");
	spawner::simple_spawn_single("shrapnel_raps", &function_77c1726a);
	util::stop_magic_bullet_shield(var_bfdab3ed);
	scene::Play("cin_ram_03_01_defend_vign_shrapnelpinned_04", var_bfdab3ed);
}

/*
	Name: function_77c1726a
	Namespace: namespace_bedc6a60
	Checksum: 0xB35D1A7B
	Offset: 0x6A30
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_77c1726a()
{
	/#
		Assert(isdefined(self.target), "Dev Block strings are not supported");
	#/
	v_goal = struct::get(self.target, "targetname").origin;
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self SetVehGoalPos(v_goal, 1, 1);
	level waittill("hash_56447163");
	self raps::detonate();
}

/*
	Name: function_6727bc7f
	Namespace: namespace_bedc6a60
	Checksum: 0x62480C45
	Offset: 0x6B10
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_6727bc7f(s_obj, t_obj)
{
	self function_1bac4fcc(s_obj, t_obj);
	if(isdefined(self))
	{
		self namespace_16f9ecd3::function_14ec2d71();
	}
}

/*
	Name: function_1bac4fcc
	Namespace: namespace_bedc6a60
	Checksum: 0xDA7745BC
	Offset: 0x6B70
	Size: 0x9F
	Parameters: 2
	Flags: None
*/
function function_1bac4fcc(s_obj, t_obj)
{
	level endon("hash_6ad08dae");
	self endon("death");
	while(isdefined(self))
	{
		t_obj waittill("trigger", e_player);
		while(isdefined(t_obj) && isalive(e_player) && e_player istouching(t_obj))
		{
			wait(0.1);
		}
	}
}

/*
	Name: function_a353c3d9
	Namespace: namespace_bedc6a60
	Checksum: 0x62AB818B
	Offset: 0x6C18
	Size: 0x361
	Parameters: 0
	Flags: None
*/
function function_a353c3d9()
{
	a_str_scenes = [];
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_03_02_defend_1st_pullbody";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_02_05_interview_vign_nassersitting";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_03_03_defend_vign_balconybash";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_03_03_defend_vign_debriscover_aligned";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_03_02_defend_vign_last_stand_death_guy01";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_03_02_defend_vign_last_stand_death_guy02";
	if(!isdefined(a_str_scenes))
	{
		a_str_scenes = [];
	}
	else if(!IsArray(a_str_scenes))
	{
		a_str_scenes = Array(a_str_scenes);
	}
	a_str_scenes[a_str_scenes.size] = "cin_ram_03_02_defend_vign_last_stand_death_guy03";
	foreach(str_scene in a_str_scenes)
	{
		if(level scene::is_active(str_scene))
		{
			level thread scene::stop(str_scene, 1);
			wait(0.1);
		}
	}
}

/*
	Name: function_6327cae3
	Namespace: namespace_bedc6a60
	Checksum: 0x727BECC7
	Offset: 0x6F88
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_6327cae3()
{
	vh_turret = GetEnt("station_fight_turret_respawn", "targetname");
	if(isdefined(vh_turret))
	{
		vh_turret.delete_on_death = 1;
		vh_turret notify("death");
		if(!isalive(vh_turret))
		{
			vh_turret delete();
		}
	}
}

/*
	Name: function_2cae968
	Namespace: namespace_bedc6a60
	Checksum: 0xDBAE8567
	Offset: 0x7020
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_2cae968()
{
	var_64e85e6d = GetAITeamArray("axis");
	foreach(ai in var_64e85e6d)
	{
		if(!isVehicle(ai))
		{
			ai ai::set_behavior_attribute("move_mode", "rusher");
		}
	}
}

/*
	Name: function_f21c9162
	Namespace: namespace_bedc6a60
	Checksum: 0x27577CD3
	Offset: 0x7100
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_f21c9162(str_state)
{
	if(!isdefined(str_state))
	{
		str_state = "";
	}
	function_9e3608e3("station_clutter" + str_state);
	var_522666ed = GetEntArray("station_clutter" + str_state, "targetname");
	var_d4a391c5 = GetEntArray("station_clutter" + str_state, "script_noteworthy");
	a_m_clips = GetEntArray("station_clutter_collision" + str_state, "targetname");
	var_9adf475b = GetEntArray("station_stairs" + str_state, "targetname");
	var_522666ed namespace_391e4301::function_6b4b5556(1);
	var_522666ed namespace_391e4301::function_41f6f501();
	var_d4a391c5 namespace_391e4301::function_6b4b5556(1);
	a_m_clips namespace_391e4301::function_41f6f501();
	var_9adf475b namespace_391e4301::function_6b4b5556();
}

/*
	Name: function_c5b9bd41
	Namespace: namespace_bedc6a60
	Checksum: 0x63A6CE25
	Offset: 0x72A8
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_c5b9bd41(str_state)
{
	if(!isdefined(str_state))
	{
		str_state = "";
	}
	function_6ddd4fa4("station_clutter" + str_state);
	var_522666ed = GetEntArray("station_clutter" + str_state, "targetname");
	var_d4a391c5 = GetEntArray("station_clutter" + str_state, "script_noteworthy");
	a_m_clips = GetEntArray("station_clutter_collision" + str_state, "targetname");
	var_9adf475b = GetEntArray("station_stairs" + str_state, "targetname");
	var_522666ed namespace_391e4301::make_solid();
	a_m_clips namespace_391e4301::make_solid();
	var_522666ed namespace_391e4301::function_64a470cf(1);
	var_d4a391c5 namespace_391e4301::function_64a470cf(1);
	var_9adf475b namespace_391e4301::function_64a470cf();
	var_27da165 = struct::get_array("station_clutter" + str_state, "targetname");
	var_27da165 namespace_391e4301::spawn_from_structs();
}

/*
	Name: function_eede49df
	Namespace: namespace_bedc6a60
	Checksum: 0xA927A386
	Offset: 0x7490
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_eede49df(str_state, var_f5b4e706)
{
	if(!isdefined(str_state))
	{
		str_state = "";
	}
	if(!isdefined(var_f5b4e706))
	{
		var_f5b4e706 = 0;
	}
	var_522666ed = GetEntArray("station_clutter" + str_state, "targetname");
	a_m_clips = GetEntArray("station_clutter_collision" + str_state, "targetname");
	var_4095c0be = GetEntArray("station_clutter_nocol" + str_state, "targetname");
	var_9adf475b = GetEntArray("station_stairs" + str_state, "targetname");
	function_9e3608e3("station_clutter" + str_state);
	if(var_f5b4e706)
	{
		n_count = 0;
		foreach(var_fff2323a in var_522666ed)
		{
			var_fff2323a connectpaths();
			n_count++;
			if(n_count > 1)
			{
				wait(0.05);
				n_count = 0;
			}
		}
	}
	Array::delete_all(var_522666ed);
	Array::delete_all(a_m_clips);
	Array::delete_all(var_4095c0be);
	Array::delete_all(var_9adf475b);
}

/*
	Name: function_f7abd273
	Namespace: namespace_bedc6a60
	Checksum: 0xC2756381
	Offset: 0x76F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f7abd273()
{
	var_6a205876 = GetEntArray("station_defend_after", "script_noteworthy");
	var_6a205876 namespace_391e4301::function_6b4b5556();
}

/*
	Name: function_e5ed2910
	Namespace: namespace_bedc6a60
	Checksum: 0x62B310DC
	Offset: 0x7748
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_e5ed2910()
{
	var_dbe7a735 = GetEntArray("station_defend_after", "script_noteworthy");
	var_dbe7a735 namespace_391e4301::function_64a470cf(1);
	util::wait_network_frame();
	var_c1633987 = GetEntArray("station_defend_before", "script_noteworthy");
	Array::delete_all(var_c1633987);
	util::wait_network_frame();
	var_5cd1a106 = GetEntArray("droppod_hole", "targetname");
	foreach(var_bb2701f in var_5cd1a106)
	{
		var_bb2701f delete();
	}
}

/*
	Name: function_c01d9b2
	Namespace: namespace_bedc6a60
	Checksum: 0xAB51ED00
	Offset: 0x78B0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_c01d9b2()
{
	wait(2);
	level.var_2fd26037 dialog::say("hend_all_clear_that_s_t_0");
	level dialog::function_13b3b16a("plyr_kane_patch_us_into_0", 1);
	level dialog::remote("ecmd_ramses_1_1_priority_0");
	level dialog::remote("ecmd_request_all_emergenc_0");
	level.var_9db406db dialog::say("khal_copy_that_but_we_l_0");
	level dialog::remote("ecmd_confirmed_vtol_sup_0");
}

/*
	Name: function_1d0e7c11
	Namespace: namespace_bedc6a60
	Checksum: 0xC9B2EE0E
	Offset: 0x7988
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_1d0e7c11()
{
	wait(5);
	a_ai = GetAITeamArray("allies");
	ArrayRemoveValue(a_ai, level.var_2fd26037, 0);
	ArrayRemoveValue(a_ai, level.var_9db406db, 0);
	a_ai = ArraySortClosest(a_ai, level.players[0].origin);
	if(isdefined(a_ai[0]))
	{
		if(math::cointoss())
		{
			a_ai[0] thread dialog::say("esl3_how_did_they_beat_ou_0");
		}
		else
		{
			a_ai[0] thread dialog::say("esl4_impossible_how_did_0");
		}
	}
}

/*
	Name: function_f27ea617
	Namespace: namespace_bedc6a60
	Checksum: 0x42311316
	Offset: 0x7A98
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_f27ea617(str_objective, var_74cd64bc)
{
	function_eede49df();
	function_c5b9bd41("_combat");
	init("defend_ramses_station", var_74cd64bc);
}

/*
	Name: function_93364e1b
	Namespace: namespace_bedc6a60
	Checksum: 0x99EC1590
	Offset: 0x7B00
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_93364e1b()
{
}

