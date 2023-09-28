#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai\systems\destructible_character;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
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
#using scripts\shared\vehicles\_amws;

#namespace namespace_4bc37cb1;

/*
	Name: init
	Namespace: namespace_4bc37cb1
	Checksum: 0x99EC1590
	Offset: 0x570
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_4bc37cb1
	Checksum: 0x9F4B1A34
	Offset: 0x580
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function main()
{
	namespace_d00ec32::function_36b56038(0, 2);
	level.cybercom.servo_shortout = spawnstruct();
	level.cybercom.servo_shortout._is_flickering = &_is_flickering;
	level.cybercom.servo_shortout._on_flicker = &_on_flicker;
	level.cybercom.servo_shortout._on_give = &_on_give;
	level.cybercom.servo_shortout._on_take = &_on_take;
	level.cybercom.servo_shortout._on_connect = &_on_connect;
	level.cybercom.servo_shortout._on = &_on;
	level.cybercom.servo_shortout._off = &_off;
	level.cybercom.servo_shortout._is_primed = &_is_primed;
	level.cybercom.servo_shortout.var_acbe0f3f = 0;
}

/*
	Name: _is_flickering
	Namespace: namespace_4bc37cb1
	Checksum: 0xCE370C6E
	Offset: 0x720
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function _is_flickering(slot)
{
}

/*
	Name: _on_flicker
	Namespace: namespace_4bc37cb1
	Checksum: 0x10C8C282
	Offset: 0x738
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function _on_flicker(slot, weapon)
{
}

/*
	Name: _on_give
	Namespace: namespace_4bc37cb1
	Checksum: 0x976B2FE4
	Offset: 0x758
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function _on_give(slot, weapon)
{
	self.cybercom.var_110c156a = GetDvarInt("scr_servo_shortout_count", 2);
	if(self function_1a9006bd("cybercom_servoshortout") == 2)
	{
		self.cybercom.var_110c156a = GetDvarInt("scr_servo_shortout_upgraded_count", 3);
	}
	self.cybercom.var_9d8e0758 = &_get_valid_targets;
	self.cybercom.var_c40accd3 = &function_602b28e9;
	self thread cybercom::function_b5f4e597(weapon);
}

/*
	Name: _on_take
	Namespace: namespace_4bc37cb1
	Checksum: 0xADF1C12
	Offset: 0x858
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
	Namespace: namespace_4bc37cb1
	Checksum: 0x99EC1590
	Offset: 0x8B8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function _on_connect()
{
}

/*
	Name: _on
	Namespace: namespace_4bc37cb1
	Checksum: 0xB9FDDF5
	Offset: 0x8C8
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function _on(slot, weapon)
{
	self thread function_febcf072(slot, weapon);
	self _off(slot, weapon);
}

/*
	Name: _off
	Namespace: namespace_4bc37cb1
	Checksum: 0xFC70E955
	Offset: 0x928
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
	Namespace: namespace_4bc37cb1
	Checksum: 0xC44C6A97
	Offset: 0x970
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
	Namespace: namespace_4bc37cb1
	Checksum: 0xDDB3E14D
	Offset: 0xA20
	Size: 0x267
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(target)
{
	if(target cybercom::function_8fd8f5b1("cybercom_servoshortout"))
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
	if(!isdefined(target.archetype))
	{
		self cybercom::function_29bf9dee(target, 2);
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
	Namespace: namespace_4bc37cb1
	Checksum: 0xF135BFAD
	Offset: 0xC90
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private _get_valid_targets(weapon)
{
	return ArrayCombine(GetAITeamArray("axis"), GetAITeamArray("team3"), 0, 0);
}

/*
	Name: function_febcf072
	Namespace: namespace_4bc37cb1
	Checksum: 0xBE0267F1
	Offset: 0xCF0
	Size: 0x393
	Parameters: 2
	Flags: Private
*/
function function_febcf072()
{
System.Exception: Unexpected non-stack operation within jump expression
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁬‬​⁯‏‬‪⁬‪‌‌​‪‭‬‮‪‏⁮‌⁫‬⁫⁪‌⁭​⁮⁪⁮‫⁬⁫‮‏‪⁫⁪‎‪‮(ScriptOp )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁮⁬⁭‬⁬‌‪‌⁪‏‎⁯‏‏‬‪‎‏⁮⁫‪⁯​‏‪⁭‭‬‏⁯‍‪⁮⁭‬​⁯⁬‍⁮‮(Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁯‫‏⁪‎‍‫‏‌‏‍⁭‮⁬‏‭‎‍‬‎⁭‌⁯‬⁯‮⁪‌‭‭⁬‭⁪‭‍⁭​‫‍‍‮()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_a380ee8e
	Namespace: namespace_4bc37cb1
	Checksum: 0xB1EE8C00
	Offset: 0x1090
	Size: 0x37
	Parameters: 0
	Flags: Private
*/
function private function_a380ee8e()
{
	level.cybercom.servo_shortout.var_acbe0f3f++;
	return level.cybercom.servo_shortout.var_acbe0f3f % 3;
}

/*
	Name: function_350e74f7
	Namespace: namespace_4bc37cb1
	Checksum: 0xA3567179
	Offset: 0x10D0
	Size: 0x273
	Parameters: 3
	Flags: None
*/
function function_350e74f7()
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
	Name: function_a61788ff
	Namespace: namespace_4bc37cb1
	Checksum: 0x9ECF3DF
	Offset: 0x1350
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a61788ff()
{
	self stopsounds();
}

/*
	Name: servo_shortout
	Namespace: namespace_4bc37cb1
	Checksum: 0x34E94970
	Offset: 0x1378
	Size: 0x367
	Parameters: 5
	Flags: None
*/
function servo_shortout()
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
	Name: function_b1101fa6
	Namespace: namespace_4bc37cb1
	Checksum: 0xF5EF8E7A
	Offset: 0x16E8
	Size: 0x2B9
	Parameters: 2
	Flags: None
*/
function function_b1101fa6(target, var_9bc2efcb)
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
	weapon = GetWeapon("gadget_servo_shortout");
	foreach(guy in validTargets)
	{
		if(!cybercom::function_7a7d1608(guy, weapon))
		{
			continue;
		}
		guy thread servo_shortout(self);
		wait(0.05);
	}
}

