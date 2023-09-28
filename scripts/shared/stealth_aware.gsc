#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_behavior;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_event;
#using scripts\shared\stealth_level;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_80045451;

/*
	Name: init
	Namespace: namespace_80045451
	Checksum: 0x6F2FE7F1
	Offset: 0x318
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		Assert(isdefined(self.stealth));
	#/
	self.stealth.var_d1b49f30 = [];
	self.stealth.var_c49c37ed = [];
	self.stealth.var_7a604d90 = [];
	/#
		self.stealth.var_1d4ba64b = [];
	#/
	self function_a2429809("unaware");
	self thread function_a85b6c52();
}

/*
	Name: enabled
	Namespace: namespace_80045451
	Checksum: 0x98439DB6
	Offset: 0x3D0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function enabled()
{
	return isdefined(self.stealth) && isdefined(self.stealth.var_d1b49f30);
}

/*
	Name: function_a2429809
	Namespace: namespace_80045451
	Checksum: 0x6FC52195
	Offset: 0x3F8
	Size: 0x48B
	Parameters: 1
	Flags: None
*/
function function_a2429809(var_12131b3c)
{
	/#
		Assert(self enabled());
	#/
	var_b3c4b275 = self.awarenesslevelcurrent;
	if(!isdefined(var_b3c4b275))
	{
		var_b3c4b275 = "unaware";
	}
	if(isdefined(self.awarenesslevelcurrent) && self.awarenesslevelcurrent != var_12131b3c)
	{
		self.awarenesslevelprevious = self.awarenesslevelcurrent;
	}
	self.awarenesslevelcurrent = var_12131b3c;
	var_1d811e47 = self.awarenesslevelcurrent != "combat";
	parms = namespace_ad45a419::function_b3269823(var_12131b3c);
	self.fovcosine = parms.fovcosine;
	self.var_304f0f57 = parms.var_304f0f57;
	self.var_24eff8a4 = parms.var_24eff8a4;
	self.maxsightdistsqrd = self.var_24eff8a4 * self.var_24eff8a4;
	self.var_801fa77c = var_1d811e47;
	self function_a10368f2(self.awarenesslevelcurrent, var_1d811e47);
	if(isdefined(self.patroller) && self.patroller)
	{
		self.stealth.var_86030901 = 1;
	}
	else if(!isdefined(self.stealth.var_86030901) && self.stealth.var_86030901 && !isdefined(self.stealth.var_b463484b) && self.awarenesslevelcurrent != "unaware")
	{
		self.stealth.var_b463484b = self.origin;
	}
	switch(self.awarenesslevelcurrent)
	{
		case "high_alert":
		case "low_alert":
		case "unaware":
		{
			self function_216be1d1(1);
			break;
		}
	}
	if(var_12131b3c == "unaware")
	{
		self.stealth.var_d1b49f30 = [];
		self.stealth.var_c49c37ed = [];
		self.stealth.var_7a604d90 = [];
		self function_2d2d31b6(self.origin, -1);
		if(IsActor(self))
		{
			self ClearEnemy();
		}
		self.awarenesslevelprevious = "unaware";
		if(isdefined(self.stealth.var_86030901) && self.stealth.var_86030901 && isdefined(self.currentgoal))
		{
			self thread ai::patrol(self.currentgoal);
		}
		else if(isdefined(self.stealth.var_b463484b))
		{
			if(IsActor(self))
			{
				self thread namespace_7829c86f::function_edba2e78(self.stealth.var_b463484b);
			}
			self.stealth.var_b463484b = undefined;
		}
	}
	if(self ai::has_behavior_attribute("stealth"))
	{
		self ai::set_behavior_attribute("stealth", var_1d811e47);
	}
	if(self ai::has_behavior_attribute("disablearrivals"))
	{
		self ai::set_behavior_attribute("disablearrivals", var_1d811e47);
	}
	if(self namespace_234a4910::enabled())
	{
		self namespace_234a4910::function_e6000f47(var_1d811e47);
	}
	if(var_b3c4b275 != var_12131b3c)
	{
		self notify("awareness", var_12131b3c);
	}
	if(var_1d811e47)
	{
		self.stealth.var_d1b49f30 = [];
	}
}

/*
	Name: function_739525d
	Namespace: namespace_80045451
	Checksum: 0xA0B90120
	Offset: 0x890
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_739525d()
{
	return self.awarenesslevelcurrent;
}

/*
	Name: function_e5e8ce80
	Namespace: namespace_80045451
	Checksum: 0xA8F6D3FE
	Offset: 0x8A8
	Size: 0x35
	Parameters: 1
	Flags: None
*/
function function_e5e8ce80(entity)
{
	return isdefined(self.stealth.var_c49c37ed[entity GetEntityNumber()]);
}

/*
	Name: function_c82b617b
	Namespace: namespace_80045451
	Checksum: 0xD97730BA
	Offset: 0x8E8
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_c82b617b(delta)
{
	/#
		Assert(self enabled());
	#/
	var_f93ad764 = self.awarenesslevelcurrent;
	var_83d91027 = Abs(delta);
	if(var_83d91027 > 1)
	{
		for(i = 0; i < var_83d91027; i++)
		{
			if(delta > 0)
			{
				function_c82b617b(1);
				continue;
			}
			function_c82b617b(-1);
		}
		return var_f93ad764 != self.awarenesslevelcurrent;
	}
	if(delta > 0)
	{
		switch(self.awarenesslevelcurrent)
		{
			case "low_alert":
			case "unaware":
			{
				self function_a2429809("high_alert");
				break;
			}
			case "high_alert":
			{
				self function_a2429809("combat");
				break;
			}
		}
		break;
	}
	switch(self.awarenesslevelcurrent)
	{
		case "high_alert":
		case "low_alert":
		{
			self function_a2429809("unaware");
			break;
		}
		case "combat":
		{
			self function_a2429809("high_alert");
			break;
		}
	}
	return var_f93ad764 != self.awarenesslevelcurrent;
}

/*
	Name: function_216be1d1
	Namespace: namespace_80045451
	Checksum: 0xF71AC81A
	Offset: 0xAD0
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_216be1d1(Ignore)
{
	/#
		Assert(self enabled());
	#/
	foreach(enemy in level.stealth.enemies[self.team])
	{
		if(!isdefined(enemy))
		{
			continue;
		}
		self function_c62ada65(enemy, Ignore);
	}
}

/*
	Name: function_c62ada65
	Namespace: namespace_80045451
	Checksum: 0xE2AED551
	Offset: 0xBC0
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_c62ada65(sentient, Ignore)
{
	/#
		Assert(self enabled());
	#/
	if(IsSentient(self) && IsSentient(sentient))
	{
		self SetIgnoreEnt(sentient, Ignore);
	}
	/#
		if(Ignore)
		{
			self.stealth.var_1d4ba64b[sentient GetEntityNumber()] = sentient;
		}
		else
		{
			self.stealth.var_1d4ba64b[sentient GetEntityNumber()] = undefined;
		}
	#/
}

/*
	Name: function_ca6a0809
	Namespace: namespace_80045451
	Checksum: 0x2B0B1D2E
	Offset: 0xCC0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_ca6a0809(var_904f1fb9)
{
	self endon("death");
	self endon("disconnect");
	e_originator = var_904f1fb9.parms[0];
	self notify("hash_234a4910", "alert");
	if(isPlayer(e_originator))
	{
		e_originator namespace_10443be6::function_ca6a0809(self);
	}
}

/*
	Name: function_617b90af
	Namespace: namespace_80045451
	Checksum: 0xD5F98E8A
	Offset: 0xD50
	Size: 0x2CD
	Parameters: 1
	Flags: None
*/
function function_617b90af(var_904f1fb9)
{
	e_originator = var_904f1fb9.parms[0];
	if(!isdefined(e_originator))
	{
		return;
	}
	var_5ce50f3e = "";
	var_1f6ae92b = "unaware";
	var_fc08c604 = self function_739525d();
	var_f51f605d = e_originator GetEntityNumber();
	if(self stealth::function_2cfe5148(e_originator) && isalive(e_originator))
	{
		var_1f6ae92b = "combat";
		/#
			var_5ce50f3e = "Dev Block strings are not supported";
		#/
	}
	else if(e_originator enabled() && e_originator function_739525d() == "combat")
	{
		var_1f6ae92b = "high_alert";
		/#
			var_5ce50f3e = "Dev Block strings are not supported";
		#/
	}
	var_edfa68f2 = 0;
	if(stealth::function_b889e36b(var_fc08c604, var_1f6ae92b) < 0)
	{
		var_edfa68f2 = self function_c82b617b(1);
	}
	if(var_edfa68f2 || !isdefined(self.stealth.var_c49c37ed[var_f51f605d]) || !isdefined(self.stealth.var_7a604d90[var_f51f605d]))
	{
		var_fc08c604 = self function_739525d();
		self notify("alert", var_fc08c604, e_originator.origin + VectorScale((0, 0, 1), 20), e_originator, var_5ce50f3e);
		if(var_edfa68f2 && var_fc08c604 != "combat" && IsSentient(e_originator))
		{
			self function_fcc2e3c6(e_originator, 0);
		}
	}
	if(isdefined(e_originator) && self stealth::function_2cfe5148(e_originator))
	{
		self.stealth.var_c49c37ed[var_f51f605d] = e_originator;
		self.stealth.var_7a604d90[var_f51f605d] = e_originator;
	}
}

/*
	Name: function_85b3a352
	Namespace: namespace_80045451
	Checksum: 0xEA238E8B
	Offset: 0x1028
	Size: 0x2FD
	Parameters: 1
	Flags: None
*/
function function_85b3a352(var_904f1fb9)
{
	self endon("death");
	self endon("disconnect");
	if(GetDvarInt("stealth_no_return") && self function_739525d() == "combat")
	{
		return;
	}
	e_originator = var_904f1fb9.parms[0];
	var_7febec6d = "on_sight_end";
	if(isdefined(e_originator))
	{
		var_7febec6d = var_7febec6d + "_" + e_originator GetEntityNumber();
	}
	self notify(var_7febec6d);
	self endon(var_7febec6d);
	var_5400af02 = stealth::function_b889e36b(self function_739525d(), "unaware");
	if(isdefined(self.stealth.investigating) && (self.stealth.investigating != "infinite" || var_5400af02 == 1))
	{
		self waittill("hash_2481442d");
	}
	var_15e1f3df = 0;
	foreach(enemy in self.stealth.var_c49c37ed)
	{
		if(!isdefined(enemy))
		{
			continue;
		}
		if(!IsSentient(enemy))
		{
			continue;
		}
		var_15e1f3df = max(var_15e1f3df, self function_99ada8a(enemy));
	}
	if(var_15e1f3df <= 0 && self function_c82b617b(-1))
	{
		if(self function_739525d() != "unaware")
		{
			if(isdefined(e_originator))
			{
				if(IsSentient(e_originator))
				{
					self function_fcc2e3c6(e_originator, 1);
				}
			}
			else
			{
				self notify("investigate", self.origin, undefined, "quick");
			}
		}
	}
}

/*
	Name: function_6c10e440
	Namespace: namespace_80045451
	Checksum: 0x43368798
	Offset: 0x1330
	Size: 0x633
	Parameters: 1
	Flags: None
*/
function function_6c10e440(var_904f1fb9)
{
	var_effa6151 = self GetEventPointOfInterest();
	v_origin = var_effa6151;
	e_originator = self GetCurrentEventOriginator();
	var_da89d1ee = self function_3e69af2d();
	str_typeName = self GetCurrentEventTypeName();
	var_d3a202ad = var_904f1fb9.parms[0];
	if(isdefined(str_typeName) && str_typeName == "grenade_ping")
	{
		var_d3a202ad = "combat";
	}
	if(var_d3a202ad == "low_alert")
	{
		var_d3a202ad = "high_alert";
	}
	if(isdefined(var_904f1fb9.parms[1]))
	{
		v_origin = var_904f1fb9.parms[1];
	}
	if(isdefined(var_904f1fb9.parms[2]))
	{
		e_originator = var_904f1fb9.parms[2];
	}
	if(stealth::function_b889e36b(var_d3a202ad, self function_739525d()) >= 0)
	{
		if(isdefined(v_origin))
		{
			if(!isdefined(var_effa6151) || DistanceSquared(v_origin, var_effa6151) > 0.1)
			{
				deltaOrigin = v_origin - self.origin;
				deltaAngles = VectorToAngles(deltaOrigin);
				self.REACT_YAW = AbsAngleClamp360(self.angles[1] - deltaAngles[1]);
			}
			if(IsActor(self))
			{
				if(var_d3a202ad == "combat" && isdefined(e_originator))
				{
					self thread function_20519577(e_originator, 0.5);
				}
				else
				{
					self thread function_20519577(v_origin, 0.5);
				}
			}
		}
		/#
			var_5ce50f3e = self GetCurrentEventTypeName() + self function_df5e5cfb();
			if(!isdefined(var_5ce50f3e) || var_5ce50f3e == "Dev Block strings are not supported")
			{
				var_5ce50f3e = "Dev Block strings are not supported";
			}
			if(isdefined(e_originator) && function_b00aaea1(e_originator))
			{
				var_5ce50f3e = "Dev Block strings are not supported";
			}
			if(var_904f1fb9.parms.size > 1)
			{
				var_5ce50f3e = var_904f1fb9.parms[var_904f1fb9.parms.size - 1];
			}
			if(isdefined(var_5ce50f3e) && IsString(var_5ce50f3e))
			{
				self.stealth.var_6926a825 = var_5ce50f3e;
			}
		#/
		if(str_typeName == "explosion")
		{
			self notify("hash_234a4910", "explosion");
		}
		else if(isdefined(e_originator) && function_b00aaea1(e_originator))
		{
			self notify("hash_234a4910", "corpse");
		}
		self function_a2429809(var_d3a202ad);
		switch(var_d3a202ad)
		{
			case "high_alert":
			case "low_alert":
			{
				self notify("investigate", v_origin, e_originator);
				break;
			}
		}
		if(isdefined(var_da89d1ee) && isdefined(e_originator) && function_b00aaea1(e_originator))
		{
			self thread function_e7cf1d24(8, var_da89d1ee);
		}
		if(isPlayer(e_originator) && var_d3a202ad == "combat" && level.stealth.var_e7ad9c1f == 0)
		{
			if(isdefined(self.var_578b3075) && self.var_578b3075)
			{
				e_originator namespace_234a4910::function_e3ae87b3("spotted_sniper", self, 2);
			}
			else if(isVehicle(self))
			{
				e_originator namespace_234a4910::function_e3ae87b3("spotted_drone", self, 2);
			}
			else
			{
				e_originator namespace_234a4910::function_e3ae87b3("spotted", self, 2);
			}
		}
	}
	if(isdefined(e_originator) && self stealth::function_2cfe5148(e_originator))
	{
		self.stealth.var_c49c37ed[e_originator GetEntityNumber()] = e_originator;
		if(var_d3a202ad == "combat")
		{
			self function_bc0ce0bf(e_originator);
		}
	}
}

/*
	Name: function_101ac5
	Namespace: namespace_80045451
	Checksum: 0xD0A7D45E
	Offset: 0x1970
	Size: 0x9D
	Parameters: 1
	Flags: None
*/
function function_101ac5(var_904f1fb9)
{
	e_originator = var_904f1fb9.parms[0];
	if(!IsEntity(e_originator))
	{
		return;
	}
	if(stealth::function_b889e36b(self.awarenesslevelcurrent, self.awarenesslevelprevious) > 0)
	{
		self notify("alert", "combat", e_originator.origin, e_originator, "close_combat");
	}
}

/*
	Name: function_933965f6
	Namespace: namespace_80045451
	Checksum: 0x4F3F1EC8
	Offset: 0x1A18
	Size: 0x243
	Parameters: 1
	Flags: None
*/
function function_933965f6(var_904f1fb9)
{
	e_originator = var_904f1fb9.parms[0];
	var_62bc230d = var_904f1fb9.parms[1];
	if(self.awarenesslevelcurrent != "unaware")
	{
		return;
	}
	if(!IsEntity(e_originator))
	{
		return;
	}
	if(!IsEntity(var_62bc230d))
	{
		return;
	}
	if(stealth::function_b889e36b(self.awarenesslevelcurrent, self.awarenesslevelprevious) > 0)
	{
		if(isdefined(self.stealth.var_c9b747e1) && GetTime() - self.stealth.var_c9b747e1 < 30000)
		{
			return;
		}
		goalpos = var_62bc230d function_104af502();
		delta = goalpos - var_62bc230d.origin;
		if(LengthSquared(delta) > 250000)
		{
			var_fbbdb5f6 = var_62bc230d.origin + VectorNormalize(delta) * 500;
			deltaOrigin = var_62bc230d.origin - self.origin;
			deltaAngles = VectorToAngles(deltaOrigin);
			self.REACT_YAW = AbsAngleClamp360(self.angles[1] - deltaAngles[1]);
			self notify("investigate", var_fbbdb5f6, e_originator, "quick");
			self.stealth.var_c9b747e1 = GetTime();
		}
	}
}

/*
	Name: function_ec265d65
	Namespace: namespace_80045451
	Checksum: 0xA69F4BFB
	Offset: 0x1C68
	Size: 0x1C1
	Parameters: 4
	Flags: None
*/
function function_ec265d65(group, var_d3a202ad, v_origin, e_originator)
{
	group = GetAIArray(group, "script_aigroup");
	maxDistSq = GetDvarInt("stealth_group_radius", 1000);
	maxDistSq = maxDistSq * maxDistSq;
	foreach(guy in group)
	{
		if(guy == self)
		{
			continue;
		}
		if(!isalive(guy))
		{
			continue;
		}
		if(DistanceSquared(guy.origin, self.origin) > maxDistSq)
		{
			continue;
		}
		if(stealth::function_b889e36b(var_d3a202ad, guy function_739525d()) <= 0)
		{
			continue;
		}
		guy util::delay_notify(RandomFloatRange(0.33, 0.66), "alert", undefined, var_d3a202ad, v_origin, e_originator);
	}
}

/*
	Name: function_20519577
	Namespace: namespace_80045451
	Checksum: 0xB0E20E5E
	Offset: 0x1E38
	Size: 0x25D
	Parameters: 2
	Flags: None
*/
function function_20519577(lookAt, delay)
{
	self notify("hash_20519577");
	self endon("hash_20519577");
	ent = lookAt;
	if(!IsEntity(lookAt))
	{
		if(!isdefined(self.var_4e7892f5))
		{
			self.var_4e7892f5 = spawn("script_model", lookAt);
		}
		ent = self.var_4e7892f5;
	}
	else if(isdefined(self.var_4e7892f5))
	{
		self.var_4e7892f5 delete();
		self.var_4e7892f5 = undefined;
	}
	startTime = GetTime();
	delayms = delay * 1000;
	wait(0.2);
	while(isalive(self) && (isdefined(self.var_eddc2d46) && self.var_eddc2d46))
	{
		if(GetTime() - startTime >= delayms)
		{
			self LookAtEntity(ent);
			/#
				if(namespace_e449108e::enabled())
				{
					line(self GetEye(), ent.origin + VectorScale((0, 0, 1), 20), (0, 0, 1), 1, 1, 1);
					debugstar(ent.origin + VectorScale((0, 0, 1), 20), 1, (0, 0, 1));
				}
			#/
		}
		wait(0.05);
	}
	if(isdefined(self))
	{
		self LookAtEntity();
		if(isdefined(self.var_4e7892f5))
		{
			self.var_4e7892f5 delete();
			self.var_4e7892f5 = undefined;
		}
	}
}

/*
	Name: function_e7cf1d24
	Namespace: namespace_80045451
	Checksum: 0xA0E34AB3
	Offset: 0x20A0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_e7cf1d24(delay, id)
{
	self endon("death");
	wait(delay);
	self function_48513d6a(id);
}

/*
	Name: function_a7964595
	Namespace: namespace_80045451
	Checksum: 0xB38445BA
	Offset: 0x20E8
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_a7964595(var_904f1fb9)
{
	self endon("death");
	e_attacker = var_904f1fb9.parms[0];
	var_5ce50f3e = var_904f1fb9.parms[1];
	if(isdefined(e_attacker))
	{
		if(stealth::function_b889e36b(self function_739525d(), "high_alert") < 0)
		{
			self notify("alert", "high_alert", e_attacker.origin, e_attacker, var_5ce50f3e);
		}
	}
}

/*
	Name: function_a0693e3b
	Namespace: namespace_80045451
	Checksum: 0x67F34230
	Offset: 0x21B0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_a0693e3b(e_attacker)
{
	self endon("death");
	if(isdefined(e_attacker) && self enabled())
	{
		wait(RandomFloatRange(0.25, 0.75));
		self function_bc0ce0bf(e_attacker);
	}
}

/*
	Name: function_bc0ce0bf
	Namespace: namespace_80045451
	Checksum: 0xBA707156
	Offset: 0x2228
	Size: 0x2B1
	Parameters: 1
	Flags: None
*/
function function_bc0ce0bf(enemy)
{
	if(!self enabled())
	{
		return;
	}
	if(!isdefined(enemy) || !self stealth::function_2cfe5148(enemy))
	{
		return;
	}
	self namespace_7829c86f::function_2481442d();
	self StopAnimScripted();
	var_3f26abe = enemy GetEntityNumber();
	self function_a2429809("combat");
	self function_c62ada65(enemy, 0);
	if(!isdefined(self.stealth.var_d1b49f30[var_3f26abe]))
	{
		self.stealth.var_d1b49f30[var_3f26abe] = enemy;
		self.stealth.var_c49c37ed[var_3f26abe] = enemy;
		self thread function_899ae538(enemy);
		self notify("hash_234a4910", "enemy");
	}
	if(IsSentient(enemy))
	{
		self function_fcc2e3c6(enemy, 1);
	}
	self ai_sniper::actor_lase_stop();
	if(isPlayer(enemy) && GetDvarInt("stealth_all_aware"))
	{
		foreach(player in level.activePlayers)
		{
			if(player == enemy)
			{
				continue;
			}
			playerEntNum = player GetEntityNumber();
			if(!isdefined(self.stealth.var_d1b49f30[playerEntNum]))
			{
				function_bc0ce0bf(player);
			}
		}
	}
}

/*
	Name: function_899ae538
	Namespace: namespace_80045451
	Checksum: 0x6B612CEF
	Offset: 0x24E8
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function function_899ae538(enemy)
{
	self notify("combat_spread_thread_" + enemy GetEntityNumber());
	self endon("combat_spread_thread_" + enemy GetEntityNumber());
	self endon("death");
	var_a3eebf94 = 0;
	while(1)
	{
		wait(0.5);
		if(!isdefined(enemy) || enemy.health <= 0 || self function_739525d() != "combat" || (isdefined(self.silenced) && self.silenced))
		{
			break;
		}
		self stealth_event::function_7dd521be(self.team, self.origin, 200, 100, 0, "combat_spread", "combat", enemy, self);
		self stealth_event::function_7dd521be(self.team, self.origin, 400, 300, 1, "combat_interest", enemy, self);
		if(!isdefined(self.enemy) || !self stealth::can_see(self.enemy))
		{
			self function_a10368f2(self.awarenesslevelcurrent, 1);
		}
		else
		{
			self function_a10368f2(self.awarenesslevelcurrent, 0);
		}
	}
	self function_a10368f2(self.awarenesslevelcurrent, 1);
}

/*
	Name: function_a85b6c52
	Namespace: namespace_80045451
	Checksum: 0xD0FC0BCD
	Offset: 0x26E8
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_a85b6c52()
{
	self endon("death");
	while(1)
	{
		self waittill("enemy");
		while(isdefined(self.enemy) && isalive(self.enemy))
		{
			if(isdefined(self.enemy.Civilian) && self.enemy.Civilian || (isdefined(self.enemy.var_8722cfb) && (isdefined(self.enemy.var_8722cfb.Civilian) && self.enemy.var_8722cfb.Civilian)))
			{
				self.var_bbd5dba4 = 1;
				self.var_c40cbbfa = 1;
			}
			else
			{
				self.var_bbd5dba4 = undefined;
				self.var_c40cbbfa = 0;
			}
			wait(0.05);
		}
		self notify("hash_2fc68f66", self.enemy);
	}
}

