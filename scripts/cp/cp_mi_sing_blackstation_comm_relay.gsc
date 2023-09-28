#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_cross_debris;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_641b22d4;

/*
	Name: function_c9040e7d
	Namespace: namespace_641b22d4
	Checksum: 0x93376447
	Offset: 0xD68
	Size: 0x1DB
	Parameters: 2
	Flags: None
*/
function function_c9040e7d(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		objectives::set("cp_level_blackstation_comm_relay");
		objectives::set("cp_level_blackstation_goto_relay");
		namespace_79e1cd97::function_bff1a867("objective_comm_relay_traverse");
		namespace_79e1cd97::function_da579a5d("objective_relay_traverse_kane");
		level.var_3d556bcd ai::set_ignoreme(1);
		level.var_3d556bcd ai::set_ignoreall(1);
		level.var_2fd26037 SetGoal(GetNode("hendricks_intro_end", "targetname"), 1);
		level.var_3d556bcd SetGoal(GetNode("kane_intro_end", "targetname"), 1);
		level thread namespace_79e1cd97::function_90db9f9c();
		level thread scene::Play("cin_bla_10_01_kaneintro_end_idle");
		load::function_a2995f22();
		level thread namespace_4297372::function_6c35b4f3();
	}
	level thread namespace_79e1cd97::function_6778ea09("light_ne");
	function_d04ca07c();
}

/*
	Name: function_311be427
	Namespace: namespace_641b22d4
	Checksum: 0xC239680
	Offset: 0xF50
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_311be427(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_d04ca07c
	Namespace: namespace_641b22d4
	Checksum: 0xF7CC7780
	Offset: 0xF80
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_d04ca07c()
{
	level thread function_3cd30cbd();
	level thread function_e312f792();
	level thread function_e762f0f7();
	level.var_2fd26037 thread function_9ead7187();
	if(isdefined(level.BZM_BLACKSTATIONDialogue4_1Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue4_1Callback]]();
	}
	function_6c97cd4();
	trigger::wait_till("trig_comm_relay_spawns", "targetname");
	skipto::function_be8adfb8("objective_comm_relay_traverse");
}

/*
	Name: function_a2073f94
	Namespace: namespace_641b22d4
	Checksum: 0xD76C9AFD
	Offset: 0x1058
	Size: 0x17B
	Parameters: 2
	Flags: None
*/
function function_a2073f94(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		objectives::set("cp_level_blackstation_comm_relay");
		objectives::set("cp_level_blackstation_goto_relay");
		namespace_79e1cd97::function_bff1a867("objective_comm_relay");
		namespace_79e1cd97::function_da579a5d("objective_blackstation_exterior");
		level.var_2fd26037 thread function_9ead7187();
		level.var_3d556bcd ai::set_ignoreme(1);
		level.var_3d556bcd ai::set_ignoreall(1);
		level thread function_9520d9e4(var_74cd64bc);
		function_6c97cd4();
		trigger::use("trig_comm_relay_spawns", "targetname");
		level thread function_9e1e35a();
		level thread namespace_4297372::function_6c35b4f3();
		load::function_a2995f22();
	}
	function_20386e5d();
}

/*
	Name: function_6c97cd4
	Namespace: namespace_641b22d4
	Checksum: 0xE6F48E20
	Offset: 0x11E0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_6c97cd4()
{
	spawner::add_spawn_function_group("comm_relay_group01", "targetname", &function_8d47a6e7);
	spawner::add_spawn_function_group("comm_relay_group02", "targetname", &function_3245f6e9);
	spawner::add_spawn_function_group("comm_relay_patroller", "script_noteworthy", &function_e3e0028);
	spawner::add_spawn_function_group("comm_relay_retreater", "script_noteworthy", &function_70643fc);
	spawner::simple_spawn("comm_relay_awaken_robot1", &function_1cf52369);
	util::wait_network_frame();
	spawner::simple_spawn("comm_relay_awaken_robot2", &function_1cf52369);
	util::wait_network_frame();
	spawner::simple_spawn("comm_relay_awaken_robot3", &function_1cf52369);
}

/*
	Name: function_7e7b796a
	Namespace: namespace_641b22d4
	Checksum: 0x149387CB
	Offset: 0x1348
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_7e7b796a(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_blackstation_goto_relay");
	objectives::complete("cp_level_blackstation_comm_relay");
	objectives::set("cp_level_blackstation_blackstation");
	objectives::set("cp_level_blackstation_rendezvous");
}

/*
	Name: function_20386e5d
	Namespace: namespace_641b22d4
	Checksum: 0x25971162
	Offset: 0x13D8
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_20386e5d()
{
	level thread function_76732cae();
	level thread function_5c3fb5af();
	level thread function_e011018();
	level thread table_flip();
	level thread function_5470e1dd();
	Array::thread_all(level.activePlayers, &namespace_79e1cd97::function_d870e0, "trig_comm_relay_approach");
	Array::thread_all(level.activePlayers, &namespace_79e1cd97::function_d870e0, "comm_relay_interior_hendricks");
	t_hack = GetEnt("clear_robot_use", "targetname");
	t_hack TriggerEnable(0);
	spawner::simple_spawn_single("comm_relay_igc_robot", &function_6d389c01);
	level flag::wait_till("relay_reinforce");
	spawner::simple_spawn("comm_relay_back_room_humans");
	spawner::simple_spawn("comm_relay_group03", &function_aadd72bd);
	level flag::wait_till("comm_relay_hacked");
	skipto::function_be8adfb8("objective_comm_relay");
	level.var_2fd26037 notify("hash_d60979de");
}

/*
	Name: function_76732cae
	Namespace: namespace_641b22d4
	Checksum: 0x92EA9B6B
	Offset: 0x15D8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_76732cae()
{
	trigger::wait_till("trigger_comm_relay_window");
	var_ca17143d = struct::get("comm_relay_glass");
	glassRadiusDamage(var_ca17143d.origin, 10, 5000, 5000);
}

/*
	Name: function_7b57f76b
	Namespace: namespace_641b22d4
	Checksum: 0x1EE7D8C
	Offset: 0x1650
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7b57f76b()
{
	wait(5);
	self delete();
}

/*
	Name: function_3cd30cbd
	Namespace: namespace_641b22d4
	Checksum: 0x4662B43
	Offset: 0x1678
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_3cd30cbd()
{
	level objectives::breadcrumb("comm_relay_traverse_breadcrumb");
	level objectives::breadcrumb("breadcrumb_comm_relay_climb", "cp_level_blackstation_climb");
	level objectives::breadcrumb("breadcrumb_cross_bridge");
	level objectives::breadcrumb("comm_relay_breadcrumb");
	level objectives::breadcrumb("waypoint_comm_relay");
}

/*
	Name: function_9e1e35a
	Namespace: namespace_641b22d4
	Checksum: 0xAA433413
	Offset: 0x1730
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_9e1e35a()
{
	level objectives::breadcrumb("comm_relay_breadcrumb");
	level objectives::breadcrumb("waypoint_comm_relay");
}

/*
	Name: function_e312f792
	Namespace: namespace_641b22d4
	Checksum: 0xDE404BDA
	Offset: 0x1780
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_e312f792()
{
	level thread function_9520d9e4();
	level endon("hash_90257695");
	trigger::wait_till("t_comms_vo");
	level.var_2fd26037 dialog::say("hend_so_kane_now_that_t_0");
	level dialog::remote("kane_strike_and_strip_b_0", 0.5);
	level dialog::function_13b3b16a("plyr_what_about_evac_for_0", 0.5);
	level dialog::remote("kane_facts_are_the_stat_0", 0.5);
	level flag::wait_till("comm_relay_dialog02");
	level.var_2fd26037 dialog::say("hend_kane_we_re_approac_0");
}

/*
	Name: function_9520d9e4
	Namespace: namespace_641b22d4
	Checksum: 0x7F9A525E
	Offset: 0x18A0
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_9520d9e4(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	level flag::wait_till("relay_room_clear");
	level thread namespace_4297372::function_d4c52995();
	level thread scene::Play("cin_bla_11_01_comm_vign_scramble_hendricks_start");
	level thread function_8f139027();
	level flag::set("comm_relay_hendricks_ready");
	level objectives::complete("cp_waypoint_breadcrumb");
}

/*
	Name: function_8f139027
	Namespace: namespace_641b22d4
	Checksum: 0x7F899C57
	Offset: 0x1978
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_8f139027()
{
	level endon("hash_60ad62af");
	wait(25);
	level.var_2fd26037 dialog::say("hend_come_on_get_to_work_0");
	wait(15);
	level.var_2fd26037 dialog::say("hend_we_don_t_got_all_day_0");
}

/*
	Name: function_6d389c01
	Namespace: namespace_641b22d4
	Checksum: 0x7C5C7773
	Offset: 0x19E0
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_6d389c01()
{
	self.goalRadius = 4;
	self.noCybercom = 1;
	self ai::set_behavior_attribute("can_gib", 0);
	var_ebfa948 = self.health;
	self.health = self.health * 2;
	self.allowdeath = 0;
	self thread function_862c1664();
	self.fovcosine = 1;
	trigger::wait_till("trig_comm_relay_igc_robot", "targetname", self);
	e_clip = GetEnt("comm_relay_console_clip", "targetname");
	e_clip MoveZ(512, 0.05);
	e_clip waittill("movedone");
	self util::waittill_any("enemy", "damage", "bulletwhizby", "comm_relay_proximity", "comm_relay_engaged");
	level flag::set("comm_relay_engaged");
	self.fovcosine = 0;
	while(self.health > var_ebfa948)
	{
		wait(0.05);
	}
	level thread scene::Play("cin_bla_11_06_comm_vign_scramble_destroyrobot", self);
	e_clip delete();
	self notsolid();
	self namespace_16f9ecd3::disable_thermal();
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self ai::set_behavior_attribute("robot_lights", 2);
	level waittill("hash_c11ac5b0");
	level flag::set("igc_robot_down");
	level flag::wait_till("comm_relay_hendricks_ready");
	t_hack = GetEnt("clear_robot_use", "targetname");
	t_hack TriggerEnable(1);
	util::function_14518e76(t_hack, &"cp_level_blackstation_hack_relay", &"CP_MI_SING_BLACKSTATION_MOVE_ROBOT", &function_af9d4545, self);
}

/*
	Name: function_af9d4545
	Namespace: namespace_641b22d4
	Checksum: 0x18EA4246
	Offset: 0x1CF8
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_af9d4545(e_player)
{
	e_player endon("death");
	self gameobjects::disable_object();
	e_player thread function_4c16ca2b();
	e_player thread namespace_79e1cd97::function_ed7faf05();
	level notify("hash_60ad62af");
	level thread namespace_4297372::function_cde82250();
	level thread namespace_4297372::function_6c35b4f3();
	var_f6c5842 = GetEnt("comm_relay_igc_robot_ai", "targetname");
	if(isdefined(level.BZM_BLACKSTATIONDialogue4_2Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue4_2Callback]]();
	}
	level scene::add_scene_func("cin_bla_11_01_comm_vign_scramble_player_start", &function_104ecb4b);
	level scene::add_scene_func("cin_bla_11_01_comm_vign_scramble_player_end", &function_77ccb9da, "play");
	level scene::Play("cin_bla_11_01_comm_vign_scramble_player_start", Array(e_player, var_f6c5842));
	level thread scene::Play("cin_bla_11_01_comm_vign_scramble_hendricks_end");
	level scene::Play("cin_bla_11_01_comm_vign_scramble_player_end", Array(e_player));
	e_player thread namespace_79e1cd97::function_2c33b48e();
	level flag::set("comm_relay_hacked");
	level thread function_7b8a2da8();
}

/*
	Name: function_77ccb9da
	Namespace: namespace_641b22d4
	Checksum: 0xA6AE2274
	Offset: 0x1F10
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_77ccb9da(a_ents)
{
	level thread function_53f20e51();
	level thread function_5be784f3();
	e_player = a_ents["player 1"];
	while(!level flag::get("comm_relay_pulse"))
	{
		e_player cybercom::function_f8669cbf(1);
		wait(3.05);
	}
}

/*
	Name: function_53f20e51
	Namespace: namespace_641b22d4
	Checksum: 0x5AC500E8
	Offset: 0x1FB8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_53f20e51()
{
	level waittill("hash_311e66ea");
	level flag::set("comm_relay_pulse");
}

/*
	Name: function_5be784f3
	Namespace: namespace_641b22d4
	Checksum: 0xE8DFD64E
	Offset: 0x1FF0
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_5be784f3()
{
	GetEnt("com_curve_on", "targetname") delete();
	GetEnt("com_rugged_on", "targetname") delete();
	GetEnt("com_curve_glitch_1", "targetname") show();
	GetEnt("com_rugged_glitch_1", "targetname") show();
	wait(7);
	GetEnt("com_curve_glitch_1", "targetname") delete();
	GetEnt("com_rugged_glitch_1", "targetname") delete();
	GetEnt("com_curve_glitch_2", "targetname") show();
	GetEnt("com_rugged_glitch_2", "targetname") show();
	level flag::wait_till("comm_relay_pulse");
	GetEnt("com_curve_glitch_2", "targetname") delete();
	GetEnt("com_rugged_glitch_2", "targetname") delete();
	GetEnt("com_curve_off", "targetname") show();
	GetEnt("com_rugged_off", "targetname") show();
}

/*
	Name: function_104ecb4b
	Namespace: namespace_641b22d4
	Checksum: 0x989A4A3A
	Offset: 0x2268
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_104ecb4b(a_ents)
{
	level waittill("hash_7fd4ec9d");
	e_robot = a_ents["comm_relay_igc_robot"];
	if(isdefined(e_robot))
	{
		e_robot Detach(e_robot.head);
	}
	level waittill("hash_82ab74b7");
	level thread scene::Play("cin_bla_11_01_comm_vign_scramble_hendricks_talk2kane");
}

/*
	Name: function_4c16ca2b
	Namespace: namespace_641b22d4
	Checksum: 0x5EDD15FC
	Offset: 0x22F8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_4c16ca2b()
{
	level endon("hash_549a5f32");
	self waittill("death");
	level flag::set("comm_relay_hacked");
	level.var_2fd26037 StopAnimScripted();
}

/*
	Name: function_6c35b4f3
	Namespace: namespace_641b22d4
	Checksum: 0x55B22437
	Offset: 0x2358
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6c35b4f3()
{
	level flag::wait_till("comm_relay_hacked");
	level thread namespace_4297372::function_6c35b4f3();
}

/*
	Name: function_9ead7187
	Namespace: namespace_641b22d4
	Checksum: 0xEE52CBF3
	Offset: 0x23A0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_9ead7187()
{
	level endon("hash_ef8dbf74");
	self.ignoreall = 1;
	level flag::wait_till("comm_relay_engaged");
	self thread namespace_79e1cd97::function_dccf6ccc();
	self.ignoreall = 0;
	level flag::wait_till("relay_room_clear");
	trigger::use("trig_hendricks_comm_relay02", "targetname");
	level flag::wait_till("comm_relay_hacked");
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level scene::add_scene_func("cin_bla_11_02_comm_vign_doorkick", &function_6eaf20ba);
	level thread scene::Play("cin_bla_11_02_comm_vign_doorkick", level.var_2fd26037);
}

/*
	Name: function_6eaf20ba
	Namespace: namespace_641b22d4
	Checksum: 0x6EBF5854
	Offset: 0x24F8
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_6eaf20ba(a_ents)
{
	level endon("hash_ef8dbf74");
	wait(0.5);
	level.var_2fd26037 colors::enable();
	trigger::use("triggercolor_walkway");
	wait(0.5);
	GetEnt("comrelay_door_clip_right", "targetname") delete();
	GetEnt("comrelay_door_clip_left", "targetname") delete();
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level notify("door_open");
}

/*
	Name: function_7b8a2da8
	Namespace: namespace_641b22d4
	Checksum: 0x607B1AFB
	Offset: 0x25F0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_7b8a2da8()
{
	level endon("door_open");
	wait(10);
	level notify("hash_ef8dbf74");
	nd_door = GetNode("node_comm_door", "targetname");
	level.var_2fd26037 skipto::function_d9b1ee00(nd_door);
	level.var_2fd26037 colors::enable();
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level namespace_e785bfa0::function_b0ed4f4f();
	trigger::use("triggercolor_walkway");
}

/*
	Name: function_aadd72bd
	Namespace: namespace_641b22d4
	Checksum: 0x89CCFF96
	Offset: 0x26D0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_aadd72bd()
{
	self endon("death");
	wait(RandomInt(5));
	self ai::set_behavior_attribute("move_mode", "rusher");
}

/*
	Name: function_8d47a6e7
	Namespace: namespace_641b22d4
	Checksum: 0x213BB742
	Offset: 0x2728
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_8d47a6e7()
{
	self endon("death");
	self thread function_862c1664();
	self.fovcosine = 1;
	self util::waittill_any("enemy", "damage", "bulletwhizby", "comm_relay_proximity", "comm_relay_engaged");
	level flag::set("comm_relay_engaged");
	spawn_manager::enable("comm_relay_group02_sm", 1);
	self.fovcosine = 0;
	if(self.archetype == "robot")
	{
		self SetGoal(GetEnt("comm_relay_goal_volume", "targetname"));
		level flag::wait_till("comm_relay_back_room");
		self SetGoal(GetEnt("comm_relay_back_volume", "targetname"), 1);
	}
}

/*
	Name: function_862c1664
	Namespace: namespace_641b22d4
	Checksum: 0x851A966A
	Offset: 0x2888
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_862c1664()
{
	self endon("death");
	trigger::wait_till("trig_comm_relay_proximity", "targetname");
	self notify("hash_2bab7a99");
}

/*
	Name: function_3245f6e9
	Namespace: namespace_641b22d4
	Checksum: 0xD95B8FA1
	Offset: 0x28D0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_3245f6e9()
{
	self endon("death");
	self ai::set_behavior_attribute("move_mode", "rambo");
}

/*
	Name: function_e3e0028
	Namespace: namespace_641b22d4
	Checksum: 0xBC5F1703
	Offset: 0x2910
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_e3e0028()
{
	self endon("death");
	level endon("hash_90257695");
	next_node = GetNearestNode(self.origin);
	do
	{
		self ai::force_goal(next_node, 4);
		self waittill("goal");
		if(isdefined(next_node.script_wait_min) && isdefined(next_node.script_wait_max))
		{
			self ai::force_goal(self.origin + AnglesToForward(next_node.angles) * 16, 4);
			wait(RandomFloatRange(next_node.script_wait_min, next_node.script_wait_max));
		}
		next_node = GetNode(next_node.target, "targetname");
	}
	while(!isdefined(next_node));
}

/*
	Name: function_70643fc
	Namespace: namespace_641b22d4
	Checksum: 0xC5843702
	Offset: 0x2A50
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_70643fc()
{
	self endon("death");
	level flag::wait_till("comm_relay_engaged");
	self SetGoal(GetEnt("comm_relay_back_volume", "targetname"), 1);
}

/*
	Name: function_1cf52369
	Namespace: namespace_641b22d4
	Checksum: 0x6652E9A
	Offset: 0x2AC0
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_1cf52369()
{
	self endon("death");
	level endon("hash_4c3316ac");
	self.script_noteworthy = "awakened_robot";
	s_scene = struct::get(self.target);
	s_scene scene::init(s_scene.scriptbundlename, self);
	var_85178a47 = util::spawn_model("tag_origin", s_scene.origin, s_scene.angles + VectorScale((0, 1, 0), 90));
	var_85178a47 scene::init("p7_fxanim_cp_sgen_charging_station_open_01_bundle");
	level flag::wait_till("comm_relay_engaged");
	level util::waittill_any_timeout(45, "comm_relay_back_room", "defenders_low");
	wait(RandomFloatRange(2.5, 4));
	level scene::add_scene_func(s_scene.scriptbundlename, &function_48aa6d93, "done");
	s_scene thread scene::Play(s_scene.scriptbundlename, self);
	level flag::set("awakening_begun");
	var_85178a47 scene::Play("p7_fxanim_cp_sgen_charging_station_open_01_bundle");
	var_85178a47 delete();
	level flag::set("awakening_end");
	self SetGoal(GetEnt("comm_relay_back_volume", "targetname"));
}

/*
	Name: function_48aa6d93
	Namespace: namespace_641b22d4
	Checksum: 0x939C8323
	Offset: 0x2D18
	Size: 0x8D
	Parameters: 1
	Flags: None
*/
function function_48aa6d93(a_ents)
{
	foreach(var_f6c5842 in a_ents)
	{
		var_f6c5842.b_activated = 1;
	}
}

/*
	Name: function_5c3fb5af
	Namespace: namespace_641b22d4
	Checksum: 0x8CFC1D61
	Offset: 0x2DB0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_5c3fb5af()
{
	level thread function_66606bc7();
	level thread function_5458238e();
	level flag::wait_till("comm_relay_back_room");
	spawn_manager::kill("comm_relay_group02_sm", 1);
	spawner::waittill_ai_group_cleared("comm_relay_defenders");
	level flag::wait_till("igc_robot_down");
	level flag::wait_till("no_awakened_robots");
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	savegame::function_5d2cdd99();
	level flag::set("relay_room_clear");
}

/*
	Name: function_66606bc7
	Namespace: namespace_641b22d4
	Checksum: 0x53287A9E
	Offset: 0x2ED8
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_66606bc7()
{
	level flag::wait_till("comm_relay_engaged");
	spawner::waittill_ai_group_count("comm_relay_defenders", 4);
	level notify("hash_50f53660");
}

/*
	Name: function_5458238e
	Namespace: namespace_641b22d4
	Checksum: 0xFD17A345
	Offset: 0x2F38
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_5458238e()
{
	level endon("hash_4c3316ac");
	while(1)
	{
		wait(0.25);
		level.var_1cf6a131 = GetAIArray("awakened_robot", "script_noteworthy");
		if(level.var_1cf6a131.size > 0)
		{
			level flag::set_val("no_awakened_robots", 0);
		}
		else
		{
			level flag::set("no_awakened_robots");
		}
	}
}

/*
	Name: function_5470e1dd
	Namespace: namespace_641b22d4
	Checksum: 0x3192663B
	Offset: 0x2FE0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5470e1dd()
{
	e_linker = GetEnt("e_table_linker", "targetname");
	Array::thread_all(level.activePlayers, &function_48e2699d, e_linker);
}

/*
	Name: function_48e2699d
	Namespace: namespace_641b22d4
	Checksum: 0x488C1EC3
	Offset: 0x3048
	Size: 0xC7
	Parameters: 1
	Flags: None
*/
function function_48e2699d(e_table)
{
	level endon("table_flip");
	self endon("death");
	var_5f0fc534 = 250000;
	while(1)
	{
		self util::waittill_player_looking_at(e_table.origin, 25, 0, self);
		if(Distance2DSquared(self.origin, e_table.origin) <= var_5f0fc534)
		{
			level flag::set("go_flippers");
		}
		wait(0.1);
	}
}

/*
	Name: function_e011018
	Namespace: namespace_641b22d4
	Checksum: 0xE7D13F44
	Offset: 0x3118
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e011018()
{
	level flag::wait_till("go_flippers");
	spawner::simple_spawn("comm_relay_table_flippers", &function_34bb534a);
}

/*
	Name: function_34bb534a
	Namespace: namespace_641b22d4
	Checksum: 0x545B53C8
	Offset: 0x3170
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_34bb534a()
{
	self endon("death");
	self.goalRadius = 8;
	self ai::set_behavior_attribute("sprint", 1);
	self waittill("goal");
	level flag::set("table_flip");
	self.goalRadius = 2048;
	self ai::set_behavior_attribute("sprint", 0);
}

/*
	Name: table_flip
	Namespace: namespace_641b22d4
	Checksum: 0xC1294EB9
	Offset: 0x3208
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function table_flip()
{
	level flag::wait_till("table_flip");
	a_table = GetEntArray("com_relay_table", "targetname");
	namespace_79e1cd97::function_da77906f(a_table, "connect");
	e_linker = GetEnt("e_table_linker", "targetname");
	foreach(ent in a_table)
	{
		ent LinkTo(e_linker);
	}
	e_linker RotateRoll(88, 0.4);
	e_linker waittill("movedone");
	namespace_79e1cd97::function_da77906f(a_table, "disconnect");
}

/*
	Name: function_e762f0f7
	Namespace: namespace_641b22d4
	Checksum: 0x7A0EAD7E
	Offset: 0x3380
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_e762f0f7()
{
	Array::thread_all(GetEntArray("trig_atrium_glass", "targetname"), &function_be761c1);
}

/*
	Name: function_be761c1
	Namespace: namespace_641b22d4
	Checksum: 0x5E5AF84C
	Offset: 0x33D0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_be761c1()
{
	v_origin = self.origin;
	self trigger::wait_till();
	if(isdefined(self.script_noteworthy) && self.script_noteworthy == "atrium_delete_path_clip")
	{
		GetEnt("hendricks_window_clip", "targetname") delete();
	}
	glassRadiusDamage(v_origin, 10, 500, 500);
}

