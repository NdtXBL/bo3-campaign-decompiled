#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_quadtank_util;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_city;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_hq;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\coop;
#using scripts\shared\_oob;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\vehicles\_siegebot;

#namespace namespace_ca56958;

/*
	Name: function_9c1fc2fd
	Namespace: namespace_ca56958
	Checksum: 0x689B5290
	Offset: 0x1920
	Size: 0xF0B
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(str_objective, var_74cd64bc)
{
	level flag::init("plaza_battle_hq_entrance_door_hacked");
	level flag::init("blast_doors_opened");
	level flag::init("plaza_battle_approach_reached");
	level flag::init("plaza_battle_blast_door_left" + "_opened");
	level flag::init("plaza_battle_blast_door_right" + "_opened");
	level flag::init("plaza_battle_blast_door_left" + "_ready");
	level flag::init("plaza_battle_blast_door_right" + "_ready");
	level flag::init("plaza_battle_exit_cleared");
	level flag::init("plaza_battle_front_defenses_broken");
	level flag::init("plaza_battle_hunter_destroyed");
	level flag::init("plaza_battle_intro_artillery_in_position");
	level flag::init("plaza_battle_intro_artillery_objective_start");
	level flag::init("plaza_battle_kane_enter_ready");
	level flag::init("plaza_battle_objective_started");
	level flag::init("plaza_boss_dead");
	level flag::init("plaza_battle_vtol_drop_crew_completed");
	level flag::init("plaza_battle_intro_battle_start");
	/#
		level.var_d21daa68 = 0;
	#/
	/#
		level thread function_65cbc694();
	#/
	level thread function_ad90c3f4();
	callback::on_spawned(&on_player_spawned);
	callback::on_actor_damage(&on_actor_damage);
	/#
		callback::on_actor_killed(&on_actor_killed);
	#/
	/#
		callback::on_vehicle_killed(&on_vehicle_killed);
	#/
	spawner::add_spawn_function_group("plaza_battle_artillery", "targetname", &function_29fa5d37);
	spawner::add_spawn_function_group("plaza_battle_intro_allies", "script_aigroup", &function_2b6c19a4);
	spawner::add_spawn_function_group("plaza_battle_reinforcements", "script_noteworthy", &function_f474e246);
	spawner::add_spawn_function_group("plaza_battle_siegebot", "script_noteworthy", &function_1dbc4cbb);
	spawner::add_spawn_function_group("plaza_battle_vehicle_ai_splined_entry", "script_noteworthy", &function_c89b08c9);
	spawner::add_spawn_function_group("plaza_vtol_robots", "targetname", &function_f474e246);
	spawner::add_spawn_function_group("robot_phalanx", "script_noteworthy", &function_4a1261ef);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_8e9083ff::function_da579a5d(str_objective, 1);
		spawner::add_spawn_function_group("plaza_battle_boss", "targetname", &function_8fdd138);
		spawner::add_spawn_function_group("plaza_battle_alliies", "targetname", &function_adfa2b54);
		spawn_manager::enable("plaza_battle_allies_left_spawn_manager");
		spawn_manager::enable("plaza_battle_allies_right_spawn_manager");
		level.var_438d2fd9 = [];
		level.var_a06b011 = spawner::simple_spawn_single("plaza_battle_boss");
		exploder::exploder("streets_tower_wasp_swarm");
		level clientfield::set("zurich_city_ambience", 1);
		scene::add_scene_func("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle", &namespace_8e9083ff::function_162b9ea0, "init");
		level scene::init("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle");
		load::function_a2995f22();
	}
	else
	{
		Array::thread_all(level.activePlayers, &function_e204c270);
		Array::thread_all(level.activePlayers, &function_424191b5);
	}
	function_9e3608e3("hq_entry_panel_hacked");
	if(isdefined(level.BZM_ZURICHDialogue1_3Callback))
	{
		level thread [[level.BZM_ZURICHDialogue1_3Callback]]();
	}
	level thread function_51e389ee(var_74cd64bc);
	level thread function_e0828083();
	level thread function_5e886797();
	level thread function_d9c927f6();
	level thread function_9590c294(var_74cd64bc);
	vh_turret = spawner::simple_spawn_single("plaza_battle_turret", &function_5268b119);
	level thread namespace_8e9083ff::function_2361541e("plaza_battle");
	trigger::wait_till("plaza_battle_spawn_trig", undefined, undefined, 0);
	level thread namespace_67110270::function_228c7b0f();
	var_f7e53696 = GetEntArray("plaza_battle_intro_car_destroy_damagetrig", "targetname");
	Array::thread_all(var_f7e53696, &function_a2b45d70);
	scene::add_scene_func("cin_zur_04_01_ext_vign_lockdown", &function_87ebab3e, "init");
	level scene::init("cin_zur_04_01_ext_vign_lockdown");
	battlechatter::function_d9f49fba(1);
	namespace_8e9083ff::function_1b3dfa61("plaza_battle_train_exit_breadcrumb_struct_trig", undefined, 180, 1000);
	level flag::set("plaza_battle_approach_reached");
	savegame::function_5d2cdd99();
	level flag::wait_till("plaza_battle_intro_reached");
	level notify("hash_866f690c");
	function_bab1ff00("garage_umbra_gate", 0);
	trigger::wait_till("plaza_battle_midpoint_trig", undefined, undefined, 0);
	var_f7e53696 = GetEntArray("plaza_battle_intro_car_destroy_damagetrig", "targetname");
	Array::delete_all(var_f7e53696);
	t_cleanup = GetEnt("garage_cleanup_trig", "targetname");
	t_cleanup delete();
	level flag::wait_till_all(Array("plaza_boss_dead", "plaza_battle_hunter_destroyed", "plaza_battle_intro_artillery_destroyed"));
	level flag::set("plaza_battle_cleared");
	level thread namespace_67110270::function_973b77f9();
	var_5cca3f31 = GetEnt("plaza_battle_blast_door_open_trig", "targetname");
	var_5cca3f31 namespace_8e9083ff::function_d1996775();
	function_6ddd4fa4("hq_entry_panel_hacked");
	function_9e3608e3("hq_entry_panel");
	level flag::set("plaza_battle_hq_entrance_door_hacked");
	function_bc249f36();
	level flag::set("blast_doors_opened");
	trigger::wait_till("plaza_battle_enter_hq_gathertrig", undefined, level.var_3d556bcd);
	level thread namespace_67110270::function_ce97ecac();
	blast_doors_close();
	a_ai = GetAITeamArray("axis", "allies");
	foreach(ai in a_ai)
	{
		if(!ai util::is_hero())
		{
			ai delete();
		}
	}
	Array::run_all(GetCorpseArray(), &delete);
	level.var_a06b011 = undefined;
	level.var_e651620c = undefined;
	level.var_438d2fd9 = undefined;
	level.var_782205f8 = undefined;
	foreach(e_player in level.players)
	{
		e_player.var_33edeabe = 1;
	}
	foreach(e_player in level.activePlayers)
	{
		e_player util::function_df6eb506(0);
	}
	level notify("hash_73e5a63e");
	callback::remove_on_spawned(&on_player_spawned);
	callback::remove_on_actor_damage(&on_actor_damage);
	callback::remove_on_ai_spawned(&on_ai_spawned);
	/#
		callback::remove_on_actor_killed(&on_actor_killed);
	#/
	/#
		callback::remove_on_vehicle_killed(&on_vehicle_killed);
	#/
	/#
		level.var_d21daa68 = undefined;
	#/
	var_62e3398b = GetSpawnerArray("robot_phalanx", "script_noteworthy");
	Array::thread_all(var_62e3398b, &spawner::remove_spawn_function, &function_4a1261ef);
	var_bf9f9fb8 = GetSpawnerArray("plaza_battle_boss", "targetname");
	Array::thread_all(var_bf9f9fb8, &spawner::remove_spawn_function, &function_8fdd138);
	level clientfield::set("zurich_city_ambience", 0);
	level.var_3d556bcd thread namespace_8e9083ff::function_4fb68dd5();
	Array::thread_all(level.activePlayers, &function_cb30d060);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_ad90c3f4
	Namespace: namespace_ca56958
	Checksum: 0x1A4228E4
	Offset: 0x2838
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_ad90c3f4()
{
	level.var_a2319815 = spawn("trigger_box", (-5899, 34022, -4191), 0, 8000, 8000, 8000);
	level.var_a2319815 endon("death");
	ent = undefined;
	while(1)
	{
		level.var_a2319815 waittill("trigger", ent);
		if(isai(ent))
		{
			ent kill();
		}
	}
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_ca56958
	Checksum: 0x1C31B5F6
	Offset: 0x28F8
	Size: 0x16B
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_8e9083ff::function_4d032f25(0);
	if(!var_74cd64bc)
	{
		level.var_3d556bcd thread namespace_8e9083ff::function_fe5160df(0);
	}
	level namespace_8e9083ff::function_b0f0dd1f(0);
	level thread namespace_8e9083ff::function_4a00a473("plaza_battle");
	if(var_74cd64bc)
	{
		objectives::complete("cp_level_zurich_assault_hq_obj");
		objectives::complete("cp_level_zurich_enter_hq_destroy_aspc_obj");
		objectives::complete("cp_level_zurich_enter_hq_destroy_hunter_obj");
		objectives::complete("cp_level_zurich_enter_hq_destroy_aspml_obj");
		objectives::complete("cp_level_zurich_enter_hq_awaiting_obj");
		objectives::complete("cp_level_zurich_enter_hq_hack_obj");
		objectives::complete("cp_level_zurich_enter_hq_obj");
	}
	if(isdefined(level.var_a2319815))
	{
		level.var_a2319815 delete();
	}
}

/*
	Name: function_5ea42950
	Namespace: namespace_ca56958
	Checksum: 0xF1F896EA
	Offset: 0x2A70
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_5ea42950()
{
	level flag::wait_till_any(Array("plaza_battle_intro_artillery_destroyed", "plaza_boss_dead"));
	var_fe0af0a5 = GetVehicleNode("plaza_battle_hunter_combat_spline", "targetname");
	var_782205f8 = spawner::simple_spawn_single("zurich_ambient_hunter", &function_c89b08c9, var_fe0af0a5);
	var_782205f8 waittill("death");
	level flag::set("plaza_battle_hunter_destroyed");
	savegame::function_5d2cdd99();
}

/*
	Name: function_e204c270
	Namespace: namespace_ca56958
	Checksum: 0xF92B9A50
	Offset: 0x2B50
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_e204c270()
{
	self endon("death");
	self notify("hash_1f15947d");
	self endon("hash_1f15947d");
	level endon("hash_ef7fbb43");
	do
	{
		self waittill("weapon_change_complete", var_81ad4fd7);
	}
	while(!(!isdefined(var_81ad4fd7.isHeroWeapon) && var_81ad4fd7.isHeroWeapon));
	self waittill("weapon_change_complete");
	while(!(isdefined(self.var_a2168b36) && self.var_a2168b36))
	{
		self coop::function_e9f7384d();
		level util::waittill_any("trophy_system_disabled", "trophy_system_destroyed");
		self thread function_2df89aaf();
	}
}

/*
	Name: function_2df89aaf
	Namespace: namespace_ca56958
	Checksum: 0x8FA4DACC
	Offset: 0x2C48
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_2df89aaf()
{
	self notify("hash_87667d63");
	self endon("hash_87667d63");
	self endon("hash_1f15947d");
	level endon("hash_ef7fbb43");
	while(!(isdefined(self.var_a2168b36) && self.var_a2168b36))
	{
		self waittill("weapon_change_complete", var_81ad4fd7);
		if(isdefined(var_81ad4fd7.isHeroWeapon) && var_81ad4fd7.isHeroWeapon)
		{
			self.var_a2168b36 = 1;
			self notify("hash_1f15947d");
		}
	}
}

/*
	Name: on_player_spawned
	Namespace: namespace_ca56958
	Checksum: 0x9C7D2953
	Offset: 0x2D00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self thread function_2e5e657b();
	self function_424191b5();
	self function_e204c270();
}

/*
	Name: function_2e5e657b
	Namespace: namespace_ca56958
	Checksum: 0x71498006
	Offset: 0x2D58
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_2e5e657b()
{
	level endon("hash_a835a95b");
	self endon("death");
	if(level flag::get("plaza_battle_train_exit_reached"))
	{
		return;
	}
	while(1)
	{
		self waittill("weapon_fired");
		var_b893746c = spawner::get_ai_group_ai("robot_phalanx");
		foreach(ai in var_b893746c)
		{
			var_b8f6e26f = self util::is_player_looking_at(ai GetEye(), 0.98, 1, self);
			if(var_b8f6e26f && self util::is_ads())
			{
				level flag::set("plaza_battle_intro_battle_start");
				return;
			}
		}
	}
}

/*
	Name: function_d32cd515
	Namespace: namespace_ca56958
	Checksum: 0x82CFFE3D
	Offset: 0x2EC0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_d32cd515()
{
	/#
		var_90911853 = GetWeapon("Dev Block strings are not supported");
		if(!self HasWeapon(var_90911853))
		{
			self GiveWeapon(var_90911853);
			self SetWeaponAmmoClip(var_90911853, var_90911853.clipSize);
			self giveMaxAmmo(var_90911853);
		}
	#/
}

/*
	Name: on_actor_damage
	Namespace: namespace_ca56958
	Checksum: 0xEA04E259
	Offset: 0x2F70
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function on_actor_damage(params)
{
	if(level.players.size > 1 || !self.archetype === "robot" || !isdefined(params.eAttacker) || !params.eAttacker util::is_hero())
	{
		return;
	}
	self util::stop_magic_bullet_shield();
	self kill();
}

/*
	Name: on_actor_killed
	Namespace: namespace_ca56958
	Checksum: 0x362A840B
	Offset: 0x3018
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function on_actor_killed(var_d4457625)
{
	/#
		if(!self.archetype === "Dev Block strings are not supported" || !isPlayer(var_d4457625.eAttacker))
		{
			return;
		}
		self function_2f458d44();
	#/
}

/*
	Name: on_vehicle_killed
	Namespace: namespace_ca56958
	Checksum: 0xDB28B8A8
	Offset: 0x3080
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function on_vehicle_killed(var_d4457625)
{
	/#
		if(!isPlayer(var_d4457625.eAttacker))
		{
			return;
		}
		self function_2f458d44();
	#/
}

/*
	Name: function_2f458d44
	Namespace: namespace_ca56958
	Checksum: 0x10E7E4F1
	Offset: 0x30D0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_2f458d44()
{
	/#
		level.var_d21daa68++;
	#/
}

/*
	Name: function_65cbc694
	Namespace: namespace_ca56958
	Checksum: 0x11F51707
	Offset: 0x30E8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_65cbc694()
{
	/#
		level endon("hash_339fe39c");
		while(isdefined(level.var_d21daa68))
		{
			wait(4);
			iprintln("Dev Block strings are not supported" + level.var_d21daa68);
		}
	#/
}

/*
	Name: on_ai_spawned
	Namespace: namespace_ca56958
	Checksum: 0xE9D56688
	Offset: 0x3140
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function on_ai_spawned()
{
	if(self.archetype === "robot")
	{
		if(!level flag::get("plaza_battle_cleared"))
		{
			self function_4e20543d();
			return;
		}
		self function_d297683e();
	}
}

/*
	Name: function_4e20543d
	Namespace: namespace_ca56958
	Checksum: 0x308603EE
	Offset: 0x31B0
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_4e20543d()
{
	self endon("death");
	var_a8a66403 = 22;
	if(level flag::get("plaza_battle_hunter_destroyed"))
	{
		var_a8a66403 = 40;
	}
	var_56f344e5 = namespace_8e9083ff::function_411dc61b(var_a8a66403, 18);
	if(RandomInt(100) <= var_56f344e5)
	{
		self colors::disable();
	}
	wait(0.05);
	var_bd24b897 = namespace_8e9083ff::function_411dc61b(10, 5);
	if(RandomInt(100) <= var_bd24b897)
	{
		self function_bca2e7();
	}
}

/*
	Name: function_bca2e7
	Namespace: namespace_ca56958
	Checksum: 0xE9D97408
	Offset: 0x32C0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_bca2e7()
{
	self.script_health = namespace_8e9083ff::function_411dc61b(Int(self.health * 8), Int(self.health / 2));
	self colors::disable();
	self ai::set_behavior_attribute("rogue_control", "forced_level_3");
	self ai::set_behavior_attribute("rogue_control_speed", "sprint");
	self.team = "axis";
}

/*
	Name: function_d297683e
	Namespace: namespace_ca56958
	Checksum: 0xA52051F6
	Offset: 0x33A0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_d297683e()
{
	self endon("death");
	self colors::disable();
	wait(0.05);
	n_chance = namespace_8e9083ff::function_411dc61b(30, 25);
	if(RandomInt(100) <= n_chance)
	{
		self function_bca2e7();
	}
}

/*
	Name: siegebot_callback_damage
	Namespace: namespace_ca56958
	Checksum: 0x9F034580
	Offset: 0x3430
	Size: 0x317
	Parameters: 15
	Flags: None
*/
function siegebot_callback_damage(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, damageFromUnderneath, modelIndex, partName, vSurfaceNormal)
{
	if(isdefined(level.var_7ebc8836) && isai(eAttacker))
	{
		if(level.var_7ebc8836)
		{
			var_df4257db = namespace_8e9083ff::function_411dc61b(5, -1);
			iDamage = Int(iDamage * var_df4257db);
		}
		else if(!level.var_7ebc8836)
		{
			iDamage = 0;
		}
	}
	num_players = GetPlayers().size;
	maxDamage = self.healthdefault * 0.4 - 0.02 * num_players;
	if(sMeansOfDeath !== "MOD_UNKNOWN" && iDamage > maxDamage)
	{
		iDamage = maxDamage;
	}
	if(vehicle_ai::should_emp(self, weapon, sMeansOfDeath, eInflictor, eAttacker))
	{
		minEmpDownTime = 0.8 * self.settings.empdowntime;
		maxEmpDownTime = 1.2 * self.settings.empdowntime;
		self notify("emped", RandomFloatRange(minEmpDownTime, maxEmpDownTime), eAttacker, eInflictor);
	}
	if(!isdefined(self.damageLevel))
	{
		self.damageLevel = 0;
		self.newDamageLevel = self.damageLevel;
	}
	newDamageLevel = vehicle::should_update_damage_fx_level(self.health, iDamage, self.healthdefault);
	if(newDamageLevel > self.damageLevel)
	{
		self.newDamageLevel = newDamageLevel;
	}
	if(self.newDamageLevel > self.damageLevel)
	{
		self.damageLevel = self.newDamageLevel;
		driver = self GetSeatOccupant(0);
		if(!isdefined(driver))
		{
			self notify("pain");
		}
		vehicle::set_damage_fx_level(self.damageLevel);
	}
	return iDamage;
}

/*
	Name: function_51e389ee
	Namespace: namespace_ca56958
	Checksum: 0x5FF73CCA
	Offset: 0x3750
	Size: 0x34B
	Parameters: 1
	Flags: None
*/
function function_51e389ee(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		objectives::set("cp_level_zurich_assault_hq_obj");
		objectives::set("cp_level_zurich_assault_hq_awaiting_obj");
		objectives::Hide("cp_level_zurich_assault_hq_obj");
	}
	level flag::wait_till("plaza_battle_approach_reached");
	objectives::Hide("cp_level_zurich_assault_hq_awaiting_obj");
	objectives::show("cp_level_zurich_assault_hq_obj");
	objectives::breadcrumb("plaza_battle_intro_breadcrumb_trig", "cp_waypoint_breadcrumb");
	objectives::complete("cp_level_zurich_assault_hq_obj");
	objectives::set("cp_level_zurich_enter_hq_awaiting_obj");
	level flag::set("plaza_battle_objective_started");
	level flag::wait_till_all(Array("plaza_battle_objective_started", "plaza_battle_intro_artillery_objective_start"));
	if(isalive(level.var_e651620c))
	{
		objectives::Hide("cp_level_zurich_enter_hq_awaiting_obj");
		objectives::set("cp_level_zurich_enter_hq_destroy_aspc_obj", level.var_e651620c);
		level.var_e651620c waittill("death");
		objectives::complete("cp_level_zurich_enter_hq_destroy_aspc_obj");
		objectives::show("cp_level_zurich_enter_hq_awaiting_obj");
	}
	level flag::wait_till("plaza_battle_cleared");
	wait(0.05);
	objectives::complete("cp_level_zurich_enter_hq_awaiting_obj");
	objectives::set("cp_level_zurich_enter_hq_hack_obj");
	level flag::wait_till("plaza_battle_hq_entrance_door_hacked");
	objectives::complete("cp_level_zurich_enter_hq_hack_obj");
	objectives::set("cp_level_zurich_enter_hq_awaiting_obj");
	level flag::wait_till_all(Array("plaza_battle_kane_enter_ready", "blast_doors_opened"));
	objectives::set("cp_level_zurich_enter_hq_obj");
	objectives::set("cp_waypoint_breadcrumb", struct::get("plaza_battle_hq_enter_gatherpoint"));
	trigger::wait_till("plaza_battle_enter_hq_gathertrig", undefined, level.var_3d556bcd);
	objectives::complete("cp_waypoint_breadcrumb");
	objectives::complete("cp_level_zurich_enter_hq_obj");
}

/*
	Name: function_3dc6a02c
	Namespace: namespace_ca56958
	Checksum: 0x9085DBDC
	Offset: 0x3AA8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_3dc6a02c(str_objective)
{
	objectives::Hide("cp_level_zurich_enter_hq_awaiting_obj");
	objectives::set(str_objective, self);
	self waittill("death");
	objectives::complete(str_objective);
	objectives::show("cp_level_zurich_enter_hq_awaiting_obj");
}

/*
	Name: function_87ebab3e
	Namespace: namespace_ca56958
	Checksum: 0xCE2B67D8
	Offset: 0x3B28
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_87ebab3e(a_ents)
{
	level endon("hash_1fc32e88");
	a_ents["plaza_battle_intro_guy"] endon("death");
	var_7b7786bb = struct::get("plaza_battle_intro_sitrep_trig_spot");
	a_ents["plaza_battle_intro_guy"].allowbattlechatter["bc"] = 0;
	a_ents["plaza_battle_intro_guy"] colors::disable();
	nd_goal = GetNode("plaza_battle_intro_guy_node", "targetname");
	a_ents["plaza_battle_intro_guy"] SetGoal(nd_goal);
	t_trig = spawn("trigger_radius", var_7b7786bb.origin, 0, 2292.3, 128);
	t_trig.script_objective = "plaza_battle";
	t_trig waittill("trigger");
	t_trig delete();
	scene::add_scene_func("cin_zur_04_01_ext_vign_lockdown", &function_da51418e, "play");
	scene::add_scene_func("cin_zur_04_01_ext_vign_lockdown", &function_7c1c218, "done");
	level thread scene::Play("cin_zur_04_01_ext_vign_lockdown");
}

/*
	Name: function_da51418e
	Namespace: namespace_ca56958
	Checksum: 0x14C2F05
	Offset: 0x3D18
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_da51418e(a_ents)
{
	a_ents["plaza_battle_intro_guy"] waittill("hash_499164c7");
	level dialog::function_13b3b16a("plyr_we_ll_see_about_that_0");
	level flag::set("plaza_battle_intro_artillery_objective_start");
}

/*
	Name: function_7c1c218
	Namespace: namespace_ca56958
	Checksum: 0x7BEA0002
	Offset: 0x3D88
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_7c1c218(a_ents)
{
	level endon("hash_1fc32e88");
	a_ents["plaza_battle_intro_guy"] endon("death");
	a_ents["plaza_battle_intro_guy"].allowbattlechatter["bc"] = 1;
	level.var_e651620c util::waittill_any("trophy_system_disabled", "trophy_system_destroyed", "death");
	a_ents["plaza_battle_intro_guy"] colors::enable();
}

/*
	Name: function_5e886797
	Namespace: namespace_ca56958
	Checksum: 0xD3AD7A48
	Offset: 0x3E38
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_5e886797()
{
	level flag::wait_till("blast_doors_opened");
	level dialog::function_13b3b16a("plyr_you_still_with_me_k_0", 1);
	level.var_3d556bcd dialog::say("kane_i_m_still_with_you_0", 1);
}

/*
	Name: function_d9c927f6
	Namespace: namespace_ca56958
	Checksum: 0x6300813D
	Offset: 0x3EB0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_d9c927f6()
{
	level flag::wait_till("plaza_battle_hunter_destroyed");
	level dialog::function_13b3b16a("plyr_i_don_t_know_if_you_1", 1);
	level dialog::function_13b3b16a("plyr_it_s_not_too_late_to_0", 1);
	level dialog::function_13b3b16a("plyr_give_yourself_up_and_0", 1);
	level dialog::function_13b3b16a("plyr_you_know_me_you_can_0", 1);
}

/*
	Name: function_e0828083
	Namespace: namespace_ca56958
	Checksum: 0x515D1086
	Offset: 0x3F60
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e0828083()
{
	level flag::wait_till("plaza_battle_intro_reached");
	level flag::wait_till("plaza_battle_hunter_destroyed");
	level flag::set("plaza_battle_kane_enter_ready");
}

/*
	Name: function_c635bfa2
	Namespace: namespace_ca56958
	Checksum: 0xF589D884
	Offset: 0x3FE8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c635bfa2()
{
	self waittill("death");
}

/*
	Name: function_9b61634f
	Namespace: namespace_ca56958
	Checksum: 0x90D87D07
	Offset: 0x4000
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_9b61634f()
{
	self endon("death");
	level flag::wait_till("plaza_battle_intro_artillery_in_position");
}

/*
	Name: function_d0b419ee
	Namespace: namespace_ca56958
	Checksum: 0xFFDC218E
	Offset: 0x4038
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_d0b419ee()
{
	self waittill("death");
}

/*
	Name: function_c89b08c9
	Namespace: namespace_ca56958
	Checksum: 0xA7D68852
	Offset: 0x4050
	Size: 0x203
	Parameters: 1
	Flags: None
*/
function function_c89b08c9(var_9c1a7bea)
{
	self endon("death");
	if(!isdefined(var_9c1a7bea))
	{
		var_9c1a7bea = getvehiclenodearray(self.target, "targetname");
	}
	if(!IsArray(var_9c1a7bea))
	{
		var_9c1a7bea = Array(var_9c1a7bea);
	}
	nd_start = Array::random(var_9c1a7bea);
	self vehicle_ai::function_81b6f1ac();
	self ai::set_ignoreme(1);
	self DisableAimAssist();
	if(self.script_startstate === "off")
	{
		return;
	}
	self SetIgnoreEnt(level.var_3d556bcd, 1);
	if(isdefined(self.script_int))
	{
		self SetSpeed(self.script_int);
	}
	self thread function_f8f7624b();
	self vehicle::get_on_and_go_path(nd_start);
	self EnableAimAssist();
	self vehicle_ai::function_efe9815e();
	if(self.scriptvehicletype === "wasp")
	{
		self function_68e4ea91();
	}
	self ai::set_ignoreme(0);
	if(self.scriptvehicletype === "hunter")
	{
		self function_6c61fe9e();
	}
}

/*
	Name: function_29fa5d37
	Namespace: namespace_ca56958
	Checksum: 0x24647AC1
	Offset: 0x4260
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_29fa5d37()
{
	level.var_e651620c = self;
	/#
		if(IsGodMode(level.players[0]))
		{
			self.health = 1;
		}
	#/
	self SetIgnoreEnt(level.var_3d556bcd, 1);
	self namespace_855113f3::function_35209d64();
	self thread function_9200bc02();
	self function_e1159e2b();
	savegame::function_5d2cdd99();
	level flag::set("plaza_battle_intro_artillery_destroyed");
	level flag::set("plaza_battle_intro_artillery_in_position");
}

/*
	Name: function_2b6c19a4
	Namespace: namespace_ca56958
	Checksum: 0xE1084110
	Offset: 0x4368
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_2b6c19a4()
{
	self endon("death");
	if(level flag::get("plaza_battle_intro_artillery_destroyed") && !level flag::get("plaza_battle_hunter_destroyed"))
	{
		self util::magic_bullet_shield();
	}
}

/*
	Name: function_adfa2b54
	Namespace: namespace_ca56958
	Checksum: 0xEC55592F
	Offset: 0x43D8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_adfa2b54()
{
	if(!level flag::get("plaza_battle_train_exit_reached"))
	{
		self util::magic_bullet_shield();
		level flag::wait_till("plaza_battle_train_exit_reached");
		self util::stop_magic_bullet_shield();
	}
}

/*
	Name: function_1dbc4cbb
	Namespace: namespace_ca56958
	Checksum: 0xAACD3E1D
	Offset: 0x4458
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_1dbc4cbb()
{
	self.overrideVehicleDamage = &siegebot_callback_damage;
	if(!isdefined(self.script_string))
	{
		return;
	}
	self thread function_9683c997();
	if(isalive(self))
	{
		self function_7f39a78b();
	}
}

/*
	Name: function_91ec82e3
	Namespace: namespace_ca56958
	Checksum: 0xE610020A
	Offset: 0x44D0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_91ec82e3()
{
	self waittill("death");
	var_e936de8b = spawner::get_ai_group_ai(self.script_aigroup);
	Array::run_all(var_e936de8b, &function_155239af);
}

/*
	Name: function_155239af
	Namespace: namespace_ca56958
	Checksum: 0xCB146E2C
	Offset: 0x4538
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_155239af()
{
	n_health = self.health;
	switch(level.players.size)
	{
		case 1:
		{
			n_health = Int(self.health / 10);
			break;
		}
		case 2:
		{
			n_health = Int(self.health / 4);
			break;
		}
		case default:
		{
			return;
		}
	}
	if(n_health > 0 && n_health < self.health)
	{
		self.health = n_health;
	}
}

/*
	Name: function_9683c997
	Namespace: namespace_ca56958
	Checksum: 0xC99B12E0
	Offset: 0x4610
	Size: 0x5B3
	Parameters: 0
	Flags: None
*/
function function_9683c997()
{
	var_9b54f311 = self.script_string;
	var_e26726e5 = GetEnt(var_9b54f311 + "_top", "targetname");
	var_53fda872 = GetEnt(var_9b54f311 + "_mid", "targetname");
	var_3b8a22ab = GetEnt(var_9b54f311 + "_bot", "targetname");
	if(!isdefined(var_e26726e5) || !isdefined(var_53fda872) || !isdefined(var_3b8a22ab))
	{
		return;
	}
	/#
		RecordEnt(var_e26726e5);
	#/
	/#
		RecordEnt(var_53fda872);
	#/
	/#
		RecordEnt(var_3b8a22ab);
	#/
	var_496b7d52 = GetEnt(var_9b54f311 + "_oob_trig", "targetname");
	if(isdefined(var_496b7d52))
	{
		var_496b7d52 delete();
	}
	var_e26726e5 endon("death");
	var_53fda872 endon("death");
	var_3b8a22ab endon("death");
	level flag::clear(var_9b54f311 + "_ready");
	function_558d9f8d(var_e26726e5, var_53fda872, var_3b8a22ab);
	level flag::set(var_9b54f311 + "_opened");
	b_wait = 1;
	do
	{
		wait(2);
		a_ai = GetAITeamArray("axis", "allies");
		a_ents = ArrayCombine(a_ai, level.activePlayers, 0, 0);
		a_ents = ArraySortClosest(a_ents, var_e26726e5.origin, 1);
		foreach(e_ent in a_ents)
		{
			if(Distance2DSquared(e_ent.origin, var_e26726e5.origin) > 512 * 512)
			{
				b_wait = 0;
			}
		}
	}
	while(!b_wait);
	var_c0b90cf4 = GetEntArray("plaza_battle_siegebot", "script_noteworthy");
	foreach(var_2221060d in var_c0b90cf4)
	{
		if(vehicle::is_corpse(var_2221060d))
		{
			if(Distance2DSquared(var_2221060d.origin, var_e26726e5.origin) <= 200 * 200)
			{
				var_2221060d delete();
			}
		}
	}
	function_558d9f8d(var_e26726e5, var_53fda872, var_3b8a22ab, -48, -24, 0.3, 0);
	var_496b7d52 = namespace_8e9083ff::function_3789d4db(var_9b54f311, "trigger_box", 512, 512, 512);
	var_496b7d52.targetname = var_9b54f311 + "_oob_trig";
	var_496b7d52.script_objective = "plaza_battle";
	if(!isdefined(level.oob_triggers))
	{
		level.oob_triggers = [];
	}
	else if(!IsArray(level.oob_triggers))
	{
		level.oob_triggers = Array(level.oob_triggers);
	}
	level.oob_triggers[level.oob_triggers.size] = var_496b7d52;
	var_496b7d52 thread oob::waitForPlayerTouch();
	level flag::set(var_9b54f311 + "_ready");
}

/*
	Name: function_558d9f8d
	Namespace: namespace_ca56958
	Checksum: 0xBFD78EEA
	Offset: 0x4BD0
	Size: 0x1CB
	Parameters: 7
	Flags: None
*/
function function_558d9f8d(var_e26726e5, var_53fda872, var_3b8a22ab, n_dist, var_cc2fbac4, n_time, n_delay)
{
	if(!isdefined(n_dist))
	{
		n_dist = 48;
	}
	if(!isdefined(var_cc2fbac4))
	{
		var_cc2fbac4 = 24;
	}
	if(!isdefined(n_time))
	{
		n_time = 0.6;
	}
	if(!isdefined(n_delay))
	{
		n_delay = 0.1;
	}
	var_e26726e5 playsound("evt_siegebot_door_open");
	var_3b8a22ab MoveZ(n_dist, n_time);
	var_3b8a22ab waittill("movedone");
	var_3b8a22ab LinkTo(var_53fda872);
	wait(n_delay);
	var_53fda872 MoveZ(n_dist, n_time);
	var_53fda872 waittill("movedone");
	var_53fda872 LinkTo(var_e26726e5);
	wait(n_delay);
	var_e26726e5 MoveZ(n_dist + var_cc2fbac4, n_time);
	var_e26726e5 waittill("movedone");
	var_e26726e5 Unlink();
	var_53fda872 Unlink();
	var_3b8a22ab Unlink();
}

/*
	Name: function_8fdd138
	Namespace: namespace_ca56958
	Checksum: 0x508A6947
	Offset: 0x4DA8
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_8fdd138()
{
	level.var_a06b011 = self;
	self.var_5330ac94 = util::spawn_model("tag_origin", self GetTagOrigin("tag_target_upper"), self GetTagAngles("tag_target_upper"));
	self.var_5330ac94 LinkTo(self, "tag_target_upper", VectorScale((0, 0, 1), 256));
	/#
		if(IsGodMode(level.players[0]))
		{
			self.health = 1;
		}
	#/
	self thread function_9200bc02();
	self namespace_855113f3::function_35209d64();
	self function_695f38a7();
	self.var_5330ac94 delete();
	savegame::function_5d2cdd99();
	level flag::set("plaza_boss_dead");
}

/*
	Name: function_9200bc02
	Namespace: namespace_ca56958
	Checksum: 0x3D68DAB7
	Offset: 0x4F08
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_9200bc02()
{
	self waittill("death");
	e_org = util::spawn_model("tag_origin", self GetTagOrigin("tag_driver"), self GetTagAngles("tag_driver"));
	e_org clientfield::set("quadtank_raven_explosion", 1);
	wait(10);
	e_org delete();
}

/*
	Name: function_f474e246
	Namespace: namespace_ca56958
	Checksum: 0xD1830023
	Offset: 0x4FC0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f474e246()
{
	if(isdefined(self.target))
	{
		self function_4ac5ac5a();
	}
}

/*
	Name: function_4ac5ac5a
	Namespace: namespace_ca56958
	Checksum: 0xE0E0EED3
	Offset: 0x4FF0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_4ac5ac5a()
{
	self endon("death");
	for(s_scene = struct::get(self.target, "targetname"); isdefined(s_scene);  = struct::get(self.target, "targetname"))
	{
		level scene::Play(s_scene.targetname, "targetname", self);
		if(!isdefined(s_scene.target))
		{
			break;
		}
	}
}

/*
	Name: function_b8380f70
	Namespace: namespace_ca56958
	Checksum: 0xB366C5F8
	Offset: 0x50B0
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_b8380f70()
{
	self.health = 100000;
	self.team = "axis";
	self.var_7a04481c = namespace_8e9083ff::function_411dc61b(4000, 1000);
	self.var_90937e6 = struct::get_array("plaza_battle_vtol_crash_point");
	var_e62c1231 = spawn("trigger_radius", self.origin + VectorScale((0, 0, -1), 128), 0, 850, 400);
	var_e62c1231 EnableLinkTo();
	var_e62c1231 LinkTo(self);
	if(!isdefined(level.oob_triggers))
	{
		level.oob_triggers = [];
	}
	else if(!IsArray(level.oob_triggers))
	{
		level.oob_triggers = Array(level.oob_triggers);
	}
	level.oob_triggers[level.oob_triggers.size] = var_e62c1231;
	var_e62c1231 thread oob::waitForPlayerTouch();
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	self function_fbbb5f09();
	var_e62c1231 delete();
}

/*
	Name: function_fbbb5f09
	Namespace: namespace_ca56958
	Checksum: 0xE795E1FA
	Offset: 0x5288
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_fbbb5f09()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_4a1261ef
	Namespace: namespace_ca56958
	Checksum: 0x7A9CF46C
	Offset: 0x5488
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_4a1261ef()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self util::magic_bullet_shield(self);
	level flag::wait_till_any(Array("plaza_battle_intro_battle_start", "plaza_battle_train_exit_reached"));
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self util::stop_magic_bullet_shield(self);
	level flag::wait_till_timeout(5, "plaza_battle_intro_reached");
	self ai::set_behavior_attribute("phalanx", 0);
	self ai::set_behavior_attribute("move_mode", "rusher");
}

/*
	Name: function_5268b119
	Namespace: namespace_ca56958
	Checksum: 0xB635D1B1
	Offset: 0x55D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_5268b119()
{
	self vehicle::god_on();
}

/*
	Name: function_9590c294
	Namespace: namespace_ca56958
	Checksum: 0xDBE7EA94
	Offset: 0x55F8
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_9590c294(var_74cd64bc)
{
	var_cdbd94b1 = "plaza_battle_front_left_phalanx";
	var_7680f4ba = "plaza_battle_front_right_phalanx";
	if(var_74cd64bc)
	{
		var_cdbd94b1 = "plaza_battle_front_left_phalanx_skipto";
		var_7680f4ba = "plaza_battle_front_right_phalanx_skipto";
	}
	spawn_manager::function_41cd3a68(25);
	level thread function_a9380c64(var_cdbd94b1);
	level thread function_68fbe95d(var_7680f4ba);
	level.var_3d556bcd thread function_9d42d43b();
	function_e87739b();
	function_9c800460();
	function_c2827ec9();
	function_808ee2d6();
	function_a6915d3f();
	spawn_manager::function_41cd3a68(32);
}

/*
	Name: function_e87739b
	Namespace: namespace_ca56958
	Checksum: 0x71D9FA77
	Offset: 0x5720
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_e87739b()
{
	level.var_7ebc8836 = 0;
	trigger::use("plaza_battle_intro_allies_colortrig");
	var_bb164c73 = GetEntArray("plaza_battle_siegebot_back_spawn_trig", "targetname");
	foreach(t_spawn in var_bb164c73)
	{
		trigger::add_function(t_spawn, undefined, &function_55a7a759, var_bb164c73);
	}
	trigger::wait_till("plaza_battle_spawn_trig", undefined, undefined, 0);
	/#
		iprintln("Dev Block strings are not supported");
	#/
	function_8f5c1780();
	spawn_manager::enable("plaza_battle_artillery_spawn_manager");
	var_ce8ca61d = namespace_8e9083ff::function_b0dd51f4("plaza_battle_intro_back_enemy");
	level flag::wait_till_all(Array("plaza_battle_reached", "plaza_battle_train_exit_reached"));
	vh_vtol = spawner::simple_spawn_single("plaza_vtol_back_nocrew", &function_b8380f70);
	trigger::use("plaza_battle_intro_axis_colortrig");
	namespace_8e9083ff::function_2e1830eb("plaza_battle_robot_spawn_station_left", "plaza_battle");
	namespace_8e9083ff::function_2e1830eb("plaza_battle_robot_spawn_station_right", "plaza_battle");
	namespace_8e9083ff::function_2e1830eb("plaza_battle_robot_spawn_station_left2", "plaza_battle");
	namespace_8e9083ff::function_2e1830eb("plaza_battle_robot_spawn_station_right2", "plaza_battle");
	level thread function_4ef26b6("plaza_battle_room_robot_spawn_vign_right", "spawn_right_room_charging_robot");
	level thread function_4ef26b6("plaza_battle_room_robot_spawn_vign_left", "spawn_left_room_charging_robot");
}

/*
	Name: function_4ef26b6
	Namespace: namespace_ca56958
	Checksum: 0x7BCB31B0
	Offset: 0x5A00
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_4ef26b6(str_scene, str_trigger)
{
	level endon("hash_1fc32e88");
	trigger::wait_till(str_trigger, "script_noteworthy");
	var_ed98a51f = spawner::simple_spawn_single("sec_exploder", undefined, undefined, undefined, undefined, undefined, undefined, 1);
	v_pos = var_ed98a51f GetEye();
	var_ed98a51f endon("death");
	level scene::init(str_scene, "targetname", var_ed98a51f);
	while(!var_ed98a51f namespace_8e9083ff::player_can_see_me(406))
	{
		wait(0.5);
	}
	level scene::Play(str_scene, "targetname", var_ed98a51f);
}

/*
	Name: function_55a7a759
	Namespace: namespace_ca56958
	Checksum: 0x2CC26FA0
	Offset: 0x5B20
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_55a7a759(var_bb164c73)
{
	wait(2);
	foreach(t_spawn in var_bb164c73)
	{
		if(!isdefined(t_spawn))
		{
			break;
		}
		t_spawn trigger::use();
	}
}

/*
	Name: function_9c800460
	Namespace: namespace_ca56958
	Checksum: 0x56B863C2
	Offset: 0x5BD0
	Size: 0x2C3
	Parameters: 0
	Flags: None
*/
function function_9c800460()
{
	level flag::wait_till("plaza_battle_intro_artillery_in_position");
	/#
		iprintln("Dev Block strings are not supported");
	#/
	spawn_manager::enable("plaza_battle_robot_left_spawn_manager");
	spawn_manager::enable("plaza_battle_robot_right_spawn_manager");
	callback::on_ai_spawned(&on_ai_spawned);
	level flag::wait_till("plaza_battle_intro_artillery_destroyed");
	a_ai_allies = spawner::get_ai_group_ai("plaza_battle_intro_allies");
	Array::thread_all(a_ai_allies, &util::magic_bullet_shield);
	trigger::use("plaza_battle_intro_steps_allies_colortrig");
	trigger::use("plaza_battle_intro_steps_axis_colortrig");
	spawn_manager::kill("plaza_battle_robot_intro_left_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_robot_intro_right_spawn_manager", 1);
	spawn_manager::function_41cd3a68(15);
	var_64e85e6d = GetAISpeciesArray("axis", "robot");
	foreach(ai in var_64e85e6d)
	{
		ai.overrideActorDamage = &namespace_8e9083ff::function_8ac3f026;
	}
	vh_vtol = spawner::simple_spawn_single("plaza_vtol_back", &function_b8380f70);
	level thread function_a30a9296();
	level flag::set("plaza_battle_vtol_drop_crew_completed");
	vh_vtol util::waittill_any("reached_end_node", "death");
}

/*
	Name: function_a30a9296
	Namespace: namespace_ca56958
	Checksum: 0x3040C3CF
	Offset: 0x5EA0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a30a9296()
{
	level waittill("hash_594191c4");
	spawner::waittill_ai_group_ai_count("plaza_vtol_riders", 3);
	spawn_manager::function_41cd3a68(20);
}

/*
	Name: function_c2827ec9
	Namespace: namespace_ca56958
	Checksum: 0x6B8EBB60
	Offset: 0x5EF0
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_c2827ec9()
{
	/#
		iprintln("Dev Block strings are not supported");
	#/
	level thread function_5ea42950();
	trigger::use("plaza_battle_center_allies_colortrig");
	trigger::use("plaza_battle_center_axis_colortrig");
	level flag::wait_till("plaza_battle_hunter_destroyed");
	level.var_7ebc8836 = 1;
	trigger::use("plaza_battle_center_hunter_colortrig");
	a_ai_allies = spawner::get_ai_group_ai("plaza_battle_intro_allies");
	Array::thread_all(a_ai_allies, &util::stop_magic_bullet_shield);
	var_b1df9263 = namespace_8e9083ff::function_411dc61b(1.5, -0.5);
	var_1c97712d = namespace_8e9083ff::function_411dc61b(2, -0.5);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_left", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_right", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_left2", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_right2", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level flag::wait_till_any(Array("plaza_battle_blast_door_left" + "_opened", "plaza_battle_blast_door_right" + "_opened"));
	spawn_manager::disable("plaza_battle_robot_left_spawn_manager");
	spawn_manager::disable("plaza_battle_robot_right_spawn_manager");
	spawn_manager::enable("plaza_battle_robot_left_exit_spawn_manager");
	spawn_manager::enable("plaza_battle_robot_right_exit_spawn_manager");
	trigger::use("plaza_battle_buildings_allies_colortrig");
	level flag::wait_till_all(Array("plaza_battle_blast_door_left" + "_opened", "plaza_battle_blast_door_right" + "_opened"));
	level thread function_68a21f36();
	function_781f3832();
	level.var_7ebc8836 = undefined;
	trigger::use("plaza_battle_boss_allies_colortrig");
	trigger::use("plaza_battle_boss_axis_colortrig");
}

/*
	Name: function_781f3832
	Namespace: namespace_ca56958
	Checksum: 0x4E309C04
	Offset: 0x6278
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_781f3832()
{
	wait(0.05);
	if(isdefined(10))
	{
		__s = spawnstruct();
		__s endon("timeout");
		__s util::delay_notify(10, "timeout");
	}
	spawner::waittill_ai_group_ai_count("plaza_battle_back_siegebots", 1);
}

/*
	Name: function_68a21f36
	Namespace: namespace_ca56958
	Checksum: 0xF5EF173D
	Offset: 0x6308
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_68a21f36()
{
	spawn_manager::kill("plaza_battle_allies_left_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_allies_right_spawn_manager", 1);
	a_ai_allies = spawner::get_ai_group_ai("plaza_battle_intro_allies");
	foreach(ai in a_ai_allies)
	{
		self.overrideActorDamage = &namespace_8e9083ff::function_8ac3f026;
	}
	spawner::waittill_ai_group_ai_count("plaza_battle_intro_allies", 6);
	function_781f3832();
	spawn_manager::enable("plaza_battle_allies_left_center_spawn_manager");
	spawn_manager::enable("plaza_battle_allies_right_center_spawn_manager");
}

/*
	Name: function_808ee2d6
	Namespace: namespace_ca56958
	Checksum: 0xAD363FA6
	Offset: 0x6458
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_808ee2d6()
{
	level flag::wait_till("plaza_battle_cleared");
	/#
		iprintln("Dev Block strings are not supported");
	#/
	namespace_8e9083ff::function_5b0d9c63("plaza_battle_robot_spawn_station_left");
	namespace_8e9083ff::function_5b0d9c63("plaza_battle_robot_spawn_station_right");
	namespace_8e9083ff::function_5b0d9c63("plaza_battle_robot_spawn_station_left2");
	namespace_8e9083ff::function_5b0d9c63("plaza_battle_robot_spawn_station_right2");
	spawn_manager::enable("plaza_battle_robot_left_spawn_manager");
	spawn_manager::enable("plaza_battle_robot_right_spawn_manager");
	spawn_manager::enable("plaza_battle_robot_outro_left_spawn_manager");
	spawn_manager::enable("plaza_battle_robot_outro_right_spawn_manager");
	level thread function_b727abb6();
	spawn_manager::kill("plaza_battle_robot_center_spawn_manager", 1);
}

/*
	Name: function_b727abb6
	Namespace: namespace_ca56958
	Checksum: 0x927D287F
	Offset: 0x65A0
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_b727abb6()
{
	level endon("hash_339fe39c");
	wait(9);
	level thread function_3363e7dd();
	wait(21);
	spawn_manager::function_41cd3a68(8);
	var_b1df9263 = namespace_8e9083ff::function_411dc61b(1, -0.2);
	var_1c97712d = namespace_8e9083ff::function_411dc61b(1.5, -0.2);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_left", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_right", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_left2", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	level thread namespace_8e9083ff::function_27904cd4("plaza_battle_robot_spawn_station_right2", "plaza_battle", undefined, undefined, var_b1df9263, var_1c97712d);
	wait(24);
	level thread function_7e5ba0bd("plaza_battle_blast_door_left");
	level thread function_7e5ba0bd("plaza_battle_blast_door_right");
}

/*
	Name: function_7e5ba0bd
	Namespace: namespace_ca56958
	Checksum: 0xFEE4FB3A
	Offset: 0x6758
	Size: 0x197
	Parameters: 1
	Flags: None
*/
function function_7e5ba0bd(var_9b54f311)
{
	level endon("hash_339fe39c");
	while(1)
	{
		if(!level flag::get(var_9b54f311 + "_ready"))
		{
			level flag::wait_till_clear(var_9b54f311 + "_ready");
		}
		var_edad4a81 = GetEntArray(var_9b54f311, "script_string");
		foreach(var_c195d305 in var_edad4a81)
		{
			if(IsSpawner(var_c195d305))
			{
				var_20331917 = var_c195d305;
			}
		}
		var_51a7831a = spawner::simple_spawn_single(var_20331917, undefined, undefined, undefined, undefined, undefined, undefined, 1);
		if(isalive(var_51a7831a))
		{
			var_51a7831a waittill("death");
		}
		level flag::wait_till(var_9b54f311 + "_ready");
	}
}

/*
	Name: function_3363e7dd
	Namespace: namespace_ca56958
	Checksum: 0xCCDBB00E
	Offset: 0x68F8
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_3363e7dd()
{
	level endon("hash_339fe39c");
	var_8498e7d1 = Array("plaza_vtol_front", "plaza_vtol_back");
	vh_vtol = spawner::simple_spawn_single("plaza_vtol_front", &function_b8380f70);
	while(1)
	{
		vh_vtol waittill("death");
		wait(RandomFloatRange(8, 10));
		var_fe0af0a5 = GetVehicleNode("plaza_battle_hunter_combat_spline", "targetname");
		var_782205f8 = spawner::simple_spawn_single("zurich_ambient_hunter", &function_c89b08c9, var_fe0af0a5);
		var_782205f8 waittill("death");
		wait(RandomFloatRange(8, 10));
		vh_vtol = spawner::simple_spawn_single(Array::random(var_8498e7d1), &function_b8380f70);
	}
}

/*
	Name: function_a6915d3f
	Namespace: namespace_ca56958
	Checksum: 0xF37FFC7B
	Offset: 0x6A78
	Size: 0x2C3
	Parameters: 0
	Flags: None
*/
function function_a6915d3f()
{
	level flag::wait_till("plaza_battle_hq_entrance_door_hacked");
	/#
		iprintln("Dev Block strings are not supported");
	#/
	level flag::wait_till("blast_doors_opened");
	spawn_manager::kill("plaza_battle_artillery_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_allies_back_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_allies_middle_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_siegebot_right_middle_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_siegebot_left_middle_spawn_manager", 1);
	vh_vtol = spawner::simple_spawn_single("plaza_vtol_back", &function_b8380f70);
	trigger::use("plaza_battle_facility_entrance_allies_colortrig");
	trigger::use("plaza_battle_facility_entrance_axis_colortrig");
	level flag::wait_till("plaza_battle_exit_cleared");
	spawn_manager::kill("plaza_battle_allies_left_center_spawn_manager");
	spawn_manager::kill("plaza_battle_allies_right_center_spawn_manager");
	spawn_manager::kill("plaza_battle_robot_left_exit_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_robot_right_exit_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_robot_outro_left_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_robot_outro_right_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_boss_wasp_spawn_manager");
	spawn_manager::kill("plaza_battle_boss_wasp_rocket_spawn_manager");
	spawn_manager::kill("plaza_battle_robot_left_spawn_manager", 1);
	spawn_manager::kill("plaza_battle_robot_right_spawn_manager", 1);
	spawn_manager::function_41cd3a68(32);
}

/*
	Name: function_e111315c
	Namespace: namespace_ca56958
	Checksum: 0xF0B436
	Offset: 0x6D48
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e111315c()
{
	var_12e44341 = GetEntArray("plaza_battle_kane_choose_trig", "targetname");
	Array::thread_all(var_12e44341, &function_f058728a, self);
}

/*
	Name: function_f058728a
	Namespace: namespace_ca56958
	Checksum: 0x8E99D0E5
	Offset: 0x6DA8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_f058728a(var_3d556bcd)
{
	self endon("death");
	level endon("hash_ef7fbb43");
	self waittill("trigger");
	var_3d556bcd colors::enable();
	var_3d556bcd colors::set_force_color(self.script_string);
	var_12e44341 = GetEntArray("plaza_battle_kane_choose_trig", "targetname");
	Array::delete_all(var_12e44341);
}

/*
	Name: function_9d42d43b
	Namespace: namespace_ca56958
	Checksum: 0x285CB26D
	Offset: 0x6E58
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_9d42d43b()
{
	self endon("death");
	self PushPlayer(1);
	self thread namespace_8e9083ff::function_2a6e38e();
	level flag::wait_till("plaza_battle_approach_reached");
	self thread namespace_8e9083ff::function_d0103e8d();
	self ai::set_ignoreall(0);
	level flag::wait_till("plaza_battle_intro_artillery_destroyed");
	self PushPlayer(0);
	self function_e111315c();
	level flag::wait_till("plaza_battle_cleared");
	level.var_3d556bcd colors::disable();
	level.var_3d556bcd SetGoal(GetNode("plaza_battle_kane_door_node", "targetname"), 1);
	level flag::wait_till("blast_doors_opened");
	self namespace_8e9083ff::function_121ba443();
	self SetGoal(GetNode("plaza_battle_kane_lobby_node", "targetname"), 1);
}

/*
	Name: function_17645f9b
	Namespace: namespace_ca56958
	Checksum: 0xAD2065E1
	Offset: 0x7028
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_17645f9b()
{
	self endon("death");
	level endon("hash_ef7fbb43");
	var_c048597 = GetNodeArray("plaza_battle_kane_intro_node", "targetname");
	while(1)
	{
		e_player = ArrayGetClosest(self.origin, level.activePlayers);
		var_ebdbffd3 = RandomFloatRange(1.2, 2.1);
		if(!isdefined(e_player))
		{
			wait(var_ebdbffd3);
			continue;
		}
		var_d031f937 = ArrayGetClosest(e_player.origin, var_c048597);
		if(!isdefined(var_d031f937))
		{
			wait(var_ebdbffd3);
			continue;
		}
		var_2b29ab06 = DistanceSquared(var_d031f937.origin, self.origin) > 128 * 128;
		var_7bc86f48 = DistanceSquared(e_player.origin, self.origin) > 190 * 190;
		if(!var_2b29ab06 && !var_7bc86f48)
		{
			wait(var_ebdbffd3);
			continue;
		}
		if(!isdefined(GetNodeOwner(var_d031f937)))
		{
			self SetGoal(var_d031f937, 0, 128);
			self waittill("goal");
		}
		wait(var_ebdbffd3);
	}
}

/*
	Name: function_aee0aa5d
	Namespace: namespace_ca56958
	Checksum: 0x817EB1F7
	Offset: 0x7250
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_aee0aa5d()
{
	if(level.players.size > 2)
	{
		var_439371d = GetSpawnerArray("2_player_max", "script_string");
		Array::run_all(var_439371d, &delete);
		return;
	}
	var_439371d = GetSpawnerArray("3_player_min", "script_string");
	Array::run_all(var_439371d, &delete);
}

/*
	Name: function_a9380c64
	Namespace: namespace_ca56958
	Checksum: 0x6FC3807B
	Offset: 0x7308
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_a9380c64(var_cdbd94b1)
{
	level endon("hash_1fc32e88");
	level thread namespace_8e9083ff::function_e7fdcb95(var_cdbd94b1, "phanalx_wedge", 3, 1, 6, "plaza_battle_train_exit_reached", 1);
	level flag::wait_till_timeout(10, "plaza_battle_artillery_intro_stop");
	spawner::waittill_ai_group_ai_count("robot_phalanx", 4);
	level flag::set("plaza_battle_front_defenses_broken");
	spawn_manager::enable("plaza_battle_robot_intro_left_spawn_manager");
}

/*
	Name: function_68fbe95d
	Namespace: namespace_ca56958
	Checksum: 0xDC06108F
	Offset: 0x73D8
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_68fbe95d(var_7680f4ba)
{
	level endon("hash_1fc32e88");
	level thread namespace_8e9083ff::function_e7fdcb95(var_7680f4ba, "phanalx_wedge", 3, 1, 7, "plaza_battle_train_exit_reached", 1);
	level flag::wait_till_timeout(10, "plaza_battle_artillery_intro_stop");
	spawner::waittill_ai_group_ai_count("robot_phalanx", 4);
	level flag::set("plaza_battle_front_defenses_broken");
	spawn_manager::enable("plaza_battle_robot_intro_right_spawn_manager");
}

/*
	Name: function_695f38a7
	Namespace: namespace_ca56958
	Checksum: 0x2516C44E
	Offset: 0x74A8
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_695f38a7()
{
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self SetIgnoreEnt(level.var_3d556bcd, 1);
	self thread function_2686975a();
	self function_68cf1dc0();
	self thread function_d42cc4b0();
	self thread function_7d540ef1();
	self thread function_d1db5654();
	trigger::wait_till("plaza_battle_midpoint_trig", undefined, undefined, 0);
	if(!isalive(self))
	{
		return;
	}
	self ai::set_ignoreall(0);
	level flag::wait_till("plaza_battle_hunter_destroyed");
	var_b3b33e02 = spawn_manager::get_ai("plaza_battle_boss_wasp_spawn_manager");
	var_8ba55d7b = spawn_manager::get_ai("plaza_battle_boss_wasp_spawn_manager");
	var_b3b33e02 = ArrayCombine(var_b3b33e02, var_8ba55d7b, 0, 0);
	Array::thread_all(var_b3b33e02, &function_5a1e5a49);
	self thread function_3dc6a02c("cp_level_zurich_enter_hq_destroy_aspml_obj");
	if(isalive(self))
	{
		self ai::set_ignoreme(0);
		self waittill("death");
	}
	var_b3b33e02 = spawn_manager::get_ai("plaza_battle_boss_wasp_spawn_manager");
	var_8ba55d7b = spawn_manager::get_ai("plaza_battle_boss_wasp_spawn_manager");
	var_b3b33e02 = ArrayCombine(var_b3b33e02, var_8ba55d7b, 0, 0);
	Array::thread_all(var_b3b33e02, &function_c4b462a7);
}

/*
	Name: function_2686975a
	Namespace: namespace_ca56958
	Checksum: 0xF7708DC0
	Offset: 0x7760
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function function_2686975a()
{
	self endon("death");
	var_2ef061f7 = GetNodeArray("plaza_battle_boss_patrol_node", "targetname");
	nd_last = undefined;
	while(1)
	{
		do
		{
			var_2ef061f7 = Array::randomize(var_2ef061f7);
			wait(0.05);
		}
		while(!var_2ef061f7[0] === nd_last);
		foreach(var_f2c09364 in var_2ef061f7)
		{
			self SetGoal(var_f2c09364.origin, 0, RandomFloatRange(96, 196));
			self waittill("near_goal");
			wait(RandomFloatRange(6, 8));
		}
		nd_last = var_2ef061f7[var_2ef061f7.size - 1];
	}
}

/*
	Name: function_68cf1dc0
	Namespace: namespace_ca56958
	Checksum: 0x1DDEC30
	Offset: 0x78F8
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_68cf1dc0()
{
	level endon("hash_fbc32085");
	self endon("death");
	a_e_targets = [];
	a_s_targets = struct::get_array("plaza_battle_intro_boss_target_spots");
	foreach(var_1da6c387 in a_s_targets)
	{
		a_e_targets[n_index] = util::spawn_model("tag_origin", var_1da6c387.origin, var_1da6c387.angles);
		a_e_targets[n_index].script_objective = "plaza_battle";
		wait(0.05);
	}
	self SetVehWeapon(GetWeapon("quadtank_main_turret_rocketpods_javelin"));
	do
	{
		a_e_targets = Array::randomize(a_e_targets);
		foreach(e_target in a_e_targets)
		{
			self SetTurretTargetEnt(e_target);
			self FireWeapon(0, e_target);
			wait(RandomFloatRange(1, 1.4));
		}
	}
	while(!!level flag::get("plaza_battle_intro_artillery_destroyed"));
	level util::delay(15, undefined, &Array::delete_all, a_e_targets);
}

/*
	Name: function_d42cc4b0
	Namespace: namespace_ca56958
	Checksum: 0x24168A2
	Offset: 0x7B88
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_d42cc4b0()
{
	self endon("death");
	while(1)
	{
		self ai::set_ignoreall(0);
		str_notify = self util::waittill_any_timeout(RandomFloatRange(3, 5), "trophy_system_disabled", "trophy_system_destroyed", "damage");
		self ai::set_ignoreall(1);
		var_961d572f = ArrayCopy(level.activePlayers);
		if(str_notify == "timeout")
		{
			a_ai_allies = GetAITeamArray("allies");
			var_961d572f = ArrayCombine(var_961d572f, a_ai_allies, 0, 0);
		}
		var_961d572f = Array::randomize(var_961d572f);
		self function_5aba74b(var_961d572f);
	}
}

/*
	Name: function_58e04ffd
	Namespace: namespace_ca56958
	Checksum: 0x7E4663CB
	Offset: 0x7CF0
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_58e04ffd()
{
	self endon("death");
	level.var_a06b011 endon("death");
	while(1)
	{
		self util::waittill_any("trophy_system_disabled", "trophy_system_destroyed", "damage");
		var_961d572f = ArrayCopy(level.activePlayers);
		var_961d572f = Array::randomize(var_961d572f);
		level.var_a06b011 function_5aba74b(var_961d572f);
	}
}

/*
	Name: function_5aba74b
	Namespace: namespace_ca56958
	Checksum: 0x44825C31
	Offset: 0x7DA8
	Size: 0x2AB
	Parameters: 1
	Flags: None
*/
function function_5aba74b(var_961d572f)
{
	self endon("death");
	self endon("trophy_system_disabled");
	self endon("trophy_system_destroyed");
	var_c817078c = 0;
	self SetVehWeapon(GetWeapon("quadtank_main_turret_rocketpods_javelin"));
	foreach(e_target in var_961d572f)
	{
		if(isalive(e_target) && !e_target util::is_hero())
		{
			v_target_offset = (randomIntRange(256 * -1, 256), randomIntRange(256 * -1, 256), randomIntRange(256 * -1, 256));
			v_target_pos = e_target.origin + v_target_offset;
			var_746111be = util::spawn_model("tag_origin", v_target_pos, e_target.angles);
			var_746111be.script_objective = "plaza_battle";
			self SetTurretTargetEnt(var_746111be);
			e_projectile = self FireWeapon(0, var_746111be);
			e_projectile thread function_e15e7133(var_746111be);
			var_c817078c++;
			if(var_c817078c == 4)
			{
				break;
			}
			wait(RandomFloatRange(1, 1.4));
		}
	}
	self ClearTurretTarget();
}

/*
	Name: function_e15e7133
	Namespace: namespace_ca56958
	Checksum: 0x3DAB030F
	Offset: 0x8060
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_e15e7133(e_target)
{
	self waittill("death");
	e_target delete();
}

/*
	Name: function_7d540ef1
	Namespace: namespace_ca56958
	Checksum: 0x8FBFB038
	Offset: 0x8098
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_7d540ef1()
{
	self endon("death");
	var_b711578c = GetWeapon("quadtank_main_turret_rocketpods_javelin");
	while(1)
	{
		self waittill("weapon_fired", e_projectile);
		if(var_b711578c === e_projectile.item)
		{
			e_projectile thread function_fc363a17();
		}
	}
}

/*
	Name: function_fc363a17
	Namespace: namespace_ca56958
	Checksum: 0xCD6162F9
	Offset: 0x8120
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_fc363a17()
{
	e_target = self missile_gettarget();
	if(isdefined(self) && isdefined(e_target))
	{
		if(e_target util::is_hero() || e_target.allowdeath === 0 || e_target.magic_bullet_shield === 1 || e_target.ignoreme === 1)
		{
			a_s_targets = struct::get_array("plaza_battle_intro_boss_target_spots");
			s_target = Array::random(a_s_targets);
			var_746111be = util::spawn_model("tag_origin", s_target.origin, s_target.angles);
		}
		else if(isPlayer(e_target))
		{
			var_746111be = util::spawn_model("tag_origin", e_target.origin, e_target.angles);
		}
		if(isdefined(var_746111be))
		{
			self Missile_SetTarget(var_746111be);
			self waittill("death");
			var_746111be delete();
		}
	}
}

/*
	Name: function_336b6c3e
	Namespace: namespace_ca56958
	Checksum: 0xE1FBA901
	Offset: 0x8308
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_336b6c3e(e_target)
{
	n_radius_sq = 256 * 256;
	self function_71b5892a(e_target);
	if(isdefined(self) && isdefined(e_target))
	{
		foreach(e_player in level.activePlayers)
		{
		}
	}
}

/*
	Name: function_71b5892a
	Namespace: namespace_ca56958
	Checksum: 0x759D812B
	Offset: 0x8428
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_71b5892a(e_target)
{
	self endon("death");
	var_9633e6ca = 3000;
	while(isdefined(e_target))
	{
		if(self GetVelocity()[2] < -150 && DistanceSquared(self.origin, e_target GetOrigin()) < var_9633e6ca * var_9633e6ca)
		{
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_e1159e2b
	Namespace: namespace_ca56958
	Checksum: 0x7A02B63D
	Offset: 0x84D8
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_e1159e2b()
{
	self endon("death");
	self flag::init("order_stop_fire");
	foreach(e_player in level.activePlayers)
	{
		self SetIgnoreEnt(e_player, 1);
	}
	self.allow_movement = 0;
	level util::waittill_any_ents_two(self, "trophy_system_disabled", level, "plaza_battle_train_exit_reached");
	self thread function_58e04ffd();
	foreach(e_player in level.activePlayers)
	{
		self SetIgnoreEnt(e_player, 0);
	}
	level util::waittill_any_ents_two(self, "trophy_system_disabled", level, "plaza_battle_artillery_intro_stop");
	level flag::wait_till("plaza_battle_front_defenses_broken");
	self.allow_movement = 1;
	self vehicle_ai::function_81b6f1ac();
	self vehicle_ai::function_efe9815e();
	self thread function_c635bfa2();
	self thread function_303a9547();
	self util::waittill_any_timeout(20, "trophy_system_disabled", "trophy_system_destroyed", "near_goal");
	level flag::set("plaza_battle_intro_artillery_in_position");
	level flag::wait_till("plaza_boss_dead");
	self.var_5330ac94 = util::spawn_model("tag_origin", self GetTagOrigin("tag_target_upper"), self GetTagAngles("tag_target_upper"));
	self.var_5330ac94 LinkTo(self, "tag_target_upper", VectorScale((0, 0, 1), 256));
	self.var_5330ac94.script_objective = "plaza_battle";
	level.var_a06b011 = self;
	self thread function_2686975a();
}

/*
	Name: function_303a9547
	Namespace: namespace_ca56958
	Checksum: 0x14B2F16F
	Offset: 0x8848
	Size: 0x165
	Parameters: 0
	Flags: None
*/
function function_303a9547()
{
	self endon("death");
	var_2ef061f7 = GetNodeArray("plaza_battle_artillery_patrol_node", "targetname");
	nd_last = undefined;
	while(1)
	{
		do
		{
			var_2ef061f7 = Array::randomize(var_2ef061f7);
			wait(0.05);
		}
		while(!var_2ef061f7[0] === nd_last);
		foreach(var_f2c09364 in var_2ef061f7)
		{
			self SetGoal(var_f2c09364.origin);
			self waittill("near_goal");
			wait(RandomFloatRange(5, 7));
		}
		nd_last = var_2ef061f7[var_2ef061f7.size - 1];
	}
}

/*
	Name: function_8f5c1780
	Namespace: namespace_ca56958
	Checksum: 0x7E0BC55B
	Offset: 0x89B8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_8f5c1780()
{
	if(!spawn_manager::is_enabled("plaza_battle_siegebot_left_middle_spawn_manager"))
	{
		spawn_manager::enable("plaza_battle_siegebot_left_middle_spawn_manager");
	}
	if(!spawn_manager::is_enabled("plaza_battle_siegebot_right_middle_spawn_manager"))
	{
		spawn_manager::enable("plaza_battle_siegebot_right_middle_spawn_manager");
	}
}

/*
	Name: function_d645af75
	Namespace: namespace_ca56958
	Checksum: 0x9BE1760B
	Offset: 0x8A28
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_d645af75()
{
	var_a44ce9b5 = spawner::get_ai_group_ai("plaza_battle_center_siegebots");
	foreach(ai in var_a44ce9b5)
	{
		if(isalive(ai))
		{
			if(ai.target === "plaza_battle_artillery_left_goaltrig")
			{
				str_goal = "plaza_battle_siegebots_left_goaltrig";
			}
			else if(ai.target === "plaza_battle_artillery_right_goaltrig")
			{
				str_goal = "plaza_battle_siegebots_right_goaltrig";
			}
			var_284ca6ef = GetEnt(str_goal, "targetname");
			ai SetGoal(var_284ca6ef);
		}
	}
}

/*
	Name: function_7f39a78b
	Namespace: namespace_ca56958
	Checksum: 0xBE6E71E9
	Offset: 0x8B80
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_7f39a78b()
{
	self endon("death");
	var_1e0937da = GetNodeArray(self.script_string, "targetname");
	var_1528a05b = undefined;
	while(1)
	{
		do
		{
			var_1e0937da = Array::randomize(var_1e0937da);
			wait(0.05);
		}
		while(!var_1e0937da[0] === var_1528a05b);
		foreach(var_1528a05b in var_1e0937da)
		{
			self SetVehGoalPos(var_1528a05b.origin, 1, 1);
			wait(RandomFloatRange(3, 4));
		}
	}
}

/*
	Name: function_6c61fe9e
	Namespace: namespace_ca56958
	Checksum: 0x70B5DE43
	Offset: 0x8CC8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_6c61fe9e()
{
	/#
		if(IsGodMode(level.players[0]))
		{
			self.health = 1;
		}
	#/
	level.var_782205f8 = self;
	self thread function_934d33a5();
	if(!level flag::get("plaza_battle_cleared"))
	{
		self thread function_3dc6a02c("cp_level_zurich_enter_hq_destroy_hunter_obj");
		self thread function_d0b419ee();
	}
	self SetSpeedImmediate(7);
	self function_d769b9ad();
}

/*
	Name: function_934d33a5
	Namespace: namespace_ca56958
	Checksum: 0xF819DDF0
	Offset: 0x8DB8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_934d33a5()
{
	self.var_e62c1231 = spawn("trigger_radius", self.origin + VectorScale((0, 0, -1), 60), 0, 256, 256);
	self.var_e62c1231 EnableLinkTo();
	self.var_e62c1231 LinkTo(self);
	if(!isdefined(level.oob_triggers))
	{
		level.oob_triggers = [];
	}
	else if(!IsArray(level.oob_triggers))
	{
		level.oob_triggers = Array(level.oob_triggers);
	}
	level.oob_triggers[level.oob_triggers.size] = self.var_e62c1231;
	self.var_e62c1231 thread oob::waitForPlayerTouch();
	self waittill("death");
	self.var_e62c1231 delete();
}

/*
	Name: function_6a38397a
	Namespace: namespace_ca56958
	Checksum: 0x4C2DA67E
	Offset: 0x8EE8
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_6a38397a()
{
	self endon("death");
	level endon("hash_1fc32e88");
	var_2ef061f7 = getvehiclenodearray("plaza_battle_hunter_patrol_node", "targetname");
	while(1)
	{
		trigger::wait_till("plaza_battle_hunter_nofly_trig", undefined, self);
		var_f2c09364 = ArrayGetClosest(self.origin, var_2ef061f7);
		self vehicle_ai::function_81b6f1ac();
		self SetVehGoalPos(var_f2c09364.origin, 1);
		self waittill("near_goal");
		self vehicle_ai::function_efe9815e();
	}
}

/*
	Name: function_d769b9ad
	Namespace: namespace_ca56958
	Checksum: 0xC386BE01
	Offset: 0x8FE8
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function function_d769b9ad()
{
	var_75532e17 = undefined;
	var_2ef061f7 = getvehiclenodearray("plaza_battle_hunter_patrol_node", "targetname");
	var_fbae031 = GetVehicleNode("plaza_battle_hunter_patrol_start", "script_noteworthy");
	self vehicle_ai::function_81b6f1ac();
	self SetHoverParams(32, 12, 8);
	self SetVehGoalPos(var_fbae031.origin, 1);
	self util::waittill_either("death", "near_goal");
	if(isdefined(self))
	{
		self thread function_6a38397a();
	}
	while(isdefined(self))
	{
		do
		{
			var_2ef061f7 = Array::randomize(var_2ef061f7);
			wait(0.05);
		}
		while(!var_2ef061f7[0] === var_75532e17);
		var_75532e17 = var_2ef061f7[var_2ef061f7.size - 1];
		foreach(var_f2c09364 in var_2ef061f7)
		{
			a_e_targets = GetAITeamArray("allies");
			a_e_targets = ArrayCombine(a_e_targets, level.activePlayers, 1, 1);
			a_e_targets = ArraySort(a_e_targets, self.origin, 0);
			var_f09d8d3c = RandomFloatRange(1.5, 3);
			self vehicle_ai::function_81b6f1ac();
			self SetLookAtEnt(a_e_targets[0]);
			self SetVehGoalPos(var_f2c09364.origin, 1);
			self util::waittill_either("death", "near_goal");
			self vehicle_ai::function_efe9815e();
			wait(var_f09d8d3c);
		}
	}
}

/*
	Name: function_68e4ea91
	Namespace: namespace_ca56958
	Checksum: 0x4FF73BF2
	Offset: 0x9330
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_68e4ea91()
{
	if(isalive(level.var_782205f8))
	{
		self function_5c638800();
	}
	else if(isalive(level.var_a06b011))
	{
		self function_5a1e5a49();
	}
	else
	{
		self function_c4b462a7();
	}
}

/*
	Name: function_d1db5654
	Namespace: namespace_ca56958
	Checksum: 0xB4D7E05B
	Offset: 0x93C0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_d1db5654()
{
	level endon("death");
	var_965f3899 = undefined;
	level flag::wait_till("plaza_battle_vtol_drop_crew_completed");
	spawn_manager::enable("plaza_battle_boss_wasp_spawn_manager");
	self thread function_69458aa0();
	do
	{
		var_965f3899 = Int(namespace_8e9083ff::function_411dc61b(3, -0.5));
		self util::waittill_any("trophy_system_disabled", "trophy_system_destroyed");
	}
	while(!self.trophy_disables < var_965f3899);
	spawn_manager::enable("plaza_battle_boss_wasp_rocket_spawn_manager");
}

/*
	Name: function_69458aa0
	Namespace: namespace_ca56958
	Checksum: 0x2190BA0E
	Offset: 0x94C8
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_69458aa0()
{
	self endon("death");
	while(1)
	{
		a_e_players = ArrayCopy(level.activePlayers);
		a_e_players = Array::randomize(a_e_players);
		foreach(e_player in a_e_players)
		{
			if(e_player util::is_player_looking_at(self.origin + VectorScale((0, 0, 1), 256), 0.8, 1, e_player) && (!isdefined(e_player.active_camo) && e_player.active_camo))
			{
				e_player function_baaaa286();
			}
		}
		wait(4);
	}
}

/*
	Name: function_baaaa286
	Namespace: namespace_ca56958
	Checksum: 0x417856E2
	Offset: 0x9618
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_baaaa286()
{
	level.var_a06b011 endon("death");
	var_b3b33e02 = spawn_manager::get_ai("plaza_battle_boss_wasp_spawn_manager");
	var_8ba55d7b = spawn_manager::get_ai("plaza_battle_boss_wasp_spawn_manager");
	var_b3b33e02 = ArrayCombine(var_b3b33e02, var_8ba55d7b, 0, 0);
	foreach(var_aaefedf3 in var_b3b33e02)
	{
		if(!(isdefined(var_aaefedf3.var_56c95748) && var_aaefedf3.var_56c95748))
		{
			var_aaefedf3.var_56c95748 = 1;
			if(!isdefined(self.var_439c885e))
			{
				return;
			}
			var_aaefedf3 SetEntityTarget(self);
			var_aaefedf3 SetGoal(self.var_439c885e, 1);
			return;
		}
	}
}

/*
	Name: function_424191b5
	Namespace: namespace_ca56958
	Checksum: 0x7DBDC56D
	Offset: 0x9790
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_424191b5()
{
	if(isdefined(self.var_439c885e))
	{
		return;
	}
	self.var_439c885e = util::spawn_model("tag_origin", self.origin, self getPlayerAngles());
	self.var_439c885e.script_objective = "plaza_battle";
	v_offset = AnglesToRight(self getPlayerAngles()) * 128;
	v_offset = v_offset + VectorScale((0, 0, 1), 64);
	self.var_439c885e LinkTo(self, "tag_origin", v_offset);
}

/*
	Name: function_cb30d060
	Namespace: namespace_ca56958
	Checksum: 0x9F7D3C04
	Offset: 0x9890
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_cb30d060()
{
	if(!isdefined(self.var_439c885e))
	{
		return;
	}
	self.var_439c885e delete();
}

/*
	Name: function_f8f7624b
	Namespace: namespace_ca56958
	Checksum: 0xE3E2A908
	Offset: 0x98C8
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_f8f7624b()
{
	self endon("death");
	self endon("reached_end_node");
	self waittill("fire_turret");
	wait(RandomFloatRange(0.1, 0.56));
	a_ai_allies = GetAITeamArray("allies");
	a_ai_allies = Array::randomize(a_ai_allies);
	foreach(ai in a_ai_allies)
	{
		if(!ai util::is_hero())
		{
			self thread vehicle_ai::fire_for_time(RandomFloatRange(8, 12), undefined, ai);
			break;
		}
	}
}

/*
	Name: function_5a1e5a49
	Namespace: namespace_ca56958
	Checksum: 0x62BA2FEA
	Offset: 0x9A18
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5a1e5a49()
{
	self SetGoal(level.var_a06b011.var_5330ac94, 0, 400, 96);
}

/*
	Name: function_5c638800
	Namespace: namespace_ca56958
	Checksum: 0xB302BF85
	Offset: 0x9A58
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5c638800()
{
	self SetGoal(level.var_782205f8, 0, 128, 32);
}

/*
	Name: function_c4b462a7
	Namespace: namespace_ca56958
	Checksum: 0xADC413E7
	Offset: 0x9A90
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_c4b462a7()
{
	var_284ca6ef = GetEnt("plaza_battle_wasp_goaltrig", "targetname");
	if(isdefined(var_284ca6ef))
	{
		self SetGoal(var_284ca6ef);
	}
}

/*
	Name: function_bc249f36
	Namespace: namespace_ca56958
	Checksum: 0xA121E38F
	Offset: 0x9AF0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_bc249f36()
{
	var_ccbdc630 = GetEnt("coalescence_gate", "targetname");
	var_ccbdc630 notsolid();
	function_bab1ff00("hq_atrium_umbra_gate", 1);
	level scene::Play("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle");
	level thread function_509fb0c4();
}

/*
	Name: blast_doors_close
	Namespace: namespace_ca56958
	Checksum: 0xD4996EA1
	Offset: 0x9B98
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function blast_doors_close()
{
	var_ccbdc630 = GetEnt("coalescence_gate", "targetname");
	var_ccbdc630 solid();
	level scene::Play("p7_fxanim_cp_zurich_coalescence_tower_door_close_bundle");
	function_bab1ff00("hq_atrium_umbra_gate", 0);
	level flag::set("plaza_battle_exit_cleared");
}

/*
	Name: function_509fb0c4
	Namespace: namespace_ca56958
	Checksum: 0x2B856E82
	Offset: 0x9C40
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_509fb0c4()
{
	wait(1);
	level clientfield::set("hq_amb", 1);
}

/*
	Name: function_a2b45d70
	Namespace: namespace_ca56958
	Checksum: 0xE25CD29
	Offset: 0x9C78
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_a2b45d70()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_6744b8e3
	Namespace: namespace_ca56958
	Checksum: 0x868470C8
	Offset: 0x9D68
	Size: 0x15F
	Parameters: 4
	Flags: None
*/
function function_6744b8e3(var_4d75b06, e_target, n_radius, v_color)
{
	/#
		if(isdefined(e_target) && isdefined(var_4d75b06))
		{
			e_target notify("hash_9aac4254");
			e_target notify("hash_dc898c8");
			e_target endon("hash_9aac4254");
			self endon("death");
			e_target endon("death");
			e_target thread namespace_8e9083ff::function_9ff5370d(n_radius, v_color);
			var_4d75b06 thread namespace_8e9083ff::function_68a764f6(32, v_color);
			var_4d75b06 thread namespace_8e9083ff::function_ff016910("Dev Block strings are not supported" + e_target GetEntityNumber(), v_color);
			if(isdefined(e_target))
			{
				e_target thread namespace_8e9083ff::debug_draw_line(e_target, var_4d75b06, undefined, v_color, "Dev Block strings are not supported");
			}
			var_4d75b06 waittill("death");
			e_target notify("hash_dc898c8");
			var_4d75b06 notify("hash_5322c93b");
		}
	#/
}

/*
	Name: function_c58f2dba
	Namespace: namespace_ca56958
	Checksum: 0xB2BD6A0A
	Offset: 0x9ED0
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_c58f2dba()
{
	/#
		self thread namespace_8e9083ff::function_ff016910(self.script_friendname);
		while(1)
		{
			recordLine(self.origin, self.goalpos, (0, 1, 0), "Dev Block strings are not supported", self);
			wait(0.05);
		}
	#/
}

