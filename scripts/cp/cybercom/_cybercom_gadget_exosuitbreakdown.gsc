#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
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

#namespace namespace_491e7803;

/*
	Name: init
	Namespace: namespace_491e7803
	Checksum: 0x99EC1590
	Offset: 0x5A0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_491e7803
	Checksum: 0xE15CE59D
	Offset: 0x5B0
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(0, 4);
	level.cybercom.exo_breakdown = spawnstruct();
	level.cybercom.exo_breakdown._is_flickering = &_is_flickering;
	level.cybercom.exo_breakdown._on_flicker = &_on_flicker;
	level.cybercom.exo_breakdown._on_give = &_on_give;
	level.cybercom.exo_breakdown._on_take = &_on_take;
	level.cybercom.exo_breakdown._on_connect = &_on_connect;
	level.cybercom.exo_breakdown._on = &_on;
	level.cybercom.exo_breakdown._off = &_off;
	level.cybercom.exo_breakdown._is_primed = &_is_primed;
}

/*
	Name: _is_flickering
	Namespace: namespace_491e7803
	Checksum: 0x6246284F
	Offset: 0x738
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_491e7803
	Checksum: 0x5107C92D
	Offset: 0x750
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_491e7803
	Checksum: 0xC478E786
	Offset: 0x770
	Size: 0x1C3
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = GetDvarInt("scr_exo_breakdown_count", 1);
	self.cybercom.var_1360b9f1 = GetDvarInt("scr_exo_breakdown_loops", 2);
	if(self function_1a9006bd("cybercom_exosuitbreakdown") == 2)
	{
		self.cybercom.var_110c156a = GetDvarInt("scr_exo_breakdown_upgraded_count", 2);
	}
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
	self cybercom::function_8257bcb3("base_rifle_stn", 8);
	self cybercom::function_8257bcb3("base_rifle_crc", 2);
	self cybercom::function_8257bcb3("fem_rifle_stn", 8);
	self cybercom::function_8257bcb3("fem_rifle_crc", 2);
	self cybercom::function_8257bcb3("riotshield", 2);
}

/*
	Name: _on_take
	Namespace: namespace_491e7803
	Checksum: 0xD78B664E
	Offset: 0x940
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
	Namespace: namespace_491e7803
	Checksum: 0x99EC1590
	Offset: 0x9A0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_491e7803
	Checksum: 0xFB7C9833
	Offset: 0x9B0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_dab563f4(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_491e7803
	Checksum: 0x7EEF657C
	Offset: 0xA10
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
	Namespace: namespace_491e7803
	Checksum: 0x45175BFB
	Offset: 0xA58
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
	Namespace: namespace_491e7803
	Checksum: 0x7B4492C0
	Offset: 0xB08
	Size: 0x207
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(target cybercom::function_8fd8f5b1("cybercom_exosuitbreakdown"))
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
	if(isVehicle(target))
	{
		self cybercom::function_29bf9dee(target, 2);
		return 0;
	}
	if(!isdefined(target.archetype) || (target.archetype != "human" && target.archetype != "human_riotshield" && target.archetype != "warlord"))
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
	Namespace: namespace_491e7803
	Checksum: 0xE7D8B03D
	Offset: 0xD18
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	return ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
}

/*
	Name: function_dab563f4
	Namespace: namespace_491e7803
	Checksum: 0x6B61B0F0
	Offset: 0xD78
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_dab563f4(slot, weapon)
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
				item.target thread function_585970ba(self);
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
		itemIndex = GetItemIndexFromRef("cybercom_exosuitbreakdown");
		if(isdefined(itemIndex))
		{
			self AddDStat("ItemStats", itemIndex, "stats", "assists", "statValue", fired);
			self AddDStat("ItemStats", itemIndex, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_2e537afb
	Namespace: namespace_491e7803
	Checksum: 0xF2C3C05E
	Offset: 0x1028
	Size: 0x2B9
	Parameters: 2
	Flags: None
*/
function function_2e537afb(target, var_9bc2efcb)
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
	weapon = GetWeapon("gadget_exo_breakdown");
	foreach(guy in validTargets)
	{
		if(!cybercom::function_7a7d1608(guy, weapon))
		{
			continue;
		}
		guy thread function_585970ba(self);
		wait(0.05);
	}
}

/*
	Name: function_69246d49
	Namespace: namespace_491e7803
	Checksum: 0xB9CD7E04
	Offset: 0x12F0
	Size: 0x109
	Parameters: 3
	Flags: Private
*/
function function_69246d49()
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
	Name: function_585970ba
	Namespace: namespace_491e7803
	Checksum: 0xE3C24FB4
	Offset: 0x1408
	Size: 0x58D
	Parameters: 1
	Flags: Private
*/
function function_585970ba()
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
	Namespace: namespace_491e7803
	Checksum: 0xC85B3BFB
	Offset: 0x19A0
	Size: 0x8D
	Parameters: 6
	Flags: None
*/
function function_58831b5a(loops, attacker, weapon, variant, base, type)
{
	self endon("hash_614ee876");
	self thread function_53cfe88a();
	while(loops)
	{
		self function_e01b8059(attacker, weapon, variant, base, type);
		loops--;
	}
}

/*
	Name: function_e01b8059
	Namespace: namespace_491e7803
	Checksum: 0xA5A0A8FF
	Offset: 0x1A38
	Size: 0x129
	Parameters: 5
	Flags: None
*/
function function_e01b8059(attacker, weapon, variant, base, type)
{
	self endon("death");
	self AnimScripted("exo_loop_anim", self.origin, self.angles, "ai_" + base + "_" + type + "_exposed_suit_overload_react_loop" + variant, "normal", %body, 1, 0.2);
	self thread cybercom::function_cf64f12c("damage_pain", "exo_loop_anim", 1, attacker, weapon);
	self thread cybercom::function_cf64f12c("breakout_exo_loop", "exo_loop_anim", 0, attacker, weapon);
	self waittillmatch("hash_346e71c6");
}

/*
	Name: function_53cfe88a
	Namespace: namespace_491e7803
	Checksum: 0x923BB189
	Offset: 0x1B70
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_53cfe88a()
{
	self endon("death");
	wait(GetDvarFloat("scr_exo_breakdown_loop_time", 4.2));
	self notify("hash_614ee876");
}

