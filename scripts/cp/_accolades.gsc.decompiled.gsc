#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_collectibles;
#using scripts\cp\_decorations;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\table_shared;
#using scripts\shared\util_shared;

#namespace namespace_fe079222;

/*
	Name: function_2dc19561
	Namespace: namespace_fe079222
	Checksum: 0xD63EC753
	Offset: 0x388
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("accolades", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_fe079222
	Checksum: 0x1A356F14
	Offset: 0x3D0
	Size: 0x343
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	if(function_214e644a())
	{
		return;
	}
	var_c02de660 = [];
	var_c02de660[var_c02de660.size] = "AQUIFER";
	var_c02de660[var_c02de660.size] = "BIODOMES";
	var_c02de660[var_c02de660.size] = "BLACKSTATION";
	var_c02de660[var_c02de660.size] = "INFECTION";
	var_c02de660[var_c02de660.size] = "LOTUS";
	var_c02de660[var_c02de660.size] = "NEWWORLD";
	var_c02de660[var_c02de660.size] = "PROLOGUE";
	var_c02de660[var_c02de660.size] = "RAMSES";
	var_c02de660[var_c02de660.size] = "SGEN";
	var_c02de660[var_c02de660.size] = "VENGEANCE";
	var_c02de660[var_c02de660.size] = "ZURICH";
	level.var_fe079222 = [];
	level.var_deb20b04 = function_9065d6ea();
	level.var_827b82e9 = function_4794dda();
	if(isdefined(level.var_827b82e9) && function_c4158488(level.var_deb20b04))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_c02de660.size; var_c957f6b6++)
		{
			if(var_c02de660[var_c957f6b6] == function_5fd83932(level.var_827b82e9))
			{
				level.var_e232c324 = var_c957f6b6 + 1;
				break;
			}
		}
		namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
		namespace_dabbe128::function_356a4ee1(&function_aebcf025);
		namespace_dabbe128::function_95670def(&function_7d27aacb);
		level.var_f8718de3 = "MISSION_" + function_5fd83932(level.var_827b82e9) + "_";
		level.var_d8f32e57 = function_b6b79a0(function_d4cc1345("gamedata/stats/cp/statsmilestones1.csv", 4, level.var_f8718de3 + "UNTOUCHED", 0));
		function_50f16166(level.var_f8718de3 + "UNTOUCHED", undefined, 1);
		function_50f16166(level.var_f8718de3 + "SCORE");
		function_50f16166(level.var_f8718de3 + "COLLECTIBLE");
		level thread function_4c436dfe();
	}
}

/*
	Name: function_5b6b9132
	Namespace: namespace_fe079222
	Checksum: 0xC4E7E1DA
	Offset: 0x720
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	if(function_214e644a())
	{
		return;
	}
}

/*
	Name: function_4f9d8dec
	Namespace: namespace_fe079222
	Checksum: 0x57BCF5DC
	Offset: 0x740
	Size: 0x4D
	Parameters: 1
	Flags: None
*/
function function_4f9d8dec(var_5ba0c4e7)
{
	var_fe079222 = self namespace_9f824288::function_36adbb9c("accolades");
	if(isdefined(var_fe079222))
	{
		return var_fe079222[var_5ba0c4e7];
	}
}

/*
	Name: function_50f58bd0
	Namespace: namespace_fe079222
	Checksum: 0xDBF64031
	Offset: 0x798
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_50f58bd0(var_5ba0c4e7, var_a3dc571a)
{
	var_83736781 = self namespace_9f824288::function_36adbb9c("accolades");
	var_83736781[var_5ba0c4e7] = var_a3dc571a;
	self namespace_9f824288::function_bee608f0("accolades", var_83736781);
}

/*
	Name: function_464d3607
	Namespace: namespace_fe079222
	Checksum: 0x29EFD725
	Offset: 0x818
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_464d3607(var_36b04a4a, var_3180ccbb)
{
	if(isdefined(var_3180ccbb) && var_3180ccbb)
	{
		return self function_84368297("PlayerStatsByMap", level.var_deb20b04, "accolades", var_36b04a4a, "state");
	}
	else
	{
		return self function_84368297("PlayerStatsByMap", level.var_deb20b04, "accolades", var_36b04a4a, "value");
	}
}

/*
	Name: function_ce95384b
	Namespace: namespace_fe079222
	Checksum: 0x682169A2
	Offset: 0x8C0
	Size: 0x113
	Parameters: 4
	Flags: None
*/
function function_ce95384b(var_36b04a4a, var_3180ccbb, var_9368ba0c, var_b3982c20)
{
	if(isdefined(var_3180ccbb) && var_3180ccbb)
	{
		self function_e2d5f2db(var_36b04a4a, var_9368ba0c);
		self function_8f67433b("PlayerStatsByMap", level.var_deb20b04, "accolades", var_36b04a4a, "state", var_9368ba0c);
	}
	else if(isdefined(var_b3982c20) && var_b3982c20)
	{
		self function_86373aa7(var_36b04a4a, var_9368ba0c);
	}
	self function_8f67433b("PlayerStatsByMap", level.var_deb20b04, "accolades", var_36b04a4a, "value", var_9368ba0c);
	/#
		self.var_eb7d74bb = 1;
	#/
}

/*
	Name: function_520227e6
	Namespace: namespace_fe079222
	Checksum: 0x5924BDDA
	Offset: 0x9E0
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_520227e6(var_36b04a4a)
{
	return self function_464d3607(var_36b04a4a, 0);
}

/*
	Name: function_de8b9e62
	Namespace: namespace_fe079222
	Checksum: 0xEED5E7B7
	Offset: 0xA10
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function function_de8b9e62(var_36b04a4a, var_9368ba0c, var_b3982c20)
{
	self function_ce95384b(var_36b04a4a, 0, var_9368ba0c, var_b3982c20);
}

/*
	Name: function_3bbb909b
	Namespace: namespace_fe079222
	Checksum: 0x8D5C91C9
	Offset: 0xA58
	Size: 0x6D
	Parameters: 3
	Flags: None
*/
function function_3bbb909b(var_36b04a4a, var_9368ba0c, var_b3982c20)
{
	var_5a18ba9e = self function_520227e6(var_36b04a4a);
	self function_de8b9e62(var_36b04a4a, var_5a18ba9e + var_9368ba0c, var_b3982c20);
	return var_5a18ba9e + var_9368ba0c;
}

/*
	Name: function_3a7fd23a
	Namespace: namespace_fe079222
	Checksum: 0x264464E4
	Offset: 0xAD0
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_3a7fd23a(var_36b04a4a)
{
	return self function_464d3607(var_36b04a4a, 1);
}

/*
	Name: function_8992915e
	Namespace: namespace_fe079222
	Checksum: 0xE13E5E42
	Offset: 0xB08
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_8992915e(var_36b04a4a, var_86c93e40)
{
	self function_ce95384b(var_36b04a4a, 1, var_86c93e40);
}

/*
	Name: function_86373aa7
	Namespace: namespace_fe079222
	Checksum: 0x29DD6E99
	Offset: 0xB48
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_86373aa7(var_36b04a4a, var_9368ba0c)
{
	self function_b26abbde("accolades" + var_36b04a4a + "value", var_9368ba0c);
}

/*
	Name: function_e2d5f2db
	Namespace: namespace_fe079222
	Checksum: 0xB04FC44
	Offset: 0xB98
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_e2d5f2db(var_36b04a4a, var_86c93e40)
{
	self function_b26abbde("accolades" + var_36b04a4a + "state", var_86c93e40);
}

/*
	Name: function_4f34644b
	Namespace: namespace_fe079222
	Checksum: 0xF5774B7A
	Offset: 0xBE8
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_4f34644b(var_36b04a4a)
{
	return self function_ebacf39a("accolades" + var_36b04a4a + "value");
}

/*
	Name: function_31381fa7
	Namespace: namespace_fe079222
	Checksum: 0x31C73142
	Offset: 0xC28
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_31381fa7(var_36b04a4a)
{
	return self function_ebacf39a("accolades" + var_36b04a4a + "state");
}

/*
	Name: function_cc6b3591
	Namespace: namespace_fe079222
	Checksum: 0x78BB8F3C
	Offset: 0xC68
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_cc6b3591(var_36b04a4a)
{
	self function_b016cdb3("accolades" + var_36b04a4a + "state");
	self function_b016cdb3("accolades" + var_36b04a4a + "value");
}

/*
	Name: function_77b3b4d1
	Namespace: namespace_fe079222
	Checksum: 0x4068A011
	Offset: 0xCD0
	Size: 0x1C1
	Parameters: 0
	Flags: None
*/
function function_77b3b4d1()
{
	if(self == level)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_77b3b4d1();
		}
		break;
	}
	var_fe079222 = self namespace_9f824288::function_36adbb9c("accolades");
	if(!isdefined(var_fe079222))
	{
		return;
	}
	foreach(var_8c03895d in level.var_fe079222)
	{
		var_b71e3573 = var_fe079222[var_5ba0c4e7];
		if(var_b71e3573.var_2d2e72b6 > self function_520227e6(var_b71e3573.var_5e76f0af))
		{
			self function_de8b9e62(var_b71e3573.var_5e76f0af, var_b71e3573.var_2d2e72b6, 1);
		}
	}
}

/*
	Name: function_9ba543a3
	Namespace: namespace_fe079222
	Checksum: 0xB55DAA3
	Offset: 0xEA0
	Size: 0x87
	Parameters: 2
	Flags: Private
*/
function private function_9ba543a3(var_5ba0c4e7, var_eb856299)
{
	var_51ccabeb = function_8f1ef9("gamedata/stats/cp/statsmilestones1.csv", 4, var_5ba0c4e7);
	var_35cb50ff = function_5a31ce6c("gamedata/stats/cp/statsmilestones1.csv", var_51ccabeb, 2);
	return function_b6b79a0(var_35cb50ff) <= var_eb856299;
}

/*
	Name: function_214e644a
	Namespace: namespace_fe079222
	Checksum: 0x440F2787
	Offset: 0xF30
	Size: 0x29
	Parameters: 0
	Flags: Private
*/
function private function_214e644a()
{
	return isdefined(level.var_837b3a61) && level.var_837b3a61 || function_27c72c1b();
}

/*
	Name: function_3c63ee8
	Namespace: namespace_fe079222
	Checksum: 0x10C75537
	Offset: 0xF68
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_3c63ee8()
{
	return !function_7ddcd415() && (function_6f1ebe57("skipto") == "" || function_6f1ebe57("skipto") == "level_start");
}

/*
	Name: function_994b29af
	Namespace: namespace_fe079222
	Checksum: 0x3C691062
	Offset: 0xFD8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_994b29af(var_5ba0c4e7)
{
	var_ea75dd36 = function_d4cc1345("gamedata/stats/cp/statsmilestones1.csv", 4, function_5fd83932(var_5ba0c4e7), 7);
	return var_ea75dd36 != "";
}

/*
	Name: function_7efd1da3
	Namespace: namespace_fe079222
	Checksum: 0x9C46B75E
	Offset: 0x1040
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_7efd1da3(var_5ba0c4e7)
{
	var_a33c5066 = function_d4cc1345("gamedata/stats/cp/statsmilestones1.csv", 4, function_5fd83932(var_5ba0c4e7), 6);
	if(var_a33c5066 != "")
	{
		return function_b6b79a0(var_a33c5066);
	}
	return 0;
}

/*
	Name: function_77abfac7
	Namespace: namespace_fe079222
	Checksum: 0x569D9FB
	Offset: 0x10C0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_77abfac7(var_9b8b52b0)
{
	if(!isdefined(var_9b8b52b0))
	{
		var_9b8b52b0 = 1;
	}
	var_6dff2ed7 = self function_84368297("unlocks", 0);
	var_6dff2ed7 = var_6dff2ed7 + var_9b8b52b0;
	self function_8f67433b("unlocks", 0, var_6dff2ed7);
}

/*
	Name: function_92050191
	Namespace: namespace_fe079222
	Checksum: 0x76CAACD1
	Offset: 0x1148
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function function_92050191(var_36b04a4a, var_eb856299)
{
	var_9d479b7 = self function_84368297("PlayerStatsByMap", function_9065d6ea(), "accolades", var_36b04a4a, "highestValue");
	if(var_eb856299 > var_9d479b7)
	{
		self function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "accolades", var_36b04a4a, "highestValue", var_eb856299);
	}
}

/*
	Name: function_feabf577
	Namespace: namespace_fe079222
	Checksum: 0x68D87354
	Offset: 0x1208
	Size: 0x79
	Parameters: 1
	Flags: None
*/
function function_feabf577(var_5ba0c4e7)
{
	var_8dab6968 = function_d4cc1345("gamedata/stats/cp/statsmilestones1.csv", 4, function_5fd83932(var_5ba0c4e7), 2);
	if(var_8dab6968 == "")
	{
		return 0;
	}
	return function_b6b79a0(var_8dab6968);
}

/*
	Name: function_42acdca5
	Namespace: namespace_fe079222
	Checksum: 0xF584BBBE
	Offset: 0x1290
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_42acdca5(var_5ba0c4e7)
{
	var_b71e3573 = self function_4f9d8dec(var_5ba0c4e7);
	if(function_9ba543a3(var_5ba0c4e7, var_b71e3573.var_2d2e72b6))
	{
		return;
	}
	self function_cc6b3591(var_b71e3573.var_5e76f0af);
	self function_8992915e(var_b71e3573.var_5e76f0af, 0);
	if(isdefined(var_b71e3573.var_ab795acb) && var_b71e3573.var_ab795acb)
	{
		var_b71e3573.var_2d2e72b6 = 1;
	}
	else
	{
		var_b71e3573.var_2d2e72b6 = 0;
	}
	self function_de8b9e62(var_b71e3573.var_5e76f0af, var_b71e3573.var_2d2e72b6, 0);
}

/*
	Name: function_50f16166
	Namespace: namespace_fe079222
	Checksum: 0x6A3B1FCF
	Offset: 0x13C0
	Size: 0x10B
	Parameters: 3
	Flags: None
*/
function function_50f16166(var_5ba0c4e7, var_fe4f6a44, var_ab795acb)
{
	if(function_214e644a())
	{
		return;
	}
	if(!isdefined(level.var_fe079222[var_5ba0c4e7]))
	{
		var_d8f32e57 = function_b6b79a0(function_d4cc1345("gamedata/stats/cp/statsmilestones1.csv", 4, var_5ba0c4e7, 0));
		level.var_fe079222[var_5ba0c4e7] = function_a8fb77bd();
		level.var_fe079222[var_5ba0c4e7].var_1b47f988 = var_fe4f6a44;
		level.var_fe079222[var_5ba0c4e7].var_5e76f0af = var_d8f32e57 - level.var_d8f32e57;
		level.var_fe079222[var_5ba0c4e7].var_ab795acb = isdefined(var_ab795acb) && var_ab795acb;
	}
}

/*
	Name: function_331efedc
	Namespace: namespace_fe079222
	Checksum: 0x759A9010
	Offset: 0x14D8
	Size: 0x4D3
	Parameters: 3
	Flags: None
*/
function function_331efedc(var_5ba0c4e7, var_529f54a1, var_50f65478)
{
	if(!isdefined(var_529f54a1))
	{
		var_529f54a1 = 1;
	}
	if(function_214e644a())
	{
		return;
	}
	if(self == level)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_331efedc(var_5ba0c4e7);
		}
	}
	else
	{
		var_b71e3573 = self function_4f9d8dec(var_5ba0c4e7);
		if(!isdefined(var_b71e3573))
		{
			return;
		}
		if(function_3a7fd23a(var_b71e3573.var_5e76f0af) != 0)
		{
			if(var_5ba0c4e7 == level.var_f8718de3 + "SCORE")
			{
				var_b71e3573.var_2d2e72b6 = var_b71e3573.var_2d2e72b6 + var_529f54a1;
				self function_92050191(var_b71e3573.var_5e76f0af, var_b71e3573.var_2d2e72b6);
			}
			return;
		}
		if(!(isdefined(var_b71e3573.var_ab795acb) && var_b71e3573.var_ab795acb))
		{
			var_b71e3573.var_2d2e72b6 = var_b71e3573.var_2d2e72b6 + var_529f54a1;
		}
		else
		{
			var_b71e3573.var_2d2e72b6 = 0;
		}
		/#
			if(!(isdefined(var_50f65478) && var_50f65478))
			{
				var_cacb0169 = function_5e4fe4f9("Dev Block strings are not supported", 4, var_5ba0c4e7, 5);
				function_d52b076d(var_cacb0169);
			}
			self.var_eb7d74bb = 1;
		#/
		self function_de8b9e62(var_b71e3573.var_5e76f0af, var_b71e3573.var_2d2e72b6, 0);
		self function_92050191(var_b71e3573.var_5e76f0af, var_b71e3573.var_2d2e72b6);
		if(!function_9ba543a3(var_5ba0c4e7, var_b71e3573.var_2d2e72b6) || var_b71e3573.var_5e76f0af == 1)
		{
			return;
		}
		self function_de8b9e62(var_b71e3573.var_5e76f0af, var_b71e3573.var_2d2e72b6, 1);
		self function_8992915e(var_b71e3573.var_5e76f0af, 1);
		var_fdcc76d1 = function_5e4fe4f9("gamedata/stats/cp/statsmilestones1.csv", 4, var_5ba0c4e7, 8);
		if(isdefined(var_fdcc76d1))
		{
			namespace_82b91a51::function_964b7eb7(self, var_fdcc76d1);
			self function_8a20e55d("uin_accolade");
		}
		self thread namespace_f74b04eb::function_96ed590f("career_accolades");
		var_b71e3573.var_8a644747 = 1;
		self namespace_8f94416a::function_e72fc18();
		if(isdefined(var_b71e3573.var_9ebe4012) && var_b71e3573.var_9ebe4012)
		{
			self thread namespace_f74b04eb::function_96ed590f("career_tokens");
			self function_9320359d(1);
		}
		self function_dde1ac37("award_accolade", var_b71e3573.var_2376b52b);
		self namespace_8f94416a::function_59f1fa79();
		function_9a7ed193(self);
	}
}

/*
	Name: function_35e3d94b
	Namespace: namespace_fe079222
	Checksum: 0xFC9CEB9D
	Offset: 0x19B8
	Size: 0xBF
	Parameters: 2
	Flags: Private
*/
function private function_35e3d94b(var_5ba0c4e7, var_8b453fd2)
{
	self endon("hash_115de864");
	self endon("hash_643a7daf");
	if(!isdefined(self.var_4fbad7c0))
	{
		self.var_4fbad7c0 = [];
	}
	if(isdefined(self.var_4fbad7c0[var_8b453fd2]) && self.var_4fbad7c0[var_8b453fd2])
	{
		return;
	}
	self.var_4fbad7c0[var_8b453fd2] = 1;
	while(1)
	{
		self waittill(var_8b453fd2, var_529f54a1);
		self function_331efedc(var_5ba0c4e7, var_529f54a1);
	}
}

/*
	Name: function_115de864
	Namespace: namespace_fe079222
	Checksum: 0xCDAC2E41
	Offset: 0x1A80
	Size: 0x453
	Parameters: 0
	Flags: Private
*/
function private function_115de864()
{
	self notify("hash_115de864");
	var_fe079222 = [];
	self namespace_9f824288::function_bee608f0("accolades", var_fe079222);
	foreach(var_8c03895d in level.var_fe079222)
	{
		var_aa6073 = function_a8fb77bd();
		var_aa6073.var_5e76f0af = var_8c03895d.var_5e76f0af;
		var_aa6073.var_ab795acb = var_8c03895d.var_ab795acb;
		var_cba20a96 = self function_3a7fd23a(var_8c03895d.var_5e76f0af);
		self function_e2d5f2db(var_8c03895d.var_5e76f0af, var_cba20a96);
		if(var_cba20a96 != 0)
		{
			var_aa6073.var_2d2e72b6 = function_520227e6(var_8c03895d.var_5e76f0af);
			var_aa6073.var_8a644747 = 1;
			self function_50f58bd0(var_5ba0c4e7, var_aa6073);
			self function_86373aa7(var_8c03895d.var_5e76f0af, var_aa6073.var_2d2e72b6);
			continue;
		}
		if(isdefined(var_8c03895d.var_1b47f988) && (!isdefined(function_77fdb408(var_5ba0c4e7, "COLLECTIBLE")) && function_77fdb408(var_5ba0c4e7, "COLLECTIBLE")))
		{
			self thread function_35e3d94b(var_5ba0c4e7, var_8c03895d.var_1b47f988);
		}
		if(var_8c03895d.var_ab795acb)
		{
			var_aa6073.var_2d2e72b6 = 1;
		}
		else
		{
			var_aa6073.var_2d2e72b6 = 0;
		}
		if(isdefined(function_77fdb408(var_5ba0c4e7, "COLLECTIBLE")) && function_77fdb408(var_5ba0c4e7, "COLLECTIBLE"))
		{
			var_aa6073.var_2d2e72b6 = self function_84368297("PlayerStatsByMap", function_9065d6ea(), "accolades", var_8c03895d.var_5e76f0af, "highestValue");
		}
		self function_de8b9e62(var_8c03895d.var_5e76f0af, var_aa6073.var_2d2e72b6, 1);
		if(function_994b29af(var_5ba0c4e7))
		{
			var_aa6073.var_9ebe4012 = 1;
		}
		var_aa6073.var_2376b52b = function_7efd1da3(var_5ba0c4e7);
		self function_50f58bd0(var_5ba0c4e7, var_aa6073);
	}
	/#
		self.var_eb7d74bb = 1;
	#/
	self namespace_8f94416a::function_e72fc18();
	self namespace_9f824288::function_bee608f0("last_mission", function_4794dda());
}

/*
	Name: function_673a5138
	Namespace: namespace_fe079222
	Checksum: 0x45C94B93
	Offset: 0x1EE0
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function function_673a5138()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_88d3591a = self function_4f9d8dec(level.var_f8718de3 + "COLLECTIBLE");
	while(1)
	{
		self waittill("hash_eb5cc7bc");
		if(self function_3a7fd23a(var_88d3591a.var_5e76f0af) != 0)
		{
			continue;
		}
		self function_3bbb909b(var_88d3591a.var_5e76f0af, 1, 1);
		self function_331efedc(level.var_f8718de3 + "COLLECTIBLE");
	}
}

/*
	Name: function_d2380b2
	Namespace: namespace_fe079222
	Checksum: 0xB0AA4C2
	Offset: 0x1FC8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d2380b2()
{
	self endon("hash_643a7daf");
	var_b71e3573 = self function_4f9d8dec(level.var_f8718de3 + "UNTOUCHED");
	if(var_b71e3573.var_2d2e72b6 == 0)
	{
		return;
	}
	self namespace_82b91a51::function_5b7e3888("death", "increment_untouched");
	self function_331efedc(level.var_f8718de3 + "UNTOUCHED");
	self function_de8b9e62(var_b71e3573.var_5e76f0af, var_b71e3573.var_2d2e72b6, 1);
}

/*
	Name: function_39f05ec1
	Namespace: namespace_fe079222
	Checksum: 0x7876C739
	Offset: 0x20A8
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_39f05ec1()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_17911606 = self function_84368297("PlayerStatsByMap", function_9065d6ea(), "currentStats", "SCORE");
	var_7b12b16 = self function_4f9d8dec(level.var_f8718de3 + "SCORE");
	var_6962bddd = self function_3a7fd23a(var_7b12b16.var_5e76f0af);
	if(isdefined(var_6962bddd) && var_6962bddd)
	{
		return;
	}
	while(1)
	{
		self waittill("hash_13b2f144");
		var_17911606 = var_7b12b16.var_2d2e72b6;
		var_795417a6 = self.var_44fb8955["score"];
		var_fc3e4f80 = var_795417a6 - var_17911606;
		self function_331efedc(level.var_f8718de3 + "SCORE", var_fc3e4f80, 1);
	}
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_fe079222
	Checksum: 0x1850FCE4
	Offset: 0x2210
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	if(function_214e644a())
	{
		return;
	}
	self function_cf1b719a();
	if(!function_7ddcd415() && level.var_31aefea8 == level.var_574eb415)
	{
		self function_115de864();
	}
	/#
		if(isdefined(level.var_fe079222))
		{
			self.var_eb7d74bb = 1;
			self function_2d7075c8();
			self thread function_8082e9f0();
		}
	#/
}

/*
	Name: function_aebcf025
	Namespace: namespace_fe079222
	Checksum: 0xDA95208F
	Offset: 0x22D0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	if(self namespace_9f824288::function_36adbb9c("last_mission") === function_4794dda())
	{
		foreach(var_8c03895d in level.var_fe079222)
		{
			if(isdefined(var_8c03895d.var_1b47f988))
			{
				self thread function_35e3d94b(var_5ba0c4e7, var_8c03895d.var_1b47f988);
			}
		}
	}
	else
	{
		self function_115de864();
	}
	self thread function_3b92459f();
	self thread function_d2380b2();
	self thread function_673a5138();
	self thread function_39f05ec1();
}

/*
	Name: function_cf1b719a
	Namespace: namespace_fe079222
	Checksum: 0xFE05E667
	Offset: 0x2438
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_cf1b719a()
{
	if(!isdefined(level.var_fe079222))
	{
		return;
	}
	foreach(var_8c03895d in level.var_fe079222)
	{
		self function_cc6b3591(var_8c03895d.var_5e76f0af);
	}
}

/*
	Name: function_7d27aacb
	Namespace: namespace_fe079222
	Checksum: 0xD095E079
	Offset: 0x24F0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_7d27aacb()
{
	foreach(var_8c03895d in level.var_fe079222)
	{
		if(self function_3a7fd23a(var_8c03895d.var_5e76f0af) == 1)
		{
			self function_8992915e(var_8c03895d.var_5e76f0af, 2);
		}
	}
	self namespace_9f824288::function_bee608f0("accolades", undefined);
	self namespace_9f824288::function_bee608f0("last_mission", "");
}

/*
	Name: function_8082e9f0
	Namespace: namespace_fe079222
	Checksum: 0xBE206A2D
	Offset: 0x2610
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_8082e9f0()
{
	/#
		self endon("hash_643a7daf");
		while(1)
		{
			var_c1905327 = function_6f1ebe57("Dev Block strings are not supported");
			if(isdefined(var_c1905327) && var_c1905327 != "Dev Block strings are not supported")
			{
				self function_a4b8b7d1(function_b6b79a0(var_c1905327));
			}
			if(var_c1905327 != "Dev Block strings are not supported")
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			if(self.var_eb7d74bb == 1 && isdefined(self.var_ab872594))
			{
				function_7aaf1e5d();
			}
			if(function_4bd0142f("Dev Block strings are not supported") > 0)
			{
				self function_1ea616fe();
			}
			else
			{
				self notify("hash_30b79005");
			}
			wait(1);
		}
	#/
}

/*
	Name: function_7b64a1e0
	Namespace: namespace_fe079222
	Checksum: 0xC1669079
	Offset: 0x2750
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_7b64a1e0()
{
	/#
		self endon("hash_643a7daf");
		self waittill("hash_30b79005");
		function_7aaf1e5d();
	#/
}

/*
	Name: function_7aaf1e5d
	Namespace: namespace_fe079222
	Checksum: 0x8C549448
	Offset: 0x2790
	Size: 0x1C1
	Parameters: 0
	Flags: None
*/
function function_7aaf1e5d()
{
	/#
		if(isdefined(self.var_ab872594))
		{
			foreach(var_ab872594 in self.var_ab872594)
			{
				var_ab872594 function_89cd542d();
			}
			foreach(var_5922e3b8 in self.var_5922e3b8)
			{
				var_5922e3b8 function_89cd542d();
			}
			foreach(var_eda8fa83 in self.var_87b86b14)
			{
				var_eda8fa83 function_89cd542d();
			}
			self.var_ab872594 = undefined;
			self.var_5922e3b8 = undefined;
			self.var_87b86b14 = undefined;
		}
	#/
}

/*
	Name: function_1ea616fe
	Namespace: namespace_fe079222
	Checksum: 0xA3AABF7D
	Offset: 0x2960
	Size: 0x8CF
	Parameters: 0
	Flags: None
*/
function function_1ea616fe()
{
	/#
		var_4f8217af = 0;
		var_297f9d46 = 100;
		var_c06a516a = "Dev Block strings are not supported";
		var_1c70e53e = "Dev Block strings are not supported";
		var_16bed2ea = "Dev Block strings are not supported";
		if(!isdefined(level.var_fe079222) || isdefined(self.var_ab872594) || !isdefined(self namespace_9f824288::function_36adbb9c("Dev Block strings are not supported")))
		{
			return;
		}
		self.var_ab872594 = [];
		self.var_5922e3b8 = [];
		self.var_87b86b14 = [];
		var_c74eaab3 = 0;
		var_ab872594 = function_ad13099a(self);
		var_5922e3b8 = function_ad13099a(self);
		var_87b86b14 = function_ad13099a(self);
		foreach(var_8c03895d in level.var_fe079222)
		{
			if(var_c74eaab3 % 7 == 6)
			{
				var_ab872594.var_4f8217af = var_4f8217af + 2;
				var_ab872594.var_297f9d46 = var_297f9d46 + 2;
				var_ab872594.var_b5536acc = "Dev Block strings are not supported";
				var_ab872594.var_db55e535 = "Dev Block strings are not supported";
				var_ab872594 function_f6181aca(var_c06a516a);
				var_ab872594.var_5773c805 = 1;
				var_ab872594.var_83253ac2 = "Dev Block strings are not supported";
				var_ab872594.var_79e0f792 = 1;
				var_5922e3b8.var_4f8217af = var_4f8217af + 120;
				var_5922e3b8.var_297f9d46 = var_297f9d46 + 2;
				var_5922e3b8.var_b5536acc = "Dev Block strings are not supported";
				var_5922e3b8.var_db55e535 = "Dev Block strings are not supported";
				var_5922e3b8 function_f6181aca(var_1c70e53e);
				var_5922e3b8.var_5773c805 = 1;
				var_5922e3b8.var_83253ac2 = "Dev Block strings are not supported";
				var_5922e3b8.var_79e0f792 = 1;
				var_87b86b14.var_4f8217af = var_4f8217af + 180;
				var_87b86b14.var_297f9d46 = var_297f9d46 + 2;
				var_87b86b14.var_b5536acc = "Dev Block strings are not supported";
				var_87b86b14.var_db55e535 = "Dev Block strings are not supported";
				var_87b86b14 function_f6181aca(var_16bed2ea);
				var_87b86b14.var_5773c805 = 1;
				var_87b86b14.var_83253ac2 = "Dev Block strings are not supported";
				var_87b86b14.var_79e0f792 = 1;
				self.var_ab872594[self.var_ab872594.size] = var_ab872594;
				self.var_5922e3b8[self.var_5922e3b8.size] = var_5922e3b8;
				self.var_87b86b14[self.var_87b86b14.size] = var_87b86b14;
				var_ab872594 = function_ad13099a(self);
				var_5922e3b8 = function_ad13099a(self);
				var_87b86b14 = function_ad13099a(self);
				var_297f9d46 = var_297f9d46 + 73;
				var_c74eaab3 = 1;
				var_c06a516a = var_5ba0c4e7 + "Dev Block strings are not supported";
				var_1c70e53e = self function_4f9d8dec(var_5ba0c4e7).var_2d2e72b6;
				if(isdefined(self function_4f9d8dec(var_5ba0c4e7).var_8a644747) && self function_4f9d8dec(var_5ba0c4e7).var_8a644747)
				{
					var_1c70e53e = var_1c70e53e + "Dev Block strings are not supported";
				}
				var_1c70e53e = var_1c70e53e + "Dev Block strings are not supported";
				var_16bed2ea = self function_520227e6(var_8c03895d.var_5e76f0af) + "Dev Block strings are not supported";
				continue;
			}
			var_c06a516a = var_c06a516a + var_5ba0c4e7 + "Dev Block strings are not supported";
			var_1c70e53e = var_1c70e53e + self function_4f9d8dec(var_5ba0c4e7).var_2d2e72b6;
			if(isdefined(self function_4f9d8dec(var_5ba0c4e7).var_8a644747) && self function_4f9d8dec(var_5ba0c4e7).var_8a644747)
			{
				var_1c70e53e = var_1c70e53e + "Dev Block strings are not supported";
			}
			var_1c70e53e = var_1c70e53e + "Dev Block strings are not supported";
			var_16bed2ea = var_16bed2ea + self function_520227e6(var_8c03895d.var_5e76f0af) + "Dev Block strings are not supported";
			var_c74eaab3++;
		}
		var_ab872594.var_4f8217af = var_4f8217af + 2;
		var_ab872594.var_297f9d46 = var_297f9d46 + 2;
		var_ab872594.var_b5536acc = "Dev Block strings are not supported";
		var_ab872594.var_db55e535 = "Dev Block strings are not supported";
		var_ab872594 function_f6181aca(var_c06a516a);
		var_ab872594.var_5773c805 = 1;
		var_ab872594.var_83253ac2 = "Dev Block strings are not supported";
		var_ab872594.var_79e0f792 = 1;
		var_5922e3b8.var_4f8217af = var_4f8217af + 120;
		var_5922e3b8.var_297f9d46 = var_297f9d46 + 2;
		var_5922e3b8.var_b5536acc = "Dev Block strings are not supported";
		var_5922e3b8.var_db55e535 = "Dev Block strings are not supported";
		var_5922e3b8 function_f6181aca(var_1c70e53e);
		var_5922e3b8.var_5773c805 = 1;
		var_5922e3b8.var_83253ac2 = "Dev Block strings are not supported";
		var_5922e3b8.var_79e0f792 = 1;
		var_87b86b14.var_4f8217af = var_4f8217af + 180;
		var_87b86b14.var_297f9d46 = var_297f9d46 + 2;
		var_87b86b14.var_b5536acc = "Dev Block strings are not supported";
		var_87b86b14.var_db55e535 = "Dev Block strings are not supported";
		var_87b86b14 function_f6181aca(var_16bed2ea);
		var_87b86b14.var_5773c805 = 1;
		var_87b86b14.var_83253ac2 = "Dev Block strings are not supported";
		var_87b86b14.var_79e0f792 = 1;
		self.var_ab872594[self.var_ab872594.size] = var_ab872594;
		self.var_5922e3b8[self.var_5922e3b8.size] = var_5922e3b8;
		self.var_87b86b14[self.var_87b86b14.size] = var_87b86b14;
		self thread function_7b64a1e0();
		self.var_eb7d74bb = 0;
	#/
}

/*
	Name: function_a4b8b7d1
	Namespace: namespace_fe079222
	Checksum: 0xB70A2CFE
	Offset: 0x3238
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_a4b8b7d1(var_36b04a4a)
{
	/#
		var_fe0a6a9 = 0;
		foreach(var_8c03895d in level.var_fe079222)
		{
			if(var_fe0a6a9 == var_36b04a4a)
			{
				self function_331efedc(var_5ba0c4e7);
				break;
			}
			var_fe0a6a9++;
		}
	#/
}

/*
	Name: function_2d7075c8
	Namespace: namespace_fe079222
	Checksum: 0x76270097
	Offset: 0x3308
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_2d7075c8()
{
	/#
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_b3c0448e("Dev Block strings are not supported");
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_fe079222.size; var_c957f6b6++)
		{
			function_b3c0448e("Dev Block strings are not supported" + var_c957f6b6 + "Dev Block strings are not supported" + var_c957f6b6 + "Dev Block strings are not supported" + var_c957f6b6 + "Dev Block strings are not supported");
		}
	#/
}

/*
	Name: function_3b92459f
	Namespace: namespace_fe079222
	Checksum: 0xBE13E843
	Offset: 0x33E8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_3b92459f()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	return;
	while(1)
	{
		level namespace_82b91a51::function_5b7e3888("checkpoint_save", "_checkpoint_save_safe");
	}
}

/*
	Name: function_4c436dfe
	Namespace: namespace_fe079222
	Checksum: 0xF109D403
	Offset: 0x3440
	Size: 0x3EF
	Parameters: 0
	Flags: None
*/
function function_4c436dfe()
{
	self endon("hash_643a7daf");
	while(1)
	{
		level waittill("hash_2693b45");
		if(function_3c63ee8())
		{
			continue;
		}
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			foreach(var_8c03895d in level.var_fe079222)
			{
				var_b71e3573 = var_6bfe1586 function_4f9d8dec(var_5ba0c4e7);
				var_13c6f0bc = var_6bfe1586 function_3a7fd23a(var_8c03895d.var_5e76f0af);
				var_89eb65c1 = var_6bfe1586 function_31381fa7(var_8c03895d.var_5e76f0af);
				var_dd586ee5 = var_6bfe1586 function_4f34644b(var_8c03895d.var_5e76f0af);
				if(isdefined(var_89eb65c1) && var_89eb65c1 && var_13c6f0bc == 0)
				{
					if(isdefined(var_b71e3573.var_9ebe4012) && var_b71e3573.var_9ebe4012)
					{
						var_6bfe1586 function_9320359d(1);
					}
					var_6bfe1586 function_dde1ac37("award_accolade", var_b71e3573.var_2376b52b);
					var_6bfe1586 function_aa67c13b("career_accolades", 1);
				}
				if(var_8c03895d.var_5e76f0af == 2 || (isdefined(var_89eb65c1) && var_89eb65c1) && isdefined(var_dd586ee5))
				{
					var_6bfe1586 function_8992915e(var_8c03895d.var_5e76f0af, var_89eb65c1);
					var_b71e3573.var_8a644747 = isdefined(var_89eb65c1) && var_89eb65c1;
					var_6bfe1586 function_de8b9e62(var_8c03895d.var_5e76f0af, var_dd586ee5);
					var_6bfe1586 function_92050191(var_8c03895d.var_5e76f0af, var_dd586ee5);
					var_b71e3573.var_2d2e72b6 = var_dd586ee5;
					continue;
				}
				if(var_8c03895d.var_5e76f0af == 0 && isdefined(var_dd586ee5))
				{
					var_6bfe1586 function_de8b9e62(var_8c03895d.var_5e76f0af, var_dd586ee5, 1);
					var_b71e3573.var_2d2e72b6 = var_dd586ee5;
				}
			}
			var_6bfe1586 namespace_8f94416a::function_59f1fa79();
			/#
				var_6bfe1586.var_eb7d74bb = 1;
			#/
		}
		function_9a7ed193();
	}
}

/*
	Name: function_83f30558
	Namespace: namespace_fe079222
	Checksum: 0x3EAAC124
	Offset: 0x3838
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_83f30558(var_b71e3573)
{
	var_c3291c61 = self function_84368297("PlayerStatsByMap", function_9065d6ea(), "accolades", var_b71e3573.var_5e76f0af, "highestValue");
	var_9ade7043 = var_b71e3573.var_2d2e72b6;
	if(!(isdefined(var_b71e3573.var_ab795acb) && var_b71e3573.var_ab795acb))
	{
		var_fd9588d9 = var_9ade7043 > var_c3291c61;
	}
	if(isdefined(var_fd9588d9) && var_fd9588d9)
	{
		self function_8f67433b("PlayerStatsByMap", function_9065d6ea(), "accolades", var_b71e3573.var_5e76f0af, "highestValue", var_9ade7043);
	}
}

/*
	Name: function_68d7ee52
	Namespace: namespace_fe079222
	Checksum: 0x52989734
	Offset: 0x3960
	Size: 0x3B3
	Parameters: 1
	Flags: None
*/
function function_68d7ee52(var_fb4674a9)
{
	if(!isdefined(var_fb4674a9))
	{
		var_fb4674a9 = level.var_cd724008;
	}
	if(function_214e644a())
	{
		return;
	}
	if(self == level)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a function_68d7ee52(var_fb4674a9);
			var_5dc5e20a function_cf1b719a();
		}
	}
	else if(function_6e2770d8(self namespace_9f824288::function_36adbb9c("accolades")))
	{
		foreach(var_8c03895d in level.var_fe079222)
		{
			var_b71e3573 = self function_4f9d8dec(var_5ba0c4e7);
			if(!isdefined(var_b71e3573) || self function_3a7fd23a(var_b71e3573.var_5e76f0af) != 0)
			{
				continue;
			}
			if(var_b71e3573.var_5e76f0af == 2)
			{
				var_40a77a3a = self namespace_d275cebc::function_ccb1e08d(function_9065d6ea());
				while(var_b71e3573.var_2d2e72b6 < var_40a77a3a)
				{
					self function_331efedc(var_5ba0c4e7);
				}
			}
			if(function_9ba543a3(var_5ba0c4e7, var_b71e3573.var_2d2e72b6))
			{
				if(var_b71e3573.var_5e76f0af == 0 || var_b71e3573.var_5e76f0af == 1 && !namespace_1d795d47::function_cb7247d8(var_fb4674a9))
				{
					continue;
				}
				var_b71e3573.var_8a644747 = 1;
				self function_8992915e(var_b71e3573.var_5e76f0af, 1);
				self function_de8b9e62(var_b71e3573.var_5e76f0af, var_b71e3573.var_2d2e72b6, 1);
				if(isdefined(var_b71e3573.var_9ebe4012) && var_b71e3573.var_9ebe4012)
				{
					self function_9320359d(1);
				}
				self function_aa67c13b("career_accolades", 1);
			}
		}
		self namespace_8f94416a::function_59f1fa79();
	}
}

