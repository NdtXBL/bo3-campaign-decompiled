#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_4a128b5f;

/*
	Name: init
	Namespace: namespace_4a128b5f
	Checksum: 0x873F5300
	Offset: 0x12F8
	Size: 0x463
	Parameters: 0
	Flags: None
*/
function init()
{
	if(!level flag::exists("inside_aquifer"))
	{
		level flag::init("inside_aquifer");
	}
	level flag::init("aquifer_zone02_combat_start");
	level flag::init("aquifer_zone03_combat_start");
	level flag::init("flag_force_off_dust");
	level flag::init("flag_post_vtol_intro");
	level flag::init("exterior_hack_trig_left_1_finished");
	level flag::init("exterior_hack_trig_right_1_finished");
	level flag::init("hack_zone02_1_finished");
	level flag::init("hack_zone02_2_finished");
	level flag::init("hack_zone03_1_finished");
	level flag::init("hack_zone03_2_finished");
	level flag::init("flag_aqu_save_state");
	level flag::init("exterior_hack_trig_left_1_started");
	level flag::init("exterior_hack_trig_right_1_started");
	level flag::init("hack_zone02_1_started");
	level flag::init("hack_zone02_2_started");
	level flag::init("hack_zone03_1_started");
	level flag::init("hack_zone03_2_started");
	level flag::init("hack_zone02_3_started");
	level flag::init("hack_zone02_3_finished");
	level flag::init("hack_zone02_4_started");
	level flag::init("hack_zone02_4_finished");
	level flag::init("hack_zone02_5_started");
	level flag::init("hack_zone02_5_finished");
	level flag::init("hack_zone02_6_started");
	level flag::init("hack_zone02_6_finished");
	level flag::init("flag_kayne_vulnerable");
	level flag::init("kayne_starts_overload");
	level flag::init("flag_wave2_port");
	level flag::init("flag_wave2_residential");
	level flag::init("flag_player_left_tower_done");
	level flag::init("flag_player_right_tower_done");
	level flag::init("flag_player_started_left_tower");
	level flag::init("flag_player_started_right_tower");
}

/*
	Name: function_82230f12
	Namespace: namespace_4a128b5f
	Checksum: 0x49FCAAF8
	Offset: 0x1768
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_82230f12()
{
	thread function_b63b8588();
	thread function_5f0c85a2();
}

/*
	Name: function_25dcb860
	Namespace: namespace_4a128b5f
	Checksum: 0x4D8B2D9B
	Offset: 0x1798
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_25dcb860()
{
	thread function_92eaa107("start_spawning_zone01_enemies", "spawn_manager_zone01", "spawn_manager_zone01b", "destroy_defenses_completed", "hack_terminal_right_completed", "aquifer_zone03_combat_start");
}

/*
	Name: function_92eaa107
	Namespace: namespace_4a128b5f
	Checksum: 0x42F3DEEE
	Offset: 0x17E8
	Size: 0x293
	Parameters: 6
	Flags: None
*/
function function_92eaa107(trig, sm, var_470f86b1, var_f0b6f220, var_a6b912d3, var_5b64aa9b)
{
	tr = GetEnt(trig, "targetname");
	tr waittill("trigger");
	spawner::add_global_spawn_function("axis", &function_18de558f);
	spawn_manager::enable(sm);
	spawn_manager::enable(var_470f86b1);
	vehicle::add_spawn_function("zone01_hunter", &function_8273bb26);
	var_17644d42 = GetEnt("zone01_hunter", "targetname");
	veh = vehicle::_vehicle_spawn(var_17644d42);
	spawners = GetEntArray("dummy_runners_01", "targetname");
	foreach(s in spawners)
	{
		s thread function_59a7e387();
	}
	level flag::wait_till(var_f0b6f220);
	spawn_manager::disable(sm);
	spawn_manager::disable(var_470f86b1);
	spawner::remove_global_spawn_function("axis", &function_18de558f);
	level flag::wait_till(var_a6b912d3);
	if(isdefined(var_5b64aa9b))
	{
		level flag::set(var_5b64aa9b);
	}
}

/*
	Name: function_18de558f
	Namespace: namespace_4a128b5f
	Checksum: 0x7F39EAE8
	Offset: 0x1A88
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_18de558f()
{
	self.dontDropWeapon = 1;
}

/*
	Name: function_8273bb26
	Namespace: namespace_4a128b5f
	Checksum: 0x37AB5216
	Offset: 0x1AA0
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_8273bb26()
{
	self endon("death");
	self endon("deleted");
	level flag::wait_till("destroy_defenses_completed");
	self ai::set_ignoreall(1);
	self.goalRadius = 32;
	var_25e662d3 = GetEnt("zone01_hunter_goal", "targetname");
	var_25e662d3.radius = 32;
	self SetNearGoalNotifyDist(32);
	self SetVehGoalPos(var_25e662d3.origin, 1);
	self waittill("goal");
	self delete();
	self notify("deleted");
}

/*
	Name: function_59a7e387
	Namespace: namespace_4a128b5f
	Checksum: 0x96AC68E8
	Offset: 0x1BB8
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_59a7e387()
{
	level endon("hash_4af9ae51");
	while(1)
	{
		Soldier = self spawner::spawn();
		if(isdefined(Soldier))
		{
			Soldier waittill("death");
		}
		else
		{
			wait(0.05);
		}
		self.count = 1;
		wait(3);
	}
}

/*
	Name: function_b63b8588
	Namespace: namespace_4a128b5f
	Checksum: 0xEF398114
	Offset: 0x1C38
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_b63b8588()
{
	thread function_f0eb736e();
	thread function_16f0ef2b();
	thread function_44f51c2d();
}

/*
	Name: function_44e145d1
	Namespace: namespace_4a128b5f
	Checksum: 0xE4E4241B
	Offset: 0x1C78
	Size: 0x2D3
	Parameters: 1
	Flags: None
*/
function function_44e145d1(var_e413e785)
{
	sm = "spawn_manager_egyptian_defend1";
	var_ad81c50c = "spawn_manager_hack_zone03_1";
	Array::thread_all(GetEntArray("egyptian_spawner_01", "targetname"), &spawner::add_spawn_function, &function_2f71981c);
	callback::on_ai_damage(&function_40cfc8f4);
	thread function_5433cddd();
	spawner::add_global_spawn_function("axis", &function_18de558f);
	wait(3);
	thread function_caae752c();
	util::function_d8eaed3d(5);
	spawn_manager::enable(sm);
	spawn_manager::enable(var_ad81c50c);
	level flag::wait_till(var_e413e785);
	spawn_manager::disable(sm);
	spawn_manager::disable(var_ad81c50c);
	callback::remove_on_ai_damage(&function_40cfc8f4);
	level flag::set("hack_zone03_1_finished");
	wait(5);
	var_7ead86e5 = spawn_manager::get_ai(sm);
	var_7c0a3add = spawn_manager::get_ai(var_ad81c50c);
	var_7ead86e5 = ArrayCombine(var_7ead86e5, var_7c0a3add, 0, 0);
	var_7ead86e5 = ArrayCombine(var_7ead86e5, level.var_79168bae, 0, 0);
	spawner::remove_global_spawn_function("axis", &function_18de558f);
	level waittill("hash_476bcf62");
	level flag::set("flag_force_off_dust");
	wait(3);
	Array::thread_all(var_7ead86e5, &delete_me);
}

/*
	Name: delete_me
	Namespace: namespace_4a128b5f
	Checksum: 0x2709E907
	Offset: 0x1F58
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function delete_me()
{
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: function_5433cddd
	Namespace: namespace_4a128b5f
	Checksum: 0xA23439D4
	Offset: 0x1F88
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_5433cddd()
{
	t = GetEnt("egyptian_defend_reached_trig", "targetname");
	if(isdefined(t))
	{
		t TriggerEnable(1);
	}
	wait(20);
	if(!level flag::get("egyptian_defend_reached"))
	{
		level flag::set("egyptian_defend_reached");
	}
	if(isdefined(t))
	{
		t TriggerEnable(0);
	}
}

/*
	Name: function_40cfc8f4
	Namespace: namespace_4a128b5f
	Checksum: 0xA112CB9
	Offset: 0x2048
	Size: 0x243
	Parameters: 1
	Flags: None
*/
function function_40cfc8f4(params)
{
	if(!level flag::get("egyptian_defend_reached") && isPlayer(params.eAttacker))
	{
		level flag::set("egyptian_defend_reached");
	}
	else if(!level flag::get("egyptian_defend_reached") && !isPlayer(params.eAttacker))
	{
		return;
	}
	if(!isdefined(level.var_27aeb908))
	{
		level.var_27aeb908 = 0;
		level.var_ff73cf2d = 0;
		level.var_103b592a = 0;
	}
	if(isPlayer(params.eAttacker) && isdefined(self.targetname) && self.targetname == "egyptian_spawner_01_ai")
	{
		level.var_27aeb908 = level.var_27aeb908 + params.iDamage;
		function_ccf5af95();
	}
	if(isPlayer(params.eAttacker) && isdefined(self.team) && self.team == "axis")
	{
		level.var_103b592a = 0;
	}
	if(isdefined(params.eAttacker) && params.eAttacker.team == "axis" && isdefined(self.targetname) && self.targetname == "egyptian_spawner_01_ai")
	{
		level.var_103b592a = level.var_103b592a + 1;
		if(level.var_103b592a >= 7)
		{
			util::missionfailedwrapper_nodeath(&"CP_MI_CAIRO_AQUIFER_KHALILKILLED", &"CP_MI_CAIRO_AQUIFER_EGYPT_FAIL");
		}
	}
}

/*
	Name: function_ccf5af95
	Namespace: namespace_4a128b5f
	Checksum: 0x943CF121
	Offset: 0x2298
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_ccf5af95()
{
	if(!isdefined(level.var_26ee895f))
	{
		level.var_26ee895f = 1;
		level.var_70c85b56 = [];
		Array::add(level.var_70c85b56, "khal_friendly_fire_frien_0");
		Array::add(level.var_70c85b56, "khal_watch_your_fire_you_0");
	}
	if(level.var_27aeb908 > level.var_26ee895f * 850)
	{
		level thread dialog::remote(level.var_70c85b56[level.var_26ee895f % 2]);
		level.var_26ee895f++;
	}
}

/*
	Name: function_caae752c
	Namespace: namespace_4a128b5f
	Checksum: 0x99EC1590
	Offset: 0x2358
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_caae752c()
{
}

/*
	Name: function_2f71981c
	Namespace: namespace_4a128b5f
	Checksum: 0xC06C50ED
	Offset: 0x2368
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_2f71981c()
{
	self util::magic_bullet_shield();
	self.dontDropWeapon = 1;
}

/*
	Name: function_f0eb736e
	Namespace: namespace_4a128b5f
	Checksum: 0x1C08D61A
	Offset: 0x2398
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_f0eb736e()
{
	thread function_bd9f11ed();
	thread function_254b71e5();
	vehicle::add_spawn_function("port_vtol1", &function_6c135aa8);
	vehicle::add_spawn_function("port_vtol2", &function_6c135aa8);
	vehicle::add_spawn_function("defend_1_2_hunter_1", &function_1c36248b);
	vehicle::add_spawn_function("defend_1_2_hunter_2", &function_1c36248b);
	var_4208e495 = GetEnt("defend_1_2_hunter_1", "targetname");
	var_680b5efe = GetEnt("defend_1_2_hunter_2", "targetname");
	var_f3ed94cd = "spawn_manager_hack_zone01_2_wave1";
	var_19f00f36 = "spawn_manager_hack_zone01_2_wave2";
	var_3ff2899f = "spawn_manager_hack_zone01_2_wave3";
	var_5d8f4916 = "trig_veh_hack1_2a";
	var_378ccead = "trig_veh_hack1_2b";
	thread function_e8e3d4b4("port", "destroy_defenses_completed", "exterior_hack_trig_left_1", "exterior_hack_trig_left_1_started", "exterior_hack_trig_left_1_finished", var_5d8f4916, var_378ccead, var_4208e495, var_680b5efe, var_f3ed94cd, var_19f00f36, var_3ff2899f, "exterior_hack_trig_left_1_finished", "pre_hack_01_2_volume", "aquifer_zone_1_left", "left_pad_volume");
}

/*
	Name: function_16f0ef2b
	Namespace: namespace_4a128b5f
	Checksum: 0x5AE86273
	Offset: 0x25A0
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_16f0ef2b()
{
	thread function_e3a18c56();
	vehicle::add_spawn_function("res_vtol1", &function_6c135aa8);
	vehicle::add_spawn_function("res_vtol2", &function_6c135aa8);
	vehicle::add_spawn_function("defend_1_1_hunter_1", &function_1c36248b);
	vehicle::add_spawn_function("defend_1_1_hunter_1", &function_1c36248b);
	var_6a43b028 = GetEnt("defend_1_1_hunter_1", "targetname");
	var_dc4b1f63 = GetEnt("defend_1_1_hunter_2", "targetname");
	var_9a9ac320 = "spawn_manager_hack_zone01_1_wave1";
	var_ca2325b = "spawn_manager_hack_zone01_1_wave2";
	var_e69fb7f2 = "spawn_manager_hack_zone01_1_wave3";
	var_5d8f4916 = "trig_veh_hack1_1a";
	var_378ccead = "trig_veh_hack1_1b";
	thread function_e8e3d4b4("residential", "destroy_defenses_completed", "exterior_hack_trig_right_1", "exterior_hack_trig_right_1_started", "exterior_hack_trig_right_1_finished", var_5d8f4916, var_378ccead, var_6a43b028, var_dc4b1f63, var_9a9ac320, var_ca2325b, var_e69fb7f2, "exterior_hack_trig_right_1_finished", "hack_01_1_volume", "aquifer_zone_1_right", "right_pad_volume");
}

/*
	Name: function_254b71e5
	Namespace: namespace_4a128b5f
	Checksum: 0xE07BD2FE
	Offset: 0x2798
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_254b71e5()
{
	level flag::wait_till("flag_port_land_enemy_shift1");
}

/*
	Name: function_6c135aa8
	Namespace: namespace_4a128b5f
	Checksum: 0xFD4ED0AA
	Offset: 0x27C8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_6c135aa8()
{
	Target_Set(self);
}

/*
	Name: function_e8e3d4b4
	Namespace: namespace_4a128b5f
	Checksum: 0xBBF6F8FD
	Offset: 0x27F0
	Size: 0x2EB
	Parameters: 16
	Flags: None
*/
function function_e8e3d4b4(zone, flag, var_3ab33977, var_b96ae653, var_57b589ae, var_1543d260, var_874b419b, var_82491bec, var_f4508b27, var_35a5f3d4, var_a7ad630f, var_81aae8a6, var_e413e785, var_2b2ece93, var_735cecc8, var_7b82a236)
{
	level flag::wait_till(flag);
	var_9ff423eb = GetEnt(var_3ab33977, "targetname");
	var_9ff423eb TriggerEnable(1);
	var_ee69678 = GetEnt(var_2b2ece93, "targetname");
	var_2d7c1aa2 = GetEnt(var_735cecc8, "targetname");
	guys = GetAITeamArray("axis");
	foreach(guy in guys)
	{
		if(isdefined(guy))
		{
			if(guy istouching(var_2d7c1aa2))
			{
				thread function_3b8a6405(guy, var_ee69678);
			}
		}
	}
	level flag::wait_till(var_b96ae653);
	thread function_1a2672d9(zone);
	thread function_346a6ba8(zone, var_9ff423eb, var_1543d260, var_874b419b, var_82491bec, var_f4508b27, var_35a5f3d4, var_a7ad630f, var_81aae8a6);
	level flag::wait_till(var_57b589ae);
	if(zone == "port")
	{
		level notify("hash_c8354b43");
	}
	if(zone == "residential")
	{
		level notify("hash_952639a0");
	}
	thread function_ecb1c055(var_735cecc8, var_7b82a236);
}

/*
	Name: function_1a2672d9
	Namespace: namespace_4a128b5f
	Checksum: 0xF150B1D3
	Offset: 0x2AE8
	Size: 0x7A3
	Parameters: 1
	Flags: None
*/
function function_1a2672d9(zone)
{
	if(zone == "port")
	{
		org = GetEnt("kayne_hacking_left", "targetname");
		wait(30);
		exploder::exploder("hack01_stage01");
		org PlayLoopSound("evt_tower_sparks_lyr_01");
		wait(10);
		exploder::exploder("hack01_stage02");
		org PlayLoopSound("evt_tower_sparks_lyr_02");
		wait(10);
		exploder::exploder("hack01_stage03");
		org PlayLoopSound("evt_tower_sparks_lyr_03");
		wait(10);
		exploder::exploder("hack01_stage04");
		org PlayLoopSound("evt_tower_sparks_lyr_04");
		playsoundatposition("evt_tower_overload", org.origin);
		wait(10);
		exploder::exploder("hack01_stage05");
		foreach(player in level.players)
		{
			playsoundatposition("evt_exp_electrical", org.origin);
			player PlayRumbleOnEntity("tank_damage_heavy_mp");
			Earthquake(0.35, 0.5, player.origin, 325);
		}
		wait(5);
		foreach(player in level.players)
		{
			playsoundatposition("evt_exp_electrical", org.origin);
			player PlayRumbleOnEntity("tank_damage_heavy_mp");
			Earthquake(0.75, 0.7, player.origin, 325);
		}
		org StopLoopSound(0.1);
		exploder::exploder_stop("hack01_stage01");
		exploder::exploder_stop("hack01_stage02");
		exploder::exploder_stop("hack01_stage03");
		exploder::exploder_stop("hack01_stage04");
	}
	if(zone == "residential")
	{
		org = GetEnt("kayne_hacking_right", "targetname");
		wait(30);
		exploder::exploder("hack02_stage01");
		org PlayLoopSound("evt_tower_sparks_lyr_01");
		wait(10);
		exploder::exploder("hack02_stage02");
		org PlayLoopSound("evt_tower_sparks_lyr_02");
		wait(10);
		exploder::exploder("hack02_stage03");
		org PlayLoopSound("evt_tower_sparks_lyr_03");
		wait(10);
		exploder::exploder("hack02_stage04");
		org PlayLoopSound("evt_tower_sparks_lyr_04");
		playsoundatposition("evt_tower_overload", org.origin);
		wait(10);
		exploder::exploder("hack02_stage05");
		foreach(player in level.players)
		{
			playsoundatposition("evt_exp_electrical", org.origin);
			player PlayRumbleOnEntity("tank_damage_heavy_mp");
			Earthquake(0.45, 0.5, player.origin, 325);
		}
		wait(5);
		foreach(player in level.players)
		{
			playsoundatposition("evt_exp_electrical", org.origin);
			player PlayRumbleOnEntity("tank_damage_heavy_mp");
			Earthquake(0.8, 1, player.origin, 400);
		}
		org StopLoopSound(0.1);
		exploder::exploder_stop("hack02_stage01");
		exploder::exploder_stop("hack02_stage02");
		exploder::exploder_stop("hack02_stage03");
		exploder::exploder_stop("hack02_stage04");
	}
}

/*
	Name: function_346a6ba8
	Namespace: namespace_4a128b5f
	Checksum: 0x22656ADA
	Offset: 0x3298
	Size: 0x7C3
	Parameters: 9
	Flags: None
*/
function function_346a6ba8(zone, var_9ff423eb, var_1543d260, var_874b419b, var_82491bec, var_f4508b27, var_35a5f3d4, var_a7ad630f, var_81aae8a6)
{
	level endon("hash_2ba72bcb");
	if(zone == "residential")
	{
		level notify("hash_ac35b0bd");
		thread function_c8bb3155("vol_res_defend_kayne", "exterior_hack_trig_right_1_finished");
	}
	if(zone == "port")
	{
		level notify("hash_794b04e");
		thread function_c8bb3155("vol_port_defend_kayne", "exterior_hack_trig_left_1_finished");
	}
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 ai::set_ignoreall(1);
	}
	while(1)
	{
		wait(1);
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 1)
		{
			if(isdefined(level.var_89ea8991) && isalive(level.var_89ea8991) && level.var_260a842b == 1)
			{
				savegame::function_5d2cdd99();
				thread function_810caddd();
			}
			spawn_manager::enable(var_35a5f3d4);
			wait(4);
			if(zone == "residential")
			{
				level.var_89ea8991 thread dialog::say("kane_multiple_contacts_r_0");
			}
			if(zone == "port")
			{
				level.var_89ea8991 thread dialog::say("kane_more_enemies_coming_0");
			}
			trigger::use(var_1543d260, "targetname");
			if(isdefined(var_82491bec) && level.players.size > 1 && function_a6748659())
			{
				veh = vehicle::_vehicle_spawn(var_82491bec);
				veh thread vehicle::get_on_and_go_path(veh.target);
			}
			break;
		}
		wait(0.25);
	}
	while(1)
	{
		wait(1);
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 30)
		{
			if(zone == "port")
			{
				level.var_89ea8991 dialog::say("kane_more_ground_troops_1");
				level.var_89ea8991 dialog::say("kane_watch_my_six_0");
			}
			wait(3);
			if(zone == "port")
			{
				thread function_ced14faf();
			}
			if(zone == "residential")
			{
				thread function_78d6fd02();
			}
			break;
		}
		wait(0.25);
	}
	while(1)
	{
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 50)
		{
			level notify("hash_213353eb");
			if(zone == "residential")
			{
				level.var_89ea8991 dialog::say("kane_good_job_keep_watch_1");
			}
			if(zone == "port")
			{
				level.var_89ea8991 dialog::say("kane_i_m_halfway_there_k_1");
			}
			spawn_manager::enable(var_a7ad630f);
			if(isdefined(level.var_89ea8991) && isalive(level.var_89ea8991) && level.var_260a842b == 1)
			{
				savegame::function_5d2cdd99();
				thread function_810caddd();
			}
			trigger::use(var_874b419b, "targetname");
			if(isdefined(var_f4508b27) && level.players.size > 2 && function_a6748659() && !isdefined(var_82491bec))
			{
				veh = vehicle::_vehicle_spawn(var_f4508b27);
				veh thread vehicle::get_on_and_go_path(veh.target);
				level.var_89ea8991 dialog::say("kane_watch_out_for_drones_1");
			}
			wait(3);
			if(zone == "residential")
			{
				level.var_89ea8991 dialog::say("kane_tangos_above_us_dea_0");
			}
			if(zone == "port")
			{
				level dialog::remote("hend_look_out_they_re_dr_0");
			}
			break;
		}
		wait(0.25);
	}
	while(1)
	{
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 65)
		{
			if(zone == "residential")
			{
				level.var_89ea8991 dialog::say("kane_getting_close_1");
			}
			if(zone == "port")
			{
				level.var_89ea8991 dialog::say("kane_almost_there_1");
			}
			spawn_manager::enable(var_81aae8a6);
			wait(2);
			if(zone == "residential")
			{
				level.var_89ea8991 dialog::say("kane_watch_out_for_drones_1");
			}
			break;
		}
		wait(0.25);
	}
	while(1)
	{
		if(isdefined(var_9ff423eb) && isdefined(var_9ff423eb.var_a220f04a) && var_9ff423eb.var_a220f04a > 85)
		{
			if(zone == "residential")
			{
				level.var_89ea8991 dialog::say("kane_nearly_done_1");
			}
			if(zone == "port")
			{
				level.var_89ea8991 dialog::say("kane_just_a_little_more_1");
			}
			break;
		}
		wait(0.25);
	}
}

/*
	Name: function_810caddd
	Namespace: namespace_4a128b5f
	Checksum: 0x8157E5CF
	Offset: 0x3A68
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_810caddd()
{
	level flag::set("flag_aqu_save_state");
	wait(5);
	level flag::clear("flag_aqu_save_state");
}

/*
	Name: function_1c36248b
	Namespace: namespace_4a128b5f
	Checksum: 0x8465D8EC
	Offset: 0x3AB8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_1c36248b()
{
	self endon("death");
	self SetThreatBiasGroup("defend_hunters");
	self.var_d3f57f67 = 1;
	setignoremegroup("players_ground", "defend_hunters");
	while(function_a6748659())
	{
		wait(0.5);
	}
	self ai::set_ignoreall(1);
	goalent = GetEnt("zone01_hunter_goal", "targetname");
	self SetNearGoalNotifyDist(32);
	self SetVehGoalPos(goalent.origin, 1);
	self waittill("goal");
	self delete();
}

/*
	Name: function_a6748659
	Namespace: namespace_4a128b5f
	Checksum: 0x2554A924
	Offset: 0x3BE8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_a6748659()
{
	foreach(player in level.activePlayers)
	{
		if(player namespace_84eb777e::player_in_vtol())
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_c8bb3155
	Namespace: namespace_4a128b5f
	Checksum: 0xB650A79F
	Offset: 0x3C88
	Size: 0x20F
	Parameters: 2
	Flags: None
*/
function function_c8bb3155(VOL, flag)
{
	level endon("hash_221e0b70");
	var_368eea5 = GetEnt(VOL, "targetname");
	thread function_5d498f22();
	var_e015a244 = 0;
	var_ac95a522 = 0;
	level.var_260a842b = 0;
	while(!flag::get(flag))
	{
		if(!isalive(level.var_89ea8991))
		{
			return;
		}
		if(util::any_player_is_touching(var_368eea5, "allies"))
		{
			var_ac95a522 = 0;
			level flag::clear("flag_kayne_vulnerable");
			if(!var_e015a244)
			{
				level.var_89ea8991 util::magic_bullet_shield();
				level notify("hash_78a213c8");
				var_e015a244 = 1;
				level.var_260a842b = 1;
			}
		}
		else if(!util::any_player_is_touching(var_368eea5, "allies"))
		{
			while(flag::get("flag_aqu_save_state"))
			{
				wait(0.25);
			}
			var_e015a244 = 0;
			if(!var_ac95a522)
			{
				level.var_89ea8991 thread function_f5a137d2();
				level.var_89ea8991 SetThreatBiasGroup("players_vtol");
				var_ac95a522 = 1;
				level.var_260a842b = 0;
			}
			level flag::set("flag_kayne_vulnerable");
		}
		wait(0.5);
	}
}

/*
	Name: function_f5a137d2
	Namespace: namespace_4a128b5f
	Checksum: 0x8469F1C9
	Offset: 0x3EA0
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_f5a137d2()
{
	level endon("hash_78a213c8");
	level endon("hash_221e0b70");
	level.var_89ea8991 util::stop_magic_bullet_shield();
	level.var_89ea8991.health = 999999;
	level thread function_2a977ecd();
	for(var_8a44a2d4 = 0; var_8a44a2d4 < 5; var_8a44a2d4++)
	{
		self waittill("damage");
	}
	level notify("hash_2ba72bcb");
	level.var_89ea8991 ai::bloody_death();
	util::missionfailedwrapper_nodeath(&"CP_MI_CAIRO_AQUIFER_KANEKILLED", &"CP_MI_CAIRO_AQUIFER_PROTECT_FAIL");
}

/*
	Name: function_2a977ecd
	Namespace: namespace_4a128b5f
	Checksum: 0x326A86E1
	Offset: 0x3F88
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2a977ecd()
{
	level notify("hash_b084268c");
	level endon("hash_b084268c");
	level waittill("hash_221e0b70");
	level.var_89ea8991 util::magic_bullet_shield();
}

/*
	Name: function_5d498f22
	Namespace: namespace_4a128b5f
	Checksum: 0xA1C73746
	Offset: 0x3FD8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_5d498f22()
{
	level endon("hash_221e0b70");
	level endon("hash_2ba72bcb");
	var_687c3dc4 = 0;
	vo_array = [];
	vo_array[vo_array.size] = "kane_what_the_hell_are_yo_1";
	vo_array[vo_array.size] = "kane_where_are_you_going_1";
	vo_array[vo_array.size] = "kane_hey_watch_my_six_0";
	while(1)
	{
		while(level flag::get("flag_kayne_vulnerable"))
		{
			wait(1);
			var_69e9781d = Array::random(vo_array);
			level.var_89ea8991 dialog::say(var_69e9781d);
			if(!var_687c3dc4)
			{
				level notify("hash_67e6e842");
			}
			var_687c3dc4 = 1;
			wait(3);
		}
		wait(0.75);
	}
}

/*
	Name: function_ced14faf
	Namespace: namespace_4a128b5f
	Checksum: 0xF908EA86
	Offset: 0x4100
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_ced14faf()
{
	var_2d7c1aa2 = GetEnt("hack_01_2_volume", "targetname");
	var_5bb53a30 = GetEnt("pre_hack_01_2_volume", "targetname");
	guys = GetAITeamArray("axis");
	foreach(guy in guys)
	{
		if(guy istouching(var_2d7c1aa2))
		{
			thread function_3b8a6405(guy, var_5bb53a30);
		}
	}
}

/*
	Name: function_78d6fd02
	Namespace: namespace_4a128b5f
	Checksum: 0xC91672A1
	Offset: 0x4240
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_78d6fd02()
{
	var_2d7c1aa2 = GetEnt("hack_01_1_volume", "targetname");
	var_5bb53a30 = GetEnt("hack_01_1_volume2", "targetname");
	guys = GetAITeamArray("axis");
	foreach(guy in guys)
	{
		if(guy istouching(var_2d7c1aa2))
		{
			thread function_3b8a6405(guy, var_5bb53a30);
		}
	}
}

/*
	Name: function_ecb1c055
	Namespace: namespace_4a128b5f
	Checksum: 0xEF749045
	Offset: 0x4380
	Size: 0x189
	Parameters: 3
	Flags: None
*/
function function_ecb1c055(var_4897ec9f, var_5bb53a30, var_64f17a00)
{
	var_2d7c1aa2 = GetEnt(var_4897ec9f, "targetname");
	var_68586610 = GetEnt(var_5bb53a30, "targetname");
	guys = GetAITeamArray("axis");
	foreach(guy in guys)
	{
		if(guy istouching(var_2d7c1aa2))
		{
			if(isalive(guy))
			{
				thread function_3b8a6405(guy, var_68586610);
				if(isdefined(var_64f17a00) && var_64f17a00 == 1)
				{
					thread function_10e80b01(guy, 2);
				}
			}
		}
	}
}

/*
	Name: function_10e80b01
	Namespace: namespace_4a128b5f
	Checksum: 0x441ADAE3
	Offset: 0x4518
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_10e80b01(guy, delay)
{
	wait(delay);
	if(isalive(guy))
	{
		guy delete();
	}
}

/*
	Name: function_1ce3cac0
	Namespace: namespace_4a128b5f
	Checksum: 0xDF6B7A77
	Offset: 0x4570
	Size: 0x489
	Parameters: 7
	Flags: None
*/
function function_1ce3cac0(flag, var_b96ae653, var_3ab33977, var_82122952, var_e413e785, var_b96b1ea0, var_1acd98f5)
{
	level flag::wait_till(flag);
	var_9ff423eb = GetEnt(var_3ab33977, "targetname");
	var_9ff423eb TriggerEnable(1);
	spawn_manager::enable(var_82122952);
	level flag::wait_till(var_e413e785);
	spawn_manager::disable(var_82122952);
	VOL = undefined;
	if(isdefined(var_b96b1ea0))
	{
		VOL = GetEnt(var_b96b1ea0, "targetname");
	}
	if(isdefined(VOL))
	{
		leftOvers = spawn_manager::get_ai(var_82122952);
		foreach(dude in leftOvers)
		{
			dude clearentitytarget();
			dude ClearGoalVolume();
			dude ClearForcedGoal();
			thread function_3b8a6405(dude, VOL);
		}
	}
	else if(isdefined(level.var_6657ee03) && isdefined(var_1acd98f5))
	{
		if(var_1acd98f5 == "volume_egyptian_zone02_4")
		{
			ts = struct::get_array("egyptian_defenders_tele", "targetname");
			var_71dd83fd = 0;
			foreach(guy in level.var_6657ee03)
			{
				for(tries = 0; tries < 20; tries++)
				{
					if(isalive(guy))
					{
						if(guy teleport(ts[var_71dd83fd].origin, ts[var_71dd83fd].angles))
						{
							break;
						}
					}
					wait(0.05);
				}
				var_71dd83fd++;
			}
		}
		VOL = GetEnt(var_1acd98f5, "targetname");
		if(isdefined(VOL))
		{
			foreach(dude in level.var_6657ee03)
			{
				if(isalive(dude))
				{
					dude clearentitytarget();
					dude ClearGoalVolume();
					dude ClearForcedGoal();
					thread function_3b8a6405(dude, VOL);
				}
			}
		}
	}
}

/*
	Name: function_34ad69d9
	Namespace: namespace_4a128b5f
	Checksum: 0xF6D7EC0A
	Offset: 0x4A08
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_34ad69d9(trig)
{
	t = GetEnt(trig, "targetname");
	t waittill("trigger");
	if(isdefined(t.script_flag_set))
	{
		level flag::set(t.script_flag_set);
	}
}

/*
	Name: function_ada56725
	Namespace: namespace_4a128b5f
	Checksum: 0x4ECF8A1D
	Offset: 0x4A90
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_ada56725()
{
	struct = GetEnt("kayne_hacking_right", "targetname");
	trig = GetEnt("right_hack_use_trig", "targetname");
	trig waittill("hash_ece70538", activator);
	if(isdefined(level.BZM_AQUIFERDialogue1_4_1Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue1_4_1Callback]]();
	}
	s_scenedef = struct::get_script_bundle("scene", "cin_aqu_01_20_towerright_1st_panelrip");
	if(isdefined(s_scenedef) && isdefined(s_scenedef.objects) && s_scenedef.objects.size > 0)
	{
		s_scenedef.objects[0].RemoveWeapon = 1;
	}
	struct scene::Play("cin_aqu_01_20_towerright_1st_panelrip", activator);
	level flag::set("flag_player_right_tower_done");
	thread function_ad2882a8();
}

/*
	Name: function_ad2882a8
	Namespace: namespace_4a128b5f
	Checksum: 0xEF2686E3
	Offset: 0x4C08
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_ad2882a8()
{
	level endon("hash_2ba72bcb");
	struct = GetEnt("kayne_hacking_right", "targetname");
	struct scene::Play("cin_aqu_01_20_towerright_vign_overload_enter", level.var_89ea8991);
	level notify("hash_571aa0aa");
	struct thread scene::Play("cin_aqu_01_20_towerright_vign_overload_main", level.var_89ea8991);
	level flag::wait_till("exterior_hack_trig_right_1_finished");
	level flag::clear("kayne_starts_overload");
	struct thread scene::Play("cin_aqu_01_20_towerright_vign_overload_exit", level.var_89ea8991);
	if(!level flag::get("exterior_hack_trig_left_1_finished"))
	{
		level.var_89ea8991 dialog::say("kane_comms_down_let_s_ge_0");
		level thread function_36a1fd93();
	}
	if(isdefined(level.var_89ea8991) && isalive(level.var_89ea8991) && !flag::get("flag_kayne_vulnerable"))
	{
		wait(0.05);
		level.var_89ea8991 util::magic_bullet_shield();
		savegame::function_5d2cdd99();
	}
	wait(0.25);
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 ai::set_ignoreall(0);
	}
	level notify("hash_221e0b70");
}

/*
	Name: function_36a1fd93
	Namespace: namespace_4a128b5f
	Checksum: 0x6449FB38
	Offset: 0x4E18
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_36a1fd93()
{
	level dialog::remote("hend_we_ve_got_more_quad_0", 1);
	level dialog::remote("kane_on_our_way_0", 0.25);
}

/*
	Name: function_f9e22dfc
	Namespace: namespace_4a128b5f
	Checksum: 0x6323038D
	Offset: 0x4E70
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_f9e22dfc()
{
	struct = GetEnt("kayne_hacking_left", "targetname");
	trig = GetEnt("left_hack_use_trig", "targetname");
	trig waittill("hash_ece70538", activator);
	struct scene::Play("cin_aqu_01_20_towerleft_1st_panelrip", activator);
	level flag::set("flag_player_left_tower_done");
	thread function_9b151b9b();
}

/*
	Name: function_9b151b9b
	Namespace: namespace_4a128b5f
	Checksum: 0xA68842DE
	Offset: 0x4F48
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_9b151b9b()
{
	level endon("hash_2ba72bcb");
	struct = GetEnt("kayne_hacking_left", "targetname");
	struct scene::Play("cin_aqu_01_20_towerleft_vign_overload_enter", level.var_89ea8991);
	level notify("hash_571aa0aa");
	struct thread scene::Play("cin_aqu_01_20_towerleft_vign_overload_main", level.var_89ea8991);
	level flag::wait_till("exterior_hack_trig_left_1_finished");
	level flag::clear("kayne_starts_overload");
	struct thread scene::Play("cin_aqu_01_20_towerleft_vign_overload_exit", level.var_89ea8991);
	if(!level flag::get("exterior_hack_trig_right_1_finished"))
	{
		level.var_89ea8991 dialog::say("kane_enemy_comms_cut_we_0");
		level thread function_36a1fd93();
	}
	if(isdefined(level.var_89ea8991) && isalive(level.var_89ea8991) && !flag::get("flag_kayne_vulnerable"))
	{
		wait(0.05);
		level.var_89ea8991 util::magic_bullet_shield();
		savegame::function_5d2cdd99();
	}
	wait(0.25);
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 ai::set_ignoreall(0);
	}
	level notify("hash_221e0b70");
}

/*
	Name: function_bd9f11ed
	Namespace: namespace_4a128b5f
	Checksum: 0x28E754A9
	Offset: 0x5158
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_bd9f11ed()
{
	thread function_66aabab2("notify_defend_hack1_started", "flag_kayne_at_hack1");
	thread function_f9e22dfc();
	thread function_f250176e();
	landing_zone = -1;
	while(landing_zone != 1)
	{
		level waittill("vtol_landed", player, landing_zone);
	}
	level.var_89ea8991 = namespace_84eb777e::function_30343b22("kayne_hack1");
	wait(1);
	level flag::wait_till("finished_first_landing_vo");
	thread function_f83cec9b();
}

/*
	Name: function_f250176e
	Namespace: namespace_4a128b5f
	Checksum: 0x9A744B52
	Offset: 0x5238
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_f250176e()
{
	level flag::wait_till("exterior_hack_trig_left_1_started");
	level notify("hash_79051ffd");
	level.var_89ea8991 dialog::say("kane_this_will_take_some_0", 1);
	level.var_89ea8991 dialog::say("kane_spread_out_don_t_ge_0", 4);
	wait(1);
	level flag::wait_till("exterior_hack_trig_left_1_finished");
	wait(1);
	spawn_manager::enable("spawn_manager_takeoff_port");
	trigger::use("kayne_colors_left_takeoff", "targetname");
	wait(1);
	landing_zone = -1;
	while(landing_zone != 1)
	{
		level waittill("hash_8d91bdcf", player, landing_zone);
	}
	if(isdefined(level.var_89ea8991) && level.var_1226dab0 == 0)
	{
		level.var_89ea8991 delete();
	}
}

/*
	Name: function_f83cec9b
	Namespace: namespace_4a128b5f
	Checksum: 0x6CF46987
	Offset: 0x5398
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f83cec9b()
{
	level endon("hash_79051ffd");
	wait(5);
	level.var_89ea8991 dialog::say("kane_cover_to_cover_up_t_0");
	wait(3);
	level.var_89ea8991 dialog::say("kane_clean_up_remaining_t_0");
}

/*
	Name: function_e3a18c56
	Namespace: namespace_4a128b5f
	Checksum: 0x9CA85130
	Offset: 0x5400
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_e3a18c56()
{
	thread function_66aabab2("notify_defend_hack2_started", "flag_kayne_at_hack2");
	thread function_ada56725();
	thread function_932a5979();
	landing_zone = -1;
	while(landing_zone != 2)
	{
		level waittill("vtol_landed", player, landing_zone);
	}
	level.var_89ea8991 = namespace_84eb777e::function_30343b22("kayne_hack2");
	wait(1);
	level flag::wait_till("finished_first_landing_vo");
	thread function_db00cade();
}

/*
	Name: function_db00cade
	Namespace: namespace_4a128b5f
	Checksum: 0xA80E6CB3
	Offset: 0x54E0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_db00cade()
{
	level endon("hash_bd6f4584");
	wait(3);
	level.var_89ea8991 dialog::say("kane_push_forward_0");
	wait(5);
	level.var_89ea8991 dialog::say("kane_get_moving_i_ll_cov_0");
	wait(8);
	level.var_89ea8991 dialog::say("kane_the_array_is_just_up_0");
}

/*
	Name: function_932a5979
	Namespace: namespace_4a128b5f
	Checksum: 0xC0542043
	Offset: 0x5570
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_932a5979()
{
	level flag::wait_till("exterior_hack_trig_right_1_started");
	level notify("hash_bd6f4584");
	level.var_89ea8991 dialog::say("kane_i_can_take_it_from_h_0", 1);
	level flag::wait_till("exterior_hack_trig_right_1_finished");
	wait(1);
	spawn_manager::enable("spawn_manager_takeoff_residential");
	trigger::use("kayne_colors_right_takeoff", "targetname");
	landing_zone = -1;
	while(landing_zone != 2)
	{
		level waittill("hash_8d91bdcf", player, landing_zone);
	}
	if(isdefined(level.var_89ea8991) && level.var_1226dab0 == 0)
	{
		level.var_89ea8991 delete();
	}
}

/*
	Name: function_44f51c2d
	Namespace: namespace_4a128b5f
	Checksum: 0x73DB9126
	Offset: 0x56A0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_44f51c2d()
{
	level flag::wait_till_all(Array("exterior_hack_trig_right_1_finished", "exterior_hack_trig_left_1_finished"));
	level.var_89ea8991 dialog::say("kane_mission_complete_le_0", 2);
}

/*
	Name: function_66aabab2
	Namespace: namespace_4a128b5f
	Checksum: 0x12F88741
	Offset: 0x5708
	Size: 0x265
	Parameters: 2
	Flags: None
*/
function function_66aabab2(var_b031addf, flag)
{
	level endon(var_b031addf);
	level flag::wait_till(flag);
	if(!isdefined(level.var_518d7942))
	{
		level.var_518d7942 = [];
		if(!isdefined(level.var_518d7942))
		{
			level.var_518d7942 = [];
		}
		else if(!IsArray(level.var_518d7942))
		{
			level.var_518d7942 = Array(level.var_518d7942);
		}
		level.var_518d7942[level.var_518d7942.size] = "kane_boot_up_the_array_0";
		if(!isdefined(level.var_518d7942))
		{
			level.var_518d7942 = [];
		}
		else if(!IsArray(level.var_518d7942))
		{
			level.var_518d7942 = Array(level.var_518d7942);
		}
		level.var_518d7942[level.var_518d7942.size] = "kane_start_the_process_0";
		if(!isdefined(level.var_518d7942))
		{
			level.var_518d7942 = [];
		}
		else if(!IsArray(level.var_518d7942))
		{
			level.var_518d7942 = Array(level.var_518d7942);
		}
		level.var_518d7942[level.var_518d7942.size] = "kane_start_the_overload_p_0";
	}
	var_364c5984 = Array(1, 8, 15);
	var_d44c15f4 = ArrayCopy(level.var_518d7942);
	for(x = 0; x < var_d44c15f4.size; x++)
	{
		wait(var_364c5984[x]);
		Array::remove_index(level.var_518d7942, x);
		level.var_89ea8991 dialog::say(var_d44c15f4[x]);
	}
}

/*
	Name: function_3b8a6405
	Namespace: namespace_4a128b5f
	Checksum: 0xCB32C3B6
	Offset: 0x5978
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function function_3b8a6405(dude, VOL)
{
	dude endon("death");
	dude clearentitytarget();
	dude ClearGoalVolume();
	dude ClearForcedGoal();
	dude ai::set_ignoreall(1);
	wait(0.05);
	dude setgoalvolume(VOL);
	dude ai::set_ignoreall(0);
}

/*
	Name: function_5f0c85a2
	Namespace: namespace_4a128b5f
	Checksum: 0x8B41E4A2
	Offset: 0x5A38
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_5f0c85a2()
{
	thread function_f065e00e();
	thread function_790839b7();
	thread function_d123f7f2();
	thread function_36f5a1f4();
	thread function_4e5e42a9();
	thread function_5bda03b6();
	level flag::wait_till("flag_egyptian_hacking_completed");
}

/*
	Name: function_f065e00e
	Namespace: namespace_4a128b5f
	Checksum: 0x9132A007
	Offset: 0x5AC8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_f065e00e()
{
	level flag::wait_till("destroy_defenses_completed");
	guys = spawner::get_ai_group_ai("dummy_runners_01");
	if(isdefined(guys))
	{
		thread kill_guys(guys);
	}
}

/*
	Name: function_2d0258ff
	Namespace: namespace_4a128b5f
	Checksum: 0x7121EAA5
	Offset: 0x5B40
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2d0258ff()
{
	var_b56f2b95 = spawner::get_ai_group_ai("zone01_rpgs");
	if(isdefined(var_b56f2b95))
	{
		thread kill_guys(var_b56f2b95);
	}
}

/*
	Name: function_790839b7
	Namespace: namespace_4a128b5f
	Checksum: 0xD6F76FDE
	Offset: 0x5B98
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_790839b7()
{
	landing_zone = -1;
	while(landing_zone != 1)
	{
		level waittill("vtol_landed", player, landing_zone);
	}
	guys1 = spawn_manager::get_ai("spawn_manager_zone01b");
	thread kill_guys(guys1);
}

/*
	Name: function_d123f7f2
	Namespace: namespace_4a128b5f
	Checksum: 0xCACF66FE
	Offset: 0x5C20
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d123f7f2()
{
	landing_zone = -1;
	while(landing_zone != 2)
	{
		level waittill("vtol_landed", player, landing_zone);
	}
	guys1 = spawn_manager::get_ai("spawn_manager_zone01");
	thread kill_guys(guys1);
}

/*
	Name: function_4e5e42a9
	Namespace: namespace_4a128b5f
	Checksum: 0x608A0A13
	Offset: 0x5CA8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_4e5e42a9()
{
	level flag::wait_till("hack_terminal_left_completed");
	level waittill("hash_8d91bdcf");
	guys1 = spawn_manager::get_ai("spawn_manager_zone01");
	thread kill_guys(guys1);
	guys2 = spawn_manager::get_ai("spawn_manager_hack_zone01_2_wave1");
	thread kill_guys(guys2);
	guys3 = spawn_manager::get_ai("spawn_manager_hack_zone01_2_wave2");
	thread kill_guys(guys3);
	guys4 = spawn_manager::get_ai("spawn_manager_hack_zone01_2_wave3");
	thread kill_guys(guys4);
	guys5 = spawn_manager::get_ai("spawn_manager_land_port");
	thread kill_guys(guys5);
	guys6 = spawn_manager::get_ai("spawn_manager_takeoff_port");
	thread kill_guys(guys6);
}

/*
	Name: function_36f5a1f4
	Namespace: namespace_4a128b5f
	Checksum: 0x2BD65750
	Offset: 0x5E38
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_36f5a1f4()
{
	level flag::wait_till("hack_terminal_right_completed");
	level waittill("hash_8d91bdcf");
	guys1 = spawn_manager::get_ai("spawn_manager_zone01b");
	thread kill_guys(guys1);
	guys2 = spawn_manager::get_ai("spawn_manager_hack_zone01_1_wave1");
	thread kill_guys(guys2);
	guys3 = spawn_manager::get_ai("spawn_manager_hack_zone01_1_wave2");
	thread kill_guys(guys3);
	guys4 = spawn_manager::get_ai("spawn_manager_hack_zone01_1_wave3");
	thread kill_guys(guys4);
	guys5 = spawn_manager::get_ai("spawn_manager_land_residential");
	thread kill_guys(guys5);
	guys6 = spawn_manager::get_ai("spawn_manager_takeoff_residential");
	thread kill_guys(guys6);
}

/*
	Name: function_5bda03b6
	Namespace: namespace_4a128b5f
	Checksum: 0x6EDB2DEF
	Offset: 0x5FC8
	Size: 0x27D
	Parameters: 0
	Flags: None
*/
function function_5bda03b6()
{
	level flag::wait_till_all(Array("hack_terminal_right_completed", "hack_terminal_left_completed"));
	level waittill("hash_8d91bdcf");
	guys1 = spawn_manager::get_ai("spawn_manager_zone01");
	thread kill_guys(guys1);
	guys2 = spawn_manager::get_ai("spawn_manager_zone01");
	thread kill_guys(guys2);
	guys3 = spawn_manager::get_ai("spawn_manager_hack_zone01_1_wave1");
	thread kill_guys(guys3);
	guys4 = spawn_manager::get_ai("spawn_manager_hack_zone01_1_wave2");
	thread kill_guys(guys4);
	guys5 = spawn_manager::get_ai("spawn_manager_hack_zone01_1_wave3");
	thread kill_guys(guys5);
	guys6 = spawn_manager::get_ai("spawn_manager_hack_zone01_2_wave1");
	thread kill_guys(guys6);
	var_2e7e5acc = spawn_manager::get_ai("spawn_manager_hack_zone01_2_wave2");
	thread kill_guys(var_2e7e5acc);
	var_d8680d1b = spawn_manager::get_ai("spawn_manager_hack_zone01_2_wave3");
	thread kill_guys(var_d8680d1b);
	var_62fd3a = 4;
	for(i = 1; i <= var_62fd3a; i++)
	{
		var_1560b77d = spawner::get_ai_group_ai("enemy_vtol_riders_" + i);
		thread kill_guys(var_1560b77d);
	}
}

/*
	Name: kill_guys
	Namespace: namespace_4a128b5f
	Checksum: 0x499ED8A8
	Offset: 0x6250
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function kill_guys(guys)
{
	wait(10);
	if(isdefined(guys))
	{
		foreach(guy in guys)
		{
			if(isdefined(guy))
			{
				guy kill();
			}
		}
	}
}

/*
	Name: function_c836830
	Namespace: namespace_4a128b5f
	Checksum: 0xEF469558
	Offset: 0x6308
	Size: 0x1F1
	Parameters: 3
	Flags: None
*/
function function_c836830(var_1b052e61, wait_flag, waves)
{
	level flag::wait_till(wait_flag);
	var_11d8734e = 2;
	z = 1;
	if(var_1b052e61 == 2)
	{
		var_11d8734e = 6;
		z = 4;
	}
	guys = [];
	guys = spawn_manager::get_ai("spawn_manager_zone0" + var_1b052e61);
	while(z <= var_11d8734e)
	{
		sm = "spawn_manager_hack_zone0" + var_1b052e61 + "_" + z;
		guys = ArrayCombine(guys, spawn_manager::get_ai(sm), 0, 0);
		spawn_manager::kill(sm);
		z++;
	}
	spawn_manager::kill("spawn_manager_zone0" + var_1b052e61, 1);
	wait(10);
	foreach(guy in guys)
	{
		if(isdefined(guy))
		{
			guy delete();
		}
	}
}

