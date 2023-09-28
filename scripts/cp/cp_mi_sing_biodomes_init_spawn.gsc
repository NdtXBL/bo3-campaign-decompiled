#using scripts\codescripts\struct;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_b002c73b;

/*
	Name: __init__sytem__
	Namespace: namespace_b002c73b
	Checksum: 0xB35ADECF
	Offset: 0x250
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("sm_initial_spawns", &__init__, &__main__, undefined);
}

/*
	Name: __init__
	Namespace: namespace_b002c73b
	Checksum: 0x99EC1590
	Offset: 0x298
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function __init__()
{
}

/*
	Name: __main__
	Namespace: namespace_b002c73b
	Checksum: 0x4B6C0DAE
	Offset: 0x2A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function __main__()
{
	level thread function_590e549();
}

/*
	Name: function_18f12c5f
	Namespace: namespace_b002c73b
	Checksum: 0x65424C34
	Offset: 0x2D0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_18f12c5f(spawn_struct)
{
	self endon("death");
	wait(1);
	if(!level flag::get("sm_combat_started"))
	{
		wait(RandomFloatRange(0.5, 1));
		level flag::set("sm_combat_started");
	}
}

/*
	Name: function_64ebf854
	Namespace: namespace_b002c73b
	Checksum: 0x8A94750D
	Offset: 0x358
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_64ebf854()
{
	level waittill("hash_1b1dc746");
}

/*
	Name: function_590e549
	Namespace: namespace_b002c73b
	Checksum: 0x9AE0C2D3
	Offset: 0x370
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_590e549()
{
	wait(1);
	var_8eb85679 = struct::get_array("infil_manager", "targetname");
	foreach(zone in var_8eb85679)
	{
		zone function_9b333f19();
	}
}

/*
	Name: function_9b333f19
	Namespace: namespace_b002c73b
	Checksum: 0xF955D8CD
	Offset: 0x438
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_9b333f19()
{
	var_61b5d65a = GetEntArray(self.target, "targetname");
	/#
		Assert(var_61b5d65a.size != 0, "Dev Block strings are not supported");
	#/
	var_61b5d65a[0] thread function_c04f5659();
}

/*
	Name: function_166a3348
	Namespace: namespace_b002c73b
	Checksum: 0xB0F03F24
	Offset: 0x4B8
	Size: 0x19D
	Parameters: 1
	Flags: None
*/
function function_166a3348(var_61b5d65a)
{
	for(i = 0; i < var_61b5d65a.size; i++)
	{
		if(isdefined(var_61b5d65a[i].script_noteworthy) && isdefined(level.gametype))
		{
			if(var_61b5d65a[i].script_noteworthy == level.gametype)
			{
				var_3979e78 = var_61b5d65a[i];
				continue;
			}
			var_61b5d65a[i] function_2cf0cb11();
			Array::remove_index(var_61b5d65a, i, 1);
		}
	}
	if(var_61b5d65a.size == 0)
	{
		return;
	}
	if(!isdefined(var_3979e78))
	{
		var_3979e78 = Array::random(var_61b5d65a);
	}
	foreach(volume in var_61b5d65a)
	{
		if(volume != var_3979e78)
		{
			volume function_2cf0cb11();
		}
	}
	return var_3979e78;
}

/*
	Name: function_c04f5659
	Namespace: namespace_b002c73b
	Checksum: 0x37058842
	Offset: 0x660
	Size: 0x1AD
	Parameters: 0
	Flags: None
*/
function function_c04f5659()
{
	while(1)
	{
		self waittill("trigger", ent);
		if(isdefined(ent.sessionstate) && ent.sessionstate != "spectator")
		{
			break;
		}
		wait(0.05);
	}
	target = self.target;
	a_entities = GetEntArray(target, "targetname");
	/#
		Assert(a_entities.size != 0, "Dev Block strings are not supported");
	#/
	var_9dfd5595 = self;
	wait(1);
	foreach(entity in a_entities)
	{
		if(IsSpawner(entity) && !isdefined(level.var_7952320e) && isdefined(var_9dfd5595))
		{
			entity function_90dcd682(var_9dfd5595);
		}
	}
	self notify("hash_48a5af9");
}

/*
	Name: function_90dcd682
	Namespace: namespace_b002c73b
	Checksum: 0x46A5F607
	Offset: 0x818
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_90dcd682(var_92b4ece5)
{
	var_ac46855a = GetEnt("street_battle_volume", "targetname");
	if(isdefined(level.var_1748bc03) || isdefined(level.var_e635c753))
	{
		if(isdefined(self.script_noteworthy) && self.script_noteworthy != "wasp_swarm" && self.script_noteworthy != "hunter_swarm")
		{
			self.target = undefined;
		}
	}
	if(!isdefined(self.script_noteworthy))
	{
		var_835e5b1c = spawner::simple_spawn_single(self);
		if(isdefined(level.var_e635c753) && IsActor(var_835e5b1c))
		{
			var_835e5b1c SetGoal(var_ac46855a);
		}
		return;
	}
	if(self.script_noteworthy == "wasp_swarm")
	{
		self thread function_7d634332();
		return;
	}
	if(self.script_noteworthy == "hunter_swarm")
	{
		self thread function_db5780d1();
		return;
	}
	var_835e5b1c = spawner::simple_spawn_single(self);
	if(self.script_noteworthy == "patrol")
	{
		var_835e5b1c thread function_7da79f81(self.target);
	}
	else if(self.script_noteworthy == "defend")
	{
		if(isdefined(var_835e5b1c.target))
		{
		}
	}
	else if(self.script_noteworthy == "guard")
	{
		if(isdefined(var_835e5b1c.target))
		{
		}
	}
	else if(self.script_noteworthy == "scene")
	{
		var_835e5b1c thread function_ef0b8dc3(self, var_92b4ece5);
	}
}

/*
	Name: function_7d634332
	Namespace: namespace_b002c73b
	Checksum: 0xABBDA6A1
	Offset: 0xA70
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_7d634332()
{
	path_start = GetVehicleNode(self.target, "targetname");
	offset = VectorScale((0, 1, 0), 60);
	for(i = 0; i < self.script_int; i++)
	{
		wasp = spawner::simple_spawn_single(self);
		wasp thread function_c6e1fa1(path_start, i);
	}
}

/*
	Name: function_db5780d1
	Namespace: namespace_b002c73b
	Checksum: 0xE235EED6
	Offset: 0xB30
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_db5780d1()
{
	path_start = GetVehicleNode(self.target, "targetname");
	hunter = spawner::simple_spawn_single(self);
	hunter vehicle_ai::function_81b6f1ac();
	hunter vehicle::get_on_path(path_start);
	hunter.DrivePath = 1;
	hunter vehicle::go_path();
	hunter SetGoal(level.players[0], 0, 1000);
	hunter vehicle_ai::function_efe9815e();
	hunter.lockOnTarget = level.players[0];
}

/*
	Name: function_c6e1fa1
	Namespace: namespace_b002c73b
	Checksum: 0xFFD35537
	Offset: 0xC38
	Size: 0x10F
	Parameters: 2
	Flags: None
*/
function function_c6e1fa1(path_start, index)
{
	offset = VectorScale((0, 1, 0), 30);
	self vehicle_ai::function_81b6f1ac();
	self vehicle::get_on_path(path_start);
	self.DrivePath = 1;
	offset_scale = get_offset_scale(index);
	self PathFixedOffset(offset * offset_scale);
	self vehicle::go_path();
	self SetGoal(level.players[0], 0, 600, 150);
	self vehicle_ai::function_efe9815e();
	self.lockOnTarget = level.players[0];
}

/*
	Name: get_offset_scale
	Namespace: namespace_b002c73b
	Checksum: 0x274C93F0
	Offset: 0xD50
	Size: 0x4D
	Parameters: 1
	Flags: None
*/
function get_offset_scale(i)
{
	if(i % 2 == 0)
	{
		return i / 2 * -1;
	}
	else
	{
		return i - i / 2 + 0.5;
	}
}

/*
	Name: function_7da79f81
	Namespace: namespace_b002c73b
	Checksum: 0x2CC09275
	Offset: 0xDA8
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_7da79f81(str_start_node)
{
	self endon("death");
	while(1)
	{
		self waittill("hash_8b1fd6a8", node);
		if(isdefined(node.script_wait) || (isdefined(node.script_wait_min) && isdefined(node.script_wait_max)))
		{
			node util::script_wait();
		}
	}
}

/*
	Name: function_ef0b8dc3
	Namespace: namespace_b002c73b
	Checksum: 0xCC13D254
	Offset: 0xE40
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_ef0b8dc3(align_node, var_92b4ece5)
{
	if(isdefined(self.target))
	{
		node = GetNode(self.target, "targetname");
		if(isdefined(node))
		{
		}
		else
		{
			var_ac46855a = GetEnt(self.target, "targetname");
		}
	}
	else if(isdefined(var_92b4ece5.height))
	{
		self.goalHeight = var_92b4ece5.height;
	}
	if(isdefined(var_92b4ece5.radius))
	{
		self.goalRadius = var_92b4ece5.radius;
	}
	wait(0.05);
	/#
		Assert(isdefined(self.script_string), "Dev Block strings are not supported");
	#/
	align_node thread scene::init(self.script_string, self);
}

/*
	Name: function_2cf0cb11
	Namespace: namespace_b002c73b
	Checksum: 0x8423BA4C
	Offset: 0xF88
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_2cf0cb11()
{
	a_entities = GetEntArray(self.target, "targetname");
	foreach(entity in a_entities)
	{
		if(IsSpawner(entity))
		{
			entity delete();
			continue;
		}
		if(isdefined(entity.target))
		{
			var_917b6649 = GetNodeArray(entity.target, "targetname");
			foreach(node in var_917b6649)
			{
				SetEnableNode(node, 0);
			}
		}
		entity connectpaths();
		entity delete();
	}
	self delete();
}

/*
	Name: function_fbf6b4c8
	Namespace: namespace_b002c73b
	Checksum: 0x62D0040E
	Offset: 0x1178
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fbf6b4c8()
{
	if(!isdefined(level.var_7952320e))
	{
		level.var_7952320e = 1;
	}
}

