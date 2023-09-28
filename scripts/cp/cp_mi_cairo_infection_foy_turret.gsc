#using scripts\codescripts\struct;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_2e89bb7e;

/*
	Name: __init__sytem__
	Namespace: namespace_2e89bb7e
	Checksum: 0x9D57BF2B
	Offset: 0x2A8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("foy_turret", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_2e89bb7e
	Checksum: 0x99EC1590
	Offset: 0x2E8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function __init__()
{
}

#namespace namespace_ce2d510;

/*
	Name: function_9b385ca5
	Namespace: namespace_ce2d510
	Checksum: 0x99EC1590
	Offset: 0x2F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: function_5fba2032
	Namespace: namespace_ce2d510
	Checksum: 0x99EC1590
	Offset: 0x308
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_66f910ed
	Namespace: namespace_ce2d510
	Checksum: 0xE5789BA2
	Offset: 0x318
	Size: 0x113
	Parameters: 3
	Flags: None
*/
function function_66f910ed(vehicle, var_e45a16d2, var_6cdabc79)
{
	self.var_69d9acb = vehicle;
	self.var_69d9acb flag::init("gunner_position_occupied");
	if(isdefined(var_e45a16d2))
	{
		var_f73d6972 = GetEnt(var_e45a16d2, "targetname");
		ai_gunner = spawner::simple_spawn_single(var_f73d6972);
		ai_gunner vehicle::get_in(self.var_69d9acb, "driver", 1);
	}
	if(isdefined(var_6cdabc79))
	{
		self.var_ee76385b = GetEnt(var_6cdabc79, "targetname");
	}
	self thread turret_think();
}

/*
	Name: turret_think
	Namespace: namespace_ce2d510
	Checksum: 0x48B2DCA4
	Offset: 0x438
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function turret_think()
{
	self.var_69d9acb endon("death");
	self thread vehicle_death();
	self waittill("hash_2919200c");
	if(isdefined(self.var_ee76385b))
	{
		self thread gunner_think(1);
	}
	else
	{
		self thread gunner_think(0);
	}
}

/*
	Name: function_2919200c
	Namespace: namespace_ce2d510
	Checksum: 0xF4106468
	Offset: 0x4B8
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_2919200c()
{
	self notify("hash_2919200c");
}

/*
	Name: gunner_think
	Namespace: namespace_ce2d510
	Checksum: 0x9B2B841A
	Offset: 0x4D8
	Size: 0x257
	Parameters: 1
	Flags: None
*/
function gunner_think(var_72ffe0f4)
{
	if(!isdefined(var_72ffe0f4))
	{
		var_72ffe0f4 = 0;
	}
	self.var_69d9acb endon("death");
	self.var_69d9acb turret::set_burst_parameters(1, 2, 0.25, 0.75, 0);
	while(1)
	{
		ai_gunner = self.var_69d9acb vehicle::get_rider("driver");
		if(isdefined(ai_gunner))
		{
			self.var_69d9acb turret::enable(0, 1);
			self.var_69d9acb flag::set("gunner_position_occupied");
			ai_gunner waittill("death");
			level notify(self.var_69d9acb.targetname + "_gunner_death");
		}
		self.var_69d9acb turret::disable(0);
		self.var_69d9acb flag::clear("gunner_position_occupied");
		if(var_72ffe0f4)
		{
			wait(RandomFloatRange(4, 5));
			var_753bd441 = function_ceda4e5b();
			if(isalive(var_753bd441))
			{
				if(vehicle::is_seat_available(self.var_69d9acb, "driver"))
				{
					var_753bd441 thread vehicle::get_in(self.var_69d9acb, "driver", 0);
					var_753bd441 util::waittill_any("death", "in_vehicle", "exited_vehicle");
				}
			}
		}
		else
		{
			break;
		}
	}
}

/*
	Name: function_13eceb32
	Namespace: namespace_ce2d510
	Checksum: 0x3C96CCA0
	Offset: 0x738
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_13eceb32()
{
	ai_gunner = self.var_69d9acb vehicle::get_rider("driver");
	if(isdefined(ai_gunner))
	{
		ai_gunner delete();
	}
}

/*
	Name: vehicle_death
	Namespace: namespace_ce2d510
	Checksum: 0xD585F8A9
	Offset: 0x798
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function vehicle_death()
{
	self.var_69d9acb waittill("death");
	function_13eceb32();
	self.var_69d9acb = undefined;
}

/*
	Name: function_ceda4e5b
	Namespace: namespace_ce2d510
	Checksum: 0x98DB8119
	Offset: 0x7D8
	Size: 0x17D
	Parameters: 0
	Flags: None
*/
function function_ceda4e5b()
{
	a_enemies = GetAITeamArray("axis");
	var_7b8aab61 = [];
	foreach(e_enemy in a_enemies)
	{
		if(isalive(e_enemy))
		{
			if(e_enemy istouching(self.var_ee76385b))
			{
				if(!isdefined(var_7b8aab61))
				{
					var_7b8aab61 = [];
				}
				else if(!IsArray(var_7b8aab61))
				{
					var_7b8aab61 = Array(var_7b8aab61);
				}
				var_7b8aab61[var_7b8aab61.size] = e_enemy;
			}
		}
	}
	ai_gunner = ArraySort(var_7b8aab61, self.var_69d9acb.origin, 1, var_7b8aab61.size)[0];
	return ai_gunner;
}

/*
	Name: get_vehicle
	Namespace: namespace_ce2d510
	Checksum: 0x3F8BB9E1
	Offset: 0x960
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function get_vehicle()
{
	return self.var_69d9acb;
}

#namespace namespace_2e89bb7e;

/*
	Name: function_ce2d510
	Namespace: namespace_2e89bb7e
	Checksum: 0x84158172
	Offset: 0x978
	Size: 0x205
	Parameters: 0
	Flags: 6
*/
function private autoexec function_ce2d510()
{
	classes.var_ce2d510[0] = spawnstruct();
	classes.var_ce2d510[0].__vtable[899923258] = &namespace_ce2d510::get_vehicle;
	classes.var_ce2d510[0].__vtable[-824553893] = &namespace_ce2d510::function_ceda4e5b;
	classes.var_ce2d510[0].__vtable[-2106133372] = &namespace_ce2d510::vehicle_death;
	classes.var_ce2d510[0].__vtable[334293810] = &namespace_ce2d510::function_13eceb32;
	classes.var_ce2d510[0].__vtable[1765977021] = &namespace_ce2d510::gunner_think;
	classes.var_ce2d510[0].__vtable[689512460] = &namespace_ce2d510::function_2919200c;
	classes.var_ce2d510[0].__vtable[1713221098] = &namespace_ce2d510::turret_think;
	classes.var_ce2d510[0].__vtable[1727598829] = &namespace_ce2d510::function_66f910ed;
	classes.var_ce2d510[0].__vtable[1606033458] = &namespace_ce2d510::function_5fba2032;
	classes.var_ce2d510[0].__vtable[-1690805083] = &namespace_ce2d510::function_9b385ca5;
}

