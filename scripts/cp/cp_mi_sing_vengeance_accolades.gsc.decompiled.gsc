#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_level;
#using scripts\shared\util_shared;

#namespace namespace_523da15d;

/*
	Name: function_4d39a2af
	Namespace: namespace_523da15d
	Checksum: 0x397CB501
	Offset: 0x570
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_4d39a2af()
{
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_UNTOUCHED");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_SCORE");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_COLLECTIBLE");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE3", "apartment_enemies_killed");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE4", "takedown_timed_kill");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE5", "killing_street_sniper_kill");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE6", "cafe_stealth");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE7", "cafe_wasp_kill");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE8", "cafe_stealth_melee");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE9", "temple_stealth");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE10", "temple_stealth_kill");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE11", "temple_stealth_double_kill");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE12", "garage_sniper_nohit");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE14", "plaza_mounted_turret_kill");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE15", "siegebot_hijack_kill");
	namespace_fe079222::function_50f16166("MISSION_VENGEANCE_CHALLENGE16", "plaza_midair_kill");
	function_6f52c808();
	function_d2fd62e7();
	function_5d520d55();
	function_ec78b0b7();
	function_f891bcbe();
	namespace_dabbe128::function_356a4ee1(&function_3856af47);
}

/*
	Name: function_c27610f9
	Namespace: namespace_523da15d
	Checksum: 0xE0828E65
	Offset: 0x7D8
	Size: 0xD5
	Parameters: 2
	Flags: None
*/
function function_c27610f9(var_8e087689, var_70b01bd3)
{
	if(self == level)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a notify(var_8e087689);
		}
	}
	else if(function_65f192a6(self))
	{
		self notify(var_8e087689);
	}
	if(isdefined(var_70b01bd3))
	{
		[[var_70b01bd3]]();
	}
}

/*
	Name: function_dab879d0
	Namespace: namespace_523da15d
	Checksum: 0xFF883064
	Offset: 0x8B8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_dab879d0()
{
	level.var_e9a8d710 = 0;
	namespace_dabbe128::function_de1a6d25(&function_9d6f9365);
}

/*
	Name: function_6b863b66
	Namespace: namespace_523da15d
	Checksum: 0x188E3640
	Offset: 0x8F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6b863b66()
{
	namespace_dabbe128::function_fad550c4(&function_9d6f9365);
}

/*
	Name: function_9d6f9365
	Namespace: namespace_523da15d
	Checksum: 0xE52928B
	Offset: 0x928
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_9d6f9365(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(namespace_84970cc4::function_307b88f2(level.var_1dca7888, self))
		{
			level.var_e9a8d710++;
			if(level.var_e9a8d710 == level.var_7819b21b)
			{
				level function_c27610f9("apartment_enemies_killed", &function_6b863b66);
			}
		}
	}
}

/*
	Name: function_b510823b
	Namespace: namespace_523da15d
	Checksum: 0x74BFCE8B
	Offset: 0x9C8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b510823b()
{
	level.var_387f8f17 = 0;
	level.var_56cd8232 = namespace_82b91a51::function_8c4f4e93(6);
	namespace_dabbe128::function_de1a6d25(&function_12042cfc);
}

/*
	Name: function_692da451
	Namespace: namespace_523da15d
	Checksum: 0x32DB63DA
	Offset: 0xA20
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_692da451()
{
	namespace_dabbe128::function_fad550c4(&function_12042cfc);
}

/*
	Name: function_12042cfc
	Namespace: namespace_523da15d
	Checksum: 0xAD8A4701
	Offset: 0xA50
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_12042cfc(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(namespace_84970cc4::function_307b88f2(level.var_d9f6d6, self))
		{
			level.var_387f8f17++;
			if(level.var_387f8f17 >= level.var_6e0b32d8 && level.var_56cd8232 namespace_82b91a51::function_abc2cfcf() > 0)
			{
				level function_c27610f9("takedown_timed_kill", &function_692da451);
			}
		}
	}
}

/*
	Name: function_d2fd62e7
	Namespace: namespace_523da15d
	Checksum: 0x4C7FBB72
	Offset: 0xB10
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d2fd62e7()
{
	namespace_dabbe128::function_de1a6d25(&function_27e99cb1);
}

/*
	Name: function_6900909d
	Namespace: namespace_523da15d
	Checksum: 0x287B5B27
	Offset: 0xB40
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6900909d()
{
	namespace_dabbe128::function_fad550c4(&function_27e99cb1);
}

/*
	Name: function_27e99cb1
	Namespace: namespace_523da15d
	Checksum: 0x135C896B
	Offset: 0xB70
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_27e99cb1(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(isdefined(self.var_fe10e861) && self.var_fe10e861 == "_sniper")
		{
			if(var_5dc5e20a function_ad7e8c32())
			{
				var_5dc5e20a function_c27610f9("killing_street_sniper_kill");
			}
		}
	}
}

/*
	Name: function_e887345e
	Namespace: namespace_523da15d
	Checksum: 0x95A9E5C4
	Offset: 0xC18
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e887345e()
{
	level thread function_da492b95();
}

/*
	Name: function_da492b95
	Namespace: namespace_523da15d
	Checksum: 0xD61E527
	Offset: 0xC40
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_da492b95()
{
	level namespace_ad23e503::function_1ab5ebec("dogleg_1_end");
	if(!(isdefined(level.var_508337f6) && level.var_508337f6))
	{
		level function_c27610f9("cafe_stealth");
	}
}

/*
	Name: function_cae14a51
	Namespace: namespace_523da15d
	Checksum: 0x7EACB9B
	Offset: 0xCA0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_cae14a51()
{
	if(!isdefined(level.var_39caf01b))
	{
		level.var_39caf01b = 0;
	}
	namespace_dabbe128::function_5cf145c9(&function_9a43cef1);
}

/*
	Name: function_82266abb
	Namespace: namespace_523da15d
	Checksum: 0x862AFE37
	Offset: 0xCE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_82266abb()
{
	namespace_dabbe128::function_9fcef20a(&function_9a43cef1);
}

/*
	Name: function_9a43cef1
	Namespace: namespace_523da15d
	Checksum: 0xC3F0A726
	Offset: 0xD18
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_9a43cef1(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) || (isdefined(var_a8563e07.var_3a212fd7.var_8fc0e50e) && var_a8563e07.var_3a212fd7.var_8fc0e50e === "wasp" && var_a8563e07.var_ba36487d == "MOD_EXPLOSIVE"))
	{
		if(!level namespace_ad23e503::function_7922262b("dogleg_1_end"))
		{
			if(self.var_8fc0e50e === "wasp")
			{
				level.var_39caf01b++;
				if(level.var_39caf01b == level.var_4843e321)
				{
					level function_c27610f9("cafe_wasp_kill", &function_82266abb);
				}
			}
		}
	}
}

/*
	Name: function_eda4634d
	Namespace: namespace_523da15d
	Checksum: 0xEE1B17E5
	Offset: 0xE28
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_eda4634d()
{
	namespace_dabbe128::function_de1a6d25(&function_87d295ed);
}

/*
	Name: function_a4b67c57
	Namespace: namespace_523da15d
	Checksum: 0xB038A896
	Offset: 0xE58
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a4b67c57()
{
	namespace_dabbe128::function_fad550c4(&function_87d295ed);
}

/*
	Name: function_87d295ed
	Namespace: namespace_523da15d
	Checksum: 0x95922912
	Offset: 0xE88
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_87d295ed(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(var_a8563e07.var_ba36487d === "MOD_MELEE" || var_a8563e07.var_ba36487d === "MOD_MELEE_ASSASSINATE" || var_a8563e07.var_ba36487d === "MOD_MELEE_WEAPON_BUTT" || var_a8563e07.var_dfcc01fd === level.var_175490fb.var_e3b77070.var_fdd3ea57)
		{
			var_5dc5e20a = var_a8563e07.var_3a212fd7;
			if(!(isdefined(level.var_508337f6) && level.var_508337f6))
			{
				var_5dc5e20a function_c27610f9("cafe_stealth_melee");
			}
		}
	}
}

/*
	Name: function_a6fadcaa
	Namespace: namespace_523da15d
	Checksum: 0x5CE45B10
	Offset: 0xF90
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a6fadcaa()
{
	level thread function_bd67e1d1();
}

/*
	Name: function_bd67e1d1
	Namespace: namespace_523da15d
	Checksum: 0x809AFC75
	Offset: 0xFB8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_bd67e1d1()
{
	level namespace_ad23e503::function_1ab5ebec("temple_end");
	if(!level namespace_ad23e503::function_7922262b("temple_stealth_broken"))
	{
		level function_c27610f9("temple_stealth");
	}
}

/*
	Name: function_5d520d55
	Namespace: namespace_523da15d
	Checksum: 0xCC57EA2E
	Offset: 0x1028
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_5d520d55()
{
	namespace_dabbe128::function_de1a6d25(&function_56a787d6);
}

/*
	Name: function_47ff9a8f
	Namespace: namespace_523da15d
	Checksum: 0xA82C47C9
	Offset: 0x1058
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_47ff9a8f()
{
	namespace_dabbe128::function_fad550c4(&function_56a787d6);
}

/*
	Name: function_56a787d6
	Namespace: namespace_523da15d
	Checksum: 0xAA325F91
	Offset: 0x1088
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_56a787d6(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7) || (isdefined(self.var_8c4675f4) && self.var_8c4675f4 == 1))
	{
		if(!isdefined(self.var_ad06727a))
		{
			return;
		}
		if(!level namespace_ad23e503::function_7922262b("stealth_alert") && !level namespace_ad23e503::function_7922262b("stealth_combat") && !level namespace_ad23e503::function_7922262b("stealth_discovered"))
		{
			level function_c27610f9("temple_stealth_kill");
		}
	}
}

/*
	Name: function_3856af47
	Namespace: namespace_523da15d
	Checksum: 0xEBCEDFC1
	Offset: 0x1168
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_3856af47()
{
	self.var_fb01e8c9 = undefined;
}

/*
	Name: function_ec78b0b7
	Namespace: namespace_523da15d
	Checksum: 0x46B731FC
	Offset: 0x1180
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_ec78b0b7()
{
	namespace_dabbe128::function_de1a6d25(&function_e4b54cbf);
}

/*
	Name: function_e4b54cbf
	Namespace: namespace_523da15d
	Checksum: 0xF4446912
	Offset: 0x11B0
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_e4b54cbf(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(!isdefined(self.var_ad06727a))
		{
			return;
		}
		if(isdefined(var_a8563e07.var_dfcc01fd) && (var_a8563e07.var_ba36487d == "MOD_PISTOL_BULLET" || var_a8563e07.var_ba36487d == "MOD_RIFLE_BULLET"))
		{
			if(isdefined(var_a8563e07.var_3a212fd7.var_f329477a))
			{
				if(var_a8563e07.var_3a212fd7.var_f329477a == var_a8563e07.var_3a212fd7.var_4c9e802c["shots"])
				{
					if(!level namespace_ad23e503::function_7922262b("stealth_combat") && !level namespace_ad23e503::function_7922262b("stealth_discovered"))
					{
						var_a8563e07.var_3a212fd7 notify("hash_41510dc5");
					}
				}
			}
			var_a8563e07.var_3a212fd7.var_f329477a = var_a8563e07.var_3a212fd7.var_4c9e802c["shots"];
		}
	}
}

/*
	Name: function_2c3bbf49
	Namespace: namespace_523da15d
	Checksum: 0x580931CD
	Offset: 0x1328
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_2c3bbf49()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_612cfe91();
	}
	namespace_dabbe128::function_356a4ee1(&function_612cfe91);
}

/*
	Name: function_612cfe91
	Namespace: namespace_523da15d
	Checksum: 0xDEDCECAE
	Offset: 0x13E0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_612cfe91()
{
	self.var_78485064 = 0;
	self thread function_2cb00a9b();
}

/*
	Name: function_2cb00a9b
	Namespace: namespace_523da15d
	Checksum: 0x57344F5A
	Offset: 0x1410
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_2cb00a9b()
{
	self endon("hash_128f8789");
	level endon("hash_d72a35d0");
	while(1)
	{
		self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34);
		if(isdefined(var_a0ad4f34.var_3d2183f2) && var_a0ad4f34.var_3d2183f2 == "garage_snipers")
		{
			self.var_78485064 = 1;
		}
	}
}

/*
	Name: function_f766f1e0
	Namespace: namespace_523da15d
	Checksum: 0xC72F5C89
	Offset: 0x14A0
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_f766f1e0()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(!var_5dc5e20a.var_78485064)
		{
			var_5dc5e20a function_c27610f9("garage_sniper_nohit");
		}
	}
}

/*
	Name: function_f891bcbe
	Namespace: namespace_523da15d
	Checksum: 0x9F7F5209
	Offset: 0x1550
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f891bcbe()
{
	namespace_dabbe128::function_de1a6d25(&function_6f8febd3);
}

/*
	Name: function_7867d398
	Namespace: namespace_523da15d
	Checksum: 0x8546E7A3
	Offset: 0x1580
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_7867d398()
{
	namespace_dabbe128::function_fad550c4(&function_6f8febd3);
}

/*
	Name: function_6f8febd3
	Namespace: namespace_523da15d
	Checksum: 0xD5064AD3
	Offset: 0x15B0
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_6f8febd3(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(var_5dc5e20a function_cb8df3d0() && !isdefined(var_5dc5e20a.var_a03af093))
		{
			var_5dc5e20a function_c27610f9("plaza_mounted_turret_kill");
		}
		else if(var_5dc5e20a function_cb8df3d0() && var_5dc5e20a.var_a03af093.var_8fc0e50e === "turret")
		{
			var_5dc5e20a function_c27610f9("plaza_mounted_turret_kill");
		}
	}
}

/*
	Name: function_f03a38c7
	Namespace: namespace_523da15d
	Checksum: 0xACAFA067
	Offset: 0x16A0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f03a38c7()
{
	namespace_dabbe128::function_de1a6d25(&function_4e4b36c4);
}

/*
	Name: function_b4f6e07d
	Namespace: namespace_523da15d
	Checksum: 0xCDCAE87A
	Offset: 0x16D0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b4f6e07d()
{
	namespace_dabbe128::function_fad550c4(&function_4e4b36c4);
}

/*
	Name: function_4e4b36c4
	Namespace: namespace_523da15d
	Checksum: 0x33D6984D
	Offset: 0x1700
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_4e4b36c4(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(isdefined(var_5dc5e20a.var_a03af093) && isdefined(var_5dc5e20a.var_a03af093.var_8fc0e50e))
		{
			if(var_5dc5e20a.var_a03af093.var_8fc0e50e === "siegebot")
			{
				var_5dc5e20a function_c27610f9("siegebot_hijack_kill");
			}
		}
	}
}

/*
	Name: function_6f52c808
	Namespace: namespace_523da15d
	Checksum: 0x698D0BCA
	Offset: 0x17C8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6f52c808()
{
	namespace_dabbe128::function_de1a6d25(&function_91236111);
}

/*
	Name: function_b13b2dae
	Namespace: namespace_523da15d
	Checksum: 0x3331DF7B
	Offset: 0x17F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b13b2dae()
{
	namespace_dabbe128::function_fad550c4(&function_91236111);
}

/*
	Name: function_91236111
	Namespace: namespace_523da15d
	Checksum: 0x5C6286E1
	Offset: 0x1828
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_91236111(var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		var_5dc5e20a = var_a8563e07.var_3a212fd7;
		if(var_5dc5e20a function_4f749468() && !isdefined(var_5dc5e20a.var_a03af093) && !var_5dc5e20a function_cb8df3d0())
		{
			var_5dc5e20a function_c27610f9("plaza_midair_kill");
		}
	}
}

/*
	Name: function_4f749468
	Namespace: namespace_523da15d
	Checksum: 0xFA29A41E
	Offset: 0x18E0
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_4f749468()
{
	var_aba584c6 = self function_fc753cb5();
	return !isdefined(var_aba584c6);
}

