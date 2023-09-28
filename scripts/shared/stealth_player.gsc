#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_level;
#using scripts\shared\stealth_status;
#using scripts\shared\stealth_tagging;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_10443be6;

/*
	Name: init
	Namespace: namespace_10443be6
	Checksum: 0xB2E4BBBA
	Offset: 0x3D8
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		Assert(isPlayer(self));
	#/
	/#
		Assert(!isdefined(self.stealth));
	#/
	if(!isdefined(self.stealth))
	{
		self.stealth = spawnstruct();
	}
	self.stealth.player_detected = 0;
	self.stealth.var_5ffb6518 = 0;
	self thread function_1026b3f5();
	self thread function_c438db7f();
	self namespace_f917b91a::init();
	self namespace_234a4910::init();
	/#
		self namespace_e449108e::function_148c43f();
	#/
	self thread function_7300ae66();
	self thread function_bb9ffa41();
	self thread function_ff057a95();
}

/*
	Name: stop
	Namespace: namespace_10443be6
	Checksum: 0x99EC1590
	Offset: 0x540
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function stop()
{
}

/*
	Name: reset
	Namespace: namespace_10443be6
	Checksum: 0x1C8F92B5
	Offset: 0x550
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function reset()
{
	self.stealth.var_31bf1854 = undefined;
	self.stealth.var_b9ae563d = undefined;
	self.stealth.var_23eafafa = undefined;
	self.stealth.var_9f4ce919 = [];
}

/*
	Name: enabled
	Namespace: namespace_10443be6
	Checksum: 0x65332852
	Offset: 0x5A0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function enabled()
{
	return isdefined(self.stealth) && isdefined(self.stealth.player_detected);
}

/*
	Name: function_f5f81ff0
	Namespace: namespace_10443be6
	Checksum: 0xA5D6612F
	Offset: 0x5C8
	Size: 0x23
	Parameters: 2
	Flags: None
*/
function function_f5f81ff0(detector, var_2eef6100)
{
	self.stealth.var_5ffb6518++;
}

/*
	Name: function_cd81f5b8
	Namespace: namespace_10443be6
	Checksum: 0xAB85D7C5
	Offset: 0x5F8
	Size: 0x231
	Parameters: 2
	Flags: None
*/
function function_cd81f5b8(detector, var_2eef6100)
{
	if(!isdefined(self.stealth.var_e1466b44))
	{
		self.stealth.var_e1466b44 = [];
	}
	var_974b6e2c = 0;
	replace = -1;
	for(i = 0; i < self.stealth.var_e1466b44.size; i++)
	{
		value = self function_31218960(self.stealth.var_e1466b44[i]);
		if(value == 127 || !isdefined(self.stealth.var_e1466b44[i]) || self.stealth.var_e1466b44[i] == detector)
		{
			self.stealth.var_e1466b44[i] = detector;
			return;
		}
		distSq = DistanceSquared(self.stealth.var_e1466b44[i].origin, self.origin);
		if(distSq > var_974b6e2c)
		{
			var_974b6e2c = distSq;
			replace = i;
		}
	}
	if(self.stealth.var_e1466b44.size < 4)
	{
		self.stealth.var_e1466b44[self.stealth.var_e1466b44.size] = detector;
		return;
	}
	distSq = DistanceSquared(detector.origin, self.origin);
	if(distSq < var_974b6e2c)
	{
		self.stealth.var_e1466b44[replace] = detector;
	}
}

/*
	Name: function_ff057a95
	Namespace: namespace_10443be6
	Checksum: 0x8F960A37
	Offset: 0x838
	Size: 0x497
	Parameters: 0
	Flags: None
*/
function function_ff057a95()
{
	self notify("hash_ff057a95");
	self endon("hash_ff057a95");
	self endon("disconnect");
	self endon("hash_94ff6d85");
	/#
		Assert(isdefined(self.stealth));
	#/
	if(!isdefined(self.stealth.var_9f4ce919))
	{
		self.stealth.var_9f4ce919 = [];
	}
	while(1)
	{
		if(!(isdefined(level.stealth.vo_callouts) && level.stealth.vo_callouts))
		{
			wait(1);
			continue;
		}
		if(self PlayerAds() > 0.3)
		{
			var_bd8fb968 = self function_1a9006bd("cybercom_hijack");
			eye = self GetEye();
			var_fd26df34 = AnglesToForward(self getPlayerAngles());
			targets = GetAITeamArray("axis");
			if(isdefined(level.stealth.var_581c13ae))
			{
				var_2680d17d = [];
				foreach(var_daf22616 in level.stealth.var_581c13ae)
				{
					if(!isdefined(var_daf22616))
					{
						continue;
					}
					targets[targets.size] = var_daf22616;
					var_2680d17d[var_2680d17d.size] = var_daf22616;
				}
				if(var_2680d17d.size != level.stealth.var_581c13ae.size)
				{
					level.stealth.var_581c13ae = var_2680d17d;
				}
			}
			foreach(var_daf22616 in targets)
			{
				warnMsg = "careful";
				var_bbf94a49 = var_daf22616.origin;
				if(IsSentient(var_daf22616))
				{
					var_bbf94a49 = var_daf22616 GetEye();
				}
				if(isdefined(var_daf22616.var_3bee9acf))
				{
					warnMsg = var_daf22616.var_3bee9acf;
				}
				else if(isVehicle(var_daf22616))
				{
					if(var_bd8fb968 && var_daf22616 function_d04b5e96())
					{
						warnMsg = "careful_hack";
					}
					else
					{
						warnMsg = "careful_" + var_daf22616.archetype;
					}
				}
				if(isdefined(self.stealth.var_9f4ce919[warnMsg]))
				{
					continue;
				}
				dir = VectorNormalize(var_bbf94a49 - eye);
				if(VectorDot(var_fd26df34, dir) > 0.99)
				{
					if(SightTracePassed(var_bbf94a49, eye, 0, undefined))
					{
						self namespace_234a4910::function_e3ae87b3(warnMsg);
						self.stealth.var_9f4ce919[warnMsg] = 1;
					}
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_31218960
	Namespace: namespace_10443be6
	Checksum: 0x513419CB
	Offset: 0xCD8
	Size: 0x1EF
	Parameters: 1
	Flags: None
*/
function function_31218960(other)
{
	if(!isdefined(other))
	{
		return 127;
	}
	if(GetDvarInt("stealth_display", 1) == 1 && isalive(other) && !other.ignoreall)
	{
		value = other function_99ada8a(self) * 49;
		var_44b1a6c2 = other stealth::can_see(self);
		var_a836f7ed = isdefined(other.stealth.var_d1b49f30) && isdefined(other.stealth.var_d1b49f30[self GetEntityNumber()]);
		var_9b2f0c51 = isdefined(other.stealth.var_c49c37ed) && isdefined(other.stealth.var_c49c37ed[self GetEntityNumber()]);
		if(value > 0 || var_9b2f0c51 || var_a836f7ed)
		{
			if(var_a836f7ed)
			{
				value = 50;
			}
			else if(var_9b2f0c51)
			{
				value = 49;
			}
			if(var_44b1a6c2 || var_a836f7ed)
			{
				value = value + 50;
			}
			return Int(value);
		}
	}
	return 127;
}

/*
	Name: function_b9393d6c
	Namespace: namespace_10443be6
	Checksum: 0x8ED6A0BC
	Offset: 0xED0
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_b9393d6c(awareness)
{
	vals = level namespace_ad45a419::function_b3269823(awareness);
	/#
		Assert(isdefined(vals));
	#/
	maxVisibleDist = vals.var_24eff8a4;
	if(awareness != "combat")
	{
		stance = self GetStance();
		if(isdefined(self.stealth.var_325b070f) && self.stealth.var_325b070f)
		{
			maxVisibleDist = maxVisibleDist * 0.5;
		}
		if(stance == "prone")
		{
			maxVisibleDist = maxVisibleDist * 0.25;
		}
		else if(stance == "crouch")
		{
			maxVisibleDist = maxVisibleDist * 0.5;
		}
	}
	self.maxVisibleDist = maxVisibleDist;
	self.var_ed4a233c = vals.fovcosine;
	self.var_23574bde = vals.var_304f0f57;
}

/*
	Name: function_96e60fd0
	Namespace: namespace_10443be6
	Checksum: 0x8EAEC4D7
	Offset: 0x1038
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_96e60fd0(detected)
{
	self.stealth.player_detected = detected;
}

/*
	Name: function_f1c48da4
	Namespace: namespace_10443be6
	Checksum: 0x300A0C81
	Offset: 0x1060
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_f1c48da4()
{
	if(!self enabled())
	{
		return 0;
	}
	return self.stealth.player_detected;
}

/*
	Name: function_1026b3f5
	Namespace: namespace_10443be6
	Checksum: 0x95217A14
	Offset: 0x10A0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_1026b3f5()
{
	self endon("disconnect");
	while(1)
	{
		stance = self GetStance();
		maxVisibleDist = 1600;
		switch(stance)
		{
			case "crouch":
			{
				maxVisibleDist = 800;
				break;
			}
			case "prone":
			{
				maxVisibleDist = 400;
				break;
			}
		}
		if(isdefined(self.stealth) && (isdefined(self.stealth.var_325b070f) && self.stealth.var_325b070f))
		{
			maxVisibleDist = maxVisibleDist * 0.5;
		}
		self.maxVisibleDist = maxVisibleDist;
		wait(0.25);
	}
}

/*
	Name: function_c438db7f
	Namespace: namespace_10443be6
	Checksum: 0x33A3AB99
	Offset: 0x1198
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_c438db7f()
{
	self endon("disconnect");
	self endon("hash_94ff6d85");
	while(1)
	{
		self.stealth.var_5ffb6518 = 0;
		wait(1);
		if(self.stealth.var_5ffb6518 <= 0)
		{
			self function_96e60fd0(0);
		}
	}
}

/*
	Name: function_7300ae66
	Namespace: namespace_10443be6
	Checksum: 0x384464C5
	Offset: 0x1210
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_7300ae66()
{
	self endon("disconnect");
	self endon("hash_94ff6d85");
	wait(0.05);
	self function_24319235(1);
	while(1)
	{
		self util::waittill_any("spawned");
		self function_b9393d6c("high_alert");
		wait(0.05);
		self function_24319235(1);
	}
}

/*
	Name: function_bb9ffa41
	Namespace: namespace_10443be6
	Checksum: 0xEC73224E
	Offset: 0x12C0
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function function_bb9ffa41()
{
	self endon("disconnect");
	self endon("hash_94ff6d85");
	var_52ff854e = 0;
	while(1)
	{
		kills = self globallogic_score::getPersStat("kills");
		if(!isdefined(kills))
		{
			kills = 0;
		}
		var_b69afa72 = kills;
		lastKillTime = GetTime();
		self waittill("hash_c56ba9f7", victim, sMeansOfDeath, weapon);
		waittillframeend;
		if(isdefined(victim) && isdefined(victim.team) && victim.team != "axis")
		{
			self thread namespace_234a4910::function_e3ae87b3("fail_kill");
			continue;
		}
		kills = self globallogic_score::getPersStat("kills");
		if(!isdefined(kills))
		{
			kills = 1;
		}
		var_c839bf74 = kills - var_b69afa72;
		if(GetTime() - lastKillTime > 1000)
		{
			var_52ff854e = 0;
		}
		if(var_c839bf74 >= 2 && isdefined(sMeansOfDeath) && util::IsBulletImpactMOD(sMeansOfDeath))
		{
			self notify("hash_97df59d5");
		}
		var_52ff854e = var_52ff854e + var_c839bf74;
		if(!isdefined(self.stealth))
		{
			return;
		}
		if(!isdefined(level.stealth))
		{
			return;
		}
		self thread function_e507ced8(victim, sMeansOfDeath, weapon, var_52ff854e);
	}
}

/*
	Name: function_e507ced8
	Namespace: namespace_10443be6
	Checksum: 0x213AFB6F
	Offset: 0x14D8
	Size: 0x15F
	Parameters: 4
	Flags: None
*/
function function_e507ced8(victim, sMeansOfDeath, weapon, killcount)
{
	self notify("hash_e507ced8");
	self endon("hash_e507ced8");
	self endon("disconnect");
	self endon("hash_94ff6d85");
	self endon("death");
	if(!level flag::get("stealth_alert") && !level flag::get("stealth_combat") && !level flag::get("stealth_discovered"))
	{
		if(isdefined(victim) && isdefined(victim.var_99baf927))
		{
			self namespace_234a4910::function_e3ae87b3(victim.var_99baf927);
		}
		else if(!(isdefined(level.stealth.var_30d9fcc6) && level.stealth.var_30d9fcc6))
		{
			if(killcount > 1)
			{
			}
			else if(isdefined(weapon) && weapon.type == "bullet")
			{
			}
		}
	}
}

/*
	Name: function_24319235
	Namespace: namespace_10443be6
	Checksum: 0x24CDFE1C
	Offset: 0x1640
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_24319235(Ignore)
{
	if(!isdefined(level.stealth))
	{
		return;
	}
	if(!isdefined(level.stealth.enemies))
	{
		return;
	}
	if(!isdefined(level.stealth.enemies[self.team]))
	{
		return;
	}
	foreach(enemy in level.stealth.enemies[self.team])
	{
		if(!isdefined(enemy))
		{
			continue;
		}
		if(enemy namespace_80045451::enabled())
		{
			enemy namespace_80045451::function_c62ada65(self, Ignore);
		}
	}
}

/*
	Name: function_3cd0dcd
	Namespace: namespace_10443be6
	Checksum: 0x7BA4A30B
	Offset: 0x1768
	Size: 0xFB
	Parameters: 3
	Flags: None
*/
function function_3cd0dcd(e_other, var_44b1a6c2, awareness)
{
	if(GetDvarInt("stealth_audio", 1) == 0)
	{
		return;
	}
	var_a836f7ed = awareness == "combat";
	if(!self enabled())
	{
		return;
	}
	if(!(isdefined(self.stealth.player_detected) && self.stealth.player_detected))
	{
		if(!var_a836f7ed)
		{
			if(var_44b1a6c2)
			{
				self thread function_6163610f(awareness);
			}
		}
		if(var_a836f7ed)
		{
			self.stealth.player_detected = 1;
			self thread function_e6e6afd7(e_other);
		}
	}
}

/*
	Name: function_e6e6afd7
	Namespace: namespace_10443be6
	Checksum: 0xBC9DC6ED
	Offset: 0x1870
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_e6e6afd7(e_other)
{
	self endon("disconnect");
	result = e_other util::waittill_any_timeout(0.25, "death");
	if(result == "timeout")
	{
		self thread function_21fabca();
	}
}

/*
	Name: function_6163610f
	Namespace: namespace_10443be6
	Checksum: 0xEF9E8BB4
	Offset: 0x18E8
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_6163610f(awareness)
{
	self notify("hash_6163610f");
	self endon("hash_6163610f");
	self endon("disconnect");
	self endon("hash_94ff6d85");
	self endon("death");
	var_3c0e4301 = 1;
	if(awareness == "high_alert")
	{
		var_3c0e4301 = 2;
	}
	self clientfield::set_to_player("stealth_sighting", var_3c0e4301);
	wait(0.15);
	self clientfield::set_to_player("stealth_sighting", 0);
}

/*
	Name: function_a321c8e5
	Namespace: namespace_10443be6
	Checksum: 0x923F4064
	Offset: 0x19B0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_a321c8e5()
{
	self notify("hash_a321c8e5");
	self endon("hash_a321c8e5");
	self endon("disconnect");
	self endon("hash_94ff6d85");
	self endon("death");
	self clientfield::set_to_player("stealth_alerted", 1);
	wait(0.15);
	self clientfield::set_to_player("stealth_alerted", 0);
}

/*
	Name: function_21fabca
	Namespace: namespace_10443be6
	Checksum: 0x4C2F4B61
	Offset: 0x1A48
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_21fabca()
{
	stealth::function_e0319e51("combat");
}

/*
	Name: function_ca6a0809
	Namespace: namespace_10443be6
	Checksum: 0xCD0E4C14
	Offset: 0x1A70
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_ca6a0809(enemy)
{
	if(enemy namespace_80045451::enabled() && enemy namespace_80045451::function_739525d() == "combat")
	{
		return;
	}
	self thread function_509ca7a6(enemy);
	self thread function_3f6bd04c(enemy);
}

/*
	Name: function_509ca7a6
	Namespace: namespace_10443be6
	Checksum: 0x4745C0A9
	Offset: 0x1AF8
	Size: 0x6B3
	Parameters: 1
	Flags: None
*/
function function_509ca7a6(enemy)
{
	now = GetTime();
	var_9f8c9118 = now;
	entnum = self GetEntityNumber();
	/#
		Assert(isdefined(enemy));
	#/
	/#
		Assert(isdefined(enemy.stealth));
	#/
	if(isdefined(self.stealth.var_4ea02c94) && self.stealth.var_4ea02c94)
	{
		return;
	}
	if(isdefined(enemy.stealth.var_d1c69a51) && isdefined(enemy.stealth.var_d1c69a51[entnum]) && now - enemy.stealth.var_d1c69a51[entnum] < 20000)
	{
		return;
	}
	if(GetDvarInt("stealth_indicator", 0))
	{
		enemy notify("sight_indicator_" + entnum);
		enemy endon("sight_indicator_" + entnum);
		enemy endon("death");
		if(!isdefined(enemy.stealth.var_d1c69a51))
		{
			enemy.stealth.var_d1c69a51 = [];
		}
		enemy.stealth.var_d1c69a51[entnum] = now;
		baseAlpha = 0.67;
		var_f69107b4 = 1000;
		index = entnum + var_f69107b4;
		enemy namespace_8312dbf::function_cf9dd532(self, var_f69107b4);
		str_shader = "white_stealth_spotting";
		color = (1, 1, 1);
		if(isdefined(enemy.stealth.status.var_2eb71ab0) && isdefined(enemy.stealth.status.icons[index]))
		{
			enemy.stealth.status.icons[index] SetTargetEnt(enemy.stealth.status.var_2eb71ab0);
			enemy.stealth.status.icons[index] SetShader(str_shader, 5, 5);
			enemy.stealth.status.icons[index] setWaypoint(0, str_shader, 0, 0);
			enemy.stealth.status.icons[index].color = color;
			enemy.stealth.status.icons[index].alpha = baseAlpha;
			enemy.stealth.status.icons[index].var_c3d91e16 = GetTime();
		}
		var_8c974758 = 1 * 1000;
		var_61fba14c = min(1000, var_8c974758);
		for(var_a4ef7967 = 0; var_a4ef7967 < var_8c974758;  = 0)
		{
			if(enemy namespace_80045451::function_739525d() == "combat")
			{
				var_a4ef7967 = max(var_8c974758 - var_61fba14c, var_a4ef7967);
			}
			var_ddb74378 = baseAlpha + sin(float(GetTime())) * 1 - baseAlpha;
			if(var_8c974758 - var_a4ef7967 <= var_61fba14c && isdefined(enemy.stealth.status.var_2eb71ab0) && isdefined(enemy.stealth.status.icons[index]))
			{
				alpha = var_ddb74378 * float(var_8c974758 - var_a4ef7967) / float(var_61fba14c);
				enemy.stealth.status.icons[index].alpha = min(max(alpha, 0), 1);
			}
			else
			{
				enemy.stealth.status.icons[index].alpha = min(max(var_ddb74378, 0), 1);
			}
			wait(0.05);
		}
		enemy namespace_8312dbf::function_180adb28(index, var_f69107b4);
	}
}

/*
	Name: function_3f6bd04c
	Namespace: namespace_10443be6
	Checksum: 0xE3891B8D
	Offset: 0x21B8
	Size: 0x293
	Parameters: 1
	Flags: None
*/
function function_3f6bd04c(enemy)
{
	/#
		Assert(isdefined(self.stealth));
	#/
	now = GetTime();
	if(isdefined(self.stealth.var_4ea02c94) && self.stealth.var_4ea02c94)
	{
		return;
	}
	if(isdefined(self.stealth.var_45848ab) && now - self.stealth.var_45848ab < 20000)
	{
		return;
	}
	self notify("hash_3f6bd04c");
	self endon("hash_3f6bd04c");
	self endon("disconnect");
	self endon("hash_94ff6d85");
	self.stealth.var_45848ab = now;
	var_612fc483 = self.angles[1] - VectorToAngles(enemy.origin - self.origin)[1];
	var_a113a204 = VectorToAngles(enemy.origin - self.origin)[0];
	var_a113a204 = AngleClamp180(var_a113a204);
	if(var_612fc483 < 0)
	{
		var_612fc483 = var_612fc483 + 360;
	}
	var_be26784d = "enemy_behind";
	if(var_a113a204 > 45)
	{
		var_be26784d = "enemy_below";
	}
	else if(var_a113a204 < -45)
	{
		var_be26784d = "enemy_above";
	}
	else if(var_612fc483 >= 315 || var_612fc483 <= 45)
	{
		var_be26784d = "enemy_ahead";
	}
	else if(var_612fc483 >= 45 && var_612fc483 <= 135)
	{
		var_be26784d = "enemy_right";
	}
	else if(var_612fc483 >= 225 && var_612fc483 <= 315)
	{
		var_be26784d = "enemy_left";
	}
	self namespace_234a4910::function_866c6270(var_be26784d, 1);
}

