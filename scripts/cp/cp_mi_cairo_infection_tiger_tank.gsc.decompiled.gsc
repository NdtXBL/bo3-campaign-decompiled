#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_8a035955;

/*
	Name: function_2dc19561
	Namespace: namespace_8a035955
	Checksum: 0xC15424EC
	Offset: 0x560
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("tiger_tank", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_8a035955
	Checksum: 0xD2A36C
	Offset: 0x5A0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_c1aa5253["fx_exp_quadtank_death_03"] = "explosions/fx_exp_quadtank_death_03";
	namespace_71e9cb84::function_50f16166("vehicle", "tiger_tank_retreat_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "tiger_tank_disable_sfx", 1, 1, "int");
}

#namespace namespace_2e121905;

/*
	Name: function_9b385ca5
	Namespace: namespace_2e121905
	Checksum: 0x1922C70F
	Offset: 0x628
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_a3ea1738 = "none";
	self.var_cad6330b = "";
	self.var_a89a845e = 0;
	self.var_ae796281 = 0;
	self.var_c99bf370 = 0;
	self.var_b78b4a49 = -1;
	self.var_88164886 = undefined;
	self.var_bdfe6578 = 0;
	function_a1b34855("attack", "attack_moving", 100, &function_cf0ca3a4, &function_864de95);
	function_a1b34855("retreat", "retreat", 100, &function_101b3238, &function_19468c8d);
	function_a1b34855("idle", "idle", 100, &function_797da861, &function_19468c8d);
	self namespace_ad23e503::function_c35e6aab("firing");
	self namespace_ad23e503::function_c35e6aab("moving");
}

/*
	Name: function_5fba2032
	Namespace: namespace_2e121905
	Checksum: 0x99EC1590
	Offset: 0x7A0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_147315f
	Namespace: namespace_2e121905
	Checksum: 0x1A8603D5
	Offset: 0x7B0
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_147315f(var_96fa87af, var_e45a16d2)
{
	if(isdefined(var_e45a16d2))
	{
		var_f73d6972 = function_6ada35ba(var_e45a16d2, "targetname");
		var_dfb53de7 = namespace_2f06d687::function_7387a40a(var_f73d6972);
		function_3a062392(var_dfb53de7);
	}
	function_347dd051(var_96fa87af);
}

/*
	Name: function_f7f47181
	Namespace: namespace_2e121905
	Checksum: 0x6BA79B39
	Offset: 0x850
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_f7f47181()
{
	if(self.var_ae796281 < 2)
	{
		self.var_c99bf370 = 1;
		self notify("hash_45d0a8c9");
	}
}

/*
	Name: function_d4274a7
	Namespace: namespace_2e121905
	Checksum: 0xDE98BBE0
	Offset: 0x888
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_d4274a7(var_c595a2bb)
{
	if(isdefined(self.var_69d9acb))
	{
		self.var_69d9acb namespace_71e9cb84::function_74d6b22f("tiger_tank_disable_sfx", var_c595a2bb);
	}
}

/*
	Name: function_ce839946
	Namespace: namespace_2e121905
	Checksum: 0xCB4FA8DE
	Offset: 0x8D0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_ce839946()
{
	self endon("hash_ffd53d50");
	if(!self.var_bdfe6578)
	{
		if(isdefined(self.var_69d9acb))
		{
			self thread function_b5349d82();
			wait(0.1);
			self thread function_4ac084e9();
			wait(3);
			self thread function_cb0ad682();
			self thread function_3092a01d();
		}
	}
}

/*
	Name: function_ffd53d50
	Namespace: namespace_2e121905
	Checksum: 0x78B99201
	Offset: 0x968
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_ffd53d50()
{
	self notify("hash_ffd53d50");
	self notify("hash_45d0a8c9");
}

/*
	Name: function_13eceb32
	Namespace: namespace_2e121905
	Checksum: 0xD3568F0A
	Offset: 0x990
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_13eceb32()
{
	if(isdefined(self.var_b9d89d33))
	{
		self.var_b9d89d33 function_dc8c8404();
		self.var_b9d89d33 = undefined;
	}
}

/*
	Name: function_307b1179
	Namespace: namespace_2e121905
	Checksum: 0x611E638A
	Offset: 0x9D0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_307b1179()
{
	function_ffd53d50();
	if(isdefined(self.var_69d9acb))
	{
		self.var_69d9acb function_dc8c8404();
		self.var_69d9acb = undefined;
	}
	if(isdefined(self.var_b9d89d33))
	{
		self.var_b9d89d33 function_dc8c8404();
		self.var_b9d89d33 = undefined;
	}
}

/*
	Name: function_347dd051
	Namespace: namespace_2e121905
	Checksum: 0xD6021652
	Offset: 0xA50
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_347dd051(var_96fa87af)
{
	self.var_69d9acb = var_96fa87af;
	self.var_69d9acb.var_3a90f16b = self.var_69d9acb.var_38a62b0e;
	self.var_69d9acb function_500dc2f7(120);
	self.var_69d9acb namespace_175490fb::function_59965309("cybercom_immolation");
	function_7a078777(self.var_69d9acb, VectorScale((0, 0, 1), 60));
	self.var_69d9acb namespace_37b990db::function_f4546867(0.75, 1.5, 0.25, 0.75, 1);
	self.var_69d9acb function_2ea2374c(1, 0);
	self.var_69d9acb function_af655b16();
	if(function_5cfb84bb(self.var_69d9acb))
	{
		self thread function_8276f484();
	}
	if(isdefined(self.var_b9d89d33))
	{
		function_dc12d289();
	}
	self thread function_797a14ff();
	self thread function_4ea63f4f();
	self.var_4c5ecca3 = function_6ada35ba("street_lookat", "targetname");
	self.var_69d9acb function_df42c640(self.var_4c5ecca3);
}

/*
	Name: function_3a062392
	Namespace: namespace_2e121905
	Checksum: 0x9966B6E8
	Offset: 0xC58
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_3a062392(var_dfb53de7)
{
	self.var_b9d89d33 = var_dfb53de7;
}

/*
	Name: function_dc12d289
	Namespace: namespace_2e121905
	Checksum: 0x575359CE
	Offset: 0xC78
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_dc12d289()
{
	if(isdefined(self.var_b9d89d33))
	{
		self.var_b9d89d33 thread namespace_96fa87af::function_230eadd7(self.var_69d9acb, "gunner1", 1);
		self thread function_490ccf02();
	}
}

/*
	Name: function_cb0ad682
	Namespace: namespace_2e121905
	Checksum: 0x4565F003
	Offset: 0xCD8
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_cb0ad682()
{
	self endon("hash_128f8789");
	self endon("hash_ffd53d50");
	self.var_69d9acb endon("hash_128f8789");
	while(1)
	{
		if(isdefined(self.var_88164886))
		{
			var_31362a8b = VectorScale((0, 0, 1), 53);
			var_484a53d8 = self.var_88164886.var_722885f3 + var_31362a8b;
			self.var_b86c3bf6 = function_7d15e2f8(self.var_69d9acb.var_722885f3, self.var_88164886.var_722885f3);
			self.var_69d9acb namespace_82b91a51::function_9fcf3cd8(2, "turret_on_target");
			if(function_7c974479(var_484a53d8) && self.var_b86c3bf6 > 620)
			{
				self.var_69d9acb function_90ad4ed1(0, self.var_88164886, var_31362a8b);
			}
			else
			{
				self.var_69d9acb function_62b52961();
			}
		}
		else
		{
			self.var_69d9acb function_62b52961();
		}
		wait(function_72a94f05(4, 8));
	}
}

/*
	Name: function_3092a01d
	Namespace: namespace_2e121905
	Checksum: 0x7BB90BC4
	Offset: 0xE68
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_3092a01d()
{
	self endon("hash_128f8789");
	self endon("hash_ffd53d50");
	self.var_69d9acb endon("hash_128f8789");
	while(1)
	{
		if(isdefined(self.var_88164886))
		{
			if(isdefined(self.var_b9d89d33) && function_5b49d38c(self.var_b9d89d33))
			{
				self.var_69d9acb thread namespace_37b990db::function_d104c596(function_8360af05(), -1, (0, 0, 0), 1, 0);
			}
			wait(function_72a94f05(2, 3));
			self.var_69d9acb namespace_37b990db::function_54bdb053(1);
			wait(function_72a94f05(4, 6));
		}
		else
		{
			wait(0.1);
		}
	}
}

/*
	Name: function_b5349d82
	Namespace: namespace_2e121905
	Checksum: 0xE18F46F1
	Offset: 0xF78
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_b5349d82()
{
	self endon("hash_128f8789");
	self endon("hash_ffd53d50");
	self.var_69d9acb endon("hash_128f8789");
	while(1)
	{
		self.var_88164886 = function_70b03789();
		if(isdefined(self.var_88164886))
		{
			self.var_69d9acb function_65453879(self.var_88164886);
		}
		else
		{
			self.var_69d9acb function_62b52961();
			self.var_69d9acb function_12613b3a();
		}
		wait(function_72a94f05(4, 5));
	}
}

/*
	Name: function_4ac084e9
	Namespace: namespace_2e121905
	Checksum: 0x88CE3E00
	Offset: 0x1050
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_4ac084e9()
{
	self endon("hash_128f8789");
	self endon("hash_ffd53d50");
	self.var_69d9acb endon("hash_128f8789");
	while(1)
	{
		var_b1e10140 = function_1de87b78();
		if(var_b1e10140)
		{
			var_d868c8e5 = function_1138db74();
			if(var_d868c8e5)
			{
				var_7b81749 = "retreat";
			}
			else if(self.var_c99bf370)
			{
				self.var_c99bf370 = 0;
				var_7b81749 = "retreat";
			}
			else
			{
				var_7b81749 = "attack";
			}
		}
		else
		{
			var_7b81749 = "idle";
		}
		var_164d95b8 = function_82ff0374(var_7b81749);
		function_b048dc4c(var_7b81749, var_164d95b8);
		wait(0.1);
	}
}

/*
	Name: function_797a14ff
	Namespace: namespace_2e121905
	Checksum: 0xB31A5D2C
	Offset: 0x1178
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_797a14ff()
{
	self endon("hash_128f8789");
	self endon("hash_ffd53d50");
	self.var_69d9acb endon("hash_128f8789");
	while(1)
	{
		self.var_69d9acb waittill("hash_f9348fda");
		self.var_b47d057e = GetTime();
		if(function_1138db74())
		{
			function_afbbec46("cTigerTank: damage interrupt!");
			self notify("hash_360844d8");
		}
	}
}

/*
	Name: function_b048dc4c
	Namespace: namespace_2e121905
	Checksum: 0x5E57BC00
	Offset: 0x1210
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_b048dc4c(var_7b81749, var_164d95b8)
{
	self endon("hash_360844d8");
	if(self.var_a3ea1738 != var_164d95b8)
	{
		self notify("hash_45d0a8c9");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_40c162df[var_7b81749][var_164d95b8]), "Dev Block strings are not supported" + var_7b81749 + "Dev Block strings are not supported" + var_164d95b8 + "Dev Block strings are not supported");
		#/
		self.var_cad6330b = self.var_a3ea1738;
		self.var_a3ea1738 = var_164d95b8;
	}
	[[self.var_40c162df[var_7b81749][var_164d95b8].var_ba703cb1]]();
}

/*
	Name: function_797da861
	Namespace: namespace_2e121905
	Checksum: 0xD7E7C1BF
	Offset: 0x12E8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_797da861()
{
	self endon("hash_45d0a8c9");
	function_afbbec46("cTigerTank: idle");
	self.var_69d9acb namespace_37b990db::function_54bdb053(0);
	function_4568faa9();
	while(!function_1de87b78())
	{
		wait(0.5);
	}
}

/*
	Name: function_864de95
	Namespace: namespace_2e121905
	Checksum: 0x1B5A05D5
	Offset: 0x1360
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_864de95()
{
	return 1;
}

/*
	Name: function_cf0ca3a4
	Namespace: namespace_2e121905
	Checksum: 0xFB30C5D
	Offset: 0x1370
	Size: 0x23F
	Parameters: 0
	Flags: None
*/
function function_cf0ca3a4()
{
	self endon("hash_45d0a8c9");
	function_afbbec46("cTigerTank: attack moving");
	if(isdefined(self.var_88164886))
	{
		var_de448ad = function_f679a325(self.var_88164886.var_722885f3 - self.var_69d9acb.var_722885f3) * 900;
		var_713e715e = function_cb234295(self.var_69d9acb.var_722885f3 + var_de448ad);
		if(isdefined(var_713e715e))
		{
			var_4b59adf6 = function_7d15e2f8(self.var_69d9acb.var_722885f3, var_713e715e.var_722885f3);
			var_a080d759 = function_bc7ce905(var_713e715e.var_6ab6f4fd) * 200;
			self.var_4c5ecca3.var_722885f3 = var_713e715e.var_722885f3 + var_a080d759;
			function_f3e33440(var_713e715e.var_722885f3, 1, 1);
		}
		var_79d88e26 = function_72a94f05(2.5, 3);
		wait(var_79d88e26);
		var_bf67bca7 = function_c9318f4b();
		var_4b59adf6 = function_7d15e2f8(self.var_69d9acb.var_722885f3, var_bf67bca7.var_722885f3);
		function_f3e33440(var_bf67bca7.var_722885f3, 1, 1);
		var_79d88e26 = function_72a94f05(3.5, 4);
		wait(var_79d88e26);
	}
	else
	{
		wait(3);
	}
}

/*
	Name: function_101b3238
	Namespace: namespace_2e121905
	Checksum: 0xCB9D1E93
	Offset: 0x15B8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_101b3238()
{
	self endon("hash_45d0a8c9");
	function_afbbec46("cTigerTank: retreat");
	self.var_b78b4a49 = -1;
	var_9de10fe3 = function_ffde4e7f();
	if(isdefined(var_9de10fe3))
	{
		function_afbbec46("cTigerTank: retreating!");
		function_d677fbba(var_9de10fe3.var_722885f3, "RETREAT", (0, 0, 1), 200);
		self.var_69d9acb namespace_71e9cb84::function_74d6b22f("tiger_tank_retreat_fx", 1);
		self.var_d7b7066f = GetTime();
		function_f3e33440(var_9de10fe3.var_722885f3, 1, 0, 0);
		function_bfc2da97();
		self function_4a890e39();
		self.var_69d9acb namespace_71e9cb84::function_74d6b22f("tiger_tank_retreat_fx", 0);
	}
	else
	{
		function_afbbec46("cTigerTank: retreat failed!");
	}
}

/*
	Name: function_1de87b78
	Namespace: namespace_2e121905
	Checksum: 0x76834728
	Offset: 0x1728
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1de87b78()
{
	var_d3f6be49 = self.var_69d9acb namespace_37b990db::function_5798a268(0);
	var_b1e10140 = var_d3f6be49.size > 0;
	return var_b1e10140;
}

/*
	Name: function_70b03789
	Namespace: namespace_2e121905
	Checksum: 0xFB9FC50D
	Offset: 0x1778
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_70b03789()
{
	var_d3f6be49 = self.var_69d9acb namespace_37b990db::function_5798a268(0);
	var_4ec85d4a = undefined;
	if(var_d3f6be49.size > 0)
	{
		var_a529ba4d = function_f926d8e8(var_d3f6be49, self.var_69d9acb.var_722885f3, 1);
		foreach(var_377a9c22 in var_a529ba4d)
		{
			if(function_87ea89a(var_377a9c22.var_722885f3, self.var_69d9acb.var_722885f3) > self.var_69d9acb.var_f8456b37)
			{
				var_4ec85d4a = var_377a9c22;
			}
		}
	}
	return var_4ec85d4a;
}

/*
	Name: function_276b5af0
	Namespace: namespace_2e121905
	Checksum: 0x26E254C3
	Offset: 0x18B8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_276b5af0()
{
	var_d3f6be49 = self.var_69d9acb namespace_37b990db::function_5798a268(0);
	return var_d3f6be49;
}

/*
	Name: function_82ff0374
	Namespace: namespace_2e121905
	Checksum: 0x192F56BB
	Offset: 0x18F0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_82ff0374(var_7b81749)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_40c162df[var_7b81749]), "Dev Block strings are not supported" + var_7b81749 + "Dev Block strings are not supported");
	#/
	var_eaf4e195 = function_e429cfd8(var_7b81749);
	if(var_eaf4e195.size > 1 && function_7f41c8e7(var_eaf4e195, self.var_a3ea1738))
	{
		function_81403b2f(var_eaf4e195, self.var_a3ea1738, 0);
	}
	var_1e336267 = function_25fc80d0(var_7b81749, var_eaf4e195);
	return var_1e336267;
}

/*
	Name: function_e429cfd8
	Namespace: namespace_2e121905
	Checksum: 0x73B71D44
	Offset: 0x19D8
	Size: 0x12F
	Parameters: 1
	Flags: None
*/
function function_e429cfd8(var_7b81749)
{
	var_a7133b4a = function_391512da(self.var_40c162df[var_7b81749]);
	var_eaf4e195 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a7133b4a.size; var_c957f6b6++)
	{
		if([[self.var_40c162df[var_7b81749][var_a7133b4a[var_c957f6b6]].var_6bea3018]]())
		{
			if(!isdefined(var_eaf4e195))
			{
				var_eaf4e195 = [];
			}
			else if(!function_6e2770d8(var_eaf4e195))
			{
				var_eaf4e195 = function_84970cc4(var_eaf4e195);
			}
			var_eaf4e195[var_eaf4e195.size] = var_a7133b4a[var_c957f6b6];
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(var_eaf4e195.size, "Dev Block strings are not supported" + var_7b81749 + "Dev Block strings are not supported");
	#/
	return var_eaf4e195;
}

/*
	Name: function_25fc80d0
	Namespace: namespace_2e121905
	Checksum: 0x2C12C584
	Offset: 0x1B10
	Size: 0x15F
	Parameters: 2
	Flags: None
*/
function function_25fc80d0(var_7b81749, var_a7133b4a)
{
	var_1177aea3 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a7133b4a.size; var_c957f6b6++)
	{
		var_1177aea3 = var_1177aea3 + self.var_40c162df[var_7b81749][var_a7133b4a[var_c957f6b6]].var_10fcb680;
		self.var_40c162df[var_7b81749][var_a7133b4a[var_c957f6b6]].var_e60fa78d = var_1177aea3;
	}
	var_475b3075 = function_dc99997a(0, var_1177aea3);
	for(var_a3557c4d = 0; var_a3557c4d < var_a7133b4a.size; var_a3557c4d++)
	{
		if(var_475b3075 < self.var_40c162df[var_7b81749][var_a7133b4a[var_a3557c4d]].var_e60fa78d)
		{
			var_1e336267 = var_a7133b4a[var_a3557c4d];
			break;
		}
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_1e336267), "Dev Block strings are not supported");
	#/
	return var_1e336267;
}

/*
	Name: function_a1b34855
	Namespace: namespace_2e121905
	Checksum: 0xF88D1E0F
	Offset: 0x1C78
	Size: 0x1FF
	Parameters: 5
	Flags: None
*/
function function_a1b34855(var_7b81749, var_d51654a4, var_10fcb680, var_ba703cb1, var_6bea3018)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_7b81749), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_d51654a4), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_10fcb680), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_ba703cb1), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_6bea3018), "Dev Block strings are not supported");
	#/
	if(!isdefined(self.var_40c162df))
	{
		self.var_40c162df = [];
	}
	if(!isdefined(self.var_40c162df[var_7b81749]))
	{
		self.var_40c162df[var_7b81749] = [];
	}
	/#
		namespace_33b293fd::function_a7ee953(!isdefined(self.var_40c162df[var_7b81749][var_d51654a4]), "Dev Block strings are not supported" + var_7b81749 + "Dev Block strings are not supported" + var_d51654a4 + "Dev Block strings are not supported");
	#/
	self.var_40c162df[var_7b81749][var_d51654a4] = function_a8fb77bd();
	self.var_40c162df[var_7b81749][var_d51654a4].var_10fcb680 = var_10fcb680;
	self.var_40c162df[var_7b81749][var_d51654a4].var_ba703cb1 = var_ba703cb1;
	self.var_40c162df[var_7b81749][var_d51654a4].var_6bea3018 = var_6bea3018;
}

/*
	Name: function_4a890e39
	Namespace: namespace_2e121905
	Checksum: 0x3909C21B
	Offset: 0x1E80
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4a890e39()
{
	self endon("hash_128f8789");
	self.var_69d9acb endon("hash_128f8789");
	self namespace_ad23e503::function_d3de6822("moving");
}

/*
	Name: function_bfc2da97
	Namespace: namespace_2e121905
	Checksum: 0x1F7C8F10
	Offset: 0x1EC8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_bfc2da97()
{
	self.var_69d9acb function_c985552d(self.var_69d9acb.var_722885f3, 1, 0);
	self.var_69d9acb function_8642a7fe();
	self namespace_ad23e503::function_9d134160("moving");
}

/*
	Name: function_f3e33440
	Namespace: namespace_2e121905
	Checksum: 0xCFD4C9A2
	Offset: 0x1F40
	Size: 0x23B
	Parameters: 5
	Flags: None
*/
function function_f3e33440(var_3185a0cf, var_188645ca, var_bc1310a, var_96d0393f, var_637636ed)
{
	if(!isdefined(var_bc1310a))
	{
		var_bc1310a = 0;
	}
	if(!isdefined(var_96d0393f))
	{
		var_96d0393f = 0;
	}
	if(!isdefined(var_637636ed))
	{
		var_637636ed = 20;
	}
	self namespace_ad23e503::function_74d6b22f("moving");
	var_e87aa1d8 = self.var_69d9acb function_c985552d(var_3185a0cf, var_188645ca, 1);
	if(var_e87aa1d8)
	{
		if(var_bc1310a)
		{
			self.var_69d9acb function_333fd8f0(10);
		}
		if(var_96d0393f)
		{
			self thread function_b86522b7();
		}
		self thread function_838f37e(var_3185a0cf);
		var_6904cc66 = self.var_69d9acb namespace_82b91a51::function_9fcf3cd8(var_637636ed, "near_goal", "goal", "within_engagement_distance");
		self.var_69d9acb function_ada64136();
		self.var_69d9acb function_8642a7fe();
		function_46f90745();
		if(var_6904cc66 === "timeout")
		{
			function_afbbec46("cTigerTank: send_vehicle_to_position timed out");
		}
		if(var_bc1310a)
		{
			var_b015145a = self.var_69d9acb function_7197c6b8() / 17.6;
			self.var_69d9acb function_333fd8f0(var_b015145a);
		}
		self namespace_ad23e503::function_9d134160("moving");
	}
}

/*
	Name: function_cb234295
	Namespace: namespace_2e121905
	Checksum: 0x15CBE2
	Offset: 0x2188
	Size: 0xEB
	Parameters: 3
	Flags: None
*/
function function_cb234295(var_3185a0cf, var_c1061a76, var_a610eec8)
{
	var_b85e0186 = function_84970cc4("street", "street_0", "street_1", "street_2");
	var_62533f1c = var_b85e0186[self.var_ae796281];
	self.var_889ff800 = function_8f8fb3b0(var_62533f1c, "script_noteworthy");
	/#
		namespace_33b293fd::function_a7ee953(self.var_889ff800.size, "Dev Block strings are not supported");
	#/
	var_bd615cc9 = function_e7bdc1a1(var_3185a0cf, self.var_889ff800);
	return var_bd615cc9;
}

/*
	Name: function_8276f484
	Namespace: namespace_2e121905
	Checksum: 0xAEBC659E
	Offset: 0x2280
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function function_8276f484()
{
	var_4059c9b4 = self.var_69d9acb.var_c8e6ad50;
	self.var_69d9acb waittill("hash_128f8789");
	self.var_bdfe6578 = 1;
	function_ffd53d50();
	if(isdefined(self.var_69d9acb))
	{
		self.var_69d9acb function_921a1574("exp_tiger_death");
		var_42af8d5d = namespace_82b91a51::function_b9fd52a4(var_4059c9b4, self.var_69d9acb.var_722885f3, self.var_69d9acb.var_6ab6f4fd);
		function_beb2c49("", 0, self.var_69d9acb.var_722885f3, self.var_69d9acb.var_f8456b37, "neutral");
		function_da6acfd2(level.var_c1aa5253["fx_exp_quadtank_death_03"], var_42af8d5d, "tag_origin");
		self.var_69d9acb namespace_d84e54db::function_c9e45d52(1);
		self.var_69d9acb namespace_d84e54db::function_b4f5e3b9(1);
		self.var_69d9acb function_50ccee8d();
		function_13eceb32();
		wait(2);
		self.var_69d9acb function_dc8c8404();
		self.var_69d9acb = undefined;
	}
}

/*
	Name: function_490ccf02
	Namespace: namespace_2e121905
	Checksum: 0x22F78B
	Offset: 0x2458
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_490ccf02()
{
	self endon("hash_128f8789");
	self.var_69d9acb endon("hash_128f8789");
	self.var_b9d89d33 waittill("hash_128f8789");
	function_4568faa9();
}

/*
	Name: function_b86522b7
	Namespace: namespace_2e121905
	Checksum: 0x9D787C2D
	Offset: 0x24A8
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_b86522b7()
{
	self endon("hash_128f8789");
	self endon("hash_45d0a8c9");
	self.var_69d9acb endon("hash_128f8789");
	self.var_69d9acb endon("hash_41d1aaf0");
	self.var_69d9acb endon("hash_48a3d97f");
	while(function_7d15e2f8(self.var_69d9acb.var_722885f3, self.var_88164886.var_722885f3) > 900)
	{
		wait(0.25);
	}
	function_afbbec46("cTigerTank: notify - within_engagement_distance");
	self.var_69d9acb notify("hash_97ae96d8");
}

/*
	Name: function_19468c8d
	Namespace: namespace_2e121905
	Checksum: 0xBBFD95C3
	Offset: 0x2570
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_19468c8d()
{
	return 1;
}

/*
	Name: function_96d1a6
	Namespace: namespace_2e121905
	Checksum: 0xF1757C69
	Offset: 0x2580
	Size: 0x5
	Parameters: 0
	Flags: None
*/
function function_96d1a6()
{
	return 0;
}

/*
	Name: function_ffde4e7f
	Namespace: namespace_2e121905
	Checksum: 0x2504DA3E
	Offset: 0x2590
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_ffde4e7f()
{
	var_4b6f7753 = function_84970cc4("street_0_retreat", "street_1_retreat", "street_2_retreat");
	var_62533f1c = var_4b6f7753[self.var_ae796281];
	self.var_889ff800 = function_8f8fb3b0(var_62533f1c, "script_noteworthy");
	var_9de10fe3 = function_f270b41d(self.var_69d9acb.var_722885f3, self.var_889ff800);
	self.var_ae796281++;
	if(self.var_ae796281 == 1)
	{
		level notify("hash_6ee94cb6");
	}
	return var_9de10fe3;
}

/*
	Name: function_c9318f4b
	Namespace: namespace_2e121905
	Checksum: 0x8D86AEE7
	Offset: 0x2670
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_c9318f4b()
{
	var_4b6f7753 = function_84970cc4("street", "street_0", "street_1", "street_2");
	var_62533f1c = var_4b6f7753[self.var_ae796281];
	self.var_889ff800 = function_8f8fb3b0(var_62533f1c, "script_noteworthy");
	for(var_e7bee84c = function_26299103(self.var_889ff800.size); var_e7bee84c == self.var_b78b4a49;  = function_26299103(self.var_889ff800.size))
	{
	}
	self.var_b78b4a49 = var_e7bee84c;
	var_9de10fe3 = self.var_889ff800[var_e7bee84c];
	return var_9de10fe3;
}

/*
	Name: function_1138db74
	Namespace: namespace_2e121905
	Checksum: 0x9C9F7049
	Offset: 0x2780
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_1138db74()
{
	if(self.var_ae796281 < 2)
	{
		var_cc296c01 = GetTime();
		if(isdefined(self.var_b47d057e))
		{
			var_19d53efd = var_cc296c01 - self.var_b47d057e * 0.001;
			if(var_19d53efd < 5)
			{
				var_f5742a3c = 1;
			}
			else
			{
				var_f5742a3c = 0;
			}
		}
		else
		{
			var_f5742a3c = 0;
		}
		var_46b3a714 = function_67d093da() < 0.7;
		var_59e2529 = isdefined(self.var_d7b7066f) && var_cc296c01 - self.var_d7b7066f * 0.001 < 5;
		var_d868c8e5 = var_f5742a3c && var_46b3a714 && !var_59e2529;
		return var_d868c8e5;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_67d093da
	Namespace: namespace_2e121905
	Checksum: 0xA6BCBADE
	Offset: 0x28B0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_67d093da()
{
	return self.var_69d9acb.var_3a90f16b / self.var_69d9acb.var_38a62b0e;
}

/*
	Name: function_afbbec46
	Namespace: namespace_2e121905
	Checksum: 0xF2858F01
	Offset: 0x28E0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_afbbec46(var_fdbe8054)
{
	/#
		if(function_4bd0142f("Dev Block strings are not supported", 0))
		{
			function_2e4b8c78(var_fdbe8054);
		}
	#/
}

/*
	Name: function_4ea63f4f
	Namespace: namespace_2e121905
	Checksum: 0x4804B285
	Offset: 0x2930
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_4ea63f4f()
{
	self endon("hash_128f8789");
	self.var_69d9acb endon("hash_128f8789");
	while(1)
	{
		if(function_4bd0142f("debug_tiger_tank", 0))
		{
			function_8ad17378("STATE: " + self.var_a3ea1738, 0, 2);
			function_8ad17378("FIRING: " + self namespace_ad23e503::function_7922262b("firing"), 1, 2);
			function_8ad17378("MOVING: " + self namespace_ad23e503::function_7922262b("moving"), 2, 2);
		}
		wait(0.1);
	}
}

/*
	Name: function_7c974479
	Namespace: namespace_2e121905
	Checksum: 0x3951F061
	Offset: 0x2A40
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_7c974479(var_3185a0cf)
{
	var_489b2980 = self.var_69d9acb function_d48f2ab3("tag_barrel");
	var_63b1558e = function_7178c13c(var_489b2980, var_3185a0cf, 0, self.var_69d9acb);
	return var_63b1558e;
}

/*
	Name: function_8ad17378
	Namespace: namespace_2e121905
	Checksum: 0xA0DEA403
	Offset: 0x2AB8
	Size: 0x9B
	Parameters: 3
	Flags: None
*/
function function_8ad17378(var_fdbe8054, var_8dc519f1, var_f05509e4)
{
	var_27c4935 = VectorScale((0, 0, 1), 120) + (0, 0, var_8dc519f1 * 25);
	/#
		function_8f3e0f73(self.var_69d9acb.var_722885f3 + var_27c4935, var_fdbe8054, (1, 1, 1), 1, 1.5, var_f05509e4);
	#/
}

/*
	Name: function_302aef1c
	Namespace: namespace_2e121905
	Checksum: 0xBCE26EEC
	Offset: 0x2B60
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_302aef1c()
{
	/#
		if(function_4bd0142f("Dev Block strings are not supported", 0) > 1)
		{
			function_dd31229f();
		}
	#/
}

/*
	Name: function_838f37e
	Namespace: namespace_2e121905
	Checksum: 0x3A0D65F0
	Offset: 0x2BA8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_838f37e(var_2188bf75)
{
	self endon("hash_128f8789");
	self endon("hash_46f90745");
	/#
		while(1)
		{
			function_d677fbba(var_2188bf75, "Dev Block strings are not supported", (1, 1, 1), 1);
			wait(0.05);
		}
	#/
}

/*
	Name: function_46f90745
	Namespace: namespace_2e121905
	Checksum: 0xA1F98BA7
	Offset: 0x2C18
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_46f90745()
{
	/#
		self notify("hash_46f90745");
	#/
}

/*
	Name: function_d677fbba
	Namespace: namespace_2e121905
	Checksum: 0x1F95467E
	Offset: 0x2C38
	Size: 0xB3
	Parameters: 4
	Flags: None
*/
function function_d677fbba(var_2188bf75, var_fdbe8054, var_431bc2a9, var_f05509e4)
{
	/#
		if(function_4bd0142f("Dev Block strings are not supported", 0))
		{
			function_617f6eba(var_2188bf75, var_f05509e4, var_431bc2a9);
			function_8f3e0f73(var_2188bf75 + VectorScale((0, 0, 1), 40), var_fdbe8054, var_431bc2a9, 1, 1.5, var_f05509e4);
		}
	#/
}

/*
	Name: function_af655b16
	Namespace: namespace_2e121905
	Checksum: 0x684836BD
	Offset: 0x2CF8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_af655b16()
{
	self.var_a1f56f1f = 0;
}

/*
	Name: function_4568faa9
	Namespace: namespace_2e121905
	Checksum: 0x57DAA559
	Offset: 0x2D10
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4568faa9()
{
	self.var_69d9acb namespace_37b990db::function_54bdb053(1);
	self.var_69d9acb notify("turret_disabled" + 1);
}

/*
	Name: function_8360af05
	Namespace: namespace_2e121905
	Checksum: 0xB14F5D7A
	Offset: 0x2D58
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_8360af05()
{
	var_c83adace = function_276b5af0();
	if(isdefined(self.var_88164886))
	{
		function_81403b2f(var_c83adace, self.var_88164886);
	}
	if(var_c83adace.size > 0)
	{
		var_221cf570 = function_f926d8e8(var_c83adace, self.var_69d9acb.var_722885f3, 1)[0];
	}
	else
	{
		var_221cf570 = self.var_88164886;
	}
	return var_221cf570;
}

#namespace namespace_8a035955;

/*
	Name: function_2e121905
	Namespace: namespace_8a035955
	Checksum: 0x3E604E78
	Offset: 0x2E08
	Size: 0xA15
	Parameters: 0
	Flags: 6
*/
function private autoexec function_2e121905()
{
	classes.var_2e121905[0] = function_a8fb77bd();
	classes.var_2e121905[0].var_b684a6d1[-2090815739] = &namespace_2e121905::function_8360af05;
	classes.var_2e121905[0].var_b684a6d1[1164507817] = &namespace_2e121905::function_4568faa9;
	classes.var_2e121905[0].var_b684a6d1[-1352312042] = &namespace_2e121905::function_af655b16;
	classes.var_2e121905[0].var_b684a6d1[-696779846] = &namespace_2e121905::function_d677fbba;
	classes.var_2e121905[0].var_b684a6d1[1190725445] = &namespace_2e121905::function_46f90745;
	classes.var_2e121905[0].var_b684a6d1[137950078] = &namespace_2e121905::function_838f37e;
	classes.var_2e121905[0].var_b684a6d1[808120092] = &namespace_2e121905::function_302aef1c;
	classes.var_2e121905[0].var_b684a6d1[-1965984904] = &namespace_2e121905::function_8ad17378;
	classes.var_2e121905[0].var_b684a6d1[2090288249] = &namespace_2e121905::function_7c974479;
	classes.var_2e121905[0].var_b684a6d1[1319518031] = &namespace_2e121905::function_4ea63f4f;
	classes.var_2e121905[0].var_b684a6d1[-1346638778] = &namespace_2e121905::function_afbbec46;
	classes.var_2e121905[0].var_b684a6d1[1741722586] = &namespace_2e121905::function_67d093da;
	classes.var_2e121905[0].var_b684a6d1[288938868] = &namespace_2e121905::function_1138db74;
	classes.var_2e121905[0].var_b684a6d1[-919498933] = &namespace_2e121905::function_c9318f4b;
	classes.var_2e121905[0].var_b684a6d1[-2208129] = &namespace_2e121905::function_ffde4e7f;
	classes.var_2e121905[0].var_b684a6d1[9884070] = &namespace_2e121905::function_96d1a6;
	classes.var_2e121905[0].var_b684a6d1[424053901] = &namespace_2e121905::function_19468c8d;
	classes.var_2e121905[0].var_b684a6d1[-1201331529] = &namespace_2e121905::function_b86522b7;
	classes.var_2e121905[0].var_b684a6d1[1225576194] = &namespace_2e121905::function_490ccf02;
	classes.var_2e121905[0].var_b684a6d1[-2106133372] = &namespace_2e121905::function_8276f484;
	classes.var_2e121905[0].var_b684a6d1[-886881643] = &namespace_2e121905::function_cb234295;
	classes.var_2e121905[0].var_b684a6d1[-203213760] = &namespace_2e121905::function_f3e33440;
	classes.var_2e121905[0].var_b684a6d1[-1077749097] = &namespace_2e121905::function_bfc2da97;
	classes.var_2e121905[0].var_b684a6d1[1250496057] = &namespace_2e121905::function_4a890e39;
	classes.var_2e121905[0].var_b684a6d1[-1582086059] = &namespace_2e121905::function_a1b34855;
	classes.var_2e121905[0].var_b684a6d1[637305040] = &namespace_2e121905::function_25fc80d0;
	classes.var_2e121905[0].var_b684a6d1[-467021864] = &namespace_2e121905::function_e429cfd8;
	classes.var_2e121905[0].var_b684a6d1[-2097216652] = &namespace_2e121905::function_82ff0374;
	classes.var_2e121905[0].var_b684a6d1[661347056] = &namespace_2e121905::function_276b5af0;
	classes.var_2e121905[0].var_b684a6d1[1890596745] = &namespace_2e121905::function_70b03789;
	classes.var_2e121905[0].var_b684a6d1[501775224] = &namespace_2e121905::function_1de87b78;
	classes.var_2e121905[0].var_b684a6d1[270217784] = &namespace_2e121905::function_101b3238;
	classes.var_2e121905[0].var_b684a6d1[-821255260] = &namespace_2e121905::function_cf0ca3a4;
	classes.var_2e121905[0].var_b684a6d1[140828309] = &namespace_2e121905::function_864de95;
	classes.var_2e121905[0].var_b684a6d1[2038278241] = &namespace_2e121905::function_797da861;
	classes.var_2e121905[0].var_b684a6d1[-1337402292] = &namespace_2e121905::function_b048dc4c;
	classes.var_2e121905[0].var_b684a6d1[2038043903] = &namespace_2e121905::function_797a14ff;
	classes.var_2e121905[0].var_b684a6d1[1254130921] = &namespace_2e121905::function_4ac084e9;
	classes.var_2e121905[0].var_b684a6d1[-1254843006] = &namespace_2e121905::function_b5349d82;
	classes.var_2e121905[0].var_b684a6d1[814915613] = &namespace_2e121905::function_3092a01d;
	classes.var_2e121905[0].var_b684a6d1[-888482174] = &namespace_2e121905::function_cb0ad682;
	classes.var_2e121905[0].var_b684a6d1[-602746231] = &namespace_2e121905::function_dc12d289;
	classes.var_2e121905[0].var_b684a6d1[973480850] = &namespace_2e121905::function_3a062392;
	classes.var_2e121905[0].var_b684a6d1[880660561] = &namespace_2e121905::function_347dd051;
	classes.var_2e121905[0].var_b684a6d1[813371769] = &namespace_2e121905::function_307b1179;
	classes.var_2e121905[0].var_b684a6d1[334293810] = &namespace_2e121905::function_13eceb32;
	classes.var_2e121905[0].var_b684a6d1[-2802352] = &namespace_2e121905::function_ffd53d50;
	classes.var_2e121905[0].var_b684a6d1[-830236346] = &namespace_2e121905::function_ce839946;
	classes.var_2e121905[0].var_b684a6d1[222459047] = &namespace_2e121905::function_d4274a7;
	classes.var_2e121905[0].var_b684a6d1[-134975103] = &namespace_2e121905::function_f7f47181;
	classes.var_2e121905[0].var_b684a6d1[21442911] = &namespace_2e121905::function_147315f;
	classes.var_2e121905[0].var_b684a6d1[1606033458] = &namespace_2e121905::function_5fba2032;
	classes.var_2e121905[0].var_b684a6d1[-1690805083] = &namespace_2e121905::function_9b385ca5;
}

