#using scripts\shared\ai_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_event;
#using scripts\shared\stealth_status;
#using scripts\shared\stealth_tagging;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_594759f3;

/*
	Name: init
	Namespace: namespace_594759f3
	Checksum: 0xABCF8C95
	Offset: 0x1E8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		Assert(isVehicle(self));
	#/
	if(!(isdefined(self.script_stealth) && self.script_stealth))
	{
		return;
	}
	if(isdefined(self.stealth))
	{
		return;
	}
	if(!isdefined(self.stealth))
	{
		self.stealth = spawnstruct();
	}
	self.stealth.var_164876a9 = 1;
	self namespace_8312dbf::init();
	self namespace_80045451::init();
	self stealth_event::init();
	self.awarenesslevelcurrent = "unaware";
	self.awarenesslevelprevious = "unaware";
	self thread function_1664d989();
	/#
		self namespace_e449108e::function_148c43f();
	#/
}

/*
	Name: stop
	Namespace: namespace_594759f3
	Checksum: 0x11F14A1B
	Offset: 0x318
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function stop()
{
	if(self namespace_80045451::enabled())
	{
		self namespace_80045451::function_a2429809("combat");
		self.stealth.investigating = undefined;
		foreach(player in level.activePlayers)
		{
			self SetIgnoreEnt(player, 0);
		}
		self namespace_8312dbf::function_180adb28();
		self ai::set_ignoreall(0);
	}
}

/*
	Name: reset
	Namespace: namespace_594759f3
	Checksum: 0xBB275EF2
	Offset: 0x428
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function reset()
{
	if(self namespace_80045451::enabled())
	{
		self namespace_80045451::function_a2429809("unaware");
	}
}

/*
	Name: enabled
	Namespace: namespace_594759f3
	Checksum: 0x65E7237F
	Offset: 0x470
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function enabled()
{
	return isdefined(self.stealth) && isdefined(self.stealth.var_164876a9);
}

/*
	Name: function_1664d989
	Namespace: namespace_594759f3
	Checksum: 0xB1EA3CDB
	Offset: 0x498
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1664d989()
{
	self endon("death");
	self endon("hash_94ff6d85");
	self thread function_6fceb02e(250);
	self thread function_c5738439();
	self util::waittill_any("damage", "wake_all");
	self function_cccbd0f7();
}

/*
	Name: function_c5738439
	Namespace: namespace_594759f3
	Checksum: 0x5C3E04A7
	Offset: 0x530
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_c5738439()
{
	self endon("death");
	self endon("hash_94ff6d85");
	self ai::set_ignoreall(1);
	while(1)
	{
		weapon = undefined;
		self waittill("hash_f8c5dd60", weapon, attacker);
		if(isdefined(weapon))
		{
			switch(weapon.name)
			{
				case "gadget_iff_override":
				case "gadget_iff_override_upgraded":
				{
					self function_cccbd0f7();
					break;
				}
				case default:
				{
					break;
				}
			}
		}
	}
}

/*
	Name: function_6fceb02e
	Namespace: namespace_594759f3
	Checksum: 0x4AD2A667
	Offset: 0x600
	Size: 0x157
	Parameters: 1
	Flags: None
*/
function function_6fceb02e(radius)
{
	self notify("hash_6fceb02e");
	self endon("hash_6fceb02e");
	self endon("death");
	self endon("hash_94ff6d85");
	radiusSq = radius * radius;
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(!isalive(player))
			{
				continue;
			}
			if(DistanceSquared(player.origin, self.origin) <= radiusSq)
			{
				self function_cccbd0f7();
			}
		}
		wait(RandomFloatRange(0.5, 1));
	}
}

/*
	Name: function_cccbd0f7
	Namespace: namespace_594759f3
	Checksum: 0xC80DC4A9
	Offset: 0x760
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_cccbd0f7()
{
	self ai::set_ignoreall(0);
	self notify("alert", "combat");
}

