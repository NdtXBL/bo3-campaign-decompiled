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
	Name: function_c35e6aab
	Namespace: namespace_ea01175
	Checksum: 0x99EC1590
	Offset: 0x578
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_ea01175
	Checksum: 0xB8F96414
	Offset: 0x588
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(0, 64);
	level.var_c1aa5253["iff_takeover"] = "electric/fx_elec_sparks_burst_lg_os";
	level.var_c1aa5253["iff_takeover_revert"] = "explosions/fx_exp_grenade_flshbng";
	level.var_c1aa5253["iff_takeover_death"] = "explosions/fx_exp_grenade_flshbng";
	level.var_175490fb.var_3cede31 = function_a8fb77bd();
	level.var_175490fb.var_3cede31.var_875da84b = &function_875da84b;
	level.var_175490fb.var_3cede31.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_3cede31.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_3cede31.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_3cede31.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_3cede31.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_3cede31.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_3cede31.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_875da84b
	Namespace: namespace_ea01175
	Checksum: 0x1E3D09AE
	Offset: 0x768
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_ea01175
	Checksum: 0xE5290CF2
	Offset: 0x780
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_ea01175
	Checksum: 0x9790261F
	Offset: 0x7A0
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_110c156a = function_4bd0142f("scr_iff_override_count", 1);
	self.var_175490fb.var_fcb06d6d = function_4bd0142f("scr_iff_override_lifetime", 60);
	self.var_175490fb.var_84bab148 = function_4bd0142f("scr_iff_override_control_count", 1);
	if(self function_1a9006bd("cybercom_iffoverride") == 2)
	{
		self.var_175490fb.var_110c156a = function_4bd0142f("scr_iff_override_upgraded_count", 2);
		self.var_175490fb.var_fcb06d6d = function_4bd0142f("scr_iff_override_upgraded_lifetime", 120);
		self.var_175490fb.var_84bab148 = function_4bd0142f("scr_iff_override_control_upgraded_count", 2);
	}
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self.var_175490fb.var_46a37937 = [];
	self.var_175490fb.var_73d069a7 = &function_17342509;
	self.var_175490fb.var_46483c8f = 63;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_ea01175
	Checksum: 0x42B036F3
	Offset: 0x9A8
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
	self.var_175490fb.var_9d8e0758 = undefined;
	self.var_175490fb.var_c40accd3 = undefined;
	self.var_175490fb.var_46483c8f = undefined;
	self.var_175490fb.var_73d069a7 = undefined;
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
function function_17342509(var_2d11f419, var_dfcc01fd)
{
	self function_c0c5359e(var_2d11f419, var_dfcc01fd);
	function_b039e27b(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_5d2fec30
	Namespace: namespace_ea01175
	Checksum: 0x99EC1590
	Offset: 0xA80
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_ea01175
	Checksum: 0x95DB6F7C
	Offset: 0xA90
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self thread function_fa8ba566(var_2d11f419, var_dfcc01fd);
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_251e7cf
	Namespace: namespace_ea01175
	Checksum: 0x5DF29FB3
	Offset: 0xAF0
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
	Namespace: namespace_ea01175
	Checksum: 0x54ADAD9E
	Offset: 0xB38
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
	Name: function_f1ec3062
	Namespace: namespace_ea01175
	Checksum: 0x1E7F2914
	Offset: 0xBE8
	Size: 0xFB
	Parameters: 2
	Flags: Private
*/
function private function_f1ec3062(var_3e94206a, var_a0ad4f34)
{
	self endon("hash_128f8789");
	self waittill("hash_6eb14bb1");
	self namespace_71e9cb84::function_74d6b22f("cybercom_setiffname", 4);
	self function_ca711294(var_3e94206a);
	wait(1);
	self namespace_71e9cb84::function_74d6b22f("cybercom_setiffname", 0);
	function_fd4ba5e1(level.var_c1aa5253["iff_takeover_death"], self.var_722885f3);
	if(isdefined(var_a0ad4f34))
	{
		self function_2992720d(self.var_722885f3, var_a0ad4f34);
	}
	else
	{
		self function_2992720d();
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
function private function_2458babe(var_aa10fce8)
{
	if(!function_65f192a6(self))
	{
		return;
	}
	var_d1df9c1 = [];
	foreach(var_6b45b25e in self.var_175490fb.var_46a37937)
	{
		if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e))
		{
			var_d1df9c1[var_d1df9c1.size] = var_6b45b25e;
		}
	}
	self.var_175490fb.var_46a37937 = var_d1df9c1;
	self.var_175490fb.var_46a37937[self.var_175490fb.var_46a37937.size] = var_aa10fce8;
	if(self.var_175490fb.var_46a37937.size > self.var_175490fb.var_84bab148)
	{
		var_983e95da = self.var_175490fb.var_46a37937[0];
		function_6c668988(self.var_175490fb.var_46a37937, 0);
		if(isdefined(var_983e95da))
		{
			var_983e95da notify("hash_6eb14bb1");
			wait(1.5);
			if(function_5b49d38c(var_983e95da))
			{
				var_983e95da function_2992720d();
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
function private function_602b28e9(var_b07228b6)
{
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_iffoverride"))
	{
		if(isdefined(var_b07228b6.var_406cec76) && var_b07228b6.var_406cec76)
		{
			self namespace_175490fb::function_29bf9dee(var_b07228b6, 4);
		}
		else
		{
			self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		}
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
	if(function_8d0347b8(var_b07228b6) && var_b07228b6.var_8fc0e50e == "robot" && (namespace_271fbeb5::function_467f7305(var_b07228b6) || namespace_271fbeb5::function_e7c6bbd3(var_b07228b6)))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(!function_8d0347b8(var_b07228b6) && !function_85e4c3b3(var_b07228b6))
	{
		return 0;
	}
	if(function_85e4c3b3(var_b07228b6) && isdefined(var_b07228b6.var_6fb3bfc3))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 4);
		return 0;
	}
	if(isdefined(var_b07228b6.var_f40d252c) && var_b07228b6.var_f40d252c)
	{
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && var_b07228b6.var_8fc0e50e == "robot" && var_b07228b6 namespace_d84e54db::function_a0a4c1f1("rogue_control") == "level_3")
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 4);
		return 0;
	}
	return 1;
}

/*
	Name: function_8aac802c
	Namespace: namespace_ea01175
	Checksum: 0x180C8120
	Offset: 0x1218
	Size: 0x103
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	var_594dffdc = function_b8494651("axis");
	var_d1df9c1 = [];
	foreach(var_6050ab17 in var_594dffdc)
	{
		if(function_85e4c3b3(var_6050ab17) || (function_8d0347b8(var_6050ab17) && isdefined(var_6050ab17.var_8fc0e50e)))
		{
			var_d1df9c1[var_d1df9c1.size] = var_6050ab17;
		}
	}
	return var_d1df9c1;
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
function private function_fa8ba566(var_2d11f419, var_dfcc01fd)
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
				var_c5b0e858.var_b07228b6 thread function_3cede31(self, undefined, var_dfcc01fd);
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
		var_1630584c = function_e967a021("cybercom_iffoverride");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "assists", "statValue", var_a7491a97);
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
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
function private function_c9023ee5(var_5e36fd2e)
{
	self endon("hash_128f8789");
	self endon("hash_6eb14bb1");
	if(function_65f192a6(var_5e36fd2e))
	{
		var_5e36fd2e endon("hash_643a7daf");
		continue;
	}
	var_5e36fd2e endon("hash_128f8789");
	while(isdefined(var_5e36fd2e))
	{
		wait(function_72a94f05(1, 4));
		if(function_cb3d1c9b(self.var_722885f3, var_5e36fd2e.var_722885f3) > self.var_7dfaf62 * self.var_7dfaf62)
		{
			self function_169cc712(var_5e36fd2e.var_722885f3);
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
function function_e6827c94(var_6bdb4e67)
{
	if(var_6bdb4e67 && isdefined(self.var_6fb3bfc3) && function_65f192a6(self.var_6fb3bfc3))
	{
		self namespace_71e9cb84::function_74d6b22f("cybercom_setiffname", 2);
		self thread function_384a3bfb();
	}
	else if(!var_6bdb4e67 && isdefined(self.var_6fb3bfc3))
	{
		self namespace_71e9cb84::function_74d6b22f("cybercom_setiffname", 0);
		namespace_4a344d81::function_6903d776(self);
		self.var_6fb3bfc3 = undefined;
		self.var_7be9baa7 = undefined;
		self.var_93b5a824 = 0;
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
	self endon("hash_128f8789");
	self waittill("hash_6eb14bb1");
	self namespace_71e9cb84::function_74d6b22f("cybercom_setiffname", 4);
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
	self endon("hash_128f8789");
	wait(function_72a94f05(0, 0.75));
	if(function_65f192a6(var_92d97fe6))
	{
		self.var_7be9baa7 = &function_e6827c94;
		self.var_6fb3bfc3 = var_92d97fe6;
	}
	var_92d97fe6 thread function_2458babe(self);
	self thread namespace_72ee5da4::function_3cede31(var_92d97fe6);
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
	self endon("hash_128f8789");
	self waittill("hash_b415d6ad");
	self namespace_71e9cb84::function_74d6b22f("cybercom_setiffname", 3);
}

/*
	Name: function_3cede31
	Namespace: namespace_ea01175
	Checksum: 0x265F25A2
	Offset: 0x18F8
	Size: 0x53B
	Parameters: 3
	Flags: None
*/
function function_3cede31()
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
function function_e26f0e60(var_60db70fa, var_22fd856d)
{
	self endon("hash_128f8789");
	wait(var_60db70fa);
	self notify(var_22fd856d);
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
function private function_f2c8aa66(var_761bddd, var_a0ad4f34)
{
	self endon("hash_128f8789");
	wait(var_761bddd - 6);
	self notify("hash_b415d6ad");
	wait(6);
	self namespace_71e9cb84::function_74d6b22f("cybercom_setiffname", 4);
	wait(2);
	self function_ca711294(self.var_8c0ed5db);
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
function function_c26a7c6(var_b07228b6, var_9bc2efcb)
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
	var_dfcc01fd = function_c4d5ec1f("gadget_iff_override");
	foreach(var_6b45b25e in var_36a66a95)
	{
		if(!namespace_175490fb::function_7a7d1608(var_6b45b25e, var_dfcc01fd))
		{
			continue;
		}
		var_6b45b25e thread function_3cede31(self, undefined, undefined);
		wait(0.05);
	}
}

