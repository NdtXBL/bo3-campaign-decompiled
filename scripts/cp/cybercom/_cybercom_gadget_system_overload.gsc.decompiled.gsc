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
	Name: function_c35e6aab
	Namespace: namespace_528b4613
	Checksum: 0x99EC1590
	Offset: 0x590
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_528b4613
	Checksum: 0xFA91966B
	Offset: 0x5A0
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(0, 1);
	level.var_175490fb.var_30553c67 = function_a8fb77bd();
	level.var_175490fb.var_30553c67.var_875da84b = &function_875da84b;
	level.var_175490fb.var_30553c67.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_30553c67.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_30553c67.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_30553c67.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_30553c67.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_30553c67.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_30553c67.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_875da84b
	Namespace: namespace_528b4613
	Checksum: 0xB8B6B934
	Offset: 0x728
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_528b4613
	Checksum: 0x1056D238
	Offset: 0x740
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_528b4613
	Checksum: 0x326F4A20
	Offset: 0x760
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_110c156a = function_4bd0142f("scr_system_overload_count", 3);
	self.var_175490fb.var_2515cbbf = function_f3087faa("scr_system_overload_lifetime", 6.3) * 1000;
	if(self function_1a9006bd("cybercom_systemoverload") == 2)
	{
		self.var_175490fb.var_110c156a = function_4bd0142f("scr_system_overload_upgraded_count", 5);
		self.var_175490fb.var_2515cbbf = function_f3087faa("scr_system_overload_upgraded_lifetime", 6.3) * 1000;
	}
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_528b4613
	Checksum: 0xEC35A07C
	Offset: 0x8C0
	Size: 0x61
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
	self.var_175490fb.var_301030f7 = undefined;
	self.var_175490fb.var_9d8e0758 = undefined;
	self.var_175490fb.var_c40accd3 = undefined;
}

/*
	Name: function_5d2fec30
	Namespace: namespace_528b4613
	Checksum: 0x99EC1590
	Offset: 0x930
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_528b4613
	Checksum: 0x3EBDA224
	Offset: 0x940
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self thread function_35d3d1a2(var_2d11f419, var_dfcc01fd);
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_251e7cf
	Namespace: namespace_528b4613
	Checksum: 0xD572B556
	Offset: 0x9A0
	Size: 0x45
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	self thread namespace_175490fb::function_d51412df(var_dfcc01fd);
	self.var_175490fb.var_301030f7 = undefined;
	self notify("hash_8e37d611");
}

/*
	Name: function_4135a1c4
	Namespace: namespace_528b4613
	Checksum: 0x49BDBE16
	Offset: 0x9F0
	Size: 0xAF
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
		self notify("hash_eec19461");
		self thread namespace_175490fb::function_2006f7d0(var_2d11f419, var_dfcc01fd, self.var_175490fb.var_110c156a);
		self.var_175490fb.var_301030f7 = 1;
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
function private function_602b28e9(var_b07228b6)
{
	if(!isdefined(var_b07228b6))
	{
		return 0;
	}
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_systemoverload"))
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
	Namespace: namespace_528b4613
	Checksum: 0x6B564225
	Offset: 0xCE8
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	return function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
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
function private function_35d3d1a2(var_2d11f419, var_dfcc01fd)
{
	var_c95a13c6 = 0;
	var_a7491a97 = 0;
	foreach(var_c5b0e858 in self.var_175490fb.var_d1460543)
	{
		if(isdefined(var_c5b0e858.var_b07228b6) && (isdefined(var_c5b0e858.var_cd83ba7b) && var_c5b0e858.var_cd83ba7b))
		{
			if(var_c5b0e858.var_cd83ba7b == 1)
			{
				if(!namespace_175490fb::function_7a7d1608(var_c5b0e858.var_b07228b6, var_dfcc01fd))
				{
					continue;
				}
				self thread namespace_f74b04eb::function_96ed590f("cybercom_uses_control");
				var_c5b0e858.var_b07228b6 thread function_30553c67(self, undefined, var_dfcc01fd);
				var_a7491a97++;
				continue;
			}
			if(var_c5b0e858.var_cd83ba7b == 2)
			{
				var_c95a13c6++;
			}
		}
	}
	if(var_c95a13c6 && !var_a7491a97)
	{
		self.var_175490fb.var_d1460543 = [];
		self namespace_175490fb::function_29bf9dee(undefined, 1, 0);
	}
	namespace_175490fb::function_adc40f11(var_dfcc01fd, var_a7491a97);
	if(var_a7491a97 && function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_systemoverload");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "assists", "statValue", var_a7491a97);
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
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
function private function_b4223599(var_a0ad4f34, var_dfcc01fd)
{
	if(isdefined(self.var_7c04bee3) && GetTime() < self.var_7c04bee3)
	{
		return;
	}
	self namespace_71e9cb84::function_74d6b22f("cybercom_sysoverload", 1);
	self function_39419ae5();
	var_f9348fda = 5;
	if(isdefined(self.var_8fc0e50e))
	{
		if(self.var_8fc0e50e == "wasp")
		{
			var_f9348fda = 25;
		}
	}
	self function_c3945cd5(var_f9348fda, self.var_722885f3, var_a0ad4f34, undefined, "none", "MOD_GRENADE_SPLASH", 0, function_c4d5ec1f("emp_grenade"), -1, 1);
	self.var_7c04bee3 = GetTime() + function_4bd0142f("scr_system_overload_vehicle_cooldown_seconds", 5) * 1000;
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
function function_5839c4ac(var_b07228b6, var_9bc2efcb, var_ba115ce0)
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
	var_dfcc01fd = function_c4d5ec1f("gadget_system_overload");
	foreach(var_6b45b25e in var_36a66a95)
	{
		if(!namespace_175490fb::function_7a7d1608(var_6b45b25e, var_dfcc01fd))
		{
			continue;
		}
		var_6b45b25e thread function_30553c67(self, var_ba115ce0);
		wait(0.05);
	}
}

/*
	Name: function_30553c67
	Namespace: namespace_528b4613
	Checksum: 0x7EDE5A05
	Offset: 0x1408
	Size: 0x715
	Parameters: 4
	Flags: None
*/
function function_30553c67()
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
	self endon("hash_128f8789");
	wait(function_f3087faa("scr_system_overload_loop_time", 5.9));
	self notify("hash_355afb47");
}

