#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_squad_control;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_markets;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai\warlord;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_siegebot;

#namespace namespace_23646cee;

/*
	Name: warehouse_main
	Namespace: namespace_23646cee
	Checksum: 0xD47420C9
	Offset: 0x13D0
	Size: 0x3FB
	Parameters: 0
	Flags: None
*/
function warehouse_main()
{
	foreach(player in level.players)
	{
		player thread function_3460d45c();
	}
	level function_2d153737();
	level.var_2fd26037 colors::enable();
	level.var_2fd26037.goalRadius = 200;
	level scene::init("cin_bio_05_02_warehouse_aie_activate");
	level thread function_d1e71c2c();
	spawner::add_spawn_function_group("warehouse_left_waiting", "script_noteworthy", &function_e7b0cb8e);
	spawner::add_spawn_function_group("robot_warehouse_high", "script_string", &function_9bf4e185);
	spawner::add_spawn_function_group("warehouse_container_shooter", "targetname", &function_ac9359ee);
	spawner::add_spawn_function_group("wasps_warehouse", "script_noteworthy", &function_d3621fb);
	spawner::add_spawn_function_group("warehouse_enemy_warlord", "targetname", &function_4940548b);
	a_spawn_triggers = GetEntArray("spawn_trigger", "script_parameters");
	Array::thread_all(a_spawn_triggers, &function_26edc5d7);
	wait(0.5);
	level thread function_cc539146();
	level thread function_54ba2021();
	level thread function_16ff311a();
	level thread function_b1942036();
	level thread function_652f488c();
	level thread function_f18853d0();
	level thread function_ecf3cf41();
	level thread function_afee5825();
	level thread function_3c56dee4();
	level thread function_2a08e741();
	level thread function_6fb5d6ef();
	level.var_2fd26037 thread function_d02d38d();
	level.var_2fd26037 thread function_c2f6ee2c("right");
	level.var_2fd26037 thread function_c2f6ee2c("left");
	namespace_27a45d31::function_a22e7052(0, "warehouse_robot_exit_traversal", "targetname");
	trigger::wait_till("trig_back_door_close");
	level function_4812aaa();
}

/*
	Name: Precache
	Namespace: namespace_23646cee
	Checksum: 0x99EC1590
	Offset: 0x17D8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Precache()
{
}

/*
	Name: function_98f8d85b
	Namespace: namespace_23646cee
	Checksum: 0x5FC9B82
	Offset: 0x17E8
	Size: 0x2AB
	Parameters: 2
	Flags: None
*/
function function_98f8d85b(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_warehouse_init");
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_warehouse"));
	objectives::Hide("cp_waypoint_breadcrumb");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_27a45d31::function_bff1a867(str_objective);
		namespace_55d2f1be::function_cef897cf(str_objective);
		level thread namespace_27a45d31::function_753a859(str_objective);
		objectives::set("cp_level_biodomes_cloud_mountain");
		trigger::use("trig_markets2_colors_end_2");
		Array::delete_all(GetEntArray("triggers_markets1", "script_noteworthy"));
		Array::delete_all(GetEntArray("triggers_markets2", "script_noteworthy"));
		level thread namespace_f1b4cbbc::function_fa2e45b8();
		level thread namespace_27a45d31::function_cc20e187("markets2");
		level thread namespace_27a45d31::function_cc20e187("warehouse", 1);
		var_6ecc8f2b = GetEnt("markets2_bridge_collision", "targetname");
		var_6ecc8f2b delete();
		load::function_a2995f22();
	}
	level thread namespace_27a45d31::function_cc20e187("cloudmountain", 1);
	level.var_996e05eb = "friendly_spawns_warehouse_entrance";
	function_9e3608e3("fxanim_markets1");
	function_9e3608e3("fxanim_nursery");
	function_6ddd4fa4("fxanim_cloud_mountain");
	namespace_73fc8448::function_dbb91fcf();
	level thread warehouse_main();
}

/*
	Name: function_4d15fa71
	Namespace: namespace_23646cee
	Checksum: 0x4F77DD0E
	Offset: 0x1AA0
	Size: 0x91
	Parameters: 4
	Flags: None
*/
function function_4d15fa71(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_warehouse_done");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_warehouse"));
	objectives::complete("cp_level_biodomes_cloud_mountain");
	level notify("hash_43a6ada4");
}

/*
	Name: function_5e699ca2
	Namespace: namespace_23646cee
	Checksum: 0x3121969F
	Offset: 0x1B40
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_5e699ca2(str_objective, var_74cd64bc)
{
	level thread function_79241926(str_objective, 2);
}

/*
	Name: function_9989cb45
	Namespace: namespace_23646cee
	Checksum: 0xFE59C37
	Offset: 0x1B80
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_9989cb45(str_objective, var_74cd64bc)
{
	level thread function_79241926(str_objective, 1);
}

/*
	Name: function_79241926
	Namespace: namespace_23646cee
	Checksum: 0x1A840C83
	Offset: 0x1BC0
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_79241926(str_objective, var_23d9a41a)
{
	namespace_27a45d31::function_bff1a867(str_objective);
	level namespace_55d2f1be::function_cef897cf(str_objective, var_23d9a41a);
	level flag::wait_till("first_player_spawned");
	wait(2);
	spawner::simple_spawn("warehouse_enemy_warlord", &function_dfbb625c);
	level flag::set("warehouse_warlord");
	level thread clientfield::set("warehouse_window_break", 1);
	GetEnt("warehouse_overwatch_window", "targetname") delete();
	var_bd0f35c = struct::get("warehouse_surprise");
	Earthquake(0.25, 0.5, var_bd0f35c.origin, 1200);
	namespace_27a45d31::function_a22e7052(0, "warehouse_robot_exit_traversal", "targetname");
	level function_4812aaa();
}

/*
	Name: function_dfbb625c
	Namespace: namespace_23646cee
	Checksum: 0xCA5D91E9
	Offset: 0x1D70
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_dfbb625c()
{
	self.health = 100;
	self waittill("death");
	level flag::set("warehouse_warlord_dead");
	level flag::set("sm_warehouse_enemy_warlord_manager_cleared");
}

/*
	Name: function_d02d38d
	Namespace: namespace_23646cee
	Checksum: 0xBB673989
	Offset: 0x1DD8
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_d02d38d()
{
	level flag::wait_till("warehouse_wasps");
	if(isdefined(level.BZM_BIODialogue2_3Callback))
	{
		level thread [[level.BZM_BIODialogue2_3Callback]]();
	}
}

/*
	Name: function_16ff311a
	Namespace: namespace_23646cee
	Checksum: 0x1EBBD9
	Offset: 0x1E20
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_16ff311a()
{
	level waittill("hash_54ba2021");
	level spawn_manager::function_72e3dd35("sm_warehouse_robot_jumpdown");
	if(!level flag::get("left_path") && !level flag::get("right_path") && !level flag::get("center_path"))
	{
		level flag::set("warehouse_intro_vo_started");
		level thread function_1050699d();
		level.var_2fd26037 dialog::say("hend_which_way_do_we_go_0");
		level dialog::remote("kane_your_call_both_end_0");
		battlechatter::function_d9f49fba(1);
		level flag::wait_till_any(Array("left_path", "right_path", "center_path"));
		level.var_2fd26037 dialog::say("hend_we_gotta_get_to_clou_0", 2);
		battlechatter::function_d9f49fba(1);
	}
	level flag::set("warehouse_intro_vo_done");
}

/*
	Name: function_1050699d
	Namespace: namespace_23646cee
	Checksum: 0xA21382F9
	Offset: 0x1FE0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1050699d()
{
	level endon("hash_6794c924");
	level endon("hash_13ba8371");
	level endon("hash_9aade370");
	wait(14);
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "hend_what_s_the_plan_lef_0";
	var_2d3d7b7[1] = "hend_c_mon_we_gotta_move_0";
	level.var_2fd26037 dialog::say(namespace_27a45d31::function_7ff50323(var_2d3d7b7));
}

/*
	Name: function_2a08e741
	Namespace: namespace_23646cee
	Checksum: 0xFC1FD080
	Offset: 0x2078
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2a08e741()
{
	level endon("hash_e85e589a");
	level flag::wait_till("xiulan_loudspeaker_go");
	spawn_manager::enable("warehouse_right_rear_runners");
}

/*
	Name: function_9bf4e185
	Namespace: namespace_23646cee
	Checksum: 0x62AAB753
	Offset: 0x20C8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_9bf4e185()
{
	self endon("death");
	nd_start = GetNode(self.target, "targetname");
	if(isdefined(nd_start))
	{
		self thread ai::force_goal(nd_start, 36, 1, "goal", 1, 1);
	}
	self thread function_9ec04302();
}

/*
	Name: function_9ec04302
	Namespace: namespace_23646cee
	Checksum: 0x520752BF
	Offset: 0x2160
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_9ec04302()
{
	self endon("death");
	self endon("hash_a3a542bc");
	var_994792b4 = GetEntArray("trig_robot_jump_landing", "script_noteworthy");
	while(1)
	{
		foreach(trigger in var_994792b4)
		{
			if(self istouching(trigger))
			{
				if(trigger.targetname === "trig_warehouse_robot_landing_left")
				{
					exploder::exploder("fx_warehouse_robot_jmp_dust_l");
				}
				else if(trigger.targetname === "trig_warehouse_robot_landing_right")
				{
					exploder::exploder("fx_warehouse_robot_jmp_dust_r");
				}
				self notify("hash_a3a542bc");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_afee5825
	Namespace: namespace_23646cee
	Checksum: 0x588ABFE7
	Offset: 0x22D0
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_afee5825()
{
	level flag::wait_till("container_drop");
	var_2122e778 = struct::get("phalanx_warehouse_left_start").origin;
	var_7d0099f5 = struct::get("phalanx_warehouse_left_end").origin;
	var_e1f76987 = struct::get("phalanx_warehouse_right_start").origin;
	var_25d2a1d8 = struct::get("phalanx_warehouse_right_end").origin;
	var_1b6ee6b2 = 1;
	if(level.players.size >= 3)
	{
		var_1b6ee6b2 = 2;
	}
	function_9b385ca5();
	var_52fcc5ab = RobotPhalanx;
	Initialize(var_52fcc5ab, "phanalx_wedge", var_2122e778, var_7d0099f5, 2);
	function_9b385ca5();
	var_1a84f71e = RobotPhalanx;
	Initialize(var_1a84f71e, "phanalx_wedge", var_e1f76987, var_25d2a1d8, 2);
}

/*
	Name: function_3c56dee4
	Namespace: namespace_23646cee
	Checksum: 0xDD4AE11B
	Offset: 0x2470
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_3c56dee4()
{
	level endon("hash_9aade370");
	a_flags = [];
	a_flags[0] = "xiulan_loudspeaker_go";
	if(level flag::get("warehouse_intro_vo_started"))
	{
		a_flags[1] = "warehouse_intro_vo_done";
	}
	flag::wait_till_all(a_flags);
	var_f2fa33f7 = GetEntArray("so_xiulan_warehouse_loudspeaker", "targetname");
	foreach(var_ea519684 in var_f2fa33f7)
	{
		if(n_index == var_f2fa33f7.size - 1)
		{
			var_ea519684 dialog::say("xiul_loyal_immortals_thi_0", 0, 1);
			continue;
		}
		var_ea519684 thread dialog::say("xiul_loyal_immortals_thi_0", 0, 1);
	}
	level.var_2fd26037 dialog::say("hend_that_bitch_really_is_0");
	level dialog::function_13b3b16a("plyr_you_shot_her_brother_0");
	level.var_2fd26037 dialog::say("hend_i_should_have_shot_h_0");
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_d3621fb
	Namespace: namespace_23646cee
	Checksum: 0x3DF8AE8E
	Offset: 0x2670
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_d3621fb()
{
	self endon("death");
	self vehicle_ai::function_81b6f1ac();
	nd_start = GetVehicleNode(self.target, "targetname");
	self thread vehicle::get_on_and_go_path(nd_start);
	self waittill("reached_end_node");
	v_pos = self GetClosestPointOnNavVolume(self.origin, 1024);
	v_pos = (v_pos[0], v_pos[1], v_pos[2] + randomIntRange(0, 72));
	if(isdefined(v_pos))
	{
		self SetVehGoalPos(v_pos, 0);
		self waittill("goal");
	}
	e_volume = undefined;
	if(self.script_aigroup == "wasps_warehouse_left")
	{
		e_volume = GetEnt("volume_warehouse_wasps_left", "targetname");
	}
	else if(self.script_aigroup == "wasps_warehouse_right")
	{
		e_volume = GetEnt("volume_warehouse_wasps_right", "targetname");
	}
	self vehicle_ai::function_efe9815e("combat");
	if(isdefined(e_volume))
	{
		self SetGoal(e_volume, 1);
	}
}

/*
	Name: function_6fb5d6ef
	Namespace: namespace_23646cee
	Checksum: 0x9CC97847
	Offset: 0x2860
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6fb5d6ef()
{
	level endon("hash_652f488c");
	trigger::wait_for_either("trig_warehouse_friendly_spawns_left", "trig_warehouse_friendly_spawns_right");
	level.var_996e05eb = "friendly_spawns_warehouse_corner";
}

/*
	Name: function_26edc5d7
	Namespace: namespace_23646cee
	Checksum: 0x1DB571AD
	Offset: 0x28A8
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function function_26edc5d7()
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", ai_guy);
		if(isdefined(ai_guy.owner) && isPlayer(ai_guy.owner) || isPlayer(ai_guy))
		{
			break;
		}
	}
	var_694b7da = self.script_string;
	switch(var_694b7da)
	{
		case "spawner":
		{
			str_spawner = self.script_noteworthy;
			spawner::simple_spawn(str_spawner);
			break;
		}
		case "spawn_manager":
		{
			spawn_manager::enable(self.script_noteworthy, 1);
			break;
		}
	}
}

/*
	Name: function_c2f6ee2c
	Namespace: namespace_23646cee
	Checksum: 0xDAC9BA4
	Offset: 0x29C0
	Size: 0x223
	Parameters: 1
	Flags: None
*/
function function_c2f6ee2c(str_path)
{
	if(str_path == "right")
	{
		level endon("hash_6794c924");
	}
	else
	{
		level endon("hash_13ba8371");
	}
	level trigger::wait_till("trig_hero_sprint_" + str_path);
	if(level flag::get("warehouse_intro_vo_done"))
	{
		level.var_2fd26037 thread dialog::say("hend_moving_up_cover_me_1");
	}
	ai_target = spawner::simple_spawn_single("warehouse_hero_target_" + str_path);
	ai_target ai::set_ignoreme(1);
	ai_target ai::set_behavior_attribute("can_become_rusher", 0);
	ai_target.goalRadius = 8;
	ai_target endon("death");
	level thread scene::init("scene_warehouse_hendricks_jump_" + str_path, "targetname", Array(level.var_2fd26037, ai_target));
	level trigger::wait_till("trig_hero_moment_" + str_path);
	if(isalive(ai_target))
	{
		ai_target thread function_2b42cba3("scene_warehouse_hendricks_jump_" + str_path);
		level scene::Play("scene_warehouse_hendricks_jump_" + str_path, "targetname", Array(level.var_2fd26037, ai_target));
	}
	level.var_2fd26037 ClearForcedGoal();
}

/*
	Name: function_2b42cba3
	Namespace: namespace_23646cee
	Checksum: 0xB06A2040
	Offset: 0x2BF0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_2b42cba3(str_scene)
{
	self waittill("death");
	level scene::stop(str_scene);
}

/*
	Name: function_89e35d86
	Namespace: namespace_23646cee
	Checksum: 0x2523A330
	Offset: 0x2C30
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_89e35d86()
{
	level flag::wait_till_any(Array("warehouse_warlord_dead", "warehouse_warlord_retreated"));
	if(isdefined(level.BZM_BIODialogue2_4Callback))
	{
		level thread [[level.BZM_BIODialogue2_4Callback]]();
	}
	level thread namespace_f1b4cbbc::function_973b77f9();
	objectives::show("cp_waypoint_breadcrumb");
	level thread namespace_36171bd3::function_9c52a47e("pry_door");
	level dialog::remote("kane_the_robots_should_be_0", 2);
	level waittill("hash_24ac1796");
	level flag::set("back_door_opened");
	level function_cb52a73();
	level function_1b03da0e();
}

/*
	Name: function_cb52a73
	Namespace: namespace_23646cee
	Checksum: 0xF2EAB5CB
	Offset: 0x2D50
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_cb52a73()
{
	level.var_2fd26037 ClearForcedGoal();
	level.var_2fd26037 colors::enable();
	level.var_2fd26037.goalRadius = 400;
	if(flag::get("cloudmountain_siegebots_dead"))
	{
		trigger::use("trig_hendricks_lobby_entrance_colors", "targetname");
	}
	else
	{
		trigger::use("trig_siegebot_hendricks_b0", "targetname");
	}
}

/*
	Name: function_1b03da0e
	Namespace: namespace_23646cee
	Checksum: 0xAC363859
	Offset: 0x2E08
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_1b03da0e()
{
	foreach(player in level.players)
	{
		player notify("hash_f4ef75a1");
	}
	foreach(var_f6c5842 in level.var_641fcd9c)
	{
		if(isalive(var_f6c5842))
		{
			var_f6c5842 ClearForcedGoal();
			var_f6c5842 util::stop_magic_bullet_shield();
			var_f6c5842 ai::set_behavior_attribute("move_mode", "normal");
			var_f6c5842 ai::set_behavior_attribute("sprint", 1);
			var_f6c5842 SetGoal(GetEnt("back_door_goal_volume", "targetname"));
		}
	}
}

/*
	Name: function_ac9359ee
	Namespace: namespace_23646cee
	Checksum: 0xD0ED502D
	Offset: 0x2FC8
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_ac9359ee()
{
	self endon("death");
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self.upAimLimit = 80;
	self SetGoal(GetEnt("volume_wasps_warehouse_crate_shooters", "targetname"), 1);
	util::magic_bullet_shield(self);
	self util::waittill_notify_or_timeout("goal", 2);
	e_target = GetEnt("container_target", "targetname");
	self ai::set_ignoreall(0);
	self thread ai::shoot_at_target("normal", e_target, "tag_origin", 2);
	level flag::wait_till_timeout(3, "container_drop");
	level flag::set("container_drop");
	util::stop_magic_bullet_shield(self);
	level flag::wait_till_any(Array("left_path", "right_path", "center_path"));
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	if(level flag::get("left_path"))
	{
		self SetGoal(GetEnt("warehouse_goal_volume_back_left", "targetname"));
	}
	else if(level flag::get("right_path"))
	{
		self SetGoal(GetEnt("warehouse_goal_volume_back_right", "targetname"));
	}
	else if(level flag::get("center_path"))
	{
		self SetGoal(GetEnt("warehouse_crate_shooters_center_goal", "targetname"));
	}
}

/*
	Name: function_54ba2021
	Namespace: namespace_23646cee
	Checksum: 0xF490B69A
	Offset: 0x32C0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_54ba2021()
{
	level waittill("hash_54ba2021");
	level flag::set("container_done");
}

/*
	Name: function_cc539146
	Namespace: namespace_23646cee
	Checksum: 0xACDD6B28
	Offset: 0x32F8
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_cc539146()
{
	var_7954a18f = GetEnt("container_drop_clip", "targetname");
	var_d76c34c9 = GetEnt("container_pre_drop_clip", "targetname");
	var_7954a18f connectpaths();
	level flag::wait_till("container_drop");
	spawn_manager::enable("sm_warehouse_robot_jumpdown");
	level thread scene::Play("p7_fxanim_cp_biodomes_container_collapse_bundle");
	level thread function_5491de58();
	level waittill("hash_ae902056");
	var_d76c34c9 delete();
	level thread function_1636c832();
	var_7954a18f disconnectpaths();
	wait(0.25);
	var_bd0f35c = struct::get("container_crash");
	playsoundatposition("evt_warlord_door_smash", var_bd0f35c.origin);
	PlayRumbleOnPosition("cp_biodomes_warehouse_container_rumble", var_bd0f35c.origin);
}

/*
	Name: function_5491de58
	Namespace: namespace_23646cee
	Checksum: 0x26777C1B
	Offset: 0x34B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_5491de58()
{
	level dialog::remote("kane_woah_get_out_of_t_0");
	level dialog::remote("kane_tracking_enemy_units_0", 3);
	level dialog::function_13b3b16a("plyr_tell_me_something_i_0");
	level dialog::remote("kane_i_ve_located_a_backd_0", 1);
	battlechatter::function_d9f49fba(1);
	objectives::show("cp_waypoint_breadcrumb");
}

/*
	Name: function_1636c832
	Namespace: namespace_23646cee
	Checksum: 0x4368109
	Offset: 0x3570
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_1636c832()
{
	a_robots = GetAITeamArray("allies");
	var_7954a18f = GetEnt("container_drop_clip", "targetname");
	ArrayRemoveValue(a_robots, level.var_2fd26037);
	for(i = 0; i < a_robots.size; i++)
	{
		if(a_robots[i] istouching(var_7954a18f))
		{
			util::stop_magic_bullet_shield(a_robots[i]);
			a_robots[i] kill();
		}
	}
	a_robots = [];
}

/*
	Name: function_c06efd40
	Namespace: namespace_23646cee
	Checksum: 0x481EC7F7
	Offset: 0x3680
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_c06efd40()
{
	self endon("death");
	self SetGoal(self.origin, 1, 1);
	level flag::wait_till("container_done");
	self ai::set_behavior_attribute("move_mode", "rambo");
	nd_target = GetNode(self.target, "targetname");
	self SetGoal(nd_target, 1);
	self waittill("goal");
	self ai::set_behavior_attribute("move_mode", "normal");
	wait(10);
	self SetGoal(self.origin, 0, 1200);
}

/*
	Name: glass_break
	Namespace: namespace_23646cee
	Checksum: 0x8B6C4287
	Offset: 0x37A8
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function glass_break(str_trigger_name)
{
	var_799e4c3a = GetEnt(str_trigger_name, "targetname");
	if(isdefined(var_799e4c3a))
	{
		var_799e4c3a flag::init("glass_broken");
		while(isdefined(var_799e4c3a) && var_799e4c3a flag::get("glass_broken") == 0)
		{
			var_799e4c3a trigger::wait_till();
			if(!isPlayer(var_799e4c3a.who) || (isPlayer(var_799e4c3a.who) && var_799e4c3a.who issprinting()))
			{
				glassRadiusDamage(var_799e4c3a.origin, 100, 500, 500);
				var_799e4c3a flag::set("glass_broken");
			}
			wait(0.05);
		}
		if(isdefined(var_799e4c3a))
		{
			var_799e4c3a delete();
		}
	}
}

/*
	Name: function_d1e71c2c
	Namespace: namespace_23646cee
	Checksum: 0x4CD3A1CF
	Offset: 0x3938
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_d1e71c2c()
{
	level endon("hash_6794c924");
	level endon("hash_9aade370");
	level flag::wait_till("right_path");
	level scene::init("cin_bio_05_02_warehouse_vign_forklift_move");
	trigger::wait_till("forklift_vignette_start");
	level scene::Play("cin_bio_05_02_warehouse_vign_forklift_move");
}

/*
	Name: function_f18853d0
	Namespace: namespace_23646cee
	Checksum: 0x64B77CED
	Offset: 0x39D0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_f18853d0()
{
	trigger::wait_till("trig_warehouse_objective_complete");
	skipto::function_be8adfb8("objective_warehouse");
}

/*
	Name: function_ecf3cf41
	Namespace: namespace_23646cee
	Checksum: 0xA813710F
	Offset: 0x3A10
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_ecf3cf41()
{
	trigger::wait_till("trig_back_door_group");
	spawner::simple_spawn(GetEntArray("back_door_enemy", "script_aigroup"));
	GetEnt("back_door_look_trigger", "script_noteworthy") TriggerEnable(1);
}

/*
	Name: function_4812aaa
	Namespace: namespace_23646cee
	Checksum: 0xBF85284B
	Offset: 0x3AA0
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_4812aaa()
{
	level.var_e6a85ae8 = GetEnt("cloudmountain_door_upper", "targetname");
	level.var_7f103643 = GetEnt("cloudmountain_door_lower", "targetname");
	level.var_e6a85ae8.var_ba7fc287 = level.var_e6a85ae8.origin;
	level.var_7f103643.var_ba7fc287 = level.var_7f103643.origin;
	level.var_e6a85ae8 MoveZ(-40, 2);
	level.var_7f103643 MoveZ(60, 2);
	level.var_e6a85ae8 playsound("evt_warehouse_door_close_start");
	level.var_e6a85ae8 PlayLoopSound("evt_warehouse_door_close_loop", 1);
	level.var_7f103643 waittill("movedone");
	level.var_e6a85ae8 playsound("evt_warehouse_door_close_stop");
	level.var_e6a85ae8 StopLoopSound(0.5);
	level flag::set("back_door_closed");
	var_60f8f46f = GetEnt("back_door_full_clip", "targetname");
	var_60f8f46f MoveZ(128, 0.05);
	var_bee08349 = GetEnt("back_door_no_pen_clip", "targetname");
	var_bee08349 MoveZ(128, 0.05);
	spawner::add_spawn_function_group("cloud_mountain_siegebot", "targetname", &function_c001cefd);
	spawn_manager::enable("cloud_mountain_siegebot_manager");
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	level thread function_bd5615c2();
	level thread cloud_mountain_crows();
	level thread function_89e35d86();
	level function_db58f411();
}

/*
	Name: function_d9982dc0
	Namespace: namespace_23646cee
	Checksum: 0xB7F5D94
	Offset: 0x3D98
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_d9982dc0()
{
	if(!isdefined(level.var_e6a85ae8) || !isdefined(level.var_7f103643))
	{
		level.var_e6a85ae8 = GetEnt("cloudmountain_door_upper", "targetname");
		level.var_7f103643 = GetEnt("cloudmountain_door_lower", "targetname");
	}
	level.var_e6a85ae8 moveto(level.var_e6a85ae8.var_ba7fc287, 2);
	level.var_7f103643 moveto(level.var_7f103643.var_ba7fc287, 2);
	level.var_e6a85ae8 playsound("evt_warehouse_door_close_start");
	level.var_e6a85ae8 PlayLoopSound("evt_warehouse_door_close_loop", 1);
	level.var_7f103643 waittill("movedone");
	level.var_e6a85ae8 playsound("evt_warehouse_door_close_stop");
	level.var_e6a85ae8 StopLoopSound(0.5);
	wait(3);
	level flag::set("back_door_opened");
	var_ec935bdb = GetEnt("back_door_player_clip", "targetname");
	if(isdefined(var_ec935bdb))
	{
		var_ec935bdb delete();
	}
	var_3dffb84b = GetEnt("back_door_full_clip", "targetname");
	if(isdefined(var_3dffb84b))
	{
		var_3dffb84b delete();
	}
	var_6f9ff65c = GetEnt("back_door_no_pen_clip", "targetname");
	if(isdefined(var_6f9ff65c))
	{
		var_6f9ff65c delete();
	}
}

/*
	Name: function_c001cefd
	Namespace: namespace_23646cee
	Checksum: 0x5D782B5C
	Offset: 0x4020
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_c001cefd()
{
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self thread function_4a9bba52();
	self thread function_994b4243();
	level flag::wait_till_any(Array("back_door_opened", "siegebot_alerted"));
	self SetCanDamage(1);
	self.overrideVehicleDamage = &siegebot::siegebot_callback_damage;
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	wait(0.5);
	trigger::use("trig_warehouse_objective_complete", "targetname", level.activePlayers[0], 0);
}

/*
	Name: function_994b4243
	Namespace: namespace_23646cee
	Checksum: 0x20542880
	Offset: 0x4158
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_994b4243()
{
	self endon("hash_b38d1391");
	self endon("hash_b35c4231");
	self endon("death");
	self waittill("hash_4a129f22", var_66abe754);
	trigger::use("trig_siegebot_alerted", "targetname");
}

/*
	Name: function_c60cca3f
	Namespace: namespace_23646cee
	Checksum: 0x5A0AF96B
	Offset: 0x41C8
	Size: 0xB7
	Parameters: 15
	Flags: None
*/
function function_c60cca3f(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, weapon, v_point, v_dir, str_hit_loc, v_damage_origin, psOffsetTime, b_damage_from_underneath, n_model_index, str_part_name, var_eca96ec1)
{
	trigger::use("trig_siegebot_alerted", "targetname");
	self.overrideVehicleDamage = &siegebot::siegebot_callback_damage;
	return n_damage;
}

/*
	Name: function_4a9bba52
	Namespace: namespace_23646cee
	Checksum: 0x8EFA4D20
	Offset: 0x4288
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_4a9bba52()
{
	level endon("hash_b38d1391");
	self SetCanDamage(0);
	level flag::wait_till("siegebot_damage_enabled");
	self SetCanDamage(1);
	self.overrideVehicleDamage = &function_c60cca3f;
}

/*
	Name: function_bd5615c2
	Namespace: namespace_23646cee
	Checksum: 0x38B51EA2
	Offset: 0x4308
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_bd5615c2()
{
	var_95ad8660 = GetAIArray("back_door_enemy", "script_aigroup");
	foreach(var_68fb9693 in var_95ad8660)
	{
		if(isalive(var_68fb9693))
		{
			var_68fb9693.ignoreme = 1;
			var_68fb9693.ignoreall = 1;
		}
	}
	level util::waittill_either("start_back_door_retreat", "siegebot_damage_enabled");
	var_ec273240 = GetEnt("back_door_goal_volume", "targetname");
	foreach(var_68fb9693 in var_95ad8660)
	{
		if(isalive(var_68fb9693))
		{
			var_68fb9693.ignoreme = 0;
			var_68fb9693 SetGoal(var_ec273240, 1);
		}
	}
	wait(10);
	foreach(var_68fb9693 in var_95ad8660)
	{
		if(isalive(var_68fb9693))
		{
			var_68fb9693.ignoreall = 0;
		}
	}
}

/*
	Name: function_e7b0cb8e
	Namespace: namespace_23646cee
	Checksum: 0xB07D95C5
	Offset: 0x4578
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_e7b0cb8e()
{
	self endon("death");
	self waittill("enemy");
	wait(0.05);
	while(isdefined(self.enemy) && !self cansee(self.enemy))
	{
		wait(0.5);
	}
	self SetGoal(GetEnt("entire_warehouse_setgoal_volume", "targetname"));
}

/*
	Name: function_b1942036
	Namespace: namespace_23646cee
	Checksum: 0x88044CDD
	Offset: 0x4610
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_b1942036()
{
	level endon("hash_54e7636b");
	trigger::wait_till("trig_back_door_close");
	savegame::function_5d2cdd99();
	wait(1.5);
	spawn_manager::enable("warehouse_enemy_warlord_manager");
	level waittill("hash_c42f328d");
	level thread clientfield::set("warehouse_window_break", 1);
	level flag::set("warehouse_warlord");
	objectives::Hide("cp_waypoint_breadcrumb");
	spawner::simple_spawn("warehouse_enemy_group3", &function_29b416ff);
	GetEnt("warehouse_overwatch_window", "targetname") delete();
	s_landing = struct::get("warehouse_warlord_surprise_landing");
	PlayRumbleOnPosition("cp_biodomes_warehouse_warlord_rumble", s_landing.origin);
	level thread function_62523f1d();
	level spawn_manager::function_72e3dd35("warehouse_enemy_warlord_manager");
	level flag::set("warehouse_warlord_dead");
}

/*
	Name: function_652f488c
	Namespace: namespace_23646cee
	Checksum: 0xD16398F4
	Offset: 0x47D0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_652f488c()
{
	level flag::wait_till("warehouse_warlord_friendly_goal");
	level.var_996e05eb = "friendly_spawns_warehouse_door";
	e_goal_volume = GetEnt("warehouse_warlord_friendly_volume", "targetname");
	foreach(var_f6c5842 in level.var_641fcd9c)
	{
		var_f6c5842 SetGoal(e_goal_volume, 1);
	}
	level.var_2fd26037 SetGoal(e_goal_volume, 1);
}

/*
	Name: function_29b416ff
	Namespace: namespace_23646cee
	Checksum: 0xD06DB8C8
	Offset: 0x48F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_29b416ff()
{
	self endon("death");
	self.ignoreall = 1;
	wait(1);
	self.ignoreall = 0;
}

/*
	Name: function_4940548b
	Namespace: namespace_23646cee
	Checksum: 0xD9E620A7
	Offset: 0x4928
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_4940548b()
{
	self endon("death");
	self.ignoreall = 1;
	level scene::Play("cin_bio_05_02_warehouse_aie_jump", self);
	self.goalRadius = 2048;
	self.goalHeight = 320;
	self namespace_27a45d31::function_f61c0df8("node_warlord_warehouse_preferred", 1, 3);
	wait(0.25);
	self.ignoreall = 0;
	self trigger::wait_till("trig_siegebot_alerted");
	self WarlordInterface::ClearAllPreferedPoints();
	self namespace_27a45d31::function_f61c0df8("node_warlord_mountain_entrance_preferred", 1, 2);
	self waittill("death");
	self WarlordInterface::ClearAllPreferedPoints();
}

/*
	Name: function_62523f1d
	Namespace: namespace_23646cee
	Checksum: 0x82630E4F
	Offset: 0x4A40
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_62523f1d()
{
	level endon("hash_b9c5f11d");
	trigger::wait_till("trig_siegebot_alerted");
	for(var_7b95742a = 1; var_7b95742a;  = 1)
	{
		wait(1);
	}
	level flag::set("warehouse_warlord_retreated");
}

/*
	Name: function_5ecd2f63
	Namespace: namespace_23646cee
	Checksum: 0x828E666F
	Offset: 0x4AD0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_5ecd2f63()
{
	var_7c2eb0ca = GetEnt("warehouse_warlord_retreat_check_volume", "targetname");
	var_bb2f0c05 = spawn_manager::get_ai("warehouse_enemy_warlord_manager");
	foreach(var_429f73c4 in var_bb2f0c05)
	{
		if(var_429f73c4 istouching(var_7c2eb0ca))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_db58f411
	Namespace: namespace_23646cee
	Checksum: 0xD9949F03
	Offset: 0x4BC8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_db58f411()
{
	var_526a0aed = GetEnt("pry_door", "script_noteworthy");
	level thread namespace_36171bd3::function_bb612155(var_526a0aed);
}

/*
	Name: function_3460d45c
	Namespace: namespace_23646cee
	Checksum: 0xC915523B
	Offset: 0x4C20
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_3460d45c()
{
	self endon("disconnect");
	level endon("hash_43a6ada4");
	while(1)
	{
		self waittill("ClonedEntity", var_52b4a338);
		self namespace_7cb6cd95::function_6c745562(GetEnt("hijacked_vehicle_range", "targetname"));
	}
}

/*
	Name: cloud_mountain_crows
	Namespace: namespace_23646cee
	Checksum: 0xD84C3A97
	Offset: 0x4C98
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function cloud_mountain_crows()
{
	level thread clientfield::set("cloud_mountain_crows", 1);
	level flag::wait_till_any(Array("back_door_opened", "siegebot_damage_enabled"));
	level thread clientfield::set("cloud_mountain_crows", 2);
}

/*
	Name: function_2d153737
	Namespace: namespace_23646cee
	Checksum: 0x29A50914
	Offset: 0x4D18
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_2d153737()
{
	if(GetDvarInt("tu1_biodomesWarehouseDisableTraversals", 1))
	{
		nodes = GetNodesInRadius((4805, 13582, 90), 12, 0, 12, "End");
		foreach(node in nodes)
		{
			SetEnableNode(node, 0);
		}
	}
}

/*
	Name: on_player_spawned
	Namespace: namespace_23646cee
	Checksum: 0x99EC1590
	Offset: 0x4E10
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

