#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_64276cf9;

/*
	Name: init
	Namespace: namespace_64276cf9
	Checksum: 0x84CFFECB
	Offset: 0x690
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function init()
{
	clientfield::register("actor", "sensory_overload", 1, 2, "int");
}

/*
	Name: main
	Namespace: namespace_64276cf9
	Checksum: 0x95193C8B
	Offset: 0x6D0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(2, 1);
	level._effect["sensory_disable_human"] = "electric/fx_ability_elec_sensory_ol_human";
	level._effect["sensory_disable_human_riotshield"] = "electric/fx_ability_elec_sensory_ol_human";
	level._effect["sensory_disable_warlord"] = "electric/fx_ability_elec_sensory_ol_human";
	level.cybercom.sensory_overload = spawnstruct();
	level.cybercom.sensory_overload._is_flickering = &_is_flickering;
	level.cybercom.sensory_overload._on_flicker = &_on_flicker;
	level.cybercom.sensory_overload._on_give = &_on_give;
	level.cybercom.sensory_overload._on_take = &_on_take;
	level.cybercom.sensory_overload._on_connect = &_on_connect;
	level.cybercom.sensory_overload._on = &_on;
	level.cybercom.sensory_overload._off = &_off;
	level.cybercom.sensory_overload._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_64276cf9
	Checksum: 0x86062341
	Offset: 0x8B0
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_64276cf9
	Checksum: 0xB2B85BC4
	Offset: 0x8C8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_64276cf9
	Checksum: 0x105ACE88
	Offset: 0x8E8
	Size: 0x1D3
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = GetDvarInt("scr_sensory_overload_count", 3);
	self.cybercom.var_bf39536d = GetDvarInt("scr_sensory_overload_loops", 2);
	if(self function_1a9006bd("cybercom_sensoryoverload") == 2)
	{
		self.cybercom.var_110c156a = GetDvarInt("scr_sensory_overload_upgraded_count", 5);
		self.cybercom.var_bf39536d = GetDvarInt("scr_sensory_overload_upgraded_loops", 2);
	}
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
	self cybercom::function_8257bcb3("base_rifle_stn", 8);
	self cybercom::function_8257bcb3("base_rifle_crc", 2);
	self cybercom::function_8257bcb3("fem_rifle_stn", 8);
	self cybercom::function_8257bcb3("fem_rifle_crc", 2);
}

/*
	Name: _on_take
	Namespace: namespace_64276cf9
	Checksum: 0xD078BFF6
	Offset: 0xAC8
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
	Namespace: namespace_64276cf9
	Checksum: 0x99EC1590
	Offset: 0xB28
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_64276cf9
	Checksum: 0xF637F1FA
	Offset: 0xB38
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_a110c616(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_64276cf9
	Checksum: 0xE0338895
	Offset: 0xB98
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
	Namespace: namespace_64276cf9
	Checksum: 0x8B67A3BD
	Offset: 0xBE0
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
	Name: function_602b28e9
	Namespace: namespace_64276cf9
	Checksum: 0x35E46BCC
	Offset: 0xC90
	Size: 0x207
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(target cybercom::function_8fd8f5b1("cybercom_sensoryoverload"))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(isdefined(target.is_disabled) && target.is_disabled)
	{
		self cybercom::function_29bf9dee(target, 6);
		return 0;
	}
	if(isVehicle(target) || !isdefined(target.archetype))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(target.archetype != "human" && target.archetype != "human_riotshield" && target.archetype != "warlord")
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(IsActor(target) && target cybercom::function_78525729() != "stand" && target cybercom::function_78525729() != "crouch")
	{
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
	Namespace: namespace_64276cf9
	Checksum: 0x7053633B
	Offset: 0xEA0
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	return ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
}

/*
	Name: function_a110c616
	Namespace: namespace_64276cf9
	Checksum: 0x3FE204F4
	Offset: 0xF00
	Size: 0x2A3
	Parameters: 2
	Flags: Private
*/
function private function_a110c616(slot, weapon)
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
				self thread challenges::function_96ed590f("cybercom_uses_chaos");
				item.target thread sensory_overload(self);
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
		itemIndex = GetItemIndexFromRef("cybercom_sensoryoverload");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "assists", "statValue", fired);
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_58f5574a
	Namespace: namespace_64276cf9
	Checksum: 0xAD4D11E5
	Offset: 0x11B0
	Size: 0x2E1
	Parameters: 2
	Flags: None
*/
function function_58f5574a(target, var_9bc2efcb)
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
		self AnimScripted("ai_cybercom_anim", self.origin, self.angles, "ai_base_rifle_" + type + "_exposed_cybercom_activate", "normal", %root, 1, 0.3);
		self waittillmatch("hash_39fa7e38");
	}
	weapon = GetWeapon("gadget_sensory_overload");
	foreach(guy in validTargets)
	{
		if(!cybercom::function_7a7d1608(guy, weapon))
		{
			continue;
		}
		guy thread sensory_overload(self);
		wait(0.05);
	}
}

/*
	Name: sensory_overload
	Namespace: namespace_64276cf9
	Checksum: 0x2FCE7356
	Offset: 0x14A0
	Size: 0x7B7
	Parameters: 2
	Flags: None
*/
function sensory_overload()
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
	Name: function_58831b5a
	Namespace: namespace_64276cf9
	Checksum: 0xBE413C76
	Offset: 0x1C60
	Size: 0x8D
	Parameters: 6
	Flags: None
*/
function function_58831b5a(loops, attacker, weapon, variant, base, type)
{
	self endon("hash_8817762c");
	self thread function_53cfe88a();
	while(loops)
	{
		self function_e01b8059(attacker, weapon, variant, base, type);
		loops--;
	}
}

/*
	Name: function_e01b8059
	Namespace: namespace_64276cf9
	Checksum: 0xF79030D3
	Offset: 0x1CF8
	Size: 0x159
	Parameters: 5
	Flags: None
*/
function function_e01b8059(attacker, weapon, variant, base, type)
{
	self endon("death");
	self AnimScripted("sens_loop_anim", self.origin, self.angles, "ai_" + base + "_" + type + "_exposed_sens_overload_react_loop" + variant, "normal", %body, 1, 0.2);
	self thread cybercom::function_cf64f12c("damage_pain", "sens_loop_anim", 1, attacker, weapon);
	self thread cybercom::function_cf64f12c("breakout_overload_loop", "sens_loop_anim", 0, attacker, weapon);
	self thread cybercom::function_cf64f12c("notify_melee_damage", "sens_loop_anim", 1, attacker, weapon);
	self waittillmatch("hash_3b87dc07");
}

/*
	Name: function_53cfe88a
	Namespace: namespace_64276cf9
	Checksum: 0x6F8DE54
	Offset: 0x1E60
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_53cfe88a()
{
	self endon("death");
	wait(GetDvarFloat("scr_sensory_overload_loop_time", 4.7));
	self notify("hash_8817762c");
}

