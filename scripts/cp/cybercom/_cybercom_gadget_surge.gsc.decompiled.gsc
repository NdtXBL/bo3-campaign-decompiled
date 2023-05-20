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
	Name: function_c35e6aab
	Namespace: namespace_63d98895
	Checksum: 0x99EC1590
	Offset: 0x648
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_63d98895
	Checksum: 0x9D5C16C2
	Offset: 0x658
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(0, 8);
	level.var_175490fb.var_d88281a1 = function_a8fb77bd();
	level.var_175490fb.var_d88281a1.var_875da84b = &function_875da84b;
	level.var_175490fb.var_d88281a1.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_d88281a1.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_d88281a1.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_d88281a1.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_d88281a1.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_d88281a1.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_d88281a1.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_875da84b
	Namespace: namespace_63d98895
	Checksum: 0x887AA569
	Offset: 0x7E0
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_63d98895
	Checksum: 0x64DE275
	Offset: 0x7F8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_63d98895
	Checksum: 0xA3A07063
	Offset: 0x818
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_110c156a = function_4bd0142f("scr_surge_target_count", 1);
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_63d98895
	Checksum: 0x4F3FF651
	Offset: 0x8C0
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
	Namespace: namespace_63d98895
	Checksum: 0x99EC1590
	Offset: 0x920
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_63d98895
	Checksum: 0xECB813A1
	Offset: 0x930
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self thread function_d015f498(var_2d11f419, var_dfcc01fd);
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_251e7cf
	Namespace: namespace_63d98895
	Checksum: 0xD031C94B
	Offset: 0x990
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
	Namespace: namespace_63d98895
	Checksum: 0xC795F42A
	Offset: 0x9D8
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
		self thread namespace_175490fb::function_2006f7d0(var_2d11f419, var_dfcc01fd, function_4bd0142f("scr_surge_target_count", 1));
		self.var_175490fb.var_301030f7 = 1;
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
function private function_602b28e9(var_b07228b6, var_1ce98ab1)
{
	if(!isdefined(var_1ce98ab1))
	{
		var_1ce98ab1 = 0;
	}
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_surge"))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
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
		if(var_b07228b6.var_8fc0e50e == "human" && (isdefined(var_1ce98ab1) && var_1ce98ab1))
		{
		}
		else
		{
			self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
			return 0;
		}
	}
	if(!function_8d0347b8(var_b07228b6) && !function_85e4c3b3(var_b07228b6))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(function_85e4c3b3(var_b07228b6))
	{
		if(!isdefined(var_b07228b6.var_8fc0e50e))
		{
			self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
			return 0;
		}
		switch(var_b07228b6.var_8fc0e50e)
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
				self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
				return 0;
			}
		}
	}
	if(function_8d0347b8(var_b07228b6) && !var_b07228b6 function_8029a253() && !var_b07228b6 namespace_175490fb::function_421746e0())
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_8aac802c
	Namespace: namespace_63d98895
	Checksum: 0xFEC0FED2
	Offset: 0xD80
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	return function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
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
function private function_d015f498(var_2d11f419, var_dfcc01fd)
{
	var_668a3301 = self function_1a9006bd("cybercom_surge") == 2;
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
				var_c5b0e858.var_b07228b6 thread function_311d046a(var_668a3301, 0, self, var_dfcc01fd);
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
		var_1630584c = function_e967a021("cybercom_surge");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "assists", "statValue", var_a7491a97);
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
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
function private function_dd7268a3(var_668a3301, var_1ce98ab1, var_a0ad4f34)
{
	if(!isdefined(var_668a3301))
	{
		var_668a3301 = 0;
	}
	if(!isdefined(var_1ce98ab1))
	{
		var_1ce98ab1 = 0;
	}
	self endon("hash_128f8789");
	self.var_c584775c = 1;
	if(var_668a3301)
	{
	}
	else
	{
	}
	self namespace_71e9cb84::function_74d6b22f("cybercom_surge", 1);
	if(!var_668a3301)
	{
		function_eac31668(self.var_722885f3, 128, 300, 100, self, "MOD_EXPLOSIVE");
		if(function_5b49d38c(self))
		{
			self function_2992720d();
		}
	}
	else if(self.var_8fc0e50e == "turret")
	{
		function_eac31668(self.var_722885f3, 128, 300, 100, self, "MOD_EXPLOSIVE");
		if(function_5b49d38c(self))
		{
			self function_2992720d();
		}
		return;
	}
	self notify("hash_d88281a1", var_a0ad4f34, 2);
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
function private function_311d046a(var_668a3301, var_1ce98ab1, var_a0ad4f34, var_dfcc01fd)
{
	if(!isdefined(var_668a3301))
	{
		var_668a3301 = 0;
	}
	if(!isdefined(var_1ce98ab1))
	{
		var_1ce98ab1 = 0;
	}
	self endon("hash_128f8789");
	self notify("hash_f8c5dd60", var_dfcc01fd, var_a0ad4f34);
	var_dfcc01fd = function_c4d5ec1f("gadget_surge");
	if(function_85e4c3b3(self))
	{
		self thread function_dd7268a3(var_668a3301, var_1ce98ab1, var_a0ad4f34);
		return;
	}
	self.var_c584775c = 1;
	self.var_93b5a824 = 1;
	self.var_3a90f16b = self.var_47c252e3;
	if(self.var_8fc0e50e == "human" || self namespace_d84e54db::function_a0a4c1f1("rogue_control") != "level_3")
	{
		if(var_668a3301)
		{
		}
		else
		{
		}
		self namespace_71e9cb84::function_74d6b22f("cybercom_surge", 1);
	}
	if(self namespace_175490fb::function_421746e0() || self.var_8fc0e50e == "human")
	{
		if(isdefined(var_a0ad4f34))
		{
		}
		else
		{
		}
		self function_2992720d(self.var_722885f3, undefined, var_a0ad4f34, 2);
		return;
	}
	self function_e4f42bf7(var_a0ad4f34, var_dfcc01fd, function_f3087faa("scr_surge_react_time", 0.45));
	self function_e11ce512();
	self function_d124b0e3(self.var_722885f3);
	if(var_668a3301)
	{
		self namespace_71e9cb84::function_74d6b22f("cybercom_setiffname", 2);
		self namespace_d84e54db::function_ceb883cd("rogue_allow_pregib", 0);
		self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
		self namespace_d84e54db::function_ceb883cd("rogue_control", "level_3");
		self.var_3e94206a = "allies";
		self namespace_71e9cb84::function_74d6b22f("robot_mind_control", 0);
		self namespace_71e9cb84::function_74d6b22f("robot_lights", 3);
		self.var_175e6df4 = 1;
		self.var_7dfaf62 = 32;
		var_467b6a6d = function_8aac802c();
		function_81403b2f(var_467b6a6d, self);
		var_b07228b6 = self function_4d02229e(var_467b6a6d);
		if(isdefined(var_b07228b6))
		{
			self thread function_a405f422();
			self thread function_b8a5c1a6();
			while(isdefined(var_b07228b6) && (!isdefined(self.var_b92dd31d) && self.var_b92dd31d))
			{
				self function_d124b0e3(function_eed6dab7(var_b07228b6.var_722885f3, 200));
				wait(0.05);
			}
		}
	}
	self thread function_2a105d32(var_a0ad4f34);
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
	self endon("hash_128f8789");
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
function function_b8a5c1a6(var_a0ad4f34)
{
	self endon("hash_2a105d32");
	self waittill("hash_128f8789");
	self thread function_2a105d32(var_a0ad4f34);
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
	self endon("hash_128f8789");
	var_a4ad846c = GetTime();
	while(1)
	{
		if(isdefined(self.var_39abf31) && function_cb3d1c9b(self.var_722885f3, self.var_39abf31) <= self.var_7dfaf62 * self.var_7dfaf62)
		{
			break;
		}
		if(GetTime() - var_a4ad846c / 1000 >= function_4bd0142f("scr_surge_seek_time", 8))
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
function private function_d007b404(var_668a3301, var_6050ab17, var_a0ad4f34)
{
	self endon("hash_128f8789");
	var_6050ab17 endon("hash_128f8789");
	var_f2b2a3ee = function_cb3d1c9b(var_6050ab17.var_722885f3, self.var_722885f3) / 128 * 128 * function_f3087faa("scr_surge_arc_travel_time", 0.05);
	self thread function_abaf736(var_6050ab17, var_f2b2a3ee);
	wait(var_f2b2a3ee);
	if(function_85e4c3b3(var_6050ab17))
	{
		var_6050ab17 thread function_dd7268a3(var_668a3301, 1, var_a0ad4f34);
	}
	else
	{
		var_6050ab17 thread function_311d046a(var_668a3301, 1, var_a0ad4f34);
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
function private function_3e26e5ce(var_668a3301, var_a0ad4f34)
{
	self endon("hash_128f8789");
	var_657b1773 = self function_3e621fd5(self.var_722885f3 + VectorScale((0, 0, 1), 50), function_4bd0142f("scr_surge_radius", 220), function_4bd0142f("scr_surge_count", 4));
	foreach(var_6050ab17 in var_657b1773)
	{
		if(var_6050ab17 == self)
		{
			continue;
		}
		self thread function_d007b404(var_668a3301, var_6050ab17, var_a0ad4f34);
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
function private function_3e621fd5(var_722885f3, var_7d15e2f8, var_aaeec8c5)
{
	var_dfcc01fd = function_c4d5ec1f("gadget_surge");
	var_941ad982 = var_7d15e2f8 * var_7d15e2f8;
	var_657b1773 = [];
	var_7a650e64 = namespace_82b91a51::function_190fd57(var_722885f3, function_8aac802c());
	foreach(var_6050ab17 in var_7a650e64)
	{
		if(!isdefined(var_6050ab17))
		{
			continue;
		}
		if(function_cb3d1c9b(var_722885f3, var_6050ab17.var_722885f3) > var_941ad982)
		{
			continue;
		}
		if(!namespace_175490fb::function_7a7d1608(var_6050ab17, var_dfcc01fd, 0))
		{
			continue;
		}
		if(!function_602b28e9(var_6050ab17, 1))
		{
			continue;
		}
		if(isdefined(var_6050ab17.var_e4faf67c) && var_6050ab17.var_e4faf67c)
		{
			continue;
		}
		if(!function_7178c13c(var_722885f3, var_6050ab17.var_722885f3 + VectorScale((0, 0, 1), 50), 0, self))
		{
			continue;
		}
		var_657b1773[var_657b1773.size] = var_6050ab17;
		if(isdefined(var_aaeec8c5))
		{
			if(var_657b1773.size >= var_aaeec8c5)
			{
				break;
			}
		}
	}
	return var_657b1773;
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
function private function_abaf736(var_b07228b6, var_f2b2a3ee)
{
	if(!isdefined(self) || !isdefined(var_b07228b6))
	{
		return;
	}
	var_722885f3 = self.var_722885f3 + VectorScale((0, 0, 1), 40);
	if(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "robot")
	{
		var_722885f3 = self function_d48f2ab3("J_SpineUpper");
	}
	var_3e7e6e3f = function_9b7fda5e("script_model", var_722885f3);
	var_3e7e6e3f function_e48f905e("tag_origin");
	var_3e7e6e3f namespace_71e9cb84::function_74d6b22f("cybercom_surge", 1);
	if(function_85e4c3b3(var_b07228b6))
	{
	}
	else
	{
	}
	var_b31a6ddf = "J_SpineUpper";
	var_3e7e6e3f thread function_d09562d9(var_b07228b6, var_f2b2a3ee, var_b31a6ddf);
	wait(var_f2b2a3ee);
	wait(0.25);
	var_3e7e6e3f function_dc8c8404();
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
function private function_d09562d9(var_b07228b6, var_60db70fa, var_b31a6ddf)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self notify("hash_d09562d9");
	self endon("hash_d09562d9");
	if(!isdefined(var_b07228b6))
	{
		return;
	}
	if(!isdefined(var_b31a6ddf))
	{
		var_b31a6ddf = "tag_origin";
	}
	if(var_60db70fa <= 0)
	{
		var_60db70fa = 1;
	}
	var_c91531f1 = var_b07228b6 function_d48f2ab3(var_b31a6ddf);
	if(!isdefined(var_c91531f1))
	{
		var_c91531f1 = var_b07228b6.var_722885f3;
	}
	var_1d6d6b05 = function_b6b79a0(var_60db70fa / 0.05);
	while(isdefined(var_b07228b6) && var_1d6d6b05 > 0)
	{
		var_2a97d9fd = function_7d15e2f8(self.var_722885f3, var_c91531f1);
		var_86b53547 = var_2a97d9fd / var_1d6d6b05;
		var_de448ad = function_f679a325(var_c91531f1 - self.var_722885f3) * var_86b53547;
		/#
		#/
		var_1d6d6b05--;
		self function_a96a2721(self.var_722885f3 + var_de448ad, 0.05);
		self waittill("hash_a21db68a");
		var_c91531f1 = var_b07228b6 function_d48f2ab3(var_b31a6ddf);
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
function function_9eb4d79d(var_b07228b6, var_9bc2efcb, var_668a3301)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(var_668a3301))
	{
		var_668a3301 = 0;
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
	var_dfcc01fd = function_c4d5ec1f("gadget_surge");
	foreach(var_6b45b25e in var_36a66a95)
	{
		if(!namespace_175490fb::function_7a7d1608(var_6b45b25e, var_dfcc01fd))
		{
			continue;
		}
		var_6b45b25e thread function_311d046a(self, var_668a3301);
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
function private function_4d02229e(var_657b1773, var_791225df)
{
	if(!isdefined(var_791225df))
	{
		var_791225df = 3;
	}
	while(var_791225df > 0 && var_657b1773.size > 0)
	{
		var_791225df--;
		var_b4d58996 = function_e7bdc1a1(self.var_722885f3, var_657b1773);
		if(!isdefined(var_b4d58996))
		{
			return;
		}
		var_6a3f1ca1 = 0;
		var_d5b210fc = function_54f69de9(var_b4d58996.var_722885f3, 0, 128, 128, 20, self);
		if(var_d5b210fc.var_72254e15.size > 0)
		{
			var_6a3f1ca1 = self function_4a26559(self.var_722885f3, var_d5b210fc.var_72254e15[0].var_722885f3, 1, 0);
		}
		if(!var_6a3f1ca1)
		{
			function_81403b2f(var_657b1773, var_b4d58996, 0);
			var_b4d58996 = undefined;
			continue;
		}
		else
		{
			return var_b4d58996;
		}
	}
}

