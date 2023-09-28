#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_accolades;
#using scripts\cp\cp_mi_sing_vengeance_market;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
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
#using scripts\shared\stealth;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_22334037;

/*
	Name: function_b17357cc
	Namespace: namespace_22334037
	Checksum: 0x2892177
	Offset: 0xCB0
	Size: 0x3BB
	Parameters: 2
	Flags: None
*/
function function_b17357cc(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		callback::on_spawned(&namespace_63b4601c::give_hero_weapon);
		namespace_63b4601c::init_hero("hendricks", str_objective);
		objectives::set("cp_level_vengeance_rescue_kane");
		namespace_63b4601c::function_e00864bd("rear_garage_umbra_gate", 1, "rear_garage_gate");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
		function_e46237c7();
		scene::init("cin_ven_06_15_parkingstructure_deadbodies");
		scene::init("cin_ven_06_10_parkingstructure_1st_shot01");
		level util::function_d8eaed3d(4);
		level.var_2fd26037 battlechatter::function_d9f49fba(0);
		level.var_2fd26037 SetGoal(level.var_2fd26037.origin);
		load::function_a2995f22();
	}
	namespace_63b4601c::function_4e8207e9("garage_igc");
	if(isdefined(level.stealth))
	{
		level stealth::stop();
	}
	level thread function_9ca09589();
	level thread namespace_e6a038a0::function_3ae8447c();
	s_node = struct::get("quad_battle_script_node", "targetname");
	s_node thread scene::init("cin_ven_07_11_openpath_wall_vign");
	var_ecf5f255 = GetEntArray("quad_tank_color_triggers", "script_noteworthy");
	foreach(e_trig in var_ecf5f255)
	{
		e_trig TriggerEnable(0);
		e_trig.script_color_stay_on = 1;
	}
	level thread namespace_7c587e3e::function_34d7007d();
	level thread namespace_9fd035::function_c270e327();
	function_2636a01c();
	savegame::function_5d2cdd99();
	namespace_523da15d::function_2c3bbf49();
	level thread namespace_7c587e3e::function_ea4f2f1b();
	function_2480a40a(str_objective, var_74cd64bc);
}

/*
	Name: function_608352d2
	Namespace: namespace_22334037
	Checksum: 0x9FEF77F7
	Offset: 0x1078
	Size: 0x13B
	Parameters: 4
	Flags: None
*/
function function_608352d2(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level struct::delete_script_bundle("scene", "cin_ven_06_10_parkingstructure_1st_shot01");
	level struct::delete_script_bundle("scene", "cin_ven_06_10_parkingstructure_3rd_shot02");
	level struct::delete_script_bundle("scene", "cin_ven_06_10_parkingstructure_3rd_shot03");
	level struct::delete_script_bundle("scene", "cin_ven_06_10_parkingstructure_3rd_shot04");
	level struct::delete_script_bundle("scene", "cin_ven_06_10_parkingstructure_3rd_shot05");
	level struct::delete_script_bundle("scene", "cin_ven_06_10_parkingstructure_3rd_shot06");
	level struct::delete_script_bundle("scene", "cin_ven_06_10_parkingstructure_3rd_shot07");
}

/*
	Name: function_2636a01c
	Namespace: namespace_22334037
	Checksum: 0x32B66BB4
	Offset: 0x11C0
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_2636a01c()
{
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin);
	foreach(e_player in level.activePlayers)
	{
		e_player thread namespace_63b4601c::function_b9785164();
	}
	level thread function_fb6f8da();
	namespace_63b4601c::function_e00864bd("rear_garage_umbra_gate", 1, "rear_garage_gate");
	thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
	thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
	e_door = GetEnt("dogleg_2_exit_door_static", "targetname");
	e_door Hide();
	if(isdefined(level.BZM_VENGEANCEDialogue6_1Callback))
	{
		level thread [[level.BZM_VENGEANCEDialogue6_1Callback]]();
	}
	if(!isdefined(level.var_e82cf2ee))
	{
		level.var_e82cf2ee = level.players[0];
	}
	var_70f21d83 = struct::get("garage_igc_script_node", "targetname");
	var_70f21d83 thread scene::Play("cin_ven_06_15_parkingstructure_deadbodies");
	var_70f21d83 thread scene::Play("cin_ven_06_10_parkingstructure_1st_shot01", level.var_e82cf2ee);
	namespace_63b4601c::function_ac2b4535("cin_ven_06_10_parkingstructure_1st_shot08", "garage", 0);
	wait(1);
	level thread namespace_63b4601c::function_5dbf4126();
	level waittill("hash_b0ca54ea");
	e_door show();
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
	level flag::set("garage_igc_done");
	util::clear_streamer_hint();
}

/*
	Name: function_e46237c7
	Namespace: namespace_22334037
	Checksum: 0xEBBB8A4C
	Offset: 0x14C0
	Size: 0x413
	Parameters: 0
	Flags: None
*/
function function_e46237c7()
{
	level thread function_f0f8ed9f();
	level thread function_d933bb38();
	level.var_29061a49 = vehicle::simple_spawn_single("garage_technical_01");
	level.var_29061a49 vehicle::lights_off();
	level.var_4f0894b2 = vehicle::simple_spawn_single("garage_technical_02");
	level.var_4f0894b2.animName = "technical_truck_2";
	level.var_4f0894b2 vehicle::lights_off();
	level.var_4f0894b2 Hide();
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "garage_civilian_a";
	var_6a07eb6c[1] = "garage_civilian_b";
	var_6a07eb6c[2] = "garage_civilian_c";
	var_6a07eb6c[3] = "garage_civilian_female_a";
	var_6a07eb6c[4] = "garage_civilian_female_b";
	var_6a07eb6c[5] = "noose_1";
	var_6a07eb6c[6] = "noose_2";
	scene::add_scene_func("cin_ven_06_10_parkingstructure_1st_shot01", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	scene::add_scene_func("cin_ven_06_10_parkingstructure_1st_shot01", &function_159c75e4, "done");
	scene::add_scene_func("cin_ven_06_10_parkingstructure_3rd_shot02", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	scene::add_scene_func("cin_ven_06_10_parkingstructure_3rd_shot03", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	scene::add_scene_func("cin_ven_06_10_parkingstructure_3rd_shot04", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	scene::add_scene_func("cin_ven_06_10_parkingstructure_3rd_shot05", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	scene::add_scene_func("cin_ven_06_10_parkingstructure_3rd_shot06", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	scene::add_scene_func("cin_ven_06_10_parkingstructure_3rd_shot07", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	scene::add_scene_func("cin_ven_06_10_parkingstructure_1st_shot08", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	spawner::add_spawn_function_ai_group("garage_enemies", &function_724be02d);
	var_b84d2ab = GetEntArray("garage_police_cars", "script_noteworthy");
	for(i = 0; i < var_b84d2ab.size; i++)
	{
		var_b84d2ab[i] thread function_2b37bfcd();
	}
	spawner::add_spawn_function_ai_group("garage_police", &function_d3d4580d);
}

/*
	Name: function_159c75e4
	Namespace: namespace_22334037
	Checksum: 0x839DEBFC
	Offset: 0x18E0
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_159c75e4(a_ents)
{
	level notify("hash_d933bb38");
}

/*
	Name: function_d933bb38
	Namespace: namespace_22334037
	Checksum: 0xF7F22C62
	Offset: 0x1908
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_d933bb38()
{
	level waittill("hash_d933bb38");
	wait(1);
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_2fd26037 ai::set_ignoreme(1);
}

/*
	Name: function_fb6f8da
	Namespace: namespace_22334037
	Checksum: 0xAAB78166
	Offset: 0x1998
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_fb6f8da()
{
	level thread function_d20f6512();
	level thread function_ac0ceaa9();
	level thread function_860a7040();
	level thread function_901bc91f();
	level thread function_6a194eb6();
	level thread function_4416d44d();
	level thread function_1e1459e4();
	level thread function_2825b2c3();
	level thread function_223385a();
	level thread function_601474c6();
	level thread function_8616ef2f();
}

/*
	Name: function_d20f6512
	Namespace: namespace_22334037
	Checksum: 0x7E80FE3A
	Offset: 0x1AB0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d20f6512()
{
	level waittill("hash_9daf57a0");
	if(!scene::is_skipping_in_progress())
	{
		level thread dialog::remote("xiu0_i_swore_vengeance_0");
	}
}

/*
	Name: function_ac0ceaa9
	Namespace: namespace_22334037
	Checksum: 0x44380485
	Offset: 0x1B00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ac0ceaa9()
{
	level waittill("hash_a14e508d");
	if(!scene::is_skipping_in_progress())
	{
		level thread dialog::remote("xiu0_you_built_your_walls_0", 0, "no_dni");
	}
}

/*
	Name: function_860a7040
	Namespace: namespace_22334037
	Checksum: 0xF636AC63
	Offset: 0x1B58
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_860a7040()
{
	level waittill("hash_1bf8f970");
	if(!scene::is_skipping_in_progress())
	{
		level thread dialog::remote("xiu0_today_the_children_0", 0, "no_dni");
	}
}

/*
	Name: function_901bc91f
	Namespace: namespace_22334037
	Checksum: 0x1B88DB9E
	Offset: 0x1BB0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_901bc91f()
{
	level waittill("hash_51de5a01");
	if(!scene::is_skipping_in_progress())
	{
		level thread dialog::remote("xiu0_you_brought_this_upo_0", 0, "no_dni");
	}
}

/*
	Name: function_6a194eb6
	Namespace: namespace_22334037
	Checksum: 0x41389371
	Offset: 0x1C08
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6a194eb6()
{
	level waittill("hash_d03db37a");
	if(!scene::is_skipping_in_progress())
	{
		level thread dialog::function_13b3b16a("plyr_goh_xiulan_how_0");
	}
}

/*
	Name: function_4416d44d
	Namespace: namespace_22334037
	Checksum: 0x85165221
	Offset: 0x1C58
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4416d44d()
{
	level waittill("hash_8f6177c0");
	if(!scene::is_skipping_in_progress())
	{
		level thread dialog::remote("tayr_i_gave_her_access_to_0", 0, "no_dni");
	}
}

/*
	Name: function_1e1459e4
	Namespace: namespace_22334037
	Checksum: 0x6645ABE6
	Offset: 0x1CB0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1e1459e4()
{
	level waittill("hash_a60e4185");
	if(!scene::is_skipping_in_progress())
	{
		level.var_2fd26037 thread namespace_63b4601c::function_5fbec645("hend_taylor_what_do_you_0");
	}
}

/*
	Name: function_2825b2c3
	Namespace: namespace_22334037
	Checksum: 0xC2BE46E1
	Offset: 0x1D00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2825b2c3()
{
	level waittill("hash_cd7ed345");
	if(!scene::is_skipping_in_progress())
	{
		level thread dialog::remote("tayr_the_decision_the_r_0", 0, "no_dni");
	}
}

/*
	Name: function_223385a
	Namespace: namespace_22334037
	Checksum: 0xA57DD9DA
	Offset: 0x1D58
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_223385a()
{
	level waittill("hash_44d70a3");
	if(!scene::is_skipping_in_progress())
	{
		level thread dialog::remote("tayr_i_want_to_find_them_0", 0, "no_dni");
	}
}

/*
	Name: function_601474c6
	Namespace: namespace_22334037
	Checksum: 0xE09E57C1
	Offset: 0x1DB0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_601474c6()
{
	level waittill("hash_ea9a5e57");
	if(!scene::is_skipping_in_progress())
	{
		level.var_2fd26037 thread namespace_63b4601c::function_5fbec645("hend_why_0");
	}
}

/*
	Name: function_8616ef2f
	Namespace: namespace_22334037
	Checksum: 0xB9CF3980
	Offset: 0x1E00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8616ef2f()
{
	level waittill("hash_af6fa39");
	if(!scene::is_skipping_in_progress())
	{
		level thread dialog::remote("tayr_i_need_to_know_how_d_0", 0, "no_dni");
	}
}

/*
	Name: function_20c804af
	Namespace: namespace_22334037
	Checksum: 0x69E089B4
	Offset: 0x1E58
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_20c804af()
{
	function_e46237c7();
	var_70f21d83 = struct::get("garage_igc_script_node", "targetname");
	var_70f21d83 scene::skipto_end("cin_ven_06_10_parkingstructure_1st_shot08");
	wait(0.1);
	level flag::set("garage_igc_done");
}

/*
	Name: function_63a4033a
	Namespace: namespace_22334037
	Checksum: 0x8922221A
	Offset: 0x1EE8
	Size: 0x3BB
	Parameters: 2
	Flags: None
*/
function function_63a4033a(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		callback::on_spawned(&namespace_63b4601c::give_hero_weapon);
		callback::on_spawned(&namespace_63b4601c::function_b9785164);
		namespace_63b4601c::init_hero("hendricks", str_objective);
		level.var_2fd26037 battlechatter::function_d9f49fba(0);
		objectives::set("cp_level_vengeance_rescue_kane");
		level thread namespace_e6a038a0::function_3ae8447c();
		namespace_63b4601c::function_e00864bd("rear_garage_umbra_gate", 1, "rear_garage_gate");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
		level thread function_f0f8ed9f();
		level thread namespace_63b4601c::function_5dbf4126();
		level thread function_9ca09589();
		s_node = struct::get("quad_battle_script_node", "targetname");
		s_node thread scene::init("cin_ven_07_11_openpath_wall_vign");
		var_ecf5f255 = GetEntArray("quad_tank_color_triggers", "script_noteworthy");
		foreach(e_trig in var_ecf5f255)
		{
			e_trig TriggerEnable(0);
			e_trig.script_color_stay_on = 1;
		}
		level function_20c804af();
		level.var_29061a49 = vehicle::simple_spawn_single("garage_technical_01");
		level.var_29061a49 vehicle::lights_off();
		level.var_4f0894b2 = vehicle::simple_spawn_single("garage_technical_02");
		level.var_4f0894b2 vehicle::lights_off();
		level.var_4f0894b2 Hide();
		level.var_4f0894b2 notsolid();
		level flag::wait_till("all_players_spawned");
	}
	namespace_523da15d::function_2c3bbf49();
	level thread namespace_7c587e3e::function_ea4f2f1b();
	function_2480a40a(str_objective, var_74cd64bc);
}

/*
	Name: function_a55eff44
	Namespace: namespace_22334037
	Checksum: 0xF65201F8
	Offset: 0x22B0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_a55eff44(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_2480a40a
	Namespace: namespace_22334037
	Checksum: 0xDBBF399D
	Offset: 0x22E0
	Size: 0x1AB
	Parameters: 2
	Flags: None
*/
function function_2480a40a(str_objective, var_74cd64bc)
{
	level.var_2fd26037 thread function_7347e2f2();
	level thread function_b09f1ac3();
	level thread function_41ffa9ef();
	level thread function_c3851a97();
	level thread function_5d001b91();
	level thread function_8d0e1d4c();
	level thread function_65592384();
	var_77d44b28 = GetEnt("garage_player_gather_trigger", "targetname");
	var_77d44b28 TriggerEnable(0);
	if(SessionModeIsCampaignZombiesGame())
	{
		level waittill("hash_d72a35d0");
	}
	else
	{
		level util::waittill_multiple("garage_snipers_dead", "garage_enemies_dead");
	}
	if(str_objective == "garage_igc")
	{
		skipto::function_be8adfb8("garage_igc");
	}
	else
	{
		skipto::function_be8adfb8("dev_garage");
	}
	objectives::Hide("cp_level_vengeance_clear_garage");
}

/*
	Name: function_7347e2f2
	Namespace: namespace_22334037
	Checksum: 0xBFFCCA6F
	Offset: 0x2498
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_7347e2f2()
{
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.goalRadius = 16;
	self SetThreatBiasGroup("garage_hendricks");
	var_a392d7f9 = GetNode("hendricks_garage_start_node", "targetname");
	self SetGoal(var_a392d7f9, 1);
	self waittill("goal");
	level flag::wait_till("start_obj_technicals");
	self colors::enable();
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	wait(0.05);
	trigger::use("hendricks_sniper_color");
}

/*
	Name: function_f0f8ed9f
	Namespace: namespace_22334037
	Checksum: 0x53CB9A8B
	Offset: 0x25D8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_f0f8ed9f(var_74cd64bc)
{
	CreateThreatBiasGroup("garage_police");
	CreateThreatBiasGroup("garage_snipers");
	CreateThreatBiasGroup("garage_hendricks");
	CreateThreatBiasGroup("garage_players");
	CreateThreatBiasGroup("garage_ground");
	if(!isdefined(var_74cd64bc))
	{
		level flag::wait_till("start_obj_technicals");
	}
	setthreatbias("garage_hendricks", "garage_snipers", 10);
	setthreatbias("garage_hendricks", "garage_ground", 10);
	setthreatbias("garage_police", "garage_snipers", 10000);
}

/*
	Name: function_b09f1ac3
	Namespace: namespace_22334037
	Checksum: 0xC3F183F3
	Offset: 0x2708
	Size: 0x2F1
	Parameters: 0
	Flags: None
*/
function function_b09f1ac3()
{
	spawner::simple_spawn("garage_snipers", &function_f181f6aa);
	spawner::simple_spawn("garage_ground_enemies", &function_724be02d);
	level thread function_c0e699ed();
	wait(1);
	spawn_manager::enable("garage_lower_sm");
	spawn_manager::function_27bf2e8("garage_lower_sm", 3);
	var_5171fbdf = spawner::get_ai_group_ai("garage_enemies");
	if(var_5171fbdf.size > 0)
	{
		foreach(var_11b61923 in var_5171fbdf)
		{
			if(isalive(var_11b61923))
			{
				var_11b61923 thread namespace_e6a038a0::function_47370bbe();
			}
		}
	}
	a_enemies = spawner::get_ai_group_ai("garage_enemies");
	e_vol = GetEnt("garage_enemies_final_volume", "targetname");
	foreach(e_enemy in a_enemies)
	{
		if(isalive(e_enemy))
		{
			e_enemy ai::set_behavior_attribute("move_mode", "rambo");
			e_enemy ClearForcedGoal();
			e_enemy ClearGoalVolume();
			e_enemy SetGoal(e_vol, 1);
		}
	}
	spawn_manager::function_72e3dd35("garage_lower_sm");
	level notify("hash_d72a35d0");
}

/*
	Name: function_724be02d
	Namespace: namespace_22334037
	Checksum: 0x89EB987
	Offset: 0x2A08
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_724be02d()
{
	self endon("death");
	self.goalRadius = 32;
	self SetThreatBiasGroup("garage_ground");
	e_vol = GetEnt("garage_enemy_n_goalvolume", "targetname");
	if(!isdefined(self.target))
	{
		self SetGoal(e_vol, 1);
	}
}

/*
	Name: function_c0e699ed
	Namespace: namespace_22334037
	Checksum: 0xADF4D016
	Offset: 0x2AA8
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_c0e699ed()
{
	spawner::waittill_ai_group_amount_killed("garage_snipers", 1);
	spawner::simple_spawn("garage_snipers_reinforcements_1", &function_f181f6aa);
	spawner::waittill_ai_group_amount_killed("garage_snipers", 3);
	spawner::simple_spawn("garage_snipers_reinforcements_2", &function_f181f6aa);
	spawner::waittill_ai_group_amount_killed("garage_snipers", 1);
	spawn_manager::enable("garage_snipers_reinforcements_extra");
	level thread spawn_manager::function_16c424d1("garage_snipers_reinforcements_extra", &function_74ca52d5);
	wait(0.1);
	level thread function_6ad5d4b6();
	level flag::wait_till_all(Array("garage_main_snipers_cleared", "garage_extra_snipers_cleared"));
	level namespace_523da15d::function_f766f1e0();
	level notify("hash_11d44cc4");
}

/*
	Name: function_6ad5d4b6
	Namespace: namespace_22334037
	Checksum: 0x6EC77BE9
	Offset: 0x2C20
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6ad5d4b6()
{
	spawner::waittill_ai_group_ai_count("garage_snipers", 0);
	level flag::set("garage_main_snipers_cleared");
}

/*
	Name: function_74ca52d5
	Namespace: namespace_22334037
	Checksum: 0xDBB6CD67
	Offset: 0x2C68
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_74ca52d5()
{
	level flag::set("garage_extra_snipers_cleared");
}

/*
	Name: function_f181f6aa
	Namespace: namespace_22334037
	Checksum: 0xE36FE866
	Offset: 0x2C98
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_f181f6aa()
{
	self endon("death");
	self.goalRadius = 8;
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.script_accuracy = 3.5;
	self SetThreatBiasGroup("garage_snipers");
	self DisableAimAssist();
	self.overrideActorDamage = &function_c95d9be1;
	self waittill("goal");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self.var_bbd5dba4 = 1;
	self function_dc89c930();
}

/*
	Name: function_dc89c930
	Namespace: namespace_22334037
	Checksum: 0xC914B430
	Offset: 0x2DA8
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_dc89c930()
{
	self endon("death");
	while(1)
	{
		if(isPlayer(self.enemy))
		{
			if(self.enemy IsInVehicle())
			{
				self ai::shoot_at_target("normal", self.enemy, "j_head", 3);
				wait(5);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_c95d9be1
	Namespace: namespace_22334037
	Checksum: 0xB68EAF6B
	Offset: 0x2E38
	Size: 0x93
	Parameters: 12
	Flags: None
*/
function function_c95d9be1(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, modelIndex, psOffsetTime, bonename)
{
	if(isdefined(eAttacker) && !isPlayer(eAttacker))
	{
		iDamage = 0;
	}
	return iDamage;
}

/*
	Name: function_41ffa9ef
	Namespace: namespace_22334037
	Checksum: 0x9BDEAEF0
	Offset: 0x2ED8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_41ffa9ef()
{
	level.Police = spawner::simple_spawn("garage_police");
	wait(0.1);
	setthreatbias("garage_snipers", "garage_police", 100000);
	setthreatbias("garage_ground", "garage_police", 10);
}

/*
	Name: function_d3d4580d
	Namespace: namespace_22334037
	Checksum: 0x42389393
	Offset: 0x2F60
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d3d4580d()
{
	self.goalRadius = 8;
	self.fixedNode = 1;
	self SetThreatBiasGroup("garage_police");
}

/*
	Name: function_2b37bfcd
	Namespace: namespace_22334037
	Checksum: 0xFBAE50CD
	Offset: 0x2FA8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_2b37bfcd()
{
	self.old_origin = self.origin;
	self.old_angles = self.angles;
	level flag::wait_till("garage_igc_done");
	self.origin = self.old_origin;
	self.angles = self.old_angles;
	if(self.targetname == "cop_car_2")
	{
		self kill();
	}
}

/*
	Name: function_5d001b91
	Namespace: namespace_22334037
	Checksum: 0x5889288C
	Offset: 0x3040
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_5d001b91()
{
	level endon("hash_11d44cc4");
	level.var_4f0894b2 show();
	wait(0.75);
	level.var_4f0894b2 solid();
	level flag::wait_till("start_obj_technicals");
	objectives::set("cp_level_vengeance_clear_garage");
	foreach(e_player in level.activePlayers)
	{
		e_player thread function_a28bf30a(level.var_29061a49, "technical_01_entered");
		e_player thread function_a28bf30a(level.var_4f0894b2, "technical_02_entered");
	}
	level flag::wait_till_any(Array("technical_01_entered", "technical_02_entered"));
	level notify("hash_ede342ab");
}

/*
	Name: function_a28bf30a
	Namespace: namespace_22334037
	Checksum: 0xA65DAEED
	Offset: 0x31C8
	Size: 0x121
	Parameters: 2
	Flags: None
*/
function function_a28bf30a(technical, flag)
{
	self endon("disconnect");
	self endon("death");
	technical endon("death");
	vehicle = undefined;
	var_f1709cab = 0;
	if(self IsInVehicle())
	{
		vehicle = self GetVehicleOccupied();
		if(isdefined(vehicle) && vehicle == technical)
		{
			var_f1709cab = 1;
		}
	}
	if(var_f1709cab == 1)
	{
		level flag::set(flag);
	}
	else
	{
		technical waittill("enter_vehicle", player, seat);
		level flag::set(flag);
	}
	level notify("hash_8a50cf52");
}

/*
	Name: function_8d0e1d4c
	Namespace: namespace_22334037
	Checksum: 0x1DE4015F
	Offset: 0x32F8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_8d0e1d4c()
{
	level thread function_66454e44();
	util::waittill_any("sniper_killed", "technical_used");
	level waittill("hash_11d44cc4");
	level flag::set("kill_sniper_nags");
}

/*
	Name: function_66454e44
	Namespace: namespace_22334037
	Checksum: 0xA191BD7
	Offset: 0x3368
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_66454e44()
{
	spawner::waittill_ai_group_amount_killed("garage_snipers", 1);
	level notify("hash_ee4cd834");
}

/*
	Name: function_9ca09589
	Namespace: namespace_22334037
	Checksum: 0xB19E63BE
	Offset: 0x33A8
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_9ca09589()
{
	var_ab57d34a = GetEntArray("garage_balcony_damage", "script_noteworthy");
	foreach(var_e6bb4686 in var_ab57d34a)
	{
		var_e6bb4686 Hide();
		var_e6bb4686 notsolid();
	}
}

/*
	Name: function_c3851a97
	Namespace: namespace_22334037
	Checksum: 0x9A4A31A6
	Offset: 0x3480
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_c3851a97()
{
	a_triggers = GetEntArray("garage_damage_trigger", "targetname");
	foreach(e_trigger in a_triggers)
	{
		e_trigger thread function_f0f6fdf7();
	}
}

/*
	Name: function_f0f6fdf7
	Namespace: namespace_22334037
	Checksum: 0x7467AE11
	Offset: 0x3540
	Size: 0x35B
	Parameters: 0
	Flags: None
*/
function function_f0f6fdf7()
{
	e_org = spawn("script_origin", self.origin + VectorScale((0, 0, 1), 64));
	e_wall = GetEnt(self.target, "targetname");
	var_83442ffa = GetEntArray(self.script_noteworthy, "targetname");
	var_7d044b82 = struct::get(e_wall.target, "targetname");
	self waittill("trigger", e_other);
	playsoundatposition("evt_garage_debris", self.origin);
	exploder::exploder(self.script_noteworthy);
	foreach(var_e6bb4686 in var_83442ffa)
	{
		var_e6bb4686 show();
		var_e6bb4686 solid();
	}
	level util::clientNotify(self.script_noteworthy);
	if(math::cointoss())
	{
		a_enemies = spawner::get_ai_group_ai("garage_snipers");
		foreach(e_enemy in a_enemies)
		{
			if(isalive(e_enemy) && Distance2D(var_7d044b82.origin, e_enemy.origin) < 100)
			{
				e_enemy thread throw_on_death(var_7d044b82);
			}
		}
	}
	else
	{
		RadiusDamage(e_org.origin, 100, 500, 500, e_other);
	}
	e_wall notsolid();
	e_wall delete();
	e_org delete();
}

/*
	Name: throw_on_death
	Namespace: namespace_22334037
	Checksum: 0x9E4EA1EE
	Offset: 0x38A8
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function throw_on_death(struct)
{
	v_dir = AnglesToForward(struct.angles) + anglesToUp(struct.angles) * 0.5;
	v_dir = v_dir * 40;
	self.skipdeath = 1;
	self StartRagdoll();
	self LaunchRagdoll((v_dir[0], v_dir[1], v_dir[2] + 32));
	self kill();
}

/*
	Name: function_65592384
	Namespace: namespace_22334037
	Checksum: 0xCC36E4FF
	Offset: 0x3998
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_65592384()
{
	level flag::set("start_obj_technicals");
	foreach(e_player in level.activePlayers)
	{
		if(e_player IsInVehicle())
		{
			level flag::set("in_veh_before_vo");
		}
	}
	level thread function_1fab88a();
	if(!level flag::get("in_veh_before_vo"))
	{
		level.var_2fd26037 function_73a79ca0("hend_we_re_not_going_to_l_0", 6);
	}
	level.var_2fd26037 battlechatter::function_d9f49fba(1);
}

/*
	Name: function_1fab88a
	Namespace: namespace_22334037
	Checksum: 0xF0E891E0
	Offset: 0x3AE8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1fab88a()
{
	level waittill("hash_11d44cc4");
	a_enemies = spawner::get_ai_group_ai("garage_enemies");
	if(a_enemies.size > 0)
	{
		level.var_2fd26037 notify("hash_6f33cd57");
		level.var_2fd26037.var_5d9fbd2d = 0;
		level.var_2fd26037 function_73a79ca0("hend_let_s_clear_out_the_0");
	}
}

/*
	Name: function_73a79ca0
	Namespace: namespace_22334037
	Checksum: 0xC4EDAF24
	Offset: 0x3B80
	Size: 0xD7
	Parameters: 2
	Flags: None
*/
function function_73a79ca0(vo_line, n_delay)
{
	if(!isdefined(n_delay))
	{
		n_delay = 0;
	}
	self endon("hash_6f33cd57");
	self battlechatter::function_d9f49fba(0);
	if(!isdefined(self.var_5d9fbd2d) || self.var_5d9fbd2d == 0)
	{
		self.var_5d9fbd2d = 1;
		break;
	}
	while(self.var_5d9fbd2d == 1)
	{
		wait(2.5);
	}
	self namespace_63b4601c::function_5fbec645(vo_line, n_delay);
	self battlechatter::function_d9f49fba(1);
	self.var_5d9fbd2d = 0;
}

