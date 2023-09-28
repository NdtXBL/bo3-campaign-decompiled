#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_accolades;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_subway;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_concussive_wave;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai\systems\animation_state_machine_notetracks;
#using scripts\shared\ai\systems\animation_state_machine_utility;
#using scripts\shared\ai\systems\behavior_tree_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_8b9f718f;

/*
	Name: main
	Namespace: namespace_8b9f718f
	Checksum: 0x81C3071B
	Offset: 0x2000
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function main()
{
	level thread namespace_79e1cd97::function_9ad97cf7();
	level thread function_8c158bf0();
}

/*
	Name: function_bd209495
	Namespace: namespace_8b9f718f
	Checksum: 0xB8FD1D20
	Offset: 0x2040
	Size: 0x353
	Parameters: 2
	Flags: None
*/
function function_bd209495(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_anchor_intro");
		level thread namespace_79e1cd97::function_5d4fc658();
		level thread function_21f63154();
		level thread objectives::breadcrumb("anchor_intro_breadcrumb", "cp_level_blackstation_climb");
		level thread function_109329ae();
		level thread namespace_79e1cd97::function_46dd77b0();
		load::function_a2995f22();
		wait(0.2);
		level thread namespace_79e1cd97::function_d1dc735f();
	}
	level scene::init("p7_fxanim_cp_blackstation_boatroom_bundle");
	if(isdefined(level.BZM_BLACKSTATIONDialogue3_1Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue3_1Callback]]();
	}
	level thread function_b7f1a1f6();
	level thread namespace_79e1cd97::function_6778ea09("med_se");
	level thread function_ab78d20a();
	level thread namespace_79e1cd97::function_e7bf1516();
	level thread namespace_79e1cd97::function_3a563d3();
	level thread namespace_79e1cd97::function_cb28102c();
	level thread function_9ea179d0();
	level thread function_d9713ae3();
	level thread function_af475f02(1);
	level thread function_94ff5bc0();
	level thread namespace_79e1cd97::function_70aaf37b(0);
	var_3be169e6 = GetEnt("anchor_intro_wind", "targetname");
	var_3be169e6 trigger::wait_till();
	var_3be169e6 thread namespace_79e1cd97::function_3c6fc4cb();
	foreach(player in level.activePlayers)
	{
		player thread namespace_79e1cd97::function_f2e7ba4b();
	}
	level flag::wait_till("anchor_intro_done");
	skipto::function_be8adfb8("objective_anchor_intro");
}

/*
	Name: function_88ddfb38
	Namespace: namespace_8b9f718f
	Checksum: 0xF265AED9
	Offset: 0x23A0
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_88ddfb38(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread scene::Play("p7_fxanim_gp_umbrella_outdoor_worn_01_bundle");
}

/*
	Name: function_7a0b2bc4
	Namespace: namespace_8b9f718f
	Checksum: 0xBA465469
	Offset: 0x23F0
	Size: 0x54B
	Parameters: 2
	Flags: None
*/
function function_7a0b2bc4(str_objective, var_74cd64bc)
{
	spawner::add_global_spawn_function("axis", &function_13e164f4);
	spawner::add_spawn_function_group("port_enemy", "script_noteworthy", &function_f3d4c95b);
	spawner::add_spawn_function_group("wind_rpg", "script_string", &function_6a0ccfd);
	vehicle::add_spawn_function("port_assault_tech", &function_17894e22);
	level thread function_17c457d7();
	level thread objectives::breadcrumb("port_assault_breadcrumb");
	level thread namespace_79e1cd97::function_6778ea09("med_se");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		exploder::exploder("fx_expl_hotel_rain_windows");
		namespace_79e1cd97::function_bff1a867("objective_port_assault");
		level thread namespace_79e1cd97::function_70aaf37b(1);
		level thread function_9ea179d0();
		level thread namespace_79e1cd97::function_5d4fc658();
		level scene::skipto_end("p7_fxanim_cp_blackstation_boatroom_bundle");
		trigger::use("trigger_hendricks_anchor_done");
		load::function_a2995f22();
		level flag::set("anchor_intro_done");
		level thread function_af475f02(0);
	}
	else
	{
		level thread function_925a5c0b();
	}
	level thread function_8ff7652d();
	level thread function_e00d64fc();
	level thread function_d66d3847();
	level thread function_6cf315c1();
	level thread function_b8500bb1();
	level thread function_5b85480f();
	level.var_2fd26037.var_f005c227 = 0;
	level thread function_b73344f6();
	var_12377408 = GetEnt("port_assault_low_surge", "targetname");
	level thread namespace_79e1cd97::function_d3e22b53(var_12377408);
	Array::thread_all(level.activePlayers, &namespace_79e1cd97::function_55221935);
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "toggle_rain_sprite", 0);
	if(isdefined(level.BZM_BLACKSTATIONDialogue3_2Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue3_2Callback]]();
	}
	trigger::use("port_assault_start", "targetname", undefined, 0);
	trigger::wait_till("surge_tutorial");
	level flag::set("end_surge_start");
	level.var_2fd26037 dialog::say("hend_these_waves_are_gonn_0");
	foreach(player in level.activePlayers)
	{
		player namespace_79e1cd97::function_3ceb3ad7();
	}
	level thread function_3e1b1aaa();
	flag::wait_till("start_barge");
	level thread function_3916ca15();
	level thread function_b28ad6d2();
	trigger::wait_till("end_port_assault");
	level skipto::function_be8adfb8("objective_port_assault");
}

/*
	Name: function_93433fef
	Namespace: namespace_8b9f718f
	Checksum: 0x9C507B34
	Offset: 0x2948
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_93433fef(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_blackstation_goto_docks");
}

/*
	Name: function_43296c4c
	Namespace: namespace_8b9f718f
	Checksum: 0x92423B05
	Offset: 0x2990
	Size: 0x3AB
	Parameters: 2
	Flags: None
*/
function function_43296c4c(str_objective, var_74cd64bc)
{
	SetDvar("phys_gravity_dir", (0, -0.5, 0.9));
	level thread function_281ee5c2(var_74cd64bc);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread function_9ea179d0();
		level thread function_b8500bb1();
		level thread function_3916ca15();
		level thread function_5fc4b0f9(var_74cd64bc);
		namespace_79e1cd97::function_bff1a867("objective_barge_assault");
		level thread namespace_79e1cd97::function_70aaf37b(1);
		level.var_2fd26037.var_f005c227 = 0;
		var_12377408 = GetEnt("port_assault_low_surge", "targetname");
		level thread namespace_79e1cd97::function_d3e22b53(var_12377408);
		Array::thread_all(level.activePlayers, &namespace_79e1cd97::function_55221935);
		spawner::add_global_spawn_function("axis", &function_13e164f4);
		level flag::wait_till_all(Array("all_players_spawned", "start_objective_barge_assault"));
		trigger::use("move_to_pier");
	}
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "toggle_rain_sprite", 1);
	level thread objectives::breadcrumb("barge_assault_breadcrumb");
	level thread namespace_79e1cd97::function_6778ea09("drench_se");
	level thread function_6bb14aef();
	level thread function_fd4da71();
	level thread function_2124978a();
	level thread pre_breach();
	level thread function_22a0015b();
	level thread function_30f43af6();
	level thread function_7a7390dd();
	Array::thread_all(GetEntArray("barge_current", "targetname"), &namespace_79e1cd97::function_76b75dc7, "objective_storm_surge_terminate", -60, 300);
	level flag::wait_till("breached");
	level skipto::function_be8adfb8("objective_barge_assault");
}

/*
	Name: function_c57c7177
	Namespace: namespace_8b9f718f
	Checksum: 0xCFC0284F
	Offset: 0x2D48
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_c57c7177(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_blackstation_board_ship");
}

/*
	Name: function_f93ea5f3
	Namespace: namespace_8b9f718f
	Checksum: 0x5282CA39
	Offset: 0x2D90
	Size: 0x20B
	Parameters: 2
	Flags: None
*/
function function_f93ea5f3(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_storm_surge");
		level thread namespace_79e1cd97::function_70aaf37b(1);
		level thread function_b8500bb1();
		level thread function_9ea179d0();
		level function_3916ca15();
		level thread function_3483fad0(var_74cd64bc);
		level thread function_5fc4b0f9(var_74cd64bc);
		level thread function_22a0015b();
		while(!level scene::is_ready("p7_fxanim_cp_blackstation_barge_roof_break_bundle"))
		{
			util::wait_network_frame();
		}
		load::function_a2995f22();
		trigger::use("hendricks_breach");
		Array::thread_all(GetEntArray("barge_current", "targetname"), &namespace_79e1cd97::function_76b75dc7, "objective_storm_surge_terminate", -60, 300);
	}
	spawner::remove_global_spawn_function("axis", &function_13e164f4);
	level flag::wait_till("tanker_ride_done");
	level skipto::function_be8adfb8("objective_storm_surge");
}

/*
	Name: function_7cde31a6
	Namespace: namespace_8b9f718f
	Checksum: 0x9E58FB7A
	Offset: 0x2FA8
	Size: 0x1D9
	Parameters: 4
	Flags: None
*/
function function_7cde31a6(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	var_30f598ff = GetEntArray("barge_ents", "script_noteworthy");
	Array::thread_all(var_30f598ff, &util::self_delete);
	var_4da28b01 = GetEntArray("barge_roof", "targetname");
	Array::thread_all(var_4da28b01, &util::self_delete);
	var_ef0ea28e = GetEntArray("wharf_debris", "script_noteworthy");
	Array::thread_all(var_ef0ea28e, &util::self_delete);
	objectives::complete("cp_level_blackstation_wheelhouse");
	objectives::complete("cp_level_blackstation_intercept");
	foreach(player in level.players)
	{
		if(isdefined(player.var_c4ed51d5))
		{
			player.var_c4ed51d5 delete();
		}
	}
}

/*
	Name: function_d9713ae3
	Namespace: namespace_8b9f718f
	Checksum: 0x564E754E
	Offset: 0x3190
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_d9713ae3()
{
	level endon("hash_34a87292");
	var_cbd11028 = Array("hend_brace_yourself_0", "hend_wind_s_picking_up_0", "hend_anchor_now_0", "hend_use_your_anchor_0");
	while(1)
	{
		level waittill("hash_5dd3aa3a");
		if(!flag::get("warning_vo_played"))
		{
			level.var_2fd26037 dialog::say("hend_wind_s_picking_up_0");
			flag::set("warning_vo_played");
		}
		else if(var_cbd11028.size)
		{
			str_vo = Array::random(var_cbd11028);
			level.var_2fd26037 dialog::say(str_vo);
			ArrayRemoveValue(var_cbd11028, str_vo);
		}
		else
		{
			level notify("hash_34a87292");
		}
		wait(0.1);
	}
}

/*
	Name: function_b8735762
	Namespace: namespace_8b9f718f
	Checksum: 0x9ED0B9BC
	Offset: 0x32D0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_b8735762()
{
	switch(randomIntRange(0, 2))
	{
		case 0:
		{
			level.var_2fd26037 dialog::say("hend_wind_s_picking_up_0");
			break;
		}
		case 1:
		{
			level.var_2fd26037 dialog::say("hend_anchor_now_0");
			break;
		}
		case default:
		{
			level.var_2fd26037 dialog::say("hend_use_your_anchor_0");
			break;
		}
	}
}

/*
	Name: function_b7f1a1f6
	Namespace: namespace_8b9f718f
	Checksum: 0xBAD15DB2
	Offset: 0x3390
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_b7f1a1f6()
{
	level thread function_e774fcfd();
	level flag::wait_till("hendricks_debris_traversal_ready");
	level flag::wait_till("debris_path_one_ready");
	level thread scene::Play("cin_bla_05_01_debristraversal_vign_useanchor_first_climb");
	level waittill("hash_6087df83");
	level function_e60704dd("debris_path_two_ready");
	level thread scene::Play("cin_bla_05_01_debristraversal_vign_useanchor_second_climb");
	level waittill("hash_c52658cf");
	level function_e60704dd("debris_path_three_ready");
	str_scene = "cin_bla_05_01_debristraversal_vign_useanchor_splitpath_path_a_first";
	level thread scene::Play(str_scene);
	level waittill("hash_6ec92f04");
	level function_e60704dd("debris_path_four_ready");
	str_scene = "cin_bla_05_01_debristraversal_vign_useanchor_splitpath_path_a_second";
	level thread scene::Play(str_scene);
	level waittill("hash_9871d9f3");
	level function_e60704dd("debris_path_five_ready");
	level thread scene::Play("cin_bla_05_01_debristraversal_vign_useanchor_end_climb");
	level waittill("hash_9871d9f3");
	level flag::set("allow_wind_gust");
	level.var_2fd26037 colors::enable();
}

/*
	Name: function_e60704dd
	Namespace: namespace_8b9f718f
	Checksum: 0x749F2A0A
	Offset: 0x3590
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_e60704dd(var_530a613c)
{
	level flag::set("end_gust_warning");
	level flag::wait_till(var_530a613c);
	wait(0.05);
	level flag::clear("allow_wind_gust");
	level flag::wait_till("kill_weather");
}

/*
	Name: function_e774fcfd
	Namespace: namespace_8b9f718f
	Checksum: 0xB8873EB0
	Offset: 0x3628
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_e774fcfd()
{
	level flag::wait_till("debris_path_one_ready");
	if(!level flag::get("hendricks_anchor_close"))
	{
		level flag::set("allow_wind_gust");
		level flag::wait_till("hendricks_anchor_close");
		level flag::clear("allow_wind_gust");
	}
}

/*
	Name: function_21f63154
	Namespace: namespace_8b9f718f
	Checksum: 0x91E0047C
	Offset: 0x36D8
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_21f63154()
{
	scene::init("p7_fxanim_cp_blackstation_anchor_beginning_event_back_bundle");
	util::wait_network_frame();
	scene::init("p7_fxanim_cp_blackstation_anchor_beginning_event_left_bundle");
	util::wait_network_frame();
	level thread function_e3f6a644("left");
	scene::init("p7_fxanim_cp_blackstation_anchor_beginning_event_right_bundle");
	util::wait_network_frame();
	level thread function_e3f6a644("right");
	scene::init("p7_fxanim_cp_blackstation_anchor_beginning_car_debris_bundle");
	trigger::wait_till("trigger_hendricks_hotel_approach");
	level thread scene::Play("p7_fxanim_cp_blackstation_anchor_beginning_event_back_bundle");
	trigger::wait_till("anchor_arch");
	level thread scene::Play("p7_fxanim_cp_blackstation_anchor_beginning_car_debris_bundle");
}

/*
	Name: function_e3f6a644
	Namespace: namespace_8b9f718f
	Checksum: 0xC7D74AD2
	Offset: 0x3828
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_e3f6a644(str_side)
{
	str_trigger_name = "anchor_fxanim_" + str_side;
	var_2818e4cc = GetEnt(str_trigger_name, "targetname");
	var_2818e4cc endon("death");
	var_2818e4cc waittill("trigger");
	var_a3d1f031 = "p7_fxanim_cp_blackstation_anchor_beginning_event_" + str_side + "_bundle";
	scene::Play(var_a3d1f031);
}

/*
	Name: function_925a5c0b
	Namespace: namespace_8b9f718f
	Checksum: 0x69DF8F81
	Offset: 0x38D8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_925a5c0b()
{
	level flag::wait_till("setup_hotel_blocker");
	level thread namespace_79e1cd97::function_70aaf37b(1);
}

/*
	Name: function_af475f02
	Namespace: namespace_8b9f718f
	Checksum: 0xF34764DE
	Offset: 0x3920
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function function_af475f02(var_f47b4e2b)
{
	spawner::add_spawn_function_group("substation_enemy", "script_noteworthy", &function_ee4f2519);
	if(var_f47b4e2b)
	{
		level scene::init("p7_fxanim_cp_blackstation_missile_building_bundle");
		trigger::wait_till("trigger_hendricks_anchor_done");
		level scene::init("cin_bla_06_02_portassault_vign_roof_workers");
		level dialog::remote("kane_we_are_a_go_on_dro_0");
		level thread dialog::remote("dops_we_re_live_strike_i_0");
		trigger::wait_till("port_assault_start");
	}
	else
	{
		level scene::init("cin_bla_06_02_portassault_vign_roof_workers");
		level thread function_b0f369dc();
	}
	level thread scene::Play("p7_fxanim_cp_blackstation_missile_building_bundle");
	trigger::use("hotel_wait");
	level waittill("blast");
	level thread function_eabab8e4();
	level dialog::remote("dops_negative_effect_inc_0");
	level.var_2fd26037 ai::set_ignoreall(1);
	if(!level flag::get("hotel_exit"))
	{
		level scene::add_scene_func("cin_bla_06_02_portassault_vign_drone_react", &function_84be5124);
		level scene::Play("cin_bla_06_02_portassault_vign_drone_react");
	}
	else if(level scene::is_active("cin_bla_06_02_portassault_vign_drone_react"))
	{
		level scene::stop("cin_bla_06_02_portassault_vign_drone_react");
	}
	level thread namespace_4297372::function_91146001();
	level.var_2fd26037 ai::set_ignoreall(0);
	level flag::set("drone_strike");
}

/*
	Name: function_eabab8e4
	Namespace: namespace_8b9f718f
	Checksum: 0x717708D5
	Offset: 0x3BE8
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_eabab8e4()
{
	var_c6dce143 = struct::get("objective_port_assault_ai");
	foreach(player in level.activePlayers)
	{
		if(Distance2DSquared(player.origin, var_c6dce143.origin) <= 490000)
		{
			player PlayRumbleOnEntity("cp_blackstation_tanker_building_rumble");
		}
	}
}

/*
	Name: function_84be5124
	Namespace: namespace_8b9f718f
	Checksum: 0x4C94D2E3
	Offset: 0x3CE0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_84be5124(a_ents)
{
	wait(1);
	level.var_2fd26037 colors::enable();
	trigger::use("triggercolor_drone_strike");
}

/*
	Name: function_b0f369dc
	Namespace: namespace_8b9f718f
	Checksum: 0x380F830
	Offset: 0x3D30
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b0f369dc()
{
	var_fd585438 = GetNode("anchor_end_wait", "targetname");
	level.var_2fd26037 SetGoal(var_fd585438, 1);
	level.var_2fd26037 waittill("goal");
	level scene::init("cin_bla_06_02_portassault_vign_drone_react");
}

/*
	Name: function_9ba20f95
	Namespace: namespace_8b9f718f
	Checksum: 0xF229AC55
	Offset: 0x3DC0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9ba20f95()
{
	level endon("hash_99060364");
	level thread namespace_79e1cd97::function_c2d8b452("lightning_port", "surge_done");
}

/*
	Name: function_17c457d7
	Namespace: namespace_8b9f718f
	Checksum: 0xC2386656
	Offset: 0x3E00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_17c457d7()
{
	level scene::init("p7_fxanim_cp_blackstation_roof_vent_bundle");
	level waittill("hash_1718ca4b");
	level thread scene::Play("cin_bla_06_02_portassault_vign_roof_workers");
	level scene::Play("p7_fxanim_cp_blackstation_roof_vent_bundle");
}

/*
	Name: function_ee4f2519
	Namespace: namespace_8b9f718f
	Checksum: 0xC8CEB17
	Offset: 0x3E78
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_ee4f2519(str_dir)
{
	self endon("death");
	self.var_284432c3 = 0;
	self thread namespace_23567e72::function_af8faf92();
	self ai::set_behavior_attribute("sprint", 1);
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self.goalRadius = 1;
	self SetGoal(self.origin);
	level waittill("hash_1718ca4b");
	self thread function_eb6b6084();
}

/*
	Name: function_eb6b6084
	Namespace: namespace_8b9f718f
	Checksum: 0x67CA62AF
	Offset: 0x3F50
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_eb6b6084()
{
	self endon("death");
	wait(RandomFloatRange(0.3, 1));
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	s_start = struct::get("retreat_pt1");
	var_9c34d7b = struct::get("retreat_pt2");
	s_end = struct::get("retreat_pt3");
	var_c3b4c42a = GetEnt("vol_port_building", "targetname");
	self.goalRadius = 2048;
	self SetGoal(s_start.origin + (RandomInt(80), RandomInt(80), 0), 1);
	self waittill("goal");
	self SetGoal(var_9c34d7b.origin + (RandomInt(80), RandomInt(80), 0), 1);
	self waittill("goal");
	self SetGoal(s_end.origin + (RandomInt(120), RandomInt(120), 0), 1);
	self waittill("goal");
	self ClearForcedGoal();
	self SetGoal(var_c3b4c42a);
}

/*
	Name: function_d66d3847
	Namespace: namespace_8b9f718f
	Checksum: 0x13074DDB
	Offset: 0x41C8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_d66d3847()
{
	trigger::wait_till("trigger_surge_debris1");
	t_start = GetEnt("surge_port_start", "script_noteworthy");
	var_64dd962c = GetEntArray("debris_surge_0", "targetname");
	level thread namespace_79e1cd97::function_3c57957(t_start, var_64dd962c, "start_barge");
}

/*
	Name: function_6cf315c1
	Namespace: namespace_8b9f718f
	Checksum: 0x1551FCE2
	Offset: 0x4270
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_6cf315c1()
{
	level flag::wait_till("start_barge");
	t_start = GetEnt("surge_port_restaurant", "script_noteworthy");
	while(level flag::get("surge_active"))
	{
		wait(0.05);
	}
	level thread namespace_79e1cd97::function_3c57957(t_start, undefined, "end_surge_rest");
}

/*
	Name: function_5fc4b0f9
	Namespace: namespace_8b9f718f
	Checksum: 0xF752D68B
	Offset: 0x4318
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_5fc4b0f9(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	t_start = GetEnt("surge_port_authority", "script_noteworthy");
	var_ef0ea28e = GetEntArray("wharf_debris", "script_noteworthy");
	foreach(var_97a8ad2e in var_ef0ea28e)
	{
		var_97a8ad2e thread namespace_79e1cd97::function_98c7a42();
	}
	level thread namespace_79e1cd97::function_3c57957(t_start, var_ef0ea28e, "barge_breach_cleared");
	if(!var_74cd64bc)
	{
		level thread function_d37a023d();
	}
}

/*
	Name: function_d37a023d
	Namespace: namespace_8b9f718f
	Checksum: 0xFA0E5036
	Offset: 0x4460
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_d37a023d()
{
	level endon("hash_f2113aa5");
	var_4beb42a4 = [];
	var_c891e2e5 = GetNode("covernode_surge_1", "script_noteworthy");
	var_ee945d4e = GetNode("covernode_surge_2", "script_noteworthy");
	if(!isdefined(var_4beb42a4))
	{
		var_4beb42a4 = [];
	}
	else if(!IsArray(var_4beb42a4))
	{
		var_4beb42a4 = Array(var_4beb42a4);
	}
	var_4beb42a4[var_4beb42a4.size] = var_ee945d4e;
	var_1496d7b7 = GetNode("covernode_surge_3", "script_noteworthy");
	if(!isdefined(var_4beb42a4))
	{
		var_4beb42a4 = [];
	}
	else if(!IsArray(var_4beb42a4))
	{
		var_4beb42a4 = Array(var_4beb42a4);
	}
	var_4beb42a4[var_4beb42a4.size] = var_1496d7b7;
	var_a857ed8 = GetNode("covernode_surge_4", "script_noteworthy");
	if(!isdefined(var_4beb42a4))
	{
		var_4beb42a4 = [];
	}
	else if(!IsArray(var_4beb42a4))
	{
		var_4beb42a4 = Array(var_4beb42a4);
	}
	var_4beb42a4[var_4beb42a4.size] = var_a857ed8;
	foreach(nd_cover in var_4beb42a4)
	{
		SetEnableNode(nd_cover, 0);
	}
	function_41eafef6(var_ee945d4e, var_c891e2e5, "triggercolor_port_cover2");
	function_41eafef6(var_1496d7b7, var_ee945d4e, "triggercolor_port_cover3");
	function_41eafef6(var_a857ed8, var_1496d7b7, "triggercolor_port_cover4");
}

/*
	Name: function_41eafef6
	Namespace: namespace_8b9f718f
	Checksum: 0x519FA99B
	Offset: 0x4738
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_41eafef6(var_4b32b0bd, var_64fcc6c4, var_72001283)
{
	level flag::wait_till("cover_switch");
	SetEnableNode(var_4b32b0bd, 1);
	wait(0.1);
	trigger::use(var_72001283);
	SetEnableNode(var_64fcc6c4, 0);
	level flag::clear("cover_switch");
}

/*
	Name: function_8ff7652d
	Namespace: namespace_8b9f718f
	Checksum: 0xD987D920
	Offset: 0x47F0
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_8ff7652d()
{
	trigger::wait_till("trigger_port_sniper");
	level flag::set("end_surge_rest");
	level thread function_83fc27b8();
	spawn_manager::enable("sm_pa_sniper");
	trigger::wait_till("trigger_port_building", "script_noteworthy");
	level thread function_5fc4b0f9();
	level thread function_a5f89f57();
	level thread function_7ef21283();
	level thread function_9e33130c();
	spawn_manager::enable("sm_port_authority");
	wait(3);
	spawn_manager::enable("sm_rooftop_suppressor");
	if(level.players.size > 1)
	{
		spawn_manager::function_72e3dd35("sm_pa_sniper");
	}
	level flag::set("swept_away");
	spawn_manager::function_72e3dd35("sm_rooftop_suppressor");
	spawn_manager::function_27bf2e8("sm_port_authority", 3);
	trigger::use("trigger_truck_port", "targetname", undefined, 0);
	wait(4);
	level flag::set("enter_port");
}

/*
	Name: function_9e33130c
	Namespace: namespace_8b9f718f
	Checksum: 0xF73A8777
	Offset: 0x49E8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9e33130c()
{
	level flag::wait_till("swept_away");
	spawner::simple_spawn("port_authority_swept");
}

/*
	Name: function_83fc27b8
	Namespace: namespace_8b9f718f
	Checksum: 0x86EFDC37
	Offset: 0x4A30
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_83fc27b8()
{
	var_746111be = util::spawn_model("tag_origin");
	var_746111be.targetname = "wind_target";
	var_746111be.script_objective = "objective_barge_assault";
	var_746111be endon("death");
	a_s_targets = struct::get_array("wind_target");
	while(1)
	{
		s_target = a_s_targets[RandomInt(a_s_targets.size)];
		var_746111be.origin = s_target.origin;
		wait(2);
	}
}

/*
	Name: function_f3d4c95b
	Namespace: namespace_8b9f718f
	Checksum: 0x1CCD35B3
	Offset: 0x4B18
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f3d4c95b()
{
	self endon("death");
	self.grenadeAmmo = 0;
	self.var_284432c3 = 0;
}

/*
	Name: function_6a0ccfd
	Namespace: namespace_8b9f718f
	Checksum: 0xBE17680E
	Offset: 0x4B48
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_6a0ccfd()
{
	var_92f29fd5 = GetWeapon("launcher_guided_blackstation_ai");
	self ai::gun_switchto(var_92f29fd5, "right");
	self thread namespace_79e1cd97::function_ef275fb3();
}

/*
	Name: function_a5f89f57
	Namespace: namespace_8b9f718f
	Checksum: 0x6432843F
	Offset: 0x4BB8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_a5f89f57()
{
	level flag::wait_till("enter_port");
	trigger::use("triggercolor_port_building");
}

/*
	Name: function_e00d64fc
	Namespace: namespace_8b9f718f
	Checksum: 0x6F74CD12
	Offset: 0x4C00
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_e00d64fc()
{
	trigger::wait_till("trigger_truck_port");
	vh_truck = vehicle::simple_spawn_single("port_assault_tech");
	nd_start = GetVehicleNode(vh_truck.target, "targetname");
	vh_truck thread vehicle::get_on_and_go_path(nd_start);
}

/*
	Name: function_7ef21283
	Namespace: namespace_8b9f718f
	Checksum: 0x8B64CC48
	Offset: 0x4C98
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_7ef21283()
{
	trigger::wait_till("trigger_port_interior");
	spawner::add_spawn_function_group("port_interior", "targetname", &function_da7b81a5);
	spawn_manager::enable("sm_port_interior");
}

/*
	Name: function_da7b81a5
	Namespace: namespace_8b9f718f
	Checksum: 0x60AAF0DD
	Offset: 0x4D08
	Size: 0x115
	Parameters: 0
	Flags: None
*/
function function_da7b81a5()
{
	self endon("death");
	trigger::wait_till("trigger_port_advance");
	while(1)
	{
		e_target = util::get_closest_player(self.origin, "allies");
		v_player_pos = GetClosestPointOnNavMesh(e_target.origin, 82, 32);
		if(isdefined(v_player_pos))
		{
			var_72237359 = util::PositionQuery_PointArray(v_player_pos, self.engageMinDist, self.engageMaxDist, 70, 40, self);
			if(var_72237359.size > 0)
			{
				self SetGoal(Array::random(var_72237359), 1);
			}
		}
		wait(3);
	}
}

/*
	Name: function_3e1b1aaa
	Namespace: namespace_8b9f718f
	Checksum: 0x80C5590
	Offset: 0x4E28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_3e1b1aaa()
{
	level endon("hash_9bfd16b7");
	level waittill("hash_81a3b4e0");
	level.var_2fd26037 dialog::say("hend_waves_hitting_now_0");
}

/*
	Name: function_3916ca15
	Namespace: namespace_8b9f718f
	Checksum: 0x31BA2012
	Offset: 0x4E70
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_3916ca15()
{
	level endon("hash_b36ffbd");
	var_83067764 = GetEnt("bs_dock_tugboat", "targetname");
	var_83067764 function_c5ca9512();
	level thread function_f8ff4031();
	level thread scene::Play("p7_fxanim_cp_blackstation_barge_idle_storm_bundle");
	var_83067764 thread function_a56a2ed2();
}

/*
	Name: function_c5ca9512
	Namespace: namespace_8b9f718f
	Checksum: 0x81212BA5
	Offset: 0x4F18
	Size: 0x7E3
	Parameters: 0
	Flags: None
*/
function function_c5ca9512()
{
	var_b9264a5 = GetNode("deck_traversal", "targetname");
	LinkTraversal(var_b9264a5);
	s_align = struct::get("tag_align_hendricks_barge");
	var_197f1988 = util::spawn_model("tag_origin", s_align.origin, s_align.angles);
	var_197f1988.targetname = "barge_align";
	var_197f1988.script_objective = "objective_storm_surge";
	var_197f1988 LinkTo(self);
	var_13335379 = GetEntArray("barge_trigger", "script_noteworthy");
	foreach(trigger in var_13335379)
	{
		trigger EnableLinkTo();
		trigger LinkTo(self);
	}
	e_fx = GetEnt("barge_wave_fx", "targetname");
	e_fx LinkTo(self);
	var_d5005d3f = GetEnt("barge_container_door_left", "targetname");
	var_d5005d3f RotateTo(VectorScale((0, -1, 0), 5), 0.05);
	var_d5005d3f waittill("rotatedone");
	var_d5005d3f LinkTo(self);
	var_d9350cda = GetEnt("barge_container_door_right", "targetname");
	var_d9350cda RotateTo(VectorScale((0, 1, 0), 5), 0.05);
	var_d9350cda waittill("rotatedone");
	var_d9350cda LinkTo(self);
	var_30f598ff = GetEntArray("barge_ents", "script_noteworthy");
	foreach(var_541ddd5c in var_30f598ff)
	{
		var_541ddd5c LinkTo(self);
	}
	var_cf82ed09 = GetEntArray("player_breach_trigger", "script_noteworthy");
	level.var_5b610bbd = [];
	foreach(trigger in var_cf82ed09)
	{
		n_index = Int(trigger.script_float) - 1;
		var_7345ca74 = GetEnt(trigger.target, "targetname");
		e_player_link = GetEnt(var_7345ca74.target, "targetname");
		trigger EnableLinkTo();
		trigger LinkTo(self);
		level.var_5b610bbd[n_index] = util::function_14518e76(trigger, &"cp_level_blackstation_interact_breach", &"CP_MI_SING_BLACKSTATION_BREACH", &function_f686643b);
		level.var_5b610bbd[n_index] function_173b4bfe();
		level.var_5b610bbd[n_index] thread function_307c2864();
		level.var_5b610bbd[n_index].target = trigger.targetname;
		level.var_5b610bbd[n_index] LinkTo(self);
		var_7345ca74 LinkTo(self);
		e_player_link LinkTo(self);
	}
	var_52a2c714 = GetEntArray("barge_lights", "targetname");
	foreach(light in var_52a2c714)
	{
		light LinkTo(self);
	}
	var_70eb06cf = GetNodeArray("wheelhouse_node", "script_noteworthy");
	foreach(var_16758b6f in var_70eb06cf)
	{
		SetEnableNode(var_16758b6f, 0);
	}
	PlayFXOnTag(level._effect["barge_sheeting"], self, "tag_wheelhouse_fxanim_jnt");
	level thread function_8dc0d020();
	Array::thread_all(level.activePlayers, &function_b3d8d3f5);
}

/*
	Name: function_b3d8d3f5
	Namespace: namespace_8b9f718f
	Checksum: 0x4DE34ABD
	Offset: 0x5708
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_b3d8d3f5()
{
	self notify("hash_ec691523");
	self endon("hash_ec691523");
	level endon("hash_9bfd16b7");
	self endon("death");
	var_83067764 = GetEnt("bs_dock_tugboat", "targetname");
	var_83067764 endon("death");
	var_7a15f6e6 = GetEnt("barge_ground_ref", "targetname");
	var_7a15f6e6 endon("death");
	while(1)
	{
		if(self istouching(var_7a15f6e6) && !self.var_20aea9e5)
		{
			self.var_20aea9e5 = 1;
			self playerSetGroundReferenceEnt(var_83067764);
		}
		else if(!self istouching(var_7a15f6e6) && self.var_20aea9e5)
		{
			self playerSetGroundReferenceEnt(undefined);
			self.var_20aea9e5 = 0;
		}
		wait(0.05);
	}
}

/*
	Name: function_f8ff4031
	Namespace: namespace_8b9f718f
	Checksum: 0x21C62B8
	Offset: 0x5870
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f8ff4031()
{
	level scene::init("p7_fxanim_cp_blackstation_pier_event_01_bundle");
	util::wait_network_frame();
	level scene::init("p7_fxanim_cp_blackstation_pier_event_03_bundle");
}

/*
	Name: function_a56a2ed2
	Namespace: namespace_8b9f718f
	Checksum: 0x958218F2
	Offset: 0x58D0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_a56a2ed2()
{
	v_ang = self.angles;
	v_org = self.origin;
	level flag::wait_till("tanker_smash");
	level notify("hash_b36ffbd");
	wait(1);
	level flag::set("tanker_face");
}

/*
	Name: function_6bb14aef
	Namespace: namespace_8b9f718f
	Checksum: 0xB9C5AB8A
	Offset: 0x5958
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_6bb14aef()
{
	level thread function_36dfb0a2();
}

/*
	Name: pre_breach
	Namespace: namespace_8b9f718f
	Checksum: 0x7E704B0F
	Offset: 0x5980
	Size: 0x2CB
	Parameters: 1
	Flags: None
*/
function pre_breach(var_6e2f783e)
{
	if(!isdefined(var_6e2f783e))
	{
		var_6e2f783e = 0;
	}
	var_f4520dcf = GetNode("container_node", "targetname");
	level thread function_42df2efb();
	level thread function_d091f076();
	wait(1);
	spawn_manager::function_72e3dd35("sm_barge");
	spawn_manager::function_72e3dd35("sm_barge_cqb");
	level thread function_2a6c042b();
	objectives::complete("cp_level_blackstation_board_ship");
	level dialog::function_13b3b16a("plyr_all_clear_0");
	level flag::wait_till("hendricks_on_barge");
	level.var_2fd26037 SetGoal(var_f4520dcf);
	wait(2);
	level dialog::function_13b3b16a("plyr_kane_we_ve_reached_0");
	level dialog::remote("kane_interface_with_the_p_0");
	level.var_2fd26037 dialog::say("hend_you_can_do_that_0");
	level dialog::remote("kane_your_dni_is_connecte_0");
	level function_d1996775();
	level dialog::remote("kane_files_secured_and_re_0");
	level notify("hash_4561e3f");
	trigger::use("hendricks_breach");
	level dialog::remote("kane_storm_s_getting_wors_0", 0.1);
	level dialog::function_13b3b16a("plyr_got_it_thanks_kane_0");
	level thread namespace_4297372::function_973b77f9();
	level.var_2fd26037 dialog::say("hend_i_ll_take_the_upper_0");
	level thread function_77531405();
	level thread function_3483fad0();
}

/*
	Name: function_2a6c042b
	Namespace: namespace_8b9f718f
	Checksum: 0x545E27A3
	Offset: 0x5C58
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_2a6c042b()
{
	a_ai_enemies = GetAITeamArray("axis");
	foreach(ai_enemy in a_ai_enemies)
	{
		if(isalive(ai_enemy))
		{
			ai_enemy kill();
		}
		util::wait_network_frame();
	}
}

/*
	Name: function_d091f076
	Namespace: namespace_8b9f718f
	Checksum: 0xF8171A59
	Offset: 0x5D38
	Size: 0x1A1
	Parameters: 0
	Flags: None
*/
function function_d091f076()
{
	spawn_manager::function_27bf2e8("sm_barge", 2);
	spawn_manager::function_27bf2e8("sm_barge_cqb", 2);
	var_a6abef8a = ArrayCombine(spawn_manager::get_ai("sm_barge"), spawn_manager::get_ai("sm_barge_cqb"), 0, 0);
	foreach(var_8d4ec191 in var_a6abef8a)
	{
		var_8d4ec191 SetGoal(GetEnt("vol_center", "targetname"), 1, 16);
		var_8d4ec191 util::delay(randomIntRange(15, 18), undefined, &ai::bloody_death, randomIntRange(5, 15), "neck");
	}
}

/*
	Name: function_d1996775
	Namespace: namespace_8b9f718f
	Checksum: 0xA0B6E11A
	Offset: 0x5EE8
	Size: 0x18F
	Parameters: 0
	Flags: None
*/
function function_d1996775()
{
	level thread function_5edd0266();
	level flag::set("container_console_active");
	var_83067764 = GetEnt("bs_dock_tugboat", "targetname");
	t_use = GetEnt("container_hack", "targetname");
	var_376507c0 = &"cp_hacking_console";
	str_hint = &"CP_MI_SING_BLACKSTATION_CONSOLE_HACK";
	var_2661661a = t_use hacking::function_68df65d8(6, var_376507c0, str_hint, undefined, undefined, var_83067764);
	var_2661661a.dontLinkPlayerToTrigger = 1;
	var_2661661a.target = t_use.targetname;
	var_2661661a LinkTo(var_83067764);
	t_use hacking::trigger_wait();
	t_use TriggerEnable(0);
	if(isdefined(level.BZM_BLACKSTATIONDialogue3_3Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue3_3Callback]]();
	}
}

/*
	Name: function_5edd0266
	Namespace: namespace_8b9f718f
	Checksum: 0x32B38ACB
	Offset: 0x6080
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_5edd0266()
{
	level.hacking flag::wait_till("in_progress");
	GetEnt("barge_monitor_on", "targetname") delete();
	GetEnt("barge_monitor_glitch_1", "targetname") show();
	wait(1.5);
	GetEnt("barge_monitor_glitch_1", "targetname") delete();
	GetEnt("barge_monitor_glitch_2", "targetname") show();
	wait(1.5);
	GetEnt("barge_monitor_glitch_2", "targetname") delete();
	GetEnt("barge_monitor_off", "targetname") show();
}

/*
	Name: function_42df2efb
	Namespace: namespace_8b9f718f
	Checksum: 0xFA5C2F06
	Offset: 0x61E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_42df2efb()
{
	trigger::wait_till("barge_ground_ref");
	spawn_manager::kill("sm_barge");
	spawn_manager::kill("sm_barge_cqb");
}

/*
	Name: function_3483fad0
	Namespace: namespace_8b9f718f
	Checksum: 0xC3D13C3E
	Offset: 0x6238
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_3483fad0(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	objectives::set("cp_level_blackstation_wheelhouse");
	var_70eb06cf = GetNodeArray("wheelhouse_node", "script_noteworthy");
	foreach(var_16758b6f in var_70eb06cf)
	{
		SetEnableNode(var_16758b6f, 1);
	}
	if(!var_74cd64bc)
	{
		savegame::function_5d2cdd99();
	}
	level flag::wait_till("all_players_spawned");
	foreach(player in level.activePlayers)
	{
		function_ad89287b();
	}
	callback::on_spawned(&function_ad89287b);
	callback::on_disconnect(&function_b5455e18);
	level flag::set("breach_active");
}

/*
	Name: function_f686643b
	Namespace: namespace_8b9f718f
	Checksum: 0x3600A4AE
	Offset: 0x6450
	Size: 0x117
	Parameters: 1
	Flags: None
*/
function function_f686643b(e_player)
{
	self.trigger endon("death");
	level endon("hash_e1526d21");
	e_player namespace_79e1cd97::function_ed7faf05();
	e_player.var_d6f82ae7 = self.trigger.script_float;
	var_a3d1f031 = "cin_bla_06_06_portassault_position0" + e_player.var_d6f82ae7 + "_breach";
	e_player thread scene::init(var_a3d1f031, e_player);
	self gameobjects::disable_object(1);
	self.var_3fe3140 = 1;
	if(level.var_467c7a9c + 1 == level.activePlayers.size)
	{
		wait(0.5);
	}
	level.var_467c7a9c++;
	e_player waittill("disconnect");
	level.var_467c7a9c--;
	self.var_ff712655 = 0;
}

/*
	Name: function_ad89287b
	Namespace: namespace_8b9f718f
	Checksum: 0x182A88C7
	Offset: 0x6570
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_ad89287b()
{
	for(x = 0; x < level.var_5b610bbd.size; x++)
	{
		if(!level.var_5b610bbd[x].var_ff712655)
		{
			level.var_5b610bbd[x] function_13dde3bd();
			return;
		}
	}
}

/*
	Name: function_b5455e18
	Namespace: namespace_8b9f718f
	Checksum: 0xACBBC79B
	Offset: 0x65E8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_b5455e18()
{
	if(!isdefined(self.var_d6f82ae7))
	{
		for(x = level.var_5b610bbd.size - 1; x >= 0; x--)
		{
			if(!level.var_5b610bbd[x].var_3fe3140)
			{
				level.var_5b610bbd[x] function_173b4bfe();
				return;
			}
		}
	}
}

/*
	Name: function_13dde3bd
	Namespace: namespace_8b9f718f
	Checksum: 0xF3448743
	Offset: 0x6670
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_13dde3bd()
{
	self gameobjects::enable_object(1);
	self.var_ff712655 = 1;
	self.var_3fe3140 = 0;
}

/*
	Name: function_173b4bfe
	Namespace: namespace_8b9f718f
	Checksum: 0x45D3494A
	Offset: 0x66B0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_173b4bfe()
{
	self gameobjects::disable_object(1);
	self.var_ff712655 = 0;
	self.var_3fe3140 = 1;
}

/*
	Name: function_307c2864
	Namespace: namespace_8b9f718f
	Checksum: 0x33CB5544
	Offset: 0x66F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_307c2864()
{
	level waittill("hash_e1526d21");
	self gameobjects::destroy_object(1, 1);
}

/*
	Name: function_7c39aa7b
	Namespace: namespace_8b9f718f
	Checksum: 0x73849D6C
	Offset: 0x6728
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_7c39aa7b()
{
	level endon("hash_e1526d21");
	self waittill("death");
	var_a8a66403 = level.players.size + 1;
	for(x = var_a8a66403; x <= 4; x++)
	{
		var_e48342b = GetEnt("breach_player_" + x, "targetname");
		if(isdefined(var_e48342b))
		{
			level flag::set(var_e48342b.script_flag_set);
			var_7345ca74 = GetEnt(var_e48342b.target, "targetname");
			var_7345ca74 delete();
			var_e48342b delete();
		}
	}
}

/*
	Name: function_77531405
	Namespace: namespace_8b9f718f
	Checksum: 0xBDEA3898
	Offset: 0x6858
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_77531405()
{
	level endon("hash_e1526d21");
	wait(15);
	level.var_2fd26037 dialog::say("hend_get_ready_stack_up_0");
}

/*
	Name: function_8dc0d020
	Namespace: namespace_8b9f718f
	Checksum: 0x1A67F1DF
	Offset: 0x6898
	Size: 0x54B
	Parameters: 0
	Flags: None
*/
function function_8dc0d020()
{
	e_align = GetEnt("barge_align", "targetname");
	var_fbbc4fa6 = GetEnt("barge_wheelhouse", "targetname");
	var_3d8da684 = GetEnt("dock_assault_tanker", "targetname");
	level thread scene::init("p7_fxanim_cp_blackstation_barge_roof_break_bundle");
	function_a3eced7();
	SetDvar("phys_gravity_dir", (0, 0, 1));
	var_fbbc4fa6 delete();
	level notify("hash_e1526d21");
	level flag::set("breached");
	level thread function_9a8b2deb();
	var_3d8da684 delete();
	spawner::add_spawn_function_group("wheelhouse_target1", "targetname", &function_69d65c98, 0);
	spawner::add_spawn_function_group("wheelhouse_target2", "targetname", &function_69d65c98, 0);
	spawner::add_spawn_function_group("wheelhouse_target3", "targetname", &function_69d65c98, 0);
	spawner::add_spawn_function_group("wheelhouse_enemy", "targetname", &function_69d65c98, 1);
	spawn_manager::enable("sm_wheelhouse");
	wait(0.1);
	var_1dda34f0 = GetEnt("barge_door_rt", "targetname");
	var_1dda34f0 thread function_dd6beda2("right");
	var_55174cd2 = GetEnt("barge_door_lt", "targetname");
	var_55174cd2 thread function_dd6beda2("left");
	var_1dda34f0 playsound("fxa_door_breach_r");
	var_55174cd2 playsound("fxa_door_breach_l");
	wait(0.2);
	exploder::exploder_stop("barge_destroy_lgt");
	exploder::exploder("barge_destroy_interior_lgt");
	level thread function_b9184c9a();
	level.var_2fd26037 thread function_e7b216fb();
	foreach(player in level.activePlayers)
	{
		player thread function_f3ea3cc7();
		player thread player::fill_current_clip();
	}
	if(isdefined(level.BZM_BLACKSTATIONDialogue3_4Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue3_4Callback]]();
	}
	level scene::Play("cin_bla_06_06_portassault_1st_breach_pound_react");
	var_d53fdaad = GetEntArray("barge_hurt_trigger", "targetname");
	Array::run_all(var_d53fdaad, &delete);
	spawner::waittill_ai_group_ai_count("group_wheelhouse", 0);
	spawner::waittill_ai_group_ai_count("group_wheelhouse_backup", 0);
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	level flag::set("barge_breach_cleared");
	objectives::complete("cp_level_blackstation_wheelhouse");
	objectives::complete("cp_level_blackstation_intercept");
	level flag::set("tanker_smash");
}

/*
	Name: function_a3eced7
	Namespace: namespace_8b9f718f
	Checksum: 0x9A10BD41
	Offset: 0x6DF0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a3eced7()
{
	level.var_467c7a9c = 0;
	level flag::wait_till("all_players_spawned");
	while(level.var_467c7a9c < level.activePlayers.size || level.activePlayers.size == 0)
	{
		wait(0.05);
	}
	callback::remove_on_spawned(&function_ad89287b);
	callback::remove_on_disconnect(&function_b5455e18);
}

/*
	Name: function_e7b216fb
	Namespace: namespace_8b9f718f
	Checksum: 0x82D3ACE3
	Offset: 0x6EA0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_e7b216fb()
{
	self ai::set_ignoreall(1);
	level waittill("hash_f7949f45");
	level thread scene::Play("cin_bla_06_06_portassault_1st_breach_hendricks_concussive");
	level waittill("hash_3a30e06");
	trigger::use("hendricks_wheelhouse");
	playsoundatposition("evt_breachassault_concussive_walla", self.origin);
	self function_9ba0286c();
	self ai::set_ignoreall(0);
}

/*
	Name: function_9ba0286c
	Namespace: namespace_8b9f718f
	Checksum: 0x5C9E78A9
	Offset: 0x6F68
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_9ba0286c()
{
	a_ai_enemies = ArrayCombine(GetAISpeciesArray("axis", "all"), GetAISpeciesArray("team3", "all"), 0, 0);
	self.cybercom = spawnstruct();
	self.cybercom.var_e6fa6e38 = 150;
	self.cybercom.var_4e92078e = 5;
	level thread namespace_687c8387::function_ffd5ab29(100, level.var_2fd26037);
	if(isdefined(a_ai_enemies) && a_ai_enemies.size)
	{
		foreach(enemy in a_ai_enemies)
		{
			if(!isdefined(enemy) || !isdefined(enemy.origin))
			{
				continue;
			}
			if(!(isdefined(enemy.var_915fc074) && enemy.var_915fc074))
			{
				enemy thread function_b53bbcfb();
			}
		}
	}
}

/*
	Name: function_797ee2de
	Namespace: namespace_8b9f718f
	Checksum: 0xC8143275
	Offset: 0x7128
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function function_797ee2de(v_direction, str_tag)
{
	self endon("hash_50daddc6");
	while(!isdefined(v_direction))
	{
		self waittill("damage", n_damage, e_attacker, v_direction, v_point, str_type, str_tag, STR_MODEL, str_part, str_weapon);
	}
	if(!level flag::get("slow_mo_finished"))
	{
		self StartRagdoll();
		self LaunchRagdoll(100 * VectorNormalize(self.origin - e_attacker.origin), str_tag);
		wait(0.05);
		self kill();
	}
}

/*
	Name: function_b53bbcfb
	Namespace: namespace_8b9f718f
	Checksum: 0x1CAC254F
	Offset: 0x7260
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b53bbcfb()
{
	self endon("death");
	self notify("hash_50daddc6");
	self playsound("gdt_concussivewave_imp_human");
	self scene::Play("cin_gen_xplode_death_" + randomIntRange(1, 4), self);
	self kill();
}

/*
	Name: function_f3ea3cc7
	Namespace: namespace_8b9f718f
	Checksum: 0x55F15E0A
	Offset: 0x72F0
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_f3ea3cc7()
{
	self endon("death");
	var_1c175d5c = GetEnt("bs_dock_tugboat", "targetname");
	if(isdefined(self.var_d6f82ae7))
	{
		switch(Int(self.var_d6f82ae7))
		{
			case 1:
			{
				n_right_arc = 15;
				n_left_arc = 65;
				break;
			}
			case 2:
			{
				n_right_arc = 65;
				n_left_arc = 15;
				break;
			}
			case 3:
			{
				n_right_arc = 35;
				n_left_arc = 35;
				break;
			}
			case 4:
			{
				n_right_arc = 30;
				n_left_arc = 45;
				break;
			}
			case default:
			{
				n_right_arc = 45;
				n_left_arc = 45;
				break;
			}
		}
	}
	self.w_current = self GetCurrentWeapon();
	if(!weapons::is_primary_weapon(self.w_current) && self.w_current != GetWeapon("micromissile_launcher"))
	{
		self player::switch_to_primary_weapon(1);
	}
	if(isdefined(self.var_d6f82ae7))
	{
		var_a3d1f031 = "cin_bla_06_06_portassault_position0" + self.var_d6f82ae7 + "_breach";
	}
	if(isdefined(var_a3d1f031))
	{
		self scene::Play(var_a3d1f031, self);
	}
	level notify("hash_4f70b2fc");
	self AllowSprint(0);
	self AllowJump(0);
}

/*
	Name: function_dd6beda2
	Namespace: namespace_8b9f718f
	Checksum: 0xBE0A63E7
	Offset: 0x7530
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_dd6beda2(str_side)
{
	var_dfd3f00d = util::spawn_model(self.model, self.origin, self.angles);
	self Hide();
	if(str_side == "left")
	{
		var_dfd3f00d MoveY(96 * -1, 0.3);
		var_dfd3f00d waittill("movedone");
		var_dfd3f00d delete();
		level waittill("hash_ac9ddf0");
		self show();
	}
	else
	{
		var_dfd3f00d MoveY(96, 0.3);
		var_dfd3f00d waittill("movedone");
		var_dfd3f00d delete();
		level waittill("hash_ac9ddf0");
		self show();
	}
}

/*
	Name: function_69d65c98
	Namespace: namespace_8b9f718f
	Checksum: 0x5D7BE801
	Offset: 0x7690
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_69d65c98(var_98c3e352)
{
	self endon("death");
	self thread ai::set_behavior_attribute("useGrenades", 0);
	self.var_915fc074 = var_98c3e352;
	self.allowPain = 0;
	self.dontDropWeapon = 1;
	self thread function_797ee2de();
	self ai::set_ignoreall(1);
	self.goalRadius = 1;
	self.var_178c815f = 1;
	self.overrideActorDamage = &function_4a2ffb52;
	level waittill("hash_4f70b2fc");
	wait(0.05);
	self ai::set_ignoreall(0);
}

/*
	Name: function_4a2ffb52
	Namespace: namespace_8b9f718f
	Checksum: 0xC2FB6228
	Offset: 0x7778
	Size: 0xBB
	Parameters: 12
	Flags: None
*/
function function_4a2ffb52(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex, modelIndex)
{
	if(isdefined(weapon) && isdefined(weapon.rootweapon) && weapon.rootweapon == GetWeapon("ar_accurate"))
	{
		iDamage = iDamage * 2;
	}
	return iDamage;
}

/*
	Name: function_b9184c9a
	Namespace: namespace_8b9f718f
	Checksum: 0xCC95F4D
	Offset: 0x7840
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_b9184c9a()
{
	level endon("hash_ba8f6561");
	level waittill("hash_4f70b2fc");
	level thread namespace_4297372::function_a339da70();
	setSlowMotion(1, 0.3, 0.3);
	foreach(player in level.players)
	{
		player setMoveSpeedScale(0.3);
	}
	level thread function_c1dce6c0(0.3, 1, 0.3);
}

/*
	Name: function_c1dce6c0
	Namespace: namespace_8b9f718f
	Checksum: 0x890BA33E
	Offset: 0x7978
	Size: 0x121
	Parameters: 3
	Flags: None
*/
function function_c1dce6c0(N_TIMESCALE, var_f1be99bb, n_time)
{
	util::waittill_any_timeout(4, "barge_breach_cleared");
	level flag::set("slow_mo_finished");
	level thread namespace_4297372::function_69fc18eb();
	setSlowMotion(N_TIMESCALE, var_f1be99bb, n_time);
	foreach(player in level.players)
	{
		player setMoveSpeedScale(var_f1be99bb);
	}
}

/*
	Name: function_b28ad6d2
	Namespace: namespace_8b9f718f
	Checksum: 0x91AA132F
	Offset: 0x7AA8
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_b28ad6d2()
{
	trigger::wait_till("trigger_port_sniper");
	wait(2);
	if(level.players.size > 1)
	{
		level.var_2fd26037 dialog::say("hend_snipers_3_o_clock_0");
	}
	level.var_2fd26037 dialog::say("hend_if_you_ve_got_any_ro_0", 0.5);
	level dialog::function_13b3b16a("plyr_copy_that_hendricks_1", 0.7);
	Array::thread_all(level.activePlayers, &coop::function_e9f7384d);
	level flag::wait_till("exit_wharf");
	level.var_2fd26037 dialog::say("hend_storm_s_getting_wors_0");
}

/*
	Name: function_2124978a
	Namespace: namespace_8b9f718f
	Checksum: 0x8ACE696B
	Offset: 0x7BC0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_2124978a()
{
	level thread function_c5a827ee();
	trigger::wait_till("hendricks_hurry");
	objectives::set("cp_level_blackstation_board_ship");
	level thread scene::Play("p7_fxanim_cp_blackstation_pier_event_01_bundle");
	wait(0.1);
	if(scene::is_active("cin_bla_06_04_portassault_vign_react"))
	{
		level scene::Play("cin_bla_06_04_portassault_vign_react");
		level.var_2fd26037 dialog::say("hend_visibility_s_getting_0");
	}
	else
	{
		level.var_2fd26037 dialog::say("hend_visibility_s_getting_0");
	}
}

/*
	Name: function_c5a827ee
	Namespace: namespace_8b9f718f
	Checksum: 0xBC5CC436
	Offset: 0x7CC0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_c5a827ee()
{
	level endon("hash_90702351");
	if(!level flag::get("hendricks_hurry"))
	{
		level flag::wait_till("surge_done");
		level.var_2fd26037 waittill("goal");
		level scene::init("cin_bla_06_04_portassault_vign_react");
	}
}

/*
	Name: function_36dfb0a2
	Namespace: namespace_8b9f718f
	Checksum: 0x6D1361D6
	Offset: 0x7D48
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_36dfb0a2()
{
	var_fcc4e588 = struct::get("wave_technical", "script_noteworthy");
	var_32cdba86 = GetEnt("temp_pier_wave", "targetname");
	t_wave = GetEnt(var_32cdba86.target, "targetname");
	var_32cdba86 ghost();
	level waittill("hash_293c72b4");
	t_wave thread namespace_79e1cd97::function_e5633001();
	var_32cdba86.origin = var_fcc4e588.origin;
	var_32cdba86.angles = var_fcc4e588.angles;
	var_32cdba86 moveto(var_32cdba86.origin + VectorScale((0, 0, 1), 150), 0.1);
	var_32cdba86 waittill("movedone");
	var_32cdba86 moveto(var_32cdba86.origin + VectorScale((-1, 0, 0), 450), 2);
	var_32cdba86 thread namespace_79e1cd97::function_4083c129();
	var_32cdba86 waittill("movedone");
	var_32cdba86 moveto(var_32cdba86.origin + VectorScale((0, 0, -1), 150), 0.1);
}

/*
	Name: function_17894e22
	Namespace: namespace_8b9f718f
	Checksum: 0x6DBB58DD
	Offset: 0x7F30
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_17894e22()
{
	self endon("death");
	self turret::enable(1, 1);
	self waittill("reached_end_node");
	self thread namespace_79e1cd97::function_fae23684("passenger1");
	self thread namespace_79e1cd97::function_fae23684("driver");
	while(isdefined(self GetSeatOccupant(0)))
	{
		wait(0.1);
	}
	self MakeVehicleUsable();
	self SetSeatOccupied(0);
	self thread namespace_79e1cd97::function_d01267bd(level.players.size - 1, level.players.size, "activate_barge_ai");
}

/*
	Name: function_b8500bb1
	Namespace: namespace_8b9f718f
	Checksum: 0xEA5F85CA
	Offset: 0x8040
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b8500bb1()
{
	level thread scene::Play("p7_fxanim_gp_debris_float_01_s4_bundle");
}

/*
	Name: function_8c158bf0
	Namespace: namespace_8b9f718f
	Checksum: 0xE2B591AC
	Offset: 0x8070
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_8c158bf0()
{
	var_da579d3c = GetNodeArray("barge_roof", "script_linkname");
	foreach(var_5898c5c in var_da579d3c)
	{
		SetEnableNode(var_5898c5c, 0);
	}
	level flag::wait_till("breach_active");
	foreach(var_5898c5c in var_da579d3c)
	{
		SetEnableNode(var_5898c5c, 1);
	}
}

/*
	Name: function_425c4977
	Namespace: namespace_8b9f718f
	Checksum: 0x253C7644
	Offset: 0x81D0
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_425c4977()
{
	level endon("wave_done");
	level flag::wait_till("activate_barge_ai");
	wait(RandomFloatRange(0.5, 1.5));
	while(1)
	{
		level exploder::exploder_duration("lightning_barge", 1);
		level FX::Play("lightning_strike", struct::get("lightning_boat").origin, VectorScale((-1, 0, 0), 90));
		playsoundatposition("amb_thunder_strike", struct::get("lightning_boat").origin);
		wait(RandomFloatRange(6, 7.5));
	}
}

/*
	Name: function_ecebfb25
	Namespace: namespace_8b9f718f
	Checksum: 0x58A99E77
	Offset: 0x82F0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ecebfb25()
{
	level flag::wait_till("breach_active");
	level thread namespace_79e1cd97::function_c2d8b452("lightning_pier", "wheelhouse_breached");
}

/*
	Name: function_281ee5c2
	Namespace: namespace_8b9f718f
	Checksum: 0x12CCBDC6
	Offset: 0x8348
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function function_281ee5c2(var_74cd64bc)
{
	spawner::add_spawn_function_group("barge_ai", "targetname", &function_d4e6feff);
	if(!var_74cd64bc)
	{
		level flag::wait_till("move_to_pier");
	}
	spawner::simple_spawn("pier_guard", &function_16bb7db4);
	if(var_74cd64bc)
	{
		level flag::set("start_objective_barge_assault");
		load::function_a2995f22();
	}
	trigger::wait_till("trigger_pier_retreat");
	level thread function_6dffaa41();
	trigger::wait_till("trigger_dock");
	spawner::simple_spawn("dock_guard", &function_a27055f8);
	trigger::wait_till("trigger_barge");
	spawn_manager::enable("sm_barge");
	trigger::wait_till("trigger_barge_cqb");
	spawner::add_spawn_function_group("barge_cqb", "targetname", &function_840ba109);
	spawn_manager::enable("sm_barge_cqb");
	level flag::wait_till("surge_done");
	level.var_2fd26037 colors::disable();
	level scene::init("cin_bla_06_05_portassault_vign_traversal");
	level waittill("hash_232dc1e1");
	level waittill("hash_498028de");
	level scene::Play("cin_bla_06_05_portassault_vign_traversal");
	level.var_2fd26037 colors::enable();
	level flag::set("hendricks_on_barge");
	level.var_2fd26037.var_178c815f = 1;
	trigger::use("triggercolor_barge");
}

/*
	Name: function_30f43af6
	Namespace: namespace_8b9f718f
	Checksum: 0x4AA0BF89
	Offset: 0x8610
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_30f43af6()
{
	trigger::wait_till("trigger_dock");
	level thread scene::Play("p7_fxanim_cp_blackstation_pier_event_03_bundle");
}

/*
	Name: function_7a7390dd
	Namespace: namespace_8b9f718f
	Checksum: 0xB1D188BE
	Offset: 0x8658
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_7a7390dd()
{
	var_107bf0f7 = GetEnt("barge_assault_kill", "targetname");
	var_107bf0f7 endon("death");
	while(1)
	{
		var_107bf0f7 waittill("trigger", e_triggerer);
		if(isai(e_triggerer))
		{
			e_triggerer kill();
		}
	}
}

/*
	Name: function_d4e6feff
	Namespace: namespace_8b9f718f
	Checksum: 0xD19F3490
	Offset: 0x86F0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d4e6feff()
{
	self endon("death");
	self.var_178c815f = 1;
	self thread function_a27055f8();
}

/*
	Name: function_840ba109
	Namespace: namespace_8b9f718f
	Checksum: 0x9ED2EF06
	Offset: 0x8730
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_840ba109()
{
	self endon("death");
	self.var_178c815f = 1;
	self thread function_a27055f8();
	self ai::set_behavior_attribute("cqb", 1);
	self ai::set_behavior_attribute("can_initiateaivsaimelee", 0);
}

/*
	Name: function_16bb7db4
	Namespace: namespace_8b9f718f
	Checksum: 0xD22BB767
	Offset: 0x87B0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_16bb7db4()
{
	self endon("death");
	self.goalRadius = 4;
	self ai::set_ignoreme(1);
	self thread function_a27055f8();
	trigger::wait_till("hendricks_hurry");
	self ai::set_ignoreme(0);
	trigger::wait_till("trigger_pier_retreat");
	self ai::set_ignoreme(1);
	self SetGoal(GetEnt("vol_dock", "targetname"), 1, 1024);
	self waittill("goal");
	self ai::set_ignoreme(0);
	self ClearForcedGoal();
}

/*
	Name: function_dc7a0285
	Namespace: namespace_8b9f718f
	Checksum: 0x3AEC5927
	Offset: 0x88D8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_dc7a0285()
{
	self endon("death");
	self ai::set_behavior_attribute("can_initiateaivsaimelee", 0);
	self thread function_a27055f8();
}

/*
	Name: function_a27055f8
	Namespace: namespace_8b9f718f
	Checksum: 0x489CC222
	Offset: 0x8928
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_a27055f8()
{
	self endon("death");
	while(1)
	{
		e_player = util::get_closest_player(self.origin, "allies");
		if(isdefined(e_player))
		{
			n_distance = DistanceSquared(self.origin, e_player.origin);
			if(n_distance < 360000)
			{
				self.script_accuracy = 1;
				return;
			}
			else
			{
				self.script_accuracy = math::clamp(360000 / n_distance, 0.7, 1);
			}
		}
		wait(0.2);
	}
}

/*
	Name: function_fd4da71
	Namespace: namespace_8b9f718f
	Checksum: 0x46ACF24D
	Offset: 0x8A28
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_fd4da71()
{
	vh_truck = vehicle::simple_spawn_single("truck_pier");
	vh_truck util::magic_bullet_shield();
	vh_truck thread function_e0fdd63d();
	vh_truck endon("death");
	level flag::wait_till("dock_fxanim_truck");
	level thread scene::init("p7_fxanim_cp_blackstation_pier_event_02_bundle");
	vh_truck turret::enable(1, 1);
	ai_gunner = vh_truck vehicle::get_rider("gunner1");
	if(isalive(ai_gunner))
	{
		ai_gunner thread truck_gunner_death();
	}
	level waittill("hash_6b81763");
	wait(2);
	level thread scene::Play("p7_fxanim_cp_blackstation_pier_event_02_bundle");
	level notify("hash_51074fa2");
}

/*
	Name: truck_gunner_death
	Namespace: namespace_8b9f718f
	Checksum: 0x1A4ACBC7
	Offset: 0x8B88
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function truck_gunner_death()
{
	self endon("death");
	wait(4.5);
	self kill();
}

/*
	Name: function_7913f320
	Namespace: namespace_8b9f718f
	Checksum: 0x967161FD
	Offset: 0x8BC0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_7913f320()
{
	nd_start = GetVehicleNode("node_cargo_truck", "targetname");
	self thread vehicle::get_on_path(nd_start);
	self util::magic_bullet_shield();
	trigger::wait_till("trigger_dock_truck");
	self thread vehicle::go_path();
}

/*
	Name: function_cc32bd24
	Namespace: namespace_8b9f718f
	Checksum: 0xC6A20CF9
	Offset: 0x8C60
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_cc32bd24()
{
	self endon("death");
	level endon("wave_done");
	t_wave = GetEnt("truck_wave", "targetname");
	while(!self istouching(t_wave))
	{
		wait(0.05);
	}
	self notify("wave");
}

/*
	Name: function_e0fdd63d
	Namespace: namespace_8b9f718f
	Checksum: 0xD3C87407
	Offset: 0x8CF0
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_e0fdd63d()
{
	self endon("death");
	while(self.riders.size < 2)
	{
		wait(0.05);
	}
	foreach(ai_rider in self.riders)
	{
		ai_rider ai::set_ignoreme(1);
	}
	trigger::wait_till("hendricks_hurry");
	foreach(ai_rider in self.riders)
	{
		ai_rider ai::set_ignoreme(0);
	}
}

/*
	Name: function_6dffaa41
	Namespace: namespace_8b9f718f
	Checksum: 0xE5BA5169
	Offset: 0x8E50
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_6dffaa41()
{
	level flag::wait_till("trigger_wave_dock");
	a_ai_enemies = GetAITeamArray("axis");
	ai_gunner = GetEnt("pier_truck_guy_ai", "targetname");
	if(isalive(ai_gunner))
	{
		ArrayRemoveValue(a_ai_enemies, ai_gunner);
	}
	var_fcc4e588 = struct::get("wave_dockleft", "script_noteworthy");
	var_32cdba86 = GetEnt("pier_wave_dockleft", "targetname");
	level thread function_2723af5e(var_fcc4e588, var_32cdba86, "left", a_ai_enemies);
}

/*
	Name: function_2723af5e
	Namespace: namespace_8b9f718f
	Checksum: 0xF5E127C
	Offset: 0x8F90
	Size: 0x1C3
	Parameters: 4
	Flags: None
*/
function function_2723af5e(var_fcc4e588, var_32cdba86, str_side, a_ai)
{
	t_wave = GetEnt(var_32cdba86.target, "targetname");
	var_32cdba86 ghost();
	var_32cdba86.origin = var_fcc4e588.origin;
	var_32cdba86.angles = var_fcc4e588.angles;
	t_wave thread namespace_79e1cd97::function_e5633001();
	if(str_side == "right")
	{
		n_dist = 450;
	}
	else
	{
		n_dist = -450;
	}
	var_32cdba86 moveto(var_32cdba86.origin + VectorScale((0, 0, 1), 150), 0.1);
	var_32cdba86 waittill("movedone");
	var_32cdba86 moveto(var_32cdba86.origin + (n_dist, 0, 0), 2);
	var_32cdba86 thread namespace_79e1cd97::function_4083c129();
	var_32cdba86 waittill("movedone");
	var_32cdba86 moveto(var_32cdba86.origin + VectorScale((0, 0, -1), 150), 0.1);
}

/*
	Name: function_b73344f6
	Namespace: namespace_8b9f718f
	Checksum: 0x719EA6F9
	Offset: 0x9160
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_b73344f6()
{
	level endon("hash_72fc0350");
	trigger::wait_till("hero_catchup");
	savegame::function_5d2cdd99();
}

/*
	Name: function_9ea179d0
	Namespace: namespace_8b9f718f
	Checksum: 0x14C74295
	Offset: 0x91A0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9ea179d0()
{
	level thread function_7a88d2cd();
}

/*
	Name: function_7a88d2cd
	Namespace: namespace_8b9f718f
	Checksum: 0xD324F502
	Offset: 0x91C8
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_7a88d2cd()
{
	util::waittill_any_ents(level, "slow_mo_finished", level, "barge_breach_cleared");
	if(level flag::get("barge_breach_cleared"))
	{
		wait(0.5);
	}
	var_95a38450 = GetEntArray("ocean_boundary", "targetname");
	Array::run_all(var_95a38450, &delete);
	level thread function_96f48ea4();
	level flag::set("tanker_go");
	level.var_2fd26037 thread function_c713e5a9();
	level thread function_948e3399();
	level thread namespace_4297372::function_11139d81();
	level thread namespace_4297372::function_fcea1d9();
}

/*
	Name: function_c713e5a9
	Namespace: namespace_8b9f718f
	Checksum: 0x2AAE7D8D
	Offset: 0x9318
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_c713e5a9()
{
	level flag::wait_till("tanker_ride");
	level.var_2fd26037 colors::disable();
	level.var_2fd26037.var_178c815f = 0;
}

/*
	Name: function_4b773508
	Namespace: namespace_8b9f718f
	Checksum: 0x78226D96
	Offset: 0x9370
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_4b773508()
{
	self endon("death");
	self AllowSprint(1);
	self AllowJump(1);
	self EnableInvulnerability();
	self playerSetGroundReferenceEnt(undefined);
	level flag::wait_till("tanker_ride_done");
	self.var_eb7c5a24 = 0;
	self thread namespace_79e1cd97::function_2c33b48e();
	wait(2);
	self DisableInvulnerability();
}

/*
	Name: function_948e3399
	Namespace: namespace_8b9f718f
	Checksum: 0xE56B8F0C
	Offset: 0x9440
	Size: 0x3C3
	Parameters: 0
	Flags: None
*/
function function_948e3399()
{
	level scene::add_scene_func("cin_bla_07_02_stormsurge_1st_leap_ride", &function_423548cd);
	level scene::add_scene_func("cin_bla_07_02_stormsurge_1st_leap_ride_latched", &function_f60d2cfb, "play");
	level scene::add_scene_func("cin_bla_07_02_stormsurge_1st_leap_ride_latched", &function_407abab8, "done");
	level scene::add_scene_func("cin_bla_07_02_stormsurge_1st_leap_landing", &function_236c19c3, "done");
	level scene::add_scene_func("cin_bla_07_02_stormsurge_1st_leap_landing_hendricks", &function_18898abd, "done");
	e_fx = GetEnt("barge_wave_fx", "targetname");
	e_fx thread FX::Play("wave_pier", e_fx.origin, undefined, 2, 1);
	e_fx PlayRumbleOnEntity("bs_ride_start");
	Array::run_all(GetCorpseArray(), &delete);
	var_da1764fd = GetAIArray("wheelhouse_enemy_ai", "targetname");
	foreach(var_eb410c1d in var_da1764fd)
	{
		var_eb410c1d delete();
	}
	if(level scene::is_playing("p7_fxanim_cp_blackstation_barge_idle_storm_bundle"))
	{
		level scene::stop("p7_fxanim_cp_blackstation_barge_idle_storm_bundle");
	}
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "toggle_water_fx", 1);
	level scene::Play("cin_bla_07_02_stormsurge_1st_leap_ride");
	level scene::Play("cin_bla_07_02_stormsurge_1st_leap_ride_latched");
	level thread scene::Play("cin_bla_07_02_stormsurge_1st_leap_landing");
	level thread scene::Play("cin_bla_07_02_stormsurge_1st_leap_landing_hendricks");
	Array::thread_all(level.activePlayers, &function_4b773508);
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "rumble_loop", 0);
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "toggle_water_fx", 0);
}

/*
	Name: function_f60d2cfb
	Namespace: namespace_8b9f718f
	Checksum: 0x4184DB25
	Offset: 0x9810
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_f60d2cfb(a_ents)
{
	level thread scene::init("p7_fxanim_cp_blackstation_barge_sink_bundle");
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "wind_blur", 1);
	Array::thread_all(level.activePlayers, &function_622eb918);
	level thread function_fcb18964();
	level thread scene::Play("p7_fxanim_cp_blackstation_tanker_building_smash_debris_bundle");
	wait(5);
	level thread scene::Play("p7_fxanim_cp_blackstation_barge_sink_bundle");
}

/*
	Name: function_407abab8
	Namespace: namespace_8b9f718f
	Checksum: 0x9AE3A417
	Offset: 0x9900
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_407abab8(a_ents)
{
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "wind_blur", 0);
}

/*
	Name: function_423548cd
	Namespace: namespace_8b9f718f
	Checksum: 0x3A32D598
	Offset: 0x9948
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_423548cd(a_ents)
{
	level waittill("hash_fe33f1ed");
	Array::run_all(level.activePlayers, &PlayRumbleOnEntity, "damage_heavy");
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "rumble_loop", 0);
}

/*
	Name: function_fcb18964
	Namespace: namespace_8b9f718f
	Checksum: 0xFE19CD5
	Offset: 0x99D0
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_fcb18964()
{
	level endon("hash_407abab8");
	while(1)
	{
		level waittill("hash_b465620d");
		Array::run_all(level.activePlayers, &PlayRumbleOnEntity, "cp_blackstation_tanker_building_rumble");
	}
}

/*
	Name: function_622eb918
	Namespace: namespace_8b9f718f
	Checksum: 0x42F336CD
	Offset: 0x9A30
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_622eb918()
{
	Array::run_all(level.activePlayers, &PlayRumbleOnEntity, "cp_blackstation_tanker_anchor_rumble");
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "rumble_loop", 1);
}

/*
	Name: function_18898abd
	Namespace: namespace_8b9f718f
	Checksum: 0xFBC78A06
	Offset: 0x9AA8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_18898abd(a_ents)
{
	level.var_2fd26037 colors::enable();
}

/*
	Name: function_236c19c3
	Namespace: namespace_8b9f718f
	Checksum: 0x6953D3FF
	Offset: 0x9AD8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_236c19c3(a_ents)
{
	level flag::set("tanker_ride_done");
	level notify("hash_b36ffbd");
	Array::thread_all(level.activePlayers, &namespace_3dc5b645::function_99f304f0);
}

/*
	Name: function_96f48ea4
	Namespace: namespace_8b9f718f
	Checksum: 0xA595F2F6
	Offset: 0x9B48
	Size: 0x1C9
	Parameters: 0
	Flags: None
*/
function function_96f48ea4()
{
	level waittill("hash_383b9104");
	level thread scene::Play("p7_fxanim_cp_blackstation_barge_roof_break_bundle");
	exploder::exploder_stop("barge_destroy_interior_lgt");
	var_486aa363 = GetEnt("barge_wheelhouse_interior", "targetname");
	var_486aa363 PlayRumbleOnEntity("bs_ride_start");
	playsoundatposition("evt_barge_shake", var_486aa363.origin);
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "rumble_loop", 1);
	Earthquake(0.3, 21, var_486aa363.origin, 999999);
	var_8e44646a = GetEntArray("barge_wheelhouse_roof", "targetname");
	foreach(var_6baa4cfd in var_8e44646a)
	{
		var_6baa4cfd delete();
	}
}

/*
	Name: function_ab78d20a
	Namespace: namespace_8b9f718f
	Checksum: 0x5C2A6D58
	Offset: 0x9D20
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_ab78d20a()
{
	trigger::wait_till("trigger_toilet");
	var_a7307e7e = GetEnt("debris_toilet", "targetname");
	var_a7307e7e thread namespace_79e1cd97::function_f5cdc056();
	var_a7307e7e thread namespace_79e1cd97::function_2d329cdb();
	var_a7307e7e moveto(var_a7307e7e.origin + (0, 6000, 200), 8);
	var_a7307e7e waittill("movedone");
	var_a7307e7e delete();
}

/*
	Name: function_13e164f4
	Namespace: namespace_8b9f718f
	Checksum: 0x33E47E9C
	Offset: 0x9E00
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_13e164f4()
{
	self.var_1b3b1022 = 1;
	self ai::set_behavior_attribute("useAnimationOverride", 1);
}

/*
	Name: function_22a0015b
	Namespace: namespace_8b9f718f
	Checksum: 0x5EC313A6
	Offset: 0x9E40
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_22a0015b()
{
	while(!level flag::get("breach_active"))
	{
		level notify("end_lightning");
		wait(0.5);
		if(math::cointoss())
		{
			level thread namespace_79e1cd97::function_bd1bfce2("exp_lightning_pier_l_01", "exp_lightning_pier_l_02", "exp_lightning_pier_l_03", 2, "end_lightning");
		}
		else
		{
			level thread namespace_79e1cd97::function_bd1bfce2("exp_lightning_pier_r_01", "exp_lightning_pier_r_02", "exp_lightning_pier_r_03", 1, "end_lightning");
		}
		wait(RandomFloatRange(2.5, 5));
	}
	wait(0.5);
	level notify("end_lightning");
}

/*
	Name: function_109329ae
	Namespace: namespace_8b9f718f
	Checksum: 0xF9F4EB2E
	Offset: 0x9F48
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_109329ae()
{
	trigger::wait_till("anchor_intro_breadcrumb");
	level thread objectives::breadcrumb("debris_mound_breadcrumb");
}

/*
	Name: function_94ff5bc0
	Namespace: namespace_8b9f718f
	Checksum: 0x3AB3B64B
	Offset: 0x9F90
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_94ff5bc0()
{
	trigger::wait_till("debris_mound_breadcrumb");
	level thread function_3b4b0a17();
	level flag::wait_till("debris_path_four_ready");
	level thread function_3b4b0a17();
	level flag::wait_till("debris_path_five_ready");
	level thread function_3b4b0a17();
	trigger::wait_till("trigger_toilet");
	level thread function_3b4b0a17();
}

/*
	Name: function_3b4b0a17
	Namespace: namespace_8b9f718f
	Checksum: 0x3A30D223
	Offset: 0xA070
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_3b4b0a17()
{
	var_92471baa = randomIntRange(1, 5);
	for(i = 0; i < var_92471baa; i++)
	{
		exploder::exploder("exp_lightning_anchor_l_01");
		wait(RandomFloatRange(0.1, 0.5));
	}
}

/*
	Name: function_9a8b2deb
	Namespace: namespace_8b9f718f
	Checksum: 0xAA27DB23
	Offset: 0xA100
	Size: 0x171
	Parameters: 0
	Flags: None
*/
function function_9a8b2deb()
{
	a_s_spawnpts = spawnlogic::function_93d52c4f(1);
	foreach(s_spawnpt in a_s_spawnpts)
	{
		if(s_spawnpt.var_ff844e3f === "10")
		{
			s_spawnpt spawnlogic::function_82c857e9(0);
		}
	}
	wait(0.05);
	foreach(s_spawnpt in a_s_spawnpts)
	{
		if(s_spawnpt.var_ff3739ca === "23")
		{
			s_spawnpt spawnlogic::function_82c857e9(1);
		}
	}
}

/*
	Name: function_5b85480f
	Namespace: namespace_8b9f718f
	Checksum: 0x75DD5A94
	Offset: 0xA280
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_5b85480f()
{
	var_b9528c52 = trigger::wait_till("hendricks_hurry");
	e_player = var_b9528c52.who;
	if(Distance2DSquared(e_player.origin, level.var_2fd26037.origin) > 2250000)
	{
		level.var_2fd26037 ForceTeleport((2282, -3646, 64), VectorScale((0, 1, 0), 180), 0);
	}
}

