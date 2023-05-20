#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai\systems\blackboard;
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
#using scripts\shared\vehicle_ai_shared;

#namespace namespace_a56eec64;

/*
	Name: function_c35e6aab
	Namespace: namespace_a56eec64
	Checksum: 0x99EC1590
	Offset: 0x7B0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_a56eec64
	Checksum: 0xCCEBBC3A
	Offset: 0x7C0
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(2, 4);
	level.var_175490fb.var_d0eecac8 = function_a8fb77bd();
	level.var_175490fb.var_d0eecac8.var_875da84b = &function_875da84b;
	level.var_175490fb.var_d0eecac8.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_d0eecac8.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_d0eecac8.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_d0eecac8.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_d0eecac8.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_d0eecac8.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_d0eecac8.var_4135a1c4 = &function_4135a1c4;
	level.var_175490fb.var_d0eecac8.var_d4d82e00 = function_84970cc4("j_shoulder_le_rot", "j_elbow_le_rot", "j_shoulder_ri_rot", "j_elbow_ri_rot", "j_hip_le", "j_knee_le", "j_hip_ri", "j_knee_ri", "j_head", "j_mainroot");
	level.var_175490fb.var_d0eecac8.var_81f1fce4 = function_84970cc4("frag_grenade_notrail", "emp_grenade");
}

/*
	Name: function_875da84b
	Namespace: namespace_a56eec64
	Checksum: 0xF7CB068E
	Offset: 0x9F8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_a56eec64
	Checksum: 0x6260790C
	Offset: 0xA10
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_a56eec64
	Checksum: 0x20AFF044
	Offset: 0xA30
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_110c156a = function_4bd0142f("scr_immolation_count", 1);
	if(self function_1a9006bd("cybercom_immolation") == 2)
	{
		self.var_175490fb.var_110c156a = function_4bd0142f("scr_immolation_upgraded_count", 1);
	}
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_a56eec64
	Checksum: 0x48268750
	Offset: 0xB30
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
	Namespace: namespace_a56eec64
	Checksum: 0x99EC1590
	Offset: 0xB90
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_a56eec64
	Checksum: 0xAAD1D4E3
	Offset: 0xBA0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self thread function_24d3045f(var_2d11f419, var_dfcc01fd);
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_251e7cf
	Namespace: namespace_a56eec64
	Checksum: 0x72CEF02F
	Offset: 0xC00
	Size: 0x45
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	self thread namespace_175490fb::function_d51412df(var_dfcc01fd);
	self.var_175490fb.var_301030f7 = undefined;
	self notify("hash_c74ed649");
}

/*
	Name: function_4135a1c4
	Namespace: namespace_a56eec64
	Checksum: 0x501B5D5C
	Offset: 0xC50
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
		self notify("hash_9cefb9d9");
		self thread namespace_175490fb::function_2006f7d0(var_2d11f419, var_dfcc01fd, self.var_175490fb.var_110c156a);
		self.var_175490fb.var_301030f7 = 1;
	}
}

/*
	Name: function_602b28e9
	Namespace: namespace_a56eec64
	Checksum: 0x550BE
	Offset: 0xD08
	Size: 0x307
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(var_b07228b6)
{
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_immolation"))
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
		return 0;
	}
	if(function_85e4c3b3(var_b07228b6) && !var_b07228b6 function_a2f96b90())
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(!function_8d0347b8(var_b07228b6) && !function_85e4c3b3(var_b07228b6))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && (var_b07228b6.var_8fc0e50e != "robot" && var_b07228b6.var_8fc0e50e != "human" && var_b07228b6.var_8fc0e50e != "human_riotshield"))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(var_b07228b6.var_8fc0e50e == "human" || var_b07228b6.var_8fc0e50e == "human_riotshield" && function_65f192a6(self))
	{
		if(!self function_1a9006bd("cybercom_immolation") == 2)
		{
			self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
			return 0;
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
	Namespace: namespace_a56eec64
	Checksum: 0x28541BBD
	Offset: 0x1018
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	return function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
}

/*
	Name: function_24d3045f
	Namespace: namespace_a56eec64
	Checksum: 0x28055EF7
	Offset: 0x1078
	Size: 0x313
	Parameters: 2
	Flags: Private
*/
function private function_24d3045f(var_2d11f419, var_dfcc01fd)
{
	var_668a3301 = self function_1a9006bd("cybercom_immolation") == 2;
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
				self thread namespace_f74b04eb::function_96ed590f("cybercom_uses_chaos");
				var_c5b0e858.var_b07228b6.var_23ebae6c = var_c5b0e858.var_b07228b6.var_722885f3;
				var_c5b0e858.var_b07228b6 thread function_9e65a7de(self, var_668a3301, 0, var_dfcc01fd);
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
		var_1630584c = function_e967a021("cybercom_immolation");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "kills", "statValue", var_a7491a97);
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_a2f96b90
	Namespace: namespace_a56eec64
	Checksum: 0xD6DAF44A
	Offset: 0x1398
	Size: 0x8D
	Parameters: 0
	Flags: Private
*/
function private function_a2f96b90()
{
	if(!isdefined(self.var_9d34dca7))
	{
		return 0;
	}
	if(function_5dbf7eca(self.var_9d34dca7, "amws"))
	{
		return 1;
	}
	if(function_5dbf7eca(self.var_9d34dca7, "wasp"))
	{
		return 1;
	}
	if(function_5dbf7eca(self.var_9d34dca7, "raps"))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_972e7bf2
	Namespace: namespace_a56eec64
	Checksum: 0xC4AFA14F
	Offset: 0x1430
	Size: 0xC3
	Parameters: 3
	Flags: Private
*/
function private function_972e7bf2(var_a0ad4f34, var_668a3301, var_b3c43f8)
{
	if(!isdefined(var_b3c43f8))
	{
		var_b3c43f8 = 0;
	}
	/#
		namespace_33b293fd::function_a7ee953(self function_a2f96b90());
	#/
	self namespace_71e9cb84::function_74d6b22f("cybercom_immolate", 1);
	self.var_93b5a824 = 1;
	if(!var_b3c43f8)
	{
		wait(function_72a94f05(0, 0.75));
	}
	self thread namespace_72ee5da4::function_587b6deb(var_a0ad4f34);
}

/*
	Name: function_9e65a7de
	Namespace: namespace_a56eec64
	Checksum: 0x3DBF409B
	Offset: 0x1500
	Size: 0x17B
	Parameters: 4
	Flags: Private
*/
function function_9e65a7de()
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
	Name: function_1ed56488
	Namespace: namespace_a56eec64
	Checksum: 0xCF210E22
	Offset: 0x1688
	Size: 0x12B
	Parameters: 4
	Flags: None
*/
function function_1ed56488()
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
	Name: function_ce51c2a1
	Namespace: namespace_a56eec64
	Checksum: 0xEBEB8DB3
	Offset: 0x17C0
	Size: 0x4AB
	Parameters: 3
	Flags: None
*/
function function_ce51c2a1()
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
	Name: function_f8956516
	Namespace: namespace_a56eec64
	Checksum: 0x412B751C
	Offset: 0x1C78
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function function_f8956516()
{
	self endon("hash_128f8789");
	self waittillmatch("hash_5270341e");
	self function_356a1c2a("gdt_immolation_human_countdown");
	self notify("hash_3c655080", "specialpain");
}

/*
	Name: function_c7fa793a
	Namespace: namespace_a56eec64
	Checksum: 0x76293F08
	Offset: 0x1CD8
	Size: 0x523
	Parameters: 3
	Flags: None
*/
function function_c7fa793a()
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
	Name: function_369d3494
	Namespace: namespace_a56eec64
	Checksum: 0x9DB6324E
	Offset: 0x2208
	Size: 0x53
	Parameters: 0
	Flags: Private
*/
function private function_369d3494()
{
	var_8fc0e50e = self.var_8fc0e50e;
	self waittill("hash_c67510f3", var_1e25855);
	var_1e25855 namespace_71e9cb84::function_74d6b22f("arch_actor_fire_fx", 2);
}

/*
	Name: function_843196fe
	Namespace: namespace_a56eec64
	Checksum: 0x9B9C19B0
	Offset: 0x2268
	Size: 0x2C7
	Parameters: 3
	Flags: Private
*/
function private function_843196fe(var_6b45b25e, var_9515bc6d, var_d9346487)
{
	if(!isdefined(var_9515bc6d))
	{
		var_9515bc6d = function_4bd0142f("scr_immolation_gchance", 100);
	}
	self endon("hash_643a7daf");
	var_c8a3ac29 = var_6b45b25e function_ed100874();
	if(!isdefined(var_c8a3ac29))
	{
		var_c8a3ac29 = var_6b45b25e.var_722885f3 + VectorScale((0, 0, 1), 50);
	}
	var_f461b5d = self function_ecf27a98(function_c4d5ec1f("frag_grenade_notrail"), var_c8a3ac29, (0, 0, 0), 0);
	if(!isdefined(var_d9346487))
	{
		var_d9346487 = function_26299103(function_4bd0142f("scr_immolation_gcount", 3)) + 1;
	}
	while(var_d9346487 && isdefined(self) && isdefined(var_6b45b25e))
	{
		wait(function_72a94f05(function_f3087faa("scr_immolation_grenade_wait_timeMIN", 0.3), function_f3087faa("scr_immolation_grenade_wait_timeMAX", 0.9)));
		var_d9346487--;
		if(function_26299103(100) > var_9515bc6d)
		{
			continue;
		}
		var_f51eccb0 = level.var_175490fb.var_d0eecac8.var_81f1fce4[function_26299103(level.var_175490fb.var_d0eecac8.var_81f1fce4.size)];
		/#
		#/
		if(isdefined(var_6b45b25e))
		{
			var_c8a3ac29 = var_6b45b25e function_ed100874();
			if(!isdefined(var_c8a3ac29))
			{
				var_c8a3ac29 = var_6b45b25e.var_722885f3 + VectorScale((0, 0, 1), 50);
			}
		}
		if(isdefined(var_c8a3ac29))
		{
			var_f461b5d = self function_ecf27a98(function_c4d5ec1f(var_f51eccb0), var_c8a3ac29, (0, 0, 0), 0.05);
			var_f461b5d thread function_2905cb0a();
		}
	}
}

/*
	Name: function_2905cb0a
	Namespace: namespace_a56eec64
	Checksum: 0xF6DD4892
	Offset: 0x2538
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2905cb0a()
{
	self namespace_82b91a51::function_9fcf3cd8(3, "death", "detonated");
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_e531a31b
	Namespace: namespace_a56eec64
	Checksum: 0x5530DABA
	Offset: 0x2590
	Size: 0x1B1
	Parameters: 2
	Flags: Private
*/
function private function_e531a31b(var_5dc5e20a, var_1c4f52d6)
{
	var_dfcc01fd = function_c4d5ec1f("gadget_immolation");
	var_657b1773 = function_525ae497(function_24e95264("axis", "robot"), function_24e95264("team3", "robot"), 0, 0);
	var_d9574143 = function_57efbe1(var_657b1773, self.var_722885f3, var_657b1773.size, 0, var_1c4f52d6);
	foreach(var_6b45b25e in var_d9574143)
	{
		if(var_5dc5e20a namespace_175490fb::function_7a7d1608(var_6b45b25e, var_dfcc01fd))
		{
			if(isdefined(var_6b45b25e.var_2557be09) && var_6b45b25e.var_2557be09)
			{
				continue;
			}
			var_6b45b25e.var_2557be09 = 1;
			var_5dc5e20a thread function_843196fe(var_6b45b25e);
		}
	}
}

/*
	Name: function_5a760e8b
	Namespace: namespace_a56eec64
	Checksum: 0x7A5F22C4
	Offset: 0x2750
	Size: 0x1F9
	Parameters: 2
	Flags: None
*/
function function_5a760e8b(var_a0ad4f34, var_668a3301)
{
	var_dfcc01fd = function_c4d5ec1f("gadget_immolation");
	var_b3db42a9 = function_8aac802c();
	var_5b8b9202 = 0;
	var_d9574143 = function_57efbe1(var_b3db42a9, self.var_722885f3, 666, 0, function_4bd0142f("scr_immolation_radius", 150));
	foreach(var_6b45b25e in var_d9574143)
	{
		if(var_6b45b25e == self)
		{
			continue;
		}
		if(isdefined(var_a0ad4f34.var_a691a602))
		{
			if(var_a0ad4f34.var_a691a602 >= 2)
			{
				break;
			}
		}
		if(var_a0ad4f34 namespace_175490fb::function_7a7d1608(var_6b45b25e, var_dfcc01fd))
		{
			if(!isdefined(var_a0ad4f34.var_a691a602))
			{
				var_a0ad4f34 thread function_4f174738();
			}
			else
			{
				var_a0ad4f34.var_a691a602++;
			}
			if(function_85e4c3b3(var_6b45b25e))
			{
				continue;
			}
			var_6b45b25e thread function_9e65a7de(var_a0ad4f34, var_668a3301, 1, var_dfcc01fd);
		}
	}
}

/*
	Name: function_ed100874
	Namespace: namespace_a56eec64
	Checksum: 0x24DD27FD
	Offset: 0x2958
	Size: 0xB1
	Parameters: 0
	Flags: Private
*/
function private function_ed100874()
{
	if(isdefined(self.var_8fc0e50e) && self.var_8fc0e50e == "human")
	{
		return self function_d48f2ab3("tag_weapon_chest");
	}
	var_b31a6ddf = level.var_175490fb.var_d0eecac8.var_d4d82e00[function_26299103(level.var_175490fb.var_d0eecac8.var_d4d82e00.size)];
	return self function_d48f2ab3(var_b31a6ddf);
}

/*
	Name: function_9eebfb7
	Namespace: namespace_a56eec64
	Checksum: 0x41E07C47
	Offset: 0x2A18
	Size: 0x2D9
	Parameters: 3
	Flags: None
*/
function function_9eebfb7(var_b07228b6, var_9bc2efcb, var_668a3301)
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
	var_dfcc01fd = function_c4d5ec1f("gadget_immolation");
	foreach(var_6b45b25e in var_36a66a95)
	{
		if(!self namespace_175490fb::function_7a7d1608(var_6b45b25e, var_dfcc01fd))
		{
			continue;
		}
		var_6b45b25e thread function_9e65a7de(self, var_668a3301, 0, function_c4d5ec1f("gadget_immolation"));
		wait(0.05);
	}
}

/*
	Name: function_4f174738
	Namespace: namespace_a56eec64
	Checksum: 0xA42170D5
	Offset: 0x2D00
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function function_4f174738()
{
	self endon("hash_128f8789");
	self.var_a691a602 = 0;
	wait(2);
	self.var_a691a602 = undefined;
}

