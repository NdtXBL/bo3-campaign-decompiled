#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_level;
#using scripts\shared\stealth_status;
#using scripts\shared\stealth_tagging;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_10443be6;

/*
	Name: function_c35e6aab
	Namespace: namespace_10443be6
	Checksum: 0xB2E4BBBA
	Offset: 0x3D8
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(self.var_ad06727a));
	#/
	if(!isdefined(self.var_ad06727a))
	{
		self.var_ad06727a = function_a8fb77bd();
	}
	self.var_ad06727a.var_a8bce73f = 0;
	self.var_ad06727a.var_5ffb6518 = 0;
	self thread function_1026b3f5();
	self thread function_c438db7f();
	self namespace_f917b91a::function_c35e6aab();
	self namespace_234a4910::function_c35e6aab();
	/#
		self namespace_e449108e::function_148c43f();
	#/
	self thread function_7300ae66();
	self thread function_bb9ffa41();
	self thread function_ff057a95();
}

/*
	Name: function_fcf56ab5
	Namespace: namespace_10443be6
	Checksum: 0x99EC1590
	Offset: 0x540
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_fcf56ab5()
{
}

/*
	Name: function_11424fa
	Namespace: namespace_10443be6
	Checksum: 0x1C8F92B5
	Offset: 0x550
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_11424fa()
{
	self.var_ad06727a.var_31bf1854 = undefined;
	self.var_ad06727a.var_b9ae563d = undefined;
	self.var_ad06727a.var_23eafafa = undefined;
	self.var_ad06727a.var_9f4ce919 = [];
}

/*
	Name: function_b55533bc
	Namespace: namespace_10443be6
	Checksum: 0x65332852
	Offset: 0x5A0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_a8bce73f);
}

/*
	Name: function_f5f81ff0
	Namespace: namespace_10443be6
	Checksum: 0xA5D6612F
	Offset: 0x5C8
	Size: 0x23
	Parameters: 2
	Flags: None
*/
function function_f5f81ff0(var_a0d5a30f, var_2eef6100)
{
	self.var_ad06727a.var_5ffb6518++;
}

/*
	Name: function_cd81f5b8
	Namespace: namespace_10443be6
	Checksum: 0xAB85D7C5
	Offset: 0x5F8
	Size: 0x231
	Parameters: 2
	Flags: None
*/
function function_cd81f5b8(var_a0d5a30f, var_2eef6100)
{
	if(!isdefined(self.var_ad06727a.var_e1466b44))
	{
		self.var_ad06727a.var_e1466b44 = [];
	}
	var_974b6e2c = 0;
	var_7e2400eb = -1;
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_ad06727a.var_e1466b44.size; var_c957f6b6++)
	{
		var_9368ba0c = self function_31218960(self.var_ad06727a.var_e1466b44[var_c957f6b6]);
		if(var_9368ba0c == 127 || !isdefined(self.var_ad06727a.var_e1466b44[var_c957f6b6]) || self.var_ad06727a.var_e1466b44[var_c957f6b6] == var_a0d5a30f)
		{
			self.var_ad06727a.var_e1466b44[var_c957f6b6] = var_a0d5a30f;
			return;
		}
		var_2c3e05ad = function_cb3d1c9b(self.var_ad06727a.var_e1466b44[var_c957f6b6].var_722885f3, self.var_722885f3);
		if(var_2c3e05ad > var_974b6e2c)
		{
			var_974b6e2c = var_2c3e05ad;
			var_7e2400eb = var_c957f6b6;
		}
	}
	if(self.var_ad06727a.var_e1466b44.size < 4)
	{
		self.var_ad06727a.var_e1466b44[self.var_ad06727a.var_e1466b44.size] = var_a0d5a30f;
		return;
	}
	var_2c3e05ad = function_cb3d1c9b(var_a0d5a30f.var_722885f3, self.var_722885f3);
	if(var_2c3e05ad < var_974b6e2c)
	{
		self.var_ad06727a.var_e1466b44[var_7e2400eb] = var_a0d5a30f;
	}
}

/*
	Name: function_ff057a95
	Namespace: namespace_10443be6
	Checksum: 0x8F960A37
	Offset: 0x838
	Size: 0x497
	Parameters: 0
	Flags: None
*/
function function_ff057a95()
{
	self notify("hash_ff057a95");
	self endon("hash_ff057a95");
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_ad06727a));
	#/
	if(!isdefined(self.var_ad06727a.var_9f4ce919))
	{
		self.var_ad06727a.var_9f4ce919 = [];
	}
	while(1)
	{
		if(!(isdefined(level.var_ad06727a.var_bf426fe4) && level.var_ad06727a.var_bf426fe4))
		{
			wait(1);
			continue;
		}
		if(self function_7c08a28() > 0.3)
		{
			var_bd8fb968 = self function_1a9006bd("cybercom_hijack");
			var_f8681460 = self function_501eb072();
			var_fd26df34 = function_bc7ce905(self function_89c87c9c());
			var_b3db42a9 = function_b8494651("axis");
			if(isdefined(level.var_ad06727a.var_581c13ae))
			{
				var_2680d17d = [];
				foreach(var_daf22616 in level.var_ad06727a.var_581c13ae)
				{
					if(!isdefined(var_daf22616))
					{
						continue;
					}
					var_b3db42a9[var_b3db42a9.size] = var_daf22616;
					var_2680d17d[var_2680d17d.size] = var_daf22616;
				}
				if(var_2680d17d.size != level.var_ad06727a.var_581c13ae.size)
				{
					level.var_ad06727a.var_581c13ae = var_2680d17d;
				}
			}
			foreach(var_daf22616 in var_b3db42a9)
			{
				var_80a7f288 = "careful";
				var_bbf94a49 = var_daf22616.var_722885f3;
				if(function_5cfb84bb(var_daf22616))
				{
					var_bbf94a49 = var_daf22616 function_501eb072();
				}
				if(isdefined(var_daf22616.var_3bee9acf))
				{
					var_80a7f288 = var_daf22616.var_3bee9acf;
				}
				else if(function_85e4c3b3(var_daf22616))
				{
					if(var_bd8fb968 && var_daf22616 function_d04b5e96())
					{
						var_80a7f288 = "careful_hack";
					}
					else
					{
						var_80a7f288 = "careful_" + var_daf22616.var_8fc0e50e;
					}
				}
				if(isdefined(self.var_ad06727a.var_9f4ce919[var_80a7f288]))
				{
					continue;
				}
				var_bd00ff2a = function_f679a325(var_bbf94a49 - var_f8681460);
				if(function_5f9a4869(var_fd26df34, var_bd00ff2a) > 0.99)
				{
					if(function_e7865c4b(var_bbf94a49, var_f8681460, 0, undefined))
					{
						self namespace_234a4910::function_e3ae87b3(var_80a7f288);
						self.var_ad06727a.var_9f4ce919[var_80a7f288] = 1;
					}
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_31218960
	Namespace: namespace_10443be6
	Checksum: 0x513419CB
	Offset: 0xCD8
	Size: 0x1EF
	Parameters: 1
	Flags: None
*/
function function_31218960(var_5a952f1)
{
	if(!isdefined(var_5a952f1))
	{
		return 127;
	}
	if(function_4bd0142f("stealth_display", 1) == 1 && function_5b49d38c(var_5a952f1) && !var_5a952f1.var_c584775c)
	{
		var_9368ba0c = var_5a952f1 function_99ada8a(self) * 49;
		var_44b1a6c2 = var_5a952f1 namespace_ad06727a::function_7ee3d9cd(self);
		var_a836f7ed = isdefined(var_5a952f1.var_ad06727a.var_d1b49f30) && isdefined(var_5a952f1.var_ad06727a.var_d1b49f30[self function_c7f3ce11()]);
		var_9b2f0c51 = isdefined(var_5a952f1.var_ad06727a.var_c49c37ed) && isdefined(var_5a952f1.var_ad06727a.var_c49c37ed[self function_c7f3ce11()]);
		if(var_9368ba0c > 0 || var_9b2f0c51 || var_a836f7ed)
		{
			if(var_a836f7ed)
			{
				var_9368ba0c = 50;
			}
			else if(var_9b2f0c51)
			{
				var_9368ba0c = 49;
			}
			if(var_44b1a6c2 || var_a836f7ed)
			{
				var_9368ba0c = var_9368ba0c + 50;
			}
			return function_b6b79a0(var_9368ba0c);
		}
	}
	return 127;
}

/*
	Name: function_b9393d6c
	Namespace: namespace_10443be6
	Checksum: 0x8ED6A0BC
	Offset: 0xED0
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_b9393d6c(var_8363b8e0)
{
	var_5628f7bd = level namespace_ad45a419::function_b3269823(var_8363b8e0);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5628f7bd));
	#/
	var_4a393b31 = var_5628f7bd.var_24eff8a4;
	if(var_8363b8e0 != "combat")
	{
		var_6502dbf1 = self function_653ba713();
		if(isdefined(self.var_ad06727a.var_325b070f) && self.var_ad06727a.var_325b070f)
		{
			var_4a393b31 = var_4a393b31 * 0.5;
		}
		if(var_6502dbf1 == "prone")
		{
			var_4a393b31 = var_4a393b31 * 0.25;
		}
		else if(var_6502dbf1 == "crouch")
		{
			var_4a393b31 = var_4a393b31 * 0.5;
		}
	}
	self.var_4a393b31 = var_4a393b31;
	self.var_ed4a233c = var_5628f7bd.var_a1f56f1f;
	self.var_23574bde = var_5628f7bd.var_304f0f57;
}

/*
	Name: function_96e60fd0
	Namespace: namespace_10443be6
	Checksum: 0x8EAEC4D7
	Offset: 0x1038
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_96e60fd0(var_56a5ec0b)
{
	self.var_ad06727a.var_a8bce73f = var_56a5ec0b;
}

/*
	Name: function_f1c48da4
	Namespace: namespace_10443be6
	Checksum: 0x300A0C81
	Offset: 0x1060
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_f1c48da4()
{
	if(!self function_b55533bc())
	{
		return 0;
	}
	return self.var_ad06727a.var_a8bce73f;
}

/*
	Name: function_1026b3f5
	Namespace: namespace_10443be6
	Checksum: 0x95217A14
	Offset: 0x10A0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_1026b3f5()
{
	self endon("hash_643a7daf");
	while(1)
	{
		var_6502dbf1 = self function_653ba713();
		var_4a393b31 = 1600;
		switch(var_6502dbf1)
		{
			case "crouch":
			{
				var_4a393b31 = 800;
				break;
			}
			case "prone":
			{
				var_4a393b31 = 400;
				break;
			}
		}
		if(isdefined(self.var_ad06727a) && (isdefined(self.var_ad06727a.var_325b070f) && self.var_ad06727a.var_325b070f))
		{
			var_4a393b31 = var_4a393b31 * 0.5;
		}
		self.var_4a393b31 = var_4a393b31;
		wait(0.25);
	}
}

/*
	Name: function_c438db7f
	Namespace: namespace_10443be6
	Checksum: 0x33A3AB99
	Offset: 0x1198
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_c438db7f()
{
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	while(1)
	{
		self.var_ad06727a.var_5ffb6518 = 0;
		wait(1);
		if(self.var_ad06727a.var_5ffb6518 <= 0)
		{
			self function_96e60fd0(0);
		}
	}
}

/*
	Name: function_7300ae66
	Namespace: namespace_10443be6
	Checksum: 0x384464C5
	Offset: 0x1210
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_7300ae66()
{
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	wait(0.05);
	self function_24319235(1);
	while(1)
	{
		self namespace_82b91a51::function_5b7e3888("spawned");
		self function_b9393d6c("high_alert");
		wait(0.05);
		self function_24319235(1);
	}
}

/*
	Name: function_bb9ffa41
	Namespace: namespace_10443be6
	Checksum: 0xEC73224E
	Offset: 0x12C0
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function function_bb9ffa41()
{
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	var_52ff854e = 0;
	while(1)
	{
		var_ec0b278c = self namespace_e32b5089::function_9142ee49("kills");
		if(!isdefined(var_ec0b278c))
		{
			var_ec0b278c = 0;
		}
		var_b69afa72 = var_ec0b278c;
		var_61af974a = GetTime();
		self waittill("hash_c56ba9f7", var_8bcb913d, var_ba36487d, var_dfcc01fd);
		waittillframeend;
		if(isdefined(var_8bcb913d) && isdefined(var_8bcb913d.var_3e94206a) && var_8bcb913d.var_3e94206a != "axis")
		{
			self thread namespace_234a4910::function_e3ae87b3("fail_kill");
			continue;
		}
		var_ec0b278c = self namespace_e32b5089::function_9142ee49("kills");
		if(!isdefined(var_ec0b278c))
		{
			var_ec0b278c = 1;
		}
		var_c839bf74 = var_ec0b278c - var_b69afa72;
		if(GetTime() - var_61af974a > 1000)
		{
			var_52ff854e = 0;
		}
		if(var_c839bf74 >= 2 && isdefined(var_ba36487d) && namespace_82b91a51::function_9b876dc5(var_ba36487d))
		{
			self notify("hash_97df59d5");
		}
		var_52ff854e = var_52ff854e + var_c839bf74;
		if(!isdefined(self.var_ad06727a))
		{
			return;
		}
		if(!isdefined(level.var_ad06727a))
		{
			return;
		}
		self thread function_e507ced8(var_8bcb913d, var_ba36487d, var_dfcc01fd, var_52ff854e);
	}
}

/*
	Name: function_e507ced8
	Namespace: namespace_10443be6
	Checksum: 0x213AFB6F
	Offset: 0x14D8
	Size: 0x15F
	Parameters: 4
	Flags: None
*/
function function_e507ced8(var_8bcb913d, var_ba36487d, var_dfcc01fd, var_1901b952)
{
	self notify("hash_e507ced8");
	self endon("hash_e507ced8");
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	self endon("hash_128f8789");
	if(!level namespace_ad23e503::function_7922262b("stealth_alert") && !level namespace_ad23e503::function_7922262b("stealth_combat") && !level namespace_ad23e503::function_7922262b("stealth_discovered"))
	{
		if(isdefined(var_8bcb913d) && isdefined(var_8bcb913d.var_99baf927))
		{
			self namespace_234a4910::function_e3ae87b3(var_8bcb913d.var_99baf927);
		}
		else if(!(isdefined(level.var_ad06727a.var_30d9fcc6) && level.var_ad06727a.var_30d9fcc6))
		{
			if(var_1901b952 > 1)
			{
			}
			else if(isdefined(var_dfcc01fd) && var_dfcc01fd.var_fe311e35 == "bullet")
			{
			}
		}
	}
}

/*
	Name: function_24319235
	Namespace: namespace_10443be6
	Checksum: 0x24CDFE1C
	Offset: 0x1640
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_24319235(var_2bafb34f)
{
	if(!isdefined(level.var_ad06727a))
	{
		return;
	}
	if(!isdefined(level.var_ad06727a.var_657b1773))
	{
		return;
	}
	if(!isdefined(level.var_ad06727a.var_657b1773[self.var_3e94206a]))
	{
		return;
	}
	foreach(var_6050ab17 in level.var_ad06727a.var_657b1773[self.var_3e94206a])
	{
		if(!isdefined(var_6050ab17))
		{
			continue;
		}
		if(var_6050ab17 namespace_80045451::function_b55533bc())
		{
			var_6050ab17 namespace_80045451::function_c62ada65(self, var_2bafb34f);
		}
	}
}

/*
	Name: function_3cd0dcd
	Namespace: namespace_10443be6
	Checksum: 0x7BA4A30B
	Offset: 0x1768
	Size: 0xFB
	Parameters: 3
	Flags: None
*/
function function_3cd0dcd(var_aca0d97d, var_44b1a6c2, var_8363b8e0)
{
	if(function_4bd0142f("stealth_audio", 1) == 0)
	{
		return;
	}
	var_a836f7ed = var_8363b8e0 == "combat";
	if(!self function_b55533bc())
	{
		return;
	}
	if(!(isdefined(self.var_ad06727a.var_a8bce73f) && self.var_ad06727a.var_a8bce73f))
	{
		if(!var_a836f7ed)
		{
			if(var_44b1a6c2)
			{
				self thread function_6163610f(var_8363b8e0);
			}
		}
		if(var_a836f7ed)
		{
			self.var_ad06727a.var_a8bce73f = 1;
			self thread function_e6e6afd7(var_aca0d97d);
		}
	}
}

/*
	Name: function_e6e6afd7
	Namespace: namespace_10443be6
	Checksum: 0xBC9DC6ED
	Offset: 0x1870
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_e6e6afd7(var_aca0d97d)
{
	self endon("hash_643a7daf");
	var_3c61bfc2 = var_aca0d97d namespace_82b91a51::function_9fcf3cd8(0.25, "death");
	if(var_3c61bfc2 == "timeout")
	{
		self thread function_21fabca();
	}
}

/*
	Name: function_6163610f
	Namespace: namespace_10443be6
	Checksum: 0xEF9E8BB4
	Offset: 0x18E8
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_6163610f(var_8363b8e0)
{
	self notify("hash_6163610f");
	self endon("hash_6163610f");
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	self endon("hash_128f8789");
	var_3c0e4301 = 1;
	if(var_8363b8e0 == "high_alert")
	{
		var_3c0e4301 = 2;
	}
	self namespace_71e9cb84::function_e9c3870b("stealth_sighting", var_3c0e4301);
	wait(0.15);
	self namespace_71e9cb84::function_e9c3870b("stealth_sighting", 0);
}

/*
	Name: function_a321c8e5
	Namespace: namespace_10443be6
	Checksum: 0x923F4064
	Offset: 0x19B0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_a321c8e5()
{
	self notify("hash_a321c8e5");
	self endon("hash_a321c8e5");
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_e9c3870b("stealth_alerted", 1);
	wait(0.15);
	self namespace_71e9cb84::function_e9c3870b("stealth_alerted", 0);
}

/*
	Name: function_21fabca
	Namespace: namespace_10443be6
	Checksum: 0x4C2F4B61
	Offset: 0x1A48
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_21fabca()
{
	namespace_ad06727a::function_e0319e51("combat");
}

/*
	Name: function_ca6a0809
	Namespace: namespace_10443be6
	Checksum: 0xCD0E4C14
	Offset: 0x1A70
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_ca6a0809(var_6050ab17)
{
	if(var_6050ab17 namespace_80045451::function_b55533bc() && var_6050ab17 namespace_80045451::function_739525d() == "combat")
	{
		return;
	}
	self thread function_509ca7a6(var_6050ab17);
	self thread function_3f6bd04c(var_6050ab17);
}

/*
	Name: function_509ca7a6
	Namespace: namespace_10443be6
	Checksum: 0x4745C0A9
	Offset: 0x1AF8
	Size: 0x6B3
	Parameters: 1
	Flags: None
*/
function function_509ca7a6(var_6050ab17)
{
	var_73638d3b = GetTime();
	var_9f8c9118 = var_73638d3b;
	var_270018c4 = self function_c7f3ce11();
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_6050ab17));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_6050ab17.var_ad06727a));
	#/
	if(isdefined(self.var_ad06727a.var_4ea02c94) && self.var_ad06727a.var_4ea02c94)
	{
		return;
	}
	if(isdefined(var_6050ab17.var_ad06727a.var_d1c69a51) && isdefined(var_6050ab17.var_ad06727a.var_d1c69a51[var_270018c4]) && var_73638d3b - var_6050ab17.var_ad06727a.var_d1c69a51[var_270018c4] < 20000)
	{
		return;
	}
	if(function_4bd0142f("stealth_indicator", 0))
	{
		var_6050ab17 notify("sight_indicator_" + var_270018c4);
		var_6050ab17 endon("sight_indicator_" + var_270018c4);
		var_6050ab17 endon("hash_128f8789");
		if(!isdefined(var_6050ab17.var_ad06727a.var_d1c69a51))
		{
			var_6050ab17.var_ad06727a.var_d1c69a51 = [];
		}
		var_6050ab17.var_ad06727a.var_d1c69a51[var_270018c4] = var_73638d3b;
		var_75bdb5be = 0.67;
		var_f69107b4 = 1000;
		var_5e76f0af = var_270018c4 + var_f69107b4;
		var_6050ab17 namespace_8312dbf::function_cf9dd532(self, var_f69107b4);
		var_5cbd0572 = "white_stealth_spotting";
		var_d900369a = (1, 1, 1);
		if(isdefined(var_6050ab17.var_ad06727a.var_2e2a14bb.var_2eb71ab0) && isdefined(var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af]))
		{
			var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af] function_a8e6d0d7(var_6050ab17.var_ad06727a.var_2e2a14bb.var_2eb71ab0);
			var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af] function_9befb288(var_5cbd0572, 5, 5);
			var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af] function_26b3bd1e(0, var_5cbd0572, 0, 0);
			var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af].var_d900369a = var_d900369a;
			var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af].var_aabe9f43 = var_75bdb5be;
			var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af].var_c3d91e16 = GetTime();
		}
		var_8c974758 = 1 * 1000;
		var_61fba14c = function_95d0212b(1000, var_8c974758);
		for(var_a4ef7967 = 0; var_a4ef7967 < var_8c974758;  = 0)
		{
			if(var_6050ab17 namespace_80045451::function_739525d() == "combat")
			{
				var_a4ef7967 = function_aaeec8c5(var_8c974758 - var_61fba14c, var_a4ef7967);
			}
			var_ddb74378 = var_75bdb5be + function_3c191891(function_33724181(GetTime())) * 1 - var_75bdb5be;
			if(var_8c974758 - var_a4ef7967 <= var_61fba14c && isdefined(var_6050ab17.var_ad06727a.var_2e2a14bb.var_2eb71ab0) && isdefined(var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af]))
			{
				var_aabe9f43 = var_ddb74378 * function_33724181(var_8c974758 - var_a4ef7967) / function_33724181(var_61fba14c);
				var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af].var_aabe9f43 = function_95d0212b(function_aaeec8c5(var_aabe9f43, 0), 1);
			}
			else
			{
				var_6050ab17.var_ad06727a.var_2e2a14bb.var_85afbc75[var_5e76f0af].var_aabe9f43 = function_95d0212b(function_aaeec8c5(var_ddb74378, 0), 1);
			}
			wait(0.05);
		}
		var_6050ab17 namespace_8312dbf::function_180adb28(var_5e76f0af, var_f69107b4);
	}
}

/*
	Name: function_3f6bd04c
	Namespace: namespace_10443be6
	Checksum: 0xE3891B8D
	Offset: 0x21B8
	Size: 0x293
	Parameters: 1
	Flags: None
*/
function function_3f6bd04c(var_6050ab17)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_ad06727a));
	#/
	var_73638d3b = GetTime();
	if(isdefined(self.var_ad06727a.var_4ea02c94) && self.var_ad06727a.var_4ea02c94)
	{
		return;
	}
	if(isdefined(self.var_ad06727a.var_45848ab) && var_73638d3b - self.var_ad06727a.var_45848ab < 20000)
	{
		return;
	}
	self notify("hash_3f6bd04c");
	self endon("hash_3f6bd04c");
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	self.var_ad06727a.var_45848ab = var_73638d3b;
	var_612fc483 = self.var_6ab6f4fd[1] - function_bdcdc423(var_6050ab17.var_722885f3 - self.var_722885f3)[1];
	var_a113a204 = function_bdcdc423(var_6050ab17.var_722885f3 - self.var_722885f3)[0];
	var_a113a204 = function_3dfa27b4(var_a113a204);
	if(var_612fc483 < 0)
	{
		var_612fc483 = var_612fc483 + 360;
	}
	var_be26784d = "enemy_behind";
	if(var_a113a204 > 45)
	{
		var_be26784d = "enemy_below";
	}
	else if(var_a113a204 < -45)
	{
		var_be26784d = "enemy_above";
	}
	else if(var_612fc483 >= 315 || var_612fc483 <= 45)
	{
		var_be26784d = "enemy_ahead";
	}
	else if(var_612fc483 >= 45 && var_612fc483 <= 135)
	{
		var_be26784d = "enemy_right";
	}
	else if(var_612fc483 >= 225 && var_612fc483 <= 315)
	{
		var_be26784d = "enemy_left";
	}
	self namespace_234a4910::function_866c6270(var_be26784d, 1);
}

