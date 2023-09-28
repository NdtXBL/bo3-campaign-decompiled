#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_12501af4;

/*
	Name: function_78909aa1
	Namespace: namespace_12501af4
	Checksum: 0xCFF8E5B1
	Offset: 0xDD8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_78909aa1()
{
	level function_f06522c8();
	level function_7c0dd98b();
	spawner::add_spawn_function_group("sp_initial_robots", "targetname", &function_12501af4);
	spawner::add_spawn_function_group("robot_aigroup", "script_aigroup", &function_12501af4);
	level thread function_284c8a64();
}

/*
	Name: function_f06522c8
	Namespace: namespace_12501af4
	Checksum: 0x80667D8
	Offset: 0xE90
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f06522c8()
{
	var_f412ff43 = GetEnt("vtol_tackle_color", "targetname");
	var_f412ff43 TriggerEnable(0);
}

/*
	Name: function_7c0dd98b
	Namespace: namespace_12501af4
	Checksum: 0x2E087367
	Offset: 0xEE8
	Size: 0x297
	Parameters: 0
	Flags: None
*/
function function_7c0dd98b()
{
	level.var_f58c9f31 ai::set_ignoreall(1);
	level.var_f58c9f31 ai::set_ignoreme(1);
	level.var_f58c9f31.goalRadius = 16;
	level.var_f58c9f31.allowPain = 0;
	level.var_92d245e2 ai::set_ignoreall(1);
	level.var_92d245e2 ai::set_ignoreme(1);
	level.var_92d245e2.goalRadius = 16;
	level.var_92d245e2.allowPain = 0;
	level.var_5d4087a6 ai::set_ignoreall(1);
	level.var_5d4087a6 ai::set_ignoreme(1);
	level.var_5d4087a6.goalRadius = 16;
	level.var_5d4087a6.allowPain = 0;
	level.var_7f246cd7 ai::set_ignoreall(1);
	level.var_7f246cd7 ai::set_ignoreme(1);
	level.var_7f246cd7.goalRadius = 16;
	level.var_7f246cd7.allowPain = 0;
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_2fd26037 ai::set_ignoreme(1);
	level.var_2fd26037.goalRadius = 16;
	level.var_9db406db ai::set_ignoreall(1);
	level.var_9db406db ai::set_ignoreme(1);
	level.var_9db406db.goalRadius = 16;
	level.var_4d5a4697 ai::set_ignoreall(1);
	level.var_4d5a4697 ai::set_ignoreme(1);
	level.var_4d5a4697.goalRadius = 16;
}

/*
	Name: function_284c8a64
	Namespace: namespace_12501af4
	Checksum: 0xB52848FF
	Offset: 0x1188
	Size: 0x7B3
	Parameters: 0
	Flags: None
*/
function function_284c8a64()
{
	battlechatter::function_d9f49fba(0);
	level thread function_48cd673e();
	level thread function_874bf7f();
	level thread function_79c2bdec();
	level thread function_341ece1b();
	level thread function_38c8ec92();
	level thread function_9fb290a5();
	level thread function_94976a83();
	level thread function_4a895a11();
	level thread objectives::breadcrumb("breadcrumb_robot_horde");
	level thread function_96157f5d();
	a_ai_allies = namespace_2cb3876f::function_6ee0e1a5();
	foreach(ai_ally in a_ai_allies)
	{
		ai_ally ai::set_behavior_attribute("cqb", 1);
	}
	level flag::wait_till("player_in_alley");
	namespace_2cb3876f::function_b50f5d52();
	a_ai_allies = namespace_2cb3876f::function_6ee0e1a5();
	a_ai_allies[a_ai_allies.size] = level.var_f58c9f31;
	a_ai_allies[a_ai_allies.size] = level.var_2fd26037;
	a_ai_allies[a_ai_allies.size] = level.var_9db406db;
	a_ai_allies[a_ai_allies.size] = level.var_7f246cd7;
	a_ai_allies[a_ai_allies.size] = level.var_5d4087a6;
	foreach(ai_ally in a_ai_allies)
	{
		ai_ally ai::set_ignoreall(1);
		ai_ally ai::set_ignoreme(1);
	}
	level thread function_90882a34();
	level thread function_59071a25();
	level thread function_f7a7c69a();
	util::delay(0.5, undefined, &exploder::exploder, "fx_exploder_fog_light_horde");
	savegame::function_5d2cdd99();
	level flag::wait_till("robot_contact");
	level.var_f58c9f31 ai::set_ignoreall(0);
	level.var_7f246cd7 ai::set_ignoreall(0);
	level.var_5d4087a6 ai::set_ignoreall(0);
	foreach(ai_ally in a_ai_allies)
	{
		ai_ally ai::set_ignoreall(0);
		ai_ally thread function_54900cca();
	}
	level thread function_3d5fceb9();
	wait(8);
	level flag::set("open_fire");
	foreach(ai_ally in a_ai_allies)
	{
		ai_ally ai::set_behavior_attribute("cqb", 0);
	}
	level apc::function_50d6bf35("vehicle_apc_hijack_node", 0);
	level thread function_d105c430();
	callback::on_spawned(&function_51a9314a);
	level thread function_51280ee5();
	level flag::wait_till("garage_open");
	objectives::complete("cp_level_prologue_defend_theia", level.var_92d245e2);
	level.garage_door = struct::get("garage_door", "targetname");
	objectives::set("cp_waypoint_breadcrumb", level.garage_door);
	trigger::use("triggercolor_allies_garage");
	scene::add_scene_func("cin_pro_15_01_opendoor_vign_getinside_khalil_minister_hendricks", &function_21350de5, "play");
	level thread scene::Play("cin_pro_15_01_opendoor_vign_getinside_khalil_minister_hendricks");
	level waittill("hash_e41afc83");
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
	level flag::wait_till("players_in_garage");
	level flag::wait_till("allies_in_garage");
	objectives::complete("cp_level_prologue_find_vehicle");
	objectives::set("cp_level_prologue_goto_exfil");
	level flag::wait_till("garage_closed");
	level flag::wait_till("minister_apc_done");
	callback::remove_on_spawned(&function_51a9314a);
	skipto::function_be8adfb8("skipto_robot_horde");
}

/*
	Name: function_96157f5d
	Namespace: namespace_12501af4
	Checksum: 0x5C706A68
	Offset: 0x1948
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_96157f5d()
{
	var_9a246ea8 = GetEnt("t_robot_horde_oob", "targetname");
	if(isdefined(var_9a246ea8))
	{
		level flag::wait_till("vo_robot");
		wait(1.9);
		var_9a246ea8 TriggerEnable(1);
	}
}

/*
	Name: function_21350de5
	Namespace: namespace_12501af4
	Checksum: 0x5D6752C2
	Offset: 0x19C8
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_21350de5(a_ents)
{
	var_94848710 = a_ents["minister"];
	var_94848710 waittill("death");
	level flag::set("minister_apc_done");
}

/*
	Name: function_4a895a11
	Namespace: namespace_12501af4
	Checksum: 0x4AEC78AF
	Offset: 0x1A28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4a895a11()
{
	level waittill("hash_d1ef0d27");
	wait(1);
	playsoundatposition("evt_robot_fake_battle", (15815, -745, 497));
}

/*
	Name: function_94976a83
	Namespace: namespace_12501af4
	Checksum: 0x2CF03A12
	Offset: 0x1A70
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_94976a83()
{
	trigger::use("triggercolor_allies_stairs");
	trigger::wait_till("triggercolor_alley");
	trigger::use("triggercolor_allies_alley");
	level flag::wait_till("player_in_alley");
	trigger::use("triggercolor_allies_alley");
	wait(1.5);
	trigger::use("robot_defend_color_chain1");
}

/*
	Name: function_54900cca
	Namespace: namespace_12501af4
	Checksum: 0x15D23AE6
	Offset: 0x1B20
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_54900cca()
{
	self endon("death");
	level flag::wait_till("garage_enter");
	self.ignoreSuppression = 1;
	wait(3);
	self ai::set_ignoreall(1);
	level flag::wait_till("allies_in_garage");
	self.ignoreSuppression = 0;
	self ai::set_ignoreall(0);
}

/*
	Name: function_59071a25
	Namespace: namespace_12501af4
	Checksum: 0x74610C44
	Offset: 0x1BC0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_59071a25()
{
	trigger::wait_till("player_inside_garage");
	level flag::set("players_in_garage");
	level thread namespace_21b2c1f2::function_fb0b7bb6();
	objectives::complete("cp_waypoint_breadcrumb", level.garage_door);
}

/*
	Name: function_f7a7c69a
	Namespace: namespace_12501af4
	Checksum: 0x9634BEA7
	Offset: 0x1C40
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_f7a7c69a()
{
	var_ede59fe8 = GetEnt("player_inside_garage", "targetname");
	a_ai_allies = namespace_2cb3876f::function_6ee0e1a5();
	foreach(ai_ally in a_ai_allies)
	{
		while(isalive(ai_ally) && !ai_ally istouching(var_ede59fe8))
		{
			wait(0.1);
		}
	}
	level flag::set("allies_in_garage");
}

/*
	Name: function_90882a34
	Namespace: namespace_12501af4
	Checksum: 0x2DF9512E
	Offset: 0x1D68
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_90882a34()
{
	level flag::wait_till("spawn_robot_horde");
	if(isdefined(level.BZM_PROLOGUEDialogue5_3Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue5_3Callback]]();
	}
	spawn_manager::enable("sm_initial_robots");
	wait(3);
	spawn_manager::enable("sm_robot_horde1");
	wait(1);
	spawn_manager::enable("sm_robot_horde2");
	wait(1);
	spawn_manager::enable("sm_robot_horde3");
	level flag::wait_till("players_in_garage");
	spawn_manager::kill("sm_initial_robots");
	spawn_manager::kill("sm_robot_horde1");
	spawn_manager::kill("sm_robot_horde2");
	spawn_manager::kill("sm_robot_horde3");
}

/*
	Name: function_9fb290a5
	Namespace: namespace_12501af4
	Checksum: 0x423552ED
	Offset: 0x1EB0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_9fb290a5()
{
	struct = struct::get("sndRobotRattle", "targetname");
	struct2 = struct::get(struct.target, "targetname");
	ent = spawn("script_model", struct.origin);
	while(!flag::get("players_in_garage"))
	{
		ent playsound("evt_robot_reveal_step");
		wait(0.3);
		ent clientfield::set("sndRattle", 1);
		wait(0.8);
		ent clientfield::set("sndRattle", 0);
	}
	ent PlayLoopSound("evt_robot_fake_battle_lp", 5);
}

/*
	Name: function_51280ee5
	Namespace: namespace_12501af4
	Checksum: 0x4E76CF15
	Offset: 0x2000
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_51280ee5()
{
	level flag::wait_till("garage_open");
	level thread scene::Play("p7_fxanim_cp_prologue_apc_door_01_open_bundle");
	wait(0.3);
	level thread scene::Play("p7_fxanim_cp_prologue_apc_door_02_open_bundle");
	trigger::use("t_motorpool_spawns_enable", "targetname");
	level flag::wait_till("players_in_garage");
	level flag::wait_till("allies_in_garage");
	level thread scene::Play("p7_fxanim_cp_prologue_apc_door_01_close_bundle");
	wait(0.3);
	level flag::set("garage_closed");
	level scene::Play("p7_fxanim_cp_prologue_apc_door_02_close_bundle");
	function_c2619de1();
}

/*
	Name: function_c2619de1
	Namespace: namespace_12501af4
	Checksum: 0xD70F9F75
	Offset: 0x2150
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_c2619de1()
{
	var_9869c63b = GetEnt("t_kill_robots_inside_garage", "targetname");
	a_ai_enemies = GetAITeamArray("axis");
	foreach(ai_enemy in a_ai_enemies)
	{
		if(isalive(ai_enemy))
		{
			if(ai_enemy istouching(var_9869c63b))
			{
				ai_enemy ai::bloody_death(RandomFloat(0.25));
				continue;
			}
			ai_enemy delete();
		}
	}
}

/*
	Name: function_d105c430
	Namespace: namespace_12501af4
	Checksum: 0x6D1ECE4F
	Offset: 0x22A0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_d105c430()
{
	foreach(player in level.players)
	{
		player thread function_51a9314a();
	}
}

/*
	Name: function_51a9314a
	Namespace: namespace_12501af4
	Checksum: 0x303967D8
	Offset: 0x2338
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_51a9314a()
{
	self endon("death");
	self.var_cbf4698a = self.attackerAccuracy;
	self.attackerAccuracy = 0;
	self thread function_10302408();
	level flag::wait_till("players_in_garage");
	self.attackerAccuracy = self.var_cbf4698a;
}

/*
	Name: function_10302408
	Namespace: namespace_12501af4
	Checksum: 0xFD0FA3F6
	Offset: 0x23B8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_10302408()
{
	level endon("hash_eecef59c");
	self endon("death");
	while(self.attackerAccuracy < 1)
	{
		wait(1);
		self.attackerAccuracy = self.attackerAccuracy + 0.1;
	}
}

/*
	Name: function_12501af4
	Namespace: namespace_12501af4
	Checksum: 0xCDD7CB1C
	Offset: 0x2410
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_12501af4()
{
	level endon("hash_64ad6809");
	self endon("death");
	self.goalRadius = 32;
	self thread function_e583f6c3();
	self thread function_75db1a12();
	self thread function_cea2a123();
	self waittill("goal");
	self.goalRadius = 2048;
	wait(3);
	self.perfectaim = 1;
}

/*
	Name: function_75db1a12
	Namespace: namespace_12501af4
	Checksum: 0xC55137E8
	Offset: 0x24B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_75db1a12()
{
	self endon("death");
	level flag::wait_till("garage_closed");
	self SetGoal(self.origin, 1);
	self ai::set_ignoreall(1);
}

/*
	Name: function_cea2a123
	Namespace: namespace_12501af4
	Checksum: 0x62EAF59B
	Offset: 0x2520
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_cea2a123()
{
	self endon("death");
	level flag::wait_till("garage_open");
	wait(5);
	self ai::set_behavior_attribute("move_mode", "marching");
}

/*
	Name: function_e583f6c3
	Namespace: namespace_12501af4
	Checksum: 0x9D459A34
	Offset: 0x2580
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e583f6c3()
{
	self endon("death");
	self ai::set_ignoreall(1);
	level flag::wait_till("open_fire");
	wait(3);
	self ai::set_ignoreall(0);
}

/*
	Name: function_48cd673e
	Namespace: namespace_12501af4
	Checksum: 0xF5A19524
	Offset: 0x25F0
	Size: 0x1A1
	Parameters: 0
	Flags: None
*/
function function_48cd673e()
{
	level.var_2fd26037 colors::disable();
	level.var_9db406db colors::disable();
	level.var_4d5a4697 colors::disable();
	level.var_2fd26037 thread function_85de96a6("hendricks");
	level.var_9db406db thread function_85de96a6("khalil");
	level.var_4d5a4697 thread function_85de96a6("minister");
	util::waittill_multiple("hendricks_ready", "khalil_ready", "minister_ready");
	level flag::wait_till("goto_alley");
	level thread scene::Play("cin_pro_14_01_robothorde_vign_dismantle");
	level.var_2fd26037 ClearForcedGoal();
	level.var_9db406db ClearForcedGoal();
	level.var_4d5a4697 ClearForcedGoal();
	level thread function_20e7e38e();
	level flag::wait_till("prometheus_stop_directing");
	level notify("hash_8f3f5759");
}

/*
	Name: function_85de96a6
	Namespace: namespace_12501af4
	Checksum: 0x55CD2DDB
	Offset: 0x27A0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_85de96a6(str_name)
{
	nd_goal = GetNode(str_name + "_robot_entry", "targetname");
	self SetGoal(nd_goal, 1);
	self waittill("goal");
	level notify(str_name + "_ready");
}

/*
	Name: function_20e7e38e
	Namespace: namespace_12501af4
	Checksum: 0xD926897
	Offset: 0x2828
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_20e7e38e()
{
	self endon("hash_8f3f5759");
	wait(5);
	level.var_2fd26037 dialog::say("hend_c_mon_exfil_s_just_0");
	wait(5);
	level.var_2fd26037 dialog::say("hend_we_gotta_get_the_min_0");
	wait(5);
	level.var_2fd26037 dialog::say("hend_we_can_t_miss_our_pi_0");
}

/*
	Name: function_874bf7f
	Namespace: namespace_12501af4
	Checksum: 0xFB3BEC18
	Offset: 0x28B8
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_874bf7f()
{
	level thread function_c091ae43();
	level thread function_82869bf4();
	level thread function_f4e0744a();
	level thread scene::add_scene_func("cin_pro_14_01_robothorde_vign_directing", &function_7ad76fc0, "play");
	if(!level flag::get("prom_point"))
	{
		level thread scene::Play("cin_pro_14_01_robothorde_vign_directing");
		level flag::wait_till("taylor_direct");
	}
	level flag::wait_till("prom_point");
	level scene::Play("cin_pro_14_01_robothorde_vign_directing_pointing");
	if(!level flag::get("prometheus_stop_directing"))
	{
		level thread scene::Play("cin_pro_14_01_robothorde_vign_directing");
	}
	level flag::wait_till("spawn_robot_horde");
	wait(2);
	level thread scene::Play("cin_pro_14_01_robothorde_vign_dismantle_new_prometheus");
	level waittill("hash_a4b8e7ad");
	objectives::set("cp_level_prologue_defend_theia", level.var_92d245e2);
	level flag::wait_till("garage_open");
	level scene::Play("cin_pro_15_01_opendoor_vign_getinside_new_prometheus_move");
	level.var_92d245e2 SetGoal(level.var_92d245e2.origin, 1);
}

/*
	Name: function_7ad76fc0
	Namespace: namespace_12501af4
	Checksum: 0x119AA1F2
	Offset: 0x2B08
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_7ad76fc0(a_ents)
{
	level flag::set("taylor_direct");
}

/*
	Name: function_c091ae43
	Namespace: namespace_12501af4
	Checksum: 0x16046980
	Offset: 0x2B40
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c091ae43()
{
	level thread scene::Play("cin_pro_14_01_robothorde_vign_dismantle_theia");
	level flag::wait_till("garage_open");
	level thread scene::Play("cin_pro_14_01_robothorde_vign_dismantle_theia_shoot");
}

/*
	Name: function_82869bf4
	Namespace: namespace_12501af4
	Checksum: 0xAF16BBF5
	Offset: 0x2BB0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_82869bf4()
{
	level thread scene::Play("cin_pro_14_01_robothorde_vign_dismantle_diaz");
	level flag::wait_till("garage_open");
	level thread scene::Play("cin_pro_14_01_robothorde_vign_dismantle_diaz_shoot");
}

/*
	Name: function_f4e0744a
	Namespace: namespace_12501af4
	Checksum: 0xA250517E
	Offset: 0x2C20
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f4e0744a()
{
	level thread scene::Play("cin_pro_14_01_robothorde_vign_dismantle_maretti");
	level flag::wait_till("garage_open");
	level thread scene::Play("cin_pro_14_01_robothorde_vign_dismantle_maretti_shoot");
}

/*
	Name: function_38c8ec92
	Namespace: namespace_12501af4
	Checksum: 0x1402EA2B
	Offset: 0x2C90
	Size: 0x393
	Parameters: 0
	Flags: None
*/
function function_38c8ec92()
{
	level endon("hash_e41afc83");
	var_49b32118 = GetEnt("pa_nrc_warning", "targetname");
	var_49b32118 dialog::say("nrcp_warning_nrc_grunt_i_0", 0, 1);
	level flag::wait_till("player_in_alley");
	function_e3231637(1);
	level.var_5d4087a6 dialog::say("mare_you_guys_hear_tha_0", 0.5);
	level.var_7f246cd7 dialog::say("diaz_you_re_hearing_thing_0", 0.5);
	level flag::set("spawn_robot_horde");
	level thread namespace_21b2c1f2::function_448421b7();
	level.var_5d4087a6 dialog::say("mare_hey_fuck_you_0", 0.5);
	level.var_2fd26037 dialog::say("hend_shut_up_i_hear_it_t_0", 0.5);
	level flag::set("robot_contact");
	level.var_2fd26037 dialog::say("hend_holy_shit_0", 0.5);
	level.var_5d4087a6 dialog::say("mare_contact_contact_0", 0.5);
	wait(0.5);
	function_e3231637(0);
	level.var_7f246cd7 dialog::say("diaz_incoming_bots_a_s_0", 0.5);
	level.var_92d245e2 dialog::say("tayr_we_need_that_door_op_0", 0.5);
	level.var_92d245e2 dialog::say("tayr_give_us_some_cover_f_0");
	level flag::set("garage_open");
	level.var_92d245e2 dialog::say("tayr_get_inside_go_go_0", 0.6);
	level.var_5d4087a6 dialog::say("mare_get_to_the_extract_0", 1);
	level.var_5d4087a6 dialog::say("mare_we_ll_deal_with_robo_0", 0.35);
	level.var_f58c9f31 dialog::say("hall_get_the_minister_ins_0", 0.5);
	level thread namespace_21b2c1f2::function_37a511a();
	if(!level flag::get("players_in_garage") && !SessionModeIsCampaignZombiesGame())
	{
		level thread function_f0042481();
	}
}

/*
	Name: function_e3231637
	Namespace: namespace_12501af4
	Checksum: 0x85E235F0
	Offset: 0x3030
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_e3231637(var_8a4b0c9)
{
	if(isdefined(level.var_681ad194))
	{
		foreach(e_soldier in level.var_681ad194)
		{
			e_soldier ai::set_pacifist(var_8a4b0c9);
			if(var_8a4b0c9)
			{
				wait(RandomFloatRange(0.1, 0.75));
			}
		}
	}
}

/*
	Name: function_f0042481
	Namespace: namespace_12501af4
	Checksum: 0x3F3E2563
	Offset: 0x3108
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_f0042481()
{
	level endon("hash_64b7ce47");
	wait(4);
	level.var_92d245e2 dialog::say("tayr_you_re_dead_out_ther_0");
	wait(5);
	level.var_92d245e2 dialog::say("tayr_we_gotta_move_come_0");
	wait(5);
	level.var_92d245e2 dialog::say("tayr_drone_s_almost_here_0");
	wait(5);
	level notify("failed");
	spawn_manager::kill("sm_robot_horde1");
	spawn_manager::kill("sm_robot_horde2");
	spawn_manager::kill("sm_robot_horde3");
	util::missionfailedwrapper_nodeath(&"CP_MI_ETH_PROLOGUE_GARAGE_FAIL");
}

/*
	Name: function_1fd1d84b
	Namespace: namespace_12501af4
	Checksum: 0xB71BDE2E
	Offset: 0x3208
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_1fd1d84b(ent)
{
	level.var_7f246cd7 SetGoal(level.var_7f246cd7.origin, 1);
	level.var_5d4087a6 SetGoal(level.var_5d4087a6.origin, 1);
}

/*
	Name: function_3d5fceb9
	Namespace: namespace_12501af4
	Checksum: 0xC662DFF4
	Offset: 0x3280
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_3d5fceb9()
{
	level flag::wait_till("cyber_soldiers_kill_robots");
	clips = GetEntArray("robot_clip", "targetname");
	foreach(clip in clips)
	{
		clip delete();
	}
}

/*
	Name: function_341ece1b
	Namespace: namespace_12501af4
	Checksum: 0x7A7801C4
	Offset: 0x3360
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_341ece1b()
{
	var_c8af31c9 = GetEnt("clip_player_garage", "targetname");
	var_c8af31c9 MoveZ(200 * -1, 0.05);
	level flag::wait_till("garage_open");
	var_c8af31c9 MoveZ(200, 2);
	var_c8af31c9 waittill("movedone");
	level flag::wait_till("players_in_garage");
	var_c8af31c9 MoveZ(200 * -1, 0.05);
}

/*
	Name: function_79c2bdec
	Namespace: namespace_12501af4
	Checksum: 0x58E01218
	Offset: 0x3460
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_79c2bdec()
{
	var_935a64f = GetEnt("clip_ai_garage", "targetname");
	level flag::wait_till("garage_open");
	var_935a64f notsolid();
	var_935a64f connectpaths();
	level flag::set("garage_enter");
	level flag::wait_till("garage_closed");
	wait(1);
	var_935a64f solid();
	var_935a64f disconnectpaths();
}

