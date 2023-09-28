#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_528b4613;

/*
	Name: init
	Namespace: namespace_528b4613
	Checksum: 0x99EC1590
	Offset: 0x590
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_528b4613
	Checksum: 0xFA91966B
	Offset: 0x5A0
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(0, 1);
	level.cybercom.system_overload = spawnstruct();
	level.cybercom.system_overload._is_flickering = &_is_flickering;
	level.cybercom.system_overload._on_flicker = &_on_flicker;
	level.cybercom.system_overload._on_give = &_on_give;
	level.cybercom.system_overload._on_take = &_on_take;
	level.cybercom.system_overload._on_connect = &_on_connect;
	level.cybercom.system_overload._on = &_on;
	level.cybercom.system_overload._off = &_off;
	level.cybercom.system_overload._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_528b4613
	Checksum: 0xB8B6B934
	Offset: 0x728
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_528b4613
	Checksum: 0x1056D238
	Offset: 0x740
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_528b4613
	Checksum: 0x326F4A20
	Offset: 0x760
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = GetDvarInt("scr_system_overload_count", 3);
	self.cybercom.var_2515cbbf = GetDvarFloat("scr_system_overload_lifetime", 6.3) * 1000;
	if(self function_1a9006bd("cybercom_systemoverload") == 2)
	{
		self.cybercom.var_110c156a = GetDvarInt("scr_system_overload_upgraded_count", 5);
		self.cybercom.var_2515cbbf = GetDvarFloat("scr_system_overload_upgraded_lifetime", 6.3) * 1000;
	}
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_528b4613
	Checksum: 0xEC35A07C
	Offset: 0x8C0
	Size: 0x61
	Parameters: 2
	Flags: None
*/
function _on_take(slot, weapon)
{
	self _off(slot, weapon);
	self.cybercom.var_301030f7 = undefined;
	self.cybercom.var_9d8e0758 = undefined;
	self.cybercom.var_c40accd3 = undefined;
}

/*
	Name: _on_connect
	Namespace: namespace_528b4613
	Checksum: 0x99EC1590
	Offset: 0x930
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_528b4613
	Checksum: 0x3EBDA224
	Offset: 0x940
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_35d3d1a2(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_528b4613
	Checksum: 0xD572B556
	Offset: 0x9A0
	Size: 0x45
	Parameters: 2
	Flags: None
*/
function _off(slot, weapon)
{
	self thread cybercom::function_d51412df(weapon);
	self.cybercom.var_301030f7 = undefined;
	self notify("hash_8e37d611");
}

/*
	Name: _is_primed
	Namespace: namespace_528b4613
	Checksum: 0x49BDBE16
	Offset: 0x9F0
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
		self notify("hash_eec19461");
		self thread cybercom::function_2006f7d0(slot, weapon, self.cybercom.var_110c156a);
		self.cybercom.var_301030f7 = 1;
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_528b4613
	Checksum: 0x5E11D271
	Offset: 0xAA8
	Size: 0x237
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(!isdefined(target))
	{
		return 0;
	}
	if(target cybercom::function_8fd8f5b1("cybercom_systemoverload"))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(isdefined(target.hijacked) && target.hijacked)
	{
		self cybercom::function_29bf9dee(target, 4);
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
	if(!IsActor(target) && !isVehicle(target))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(IsActor(target) && !target IsOnGround() && !target cybercom::function_421746e0())
	{
		return 0;
	}
	return 1;
}

/*
	Name: _get_valid_targets
	Namespace: namespace_528b4613
	Checksum: 0x6B564225
	Offset: 0xCE8
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	return ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
}

/*
	Name: function_35d3d1a2
	Namespace: namespace_528b4613
	Checksum: 0x80F2E8F1
	Offset: 0xD48
	Size: 0x2AB
	Parameters: 2
	Flags: Private
*/
function private function_35d3d1a2(slot, weapon)
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
				item.target thread system_overload(self, undefined, weapon);
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
		itemIndex = GetItemIndexFromRef("cybercom_systemoverload");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "assists", "statValue", fired);
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_b4223599
	Namespace: namespace_528b4613
	Checksum: 0x7EDEB03F
	Offset: 0x1000
	Size: 0x12B
	Parameters: 2
	Flags: Private
*/
function private function_b4223599(attacker, weapon)
{
	if(isdefined(self.var_7c04bee3) && GetTime() < self.var_7c04bee3)
	{
		return;
	}
	self clientfield::set("cybercom_sysoverload", 1);
	self stopsounds();
	damage = 5;
	if(isdefined(self.archetype))
	{
		if(self.archetype == "wasp")
		{
			damage = 25;
		}
	}
	self DoDamage(damage, self.origin, attacker, undefined, "none", "MOD_GRENADE_SPLASH", 0, GetWeapon("emp_grenade"), -1, 1);
	self.var_7c04bee3 = GetTime() + GetDvarInt("scr_system_overload_vehicle_cooldown_seconds", 5) * 1000;
}

/*
	Name: function_5839c4ac
	Namespace: namespace_528b4613
	Checksum: 0x49C03469
	Offset: 0x1138
	Size: 0x2C1
	Parameters: 3
	Flags: None
*/
function function_5839c4ac(target, var_9bc2efcb, var_ba115ce0)
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
	weapon = GetWeapon("gadget_system_overload");
	foreach(guy in validTargets)
	{
		if(!cybercom::function_7a7d1608(guy, weapon))
		{
			continue;
		}
		guy thread system_overload(self, var_ba115ce0);
		wait(0.05);
	}
}

/*
	Name: system_overload
	Namespace: namespace_528b4613
	Checksum: 0x7EDE5A05
	Offset: 0x1408
	Size: 0x715
	Parameters: 4
	Flags: None
*/
function system_overload()
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
	Name: function_53cfe88a
	Namespace: namespace_528b4613
	Checksum: 0xF1BC8D8A
	Offset: 0x1B28
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_53cfe88a()
{
	self endon("death");
	wait(GetDvarFloat("scr_system_overload_loop_time", 5.9));
	self notify("hash_355afb47");
}

