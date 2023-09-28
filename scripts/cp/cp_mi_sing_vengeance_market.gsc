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
function function_7b65c5ac(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		callback::on_spawned(&namespace_63b4601c::give_hero_weapon);
		callback::on_spawned(&namespace_63b4601c::function_b9785164);
		namespace_63b4601c::init_hero("hendricks", str_objective);
		level.var_2fd26037 colors::enable();
		level.var_2fd26037 ai::set_ignoreall(1);
		level.var_2fd26037 ai::set_ignoreme(1);
		level.var_2fd26037.goalRadius = 32;
		objectives::set("cp_level_vengeance_rescue_kane");
		objectives::set("cp_level_vengeance_go_to_safehouse");
		objectives::Hide("cp_level_vengeance_go_to_safehouse");
		level.var_29061a49 = vehicle::simple_spawn_single("garage_technical_01");
		level.var_29061a49 vehicle::lights_off();
		level.var_4f0894b2 = vehicle::simple_spawn_single("garage_technical_02");
		level.var_4f0894b2 vehicle::lights_off();
		e_car = GetEnt("cop_car_2", "targetname");
		e_car kill();
		var_70f21d83 = struct::get("garage_igc_script_node", "targetname");
		var_70f21d83 thread scene::Play("cin_ven_06_15_parkingstructure_deadbodies");
		s_node = struct::get("quad_battle_script_node", "targetname");
		s_node thread scene::init("cin_ven_07_11_openpath_wall_vign");
		level thread namespace_22334037::function_f0f8ed9f(var_74cd64bc);
		namespace_63b4601c::function_e00864bd("rear_garage_umbra_gate", 1, "rear_garage_gate");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
		level thread function_31629d62();
		var_ecf5f255 = GetEntArray("quad_tank_color_triggers", "script_noteworthy");
		foreach(e_trig in var_ecf5f255)
		{
			e_trig TriggerEnable(0);
			e_trig.script_color_stay_on = 1;
		}
		load::function_a2995f22();
		wait(0.05);
		var_77d44b28 = GetEnt("garage_player_gather_trigger", "targetname");
		var_77d44b28 TriggerEnable(0);
		level thread function_3ae8447c();
		level thread namespace_63b4601c::function_5dbf4126();
	}
	CreateThreatBiasGroup("quad_tank");
	exit_trigger = GetEnt("exit_to_plaza", "targetname");
	exit_trigger TriggerEnable(0);
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
function function_463cdeb2(str_objective, var_74cd64bc, var_e4cd2b8b, player)
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
	var_2d4309d9 = GetEnt("quad_battle_qt_ramp", "targetname");
	e_trigger = GetEnt("quad_battle_qt_cleared_wall", "targetname");
	e_trigger TriggerEnable(0);
	level flag::wait_till("quad_battle_starts");
	e_trigger TriggerEnable(1);
	trigger::wait_till("quad_battle_qt_cleared_wall");
	var_2d4309d9 connectpaths();
	wait(0.05);
	var_2d4309d9 delete();
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
	objectives::set("cp_level_vengeance_go_to_safehouse");
	trigger::use("hendricks_qt_color_start", "targetname");
	var_77d44b28 = GetEnt("garage_player_gather_trigger", "targetname");
	var_77d44b28 TriggerEnable(1);
	level thread objectives::breadcrumb("garage_player_gather_trigger", "cp_waypoint_breadcrumb", 0);
	level flag::wait_till("players_at_market");
	objectives::Hide("cp_level_vengeance_go_to_safehouse");
	StreamerModelHint("veh_t7_drone_quadtank_54i", 10);
	scene::add_scene_func("cin_ven_06_51_quadbattleintro_wall_vign", &namespace_63b4601c::function_ba7c52d5, "done", "quad_wall_static3");
	var_70f21d83 = struct::get("quad_battle_script_node", "targetname");
	var_70f21d83 scene::init("cin_ven_06_51_quadbattleintro_wall_vign");
	level flag::wait_till("quad_tank_start_anim");
	level thread function_27bbd465();
	if(isdefined(level.BZM_VENGEANCEDialogue6_2Callback))
	{
		level thread [[level.BZM_VENGEANCEDialogue6_2Callback]]();
	}
	var_70f21d83 thread scene::Play("cin_ven_06_51_quadbattleintro_wall_vign");
	level thread namespace_7c587e3e::function_5bd9fe4();
	util::wait_network_frame();
	wait(0.4);
	level thread namespace_63b4601c::function_1c347e72("quad_wall_static1", "quad_wall_non_static1");
	wait(0.35);
	level.quadtank = spawner::simple_spawn_single("plaza_quadtank", &function_74c7f0db);
	level.quadtank thread namespace_855113f3::function_35209d64();
	callback::on_vehicle_damage(&function_4fc8c2e, level.quadtank);
	var_ecf5f255 = GetEntArray("quad_tank_color_triggers", "script_noteworthy");
	foreach(e_trig in var_ecf5f255)
	{
		e_trig TriggerEnable(1);
		e_trig.script_color_stay_on = 1;
	}
	level flag::set("quad_battle_starts");
	level thread function_e8676a98();
	level flag::wait_till("quad_enemies_done");
	level flag::set("quad_battle_ends");
	level.var_2fd26037 battlechatter::function_d9f49fba(0);
	savegame::function_5d2cdd99();
	level flag::wait_till("exiting_market");
	skipto::function_be8adfb8("quad_battle");
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
	if(level.activePlayers.size > 1)
	{
		wait(8);
		level notify("hash_349fb948");
		spawn_manager::enable("quad_battle_reinforcements");
		level flag::wait_till_any(Array("quadtank_hijacked", "quad_tank_dead"));
		a_enemies = spawner::get_ai_group_ai("quad_battle_enemies");
		if(a_enemies.size > 0)
		{
			wait(10);
			spawn_manager::disable("quad_battle_reinforcements");
		}
		var_2eebaf3b = GetEnt("quad_battle_retreat_volume", "targetname");
		a_enemies = spawner::get_ai_group_ai("quad_battle_enemies");
		foreach(e_enemy in a_enemies)
		{
			if(isalive(e_enemy))
			{
				e_enemy thread function_ee2d9cb4(var_2eebaf3b);
			}
		}
		if(a_enemies.size > 0)
		{
			wait(6);
		}
		if(flag::get("quadtank_hijacked"))
		{
			level flag::wait_till("qt_hijack_enemies_dead");
		}
		level flag::set("quad_enemies_done");
	}
	else
	{
		level flag::wait_till_any(Array("quadtank_hijacked", "quad_tank_dead"));
		if(flag::get("quadtank_hijacked"))
		{
			level flag::wait_till("qt_hijack_enemies_dead");
		}
		level flag::set("quad_enemies_done");
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
function function_ee2d9cb4(volume)
{
	self endon("death");
	self ClearForcedGoal();
	self ClearGoalVolume();
	self.fixedNode = 0;
	self.forcegoal = 0;
	wait(0.1);
	self SetGoal(volume, 1);
	self waittill("goal");
	self delete();
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
	self GetPerfectInfo(level.activePlayers[0]);
	self SetThreatBiasGroup("quad_tank");
	PhysicsExplosionCylinder(self.origin, 192, 184, 5);
	setthreatbias("garage_hendricks", "quad_tank", 100);
	setthreatbias("quad_tank", "garage_hendricks", 10000);
	setthreatbias("garage_players", "quad_tank", 1000);
	util::delay(2.5, undefined, &objectives::set, "cp_level_vengeance_destroy_quad", self);
	self waittill("death");
	level flag::set("quad_tank_dead");
	objectives::Hide("cp_level_vengeance_destroy_quad");
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
		level waittill("ClonedEntity", var_52b4a338);
		if(isdefined(var_52b4a338.scriptvehicletype) && var_52b4a338.scriptvehicletype == "quadtank")
		{
			level flag::set("quadtank_hijacked");
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
	self waittill("death");
	var_7f6ee28b = spawn("trigger_box", (-18575, -17133.5, 224), 0, 504, 375, 448);
	wait(10);
	if(isdefined(self) && self istouching(var_7f6ee28b))
	{
		self delete();
	}
	var_7f6ee28b delete();
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
	self endon("death");
	e_goalvolume = GetEnt("qt_right_goalvolume", "targetname");
	self SetNearGoalNotifyDist(384);
	self.goalRadius = 384;
	self SetGoal(e_goalvolume, 1);
	self waittill("hash_a2b47172");
	level flag::set("quad_tank_downstairs");
	str_side = "right";
	while(1)
	{
		if(str_side == "left")
		{
			str_side = "right";
		}
		else if(str_side == "right")
		{
			str_side = "left";
		}
		level flag::set("qt_" + str_side + "_side");
		self thread function_b331b9b2(str_side);
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
function function_b331b9b2(str_side)
{
	level notify("hash_b331b9b2");
	level endon("hash_b331b9b2");
	self endon("death");
	if(str_side == "left")
	{
		e_goalvolume = GetEnt("qt_left_goalvolume", "targetname");
	}
	else if(str_side == "right")
	{
		e_goalvolume = GetEnt("qt_right_goalvolume", "targetname");
	}
	if(isalive(self))
	{
		self.goalRadius = 384;
		self SetGoal(e_goalvolume, 1);
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
	level.quadtank = spawner::simple_spawn_single("plaza_quadtank");
	var_136e4f5c = struct::get("quad_tank_checkpoint_death", "script_noteworthy");
	wait(0.05);
	level flag::wait_till("all_players_spawned");
	level.quadtank.origin = var_136e4f5c.origin;
	level.quadtank SetCanDamage(1);
	level.quadtank util::stop_magic_bullet_shield();
	level.quadtank kill();
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
	var_a3076518 = GetEnt("sm_qt_hijack", "targetname");
	e_goal_volume = GetEnt("garage_enemy_n_goalvolume", "targetname");
	foreach(var_56b381f2 in GetEntArray(var_a3076518.target, "targetname"))
	{
		var_56b381f2 spawner::add_spawn_function(&function_a59909a9, e_goal_volume);
	}
	var_443c7feb = GetEnt("sm_qt_hijack_normal", "targetname");
	foreach(sp_enemy in GetEntArray(var_443c7feb.target, "targetname"))
	{
		sp_enemy spawner::add_spawn_function(&function_a59909a9, e_goal_volume);
	}
	level flag::wait_till("quadtank_hijacked");
	spawn_manager::enable("sm_qt_hijack");
	spawn_manager::enable("sm_qt_hijack_normal");
	wait(0.5);
	level thread function_18ed3322();
	level thread function_547cd992();
	level flag::wait_till_all(Array("qt_hijack_warlords_dead", "qt_hijack_grunts_dead"));
	level flag::set("qt_hijack_enemies_dead");
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
function function_a59909a9(e_vol)
{
	self SetGoal(e_vol, 1);
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
	spawner::waittill_ai_group_ai_count("qt_hijack_enemies", 0);
	level flag::set("qt_hijack_warlords_dead");
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
	spawner::waittill_ai_group_ai_count("garage_enemies", 0);
	level flag::set("qt_hijack_grunts_dead");
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
	self battlechatter::function_d9f49fba(0);
	level flag::wait_till("quad_tank_wall_broken");
	self colors::disable();
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self ai::set_behavior_attribute("cqb", 0);
	self ai::set_behavior_attribute("sprint", 1);
	self.ignoreSuppression = 1;
	self.var_df53bc6 = self.script_accuracy;
	self.script_accuracy = 0.2;
	var_a392d7f9 = GetNode("quad_battle_hendricks_node", "targetname");
	self setgoalnode(var_a392d7f9, 1);
	self waittill("goal");
	self thread function_fd7b3b3b();
	self thread function_1314293f();
	level flag::wait_till("quad_battle_ends");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self colors::disable();
	self ClearEnemy();
	self.ignoreSuppression = 0;
	self.script_accuracy = self.var_df53bc6;
	var_a392d7f9 = GetNode("hendricks_exit_market_node", "targetname");
	self setgoalnode(var_a392d7f9, 1);
	level thread objectives::breadcrumb("goto_plaza_breadcrumb");
	level flag::wait_till("hendricks_exiting_market");
	self ai::set_behavior_attribute("sprint", 0);
	level thread function_64ae9198();
	self waittill("goal");
	exit_trigger = GetEnt("exit_to_plaza", "targetname");
	exit_trigger TriggerEnable(1);
	s_node = struct::get("quad_battle_script_node", "targetname");
	s_node scene::Play("cin_ven_07_10_enterplaza_vign");
	self SetGoal(self.origin, 1);
	if(!level flag::get("exit_qt_battle"))
	{
		s_node scene::init("cin_ven_07_11_openpath_vign");
		level flag::wait_till("exit_qt_battle");
	}
	level thread function_8ccac57d();
	s_node thread scene::Play("cin_ven_07_11_openpath_wall_vign");
	s_node scene::Play("cin_ven_07_11_openpath_vign");
	self SetGoal(self.origin, 1);
	level flag::set("exiting_market");
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
	level flag::set("start_plaza_wave_2");
	var_ac036920 = GetEnt("plaza_wall", "targetname");
	var_ac036920 connectpaths();
	var_ac036920 delete();
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
	level.quadtank endon("death");
	level flag::wait_till("quad_tank_downstairs");
	self colors::enable();
	wait(0.05);
	trigger::use("hendricks_qt_move_back");
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
	level.quadtank endon("death");
	while(1)
	{
		if(isdefined(self) && self function_839d99d7())
		{
			self ai::shoot_at_target("normal", level.quadtank, undefined, 5);
			wait(5);
		}
		wait(randomIntRange(10, 20));
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
	level.var_2fd26037 battlechatter::function_d9f49fba(1);
	level.var_2fd26037.var_5d9fbd2d = 0;
	level flag::wait_till("players_at_market");
	thread namespace_7c587e3e::function_af95bc45();
	level thread function_6f79b65d();
	wait(1);
	level.var_2fd26037 thread namespace_63b4601c::function_5fbec645("hend_stop_do_you_hear_t_1");
	wait(2);
	level flag::set("quad_tank_start_anim");
	level flag::wait_till("quad_tank_wall_broken");
	wait(0.5);
	foreach(e_player in level.activePlayers)
	{
		e_player thread function_f14d81a9();
	}
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_quad_tank_take_cove_1", 0);
	level flag::wait_till("quad_battle_starts");
	level dialog::function_13b3b16a("plyr_draw_it_s_fire_i_ll_2");
	level.quadtank thread function_43458bf2();
	level.quadtank thread function_bc3db33d();
	level.quadtank thread function_55c599e4();
	level.quadtank thread function_e955ac45();
	level.quadtank thread function_82671202();
	level.quadtank thread function_23dea593();
	if(level.activePlayers.size > 1)
	{
		level thread function_f8295b7();
	}
	level flag::wait_till_any(Array("quadtank_hijacked", "quad_tank_dead"));
	wait(0.5);
	a_enemies = spawner::get_ai_group_ai("quad_battle_enemies");
	var_3d8a616b = spawner::get_ai_group_ai("qt_hijack_enemies");
	if(a_enemies.size > 0)
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
	objectives::show("cp_level_vengeance_go_to_safehouse");
	level flag::wait_till("hendricks_exiting_market");
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
	level.quadtank endon("death");
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
	level.quadtank waittill("trophy_system_disabled");
	var_90911853 = GetWeapon("launcher_standard");
	foreach(e_player in level.activePlayers)
	{
		var_1bcd223d = e_player GetCurrentWeapon();
		if(e_player HasWeapon(var_90911853) && var_1bcd223d != var_90911853)
		{
			e_player thread util::show_hint_text(&"COOP_EQUIP_XM53", undefined, undefined, 6);
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
	level.quadtank endon("death");
	self endon("trophy_system_disabled");
	wait(20);
	var_c823b7c6 = [];
	var_c823b7c6[0] = "hend_shoot_out_its_weak_p_1";
	var_c823b7c6[1] = "hend_we_can_t_touch_this_0";
	var_c823b7c6[2] = "hend_target_it_s_weak_poi_0";
	var_c823b7c6[3] = "hend_nothing_s_getting_th_0";
	var_c823b7c6[4] = "hend_i_can_t_get_a_clear_0";
	last_vo = undefined;
	while(1)
	{
		var_616d3e3e = Array::random(var_c823b7c6);
		if(isdefined(last_vo) && last_vo == var_616d3e3e)
		{
			while(last_vo == var_616d3e3e)
			{
				var_616d3e3e = Array::random(var_c823b7c6);
				wait(0.05);
			}
		}
		if(!isdefined(last_vo) || last_vo != var_616d3e3e)
		{
			last_vo = var_616d3e3e;
		}
		level.var_2fd26037 namespace_22334037::function_73a79ca0(var_616d3e3e);
		wait(RandomFloatRange(10, 15));
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
	self endon("death");
	while(1)
	{
		self waittill("trophy_system_disabled");
		namespace_22334037::function_73a79ca0("hend_hit_it_with_a_rocket_1");
		self waittill("trophy_system_enabled");
		self thread function_455f3062();
		self waittill("trophy_system_disabled");
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
	self endon("death");
	self endon("trophy_system_disabled");
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
	self endon("death");
	self waittill("trophy_system_enabled");
	level dialog::function_13b3b16a("plyr_how_the_hell_is_this_0");
	self waittill("trophy_system_disabled");
	self waittill("trophy_system_enabled");
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
function function_4fc8c2e(obj, params)
{
	if(isPlayer(params.eAttacker))
	{
		if(params.sMeansOfDeath === "MOD_RIFLE_BULLET" || params.sMeansOfDeath === "MOD_PISTOL_BULLET")
		{
			if(params.partName != "tag_target_lower" && params.partName != "tag_target_upper" && params.partName != "tag_defense_active" && params.partName != "tag_body_animate")
			{
				level notify("hash_52293e91");
			}
		}
		if(params.weapon.name === "launcher_standard" || params.weapon.name === "turret_bo3_civ_truck_pickup_tech_54i_grenade")
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
	self endon("death");
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
	self endon("death");
	var_361ba23a = [];
	var_361ba23a[0] = "hend_keep_moving_don_t_l_2";
	while(1)
	{
		wait(45);
		var_616d3e3e = Array::random(var_361ba23a);
		namespace_22334037::function_73a79ca0(var_616d3e3e);
		var_361ba23a = Array::exclude(var_361ba23a, var_616d3e3e);
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
	level flag::wait_till("quad_battle_starts");
	wait(1);
	level flag::set("quad_tank_wall_broken");
	function_9e3608e3("quad_wall_static2");
	var_1e8fa774 = GetEnt("quad_battle_intro_wall_clip", "targetname");
	var_1e8fa774 delete();
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
	level util::clientNotify("start_qt_stomp");
	foreach(e_player in level.activePlayers)
	{
		screenshake(e_player.origin, 1, 0.5, 0.5, 0.5, 0, -1, 100, 7, 1, 1, 1, e_player);
		e_player PlayRumbleOnEntity("quadtank_footstep");
	}
	exploder::exploder("garage_wall_light_pulse");
	exploder::exploder("garage_wall_light_pulse_02");
	exploder::exploder("garage_dust_rattle");
	wait(1);
	foreach(e_player in level.activePlayers)
	{
		screenshake(e_player.origin, 2, 1, 1, 0.5, 0, -1, 100, 7, 1, 1, 1, e_player);
		e_player PlayRumbleOnEntity("quadtank_footstep");
	}
	exploder::exploder("garage_wall_light_pulse_03");
	exploder::exploder("garage_dust_rattle");
	wait(1);
	foreach(e_player in level.activePlayers)
	{
		screenshake(e_player.origin, 3, 2, 2, 0.5, 0, -1, 100, 7, 1, 1, 1, e_player);
		e_player PlayRumbleOnEntity("quadtank_footstep");
	}
	exploder::exploder("garage_wall_light_pulse_03");
	exploder::exploder("garage_dust_rattle");
	level flag::wait_till("quad_tank_wall_broken");
	level util::clientNotify("quad_tank_wall_broken");
	foreach(e_player in level.activePlayers)
	{
		screenshake(e_player.origin, 5, 2, 2, 0.5, 0, -1, 100, 7, 1, 1, 1, e_player);
		e_player PlayRumbleOnEntity("quadtank_footstep");
	}
	exploder::exploder("garage_wall_light_pulse_02");
	exploder::exploder("garage_dust_rattle");
	wait(1);
	exploder::stop_exploder("garage_wall_light_pulse");
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
	exploder::exploder("garage_wall_light_flicker");
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
	a_triggers = GetEntArray("garage_damage_trigger", "targetname");
	foreach(e_trigger in a_triggers)
	{
		e_wall = GetEnt(e_trigger.target, "targetname");
		e_wall delete();
		wait(0.1);
		e_trigger delete();
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
function function_6e671181(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		callback::on_spawned(&namespace_63b4601c::give_hero_weapon);
		callback::on_spawned(&namespace_63b4601c::function_b9785164);
		level thread function_a5928078();
		e_car = GetEnt("cop_car_2", "targetname");
		e_car kill();
		level thread namespace_63b4601c::function_ef909043();
		namespace_63b4601c::init_hero("hendricks", str_objective);
		wait(0.05);
		level.var_2fd26037 colors::disable();
		level.var_2fd26037 ai::set_ignoreall(1);
		level.var_2fd26037 ai::set_ignoreme(1);
		level.var_2fd26037.goalRadius = 32;
		level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
		level.var_2fd26037 battlechatter::function_d9f49fba(0);
		level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
		level flag::set("start_plaza_wave_2");
		objectives::set("cp_level_vengeance_rescue_kane");
		objectives::set("cp_level_vengeance_go_to_safehouse");
		level thread namespace_63b4601c::function_5dbf4126();
		var_70f21d83 = struct::get("garage_igc_script_node", "targetname");
		var_70f21d83 thread scene::Play("cin_ven_06_15_parkingstructure_deadbodies");
		s_node = struct::get("quad_battle_script_node", "targetname");
		s_node thread scene::skipto_end("cin_ven_07_11_openpath_wall_vign");
		var_ac036920 = GetEnt("plaza_wall", "targetname");
		var_ac036920 connectpaths();
		var_ac036920 delete();
		scene::add_scene_func("cin_ven_06_51_quadbattleintro_wall_vign", &namespace_63b4601c::function_ba7c52d5, "done", "quad_wall_static3");
		level thread namespace_63b4601c::function_1c347e72("quad_wall_static1", "quad_wall_non_static1");
		var_70f21d83 = struct::get("quad_battle_script_node", "targetname");
		var_70f21d83 thread scene::skipto_end("cin_ven_06_51_quadbattleintro_wall_vign");
		function_9e3608e3("quad_wall_static2");
		util::function_d8eaed3d(7);
		var_1e8fa774 = GetEnt("quad_battle_intro_wall_clip", "targetname");
		var_1e8fa774 delete();
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
		level thread objectives::breadcrumb("trig_safehouse_plaza_breadcrumb");
		level thread function_64ae9198(var_74cd64bc);
		foreach(player in level.players)
		{
			player.ignoreme = 1;
		}
		load::function_a2995f22();
		level flag::set("initial_plaza_spawns");
		level thread function_88f591dc();
	}
	if(isdefined(level.stealth))
	{
		level stealth::stop();
	}
	exploder::exploder("sh_tracer_all");
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
function function_e5fb7f0b(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level struct::delete_script_bundle("scene", "cin_ven_06_10_parkingstructure_1st_shot08");
	level struct::delete_script_bundle("scene", "cin_ven_06_15_parkingstructure_deadbodies");
	level struct::delete_script_bundle("scene", "cin_ven_06_51_quadbattleintro_wall_vign");
	level struct::delete_script_bundle("scene", "cin_ven_07_10_enterplaza_vign");
	level struct::delete_script_bundle("scene", "cin_ven_07_11_openpath_vign");
	level struct::delete_script_bundle("scene", "cin_ven_07_11_openpath_wall_vign");
	level struct::delete_script_bundle("scene", "cin_ven_07_20_jumpdownplaza_vign");
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
	foreach(player in level.players)
	{
		player.ignoreme = 0;
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
	level flag::wait_till_all(Array("hendricks_at_plaza", "players_at_plaza"));
	thread namespace_63b4601c::function_ffaf4723("rear_garage_umbra_vol", "rear_garage_umbra_gate", "rear_garage_gate", "noflag");
	wait(0.5);
	if(isdefined(level.BZM_VENGEANCEDialogue7Callback))
	{
		level thread [[level.BZM_VENGEANCEDialogue7Callback]]();
	}
	objectives::Hide("cp_level_vengeance_go_to_safehouse");
	level flag::set("plaza_hendricks_jump");
	wait(1);
	objectives::set("cp_level_vengeance_clear_plaza");
	foreach(e_player in level.activePlayers)
	{
		e_player thread function_29587c78();
	}
	level flag::wait_till("plaza_cleared");
	objectives::Hide("cp_level_vengeance_clear_plaza");
	level.var_2fd26037 battlechatter::function_d9f49fba(0);
	obj_trigger = GetEnt("obj_enter_sh", "targetname");
	obj_struct = struct::get(obj_trigger.target, "targetname");
	level thread objectives::breadcrumb("players_near_safehouse");
	objectives::show("cp_level_vengeance_go_to_safehouse");
	level thread util::function_d8eaed3d(5);
	level scene::init("cin_ven_11_safehouse_3rd_sh010");
	wait(2);
	level.var_4c62d05f = function_f7d00e6a();
	objectives::Hide("cp_level_vengeance_go_to_safehouse");
	skipto::function_be8adfb8("safehouse_plaza");
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
	var_a3a9af43 = GetEnt("players_near_safehouse", "targetname");
	var_a3a9af43 endon("death");
	var_a3a9af43 trigger::wait_till();
	return var_a3a9af43.who;
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
	trigger::wait_till("plaza_combat_failsafe");
	exploder::stop_exploder("fire_light_balcony");
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
	var_a392d7f9 = GetNode("hendricks_plaza_node", "targetname");
	self setgoalnode(var_a392d7f9, 1);
	self waittill("goal");
	level flag::set("hendricks_at_plaza");
	level flag::wait_till("plaza_hendricks_jump");
	self ai::set_behavior_attribute("cqb", 0);
	self.goalRadius = 16;
	s_struct = struct::get("safehouse_plaza_script_node", "targetname");
	s_struct scene::Play("cin_ven_07_20_jumpdownplaza_vign");
	self colors::enable();
	trigger::use("start_plaza_color", "targetname");
	foreach(e_player in level.activePlayers)
	{
		e_player thread function_9af0090();
	}
	level flag::wait_till("plaza_combat_live");
	self battlechatter::function_d9f49fba(1);
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self thread namespace_63b4601c::function_5a886ae0();
	wait(10);
	e_trigger = GetEnt("plaza_hendricks_color_sniper", "targetname");
	if(isdefined(e_trigger))
	{
		trigger::use("plaza_hendricks_color_sniper", "targetname");
	}
	level flag::wait_till("plaza_cleared");
	self notify("hash_90a20e6d");
	self colors::disable();
	var_a392d7f9 = GetNode("hendricks_approach_sh_node", "targetname");
	self setgoalnode(var_a392d7f9, 1);
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
	level flag::init("initial_plaza_spawns");
	level.var_b3e6718e = spawner::simple_spawn("remote_snipers");
	var_493d4f49 = vehicle::simple_spawn_single("plaza_enemies_technical_01");
	var_6f3fc9b2 = vehicle::simple_spawn_single("plaza_enemies_technical_02");
	wait(0.05);
	spawner::simple_spawn("plaza_enemies_wave_01");
	spawner::simple_spawn("plaza_amws_0");
	wait(0.05);
	spawn_manager::enable("plaza_allies_spawn_manager");
	setignoremegroup("54i_siegebots", "sh_allies");
	setignoremegroup("sh_wasps", "sh_allies");
	level.var_bcb63fa = spawner::simple_spawn("plaza_warlords");
	spawn_manager::enable("sh_wasp");
	if(var_74cd64bc)
	{
		level flag::wait_till("initial_plaza_spawns");
	}
	level flag::wait_till("start_plaza_wave_2");
	spawner::simple_spawn("plaza_enemies_wave_02");
	level flag::wait_till("plaza_combat_live");
	e_volume1 = GetEnt("plaza_volume_01", "targetname");
	e_volume2 = GetEnt("plaza_volume_02", "targetname");
	var_cf09ed0e = GetEnt("plaza_volume_03", "targetname");
	var_10fd8901 = GetEnt("plaza_volume_04", "targetname");
	var_df5035df = GetEnt("sh_steps_volume", "targetname");
	level.var_4982c438 = e_volume1;
	spawn_manager::enable("plaza_enemies_reinforcements");
	setthreatbias("players", "54i_warlords", 100000);
	trigger::wait_till("plaza_fallback_vol2", "targetname");
	level thread namespace_63b4601c::function_a084a58f();
	spawner::simple_spawn("plaza_warlords_3");
	spawner::simple_spawn("plaza_amws");
	level.var_4982c438 = e_volume2;
	level thread function_ea5edc3b(level.var_4982c438, e_volume1);
	level.var_bcb63fa = Array::remove_dead(level.var_bcb63fa);
	level.var_bcb63fa = Array::remove_undefined(level.var_bcb63fa);
	if(level.var_bcb63fa.size < 1)
	{
		spawner::simple_spawn("plaza_warlords_2");
	}
	trigger::wait_till("plaza_fallback_vol3", "targetname");
	level thread namespace_63b4601c::function_a084a58f();
	level.var_4982c438 = var_cf09ed0e;
	level thread function_ea5edc3b(level.var_4982c438, e_volume1, e_volume2);
	spawn_manager::disable("plaza_allies_spawn_manager", 1);
	a_allies = spawn_manager::get_ai("plaza_allies_spawn_manager");
	foreach(var_3b8db917 in a_allies)
	{
		if(isalive(var_3b8db917))
		{
			var_3b8db917 thread function_47370bbe();
		}
	}
	level thread function_892fb7e0();
	spawner::simple_spawn("plaza_siegebots");
	setthreatbias("hendricks", "54i_siegebots", 1);
	setthreatbias("sh_allies", "54i_siegebots", 10);
	setthreatbias("players", "54i_siegebots", 100000);
	trigger::wait_till("plaza_fallback_vol4");
	level thread namespace_63b4601c::function_a084a58f();
	level.var_4982c438 = var_10fd8901;
	level thread function_ea5edc3b(level.var_4982c438, e_volume1, e_volume2, var_cf09ed0e);
	spawner::waittill_ai_group_ai_count("plaza_enemies", 9);
	level thread namespace_63b4601c::function_a084a58f();
	exploder::kill_exploder("sh_tracer_all");
	var_28d235b6 = GetEntArray("plaza_small_spawn_triggers", "targetname");
	Array::delete_all(var_28d235b6);
	level.var_4982c438 = var_df5035df;
	guys = spawner::get_ai_group_ai("plaza_enemies");
	foreach(guy in guys)
	{
		if(isdefined(guy) && isalive(guy) && IsSubStr(guy.classname, "human") && !IsSubStr(guy.classname, "warlord"))
		{
			guy ai::set_behavior_attribute("move_mode", "rambo");
		}
	}
	level thread function_ea5edc3b(level.var_4982c438, e_volume1, e_volume2, var_cf09ed0e, var_10fd8901);
	spawner::waittill_ai_group_ai_count("plaza_enemies", 4);
	level thread namespace_63b4601c::function_a084a58f();
	spawner::kill_spawnernum(700);
	var_e5206be0 = GetEnt("sh_steps_final_volume", "targetname");
	var_87cdd1a3 = GetEnt("sh_allies_volume", "targetname");
	guys = spawner::get_ai_group_ai("plaza_enemies");
	foreach(guy in guys)
	{
		if(isdefined(guy.script_noteworthy) && guy.script_noteworthy == "siegebot")
		{
			guy SetGoal(var_87cdd1a3, 1);
			continue;
		}
		guy SetGoal(var_e5206be0, 1);
	}
	spawner::waittill_ai_group_ai_count("plaza_enemies", 1);
	guys = spawner::get_ai_group_ai("plaza_enemies");
	foreach(guy in guys)
	{
		if(isdefined(guy) && isalive(guy) && !IsSubStr(guy.classname, "warlord") && (!isdefined(guy.script_noteworthy) || (isdefined(guy.script_noteworthy) && guy.script_noteworthy != "siegebot")))
		{
			guy kill();
		}
	}
	spawner::waittill_ai_group_ai_count("plaza_enemies", 0);
	level flag::set("plaza_cleared");
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
	CreateThreatBiasGroup("players");
	CreateThreatBiasGroup("hendricks");
	CreateThreatBiasGroup("sh_allies");
	CreateThreatBiasGroup("sh_wasps");
	CreateThreatBiasGroup("54i_grunts");
	CreateThreatBiasGroup("54i_reinforcements");
	CreateThreatBiasGroup("54i_warlords");
	CreateThreatBiasGroup("54i_siegebots");
	a_players = GetPlayers();
	foreach(e_player in a_players)
	{
		e_player SetThreatBiasGroup("players");
	}
	level.var_2fd26037 SetThreatBiasGroup("hendricks");
	spawner::add_spawn_function_group("remote_snipers", "targetname", &namespace_63b4601c::function_bce5a9e);
	spawner::add_global_spawn_function("axis", &function_eef8125c);
	spawner::add_spawn_function_group("plaza_enemies_wave_01", "targetname", &function_d824ba94, "54i_grunts");
	spawner::add_spawn_function_group("plaza_enemies_wave_01", "targetname", &function_db772ecc, 1024);
	spawner::add_spawn_function_group("plaza_enemies_wave_02", "targetname", &function_d824ba94, "54i_grunts");
	spawner::add_spawn_function_group("plaza_enemies_wave_02", "targetname", &function_db772ecc, 1024);
	var_443c7feb = GetEnt("plaza_enemies_reinforcements", "targetname");
	spawner::add_spawn_function_group(var_443c7feb.target, "targetname", &function_d824ba94, "54i_reinforcements");
	spawner::add_spawn_function_group(var_443c7feb.target, "targetname", &function_db772ecc, 1750);
	spawner::add_spawn_function_group(var_443c7feb.target, "targetname", &function_688b4ed7);
	spawner::add_spawn_function_group("plaza_warlords", "targetname", &function_d824ba94, "54i_warlords");
	spawner::add_spawn_function_group("plaza_warlords", "targetname", &function_b25bc7b2);
	spawner::add_spawn_function_group("plaza_warlords_2", "targetname", &function_d824ba94, "54i_warlords");
	spawner::add_spawn_function_group("plaza_warlords_2", "targetname", &function_b25bc7b2);
	spawner::add_spawn_function_group("plaza_warlords_3", "targetname", &function_d824ba94, "54i_warlords");
	spawner::add_spawn_function_group("plaza_warlords_3", "targetname", &function_b25bc7b2);
	spawner::add_spawn_function_group("plaza_siegebots", "targetname", &function_d824ba94, "54i_siegebots");
	spawner::add_spawn_function_group("plaza_siegebots", "targetname", &function_3dc47c4e);
	var_4b4c408f = GetEnt("plaza_allies_spawn_manager", "targetname");
	spawner::add_spawn_function_group(var_4b4c408f.target, "targetname", &function_d824ba94, "sh_allies");
	spawner::add_spawn_function_group(var_4b4c408f.target, "targetname", &function_db772ecc, 768);
	var_3e8c1c00 = GetEnt("sh_wasp", "targetname");
	var_b60b5e6b = GetEnt("plaza_volume_center", "targetname");
	foreach(var_aaefedf3 in GetEntArray(var_3e8c1c00.target, "targetname"))
	{
		vehicle::add_spawn_function(var_aaefedf3.targetname, &function_d824ba94, "sh_wasps");
		vehicle::add_spawn_function(var_aaefedf3.targetname, &function_68e4ea91, var_b60b5e6b);
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
function function_db772ecc(goalRadius)
{
	self.goalRadius = goalRadius;
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
function function_d824ba94(group)
{
	self endon("death");
	self SetThreatBiasGroup(group);
	if(level flag::get("plaza_combat_live"))
	{
		return;
	}
	if(group == "54i_grunts" || group == "54i_reinforcements" || group == "sh_wasps")
	{
		a_players = GetPlayers();
		foreach(e_player in a_players)
		{
			self SetIgnoreEnt(e_player, 1);
		}
		level flag::wait_till("plaza_combat_live");
		a_players = GetPlayers();
		foreach(e_player in a_players)
		{
			self SetIgnoreEnt(e_player, 0);
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
	a_volume = [];
	a_volume[0] = GetEnt("plaza_volume_01", "targetname");
	a_volume[1] = GetEnt("plaza_volume_02", "targetname");
	a_volume[2] = GetEnt("plaza_volume_03", "targetname");
	a_volume[3] = GetEnt("plaza_volume_04", "targetname");
	a_volume[4] = GetEnt("sh_steps_volume", "targetname");
	index = 0;
	for(i = 0; i < a_volume.size; i++)
	{
		if(a_volume[i] == level.var_4982c438)
		{
			index = i;
		}
	}
	for(i = index; i >= 0; i--)
	{
		a_volume = Array::remove_index(a_volume, i, 1);
	}
	if(a_volume.size == 0)
	{
		var_71484221 = GetEnt("sh_steps_volume", "targetname");
	}
	else
	{
		var_71484221 = Array::random(a_volume);
	}
	self SetGoal(var_71484221, 1);
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
	a_enemies = spawner::get_ai_group_ai("plaza_enemies");
	foreach(e_enemy in a_enemies)
	{
		b_touching = 0;
		if(!isalive(e_enemy))
		{
			break;
		}
		if(isdefined(e_enemy.script_noteworthy) && e_enemy.script_noteworthy == "siegebot")
		{
			break;
		}
		if(isdefined(var_242401fb) && e_enemy istouching(var_242401fb))
		{
			b_touching = 1;
		}
		if(isdefined(var_b21c92c0) && e_enemy istouching(var_b21c92c0))
		{
			b_touching = 1;
		}
		if(isdefined(var_d81f0d29) && e_enemy istouching(var_d81f0d29))
		{
			b_touching = 1;
		}
		if(isdefined(var_962b7136) && e_enemy istouching(var_962b7136))
		{
			b_touching = 1;
		}
		if(b_touching)
		{
			e_enemy SetGoal(var_fe5aba79, 1);
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
	self.goalHeight = 512;
	var_eaf20b66 = GetNodeArray(self.script_noteworthy, "targetname");
	foreach(node in var_eaf20b66)
	{
		self WarlordInterface::AddPreferedPoint(node.origin, 4000, 8000);
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
	e_vol = GetEnt("gv_plaza_siegebot", "targetname");
	self SetGoal(e_vol, 1);
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
	self endon("death");
	if(!isdefined(self) || !isalive(self))
	{
		return;
	}
	self.overrideActorDamage = &function_7273d688;
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
function function_7273d688(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, modelIndex, psOffsetTime, bonename)
{
	if(isdefined(eAttacker) && !isPlayer(eAttacker) && eAttacker != level.var_2fd26037)
	{
		iDamage = 0;
	}
	else if(!level flag::get("plaza_combat_live"))
	{
		level flag::set("plaza_combat_live");
	}
	return iDamage;
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
	foreach(e_player in level.activePlayers)
	{
		e_player thread function_dcf7f342();
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
		self waittill("weapon_fired", curWeapon);
		if(!WeaponHasAttachment(curWeapon, "suppressed") || curWeapon.name != "ar_marksman_veng_hero_weap")
		{
			level flag::set("plaza_combat_live");
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
function function_68e4ea91(e_goal_volume)
{
	self endon("death");
	if(isdefined(e_goal_volume))
	{
		self SetGoal(e_goal_volume, 1);
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
	self endon("death");
	wait(RandomFloatRange(1.5, 5));
	self kill();
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
	exploder::exploder("sh_lhs_fire");
	wait(2.5);
	exploder::exploder("sh_rhs_fire");
	wait(10);
	exploder::exploder("sh_cent_fire");
	wait(6);
	exploder::exploder("sh_upper_fire");
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
	exploder::stop_exploder("sh_lhs_fire");
	exploder::stop_exploder("sh_rhs_fire");
	exploder::stop_exploder("sh_cent_fire");
	exploder::stop_exploder("sh_upper_fire");
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
	self endon("disconnect");
	level endon("hash_646ccd7c");
	while(1)
	{
		eye = self GetEye();
		var_fd26df34 = AnglesToForward(self getPlayerAngles());
		targets = GetAITeamArray("axis");
		foreach(var_daf22616 in targets)
		{
			if(!isdefined(var_daf22616))
			{
				continue;
			}
			if(Distance2DSquared(self.origin, var_daf22616.origin) > 1048576)
			{
				continue;
			}
			var_bbf94a49 = var_daf22616.origin;
			if(IsSentient(var_daf22616))
			{
				var_bbf94a49 = var_daf22616 GetEye();
			}
			dir = VectorNormalize(var_bbf94a49 - eye);
			if(VectorDot(var_fd26df34, dir) > 0.99)
			{
				if(SightTracePassed(var_bbf94a49, eye, 0, undefined))
				{
					if(isalive(var_daf22616))
					{
						if(IsSubStr(var_daf22616.classname, "warlord"))
						{
							wait(7);
							continue;
						}
						if(IsSubStr(var_daf22616.classname, "rpg"))
						{
							if(math::cointoss())
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
						if(isdefined(var_daf22616.script_vehicleride) && var_daf22616.script_startingposition == "gunner1")
						{
							wait(7);
							continue;
						}
						if(isVehicle(var_daf22616))
						{
							if(IsSubStr(var_daf22616.vehicleType, "wasp"))
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
	self endon("disconnect");
	self endon("hash_c23c76ef");
	var_a8546f11 = [];
	var_a8546f11[0] = "hend_get_down_here_we_go_0";
	var_a8546f11[1] = "hend_i_m_being_flanked_g_0";
	var_a8546f11[2] = "hend_get_your_ass_down_he_0";
	self thread function_2b657656();
	while(1)
	{
		wait(randomIntRange(10, 15));
		var_616d3e3e = Array::random(var_a8546f11);
		level.var_2fd26037 namespace_63b4601c::function_5fbec645(var_616d3e3e, 0, 0, self);
		var_a8546f11 = Array::exclude(var_a8546f11, var_616d3e3e);
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
	self endon("disconnect");
	trigger::wait_till("plaza_combat_failsafe", "targetname", self);
	self notify("hash_c23c76ef");
}

