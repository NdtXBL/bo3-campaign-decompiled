#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_elevator;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_accolades;
#using scripts\cp\lotus_util;
#using scripts\shared\ai\phalanx;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_20a6d5c1;

/*
	Name: function_ddf518df
	Namespace: namespace_20a6d5c1
	Checksum: 0xF34561A3
	Offset: 0x1F60
	Size: 0x77B
	Parameters: 2
	Flags: None
*/
function function_ddf518df(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level scene::init("vtol_hallway_ravens", "targetname");
		scene::skipto_end("p7_fxanim_cp_lotus_security_station_door_bundle");
		scene::skipto_end("p7_fxanim_cp_lotus_monitor_security_bundle");
		scene::skipto_end_noai("cin_lot_04_09_security_1st_kickgrate");
		var_2820f5e9 = GetEntArray("security_door_intact", "targetname");
		Array::run_all(var_2820f5e9, &delete);
		level flag::wait_till("all_players_spawned");
		skipto::teleport_ai(str_objective);
		level thread function_80318e87();
		namespace_431cac9::function_e58f5689();
		level thread scene::Play("to_detention_center1_initial_bodies", "targetname");
		load::function_a2995f22();
	}
	level.var_2fd26037 ai::set_behavior_attribute("useGrenades", 0);
	level thread namespace_431cac9::function_e577c596("vtol_hallway_ravens", GetEnt("trig_vtol_hallway_ravens", "targetname"), "vtol_hallway_raven_decals", "cp_lotus_projection_ravengrafitti3");
	if(SessionModeIsCampaignZombiesGame())
	{
		thread function_383b165b();
	}
	level namespace_431cac9::function_484bc3aa(0);
	battlechatter::function_d9f49fba(0);
	spawner::add_spawn_function_group("zipline_guy", "script_noteworthy", &util::magic_bullet_shield);
	spawner::add_spawn_function_group("zipline_guy", "script_noteworthy", &ai::set_behavior_attribute, "useGrenades", 0);
	spawner::add_spawn_function_group("zipline_victims", "targetname", &function_cba3d0d4);
	spawner::add_spawn_function_group("vtol_hallway_enemy", "script_noteworthy", &function_f2e34115);
	spawner::add_spawn_function_group("vtol_shooting_victim", "targetname", &function_f2e34115);
	spawner::add_spawn_function_group("vtol_shooting_victim_robot", "targetname", &function_f2e34115);
	spawner::add_spawn_function_group("landing_area_ally_victim", "targetname", &function_959c5937);
	vehicle::add_spawn_function("detention_center_vtol", &function_e907511f);
	vehicle::add_spawn_function("lotus_vtol_hallway_destruction_vtol", &function_d3a1377e);
	var_1083f981 = GetEnt("vtol_hallway_open_door", "targetname");
	var_1083f981 TriggerEnable(0);
	level flag::set("prometheus_otr_cleared");
	level thread function_6ed44248(var_74cd64bc);
	level.var_2fd26037 ai::set_goal("hendricks_door_node", "targetname", 1);
	level.var_2fd26037 thread function_ec8c4d64();
	spawn_manager::enable("sm_vtol_shooting_victims");
	spawn_manager::enable("sm_vtol_hallway_robot_spawns");
	level flag::wait_till("hendricks_reached_vtol_hallway_door");
	level thread function_bad9594a();
	var_1083f981 = GetEnt("vtol_hallway_open_door", "targetname");
	var_1083f981 TriggerEnable(1);
	var_1083f981 waittill("trigger");
	level thread function_df5da340();
	level.var_2fd26037 thread dialog::say("hend_friendlys_repelling_0", 2.4);
	level waittill("hash_8c18560c");
	level flag::set("zipline_done");
	if(!SessionModeIsCampaignZombiesGame())
	{
		function_383b165b();
	}
	trigger::use("hendricks_shooting_starts_color_trigger");
	level.var_2fd26037 ai::set_behavior_attribute("coverIdleOnly", 0);
	level waittill("hash_facd74a1");
	level thread scene::Play("p7_fxanim_cp_lotus_vtol_hallway_destruction_01_bundle");
	vehicle::simple_spawn_single("lotus_vtol_hallway_destruction_vtol", 1);
	level thread function_613df5d9(13.3);
	var_4c24b478 = GetEntArray("ammo_cache", "script_noteworthy");
	foreach(e_ammo_cache in var_4c24b478)
	{
		e_ammo_cache.gameobject gameobjects::hide_waypoint();
	}
	function_2143f8c4();
}

/*
	Name: function_bad9594a
	Namespace: namespace_20a6d5c1
	Checksum: 0x9BD30B78
	Offset: 0x26E8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_bad9594a()
{
	playsoundatposition("evt_vtolhallway_walla", (-5564, 2906, 4158));
	level waittill("hash_e54c697");
	playsoundatposition("evt_vtolhallway_walla_death", (-5564, 2906, 4158));
}

/*
	Name: function_ec8c4d64
	Namespace: namespace_20a6d5c1
	Checksum: 0xADD72DA5
	Offset: 0x2750
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_ec8c4d64()
{
	level endon("hash_1e0c171f");
	level.var_2fd26037 ai::set_ignoreall(1);
	self waittill("goal");
	self ai::set_behavior_attribute("coverIdleOnly", 1);
}

/*
	Name: function_383b165b
	Namespace: namespace_20a6d5c1
	Checksum: 0x4C3C2A1C
	Offset: 0x27B8
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_383b165b()
{
	var_58576bff = GetEnt("vtol_hallway_door_left", "targetname");
	var_bbc00d9a = GetEnt("vtol_hallway_door_right", "targetname");
	var_58576bff MoveY(100, 1);
	var_bbc00d9a MoveY(-100, 1);
	var_bbc00d9a waittill("movedone");
	level.var_2fd26037 ai::set_ignoreall(0);
	level notify("hash_1e0c171f");
}

/*
	Name: function_80318e87
	Namespace: namespace_20a6d5c1
	Checksum: 0x8A308EAC
	Offset: 0x2898
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_80318e87(var_6dc777dc)
{
	if(!isdefined(var_6dc777dc))
	{
		var_6dc777dc = 0;
	}
	level thread scene::init("p7_fxanim_cp_lotus_vtol_hallway_flyby_bundle");
	if(var_6dc777dc)
	{
		flag::wait_till("security_station_breach_ai_cleared");
	}
	level thread function_9e1bef17();
	trigger::wait_till("vtol_fly_by");
	playsoundatposition("evt_vtolhallway_flyby", (-7235, 3447, 4079));
	level scene::add_scene_func("p7_fxanim_cp_lotus_vtol_hallway_flyby_bundle", &function_bb4e63f9, "play");
	level thread scene::Play("p7_fxanim_cp_lotus_vtol_hallway_flyby_bundle");
}

/*
	Name: function_bb4e63f9
	Namespace: namespace_20a6d5c1
	Checksum: 0x5C745FA9
	Offset: 0x29A8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_bb4e63f9(a_ents)
{
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("cp_lotus_rumble_vtol_hallway_flyby");
	}
}

/*
	Name: function_9e1bef17
	Namespace: namespace_20a6d5c1
	Checksum: 0xAC27B4E4
	Offset: 0x2A50
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_9e1bef17()
{
	level dialog::remote("kane_lieutenant_khalil_d_0");
	level dialog::remote("khal_confirmed_air_suppo_0", 0.5);
}

/*
	Name: function_6ed44248
	Namespace: namespace_20a6d5c1
	Checksum: 0xA050CDA7
	Offset: 0x2AA8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_6ed44248(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		objectives::set("cp_level_lotus_go_to_taylor_prison_cell");
	}
	objectives::breadcrumb("vtol_hallway_obj_breadcrumb");
}

/*
	Name: function_df5da340
	Namespace: namespace_20a6d5c1
	Checksum: 0xA27421E
	Offset: 0x2AF8
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_df5da340()
{
	level thread function_199e4429();
	level scene::init("cin_lot_07_02_detcenter_vign_zipline");
	level waittill("hash_99ffe550");
	spawn_manager::enable("sm_vtol_hallway_innocent_runners");
	spawn_manager::enable("sm_zipline_victims");
	level thread function_6047a747();
	trigger::use("zipline_guys_start_color_trigger");
	level thread scene::Play("cin_lot_07_02_detcenter_vign_zipline");
	level waittill("hash_facd74a1");
	var_2caa2879 = GetEnt("zipline_vtol", "targetname");
	v_angles = var_2caa2879.angles;
	var_2caa2879 StopAnimScripted();
	wait(0.05);
	var_2caa2879 animation::Play("v_lot_07_02_detcenter_vign_zipline_vtol_depart", struct::get("align_event_7_2_zipline"), undefined, undefined, undefined, undefined, undefined, undefined, undefined, 0);
	var_2caa2879.angles = v_angles;
	var_2caa2879 MoveZ(4500, 4);
	var_2caa2879 waittill("movedone");
	var_2caa2879 delete();
}

/*
	Name: function_cba3d0d4
	Namespace: namespace_20a6d5c1
	Checksum: 0xD4AC371
	Offset: 0x2CE0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_cba3d0d4()
{
	self.grenadeAmmo = 0;
	a_targets = GetAIArray("vtol_hallway_innocent_runners", "targetname");
	e_target = Array::random(a_targets);
	if(isdefined(e_target))
	{
		self ai::shoot_at_target("shoot_until_target_dead", e_target);
	}
}

/*
	Name: function_199e4429
	Namespace: namespace_20a6d5c1
	Checksum: 0x665B8782
	Offset: 0x2D78
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_199e4429()
{
	var_b28eb61c = struct::get("vtol_zipline_break_glass_struct");
	level waittill("hash_ea9c6f10");
	glassRadiusDamage(var_b28eb61c.origin, 200, 1000, 1000);
}

/*
	Name: function_6047a747
	Namespace: namespace_20a6d5c1
	Checksum: 0xE1FED5B9
	Offset: 0x2DE0
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_6047a747()
{
	level waittill("hash_8c18560c");
	var_c4b22a77 = GetAIArray("zipline_victims", "targetname");
	var_c033ff4 = GetAIArray("zipline_guy", "targetname");
	foreach(var_5eade0e9 in var_c033ff4)
	{
		var_5eade0e9 thread ai::shoot_at_target("shoot_until_target_dead", var_c4b22a77[n_index]);
	}
}

/*
	Name: function_e907511f
	Namespace: namespace_20a6d5c1
	Checksum: 0x396718CA
	Offset: 0x2EF0
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_e907511f()
{
	self turret::set_ignore_line_of_sight(1, 0);
	level.var_338f6013 = self;
}

/*
	Name: function_d3a1377e
	Namespace: namespace_20a6d5c1
	Checksum: 0x6B85199F
	Offset: 0x2F20
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_d3a1377e()
{
	level.var_c35e5e91 = self;
	level.var_c35e5e91 turret::set_max_target_distance(0.1, 0);
	level.var_c35e5e91.allowdeath = 0;
}

/*
	Name: function_613df5d9
	Namespace: namespace_20a6d5c1
	Checksum: 0x8480DE93
	Offset: 0x2F70
	Size: 0x6AB
	Parameters: 1
	Flags: None
*/
function function_613df5d9(var_9597a744)
{
	wait(2.66);
	n_shoot_time = 0;
	var_9cb86044 = 0;
	s_turret = level.var_c35e5e91.a_turrets[0];
	s_turret flag::set("turret manual");
	level.var_c35e5e91 thread turret::fire_for_time(var_9597a744, 0);
	level util::clientNotify("sndDSTR");
	level thread battlechatter::function_d9f49fba(0);
	level thread function_f37f019c();
	level thread function_facc6349(4);
	level thread function_1e3790ff(2);
	level thread function_5d7e677d(4);
	level thread function_7126ab6f("allies_move_up");
	wait(2.4);
	n_shoot_time = 2.4;
	var_6356aeef = var_9597a744 - 2.4 / 13;
	while(n_shoot_time < var_9597a744)
	{
		n_index = Int(n_shoot_time - 2.4 / var_6356aeef) + 1;
		n_index = math::clamp(n_index, 1, 13);
		if(n_index < 10)
		{
		}
		else
		{
		}
		var_e4b1b0d6 = "vtol_shooting_area";
		var_5003a2bd = GetEnt(var_e4b1b0d6 + n_index, "targetname");
		a_ai = [];
		a_ai = GetAITeamArray("axis");
		var_3dd4b11c = Array::filter(a_ai, 0, &function_67fe0ba5, var_5003a2bd);
		foreach(ai_victim in var_3dd4b11c)
		{
			if(isalive(ai_victim))
			{
				if(isdefined(ai_victim.magic_bullet_shield) && ai_victim.magic_bullet_shield)
				{
					ai_victim util::stop_magic_bullet_shield();
				}
				if(!isdefined(ai_victim.var_968edb1e))
				{
					ai_victim.var_968edb1e = 1;
					ai_victim thread function_8f8d0072();
				}
			}
		}
		var_93abd77c = Array::filter(level.players, 0, &function_67fe0ba5, var_5003a2bd);
		foreach(player in var_93abd77c)
		{
			player DoDamage(player.health, player.origin, undefined, undefined, undefined, "MOD_EXPLOSIVE");
		}
		var_446ac0ad = n_index - 1;
		var_446ac0ad = math::clamp(var_446ac0ad, 1, 13 - 1);
		var_ade4e252 = function_dbfa70cf(var_446ac0ad);
		var_a8364a58 = Array::filter(level.players, 0, &function_67fe0ba5, var_ade4e252);
		foreach(player in var_a8364a58)
		{
			Earthquake(1, 0.1, player.origin, 32, player);
			player PlayRumbleOnEntity("slide_loop");
		}
		wait(0.1);
		n_shoot_time = n_shoot_time + 0.1;
	}
	level thread battlechatter::function_d9f49fba(1);
	level util::clientNotify("sndDSTRe");
	level thread namespace_a92ad484::function_51e72857();
	level.var_c35e5e91 util::stop_magic_bullet_shield();
	level.var_c35e5e91 thread turret::stop(0);
	function_76bada8a(1);
}

/*
	Name: function_8f8d0072
	Namespace: namespace_20a6d5c1
	Checksum: 0x77F40F04
	Offset: 0x3628
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_8f8d0072()
{
	wait(RandomFloatRange(0, 0.4));
	if(RandomInt(100) < 25)
	{
	}
	else
	{
	}
	str_damage_mod = "MOD_UNKNOWN";
	self playsound("evt_vtolhallway_dstr_bullet_imp_enemy");
	self DoDamage(self.health, self.origin, undefined, undefined, undefined, str_damage_mod);
	PhysicsExplosionSphere(self.origin, 32, 16, 100);
}

/*
	Name: function_67fe0ba5
	Namespace: namespace_20a6d5c1
	Checksum: 0xBB41E8CF
	Offset: 0x3710
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_67fe0ba5(e_entity, var_8c2d8a7f)
{
	if(!IsArray(var_8c2d8a7f))
	{
		var_8c2d8a7f = Array(var_8c2d8a7f);
	}
	foreach(e_volume in var_8c2d8a7f)
	{
		if(e_entity istouching(e_volume))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_dbfa70cf
	Namespace: namespace_20a6d5c1
	Checksum: 0x5F06CD87
	Offset: 0x37F8
	Size: 0x11D
	Parameters: 1
	Flags: None
*/
function function_dbfa70cf(var_65346df)
{
	var_46fcd4c = [];
	for(var_f852a368 = 2; var_65346df > 0 && var_f852a368 > 0; var_f852a368--)
	{
		if(var_65346df < 10)
		{
		}
		else
		{
		}
		var_84f20f7 = "vtol_shooting_area";
		var_e318ffa6 = GetEnt(var_84f20f7 + var_65346df, "targetname");
		if(!isdefined(var_46fcd4c))
		{
			var_46fcd4c = [];
		}
		else if(!IsArray(var_46fcd4c))
		{
			var_46fcd4c = Array(var_46fcd4c);
		}
		var_46fcd4c[var_46fcd4c.size] = var_e318ffa6;
		var_65346df--;
	}
	return var_46fcd4c;
}

/*
	Name: function_f37f019c
	Namespace: namespace_20a6d5c1
	Checksum: 0x784F46CA
	Offset: 0x3920
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_f37f019c()
{
	for(var_3b86078d = 1; var_3b86078d <= 4; var_3b86078d++)
	{
		var_b28eb61c = struct::get("vtol_hallway_break_glass_struct0" + var_3b86078d, "targetname");
		glassRadiusDamage(var_b28eb61c.origin, 200, 1000, 1000);
		wait(3.3);
	}
}

/*
	Name: function_7126ab6f
	Namespace: namespace_20a6d5c1
	Checksum: 0x58814917
	Offset: 0x39C8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_7126ab6f(str_notify)
{
	level waittill(str_notify);
	function_76bada8a(0);
	trigger::use("hendricks_exit_vtol_hallway_color_trigger");
}

/*
	Name: function_1e3790ff
	Namespace: namespace_20a6d5c1
	Checksum: 0x5AC4E725
	Offset: 0x3A18
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_1e3790ff(n_delay)
{
	wait(n_delay);
	spawn_manager::kill("sm_vtol_shooting_victims", 1);
	spawn_manager::kill("sm_vtol_hallway_robot_spawns", 1);
}

/*
	Name: function_76bada8a
	Namespace: namespace_20a6d5c1
	Checksum: 0x570D22B
	Offset: 0x3A70
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_76bada8a(var_2dd3286b)
{
	level.var_2fd26037 ai::set_behavior_attribute("sprint", var_2dd3286b);
	Array::thread_all(GetEntArray("zipline_guy", "script_noteworthy", 1), &ai::set_behavior_attribute, "sprint", var_2dd3286b);
}

/*
	Name: function_f2e34115
	Namespace: namespace_20a6d5c1
	Checksum: 0xDB138508
	Offset: 0x3B00
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f2e34115()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self.grenadeAmmo = 0;
	level flag::wait_till("zipline_done");
	self ai::set_ignoreall(0);
}

/*
	Name: function_facc6349
	Namespace: namespace_20a6d5c1
	Checksum: 0xF5E4FA4D
	Offset: 0x3B70
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_facc6349(n_max_delay)
{
	trigger::wait_or_timeout(n_max_delay, "supplemental_vtol_hallway_victims");
	var_a08b9452 = GetEntArray("supplemental_vtol_hallway_victim", "script_noteworthy");
	spawner::simple_spawn(var_a08b9452, &function_f2e34115);
}

/*
	Name: function_5d7e677d
	Namespace: namespace_20a6d5c1
	Checksum: 0xAE2A397C
	Offset: 0x3BF8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_5d7e677d(n_delay)
{
	wait(n_delay);
	spawn_manager::enable("sm_vtol_hallway_final_spawns");
}

/*
	Name: function_959c5937
	Namespace: namespace_20a6d5c1
	Checksum: 0xFAC40C2B
	Offset: 0x3C30
	Size: 0x2C1
	Parameters: 0
	Flags: None
*/
function function_959c5937()
{
	var_98a5836 = GetEntArray("landing_area_ally_victim_ai", "targetname");
	var_94607bce = var_98a5836.size - 1;
	if(var_94607bce > 1)
	{
	}
	else
	{
	}
	var_7a9b47b6 = 2.5;
	self util::magic_bullet_shield();
	self.grenadeAmmo = 0;
	level waittill("hash_bb05f4d0");
	trigger::wait_or_timeout(var_7a9b47b6, "kill_landing_area_allies", "targetname");
	self util::stop_magic_bullet_shield();
	self.health = 1;
	var_d320e401 = struct::get_array("landing_area_magic_bullet_source", "targetname");
	a_ai_enemies = GetAITeamArray("axis");
	weapon = GetWeapon("lmg_light");
	var_484a53d8 = self.origin + VectorScale((0, 0, 1), 32);
	foreach(var_6757c7e1 in var_d320e401)
	{
		var_4b9c2228 = randomIntRange(1, 5);
		do
		{
			MagicBullet(weapon, var_6757c7e1.origin, var_484a53d8);
			wait(RandomFloatRange(0, 0.1));
			var_4b9c2228--;
		}
		while(!var_4b9c2228 > 0);
		wait(RandomFloatRange(0, 0.2));
	}
}

/*
	Name: function_2143f8c4
	Namespace: namespace_20a6d5c1
	Checksum: 0xB16C0D5D
	Offset: 0x3F00
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_2143f8c4()
{
	level scene::init("cin_merch_interior_lower", "targetname");
	level flag::wait_till_all(Array("sm_sm_vtol_hallway_final_spawns01_cleared", "sm_sm_vtol_hallway_final_spawns02_cleared"));
	level notify("hash_c243f1de");
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	level thread function_29458b95();
	skipto::function_be8adfb8("vtol_hallway");
}

/*
	Name: function_eef4fda8
	Namespace: namespace_20a6d5c1
	Checksum: 0x4A663555
	Offset: 0x3FC0
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_eef4fda8(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread util::delay(1, undefined, &namespace_431cac9::function_6fc3995f);
	GetEnt("pursuit_oob", "targetname") TriggerEnable(0);
}

/*
	Name: function_9c0f8169
	Namespace: namespace_20a6d5c1
	Checksum: 0xF8F4CA23
	Offset: 0x4050
	Size: 0x443
	Parameters: 2
	Flags: None
*/
function function_9c0f8169(str_objective, var_74cd64bc)
{
	level.var_f2bcf341 = struct::get("cin_merch_interior_lower", "targetname");
	level.var_38d7d98e = struct::get("cin_merch_interior_upper", "targetname");
	level thread function_97787d8d("open");
	battlechatter::function_d9f49fba(0);
	if(SessionModeIsCampaignZombiesGame())
	{
		level thread function_3257371f();
	}
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level scene::init("cin_merch_interior_lower", "targetname");
		level scene::init("mobile_shop2_ravens", "targetname");
		level scene::skipto_end("p7_fxanim_cp_lotus_vtol_hallway_destruction_01_bundle");
		level flag::wait_till("all_players_spawned");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(str_objective);
		level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
		load::function_a2995f22();
		level thread function_29458b95(var_74cd64bc);
	}
	else
	{
		level scene::init("mobile_shop2_ravens", "targetname");
	}
	level namespace_431cac9::function_484bc3aa(1);
	var_4c24b478 = GetEntArray("ammo_cache", "script_noteworthy");
	foreach(e_ammo_cache in var_4c24b478)
	{
		e_ammo_cache.gameobject gameobjects::show_waypoint();
	}
	level thread objectives::breadcrumb("breadcrumb_mobile_ride_2");
	flag::wait_till("long_mobile_shop_start");
	streamerRequest("set", "cp_mi_cairo_lotus_shop_ride");
	level scene::init("p7_fxanim_cp_lotus_mobile_shops_merch_rpg_hit_bundle");
	objectives::complete("cp_level_lotus_go_to_taylor_prison_cell");
	objectives::set("cp_level_lotus_go_to_taylor_holding_room");
	level waittill("hash_a6da966f");
	level.var_f2bcf341 scene::stop();
	level.var_38d7d98e thread scene::Play();
	function_c92f487e();
	level thread function_9a0b8bc1();
	trigger::wait_till("mobile_shop_ride2_done");
	streamerRequest("clear");
	skipto::function_be8adfb8("mobile_shop_ride2");
}

/*
	Name: function_29458b95
	Namespace: namespace_20a6d5c1
	Checksum: 0x8A48C5CA
	Offset: 0x44A0
	Size: 0x57B
	Parameters: 1
	Flags: None
*/
function function_29458b95(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	battlechatter::function_d9f49fba(0);
	if(!var_74cd64bc)
	{
		level.var_2fd26037 thread function_edd237d9();
	}
	level thread namespace_a92ad484::function_614dc783();
	level.var_2fd26037 dialog::say("hend_okay_kane_enough_0");
	level dialog::remote("kane_take_that_shop_up_to_0");
	level thread function_aa17eb00();
	level flag::set("mobile_shop_ride_ready");
	level thread function_c24a19de();
	level flag::wait_till("long_mobile_shop_start");
	if(isdefined(level.BZM_LOTUSDialogue11Callback))
	{
		level thread [[level.BZM_LOTUSDialogue11Callback]]();
	}
	e_playerclip = GetEnt("mobile_ride_2_playerclip", "targetname");
	e_playerclip moveto(e_playerclip.origin + VectorScale((0, 0, 1), 100), 0.05);
	level clientfield::set("vtol_hallway_destruction_cleanup", 1);
	var_d26fd6e5 = GetEnt("lotus_vtol_hallway_destruction01", "targetname");
	var_d26fd6e5 delete();
	level.var_2fd26037 ai::set_ignoreall(1);
	level thread scene::Play("cin_lot_07_05_detcenter_vign_observation", level.var_2fd26037);
	trigger::wait_till("hendricks_in_mobile_shop_2", "targetname", level.var_2fd26037);
	level thread function_97787d8d("close");
	wait(1.5);
	level thread namespace_431cac9::function_e577c596("mobile_shop2_ravens", undefined, "raven_decal_mobile_shop2", "cp_lotus_projection_ravengrafitti1");
	level.var_2fd26037 ai::set_ignoreall(0);
	sndent = spawn("script_origin", (0, 0, 0));
	sndent playsound("veh_mobile_shop_ride_start");
	sndent PlayLoopSound("veh_mobile_shop_ride_loop");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_lotus_rumble_mobile_shop_ride_2");
	}
	level thread scene::Play("cin_merch_interior_lower", "targetname");
	level waittill("hash_4e6f08ff");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("explosion_generic_no_broadcast");
	}
	level notify("hash_a6da966f");
	sndent StopLoopSound(0.3);
	sndent delete();
	wait(0.3);
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("explosion_generic_no_broadcast");
	}
	trigger::use("bridge_battle_more_enemies_here", "script_flag_set");
}

/*
	Name: function_c24a19de
	Namespace: namespace_20a6d5c1
	Checksum: 0xB39E3A9A
	Offset: 0x4A28
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_c24a19de()
{
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.cybercom.var_46a37937))
		{
			foreach(var_f6c5842 in player.cybercom.var_46a37937)
			{
				if(isalive(var_f6c5842))
				{
					var_f6c5842 kill();
				}
			}
		}
	}
}

/*
	Name: function_edd237d9
	Namespace: namespace_20a6d5c1
	Checksum: 0xF1B698CC
	Offset: 0x4B70
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_edd237d9()
{
	nd_goto = GetNode("hendricks_preshop_node", "targetname");
	self SetGoal(nd_goto, 1);
}

/*
	Name: function_c92f487e
	Namespace: namespace_20a6d5c1
	Checksum: 0x5BD7472D
	Offset: 0x4BC8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_c92f487e()
{
	var_bd1043f3 = struct::get("mobile_shop_ride_lower").origin;
	var_fd7210d4 = struct::get("mobile_shop_ride_upper").origin;
	var_44f2aa45 = var_fd7210d4 - var_bd1043f3;
	level.var_2fd26037 ForceTeleport(level.var_2fd26037.origin + var_44f2aa45, level.var_2fd26037.angles);
	level thread scene::Play("cin_lot_07_05_detcenter_vign_mantle");
	level thread function_36957bfb(var_44f2aa45);
	if(isdefined(level.var_b55b2c5f))
	{
		level.var_b55b2c5f scene::stop();
	}
	level.var_bd992b54 = struct::get("cin_merch_exterior_upper", "targetname");
	if(isdefined(level.var_bd992b54))
	{
		level.var_bd992b54 scene::Play();
	}
}

/*
	Name: function_36957bfb
	Namespace: namespace_20a6d5c1
	Checksum: 0xDC52E9CD
	Offset: 0x4D38
	Size: 0x191
	Parameters: 1
	Flags: None
*/
function function_36957bfb(var_44f2aa45)
{
	foreach(player in level.activePlayers)
	{
		player.var_d75e3361 = player.origin + var_44f2aa45;
		player SetOrigin(player.var_d75e3361);
	}
	wait(0.15);
	foreach(player in level.activePlayers)
	{
		var_8c7da3ec = player.var_d75e3361[2] - 64;
		if(player.origin[2] < var_8c7da3ec)
		{
			player thread function_7a2fdad9(var_8c7da3ec);
		}
	}
}

/*
	Name: function_7a2fdad9
	Namespace: namespace_20a6d5c1
	Checksum: 0xCA12C0F1
	Offset: 0x4ED8
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_7a2fdad9(var_8c7da3ec)
{
	self endon("death");
	while(self.origin[2] < var_8c7da3ec)
	{
		self SetOrigin(self.var_d75e3361);
		wait(0.05);
	}
}

/*
	Name: function_97787d8d
	Namespace: namespace_20a6d5c1
	Checksum: 0x47AE2335
	Offset: 0x4F38
	Size: 0x233
	Parameters: 1
	Flags: None
*/
function function_97787d8d(var_7f0b037)
{
	if(!isdefined(var_7f0b037))
	{
		var_7f0b037 = "open";
	}
	var_5b3fe023 = GetEnt("mobile_door_left", "targetname");
	var_d758a83d = GetEnt("mobile_door_right", "targetname");
	var_50de9d38 = 100;
	if(isdefined(var_5b3fe023) && isdefined(var_d758a83d))
	{
		if(var_7f0b037 === "open")
		{
			var_5b3fe023 moveto(var_5b3fe023.origin + (var_50de9d38 * -1, 0, 0), 2, 0.1, 0.1);
			var_d758a83d moveto(var_d758a83d.origin + (var_50de9d38, 0, 0), 2, 0.1, 0.1);
			var_5b3fe023 playsound("evt_mobile_shop_doors_open");
		}
		else
		{
			var_5b3fe023 moveto(var_5b3fe023.origin + (var_50de9d38, 0, 0), 1, 0.1, 0.1);
			var_d758a83d moveto(var_d758a83d.origin + (var_50de9d38 * -1, 0, 0), 1, 0.1, 0.1);
			var_5b3fe023 playsound("evt_mobile_shop_doors_close");
		}
	}
	else
	{
		IPrintLnBold("Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_9a0b8bc1
	Namespace: namespace_20a6d5c1
	Checksum: 0x60E617E7
	Offset: 0x5178
	Size: 0x403
	Parameters: 0
	Flags: None
*/
function function_9a0b8bc1()
{
	foreach(player in level.players)
	{
		player clientfield::set_to_player("frost_post_fx", 0);
	}
	e_hatch = GetEnt("mobile_shop_hatchdoor", "targetname");
	e_hatch playsound("wpn_rocket_explode_mobile_shop");
	self thread FX::Play("mobile_shop_fall_explosion", e_hatch.origin, (0, 0, 0));
	wait(0.3);
	self thread FX::Play("mobile_shop_fall_explosion", e_hatch.origin - VectorScale((0, 1, 0), 200), (0, 0, 0));
	level thread scene::Play("p7_fxanim_cp_lotus_mobile_shops_merch_rpg_hit_bundle");
	Earthquake(0.85, 1.75, e_hatch.origin, 1200);
	Array::run_all(level.players, &PlayRumbleOnEntity, "damage_heavy");
	objectives::set("cp_waypoint_breadcrumb", struct::get("mobile_shop_ride2_last_objective"));
	level notify("hash_e0df7237");
	level thread scene::Play("cin_lot_07_05_detcenter_vign_mantle_hatch");
	var_72a1d37e = spawner::simple_spawn_single("mobile_ride_2_end_rocketrobot");
	var_72a1d37e ai::set_ignoreall(1);
	var_72a1d37e SetGoal(var_72a1d37e.origin, 1);
	var_72a1d37e.goalRadius = 64;
	wait(3);
	s_target = struct::get("rocketshooter_target");
	var_3929e8a2 = util::spawn_model("tag_origin", s_target.origin + VectorScale((0, 0, 1), 80), s_target.angles);
	var_3929e8a2.health = 9999;
	var_3929e8a2.allowdeath = 0;
	var_72a1d37e thread ai::shoot_at_target("normal", var_3929e8a2, "tag_origin", 16);
	var_72a1d37e util::waittill_any_timeout(16, "damage", "death");
	if(isalive(var_72a1d37e))
	{
		var_72a1d37e.attackerAccuracy = 1;
		var_72a1d37e ai::set_ignoreall(0);
	}
	var_3929e8a2 delete();
}

/*
	Name: function_aa17eb00
	Namespace: namespace_20a6d5c1
	Checksum: 0x17935C1C
	Offset: 0x5588
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_aa17eb00()
{
	level dialog::remote("kane_it_s_routed_to_the_d_0");
	level flag::wait_till("long_mobile_shop_start");
	level dialog::remote("kane_watch_hendricks_he_0", 0.5);
	level thread dialog::function_13b3b16a("plyr_copy_that_0");
	level waittill("hash_e0df7237");
	level thread namespace_a92ad484::function_8ca46216();
	level.var_2fd26037 dialog::say("hend_rpg_0", 0.5);
	wait(2);
	level dialog::function_13b3b16a("plyr_looks_like_this_is_o_0");
	if(!level flag::get("trig_player_out_of_mobile_shop_ride_2"))
	{
		level dialog::remote("kane_you_re_just_shy_of_t_0");
	}
	level flag::set("mobile_shop_2_vo_done");
}

/*
	Name: function_dffbb166
	Namespace: namespace_20a6d5c1
	Checksum: 0xAEE4EFE
	Offset: 0x56E8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_dffbb166(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		objectives::complete("cp_level_lotus_go_to_taylor_prison_cell");
		objectives::set("cp_level_lotus_go_to_taylor_holding_room");
	}
	level thread scene::init("to_security_station_mobile_shop_fall", "targetname");
}

/*
	Name: function_296e8ec0
	Namespace: namespace_20a6d5c1
	Checksum: 0x59914688
	Offset: 0x5778
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_296e8ec0()
{
	var_a36ea22c = GetEnt("hallway_gate_06", "targetname");
	var_a36ea22c connectpaths();
	var_a36ea22c delete();
}

/*
	Name: auto_delete
	Namespace: namespace_20a6d5c1
	Checksum: 0x474DC36B
	Offset: 0x57E0
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function auto_delete()
{
	self endon("death");
	self notify("__auto_delete__");
	self endon("__auto_delete__");
	level flag::wait_till("all_players_spawned");
	n_test_count = 0;
	wait(5);
	while(1)
	{
		wait(RandomFloatRange(0.6666666, 1.333333));
		n_tests_passed = 0;
		foreach(player in level.players)
		{
			var_d7e98a7d = 0;
			b_can_see = 0;
			v_eye = player GetEye();
			v_facing = AnglesToForward(player getPlayerAngles());
			v_to_ent = VectorNormalize(self.origin - v_eye);
			n_dot = VectorDot(v_facing, v_to_ent);
			if(n_dot > 0.67)
			{
				var_d7e98a7d = 1;
			}
			else
			{
				b_can_see = self SightConeTrace(v_eye, player);
			}
			if(!b_can_see && !var_d7e98a7d)
			{
				n_tests_passed++;
			}
		}
		if(n_tests_passed == level.players.size)
		{
			n_test_count++;
			if(n_test_count < 5)
			{
				continue;
			}
			self notify("_disable_reinforcement");
			self delete();
		}
		else
		{
			n_test_count = 0;
		}
	}
}

/*
	Name: function_57e7a8c9
	Namespace: namespace_20a6d5c1
	Checksum: 0xC7A7F7D4
	Offset: 0x5A78
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_57e7a8c9(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		trigger::use("trig_bridge_battle_initial_spawns");
		skipto::teleport_ai(str_objective);
		load::function_a2995f22();
	}
	level namespace_431cac9::function_484bc3aa(1);
	level thread namespace_431cac9::function_fda257c3();
	level thread function_e1c21e07();
	level thread function_1143b3b4();
	level thread function_2c257bff();
	level thread function_77e481f6();
	level thread function_10a2b6f2();
	level thread function_bebbfc6f();
	level thread function_3257371f(1);
	level thread function_8b9937fd();
	level thread function_f43bc1f8();
	level thread namespace_431cac9::function_14be4cad(1);
	level thread function_32049a32(var_74cd64bc);
	level thread function_44dd1b45();
	level thread function_94f75664();
	sp_enemy = GetEnt("dc4_enemy_sponge", "script_noteworthy");
	sp_enemy spawner::add_spawn_function(&function_904f994);
	level thread scene::Play("bridge_battle_falling_shop1", "targetname");
	level flag::wait_till("bridge_battle_done");
	skipto::function_be8adfb8("bridge_battle");
}

/*
	Name: function_94f75664
	Namespace: namespace_20a6d5c1
	Checksum: 0x305E1F2D
	Offset: 0x5D28
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_94f75664()
{
	level flag::wait_till("player_crossed_bridge");
	var_9008f0c7 = GetEnt("bridge_battle_across_gv", "targetname");
	a_enemies = spawner::get_ai_group_ai("bridge_end_enemies");
	foreach(enemy in a_enemies)
	{
		enemy SetGoal(var_9008f0c7);
	}
}

/*
	Name: function_e1c21e07
	Namespace: namespace_20a6d5c1
	Checksum: 0x68DA9069
	Offset: 0x5E38
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e1c21e07()
{
	level endon("hash_800cbac6");
	level thread function_c928a4b5("bridge_end_enemies");
	level thread function_c928a4b5("police_station_enemies");
}

/*
	Name: function_c928a4b5
	Namespace: namespace_20a6d5c1
	Checksum: 0xDC57BDD2
	Offset: 0x5E90
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_c928a4b5(str_ai_group)
{
	level endon("hash_800cbac6");
	spawner::waittill_ai_group_cleared(str_ai_group);
	savegame::function_5d2cdd99();
}

/*
	Name: function_32049a32
	Namespace: namespace_20a6d5c1
	Checksum: 0xB0C57F9E
	Offset: 0x5ED8
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_32049a32(var_74cd64bc)
{
	battlechatter::function_d9f49fba(0);
	if(!var_74cd64bc)
	{
		level flag::wait_till("mobile_shop_2_vo_done");
	}
	dialog::remote("kane_follow_the_marker_0", 1);
	dialog::function_13b3b16a("plyr_copy_that_kane_0", 0.25);
	battlechatter::function_d9f49fba(1);
	flag::wait_till("bridge_battle_police_station_opened");
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 dialog::say("hend_raps_comin_in_hot_0", 0.5);
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_44dd1b45
	Namespace: namespace_20a6d5c1
	Checksum: 0x1D8B3D52
	Offset: 0x5FF8
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_44dd1b45()
{
	spawner::waittill_ai_group_amount_killed("bb_start_enemies", 2);
	var_67ac5172 = GetEnt("cult_center_door_left", "targetname");
	var_43ecc01c = GetEnt("cult_center_door_right", "targetname");
	var_46f41a3b = 100;
	var_7d6af5ea = 1;
	var_67ac5172 moveto(var_67ac5172.origin + (0, var_46f41a3b, 0), var_7d6af5ea, 0.1, 0.1);
	var_43ecc01c moveto(var_43ecc01c.origin + (0, var_46f41a3b * -1, 0), var_7d6af5ea, 0.1, 0.1);
	wait(var_7d6af5ea);
	spawn_manager::enable("bb_nolull_spawn_manager");
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	level flag::wait_till("player_crossed_bridge");
	spawn_manager::disable("bb_nolull_spawn_manager");
	var_67ac5172 moveto(var_67ac5172.origin + (0, var_46f41a3b * -1, 0), var_7d6af5ea, 0.1, 0.1);
	var_43ecc01c moveto(var_43ecc01c.origin + (0, var_46f41a3b, 0), var_7d6af5ea, 0.1, 0.1);
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
}

/*
	Name: function_1143b3b4
	Namespace: namespace_20a6d5c1
	Checksum: 0x1B48072F
	Offset: 0x6250
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1143b3b4()
{
	objectives::breadcrumb("bridge_battle_breadcrumb01");
}

/*
	Name: function_2c257bff
	Namespace: namespace_20a6d5c1
	Checksum: 0x2EA4F5E2
	Offset: 0x6278
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_2c257bff()
{
	var_8cc44767 = GetNode("cover_endbridge_trashbin", "targetname");
	SetEnableNode(var_8cc44767, 0);
	flag::wait_till("flag_coverpush_endbridge");
	function_f423b892("coverpush_endbridge_pos", "coverpush_endbridge_enemy", "coverpush_endbridge_bin");
	SetEnableNode(var_8cc44767, 1);
	flag::wait_till("bridge_battle_police_station_opened");
	function_f423b892("coverpush_pos2", "coverpush_enemy2", "coverpush_trash_bin2");
}

/*
	Name: function_f423b892
	Namespace: namespace_20a6d5c1
	Checksum: 0x810398EE
	Offset: 0x6368
	Size: 0x16B
	Parameters: 3
	Flags: None
*/
function function_f423b892(str_position, var_7fadc70c, var_e7daaecc)
{
	var_a6ebc7b = GetEnt(var_e7daaecc, "targetname");
	var_f43c5188 = GetEnt(var_e7daaecc + "_col", "targetname");
	var_f43c5188 LinkTo(var_a6ebc7b);
	struct_pos = struct::get(str_position, "targetname");
	var_b429251f = spawner::simple_spawn_single(var_7fadc70c);
	struct_pos scene::init("cin_gen_aie_push_cover_sideways_no_dynpath", Array(var_b429251f, var_a6ebc7b));
	struct_pos scene::Play("cin_gen_aie_push_cover_sideways_no_dynpath");
	var_f43c5188 Unlink();
	var_f43c5188 disconnectpaths(0, 0);
}

/*
	Name: function_10a2b6f2
	Namespace: namespace_20a6d5c1
	Checksum: 0xD9976470
	Offset: 0x64E0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_10a2b6f2()
{
	level thread function_e90c24f8();
	flag::wait_till("flag_grand_entrances");
	/#
		IPrintLnBold("Dev Block strings are not supported");
	#/
	spawner::add_spawn_function_group("robo_entrant01", "targetname", &function_87c91b1b);
	spawner::add_spawn_function_group("robo_entrant02", "targetname", &function_87c91b1b);
	spawner::add_spawn_function_group("robo_entrant03", "targetname", &function_87c91b1b);
	spawner::add_spawn_function_group("robo_entrant04", "targetname", &function_87c91b1b);
	level thread namespace_431cac9::function_99514074("robo_entrance01", "robo_entrant01");
	wait(0.75);
	level thread namespace_431cac9::function_99514074("robo_entrance02", "robo_entrant02");
	wait(1.5);
	level thread namespace_431cac9::function_99514074("robo_entrance04", "robo_entrant04");
	wait(1.5);
	level thread namespace_431cac9::function_99514074("robo_entrance03", "robo_entrant03");
	wait(1.5);
}

/*
	Name: function_e90c24f8
	Namespace: namespace_20a6d5c1
	Checksum: 0x6703F64B
	Offset: 0x66C0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_e90c24f8()
{
	level endon("hash_92e00f70");
	level flag::wait_till("player_crossed_bridge");
	spawner::waittill_ai_group_count("bridge_end_enemies", 3);
	level flag::set("flag_grand_entrances");
}

/*
	Name: function_87c91b1b
	Namespace: namespace_20a6d5c1
	Checksum: 0xC9E690D9
	Offset: 0x6738
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_87c91b1b()
{
	volume = GetEnt("bridge_battle_ge_gv", "targetname");
	self SetGoal(volume);
}

/*
	Name: function_f43bc1f8
	Namespace: namespace_20a6d5c1
	Checksum: 0xB8BE0EE2
	Offset: 0x6790
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f43bc1f8()
{
	a_flags = Array("wall_run_enemies_cleared", "bridge_battle_done");
	level flag::wait_till_any(a_flags);
	level thread function_e7a8c6b();
}

/*
	Name: function_77e481f6
	Namespace: namespace_20a6d5c1
	Checksum: 0x2AFD2D8B
	Offset: 0x6800
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_77e481f6()
{
	ai_friendly = spawner::simple_spawn_single("dc3_friendly_scarifice");
	util::magic_bullet_shield(ai_friendly);
	level flag::wait_till("friendly_sacrifice");
	var_a3f0d6d = GetNode("scarifice_goal", "targetname");
	ai_friendly thread ai::force_goal(var_a3f0d6d, 64, undefined, undefined, undefined, undefined);
	ai_friendly ai::set_ignoreall(1);
	trigger::wait_till("trig_sacrifice_death");
	ai_friendly ai::set_ignoreall(0);
	util::stop_magic_bullet_shield(ai_friendly);
	a_enemies = GetAITeamArray("axis");
	Array::thread_all(a_enemies, &ai::shoot_at_target, "kill_within_time", ai_friendly, undefined, 0.05);
}

/*
	Name: function_3257371f
	Namespace: namespace_20a6d5c1
	Checksum: 0xB9429A21
	Offset: 0x6970
	Size: 0x1E1
	Parameters: 1
	Flags: None
*/
function function_3257371f(var_729354f4)
{
	if(!(isdefined(level.var_38c1711f) && level.var_38c1711f))
	{
		level.var_38c1711f = 1;
		var_a7b48bf5 = GetEnt("police_door_01", "targetname");
		var_a7b48bf5 moveto(var_a7b48bf5.origin + VectorScale((0, 0, -1), 144), 3);
		var_cdb7065e = GetEnt("police_door_02", "targetname");
		var_cdb7065e moveto(var_cdb7065e.origin + VectorScale((0, 0, -1), 144), 3);
	}
	if(isdefined(var_729354f4) && var_729354f4)
	{
		trigger::wait_till("trig_kill_sniper");
		a_snipers = GetAIArray("dc3_police_sniper", "script_noteworthy");
		foreach(ai_sniper in a_snipers)
		{
			level.var_2fd26037 ai::shoot_at_target("kill_within_time", ai_sniper, undefined, 0.05);
		}
	}
}

/*
	Name: function_8b9937fd
	Namespace: namespace_20a6d5c1
	Checksum: 0x3F036CAC
	Offset: 0x6B60
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_8b9937fd()
{
	trigger::wait_till("trig_rollunder");
	level thread function_61700635();
	var_3170fbf = spawner::simple_spawn_single("rollunder_smg");
	level scene::Play("detention_center3_rollunder", "targetname", var_3170fbf);
	volume = GetEnt("bridge_battle_ge_gv", "targetname");
	var_3170fbf SetGoal(volume);
}

/*
	Name: function_bebbfc6f
	Namespace: namespace_20a6d5c1
	Checksum: 0x22C7C1AF
	Offset: 0x6C38
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_bebbfc6f()
{
	trigger::wait_till("trig_slide");
	var_7cfde525 = spawner::simple_spawn_single("slide_smg");
	level scene::Play("detention_center3_slide", "targetname", var_7cfde525);
	volume = GetEnt("bridge_battle_ge_gv", "targetname");
	var_7cfde525 SetGoal(volume);
}

/*
	Name: function_61700635
	Namespace: namespace_20a6d5c1
	Checksum: 0xE7422162
	Offset: 0x6CF8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_61700635()
{
	var_adad709 = GetEnt("spawn_door7_5_1", "targetname");
	var_adad709 moveto(var_adad709.origin + VectorScale((0, 0, -1), 136), 6);
	var_adad709 waittill("movedone");
	var_adad709 disconnectpaths();
}

/*
	Name: function_800cbac6
	Namespace: namespace_20a6d5c1
	Checksum: 0x48D7E2FE
	Offset: 0x6D90
	Size: 0x9B
	Parameters: 4
	Flags: None
*/
function function_800cbac6(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	var_15aaf918 = struct::get("s_glass_squib", "targetname");
	if(isdefined(var_15aaf918))
	{
		/#
			IPrintLnBold("Dev Block strings are not supported");
		#/
		glassRadiusDamage(var_15aaf918.origin, 150, 50, 50);
	}
}

/*
	Name: function_5b4279a3
	Namespace: namespace_20a6d5c1
	Checksum: 0x6766CC3C
	Offset: 0x6E38
	Size: 0x40B
	Parameters: 2
	Flags: None
*/
function function_5b4279a3(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(str_objective);
		sp_enemy = GetEnt("dc4_enemy_sponge", "script_noteworthy");
		sp_enemy spawner::add_spawn_function(&function_904f994);
		level thread function_3257371f();
		level thread function_61700635();
		level thread function_e7a8c6b();
		level thread namespace_431cac9::function_fda257c3();
		level thread namespace_431cac9::function_14be4cad();
		load::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
	}
	level function_17ceabc9();
	namespace_431cac9::function_fe64b86b("falling_nrc", struct::get("wallrun_corpse1"), 0);
	level thread function_3dcaa53a();
	level thread function_f31848ce();
	level thread function_8267fad4();
	level thread function_dcd3f360();
	level thread function_974bbb6b();
	level thread function_3604a049();
	level thread function_2ff2c34();
	level thread function_4753f046();
	level thread function_cb2b9cbf();
	spawner::add_spawn_function_group("siegebot_hospital", "script_noteworthy", &function_fd8c0654);
	spawner::add_spawn_function_group("siegebot_hospital", "script_noteworthy", &function_dce6e561);
	spawner::add_spawn_function_group("siegebot_hospital", "script_noteworthy", &function_1cd5a72e);
	level flag::init("hospital_door_up");
	level flag::init("dc4_dead_siegebots");
	foreach(player in level.players)
	{
		player clientfield::set_to_player("siegebot_fans", 1);
	}
	level flag::wait_till("up_to_detention_center_done");
	skipto::function_be8adfb8("up_to_detention_center");
}

/*
	Name: function_17ceabc9
	Namespace: namespace_20a6d5c1
	Checksum: 0x1E5D0996
	Offset: 0x7250
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_17ceabc9()
{
	var_b6a97ee5 = GetEntArray("infirmary_glass_triggers", "script_noteworthy");
	foreach(var_799e4c3a in var_b6a97ee5)
	{
		var_799e4c3a thread function_aa11d0bb();
	}
}

/*
	Name: function_aa11d0bb
	Namespace: namespace_20a6d5c1
	Checksum: 0xAEDF253A
	Offset: 0x7310
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_aa11d0bb()
{
	self trigger::wait_till();
	var_25cdefbd = struct::get(self.target);
	glassRadiusDamage(var_25cdefbd.origin, 20, 200, 200);
}

/*
	Name: function_2ff2c34
	Namespace: namespace_20a6d5c1
	Checksum: 0xEE818E8E
	Offset: 0x7388
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_2ff2c34()
{
	level endon("hash_cbbe14bc");
	trigger::wait_till("use_up_to_detention_center_triggers");
	a_triggers = GetEntArray("up_to_detention_center_triggers", "script_noteworthy");
	foreach(trigger in a_triggers)
	{
		trigger trigger::use(undefined, undefined, undefined, 0);
	}
}

/*
	Name: function_3604a049
	Namespace: namespace_20a6d5c1
	Checksum: 0x15962B3F
	Offset: 0x7470
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_3604a049()
{
	v_start = struct::get("s_dc_phalanx_start").origin;
	v_end = struct::get("s_dc_phalanx_end").origin;
	var_f835ddae = GetEnt("sp_dc_phalanx", "targetname");
	function_9b385ca5();
	var_de3c864 = phalanx;
	Initialize(var_de3c864, "phalanx_reverse_wedge", v_start, v_end, 2, 5, var_f835ddae);
	level flag::wait_till("dc4_dead_siegebots");
	var_de3c864 phalanx::ScatterPhalanx();
	var_f835ddae delete();
}

/*
	Name: function_dce6e561
	Namespace: namespace_20a6d5c1
	Checksum: 0x962589EB
	Offset: 0x75A8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_dce6e561()
{
	if(!isdefined(level.var_922b7c07))
	{
		level.var_922b7c07 = 0;
	}
	level.var_922b7c07++;
	level endon("hash_a8d150b1");
	self waittill("death");
	level.var_922b7c07--;
	if(level.var_922b7c07 <= 0)
	{
		level flag::set("dc4_dead_siegebots");
	}
}

/*
	Name: function_fd8c0654
	Namespace: namespace_20a6d5c1
	Checksum: 0xE1C717D4
	Offset: 0x7620
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_fd8c0654()
{
	self vehicle_ai::function_81b6f1ac();
	level flag::wait_till("hospital_door_up");
	self vehicle_ai::function_efe9815e();
}

/*
	Name: function_1cd5a72e
	Namespace: namespace_20a6d5c1
	Checksum: 0xBE342864
	Offset: 0x7680
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_1cd5a72e()
{
	self thread function_d818b993();
	self endon("hash_e4020782");
	self waittill("hash_bda2a10e");
	level waittill("ClonedEntity", clone);
	clone waittill("death");
	var_d9d5499a = (-8483, -783, 14848);
	var_3b6d07e9 = 312;
	if(DistanceSquared(clone.origin, var_d9d5499a) < var_3b6d07e9 * var_3b6d07e9)
	{
		clone notsolid();
		wait(5);
		if(isdefined(clone))
		{
			clone delete();
		}
	}
}

/*
	Name: function_d818b993
	Namespace: namespace_20a6d5c1
	Checksum: 0x4FD1EB36
	Offset: 0x7788
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_d818b993()
{
	self endon("hash_bda2a10e");
	self waittill("death");
	self notify("hash_e4020782");
}

/*
	Name: function_cb2b9cbf
	Namespace: namespace_20a6d5c1
	Checksum: 0xCE410578
	Offset: 0x77C0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_cb2b9cbf()
{
	level endon("hash_cbbe14bc");
	battlechatter::function_d9f49fba(0);
	flag::wait_till("start_up_to_detention_center");
	battlechatter::function_d9f49fba(1);
	flag::wait_till("trig_spawn_detention_center_kicked_guy");
	battlechatter::function_d9f49fba(0);
}

/*
	Name: function_4753f046
	Namespace: namespace_20a6d5c1
	Checksum: 0x640E4BE4
	Offset: 0x7850
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_4753f046()
{
	objectives::breadcrumb("up_to_detention_center_breadcrumb01");
}

/*
	Name: function_cbbe14bc
	Namespace: namespace_20a6d5c1
	Checksum: 0xE1C7D483
	Offset: 0x7878
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_cbbe14bc(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_lotus_go_to_taylor_prison_cell");
}

/*
	Name: function_39a310be
	Namespace: namespace_20a6d5c1
	Checksum: 0x818B5258
	Offset: 0x78C0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_39a310be()
{
	flag::wait_till("spawn_doomed_rapper");
	var_d031ee03 = spawner::simple_spawn_single("doomed_rapper");
	var_d031ee03.overrideActorDamage = &function_f0ce2a2f;
	flag::wait_till("rapper_is_doomed");
	if(isalive(var_d031ee03))
	{
		var_d031ee03 function_5c93563b();
	}
}

/*
	Name: function_5c93563b
	Namespace: namespace_20a6d5c1
	Checksum: 0xE4DFFEF6
	Offset: 0x7970
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_5c93563b()
{
	self endon("death");
	var_29839a5c = GetNode("doomed_rapper_pos", "targetname");
	self ai::force_goal(var_29839a5c.origin, 5, 1, undefined, undefined, 1);
	while(Distance2D(self.origin, var_29839a5c.origin) > 100)
	{
		wait(1);
	}
	var_3e32f05a = spawner::simple_spawn_single("raps_doomer");
	var_3e32f05a SetSpeed(19);
	foreach(var_5c4b8c35 in level.players)
	{
		self SetIgnoreEnt(var_5c4b8c35, 1);
	}
	var_3e32f05a SetEntityTarget(self);
	self thread function_b80c1b50(var_3e32f05a);
}

/*
	Name: function_f0ce2a2f
	Namespace: namespace_20a6d5c1
	Checksum: 0x4DDD300E
	Offset: 0x7B20
	Size: 0x9B
	Parameters: 12
	Flags: None
*/
function function_f0ce2a2f(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, str_weapon, v_point, v_dir, str_hit_loc, n_model_index, psOffsetTime, str_bone_name)
{
	if(e_inflictor.archetype === "raps")
	{
		n_damage = self.health;
	}
	else
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_b80c1b50
	Namespace: namespace_20a6d5c1
	Checksum: 0x4EA5ECC3
	Offset: 0x7BC8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_b80c1b50(var_3e32f05a)
{
	if(isdefined(var_3e32f05a) && var_3e32f05a.archetype === "raps")
	{
		self waittill("death", iDamage, sMeansOfDeath, weapon, sHitLoc, vDir);
		if(isdefined(var_3e32f05a))
		{
			v_dir = AnglesToForward(var_3e32f05a.angles) + anglesToUp(var_3e32f05a.angles) * 0.5;
			v_dir = v_dir * 64;
			self StartRagdoll();
			self LaunchRagdoll((v_dir[0], v_dir[1], v_dir[2] + 32));
			if(isalive(var_3e32f05a))
			{
				var_3e32f05a kill();
			}
		}
	}
}

/*
	Name: function_8267fad4
	Namespace: namespace_20a6d5c1
	Checksum: 0x2BEB2F19
	Offset: 0x7D40
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_8267fad4()
{
	ai_enemy = spawner::simple_spawn_single("dc4_jump_out");
	ai_enemy ai::set_ignoreall(1);
	trigger::wait_till("trig_fleeing_enemy");
	if(isdefined(ai_enemy))
	{
		ai_enemy ai::set_ignoreall(0);
		var_8b91eab7 = GetNode("jump_out_dest", "targetname");
		ai_enemy SetGoal(var_8b91eab7, 0, 64);
	}
}

/*
	Name: function_e7a8c6b
	Namespace: namespace_20a6d5c1
	Checksum: 0x91C67C5C
	Offset: 0x7E18
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function function_e7a8c6b()
{
	if(flag::get("wall_run_enemies_cleared"))
	{
		var_ad0cc537 = struct::get("hendricks_uptodc_wallrun_waitpos", "targetname");
		level.var_2fd26037 SetGoal(var_ad0cc537.origin, 1);
		if(level flag::get("all_players_spawned"))
		{
			var_72bda784 = Distance2D(level.players[0].origin, level.var_2fd26037.origin);
			var_cf29ba8c = 300;
			while(var_72bda784 > var_cf29ba8c)
			{
				/#
				#/
				wait(0.5);
				var_72bda784 = Distance2D(level.players[0].origin, level.var_2fd26037.origin);
			}
		}
		else
		{
			level flag::wait_till("all_players_spawned");
		}
	}
	util::delay(RandomFloatRange(2, 4), undefined, &namespace_431cac9::function_fe64b86b, "falling_nrc", struct::get("wallrun_corpse2"), 0);
	level thread scene::Play("to_security_station_mobile_shop_fall", "targetname");
	level thread scene::Play("cin_lot_07_05_detcenter_vign_wallrun_hendricks");
	level.var_2fd26037 waittill("goal");
	util::delay(RandomFloat(2), undefined, &namespace_431cac9::function_fe64b86b, "falling_nrc", struct::get("wallrun_corpse3"), 0);
	var_64dbd70a = GetEnt("trig_dc4_hendricks", "targetname");
	if(isdefined(var_64dbd70a))
	{
		var_64dbd70a trigger::use();
	}
	namespace_431cac9::function_fe64b86b("falling_nrc", struct::get("wallrun_corpse3"), 0);
}

/*
	Name: function_904f994
	Namespace: namespace_20a6d5c1
	Checksum: 0x819D1F14
	Offset: 0x8128
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_904f994()
{
	self.overrideActorDamage = &function_5f1eb24b;
}

/*
	Name: function_5f1eb24b
	Namespace: namespace_20a6d5c1
	Checksum: 0xE3576FE8
	Offset: 0x8150
	Size: 0x89
	Parameters: 12
	Flags: None
*/
function function_5f1eb24b(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, weapon, v_point, v_dir, str_hit_loc, psOffsetTime, boneIndex, n_model_index)
{
	if(!isPlayer(e_attacker))
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_3dcaa53a
	Namespace: namespace_20a6d5c1
	Checksum: 0x19B2E581
	Offset: 0x81E8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_3dcaa53a()
{
	ai_friendly = spawner::simple_spawn_single("dc4_friendly_sacrifice");
	ai_friendly.overrideActorDamage = &function_98c4a0b7;
	ai_friendly ai::set_ignoreme(1);
	var_9999ca8a = spawner::simple_spawn_single("dc4_deadly_rap", &function_ca258604);
	level scene::init("cin_lot_07_05_detcenter_vign_rapsdeath", Array(var_9999ca8a, ai_friendly));
	flag::wait_till("dc4_friendly_sacrifice");
	level thread scene::skipto_end("cin_lot_07_05_detcenter_vign_rapsdeath", undefined, undefined, 0.4);
	ai_shooter = spawner::simple_spawn_single("rapsdeath_shooter");
	if(isalive(ai_friendly))
	{
		ai_shooter thread ai::shoot_at_target("normal", ai_friendly, undefined, 2);
	}
	trigger::use("trig_hendricks_r01utd", "targetname");
}

/*
	Name: function_ca258604
	Namespace: namespace_20a6d5c1
	Checksum: 0x647D465C
	Offset: 0x8378
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_ca258604()
{
	var_9999ca8a = self;
	var_9999ca8a ai::set_ignoreall(1);
	util::magic_bullet_shield(var_9999ca8a);
	level waittill("hash_c1151572");
	var_9999ca8a ai::set_ignoreall(0);
	util::stop_magic_bullet_shield(var_9999ca8a);
}

/*
	Name: function_98c4a0b7
	Namespace: namespace_20a6d5c1
	Checksum: 0xA26D29A
	Offset: 0x8408
	Size: 0xAD
	Parameters: 12
	Flags: None
*/
function function_98c4a0b7(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, weapon, v_point, v_dir, str_hit_loc, psOffsetTime, boneIndex, n_model_index)
{
	if(isdefined(e_attacker.archetype) && e_attacker.archetype == "raps")
	{
		n_damage = 100;
	}
	else
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_4acf6164
	Namespace: namespace_20a6d5c1
	Checksum: 0x730BED3E
	Offset: 0x84C0
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_4acf6164(ai_friendly)
{
	self endon("death");
	while(1)
	{
		if(isdefined(ai_friendly))
		{
			var_1237bd50 = Distance2DSquared(ai_friendly.origin, self.origin);
			if(var_1237bd50 < 4096)
			{
				self DoDamage(self.health, self.origin);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d086631d
	Namespace: namespace_20a6d5c1
	Checksum: 0xF4B6DCA0
	Offset: 0x8568
	Size: 0xE1
	Parameters: 15
	Flags: None
*/
function function_d086631d(e_inflictor, e_attacker, n_damage, var_36537420, str_means_of_death, weapon, v_point, v_dir, str_hit_loc, v_damage_origin, var_d42b9169, b_damage_from_underneath, n_model_index, str_part_name, var_eca96ec1)
{
	if(isdefined(str_means_of_death) && str_means_of_death == "MOD_UNKNOWN")
	{
		n_damage = n_damage;
	}
	else if(isPlayer(e_attacker))
	{
		n_damage = n_damage * 0.09;
	}
	else
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_f31848ce
	Namespace: namespace_20a6d5c1
	Checksum: 0xD4B8A631
	Offset: 0x8658
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_f31848ce()
{
	trigger::wait_till("trig_fleeing_enemy");
	ai_enemy = spawner::simple_spawn_single("dc4_fleeing_enemy");
	ai_enemy endon("death");
	var_5249b1c2 = GetNode("fleeing_enemy_path", "targetname");
	ai_enemy ai::force_goal(var_5249b1c2, 64, 0, undefined, undefined, 1);
	ai_enemy waittill("goal");
	var_5249b1c2 = GetNode("fleeing_enemy_node", "targetname");
	ai_enemy ai::force_goal(var_5249b1c2, 64, 0, undefined, undefined, 1);
}

/*
	Name: function_dcd3f360
	Namespace: namespace_20a6d5c1
	Checksum: 0xF665C386
	Offset: 0x8768
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_dcd3f360()
{
	var_adad709 = GetEnt("spawn_door7_5_2", "targetname");
	var_adad709 moveto(var_adad709.origin - (0, 0, 144), 0.1);
	trigger::wait_till("trig_dc4_door");
	level exploder::exploder("fx_interior_sentry_reveal");
	var_adad709 = GetEnt("spawn_door7_5_2", "targetname");
	var_adad709 moveto(var_adad709.origin + (0, 0, 12), 1);
	var_adad709 waittill("movedone");
	var_adad709 playsound("evt_siegebot_door_buzz");
	wait(1.25);
	var_adad709 playsound("evt_siegebot_door");
	var_adad709 moveto(var_adad709.origin + (0, 0, 144 - 12), 3);
	var_adad709 waittill("movedone");
	level flag::set("hospital_door_up");
}

/*
	Name: function_974bbb6b
	Namespace: namespace_20a6d5c1
	Checksum: 0x281B569E
	Offset: 0x8948
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_974bbb6b()
{
	var_adad709 = GetEnt("hosp_hall_gate_10", "targetname");
	if(isdefined(var_adad709))
	{
		var_adad709 moveto(var_adad709.origin + VectorScale((0, 0, 1), 145), 1);
	}
	var_50de9d38 = 100;
	var_58576bff = GetEnt("hosp_hall_gate_10_L", "targetname");
	var_58576bff moveto(var_58576bff.origin + (0, var_50de9d38 * -1, 0), 1);
	var_bbc00d9a = GetEnt("hosp_hall_gate_10_R", "targetname");
	var_bbc00d9a moveto(var_bbc00d9a.origin + (0, var_50de9d38, 0), 1);
}

/*
	Name: function_acdf71f3
	Namespace: namespace_20a6d5c1
	Checksum: 0x9B642554
	Offset: 0x8AA0
	Size: 0x5C3
	Parameters: 2
	Flags: None
*/
function function_acdf71f3(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(str_objective);
		load::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
	}
	namespace_431cac9::function_3b6587d6(0, "lotus2_standdown_igc_umbra_gate");
	namespace_f4ff722a::function_a2c4c634();
	var_d6cea0d7 = GetEnt("trig_kick_door", "targetname");
	if(isdefined(var_d6cea0d7))
	{
		var_d6cea0d7 TriggerEnable(0);
	}
	level thread function_3699620f();
	level thread function_896c40b9();
	level thread function_ab3d9328();
	var_58576bff = GetEnt("det_door_prometheus_01_L", "targetname");
	var_bbc00d9a = GetEnt("det_door_prometheus_01_R", "targetname");
	var_58576bff moveto(var_58576bff.origin + VectorScale((0, 1, 0), 54), 1, 0.25, 0.25);
	var_bbc00d9a moveto(var_bbc00d9a.origin + VectorScale((0, -1, 0), 54), 1, 0.25, 0.25);
	battlechatter::function_d9f49fba(0);
	level thread function_14273be5();
	level thread function_d371cec6("dc_fallback_0");
	level thread function_d371cec6("dc_fallback_1");
	level thread function_d371cec6("dc_fallback_2");
	level thread function_7d9b9de2();
	level thread function_795646b8();
	level thread function_f7887a52();
	level thread function_fefb4f44();
	wait(1);
	level thread function_19cafdb6();
	level notify("hash_1206d494");
	var_c77d7d8e = GetEnt("trig_go_hendricks_after_kick", "targetname");
	if(isdefined(var_c77d7d8e))
	{
		var_c77d7d8e trigger::use();
	}
	e_door_clip = GetEnt("detention_center_door_clip", "targetname");
	e_door_clip notsolid();
	level scene::init("cin_lot_08_01_standdown_sh010");
	trigger::wait_till("trig_all_players_at_stand_down", "targetname", level.var_2fd26037);
	foreach(player in level.players)
	{
		player clientfield::set_to_player("siegebot_fans", 0);
	}
	e_door_clip solid();
	var_58576bff moveto(var_58576bff.origin + VectorScale((0, -1, 0), 54), 1, 0.25, 0.25);
	var_bbc00d9a moveto(var_bbc00d9a.origin + VectorScale((0, 1, 0), 54), 1, 0.25, 0.25);
	var_bbc00d9a playsound("evt_standdown_door_close");
	skipto::function_be8adfb8("detention_center");
	level notify("hash_5730accc");
	level.var_2fd26037 colors::enable();
}

/*
	Name: function_14273be5
	Namespace: namespace_20a6d5c1
	Checksum: 0xC6D16C80
	Offset: 0x9070
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_14273be5()
{
	level endon("hash_5730accc");
	level flag::wait_till("players_made_it_to_stand_down");
	level.var_2fd26037 colors::disable();
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 1);
	level.var_2fd26037 SetGoal(GetNode("hendricks_stand_down_door_node", "targetname"), 0, 32);
	level.var_2fd26037.allowbattlechatter["bc"] = 0;
	level.var_2fd26037 ai::set_behavior_attribute("coverIdleOnly", 1);
}

/*
	Name: function_3699620f
	Namespace: namespace_20a6d5c1
	Checksum: 0x3DDDB34
	Offset: 0x9168
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_3699620f()
{
	battlechatter::function_d9f49fba(0);
	flag::wait_till("start_detention_center_action");
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_896c40b9
	Namespace: namespace_20a6d5c1
	Checksum: 0x5A62BA27
	Offset: 0x91C0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_896c40b9()
{
	level endon("hash_5730accc");
	level thread function_ca30eede("aigroup_detention_center");
	level thread function_c928a4b5("dc_wave_1");
	level thread function_c928a4b5("dc_wave_2");
}

/*
	Name: function_ca30eede
	Namespace: namespace_20a6d5c1
	Checksum: 0x1EBE7E58
	Offset: 0x9238
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_ca30eede(str_ai_group)
{
	level endon("hash_5730accc");
	spawner::waittill_ai_group_cleared(str_ai_group);
	savegame::function_5d2cdd99();
}

/*
	Name: function_ab3d9328
	Namespace: namespace_20a6d5c1
	Checksum: 0xAEF884AC
	Offset: 0x9280
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_ab3d9328()
{
	battlechatter::function_d9f49fba(0);
	level dialog::remote("kane_entrance_is_ahead_on_0", 0.75);
	flag::wait_till("entering_detention_center");
	level thread util::function_d8eaed3d(2, 1);
	level dialog::remote("kane_reinforcements_have_0");
	level.var_2fd26037 dialog::say("hend_tell_us_something_we_0", 0.25);
	battlechatter::function_d9f49fba(1);
	flag::wait_till("flag_nrc_hounds_moving_in");
	level dialog::remote("kane_taylor_s_secured_the_0", 0.25);
	level dialog::remote("kane_hang_tight_few_more_0", 3);
	level dialog::remote("kane_access_restored_0", 3);
	level dialog::function_13b3b16a("plyr_copy_that_kane_we_0", 0.5);
}

/*
	Name: function_fefb4f44
	Namespace: namespace_20a6d5c1
	Checksum: 0x92CC1882
	Offset: 0x9410
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_fefb4f44()
{
	var_87248a54 = GetEnt("trig_end_enemies", "targetname");
	var_87248a54 endon("trigger");
	spawner::waittill_ai_group_cleared("dc_wave_1");
	trigger::use("trig_end_enemies");
}

/*
	Name: function_19cafdb6
	Namespace: namespace_20a6d5c1
	Checksum: 0xD63DAD14
	Offset: 0x9488
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_19cafdb6()
{
	objectives::breadcrumb("detention_center_breadcrumb01");
}

/*
	Name: function_d371cec6
	Namespace: namespace_20a6d5c1
	Checksum: 0x5B22E3A6
	Offset: 0x94B0
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_d371cec6(str_trigger)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	var_82fc0698 = GetEnt(str_trigger, "targetname");
	var_82fc0698 waittill("trigger");
	e_goal_volume = GetEnt(var_82fc0698.target, "targetname");
	a_enemies = GetAIArray("dc_bottom", "script_noteworthy");
	foreach(ai_enemy in a_enemies)
	{
		ai_enemy SetGoal(e_goal_volume, 1);
	}
}

/*
	Name: function_7d9b9de2
	Namespace: namespace_20a6d5c1
	Checksum: 0xD1648288
	Offset: 0x9600
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_7d9b9de2()
{
	trigger::wait_till("trig_dc_pamws_enemies");
	wait(2);
	var_935a64f = GetEnt("dc_stair_2_monster_clip", "targetname");
	var_935a64f connectpaths();
	var_935a64f delete();
}

/*
	Name: function_795646b8
	Namespace: namespace_20a6d5c1
	Checksum: 0x9334D1FD
	Offset: 0x9688
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_795646b8()
{
	trigger::wait_till("trig_dc_pamws");
	var_58576bff = GetEnt("detention_security_door_01_L", "targetname");
	var_bbc00d9a = GetEnt("detention_security_door_01_R", "targetname");
	var_58576bff moveto(var_58576bff.origin + VectorScale((-1, 0, 0), 100), 3);
	var_bbc00d9a moveto(var_bbc00d9a.origin + VectorScale((1, 0, 0), 100), 3);
}

/*
	Name: function_f7887a52
	Namespace: namespace_20a6d5c1
	Checksum: 0x38534DF7
	Offset: 0x9778
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_f7887a52()
{
	trigger::wait_till("trig_dc_phalanx");
	v_start = struct::get("dc_phalanx_wedge_start").origin;
	v_end = struct::get("dc_phalanx_wedge_end").origin;
	var_1b6ee6b2 = 3;
	if(level.players.size > 2)
	{
		var_1b6ee6b2 = 5;
	}
	var_7947347f = GetEnt("phalanx_spawner_01", "targetname", 0);
	var_73fc544 = GetEnt("phalanx_spawner_02", "targetname", 0);
	function_9b385ca5();
	var_52fcc5ab = RobotPhalanx;
	Initialize(var_52fcc5ab, "phanalx_wedge", v_start, v_end, 1, var_1b6ee6b2, var_7947347f);
}

/*
	Name: function_ab3ac518
	Namespace: namespace_20a6d5c1
	Checksum: 0x3EA3FFB8
	Offset: 0x98D8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_ab3ac518()
{
	self endon("death");
	self.goalRadius = 16;
	self waittill("goal");
	wait(1);
	var_ae8309eb = GetEnt("detention_security_door_01", "targetname");
	var_ae8309eb moveto(var_ae8309eb GetOrigin() - VectorScale((0, 0, 1), 128), 1);
	var_ae8309eb connectpaths();
	spawn_manager::enable("sm_detention_center_control_panel_cobra");
}

/*
	Name: function_5730accc
	Namespace: namespace_20a6d5c1
	Checksum: 0xA6DA6BEE
	Offset: 0x99B0
	Size: 0x7B
	Parameters: 4
	Flags: None
*/
function function_5730accc(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::complete("cp_level_lotus_go_to_taylor_holding_room");
	level util::clientNotify("riot_on");
	level scene::init("p7_fxanim_cp_lotus_interrogation_room_glass_bundle");
}

/*
	Name: init
	Namespace: namespace_20a6d5c1
	Checksum: 0xA4AF18C0
	Offset: 0x9A38
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function init()
{
	spawner::add_spawn_function_group("auto_delete", "script_string", &auto_delete);
}

