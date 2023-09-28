#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_63d98895;

/*
	Name: init
	Namespace: namespace_63d98895
	Checksum: 0x99EC1590
	Offset: 0x648
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_63d98895
	Checksum: 0x9D5C16C2
	Offset: 0x658
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(0, 8);
	level.cybercom.surge = spawnstruct();
	level.cybercom.surge._is_flickering = &_is_flickering;
	level.cybercom.surge._on_flicker = &_on_flicker;
	level.cybercom.surge._on_give = &_on_give;
	level.cybercom.surge._on_take = &_on_take;
	level.cybercom.surge._on_connect = &_on_connect;
	level.cybercom.surge._on = &_on;
	level.cybercom.surge._off = &_off;
	level.cybercom.surge._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_63d98895
	Checksum: 0x887AA569
	Offset: 0x7E0
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_63d98895
	Checksum: 0x64DE275
	Offset: 0x7F8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_63d98895
	Checksum: 0xA3A07063
	Offset: 0x818
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = GetDvarInt("scr_surge_target_count", 1);
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_63d98895
	Checksum: 0x4F3FF651
	Offset: 0x8C0
	Size: 0x51
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self _off(slot, weapon);
	self.cybercom.var_9d8e0758 = undefined;
	self.cybercom.var_c40accd3 = undefined;
}

/*
	Name: _on_connect
	Namespace: namespace_63d98895
	Checksum: 0x99EC1590
	Offset: 0x920
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_63d98895
	Checksum: 0xECB813A1
	Offset: 0x930
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_d015f498(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_63d98895
	Checksum: 0xD031C94B
	Offset: 0x990
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
	Namespace: namespace_63d98895
	Checksum: 0xC795F42A
	Offset: 0x9D8
	Size: 0xAF
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
		self thread cybercom::function_2006f7d0(slot, weapon, GetDvarInt("scr_surge_target_count", 1));
		self.cybercom.var_301030f7 = 1;
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_63d98895
	Checksum: 0x515DC37C
	Offset: 0xA90
	Size: 0x2E7
	Parameters: 2
	Flags: Private
*/
function private function_602b28e9(target, secondary)
{
	if(!isdefined(secondary))
	{
		secondary = 0;
	}
	if(target cybercom::function_8fd8f5b1("cybercom_surge"))
	{
		self cybercom::function_29bf9dee(target, 2);
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
		if(target.archetype == "human" && (isdefined(secondary) && secondary))
		{
		}
		else
		{
			self cybercom::function_29bf9dee(target, 2);
			return 0;
		}
	}
	if(!IsActor(target) && !isVehicle(target))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(isVehicle(target))
	{
		if(!isdefined(target.archetype))
		{
			self cybercom::function_29bf9dee(target, 2);
			return 0;
		}
		switch(target.archetype)
		{
			case "amws":
			case "pamws":
			case "raps":
			case "turret":
			case "wasp":
			{
				break;
			}
			case default:
			{
				self cybercom::function_29bf9dee(target, 2);
				return 0;
			}
		}
	}
	if(IsActor(target) && !target IsOnGround() && !target cybercom::function_421746e0())
	{
		return 0;
	}
	return 1;
}

/*
	Name: _get_valid_targets
	Namespace: namespace_63d98895
	Checksum: 0xFEC0FED2
	Offset: 0xD80
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	return ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
}

/*
	Name: function_d015f498
	Namespace: namespace_63d98895
	Checksum: 0x2ED9E693
	Offset: 0xDE0
	Size: 0x2E3
	Parameters: 2
	Flags: Private
*/
function private function_d015f498(slot, weapon)
{
	upgraded = self function_1a9006bd("cybercom_surge") == 2;
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
				item.target thread function_311d046a(upgraded, 0, self, weapon);
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
		itemIndex = GetItemIndexFromRef("cybercom_surge");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "assists", "statValue", fired);
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_dd7268a3
	Namespace: namespace_63d98895
	Checksum: 0xBAB35F0E
	Offset: 0x10D0
	Size: 0x17D
	Parameters: 3
	Flags: Private
*/
function private function_dd7268a3(upgraded, secondary, attacker)
{
	if(!isdefined(upgraded))
	{
		upgraded = 0;
	}
	if(!isdefined(secondary))
	{
		secondary = 0;
	}
	self endon("death");
	self.ignoreall = 1;
	if(upgraded)
	{
	}
	else
	{
	}
	self clientfield::set("cybercom_surge", 1);
	if(!upgraded)
	{
		RadiusDamage(self.origin, 128, 300, 100, self, "MOD_EXPLOSIVE");
		if(isalive(self))
		{
			self kill();
		}
	}
	else if(self.archetype == "turret")
	{
		RadiusDamage(self.origin, 128, 300, 100, self, "MOD_EXPLOSIVE");
		if(isalive(self))
		{
			self kill();
		}
		return;
	}
	self notify("surge", attacker, 2);
}

/*
	Name: function_311d046a
	Namespace: namespace_63d98895
	Checksum: 0x84E29FD8
	Offset: 0x1258
	Size: 0x44B
	Parameters: 4
	Flags: Private
*/
function private function_311d046a(upgraded, secondary, attacker, weapon)
{
	if(!isdefined(upgraded))
	{
		upgraded = 0;
	}
	if(!isdefined(secondary))
	{
		secondary = 0;
	}
	self endon("death");
	self notify("hash_f8c5dd60", weapon, attacker);
	weapon = GetWeapon("gadget_surge");
	if(isVehicle(self))
	{
		self thread function_dd7268a3(upgraded, secondary, attacker);
		return;
	}
	self.ignoreall = 1;
	self.is_disabled = 1;
	self.health = self.maxhealth;
	if(self.archetype == "human" || self ai::get_behavior_attribute("rogue_control") != "level_3")
	{
		if(upgraded)
		{
		}
		else
		{
		}
		self clientfield::set("cybercom_surge", 1);
	}
	if(self cybercom::function_421746e0() || self.archetype == "human")
	{
		if(isdefined(attacker))
		{
		}
		else
		{
		}
		self kill(self.origin, undefined, attacker, 2);
		return;
	}
	self function_e4f42bf7(attacker, weapon, GetDvarFloat("scr_surge_react_time", 0.45));
	self ClearForcedGoal();
	self UsePosition(self.origin);
	if(upgraded)
	{
		self clientfield::set("cybercom_setiffname", 2);
		self ai::set_behavior_attribute("rogue_allow_pregib", 0);
		self ai::set_behavior_attribute("rogue_control_speed", "sprint");
		self ai::set_behavior_attribute("rogue_control", "level_3");
		self.team = "allies";
		self clientfield::set("robot_mind_control", 0);
		self clientfield::set("robot_lights", 3);
		self.TokubetsuKogekita = 1;
		self.goalRadius = 32;
		comrades = _get_valid_targets();
		ArrayRemoveValue(comrades, self);
		target = self function_4d02229e(comrades);
		if(isdefined(target))
		{
			self thread function_a405f422();
			self thread function_b8a5c1a6();
			while(isdefined(target) && (!isdefined(self.var_b92dd31d) && self.var_b92dd31d))
			{
				self UsePosition(GetClosestPointOnNavMesh(target.origin, 200));
				wait(0.05);
			}
		}
	}
	self thread function_2a105d32(attacker);
}

/*
	Name: function_e4f42bf7
	Namespace: namespace_63d98895
	Checksum: 0x641F9C54
	Offset: 0x16B0
	Size: 0xBD
	Parameters: 3
	Flags: None
*/
function function_e4f42bf7()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_c1b2cc5a
	Namespace: namespace_63d98895
	Checksum: 0x46CA84D9
	Offset: 0x1778
	Size: 0x35
	Parameters: 1
	Flags: None
*/
function function_c1b2cc5a(var_a360d6f5)
{
	self endon("hash_a738dd0");
	self endon("death");
	wait(var_a360d6f5);
	self notify("hash_147d6ee");
}

/*
	Name: function_b8a5c1a6
	Namespace: namespace_63d98895
	Checksum: 0x6081E956
	Offset: 0x17B8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_b8a5c1a6(attacker)
{
	self endon("hash_2a105d32");
	self waittill("death");
	self thread function_2a105d32(attacker);
}

/*
	Name: function_a405f422
	Namespace: namespace_63d98895
	Checksum: 0x82C80EAA
	Offset: 0x1800
	Size: 0xBB
	Parameters: 0
	Flags: Private
*/
function private function_a405f422()
{
	self endon("death");
	startTime = GetTime();
	while(1)
	{
		if(isdefined(self.pathGoalPos) && DistanceSquared(self.origin, self.pathGoalPos) <= self.goalRadius * self.goalRadius)
		{
			break;
		}
		if(GetTime() - startTime / 1000 >= GetDvarInt("scr_surge_seek_time", 8))
		{
			break;
		}
		wait(0.05);
	}
	self.var_b92dd31d = 1;
}

/*
	Name: function_d007b404
	Namespace: namespace_63d98895
	Checksum: 0x5F57A097
	Offset: 0x18C8
	Size: 0x11B
	Parameters: 3
	Flags: Private
*/
function private function_d007b404(upgraded, enemy, attacker)
{
	self endon("death");
	enemy endon("death");
	travelTime = DistanceSquared(enemy.origin, self.origin) / 128 * 128 * GetDvarFloat("scr_surge_arc_travel_time", 0.05);
	self thread function_abaf736(enemy, travelTime);
	wait(travelTime);
	if(isVehicle(enemy))
	{
		enemy thread function_dd7268a3(upgraded, 1, attacker);
	}
	else
	{
		enemy thread function_311d046a(upgraded, 1, attacker);
	}
}

/*
	Name: function_3e26e5ce
	Namespace: namespace_63d98895
	Checksum: 0xCB0AC028
	Offset: 0x19F0
	Size: 0x129
	Parameters: 2
	Flags: Private
*/
function private function_3e26e5ce(upgraded, attacker)
{
	self endon("death");
	enemies = self function_3e621fd5(self.origin + VectorScale((0, 0, 1), 50), GetDvarInt("scr_surge_radius", 220), GetDvarInt("scr_surge_count", 4));
	foreach(enemy in enemies)
	{
		if(enemy == self)
		{
			continue;
		}
		self thread function_d007b404(upgraded, enemy, attacker);
	}
}

/*
	Name: function_2a105d32
	Namespace: namespace_63d98895
	Checksum: 0x75193563
	Offset: 0x1B28
	Size: 0x34B
	Parameters: 1
	Flags: Private
*/
function function_2a105d32()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_3e621fd5
	Namespace: namespace_63d98895
	Checksum: 0x283D39AB
	Offset: 0x1E80
	Size: 0x223
	Parameters: 3
	Flags: Private
*/
function private function_3e621fd5(origin, Distance, max)
{
	weapon = GetWeapon("gadget_surge");
	distance_squared = Distance * Distance;
	enemies = [];
	var_7a650e64 = util::get_array_of_closest(origin, _get_valid_targets());
	foreach(enemy in var_7a650e64)
	{
		if(!isdefined(enemy))
		{
			continue;
		}
		if(DistanceSquared(origin, enemy.origin) > distance_squared)
		{
			continue;
		}
		if(!cybercom::function_7a7d1608(enemy, weapon, 0))
		{
			continue;
		}
		if(!function_602b28e9(enemy, 1))
		{
			continue;
		}
		if(isdefined(enemy.var_e4faf67c) && enemy.var_e4faf67c)
		{
			continue;
		}
		if(!BulletTracePassed(origin, enemy.origin + VectorScale((0, 0, 1), 50), 0, self))
		{
			continue;
		}
		enemies[enemies.size] = enemy;
		if(isdefined(max))
		{
			if(enemies.size >= max)
			{
				break;
			}
		}
	}
	return enemies;
}

/*
	Name: function_abaf736
	Namespace: namespace_63d98895
	Checksum: 0x6B16F424
	Offset: 0x20B0
	Size: 0x17B
	Parameters: 2
	Flags: Private
*/
function private function_abaf736(target, travelTime)
{
	if(!isdefined(self) || !isdefined(target))
	{
		return;
	}
	origin = self.origin + VectorScale((0, 0, 1), 40);
	if(isdefined(self.archetype) && self.archetype == "robot")
	{
		origin = self GetTagOrigin("J_SpineUpper");
	}
	fxOrg = spawn("script_model", origin);
	fxOrg SetModel("tag_origin");
	fxOrg clientfield::set("cybercom_surge", 1);
	if(isVehicle(target))
	{
	}
	else
	{
	}
	tag = "J_SpineUpper";
	fxOrg thread function_d09562d9(target, travelTime, tag);
	wait(travelTime);
	wait(0.25);
	fxOrg delete();
}

/*
	Name: function_d09562d9
	Namespace: namespace_63d98895
	Checksum: 0x7CA3E49F
	Offset: 0x2238
	Size: 0x1E3
	Parameters: 3
	Flags: Private
*/
function private function_d09562d9(target, time, tag)
{
	self endon("disconnect");
	self endon("death");
	self notify("hash_d09562d9");
	self endon("hash_d09562d9");
	if(!isdefined(target))
	{
		return;
	}
	if(!isdefined(tag))
	{
		tag = "tag_origin";
	}
	if(time <= 0)
	{
		time = 1;
	}
	dest = target GetTagOrigin(tag);
	if(!isdefined(dest))
	{
		dest = target.origin;
	}
	intervals = Int(time / 0.05);
	while(isdefined(target) && intervals > 0)
	{
		dist = Distance(self.origin, dest);
		step = dist / intervals;
		v_to_target = VectorNormalize(dest - self.origin) * step;
		/#
		#/
		intervals--;
		self moveto(self.origin + v_to_target, 0.05);
		self waittill("movedone");
		dest = target GetTagOrigin(tag);
	}
}

/*
	Name: function_9eb4d79d
	Namespace: namespace_63d98895
	Checksum: 0x24C73710
	Offset: 0x2428
	Size: 0x2D1
	Parameters: 3
	Flags: None
*/
function function_9eb4d79d(target, var_9bc2efcb, upgraded)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(upgraded))
	{
		upgraded = 0;
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
	weapon = GetWeapon("gadget_surge");
	foreach(guy in validTargets)
	{
		if(!cybercom::function_7a7d1608(guy, weapon))
		{
			continue;
		}
		guy thread function_311d046a(self, upgraded);
		wait(0.05);
	}
}

/*
	Name: function_4d02229e
	Namespace: namespace_63d98895
	Checksum: 0x9DF30DB5
	Offset: 0x2708
	Size: 0x15D
	Parameters: 2
	Flags: Private
*/
function private function_4d02229e(enemies, var_791225df)
{
	if(!isdefined(var_791225df))
	{
		var_791225df = 3;
	}
	while(var_791225df > 0 && enemies.size > 0)
	{
		var_791225df--;
		closest = ArrayGetClosest(self.origin, enemies);
		if(!isdefined(closest))
		{
			return;
		}
		pathSuccess = 0;
		queryResult = PositionQuery_Source_Navigation(closest.origin, 0, 128, 128, 20, self);
		if(queryResult.data.size > 0)
		{
			pathSuccess = self FindPath(self.origin, queryResult.data[0].origin, 1, 0);
		}
		if(!pathSuccess)
		{
			ArrayRemoveValue(enemies, closest, 0);
			closest = undefined;
			continue;
		}
		else
		{
			return closest;
		}
	}
}

