#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\util_shared;

#namespace namespace_e746afb4;

/*
	Name: main
	Namespace: namespace_e746afb4
	Checksum: 0x19FAE8B3
	Offset: 0x1F8
	Size: 0x5B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec main()
{
	if(!isdefined(level.var_993879a7))
	{
		level.var_993879a7 = [];
	}
	level thread function_8c807b6a();
	wait(0.05);
	callback::on_actor_killed(&function_fe6d2452);
}

/*
	Name: function_5b4e1da2
	Namespace: namespace_e746afb4
	Checksum: 0x1E0C7D51
	Offset: 0x260
	Size: 0xBF
	Parameters: 3
	Flags: None
*/
function function_5b4e1da2(name, model, callback)
{
	if(!isdefined(level.var_993879a7))
	{
		level.var_993879a7 = [];
	}
	if(!isdefined(level.var_993879a7[name]))
	{
		level.var_993879a7[name] = spawnstruct();
	}
	level.var_993879a7[name].name = name;
	level.var_993879a7[name].model = model;
	level.var_993879a7[name].callback = callback;
}

/*
	Name: function_1df4103f
	Namespace: namespace_e746afb4
	Checksum: 0xB3428DA2
	Offset: 0x328
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_1df4103f(name, var_68285b6a)
{
	if(!isdefined(level.var_993879a7))
	{
		level.var_993879a7 = [];
	}
	if(!isdefined(level.var_993879a7[name]))
	{
		level.var_993879a7[name] = spawnstruct();
	}
	level.var_993879a7[name].name = name;
	level.var_993879a7[name].var_7bc9910b = var_68285b6a;
}

/*
	Name: function_744c208b
	Namespace: namespace_e746afb4
	Checksum: 0x9CAB6C7A
	Offset: 0x3D0
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_744c208b(name, Spawnpoints)
{
	if(!isdefined(level.var_993879a7))
	{
		level.var_993879a7 = [];
	}
	if(!isdefined(level.var_993879a7[name]))
	{
		level.var_993879a7[name] = spawnstruct();
	}
	level.var_993879a7[name].name = name;
	level.var_993879a7[name].Spawnpoints = Spawnpoints;
}

/*
	Name: function_fe6d2452
	Namespace: namespace_e746afb4
	Checksum: 0xF325CFDD
	Offset: 0x478
	Size: 0x25B
	Parameters: 1
	Flags: None
*/
function function_fe6d2452(params)
{
	if(level.script != "sp_proto_characters" && level.script != "challenge_bloodbath")
	{
		return;
	}
	if(isdefined(self.var_e5641f85) && self.var_e5641f85)
	{
		return;
	}
	self.var_e5641f85 = 1;
	drop = Array::random(level.var_993879a7);
	/#
		if(isdefined(drop.var_7bc9910b))
		{
			drop.var_7bc9910b = GetDvarFloat("Dev Block strings are not supported" + drop.name);
		}
	#/
	if(GetDvarInt("scr_drop_autorecover"))
	{
		killer = self.dds_dmg_attacker;
		if(isdefined(killer))
		{
			if(isdefined(drop.callback))
			{
				multiplier = self function_9b96760a();
				if(!killer [[drop.callback]](multiplier))
				{
					return;
				}
			}
			playsoundatposition("fly_supply_bag_pick_up", killer.origin);
		}
	}
	else if(isdefined(drop.var_7bc9910b) && RandomFloat(1) < drop.var_7bc9910b)
	{
		origin = self.origin + VectorScale((0, 0, 1), 30);
		var_d215a942 = function_49d52f82(drop, origin);
		var_d215a942.multiplier = self function_9b96760a();
		level.var_4f2308ad[level.var_4f2308ad.size] = var_d215a942;
		var_d215a942 thread function_64a1deed();
	}
}

/*
	Name: function_9b96760a
	Namespace: namespace_e746afb4
	Checksum: 0x66A5E242
	Offset: 0x6E0
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_9b96760a()
{
	var_5fb85588 = GetDvarFloat("scr_drop_default_min");
	if(isdefined(self.var_56af7b9b))
	{
		var_5fb85588 = self.var_56af7b9b;
	}
	var_777f6f72 = GetDvarFloat("scr_drop_default_max");
	if(isdefined(self.var_241b86b1))
	{
		var_777f6f72 = self.var_241b86b1;
	}
	if(var_5fb85588 < var_777f6f72)
	{
		return RandomFloatRange(var_5fb85588, var_777f6f72);
	}
	return var_5fb85588;
}

/*
	Name: function_8c807b6a
	Namespace: namespace_e746afb4
	Checksum: 0xDAAB1E00
	Offset: 0x798
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_8c807b6a()
{
	level.var_4f2308ad = [];
	level flag::wait_till("all_players_spawned");
	while(1)
	{
		wait(15);
		if(level.var_4f2308ad.size < 1 && level.var_993879a7.size > 0)
		{
			drop = Array::random(level.var_993879a7);
			if(isdefined(drop.Spawnpoints))
			{
				origin = Array::random(drop.Spawnpoints);
				var_d215a942 = function_49d52f82(drop, origin);
				level.var_4f2308ad[level.var_4f2308ad.size] = var_d215a942;
				var_d215a942 thread function_64a1deed();
			}
		}
	}
}

/*
	Name: function_49d52f82
	Namespace: namespace_e746afb4
	Checksum: 0xC54FFAEF
	Offset: 0x8C0
	Size: 0xF7
	Parameters: 2
	Flags: None
*/
function function_49d52f82(drop, origin)
{
	nd = spawnstruct();
	nd.drop = drop;
	nd.origin = origin;
	nd.model = spawn("script_model", nd.origin);
	nd.model SetModel(drop.model);
	nd.model thread function_35a6028b();
	playsoundatposition("fly_supply_bag_drop", origin);
	return nd;
}

/*
	Name: function_35a6028b
	Namespace: namespace_e746afb4
	Checksum: 0xD60423AA
	Offset: 0x9C0
	Size: 0x75
	Parameters: 0
	Flags: None
*/
function function_35a6028b()
{
	angle = 0;
	time = 0;
	self endon("death");
	while(isdefined(self))
	{
		angle = time * 90;
		self.angles = (0, angle, 0);
		wait(0.05);
		time = time + 0.05;
	}
}

/*
	Name: function_64a1deed
	Namespace: namespace_e746afb4
	Checksum: 0x30B7D420
	Offset: 0xA40
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_64a1deed()
{
	trigger = spawn("trigger_radius", self.origin, 0, 60, 60);
	self.pickupTrigger = trigger;
	while(isdefined(self))
	{
		trigger waittill("trigger", player);
		if(player thread pickup(self))
		{
			break;
		}
	}
	trigger delete();
}

/*
	Name: pickup
	Namespace: namespace_e746afb4
	Checksum: 0x28155834
	Offset: 0xAE8
	Size: 0xEF
	Parameters: 1
	Flags: None
*/
function pickup(drop)
{
	if(isdefined(drop.drop.callback))
	{
		multiplier = 1;
		if(isdefined(drop.multiplier))
		{
			multiplier = drop.multiplier;
		}
		if(!self [[drop.drop.callback]](multiplier))
		{
			return 0;
		}
	}
	playsoundatposition("fly_supply_bag_pick_up", self.origin);
	drop.model delete();
	ArrayRemoveValue(level.var_4f2308ad, drop);
	return 1;
}

