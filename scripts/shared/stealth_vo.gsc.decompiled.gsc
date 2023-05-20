#using scripts\cp\_dialog;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\array_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_player;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_234a4910;

/*
	Name: function_c35e6aab
	Namespace: namespace_234a4910
	Checksum: 0x55D860AA
	Offset: 0x2C8
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_ad06727a));
	#/
	self function_e6000f47(1);
	if(function_65f192a6(self))
	{
		self thread function_da2c55dc();
	}
	else if(self == level)
	{
		self function_6f9a7a6d();
		level.var_ca3202d["stealth"] = 1;
	}
}

/*
	Name: function_fcf56ab5
	Namespace: namespace_234a4910
	Checksum: 0x648111B7
	Offset: 0x378
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_fcf56ab5()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self));
	#/
	if(isdefined(self.var_ca3202d["stealth"]))
	{
		self.var_ca3202d["stealth"] = undefined;
	}
}

/*
	Name: function_b55533bc
	Namespace: namespace_234a4910
	Checksum: 0x30F7980B
	Offset: 0x3C8
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_b55533bc()
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ca3202d) && isdefined(self.var_ca3202d["stealth"]);
}

/*
	Name: function_bb96fd5b
	Namespace: namespace_234a4910
	Checksum: 0x488B9D1D
	Offset: 0x400
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_bb96fd5b(var_1d811e47)
{
	return isdefined(self.var_ad06727a) && isdefined(self.var_ca3202d) && isdefined(self.var_ca3202d["stealth"]) && self.var_ca3202d["stealth"];
}

/*
	Name: function_e6000f47
	Namespace: namespace_234a4910
	Checksum: 0xB265DAD5
	Offset: 0x458
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_e6000f47(var_1d811e47)
{
	self thread function_c2c75efc(var_1d811e47);
}

/*
	Name: function_c2c75efc
	Namespace: namespace_234a4910
	Checksum: 0x570CC646
	Offset: 0x488
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_c2c75efc(var_1d811e47)
{
	if(isdefined(self.var_ca3202d) && isdefined(self.var_ca3202d["stealth"]) && self.var_ca3202d["stealth"] == var_1d811e47)
	{
		return;
	}
	self notify("hash_c2c75efc");
	self endon("hash_c2c75efc");
	if(!function_65f192a6(self))
	{
		self endon("hash_128f8789");
	}
	wait(0.05);
	if(isdefined(self))
	{
		while(isdefined(self) && isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_222af664) || (isdefined(self.var_91782c1f) && self.var_91782c1f))
		{
			wait(0.05);
		}
		self.var_ca3202d["bc"] = !var_1d811e47;
		self.var_ca3202d["stealth"] = var_1d811e47;
	}
}

/*
	Name: function_2756e5d4
	Namespace: namespace_234a4910
	Checksum: 0x4E67994F
	Offset: 0x5B0
	Size: 0x27D
	Parameters: 1
	Flags: None
*/
function function_2756e5d4(var_904f1fb9)
{
	self endon("hash_128f8789");
	self endon("hash_94ff6d85");
	if(!function_8d0347b8(self) || !function_5b49d38c(self))
	{
		return;
	}
	var_5a8fe35b = var_904f1fb9.var_b5d0b83e[0];
	if(!isdefined(var_5a8fe35b))
	{
		return;
	}
	var_94aa7e70 = self function_243da9f0(var_5a8fe35b);
	if(isdefined(var_94aa7e70))
	{
		var_6425cb0f = self function_243da9f0(var_5a8fe35b + "_" + var_94aa7e70 + "_response");
		var_61690ed5 = level.var_ad06727a.var_222af664[var_5a8fe35b];
		if(!isdefined(var_61690ed5))
		{
			var_61690ed5 = 0;
		}
		if(!isdefined(self.var_ad06727a.var_222af664) || self.var_ad06727a.var_222af664 <= var_61690ed5)
		{
			self.var_ad06727a.var_222af664 = var_61690ed5;
		}
		else
		{
			return;
		}
		wait(function_72a94f05(0.25, 0.75));
		if(isdefined(self.var_e73d60ea) && self.var_e73d60ea)
		{
			return;
		}
		if(!isdefined(self.var_ad06727a.var_222af664) || self.var_ad06727a.var_222af664 <= var_61690ed5)
		{
			self.var_ad06727a.var_222af664 = var_61690ed5;
			self namespace_76d95162::function_f3de557b(self, var_94aa7e70, var_6425cb0f, "stealth", 1);
			while(isdefined(self.var_91782c1f) && self.var_91782c1f)
			{
				wait(0.05);
			}
			if(isdefined(self.var_ad06727a) && isdefined(self.var_ad06727a.var_222af664) && self.var_ad06727a.var_222af664 == var_61690ed5)
			{
				self.var_ad06727a.var_222af664 = undefined;
			}
		}
	}
}

/*
	Name: function_243da9f0
	Namespace: namespace_234a4910
	Checksum: 0xE2BDC37
	Offset: 0x838
	Size: 0x355
	Parameters: 2
	Flags: None
*/
function function_243da9f0(var_5a8fe35b, var_d3a25cc)
{
	var_73638d3b = GetTime();
	if(!self function_b55533bc())
	{
		return undefined;
	}
	if(!isdefined(level.var_ad06727a))
	{
		return undefined;
	}
	if(!isdefined(var_d3a25cc))
	{
		var_d3a25cc = level.var_ad06727a.var_29f411d1;
	}
	if(!isdefined(var_d3a25cc.var_48b937ab) || !isdefined(var_d3a25cc.var_48b937ab[var_5a8fe35b]))
	{
		return undefined;
	}
	if(!isdefined(level.var_ad06727a.var_e031c3f5))
	{
		level.var_ad06727a.var_e031c3f5 = [];
	}
	var_4e418837 = undefined;
	var_74952a22 = 0;
	var_8be39d6 = [];
	var_8be39d6[0] = "noncombat";
	if(self namespace_80045451::function_b55533bc())
	{
		var_8be39d6[var_8be39d6.size] = self namespace_80045451::function_739525d();
	}
	for(var_ded856b0 = 0; var_ded856b0 < 2; var_ded856b0++)
	{
		foreach(var_8363b8e0 in var_8be39d6)
		{
			if(isdefined(var_d3a25cc.var_48b937ab[var_5a8fe35b][var_8363b8e0]))
			{
				foreach(var_48b937ab in var_d3a25cc.var_48b937ab[var_5a8fe35b][var_8363b8e0])
				{
					if(var_ded856b0 == 0)
					{
						if(isdefined(level.var_ad06727a.var_e031c3f5[var_48b937ab]) && var_73638d3b - level.var_ad06727a.var_e031c3f5[var_48b937ab] < 2000)
						{
							continue;
						}
					}
					var_74952a22 = var_74952a22 + 1;
					if(function_62e4226e(1) <= 1 / var_74952a22)
					{
						var_4e418837 = var_48b937ab;
					}
				}
			}
		}
		if(isdefined(var_4e418837))
		{
			break;
		}
	}
	if(isdefined(var_4e418837))
	{
		level.var_ad06727a.var_e031c3f5[var_4e418837] = var_73638d3b;
	}
	return var_4e418837;
}

/*
	Name: function_6f9a7a6d
	Namespace: namespace_234a4910
	Checksum: 0x5E57ED16
	Offset: 0xB98
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_6f9a7a6d()
{
	if(!isdefined(level.var_ad06727a))
	{
		level.var_ad06727a = function_a8fb77bd();
	}
	if(!isdefined(level.var_ad06727a.var_222af664))
	{
		level.var_ad06727a.var_222af664 = [];
	}
	level.var_ad06727a.var_222af664["ambient"] = 0;
	level.var_ad06727a.var_222af664["resume"] = 0.25;
	level.var_ad06727a.var_222af664["alert"] = 0.5;
	level.var_ad06727a.var_222af664["explosion"] = 0.8;
	level.var_ad06727a.var_222af664["corpse"] = 0.9;
	level.var_ad06727a.var_222af664["enemy"] = 1;
	function_2cfe7001("alert", "patrol_alerted", "response_backup");
	function_2cfe7001("ambient", "patrol_brief", "response_affirm");
	function_2cfe7001("ambient", "patrol_calm", undefined, "unaware");
	function_2cfe7001("ambient", "patrol_clear", undefined, "unaware");
	function_2cfe7001("ambient", "patrol_cough", undefined, "unaware");
	function_2cfe7001("ambient", "patrol_throat", undefined, "unaware");
	function_2cfe7001("resume", "patrol_resume", "response_affirm");
	function_2cfe7001("resume", "patrol_resume", "response_secure");
	function_2cfe7001("corpse", "spotted_corpse");
	function_2cfe7001("enemy", "spotted_enemy");
	function_2cfe7001("explosion", "spotted_explosion");
}

/*
	Name: function_da2c55dc
	Namespace: namespace_234a4910
	Checksum: 0x3E4695BD
	Offset: 0xE70
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function function_da2c55dc()
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	self notify("hash_da2c55dc");
	self endon("hash_da2c55dc");
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	wait(0.05);
	var_e8e5cdb5 = 1000;
	var_b453c865 = var_e8e5cdb5 * var_e8e5cdb5;
	while(1)
	{
		wait(function_72a94f05(10, 15));
		if(!isdefined(level.var_ad06727a) || !isdefined(level.var_ad06727a.var_657b1773) || !isdefined(self.var_3e94206a) || !isdefined(level.var_ad06727a.var_657b1773[self.var_3e94206a]))
		{
			continue;
		}
		var_2ff7b6ab = [];
		foreach(var_6050ab17 in level.var_ad06727a.var_657b1773[self.var_3e94206a])
		{
			if(!function_5b49d38c(var_6050ab17))
			{
				continue;
			}
			if(!var_6050ab17 function_bb96fd5b())
			{
				continue;
			}
			if(var_6050ab17.var_c584775c)
			{
				continue;
			}
			var_2c3e05ad = function_cb3d1c9b(var_6050ab17.var_722885f3, self.var_722885f3);
			if(var_2c3e05ad > var_b453c865)
			{
				continue;
			}
			if(isdefined(var_6050ab17.var_ad06727a.var_f3c7f1d) && GetTime() < var_6050ab17.var_ad06727a.var_f3c7f1d)
			{
				continue;
			}
			var_2ff7b6ab[var_2ff7b6ab.size] = var_6050ab17;
		}
		var_2ff7b6ab = function_57efbe1(var_2ff7b6ab, self.var_722885f3, 1, 0, var_e8e5cdb5);
		if(isdefined(var_2ff7b6ab) && var_2ff7b6ab.size > 0)
		{
			var_2ff7b6ab[0] notify("hash_234a4910", "ambient");
			var_2ff7b6ab[0].var_ad06727a.var_f3c7f1d = GetTime() + function_dc99997a(8000, 12000);
		}
	}
}

/*
	Name: function_772af5b1
	Namespace: namespace_234a4910
	Checksum: 0x86B1D5D7
	Offset: 0x11A0
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_772af5b1()
{
	if(isdefined(level.var_ad06727a))
	{
		level.var_ad06727a.var_29f411d1 = undefined;
	}
}

/*
	Name: function_2cfe7001
	Namespace: namespace_234a4910
	Checksum: 0xD5691C90
	Offset: 0x11C8
	Size: 0x163
	Parameters: 4
	Flags: None
*/
function function_2cfe7001(var_5a8fe35b, var_95b0c1af, var_9e916b13, var_12131b3c)
{
	/#
		namespace_33b293fd::function_a7ee953(function_2477ac2(var_5a8fe35b));
	#/
	/#
		namespace_33b293fd::function_a7ee953(function_2477ac2(var_95b0c1af));
	#/
	if(!isdefined(level.var_ad06727a))
	{
		level.var_ad06727a = function_a8fb77bd();
	}
	if(!isdefined(level.var_ad06727a.var_29f411d1))
	{
		level.var_ad06727a.var_29f411d1 = function_a8fb77bd();
	}
	function_6ae431dd(level.var_ad06727a.var_29f411d1, var_5a8fe35b, var_95b0c1af, var_12131b3c);
	if(isdefined(var_9e916b13))
	{
		function_6ae431dd(level.var_ad06727a.var_29f411d1, var_5a8fe35b + "_" + var_95b0c1af + "_response", var_95b0c1af, var_12131b3c);
	}
}

/*
	Name: function_6ae431dd
	Namespace: namespace_234a4910
	Checksum: 0xA853CF7B
	Offset: 0x1338
	Size: 0x195
	Parameters: 4
	Flags: None
*/
function function_6ae431dd(var_14b42b8a, var_5a8fe35b, var_95b0c1af, var_12131b3c)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_14b42b8a));
	#/
	/#
		namespace_33b293fd::function_a7ee953(function_2477ac2(var_5a8fe35b));
	#/
	/#
		namespace_33b293fd::function_a7ee953(function_2477ac2(var_95b0c1af));
	#/
	if(!isdefined(var_12131b3c))
	{
		var_12131b3c = "noncombat";
	}
	if(!isdefined(var_14b42b8a.var_48b937ab))
	{
		var_14b42b8a.var_48b937ab = [];
	}
	if(!isdefined(var_14b42b8a.var_48b937ab[var_5a8fe35b]))
	{
		var_14b42b8a.var_48b937ab[var_5a8fe35b] = [];
	}
	if(!isdefined(var_14b42b8a.var_48b937ab[var_5a8fe35b][var_12131b3c]))
	{
		var_14b42b8a.var_48b937ab[var_5a8fe35b][var_12131b3c] = [];
	}
	if(!isdefined(var_14b42b8a.var_48b937ab[var_5a8fe35b][var_12131b3c][var_95b0c1af]))
	{
		var_14b42b8a.var_48b937ab[var_5a8fe35b][var_12131b3c][var_95b0c1af] = var_95b0c1af;
	}
}

/*
	Name: function_5714528b
	Namespace: namespace_234a4910
	Checksum: 0xE27F6A68
	Offset: 0x14D8
	Size: 0x16F
	Parameters: 3
	Flags: None
*/
function function_5714528b(var_be26784d, var_d0fd3b65, var_f12bb4cd)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_ad06727a));
	#/
	if(!isdefined(level.var_ad06727a.var_c8e23a95))
	{
		level.var_ad06727a.var_c8e23a95 = [];
	}
	if(!isdefined(level.var_ad06727a.var_c8e23a95[var_be26784d]))
	{
		level.var_ad06727a.var_c8e23a95[var_be26784d] = [];
	}
	level.var_ad06727a.var_c8e23a95[var_be26784d][level.var_ad06727a.var_c8e23a95[var_be26784d].size] = var_d0fd3b65;
	if(isdefined(var_f12bb4cd) && var_f12bb4cd)
	{
		if(!isdefined(level.var_ad06727a.var_787c93a0))
		{
			level.var_ad06727a.var_787c93a0 = [];
		}
		if(!isdefined(level.var_ad06727a.var_787c93a0[var_be26784d]))
		{
			level.var_ad06727a.var_787c93a0[var_be26784d] = [];
		}
		level.var_ad06727a.var_787c93a0[var_be26784d][level.var_ad06727a.var_787c93a0[var_be26784d].size] = var_d0fd3b65;
	}
}

/*
	Name: function_866c6270
	Namespace: namespace_234a4910
	Checksum: 0x6149989B
	Offset: 0x1650
	Size: 0x393
	Parameters: 2
	Flags: None
*/
function function_866c6270(var_be26784d, var_61690ed5)
{
	if(!(isdefined(level.var_ad06727a.var_bf426fe4) && level.var_ad06727a.var_bf426fe4))
	{
		return;
	}
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_ad06727a));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_ad06727a.var_c8e23a95));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_ad06727a.var_c8e23a95[var_be26784d]));
	#/
	if(!isdefined(var_61690ed5))
	{
		var_61690ed5 = 0;
	}
	var_d0fd3b65 = undefined;
	if(level.var_ad06727a.var_c8e23a95[var_be26784d].size <= 2)
	{
		var_d0fd3b65 = namespace_84970cc4::function_47d18840(level.var_ad06727a.var_c8e23a95[var_be26784d]);
	}
	else if(!isdefined(self.var_ad06727a.var_31bf1854))
	{
		self.var_ad06727a.var_31bf1854 = [];
	}
	if(!isdefined(self.var_ad06727a.var_31bf1854[var_be26784d]))
	{
		self.var_ad06727a.var_31bf1854[var_be26784d] = level.var_ad06727a.var_c8e23a95[var_be26784d];
	}
	if(!isdefined(self.var_ad06727a.var_b9ae563d))
	{
		self.var_ad06727a.var_b9ae563d = [];
	}
	if(!isdefined(self.var_ad06727a.var_b9ae563d[var_be26784d]))
	{
		self.var_ad06727a.var_b9ae563d[var_be26784d] = self.var_ad06727a.var_31bf1854[var_be26784d].size;
	}
	if(self.var_ad06727a.var_b9ae563d[var_be26784d] > self.var_ad06727a.var_31bf1854[var_be26784d].size - 1)
	{
		self.var_ad06727a.var_31bf1854 = namespace_84970cc4::function_8332f7f6(level.var_ad06727a.var_c8e23a95[var_be26784d]);
		self.var_ad06727a.var_b9ae563d[var_be26784d] = 0;
	}
	var_d0fd3b65 = self.var_ad06727a.var_31bf1854[self.var_ad06727a.var_b9ae563d[var_be26784d]];
	self.var_ad06727a.var_b9ae563d[var_be26784d] = self.var_ad06727a.var_b9ae563d[var_be26784d] + 1;
	if(isdefined(var_d0fd3b65))
	{
		if(isdefined(level.var_ad06727a.var_787c93a0) && isdefined(level.var_ad06727a.var_787c93a0[var_be26784d]))
		{
			self thread function_500f3ab6(var_d0fd3b65);
		}
		else
		{
			self thread namespace_63b4601c::function_ee75acde(var_d0fd3b65, 0, var_61690ed5, self);
		}
	}
}

/*
	Name: function_e3ae87b3
	Namespace: namespace_234a4910
	Checksum: 0xC96D7D4F
	Offset: 0x19F0
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_e3ae87b3(var_be26784d, var_4818f349, var_61690ed5)
{
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	if(!isdefined(level.var_ad06727a))
	{
		return;
	}
	if(!isdefined(level.var_ad06727a.var_c8e23a95))
	{
		return;
	}
	if(!isdefined(level.var_ad06727a.var_c8e23a95[var_be26784d]))
	{
		return;
	}
	self thread function_584c6d3a(var_be26784d, var_4818f349, var_61690ed5);
}

/*
	Name: function_584c6d3a
	Namespace: namespace_234a4910
	Checksum: 0x137CD994
	Offset: 0x1AA8
	Size: 0x193
	Parameters: 3
	Flags: None
*/
function function_584c6d3a(var_be26784d, var_4818f349, var_61690ed5)
{
	self notify("hash_e3ae87b3");
	self endon("hash_e3ae87b3");
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	/#
		namespace_33b293fd::function_a7ee953(function_65f192a6(self));
	#/
	if(function_fd096044(var_4818f349))
	{
		var_4818f349 endon("hash_128f8789");
	}
	var_73638d3b = GetTime();
	if(!isdefined(self.var_ad06727a.var_23eafafa))
	{
		self.var_ad06727a.var_23eafafa = [];
	}
	wait(function_72a94f05(1, 2));
	if(!self namespace_10443be6::function_b55533bc())
	{
		return;
	}
	if(isdefined(self.var_ad06727a.var_23eafafa[var_be26784d]) && var_73638d3b - self.var_ad06727a.var_23eafafa[var_be26784d] < 20000)
	{
		return;
	}
	self.var_ad06727a.var_23eafafa[var_be26784d] = var_73638d3b;
	self function_866c6270(var_be26784d, var_61690ed5);
}

/*
	Name: function_500f3ab6
	Namespace: namespace_234a4910
	Checksum: 0x5340E155
	Offset: 0x1C48
	Size: 0xDD
	Parameters: 1
	Flags: None
*/
function function_500f3ab6(var_fdbe8054)
{
	self notify("hash_500f3ab6");
	self endon("hash_500f3ab6");
	self endon("hash_643a7daf");
	self endon("hash_94ff6d85");
	if(isdefined(self.var_ad06727a.var_500f3ab6))
	{
		self namespace_82b91a51::function_79f9f98d();
	}
	self thread namespace_82b91a51::function_67cfce72("[ " + var_fdbe8054 + " ]", undefined, undefined, 125, 0);
	wait(3);
	self namespace_82b91a51::function_79f9f98d();
	if(isdefined(self.var_ad06727a.var_500f3ab6))
	{
		self.var_ad06727a.var_500f3ab6 = undefined;
	}
}

/*
	Name: function_4970c8b8
	Namespace: namespace_234a4910
	Checksum: 0x5082CE79
	Offset: 0x1D30
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_4970c8b8(var_961ca3e3)
{
	if(isdefined(var_961ca3e3))
	{
		if(!isdefined(level.var_ad06727a.var_581c13ae))
		{
			level.var_ad06727a.var_581c13ae = [];
		}
		level.var_ad06727a.var_581c13ae[level.var_ad06727a.var_581c13ae.size] = self;
		self.var_3bee9acf = var_961ca3e3;
	}
}

