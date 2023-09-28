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
#using scripts\cp\cp_prologue_cyber_soldiers;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_gadget_sensory_overload;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
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

#namespace namespace_36e484c6;

/*
	Name: function_6feca657
	Namespace: namespace_36e484c6
	Checksum: 0xEC557AA9
	Offset: 0xF30
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6feca657()
{
	function_e1c5444e();
	function_283b0091();
	level thread namespace_21b2c1f2::function_3c37ec50();
	level thread function_82858e32();
}

/*
	Name: function_e1c5444e
	Namespace: namespace_36e484c6
	Checksum: 0xCEEF6BDE
	Offset: 0xF90
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e1c5444e()
{
	level flag::init("flag_player_fired_early");
}

/*
	Name: function_283b0091
	Namespace: namespace_36e484c6
	Checksum: 0xEA2675E9
	Offset: 0xFC0
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_283b0091()
{
	battlechatter::function_d9f49fba(0);
	level.var_9db406db ai::set_ignoreall(1);
	level.var_9db406db ai::set_ignoreme(1);
	level.var_9db406db.goalRadius = 32;
	level.var_5d4087a6 ai::set_ignoreall(1);
	level.var_5d4087a6 ai::set_ignoreme(1);
	level.var_5d4087a6.goalRadius = 32;
	level.var_5d4087a6.allowPain = 0;
	level.var_5d4087a6 colors::set_force_color("p");
	level.var_5d4087a6 ai::set_behavior_attribute("cqb", 1);
	level.var_5d4087a6 ai::set_behavior_attribute("sprint", 0);
	level.var_4d5a4697 ai::set_ignoreall(1);
	level.var_4d5a4697 ai::set_ignoreme(1);
	level.var_4d5a4697.goalRadius = 32;
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_2fd26037 ai::set_ignoreme(1);
	level.var_2fd26037.goalRadius = 16;
	level.var_2fd26037.allowPain = 0;
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
	if(isalive(level.var_7f246cd7))
	{
		level.var_7f246cd7 delete();
	}
}

/*
	Name: function_82858e32
	Namespace: namespace_36e484c6
	Checksum: 0xCAF36E10
	Offset: 0x1238
	Size: 0x5EB
	Parameters: 0
	Flags: None
*/
function function_82858e32()
{
	objectives::set("cp_level_prologue_escort_data_center");
	Array::thread_all(level.players, &function_2909799b);
	Array::thread_all(level.players, &function_b7634680);
	callback::on_ai_killed(&function_e2b1615a);
	level thread function_25c6144e();
	Array::thread_all(level.players, &clientfield::set_to_player, "turn_off_tacmode_vfx", 1);
	level scene::init("p7_fxanim_cp_prologue_vtol_tackle_windows_bundle");
	level thread objectives::breadcrumb("dark_battle_breadcrumb_3");
	level thread function_a06c6f96();
	level thread function_4d2734fa();
	level thread function_c2326e34();
	level thread function_fc0859f();
	level thread function_edbf19b4();
	level thread function_312ac345();
	level.var_5d4087a6 thread function_43d5fd7a();
	level.var_9db406db ai::set_behavior_attribute("coverIdleOnly", 1);
	level.var_4d5a4697 ai::set_behavior_attribute("coverIdleOnly", 1);
	if(isdefined(level.BZM_PROLOGUEDialogue5_2Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue5_2Callback]]();
	}
	function_f7eee26d();
	while(!spawn_manager::function_b02fc450("sm_darkroom_spawner"))
	{
		wait(0.5);
	}
	level thread namespace_21b2c1f2::function_973b77f9();
	level notify("hash_a9e3188");
	level notify("hash_bd74d007");
	level util::clientNotify("sndDBW");
	level thread function_4e24163f();
	level thread function_7bd8c5a3();
	battlechatter::function_d9f49fba(0);
	level scene::init("cin_pro_13_01_vtoltackle_vign_takedown");
	wait(0.05);
	level.var_5d4087a6 SetGoal(GetNode("hyperion_dark_battle_final", "targetname"), 1);
	level.var_2fd26037 SetGoal(GetNode("hendricks_dark_battle_final", "targetname"), 1);
	level.var_2fd26037 waittill("goal");
	level thread objectives::breadcrumb("dark_battle_breadcrumb_4");
	callback::remove_on_ai_killed(&function_e2b1615a);
	foreach(player in level.players)
	{
		if(isalive(player))
		{
			player thread function_63222c73();
			player thread function_4933d21a();
		}
	}
	playsoundatposition("evt_doorhack_dooropen", (13437, 2216, 252));
	function_62e89023(1, 0);
	level thread function_b3666179();
	level.var_5d4087a6 ClearForcedGoal();
	level.var_9db406db ai::set_behavior_attribute("coverIdleOnly", 0);
	level.var_4d5a4697 ai::set_behavior_attribute("coverIdleOnly", 0);
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level.var_5d4087a6 ai::set_behavior_attribute("cqb", 0);
	objectives::complete("cp_level_prologue_escort_data_center");
	objectives::set("cp_level_prologue_find_vehicle");
	skipto::function_be8adfb8("skipto_dark_battle");
}

/*
	Name: function_7cd37960
	Namespace: namespace_36e484c6
	Checksum: 0x1AF7C2DB
	Offset: 0x1830
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_7cd37960()
{
	level endon("hash_7a9811b7");
	self waittill("weapon_fired");
	level notify("hash_9babf62");
}

/*
	Name: function_997d6fdc
	Namespace: namespace_36e484c6
	Checksum: 0xCE981172
	Offset: 0x1868
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_997d6fdc()
{
	level endon("hash_7a9811b7");
	self waittill("grenade_fire", grenade, weapon);
	level notify("hash_9babf62");
}

/*
	Name: function_f7eee26d
	Namespace: namespace_36e484c6
	Checksum: 0x415ADD12
	Offset: 0x18B8
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_f7eee26d()
{
	level endon("hash_b1b6677a");
	level endon("hash_9babf62");
	Array::thread_all(level.players, &function_7cd37960);
	Array::thread_all(level.players, &function_997d6fdc);
	trigger::wait_till("t_dark_battle_glass");
	level notify("hash_9babf62");
}

/*
	Name: function_e6296f02
	Namespace: namespace_36e484c6
	Checksum: 0x9F7FEA9E
	Offset: 0x1958
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_e6296f02(a_ents)
{
	Array::thread_all(a_ents, &function_dabc0173);
}

/*
	Name: function_dabc0173
	Namespace: namespace_36e484c6
	Checksum: 0x69B58F1D
	Offset: 0x1990
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_dabc0173()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.var_a1da348d = 0;
	level flag::wait_till("flag_player_fired_early");
	self StopAnimScripted();
	self ai::set_ignoreme(0);
	self thread function_ff2c3e0c();
}

/*
	Name: function_4d2734fa
	Namespace: namespace_36e484c6
	Checksum: 0xE8F4D990
	Offset: 0x1A48
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_4d2734fa()
{
	spawner::add_spawn_function_group("darkroom_spawner", "targetname", &function_ff2c3e0c);
	function_62e89023();
	spawn_manager::enable("sm_darkroom_spawner");
	spawn_manager::function_347e835a("sm_darkroom_spawner");
	var_5ca9a217 = GetEnt("outside_dark_battle_room", "targetname");
	b_clear = 0;
	while(!b_clear)
	{
		b_clear = 1;
		a_ai = spawner::get_ai_group_ai("aig_darkroom");
		foreach(ai in a_ai)
		{
			if(ai istouching(var_5ca9a217))
			{
				b_clear = 0;
				break;
			}
		}
		wait(0.5);
	}
	function_62e89023(0, 0);
}

/*
	Name: function_4e24163f
	Namespace: namespace_36e484c6
	Checksum: 0x653651A7
	Offset: 0x1BF8
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_4e24163f()
{
	door_l = GetEnt("intelstation_bottom_door_l", "targetname");
	door_r = GetEnt("intelstation_bottom_door_r", "targetname");
	v_move = VectorScale((1, 0, 0), 54);
	move_time = 0.5;
	var_ebf82f1 = door_l.origin + v_move;
	door_l moveto(var_ebf82f1, move_time);
	var_ebf82f1 = door_r.origin - v_move;
	door_r moveto(var_ebf82f1, move_time);
	door_l waittill("movedone");
	level.var_9db406db SetGoal(GetNode("khalil_dark_battle_final", "targetname"), 1);
	wait(1);
	level.var_4d5a4697 SetGoal(GetNode("minister_dark_battle_final", "targetname"), 1);
}

/*
	Name: function_b3666179
	Namespace: namespace_36e484c6
	Checksum: 0x39A33272
	Offset: 0x1DA8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_b3666179()
{
	t_door = GetEnt("t_vtol_tackle_doors", "targetname");
	a_friendly_ai = Array(level.var_4d5a4697, level.var_2fd26037, level.var_9db406db, level.var_5d4087a6);
	level thread namespace_2cb3876f::function_21f52196("vtol_tackle_doors", t_door);
	level thread namespace_2cb3876f::function_2e61b3e8("vtol_tackle_doors", t_door, a_friendly_ai);
	while(!namespace_2cb3876f::function_cdd726fb("vtol_tackle_doors"))
	{
		wait(0.05);
	}
	function_62e89023(0, 0);
}

/*
	Name: function_62e89023
	Namespace: namespace_36e484c6
	Checksum: 0xE7EC0AE5
	Offset: 0x1EB0
	Size: 0x239
	Parameters: 2
	Flags: None
*/
function function_62e89023(b_open, var_abf03d83)
{
	if(!isdefined(b_open))
	{
		b_open = 1;
	}
	if(!isdefined(var_abf03d83))
	{
		var_abf03d83 = 1;
	}
	var_280d5f68 = GetEnt("dark_battle_door_l", "targetname");
	var_3c301126 = GetEnt("dark_battle_door_r", "targetname");
	n_open_time = 1;
	if(!b_open)
	{
		n_open_time = 0.4;
	}
	if(var_abf03d83)
	{
		n_open_time = 0.05;
	}
	v_side = AnglesToRight(var_280d5f68.angles);
	if(b_open)
	{
		v_pos_left = var_280d5f68.origin + v_side * 52 * -1;
		var_280d5f68 moveto(v_pos_left, n_open_time);
		v_pos_right = var_3c301126.origin + v_side * 52;
		var_3c301126 moveto(v_pos_right, n_open_time);
	}
	else
	{
		v_pos_left = var_280d5f68.origin + v_side * 52;
		var_280d5f68 moveto(v_pos_left, n_open_time);
		v_pos_right = var_3c301126.origin + v_side * 52 * -1;
		var_3c301126 moveto(v_pos_right, n_open_time);
	}
	var_3c301126 waittill("movedone");
}

/*
	Name: function_43d5fd7a
	Namespace: namespace_36e484c6
	Checksum: 0x24F6F07F
	Offset: 0x20F8
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_43d5fd7a()
{
	level scene::add_scene_func("cin_pro_12_01_darkbattle_vign_dive_kill_enemyloop", &function_e6296f02);
	level thread dialog::remote("hall_heads_up_we_have_m_0", undefined, "normal");
	level thread scene::Play("cin_pro_12_01_darkbattle_vign_dive_kill_enemyloop");
	level thread function_356b8cd9();
	level.var_5d4087a6 colors::disable();
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 SetGoal(GetNode("hendricks_dark_battle_start", "targetname"), 1);
	level.var_5d4087a6 SetGoal(GetNode("diaz_dark_battle_start", "targetname"), 1);
	util::waittill_multiple_ents(level.var_5d4087a6, "goal", level.var_2fd26037, "goal");
	wait(1);
	level flag::wait_till_any(Array("dark_battle_player_upstairs", "flag_player_fired_early"));
	level scene::Play("cin_pro_12_01_darkbattle_vign_dive_kill_start");
	level.var_5d4087a6 thread function_619c28d();
	level notify("hash_307c99bd");
	if(!level flag::get("flag_player_fired_early"))
	{
		level notify("hash_b1b6677a");
		level scene::Play("cin_pro_12_01_darkbattle_vign_dive_kill_attack");
	}
	level.var_5d4087a6 ai::set_ignoreall(0);
	level.var_2fd26037 battlechatter::function_d9f49fba(1);
	level thread function_51caefff();
}

/*
	Name: function_619c28d
	Namespace: namespace_36e484c6
	Checksum: 0x7B43FE6F
	Offset: 0x2380
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_619c28d()
{
	level endon("hash_a9e3188");
	self dialog::say("mare_remember_they_ain_0");
	wait(5);
	self dialog::say("mare_take_it_slow_pick_0");
	wait(10);
	self dialog::say("mare_use_your_advantage_0");
}

/*
	Name: function_356b8cd9
	Namespace: namespace_36e484c6
	Checksum: 0xD9486519
	Offset: 0x23F8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_356b8cd9()
{
	level endon("hash_b1b6677a");
	level flag::wait_till("flag_player_fired_early");
	level scene::stop("cin_pro_12_01_darkbattle_vign_dive_kill_enemyloop");
}

/*
	Name: function_51caefff
	Namespace: namespace_36e484c6
	Checksum: 0x81CE57F6
	Offset: 0x2450
	Size: 0x1A5
	Parameters: 0
	Flags: None
*/
function function_51caefff()
{
	self endon("hash_a9e3188");
	var_72069915 = GetNode("hyperion_dark_battle_1", "targetname");
	level.var_5d4087a6 SetGoal(var_72069915, 1);
	level.var_5d4087a6 waittill("goal");
	wait(5);
	var_9809137e = GetNode("hyperion_dark_battle_2", "targetname");
	level.var_5d4087a6 SetGoal(var_9809137e, 1);
	level.var_5d4087a6 waittill("goal");
	wait(5);
	var_be0b8de7 = GetNode("hyperion_dark_battle_3", "targetname");
	level.var_5d4087a6 SetGoal(var_be0b8de7, 1);
	level.var_5d4087a6 waittill("goal");
	wait(5);
	var_b3fa3508 = GetNode("hyperion_dark_battle_4", "targetname");
	level.var_5d4087a6 SetGoal(var_b3fa3508, 1);
	level.var_5d4087a6 waittill("goal");
}

/*
	Name: function_312ac345
	Namespace: namespace_36e484c6
	Checksum: 0x8EE44502
	Offset: 0x2600
	Size: 0x185
	Parameters: 0
	Flags: None
*/
function function_312ac345()
{
	self endon("hash_a9e3188");
	level waittill("hash_307c99bd");
	level.var_2fd26037 battlechatter::function_d9f49fba(1);
	level.var_2fd26037 ai::set_ignoreall(0);
	var_900c9df2 = GetNode("hendricks_dark_battle_1", "targetname");
	level.var_2fd26037 SetGoal(var_900c9df2, 1);
	level.var_2fd26037 waittill("goal");
	wait(6);
	var_6a0a2389 = GetNode("hendricks_dark_battle_2", "targetname");
	level.var_2fd26037 SetGoal(var_6a0a2389, 1);
	level.var_2fd26037 waittill("goal");
	wait(6);
	var_4407a920 = GetNode("hendricks_dark_battle_3", "targetname");
	level.var_2fd26037 SetGoal(var_4407a920, 1);
	level.var_2fd26037 waittill("goal");
}

/*
	Name: function_c2326e34
	Namespace: namespace_36e484c6
	Checksum: 0x3416D9E7
	Offset: 0x2790
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_c2326e34()
{
	level endon("hash_c63a5f38");
	var_94ace873 = GetEntArray("dark_wall_logo_off", "targetname");
	var_cd29e581 = GetEntArray("dark_wall_logo_on", "targetname");
	foreach(var_491241ba in var_94ace873)
	{
		var_491241ba ghost();
	}
	level waittill("hash_400d768d");
	exploder::stop_exploder("light_exploder_darkbattle");
	level util::clientNotify("sndDBB");
	foreach(var_491241ba in var_cd29e581)
	{
		var_491241ba ghost();
	}
	foreach(var_491241ba in var_94ace873)
	{
		var_491241ba show();
	}
	level waittill("hash_113f3cd3");
	Array::thread_all(level.activePlayers, &namespace_16f9ecd3::function_35ce409, 1);
	level flag::set("ev_enabled");
	wait(1);
	level notify("lights_out");
	level thread namespace_21b2c1f2::function_a0f24f9b();
}

/*
	Name: function_edbf19b4
	Namespace: namespace_36e484c6
	Checksum: 0xF450F73F
	Offset: 0x2A50
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_edbf19b4()
{
	level waittill("hash_7a9811b7");
	var_280d5f68 = GetEnt("intelstation_balcony_door_l", "targetname");
	var_3c301126 = GetEnt("intelstation_balcony_door_r", "targetname");
	playsoundatposition("evt_doorhack_dooropen", var_3c301126.origin);
	v_move = VectorScale((1, 0, 0), 54);
	n_move_time = 0.5;
	var_ebf82f1 = var_280d5f68.origin + v_move;
	var_280d5f68 moveto(var_ebf82f1, n_move_time);
	var_ebf82f1 = var_3c301126.origin - v_move;
	var_3c301126 moveto(var_ebf82f1, n_move_time);
	var_3c301126 waittill("movedone");
	var_3c301126 connectpaths();
	var_280d5f68 connectpaths();
}

/*
	Name: function_7bd8c5a3
	Namespace: namespace_36e484c6
	Checksum: 0xA1DFED8
	Offset: 0x2BD8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_7bd8c5a3()
{
	level.var_5d4087a6 dialog::say("mare_clear_0", 1);
	level.var_5d4087a6 thread dialog::say("mare_disabling_tactical_f_0", 0.5);
	wait(1);
	Array::thread_all(level.players, &namespace_16f9ecd3::function_35ce409, 0);
	level flag::clear("ev_enabled");
	wait(1);
	exploder::exploder("light_exploder_darkbattle");
	level util::clientNotify("sndDBBe");
	level thread namespace_21b2c1f2::function_2a66b344();
}

/*
	Name: function_fc0859f
	Namespace: namespace_36e484c6
	Checksum: 0xC97FA59C
	Offset: 0x2CE0
	Size: 0x277
	Parameters: 0
	Flags: None
*/
function function_fc0859f()
{
	level waittill("hash_400d768d");
	wait(0.5);
	while(spawner::get_ai_group_count("aig_darkroom") > 6)
	{
		a_ai_array = GetAITeamArray("axis");
		var_e248524d = Array::get_all_closest(level.players[0].origin, a_ai_array, undefined, 4);
		var_1f76714 = Array("hear_that", "cannot_hide", "happened_lights", "power_on");
		for(i = 0; i < var_e248524d.size; i++)
		{
			if(isalive(var_e248524d[0]))
			{
				var_e248524d[i] function_11c60e29(var_1f76714[i]);
			}
		}
		wait(1);
	}
	while(spawner::get_ai_group_count("aig_darkroom") > 1)
	{
		a_ai_array = GetAITeamArray("axis");
		var_e248524d = Array::get_all_closest(level.players[0].origin, a_ai_array, undefined, 4);
		var_1f76714 = Array("cant_see", "please_no", "dont_take", "screw_this");
		for(i = 0; i < var_e248524d.size; i++)
		{
			if(isalive(var_e248524d[0]))
			{
				var_e248524d[i] function_11c60e29(var_1f76714[i]);
			}
		}
		wait(1);
	}
}

/*
	Name: function_11c60e29
	Namespace: namespace_36e484c6
	Checksum: 0xC806BD22
	Offset: 0x2F60
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function function_11c60e29(var_9ad1ca9a)
{
	n_wait_time = RandomFloatRange(0.4, 1);
	wait(n_wait_time);
	if(isalive(self))
	{
		self notify("hash_2605e152", var_9ad1ca9a);
	}
}

/*
	Name: function_a06c6f96
	Namespace: namespace_36e484c6
	Checksum: 0x6EC1F347
	Offset: 0x2FD0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_a06c6f96()
{
	foreach(player in level.players)
	{
		player thread function_e7ad7b2d();
	}
	level.var_5d4087a6 thread function_2310d9a6();
	level.var_2fd26037 thread function_2310d9a6();
}

/*
	Name: function_ff2c3e0c
	Namespace: namespace_36e484c6
	Checksum: 0x736DF4D6
	Offset: 0x3098
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_ff2c3e0c()
{
	self endon("hash_bd74d007");
	self endon("death");
	self.var_a1da348d = 0;
	self ai::set_behavior_attribute("cqb", 1);
	self ai::set_ignoreall(1);
	self.goalRadius = 32;
	self thread function_494e04e8();
	level waittill("lights_out");
	self ai::set_ignoreall(0);
	self.goalRadius = 32;
	self.maxsightdistsqrd = 4096;
	choice = randomIntRange(1, 4);
	switch(choice)
	{
		case 1:
		{
			str_anim = "cin_gen_vign_confusion_01";
			break;
		}
		case 2:
		{
			str_anim = "cin_gen_vign_confusion_02";
			break;
		}
		case 3:
		{
			str_anim = "cin_gen_vign_confusion_03";
			break;
		}
		case default:
		{
			/#
				Assert(0, "Dev Block strings are not supported");
			#/
			break;
		}
	}
	delay = RandomFloatRange(0.1, 0.5);
	wait(delay);
	self thread scene::Play(str_anim, self);
	level waittill("hash_307c99bd");
	if(self scene::is_playing(str_anim))
	{
		self scene::stop(str_anim);
	}
}

/*
	Name: function_494e04e8
	Namespace: namespace_36e484c6
	Checksum: 0xF426FC71
	Offset: 0x3298
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_494e04e8()
{
	self endon("hash_b1b6677a");
	self endon("lights_out");
	self endon("death");
	level waittill("hash_9babf62");
	level flag::set("flag_player_fired_early");
	self ai::set_ignoreall(0);
	self.goalRadius = 96;
}

/*
	Name: function_e7ad7b2d
	Namespace: namespace_36e484c6
	Checksum: 0x56BDB462
	Offset: 0x3318
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_e7ad7b2d()
{
	self endon("hash_bd74d007");
	self endon("death");
	while(1)
	{
		self waittill("weapon_fired");
		self thread function_894eda11(1);
		wait(3);
	}
}

/*
	Name: function_2310d9a6
	Namespace: namespace_36e484c6
	Checksum: 0x68554026
	Offset: 0x3378
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_2310d9a6()
{
	self endon("hash_bd74d007");
	self endon("death");
	while(1)
	{
		self waittill("hash_b9a2e2cb");
		self thread function_894eda11(0.25);
		wait(3);
	}
}

/*
	Name: function_894eda11
	Namespace: namespace_36e484c6
	Checksum: 0x87F56B33
	Offset: 0x33D8
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function function_894eda11(n_chance)
{
	self endon("death");
	self endon("hash_bd74d007");
	a_enemies = GetEntArray("darkroom_enemy", "script_noteworthy");
	foreach(var_c8e5ddf8 in a_enemies)
	{
		if(isalive(var_c8e5ddf8) && n_chance > RandomFloatRange(0, 1))
		{
			if(var_c8e5ddf8.var_a1da348d == 0)
			{
				var_c8e5ddf8 thread function_d930bc63(self);
			}
		}
	}
}

/*
	Name: function_d930bc63
	Namespace: namespace_36e484c6
	Checksum: 0xE751DED0
	Offset: 0x3508
	Size: 0x255
	Parameters: 2
	Flags: None
*/
function function_d930bc63(e_target, duration)
{
	if(!isdefined(duration))
	{
		duration = 5;
	}
	self endon("death");
	self.var_a1da348d = 1;
	if(isPlayer(e_target))
	{
		var_a03ca40a = e_target;
	}
	else
	{
		var_a03ca40a = spawn("script_model", e_target.origin + VectorScale((0, 0, 1), 32));
		var_a03ca40a SetModel("tag_origin");
		var_a03ca40a.health = 1000;
		var_a03ca40a.takedamage = 0;
		var_a03ca40a thread function_b52761fa(e_target, self);
		var_a03ca40a thread function_8b09dfcd(duration + 1);
	}
	self SetGoal(self.origin, 1);
	self thread ai::shoot_at_target("shoot_until_target_dead", var_a03ca40a, undefined, duration);
	wait(duration);
	self thread ai::stop_shoot_at_target();
	self.var_a1da348d = 0;
	a_nodes = GetCoverNodeArray(self.origin, 192);
	foreach(node in a_nodes)
	{
		if(!IsNodeOccupied(node))
		{
			self SetGoal(node);
			break;
		}
	}
}

/*
	Name: function_b52761fa
	Namespace: namespace_36e484c6
	Checksum: 0xE586D545
	Offset: 0x3768
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_b52761fa(e_target, e_shooter)
{
	v_right = AnglesToRight(e_target.angles);
	var_7dad3ff1 = v_right * 50;
	var_a0d5e21e = var_7dad3ff1 + e_target.origin;
	var_58670eab = var_7dad3ff1 * -1 + e_target.origin;
	var_67766dec = e_target.origin;
	var_20b9665f = e_target.origin + VectorScale((0, 0, 1), 50);
	while(isdefined(e_shooter) && e_shooter.var_a1da348d == 1)
	{
		self moveto(var_58670eab, 0.5);
		self waittill("movedone");
		self moveto(var_67766dec, 0.5);
		self waittill("movedone");
		self moveto(var_a0d5e21e, 0.5);
		self waittill("movedone");
		self moveto(var_20b9665f, 0.5);
		self waittill("movedone");
	}
}

/*
	Name: function_8b09dfcd
	Namespace: namespace_36e484c6
	Checksum: 0xCB07E299
	Offset: 0x3940
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_8b09dfcd(duration)
{
	wait(duration);
	self delete();
}

/*
	Name: function_43fd3f0f
	Namespace: namespace_36e484c6
	Checksum: 0x2670F7F3
	Offset: 0x3970
	Size: 0x207
	Parameters: 1
	Flags: None
*/
function function_43fd3f0f(height_offset)
{
	self endon("death");
	height_offset = 48 + height_offset;
	self.var_a1da348d = 1;
	Distance = 64 + height_offset;
	for(i = 0; i < 3; i++)
	{
		myangles = self.angles;
		random_yaw = RandomFloatRange(myangles[1] + 30, myangles[1] + 90);
		new_angles = (0, random_yaw, 0);
		vector = AnglesToForward(new_angles);
		var_80dea2ec = (0, 0, height_offset);
		end_point = self.origin + var_80dea2ec + vector * Distance;
		var_a03ca40a = spawn("script_origin", end_point);
		var_a03ca40a.health = 1000;
		duration = 1.5;
		self SetGoal(self.origin, 1);
		self ai::shoot_at_target("normal", var_a03ca40a, undefined, duration);
		wait(duration);
		var_a03ca40a delete();
	}
	self.var_a1da348d = 0;
}

/*
	Name: function_25c6144e
	Namespace: namespace_36e484c6
	Checksum: 0x4E71109B
	Offset: 0x3B80
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_25c6144e()
{
	spawner::add_spawn_function_group("vtol_tackle_guy", "script_noteworthy", &namespace_2cb3876f::function_35be2939, "vtol_guards_alerted");
	spawn_manager::enable("vtol_tackle_spwn_mgr2");
}

/*
	Name: function_2909799b
	Namespace: namespace_36e484c6
	Checksum: 0x7469BC7E
	Offset: 0x3BE0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_2909799b()
{
	if(!self flag::exists("no_damage_taken"))
	{
		self flag::init("no_damage_taken");
	}
	self flag::set("no_damage_taken");
	self waittill("damage");
	self flag::clear("no_damage_taken");
}

/*
	Name: function_4933d21a
	Namespace: namespace_36e484c6
	Checksum: 0xA61DE96F
	Offset: 0x3C78
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4933d21a()
{
	self endon("death");
	if(self flag::exists("no_damage_taken") && self flag::get("no_damage_taken"))
	{
		namespace_61c634f2::function_b9175513(self);
	}
}

/*
	Name: function_b7634680
	Namespace: namespace_36e484c6
	Checksum: 0x33412DC
	Offset: 0x3CE8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b7634680()
{
	self flag::init("used_only_melee", 1);
	self flag::init("melee_killed_ai");
	self thread function_b12285b9();
	self thread function_5f41b7ea();
}

/*
	Name: function_e2b1615a
	Namespace: namespace_36e484c6
	Checksum: 0xCEECC8AA
	Offset: 0x3D68
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_e2b1615a(params)
{
	if(isPlayer(params.eAttacker))
	{
		if(params.eAttacker flag::exists("melee_killed_ai") && !params.eAttacker flag::get("melee_killed_ai"))
		{
			params.eAttacker flag::set("melee_killed_ai");
		}
	}
}

/*
	Name: function_b12285b9
	Namespace: namespace_36e484c6
	Checksum: 0x9214A0EF
	Offset: 0x3E18
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_b12285b9()
{
	self waittill("grenade_fire", grenade, weapon);
	self flag::clear("used_only_melee");
}

/*
	Name: function_5f41b7ea
	Namespace: namespace_36e484c6
	Checksum: 0x4B413ED9
	Offset: 0x3E68
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5f41b7ea()
{
	self waittill("weapon_fired");
	self flag::clear("used_only_melee");
}

/*
	Name: function_63222c73
	Namespace: namespace_36e484c6
	Checksum: 0x8BDC5066
	Offset: 0x3EA0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_63222c73()
{
	self endon("death");
	if(self flag::exists("used_only_melee") && self flag::get("used_only_melee") && self flag::get("melee_killed_ai"))
	{
		namespace_61c634f2::function_df19cf7c(self);
	}
}

#namespace namespace_1c6b20b7;

/*
	Name: function_e9166d2d
	Namespace: namespace_1c6b20b7
	Checksum: 0xE401CD8A
	Offset: 0x3F30
	Size: 0x3BB
	Parameters: 1
	Flags: None
*/
function function_e9166d2d(var_74cd64bc)
{
	var_6cf84815 = Array(level.var_5d4087a6, level.var_92d245e2, level.var_9db406db, level.var_4d5a4697, level.var_2fd26037);
	Array::thread_all(var_6cf84815, &function_b243f34);
	if(!var_74cd64bc)
	{
		level flag::wait_till("dark_battle_end");
	}
	function_46853a2(var_74cd64bc);
	trigger::use("post_vtol_tackle_colors");
	level.var_2fd26037 colors::enable();
	savegame::function_5d2cdd99();
	level thread function_551feb8e();
	level waittill("hash_147f8c7");
	level namespace_2cb3876f::function_6a5f89cb("skipto_vtol_tackle_ai");
	foreach(ai_ally in level.var_681ad194)
	{
		ai_ally thread Hangar::function_f1dda14f("ally_0" + ai_ally.var_a89679b6 + "_vtol_tackle_node");
		ai_ally function_b243f34();
	}
	level thread objectives::breadcrumb("dark_battle_breadcrumb_5");
	Array::thread_all(var_6cf84815, &function_b243f34, 0);
	Array::thread_all(level.var_681ad194, &function_b243f34, 0);
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 colors::disable();
	}
	level.var_92d245e2 colors::set_force_color("o");
	n_node = GetNode("theia_vtol_tackle_node", "targetname");
	level.var_5d4087a6 SetGoal(n_node, 1);
	level.var_2fd26037 thread function_d7cf408b();
	level thread function_d64747d6();
	level flag::wait_till("vtol_tackle_move_allies");
	thread function_6490ef93();
	spawn_manager::kill("vtol_tackle_spwn_mgr", 1);
	level thread function_d017a379();
	level flag::wait_till("robot_reveal");
	skipto::function_be8adfb8("skipto_vtol_tackle");
}

/*
	Name: function_551feb8e
	Namespace: namespace_1c6b20b7
	Checksum: 0x84318EA6
	Offset: 0x42F8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_551feb8e()
{
	spawn_manager::enable("vtol_tackle_spwn_mgr_door");
	spawner::simple_spawn_single("vtol_tackle_staircase_guard");
}

/*
	Name: function_b243f34
	Namespace: namespace_1c6b20b7
	Checksum: 0x8FB1A16F
	Offset: 0x4338
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_b243f34(b_state)
{
	if(!isdefined(b_state))
	{
		b_state = 1;
	}
	if(b_state)
	{
		self ai::set_ignoreall(1);
		self ai::set_ignoreme(1);
		self.goalRadius = 32;
	}
	else
	{
		self battlechatter::function_d9f49fba(1);
		self ai::set_ignoreall(0);
		self ai::set_ignoreme(0);
	}
}

/*
	Name: function_46853a2
	Namespace: namespace_1c6b20b7
	Checksum: 0x4EBAABA6
	Offset: 0x43F8
	Size: 0x27B
	Parameters: 1
	Flags: None
*/
function function_46853a2(var_74cd64bc)
{
	Array::thread_all(level.players, &function_236046c4);
	level scene::add_scene_func("cin_pro_13_01_vtoltackle_vign_takedown", &function_b007992c, "play");
	if(var_74cd64bc)
	{
		level thread scene::skipto_end("cin_pro_13_01_vtoltackle_vign_takedown", undefined, undefined, 0.2);
		level thread scene::skipto_end("cin_pro_13_01_vtoltackle_vign_takedown_khalil", undefined, undefined, 0.2);
		level thread scene::skipto_end("cin_pro_13_01_vtoltackle_vign_takedown_minister", undefined, undefined, 0.2);
	}
	else
	{
		level thread scene::Play("cin_pro_13_01_vtoltackle_vign_takedown");
		level thread scene::Play("cin_pro_13_01_vtoltackle_vign_takedown_khalil");
		level thread scene::Play("cin_pro_13_01_vtoltackle_vign_takedown_minister");
	}
	level.var_5d4087a6 SetGoal(GetNode("hyperion_post_dark_battle", "targetname"), 1);
	vehicle::simple_spawn_single_and_drive("vtol_vehicle");
	level thread function_623731e2();
	level thread function_321578a8();
	level thread function_1e5dba01();
	level waittill("hash_7ab4e268");
	level flag::set("vtol_has_crashed");
	level flag::set("vtol_guards_alerted");
	node = GetNode("prometheus_vtol_tackle_node2", "targetname");
	level.var_92d245e2 thread ai::force_goal(node, 32);
}

/*
	Name: function_b007992c
	Namespace: namespace_1c6b20b7
	Checksum: 0x61634651
	Offset: 0x4680
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_b007992c(a_ents)
{
	vh_vtol = a_ents["vtol"];
	vh_vtol.script_crashtypeoverride = "none";
	vh_vtol thread namespace_2cb3876f::vehicle_rumble("buzz_high", "stop_vh_rumble", 0.05, 0.1, 3000, 20);
	vh_vtol thread namespace_2cb3876f::function_c56034b7();
	level waittill("hash_3af3e792");
	vh_vtol notify("death");
	vh_vtol notify("hash_c5b436ee");
	vh_vtol SetModel("veh_t7_mil_vtol_nrc_no_interior_d");
	level thread namespace_2cb3876f::function_2a0bc326(vh_vtol.origin, 0.6, 2, 5000, 6);
	exploder::exploder("light_exploder_vtol_tackle_fire");
	wait(1);
	level thread namespace_2cb3876f::function_2a0bc326(vh_vtol.origin, 0.3, 2, 5000, 6);
}

/*
	Name: function_1e5dba01
	Namespace: namespace_1c6b20b7
	Checksum: 0x2C19415C
	Offset: 0x47F8
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_1e5dba01()
{
	level waittill("hash_ec873a98");
	var_280d5f68 = GetEnt("intelstation_exit_door_l", "targetname");
	var_3c301126 = GetEnt("intelstation_exit_door_r", "targetname");
	v_move = (54, 0, 0);
	var_ebf82f1 = var_280d5f68.origin + v_move;
	var_280d5f68 moveto(var_ebf82f1, 0.5);
	var_ebf82f1 = var_3c301126.origin - v_move;
	var_3c301126 moveto(var_ebf82f1, 0.5);
	var_3c301126 waittill("movedone");
	var_3c301126 connectpaths();
	var_280d5f68 connectpaths();
	level notify("hash_147f8c7");
}

/*
	Name: function_321578a8
	Namespace: namespace_1c6b20b7
	Checksum: 0xA0E73D1D
	Offset: 0x4968
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_321578a8()
{
	level waittill("hash_41679010");
	level scene::Play("p7_fxanim_cp_prologue_vtol_tackle_windows_bundle");
}

/*
	Name: function_623731e2
	Namespace: namespace_1c6b20b7
	Checksum: 0xDC0D2BC1
	Offset: 0x49A0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_623731e2()
{
	level waittill("hash_13ea3fcf");
	level thread namespace_21b2c1f2::function_f573bcb9();
	level dialog::remote("tayr_easy_hold_your_fire_0", undefined, "normal");
}

/*
	Name: function_d64747d6
	Namespace: namespace_1c6b20b7
	Checksum: 0xE62D562C
	Offset: 0x49F8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_d64747d6()
{
	level thread namespace_21b2c1f2::function_49fef8f4();
	level.var_2fd26037 dialog::say("hend_taylor_alpha_two_te_0", 2);
	level.var_2fd26037 dialog::say("hend_comes_easy_now_hu_0", 1.5);
	level.var_92d245e2 dialog::say("tayr_extract_is_the_satel_0", 0.5);
	level.var_2fd26037 dialog::say("hend_you_didn_t_answer_me_0", 0.5);
	level.var_5d4087a6 dialog::say("mare_keep_up_secondary_r_0", 3);
}

/*
	Name: function_d7cf408b
	Namespace: namespace_1c6b20b7
	Checksum: 0x4176C7C1
	Offset: 0x4AE8
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_d7cf408b()
{
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	node = GetNode("hendricks_vtol_tackle_node2", "targetname");
	self SetGoal(node, 1);
	self.goalRadius = 500;
}

/*
	Name: function_67877d47
	Namespace: namespace_1c6b20b7
	Checksum: 0xA96365F1
	Offset: 0x4B78
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_67877d47(var_bf0873ca)
{
	node = GetNode(var_bf0873ca, "targetname");
	self SetGoal(node, 1);
}

/*
	Name: function_6490ef93
	Namespace: namespace_1c6b20b7
	Checksum: 0xEDFCE9B8
	Offset: 0x4BD8
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_6490ef93()
{
	var_67c6c543 = GetAIArray("dark_battle_guy", "targetname");
	foreach(ai_guy in var_67c6c543)
	{
		if(isalive(ai_guy))
		{
			ai_guy kill();
		}
	}
}

/*
	Name: function_d017a379
	Namespace: namespace_1c6b20b7
	Checksum: 0x91E5947D
	Offset: 0x4CB0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d017a379()
{
	level spawner::waittill_ai_group_cleared("vtol_tackle_enemies");
	trigger::use("robot_reveal_trig");
}

/*
	Name: function_236046c4
	Namespace: namespace_1c6b20b7
	Checksum: 0xEC57F130
	Offset: 0x4CF8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_236046c4()
{
	level endon("hash_51bc43cb");
	self waittill("weapon_fired");
	level flag::set("vtol_guards_alerted");
	self thread function_ecf2e565();
}

/*
	Name: function_ecf2e565
	Namespace: namespace_1c6b20b7
	Checksum: 0x602C0766
	Offset: 0x4D58
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_ecf2e565()
{
	level endon("hash_51bc43cb");
	veh_vtol = GetEnt("vtol", "animname");
	while(1)
	{
		if(!isdefined(veh_vtol))
		{
			wait(0.5);
			continue;
		}
		var_30299a05 = (randomIntRange(-150, 150), randomIntRange(-150, 150), randomIntRange(-150, 150));
		MagicBullet(GetWeapon("turret_bo3_mil_vtol_nrc"), veh_vtol GetTagOrigin("tag_gunner_barrel3") + VectorScale((0, -1, 0), 40), self.origin + var_30299a05);
		wait(0.05);
	}
}

#namespace namespace_383c5321;

/*
	Name: function_c47ce0e9
	Namespace: namespace_383c5321
	Checksum: 0x55E4F2BC
	Offset: 0x4E80
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c47ce0e9()
{
	self.grenadeAmmo = 0;
}

