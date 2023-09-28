#using scripts\codescripts\struct;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\serverfaceanim_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;

#namespace namespace_2396e2d7;

/*
	Name: function_fc1970dd
	Namespace: namespace_2396e2d7
	Checksum: 0x3511D7ED
	Offset: 0x578
	Size: 0x313
	Parameters: 0
	Flags: None
*/
function function_fc1970dd()
{
	level.var_bcf55096 = [];
	level.var_bcf55096["female"] = [];
	level.var_3fae1bc = 0;
	if(isdefined(level.var_a9e78bf7["aitypeFemale"]))
	{
		Array::add(level.var_bcf55096["female"], "actor_" + level.var_a9e78bf7["aitypeFemale"]);
		if(isdefined(level.var_a9e78bf7["femaleSpawnChance"]))
		{
			level.var_3fae1bc = Int(level.var_a9e78bf7["femaleSpawnChance"]);
		}
	}
	level.var_bcf55096["male"] = [];
	if(isdefined(level.var_a9e78bf7["aitypeMale1"]))
	{
		Array::add(level.var_bcf55096["male"], "actor_" + level.var_a9e78bf7["aitypeMale1"]);
	}
	if(isdefined(level.var_a9e78bf7["aitypeMale2"]))
	{
		if(isdefined(level.var_a9e78bf7["maleSpawnChance2"]) && RandomInt(100) < level.var_a9e78bf7["maleSpawnChance2"])
		{
			Array::add(level.var_bcf55096["male"], "actor_" + level.var_a9e78bf7["aitypeMale2"]);
		}
	}
	if(isdefined(level.var_a9e78bf7["aitypeMale3"]))
	{
		if(isdefined(level.var_a9e78bf7["maleSpawnChance3"]) && RandomInt(100) < level.var_a9e78bf7["maleSpawnChance3"])
		{
			Array::add(level.var_bcf55096["male"], "actor_" + level.var_a9e78bf7["aitypeMale3"]);
		}
	}
	if(isdefined(level.var_a9e78bf7["aitypeMale4"]))
	{
		if(isdefined(level.var_a9e78bf7["maleSpawnChance4"]) && RandomInt(100) < level.var_a9e78bf7["maleSpawnChance4"])
		{
			Array::add(level.var_bcf55096["male"], "actor_" + level.var_a9e78bf7["aitypeMale4"]);
		}
	}
}

/*
	Name: function_9bb9e127
	Namespace: namespace_2396e2d7
	Checksum: 0xBBBA969C
	Offset: 0x898
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_9bb9e127()
{
	if(!isdefined(level.var_bcf55096))
	{
		return undefined;
	}
	if(!level.var_bcf55096.size)
	{
		return undefined;
	}
	var_e24f6a0d = undefined;
	var_bc003134 = RandomInt(100) < level.var_3fae1bc;
	if(var_bc003134 && level.var_bcf55096["female"].size)
	{
		var_e24f6a0d = Array::random(level.var_bcf55096["female"]);
	}
	else
	{
		var_e24f6a0d = Array::random(level.var_bcf55096["male"]);
	}
	/#
		Assert(isdefined(var_e24f6a0d));
	#/
	return var_e24f6a0d;
}

/*
	Name: function_b6c845e8
	Namespace: namespace_2396e2d7
	Checksum: 0x880C9B2F
	Offset: 0x998
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_b6c845e8()
{
	if(level.var_a9e78bf7["zombifyenabled"])
	{
		level.overrideGlobalSpawnFunc = &function_d78435a0;
	}
	else
	{
		level.overrideGlobalSpawnFunc = undefined;
	}
}

/*
	Name: function_cf0834db
	Namespace: namespace_2396e2d7
	Checksum: 0x9D176E31
	Offset: 0x9E0
	Size: 0x21F
	Parameters: 1
	Flags: Private
*/
function private function_cf0834db(spawner)
{
	if(spawner.archetype == "direwolf" || spawner.archetype == "civilian" || IsSubStr(spawner.classname, "hero") || IsSubStr(spawner.classname, "boss") || (isdefined(spawner.targetname) && IsSubStr(spawner.targetname, "hakim")) || (isdefined(spawner.targetname) && IsSubStr(spawner.targetname, "chase_bomber")) || spawner.targetname === "comm_relay_igc_robot" || spawner.targetname === "robot_wrestles_maretti" || spawner.targetname === "cin_lot_09_02_pursuit_vign_wallsmash_robot" || spawner.targetname === "cin_gen_hendricksmoment_riphead_robot" || spawner.targetname === "standdown_robot01" || spawner.targetname === "standdown_robot02" || spawner.targetname === "standdown_robot03" || spawner.targetname === "rainman" || spawner.targetname === "balcony_bash_robot")
	{
		return 0;
	}
	if(isdefined(spawner.script_vehicleride))
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_aa71a1e8
	Namespace: namespace_2396e2d7
	Checksum: 0xC01F17FF
	Offset: 0xC08
	Size: 0x63
	Parameters: 1
	Flags: Private
*/
function private function_aa71a1e8(spawner)
{
	if(!isdefined(spawner.targetname))
	{
		return 1;
	}
	if(spawner.targetname == "foundry_hackable_vehicle" || spawner.targetname == "hijack_diaz_wasp_spawnpoint")
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_559632b9
	Namespace: namespace_2396e2d7
	Checksum: 0xF8B5B829
	Offset: 0xC78
	Size: 0x2A5
	Parameters: 0
	Flags: None
*/
function function_559632b9()
{
	var_6cc76a5d = 0;
	var_fcbd82a5 = 0;
	if(!(isdefined(level.var_64b9a8b0) && level.var_64b9a8b0))
	{
		zombies = function_846256f4("axis");
		foreach(zombie in zombies)
		{
			if(zombie.archetype == "zombie")
			{
				if(zombie ai::get_behavior_attribute("suicidal_behavior"))
				{
					var_fcbd82a5++;
					continue;
				}
				if(zombie ai::get_behavior_attribute("spark_behavior"))
				{
					var_6cc76a5d++;
				}
			}
		}
	}
	else if(RandomInt(100) < level.var_a9e78bf7["deimosinfectedzombiechance"] && var_6cc76a5d < 2)
	{
		return "deimos_zombie";
	}
	else if(RandomInt(100) < level.var_a9e78bf7["sparkzombieupgradedchance"] && var_6cc76a5d < 1)
	{
		return "sparky_upgraded";
	}
	else if(RandomInt(100) < level.var_a9e78bf7["sparkzombiechance"] && var_6cc76a5d < 1)
	{
		return "sparky";
	}
	else if(RandomInt(100) < level.var_a9e78bf7["suicidalzombieupgradedchance"] && var_6cc76a5d < 2)
	{
		return "on_fire_upgraded";
	}
	else if(RandomInt(100) < level.var_a9e78bf7["suicidalzombiechance"] && var_6cc76a5d < 2)
	{
		return "on_fire";
	}
	return "";
}

/*
	Name: function_d78435a0
	Namespace: namespace_2396e2d7
	Checksum: 0x458B2360
	Offset: 0xF28
	Size: 0x6DD
	Parameters: 5
	Flags: None
*/
function function_d78435a0(b_force, str_targetname, v_origin, v_angles, bIgnoreSpawningLimit)
{
	if(!isdefined(b_force))
	{
		b_force = 0;
	}
	e_spawned = undefined;
	force_spawn = 0;
	makeroom = 0;
	infinitespawn = 0;
	deleteonzerocount = 0;
	/#
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			return;
		}
	#/
	if(!spawner::check_player_requirements())
	{
		return;
	}
	while(1)
	{
		if(!(isdefined(bIgnoreSpawningLimit) && bIgnoreSpawningLimit))
		{
			spawner::global_spawn_throttle(1);
		}
		if(isdefined(self.lastspawntime) && self.lastspawntime >= GetTime())
		{
			wait(0.05);
			continue;
		}
		break;
	}
	if(IsActorSpawner(self))
	{
		if(isdefined(self.SPAWNFLAGS) && self.SPAWNFLAGS & 2 == 2)
		{
			makeroom = 1;
		}
	}
	else if(IsVehicleSpawner(self))
	{
		if(isdefined(self.SPAWNFLAGS) && self.SPAWNFLAGS & 8 == 8)
		{
			makeroom = 1;
		}
	}
	if(b_force || (isdefined(self.SPAWNFLAGS) && self.SPAWNFLAGS & 16 == 16) || isdefined(self.script_forcespawn))
	{
		force_spawn = 1;
	}
	if(isdefined(self.SPAWNFLAGS) && self.SPAWNFLAGS & 64 == 64)
	{
		infinitespawn = 1;
	}
	if(!isdefined(e_spawned))
	{
		if(IsActorSpawner(self))
		{
			/#
				Assert(isdefined(self.archetype));
			#/
			var_8b333c37 = function_cf0834db(self);
			if(self.team == "axis" && var_8b333c37)
			{
				var_2985e88a = self.archetype;
				var_1a2d16a4 = function_559632b9();
				if(self.archetype == "warlord" || var_1a2d16a4 == "on_fire_upgraded" || var_1a2d16a4 == "sparky_upgraded")
				{
					e_spawned = self SpawnFromSpawner(str_targetname, 1, makeroom, infinitespawn, "actor_spawner_bo3_zombie_bonuszm_warlord");
					if(self.archetype == "warlord")
					{
						e_spawned.var_6ad7f3f8 = 1;
						e_spawned.var_d4d290e = 1;
					}
				}
				else
				{
					zombify = 1;
					var_e24f6a0d = function_9bb9e127();
					if(isdefined(var_e24f6a0d))
					{
						e_spawned = self SpawnFromSpawner(str_targetname, 1, makeroom, infinitespawn, var_e24f6a0d, zombify);
					}
					else
					{
						e_spawned = self SpawnFromSpawner(str_targetname, 1, makeroom, infinitespawn);
					}
					if(isdefined(e_spawned) && isdefined(var_2985e88a))
					{
						e_spawned.var_2985e88a = var_2985e88a;
						if(var_1a2d16a4 == "deimos_zombie")
						{
							e_spawned.var_b7a92141 = 1;
						}
					}
				}
				if(isdefined(e_spawned))
				{
					e_spawned.target = self.target;
					e_spawned.var_30e91c0d = var_1a2d16a4;
				}
			}
			else
			{
				e_spawned = self SpawnFromSpawner(str_targetname, force_spawn, makeroom, infinitespawn);
			}
		}
		else
		{
			var_261da234 = function_aa71a1e8(self);
			var_e24f6a0d = undefined;
			if(var_261da234 && isdefined(self.archetype))
			{
				if(self.archetype == "wasp")
				{
					var_e24f6a0d = "spawner_zombietron_parasite_purple_cpzm";
				}
				else if(self.archetype == "raps")
				{
					var_e24f6a0d = "spawner_zombietron_veh_meatball_small";
				}
			}
			if(isdefined(var_e24f6a0d))
			{
				e_spawned = self SpawnFromSpawner(str_targetname, force_spawn, makeroom, infinitespawn, var_e24f6a0d);
			}
			else
			{
				e_spawned = self SpawnFromSpawner(str_targetname, force_spawn, makeroom, infinitespawn);
			}
		}
	}
	if(isdefined(e_spawned))
	{
		e_spawned.var_11f7b644 = GetTime();
		level.global_spawn_count++;
		if(isdefined(level.run_custom_function_on_ai))
		{
			e_spawned thread [[level.run_custom_function_on_ai]](self, str_targetname, force_spawn);
		}
		if(isdefined(v_origin) || isdefined(v_angles))
		{
			e_spawned spawner::teleport_spawned(v_origin, v_angles);
		}
		self.lastspawntime = GetTime();
	}
	if(deleteonzerocount || (isdefined(self.script_delete_on_zero) && self.script_delete_on_zero) && isdefined(self.count) && self.count <= 0)
	{
		self delete();
	}
	if(IsSentient(e_spawned))
	{
		if(!spawner::spawn_failed(e_spawned))
		{
			return e_spawned;
		}
	}
	else
	{
		return e_spawned;
	}
}

