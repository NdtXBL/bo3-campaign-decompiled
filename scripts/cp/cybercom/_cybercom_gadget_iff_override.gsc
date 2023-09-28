#using scripts\codescripts\struct;
#using scripts\cp\_achievements;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\archetype_robot;
#using scripts\shared\ai_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;

#namespace namespace_ea01175;

/*
	Name: init
	Namespace: namespace_ea01175
	Checksum: 0x99EC1590
	Offset: 0x578
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_ea01175
	Checksum: 0xB8F96414
	Offset: 0x588
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(0, 64);
	level._effect["iff_takeover"] = "electric/fx_elec_sparks_burst_lg_os";
	level._effect["iff_takeover_revert"] = "explosions/fx_exp_grenade_flshbng";
	level._effect["iff_takeover_death"] = "explosions/fx_exp_grenade_flshbng";
	level.cybercom.iff_override = spawnstruct();
	level.cybercom.iff_override._is_flickering = &_is_flickering;
	level.cybercom.iff_override._on_flicker = &_on_flicker;
	level.cybercom.iff_override._on_give = &_on_give;
	level.cybercom.iff_override._on_take = &_on_take;
	level.cybercom.iff_override._on_connect = &_on_connect;
	level.cybercom.iff_override._on = &_on;
	level.cybercom.iff_override._off = &_off;
	level.cybercom.iff_override._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_ea01175
	Checksum: 0x1E3D09AE
	Offset: 0x768
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_ea01175
	Checksum: 0xE5290CF2
	Offset: 0x780
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_ea01175
	Checksum: 0x9790261F
	Offset: 0x7A0
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = GetDvarInt("scr_iff_override_count", 1);
	self.cybercom.var_fcb06d6d = GetDvarInt("scr_iff_override_lifetime", 60);
	self.cybercom.var_84bab148 = GetDvarInt("scr_iff_override_control_count", 1);
	if(self function_1a9006bd("cybercom_iffoverride") == 2)
	{
		self.cybercom.var_110c156a = GetDvarInt("scr_iff_override_upgraded_count", 2);
		self.cybercom.var_fcb06d6d = GetDvarInt("scr_iff_override_upgraded_lifetime", 120);
		self.cybercom.var_84bab148 = GetDvarInt("scr_iff_override_control_upgraded_count", 2);
	}
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self.cybercom.var_46a37937 = [];
	self.cybercom.var_73d069a7 = &function_17342509;
	self.cybercom.var_46483c8f = 63;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_ea01175
	Checksum: 0x42B036F3
	Offset: 0x9A8
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self _off(slot, weapon);
	self.cybercom.var_9d8e0758 = undefined;
	self.cybercom.var_c40accd3 = undefined;
	self.cybercom.var_46483c8f = undefined;
	self.cybercom.var_73d069a7 = undefined;
}

/*
	Name: function_17342509
	Namespace: namespace_ea01175
	Checksum: 0x58D48724
	Offset: 0xA28
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_17342509(slot, weapon)
{
	self function_c0c5359e(slot, weapon);
	_on(slot, weapon);
}

/*
	Name: _on_connect
	Namespace: namespace_ea01175
	Checksum: 0x99EC1590
	Offset: 0xA80
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_ea01175
	Checksum: 0x95DB6F7C
	Offset: 0xA90
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_fa8ba566(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_ea01175
	Checksum: 0x5DF29FB3
	Offset: 0xAF0
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	self thread cybercom::function_d51412df(weapon);
	self.cybercom.var_301030f7 = undefined;
}

/*
	Name: _is_primed
	Namespace: namespace_ea01175
	Checksum: 0x54ADAD9E
	Offset: 0xB38
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function _is_primed(slot, weapon)
{
	if(!(isdefined(self.cybercom.var_301030f7) && self.cybercom.var_301030f7))
	{
		/#
			Assert(self.cybercom.var_2e20c9bd == weapon);
		#/
		self thread cybercom::function_2006f7d0(slot, weapon, self.cybercom.var_110c156a);
		self.cybercom.var_301030f7 = 1;
	}
}

/*
	Name: function_f1ec3062
	Namespace: namespace_ea01175
	Checksum: 0x1E7F2914
	Offset: 0xBE8
	Size: 0xFB
	Parameters: 2
	Flags: Private
*/
function private function_f1ec3062(team, attacker)
{
	self endon("death");
	self waittill("hash_6eb14bb1");
	self clientfield::set("cybercom_setiffname", 4);
	self SetTeam(team);
	wait(1);
	self clientfield::set("cybercom_setiffname", 0);
	playFX(level._effect["iff_takeover_death"], self.origin);
	if(isdefined(attacker))
	{
		self kill(self.origin, attacker);
	}
	else
	{
		self kill();
	}
}

/*
	Name: function_2458babe
	Namespace: namespace_ea01175
	Checksum: 0xABEA9F68
	Offset: 0xCF0
	Size: 0x1DB
	Parameters: 1
	Flags: Private
*/
function private function_2458babe(entity)
{
	if(!isPlayer(self))
	{
		return;
	}
	valid = [];
	foreach(guy in self.cybercom.var_46a37937)
	{
		if(isdefined(guy) && isalive(guy))
		{
			valid[valid.size] = guy;
		}
	}
	self.cybercom.var_46a37937 = valid;
	self.cybercom.var_46a37937[self.cybercom.var_46a37937.size] = entity;
	if(self.cybercom.var_46a37937.size > self.cybercom.var_84bab148)
	{
		var_983e95da = self.cybercom.var_46a37937[0];
		ArrayRemoveIndex(self.cybercom.var_46a37937, 0);
		if(isdefined(var_983e95da))
		{
			var_983e95da notify("hash_6eb14bb1");
			wait(1.5);
			if(isalive(var_983e95da))
			{
				var_983e95da kill();
			}
		}
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_ea01175
	Checksum: 0x8926BF29
	Offset: 0xED8
	Size: 0x333
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(target cybercom::function_8fd8f5b1("cybercom_iffoverride"))
	{
		if(isdefined(target.var_406cec76) && target.var_406cec76)
		{
			self cybercom::function_29bf9dee(target, 4);
		}
		else
		{
			self cybercom::function_29bf9dee(target, 2);
		}
		return 0;
	}
	if(isdefined(target.is_disabled) && target.is_disabled)
	{
		self cybercom::function_29bf9dee(target, 6);
		return 0;
	}
	if(IsActor(target) && target cybercom::function_78525729() != "stand" && target cybercom::function_78525729() != "crouch")
	{
		return 0;
	}
	if(IsActor(target) && target.archetype != "robot")
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(IsActor(target) && target.archetype == "robot" && (RobotSoldierBehavior::robotIsCrawler(target) || RobotSoldierBehavior::robotShouldBecomeCrawler(target)))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(!IsActor(target) && !isVehicle(target))
	{
		return 0;
	}
	if(isVehicle(target) && isdefined(target.var_6fb3bfc3))
	{
		self cybercom::function_29bf9dee(target, 4);
		return 0;
	}
	if(isdefined(target.var_f40d252c) && target.var_f40d252c)
	{
		return 0;
	}
	if(IsActor(target) && target.archetype == "robot" && target ai::get_behavior_attribute("rogue_control") == "level_3")
	{
		self cybercom::function_29bf9dee(target, 4);
		return 0;
	}
	return 1;
}

/*
	Name: _get_valid_targets
	Namespace: namespace_ea01175
	Checksum: 0x180C8120
	Offset: 0x1218
	Size: 0x103
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	var_594dffdc = GetAITeamArray("axis");
	valid = [];
	foreach(enemy in var_594dffdc)
	{
		if(isVehicle(enemy) || (IsActor(enemy) && isdefined(enemy.archetype)))
		{
			valid[valid.size] = enemy;
		}
	}
	return valid;
}

/*
	Name: function_fa8ba566
	Namespace: namespace_ea01175
	Checksum: 0x66CFCFB
	Offset: 0x1328
	Size: 0x2AB
	Parameters: 2
	Flags: Private
*/
function private function_fa8ba566(slot, weapon)
{
	aborted = 0;
	fired = 0;
	foreach(item in self.cybercom.var_d1460543)
	{
		if(isdefined(item.target) && (isdefined(item.inRange) && item.inRange))
		{
			if(item.inRange == 1)
			{
				if(!cybercom::function_7a7d1608(item.target, weapon))
				{
					continue;
				}
				self thread challenges::function_96ed590f("cybercom_uses_control");
				item.target thread iff_override(self, undefined, weapon);
				fired++;
				continue;
			}
			if(item.inRange == 2)
			{
				aborted++;
			}
		}
	}
	if(aborted && !fired)
	{
		self.cybercom.var_d1460543 = [];
		self cybercom::function_29bf9dee(undefined, 1, 0);
	}
	cybercom::function_adc40f11(weapon, fired);
	if(fired && isPlayer(self))
	{
		itemIndex = GetItemIndexFromRef("cybercom_iffoverride");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "assists", "statValue", fired);
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_c9023ee5
	Namespace: namespace_ea01175
	Checksum: 0x23E31E68
	Offset: 0x15E0
	Size: 0xE7
	Parameters: 1
	Flags: Private
*/
function private function_c9023ee5(owner)
{
	self endon("death");
	self endon("hash_6eb14bb1");
	if(isPlayer(owner))
	{
		owner endon("disconnect");
		continue;
	}
	owner endon("death");
	while(isdefined(owner))
	{
		wait(RandomFloatRange(1, 4));
		if(DistanceSquared(self.origin, owner.origin) > self.goalRadius * self.goalRadius)
		{
			self SetGoal(owner.origin);
		}
	}
}

/*
	Name: function_e6827c94
	Namespace: namespace_ea01175
	Checksum: 0xF633AFC7
	Offset: 0x16D0
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_e6827c94(isActive)
{
	if(isActive && isdefined(self.var_6fb3bfc3) && isPlayer(self.var_6fb3bfc3))
	{
		self clientfield::set("cybercom_setiffname", 2);
		self thread function_384a3bfb();
	}
	else if(!isActive && isdefined(self.var_6fb3bfc3))
	{
		self clientfield::set("cybercom_setiffname", 0);
		achievements::function_6903d776(self);
		self.var_6fb3bfc3 = undefined;
		self.var_7be9baa7 = undefined;
		self.is_disabled = 0;
	}
}

/*
	Name: function_384a3bfb
	Namespace: namespace_ea01175
	Checksum: 0xE2CAC318
	Offset: 0x17B8
	Size: 0x3B
	Parameters: 0
	Flags: Private
*/
function private function_384a3bfb()
{
	self endon("death");
	self waittill("hash_6eb14bb1");
	self clientfield::set("cybercom_setiffname", 4);
}

/*
	Name: function_9a7de8fc
	Namespace: namespace_ea01175
	Checksum: 0x1746F94B
	Offset: 0x1800
	Size: 0xA3
	Parameters: 1
	Flags: Private
*/
function private function_9a7de8fc(var_92d97fe6)
{
	self endon("death");
	wait(RandomFloatRange(0, 0.75));
	if(isPlayer(var_92d97fe6))
	{
		self.var_7be9baa7 = &function_e6827c94;
		self.var_6fb3bfc3 = var_92d97fe6;
	}
	var_92d97fe6 thread function_2458babe(self);
	self thread vehicle_ai::iff_override(var_92d97fe6);
}

/*
	Name: function_2b203db0
	Namespace: namespace_ea01175
	Checksum: 0x14EAB942
	Offset: 0x18B0
	Size: 0x3B
	Parameters: 0
	Flags: Private
*/
function private function_2b203db0()
{
	self endon("death");
	self waittill("hash_b415d6ad");
	self clientfield::set("cybercom_setiffname", 3);
}

/*
	Name: iff_override
	Namespace: namespace_ea01175
	Checksum: 0x265F25A2
	Offset: 0x18F8
	Size: 0x53B
	Parameters: 3
	Flags: None
*/
function iff_override()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_e26f0e60
	Namespace: namespace_ea01175
	Checksum: 0xB6104832
	Offset: 0x1E40
	Size: 0x2D
	Parameters: 2
	Flags: None
*/
function function_e26f0e60(time, note)
{
	self endon("death");
	wait(time);
	self notify(note);
}

/*
	Name: function_f2c8aa66
	Namespace: namespace_ea01175
	Checksum: 0x8BC27BC3
	Offset: 0x1E78
	Size: 0x89
	Parameters: 2
	Flags: Private
*/
function private function_f2c8aa66(timeSec, attacker)
{
	self endon("death");
	wait(timeSec - 6);
	self notify("hash_b415d6ad");
	wait(6);
	self clientfield::set("cybercom_setiffname", 4);
	wait(2);
	self SetTeam(self.oldTeam);
	self notify("hash_6eb14bb1");
}

/*
	Name: function_c26a7c6
	Namespace: namespace_ea01175
	Checksum: 0x75C4995F
	Offset: 0x1F10
	Size: 0x2B9
	Parameters: 2
	Flags: None
*/
function function_c26a7c6(target, var_9bc2efcb)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(target))
	{
		return;
	}
	if(self.archetype != "human")
	{
		return;
	}
	validTargets = [];
	if(IsArray(target))
	{
		foreach(guy in target)
		{
			if(!function_602b28e9(guy))
			{
				continue;
			}
			validTargets[validTargets.size] = guy;
		}
	}
	else if(!function_602b28e9(target))
	{
		return;
	}
	validTargets[validTargets.size] = target;
	if(isdefined(var_9bc2efcb) && var_9bc2efcb)
	{
		type = self cybercom::function_5e3d3aa();
		self OrientMode("face default");
		self AnimScripted("ai_cybercom_anim", self.origin, self.angles, "ai_base_rifle_" + type + "_exposed_cybercom_activate");
		self waittillmatch("hash_39fa7e38");
	}
	weapon = GetWeapon("gadget_iff_override");
	foreach(guy in validTargets)
	{
		if(!cybercom::function_7a7d1608(guy, weapon))
		{
			continue;
		}
		guy thread iff_override(self, undefined, undefined);
		wait(0.05);
	}
}

