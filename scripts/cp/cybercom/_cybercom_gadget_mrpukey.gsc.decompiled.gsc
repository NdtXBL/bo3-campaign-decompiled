#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
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

#namespace namespace_e44205a2;

/*
	Name: function_c35e6aab
	Namespace: namespace_e44205a2
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
	Namespace: namespace_e44205a2
	Checksum: 0x6AF5EABC
	Offset: 0x588
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(2, 64);
	level.var_c1aa5253["puke_reaction"] = "water/fx_liquid_vomit";
	level.var_175490fb.var_9b2c750e = function_a8fb77bd();
	level.var_175490fb.var_9b2c750e.var_875da84b = &function_875da84b;
	level.var_175490fb.var_9b2c750e.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_9b2c750e.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_9b2c750e.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_9b2c750e.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_9b2c750e.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_9b2c750e.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_9b2c750e.var_4135a1c4 = &function_4135a1c4;
	level.var_175490fb.var_9b2c750e.var_106f11dd = function_84970cc4("c_54i_cqb_head1", "c_nrc_cqb_head", "c_nrc_cqb_f_head", "c_54i_supp_head1", "c_54i_supp_head1", "c_nrc_sniper_head", "c_nrc_suppressor_head");
}

/*
	Name: function_875da84b
	Namespace: namespace_e44205a2
	Checksum: 0xDE61FF3E
	Offset: 0x790
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_e44205a2
	Checksum: 0xF7208179
	Offset: 0x7A8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_e44205a2
	Checksum: 0xF4C16B13
	Offset: 0x7C8
	Size: 0x1B3
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_110c156a = function_4bd0142f("scr_mrpukey_target_count", 4);
	self.var_175490fb.var_cf33c5a4 = function_f3087faa("scr_pukey_fov", 0.968);
	if(self function_1a9006bd("cybercom_mrpukey") == 2)
	{
		self.var_175490fb.var_f72b478f = function_f3087faa("scr_pukey_upgraded_fov", 0.92);
		self.var_175490fb.var_110c156a = function_4bd0142f("scr_mrpukey_target_count_upgraded", 5);
	}
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
	self namespace_175490fb::function_8257bcb3("base_rifle", 5);
	self namespace_175490fb::function_8257bcb3("fem_rifle", 5);
	self namespace_175490fb::function_8257bcb3("riotshield", 2);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_e44205a2
	Checksum: 0x14D873F9
	Offset: 0x988
	Size: 0x61
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
	self.var_175490fb.var_9d8e0758 = undefined;
	self.var_175490fb.var_c40accd3 = undefined;
	self.var_175490fb.var_f72b478f = undefined;
}

/*
	Name: function_5d2fec30
	Namespace: namespace_e44205a2
	Checksum: 0x99EC1590
	Offset: 0x9F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_e44205a2
	Checksum: 0x606EEADC
	Offset: 0xA08
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self thread function_2de61c3f(var_2d11f419, var_dfcc01fd);
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_251e7cf
	Namespace: namespace_e44205a2
	Checksum: 0x7BF646E9
	Offset: 0xA68
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
	Namespace: namespace_e44205a2
	Checksum: 0x6A6D4CBC
	Offset: 0xAB0
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
	Namespace: namespace_e44205a2
	Checksum: 0x13C08C9B
	Offset: 0xB60
	Size: 0x1FF
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(var_b07228b6)
{
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_mrpukey"))
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
	if(function_85e4c3b3(var_b07228b6) || !isdefined(var_b07228b6.var_8fc0e50e))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && var_b07228b6.var_8fc0e50e != "human" && var_b07228b6.var_8fc0e50e != "human_riotshield")
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
	Namespace: namespace_e44205a2
	Checksum: 0xA7FA5BE3
	Offset: 0xD68
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	return function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
}

/*
	Name: function_2de61c3f
	Namespace: namespace_e44205a2
	Checksum: 0xD3560DCD
	Offset: 0xDC8
	Size: 0x2E3
	Parameters: 2
	Flags: Private
*/
function private function_2de61c3f(var_2d11f419, var_dfcc01fd)
{
	var_668a3301 = self function_1a9006bd("cybercom_mrpukey") == 2;
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
				var_c5b0e858.var_b07228b6 thread function_25411db1(var_668a3301, 0, self, var_dfcc01fd);
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
		var_1630584c = function_e967a021("cybercom_mrpukey");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "kills", "statValue", var_a7491a97);
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_25411db1
	Namespace: namespace_e44205a2
	Checksum: 0xBDB74FCD
	Offset: 0x10B8
	Size: 0x1EB
	Parameters: 4
	Flags: Private
*/
function function_25411db1()
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
	Name: function_ceb2ee11
	Namespace: namespace_e44205a2
	Checksum: 0xADA038DB
	Offset: 0x12B0
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_ceb2ee11()
{
	var_60144a19 = self function_b6009d8b();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_60144a19; var_c957f6b6++)
	{
		var_dd852326 = self function_e6dcb6d2(var_c957f6b6);
		if(function_7f41c8e7(level.var_175490fb.var_9b2c750e.var_106f11dd, var_dd852326))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_da7ef8ba
	Namespace: namespace_e44205a2
	Checksum: 0x7B482510
	Offset: 0x1360
	Size: 0x2C9
	Parameters: 3
	Flags: None
*/
function function_da7ef8ba(var_b07228b6, var_9bc2efcb, var_668a3301)
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
	var_dfcc01fd = function_c4d5ec1f("gadget_mrpukey");
	foreach(var_6b45b25e in var_36a66a95)
	{
		if(!namespace_175490fb::function_7a7d1608(var_6b45b25e, var_dfcc01fd))
		{
			continue;
		}
		var_6b45b25e thread function_25411db1(var_668a3301, 0, self);
		wait(0.05);
	}
}

