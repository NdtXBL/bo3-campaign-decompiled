#using scripts\cp\_dialog;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\array_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_player;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_234a4910;

/*
	Name: init
	Namespace: namespace_234a4910
	Checksum: 0x55D860AA
	Offset: 0x2C8
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		Assert(isdefined(self.stealth));
	#/
	self function_e6000f47(1);
	if(isPlayer(self))
	{
		self thread function_da2c55dc();
	}
	else if(self == level)
	{
		self function_6f9a7a6d();
		level.allowbattlechatter["stealth"] = 1;
	}
}

/*
	Name: stop
	Namespace: namespace_234a4910
	Checksum: 0x648111B7
	Offset: 0x378
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function stop()
{
	/#
		Assert(isdefined(self));
	#/
	if(isdefined(self.allowbattlechatter["stealth"]))
	{
		self.allowbattlechatter["stealth"] = undefined;
	}
}

/*
	Name: enabled
	Namespace: namespace_234a4910
	Checksum: 0x30F7980B
	Offset: 0x3C8
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function enabled()
{
	return isdefined(self.stealth) && isdefined(self.allowbattlechatter) && isdefined(self.allowbattlechatter["stealth"]);
}

/*
	Name: function_bb96fd5b
	Namespace: namespace_234a4910
	Checksum: 0x488B9D1D
	Offset: 0x400
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_bb96fd5b(var_1d811e47)
{
	return isdefined(self.stealth) && isdefined(self.allowbattlechatter) && isdefined(self.allowbattlechatter["stealth"]) && self.allowbattlechatter["stealth"];
}

/*
	Name: function_e6000f47
	Namespace: namespace_234a4910
	Checksum: 0xB265DAD5
	Offset: 0x458
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_e6000f47(var_1d811e47)
{
	self thread function_c2c75efc(var_1d811e47);
}

/*
	Name: function_c2c75efc
	Namespace: namespace_234a4910
	Checksum: 0x570CC646
	Offset: 0x488
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_c2c75efc(var_1d811e47)
{
	if(isdefined(self.allowbattlechatter) && isdefined(self.allowbattlechatter["stealth"]) && self.allowbattlechatter["stealth"] == var_1d811e47)
	{
		return;
	}
	self notify("hash_c2c75efc");
	self endon("hash_c2c75efc");
	if(!isPlayer(self))
	{
		self endon("death");
	}
	wait(0.05);
	if(isdefined(self))
	{
		while(isdefined(self) && isdefined(self.stealth) && isdefined(self.stealth.var_222af664) || (isdefined(self.isSpeaking) && self.isSpeaking))
		{
			wait(0.05);
		}
		self.allowbattlechatter["bc"] = !var_1d811e47;
		self.allowbattlechatter["stealth"] = var_1d811e47;
	}
}

/*
	Name: function_2756e5d4
	Namespace: namespace_234a4910
	Checksum: 0x4E67994F
	Offset: 0x5B0
	Size: 0x27D
	Parameters: 1
	Flags: None
*/
function function_2756e5d4(var_904f1fb9)
{
	self endon("death");
	self endon("hash_94ff6d85");
	if(!IsActor(self) || !isalive(self))
	{
		return;
	}
	str_event = var_904f1fb9.parms[0];
	if(!isdefined(str_event))
	{
		return;
	}
	var_94aa7e70 = self function_243da9f0(str_event);
	if(isdefined(var_94aa7e70))
	{
		var_6425cb0f = self function_243da9f0(str_event + "_" + var_94aa7e70 + "_response");
		priority = level.stealth.var_222af664[str_event];
		if(!isdefined(priority))
		{
			priority = 0;
		}
		if(!isdefined(self.stealth.var_222af664) || self.stealth.var_222af664 <= priority)
		{
			self.stealth.var_222af664 = priority;
		}
		else
		{
			return;
		}
		wait(RandomFloatRange(0.25, 0.75));
		if(isdefined(self.silenced) && self.silenced)
		{
			return;
		}
		if(!isdefined(self.stealth.var_222af664) || self.stealth.var_222af664 <= priority)
		{
			self.stealth.var_222af664 = priority;
			self battlechatter::function_f3de557b(self, var_94aa7e70, var_6425cb0f, "stealth", 1);
			while(isdefined(self.isSpeaking) && self.isSpeaking)
			{
				wait(0.05);
			}
			if(isdefined(self.stealth) && isdefined(self.stealth.var_222af664) && self.stealth.var_222af664 == priority)
			{
				self.stealth.var_222af664 = undefined;
			}
		}
	}
}

/*
	Name: function_243da9f0
	Namespace: namespace_234a4910
	Checksum: 0xE2BDC37
	Offset: 0x838
	Size: 0x355
	Parameters: 2
	Flags: None
*/
function function_243da9f0(str_event, var_d3a25cc)
{
	now = GetTime();
	if(!self enabled())
	{
		return undefined;
	}
	if(!isdefined(level.stealth))
	{
		return undefined;
	}
	if(!isdefined(var_d3a25cc))
	{
		var_d3a25cc = level.stealth.var_29f411d1;
	}
	if(!isdefined(var_d3a25cc.alias) || !isdefined(var_d3a25cc.alias[str_event]))
	{
		return undefined;
	}
	if(!isdefined(level.stealth.var_e031c3f5))
	{
		level.stealth.var_e031c3f5 = [];
	}
	line = undefined;
	count = 0;
	var_8be39d6 = [];
	var_8be39d6[0] = "noncombat";
	if(self namespace_80045451::enabled())
	{
		var_8be39d6[var_8be39d6.size] = self namespace_80045451::function_739525d();
	}
	for(try = 0; try < 2; try++)
	{
		foreach(awareness in var_8be39d6)
		{
			if(isdefined(var_d3a25cc.alias[str_event][awareness]))
			{
				foreach(alias in var_d3a25cc.alias[str_event][awareness])
				{
					if(try == 0)
					{
						if(isdefined(level.stealth.var_e031c3f5[alias]) && now - level.stealth.var_e031c3f5[alias] < 2000)
						{
							continue;
						}
					}
					count = count + 1;
					if(RandomFloat(1) <= 1 / count)
					{
						line = alias;
					}
				}
			}
		}
		if(isdefined(line))
		{
			break;
		}
	}
	if(isdefined(line))
	{
		level.stealth.var_e031c3f5[line] = now;
	}
	return line;
}

/*
	Name: function_6f9a7a6d
	Namespace: namespace_234a4910
	Checksum: 0x5E57ED16
	Offset: 0xB98
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_6f9a7a6d()
{
	if(!isdefined(level.stealth))
	{
		level.stealth = spawnstruct();
	}
	if(!isdefined(level.stealth.var_222af664))
	{
		level.stealth.var_222af664 = [];
	}
	level.stealth.var_222af664["ambient"] = 0;
	level.stealth.var_222af664["resume"] = 0.25;
	level.stealth.var_222af664["alert"] = 0.5;
	level.stealth.var_222af664["explosion"] = 0.8;
	level.stealth.var_222af664["corpse"] = 0.9;
	level.stealth.var_222af664["enemy"] = 1;
	function_2cfe7001("alert", "patrol_alerted", "response_backup");
	function_2cfe7001("ambient", "patrol_brief", "response_affirm");
	function_2cfe7001("ambient", "patrol_calm", undefined, "unaware");
	function_2cfe7001("ambient", "patrol_clear", undefined, "unaware");
	function_2cfe7001("ambient", "patrol_cough", undefined, "unaware");
	function_2cfe7001("ambient", "patrol_throat", undefined, "unaware");
	function_2cfe7001("resume", "patrol_resume", "response_affirm");
	function_2cfe7001("resume", "patrol_resume", "response_secure");
	function_2cfe7001("corpse", "spotted_corpse");
	function_2cfe7001("enemy", "spotted_enemy");
	function_2cfe7001("explosion", "spotted_explosion");
}

/*
	Name: function_da2c55dc
	Namespace: namespace_234a4910
	Checksum: 0x3E4695BD
	Offset: 0xE70
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function function_da2c55dc()
{
	/#
		Assert(isPlayer(self));
	#/
	self notify("hash_da2c55dc");
	self endon("hash_da2c55dc");
	self endon("disconnect");
	self endon("hash_94ff6d85");
	wait(0.05);
	maxdist = 1000;
	maxDistSq = maxdist * maxdist;
	while(1)
	{
		wait(RandomFloatRange(10, 15));
		if(!isdefined(level.stealth) || !isdefined(level.stealth.enemies) || !isdefined(self.team) || !isdefined(level.stealth.enemies[self.team]))
		{
			continue;
		}
		candidates = [];
		foreach(enemy in level.stealth.enemies[self.team])
		{
			if(!isalive(enemy))
			{
				continue;
			}
			if(!enemy function_bb96fd5b())
			{
				continue;
			}
			if(enemy.ignoreall)
			{
				continue;
			}
			distSq = DistanceSquared(enemy.origin, self.origin);
			if(distSq > maxDistSq)
			{
				continue;
			}
			if(isdefined(enemy.stealth.var_f3c7f1d) && GetTime() < enemy.stealth.var_f3c7f1d)
			{
				continue;
			}
			candidates[candidates.size] = enemy;
		}
		candidates = ArraySortClosest(candidates, self.origin, 1, 0, maxdist);
		if(isdefined(candidates) && candidates.size > 0)
		{
			candidates[0] notify("hash_234a4910", "ambient");
			candidates[0].stealth.var_f3c7f1d = GetTime() + randomIntRange(8000, 12000);
		}
	}
}

/*
	Name: function_772af5b1
	Namespace: namespace_234a4910
	Checksum: 0x86B1D5D7
	Offset: 0x11A0
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_772af5b1()
{
	if(isdefined(level.stealth))
	{
		level.stealth.var_29f411d1 = undefined;
	}
}

/*
	Name: function_2cfe7001
	Namespace: namespace_234a4910
	Checksum: 0xD5691C90
	Offset: 0x11C8
	Size: 0x163
	Parameters: 4
	Flags: None
*/
function function_2cfe7001(str_event, str_alias, var_9e916b13, var_12131b3c)
{
	/#
		Assert(IsString(str_event));
	#/
	/#
		Assert(IsString(str_alias));
	#/
	if(!isdefined(level.stealth))
	{
		level.stealth = spawnstruct();
	}
	if(!isdefined(level.stealth.var_29f411d1))
	{
		level.stealth.var_29f411d1 = spawnstruct();
	}
	function_6ae431dd(level.stealth.var_29f411d1, str_event, str_alias, var_12131b3c);
	if(isdefined(var_9e916b13))
	{
		function_6ae431dd(level.stealth.var_29f411d1, str_event + "_" + str_alias + "_response", str_alias, var_12131b3c);
	}
}

/*
	Name: function_6ae431dd
	Namespace: namespace_234a4910
	Checksum: 0xA853CF7B
	Offset: 0x1338
	Size: 0x195
	Parameters: 4
	Flags: None
*/
function function_6ae431dd(struct, str_event, str_alias, var_12131b3c)
{
	/#
		Assert(isdefined(struct));
	#/
	/#
		Assert(IsString(str_event));
	#/
	/#
		Assert(IsString(str_alias));
	#/
	if(!isdefined(var_12131b3c))
	{
		var_12131b3c = "noncombat";
	}
	if(!isdefined(struct.alias))
	{
		struct.alias = [];
	}
	if(!isdefined(struct.alias[str_event]))
	{
		struct.alias[str_event] = [];
	}
	if(!isdefined(struct.alias[str_event][var_12131b3c]))
	{
		struct.alias[str_event][var_12131b3c] = [];
	}
	if(!isdefined(struct.alias[str_event][var_12131b3c][str_alias]))
	{
		struct.alias[str_event][var_12131b3c][str_alias] = str_alias;
	}
}

/*
	Name: function_5714528b
	Namespace: namespace_234a4910
	Checksum: 0xE27F6A68
	Offset: 0x14D8
	Size: 0x16F
	Parameters: 3
	Flags: None
*/
function function_5714528b(var_be26784d, str_vo_line, var_f12bb4cd)
{
	/#
		Assert(isdefined(level.stealth));
	#/
	if(!isdefined(level.stealth.var_c8e23a95))
	{
		level.stealth.var_c8e23a95 = [];
	}
	if(!isdefined(level.stealth.var_c8e23a95[var_be26784d]))
	{
		level.stealth.var_c8e23a95[var_be26784d] = [];
	}
	level.stealth.var_c8e23a95[var_be26784d][level.stealth.var_c8e23a95[var_be26784d].size] = str_vo_line;
	if(isdefined(var_f12bb4cd) && var_f12bb4cd)
	{
		if(!isdefined(level.stealth.var_787c93a0))
		{
			level.stealth.var_787c93a0 = [];
		}
		if(!isdefined(level.stealth.var_787c93a0[var_be26784d]))
		{
			level.stealth.var_787c93a0[var_be26784d] = [];
		}
		level.stealth.var_787c93a0[var_be26784d][level.stealth.var_787c93a0[var_be26784d].size] = str_vo_line;
	}
}

/*
	Name: function_866c6270
	Namespace: namespace_234a4910
	Checksum: 0x6149989B
	Offset: 0x1650
	Size: 0x393
	Parameters: 2
	Flags: None
*/
function function_866c6270(var_be26784d, priority)
{
	if(!(isdefined(level.stealth.vo_callouts) && level.stealth.vo_callouts))
	{
		return;
	}
	/#
		Assert(isPlayer(self));
	#/
	/#
		Assert(isdefined(level.stealth));
	#/
	/#
		Assert(isdefined(level.stealth.var_c8e23a95));
	#/
	/#
		Assert(isdefined(level.stealth.var_c8e23a95[var_be26784d]));
	#/
	if(!isdefined(priority))
	{
		priority = 0;
	}
	str_vo_line = undefined;
	if(level.stealth.var_c8e23a95[var_be26784d].size <= 2)
	{
		str_vo_line = Array::random(level.stealth.var_c8e23a95[var_be26784d]);
	}
	else if(!isdefined(self.stealth.var_31bf1854))
	{
		self.stealth.var_31bf1854 = [];
	}
	if(!isdefined(self.stealth.var_31bf1854[var_be26784d]))
	{
		self.stealth.var_31bf1854[var_be26784d] = level.stealth.var_c8e23a95[var_be26784d];
	}
	if(!isdefined(self.stealth.var_b9ae563d))
	{
		self.stealth.var_b9ae563d = [];
	}
	if(!isdefined(self.stealth.var_b9ae563d[var_be26784d]))
	{
		self.stealth.var_b9ae563d[var_be26784d] = self.stealth.var_31bf1854[var_be26784d].size;
	}
	if(self.stealth.var_b9ae563d[var_be26784d] > self.stealth.var_31bf1854[var_be26784d].size - 1)
	{
		self.stealth.var_31bf1854 = Array::randomize(level.stealth.var_c8e23a95[var_be26784d]);
		self.stealth.var_b9ae563d[var_be26784d] = 0;
	}
	str_vo_line = self.stealth.var_31bf1854[self.stealth.var_b9ae563d[var_be26784d]];
	self.stealth.var_b9ae563d[var_be26784d] = self.stealth.var_b9ae563d[var_be26784d] + 1;
	if(isdefined(str_vo_line))
	{
		if(isdefined(level.stealth.var_787c93a0) && isdefined(level.stealth.var_787c93a0[var_be26784d]))
		{
			self thread function_500f3ab6(str_vo_line);
		}
		else
		{
			self thread namespace_63b4601c::function_ee75acde(str_vo_line, 0, priority, self);
		}
	}
}

/*
	Name: function_e3ae87b3
	Namespace: namespace_234a4910
	Checksum: 0xC96D7D4F
	Offset: 0x19F0
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_e3ae87b3(var_be26784d, var_4818f349, priority)
{
	/#
		Assert(isPlayer(self));
	#/
	if(!isdefined(level.stealth))
	{
		return;
	}
	if(!isdefined(level.stealth.var_c8e23a95))
	{
		return;
	}
	if(!isdefined(level.stealth.var_c8e23a95[var_be26784d]))
	{
		return;
	}
	self thread function_584c6d3a(var_be26784d, var_4818f349, priority);
}

/*
	Name: function_584c6d3a
	Namespace: namespace_234a4910
	Checksum: 0x137CD994
	Offset: 0x1AA8
	Size: 0x193
	Parameters: 3
	Flags: None
*/
function function_584c6d3a(var_be26784d, var_4818f349, priority)
{
	self notify("hash_e3ae87b3");
	self endon("hash_e3ae87b3");
	self endon("disconnect");
	self endon("hash_94ff6d85");
	/#
		Assert(isPlayer(self));
	#/
	if(IsEntity(var_4818f349))
	{
		var_4818f349 endon("death");
	}
	now = GetTime();
	if(!isdefined(self.stealth.var_23eafafa))
	{
		self.stealth.var_23eafafa = [];
	}
	wait(RandomFloatRange(1, 2));
	if(!self namespace_10443be6::enabled())
	{
		return;
	}
	if(isdefined(self.stealth.var_23eafafa[var_be26784d]) && now - self.stealth.var_23eafafa[var_be26784d] < 20000)
	{
		return;
	}
	self.stealth.var_23eafafa[var_be26784d] = now;
	self function_866c6270(var_be26784d, priority);
}

/*
	Name: function_500f3ab6
	Namespace: namespace_234a4910
	Checksum: 0x5340E155
	Offset: 0x1C48
	Size: 0xDD
	Parameters: 1
	Flags: None
*/
function function_500f3ab6(str_text)
{
	self notify("hash_500f3ab6");
	self endon("hash_500f3ab6");
	self endon("disconnect");
	self endon("hash_94ff6d85");
	if(isdefined(self.stealth.var_500f3ab6))
	{
		self util::function_79f9f98d();
	}
	self thread util::function_67cfce72("[ " + str_text + " ]", undefined, undefined, 125, 0);
	wait(3);
	self util::function_79f9f98d();
	if(isdefined(self.stealth.var_500f3ab6))
	{
		self.stealth.var_500f3ab6 = undefined;
	}
}

/*
	Name: function_4970c8b8
	Namespace: namespace_234a4910
	Checksum: 0x5082CE79
	Offset: 0x1D30
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_4970c8b8(callout)
{
	if(isdefined(callout))
	{
		if(!isdefined(level.stealth.var_581c13ae))
		{
			level.stealth.var_581c13ae = [];
		}
		level.stealth.var_581c13ae[level.stealth.var_581c13ae.size] = self;
		self.var_3bee9acf = callout;
	}
}

