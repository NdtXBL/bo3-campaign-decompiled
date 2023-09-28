#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_behavior;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_event;
#using scripts\shared\stealth_status;
#using scripts\shared\stealth_tagging;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_aec89ff8;

/*
	Name: init
	Namespace: namespace_aec89ff8
	Checksum: 0xA1840353
	Offset: 0x2F0
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		Assert(IsActor(self));
	#/
	if(!isdefined(self.script_stealth) && self.script_stealth && (!isdefined(self.var_64f4c3f) && self.var_64f4c3f) && (!isdefined(self.script_stealth_dontseek) && self.script_stealth_dontseek))
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
	self.stealth.var_1286401a = 1;
	self function_a860a2eb();
	self namespace_8312dbf::init();
	self namespace_80045451::init();
	self stealth_event::init();
	self namespace_f917b91a::init();
	self namespace_234a4910::init();
	self.overrideActorDamage = &function_ebcb7adc;
	/#
		self namespace_e449108e::function_148c43f();
	#/
	if(isdefined(self.var_64f4c3f) && self.var_64f4c3f || (isdefined(self.script_stealth_dontseek) && self.script_stealth_dontseek))
	{
		self thread function_39fb9593();
	}
}

/*
	Name: stop
	Namespace: namespace_aec89ff8
	Checksum: 0xB8AD0EF9
	Offset: 0x4B8
	Size: 0xEB
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
	}
}

/*
	Name: reset
	Namespace: namespace_aec89ff8
	Checksum: 0xF8BBF25
	Offset: 0x5B0
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
	Namespace: namespace_aec89ff8
	Checksum: 0x7E18699C
	Offset: 0x5F8
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function enabled()
{
	return isdefined(self.stealth) && isdefined(self.stealth.var_1286401a);
}

/*
	Name: function_a860a2eb
	Namespace: namespace_aec89ff8
	Checksum: 0xE1BFA2FC
	Offset: 0x620
	Size: 0x17D
	Parameters: 0
	Flags: None
*/
function function_a860a2eb()
{
	entnum = self GetEntityNumber();
	if(isdefined(self.stealth) && !isdefined(self.stealth.var_fd87ae1c) && (!isdefined(self.___ArchetypeOnAnimscriptedCallback) || self.___ArchetypeOnAnimscriptedCallback != &function_a880fdea))
	{
		self.stealth.var_fd87ae1c = self.___ArchetypeOnAnimscriptedCallback;
	}
	self.___ArchetypeOnAnimscriptedCallback = &function_a880fdea;
	switch(entnum % 4)
	{
		case 1:
		{
			blackboard::SetBlackBoardAttribute(self, "_context2", "v2");
			break;
		}
		case 2:
		{
			blackboard::SetBlackBoardAttribute(self, "_context2", "v3");
			break;
		}
		case 3:
		{
			blackboard::SetBlackBoardAttribute(self, "_context2", "v4");
			break;
		}
		case default:
		{
			blackboard::SetBlackBoardAttribute(self, "_context2", "v1");
			break;
		}
	}
}

/*
	Name: function_a880fdea
	Namespace: namespace_aec89ff8
	Checksum: 0x7598875C
	Offset: 0x7A8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_a880fdea(entity)
{
	if(isdefined(entity.stealth) && isdefined(entity.stealth.var_fd87ae1c))
	{
		[[entity.stealth.var_fd87ae1c]](entity);
	}
	entity function_a860a2eb();
}

/*
	Name: function_ebcb7adc
	Namespace: namespace_aec89ff8
	Checksum: 0xD014DB9C
	Offset: 0x828
	Size: 0x105
	Parameters: 13
	Flags: None
*/
function function_ebcb7adc(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName)
{
	if(self.awarenesslevelcurrent != "combat" && iDamage > 10)
	{
		myEye = self GetEye();
		if(isPlayer(eInflictor) && isdefined(vPoint) && DistanceSquared(vPoint, myEye) < 100)
		{
			return self.health + 1;
		}
	}
	return iDamage;
}

/*
	Name: function_39fb9593
	Namespace: namespace_aec89ff8
	Checksum: 0x7C26EE53
	Offset: 0x938
	Size: 0x2DF
	Parameters: 0
	Flags: None
*/
function function_39fb9593()
{
	self notify("hash_39fb9593");
	self endon("hash_39fb9593");
	self endon("death");
	self.var_75a707ea = 1;
	if(!(isdefined(self.script_stealth_dontseek) && self.script_stealth_dontseek))
	{
		self function_77ae41ed(1);
		if(self ai::has_behavior_attribute("sprint"))
		{
			self ai::set_behavior_attribute("sprint", 1);
		}
		if(self ai::has_behavior_attribute("traversals"))
		{
			self ai::set_behavior_attribute("traversals", "procedural");
		}
	}
	self thread function_8be8b843();
	if(level flag::get("stealth_discovered") && GetDvarInt("stealth_no_return"))
	{
		wait(0.05);
		self stealth::stop();
		return;
	}
	wait(1);
	self thread function_517ba9d2();
	self thread function_56e538df();
	while(1)
	{
		self waittill("hash_3dce0f1d", var_12131b3c);
		if(!self enabled() || !isdefined(level.stealth) || !isdefined(level.stealth.seek))
		{
			return;
		}
		if(var_12131b3c != "combat")
		{
			self notify("investigate", self.origin, undefined, "infinite");
		}
		else if(var_12131b3c == "combat")
		{
			foreach(combatant in level.stealth.seek)
			{
				namespace_80045451::function_bc0ce0bf(combatant);
			}
			self namespace_7829c86f::function_2481442d();
		}
	}
}

/*
	Name: function_8be8b843
	Namespace: namespace_aec89ff8
	Checksum: 0xDAB89D53
	Offset: 0xC20
	Size: 0x115
	Parameters: 0
	Flags: None
*/
function function_8be8b843()
{
	self endon("hash_39fb9593");
	self endon("death");
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			self GetPerfectInfo(player, 1);
			if(self namespace_80045451::enabled())
			{
				self namespace_80045451::function_bc0ce0bf(player);
			}
		}
		self ClearForcedGoal();
		self ClearGoalVolume();
		wait(1);
	}
}

/*
	Name: function_517ba9d2
	Namespace: namespace_aec89ff8
	Checksum: 0x21A91E59
	Offset: 0xD40
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_517ba9d2()
{
	self endon("hash_39fb9593");
	self endon("death");
	while(1)
	{
		self waittill("awareness", var_12131b3c);
		self notify("hash_3dce0f1d", var_12131b3c);
	}
}

/*
	Name: function_56e538df
	Namespace: namespace_aec89ff8
	Checksum: 0x49E35DF1
	Offset: 0xDA0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_56e538df()
{
	self endon("hash_39fb9593");
	self endon("death");
	while(1)
	{
		level flag::wait_till("stealth_combat");
		self notify("hash_3dce0f1d", "combat");
		level flag::wait_till_clear("stealth_combat");
	}
}

/*
	Name: function_1064f733
	Namespace: namespace_aec89ff8
	Checksum: 0x93FC16D4
	Offset: 0xE18
	Size: 0x2DD
	Parameters: 0
	Flags: None
*/
function function_1064f733()
{
	self notify("hash_1064f733");
	self endon("hash_1064f733");
	self endon("death");
	if(isdefined(self.var_75a707ea) && self.var_75a707ea)
	{
		return;
	}
	if(isdefined(self.var_1064f733) && self.var_1064f733)
	{
		return;
	}
	self.var_1064f733 = 1;
	var_17925f9c = 0;
	wait(RandomFloatRange(0.1, 3));
	while(1)
	{
		var_a21c667 = 0;
		foreach(player in level.activePlayers)
		{
			if(self cansee(player))
			{
				var_17925f9c = 0;
				var_a21c667 = 1;
				break;
			}
		}
		if(!var_a21c667)
		{
			var_17925f9c = var_17925f9c + 1;
		}
		if(var_17925f9c >= 8)
		{
			foreach(player in level.activePlayers)
			{
				self GetPerfectInfo(player, 1);
			}
			self ClearForcedGoal();
			self ClearGoalVolume();
			self function_77ae41ed(1);
			if(self ai::has_behavior_attribute("sprint"))
			{
				self ai::set_behavior_attribute("sprint", 1);
			}
		}
		else
		{
			self function_77ae41ed(0);
			if(self ai::has_behavior_attribute("sprint"))
			{
				self ai::set_behavior_attribute("sprint", 0);
			}
		}
		wait(1);
	}
}

/*
	Name: function_77ae41ed
	Namespace: namespace_aec89ff8
	Checksum: 0xB2C0817
	Offset: 0x1100
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_77ae41ed(var_e0824a47)
{
	if(var_e0824a47)
	{
		if(self ai::has_behavior_attribute("move_mode"))
		{
			if(self ai::has_behavior_attribute("can_become_rusher") && self ai::get_behavior_attribute("can_become_rusher"))
			{
				self ai::set_behavior_attribute("move_mode", "rusher");
			}
			else
			{
				self ai::set_behavior_attribute("move_mode", "rambo");
			}
		}
	}
	else if(self ai::has_behavior_attribute("move_mode"))
	{
		self ai::set_behavior_attribute("move_mode", "normal");
	}
}

