#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_system_overload;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_690a49a;

/*
	Name: function_c35e6aab
	Namespace: namespace_690a49a
	Checksum: 0x99EC1590
	Offset: 0x6E0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_690a49a
	Checksum: 0x2A49E
	Offset: 0x6F0
	Size: 0x35B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(2, 2);
	level.var_c1aa5253["es_effect_human"] = "electric/fx_ability_elec_strike_short_human";
	level.var_c1aa5253["es_effect_warlord"] = "electric/fx_ability_elec_strike_short_warlord";
	level.var_c1aa5253["es_effect_robot"] = "electric/fx_ability_elec_strike_short_robot";
	level.var_c1aa5253["es_effect_wasp"] = "electric/fx_ability_elec_strike_short_wasp";
	level.var_c1aa5253["es_effect_generic"] = "electric/fx_ability_elec_strike_generic";
	level.var_c1aa5253["es_contact"] = "electric/fx_ability_elec_strike_impact";
	level.var_c1aa5253["es_arc"] = "electric/fx_ability_elec_strike_trail";
	level.var_175490fb.var_e3b77070 = function_a8fb77bd();
	level.var_175490fb.var_e3b77070.var_875da84b = &function_875da84b;
	level.var_175490fb.var_e3b77070.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_e3b77070.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_e3b77070.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_e3b77070.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_e3b77070.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_e3b77070.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_e3b77070.var_fdd3ea57 = function_c4d5ec1f("gadget_es_strike");
	level.var_175490fb.var_e3b77070.var_bf0de5fb = function_c4d5ec1f("gadget_es_strike");
	level.var_175490fb.var_e3b77070.var_97285cfa = function_c4d5ec1f("gadget_es_strike");
	level.var_175490fb.var_e3b77070.var_f492f9d5 = function_c4d5ec1f("emp_grenade");
	level.var_175490fb.var_e3b77070.var_9175970a = function_c4d5ec1f("emp_grenade");
	level.var_175490fb.var_e3b77070.var_2197a940 = function_c4d5ec1f("emp_grenade");
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
}

/*
	Name: function_aebcf025
	Namespace: namespace_690a49a
	Checksum: 0x99EC1590
	Offset: 0xA58
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_875da84b
	Namespace: namespace_690a49a
	Checksum: 0xE301FC70
	Offset: 0xA68
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_690a49a
	Checksum: 0xEF6EE24D
	Offset: 0xA80
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_690a49a
	Checksum: 0x85DCDED
	Offset: 0xAA0
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self thread function_677ed44f(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_690a49a
	Checksum: 0x2CE4A3B1
	Offset: 0xAD8
	Size: 0x21
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self notify("hash_343d4580");
}

/*
	Name: function_5d2fec30
	Namespace: namespace_690a49a
	Checksum: 0x99EC1590
	Offset: 0xB08
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_690a49a
	Checksum: 0xD2A48EE4
	Offset: 0xB18
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_251e7cf
	Namespace: namespace_690a49a
	Checksum: 0x5329DF05
	Offset: 0xB38
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_677ed44f
	Namespace: namespace_690a49a
	Checksum: 0xDAFF114A
	Offset: 0xB58
	Size: 0x2BF
	Parameters: 1
	Flags: None
*/
function function_677ed44f(var_dfcc01fd)
{
	self notify("hash_677ed44f");
	self endon("hash_677ed44f");
	self endon("hash_343d4580");
	self endon("hash_643a7daf");
	while(1)
	{
		level waittill("hash_63acb616", var_b07228b6, var_a0ad4f34, var_f9348fda, var_dfcc01fd, var_f3edfe76);
		wait(0.05);
		if(isdefined(var_b07228b6))
		{
			if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_es_strike"))
			{
				continue;
			}
			if(!function_5b49d38c(var_b07228b6))
			{
				continue;
			}
			self notify(var_dfcc01fd.var_4be20d44 + "_fired");
			level notify(var_dfcc01fd.var_4be20d44 + "_fired");
			self thread namespace_f74b04eb::function_96ed590f("cybercom_uses_control");
			var_2e2a14bb = self function_1a9006bd("cybercom_es_strike", 1);
			var_668a3301 = var_2e2a14bb == 2;
			var_b07228b6 notify("hash_f8c5dd60", var_dfcc01fd, var_a0ad4f34);
			var_b07228b6 thread function_b4ff98a3(var_a0ad4f34, var_a0ad4f34, var_668a3301, var_f3edfe76);
			var_b07228b6 thread function_dd1b6b0b(var_a0ad4f34, var_668a3301);
			if(isdefined(var_b07228b6.var_8fc0e50e) && var_b07228b6.var_8fc0e50e == "human")
			{
				var_b07228b6 namespace_71e9cb84::function_74d6b22f("arch_actor_char", 1);
				var_b07228b6 thread function_71a4f1d5();
			}
			if(function_65f192a6(self))
			{
				var_1630584c = function_e967a021("cybercom_es_strike");
				if(isdefined(var_1630584c))
				{
					self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
				}
			}
		}
	}
}

/*
	Name: function_71a4f1d5
	Namespace: namespace_690a49a
	Checksum: 0x643EC996
	Offset: 0xE20
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_71a4f1d5()
{
	self waittill("hash_c67510f3", var_1e25855);
	var_1e25855 namespace_71e9cb84::function_74d6b22f("arch_actor_fire_fx", 3);
}

/*
	Name: function_aae59b93
	Namespace: namespace_690a49a
	Checksum: 0x6C7724CB
	Offset: 0xE68
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_aae59b93(var_668a3301)
{
	if(!isdefined(var_668a3301))
	{
		var_668a3301 = 0;
	}
	if(var_668a3301)
	{
	}
	else
	{
	}
	self thread function_c48e06e3(1);
}

/*
	Name: function_c48e06e3
	Namespace: namespace_690a49a
	Checksum: 0x771BF0AB
	Offset: 0xEB8
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_c48e06e3(var_16502c0b)
{
	if(function_65f192a6(self))
	{
		self endon("hash_643a7daf");
	}
	else
	{
		self endon("hash_128f8789");
	}
	self notify("hash_bc032f12");
	self endon("hash_bc032f12");
	while(1)
	{
		level waittill("hash_63acb616", var_b07228b6, var_a0ad4f34, var_f9348fda, var_dfcc01fd, var_f3edfe76);
		wait(0.05);
		if(isdefined(var_b07228b6))
		{
			var_b07228b6 notify("hash_f8c5dd60", var_dfcc01fd, var_a0ad4f34);
			var_668a3301 = var_16502c0b == 2;
			var_b07228b6 thread function_b4ff98a3(var_a0ad4f34, var_a0ad4f34, var_668a3301, var_f3edfe76);
			var_b07228b6 thread function_dd1b6b0b(var_a0ad4f34, var_668a3301);
		}
	}
}

/*
	Name: function_4830484e
	Namespace: namespace_690a49a
	Checksum: 0x7B5A26A4
	Offset: 0xFF8
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_4830484e(var_a0ad4f34)
{
	if(!isdefined(self))
	{
		return 0;
	}
	if(self namespace_175490fb::function_8fd8f5b1("cybercom_es_strike"))
	{
		return 0;
	}
	if(!function_5b49d38c(self))
	{
		return 0;
	}
	if(isdefined(self.var_49d31d69))
	{
		return 0;
	}
	if(!isdefined(self.var_8fc0e50e))
	{
		return 0;
	}
	if(isdefined(self.var_958c7633) && self.var_958c7633)
	{
		return 0;
	}
	if(isdefined(self.var_49d31d69))
	{
		return 0;
	}
	if(self.var_3e94206a == var_a0ad4f34.var_3e94206a)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_b4ff98a3
	Namespace: namespace_690a49a
	Checksum: 0x22A6A6EA
	Offset: 0x10C0
	Size: 0x793
	Parameters: 5
	Flags: None
*/
function function_b4ff98a3()
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
	Name: function_dd1b6b0b
	Namespace: namespace_690a49a
	Checksum: 0x118FFFA7
	Offset: 0x1860
	Size: 0x3B1
	Parameters: 2
	Flags: None
*/
function function_dd1b6b0b(var_5dc5e20a, var_668a3301)
{
	self endon("hash_128f8789");
	if(!var_668a3301)
	{
		return;
	}
	wait(0.05);
	var_5c31f5fb = function_4bd0142f("scr_es_arc_range", 72);
	if(var_668a3301)
	{
		var_5c31f5fb = function_4bd0142f("scr_es_upgraded_arc_range", 128);
	}
	var_2c3e05ad = var_5c31f5fb * var_5c31f5fb;
	var_657b1773 = [];
	var_594dffdc = function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
	var_7a650e64 = namespace_82b91a51::function_190fd57(self.var_722885f3, var_594dffdc);
	foreach(var_6050ab17 in var_7a650e64)
	{
		if(!isdefined(var_6050ab17))
		{
			continue;
		}
		if(var_6050ab17 == self)
		{
			continue;
		}
		if(isdefined(var_6050ab17.var_93b5a824) && var_6050ab17.var_93b5a824)
		{
			continue;
		}
		if(isdefined(var_6050ab17.var_a7f77d7c) && var_6050ab17.var_a7f77d7c || (isdefined(var_6050ab17.var_fb4b537b) && var_6050ab17.var_fb4b537b))
		{
			continue;
		}
		if(!var_6050ab17 function_4830484e(var_5dc5e20a))
		{
			continue;
		}
		if(function_cb3d1c9b(self.var_722885f3, var_6050ab17.var_722885f3) > var_2c3e05ad)
		{
			continue;
		}
		if(!function_7178c13c(self.var_722885f3, var_6050ab17.var_722885f3 + VectorScale((0, 0, 1), 50), 0, undefined))
		{
			continue;
		}
		var_657b1773[var_657b1773.size] = var_6050ab17;
	}
	var_c957f6b6 = 0;
	foreach(var_6b45b25e in var_657b1773)
	{
		var_5dc5e20a thread namespace_f74b04eb::function_96ed590f("cybercom_uses_esdamage");
		self thread function_12d22808(var_6b45b25e, var_5dc5e20a, var_668a3301);
		var_c957f6b6++;
		if(var_c957f6b6 >= function_4bd0142f("scr_es_max_arcs", 4))
		{
			break;
		}
	}
}

/*
	Name: function_12d22808
	Namespace: namespace_690a49a
	Checksum: 0x4C4B954B
	Offset: 0x1C20
	Size: 0x1A3
	Parameters: 3
	Flags: Private
*/
function private function_12d22808(var_b07228b6, var_5dc5e20a, var_668a3301)
{
	if(!isdefined(self) || !isdefined(var_b07228b6))
	{
		return;
	}
	var_722885f3 = self.var_722885f3 + VectorScale((0, 0, 1), 40);
	var_49992acb = var_b07228b6.var_722885f3 + VectorScale((0, 0, 1), 40);
	var_3e7e6e3f = function_9b7fda5e("script_model", var_722885f3);
	var_3e7e6e3f function_e48f905e("tag_origin");
	var_5753664b = function_da6acfd2(level.var_c1aa5253["es_arc"], var_3e7e6e3f, "tag_origin");
	var_3e7e6e3f function_921a1574("gdt_electro_bounce");
	var_3e7e6e3f function_a96a2721(var_49992acb, 0.25);
	var_3e7e6e3f namespace_82b91a51::function_9fcf3cd8(1, "movedone");
	var_3e7e6e3f function_dc8c8404();
	var_b07228b6 thread function_b4ff98a3(var_5dc5e20a, self, var_668a3301, undefined, 1);
}

