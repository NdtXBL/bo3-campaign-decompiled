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
	Name: function_c35e6aab
	Namespace: namespace_64276cf9
	Checksum: 0x84CFFECB
	Offset: 0x690
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_71e9cb84::function_50f16166("actor", "sensory_overload", 1, 2, "int");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_64276cf9
	Checksum: 0x95193C8B
	Offset: 0x6D0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(2, 1);
	level.var_c1aa5253["sensory_disable_human"] = "electric/fx_ability_elec_sensory_ol_human";
	level.var_c1aa5253["sensory_disable_human_riotshield"] = "electric/fx_ability_elec_sensory_ol_human";
	level.var_c1aa5253["sensory_disable_warlord"] = "electric/fx_ability_elec_sensory_ol_human";
	level.var_175490fb.var_135c9345 = function_a8fb77bd();
	level.var_175490fb.var_135c9345.var_875da84b = &function_875da84b;
	level.var_175490fb.var_135c9345.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_135c9345.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_135c9345.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_135c9345.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_135c9345.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_135c9345.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_135c9345.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_875da84b
	Namespace: namespace_64276cf9
	Checksum: 0x86062341
	Offset: 0x8B0
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_64276cf9
	Checksum: 0xB2B85BC4
	Offset: 0x8C8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_64276cf9
	Checksum: 0x105ACE88
	Offset: 0x8E8
	Size: 0x1D3
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_110c156a = function_4bd0142f("scr_sensory_overload_count", 3);
	self.var_175490fb.var_bf39536d = function_4bd0142f("scr_sensory_overload_loops", 2);
	if(self function_1a9006bd("cybercom_sensoryoverload") == 2)
	{
		self.var_175490fb.var_110c156a = function_4bd0142f("scr_sensory_overload_upgraded_count", 5);
		self.var_175490fb.var_bf39536d = function_4bd0142f("scr_sensory_overload_upgraded_loops", 2);
	}
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
	self namespace_175490fb::function_8257bcb3("base_rifle_stn", 8);
	self namespace_175490fb::function_8257bcb3("base_rifle_crc", 2);
	self namespace_175490fb::function_8257bcb3("fem_rifle_stn", 8);
	self namespace_175490fb::function_8257bcb3("fem_rifle_crc", 2);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_64276cf9
	Checksum: 0xD078BFF6
	Offset: 0xAC8
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
	Namespace: namespace_64276cf9
	Checksum: 0x99EC1590
	Offset: 0xB28
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_64276cf9
	Checksum: 0xF637F1FA
	Offset: 0xB38
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self thread function_a110c616(var_2d11f419, var_dfcc01fd);
	self function_251e7cf(var_2d11f419, var_dfcc01fd);
}

/*
	Name: function_251e7cf
	Namespace: namespace_64276cf9
	Checksum: 0xE0338895
	Offset: 0xB98
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
	Namespace: namespace_64276cf9
	Checksum: 0x8B67A3BD
	Offset: 0xBE0
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
	Namespace: namespace_64276cf9
	Checksum: 0x35E46BCC
	Offset: 0xC90
	Size: 0x207
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(var_b07228b6)
{
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_sensoryoverload"))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(isdefined(var_b07228b6.var_93b5a824) && var_b07228b6.var_93b5a824)
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 6);
		return 0;
	}
	if(function_85e4c3b3(var_b07228b6) || !isdefined(var_b07228b6.var_8fc0e50e))
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(var_b07228b6.var_8fc0e50e != "human" && var_b07228b6.var_8fc0e50e != "human_riotshield" && var_b07228b6.var_8fc0e50e != "warlord")
	{
		self namespace_175490fb::function_29bf9dee(var_b07228b6, 2);
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && var_b07228b6 namespace_175490fb::function_78525729() != "stand" && var_b07228b6 namespace_175490fb::function_78525729() != "crouch")
	{
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
	Namespace: namespace_64276cf9
	Checksum: 0x7053633B
	Offset: 0xEA0
	Size: 0x51
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	return function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
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
function private function_a110c616(var_2d11f419, var_dfcc01fd)
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
				self thread namespace_f74b04eb::function_96ed590f("cybercom_uses_chaos");
				var_c5b0e858.var_b07228b6 thread function_135c9345(self);
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
		var_1630584c = function_e967a021("cybercom_sensoryoverload");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "assists", "statValue", var_a7491a97);
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
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
function function_58f5574a(var_b07228b6, var_9bc2efcb)
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
		self function_5d64f4b4("ai_cybercom_anim", self.var_722885f3, self.var_6ab6f4fd, "ai_base_rifle_" + var_fe311e35 + "_exposed_cybercom_activate", "normal", %root, 1, 0.3);
		self waittillmatch("hash_39fa7e38");
	}
	var_dfcc01fd = function_c4d5ec1f("gadget_sensory_overload");
	foreach(var_6b45b25e in var_36a66a95)
	{
		if(!namespace_175490fb::function_7a7d1608(var_6b45b25e, var_dfcc01fd))
		{
			continue;
		}
		var_6b45b25e thread function_135c9345(self);
		wait(0.05);
	}
}

/*
	Name: function_135c9345
	Namespace: namespace_64276cf9
	Checksum: 0x2FCE7356
	Offset: 0x14A0
	Size: 0x7B7
	Parameters: 2
	Flags: None
*/
function function_135c9345()
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
function function_58831b5a(var_2fd82426, var_a0ad4f34, var_dfcc01fd, var_a6216360, var_a8728a16, var_fe311e35)
{
	self endon("hash_8817762c");
	self thread function_53cfe88a();
	while(var_2fd82426)
	{
		self function_e01b8059(var_a0ad4f34, var_dfcc01fd, var_a6216360, var_a8728a16, var_fe311e35);
		var_2fd82426--;
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
function function_e01b8059(var_a0ad4f34, var_dfcc01fd, var_a6216360, var_a8728a16, var_fe311e35)
{
	self endon("hash_128f8789");
	self function_5d64f4b4("sens_loop_anim", self.var_722885f3, self.var_6ab6f4fd, "ai_" + var_a8728a16 + "_" + var_fe311e35 + "_exposed_sens_overload_react_loop" + var_a6216360, "normal", %body, 1, 0.2);
	self thread namespace_175490fb::function_cf64f12c("damage_pain", "sens_loop_anim", 1, var_a0ad4f34, var_dfcc01fd);
	self thread namespace_175490fb::function_cf64f12c("breakout_overload_loop", "sens_loop_anim", 0, var_a0ad4f34, var_dfcc01fd);
	self thread namespace_175490fb::function_cf64f12c("notify_melee_damage", "sens_loop_anim", 1, var_a0ad4f34, var_dfcc01fd);
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
	self endon("hash_128f8789");
	wait(function_f3087faa("scr_sensory_overload_loop_time", 4.7));
	self notify("hash_8817762c");
}

