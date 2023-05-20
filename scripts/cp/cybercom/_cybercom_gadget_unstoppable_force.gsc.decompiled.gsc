#using scripts\codescripts\struct;
#using scripts\cp\_achievements;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_354e20c0;

/*
	Name: function_c35e6aab
	Namespace: namespace_354e20c0
	Checksum: 0x99EC1590
	Offset: 0x490
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_354e20c0
	Checksum: 0xD56624ED
	Offset: 0x4A0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(1, 32, 1);
	level.var_175490fb.var_bccda2f4 = function_a8fb77bd();
	level.var_175490fb.var_bccda2f4.var_875da84b = &function_875da84b;
	level.var_175490fb.var_bccda2f4.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_bccda2f4.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_bccda2f4.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_bccda2f4.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_bccda2f4.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_bccda2f4.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_bccda2f4.var_4135a1c4 = &function_4135a1c4;
	level.var_175490fb.var_bccda2f4.var_dfcc01fd = function_c4d5ec1f("gadget_unstoppable_force");
}

/*
	Name: function_875da84b
	Namespace: namespace_354e20c0
	Checksum: 0xB8A858D
	Offset: 0x660
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_354e20c0
	Checksum: 0x2D847B4D
	Offset: 0x678
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_354e20c0
	Checksum: 0x7CC6630E
	Offset: 0x698
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_9d8e0758 = undefined;
	self.var_175490fb.var_c40accd3 = undefined;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_354e20c0
	Checksum: 0xF459E1FC
	Offset: 0x6F0
	Size: 0x21
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_301030f7 = undefined;
}

/*
	Name: function_5d2fec30
	Namespace: namespace_354e20c0
	Checksum: 0x99EC1590
	Offset: 0x720
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_354e20c0
	Checksum: 0xBB463F3
	Offset: 0x730
	Size: 0x143
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	self function_518a4a08();
	self function_e6152ede();
	namespace_4a344d81::function_386309ce(self);
	self.var_175490fb.var_301030f7 = undefined;
	self notify(var_dfcc01fd.var_4be20d44 + "_fired");
	level notify(var_dfcc01fd.var_4be20d44 + "_fired");
	self thread function_875f1595(var_2d11f419, var_dfcc01fd);
	if(function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_unstoppableforce");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_251e7cf
	Namespace: namespace_354e20c0
	Checksum: 0xE2461242
	Offset: 0x880
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	self namespace_71e9cb84::function_e9c3870b("unstoppableforce_state", 0);
	self notify("hash_13da8804");
	self notify("hash_1f17ce9a");
	self function_921a1574("gdt_unstoppable_stop");
	self function_a0b29c50(var_2d11f419, 0);
	self function_4b9f6977();
	self function_6c8f914f();
}

/*
	Name: function_1852a14f
	Namespace: namespace_354e20c0
	Checksum: 0x2B856617
	Offset: 0x940
	Size: 0x43
	Parameters: 2
	Flags: Private
*/
function private function_1852a14f(var_2d11f419, var_dfcc01fd)
{
	self endon("hash_5d382438");
	wait(0.5);
	self function_822aa28(var_2d11f419, -100);
}

/*
	Name: function_6c3ee126
	Namespace: namespace_354e20c0
	Checksum: 0x1292C7B8
	Offset: 0x990
	Size: 0x53
	Parameters: 2
	Flags: Private
*/
function private function_6c3ee126(var_2d11f419, var_dfcc01fd)
{
	self endon("hash_643a7daf");
	self endon("hash_1f17ce9a");
	self waittill("hash_21b9142e");
	self function_a0b29c50(var_2d11f419, 0);
}

/*
	Name: function_98296a6a
	Namespace: namespace_354e20c0
	Checksum: 0xF2827496
	Offset: 0x9F0
	Size: 0xBB
	Parameters: 2
	Flags: Private
*/
function private function_98296a6a(var_2d11f419, var_dfcc01fd)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self waittill("hash_390b7030", var_7494be90);
	if(var_7494be90 == 2)
	{
		function_9cf04c2e(1, 0.75, self.var_722885f3, 100);
		self function_e2af603e("riotshield_impact");
		self function_921a1574("gdt_unstoppable_hit_wall");
	}
}

/*
	Name: function_4135a1c4
	Namespace: namespace_354e20c0
	Checksum: 0x6EAFD620
	Offset: 0xAB8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_4135a1c4(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_875f1595
	Namespace: namespace_354e20c0
	Checksum: 0x40FA9EA2
	Offset: 0xAD8
	Size: 0x113
	Parameters: 2
	Flags: Private
*/
function private function_875f1595(var_2d11f419, var_dfcc01fd)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_1f17ce9a");
	self namespace_71e9cb84::function_e9c3870b("unstoppableforce_state", 1);
	wait(0.05);
	if(self function_d5770832())
	{
		self waittill("hash_9206d256");
	}
	self thread function_941861e(var_dfcc01fd);
	self thread function_6c3ee126(var_2d11f419, var_dfcc01fd);
	self thread function_98296a6a(var_2d11f419, var_dfcc01fd);
	self thread function_1852a14f(var_2d11f419, var_dfcc01fd);
	self function_cbdc28cb();
}

/*
	Name: function_2c971ed8
	Namespace: namespace_354e20c0
	Checksum: 0x6E8607A5
	Offset: 0xBF8
	Size: 0x1AF
	Parameters: 1
	Flags: Private
*/
function private function_2c971ed8(var_b07228b6)
{
	if(!isdefined(var_b07228b6))
	{
		return 0;
	}
	if(!function_5b49d38c(var_b07228b6))
	{
		return 0;
	}
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_unstoppableforce"))
	{
		return 0;
	}
	if(!(isdefined(var_b07228b6.var_2dd707) && var_b07228b6.var_2dd707))
	{
		return 0;
	}
	if(function_8d0347b8(var_b07228b6))
	{
		if(var_b07228b6 function_b7f9b625() && (!isdefined(var_b07228b6.var_93b5a824) && var_b07228b6.var_93b5a824))
		{
			if(!var_b07228b6 namespace_175490fb::function_421746e0())
			{
				return 0;
			}
		}
	}
	if(!(isdefined(var_b07228b6.var_bab9655e) && var_b07228b6.var_bab9655e))
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_667aa308) && var_b07228b6.var_667aa308)
	{
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && var_b07228b6 namespace_175490fb::function_78525729() != "stand" && var_b07228b6 namespace_175490fb::function_78525729() != "crouch")
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_8aac802c
	Namespace: namespace_354e20c0
	Checksum: 0xC43471F1
	Offset: 0xDB0
	Size: 0x105
	Parameters: 0
	Flags: Private
*/
function private function_8aac802c()
{
	var_657b1773 = function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
	var_d1df9c1 = [];
	foreach(var_8ae1cd80 in var_657b1773)
	{
		if(!function_2c971ed8(var_8ae1cd80))
		{
			continue;
		}
		var_d1df9c1[var_d1df9c1.size] = var_8ae1cd80;
	}
	return var_d1df9c1;
}

/*
	Name: function_40b93b78
	Namespace: namespace_354e20c0
	Checksum: 0xF18A0B83
	Offset: 0xEC0
	Size: 0x29
	Parameters: 0
	Flags: Private
*/
function private function_40b93b78()
{
	self function_bc209a09();
	self notify("hash_13da8804");
}

/*
	Name: function_649c2f65
	Namespace: namespace_354e20c0
	Checksum: 0xCFCB6134
	Offset: 0xEF8
	Size: 0x303
	Parameters: 2
	Flags: Private
*/
function private function_649c2f65(var_6050ab17, var_dfcc01fd)
{
	if(var_6050ab17 namespace_175490fb::function_eee64fa2())
	{
		var_6050ab17 function_52fddbd0();
	}
	var_6050ab17 notify("hash_f8c5dd60", var_dfcc01fd, self);
	if(var_6050ab17.var_fd67e920 == "quadtank" || var_6050ab17.var_fd67e920 == "siegebot")
	{
		var_6050ab17 function_c3945cd5(function_4bd0142f("scr_unstoppable_heavy_vehicle_damage", 300), self.var_722885f3, self, self, "none", "MOD_IMPACT", 512, level.var_175490fb.var_bccda2f4.var_dfcc01fd, -1, 1);
		self function_40b93b78();
	}
	else if(var_6050ab17.var_fd67e920 == "raps" || var_6050ab17.var_fd67e920 == "wasp")
	{
		var_6050ab17 function_c3945cd5(var_6050ab17.var_3a90f16b, self.var_722885f3, self, self, "none", "MOD_IMPACT", 512, level.var_175490fb.var_bccda2f4.var_dfcc01fd, -1, 1);
	}
	else if(var_6050ab17.var_fd67e920 == "amws")
	{
		var_6050ab17 function_c3945cd5(var_6050ab17.var_3a90f16b, self.var_722885f3, self, self, "none", "MOD_IMPACT", 512, level.var_175490fb.var_bccda2f4.var_dfcc01fd, -1, 1);
		self function_40b93b78();
	}
	else if(var_6050ab17.var_fd67e920 == "")
	{
		if(var_6050ab17.var_8fc0e50e == "turret")
		{
			var_6050ab17 function_c3945cd5(var_6050ab17.var_3a90f16b, self.var_722885f3, self, self, "none", "MOD_IMPACT", 512, level.var_175490fb.var_bccda2f4.var_dfcc01fd, -1, 1);
			self function_40b93b78();
		}
	}
}

/*
	Name: function_1383f19
	Namespace: namespace_354e20c0
	Checksum: 0x61394378
	Offset: 0x1208
	Size: 0x263
	Parameters: 2
	Flags: None
*/
function function_1383f19(var_6b45b25e, var_dfcc01fd)
{
	if(var_6b45b25e namespace_175490fb::function_eee64fa2())
	{
		var_6b45b25e function_52fddbd0();
	}
	var_6b45b25e notify("hash_f8c5dd60", var_dfcc01fd, self);
	if(var_6b45b25e.var_8fc0e50e == "warlord")
	{
		if(isdefined(var_6b45b25e.var_93b5a824) && var_6b45b25e.var_93b5a824)
		{
			var_6b45b25e function_c3945cd5(var_6b45b25e.var_3a90f16b, self.var_722885f3, self, self, "none", "MOD_IMPACT", 512, level.var_175490fb.var_bccda2f4.var_bf0de5fb, -1, 1);
		}
		else
		{
			var_6b45b25e function_c3945cd5(function_4bd0142f("scr_unstoppable_warlord_damage", 40), self.var_722885f3, self, self, "none", "MOD_IMPACT", 512, level.var_175490fb.var_bccda2f4.var_dfcc01fd, -1, 1);
		}
	}
	else if(var_6b45b25e.var_8fc0e50e == "human_riotshield")
	{
		var_6b45b25e function_c3945cd5(var_6b45b25e.var_3a90f16b, self.var_722885f3, self, self, "none", "MOD_IMPACT", 0, var_dfcc01fd, -1, 1);
		var_6b45b25e notify("hash_b64936fe", "reactBodyBlow");
	}
	else
	{
		var_6b45b25e function_b4852552(self);
	}
	if(var_6b45b25e.var_8fc0e50e == "robot")
	{
		self function_921a1574("gdt_unstoppable_hit_bot");
	}
	else
	{
		self function_921a1574("gdt_unstoppable_hit_human");
	}
}

/*
	Name: function_941861e
	Namespace: namespace_354e20c0
	Checksum: 0xBB304B91
	Offset: 0x1478
	Size: 0x1BF
	Parameters: 1
	Flags: None
*/
function function_941861e(var_dfcc01fd)
{
	self notify("hash_13da8804");
	self endon("hash_13da8804");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	while(1)
	{
		var_657b1773 = function_518996b3();
		var_a5861930 = 0;
		foreach(var_6b45b25e in var_657b1773)
		{
			var_a5861930++;
			if(function_85e4c3b3(var_6b45b25e))
			{
				self function_921a1574("gdt_unstoppable_hit_veh");
				self function_649c2f65(var_6b45b25e, var_dfcc01fd);
				continue;
			}
			self function_1383f19(var_6b45b25e, var_dfcc01fd);
		}
		if(var_a5861930)
		{
			function_9cf04c2e(1, 0.75, self.var_722885f3, 100);
			self function_e2af603e("damage_heavy");
		}
		wait(0.05);
	}
}

/*
	Name: function_518996b3
	Namespace: namespace_354e20c0
	Checksum: 0x1A0511BB
	Offset: 0x1640
	Size: 0x335
	Parameters: 0
	Flags: None
*/
function function_518996b3()
{
	var_657b1773 = function_8aac802c();
	var_d8e04d8d = self.var_722885f3;
	var_36a66a95 = namespace_84970cc4::function_4219028b(var_d8e04d8d, var_657b1773, undefined, undefined, 120);
	if(!isdefined(var_36a66a95))
	{
		return;
	}
	var_1a859714 = function_bc7ce905(self function_89c87c9c());
	var_b5f6560e = function_aba60185(self function_89c87c9c());
	var_e09fef25 = var_d8e04d8d + 36 * var_1a859714;
	var_faa0b366 = var_e09fef25 + 120 - 36 * var_1a859714;
	var_992a286d = function_4bd0142f("scr_unstoppable_fling_force", 175);
	var_7ae8c5ad = var_992a286d * 0.5;
	var_b2aa696f = var_992a286d * 0.6;
	var_657b1773 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_36a66a95.size; var_c957f6b6++)
	{
		if(!isdefined(var_36a66a95[var_c957f6b6]) || !function_5b49d38c(var_36a66a95[var_c957f6b6]))
		{
			continue;
		}
		var_250e9182 = var_36a66a95[var_c957f6b6] function_6083923();
		var_ce2368b9 = function_c8b79b9c(var_e09fef25, var_faa0b366, var_250e9182);
		var_6c1219a = var_250e9182 - var_ce2368b9;
		if(function_69c2f683(var_6c1219a[2]) > 72)
		{
			continue;
		}
		var_6c1219a = (var_6c1219a[0], var_6c1219a[1], 0);
		var_ccbbd30a = function_73b84f4d(var_6c1219a);
		if(var_ccbbd30a > 36)
		{
			continue;
		}
		var_6c1219a = (var_6c1219a[0], var_6c1219a[1], 0);
		var_36a66a95[var_c957f6b6].var_e3e3d182 = var_992a286d * var_1a859714 + function_72a94f05(var_7ae8c5ad, var_b2aa696f) * var_b5f6560e;
		var_657b1773[var_657b1773.size] = var_36a66a95[var_c957f6b6];
	}
	return var_657b1773;
}

/*
	Name: function_b4852552
	Namespace: namespace_354e20c0
	Checksum: 0xDA4231CC
	Offset: 0x1980
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_b4852552(var_5dc5e20a)
{
	if(!isdefined(self) || !function_5b49d38c(self))
	{
		return;
	}
	self function_c3945cd5(self.var_3a90f16b, var_5dc5e20a.var_722885f3, var_5dc5e20a, var_5dc5e20a, "", "MOD_IMPACT");
	if(isdefined(self.var_e3e3d182))
	{
		self function_d7a0a9d8(1);
		self function_8461d2b1(self.var_e3e3d182);
	}
}

