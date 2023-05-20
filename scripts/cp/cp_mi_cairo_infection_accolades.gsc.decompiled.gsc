#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\ai\systems\destructible_character;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_f25bd8c8;

/*
	Name: function_66df416f
	Namespace: namespace_f25bd8c8
	Checksum: 0xC3F3DA43
	Offset: 0x528
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_66df416f()
{
	namespace_fe079222::function_50f16166("MISSION_INFECTION_UNTOUCHED");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_SCORE");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_COLLECTIBLE");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE3", "ch03_quick_kills_complete");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE4", "ch04_theia_battle_no_damage_completed");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_HATTRICK", "ch05_helmet_shot");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE6", "ch06_mg42_kill");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE9", "ch09_wolf_midair_kills_granted");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE10", "ch10_wolf_melee_granted");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE11", "ch11_wolf_bite_granted");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE12", "ch12_tank_killer_granted");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE14", "ch14_cathedral_untouchable_grant");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE15", "ch15_zombies_untouchable_grant");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE16", "ch16_zombie_bonfire");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE17", "ch17_confirmed_hit");
	namespace_fe079222::function_50f16166("MISSION_INFECTION_CHALLENGE18", "ch18_sarah_grenaded");
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_f25bd8c8
	Checksum: 0x19151CF8
	Offset: 0x740
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self function_804e65bb();
}

/*
	Name: function_5a97e5bd
	Namespace: namespace_f25bd8c8
	Checksum: 0x16EF0A21
	Offset: 0x768
	Size: 0x3D
	Parameters: 3
	Flags: None
*/
function function_5a97e5bd(var_8e087689, var_6bfe1586, var_70b01bd3)
{
	var_6bfe1586 notify(var_8e087689);
	if(isdefined(var_70b01bd3))
	{
		[[var_70b01bd3]]();
	}
}

/*
	Name: function_804e65bb
	Namespace: namespace_f25bd8c8
	Checksum: 0x65055428
	Offset: 0x7B0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_804e65bb()
{
	self.var_be5d3b1b = 0;
	self.var_9ac129fc = 0;
	namespace_dabbe128::function_6aceae7c(&function_ba00a6fc);
}

/*
	Name: function_346b87d1
	Namespace: namespace_f25bd8c8
	Checksum: 0x6B431789
	Offset: 0x7F8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_346b87d1()
{
	var_3e671a1 = 0;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a.var_be5d3b1b)
		{
			var_3e671a1++;
		}
	}
	if(var_3e671a1 == level.var_9b1393e7.size)
	{
		namespace_dabbe128::function_a09757b3(&function_ba00a6fc);
	}
}

/*
	Name: function_ba00a6fc
	Namespace: namespace_f25bd8c8
	Checksum: 0xC4392777
	Offset: 0x8D0
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_ba00a6fc(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_e546abd0 = var_a8563e07.var_3a212fd7;
		if(!var_e546abd0.var_be5d3b1b)
		{
			if(!isdefined(var_e546abd0.var_a952433c))
			{
				var_e546abd0.var_a952433c = [];
			}
			namespace_84970cc4::function_283cb491(var_e546abd0.var_a952433c, GetTime(), 0);
			if(var_e546abd0.var_a952433c.size > 5)
			{
				function_6c668988(var_e546abd0.var_a952433c, 5, 0);
			}
			var_2e019997 = var_e546abd0.var_a952433c[0];
			var_c96d3593 = var_e546abd0.var_a952433c[4];
			if(isdefined(var_c96d3593))
			{
				var_dde12958 = var_2e019997 - var_c96d3593;
				if(var_dde12958 < 10000)
				{
					var_e546abd0.var_be5d3b1b = 1;
					function_5a97e5bd("ch03_quick_kills_complete", var_e546abd0, &function_346b87d1);
				}
			}
		}
	}
}

/*
	Name: function_ad15914d
	Namespace: namespace_f25bd8c8
	Checksum: 0x1993004E
	Offset: 0xA60
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_ad15914d()
{
	self.var_6385535e = 1;
	self thread function_9d23c86c();
	self thread function_6427aa57();
}

/*
	Name: function_6427aa57
	Namespace: namespace_f25bd8c8
	Checksum: 0x62C7D5CF
	Offset: 0xAA8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6427aa57()
{
	self endon("hash_128f8789");
	level waittill("hash_1d7591db");
	if(self.var_6385535e)
	{
		function_5a97e5bd("ch04_theia_battle_no_damage_completed", self);
	}
}

/*
	Name: function_9d23c86c
	Namespace: namespace_f25bd8c8
	Checksum: 0x1491EFD8
	Offset: 0xAF8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_9d23c86c()
{
	level endon("hash_1d7591db");
	self endon("hash_128f8789");
	self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34);
	if(isdefined(var_a0ad4f34))
	{
		self.var_6385535e = 0;
	}
}

/*
	Name: function_15b29a5a
	Namespace: namespace_f25bd8c8
	Checksum: 0x16C8BAC
	Offset: 0xB58
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_15b29a5a()
{
	namespace_dabbe128::function_6aceae7c(&function_918d0428);
}

/*
	Name: function_918d0428
	Namespace: namespace_f25bd8c8
	Checksum: 0x41733604
	Offset: 0xB88
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_918d0428(var_a8563e07)
{
	if(var_a8563e07.var_3a212fd7.var_e6e9b8de == "player")
	{
		if(namespace_1db74d15::function_655f5ac8(self) >= 1 && namespace_1db74d15::function_61b5800(self, 1) && !function_3dc86a1(var_a8563e07))
		{
			var_a8563e07.var_3a212fd7 notify("hash_8cd8aeae");
		}
	}
}

/*
	Name: function_ecd2ed4
	Namespace: namespace_f25bd8c8
	Checksum: 0x4749CAA4
	Offset: 0xC28
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ecd2ed4()
{
	namespace_dabbe128::function_a09757b3(&function_918d0428);
}

/*
	Name: function_c081e535
	Namespace: namespace_f25bd8c8
	Checksum: 0xAA7FCBEB
	Offset: 0xC58
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c081e535()
{
	namespace_dabbe128::function_6aceae7c(&function_e7e68fa2);
}

/*
	Name: function_e7e68fa2
	Namespace: namespace_f25bd8c8
	Checksum: 0xC6B1695A
	Offset: 0xC88
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_e7e68fa2(var_a8563e07)
{
	if(var_a8563e07.var_3a212fd7.var_e6e9b8de == "player" && var_a8563e07.var_3a212fd7.var_3e94206a !== self.var_3e94206a)
	{
		if(var_a8563e07.var_dfcc01fd.var_4be20d44 == "turret_bo3_germans")
		{
			var_a8563e07.var_3a212fd7 notify("hash_f8f73c2a");
		}
	}
}

/*
	Name: function_a0f567cb
	Namespace: namespace_f25bd8c8
	Checksum: 0x487B5FB9
	Offset: 0xD20
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a0f567cb()
{
	namespace_dabbe128::function_a09757b3(&function_e7e68fa2);
}

/*
	Name: function_341d8f7a
	Namespace: namespace_f25bd8c8
	Checksum: 0xFFBC8088
	Offset: 0xD50
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_341d8f7a()
{
	namespace_dabbe128::function_de1a6d25(&function_423d8d8c);
	namespace_dabbe128::function_87f30e90(&function_21f98ad9);
}

/*
	Name: function_423d8d8c
	Namespace: namespace_f25bd8c8
	Checksum: 0x670CDE87
	Offset: 0xDA0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_423d8d8c(var_a8563e07)
{
	if(self.var_8fc0e50e == "direwolf")
	{
		if(function_65f192a6(var_a8563e07.var_3a212fd7))
		{
			var_5dc5e20a = var_a8563e07.var_3a212fd7;
			if(isdefined(self.var_e91cc22f) && self.var_e91cc22f)
			{
				var_5dc5e20a notify("hash_115383d3");
			}
		}
	}
}

/*
	Name: function_21f98ad9
	Namespace: namespace_f25bd8c8
	Checksum: 0xDB5B8D77
	Offset: 0xE28
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_21f98ad9()
{
	if(self.var_8fc0e50e === "direwolf")
	{
		self thread function_a12f3181();
	}
}

/*
	Name: function_a12f3181
	Namespace: namespace_f25bd8c8
	Checksum: 0x70FEEFF2
	Offset: 0xE60
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_a12f3181()
{
	self endon("hash_128f8789");
	level endon("hash_f07948a5");
	self.var_e91cc22f = 0;
	while(1)
	{
		self waittill("hash_e27de0db");
		self.var_e91cc22f = 1;
		self waittill("hash_8b0841b8");
		self.var_e91cc22f = 0;
	}
}

/*
	Name: function_a2179c84
	Namespace: namespace_f25bd8c8
	Checksum: 0xAC49D34C
	Offset: 0xEC8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a2179c84()
{
	namespace_dabbe128::function_fad550c4(&function_423d8d8c);
	namespace_dabbe128::function_3f5e6667(&function_21f98ad9);
}

/*
	Name: function_8c0b0cd0
	Namespace: namespace_f25bd8c8
	Checksum: 0x1EB1B149
	Offset: 0xF18
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_8c0b0cd0()
{
	namespace_dabbe128::function_de1a6d25(&function_20c5379e);
	namespace_dabbe128::function_356a4ee1(&function_b59240f2);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a.var_63b33b24 = 0;
		var_5dc5e20a.var_a1930cfd = 1;
	}
}

/*
	Name: function_b59240f2
	Namespace: namespace_f25bd8c8
	Checksum: 0xC5DEBF96
	Offset: 0x1000
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b59240f2()
{
	self.var_63b33b24 = 0;
	self.var_a1930cfd = 1;
}

/*
	Name: function_20c5379e
	Namespace: namespace_f25bd8c8
	Checksum: 0x5EEE9B4A
	Offset: 0x1028
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_20c5379e(var_a8563e07)
{
	if(self.var_8fc0e50e == "direwolf")
	{
		if(function_65f192a6(var_a8563e07.var_3a212fd7))
		{
			var_a8563e07.var_3a212fd7.var_63b33b24 = var_a8563e07.var_3a212fd7.var_63b33b24 + 1;
			if(!function_3dc86a1(var_a8563e07))
			{
				var_a8563e07.var_3a212fd7.var_a1930cfd = 0;
			}
		}
	}
}

/*
	Name: function_3dc86a1
	Namespace: namespace_f25bd8c8
	Checksum: 0x269B1E59
	Offset: 0x10D0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_3dc86a1(var_a8563e07)
{
	if(var_a8563e07.var_dfcc01fd.var_fe311e35 == "melee")
	{
		return 1;
	}
	else if(var_a8563e07.var_ba36487d == "MOD_MELEE_WEAPON_BUTT")
	{
		return 1;
	}
	else if(var_a8563e07.var_dfcc01fd.var_4be20d44 == "hero_gravity_spikes_cyebercom")
	{
		return 1;
	}
	else if(var_a8563e07.var_dfcc01fd.var_4be20d44 == "hero_gravity_spikes_cyebercom_upgraded")
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_74b401d8
	Namespace: namespace_f25bd8c8
	Checksum: 0x92F9298C
	Offset: 0x1198
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function function_74b401d8()
{
	namespace_dabbe128::function_fad550c4(&function_20c5379e);
	namespace_dabbe128::function_a0ac4434(&function_b59240f2);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a.var_a1930cfd && var_5dc5e20a.var_63b33b24 > 0)
		{
			var_5dc5e20a notify("hash_a4d9772b");
		}
	}
}

/*
	Name: function_aea367c1
	Namespace: namespace_f25bd8c8
	Checksum: 0x3BC67C88
	Offset: 0x1288
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_aea367c1()
{
	namespace_dabbe128::function_4d1d6b36(&function_d9aaed7d);
	namespace_dabbe128::function_356a4ee1(&function_6bc56950);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a.var_1bece4df = 1;
	}
}

/*
	Name: function_6bc56950
	Namespace: namespace_f25bd8c8
	Checksum: 0x3009C64E
	Offset: 0x1358
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_6bc56950()
{
	self.var_1bece4df = 1;
}

/*
	Name: function_d9aaed7d
	Namespace: namespace_f25bd8c8
	Checksum: 0x72A3A08E
	Offset: 0x1370
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d9aaed7d()
{
	self endon("hash_128f8789");
	self endon("hash_f07948a5");
	self endon("hash_c0e469ca");
	while(1)
	{
		self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_a0ad4f34.var_8fc0e50e === "direwolf")
		{
			if(function_65f192a6(self))
			{
				self.var_1bece4df = 0;
			}
		}
	}
}

/*
	Name: function_b3cf52bf
	Namespace: namespace_f25bd8c8
	Checksum: 0xDFB4A726
	Offset: 0x1470
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function function_b3cf52bf()
{
	namespace_dabbe128::function_529abdc3(&function_d9aaed7d);
	namespace_dabbe128::function_a0ac4434(&function_6bc56950);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a.var_1bece4df && var_5dc5e20a.var_63b33b24 > 0)
		{
			var_5dc5e20a notify("hash_c0e469ca");
		}
	}
}

/*
	Name: function_7356f9fd
	Namespace: namespace_f25bd8c8
	Checksum: 0xB4A561A3
	Offset: 0x1560
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_7356f9fd()
{
	self endon("hash_128f8789");
	self.var_b42f169e = 0;
	self thread function_2c3b4c78();
	self waittill("hash_aa1618b0");
	self.var_b42f169e = 1;
}

/*
	Name: function_2c3b4c78
	Namespace: namespace_f25bd8c8
	Checksum: 0x17CD60E7
	Offset: 0x15B0
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_2c3b4c78()
{
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		if(self.var_b42f169e == 0)
		{
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				var_5dc5e20a notify("hash_6182e6ea");
			}
		}
	}
}

/*
	Name: function_211b07c5
	Namespace: namespace_f25bd8c8
	Checksum: 0x46FF745F
	Offset: 0x1660
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_211b07c5()
{
	namespace_dabbe128::function_4d1d6b36(&function_9f9141fd);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a.var_a400c99f = 1;
	}
}

/*
	Name: function_9f9141fd
	Namespace: namespace_f25bd8c8
	Checksum: 0x786FA072
	Offset: 0x1710
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_9f9141fd()
{
	self endon("hash_128f8789");
	self waittill("hash_f9348fda");
	self.var_a400c99f = 0;
}

/*
	Name: function_2c8ffdaf
	Namespace: namespace_f25bd8c8
	Checksum: 0xD88AFEE5
	Offset: 0x1740
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_2c8ffdaf()
{
	namespace_dabbe128::function_529abdc3(&function_9f9141fd);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a.var_a400c99f)
		{
			var_5dc5e20a notify("hash_de1125ba");
		}
	}
}

/*
	Name: function_6c777c8d
	Namespace: namespace_f25bd8c8
	Checksum: 0xD543C3D3
	Offset: 0x1800
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_6c777c8d()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_335ecd05();
	}
}

/*
	Name: function_335ecd05
	Namespace: namespace_f25bd8c8
	Checksum: 0xD380D91
	Offset: 0x1898
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_335ecd05()
{
	self endon("hash_128f8789");
	self endon("hash_f0f63627");
	self endon("hash_8a7a61e0");
	self waittill("hash_f9348fda");
	self.var_5f815670 = 1;
}

/*
	Name: function_e9c21474
	Namespace: namespace_f25bd8c8
	Checksum: 0x521F5E16
	Offset: 0x18E0
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_e9c21474()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a notify("hash_8a7a61e0");
		if(var_5dc5e20a.var_5f815670 !== 1)
		{
			var_5dc5e20a notify("hash_c708c742");
		}
	}
}

/*
	Name: function_a0fb8ca9
	Namespace: namespace_f25bd8c8
	Checksum: 0xB38A8E9F
	Offset: 0x1998
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_a0fb8ca9()
{
	namespace_dabbe128::function_de1a6d25(&function_98c5c5a1);
	namespace_dabbe128::function_356a4ee1(&function_7eac16b1);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a.var_abed6924 = 0;
	}
}

/*
	Name: function_7eac16b1
	Namespace: namespace_f25bd8c8
	Checksum: 0xA55BA724
	Offset: 0x1A68
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_7eac16b1()
{
	self.var_abed6924 = 0;
}

/*
	Name: function_98c5c5a1
	Namespace: namespace_f25bd8c8
	Checksum: 0x199F8E66
	Offset: 0x1A80
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_98c5c5a1(var_a8563e07)
{
	if(self.var_8fc0e50e === "zombie" && function_65f192a6(var_a8563e07.var_3a212fd7) && self.var_e069c441 === 1)
	{
		var_a8563e07.var_3a212fd7.var_abed6924 = var_a8563e07.var_3a212fd7.var_abed6924 + 1;
	}
}

/*
	Name: function_bbb224b7
	Namespace: namespace_f25bd8c8
	Checksum: 0xEA07D71C
	Offset: 0x1B10
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_bbb224b7()
{
	namespace_dabbe128::function_fad550c4(&function_98c5c5a1);
	namespace_dabbe128::function_a0ac4434(&function_7eac16b1);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a.var_abed6924 >= 4)
		{
			var_5dc5e20a notify("hash_a5e46a2e");
		}
	}
}

/*
	Name: function_70cafec1
	Namespace: namespace_f25bd8c8
	Checksum: 0xB7F78176
	Offset: 0x1BF8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_70cafec1()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_f6215929();
	}
	namespace_dabbe128::function_356a4ee1(&function_f6215929);
	namespace_dabbe128::function_de1a6d25(&function_7dfda27d);
}

/*
	Name: function_f6215929
	Namespace: namespace_f25bd8c8
	Checksum: 0x4B01EC3B
	Offset: 0x1CD0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_f6215929()
{
	self.var_5bfcdcf4 = 0;
}

/*
	Name: function_7dfda27d
	Namespace: namespace_f25bd8c8
	Checksum: 0xD635A81
	Offset: 0x1CE8
	Size: 0xF7
	Parameters: 1
	Flags: None
*/
function function_7dfda27d(var_a8563e07)
{
	if(var_a8563e07.var_3a212fd7.var_e6e9b8de == "player")
	{
		if(var_a8563e07.var_a77ad8eb == "head" || var_a8563e07.var_a77ad8eb == "helmet" || var_a8563e07.var_a77ad8eb == "neck")
		{
			var_a8563e07.var_3a212fd7.var_5bfcdcf4++;
			if(var_a8563e07.var_3a212fd7.var_5bfcdcf4 >= 10)
			{
				var_a8563e07.var_3a212fd7 notify("hash_f9d95f8c");
			}
		}
		else
		{
			var_a8563e07.var_3a212fd7.var_5bfcdcf4 = 0;
		}
	}
}

/*
	Name: function_cce60169
	Namespace: namespace_f25bd8c8
	Checksum: 0xA899048F
	Offset: 0x1DE8
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_cce60169()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a notify("hash_98743ed4");
	}
}

