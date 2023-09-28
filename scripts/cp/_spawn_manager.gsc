#using scripts\cp\_spawn_manager_debug;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\name_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace spawn_manager;

/*
	Name: __init__sytem__
	Namespace: spawn_manager
	Checksum: 0x27FC78A0
	Offset: 0x298
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("spawn_manager", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: spawn_manager
	Checksum: 0xA1862027
	Offset: 0x2D8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.spawn_manager_total_count = 0;
	level.spawn_manager_max_ai = 50;
	level.spawn_manager_active_ai = 0;
	level.spawn_manager_auto_targetname_num = 0;
	level.spawn_managers = [];
	level.spawn_managers = GetEntArray("spawn_manager", "classname");
	Array::thread_all(level.spawn_managers, &spawn_manager_think);
	start_triggers();
	/#
		callback::on_connect(&on_player_connect);
		level thread spawn_manager_debug();
	#/
}

/*
	Name: spawn_manager_setup
	Namespace: spawn_manager
	Checksum: 0x5B25470F
	Offset: 0x3C8
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function spawn_manager_setup()
{
	/#
		Assert(isdefined(self));
	#/
	/#
		Assert(isdefined(self.target));
	#/
	/#
		Assert(self.sm_group_size_max >= self.sm_group_size_min, "Dev Block strings are not supported" + self.sm_id);
	#/
	if(!isdefined(self.sm_spawner_count_min) || self.sm_spawner_count_min > self.allSpawners.size)
	{
		self.sm_spawner_count_min = self.allSpawners.size;
	}
	if(!isdefined(self.sm_spawner_count_max) || self.sm_spawner_count_max > self.allSpawners.size)
	{
		self.sm_spawner_count_max = self.allSpawners.size;
	}
	/#
		Assert(self.sm_spawner_count_max >= self.sm_spawner_count_min, "Dev Block strings are not supported" + self.sm_id);
	#/
	self.sm_spawner_count = randomIntRange(self.sm_spawner_count_min, self.sm_spawner_count_max + 1);
	self.spawners = self spawn_manager_get_spawners();
	function_b72dc5ae();
	/#
		Assert(self.sm_group_size_min <= self.sm_active_count_max, "Dev Block strings are not supported");
	#/
	if(!isdefined(self.script_forcespawn))
	{
		self.script_forcespawn = 0;
	}
}

/*
	Name: spawn_manager_can_spawn
	Namespace: spawn_manager
	Checksum: 0xBEAF2174
	Offset: 0x598
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function spawn_manager_can_spawn(spawnGroupSize)
{
	if(self.count >= 0)
	{
	}
	else
	{
	}
	totalFree = level.spawn_manager_max_ai;
	activeFree = self.sm_active_count_max - self.activeAI.size;
	canSpawnGroup = activeFree >= spawnGroupSize && totalFree >= spawnGroupSize && spawnGroupSize > 0;
	globalFree = level.spawn_manager_max_ai - level.spawn_manager_active_ai;
	/#
		Assert(self.enable == level flag::get("Dev Block strings are not supported" + self.sm_id + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	if(self.script_forcespawn == 0)
	{
		return totalFree > 0 && activeFree > 0 && globalFree > 0 && canSpawnGroup && self.enable;
	}
	else
	{
		return totalFree > 0 && activeFree > 0 && self.enable;
	}
}

/*
	Name: spawn_manager_spawn
	Namespace: spawn_manager
	Checksum: 0xBB9533CA
	Offset: 0x708
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function spawn_manager_spawn(maxdelay)
{
	self endon("death");
	start = GetTime();
	while(1)
	{
		ai = self spawner::spawn();
		if(isdefined(ai) || GetTime() - start > 1000 * maxdelay)
		{
			return ai;
		}
		wait(0.5);
	}
}

/*
	Name: spawn_manager_spawn_group
	Namespace: spawn_manager
	Checksum: 0x618CC10
	Offset: 0x798
	Size: 0x135
	Parameters: 2
	Flags: None
*/
function spawn_manager_spawn_group(spawner, spawnGroupSize)
{
	for(i = 0; i < spawnGroupSize; i++)
	{
		ai = undefined;
		if(isdefined(spawner) && isdefined(spawner.targetname))
		{
			ai = spawner spawn_manager_spawn(2);
			if(isdefined(ai))
			{
				ai.sm_id = self.sm_id;
			}
		}
		else
		{
			continue;
		}
		if(!spawner::spawn_failed(ai))
		{
			if(isdefined(self.script_radius))
			{
				ai.script_radius = self.script_radius;
			}
			if(isdefined(spawner.script_radius))
			{
				ai.script_radius = spawner.script_radius;
			}
			ai thread spawn_accounting(spawner, self);
		}
	}
}

/*
	Name: spawn_accounting
	Namespace: spawn_manager
	Checksum: 0xF4AAB3FB
	Offset: 0x8D8
	Size: 0x15B
	Parameters: 2
	Flags: None
*/
function spawn_accounting(spawner, Manager)
{
	targetname = Manager.targetname;
	classname = spawner.classname;
	level.spawn_manager_total_count++;
	Manager.spawncount++;
	if(Manager.count > 0)
	{
		Manager.count--;
	}
	level.spawn_manager_active_ai++;
	origin = spawner.origin;
	Manager.activeAI[Manager.activeAI.size] = self;
	spawner.activeAI[spawner.activeAI.size] = self;
	self waittill("death");
	if(isdefined(spawner))
	{
		ArrayRemoveValue(spawner.activeAI, self);
	}
	if(isdefined(Manager))
	{
		ArrayRemoveValue(Manager.activeAI, self);
	}
	level.spawn_manager_active_ai--;
}

/*
	Name: function_b088c390
	Namespace: spawn_manager
	Checksum: 0xB2E51FDD
	Offset: 0xA40
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_b088c390()
{
	if(isdefined(self.name))
	{
		/#
			function_a89a3a33(self.name);
		#/
		self.sm_id = self.name;
	}
	else if(isdefined(self.targetname) && !StrStartsWith(self.targetname, "pf"))
	{
		/#
			function_a89a3a33(self.targetname);
		#/
		self.sm_id = self.targetname;
	}
	else
	{
		function_24cc6574();
	}
	if(!isdefined(self.var_bd948b2a))
	{
		self.var_bd948b2a = self.count;
	}
	if(!isdefined(self.var_4cb76884))
	{
		if(isdefined(self.sm_active_count_min))
		{
		}
		else
		{
		}
		self.var_4cb76884 = level.spawn_manager_max_ai;
	}
	if(!isdefined(self.var_6f1e6d96))
	{
		if(isdefined(self.sm_active_count_max))
		{
		}
		else
		{
		}
		self.var_6f1e6d96 = level.spawn_manager_max_ai;
	}
	if(!isdefined(self.var_5e6995dd))
	{
		if(isdefined(self.sm_group_size_min))
		{
		}
		else
		{
		}
		self.var_5e6995dd = 1;
	}
	if(!isdefined(self.var_5b01a5b7))
	{
		if(isdefined(self.sm_group_size_max))
		{
		}
		else
		{
		}
		self.var_5b01a5b7 = 1;
	}
}

/*
	Name: function_a89a3a33
	Namespace: spawn_manager
	Checksum: 0x617D5545
	Offset: 0xBE0
	Size: 0x139
	Parameters: 1
	Flags: None
*/
function function_a89a3a33(str_name)
{
	/#
		a_spawn_managers = GetEntArray("Dev Block strings are not supported", "Dev Block strings are not supported");
		foreach(sm in a_spawn_managers)
		{
			if(sm != self)
			{
				if(sm.targetname === str_name || sm.name === str_name)
				{
					/#
						ASSERTMSG("Dev Block strings are not supported" + str_name + "Dev Block strings are not supported" + self.origin + "Dev Block strings are not supported" + sm.origin);
					#/
				}
			}
		}
	#/
}

/*
	Name: function_24cc6574
	Namespace: spawn_manager
	Checksum: 0x36173650
	Offset: 0xD28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_24cc6574()
{
	if(!isdefined(level.var_6ff5e673))
	{
		level.var_6ff5e673 = 0;
	}
	self.sm_id = "sm_auto" + level.var_6ff5e673;
	level.var_6ff5e673++;
}

/*
	Name: function_c791ea22
	Namespace: spawn_manager
	Checksum: 0x4F2B672
	Offset: 0xD70
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_c791ea22()
{
	if(level.players.size >= 4 && isdefined(self.var_afecb75f))
	{
		n_count = self.var_afecb75f;
	}
	else if(level.players.size >= 3 && isdefined(self.var_99d7d770))
	{
		n_count = self.var_99d7d770;
	}
	else if(level.players.size >= 2 && isdefined(self.var_722be5e1))
	{
		n_count = self.var_722be5e1;
	}
	else
	{
		n_count = self.var_bd948b2a;
	}
	if(n_count > 0)
	{
		self.count = n_count;
	}
	else
	{
		self.count = -1;
	}
}

/*
	Name: function_f6bee20a
	Namespace: spawn_manager
	Checksum: 0x91F6D51C
	Offset: 0xE48
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_f6bee20a()
{
	if(level.players.size >= 4 && isdefined(self.var_7806fba9))
	{
		self.sm_active_count_min = self.var_7806fba9;
	}
	else if(level.players.size >= 3 && isdefined(self.var_c856abde))
	{
		self.sm_active_count_min = self.var_c856abde;
	}
	else if(level.players.size >= 2 && isdefined(self.var_7356d647))
	{
		self.sm_active_count_min = self.var_7356d647;
	}
	else
	{
		self.sm_active_count_min = self.var_4cb76884;
	}
}

/*
	Name: function_497c788
	Namespace: spawn_manager
	Checksum: 0x6462833A
	Offset: 0xF00
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_497c788()
{
	if(level.players.size >= 4 && isdefined(self.var_5132a283))
	{
		self.sm_active_count_max = self.var_5132a283;
	}
	else if(level.players.size >= 3 && isdefined(self.var_1ca2b3fc))
	{
		self.sm_active_count_max = self.var_1ca2b3fc;
	}
	else if(level.players.size >= 2 && isdefined(self.var_5d148eed))
	{
		self.sm_active_count_max = self.var_5d148eed;
	}
	else
	{
		self.sm_active_count_max = self.var_6f1e6d96;
	}
}

/*
	Name: function_12d13f75
	Namespace: spawn_manager
	Checksum: 0x945F929C
	Offset: 0xFB8
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_12d13f75()
{
	if(level.players.size >= 4 && isdefined(self.var_ae6f65e0))
	{
		self.sm_group_size_min = self.var_ae6f65e0;
	}
	else if(level.players.size >= 3 && isdefined(self.var_a56a2c0f))
	{
		self.sm_group_size_min = self.var_a56a2c0f;
	}
	else if(level.players.size >= 2 && isdefined(self.var_5404b486))
	{
		self.sm_group_size_min = self.var_5404b486;
	}
	else
	{
		self.sm_group_size_min = self.var_5e6995dd;
	}
}

/*
	Name: function_b4162883
	Namespace: spawn_manager
	Checksum: 0x91B5F4FA
	Offset: 0x1070
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_b4162883()
{
	if(level.players.size >= 4 && isdefined(self.var_c78c1f22))
	{
		self.sm_group_size_max = self.var_c78c1f22;
	}
	else if(level.players.size >= 3 && isdefined(self.var_5b917145))
	{
		self.sm_group_size_max = self.var_5b917145;
	}
	else if(level.players.size >= 2 && isdefined(self.var_73a95774))
	{
		self.sm_group_size_max = self.var_73a95774;
	}
	else
	{
		self.sm_group_size_max = self.var_5b01a5b7;
	}
}

/*
	Name: function_b72dc5ae
	Namespace: spawn_manager
	Checksum: 0xDC1046D0
	Offset: 0x1128
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_b72dc5ae()
{
	function_c791ea22();
	function_f6bee20a();
	function_497c788();
	function_12d13f75();
	function_b4162883();
	foreach(SP in self.spawners)
	{
		SP function_c791ea22();
		SP function_f6bee20a();
		SP function_497c788();
	}
}

/*
	Name: function_798a2c2
	Namespace: spawn_manager
	Checksum: 0x2D2A4116
	Offset: 0x1240
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_798a2c2()
{
	if(!isdefined(self.var_29534eb8))
	{
		self.var_29534eb8 = 0;
	}
	if(!isdefined(self.var_83f92d46))
	{
		self.var_83f92d46 = 0;
	}
	if(self.var_83f92d46 > 0 && self.var_83f92d46 > self.var_29534eb8)
	{
		wait(RandomFloatRange(self.var_29534eb8, self.var_83f92d46));
	}
	else if(self.var_29534eb8 > 0)
	{
		wait(self.var_29534eb8);
	}
}

/*
	Name: spawn_manager_think
	Namespace: spawn_manager
	Checksum: 0x75A9EA4A
	Offset: 0x12E0
	Size: 0x7C3
	Parameters: 0
	Flags: None
*/
function spawn_manager_think()
{
	self endon("death");
	self function_b088c390();
	self spawn_manager_flags_setup();
	self thread spawn_manager_enable_think();
	self thread spawn_manager_kill_think();
	self.enable = 0;
	self.activeAI = [];
	self.spawncount = 0;
	isFirstTime = 1;
	self.allSpawners = GetEntArray(self.target, "targetname");
	/#
		Assert(self.allSpawners.size, "Dev Block strings are not supported" + self.sm_id + "Dev Block strings are not supported");
	#/
	level flag::wait_till("sm_" + self.sm_id + "_enabled");
	util::script_delay();
	self spawn_manager_setup();
	var_2032c6ef = 1;
	self spawn_manager_get_spawn_group_size();
	while(self.count != 0 && self.spawners.size > 0)
	{
		cleanup_spawners();
		n_active = self.activeAI.size;
		var_ad5a25f2 = self.sm_active_count_max - n_active;
		if(!var_2032c6ef && self.activeAI.size <= self.sm_active_count_min)
		{
			var_2032c6ef = 1;
			function_798a2c2();
		}
		else if(var_2032c6ef && var_ad5a25f2 < self.sm_group_size)
		{
			var_2032c6ef = 0;
		}
		if(!var_2032c6ef)
		{
			wait(0.05);
			continue;
		}
		self spawn_manager_get_spawn_group_size();
		if(self.count > 0)
		{
			if(self.sm_group_size > self.count)
			{
				self.sm_group_size = self.count;
			}
		}
		spawned = 0;
		while(!spawned)
		{
			cleanup_spawners();
			if(self.spawners.size <= 0)
			{
				break;
			}
			if(self spawn_manager_can_spawn(self.sm_group_size))
			{
				/#
					Assert(self.sm_group_size > 0);
				#/
				potential_spawners = [];
				priority_spawners = [];
				for(i = 0; i < self.spawners.size; i++)
				{
					current_spawner = self.spawners[i];
					if(isdefined(current_spawner))
					{
						if(current_spawner.activeAI.size > current_spawner.sm_active_count_min)
						{
							continue;
						}
						spawnerFree = current_spawner.sm_active_count_max - current_spawner.activeAI.size;
						if(spawnerFree >= self.sm_group_size)
						{
							if(isdefined(current_spawner.SPAWNFLAGS) && current_spawner.SPAWNFLAGS & 32 == 32)
							{
								priority_spawners[priority_spawners.size] = current_spawner;
								continue;
							}
							potential_spawners[potential_spawners.size] = current_spawner;
						}
					}
				}
				if(potential_spawners.size > 0 || priority_spawners.size > 0)
				{
					if(priority_spawners.size > 0)
					{
						spawner = Array::random(priority_spawners);
					}
					else
					{
						spawner = Array::random(potential_spawners);
					}
					if(!isdefined(spawner.SPAWNFLAGS) && spawner.SPAWNFLAGS & 64 == 64 && spawner.count < self.sm_group_size)
					{
						self.sm_group_size = spawner.count;
					}
					if(!isFirstTime)
					{
						spawn_manager_wait();
					}
					else
					{
						isFirstTime = 0;
					}
					if(!self.enable)
					{
						continue;
					}
					self spawn_manager_spawn_group(spawner, self.sm_group_size);
					spawned = 1;
				}
				else
				{
					spawner_max_active_count = 0;
					for(i = 0; i < self.spawners.size; i++)
					{
						current_spawner = self.spawners[i];
						if(isdefined(current_spawner))
						{
							if(current_spawner.sm_active_count_max > spawner_max_active_count)
							{
								spawner_max_active_count = current_spawner.sm_active_count_max;
							}
						}
					}
					if(spawner_max_active_count < self.sm_group_size_max)
					{
						self.sm_group_size_max = spawner_max_active_count;
						self spawn_manager_get_spawn_group_size();
					}
				}
			}
			wait(0.05);
		}
		wait(0.05);
		/#
			Assert(!level flag::get("Dev Block strings are not supported" + self.sm_id + "Dev Block strings are not supported"), "Dev Block strings are not supported");
		#/
		/#
			Assert(!level flag::get("Dev Block strings are not supported" + self.sm_id + "Dev Block strings are not supported"), "Dev Block strings are not supported");
		#/
		if(!(isdefined(self.script_forcespawn) && self.script_forcespawn))
		{
			numPlayers = max(GetPlayers().size, 1);
			wait(laststand::player_num_in_laststand() / numPlayers * 8);
		}
	}
	self spawn_manager_flag_complete();
	if(isdefined(self.activeAI) && self.activeAI.size != 0)
	{
		Array::wait_till(self.activeAI, "death");
	}
	self delete();
}

/*
	Name: spawn_manager_enable_think
	Namespace: spawn_manager
	Checksum: 0x2BAB9B2A
	Offset: 0x1AB0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function spawn_manager_enable_think()
{
	while(isdefined(self))
	{
		self waittill("enable");
		self.enable = 1;
		self spawn_manager_flag_enabled();
		self waittill("disable");
		self spawn_manager_flag_disabled();
	}
	self spawn_manager_flag_disabled();
}

/*
	Name: spawn_manager_enable_trigger_think
	Namespace: spawn_manager
	Checksum: 0x3B531811
	Offset: 0x1B30
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function spawn_manager_enable_trigger_think(spawn_manager)
{
	spawn_manager endon("death");
	spawn_manager endon("enable");
	self endon("death");
	self waittill("trigger");
	spawn_manager notify("enable");
}

/*
	Name: spawn_manager_kill_think
	Namespace: spawn_manager
	Checksum: 0xC2687FC9
	Offset: 0x1B88
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function spawn_manager_kill_think()
{
	self waittill("death");
	sm_id = self.sm_id;
	a_spawners = self.allSpawners;
	var_f3e62b98 = self.activeAI;
	level flag::clear("sm_" + sm_id + "_enabled");
	level flag::set("sm_" + sm_id + "_killed");
	level flag::set("sm_" + sm_id + "_complete");
	Array::delete_all(a_spawners);
	if(var_f3e62b98.size)
	{
		Array::wait_till(var_f3e62b98, "death");
	}
	level flag::set("sm_" + sm_id + "_cleared");
	level.spawn_managers = Array::remove_undefined(level.spawn_managers);
}

/*
	Name: start_triggers
	Namespace: spawn_manager
	Checksum: 0x1266C6DE
	Offset: 0x1CE0
	Size: 0x197
	Parameters: 1
	Flags: None
*/
function start_triggers(trigger_type)
{
	triggers = trigger::get_all("trigger_multiple", "trigger_once", "trigger_use", "trigger_radius", "trigger_lookat", "trigger_damage", "trigger_box");
	foreach(trig in triggers)
	{
		if(isdefined(trig.target))
		{
			targets = get_spawn_manager_array(trig.target);
			foreach(target in targets)
			{
				trig thread spawn_manager_enable_trigger_think(target);
			}
		}
	}
}

/*
	Name: get_spawn_manager_array
	Namespace: spawn_manager
	Checksum: 0x12118E47
	Offset: 0x1E80
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function get_spawn_manager_array(targetname)
{
	if(isdefined(targetname))
	{
		spawn_manager_array = [];
		for(i = 0; i < level.spawn_managers.size; i++)
		{
			if(isdefined(level.spawn_managers[i]))
			{
				if(level.spawn_managers[i].targetname === targetname || level.spawn_managers[i].name === targetname)
				{
					if(!isdefined(spawn_manager_array))
					{
						spawn_manager_array = [];
					}
					else if(!IsArray(spawn_manager_array))
					{
						spawn_manager_array = Array(spawn_manager_array);
					}
					spawn_manager_array[spawn_manager_array.size] = level.spawn_managers[i];
				}
			}
		}
		return spawn_manager_array;
	}
	else
	{
		return level.spawn_managers;
	}
}

/*
	Name: spawn_manager_get_spawners
	Namespace: spawn_manager
	Checksum: 0x751CBD0F
	Offset: 0x1FA8
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function spawn_manager_get_spawners()
{
	ArrayRemoveValue(self.allSpawners, undefined);
	exclude = [];
	for(i = 0; i < self.allSpawners.size; i++)
	{
		if(isdefined(level._gamemode_norandomdogs) && self.allSpawners[i].classname == "actor_enemy_dog_sp")
		{
			if(!isdefined(exclude))
			{
				exclude = [];
			}
			else if(!IsArray(exclude))
			{
				exclude = Array(exclude);
			}
			exclude[exclude.size] = self.allSpawners[i];
		}
	}
	self.allSpawners = Array::exclude(self.allSpawners, exclude);
	var_ac004116 = 0;
	foreach(SP in self.allSpawners)
	{
		if(!isdefined(SP.var_bd948b2a))
		{
			SP.var_bd948b2a = SP.count;
		}
		if(!isdefined(SP.var_6f1e6d96))
		{
			if(isdefined(SP.sm_active_count_max))
			{
			}
			else
			{
			}
			SP.var_6f1e6d96 = level.spawn_manager_max_ai;
		}
		if(!isdefined(SP.var_4cb76884))
		{
			if(isdefined(SP.sm_active_count_min))
			{
			}
			else
			{
			}
			SP.var_4cb76884 = SP.var_6f1e6d96;
		}
		SP.activeAI = [];
	}
	groupSpawners = ArrayCopy(self.allSpawners);
	spawner_count = self.sm_spawner_count;
	if(spawner_count > self.allSpawners.size)
	{
		spawner_count = self.allSpawners.size;
	}
	spawners = [];
	while(spawners.size < spawner_count)
	{
		spawner = Array::random(groupSpawners);
		if(!isdefined(spawners))
		{
			spawners = [];
		}
		else if(!IsArray(spawners))
		{
			spawners = Array(spawners);
		}
		spawners[spawners.size] = spawner;
		ArrayRemoveValue(groupSpawners, spawner);
	}
	return spawners;
}

/*
	Name: spawn_manager_get_spawn_group_size
	Namespace: spawn_manager
	Checksum: 0xE70357D4
	Offset: 0x2340
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function spawn_manager_get_spawn_group_size()
{
	if(self.sm_group_size_min < self.sm_group_size_max)
	{
		self.sm_group_size = randomIntRange(self.sm_group_size_min, self.sm_group_size_max + 1);
	}
	else
	{
		self.sm_group_size = self.sm_group_size_min;
	}
	return self.sm_group_size;
}

/*
	Name: cleanup_spawners
	Namespace: spawn_manager
	Checksum: 0x77A52018
	Offset: 0x23A8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function cleanup_spawners()
{
	spawners = [];
	for(i = 0; i < self.spawners.size; i++)
	{
		if(isdefined(self.spawners[i]))
		{
			if(self.spawners[i].count != 0)
			{
				spawners[spawners.size] = self.spawners[i];
				continue;
			}
			self.spawners[i] delete();
		}
	}
	self.spawners = spawners;
}

/*
	Name: spawn_manager_wait
	Namespace: spawn_manager
	Checksum: 0x4EDB3063
	Offset: 0x2478
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function spawn_manager_wait()
{
	if(isdefined(self.script_wait))
	{
		wait(self.script_wait);
		if(isdefined(self.script_wait_add))
		{
			self.script_wait = self.script_wait + self.script_wait_add;
		}
	}
	else if(isdefined(self.script_wait_min) && isdefined(self.script_wait_max))
	{
		coop_scalar = 1;
		players = GetPlayers();
		if(players.size == 2)
		{
			coop_scalar = 0.7;
		}
		else if(players.size == 3)
		{
			coop_scalar = 0.5;
		}
		else if(players.size == 4)
		{
			coop_scalar = 0.3;
		}
		diff = self.script_wait_max - self.script_wait_min;
		if(Abs(diff) > 0)
		{
			wait(RandomFloatRange(self.script_wait_min, self.script_wait_min + diff * coop_scalar));
		}
		else
		{
			wait(self.script_wait_min);
		}
		if(isdefined(self.script_wait_add))
		{
			self.script_wait_min = self.script_wait_min + self.script_wait_add;
			self.script_wait_max = self.script_wait_max + self.script_wait_add;
		}
	}
}

/*
	Name: spawn_manager_flags_setup
	Namespace: spawn_manager
	Checksum: 0x47CE8276
	Offset: 0x2618
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function spawn_manager_flags_setup()
{
	level flag::init("sm_" + self.sm_id + "_enabled");
	level flag::init("sm_" + self.sm_id + "_complete");
	level flag::init("sm_" + self.sm_id + "_killed");
	level flag::init("sm_" + self.sm_id + "_cleared");
}

/*
	Name: spawn_manager_flag_enabled
	Namespace: spawn_manager
	Checksum: 0xD66492A6
	Offset: 0x26E8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function spawn_manager_flag_enabled()
{
	/#
		Assert(!level flag::get("Dev Block strings are not supported" + self.sm_id + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	level flag::set("sm_" + self.sm_id + "_enabled");
}

/*
	Name: spawn_manager_flag_disabled
	Namespace: spawn_manager
	Checksum: 0xBCCC0114
	Offset: 0x2770
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function spawn_manager_flag_disabled()
{
	self.enable = 0;
	level flag::clear("sm_" + self.sm_id + "_enabled");
}

/*
	Name: spawn_manager_flag_killed
	Namespace: spawn_manager
	Checksum: 0x15DAA95C
	Offset: 0x27B8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function spawn_manager_flag_killed()
{
	/#
		Assert(!level flag::get("Dev Block strings are not supported" + self.sm_id + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	level flag::set("sm_" + self.sm_id + "_killed");
}

/*
	Name: spawn_manager_flag_complete
	Namespace: spawn_manager
	Checksum: 0xCD78F4A9
	Offset: 0x2840
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function spawn_manager_flag_complete()
{
	/#
		Assert(!level flag::get("Dev Block strings are not supported" + self.sm_id + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	level flag::set("sm_" + self.sm_id + "_complete");
}

/*
	Name: spawn_manager_flag_cleared
	Namespace: spawn_manager
	Checksum: 0xA0247FC5
	Offset: 0x28C8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function spawn_manager_flag_cleared()
{
	/#
		Assert(!level flag::get("Dev Block strings are not supported" + self.sm_id + "Dev Block strings are not supported"), "Dev Block strings are not supported");
	#/
	level flag::set("sm_" + self.sm_id + "_cleared");
}

/*
	Name: function_41cd3a68
	Namespace: spawn_manager
	Checksum: 0x646173E4
	Offset: 0x2950
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_41cd3a68(cnt)
{
	/#
		Assert(cnt <= 32, "Dev Block strings are not supported");
	#/
	level.spawn_manager_max_ai = cnt;
}

/*
	Name: function_a226cc
	Namespace: spawn_manager
	Checksum: 0x53620539
	Offset: 0x2998
	Size: 0x14B
	Parameters: 4
	Flags: None
*/
function function_a226cc(spawn_manager_targetname, trig_name, trig_key, once_only)
{
	if(isdefined(once_only) && once_only)
	{
		trigger = GetEnt(trig_name, trig_key);
		/#
			Assert(isdefined(trigger), "Dev Block strings are not supported" + trig_key + "Dev Block strings are not supported" + trig_name + "Dev Block strings are not supported");
		#/
		trigger endon("trigger");
	}
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		level flag::wait_till("sm_" + spawn_manager_targetname + "_complete");
		trigger::use(trig_name, trig_key);
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_d1d8e99b
	Namespace: spawn_manager
	Checksum: 0x8240C588
	Offset: 0x2AF0
	Size: 0x14B
	Parameters: 4
	Flags: None
*/
function function_d1d8e99b(spawn_manager_targetname, trig_name, trig_key, once_only)
{
	if(isdefined(once_only) && once_only)
	{
		trigger = GetEnt(trig_name, trig_key);
		/#
			Assert(isdefined(trigger), "Dev Block strings are not supported" + trig_key + "Dev Block strings are not supported" + trig_name + "Dev Block strings are not supported");
		#/
		trigger endon("trigger");
	}
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		level flag::wait_till("sm_" + spawn_manager_targetname + "_cleared");
		trigger::use(trig_name, trig_key);
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_1da22674
	Namespace: spawn_manager
	Checksum: 0x1E036BE0
	Offset: 0x2C48
	Size: 0x14B
	Parameters: 4
	Flags: None
*/
function function_1da22674(spawn_manager_targetname, trig_name, trig_key, once_only)
{
	if(isdefined(once_only) && once_only)
	{
		trigger = GetEnt(trig_name, trig_key);
		/#
			Assert(isdefined(trigger), "Dev Block strings are not supported" + trig_key + "Dev Block strings are not supported" + trig_name + "Dev Block strings are not supported");
		#/
		trigger endon("trigger");
	}
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		level flag::wait_till("sm_" + spawn_manager_targetname + "_enabled");
		trigger::use(trig_name, trig_key);
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_5000af1e
	Namespace: spawn_manager
	Checksum: 0x292CA172
	Offset: 0x2DA0
	Size: 0x10B
	Parameters: 8
	Flags: None
*/
function function_5000af1e(spawn_manager_targetname, process, ent, var1, var2, var3, var4, var5)
{
	/#
		Assert(isdefined(process), "Dev Block strings are not supported");
	#/
	/#
		Assert(level flag::exists("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported"), "Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	#/
	function_347e835a(spawn_manager_targetname);
	util::single_func(ent, process, var1, var2, var3, var4, var5);
}

/*
	Name: function_16c424d1
	Namespace: spawn_manager
	Checksum: 0xED260135
	Offset: 0x2EB8
	Size: 0x10B
	Parameters: 8
	Flags: None
*/
function function_16c424d1(spawn_manager_targetname, process, ent, var1, var2, var3, var4, var5)
{
	/#
		Assert(isdefined(process), "Dev Block strings are not supported");
	#/
	/#
		Assert(level flag::exists("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported"), "Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	#/
	function_72e3dd35(spawn_manager_targetname);
	util::single_func(ent, process, var1, var2, var3, var4, var5);
}

/*
	Name: function_617b3ed2
	Namespace: spawn_manager
	Checksum: 0xA8013596
	Offset: 0x2FD0
	Size: 0x10B
	Parameters: 8
	Flags: None
*/
function function_617b3ed2(spawn_manager_targetname, process, ent, var1, var2, var3, var4, var5)
{
	/#
		Assert(isdefined(process), "Dev Block strings are not supported");
	#/
	/#
		Assert(level flag::exists("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported"), "Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	#/
	function_22e86a7e(spawn_manager_targetname);
	util::single_func(ent, process, var1, var2, var3, var4, var5);
}

/*
	Name: enable
	Namespace: spawn_manager
	Checksum: 0x9C323A2D
	Offset: 0x30E8
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function enable(spawn_manager_targetname, no_assert)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		foreach(sm in level.spawn_managers)
		{
			if(isdefined(sm) && sm.sm_id == spawn_manager_targetname)
			{
				sm notify("enable");
				return;
			}
		}
	}
	else if(!(isdefined(no_assert) && no_assert))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
		#/
	}
}

/*
	Name: disable
	Namespace: spawn_manager
	Checksum: 0x5145BF25
	Offset: 0x3218
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function disable(spawn_manager_targetname, no_assert)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		foreach(sm in level.spawn_managers)
		{
			if(isdefined(sm) && sm.sm_id == spawn_manager_targetname)
			{
				sm notify("disable");
				return;
			}
		}
	}
	else if(!(isdefined(no_assert) && no_assert))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
		#/
	}
}

/*
	Name: kill
	Namespace: spawn_manager
	Checksum: 0x73FAB842
	Offset: 0x3348
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function kill(spawn_manager_targetname, no_assert)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		foreach(sm in level.spawn_managers)
		{
			if(isdefined(sm) && sm.sm_id == spawn_manager_targetname)
			{
				sm delete();
				level.spawn_managers = Array::remove_undefined(level.spawn_managers);
				return;
			}
		}
	}
	else if(!(isdefined(no_assert) && no_assert))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
		#/
	}
}

/*
	Name: is_enabled
	Namespace: spawn_manager
	Checksum: 0xE35129A3
	Offset: 0x34A0
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function is_enabled(spawn_manager_targetname)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		if(level flag::get("sm_" + spawn_manager_targetname + "_enabled"))
		{
			return 1;
		}
		return 0;
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: is_complete
	Namespace: spawn_manager
	Checksum: 0x53B0AC1F
	Offset: 0x3548
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function is_complete(spawn_manager_targetname)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		if(level flag::get("sm_" + spawn_manager_targetname + "_complete"))
		{
			return 1;
		}
		return 0;
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_b02fc450
	Namespace: spawn_manager
	Checksum: 0x139C59AA
	Offset: 0x35F0
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_b02fc450(spawn_manager_targetname)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		if(level flag::get("sm_" + spawn_manager_targetname + "_cleared"))
		{
			return 1;
		}
		return 0;
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_fed8eff
	Namespace: spawn_manager
	Checksum: 0x417F75C4
	Offset: 0x3698
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_fed8eff(spawn_manager_targetname)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		if(level flag::get("sm_" + spawn_manager_targetname + "_killed"))
		{
			return 1;
		}
		return 0;
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_72e3dd35
	Namespace: spawn_manager
	Checksum: 0x1E8A7DAB
	Offset: 0x3740
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_72e3dd35(spawn_manager_targetname)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		level flag::wait_till("sm_" + spawn_manager_targetname + "_cleared");
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_27bf2e8
	Namespace: spawn_manager
	Checksum: 0x42954BA5
	Offset: 0x37D8
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_27bf2e8(spawn_manager_targetname, count_to_reach)
{
	/#
		Assert(isdefined(count_to_reach), "Dev Block strings are not supported");
	#/
	/#
		Assert(count_to_reach, "Dev Block strings are not supported");
	#/
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		level flag::wait_till("sm_" + spawn_manager_targetname + "_complete");
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
	if(level flag::get("sm_" + spawn_manager_targetname + "_cleared"))
	{
		return;
	}
	while(get_ai(spawn_manager_targetname).size > count_to_reach)
	{
		wait(0.1);
	}
}

/*
	Name: function_347e835a
	Namespace: spawn_manager
	Checksum: 0xE9DDF758
	Offset: 0x3918
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_347e835a(spawn_manager_targetname)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		level flag::wait_till("sm_" + spawn_manager_targetname + "_complete");
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_22e86a7e
	Namespace: spawn_manager
	Checksum: 0xB3D03906
	Offset: 0x39B0
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_22e86a7e(spawn_manager_targetname)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		level flag::wait_till("sm_" + spawn_manager_targetname + "_enabled");
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_740ea7ff
	Namespace: spawn_manager
	Checksum: 0x6F9CFC62
	Offset: 0x3A48
	Size: 0x16D
	Parameters: 2
	Flags: None
*/
function function_740ea7ff(spawn_manager_targetname, count)
{
	if(level flag::exists("sm_" + spawn_manager_targetname + "_enabled"))
	{
		level flag::wait_till("sm_" + spawn_manager_targetname + "_enabled");
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported" + spawn_manager_targetname + "Dev Block strings are not supported");
	}
	/#
	#/
	spawn_manager = get_spawn_manager_array(spawn_manager_targetname);
	/#
		Assert(spawn_manager.size, "Dev Block strings are not supported");
	#/
	/#
		Assert(spawn_manager.size == 1, "Dev Block strings are not supported");
	#/
	while(1)
	{
		if(isdefined(spawn_manager[0].spawncount) && spawn_manager[0].spawncount < count && !function_fed8eff(spawn_manager_targetname))
		{
			wait(0.5);
		}
		else
		{
			break;
		}
	}
	return;
}

/*
	Name: get_ai
	Namespace: spawn_manager
	Checksum: 0x964E17D3
	Offset: 0x3BC0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function get_ai(spawn_manager_targetname)
{
	a_ai = GetAIArray(spawn_manager_targetname, "sm_id");
	return a_ai;
}

