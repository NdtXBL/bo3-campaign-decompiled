#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_hideout_outro;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection3_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\zombie_death;
#using scripts\shared\ai\zombie_shared;
#using scripts\shared\ai\zombie_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_b0a87e94;

/*
	Name: main
	Namespace: namespace_b0a87e94
	Checksum: 0x987B294F
	Offset: 0xCC8
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function main()
{
	level flag::init("sarah_tree");
	level flag::init("end_round_wait");
	level flag::init("spawn_zombies", 1);
	level flag::init("zombies_completed");
	level flag::init("zombies_final_round");
	level.gamedifficulty = GetLocalProfileInt("g_gameskill");
	if(!isdefined(level.gamedifficulty))
	{
		level.gamedifficulty = 1;
	}
	init_levelvars();
	init_client_field_callback_funcs();
	level.zombie_spawn_locations = [];
	level.playable_areas = GetEntArray("player_volume", "script_noteworthy");
	for(i = 0; i < level.playable_areas.size; i++)
	{
		if(isdefined(level.playable_areas[i].target))
		{
			level.playable_areas[i] thread function_e9dbbc10();
		}
	}
	level.zombie_spawners = GetEntArray("zombie_spawner_infection_3", "script_noteworthy");
	Array::thread_all(level.zombie_spawners, &spawner::add_spawn_function, &zombie_spawn_init);
	level thread function_93985e5e();
}

/*
	Name: function_e9dbbc10
	Namespace: namespace_b0a87e94
	Checksum: 0x52CA63C3
	Offset: 0xEE8
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_e9dbbc10()
{
	points = struct::get_array(self.target, "targetname");
	for(i = 0; i < points.size; i++)
	{
		points[i].enabled = 1;
		Array::add(level.zombie_spawn_locations, points[i], 0);
	}
}

/*
	Name: init_client_field_callback_funcs
	Namespace: namespace_b0a87e94
	Checksum: 0x50D3DAC8
	Offset: 0xF88
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		clientfield::register("actor", "zombie_riser_fx", 1, 1, "int");
		clientfield::register("actor", "zombie_has_eyes", 1, 1, "int");
		clientfield::register("actor", "zombie_gut_explosion", 1, 1, "int");
		clientfield::register("actor", "zombie_tac_mode_disable", 1, 1, "int");
	}
	clientfield::register("scriptmover", "zombie_fire_wall_fx", 1, 1, "int");
	clientfield::register("scriptmover", "zombie_fire_backdraft_fx", 1, 1, "int");
	clientfield::register("toplayer", "zombie_fire_overlay_init", 1, 1, "int");
	clientfield::register("toplayer", "zombie_fire_overlay", 1, 7, "float");
	clientfield::register("world", "zombie_root_grow", 1, 1, "int");
}

/*
	Name: function_bd954458
	Namespace: namespace_b0a87e94
	Checksum: 0xC5A69289
	Offset: 0x1158
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_bd954458()
{
	while(1)
	{
		num_zombies = zombie_utility::get_current_zombie_count();
		/#
			IPrintLnBold("Dev Block strings are not supported", num_zombies);
		#/
		wait(1);
	}
}

/*
	Name: init_levelvars
	Namespace: namespace_b0a87e94
	Checksum: 0x33F9CC08
	Offset: 0x11B8
	Size: 0x3B7
	Parameters: 0
	Flags: None
*/
function init_levelvars()
{
	level.zombie_team = "axis";
	level.is_zombie_level = 1;
	level.first_round = 1;
	level.start_round = 1;
	level.round_number = level.start_round;
	level.zombie_total = 0;
	level.total_zombies_killed = 0;
	level.zombie_spawn_locations = [];
	level.zombie_vars = [];
	level.current_zombie_array = [];
	level.current_zombie_count = 0;
	level.zombie_total_subtract = 0;
	level.zombie_actor_limit = 31;
	level.zombies_timeout_playspace = 0;
	level.var_f2a478d8 = 150;
	level.var_1e47bbdd = 2;
	level._effect["lightning_dog_spawn"] = "zombie/fx_dog_lightning_buildup_zmb";
	level._effect["burn_loop_zombie_left_arm"] = "fire/fx_fire_ai_human_arm_left_loop";
	level._effect["burn_loop_zombie_right_arm"] = "fire/fx_fire_ai_human_arm_right_loop";
	level._effect["burn_loop_zombie_torso"] = "fire/fx_fire_ai_human_torso_loop";
	level._effect["zombie_firewall_fx"] = "fire/fx_fire_wall_moving_infection_city";
	difficulty = 1;
	column = Int(difficulty) + 1;
	zombie_utility::set_zombie_var("zombie_health_increase", 0, 0, column);
	zombie_utility::set_zombie_var("zombie_health_increase_multiplier", 0.1, 1, column);
	zombie_utility::set_zombie_var("zombie_health_start", 50, 0, column);
	zombie_utility::set_zombie_var("zombie_spawn_delay", 2, 1, column);
	zombie_utility::set_zombie_var("zombie_ai_per_player", 8, 0, column);
	zombie_utility::set_zombie_var("zombie_between_round_time", 1);
	zombie_utility::set_zombie_var("game_start_delay", 0, 0, column);
	zombie_utility::set_zombie_var("zombie_use_failsafe", 1);
	zombie_utility::set_zombie_var("below_world_check", -5000);
	zombie_utility::set_zombie_var("zombie_max_ai", 32, 0, column);
	level.zombie_ai_limit = level.zombie_vars["zombie_max_ai"];
	level.move_spawn_func = &move_zombie_spawn_location;
	level.max_zombie_func = &function_85c808d5;
	timer = level.zombie_vars["zombie_spawn_delay"];
	if(timer > 0.08)
	{
		level.zombie_vars["zombie_spawn_delay"] = timer * 0.95;
	}
	else if(timer < 0.25)
	{
		level.zombie_vars["zombie_spawn_delay"] = 0.25;
	}
	level.speed_change_max = 0;
	level.speed_change_num = 0;
}

/*
	Name: zombie_spawn_init
	Namespace: namespace_b0a87e94
	Checksum: 0x6AF9A985
	Offset: 0x1578
	Size: 0x3C1
	Parameters: 1
	Flags: None
*/
function zombie_spawn_init(animname_set)
{
	self endon("death");
	if(!isdefined(animname_set))
	{
		animname_set = 0;
	}
	self.targetname = "zombie";
	self.script_noteworthy = undefined;
	if(!animname_set)
	{
		self.animName = "zombie";
	}
	self thread namespace_36cbf523::zmbAIVox_NotifyConvert();
	self.zmb_vocals_attack = "zmb_vocals_zombie_attack";
	self.ignoreall = 1;
	self.allowdeath = 1;
	self.force_gib = 1;
	self.is_zombie = 1;
	self AllowedStances("stand");
	self.gibbed = 0;
	self.head_gibbed = 0;
	self setPhysParams(15, 0, 72);
	self.goalRadius = 32;
	self.disableArrivals = 1;
	self.disableExits = 1;
	self.grenadeawareness = 0;
	self.badplaceawareness = 0;
	self.ignoreSuppression = 1;
	self.suppressionThreshold = 1;
	self.noDodgeMove = 1;
	self.dontShootWhileMoving = 1;
	self.pathenemylookahead = 0;
	self.badplaceawareness = 0;
	self.chatInitialized = 0;
	self.a.disablePain = 1;
	self.a.disableReact = 1;
	self.allowReact = 0;
	self.disableAmmoDrop = 1;
	if(isdefined(level.zombie_health))
	{
		self.maxhealth = level.zombie_health;
		if(isdefined(level.zombie_respawned_health) && level.zombie_respawned_health.size > 0)
		{
			self.health = level.zombie_respawned_health[0];
			ArrayRemoveValue(level.zombie_respawned_health, level.zombie_respawned_health[0]);
		}
		else
		{
			self.health = level.zombie_health;
		}
	}
	else
	{
		self.maxhealth = level.zombie_vars["zombie_health_start"];
		self.health = self.maxhealth;
	}
	self SetAvoidanceMask("avoid none");
	self PathMode("dont move");
	level thread zombie_death_event(self);
	self function_e6335926();
	self thread zombie_think();
	self thread zombie_utility::zombie_gib_on_damage();
	if(!isdefined(self.no_eye_glow) || !self.no_eye_glow)
	{
		self thread zombie_utility::delayed_zombie_eye_glow();
	}
	self.deathFunction = &zombie_death_animscript;
	self.flame_damage_time = 0;
	self.meleeDamage = 20;
	self.no_powerups = 1;
	self.team = level.zombie_team;
	self.zombie_init_done = 1;
	self notify("zombie_init_done");
}

/*
	Name: zombie_think
	Namespace: namespace_b0a87e94
	Checksum: 0x20E14BAD
	Offset: 0x1948
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function zombie_think()
{
	self endon("death");
	self thread do_zombie_spawn();
	self waittill("risen");
	self zombie_setup_attack_properties();
	self SetGoal(self.origin);
	self PathMode("move allowed");
	self.zombie_think_done = 1;
	self thread zombie_bad_path();
}

/*
	Name: zombie_setup_attack_properties
	Namespace: namespace_b0a87e94
	Checksum: 0xEB0BA892
	Offset: 0x19F8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function zombie_setup_attack_properties()
{
	self.ai_state = "find_flesh";
	self.ignoreall = 0;
	self.meleeAttackDist = 64;
	self.maxsightdistsqrd = 16384;
	self.disableArrivals = 1;
	self.disableExits = 1;
}

/*
	Name: function_85c808d5
	Namespace: namespace_b0a87e94
	Checksum: 0xDF5333CD
	Offset: 0x1A50
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_85c808d5(max_num)
{
	max = max_num;
	if(level.round_number < 2)
	{
		max = 8;
		if(level.players.size == 4)
		{
			max = 12;
		}
	}
	else if(level.round_number < 3)
	{
		max = 8;
		if(level.players.size == 4)
		{
			max = 16;
		}
	}
	else if(level.round_number < 4)
	{
		if(level.players.size == 1)
		{
			max = 10;
		}
		else if(level.players.size == 4)
		{
			max = 24;
		}
		else
		{
			max = 14;
		}
	}
	else if(level.round_number < 5)
	{
		if(level.players.size == 1)
		{
			max = 12;
		}
		else if(level.players.size == 4)
		{
			max = 32;
		}
		else
		{
			max = 20;
		}
	}
	else if(level.round_number < 6)
	{
		max = Int(max_num * 1);
	}
	return max;
}

/*
	Name: function_e6335926
	Namespace: namespace_b0a87e94
	Checksum: 0x582B0C84
	Offset: 0x1BF0
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_e6335926()
{
	self endon("death");
	self.zombie_move_speed = "walk";
	n_chance = RandomInt(100);
	if(level.round_number < 2)
	{
		self.zombie_move_speed = "walk";
		if(n_chance > 75)
		{
			self.zombie_move_speed = "run";
		}
	}
	else if(level.round_number < 3)
	{
		self.zombie_move_speed = "walk";
		if(n_chance > 50)
		{
			self.zombie_move_speed = "run";
		}
	}
	else if(level.round_number < 4)
	{
		self.zombie_move_speed = "run";
		if(n_chance > 95)
		{
			self.zombie_move_speed = "sprint";
		}
	}
	else if(level.round_number < 5)
	{
		self.zombie_move_speed = "run";
		if(n_chance > 30)
		{
			self.zombie_move_speed = "sprint";
		}
	}
	else
	{
		self.zombie_move_speed = "sprint";
	}
	self thread function_11dd905a();
}

/*
	Name: function_11dd905a
	Namespace: namespace_b0a87e94
	Checksum: 0x20313C0F
	Offset: 0x1D70
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_11dd905a()
{
	self endon("death");
	if(self.zombie_move_speed === "sprint")
	{
		return;
	}
	timePassed = 0;
	startTime = GetTime();
	var_55bf1434 = level.var_f2a478d8 * 0.4;
	while(1)
	{
		if(timePassed >= var_55bf1434)
		{
			if(self.zombie_move_speed === "walk")
			{
				self zombie_utility::set_zombie_run_cycle("run");
			}
			else if(self.zombie_move_speed === "run")
			{
				self zombie_utility::set_zombie_run_cycle("sprint");
				return;
			}
			timePassed = 0;
		}
		wait(1);
		timePassed = GetTime() - startTime / 1000;
	}
}

/*
	Name: do_zombie_spawn
	Namespace: namespace_b0a87e94
	Checksum: 0xADA1957E
	Offset: 0x1E88
	Size: 0x27F
	Parameters: 0
	Flags: None
*/
function do_zombie_spawn()
{
	self endon("death");
	zones = [];
	spots = [];
	if(isdefined(level.playable_areas))
	{
		for(i = 0; i < level.playable_areas.size; i++)
		{
			in_zone = player_in_zone(level.playable_areas[i]);
			if(isdefined(in_zone) && in_zone)
			{
				spots = function_635211c6(level.playable_areas[i], spots);
			}
		}
		if(spots.size <= 0 && isdefined(level.zombie_spawn_locations))
		{
			for(i = 0; i < level.zombie_spawn_locations.size; i++)
			{
				if(isdefined(level.zombie_spawn_locations[i].enabled) && level.zombie_spawn_locations[i].enabled)
				{
					spots[spots.size] = level.zombie_spawn_locations[i];
				}
			}
		}
		break;
	}
	if(isdefined(level.zombie_spawn_locations))
	{
		for(i = 0; i < level.zombie_spawn_locations.size; i++)
		{
			if(isdefined(level.zombie_spawn_locations[i].enabled) && level.zombie_spawn_locations[i].enabled)
			{
				spots[spots.size] = level.zombie_spawn_locations[i];
			}
		}
	}
	/#
		Assert(spots.size > 0, "Dev Block strings are not supported");
	#/
	spot = Array::random(spots);
	if(level.round_number < 3)
	{
		spot = self function_3571a7e4(spots);
	}
	self.spawn_point = spot;
	self thread [[level.move_spawn_func]](spot);
}

/*
	Name: player_in_zone
	Namespace: namespace_b0a87e94
	Checksum: 0x4519B680
	Offset: 0x2110
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function player_in_zone(volume)
{
	players = GetPlayers();
	for(j = 0; j < players.size; j++)
	{
		if(players[j] istouching(volume))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_3571a7e4
	Namespace: namespace_b0a87e94
	Checksum: 0x549343FB
	Offset: 0x2198
	Size: 0x26B
	Parameters: 1
	Flags: None
*/
function function_3571a7e4(spots)
{
	var_8306eb54 = [];
	if(isdefined(level.playable_areas))
	{
		for(i = 0; i < level.playable_areas.size; i++)
		{
			var_8306eb54 = function_635211c6(level.playable_areas[i], var_8306eb54);
		}
	}
	for(i = 0; i < var_8306eb54.size; i++)
	{
		if(isdefined(var_8306eb54[i].barrier))
		{
			Array::add(spots, var_8306eb54[i], 0);
		}
	}
	spots = Array::randomize(spots);
	for(i = 0; i < spots.size; i++)
	{
		if(isdefined(spots[i].barrier) && (!isdefined(spots[i].barrier.opened) && spots[i].barrier.opened) && (!isdefined(spots[i].occupied) && spots[i].occupied))
		{
			spots[i].occupied = 1;
			level.var_3362c19++;
			self thread function_731500c(spots[i]);
			return spots[i];
		}
	}
	for(i = 0; i < spots.size; i++)
	{
		if(!isdefined(spots[i].barrier) || (isdefined(spots[i].barrier.opened) && spots[i].barrier.opened))
		{
			return spots[i];
		}
	}
}

/*
	Name: function_731500c
	Namespace: namespace_b0a87e94
	Checksum: 0x28558689
	Offset: 0x2410
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_731500c(spot)
{
	while(isalive(self) && isdefined(spot.barrier))
	{
		wait(0.1);
	}
	spot.occupied = undefined;
	level.var_3362c19--;
}

/*
	Name: function_635211c6
	Namespace: namespace_b0a87e94
	Checksum: 0x3D98F1B1
	Offset: 0x2478
	Size: 0x109
	Parameters: 2
	Flags: None
*/
function function_635211c6(zone, spots)
{
	/#
		Assert(isdefined(zone.target), "Dev Block strings are not supported" + zone.targetname);
	#/
	points = struct::get_array(zone.target, "targetname");
	for(i = 0; i < points.size; i++)
	{
		if(isdefined(points[i].enabled) && points[i].enabled)
		{
			Array::add(spots, points[i], 0);
		}
	}
	return spots;
}

/*
	Name: move_zombie_spawn_location
	Namespace: namespace_b0a87e94
	Checksum: 0x1B96346A
	Offset: 0x2590
	Size: 0x1E9
	Parameters: 1
	Flags: None
*/
function move_zombie_spawn_location(spot)
{
	if(isdefined(self.spawn_pos))
	{
		self notify("risen", self.spawn_pos.script_string);
		return;
	}
	self.spawn_pos = spot;
	if(isdefined(spot.script_parameters))
	{
		self.script_parameters = spot.script_parameters;
	}
	if(!isdefined(spot.script_noteworthy))
	{
		spot.script_noteworthy = "spawn_location";
	}
	if(isdefined(spot.barrier) && (!isdefined(spot.barrier.opened) && spot.barrier.opened))
	{
		self thread function_f4028ae1(spot);
		return;
	}
	tokens = StrTok(spot.script_noteworthy, " ");
	foreach(token in tokens)
	{
		if(token == "riser_location")
		{
			self thread do_zombie_rise(spot);
			continue;
		}
		self thread function_f4028ae1(spot);
	}
}

/*
	Name: function_f4028ae1
	Namespace: namespace_b0a87e94
	Checksum: 0x860BC2FF
	Offset: 0x2788
	Size: 0x36D
	Parameters: 1
	Flags: None
*/
function function_f4028ae1(spot)
{
	if(isdefined(spot.barrier) && (!isdefined(spot.barrier.opened) && spot.barrier.opened))
	{
		pos = spot.barrier;
	}
	else
	{
		pos = spot;
	}
	self.anchor = spawn("script_origin", self.origin);
	self.anchor.angles = self.angles;
	self LinkTo(self.anchor);
	if(!isdefined(pos.angles))
	{
		pos.angles = (0, 0, 0);
	}
	self ghost();
	self.anchor moveto(pos.origin, 0.05);
	self.anchor RotateTo((0, pos.angles[1], 0), 0.05);
	self.anchor waittill("movedone");
	target_org = zombie_utility::get_desired_origin();
	if(isdefined(target_org))
	{
		anim_ang = VectorToAngles(target_org - self.origin);
		self.anchor RotateTo((0, anim_ang[1], 0), 0.05);
		self.anchor waittill("rotatedone");
	}
	if(isdefined(level.zombie_spawn_fx))
	{
		playFX(level.zombie_spawn_fx, pos.origin);
	}
	self Unlink();
	if(isdefined(self.anchor))
	{
		self.anchor delete();
	}
	if(isdefined(spot.barrier) && pos == spot.barrier)
	{
		playFX(level._effect["lightning_dog_spawn"], self.origin);
		self show();
		self thread function_39e002c5(spot);
	}
	else
	{
		self show();
		self notify("risen", spot.script_string);
	}
}

/*
	Name: do_zombie_rise
	Namespace: namespace_b0a87e94
	Checksum: 0x88FB1011
	Offset: 0x2B00
	Size: 0x3F5
	Parameters: 1
	Flags: None
*/
function do_zombie_rise(spot)
{
	self endon("death");
	self.in_the_ground = 1;
	if(isdefined(self.anchor))
	{
		self.anchor delete();
	}
	self.anchor = spawn("script_origin", self.origin);
	self.anchor.angles = self.angles;
	self LinkTo(self.anchor);
	if(!isdefined(spot.angles))
	{
		spot.angles = (0, 0, 0);
	}
	anim_org = spot.origin;
	anim_ang = spot.angles;
	anim_org = anim_org + (0, 0, 0);
	self ghost();
	self.anchor moveto(anim_org, 0.05);
	self.anchor waittill("movedone");
	target_org = zombie_utility::get_desired_origin();
	if(isdefined(target_org))
	{
		anim_ang = VectorToAngles(target_org - self.origin);
		self.anchor RotateTo((0, anim_ang[1], 0), 0.05);
		self.anchor waittill("rotatedone");
	}
	self Unlink();
	if(isdefined(self.anchor))
	{
		self.anchor delete();
	}
	self thread zombie_utility::hide_pop();
	level thread zombie_utility::zombie_rise_death(self, spot);
	spot thread zombie_rise_fx(self);
	if(!isdefined(self.zombie_move_speed))
	{
		self.zombie_move_speed = "walk";
	}
	substate = 0;
	if(self.zombie_move_speed == "walk")
	{
		substate = RandomInt(2);
	}
	else if(self.zombie_move_speed == "run")
	{
		substate = 2;
	}
	else if(self.zombie_move_speed == "sprint")
	{
		substate = 3;
	}
	self OrientMode("face default");
	self AnimScripted("rise_anim", self.origin, self.angles, "ai_zombie_traverse_ground_climbout_fast");
	self zombie_shared::DoNoteTracks("rise_anim", &zombie_utility::handle_rise_notetracks, spot);
	self notify("rise_anim_finished");
	spot notify("stop_zombie_rise_fx");
	self.in_the_ground = 0;
	self notify("risen", spot.script_string);
}

/*
	Name: zombie_rise_fx
	Namespace: namespace_b0a87e94
	Checksum: 0xDC404AD
	Offset: 0x2F00
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function zombie_rise_fx(zombie)
{
	zombie endon("death");
	self endon("stop_zombie_rise_fx");
	self endon("rise_anim_finished");
	zombie clientfield::set("zombie_riser_fx", 1);
}

/*
	Name: zombie_death_event
	Namespace: namespace_b0a87e94
	Checksum: 0x18E8B910
	Offset: 0x2F58
	Size: 0x317
	Parameters: 1
	Flags: None
*/
function zombie_death_event(zombie)
{
	zombie.marked_for_recycle = 0;
	force_explode = 0;
	force_head_gib = 0;
	zombie waittill("death", attacker);
	time_of_death = GetTime();
	if(isdefined(zombie))
	{
		zombie stopsounds();
	}
	if(isdefined(zombie) && isdefined(zombie.marked_for_insta_upgraded_death))
	{
		force_head_gib = 1;
	}
	if(!isdefined(zombie.damagehit_origin) && isdefined(attacker) && isalive(attacker))
	{
		zombie.damagehit_origin = attacker.origin;
	}
	if(!isdefined(zombie))
	{
		return;
	}
	level.total_zombies_killed++;
	name = zombie.animName;
	if(isdefined(zombie.sndname))
	{
		name = zombie.sndname;
	}
	zombie thread zombie_utility::zombie_eye_glow_stop();
	if(IsActor(zombie))
	{
		if(zombie.damageMod == "MOD_GRENADE" || zombie.damageMod == "MOD_GRENADE_SPLASH" || zombie.damageMod == "MOD_EXPLOSIVE" || force_explode == 1)
		{
			splode_dist = 180;
			if(isdefined(zombie.damagehit_origin) && DistanceSquared(zombie.origin, zombie.damagehit_origin) < splode_dist * splode_dist)
			{
				tag = "J_SpineLower";
				if(!isdefined(zombie.is_on_fire) && zombie.is_on_fire && (!isdefined(zombie.guts_explosion) && zombie.guts_explosion))
				{
					zombie thread zombie_utility::zombie_gut_explosion();
				}
			}
		}
	}
	if(isdefined(zombie.attacker) && isPlayer(zombie.attacker))
	{
		zombie.attacker notify("zom_kill", zombie);
	}
	level notify("zom_kill");
	level.total_zombies_killed++;
}

/*
	Name: zombie_death_animscript
	Namespace: namespace_b0a87e94
	Checksum: 0xBE485CA9
	Offset: 0x3278
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function zombie_death_animscript()
{
	team = undefined;
	if(isdefined(self._race_team))
	{
		team = self._race_team;
	}
	self zombie_utility::reset_attack_spot();
	if(isdefined(level.zombie_death_animscript_override))
	{
		self [[level.zombie_death_animscript_override]]();
	}
	if(!self.missingLegs && isdefined(self.a.gib_ref) && self.a.gib_ref == "no_legs")
	{
		self.deathAnim = "zm_death";
	}
	self.grenadeAmmo = 0;
	if(isdefined(self.attacker) && isai(self.attacker))
	{
		self.attacker notify("killed", self);
	}
	if(self.damageMod == "MOD_BURNED")
	{
		self thread zombie_death::flame_death_fx();
	}
	if(self.damageMod == "MOD_GRENADE" || self.damageMod == "MOD_GRENADE_SPLASH")
	{
		level notify("zombie_grenade_death", self.origin);
	}
	return 0;
}

/*
	Name: function_93985e5e
	Namespace: namespace_b0a87e94
	Checksum: 0x53CC7BE8
	Offset: 0x33E0
	Size: 0x3B1
	Parameters: 1
	Flags: None
*/
function function_93985e5e(a_ents)
{
	level endon("end_game");
	level endon("game_ended");
	level endon("hash_25601ed0");
	level waittill("hash_ee152b14");
	level thread namespace_99d8554b::function_faa82017();
	level thread function_7c7dc2();
	level thread function_32f8ed03();
	level.var_3362c19 = 0;
	startTime = GetTime();
	if(level.players.size > 2)
	{
		level.var_1e47bbdd = Int(1 * level.players.size);
	}
	level thread round_think();
	level.var_e6467acd thread namespace_6473bd03::function_5be37ad8();
	level clientfield::set("zombie_root_grow", 1);
	level.overridePlayerDamage = &function_c013c278;
	level flag::wait_till("zombies_final_round");
	namespace_f25bd8c8::function_e9c21474();
	level.overridePlayerDamage = &function_56f9ab2e;
	level waittill("hash_7e06c3bb");
	level.var_e6467acd scene::Play("cin_inf_16_01_zombies_vign_treemoment_talk02", level.var_e6467acd);
	if(isdefined(level.BZM_INFECTIONDialogue23Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue23Callback]]();
	}
	level.var_e6467acd cybercom::function_59965309("cybercom_sensoryoverload");
	level.var_e6467acd clientfield::set("sarah_body_light", 1);
	level.var_e6467acd thread scene::Play("cin_inf_16_01_zombies_vign_treemoment_outro", level.var_e6467acd);
	level.var_e6467acd notify("hash_9ce403cf");
	level waittill("hash_bf4f1605");
	objectives::complete("cp_level_infection_zombies");
	objectives::set("cp_level_infection_escape", level.var_e6467acd);
	level flag::set("sarah_tree");
	level.var_e6467acd namespace_36cbf523::function_db9a227f(1);
	level.var_e6467acd util::stop_magic_bullet_shield();
	level.var_e6467acd SetTeam("axis");
	level.var_e6467acd.allowPain = 1;
	level.var_e6467acd.health = 9999;
	level.var_e6467acd.overrideActorDamage = &function_807b8294;
	level.var_e6467acd waittill("death");
	level.overridePlayerDamage = undefined;
	level flag::set("zombies_completed");
	level notify("end_round_think");
}

/*
	Name: function_807b8294
	Namespace: namespace_b0a87e94
	Checksum: 0x3F1AECB3
	Offset: 0x37A0
	Size: 0x153
	Parameters: 13
	Flags: None
*/
function function_807b8294(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName)
{
	self.overrideActorDamage = undefined;
	if(weapon.type == "grenade")
	{
		namespace_f25bd8c8::function_cce60169();
	}
	objectives::complete("cp_level_infection_escape", self);
	self namespace_36cbf523::function_db9a227f(0);
	self clientfield::set("exploding_ai_deaths", 1);
	util::wait_network_frame();
	self ghost();
	self scene::stop("cin_inf_16_01_zombies_vign_treemoment_outro");
	self kill();
}

/*
	Name: pause_zombie_spawning
	Namespace: namespace_b0a87e94
	Checksum: 0x277D805F
	Offset: 0x3900
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function pause_zombie_spawning()
{
	level flag::clear("spawn_zombies");
	timePassed = 0;
	startTime = GetTime();
	while(zombie_utility::get_current_zombie_count() > 0)
	{
		zombies = GetAITeamArray("axis");
		for(i = 0; i < zombies.size; i++)
		{
			if(!(isdefined(zombies[i] namespace_36cbf523::player_can_see_me(256)) && zombies[i] namespace_36cbf523::player_can_see_me(256)))
			{
				zombies[i] kill();
			}
		}
		timePassed = GetTime() - startTime / 1000;
		if(timePassed >= 30)
		{
			zombies = GetAITeamArray("axis");
			for(i = 0; i < zombies.size; i++)
			{
				zombies[i] kill();
			}
			return;
		}
		wait(0.1);
	}
	level flag::set("spawn_zombies");
}

/*
	Name: kill_all_zombies
	Namespace: namespace_b0a87e94
	Checksum: 0x68A2A96B
	Offset: 0x3AD0
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function kill_all_zombies()
{
	level flag::clear("spawn_zombies");
	zombies = GetAITeamArray("axis");
	for(i = 0; i < zombies.size; i++)
	{
		if(!IsSubStr(zombies[i].targetname, "sarah"))
		{
			zombies[i] DoDamage(zombies[i].health + 100, zombies[i].origin);
		}
	}
}

/*
	Name: function_dfeb24eb
	Namespace: namespace_b0a87e94
	Checksum: 0xA369761
	Offset: 0x3BC0
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_dfeb24eb(startTime)
{
	level endon("end_game");
	level endon("game_ended");
	var_c3209ae = level.var_f2a478d8 / 4;
	startTime = 0;
	var_c3adecbb = 0;
	while(var_c3adecbb < level.var_f2a478d8)
	{
		level waittill("between_round_over");
		var_c3adecbb = GetTime() - startTime / 1000;
		var_69d094a5 = Int(var_c3adecbb / var_c3209ae);
		if(level.round_number < var_69d094a5)
		{
			if(var_69d094a5 > 4)
			{
				var_69d094a5 = 4;
			}
			level.round_number = var_69d094a5;
		}
	}
}

/*
	Name: function_c013c278
	Namespace: namespace_b0a87e94
	Checksum: 0xB6DDB25F
	Offset: 0x3CB0
	Size: 0xCF
	Parameters: 11
	Flags: None
*/
function function_c013c278(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, modelIndex, psOffsetTime)
{
	if(isdefined(eAttacker) && (isdefined(eAttacker.is_zombie) && eAttacker.is_zombie))
	{
		self playlocalsound("evt_player_swiped");
		if(isdefined(eAttacker.meleeDamage))
		{
			iDamage = eAttacker.meleeDamage;
		}
	}
	return iDamage;
}

/*
	Name: function_56f9ab2e
	Namespace: namespace_b0a87e94
	Checksum: 0x6BA4A2E4
	Offset: 0x3D88
	Size: 0xF9
	Parameters: 11
	Flags: None
*/
function function_56f9ab2e(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, modelIndex, psOffsetTime)
{
	if(isdefined(eAttacker))
	{
		if(!isdefined(self.var_6eb7cad9))
		{
			self.var_6eb7cad9 = 0;
		}
		self.var_6eb7cad9++;
		if(eAttacker.var_75dbd7 === "heat")
		{
		}
		else if(self.health < self.maxhealth / 2 || self.var_6eb7cad9 === 5)
		{
			iDamage = 0;
			level thread function_f83fb174();
		}
	}
	return iDamage;
}

/*
	Name: function_f83fb174
	Namespace: namespace_b0a87e94
	Checksum: 0xD9C0E31E
	Offset: 0x3E90
	Size: 0x12D
	Parameters: 1
	Flags: None
*/
function function_f83fb174(var_67e5f9c0)
{
	if(!isdefined(var_67e5f9c0))
	{
		var_67e5f9c0 = 1;
	}
	wait(1);
	if(var_67e5f9c0)
	{
		level thread LUI::screen_fade(0.2, 0.8, 1, "white");
		playsoundatposition("evt_infection_thunder_special", (0, 0, 0));
	}
	level flag::clear("spawn_zombies");
	level thread kill_all_zombies();
	wait(0.5);
	level thread namespace_99d8554b::function_973b77f9();
	if(var_67e5f9c0)
	{
		level thread LUI::screen_fade(1, 0, 0.8, "white");
	}
	wait(1);
	level thread namespace_99d8554b::function_3d7fd2ca();
	wait(2);
	level notify("hash_7e06c3bb");
}

/*
	Name: round_think
	Namespace: namespace_b0a87e94
	Checksum: 0xCF3A5DD6
	Offset: 0x3FC8
	Size: 0x225
	Parameters: 0
	Flags: None
*/
function round_think()
{
	level endon("end_round_think");
	level endon("end_game");
	level endon("game_ended");
	SetRoundsPlayed(level.round_number);
	if(level.players.size == 1)
	{
		level.zombie_ai_limit = 28;
	}
	while(1)
	{
		while(level.zombie_spawn_locations.size <= 0)
		{
			wait(0.1);
		}
		level thread round_spawning();
		level notify("start_of_round");
		/#
			IPrintLnBold("Dev Block strings are not supported", level.round_number);
		#/
		round_wait();
		level flag::wait_till("spawn_zombies");
		level.first_round = 0;
		level notify("end_of_round");
		if(level.round_number >= 4)
		{
			level.var_e6467acd pause_zombie_spawning();
			level notify("hash_c7d17793");
		}
		timer = level.zombie_vars["zombie_spawn_delay"];
		if(timer > 0.08)
		{
			level.zombie_vars["zombie_spawn_delay"] = timer * 0.95;
		}
		else if(timer < 0.08)
		{
			level.zombie_vars["zombie_spawn_delay"] = 0.08;
		}
		level.round_number++;
		SetRoundsPlayed(level.round_number);
		level round_over();
		savegame::function_5d2cdd99();
		level notify("between_round_over");
	}
}

/*
	Name: round_over
	Namespace: namespace_b0a87e94
	Checksum: 0xE8A5551
	Offset: 0x41F8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function round_over()
{
	time = level.zombie_vars["zombie_between_round_time"];
	if(level.players.size == 4)
	{
		time = time * 0.25;
	}
	wait(time);
}

/*
	Name: round_wait
	Namespace: namespace_b0a87e94
	Checksum: 0x588790E2
	Offset: 0x4250
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function round_wait()
{
	level endon("restart_round");
	wait(1);
	while(1)
	{
		should_wait = zombie_utility::get_current_zombie_count() > level.var_1e47bbdd || level.zombie_total > level.var_1e47bbdd;
		if(!should_wait)
		{
			return;
		}
		if(level flag::get("end_round_wait"))
		{
			return;
		}
		wait(1);
	}
}

/*
	Name: round_spawning
	Namespace: namespace_b0a87e94
	Checksum: 0x75673B72
	Offset: 0x42E8
	Size: 0x3E7
	Parameters: 0
	Flags: None
*/
function round_spawning()
{
	level endon("end_of_round");
	if(level.zombie_spawn_locations.size < 1)
	{
		/#
			ASSERTMSG("Dev Block strings are not supported");
		#/
		return;
	}
	count = 0;
	max = level.zombie_ai_limit;
	multiplier = level.round_number / 5;
	if(multiplier < 1)
	{
		multiplier = 1;
	}
	if(level flag::get("sarah_tree"))
	{
		multiplier = multiplier * level.round_number * 0.15;
	}
	player_num = GetPlayers().size;
	if(player_num == 1)
	{
		max = Int(max * multiplier);
	}
	else
	{
		max = max + Int(player_num - 1 * level.zombie_vars["zombie_ai_per_player"] * multiplier);
	}
	if(!isdefined(level.max_zombie_func))
	{
		level.max_zombie_func = &zombie_utility::default_max_zombie_func;
	}
	var_24fcd54f = level.zombie_total;
	level.zombie_total = [[level.max_zombie_func]](max);
	level.zombie_total = level.zombie_total + var_24fcd54f;
	level notify("zombie_total_set");
	if(level.round_number < 10 || level.speed_change_max > 0)
	{
		level thread zombie_utility::zombie_speed_up();
	}
	while(1)
	{
		while(zombie_utility::get_current_zombie_count() >= level.zombie_ai_limit || level.zombie_total <= 0)
		{
			wait(0.1);
		}
		while(zombie_utility::get_current_actor_count() >= level.zombie_actor_limit)
		{
			zombie_utility::clear_all_corpses();
			wait(0.1);
		}
		level flag::wait_till("spawn_zombies");
		while(level.zombie_spawn_locations.size <= 0)
		{
			wait(0.1);
		}
		if(isdefined(level.zombie_spawners))
		{
			spawner = Array::random(level.zombie_spawners);
			ai = zombie_utility::spawn_zombie(spawner, spawner.targetname);
		}
		if(isdefined(ai))
		{
			level.zombie_total--;
			ai thread zombie_utility::round_spawn_failsafe();
			count++;
		}
		time = level.zombie_vars["zombie_spawn_delay"];
		if(level.round_number == 1)
		{
			time = level.zombie_vars["zombie_spawn_delay"] * 0.25;
		}
		if(level.players.size == 4)
		{
			time = time * 0.15;
		}
		wait(time);
		util::wait_network_frame();
	}
}

/*
	Name: zombie_bad_path
	Namespace: namespace_b0a87e94
	Checksum: 0xCC6C8DDF
	Offset: 0x46D8
	Size: 0x1A7
	Parameters: 0
	Flags: None
*/
function zombie_bad_path()
{
	self endon("death");
	self.var_c74f5ce8 = 0;
	level.var_aee5d9a5 = struct::get_array("zombie_escape_point", "targetname");
	while(1)
	{
		if(!self.var_c74f5ce8)
		{
			while(self can_zombie_see_any_player())
			{
				wait(0.5);
			}
		}
		found_player = undefined;
		foreach(e_player in level.players)
		{
			if(isdefined(zombie_utility::is_player_valid(e_player)) && zombie_utility::is_player_valid(e_player) && self MayMoveToPoint(e_player.origin, 1))
			{
				self.favoriteenemy = e_player;
				found_player = 1;
				continue;
			}
		}
		if(!isdefined(found_player))
		{
			self.var_c74f5ce8 = 1;
			self escaped_zombies_cleanup();
		}
		wait(0.1);
	}
}

/*
	Name: escaped_zombies_cleanup
	Namespace: namespace_b0a87e94
	Checksum: 0x63650F51
	Offset: 0x4888
	Size: 0x10B
	Parameters: 0
	Flags: Private
*/
function private escaped_zombies_cleanup()
{
	self endon("death");
	s_escape = self get_escape_position();
	self notify("stop_find_flesh");
	self notify("zombie_acquire_enemy");
	self ai::set_ignoreall(1);
	if(isdefined(s_escape))
	{
		self setgoalpos(s_escape.origin);
		self thread check_player_available();
		self util::waittill_any("goal", "reaquire_player");
	}
	wait(0.1);
	if(!self.var_c74f5ce8)
	{
		self.ai_state = "find_flesh";
		self ai::set_ignoreall(0);
	}
}

/*
	Name: get_escape_position
	Namespace: namespace_b0a87e94
	Checksum: 0x1E151EEE
	Offset: 0x49A0
	Size: 0x3B
	Parameters: 0
	Flags: Private
*/
function private get_escape_position()
{
	self endon("death");
	s_farthest = self function_cc961087(level.var_aee5d9a5);
	return s_farthest;
}

/*
	Name: function_cc961087
	Namespace: namespace_b0a87e94
	Checksum: 0x7072C016
	Offset: 0x49E8
	Size: 0xBD
	Parameters: 1
	Flags: Private
*/
function private function_cc961087(locations)
{
	n_farthest_index = 0;
	n_distance_farthest = 0;
	for(i = 0; i < locations.size; i++)
	{
		n_distance_sq = DistanceSquared(self.origin, locations[i].origin);
		if(n_distance_sq > n_distance_farthest)
		{
			n_distance_farthest = n_distance_sq;
			n_farthest_index = i;
		}
	}
	return locations[n_farthest_index];
}

/*
	Name: check_player_available
	Namespace: namespace_b0a87e94
	Checksum: 0x574B74DA
	Offset: 0x4AB0
	Size: 0x9B
	Parameters: 0
	Flags: Private
*/
function private check_player_available()
{
	self notify("_check_player_available");
	self endon("_check_player_available");
	self endon("death");
	self endon("goal");
	while(self.var_c74f5ce8)
	{
		wait(RandomFloatRange(0.2, 0.5));
		if(self can_zombie_see_any_player())
		{
			self.var_c74f5ce8 = 0;
			self notify("reaquire_player");
			return;
		}
	}
}

/*
	Name: can_zombie_see_any_player
	Namespace: namespace_b0a87e94
	Checksum: 0xCC06DCA7
	Offset: 0x4B58
	Size: 0xA7
	Parameters: 0
	Flags: Private
*/
function private can_zombie_see_any_player()
{
	for(i = 0; i < level.players.size; i++)
	{
		if(!zombie_utility::is_player_valid(level.players[i]))
		{
			continue;
		}
		player_origin = level.players[i].origin;
		if(self FindPath(self.origin, player_origin, 1, 0))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_7c7dc2
	Namespace: namespace_b0a87e94
	Checksum: 0x6D03F538
	Offset: 0x4C08
	Size: 0x4A1
	Parameters: 0
	Flags: None
*/
function function_7c7dc2()
{
	var_9b40c1cb = GetEnt("pavlov_house_fire", "targetname");
	/#
		Assert(isdefined(var_9b40c1cb), "Dev Block strings are not supported");
	#/
	var_acc45090 = GetEnt("pavlov_house_fire_warning", "targetname");
	wall_pos = struct::get("firewall_align", "targetname");
	/#
		Assert(isdefined(wall_pos), "Dev Block strings are not supported");
	#/
	var_7c15369c = util::spawn_model("tag_origin", wall_pos.origin, wall_pos.angles);
	var_7c15369c.targetname = "firewall_firepos";
	var_7c15369c clientfield::set("zombie_fire_wall_fx", 1);
	var_7c15369c clientfield::set("zombie_fire_backdraft_fx", 1);
	fxpos = struct::get_array("zombie_fire_wall", "targetname");
	foreach(pos in fxpos)
	{
		firePos = util::spawn_model("tag_origin", pos.origin, pos.angles);
		firePos LinkTo(var_7c15369c);
		firePos.targetname = "firewall_firepos";
		firePos clientfield::set("zombie_fire_wall_fx", 1);
	}
	var_9b40c1cb EnableLinkTo();
	var_9b40c1cb LinkTo(var_7c15369c);
	var_acc45090 EnableLinkTo();
	var_acc45090 LinkTo(var_7c15369c);
	final_pos = struct::get("final_fire_pos", "targetname");
	if(!isdefined(final_pos))
	{
		pos = (var_7c15369c.origin[0] - 1292, var_7c15369c.origin[1], var_7c15369c.origin[2]);
	}
	else
	{
		pos = final_pos.origin;
	}
	time = level.var_f2a478d8 * 0.75;
	if(isdefined(level.var_8ebdde9d) && level.var_8ebdde9d)
	{
		time = 0.1;
	}
	var_7c15369c moveto(pos, time);
	var_9b40c1cb thread function_d8f499cb();
	exploder::exploder("zombies_fire_transition");
	foreach(player in level.players)
	{
		player thread player_fire_damage(var_9b40c1cb, var_acc45090);
	}
}

/*
	Name: function_d8f499cb
	Namespace: namespace_b0a87e94
	Checksum: 0xD2725022
	Offset: 0x50B8
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function function_d8f499cb()
{
	self endon("death");
	var_30a3fa7c = 0;
	var_52128914 = 0;
	while(1)
	{
		a_zombies = GetAITeamArray("axis");
		var_30a3fa7c = a_zombies function_5d20fa4c();
		var_52128914 = a_zombies function_499c7bc4();
		if(var_30a3fa7c < 12)
		{
			for(i = 0; i < a_zombies.size; i++)
			{
				if(a_zombies[i] istouching(self) && (!isdefined(a_zombies[i].on_fire) && a_zombies[i].on_fire) && var_30a3fa7c < 12)
				{
					a_zombies[i].on_fire = 1;
					a_zombies[i].var_e686b755 = 1;
					var_30a3fa7c++;
					a_zombies[i] thread function_c8a09d87();
				}
				if(!isdefined(a_zombies[i].on_fire) && a_zombies[i].on_fire && a_zombies[i] function_1a9db234() && var_30a3fa7c < 12)
				{
					a_zombies[i].on_fire = 1;
					var_30a3fa7c++;
					var_52128914++;
					a_zombies[i] thread function_c8a09d87();
				}
			}
		}
		wait(1);
	}
}

/*
	Name: function_1a9db234
	Namespace: namespace_b0a87e94
	Checksum: 0x39F32976
	Offset: 0x52E8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_1a9db234()
{
	self endon("death");
	a_zombies = GetAITeamArray("axis");
	foreach(zombie in a_zombies)
	{
		n_dist = Distance2DSquared(self.origin, zombie.origin);
		if(self != zombie && n_dist < 2500 && (isdefined(zombie.on_fire) && zombie.on_fire))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_5d20fa4c
	Namespace: namespace_b0a87e94
	Checksum: 0x5DE0F09F
	Offset: 0x5410
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_5d20fa4c()
{
	num = 0;
	for(i = 0; i < self.size; i++)
	{
		if(isdefined(self[i].on_fire) && self[i].on_fire)
		{
			num++;
		}
	}
	return num;
}

/*
	Name: function_499c7bc4
	Namespace: namespace_b0a87e94
	Checksum: 0x556C59D5
	Offset: 0x5490
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_499c7bc4()
{
	num = 0;
	for(i = 0; i < self.size; i++)
	{
		if(isdefined(self[i].on_fire) && self[i].on_fire && (!isdefined(self[i].var_e686b755) && self[i].var_e686b755))
		{
			num++;
		}
	}
	return num;
}

/*
	Name: function_c8a09d87
	Namespace: namespace_b0a87e94
	Checksum: 0xC221F686
	Offset: 0x5538
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_c8a09d87()
{
	self endon("death");
	chance = RandomInt(10);
	self PlayLoopSound("chr_burn_start_loop", 1);
	if(chance <= 2)
	{
		PlayFXOnTag(level._effect["burn_loop_zombie_left_arm"], self, "J_Elbow_LE");
	}
	else if(chance <= 5)
	{
		PlayFXOnTag(level._effect["burn_loop_zombie_right_arm"], self, "J_Elbow_RI");
	}
	else
	{
		PlayFXOnTag(level._effect["burn_loop_zombie_torso"], self, "J_Spine4");
	}
}

/*
	Name: player_fire_damage
	Namespace: namespace_b0a87e94
	Checksum: 0x3199BB5E
	Offset: 0x5640
	Size: 0x18B
	Parameters: 2
	Flags: None
*/
function player_fire_damage(var_7b08f0da, var_a5765dcf)
{
	self endon("death");
	if(!isdefined(self.sndFireEnt))
	{
		self.sndFireEnt = spawn("script_origin", self.origin);
		self.sndFireEnt LinkTo(self);
	}
	while(1)
	{
		var_a5765dcf waittill("trigger", who);
		if(who == self)
		{
			while(isdefined(var_7b08f0da) && isdefined(var_a5765dcf) && (self istouching(var_7b08f0da) || self istouching(var_a5765dcf) || self.health != self.maxhealth))
			{
				self.sndFireEnt PlayLoopSound("chr_burn_start_loop", 0.5);
				wait(0.1);
			}
			self clientfield::set("burn", 0);
			self.sndFireEnt StopLoopSound(1);
			if(!isdefined(var_a5765dcf) || !isdefined(var_7b08f0da))
			{
				break;
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_32f8ed03
	Namespace: namespace_b0a87e94
	Checksum: 0xCF32E04C
	Offset: 0x57D8
	Size: 0x5BD
	Parameters: 0
	Flags: None
*/
function function_32f8ed03()
{
	level thread scene::init("p7_fxanim_cp_infection_house_ceiling_enter_01_bundle");
	level thread scene::init("p7_fxanim_cp_infection_house_ceiling_enter_02_bundle");
	level thread scene::init("p7_fxanim_cp_infection_house_wall_enter_01_bundle");
	level thread scene::init("p7_fxanim_cp_infection_house_wall_enter_02_bundle");
	level.barriers = struct::get_array("zombie_barrier", "targetname");
	foreach(barrier in level.barriers)
	{
		barrier.scenes = [];
		if(isdefined(level.var_8ebdde9d) && level.var_8ebdde9d)
		{
			level thread scene::skipto_end("p7_fxanim_cp_infection_house_ceiling_enter_01_bundle");
			level thread scene::skipto_end("p7_fxanim_cp_infection_house_ceiling_enter_02_bundle");
			level thread scene::skipto_end("p7_fxanim_cp_infection_house_wall_enter_01_bundle");
			level thread scene::skipto_end("p7_fxanim_cp_infection_house_wall_enter_02_bundle");
			parts = GetEntArray(barrier.target, "targetname");
			for(i = 0; i < parts.size; i++)
			{
				parts[i] Hide();
				parts[i] notsolid();
			}
			barrier.opened = 1;
			continue;
		}
		parts = GetEntArray(barrier.target, "targetname");
		for(i = 0; i < parts.size; i++)
		{
			if(parts[i].script_noteworthy === "lookat_barrier")
			{
				barrier.look_trig = parts[i];
				continue;
			}
			if(parts[i].script_noteworthy === "clip")
			{
				barrier.clip = parts[i];
			}
		}
		var_b9b6df55 = struct::get_array(barrier.target, "targetname");
		for(i = 0; i < var_b9b6df55.size; i++)
		{
			if(var_b9b6df55[i].script_noteworthy === "tearin_bundle")
			{
				var_b9b6df55[i] scene::init(var_b9b6df55[i].scriptbundlename);
				Array::add(barrier.scenes, var_b9b6df55[i], 0);
			}
		}
		for(i = 0; i < level.zombie_spawn_locations.size; i++)
		{
			if(level.zombie_spawn_locations[i].script_linkto === barrier.script_string)
			{
				level.zombie_spawn_locations[i].barrier = barrier;
				break;
			}
		}
		type = barrier.script_noteworthy;
		switch(type)
		{
			case "wall_filler":
			{
				barrier.bundleName = "cin_inf_16_01_zombies_vign_tearins_wallbreak_pull_";
				barrier.var_edff213c = 2;
				if(barrier.script_string === "wall_barrier1")
				{
					barrier.fxanim = "p7_fxanim_cp_infection_house_wall_enter_01_bundle";
				}
				else
				{
					barrier.fxanim = "p7_fxanim_cp_infection_house_wall_enter_02_bundle";
				}
				break;
			}
			case "ceiling_filler_bedroom":
			{
				barrier.bundleName = "cin_inf_16_01_zombies_vign_tearins_ceiling_bedroom_pull_";
				barrier.fxanim = "p7_fxanim_cp_infection_house_ceiling_enter_01_bundle";
				barrier.var_edff213c = 4;
				break;
			}
			case "ceiling_filler_frontroom":
			{
				barrier.bundleName = "cin_inf_16_01_zombies_vign_tearins_ceiling_frontroom_pull_";
				barrier.fxanim = "p7_fxanim_cp_infection_house_ceiling_enter_02_bundle";
				barrier.var_edff213c = 4;
				break;
			}
		}
		barrier.opened = 0;
	}
}

/*
	Name: function_39e002c5
	Namespace: namespace_b0a87e94
	Checksum: 0xBCE07902
	Offset: 0x5DA0
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_39e002c5(spot)
{
	barrier_pos = spot.barrier;
	/#
		Assert(isdefined(barrier_pos), "Dev Block strings are not supported");
	#/
	if(isdefined(barrier_pos.opened) && barrier_pos.opened)
	{
		self notify("risen", spot.script_string);
		return;
	}
	self endon("death");
	self.favoriteenemy = undefined;
	var_e6e961e4 = self.goalRadius;
	self.goalRadius = 4;
	self SetGoal(barrier_pos.origin, 1);
	self waittill("goal");
	self PathMode("dont move");
	self.goalRadius = var_e6e961e4;
	self.is_inert = 1;
	if(isdefined(barrier_pos.look_trig))
	{
		barrier_pos trigger_wait_timeout(30);
	}
	if(barrier_pos.script_noteworthy === "door_filler" || barrier_pos.script_noteworthy === "window_filler")
	{
		self thread function_9344567(spot);
		return;
	}
	else if(isdefined(barrier_pos.script_noteworthy))
	{
		self thread function_c55118b4(spot);
		self waittill("hash_6deed6b9");
		if(isdefined(barrier_pos.fxanim))
		{
			level thread scene::Play(barrier_pos.fxanim);
		}
	}
}

/*
	Name: function_c55118b4
	Namespace: namespace_b0a87e94
	Checksum: 0x3AD95D31
	Offset: 0x5FC8
	Size: 0x1ED
	Parameters: 1
	Flags: None
*/
function function_c55118b4(spot)
{
	barrier_pos = spot.barrier;
	self endon("death");
	if(!isdefined(barrier_pos.anim_num))
	{
		barrier_pos.anim_num = 1;
	}
	self ForceTeleport(barrier_pos.origin, barrier_pos.angles);
	while(!(isdefined(barrier_pos.opened) && barrier_pos.opened))
	{
		self thread scene::Play(barrier_pos.bundleName + barrier_pos.anim_num, self);
		Notetrack = "destroy_piece";
		self waittill(Notetrack);
		self notify("hash_6deed6b9");
		self waittill("scene_done");
		if(barrier_pos.anim_num < barrier_pos.var_edff213c)
		{
			barrier_pos.anim_num++;
		}
		else
		{
			barrier_pos.opened = 1;
		}
	}
	self notify("risen", spot.script_string);
	self.is_inert = 0;
	if(isdefined(barrier_pos.clip))
	{
		barrier_pos.clip notsolid();
		barrier_pos.clip connectpaths();
	}
	spot.barrier = undefined;
	spot.occupied = undefined;
}

/*
	Name: function_9344567
	Namespace: namespace_b0a87e94
	Checksum: 0xFBA7D492
	Offset: 0x61C0
	Size: 0x277
	Parameters: 1
	Flags: None
*/
function function_9344567(spot)
{
	self endon("death");
	barrier_pos = spot.barrier;
	self ForceTeleport(barrier_pos.origin, barrier_pos.angles);
	while(barrier_pos.scenes.size > 0)
	{
		if(!isdefined(barrier_pos.scene_num))
		{
			barrier_pos.scene_num = 1;
		}
		for(i = 0; i < barrier_pos.scenes.size; i++)
		{
			if(IsSubStr(barrier_pos.scenes[i].scriptbundlename, "_" + barrier_pos.scene_num))
			{
				str_scene = barrier_pos.scenes[i].scriptbundlename;
				s_scene = barrier_pos.scenes[i];
				break;
			}
		}
		s_scene thread scene::Play(str_scene, self);
		s_scene util::waittill_notify_or_timeout("scene_done", 5);
		barrier_pos.scene_num++;
		ArrayRemoveValue(barrier_pos.scenes, s_scene);
	}
	self notify("risen", spot.script_string);
	self.is_inert = 0;
	if(isdefined(barrier_pos.clip))
	{
		barrier_pos.clip notsolid();
		barrier_pos.clip connectpaths();
	}
	spot.barrier = undefined;
	spot.occupied = undefined;
	barrier_pos.opened = 1;
}

/*
	Name: trigger_wait_timeout
	Namespace: namespace_b0a87e94
	Checksum: 0x49EE1D6D
	Offset: 0x6440
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function trigger_wait_timeout(time)
{
	self.look_trig thread timeout_notify(time);
	self.look_trig thread function_9973d36d();
	self.look_trig util::waittill_any("timeout", "was_seen");
	if(isdefined(self.look_trig))
	{
		self.look_trig delete();
	}
}

/*
	Name: function_9973d36d
	Namespace: namespace_b0a87e94
	Checksum: 0xCB296B28
	Offset: 0x64E0
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_9973d36d()
{
	self endon("timeout");
	self endon("hash_dffed4ee");
	while(1)
	{
		self trigger::wait_till();
		if(isdefined(zombie_utility::is_player_valid(self.who)) && zombie_utility::is_player_valid(self.who))
		{
			self notify("hash_dffed4ee");
			return;
		}
	}
}

/*
	Name: timeout_notify
	Namespace: namespace_b0a87e94
	Checksum: 0x49A00EE7
	Offset: 0x6568
	Size: 0x6D
	Parameters: 1
	Flags: None
*/
function timeout_notify(time)
{
	self endon("timeout");
	self endon("hash_dffed4ee");
	end_time = GetTime() + time * 1000;
	while(GetTime() < end_time)
	{
		wait(0.1);
		if(!isdefined(self))
		{
			return;
		}
	}
	self notify("timeout");
}

