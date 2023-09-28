#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\voice\voice_prologue;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_2cb3876f;

/*
	Name: function_4e9a52a6
	Namespace: namespace_2cb3876f
	Checksum: 0x78E1AAAB
	Offset: 0x638
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_4e9a52a6()
{
	var_8ea4a872 = self GetWeaponsList();
	foreach(w_weapon in var_8ea4a872)
	{
		self giveMaxAmmo(w_weapon);
		self SetWeaponAmmoClip(w_weapon, w_weapon.clipSize);
	}
}

/*
	Name: function_b50f5d52
	Namespace: namespace_2cb3876f
	Checksum: 0xC2501119
	Offset: 0x720
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_b50f5d52(var_76cb0c72)
{
	if(!isdefined(var_76cb0c72))
	{
		var_76cb0c72 = 0;
	}
	a_ai_enemies = GetAITeamArray("axis");
	foreach(ai_enemy in a_ai_enemies)
	{
		if(isalive(ai_enemy))
		{
			if(var_76cb0c72)
			{
				ai_enemy ai::bloody_death(RandomFloat(0.25));
				continue;
			}
			ai_enemy delete();
		}
	}
}

/*
	Name: function_2f943869
	Namespace: namespace_2cb3876f
	Checksum: 0xB46E4171
	Offset: 0x840
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_2f943869()
{
	self endon("death");
	wait(RandomFloatRange(0.1, 0.6));
	self vehicle::get_out();
	if(isdefined(self.script_noteworthy))
	{
		self SetGoal(GetNode(self.script_noteworthy, "targetname"), 1);
	}
}

/*
	Name: function_77308ba7
	Namespace: namespace_2cb3876f
	Checksum: 0x7FEEC538
	Offset: 0x8D0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_77308ba7()
{
	level.var_5d5055db = 1;
	level flag::set_val("is_base_alerted", 1);
	/#
		println("Dev Block strings are not supported");
	#/
	level util::clientNotify("alarm_on");
	playsoundatposition("evt_base_alarm", (-1546, 287, 461));
	wait(2);
	playsoundatposition("evt_base_alarm", (-1546, 287, 461));
	wait(2);
	playsoundatposition("evt_base_alarm", (-1546, 287, 461));
}

/*
	Name: function_6a5f89cb
	Namespace: namespace_2cb3876f
	Checksum: 0xFAA7B9E0
	Offset: 0x9D8
	Size: 0x4D7
	Parameters: 2
	Flags: None
*/
function function_6a5f89cb(skipto, var_de2f1b3)
{
	if(!isdefined(var_de2f1b3))
	{
		var_de2f1b3 = 1;
	}
	flag::wait_till("all_players_spawned");
	primary_weapon = GetWeapon("ar_standard_hero");
	var_5178c24b = GetDvarInt("scene_debug_player", 0);
	if(!isdefined(level.var_681ad194))
	{
		level.var_681ad194 = [];
	}
	if(var_de2f1b3)
	{
		if(level.players.size <= 3 && !isdefined(level.var_681ad194[1]) && var_5178c24b != 2)
		{
			level.var_681ad194[1] = util::function_740f8516("ally_03");
			s_struct = struct::get(skipto + "_ally_03", "targetname");
			level.var_681ad194[1] ForceTeleport(s_struct.origin, s_struct.angles);
			level.var_681ad194[1] ai::gun_switchto(primary_weapon, "right");
			level.var_681ad194[1].var_a89679b6 = 3;
		}
		if(level.players.size <= 2 && !isdefined(level.var_681ad194[2]) && var_5178c24b != 3)
		{
			level.var_681ad194[2] = util::function_740f8516("ally_02");
			s_struct = struct::get(skipto + "_ally_02", "targetname");
			level.var_681ad194[2] ForceTeleport(s_struct.origin, s_struct.angles);
			level.var_681ad194[2] ai::gun_switchto(primary_weapon, "right");
			level.var_681ad194[2].var_a89679b6 = 2;
		}
		if(level.players.size == 1 && !isdefined(level.var_681ad194[3]) && var_5178c24b != 4)
		{
			level.var_681ad194[3] = util::function_740f8516("ally_01");
			s_struct = struct::get(skipto + "_ally_01", "targetname");
			level.var_681ad194[3] ForceTeleport(s_struct.origin, s_struct.angles);
			level.var_681ad194[3] ai::gun_switchto(primary_weapon, "right");
			level.var_681ad194[3].var_a89679b6 = 1;
		}
	}
	if(level.players.size >= 2 && isdefined(level.var_681ad194[3]))
	{
		level.var_681ad194[3] delete();
		level.var_681ad194[3] = undefined;
	}
	if(level.players.size >= 3 && isdefined(level.var_681ad194[2]))
	{
		level.var_681ad194[2] delete();
		level.var_681ad194[2] = undefined;
	}
	if(level.players.size >= 4 && isdefined(level.var_681ad194[1]))
	{
		level.var_681ad194[1] delete();
		level.var_681ad194[1] = undefined;
	}
}

/*
	Name: give_player_weapons
	Namespace: namespace_2cb3876f
	Checksum: 0xE9D943FC
	Offset: 0xEB8
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function give_player_weapons()
{
	self flag::clear("custom_loadout");
	self TakeAllWeapons();
	self.primaryLoadoutWeapon = GetWeapon("smg_standard", "grip", "fastreload", "reflex");
	self.secondaryLoadoutWeapon = GetWeapon("pistol_standard", "fastreload");
	self GiveWeapon(self.primaryLoadoutWeapon);
	self GiveWeapon(self.secondaryLoadoutWeapon);
	self.grenadeTypePrimary = GetWeapon("frag_grenade");
	self.grenadeTypeSecondary = GetWeapon("concussion_grenade");
	self GiveWeapon(self.grenadeTypePrimary);
	self GiveWeapon(self.grenadeTypeSecondary);
	var_8ea4a872 = self GetWeaponsList();
	foreach(w_weapon in var_8ea4a872)
	{
		self giveMaxAmmo(w_weapon);
		self SetWeaponAmmoClip(w_weapon, w_weapon.clipSize);
	}
	self SwitchToWeapon(self.primaryLoadoutWeapon);
	self flag::set("custom_loadout");
}

/*
	Name: function_bee23a9e
	Namespace: namespace_2cb3876f
	Checksum: 0x2C3EF8B9
	Offset: 0x1130
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_bee23a9e(vehicle, str_spawn_manager)
{
	vehicle waittill("reached_end_node");
	vehicle disconnectpaths();
	spawn_manager::enable(str_spawn_manager);
}

/*
	Name: function_35be2939
	Namespace: namespace_2cb3876f
	Checksum: 0x68F83483
	Offset: 0x1190
	Size: 0x177
	Parameters: 2
	Flags: None
*/
function function_35be2939(var_5d370658, var_4afdd260)
{
	self endon("death");
	self.goalRadius = 8;
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self SetGoal(self.origin);
	level flag::wait_till(var_5d370658);
	self.goalRadius = 32;
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	if(isdefined(self.target))
	{
		node = GetNodeArray(self.target, "targetname");
		index = randomIntRange(0, node.size);
		self SetGoal(node[index], 1);
	}
	if(isdefined(var_4afdd260))
	{
		self waittill("goal");
		self.goalRadius = var_4afdd260;
	}
}

/*
	Name: function_6ee0e1a5
	Namespace: namespace_2cb3876f
	Checksum: 0x55DB82BC
	Offset: 0x1310
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_6ee0e1a5()
{
	if(!isdefined(level.var_681ad194))
	{
		return [];
	}
	for(i = 1; i < 4; i++)
	{
		if(!isdefined(level.var_681ad194[i]) || !isalive(level.var_681ad194[i]))
		{
			level.var_681ad194[i] = undefined;
		}
	}
	return ArrayCopy(level.var_681ad194);
}

/*
	Name: function_125042c0
	Namespace: namespace_2cb3876f
	Checksum: 0x41F55383
	Offset: 0x13B8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_125042c0()
{
	var_2a04238a = ArrayCombine(GetPlayers(), level.var_681ad194, 0, 0);
	return var_2a04238a;
}

/*
	Name: function_8abaca05
	Namespace: namespace_2cb3876f
	Checksum: 0xFB51D0FD
	Offset: 0x1408
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_8abaca05()
{
	self endon("death");
	self.goalRadius = 64;
	self.ignoreall = 1;
	nd_node = GetNode(self.script_string, "targetname");
	while(1)
	{
		self SetGoal(nd_node.origin);
		self waittill("goal");
		if(!isdefined(nd_node.script_string))
		{
			break;
		}
		nd_node = GetNode(nd_node.script_string, "targetname");
	}
}

/*
	Name: function_67877d47
	Namespace: namespace_2cb3876f
	Checksum: 0x65C8BA8F
	Offset: 0x14E8
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_67877d47(goal)
{
	nd_node = GetNode(goal, "targetname");
	self SetGoal(nd_node, 1);
	self waittill("goal");
}

/*
	Name: function_94d4d33b
	Namespace: namespace_2cb3876f
	Checksum: 0xFFDF55CE
	Offset: 0x1550
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_94d4d33b()
{
	self.goalRadius = 512;
}

/*
	Name: function_45a98c2a
	Namespace: namespace_2cb3876f
	Checksum: 0xC656DAB5
	Offset: 0x1568
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_45a98c2a()
{
	self.goalRadius = 16;
}

/*
	Name: set_goal_volume
	Namespace: namespace_2cb3876f
	Checksum: 0xDDF05E53
	Offset: 0x1580
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function set_goal_volume(e_goal_volume)
{
	self setgoalvolume(e_goal_volume);
}

/*
	Name: function_29c76f59
	Namespace: namespace_2cb3876f
	Checksum: 0x5D0F7F48
	Offset: 0x15B0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_29c76f59()
{
	var_ffdd18ce = self getteam();
	self ai::set_behavior_attribute("rogue_control", "forced_level_2");
	self ai::set_behavior_attribute("rogue_control_speed", "run");
	self SetTeam(var_ffdd18ce);
	if(level.players.size > 1)
	{
		self.health = Int(self.health * 1.4);
	}
}

/*
	Name: function_bd761fba
	Namespace: namespace_2cb3876f
	Checksum: 0x1399FCEA
	Offset: 0x1688
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_bd761fba(str_flag)
{
	self endon("death");
	self turret::enable(1, 0);
	level flag::wait_till(str_flag);
	self thread function_3a642801();
}

/*
	Name: function_9af14b02
	Namespace: namespace_2cb3876f
	Checksum: 0xEC12A697
	Offset: 0x16F8
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_9af14b02(str_flag, n_time)
{
	self endon("death");
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	self waittill("open_fire");
	self turret::shoot_at_target(level.apc, n_time, undefined, 1, 0);
	self turret::enable(1, 1);
	level flag::wait_till(str_flag);
	self thread function_3a642801();
}

/*
	Name: function_1db6047f
	Namespace: namespace_2cb3876f
	Checksum: 0x44911C51
	Offset: 0x17E0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_1db6047f(str_cleanup)
{
	self endon("death");
	trigger::wait_till(str_cleanup);
	self delete();
}

/*
	Name: function_3a642801
	Namespace: namespace_2cb3876f
	Checksum: 0x7545FA71
	Offset: 0x1830
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_3a642801()
{
	foreach(ai_rider in self.riders)
	{
		if(isdefined(ai_rider))
		{
			ai_rider delete();
		}
	}
	level flag::wait_till_clear("deleting_havok_object");
	level flag::set("deleting_havok_object");
	self.delete_on_death = 1;
	self notify("death");
	if(!isalive(self))
	{
		self delete();
	}
	wait(0.05);
	level flag::clear("deleting_havok_object");
}

/*
	Name: function_73acb160
	Namespace: namespace_2cb3876f
	Checksum: 0x7C0D79ED
	Offset: 0x1978
	Size: 0x8D
	Parameters: 2
	Flags: None
*/
function function_73acb160(var_a9ea049a, start_func)
{
	a_spawners = GetEntArray(var_a9ea049a, "targetname");
	for(i = 0; i < a_spawners.size; i++)
	{
		level thread function_1f89893f(a_spawners[i], start_func);
	}
}

/*
	Name: function_1f89893f
	Namespace: namespace_2cb3876f
	Checksum: 0x4E7812AE
	Offset: 0x1A10
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_1f89893f(e_spawner, start_func)
{
	if(isdefined(e_spawner.script_delay))
	{
		wait(e_spawner.script_delay);
	}
	e_ent = e_spawner spawner::spawn();
	if(isdefined(start_func))
	{
		e_ent thread [[start_func]]();
	}
}

/*
	Name: function_c47ce0e9
	Namespace: namespace_2cb3876f
	Checksum: 0xE4AD8B64
	Offset: 0x1A90
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c47ce0e9()
{
	self.grenadeAmmo = 0;
}

/*
	Name: function_40e4b0cf
	Namespace: namespace_2cb3876f
	Checksum: 0x3ED4D89F
	Offset: 0x1AA8
	Size: 0x11B
	Parameters: 3
	Flags: None
*/
function function_40e4b0cf(str_spawn_manager, var_a9ea049a, var_c5690501)
{
	a_spawners = GetEntArray(var_a9ea049a, "targetname");
	e_volume = GetEnt(var_c5690501, "targetname");
	foreach(sp_spawner in a_spawners)
	{
		sp_spawner spawner::add_spawn_function(&set_goal_volume, e_volume);
	}
	spawn_manager::enable(str_spawn_manager);
}

/*
	Name: function_a7eac508
	Namespace: namespace_2cb3876f
	Checksum: 0xFA4A8E40
	Offset: 0x1BD0
	Size: 0xDD
	Parameters: 4
	Flags: None
*/
function function_a7eac508(str_spawner, var_4ac59d48, var_84fffedf, var_a4652398)
{
	a_ents = GetEntArray(str_spawner, "targetname");
	for(i = 0; i < a_ents.size; i++)
	{
		e_ent = a_ents[i] spawner::spawn();
		if(isdefined(var_4ac59d48))
		{
			e_ent.goalRadius = 64;
		}
		e_ent thread function_8e9f617f(var_84fffedf, var_a4652398);
	}
}

/*
	Name: function_8e9f617f
	Namespace: namespace_2cb3876f
	Checksum: 0x168577CE
	Offset: 0x1CB8
	Size: 0x5F
	Parameters: 2
	Flags: None
*/
function function_8e9f617f(var_84fffedf, var_a4652398)
{
	self endon("death");
	if(isdefined(var_a4652398) && var_a4652398)
	{
		self.var_a4652398 = 1;
	}
	self waittill("goal");
	if(isdefined(var_84fffedf))
	{
		self.goalRadius = var_84fffedf;
	}
}

/*
	Name: function_8f7b1e06
	Namespace: namespace_2cb3876f
	Checksum: 0x82A25A05
	Offset: 0x1D20
	Size: 0x16D
	Parameters: 3
	Flags: None
*/
function function_8f7b1e06(str_trigger, var_390543cc, var_9d774f5d)
{
	if(isdefined(str_trigger))
	{
		e_trigger = GetEnt(str_trigger, "targetname");
		e_trigger waittill("trigger");
	}
	var_441bd962 = GetEnt(var_390543cc, "targetname");
	var_ee2fd889 = GetEnt(var_9d774f5d, "targetname");
	a_ai = GetAITeamArray("axis");
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i];
		if(e_ent istouching(var_441bd962))
		{
			e_ent SetGoal(var_ee2fd889);
			e_ent thread function_8e9f617f(undefined, 0);
		}
	}
}

/*
	Name: function_9d611fab
	Namespace: namespace_2cb3876f
	Checksum: 0x9F4BF0C8
	Offset: 0x1E98
	Size: 0x197
	Parameters: 2
	Flags: None
*/
function function_9d611fab(str_struct, var_e209da48)
{
	s_struct = struct::get(str_struct, "targetname");
	var_d91de807 = AnglesToForward(s_struct.angles);
	while(1)
	{
		var_226231f3 = 0;
		a_players = GetPlayers();
		for(i = 0; i < a_players.size; i++)
		{
			e_player = a_players[i];
			v_dir = VectorNormalize(e_player.origin - s_struct.origin);
			dp = VectorDot(v_dir, var_d91de807);
			if(dp > 0.3)
			{
				var_226231f3++;
			}
		}
		if(isdefined(var_e209da48) && var_226231f3 >= a_players.size)
		{
			break;
		}
		if(var_226231f3 == a_players.size)
		{
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_12ce22ee
	Namespace: namespace_2cb3876f
	Checksum: 0x9F2B3A9
	Offset: 0x2038
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_12ce22ee()
{
	level.a_ai_allies = [];
	if(isdefined(level.var_681ad194[1]))
	{
		ArrayInsert(level.a_ai_allies, level.var_681ad194[1], 0);
	}
	if(isdefined(level.var_681ad194[2]))
	{
		ArrayInsert(level.a_ai_allies, level.var_681ad194[2], 0);
	}
	if(isdefined(level.var_681ad194[3]))
	{
		ArrayInsert(level.a_ai_allies, level.var_681ad194[3], 0);
	}
}

/*
	Name: function_520255e3
	Namespace: namespace_2cb3876f
	Checksum: 0x9A4B819A
	Offset: 0x2100
	Size: 0x75
	Parameters: 2
	Flags: None
*/
function function_520255e3(str_trigger, time)
{
	str_notify = "mufc_" + str_trigger;
	level thread function_901793d(str_trigger, str_notify);
	level thread function_2ffbaa00(time, str_notify);
	level waittill(str_notify);
}

/*
	Name: function_901793d
	Namespace: namespace_2cb3876f
	Checksum: 0x2F242981
	Offset: 0x2180
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_901793d(str_trigger, str_notify)
{
	level endon(str_notify);
	e_trigger = GetEnt(str_trigger, "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger waittill("trigger");
	}
	level notify(str_notify);
}

/*
	Name: function_2ffbaa00
	Namespace: namespace_2cb3876f
	Checksum: 0x25B5A3A8
	Offset: 0x21F8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_2ffbaa00(time, str_notify)
{
	level endon(str_notify);
	wait(time);
	level notify(str_notify);
}

/*
	Name: groundpos_ignore_water
	Namespace: namespace_2cb3876f
	Checksum: 0x422FADE6
	Offset: 0x2230
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function groundpos_ignore_water(origin)
{
	return GroundTrace(origin, origin + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
}

/*
	Name: function_609c412a
	Namespace: namespace_2cb3876f
	Checksum: 0x8D9FD110
	Offset: 0x2280
	Size: 0x14D
	Parameters: 2
	Flags: None
*/
function function_609c412a(str_volume, check_players)
{
	e_volume = GetEnt(str_volume, "targetname");
	var_f04bd8f5 = 0;
	a_ai = GetAITeamArray("axis");
	for(i = 0; i < a_ai.size; i++)
	{
		if(a_ai[i] istouching(e_volume))
		{
			var_f04bd8f5++;
		}
	}
	if(check_players)
	{
		a_players = GetPlayers();
		for(i = 0; i < a_players.size; i++)
		{
			if(a_players[i] istouching(e_volume))
			{
				var_f04bd8f5++;
				break;
			}
		}
	}
	return var_f04bd8f5;
}

/*
	Name: function_15823dab
	Namespace: namespace_2cb3876f
	Checksum: 0x9645485A
	Offset: 0x23D8
	Size: 0xA5
	Parameters: 6
	Flags: None
*/
function function_15823dab(v_pos, shake_size, shake_time, var_e64e30a6, rumble_num, e_player)
{
	if(shake_size)
	{
		Earthquake(shake_size, shake_time, v_pos, var_e64e30a6);
	}
	for(i = 0; i < rumble_num; i++)
	{
		e_player PlayRumbleOnEntity("damage_heavy");
		wait(0.1);
	}
}

/*
	Name: rumble_all_players
	Namespace: namespace_2cb3876f
	Checksum: 0x8EF2B3E2
	Offset: 0x2488
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function rumble_all_players(str_type, n_time_between, n_iterations, e_ent)
{
	for(i = 0; i < n_iterations; i++)
	{
		e_ent PlayRumbleOnEntity(str_type);
		wait(n_time_between);
	}
}

/*
	Name: function_2a0bc326
	Namespace: namespace_2cb3876f
	Checksum: 0x56A27373
	Offset: 0x2500
	Size: 0x151
	Parameters: 7
	Flags: None
*/
function function_2a0bc326(v_pos, var_48f82942, var_51fbdea, var_644bf6a7, var_8f4ca4be, str_rumble_type, var_183c13ad)
{
	if(!isdefined(str_rumble_type))
	{
		str_rumble_type = "damage_heavy";
	}
	if(var_48f82942)
	{
		Earthquake(var_48f82942, var_51fbdea, v_pos, var_644bf6a7);
	}
	var_5ca58060 = var_644bf6a7 * var_644bf6a7;
	foreach(player in level.activePlayers)
	{
		if(isdefined(var_183c13ad))
		{
			player shellshock(var_183c13ad, var_51fbdea);
		}
		player thread function_e42cebb6(v_pos, var_5ca58060, var_8f4ca4be, str_rumble_type);
	}
}

/*
	Name: function_e42cebb6
	Namespace: namespace_2cb3876f
	Checksum: 0x8B6F6E0
	Offset: 0x2660
	Size: 0x9D
	Parameters: 4
	Flags: None
*/
function function_e42cebb6(v_pos, var_5ca58060, var_8f4ca4be, str_rumble_type)
{
	self endon("death");
	for(i = 0; i < var_8f4ca4be; i++)
	{
		if(DistanceSquared(v_pos, self.origin) <= var_5ca58060)
		{
			self PlayRumbleOnEntity(str_rumble_type);
		}
		wait(0.1);
	}
}

/*
	Name: vehicle_rumble
	Namespace: namespace_2cb3876f
	Checksum: 0xAEEBDA79
	Offset: 0x2708
	Size: 0x153
	Parameters: 6
	Flags: None
*/
function vehicle_rumble(str_rumble_type, var_74584a64, var_48f82942, n_period, n_radius, n_timeout)
{
	if(!isdefined(str_rumble_type))
	{
		str_rumble_type = "damage_light";
	}
	if(!isdefined(var_48f82942))
	{
		var_48f82942 = 0.1;
	}
	if(!isdefined(n_period))
	{
		n_period = 0.1;
	}
	if(!isdefined(n_radius))
	{
		n_radius = 2000;
	}
	if(isdefined(var_74584a64))
	{
		self endon(var_74584a64);
	}
	self endon("death");
	var_c3adecbb = 0;
	var_ab216c38 = 0;
	while(!var_ab216c38)
	{
		self PlayRumbleOnEntity(str_rumble_type);
		Earthquake(var_48f82942, n_period, self.origin, n_radius);
		wait(n_period);
		if(isdefined(n_timeout) && n_timeout > 0)
		{
			var_c3adecbb = var_c3adecbb + n_period;
			var_ab216c38 = var_c3adecbb >= n_timeout;
		}
	}
}

/*
	Name: function_47a62798
	Namespace: namespace_2cb3876f
	Checksum: 0x34F94EE5
	Offset: 0x2868
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_47a62798(var_de243c2)
{
	level.var_2fd26037 ai::set_behavior_attribute("cqb", var_de243c2);
	a_allies = function_6ee0e1a5();
	foreach(var_3b8db917 in a_allies)
	{
		var_3b8db917 ai::set_behavior_attribute("cqb", var_de243c2);
	}
}

/*
	Name: function_a5398264
	Namespace: namespace_2cb3876f
	Checksum: 0x63CE418D
	Offset: 0x2958
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_a5398264(str_mode)
{
	level.var_2fd26037 ai::set_behavior_attribute("move_mode", str_mode);
	level.var_9db406db ai::set_behavior_attribute("move_mode", str_mode);
	level.var_4d5a4697 ai::set_behavior_attribute("move_mode", str_mode);
	a_allies = function_6ee0e1a5();
	foreach(var_3b8db917 in a_allies)
	{
		var_3b8db917 ai::set_behavior_attribute("move_mode", str_mode);
	}
}

/*
	Name: function_db027040
	Namespace: namespace_2cb3876f
	Checksum: 0x8122F065
	Offset: 0x2A98
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_db027040(var_eb6e3c93)
{
	level.var_2fd26037.perfectaim = var_eb6e3c93;
	level.var_9db406db.perfectaim = var_eb6e3c93;
	level.var_4d5a4697.perfectaim = var_eb6e3c93;
	a_allies = function_6ee0e1a5();
	foreach(var_3b8db917 in a_allies)
	{
		var_3b8db917.perfectaim = var_eb6e3c93;
	}
}

/*
	Name: num_players_touching_volume
	Namespace: namespace_2cb3876f
	Checksum: 0x9B8C579E
	Offset: 0x2B90
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function num_players_touching_volume(e_volume)
{
	a_players = GetPlayers();
	var_f04bd8f5 = 0;
	for(i = 0; i < a_players.size; i++)
	{
		if(a_players[i] istouching(e_volume))
		{
			var_f04bd8f5++;
		}
	}
	return var_f04bd8f5;
}

/*
	Name: function_68b8f4af
	Namespace: namespace_2cb3876f
	Checksum: 0xC5B61D73
	Offset: 0x2C30
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_68b8f4af(e_volume)
{
	a_ai = GetAITeamArray("axis");
	var_4c8fa27e = [];
	for(i = 0; i < a_ai.size; i++)
	{
		if(a_ai[i] istouching(e_volume))
		{
			var_4c8fa27e[var_4c8fa27e.size] = a_ai[i];
		}
	}
	return var_4c8fa27e;
}

/*
	Name: function_d1f1caad
	Namespace: namespace_2cb3876f
	Checksum: 0x9BB4FE63
	Offset: 0x2CE8
	Size: 0x51
	Parameters: 1
	Flags: None
*/
function function_d1f1caad(str_trigger)
{
	e_trigger = GetEnt(str_trigger, "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger waittill("trigger");
	}
}

/*
	Name: function_e0fb6da9
	Namespace: namespace_2cb3876f
	Checksum: 0x603F00D9
	Offset: 0x2D48
	Size: 0x413
	Parameters: 8
	Flags: None
*/
function function_e0fb6da9(str_struct, close_dist, wait_time, var_d1b83750, MAX_AI, var_a70db4af, var_1813646e, var_98e9bc46)
{
	a_players = GetPlayers();
	if(a_players.size > 1)
	{
		return;
	}
	s_struct = struct::get(str_struct, "targetname");
	var_37124366 = GetEnt(var_1813646e, "targetname");
	var_7d22b48e = GetEnt(var_98e9bc46, "targetname");
	v_forward = AnglesToForward(s_struct.angles);
	s_struct.start_time = undefined;
	var_cc06a93d = 0;
	while(1)
	{
		e_player = GetPlayers()[0];
		v_dir = s_struct.origin - e_player.origin;
		var_989d1f7c = VectorDot(v_dir, v_forward);
		if(var_989d1f7c < -100)
		{
			return;
		}
		dist = Distance(s_struct.origin, e_player.origin);
		if(dist < close_dist)
		{
			if(!isdefined(s_struct.start_time))
			{
				s_struct.start_time = GetTime();
			}
		}
		else
		{
			s_struct.start_time = undefined;
		}
		if(isdefined(s_struct.start_time))
		{
			time = GetTime();
			DT = time - s_struct.start_time / 1000;
			if(DT > wait_time)
			{
				a_ai = GetAITeamArray("axis");
				var_4c8fa27e = [];
				for(i = 0; i < a_ai.size; i++)
				{
					e_ent = a_ai[i];
					if(!isdefined(e_ent.var_db552f4))
					{
						if(e_ent istouching(var_37124366))
						{
							var_4c8fa27e[var_4c8fa27e.size] = e_ent;
						}
					}
				}
				var_d6f9eed8 = randomIntRange(var_d1b83750, MAX_AI + 1);
				if(var_d6f9eed8 > var_4c8fa27e.size)
				{
					var_d6f9eed8 = var_4c8fa27e.size;
				}
				for(i = 0; i < var_d6f9eed8; i++)
				{
					var_4c8fa27e[i] SetGoal(var_7d22b48e);
					var_4c8fa27e[i].var_db552f4 = 1;
				}
				s_struct.start_time = undefined;
				var_cc06a93d++;
				if(var_cc06a93d >= var_a70db4af)
				{
					return;
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_f5363f47
	Namespace: namespace_2cb3876f
	Checksum: 0xC814AFD3
	Offset: 0x3168
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function function_f5363f47(str_trigger)
{
	a_triggers = GetEntArray(str_trigger, "targetname");
	str_notify = str_trigger + "_waiting";
	for(i = 0; i < a_triggers.size; i++)
	{
		level thread function_7eb8a7ab(a_triggers[i], str_notify);
	}
	level waittill(str_notify);
}

/*
	Name: function_7eb8a7ab
	Namespace: namespace_2cb3876f
	Checksum: 0x20F40BD9
	Offset: 0x3218
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_7eb8a7ab(e_trigger, str_notify)
{
	level endon(str_notify);
	e_trigger waittill("trigger");
	level notify(str_notify);
}

/*
	Name: function_25e841ea
	Namespace: namespace_2cb3876f
	Checksum: 0xAF85B09
	Offset: 0x3258
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_25e841ea()
{
	if(!isdefined(level.var_c6c69fca))
	{
		level.var_c6c69fca = 1;
	}
}

/*
	Name: function_92d5b013
	Namespace: namespace_2cb3876f
	Checksum: 0x89790420
	Offset: 0x3280
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_92d5b013(speed_frac)
{
	a_players = GetPlayers();
	for(i = 0; i < a_players.size; i++)
	{
		a_players[i] setMoveSpeedScale(speed_frac);
	}
}

/*
	Name: debug_line
	Namespace: namespace_2cb3876f
	Checksum: 0x8F74D4BE
	Offset: 0x3300
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function debug_line(e_ent)
{
	e_ent endon("death");
	while(1)
	{
		v_start = e_ent.origin;
		v_end = v_start + VectorScale((0, 0, 1), 1000);
		v_col = (1, 1, 1);
		/#
			line(v_start, v_end, v_col);
		#/
		wait(0.1);
	}
}

/*
	Name: function_42da021e
	Namespace: namespace_2cb3876f
	Checksum: 0x9A1F4332
	Offset: 0x33A8
	Size: 0x1FB
	Parameters: 4
	Flags: None
*/
function function_42da021e(str_spawner_name, var_4c026543, var_61e0b19a, var_e3f49331)
{
	if(!isdefined(var_e3f49331))
	{
		var_e3f49331 = 0;
	}
	var_28290004 = str_spawner_name + "_end";
	var_2ef9d306 = vehicle::simple_spawn_single(str_spawner_name);
	var_2ef9d306 endon("death");
	var_2ef9d306 thread vehicle_rumble("buzz_high", var_28290004, 0.05, 0.1, 5000);
	nd_start = GetVehicleNode(var_2ef9d306.target, "targetname");
	var_2ef9d306 AttachPath(nd_start);
	if(isdefined(var_4c026543))
	{
		if(!isdefined(var_61e0b19a))
		{
			var_2ef9d306 SetSpeed(var_4c026543);
		}
		else
		{
			var_2ef9d306 SetSpeed(var_4c026543, var_61e0b19a);
		}
	}
	if(var_e3f49331)
	{
		var_2ef9d306 thread function_c56034b7();
	}
	var_2ef9d306 StartPath();
	var_2ef9d306 waittill("reached_end_node");
	var_2ef9d306 notify(var_28290004);
	var_2ef9d306.delete_on_death = 1;
	var_2ef9d306 notify("death");
	if(!isalive(var_2ef9d306))
	{
		var_2ef9d306 delete();
	}
}

/*
	Name: function_c56034b7
	Namespace: namespace_2cb3876f
	Checksum: 0x51593EA8
	Offset: 0x35B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c56034b7()
{
	PlayFXOnTag(level._effect["vtol_rotorwash"], self, "tag_engine_left");
	PlayFXOnTag(level._effect["vtol_rotorwash"], self, "tag_engine_right");
}

/*
	Name: function_950d1c3b
	Namespace: namespace_2cb3876f
	Checksum: 0x17055E82
	Offset: 0x3620
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_950d1c3b(b_enable)
{
	if(!isdefined(b_enable))
	{
		b_enable = 1;
	}
	if(b_enable)
	{
	}
	else
	{
	}
	var_9dff5377 = 0;
	foreach(player in level.players)
	{
		player clientfield::set_to_player("player_tunnel_dust_fx", var_9dff5377);
	}
}

/*
	Name: function_34acbf2
	Namespace: namespace_2cb3876f
	Checksum: 0x618401CA
	Offset: 0x3700
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_34acbf2()
{
	objectives::complete("cp_level_prologue_locate_the_security_room");
	objectives::complete("cp_level_prologue_security_camera");
}

/*
	Name: function_df278013
	Namespace: namespace_2cb3876f
	Checksum: 0xF592198C
	Offset: 0x3740
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_df278013()
{
	objectives::complete("cp_level_prologue_free_the_minister");
}

/*
	Name: function_9d35b20d
	Namespace: namespace_2cb3876f
	Checksum: 0x8C2A8F46
	Offset: 0x3768
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9d35b20d()
{
	objectives::complete("cp_level_prologue_free_khalil");
}

/*
	Name: function_cfabe921
	Namespace: namespace_2cb3876f
	Checksum: 0xD5B75E0A
	Offset: 0x3790
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_cfabe921()
{
	function_34acbf2();
	function_df278013();
	function_9d35b20d();
	objectives::complete("cp_level_prologue_find_vehicle");
	objectives::complete("cp_level_prologue_defend_theia");
	objectives::set("cp_level_prologue_goto_exfil");
}

/*
	Name: function_21f52196
	Namespace: namespace_2cb3876f
	Checksum: 0x7957A931
	Offset: 0x3818
	Size: 0x213
	Parameters: 3
	Flags: None
*/
function function_21f52196(str_door_name, t_enter, var_13aabd08)
{
	/#
		Assert(isdefined(t_enter), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(t_enter.target), "Dev Block strings are not supported");
	#/
	level endon("stop_door_" + str_door_name);
	t_exit = GetEnt(t_enter.target, "targetname");
	t_enter thread function_e0f9fe98(str_door_name, 0);
	t_exit thread function_e0f9fe98(str_door_name, 1);
	if(isdefined(var_13aabd08))
	{
		var_dee3d10a = GetEnt(var_13aabd08, "targetname");
		/#
			Assert(isdefined(var_dee3d10a), "Dev Block strings are not supported");
		#/
		var_dee3d10a endon("death");
		var_dee3d10a waittill("hash_c0b9931e");
		foreach(player in level.players)
		{
			if(!isdefined(player.a_doors))
			{
				player.a_doors = [];
			}
			player.a_doors[str_door_name] = 1;
		}
	}
}

/*
	Name: function_2e61b3e8
	Namespace: namespace_2cb3876f
	Checksum: 0x8E318DD5
	Offset: 0x3A38
	Size: 0x171
	Parameters: 3
	Flags: None
*/
function function_2e61b3e8(str_door_name, t_enter, a_ai)
{
	/#
		Assert(isdefined(t_enter), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(t_enter.target), "Dev Block strings are not supported");
	#/
	level endon("stop_door_" + str_door_name);
	t_exit = GetEnt(t_enter.target, "targetname");
	if(!isdefined(level.var_40c4c9da))
	{
		level.var_40c4c9da = [];
	}
	level.var_40c4c9da[str_door_name] = a_ai;
	foreach(e_guy in a_ai)
	{
		t_exit thread function_e010251d(str_door_name, 1, e_guy);
	}
}

/*
	Name: function_e0f9fe98
	Namespace: namespace_2cb3876f
	Checksum: 0x7D7ABC3B
	Offset: 0x3BB8
	Size: 0xA5
	Parameters: 2
	Flags: None
*/
function function_e0f9fe98(str_door_name, b_state)
{
	level endon("stop_door_" + str_door_name);
	self endon("death");
	while(1)
	{
		self waittill("trigger", e_who);
		if(isPlayer(e_who))
		{
			if(!isdefined(e_who.a_doors))
			{
				e_who.a_doors = [];
			}
			e_who.a_doors[str_door_name] = b_state;
		}
	}
}

/*
	Name: function_e010251d
	Namespace: namespace_2cb3876f
	Checksum: 0xE1160CC3
	Offset: 0x3C68
	Size: 0xF5
	Parameters: 3
	Flags: None
*/
function function_e010251d(str_door_name, b_state, e_guy)
{
	level endon("stop_door_" + str_door_name);
	self endon("death");
	if(!isdefined(e_guy.a_doors))
	{
		e_guy.a_doors = [];
	}
	e_guy.a_doors[str_door_name] = 0;
	while(1)
	{
		self waittill("trigger", e_who);
		if(isai(e_who) && e_who == e_guy)
		{
			if(!isdefined(e_who.a_doors))
			{
				e_who.a_doors = [];
			}
			e_who.a_doors[str_door_name] = b_state;
		}
	}
}

/*
	Name: function_cdd726fb
	Namespace: namespace_2cb3876f
	Checksum: 0xC46A2E05
	Offset: 0x3D68
	Size: 0x1DF
	Parameters: 1
	Flags: None
*/
function function_cdd726fb(str_door_name)
{
	var_83b77796 = 1;
	foreach(player in level.activePlayers)
	{
		if(!isdefined(player.a_doors) || !isdefined(player.a_doors[str_door_name]) || !player.a_doors[str_door_name])
		{
			var_83b77796 = 0;
		}
	}
	if(isdefined(level.var_40c4c9da) && isdefined(level.var_40c4c9da[str_door_name]))
	{
		foreach(e_guy in level.var_40c4c9da[str_door_name])
		{
			if(isalive(e_guy) && (!isdefined(e_guy.a_doors) || !isdefined(e_guy.a_doors[str_door_name]) || !e_guy.a_doors[str_door_name]))
			{
				var_83b77796 = 0;
			}
		}
	}
	return var_83b77796;
}

/*
	Name: function_d990de5a
	Namespace: namespace_2cb3876f
	Checksum: 0x53789E04
	Offset: 0x3F50
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_d990de5a(t_enter)
{
	t_exit = GetEnt(t_enter.target, "targetname");
	t_enter delete();
	t_exit delete();
}

/*
	Name: function_d723979e
	Namespace: namespace_2cb3876f
	Checksum: 0x7A6832D0
	Offset: 0x3FC8
	Size: 0x5B
	Parameters: 3
	Flags: None
*/
function function_d723979e(str_notify, STR_MODEL, str_endon)
{
	self endon("death");
	if(isdefined(str_endon))
	{
		level endon(str_endon);
	}
	self waittill(str_notify);
	self SetModel(STR_MODEL);
}

/*
	Name: function_72e9bdb8
	Namespace: namespace_2cb3876f
	Checksum: 0x628F057D
	Offset: 0x4030
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_72e9bdb8()
{
	if(self IsHost())
	{
		return self GetDStat("highestMapReached") > 0;
	}
	else
	{
		return self GetDStat("PlayerStatsByMap", "cp_mi_eth_prologue", "hasBeenCompleted");
	}
}

