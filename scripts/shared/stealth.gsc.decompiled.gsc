#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\stealth_actor;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_level;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_vehicle;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_ad06727a;

/*
	Name: function_2dc19561
	Namespace: namespace_ad06727a
	Checksum: 0x5AFA4435
	Offset: 0x2E8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("stealth", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_ad06727a
	Checksum: 0xE79E9038
	Offset: 0x328
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_ff58a260();
	/#
		namespace_e449108e::function_c35e6aab();
	#/
}

/*
	Name: function_ff58a260
	Namespace: namespace_ad06727a
	Checksum: 0xA2D5E7DF
	Offset: 0x360
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	namespace_71e9cb84::function_50f16166("toplayer", "stealth_sighting", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "stealth_alerted", 1, 1, "int");
}

/*
	Name: function_c35e6aab
	Namespace: namespace_ad06727a
	Checksum: 0x78AFA389
	Offset: 0x3D0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	level function_7df1081d();
	function_26f24c93(0);
}

/*
	Name: function_11424fa
	Namespace: namespace_ad06727a
	Checksum: 0x4FE0527C
	Offset: 0x410
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_11424fa()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self));
	#/
	if(!isdefined(self.var_ad06727a))
	{
		return;
	}
	if(isdefined(self.var_ad06727a.var_47808c1f))
	{
		foreach(var_2af0f4dc in self.var_ad06727a.var_47808c1f)
		{
			if(!isdefined(var_2af0f4dc))
			{
				continue;
			}
			if(var_2af0f4dc == self)
			{
				continue;
			}
			var_2af0f4dc function_e8434f94();
		}
	}
	self function_e8434f94();
}

/*
	Name: function_fcf56ab5
	Namespace: namespace_ad06727a
	Checksum: 0x6E4C5C02
	Offset: 0x518
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_fcf56ab5()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self));
	#/
	if(!isdefined(self.var_ad06727a))
	{
		return;
	}
	self notify("hash_94ff6d85");
	if(isdefined(self.var_ad06727a.var_47808c1f))
	{
		foreach(var_2af0f4dc in self.var_ad06727a.var_47808c1f)
		{
			if(!isdefined(var_2af0f4dc))
			{
				continue;
			}
			if(var_2af0f4dc == self)
			{
				continue;
			}
			var_2af0f4dc notify("hash_94ff6d85");
			var_2af0f4dc function_7aa44f83();
		}
	}
	self function_7aa44f83();
	self.var_ad06727a = undefined;
}

/*
	Name: function_ca3d344
	Namespace: namespace_ad06727a
	Checksum: 0x471FABDC
	Offset: 0x648
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function function_ca3d344(var_9e455a4)
{
	if(isdefined(level.var_ad06727a))
	{
		if(!isdefined(level.var_ad06727a.var_47808c1f))
		{
			level.var_ad06727a.var_47808c1f = [];
		}
		for(var_c957f6b6 = 0; !isdefined(level.var_ad06727a.var_47808c1f[var_c957f6b6]); var_c957f6b6++)
		{
			level.var_ad06727a.var_47808c1f[var_c957f6b6] = var_9e455a4;
			return;
			continue;
			if(level.var_ad06727a.var_47808c1f[var_c957f6b6] == var_9e455a4)
			{
				return;
			}
		}
	}
}

/*
	Name: function_7df1081d
	Namespace: namespace_ad06727a
	Checksum: 0xCD7962FF
	Offset: 0x708
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_7df1081d()
{
	var_9e455a4 = self;
	if(!isdefined(var_9e455a4) || isdefined(var_9e455a4.var_ad06727a))
	{
		return 0;
	}
	if(function_65f192a6(var_9e455a4))
	{
		var_9e455a4 namespace_10443be6::function_c35e6aab();
	}
	else if(function_8d0347b8(var_9e455a4))
	{
		var_9e455a4 namespace_aec89ff8::function_c35e6aab();
	}
	else if(function_85e4c3b3(var_9e455a4))
	{
		var_9e455a4 namespace_594759f3::function_c35e6aab();
	}
	else if(var_9e455a4 == level)
	{
		var_9e455a4 namespace_ad45a419::function_c35e6aab();
	}
	function_ca3d344(var_9e455a4);
}

/*
	Name: function_7aa44f83
	Namespace: namespace_ad06727a
	Checksum: 0x76AC27C
	Offset: 0x818
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_7aa44f83()
{
	var_9e455a4 = self;
	if(!isdefined(var_9e455a4))
	{
		return 0;
	}
	if(function_65f192a6(var_9e455a4))
	{
		return var_9e455a4 namespace_10443be6::function_fcf56ab5();
	}
	if(function_8d0347b8(var_9e455a4))
	{
		return var_9e455a4 namespace_aec89ff8::function_fcf56ab5();
	}
	if(function_85e4c3b3(var_9e455a4))
	{
		return var_9e455a4 namespace_594759f3::function_fcf56ab5();
	}
	if(var_9e455a4 == level)
	{
		return var_9e455a4 namespace_ad45a419::function_fcf56ab5();
	}
	return 0;
}

/*
	Name: function_e8434f94
	Namespace: namespace_ad06727a
	Checksum: 0x9C994A1B
	Offset: 0x8F8
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_e8434f94()
{
	var_9e455a4 = self;
	if(!isdefined(var_9e455a4))
	{
		return 0;
	}
	if(function_65f192a6(var_9e455a4))
	{
		return var_9e455a4 namespace_10443be6::function_11424fa();
	}
	if(function_8d0347b8(var_9e455a4))
	{
		return var_9e455a4 namespace_aec89ff8::function_11424fa();
	}
	if(function_85e4c3b3(var_9e455a4))
	{
		return var_9e455a4 namespace_594759f3::function_11424fa();
	}
	if(var_9e455a4 == level)
	{
		return var_9e455a4 namespace_ad45a419::function_11424fa();
	}
	return 0;
}

/*
	Name: function_2cfe5148
	Namespace: namespace_ad06727a
	Checksum: 0x6B40A2F6
	Offset: 0x9D8
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_2cfe5148(var_aa10fce8)
{
	if(!isdefined(var_aa10fce8))
	{
		return 0;
	}
	if(!isdefined(var_aa10fce8.var_3e94206a))
	{
		return 0;
	}
	return var_aa10fce8.var_3e94206a != self.var_3e94206a;
}

/*
	Name: function_36a7b4ed
	Namespace: namespace_ad06727a
	Checksum: 0xAB16C39E
	Offset: 0xA28
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_36a7b4ed()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_3e94206a));
	#/
	switch(self.var_3e94206a)
	{
		case "allies":
		{
			return "axis";
		}
		case "axis":
		{
			return "allies";
		}
	}
	return "allies";
}

/*
	Name: function_7ee3d9cd
	Namespace: namespace_ad06727a
	Checksum: 0xDFED3E49
	Offset: 0xA98
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_7ee3d9cd(var_aa10fce8)
{
	if(function_8d0347b8(self))
	{
		return self function_75754e3a(var_aa10fce8);
	}
	else
	{
		return function_e7865c4b(self.var_722885f3 + VectorScale((0, 0, 1), 30), var_aa10fce8.var_722885f3 + VectorScale((0, 0, 1), 30), 0, undefined);
	}
}

/*
	Name: function_b889e36b
	Namespace: namespace_ad06727a
	Checksum: 0xC9481490
	Offset: 0xB30
	Size: 0x3D
	Parameters: 2
	Flags: None
*/
function function_b889e36b(var_15c70cbd, var_3bc98726)
{
	return level.var_ad06727a.var_21c68c49[var_15c70cbd] - level.var_ad06727a.var_21c68c49[var_3bc98726];
}

/*
	Name: function_8ab6cff5
	Namespace: namespace_ad06727a
	Checksum: 0xA373E532
	Offset: 0xB78
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function function_8ab6cff5(var_19d95897)
{
	self notify("level_wait_notify_" + var_19d95897);
	self endon("level_wait_notify_" + var_19d95897);
	if(function_65f192a6(self))
	{
		self endon("hash_643a7daf");
	}
	else
	{
		self endon("hash_128f8789");
	}
	self endon("hash_94ff6d85");
	level waittill(var_19d95897);
	self notify(var_19d95897);
}

/*
	Name: function_713eb2a1
	Namespace: namespace_ad06727a
	Checksum: 0x877A49B9
	Offset: 0xC08
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_713eb2a1()
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	var_1d6db0a3 = self function_48c6a3a2();
	var_52aedb43 = self function_159a070b(var_1d6db0a3);
	var_aa7dd041 = self function_54d84899(var_1d6db0a3);
	return var_52aedb43 < var_1d6db0a3.var_c0b2188 && var_aa7dd041 > 0;
}

/*
	Name: function_38ce0dd0
	Namespace: namespace_ad06727a
	Checksum: 0x4F2FBFDB
	Offset: 0xCD0
	Size: 0x249
	Parameters: 2
	Flags: None
*/
function function_38ce0dd0(var_7d15e2f8, var_6798eb4a)
{
	level.var_ad06727a.var_657b1773[self.var_3e94206a] = namespace_84970cc4::function_b87262e(level.var_ad06727a.var_657b1773[self.var_3e94206a]);
	var_657b1773 = function_f926d8e8(level.var_ad06727a.var_657b1773[self.var_3e94206a], self.var_722885f3, 20, var_7d15e2f8);
	var_455f44e3 = function_ef0a72b2(var_6798eb4a);
	var_225046e = self.var_722885f3;
	var_41c8d4a0 = self.var_6ab6f4fd;
	if(function_65f192a6(self))
	{
		var_225046e = self function_501eb072();
		var_41c8d4a0 = self function_89c87c9c();
	}
	else if(function_8d0347b8(self))
	{
		var_225046e = self function_d48f2ab3("TAG_EYE");
		var_41c8d4a0 = self function_cd1d99bd("TAG_EYE");
	}
	foreach(var_6050ab17 in var_657b1773)
	{
		if(namespace_82b91a51::function_22ff7ff0(var_225046e, var_41c8d4a0, var_6050ab17.var_722885f3 + VectorScale((0, 0, 1), 30), var_455f44e3))
		{
			return var_6050ab17;
		}
	}
}

/*
	Name: function_fa8a28f1
	Namespace: namespace_ad06727a
	Checksum: 0x96615B99
	Offset: 0xF28
	Size: 0x97
	Parameters: 2
	Flags: None
*/
function function_fa8a28f1(var_b71ed4a2, var_e8e5cdb5)
{
	var_d47e142e = function_3f10449f();
	var_d47e142e = function_57efbe1(var_d47e142e, var_b71ed4a2, 1, 0, var_e8e5cdb5);
	if(isdefined(var_d47e142e) && var_d47e142e.size > 0 && function_5b49d38c(var_d47e142e[0]))
	{
		return var_d47e142e[0];
	}
}

/*
	Name: function_b7ff7c00
	Namespace: namespace_ad06727a
	Checksum: 0x208DDACD
	Offset: 0xFC8
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_b7ff7c00(var_12131b3c)
{
	if(!isdefined(level.var_ad06727a))
	{
		level.var_ad06727a = function_a8fb77bd();
	}
	if(!isdefined(level.var_ad06727a.var_b7ff7c00))
	{
		level.var_ad06727a.var_b7ff7c00 = [];
		level.var_ad06727a.var_b7ff7c00["unaware"] = VectorScale((1, 1, 1), 0.5);
		level.var_ad06727a.var_b7ff7c00["low_alert"] = (1, 1, 0);
		level.var_ad06727a.var_b7ff7c00["high_alert"] = (1, 0.5, 0);
		level.var_ad06727a.var_b7ff7c00["combat"] = (1, 0, 0);
	}
	return level.var_ad06727a.var_b7ff7c00[var_12131b3c];
}

/*
	Name: function_437e9eec
	Namespace: namespace_ad06727a
	Checksum: 0xA6907D65
	Offset: 0x10E0
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_437e9eec(var_aa10fce8)
{
	if(!isdefined(var_aa10fce8))
	{
		return 0;
	}
	if(!isdefined(var_aa10fce8.var_53b3f102))
	{
		return 0;
	}
	if(!isdefined(var_aa10fce8.var_53b3f102.var_6bf813af))
	{
		return 0;
	}
	return var_aa10fce8.var_53b3f102.var_6bf813af == "play";
}

/*
	Name: function_76c2ffe4
	Namespace: namespace_ad06727a
	Checksum: 0xF42AEFFC
	Offset: 0x1158
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_76c2ffe4(var_86c93e40)
{
	level.var_ad06727a.var_bc3590e4 = 1;
	function_e0319e51(var_86c93e40);
}

/*
	Name: function_862e861f
	Namespace: namespace_ad06727a
	Checksum: 0x80508AEB
	Offset: 0x1198
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_862e861f(var_1c457231)
{
	level.var_ad06727a.var_bc3590e4 = 0;
	level.var_ad06727a.var_7d4270a8 = "none";
	function_dd351c71(var_1c457231);
}

/*
	Name: function_dd351c71
	Namespace: namespace_ad06727a
	Checksum: 0xF2CF7D32
	Offset: 0x11F0
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_dd351c71(var_1c457231)
{
	if(isdefined(level.var_ad06727a.var_4b1f7bfc))
	{
		foreach(var_a3d46ee4 in level.var_ad06727a.var_4b1f7bfc)
		{
			var_a3d46ee4 function_eaa69754(var_1c457231);
		}
	}
}

/*
	Name: function_8bb61d8e
	Namespace: namespace_ad06727a
	Checksum: 0x629CD4F4
	Offset: 0x12B0
	Size: 0x7D
	Parameters: 2
	Flags: None
*/
function function_8bb61d8e(var_12131b3c, var_414c0762)
{
	if(!isdefined(level.var_ad06727a))
	{
		level.var_ad06727a = function_a8fb77bd();
	}
	if(!isdefined(level.var_ad06727a.var_ccb8d056))
	{
		level.var_ad06727a.var_ccb8d056 = [];
	}
	level.var_ad06727a.var_ccb8d056[var_12131b3c] = var_414c0762;
}

/*
	Name: function_e0319e51
	Namespace: namespace_ad06727a
	Checksum: 0xC0CEDF7B
	Offset: 0x1338
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_e0319e51(var_12131b3c)
{
	return;
	if(isdefined(level.var_ad06727a.var_7d4270a8) && level.var_ad06727a.var_7d4270a8 == var_12131b3c)
	{
		return;
	}
	if(isdefined(level.var_ad06727a.var_bc3590e4) && !level.var_ad06727a.var_bc3590e4)
	{
		return;
	}
	level.var_ad06727a.var_7d4270a8 = var_12131b3c;
	thread function_f8aaae39(1);
}

/*
	Name: function_f8aaae39
	Namespace: namespace_ad06727a
	Checksum: 0x6469BB2D
	Offset: 0x13D8
	Size: 0x251
	Parameters: 1
	Flags: None
*/
function function_f8aaae39(var_67520c6a)
{
	if(!isdefined(level.var_ad06727a.var_4b1f7bfc))
	{
		if(!isdefined(level.var_ad06727a.var_4b1f7bfc))
		{
			level.var_ad06727a.var_4b1f7bfc = [];
		}
		level.var_ad06727a.var_4b1f7bfc["unaware"] = function_9b7fda5e("script_origin", (0, 0, 0));
		level.var_ad06727a.var_4b1f7bfc["low_alert"] = function_9b7fda5e("script_origin", (0, 0, 0));
		level.var_ad06727a.var_4b1f7bfc["high_alert"] = function_9b7fda5e("script_origin", (0, 0, 0));
		level.var_ad06727a.var_4b1f7bfc["combat"] = function_9b7fda5e("script_origin", (0, 0, 0));
	}
	var_86c93e40 = level.var_ad06727a.var_7d4270a8;
	wait(var_67520c6a);
	if(var_86c93e40 == level.var_ad06727a.var_7d4270a8)
	{
		foreach(var_a3d46ee4 in level.var_ad06727a.var_4b1f7bfc)
		{
			if(var_86c93e40 == var_f54b9c82 && isdefined(level.var_ad06727a.var_ccb8d056[var_f54b9c82]))
			{
				var_a3d46ee4 function_c2931a36(level.var_ad06727a.var_ccb8d056[var_f54b9c82], 1);
				continue;
			}
			var_a3d46ee4 function_eaa69754(3);
		}
	}
}

/*
	Name: function_26f24c93
	Namespace: namespace_ad06727a
	Checksum: 0x36B27617
	Offset: 0x1638
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_26f24c93(var_e2e6bbcb)
{
	if(isdefined(level.var_ad06727a))
	{
		level.var_ad06727a.var_bf426fe4 = var_e2e6bbcb;
	}
	else if(isdefined(var_e2e6bbcb) && var_e2e6bbcb)
	{
		/#
			namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
		#/
	}
}

/*
	Name: function_9aa26b41
	Namespace: namespace_ad06727a
	Checksum: 0x5FDD6BFC
	Offset: 0x16A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9aa26b41()
{
	level thread function_762607ad();
}

/*
	Name: function_762607ad
	Namespace: namespace_ad06727a
	Checksum: 0xDC155143
	Offset: 0x16D0
	Size: 0x291
	Parameters: 0
	Flags: Private
*/
function private function_762607ad()
{
	level notify("hash_762607ad");
	level endon("hash_762607ad");
	level endon("hash_2693b45");
	level endon("hash_94ff6d85");
	var_b5d2021c = 0;
	while(var_b5d2021c < 10)
	{
		var_62de14e3 = level namespace_ad45a419::function_b55533bc() && (level namespace_ad23e503::function_7922262b("stealth_alert") || level namespace_ad23e503::function_7922262b("stealth_combat") || level namespace_ad23e503::function_7922262b("stealth_discovered"));
		if(!var_62de14e3)
		{
			var_657b1773 = function_b8494651("axis");
			for(var_c957f6b6 = 0; var_c957f6b6 < var_657b1773.size && !var_62de14e3; var_c957f6b6++)
			{
				var_6050ab17 = var_657b1773[var_c957f6b6];
				if(!isdefined(var_6050ab17) || function_5b49d38c(var_6050ab17))
				{
					break;
				}
				if(!var_6050ab17 namespace_80045451::function_b55533bc())
				{
					break;
				}
				foreach(var_5dc5e20a in level.var_9b1393e7)
				{
					if(var_6050ab17 function_99ada8a(var_5dc5e20a) > 0)
					{
						var_62de14e3 = 1;
					}
				}
			}
		}
		else if(!var_62de14e3)
		{
			var_62de14e3 = !function_fd413bf3();
		}
		if(var_62de14e3)
		{
			wait(1);
			var_b5d2021c++;
			continue;
		}
		else
		{
			namespace_9f824288::function_fb150717();
			return;
		}
	}
}

/*
	Name: function_fd413bf3
	Namespace: namespace_ad06727a
	Checksum: 0xF43EF3AA
	Offset: 0x1970
	Size: 0xCB
	Parameters: 0
	Flags: Private
*/
function private function_fd413bf3()
{
	if(!namespace_9f824288::function_147f4ca3())
	{
		return 0;
	}
	var_4a4884d2 = function_b8494651("axis");
	foreach(var_6050ab17 in var_4a4884d2)
	{
		if(!var_6050ab17 function_d0a01dc8())
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_d0a01dc8
	Namespace: namespace_ad06727a
	Checksum: 0x8600DD5B
	Offset: 0x1A48
	Size: 0x95
	Parameters: 0
	Flags: Private
*/
function private function_d0a01dc8()
{
	var_e0fabc1 = self namespace_9f824288::function_2808d83d();
	if(var_e0fabc1 > 1000 || var_e0fabc1 < 0)
	{
		return 1;
	}
	else if(var_e0fabc1 < 500)
	{
		return 0;
	}
	else if(function_8d0347b8(self) && self function_ed8df2f())
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_ed8df2f
	Namespace: namespace_ad06727a
	Checksum: 0xD87F0E0C
	Offset: 0x1AE8
	Size: 0x93
	Parameters: 0
	Flags: Private
*/
function private function_ed8df2f()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(self function_75754e3a(var_5dc5e20a))
		{
			return 1;
		}
	}
	return 0;
}

