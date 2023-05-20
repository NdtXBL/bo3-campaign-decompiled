#using scripts\cp\_achievements;
#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\shared\challenges_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_c8c4714f;

/*
	Name: function_2dc19561
	Namespace: namespace_c8c4714f
	Checksum: 0xBAEF40EB
	Offset: 0x4D0
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("destructible", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_c8c4714f
	Checksum: 0xB0790C96
	Offset: 0x518
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "start_destructible_explosion", 1, 11, "int");
	level.var_e7484c42 = [];
	var_61c9e616 = function_99201f25("destructible", "targetname");
	if(var_61c9e616.size <= 0)
	{
		return;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_61c9e616.size; var_c957f6b6++)
	{
		if(function_f45850ec(var_61c9e616[var_c957f6b6].var_7b6755f4, 0, 4) == "veh_")
		{
			var_61c9e616[var_c957f6b6] thread function_761f73b();
			var_61c9e616[var_c957f6b6] thread function_7ba851a2();
			continue;
		}
		if(var_61c9e616[var_c957f6b6].var_7b6755f4 == "fxdest_upl_metal_tank_01")
		{
			var_61c9e616[var_c957f6b6] thread function_568c7d06();
		}
	}
	function_1a193c6();
}

/*
	Name: function_5b6b9132
	Namespace: namespace_c8c4714f
	Checksum: 0x9D891769
	Offset: 0x698
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	waittillframeend;
	var_bcf73ab6 = function_99201f25("destructible", "targetname");
	if(var_bcf73ab6.size <= 0)
	{
		return;
	}
	foreach(var_6a147d3 in var_bcf73ab6)
	{
		if(function_5dbf7eca(var_6a147d3.var_7b6755f4, "explosive_concussive") || function_5dbf7eca(var_6a147d3.var_7b6755f4, "explosive_electrical") || function_5dbf7eca(var_6a147d3.var_7b6755f4, "explosive_incendiary"))
		{
			var_6a147d3 thread namespace_16f9ecd3::function_b3ce91e0();
		}
	}
}

/*
	Name: function_1a193c6
	Namespace: namespace_c8c4714f
	Checksum: 0xE687C0F6
	Offset: 0x7E0
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_1a193c6()
{
	level.var_ea11bb1e = function_a8fb77bd();
	level.var_ea11bb1e.var_74952a22 = 0;
	level.var_ea11bb1e.var_111e074d = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 32; var_c957f6b6++)
	{
		var_7d0c93e1 = function_9b7fda5e("script_model", (0, 0, 0));
		if(!isdefined(level.var_ea11bb1e.var_111e074d))
		{
			level.var_ea11bb1e.var_111e074d = [];
		}
		else if(!function_6e2770d8(level.var_ea11bb1e.var_111e074d))
		{
			level.var_ea11bb1e.var_111e074d = function_84970cc4(level.var_ea11bb1e.var_111e074d);
		}
		level.var_ea11bb1e.var_111e074d[level.var_ea11bb1e.var_111e074d.size] = var_7d0c93e1;
	}
}

/*
	Name: function_aeee3204
	Namespace: namespace_c8c4714f
	Checksum: 0x102B4A5A
	Offset: 0x920
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_aeee3204()
{
	foreach(var_a28e7762 in level.var_ea11bb1e.var_111e074d)
	{
		if(!(isdefined(var_a28e7762.var_ab9ec428) && var_a28e7762.var_ab9ec428))
		{
			return var_a28e7762;
		}
	}
	return level.var_ea11bb1e.var_111e074d[0];
}

/*
	Name: function_75c1521a
	Namespace: namespace_c8c4714f
	Checksum: 0x3646D451
	Offset: 0x9E0
	Size: 0x153
	Parameters: 4
	Flags: None
*/
function function_75c1521a(var_722885f3, var_f8456b37, var_824b40e2, var_34aa7e9b)
{
	if(!isdefined(var_824b40e2))
	{
		var_824b40e2 = 1;
	}
	if(!isdefined(var_34aa7e9b))
	{
		var_34aa7e9b = 0;
	}
	var_7d0c93e1 = function_aeee3204();
	var_7d0c93e1.var_ab9ec428 = 1;
	var_7d0c93e1.var_722885f3 = var_722885f3;
	wait(0.05);
	/#
		namespace_33b293fd::function_a7ee953(var_f8456b37 <= function_aca9299(2, 10) - 1);
	#/
	var_e0d11135 = var_f8456b37;
	if(var_824b40e2)
	{
		var_e0d11135 = var_e0d11135 + 1 << 10;
	}
	if(var_34aa7e9b)
	{
		var_e0d11135 = var_e0d11135 + 1 << 9;
	}
	var_7d0c93e1 namespace_71e9cb84::function_74d6b22f("start_destructible_explosion", var_e0d11135);
	var_7d0c93e1.var_ab9ec428 = 0;
}

/*
	Name: function_50f2d9cb
	Namespace: namespace_c8c4714f
	Checksum: 0x9432782D
	Offset: 0xB40
	Size: 0x3CD
	Parameters: 3
	Flags: None
*/
function function_50f2d9cb(var_3e24751e, var_a0ad4f34, var_dfcc01fd)
{
	var_42897b0b = 0;
	if(function_5dbf7eca(var_3e24751e, "explode") && var_3e24751e != "explode")
	{
		var_b952f48f = function_d6df1f20(var_3e24751e, "_");
		var_42897b0b = var_b952f48f[1];
		if(var_42897b0b == "sm")
		{
			var_42897b0b = 150;
		}
		else if(var_42897b0b == "lg")
		{
			var_42897b0b = 450;
		}
		else
		{
			var_42897b0b = function_b6b79a0(var_42897b0b);
		}
		var_3e24751e = "explode_complex";
	}
	if(function_5dbf7eca(var_3e24751e, "simple_timed_explosion"))
	{
		self thread function_adb551df(var_3e24751e, var_a0ad4f34);
		return;
	}
	if(isdefined(var_dfcc01fd))
	{
		self.var_4898b42f = var_dfcc01fd;
	}
	switch(var_3e24751e)
	{
		case "destructible_car_explosion":
		{
			self function_940b72ed(var_a0ad4f34);
			break;
		}
		case "destructible_car_fire":
		{
			level thread namespace_76d95162::function_bf5d6349(self, "car");
			self thread function_a381d4e5(var_a0ad4f34);
			break;
		}
		case "explode":
		{
			self thread function_ec338b03(var_a0ad4f34);
			break;
		}
		case "explode_complex":
		{
			self thread function_42300153(var_a0ad4f34, 300);
			break;
		}
		case "destructible_explosive_incendiary_small":
		{
			self function_6cb467e7(var_a0ad4f34, 230);
			break;
		}
		case "destructible_explosive_incendiary_large":
		{
			self function_6cb467e7(var_a0ad4f34, 265, 1);
			break;
		}
		case "destructible_explosive_electrical_small":
		{
			self function_c3f45e13(var_a0ad4f34, 240);
			break;
		}
		case "destructible_explosive_electrical_large":
		{
			self function_c3f45e13(var_a0ad4f34, 290, 1);
			break;
		}
		case "destructible_explosive_concussive_small":
		{
			self function_aae4d4a1(var_a0ad4f34, 240);
			break;
		}
		case "destructible_explosive_concussive_large":
		{
			self function_aae4d4a1(var_a0ad4f34, 275, 1);
			break;
		}
		case default:
		{
			break;
		}
	}
	if(isdefined(var_a0ad4f34) && function_65f192a6(var_a0ad4f34))
	{
		var_a0ad4f34 function_8a492eee(namespace_1d795d47::function_52c50cb8(), "destructibles_destroyed");
	}
	namespace_d8129fdd::function_1a69bad6(self, var_a0ad4f34, var_3e24751e, var_42897b0b);
	if(isdefined(level.var_e7484c42[var_3e24751e]))
	{
		self thread [[level.var_e7484c42[var_3e24751e]]](var_3e24751e, var_a0ad4f34);
	}
}

/*
	Name: function_a381d4e5
	Namespace: namespace_c8c4714f
	Checksum: 0xB75096CF
	Offset: 0xF18
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_a381d4e5(var_a0ad4f34)
{
	self endon("hash_128f8789");
	wait(function_dc99997a(7, 10));
	self thread function_940b72ed(var_a0ad4f34);
}

/*
	Name: function_ec338b03
	Namespace: namespace_c8c4714f
	Checksum: 0xAA3E1C70
	Offset: 0xF70
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_ec338b03(var_a0ad4f34)
{
	if(isdefined(self.var_6c758a84) && self.var_6c758a84)
	{
		return;
	}
	self.var_6c758a84 = 1;
	var_a4e8111c = VectorScale((0, 0, 1), 5);
	self function_eac31668(self.var_722885f3 + var_a4e8111c, 256, 300, 75, var_a0ad4f34, "MOD_EXPLOSIVE", function_c4d5ec1f("explodable_barrel"));
	function_75c1521a(self.var_722885f3, 255, 0);
	if(isdefined(var_a0ad4f34))
	{
		self function_c3945cd5(self.var_3a90f16b + 10000, self.var_722885f3 + var_a4e8111c, var_a0ad4f34);
	}
	else
	{
		self function_c3945cd5(self.var_3a90f16b + 10000, self.var_722885f3 + var_a4e8111c);
	}
}

/*
	Name: function_adb551df
	Namespace: namespace_c8c4714f
	Checksum: 0xC52AA86A
	Offset: 0x10A0
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_adb551df(var_3e24751e, var_a0ad4f34)
{
	self endon("hash_128f8789");
	var_ce6cf39 = [];
	var_fa42a0e2 = function_f45850ec(var_3e24751e, 23);
	var_b952f48f = function_d6df1f20(var_fa42a0e2, "_");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_b952f48f.size; var_c957f6b6++)
	{
		var_ce6cf39[var_ce6cf39.size] = function_b6b79a0(var_b952f48f[var_c957f6b6]);
	}
	if(var_ce6cf39.size <= 0)
	{
		var_ce6cf39[0] = 5;
		var_ce6cf39[1] = 10;
	}
	wait(function_dc99997a(var_ce6cf39[0], var_ce6cf39[1]));
	function_ec338b03(var_a0ad4f34);
}

/*
	Name: function_42300153
	Namespace: namespace_c8c4714f
	Checksum: 0x70B2562F
	Offset: 0x11E8
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_42300153(var_a0ad4f34, var_cbeff69a)
{
	var_a4e8111c = VectorScale((0, 0, 1), 5);
	if(isdefined(var_a0ad4f34))
	{
		self function_eac31668(self.var_722885f3 + var_a4e8111c, var_cbeff69a, 300, 100, var_a0ad4f34);
	}
	else
	{
		self function_eac31668(self.var_722885f3 + var_a4e8111c, var_cbeff69a, 300, 100);
	}
	function_75c1521a(self.var_722885f3 + var_a4e8111c, var_cbeff69a, 0);
	if(isdefined(var_a0ad4f34))
	{
		self function_c3945cd5(20000, self.var_722885f3 + var_a4e8111c, var_a0ad4f34, 0);
	}
	else
	{
		self function_c3945cd5(20000, self.var_722885f3 + var_a4e8111c);
	}
}

/*
	Name: function_940b72ed
	Namespace: namespace_c8c4714f
	Checksum: 0xDE2C219B
	Offset: 0x1318
	Size: 0x1C3
	Parameters: 2
	Flags: None
*/
function function_940b72ed(var_a0ad4f34, var_5ba1152c)
{
	if(isdefined(self.var_c9cd84b2) && self.var_c9cd84b2)
	{
		return;
	}
	if(!isdefined(var_5ba1152c))
	{
		var_5ba1152c = 1;
	}
	self notify("hash_c9cd84b2");
	self.var_c9cd84b2 = 1;
	if(!function_85e4c3b3(self))
	{
		if(isdefined(var_a0ad4f34))
		{
			self function_eac31668(self.var_722885f3, 256, 300, 75, var_a0ad4f34, "MOD_EXPLOSIVE", function_c4d5ec1f("destructible_car"));
		}
		else
		{
			self function_eac31668(self.var_722885f3, 256, 300, 75);
		}
		function_75c1521a(self.var_722885f3, 255, 0);
	}
	if(isdefined(var_a0ad4f34))
	{
		var_a0ad4f34 thread namespace_f74b04eb::function_473378d9();
	}
	level.var_a1ccd926++;
	if(isdefined(var_a0ad4f34))
	{
		self function_c3945cd5(self.var_3a90f16b + 10000, self.var_722885f3 + (0, 0, 1), var_a0ad4f34);
	}
	else
	{
		self function_c3945cd5(self.var_3a90f16b + 10000, self.var_722885f3 + (0, 0, 1));
	}
	self function_d6b927f9();
}

/*
	Name: function_568c7d06
	Namespace: namespace_c8c4714f
	Checksum: 0x6AE7220D
	Offset: 0x14E8
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_568c7d06()
{
	self endon("hash_aaf711ed");
	self endon("hash_128f8789");
	for(;;)
	{
		self waittill("hash_c4cf2014", var_4a93c703);
		if(!isdefined(var_4a93c703) || !isdefined(var_4a93c703.var_6df9264))
		{
			continue;
		}
		if(var_4a93c703.var_6df9264 == "t5_weapon_crossbow_bolt" || var_4a93c703.var_6df9264 == "t6_wpn_grenade_semtex_projectile" || var_4a93c703.var_6df9264 == "wpn_t7_c4_world")
		{
			self thread function_f56db889(var_4a93c703);
		}
	}
}

/*
	Name: function_f56db889
	Namespace: namespace_c8c4714f
	Checksum: 0x4A9AEE59
	Offset: 0x15B8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_f56db889(var_4a93c703)
{
	self endon("hash_aaf711ed");
	self endon("hash_128f8789");
	var_5e36fd2e = function_ee13ccb6(var_4a93c703);
	if(isdefined(var_5e36fd2e) && var_4a93c703.var_6df9264 == "wpn_t7_c4_world")
	{
		var_5e36fd2e endon("hash_643a7daf");
		var_5e36fd2e endon("hash_492c1e59");
		var_4a93c703 endon("hash_bf37372b");
		var_4a93c703 thread function_37431932(self);
	}
	var_4a93c703 waittill("hash_3c655080");
	if(isdefined(var_5e36fd2e))
	{
		self function_c3945cd5(self.var_3a90f16b + 10000, self.var_722885f3 + (0, 0, 1), var_5e36fd2e);
	}
	else
	{
		self function_c3945cd5(self.var_3a90f16b + 10000, self.var_722885f3 + (0, 0, 1));
	}
}

/*
	Name: function_37431932
	Namespace: namespace_c8c4714f
	Checksum: 0x5F30CA38
	Offset: 0x16E8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_37431932(var_74c176c9)
{
	var_74c176c9 endon("hash_aaf711ed");
	var_74c176c9 endon("hash_128f8789");
	self endon("hash_128f8789");
	self waittill("hash_90d320a9");
	self notify("hash_bf37372b");
	var_74c176c9 thread function_f56db889(self);
}

/*
	Name: function_761f73b
	Namespace: namespace_c8c4714f
	Checksum: 0x97D00261
	Offset: 0x1758
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_761f73b()
{
	self endon("hash_c9cd84b2");
	self.var_c9cd84b2 = 0;
	self thread function_4682370e();
	self waittill("hash_aaf711ed", var_a0ad4f34);
	if(isdefined(self))
	{
		self thread function_940b72ed(var_a0ad4f34, 0);
	}
}

/*
	Name: function_7ba851a2
	Namespace: namespace_c8c4714f
	Checksum: 0x716F1A2F
	Offset: 0x17C8
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_7ba851a2()
{
	self endon("hash_aaf711ed");
	self endon("hash_c9cd84b2");
	self endon("hash_128f8789");
	for(;;)
	{
		self waittill("hash_c4cf2014", var_4a93c703);
		if(!isdefined(var_4a93c703) || !isdefined(var_4a93c703.var_6df9264))
		{
			continue;
		}
		if(var_4a93c703.var_6df9264 == "t5_weapon_crossbow_bolt" || var_4a93c703.var_6df9264 == "t6_wpn_grenade_semtex_projectile" || var_4a93c703.var_6df9264 == "wpn_t7_c4_world")
		{
			self thread function_da4a46ed(var_4a93c703);
		}
	}
}

/*
	Name: function_da4a46ed
	Namespace: namespace_c8c4714f
	Checksum: 0xA4CD371
	Offset: 0x18A8
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_da4a46ed(var_4a93c703)
{
	self endon("hash_aaf711ed");
	self endon("hash_c9cd84b2");
	self endon("hash_128f8789");
	var_5e36fd2e = function_ee13ccb6(var_4a93c703);
	if(isdefined(var_5e36fd2e) && var_4a93c703.var_6df9264 == "wpn_t7_c4_world")
	{
		var_5e36fd2e endon("hash_643a7daf");
		var_5e36fd2e endon("hash_492c1e59");
		var_4a93c703 endon("hash_bf37372b");
		var_4a93c703 thread function_fd485946(self);
	}
	var_4a93c703 waittill("hash_3c655080");
	if(isdefined(var_5e36fd2e))
	{
		self function_c3945cd5(self.var_3a90f16b + 10000, self.var_722885f3 + (0, 0, 1), var_5e36fd2e);
	}
	else
	{
		self function_c3945cd5(self.var_3a90f16b + 10000, self.var_722885f3 + (0, 0, 1));
	}
}

/*
	Name: function_fd485946
	Namespace: namespace_c8c4714f
	Checksum: 0x357EC4B1
	Offset: 0x19E0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_fd485946(var_39acfb5)
{
	var_39acfb5 endon("hash_aaf711ed");
	var_39acfb5 endon("hash_c9cd84b2");
	var_39acfb5 endon("hash_128f8789");
	self endon("hash_128f8789");
	self waittill("hash_90d320a9");
	self notify("hash_bf37372b");
	var_39acfb5 thread function_da4a46ed(self);
}

/*
	Name: function_4682370e
	Namespace: namespace_c8c4714f
	Checksum: 0xC8815DBB
	Offset: 0x1A58
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_4682370e()
{
	self endon("hash_c9cd84b2");
	self waittill("hash_128f8789", var_a0ad4f34);
	self notify("hash_aaf711ed", var_a0ad4f34);
}

/*
	Name: function_e6244a90
	Namespace: namespace_c8c4714f
	Checksum: 0xB501EA33
	Offset: 0x1AA0
	Size: 0x11B
	Parameters: 5
	Flags: None
*/
function function_e6244a90(var_279e4e97, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8)
{
	if(var_279e4e97 == "broken")
	{
		var_3b4a7575 = var_dbb2aef5;
		var_a0ad4f34 = var_1b5295e;
		var_fd7c985 = var_27b7a3c7;
		var_dfcc01fd = var_1da64ae8;
		function_50f2d9cb(var_3b4a7575, var_a0ad4f34, var_dfcc01fd);
		self notify(var_279e4e97, var_3b4a7575, var_a0ad4f34);
	}
	else if(var_279e4e97 == "breakafter")
	{
		var_fd7c985 = var_dbb2aef5;
		var_60db70fa = var_1b5295e;
		var_f9348fda = var_27b7a3c7;
		self thread function_4ffe3888(var_60db70fa, var_f9348fda, var_fd7c985);
	}
}

/*
	Name: function_4ffe3888
	Namespace: namespace_c8c4714f
	Checksum: 0x2D7AB1C2
	Offset: 0x1BC8
	Size: 0x63
	Parameters: 3
	Flags: None
*/
function function_4ffe3888(var_60db70fa, var_f9348fda, var_fd7c985)
{
	self notify("hash_4ffe3888");
	self endon("hash_4ffe3888");
	wait(var_60db70fa);
	self function_c3945cd5(var_f9348fda, self.var_722885f3, undefined, undefined);
}

/*
	Name: function_6cb467e7
	Namespace: namespace_c8c4714f
	Checksum: 0xA7A30C58
	Offset: 0x1C38
	Size: 0x1E3
	Parameters: 3
	Flags: None
*/
function function_6cb467e7(var_a0ad4f34, var_42897b0b, var_34aa7e9b)
{
	if(!isdefined(var_34aa7e9b))
	{
		var_34aa7e9b = 0;
	}
	if(!function_85e4c3b3(self))
	{
		var_a4e8111c = VectorScale((0, 0, 1), 5);
		if(isdefined(var_a0ad4f34))
		{
			self function_eac31668(self.var_722885f3 + var_a4e8111c, var_42897b0b, 300, 10, var_a0ad4f34, "MOD_BURNED", function_c4d5ec1f("incendiary_fire"));
		}
		else
		{
			self function_eac31668(self.var_722885f3 + var_a4e8111c, var_42897b0b, 300, 10);
		}
		function_75c1521a(self.var_722885f3, var_42897b0b, 1, var_34aa7e9b);
		if(var_34aa7e9b)
		{
			level thread function_906eae90(self.var_722885f3, 80, 10);
		}
		else
		{
			level thread function_906eae90(self.var_722885f3, 50, 10);
		}
	}
	if(isdefined(self.var_b07228b6))
	{
		var_d903e6e = function_6ada35ba(self.var_b07228b6, "targetname");
		if(isdefined(var_d903e6e))
		{
			var_d903e6e function_dc8c8404();
		}
	}
	self function_d6b927f9();
}

/*
	Name: function_906eae90
	Namespace: namespace_c8c4714f
	Checksum: 0xE30D7A2E
	Offset: 0x1E28
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function function_906eae90(var_b71ed4a2, var_562b538e, var_78962fff)
{
	var_f7ebb04b = function_9b7fda5e("trigger_radius_hurt", var_b71ed4a2, 0, var_562b538e, var_562b538e);
	var_f7ebb04b.var_75dbd7 = "heat";
	wait(var_78962fff);
	var_f7ebb04b function_dc8c8404();
}

/*
	Name: function_c3f45e13
	Namespace: namespace_c8c4714f
	Checksum: 0xDFDF4049
	Offset: 0x1EB8
	Size: 0x163
	Parameters: 3
	Flags: None
*/
function function_c3f45e13(var_a0ad4f34, var_42897b0b, var_34aa7e9b)
{
	if(!function_85e4c3b3(self))
	{
		var_a4e8111c = VectorScale((0, 0, 1), 5);
		if(isdefined(var_a0ad4f34))
		{
			self function_eac31668(self.var_722885f3 + var_a4e8111c, var_42897b0b, 300, 10, var_a0ad4f34, "MOD_ELECTROCUTED");
		}
		else
		{
			self function_eac31668(self.var_722885f3 + var_a4e8111c, var_42897b0b, 300, 10);
		}
		function_75c1521a(self.var_722885f3, var_42897b0b, 1, var_34aa7e9b);
	}
	if(isdefined(self.var_b07228b6))
	{
		var_d903e6e = function_6ada35ba(self.var_b07228b6, "targetname");
		if(isdefined(var_d903e6e))
		{
			var_d903e6e function_dc8c8404();
		}
	}
	self function_d6b927f9();
}

/*
	Name: function_aae4d4a1
	Namespace: namespace_c8c4714f
	Checksum: 0x53764405
	Offset: 0x2028
	Size: 0x163
	Parameters: 3
	Flags: None
*/
function function_aae4d4a1(var_a0ad4f34, var_42897b0b, var_34aa7e9b)
{
	if(!function_85e4c3b3(self))
	{
		var_a4e8111c = VectorScale((0, 0, 1), 5);
		if(isdefined(var_a0ad4f34))
		{
			self function_eac31668(self.var_722885f3 + var_a4e8111c, var_42897b0b, 300, 10, var_a0ad4f34, "MOD_GRENADE");
		}
		else
		{
			self function_eac31668(self.var_722885f3 + var_a4e8111c, var_42897b0b, 300, 10);
		}
		function_75c1521a(self.var_722885f3, var_42897b0b, 1, var_34aa7e9b);
	}
	if(isdefined(self.var_b07228b6))
	{
		var_d903e6e = function_6ada35ba(self.var_b07228b6, "targetname");
		if(isdefined(var_d903e6e))
		{
			var_d903e6e function_dc8c8404();
		}
	}
	self function_d6b927f9();
}

