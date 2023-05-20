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
	Name: function_c35e6aab
	Namespace: namespace_4bc37cb1
	Checksum: 0x99EC1590
	Offset: 0x570
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_4bc37cb1
	Checksum: 0x9F4B1A34
	Offset: 0x580
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(0, 2);
	level.var_175490fb.var_d88ac125 = function_a8fb77bd();
	level.var_175490fb.var_d88ac125.var_875da84b = &function_875da84b;
	level.var_175490fb.var_d88ac125.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_d88ac125.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_d88ac125.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_d88ac125.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_d88ac125.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_d88ac125.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_d88ac125.var_4135a1c4 = &function_4135a1c4;
	level.var_175490fb.var_d88ac125.var_acbe0f3f = 0;
}

/*
	Name: function_875da84b
	Namespace: namespace_4bc37cb1
	Checksum: 0xCE370C6E
	Offset: 0x720
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_4bc37cb1
	Checksum: 0x10C8C282
	Offset: 0x738
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_4bc37cb1
	Checksum: 0x976B2FE4
	Offset: 0x758
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_110c156a = function_4bd0142f("scr_servo_shortout_count", 2);
	if(self function_1a9006bd("cybercom_servoshortout") == 2)
	{
		self.var_175490fb.var_110c156a = function_4bd0142f("scr_servo_shortout_upgraded_count", 3);
	}
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_4bc37cb1
	Checksum: 0xADF1C12
	Offset: 0x858
	Size: 0x51
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
	self.var_175490fb.var_9d8e0758 = undefined;
	self.var_175490fb.var_c40accd3 = undefined;
}

/*
	Name: function_5d2fec30
	Namespace: namespace_4bc37cb1
	Checksum: 0x99EC1590
	Offset: 0x8B8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_4bc37cb1
	Checksum: 0xB9FDDF5
	Offset: 0x8C8
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self thread function_febcf072(var_2d11f419, var_dfcc01fd);
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_251e7cf
	Namespace: namespace_4bc37cb1
	Checksum: 0xFC70E955
	Offset: 0x928
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	self thread namespace_175490fb::function_d51412df(var_dfcc01fd);
	self.var_175490fb.var_301030f7 = undefined;
}

/*
	Name: function_4135a1c4
	Namespace: namespace_4bc37cb1
	Checksum: 0xC44C6A97
	Offset: 0x970
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function function_4135a1c4(var_2d11f419, var_dfcc01fd)
{
	if(!(isdefined(self.var_175490fb.var_301030f7) && self.var_175490fb.var_301030f7))
	{
		/#
			namespace_33b293fd::function_a7ee953(self.var_175490fb.var_2e20c9bd == var_dfcc01fd);
		#/
		self thread namespace_175490fb::function_2006f7d0(var_2d11f419, var_dfcc01fd, self.var_175490fb.var_110c156a);
		self.var_175490fb.var_301030f7 = 1;
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
function private function_602b28e9(var_b07228b6)
{
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_servoshortout"))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(isdefined(var_b07228b6.var_c79c5212) && var_b07228b6.var_c79c5212)
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 4);
		return 0;
	}
	if(isdefined(var_b07228b6.var_93b5a824) && var_b07228b6.var_93b5a824)
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 6);
		return 0;
	}
	if(!isdefined(var_b07228b6.var_8fc0e50e))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && var_b07228b6 namespace_175490fb::function_78525729() != "stand" && var_b07228b6 namespace_175490fb::function_78525729() != "crouch")
	{
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && var_b07228b6.var_8fc0e50e != "robot")
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(!function_8d0347b8(var_b07228b6) && !function_85e4c3b3(var_b07228b6))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && !var_b07228b6 function_8029a253() && !var_b07228b6 namespace_175490fb::function_421746e0())
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_8aac802c
	Namespace: namespace_4bc37cb1
	Checksum: 0xF135BFAD
	Offset: 0xC90
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	return function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
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
	level.var_175490fb.var_d88ac125.var_acbe0f3f++;
	return level.var_175490fb.var_d88ac125.var_acbe0f3f % 3;
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
	self function_39419ae5();
}

/*
	Name: function_d88ac125
	Namespace: namespace_4bc37cb1
	Checksum: 0x34E94970
	Offset: 0x1378
	Size: 0x367
	Parameters: 5
	Flags: None
*/
function function_d88ac125()
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
function function_b1101fa6(var_b07228b6, var_9bc2efcb)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(var_b07228b6))
	{
		return;
	}
	if(self.var_8fc0e50e != "human")
	{
		return;
	}
	var_36a66a95 = [];
	if(function_6e2770d8(var_b07228b6))
	{
		foreach(var_6b45b25e in var_b07228b6)
		{
			if(!function_602b28e9(var_6b45b25e))
			{
				continue;
			}
			var_36a66a95[var_36a66a95.size] = var_6b45b25e;
		}
	}
	else if(!function_602b28e9(var_b07228b6))
	{
		return;
	}
	var_36a66a95[var_36a66a95.size] = var_b07228b6;
	if(isdefined(var_9bc2efcb) && var_9bc2efcb)
	{
		var_fe311e35 = self namespace_175490fb::function_5e3d3aa();
		self function_13ffb22b("face default");
		self function_5d64f4b4("ai_cybercom_anim", self.var_722885f3, self.var_6ab6f4fd, "ai_base_rifle_" + var_fe311e35 + "_exposed_cybercom_activate");
		self waittillmatch("hash_39fa7e38");
	}
	var_dfcc01fd = function_c4d5ec1f("gadget_servo_shortout");
	foreach(var_6b45b25e in var_36a66a95)
	{
		if(!namespace_175490fb::function_7a7d1608(var_6b45b25e, var_dfcc01fd))
		{
			continue;
		}
		var_6b45b25e thread function_d88ac125(self);
		wait(0.05);
	}
}

