#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_behavior;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace stealth_event;

/*
	Name: init
	Namespace: stealth_event
	Checksum: 0x7E56CEDD
	Offset: 0x210
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		Assert(isdefined(self.stealth));
	#/
	if(isdefined(self.stealth.event))
	{
		return;
	}
	if(!isdefined(self.stealth.event))
	{
		self.stealth.event = spawnstruct();
	}
	if(!isdefined(self.stealth.event.package))
	{
		self.stealth.event.package = spawnstruct();
	}
	self function_78e2e218();
}

/*
	Name: enabled
	Namespace: stealth_event
	Checksum: 0x969143A
	Offset: 0x2F0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function enabled()
{
	return isdefined(self.stealth) && isdefined(self.stealth.event);
}

/*
	Name: function_78e2e218
	Namespace: stealth_event
	Checksum: 0x9ADAB0AB
	Offset: 0x318
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_78e2e218()
{
	self function_bb67c273("alert", &namespace_80045451::function_6c10e440, 3);
	if(IsActor(self))
	{
		self function_bb67c273("pain", &function_26f273e1, 2);
		self function_bb67c273("death", &function_26f273e1, 2);
		self function_bb67c273("damage", &function_26f273e1, 2);
		self function_bb67c273("combat_spread", &namespace_80045451::function_101ac5, 1);
		self function_bb67c273("combat_interest", &namespace_80045451::function_933965f6, 2);
		self function_bb67c273("stealth_sight_start", &namespace_80045451::function_ca6a0809, 1);
		self function_bb67c273("stealth_sight_max", &namespace_80045451::function_617b90af, 1);
		self function_bb67c273("stealth_sight_end", &namespace_80045451::function_85b3a352, 1);
		self function_bb67c273("witness_combat", &namespace_80045451::function_a7964595, 2);
		self function_bb67c273("investigate", &namespace_7829c86f::function_de77b9e6, 3);
		self function_bb67c273("stealth_vo", &namespace_234a4910::function_2756e5d4, 1);
	}
	self thread function_b349369d();
}

/*
	Name: function_b349369d
	Namespace: stealth_event
	Checksum: 0x20A6CAA
	Offset: 0x598
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_b349369d()
{
	self util::waittill_any("stop_stealth", "death");
	self notify("hash_2bbc4f84");
}

/*
	Name: function_bb67c273
	Namespace: stealth_event
	Checksum: 0x7632F097
	Offset: 0x5E0
	Size: 0x195
	Parameters: 3
	Flags: None
*/
function function_bb67c273(eventName, func, var_8a0dd434)
{
	if(!isdefined(var_8a0dd434))
	{
		var_8a0dd434 = 0;
	}
	if(!isdefined(level.stealth.var_569d1b21))
	{
		level.stealth.var_569d1b21 = [];
	}
	if(!isdefined(level.stealth.var_569d1b21[eventName]))
	{
		level.stealth.var_569d1b21[eventName] = func;
	}
	if(eventName == "death")
	{
		self thread function_551bd4f3();
		break;
	}
	switch(var_8a0dd434)
	{
		case 0:
		{
			self thread function_44782a56(eventName);
			break;
		}
		case 1:
		{
			self thread function_6a7aa4bf(eventName);
			break;
		}
		case 2:
		{
			self thread function_f8733584(eventName);
			break;
		}
		case 3:
		{
			self thread function_1e75afed(eventName);
			break;
		}
		case default:
		{
			/#
				IPrintLnBold("Dev Block strings are not supported" + var_8a0dd434);
			#/
			break;
		}
	}
}

/*
	Name: function_44782a56
	Namespace: stealth_event
	Checksum: 0xA5DCAAD
	Offset: 0x780
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_44782a56(eventName)
{
	self endon("hash_2bbc4f84");
	while(1)
	{
		self waittill(eventName);
		self thread function_5b52d0d9(eventName);
	}
}

/*
	Name: function_6a7aa4bf
	Namespace: stealth_event
	Checksum: 0x4B18709B
	Offset: 0x7D0
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_6a7aa4bf(eventName)
{
	self endon("hash_2bbc4f84");
	while(1)
	{
		self waittill(eventName, arg1);
		self thread function_5b52d0d9(eventName, arg1);
	}
}

/*
	Name: function_f8733584
	Namespace: stealth_event
	Checksum: 0x3AD7200B
	Offset: 0x830
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_f8733584(eventName)
{
	self endon("hash_2bbc4f84");
	while(1)
	{
		self waittill(eventName, arg1, arg2);
		self thread function_5b52d0d9(eventName, arg1, arg2);
	}
}

/*
	Name: function_551bd4f3
	Namespace: stealth_event
	Checksum: 0xFB7E1ED0
	Offset: 0x8A0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_551bd4f3()
{
	self endon("hash_94ff6d85");
	self waittill("death", arg1, arg2);
	self thread function_5b52d0d9("death", arg1, arg2);
}

/*
	Name: function_1e75afed
	Namespace: stealth_event
	Checksum: 0xE6778B0E
	Offset: 0x908
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_1e75afed(eventName)
{
	self endon("hash_2bbc4f84");
	while(1)
	{
		self waittill(eventName, arg1, arg2, arg3);
		self thread function_5b52d0d9(eventName, arg1, arg2, arg3);
	}
}

/*
	Name: function_5b52d0d9
	Namespace: stealth_event
	Checksum: 0x56171FA8
	Offset: 0x988
	Size: 0x2C5
	Parameters: 4
	Flags: Private
*/
function private function_5b52d0d9(eventName, arg1, arg2, arg3)
{
	self endon("hash_94ff6d85");
	/#
		Assert(isdefined(eventName));
	#/
	/#
		Assert(isdefined(level.stealth.var_569d1b21[eventName]));
	#/
	if(!isdefined(self))
	{
		return;
	}
	if(!isdefined(self.stealth))
	{
		return;
	}
	if(!isdefined(level.stealth))
	{
		return;
	}
	if(eventName != "alert" || (!isdefined(self.var_89b9fc6) && self.var_89b9fc6))
	{
		if(isdefined(self.ignoreall) && self.ignoreall && eventName != "death")
		{
			return;
		}
	}
	/#
		if(namespace_e449108e::enabled() && isdefined(self) && IsEntity(self))
		{
			args = "Dev Block strings are not supported";
			if(isdefined(arg1))
			{
				args = "Dev Block strings are not supported" + namespace_e449108e::debug_text(arg1) + args;
			}
			self thread namespace_e449108e::function_1c1f41ef(eventName + "Dev Block strings are not supported" + args + "Dev Block strings are not supported", VectorScale((1, 1, 1), 0.75), 1, 0.5, self.origin + VectorScale((0, 0, 1), 30), 3);
		}
	#/
	self.stealth.event.package.name = eventName;
	self.stealth.event.package.parms[0] = arg1;
	self.stealth.event.package.parms[1] = arg2;
	self.stealth.event.package.parms[2] = arg3;
	self [[level.stealth.var_569d1b21[eventName]]](self.stealth.event.package);
}

/*
	Name: function_26f273e1
	Namespace: stealth_event
	Checksum: 0xA19E0DE5
	Offset: 0xC58
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_26f273e1(var_904f1fb9)
{
	if(!isdefined(self))
	{
		return;
	}
	e_attacker = var_904f1fb9.parms[0];
	if(!IsEntity(e_attacker))
	{
		e_attacker = var_904f1fb9.parms[1];
	}
	wait(0.05);
	if(!isdefined(self) || !isdefined(self.team))
	{
		return;
	}
	if(isdefined(e_attacker) && e_attacker.team != self.team)
	{
		if(isalive(self))
		{
			self notify("alert", "combat", e_attacker.origin, e_attacker, "took_damage");
		}
		self function_7dd521be(self.team, self.origin, 300, 128, 1, "witness_combat", e_attacker, "saw_combat");
	}
}

/*
	Name: function_7dd521be
	Namespace: stealth_event
	Checksum: 0x393ACEDC
	Offset: 0xD98
	Size: 0x269
	Parameters: 11
	Flags: None
*/
function function_7dd521be(str_team, v_origin, radius, var_57258c7d, var_75ed22dd, eventName, arg1, arg2, arg3, arg4, arg5)
{
	radiusSq = radius * radius;
	var_3493c8d4 = GetAIArray();
	foreach(Agent in var_3493c8d4)
	{
		if(!isalive(Agent))
		{
			continue;
		}
		if(!isdefined(self) || !Agent === self && DistanceSquared(v_origin, Agent.origin) < radiusSq)
		{
			if(Agent namespace_80045451::enabled() && Agent namespace_80045451::function_739525d() == "combat")
			{
				continue;
			}
			if(Abs(Agent.origin[2] - self.origin[2]) > var_57258c7d)
			{
				continue;
			}
			var_be41c5a2 = !var_75ed22dd;
			if(var_75ed22dd)
			{
				var_be41c5a2 = Agent stealth::can_see(self);
			}
			if(var_be41c5a2 && var_75ed22dd)
			{
				Agent notify(eventName, arg1, arg2, arg3, arg4, arg5);
				continue;
			}
			if(var_be41c5a2)
			{
				Agent notify(eventName, arg1, arg2, arg3, arg4, arg5);
			}
		}
	}
}

