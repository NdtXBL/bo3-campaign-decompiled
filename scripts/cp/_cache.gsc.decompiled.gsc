#using scripts\cp\_skipto;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_13326c99;

/*
	Name: function_2dc19561
	Namespace: namespace_13326c99
	Checksum: 0x6F879FC8
	Offset: 0x2E0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("cache", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_13326c99
	Checksum: 0x1DFCDC5A
	Offset: 0x320
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	var_346386ce = function_99201f25("sys_ammo_cache", "targetname");
	namespace_84970cc4::function_966ecb29(var_346386ce, &function_af11d807);
	var_b430d2a8 = function_99201f25("sys_weapon_cache", "targetname");
	namespace_84970cc4::function_966ecb29(var_b430d2a8, &function_2b0d49bd);
}

/*
	Name: function_af11d807
	Namespace: namespace_13326c99
	Checksum: 0xF33394BE
	Offset: 0x3D0
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_af11d807()
{
	namespace_82b91a51::function_65ffc64a("xmodel", self.var_6df9264);
	self thread function_2f6eaad8();
	if(isdefined(level.var_4fd5c4a4))
	{
		self thread [[level.var_4fd5c4a4]]();
	}
}

/*
	Name: function_2b0d49bd
	Namespace: namespace_13326c99
	Checksum: 0x95AF93A6
	Offset: 0x458
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_2b0d49bd()
{
	namespace_82b91a51::function_65ffc64a("xmodel", self.var_6df9264);
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	self thread function_5ad8638a();
	self thread function_acb5494d();
}

/*
	Name: function_2f6eaad8
	Namespace: namespace_13326c99
	Checksum: 0x6DB1BECD
	Offset: 0x4D8
	Size: 0x25F
	Parameters: 0
	Flags: None
*/
function function_2f6eaad8()
{
	self endon("hash_b6ecc65b");
	var_b0fde15b = self function_5d73924();
	if(isdefined(var_b0fde15b.var_db7bb468) && var_b0fde15b.var_db7bb468 == "no_grenade")
	{
		var_b0fde15b.var_947d7e0b = 1;
	}
	var_b0fde15b function_d5eb00e3(&"SCRIPT_AMMO_REFILL");
	var_b0fde15b function_e68ee88a("HINT_NOICON");
	while(1)
	{
		var_b0fde15b waittill("hash_4dbf3ae3", var_6bfe1586);
		var_6bfe1586 function_1271a73e();
		var_6bfe1586 function_921a1574("fly_ammo_crate_refill");
		wait(2);
		var_87a9e25c = var_6bfe1586 function_21995b5a();
		foreach(var_dfcc01fd in var_87a9e25c)
		{
			if(isdefined(var_b0fde15b.var_947d7e0b) && var_b0fde15b.var_947d7e0b && namespace_f996a5bc::function_56d05fd6(var_dfcc01fd))
			{
				continue;
				continue;
			}
			var_6bfe1586 function_704b802a(var_dfcc01fd);
			var_6bfe1586 function_67795b5f(var_dfcc01fd, var_dfcc01fd.var_c0b2188);
		}
		var_6bfe1586 function_901e0817();
		var_6bfe1586 notify("hash_a88bbdc9");
	}
}

/*
	Name: function_5d73924
	Namespace: namespace_13326c99
	Checksum: 0xC914FB1
	Offset: 0x740
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5d73924()
{
	var_301cff54 = function_99201f25("trigger_ammo_cache", "targetname");
	var_b0fde15b = function_e7bdc1a1(self.var_722885f3, var_301cff54);
	return var_b0fde15b;
}

/*
	Name: function_5ad8638a
	Namespace: namespace_13326c99
	Checksum: 0xE3EFF64D
	Offset: 0x7A8
	Size: 0x587
	Parameters: 0
	Flags: None
*/
function function_5ad8638a()
{
	var_9a9860c6 = level.var_2395e945[0] function_8af4d36d(0, "primary");
	var_bb78fd0e = level.var_2395e945[0] function_8af4d36d(0, "secondary");
	var_5d00b0c = (-5, 0, 15);
	var_1b46be27 = (-10, 0, 15);
	var_2ba1c80f = VectorScale((0, 0, 1), 15);
	var_47db02d5 = 0;
	var_42ec473e = var_9a9860c6.var_8c02d299;
	if(var_42ec473e != level.var_175f5666 && function_350e6980("weapon", var_42ec473e.var_4be20d44))
	{
		var_d6eae42f = self function_d48f2ab3("loadOut_B");
		var_d31f6c52 = function_298b8148(self function_cd1d99bd("loadOut_B")) * var_47db02d5;
		var_c1e132ef = function_9b7fda5e("weapon_" + var_9a9860c6.var_4be20d44 + level.var_3c323fa1, var_d6eae42f + var_d31f6c52 + var_2ba1c80f, 8);
		var_c1e132ef.var_6ab6f4fd = self function_cd1d99bd("loadOut_B") + VectorScale((0, -1, 0), 90);
	}
	else if(function_350e6980("weapon", "hk416" + level.var_3c323fa1))
	{
		var_d6eae42f = self function_d48f2ab3("loadOut_B");
		var_d31f6c52 = function_298b8148(self function_cd1d99bd("loadOut_B")) * var_47db02d5;
		var_c1e132ef = function_9b7fda5e("weapon_" + "ar_standard" + level.var_3c323fa1, var_d6eae42f + var_d31f6c52 + var_2ba1c80f, 8);
		var_c1e132ef.var_6ab6f4fd = self function_cd1d99bd("loadOut_B") + VectorScale((0, -1, 0), 90);
	}
	switch(self.var_6df9264)
	{
		case "p6_weapon_resupply_future_01":
		case "p6_weapon_resupply_future_02":
		{
			var_47db02d5 = -3;
			break;
		}
		case default:
		{
			var_47db02d5 = -4;
			break;
		}
	}
	var_50e503e6 = var_bb78fd0e.var_8c02d299;
	if(var_50e503e6 != level.var_175f5666 && function_350e6980("weapon", var_50e503e6.var_4be20d44))
	{
		var_8501a503 = self function_d48f2ab3("loadOut_A");
		var_d31f6c52 = function_298b8148(self function_cd1d99bd("loadOut_A")) * var_47db02d5;
		var_c1e132ef = function_9b7fda5e("weapon_" + var_bb78fd0e + level.var_3c323fa1, var_8501a503 + var_d31f6c52 + var_2ba1c80f, 8);
		var_c1e132ef.var_6ab6f4fd = self function_cd1d99bd("loadOut_A") + VectorScale((0, -1, 0), 90);
	}
	else if(function_350e6980("weapon", "smg_fastfire" + level.var_3c323fa1))
	{
		var_8501a503 = self function_d48f2ab3("loadOut_A");
		var_d31f6c52 = function_298b8148(self function_cd1d99bd("loadOut_A")) * var_47db02d5;
		var_c1e132ef = function_9b7fda5e("weapon_" + "smg_fastfire" + level.var_3c323fa1, var_8501a503 + var_d31f6c52 + var_2ba1c80f, 8);
		var_c1e132ef.var_6ab6f4fd = self function_cd1d99bd("loadOut_A") + VectorScale((0, -1, 0), 90);
	}
}

/*
	Name: function_acb5494d
	Namespace: namespace_13326c99
	Checksum: 0xC6864B5
	Offset: 0xD38
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_acb5494d()
{
	if(isdefined(self.var_175017a9))
	{
		var_10d1f7d8 = self function_d48f2ab3("auxilary_A");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_10d1f7d8), "Dev Block strings are not supported");
		#/
		switch(self.var_6df9264)
		{
			case default:
			{
				var_d31f6c52 = function_298b8148(self function_cd1d99bd("auxilary_A")) * 5;
				break;
			}
		}
		var_c1e132ef = function_9b7fda5e("weapon_" + self.var_175017a9 + level.var_3c323fa1, var_10d1f7d8 + var_d31f6c52 + VectorScale((0, 0, 1), 10), 8);
		var_c1e132ef.var_6ab6f4fd = self function_cd1d99bd("auxilary_A") + VectorScale((0, -1, 0), 90);
		var_c1e132ef function_4445660e(9999, 9999);
	}
	if(isdefined(self.var_3d529212))
	{
		var_10d1f7d8 = self function_d48f2ab3("secondary_A");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_10d1f7d8), "Dev Block strings are not supported");
		#/
		var_d31f6c52 = function_bc7ce905(self function_cd1d99bd("secondary_A")) * 10;
		var_c1e132ef = function_9b7fda5e("weapon_" + self.var_3d529212 + level.var_3c323fa1, var_10d1f7d8 + var_d31f6c52 + VectorScale((0, 0, 1), 10), 8);
		var_c1e132ef.var_6ab6f4fd = self function_cd1d99bd("secondary_A");
		var_c1e132ef function_4445660e(9999, 9999);
	}
}

/*
	Name: function_fdbce913
	Namespace: namespace_13326c99
	Checksum: 0x1AA4595D
	Offset: 0xFC8
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_fdbce913()
{
	/#
		var_83f75c15 = [];
		var_83f75c15[var_83f75c15.size] = "Dev Block strings are not supported";
		var_83f75c15[var_83f75c15.size] = "Dev Block strings are not supported";
		var_83f75c15[var_83f75c15.size] = "Dev Block strings are not supported";
		var_83f75c15[var_83f75c15.size] = "Dev Block strings are not supported";
		var_83f75c15[var_83f75c15.size] = "Dev Block strings are not supported";
		var_83f75c15[var_83f75c15.size] = "Dev Block strings are not supported";
		var_83f75c15[var_83f75c15.size] = "Dev Block strings are not supported";
		var_83f75c15[var_83f75c15.size] = "Dev Block strings are not supported";
		foreach(var_b31a6ddf in var_83f75c15)
		{
			self thread function_4fe8e0cc(var_b31a6ddf);
		}
	#/
}

/*
	Name: function_4fe8e0cc
	Namespace: namespace_13326c99
	Checksum: 0x7A265192
	Offset: 0x1118
	Size: 0x7F
	Parameters: 1
	Flags: None
*/
function function_4fe8e0cc(var_b31a6ddf)
{
	/#
		while(1)
		{
			if(isdefined(self function_d48f2ab3(var_b31a6ddf)))
			{
				function_8f3e0f73(self function_d48f2ab3(var_b31a6ddf), var_b31a6ddf, (1, 1, 1), 1, 0.15);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_b6ecc65b
	Namespace: namespace_13326c99
	Checksum: 0xC3CFCD6
	Offset: 0x11A0
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_b6ecc65b(var_e9338998)
{
	var_301cff54 = function_99201f25(var_e9338998, "script_noteworthy");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_301cff54), "Dev Block strings are not supported" + var_e9338998 + "Dev Block strings are not supported");
	#/
	if(var_301cff54.size > 1)
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_e9338998 + "Dev Block strings are not supported");
		#/
	}
	var_301cff54[0] notify("hash_b6ecc65b");
	var_b0fde15b = var_301cff54[0] function_5d73924();
	var_b0fde15b function_175e6b8e(0);
}

/*
	Name: function_7189f668
	Namespace: namespace_13326c99
	Checksum: 0xC2C88761
	Offset: 0x12B0
	Size: 0x2DB
	Parameters: 2
	Flags: None
*/
function function_7189f668(var_c59a5f80, var_1d6db0a3)
{
	if(var_c59a5f80 < 1 || var_c59a5f80 > 2)
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported");
		#/
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_1d6db0a3), "Dev Block strings are not supported");
	#/
	if(var_c59a5f80 == 1)
	{
		var_10d1f7d8 = self function_d48f2ab3("auxilary_A");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_10d1f7d8), "Dev Block strings are not supported");
		#/
		var_d31f6c52 = function_298b8148(self function_cd1d99bd("auxilary_A")) * 5;
		var_c1e132ef = function_9b7fda5e("weapon_" + var_1d6db0a3.var_4be20d44 + level.var_3c323fa1, var_10d1f7d8 + var_d31f6c52 + VectorScale((0, 0, 1), 10), 8);
		var_c1e132ef.var_6ab6f4fd = self function_cd1d99bd("auxilary_A") + VectorScale((0, -1, 0), 90);
		var_c1e132ef function_4445660e(9999, 9999);
	}
	if(var_c59a5f80 == 2)
	{
		var_10d1f7d8 = self function_d48f2ab3("secondary_A");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_10d1f7d8), "Dev Block strings are not supported");
		#/
		var_d31f6c52 = function_bc7ce905(self function_cd1d99bd("secondary_A")) * 7;
		var_c1e132ef = function_9b7fda5e("weapon_" + var_1d6db0a3.var_4be20d44 + level.var_3c323fa1, var_10d1f7d8 + var_d31f6c52 + VectorScale((0, 0, 1), 10), 8);
		var_c1e132ef.var_6ab6f4fd = self function_cd1d99bd("secondary_A");
		var_c1e132ef function_4445660e(9999, 9999);
	}
}

/*
	Name: function_71d73d90
	Namespace: namespace_13326c99
	Checksum: 0x4FB6A4FD
	Offset: 0x1598
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_71d73d90()
{
	if(function_5dbf7eca(self.var_6df9264, "p6_weapon_"))
	{
		var_4f64ee67 = [];
		var_f0d803 = function_bb8807d9();
		foreach(var_c5b0e858 in var_f0d803)
		{
			if(function_5dbf7eca(var_c5b0e858.var_e6e9b8de, "weapon_"))
			{
				var_4f64ee67[var_4f64ee67.size] = var_c5b0e858;
			}
		}
		var_ee5ad949 = 2;
		if(isdefined(self.var_175017a9))
		{
			var_ee5ad949++;
		}
		if(isdefined(self.var_3d529212))
		{
			var_ee5ad949++;
		}
		for(var_4f8217af = 0; var_4f8217af < var_ee5ad949; var_4f8217af++)
		{
			var_62eb07c9 = function_e7bdc1a1(self.var_722885f3, var_4f64ee67, 50);
			if(isdefined(var_62eb07c9))
			{
				var_62eb07c9 function_dc8c8404();
			}
		}
		self function_dc8c8404();
	}
	else
	{
		self notify("hash_b6ecc65b");
		var_578a4cdd = function_5d73924();
		if(isdefined(var_578a4cdd))
		{
			var_578a4cdd function_dc8c8404();
		}
		self function_dc8c8404();
	}
}

