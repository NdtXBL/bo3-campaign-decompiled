#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_behavior;
#using scripts\shared\stealth_debug;
#using scripts\shared\stealth_event;
#using scripts\shared\stealth_level;
#using scripts\shared\stealth_player;
#using scripts\shared\stealth_vo;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_80045451;

/*
	Name: function_c35e6aab
	Namespace: namespace_80045451
	Checksum: 0x6F2FE7F1
	Offset: 0x318
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_ad06727a));
	#/
	self.var_ad06727a.var_d1b49f30 = [];
	self.var_ad06727a.var_c49c37ed = [];
	self.var_ad06727a.var_7a604d90 = [];
	/#
		self.var_ad06727a.var_1d4ba64b = [];
	#/
	self function_a2429809("unaware");
	self thread function_a85b6c52();
}

/*
	Name: function_b55533bc
	Namespace: namespace_80045451
	Checksum: 0x98439DB6
	Offset: 0x3D0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_d1b49f30);
}

/*
	Name: function_a2429809
	Namespace: namespace_80045451
	Checksum: 0x6FC52195
	Offset: 0x3F8
	Size: 0x48B
	Parameters: 1
	Flags: None
*/
function function_a2429809(var_12131b3c)
{
	/#
		namespace_33b293fd::function_a7ee953(self function_b55533bc());
	#/
	var_b3c4b275 = self.var_730c572d;
	if(!isdefined(var_b3c4b275))
	{
		var_b3c4b275 = "unaware";
	}
	if(isdefined(self.var_730c572d) && self.var_730c572d != var_12131b3c)
	{
		self.var_b50edc61 = self.var_730c572d;
	}
	self.var_730c572d = var_12131b3c;
	var_1d811e47 = self.var_730c572d != "combat";
	var_b5d0b83e = namespace_ad45a419::function_b3269823(var_12131b3c);
	self.var_a1f56f1f = var_b5d0b83e.var_a1f56f1f;
	self.var_304f0f57 = var_b5d0b83e.var_304f0f57;
	self.var_24eff8a4 = var_b5d0b83e.var_24eff8a4;
	self.var_2a373326 = self.var_24eff8a4 * self.var_24eff8a4;
	self.var_801fa77c = var_1d811e47;
	self function_a10368f2(self.var_730c572d, var_1d811e47);
	if(isdefined(self.var_f2090578) && self.var_f2090578)
	{
		self.var_ad06727a.var_86030901 = 1;
	}
	else if(!isdefined(self.var_ad06727a.var_86030901) && self.var_ad06727a.var_86030901 && !isdefined(self.var_ad06727a.var_b463484b) && self.var_730c572d != "unaware")
	{
		self.var_ad06727a.var_b463484b = self.var_722885f3;
	}
	switch(self.var_730c572d)
	{
		case "high_alert":
		case "low_alert":
		case "unaware":
		{
			self function_216be1d1(1);
			break;
		}
	}
	if(var_12131b3c == "unaware")
	{
		self.var_ad06727a.var_d1b49f30 = [];
		self.var_ad06727a.var_c49c37ed = [];
		self.var_ad06727a.var_7a604d90 = [];
		self function_2d2d31b6(self.var_722885f3, -1);
		if(function_8d0347b8(self))
		{
			self function_c15140d4();
		}
		self.var_b50edc61 = "unaware";
		if(isdefined(self.var_ad06727a.var_86030901) && self.var_ad06727a.var_86030901 && isdefined(self.var_4fea9189))
		{
			self thread namespace_d84e54db::function_99e190ff(self.var_4fea9189);
		}
		else if(isdefined(self.var_ad06727a.var_b463484b))
		{
			if(function_8d0347b8(self))
			{
				self thread namespace_7829c86f::function_edba2e78(self.var_ad06727a.var_b463484b);
			}
			self.var_ad06727a.var_b463484b = undefined;
		}
	}
	if(self namespace_d84e54db::function_18775385("stealth"))
	{
		self namespace_d84e54db::function_ceb883cd("stealth", var_1d811e47);
	}
	if(self namespace_d84e54db::function_18775385("disablearrivals"))
	{
		self namespace_d84e54db::function_ceb883cd("disablearrivals", var_1d811e47);
	}
	if(self namespace_234a4910::function_b55533bc())
	{
		self namespace_234a4910::function_e6000f47(var_1d811e47);
	}
	if(var_b3c4b275 != var_12131b3c)
	{
		self notify("hash_8363b8e0", var_12131b3c);
	}
	if(var_1d811e47)
	{
		self.var_ad06727a.var_d1b49f30 = [];
	}
}

/*
	Name: function_739525d
	Namespace: namespace_80045451
	Checksum: 0xA0B90120
	Offset: 0x890
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_739525d()
{
	return self.var_730c572d;
}

/*
	Name: function_e5e8ce80
	Namespace: namespace_80045451
	Checksum: 0xA8F6D3FE
	Offset: 0x8A8
	Size: 0x35
	Parameters: 1
	Flags: None
*/
function function_e5e8ce80(var_aa10fce8)
{
	return isdefined(self.var_ad06727a.var_c49c37ed[var_aa10fce8 function_c7f3ce11()]);
}

/*
	Name: function_c82b617b
	Namespace: namespace_80045451
	Checksum: 0xD97730BA
	Offset: 0x8E8
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_c82b617b(var_f1646c95)
{
	/#
		namespace_33b293fd::function_a7ee953(self function_b55533bc());
	#/
	var_f93ad764 = self.var_730c572d;
	var_83d91027 = function_69c2f683(var_f1646c95);
	if(var_83d91027 > 1)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_83d91027; var_c957f6b6++)
		{
			if(var_f1646c95 > 0)
			{
				function_c82b617b(1);
				continue;
			}
			function_c82b617b(-1);
		}
		return var_f93ad764 != self.var_730c572d;
	}
	if(var_f1646c95 > 0)
	{
		switch(self.var_730c572d)
		{
			case "low_alert":
			case "unaware":
			{
				self function_a2429809("high_alert");
				break;
			}
			case "high_alert":
			{
				self function_a2429809("combat");
				break;
			}
		}
		break;
	}
	switch(self.var_730c572d)
	{
		case "high_alert":
		case "low_alert":
		{
			self function_a2429809("unaware");
			break;
		}
		case "combat":
		{
			self function_a2429809("high_alert");
			break;
		}
	}
	return var_f93ad764 != self.var_730c572d;
}

/*
	Name: function_216be1d1
	Namespace: namespace_80045451
	Checksum: 0xF71AC81A
	Offset: 0xAD0
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_216be1d1(var_2bafb34f)
{
	/#
		namespace_33b293fd::function_a7ee953(self function_b55533bc());
	#/
	foreach(var_6050ab17 in level.var_ad06727a.var_657b1773[self.var_3e94206a])
	{
		if(!isdefined(var_6050ab17))
		{
			continue;
		}
		self function_c62ada65(var_6050ab17, var_2bafb34f);
	}
}

/*
	Name: function_c62ada65
	Namespace: namespace_80045451
	Checksum: 0xE2AED551
	Offset: 0xBC0
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_c62ada65(var_af98935f, var_2bafb34f)
{
	/#
		namespace_33b293fd::function_a7ee953(self function_b55533bc());
	#/
	if(function_5cfb84bb(self) && function_5cfb84bb(var_af98935f))
	{
		self function_76aa5b30(var_af98935f, var_2bafb34f);
	}
	/#
		if(var_2bafb34f)
		{
			self.var_ad06727a.var_1d4ba64b[var_af98935f function_c7f3ce11()] = var_af98935f;
		}
		else
		{
			self.var_ad06727a.var_1d4ba64b[var_af98935f function_c7f3ce11()] = undefined;
		}
	#/
}

/*
	Name: function_ca6a0809
	Namespace: namespace_80045451
	Checksum: 0x2B0B1D2E
	Offset: 0xCC0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_ca6a0809(var_904f1fb9)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_eefd8747 = var_904f1fb9.var_b5d0b83e[0];
	self notify("hash_234a4910", "alert");
	if(function_65f192a6(var_eefd8747))
	{
		var_eefd8747 namespace_10443be6::function_ca6a0809(self);
	}
}

/*
	Name: function_617b90af
	Namespace: namespace_80045451
	Checksum: 0xD5F98E8A
	Offset: 0xD50
	Size: 0x2CD
	Parameters: 1
	Flags: None
*/
function function_617b90af(var_904f1fb9)
{
	var_eefd8747 = var_904f1fb9.var_b5d0b83e[0];
	if(!isdefined(var_eefd8747))
	{
		return;
	}
	var_5ce50f3e = "";
	var_1f6ae92b = "unaware";
	var_fc08c604 = self function_739525d();
	var_f51f605d = var_eefd8747 function_c7f3ce11();
	if(self namespace_ad06727a::function_2cfe5148(var_eefd8747) && function_5b49d38c(var_eefd8747))
	{
		var_1f6ae92b = "combat";
		/#
			var_5ce50f3e = "Dev Block strings are not supported";
		#/
	}
	else if(var_eefd8747 function_b55533bc() && var_eefd8747 function_739525d() == "combat")
	{
		var_1f6ae92b = "high_alert";
		/#
			var_5ce50f3e = "Dev Block strings are not supported";
		#/
	}
	var_edfa68f2 = 0;
	if(namespace_ad06727a::function_b889e36b(var_fc08c604, var_1f6ae92b) < 0)
	{
		var_edfa68f2 = self function_c82b617b(1);
	}
	if(var_edfa68f2 || !isdefined(self.var_ad06727a.var_c49c37ed[var_f51f605d]) || !isdefined(self.var_ad06727a.var_7a604d90[var_f51f605d]))
	{
		var_fc08c604 = self function_739525d();
		self notify("hash_78a7a5b9", var_fc08c604, var_eefd8747.var_722885f3 + VectorScale((0, 0, 1), 20), var_eefd8747, var_5ce50f3e);
		if(var_edfa68f2 && var_fc08c604 != "combat" && function_5cfb84bb(var_eefd8747))
		{
			self function_fcc2e3c6(var_eefd8747, 0);
		}
	}
	if(isdefined(var_eefd8747) && self namespace_ad06727a::function_2cfe5148(var_eefd8747))
	{
		self.var_ad06727a.var_c49c37ed[var_f51f605d] = var_eefd8747;
		self.var_ad06727a.var_7a604d90[var_f51f605d] = var_eefd8747;
	}
}

/*
	Name: function_85b3a352
	Namespace: namespace_80045451
	Checksum: 0xEA238E8B
	Offset: 0x1028
	Size: 0x2FD
	Parameters: 1
	Flags: None
*/
function function_85b3a352(var_904f1fb9)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	if(function_4bd0142f("stealth_no_return") && self function_739525d() == "combat")
	{
		return;
	}
	var_eefd8747 = var_904f1fb9.var_b5d0b83e[0];
	var_7febec6d = "on_sight_end";
	if(isdefined(var_eefd8747))
	{
		var_7febec6d = var_7febec6d + "_" + var_eefd8747 function_c7f3ce11();
	}
	self notify(var_7febec6d);
	self endon(var_7febec6d);
	var_5400af02 = namespace_ad06727a::function_b889e36b(self function_739525d(), "unaware");
	if(isdefined(self.var_ad06727a.var_36b1815f) && (self.var_ad06727a.var_36b1815f != "infinite" || var_5400af02 == 1))
	{
		self waittill("hash_2481442d");
	}
	var_15e1f3df = 0;
	foreach(var_6050ab17 in self.var_ad06727a.var_c49c37ed)
	{
		if(!isdefined(var_6050ab17))
		{
			continue;
		}
		if(!function_5cfb84bb(var_6050ab17))
		{
			continue;
		}
		var_15e1f3df = function_aaeec8c5(var_15e1f3df, self function_99ada8a(var_6050ab17));
	}
	if(var_15e1f3df <= 0 && self function_c82b617b(-1))
	{
		if(self function_739525d() != "unaware")
		{
			if(isdefined(var_eefd8747))
			{
				if(function_5cfb84bb(var_eefd8747))
				{
					self function_fcc2e3c6(var_eefd8747, 1);
				}
			}
			else
			{
				self notify("hash_db5b33a6", self.var_722885f3, undefined, "quick");
			}
		}
	}
}

/*
	Name: function_6c10e440
	Namespace: namespace_80045451
	Checksum: 0x43368798
	Offset: 0x1330
	Size: 0x633
	Parameters: 1
	Flags: None
*/
function function_6c10e440(var_904f1fb9)
{
	var_effa6151 = self function_d03e7614();
	var_b71ed4a2 = var_effa6151;
	var_eefd8747 = self function_637b5398();
	var_da89d1ee = self function_3e69af2d();
	var_f50690e8 = self function_5a7c780b();
	var_d3a202ad = var_904f1fb9.var_b5d0b83e[0];
	if(isdefined(var_f50690e8) && var_f50690e8 == "grenade_ping")
	{
		var_d3a202ad = "combat";
	}
	if(var_d3a202ad == "low_alert")
	{
		var_d3a202ad = "high_alert";
	}
	if(isdefined(var_904f1fb9.var_b5d0b83e[1]))
	{
		var_b71ed4a2 = var_904f1fb9.var_b5d0b83e[1];
	}
	if(isdefined(var_904f1fb9.var_b5d0b83e[2]))
	{
		var_eefd8747 = var_904f1fb9.var_b5d0b83e[2];
	}
	if(namespace_ad06727a::function_b889e36b(var_d3a202ad, self function_739525d()) >= 0)
	{
		if(isdefined(var_b71ed4a2))
		{
			if(!isdefined(var_effa6151) || function_cb3d1c9b(var_b71ed4a2, var_effa6151) > 0.1)
			{
				var_8fcd11ab = var_b71ed4a2 - self.var_722885f3;
				var_9d3fe635 = function_bdcdc423(var_8fcd11ab);
				self.var_5ded47f6 = function_64dbcbf2(self.var_6ab6f4fd[1] - var_9d3fe635[1]);
			}
			if(function_8d0347b8(self))
			{
				if(var_d3a202ad == "combat" && isdefined(var_eefd8747))
				{
					self thread function_20519577(var_eefd8747, 0.5);
				}
				else
				{
					self thread function_20519577(var_b71ed4a2, 0.5);
				}
			}
		}
		/#
			var_5ce50f3e = self function_5a7c780b() + self function_df5e5cfb();
			if(!isdefined(var_5ce50f3e) || var_5ce50f3e == "Dev Block strings are not supported")
			{
				var_5ce50f3e = "Dev Block strings are not supported";
			}
			if(isdefined(var_eefd8747) && function_b00aaea1(var_eefd8747))
			{
				var_5ce50f3e = "Dev Block strings are not supported";
			}
			if(var_904f1fb9.var_b5d0b83e.size > 1)
			{
				var_5ce50f3e = var_904f1fb9.var_b5d0b83e[var_904f1fb9.var_b5d0b83e.size - 1];
			}
			if(isdefined(var_5ce50f3e) && function_2477ac2(var_5ce50f3e))
			{
				self.var_ad06727a.var_6926a825 = var_5ce50f3e;
			}
		#/
		if(var_f50690e8 == "explosion")
		{
			self notify("hash_234a4910", "explosion");
		}
		else if(isdefined(var_eefd8747) && function_b00aaea1(var_eefd8747))
		{
			self notify("hash_234a4910", "corpse");
		}
		self function_a2429809(var_d3a202ad);
		switch(var_d3a202ad)
		{
			case "high_alert":
			case "low_alert":
			{
				self notify("hash_db5b33a6", var_b71ed4a2, var_eefd8747);
				break;
			}
		}
		if(isdefined(var_da89d1ee) && isdefined(var_eefd8747) && function_b00aaea1(var_eefd8747))
		{
			self thread function_e7cf1d24(8, var_da89d1ee);
		}
		if(function_65f192a6(var_eefd8747) && var_d3a202ad == "combat" && level.var_ad06727a.var_e7ad9c1f == 0)
		{
			if(isdefined(self.var_578b3075) && self.var_578b3075)
			{
				var_eefd8747 namespace_234a4910::function_e3ae87b3("spotted_sniper", self, 2);
			}
			else if(function_85e4c3b3(self))
			{
				var_eefd8747 namespace_234a4910::function_e3ae87b3("spotted_drone", self, 2);
			}
			else
			{
				var_eefd8747 namespace_234a4910::function_e3ae87b3("spotted", self, 2);
			}
		}
	}
	if(isdefined(var_eefd8747) && self namespace_ad06727a::function_2cfe5148(var_eefd8747))
	{
		self.var_ad06727a.var_c49c37ed[var_eefd8747 function_c7f3ce11()] = var_eefd8747;
		if(var_d3a202ad == "combat")
		{
			self function_bc0ce0bf(var_eefd8747);
		}
	}
}

/*
	Name: function_101ac5
	Namespace: namespace_80045451
	Checksum: 0xD0A7D45E
	Offset: 0x1970
	Size: 0x9D
	Parameters: 1
	Flags: None
*/
function function_101ac5(var_904f1fb9)
{
	var_eefd8747 = var_904f1fb9.var_b5d0b83e[0];
	if(!function_fd096044(var_eefd8747))
	{
		return;
	}
	if(namespace_ad06727a::function_b889e36b(self.var_730c572d, self.var_b50edc61) > 0)
	{
		self notify("hash_78a7a5b9", "combat", var_eefd8747.var_722885f3, var_eefd8747, "close_combat");
	}
}

/*
	Name: function_933965f6
	Namespace: namespace_80045451
	Checksum: 0x4F3F1EC8
	Offset: 0x1A18
	Size: 0x243
	Parameters: 1
	Flags: None
*/
function function_933965f6(var_904f1fb9)
{
	var_eefd8747 = var_904f1fb9.var_b5d0b83e[0];
	var_62bc230d = var_904f1fb9.var_b5d0b83e[1];
	if(self.var_730c572d != "unaware")
	{
		return;
	}
	if(!function_fd096044(var_eefd8747))
	{
		return;
	}
	if(!function_fd096044(var_62bc230d))
	{
		return;
	}
	if(namespace_ad06727a::function_b889e36b(self.var_730c572d, self.var_b50edc61) > 0)
	{
		if(isdefined(self.var_ad06727a.var_c9b747e1) && GetTime() - self.var_ad06727a.var_c9b747e1 < 30000)
		{
			return;
		}
		var_ae11119e = var_62bc230d function_104af502();
		var_f1646c95 = var_ae11119e - var_62bc230d.var_722885f3;
		if(function_f781860c(var_f1646c95) > 250000)
		{
			var_fbbdb5f6 = var_62bc230d.var_722885f3 + function_f679a325(var_f1646c95) * 500;
			var_8fcd11ab = var_62bc230d.var_722885f3 - self.var_722885f3;
			var_9d3fe635 = function_bdcdc423(var_8fcd11ab);
			self.var_5ded47f6 = function_64dbcbf2(self.var_6ab6f4fd[1] - var_9d3fe635[1]);
			self notify("hash_db5b33a6", var_fbbdb5f6, var_eefd8747, "quick");
			self.var_ad06727a.var_c9b747e1 = GetTime();
		}
	}
}

/*
	Name: function_ec265d65
	Namespace: namespace_80045451
	Checksum: 0xA69F4BFB
	Offset: 0x1C68
	Size: 0x1C1
	Parameters: 4
	Flags: None
*/
function function_ec265d65(var_c5deafa2, var_d3a202ad, var_b71ed4a2, var_eefd8747)
{
	var_c5deafa2 = function_c20c2e8(var_c5deafa2, "script_aigroup");
	var_b453c865 = function_4bd0142f("stealth_group_radius", 1000);
	var_b453c865 = var_b453c865 * var_b453c865;
	foreach(var_6b45b25e in var_c5deafa2)
	{
		if(var_6b45b25e == self)
		{
			continue;
		}
		if(!function_5b49d38c(var_6b45b25e))
		{
			continue;
		}
		if(function_cb3d1c9b(var_6b45b25e.var_722885f3, self.var_722885f3) > var_b453c865)
		{
			continue;
		}
		if(namespace_ad06727a::function_b889e36b(var_d3a202ad, var_6b45b25e function_739525d()) <= 0)
		{
			continue;
		}
		var_6b45b25e namespace_82b91a51::function_6729b6ba(function_72a94f05(0.33, 0.66), "alert", undefined, var_d3a202ad, var_b71ed4a2, var_eefd8747);
	}
}

/*
	Name: function_20519577
	Namespace: namespace_80045451
	Checksum: 0xB0E20E5E
	Offset: 0x1E38
	Size: 0x25D
	Parameters: 2
	Flags: None
*/
function function_20519577(var_a3a6b513, var_67520c6a)
{
	self notify("hash_20519577");
	self endon("hash_20519577");
	var_a3d46ee4 = var_a3a6b513;
	if(!function_fd096044(var_a3a6b513))
	{
		if(!isdefined(self.var_4e7892f5))
		{
			self.var_4e7892f5 = function_9b7fda5e("script_model", var_a3a6b513);
		}
		var_a3d46ee4 = self.var_4e7892f5;
	}
	else if(isdefined(self.var_4e7892f5))
	{
		self.var_4e7892f5 function_dc8c8404();
		self.var_4e7892f5 = undefined;
	}
	var_a4ad846c = GetTime();
	var_fd3f3d1a = var_67520c6a * 1000;
	wait(0.2);
	while(function_5b49d38c(self) && (isdefined(self.var_eddc2d46) && self.var_eddc2d46))
	{
		if(GetTime() - var_a4ad846c >= var_fd3f3d1a)
		{
			self function_873ad9f2(var_a3d46ee4);
			/#
				if(namespace_e449108e::function_b55533bc())
				{
					function_4e418837(self function_501eb072(), var_a3d46ee4.var_722885f3 + VectorScale((0, 0, 1), 20), (0, 0, 1), 1, 1, 1);
					function_617f6eba(var_a3d46ee4.var_722885f3 + VectorScale((0, 0, 1), 20), 1, (0, 0, 1));
				}
			#/
		}
		wait(0.05);
	}
	if(isdefined(self))
	{
		self function_873ad9f2();
		if(isdefined(self.var_4e7892f5))
		{
			self.var_4e7892f5 function_dc8c8404();
			self.var_4e7892f5 = undefined;
		}
	}
}

/*
	Name: function_e7cf1d24
	Namespace: namespace_80045451
	Checksum: 0xA0E34AB3
	Offset: 0x20A0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_e7cf1d24(var_67520c6a, var_3d29746)
{
	self endon("hash_128f8789");
	wait(var_67520c6a);
	self function_48513d6a(var_3d29746);
}

/*
	Name: function_a7964595
	Namespace: namespace_80045451
	Checksum: 0xB38445BA
	Offset: 0x20E8
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_a7964595(var_904f1fb9)
{
	self endon("hash_128f8789");
	var_677b3e78 = var_904f1fb9.var_b5d0b83e[0];
	var_5ce50f3e = var_904f1fb9.var_b5d0b83e[1];
	if(isdefined(var_677b3e78))
	{
		if(namespace_ad06727a::function_b889e36b(self function_739525d(), "high_alert") < 0)
		{
			self notify("hash_78a7a5b9", "high_alert", var_677b3e78.var_722885f3, var_677b3e78, var_5ce50f3e);
		}
	}
}

/*
	Name: function_a0693e3b
	Namespace: namespace_80045451
	Checksum: 0x67F34230
	Offset: 0x21B0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_a0693e3b(var_677b3e78)
{
	self endon("hash_128f8789");
	if(isdefined(var_677b3e78) && self function_b55533bc())
	{
		wait(function_72a94f05(0.25, 0.75));
		self function_bc0ce0bf(var_677b3e78);
	}
}

/*
	Name: function_bc0ce0bf
	Namespace: namespace_80045451
	Checksum: 0xBA707156
	Offset: 0x2228
	Size: 0x2B1
	Parameters: 1
	Flags: None
*/
function function_bc0ce0bf(var_6050ab17)
{
	if(!self function_b55533bc())
	{
		return;
	}
	if(!isdefined(var_6050ab17) || !self namespace_ad06727a::function_2cfe5148(var_6050ab17))
	{
		return;
	}
	self namespace_7829c86f::function_2481442d();
	self function_470f7e4c();
	var_3f26abe = var_6050ab17 function_c7f3ce11();
	self function_a2429809("combat");
	self function_c62ada65(var_6050ab17, 0);
	if(!isdefined(self.var_ad06727a.var_d1b49f30[var_3f26abe]))
	{
		self.var_ad06727a.var_d1b49f30[var_3f26abe] = var_6050ab17;
		self.var_ad06727a.var_c49c37ed[var_3f26abe] = var_6050ab17;
		self thread function_899ae538(var_6050ab17);
		self notify("hash_234a4910", "enemy");
	}
	if(function_5cfb84bb(var_6050ab17))
	{
		self function_fcc2e3c6(var_6050ab17, 1);
	}
	self namespace_7244fa9b::function_782962c5();
	if(function_65f192a6(var_6050ab17) && function_4bd0142f("stealth_all_aware"))
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a == var_6050ab17)
			{
				continue;
			}
			var_4b7162db = var_5dc5e20a function_c7f3ce11();
			if(!isdefined(self.var_ad06727a.var_d1b49f30[var_4b7162db]))
			{
				function_bc0ce0bf(var_5dc5e20a);
			}
		}
	}
}

/*
	Name: function_899ae538
	Namespace: namespace_80045451
	Checksum: 0x6B612CEF
	Offset: 0x24E8
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function function_899ae538(var_6050ab17)
{
	self notify("combat_spread_thread_" + var_6050ab17 function_c7f3ce11());
	self endon("combat_spread_thread_" + var_6050ab17 function_c7f3ce11());
	self endon("hash_128f8789");
	var_a3eebf94 = 0;
	while(1)
	{
		wait(0.5);
		if(!isdefined(var_6050ab17) || var_6050ab17.var_3a90f16b <= 0 || self function_739525d() != "combat" || (isdefined(self.var_e73d60ea) && self.var_e73d60ea))
		{
			break;
		}
		self namespace_c8814633::function_7dd521be(self.var_3e94206a, self.var_722885f3, 200, 100, 0, "combat_spread", "combat", var_6050ab17, self);
		self namespace_c8814633::function_7dd521be(self.var_3e94206a, self.var_722885f3, 400, 300, 1, "combat_interest", var_6050ab17, self);
		if(!isdefined(self.var_6050ab17) || !self namespace_ad06727a::function_7ee3d9cd(self.var_6050ab17))
		{
			self function_a10368f2(self.var_730c572d, 1);
		}
		else
		{
			self function_a10368f2(self.var_730c572d, 0);
		}
	}
	self function_a10368f2(self.var_730c572d, 1);
}

/*
	Name: function_a85b6c52
	Namespace: namespace_80045451
	Checksum: 0xD0FC0BCD
	Offset: 0x26E8
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_a85b6c52()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_6050ab17");
		while(isdefined(self.var_6050ab17) && function_5b49d38c(self.var_6050ab17))
		{
			if(isdefined(self.var_6050ab17.var_8aa848ca) && self.var_6050ab17.var_8aa848ca || (isdefined(self.var_6050ab17.var_8722cfb) && (isdefined(self.var_6050ab17.var_8722cfb.var_8aa848ca) && self.var_6050ab17.var_8722cfb.var_8aa848ca)))
			{
				self.var_bbd5dba4 = 1;
				self.var_c40cbbfa = 1;
			}
			else
			{
				self.var_bbd5dba4 = undefined;
				self.var_c40cbbfa = 0;
			}
			wait(0.05);
		}
		self notify("hash_2fc68f66", self.var_6050ab17);
	}
}

