#using scripts\codescripts\struct;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_7244fa9b;

/*
	Name: function_2dc19561
	Namespace: namespace_7244fa9b
	Checksum: 0x50402727
	Offset: 0x200
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("ai_sniper", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_7244fa9b
	Checksum: 0x67BE2C58
	Offset: 0x240
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	thread function_abc49676();
}

/*
	Name: function_abc49676
	Namespace: namespace_7244fa9b
	Checksum: 0x53DF918A
	Offset: 0x260
	Size: 0x325
	Parameters: 1
	Flags: None
*/
function function_abc49676(var_170527fb)
{
	wait(0.05);
	if(!isdefined(var_170527fb))
	{
		var_170527fb = "ai_sniper_node_scan";
	}
	var_406775ae = namespace_14b42b8a::function_7faf4c39(var_170527fb, "targetname");
	var_6ab55afd = function_99201f25(var_170527fb, "targetname");
	foreach(var_14b42b8a in var_406775ae)
	{
		var_6ab55afd[var_6ab55afd.size] = var_14b42b8a;
	}
	foreach(var_dd89f865 in var_6ab55afd)
	{
		if(isdefined(var_dd89f865.var_b07228b6))
		{
			var_90ca1fdd = function_b4cb3503(var_dd89f865.var_b07228b6, "targetname");
			if(isdefined(var_90ca1fdd))
			{
				if(!isdefined(var_90ca1fdd.var_565daac6))
				{
					var_90ca1fdd.var_565daac6 = [];
				}
				var_90ca1fdd.var_565daac6[var_90ca1fdd.var_565daac6.size] = var_dd89f865;
			}
		}
	}
	var_69cb4035 = function_fe0cfd2e(var_170527fb, "script_noteworthy");
	foreach(var_90ca1fdd in var_69cb4035)
	{
		if(isdefined(var_90ca1fdd.var_9194748))
		{
			var_90ca1fdd.var_57357d16 = namespace_14b42b8a::function_7922262b(var_90ca1fdd.var_9194748, "script_linkname");
			if(!isdefined(var_90ca1fdd.var_57357d16))
			{
				var_90ca1fdd.var_57357d16 = function_6ada35ba(var_90ca1fdd.var_9194748, "script_linkname");
			}
		}
	}
}

/*
	Name: function_7df1081d
	Namespace: namespace_7244fa9b
	Checksum: 0x743CD9D4
	Offset: 0x590
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_7df1081d()
{
	self thread function_8d1875dc();
	self thread function_6a517a0a();
	self thread function_6fb6a6d3();
}

/*
	Name: function_b61dfa9e
	Namespace: namespace_7244fa9b
	Checksum: 0xF237F61E
	Offset: 0x5E8
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_b61dfa9e(var_90ca1fdd)
{
	if(!isdefined(var_90ca1fdd))
	{
		return;
	}
	if(!isdefined(var_90ca1fdd.var_565daac6) && !isdefined(var_90ca1fdd.var_57357d16))
	{
		return;
	}
	self notify("hash_b61dfa9e");
	self endon("hash_b61dfa9e");
	self endon("hash_128f8789");
	self endon("hash_565daac6");
	if(isdefined(self.var_f2090578) && self.var_f2090578)
	{
		self namespace_d84e54db::function_6a90f059();
	}
	var_ae11119e = var_90ca1fdd.var_722885f3;
	if(isdefined(self.var_39abf31))
	{
		var_ae11119e = self.var_39abf31;
	}
	if(isdefined(self.var_911a649a))
	{
		var_ae11119e = self.var_911a649a;
	}
	while(function_cb3d1c9b(self.var_722885f3, var_ae11119e) > 256)
	{
		wait(0.05);
	}
	self notify("hash_50b88a46", var_90ca1fdd);
}

/*
	Name: function_6a517a0a
	Namespace: namespace_7244fa9b
	Checksum: 0xD1CA157
	Offset: 0x728
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_6a517a0a()
{
	self notify("hash_6a517a0a");
	self endon("hash_6a517a0a");
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_5ca48b93", var_90ca1fdd);
		self function_b61dfa9e(var_90ca1fdd);
	}
}

/*
	Name: function_6fb6a6d3
	Namespace: namespace_7244fa9b
	Checksum: 0xA4F4B854
	Offset: 0x798
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_6fb6a6d3()
{
	self notify("hash_6fb6a6d3");
	self endon("hash_6fb6a6d3");
	self endon("hash_128f8789");
	if(isdefined(self.var_b07228b6) && (!isdefined(self.var_f2090578) && self.var_f2090578))
	{
		var_90ca1fdd = function_b4cb3503(self.var_b07228b6, "targetname");
		if(isdefined(var_90ca1fdd))
		{
			self waittill("hash_41d1aaf0");
			self function_b61dfa9e(var_90ca1fdd);
		}
	}
}

/*
	Name: function_8d1875dc
	Namespace: namespace_7244fa9b
	Checksum: 0xEB961440
	Offset: 0x858
	Size: 0x277
	Parameters: 0
	Flags: None
*/
function function_8d1875dc()
{
	self notify("hash_8d1875dc");
	self endon("hash_8d1875dc");
	self endon("hash_128f8789");
	while(1)
	{
		var_360359e4 = 0;
		self waittill("hash_50b88a46", var_90ca1fdd);
		if(isdefined(var_90ca1fdd.var_57357d16))
		{
			self thread function_6840179(var_90ca1fdd.var_57357d16);
		}
		else
		{
			self thread function_6840179(var_90ca1fdd.var_565daac6);
		}
		if(self namespace_d84e54db::function_18775385("stealth"))
		{
			var_360359e4 = self namespace_d84e54db::function_a0a4c1f1("stealth");
			self namespace_d84e54db::function_ceb883cd("stealth", 0);
		}
		if(isdefined(self.var_4fea9189) && isdefined(self.var_4fea9189.var_b07228b6) && self.var_4fea9189.var_b07228b6 != "")
		{
			self function_169cc712(var_90ca1fdd, 1);
			self waittill("hash_b39fffd7");
			self notify("hash_565daac6");
			self function_e01ff155();
			self.var_5fb3c5fe = 0;
			self namespace_d84e54db::function_7a868ba5();
			if(isdefined(self.var_d1ddf246))
			{
				self.var_7dfaf62 = self.var_d1ddf246;
				self.var_d1ddf246 = undefined;
			}
			if(isdefined(self.var_4fea9189))
			{
				self thread namespace_d84e54db::function_99e190ff(self.var_4fea9189);
			}
			if(var_360359e4 && self namespace_d84e54db::function_18775385("stealth"))
			{
				self namespace_d84e54db::function_ceb883cd("stealth", self.var_730c572d != "combat");
			}
		}
		else
		{
			break;
		}
	}
}

/*
	Name: function_6840179
	Namespace: namespace_7244fa9b
	Checksum: 0x1616368E
	Offset: 0xAD8
	Size: 0x313
	Parameters: 1
	Flags: None
*/
function function_6840179(var_f1f6e3d)
{
	self notify("hash_565daac6");
	self endon("hash_565daac6");
	self endon("hash_128f8789");
	self.var_5fb3c5fe = 1;
	self.var_578b3075 = 1;
	if(!isdefined(self.var_d1ddf246))
	{
		self.var_d1ddf246 = self.var_7dfaf62;
	}
	self.var_7dfaf62 = 8;
	if(isdefined(self.var_6d40f69c) && isdefined(self.var_a33b36db) && self.var_a33b36db == "steady")
	{
		namespace_96515e2a::function_fbe55294(self, "_context", "steady");
	}
	if(!isdefined(var_f1f6e3d) && isdefined(self.var_b07228b6))
	{
		var_f1f6e3d = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	}
	if(!isdefined(var_f1f6e3d) || (function_6e2770d8(var_f1f6e3d) && var_f1f6e3d.size == 0))
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported");
		#/
		return;
	}
	var_978eac89 = undefined;
	if(function_6e2770d8(var_f1f6e3d))
	{
		var_978eac89 = var_f1f6e3d[0];
	}
	else
	{
		var_978eac89 = var_f1f6e3d;
	}
	if(!isdefined(self.var_9eb700da))
	{
		self.var_9eb700da = function_9b7fda5e("script_model", function_9bab0bf(var_978eac89));
		self.var_9eb700da function_e48f905e("tag_origin");
		self.var_9eb700da.var_9d097bf8 = VectorScale((1, 0, 0), 100);
		self thread namespace_82b91a51::function_3e3a41eb(self.var_9eb700da);
	}
	if(self.var_9eb700da.var_3a90f16b <= 0)
	{
		self.var_9eb700da.var_3a90f16b = 1;
	}
	self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", self.var_9eb700da);
	self.var_9eb700da thread function_6eceec3e(var_f1f6e3d, self);
	self.var_9eb700da thread function_cc2a65b3(self function_501eb072(), var_f1f6e3d, self);
	self thread function_2ba378ce();
	self thread function_659cb4db();
}

/*
	Name: function_782962c5
	Namespace: namespace_7244fa9b
	Checksum: 0x8C398BDC
	Offset: 0xDF8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_782962c5()
{
	if(!isdefined(self.var_9eb700da))
	{
		return;
	}
	self notify("hash_565daac6");
	self.var_5fb3c5fe = 0;
	self.var_578b3075 = 0;
	self.var_9eb700da function_dc8c8404();
	self.var_9eb700da = undefined;
	self function_dec5be9a();
	if(isdefined(self.var_d1ddf246))
	{
		self.var_7dfaf62 = self.var_d1ddf246;
		self.var_d1ddf246 = undefined;
	}
	self function_e01ff155();
	if(isdefined(self.var_6d40f69c))
	{
		namespace_96515e2a::function_fbe55294(self, "_context", undefined);
	}
}

/*
	Name: function_d065af50
	Namespace: namespace_7244fa9b
	Checksum: 0xEFE5B9A2
	Offset: 0xED0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_d065af50()
{
	/#
		self endon("hash_128f8789");
		var_d4e6735d = self.var_722885f3;
		while(1)
		{
			function_617f6eba(self.var_722885f3, 1, (1, 0, 0));
			function_4e418837(self.var_722885f3, var_d4e6735d, (1, 0, 0), 1, 0, 20);
			var_d4e6735d = self.var_722885f3;
			wait(0.05);
		}
	#/
}

/*
	Name: function_2ba378ce
	Namespace: namespace_7244fa9b
	Checksum: 0x5F7F7CE3
	Offset: 0xF70
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_2ba378ce()
{
	self endon("hash_128f8789");
	self endon("hash_565daac6");
	var_bef987c0 = GetTime();
	while(1)
	{
		if(self function_ae9f93ad())
		{
			var_bef987c0 = GetTime();
			self function_e01ff155();
		}
		else if(GetTime() - var_bef987c0 > 350)
		{
			self function_62a7329();
		}
		wait(0.05);
	}
}

/*
	Name: function_659cb4db
	Namespace: namespace_7244fa9b
	Checksum: 0x8CF905BD
	Offset: 0x1010
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_659cb4db()
{
	self endon("hash_565daac6");
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		self function_e01ff155();
	}
}

/*
	Name: function_9bab0bf
	Namespace: namespace_7244fa9b
	Checksum: 0x7CE28A9E
	Offset: 0x1058
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_9bab0bf(var_79b9c7a7)
{
	if(!isdefined(var_79b9c7a7))
	{
		return (0, 0, 0);
	}
	var_3c61bfc2 = var_79b9c7a7;
	if(!function_4451c715(var_79b9c7a7) && isdefined(var_79b9c7a7.var_722885f3))
	{
		var_3c61bfc2 = var_79b9c7a7.var_722885f3;
		if(function_65f192a6(var_79b9c7a7) || function_8d0347b8(var_79b9c7a7))
		{
			var_3c61bfc2 = var_79b9c7a7 function_501eb072();
		}
	}
	return var_3c61bfc2;
}

/*
	Name: function_cc2a65b3
	Namespace: namespace_7244fa9b
	Checksum: 0xC892CF85
	Offset: 0x1120
	Size: 0x3C7
	Parameters: 3
	Flags: None
*/
function function_cc2a65b3(var_a0d5568b, var_f1f6e3d, var_717108ce)
{
	self notify("hash_d7925cd8");
	self endon("hash_d7925cd8");
	self endon("hash_128f8789");
	if(!isdefined(level.var_b8032721))
	{
		level.var_b8032721 = [];
	}
	if(!isdefined(level.var_2b420add))
	{
		level.var_2b420add = 0;
	}
	while(1)
	{
		var_6121992f = function_f679a325(self.var_722885f3 - var_a0d5568b);
		if(GetTime() > level.var_2b420add)
		{
			level.var_b8032721 = function_3f10449f();
			var_28a2096c = function_b8494651("allies");
			foreach(var_f1074df4 in var_28a2096c)
			{
				if(isdefined(var_f1074df4.var_255b9315) && var_f1074df4.var_255b9315)
				{
					continue;
				}
				if(function_5b49d38c(var_f1074df4))
				{
					level.var_b8032721[level.var_b8032721.size] = var_f1074df4;
				}
			}
			level.var_2b420add = GetTime() + 1000;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_b8032721.size; var_c957f6b6++)
		{
			var_157acf1b = level.var_b8032721[var_c957f6b6];
			if(!function_5b49d38c(var_157acf1b))
			{
				continue;
			}
			if(var_157acf1b function_8f454113() || (isdefined(var_157acf1b.var_255b9315) && var_157acf1b.var_255b9315))
			{
				continue;
			}
			var_633cfa62 = function_9bab0bf(var_157acf1b);
			var_c4827684 = function_f679a325(var_633cfa62 - var_a0d5568b);
			if(function_5f9a4869(var_6121992f, var_c4827684) < 0.7)
			{
				continue;
			}
			var_6a3f5d89 = function_c8b79b9c(var_a0d5568b, self.var_722885f3, var_633cfa62);
			if(function_cb3d1c9b(var_633cfa62, var_6a3f5d89) < 40000)
			{
				if(function_e7865c4b(var_a0d5568b, var_633cfa62, 0, undefined))
				{
					if(isdefined(var_717108ce))
					{
						var_717108ce notify("hash_78a7a5b9", "combat", var_633cfa62, var_157acf1b);
					}
					self function_b77b41d1(var_a0d5568b, var_157acf1b, var_717108ce);
					break;
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_b77b41d1
	Namespace: namespace_7244fa9b
	Checksum: 0x482CB195
	Offset: 0x14F0
	Size: 0xAB
	Parameters: 4
	Flags: None
*/
function function_b77b41d1(var_a0d5568b, var_79b9c7a7, var_717108ce, var_12065f0b)
{
	if(!isdefined(var_12065f0b))
	{
		var_12065f0b = 1;
	}
	var_5143a614 = 7;
	if(isdefined(self.var_717108ce) && isdefined(self.var_717108ce.var_815502c4))
	{
		var_5143a614 = self.var_717108ce.var_815502c4;
	}
	self function_e57ea743(var_a0d5568b, var_79b9c7a7, var_5143a614, var_717108ce, 1, var_12065f0b);
}

/*
	Name: function_6eceec3e
	Namespace: namespace_7244fa9b
	Checksum: 0xE9674F73
	Offset: 0x15A8
	Size: 0x287
	Parameters: 2
	Flags: None
*/
function function_6eceec3e(var_f1f6e3d, var_28a08272)
{
	self notify("hash_565daac6");
	self endon("hash_565daac6");
	self endon("hash_128f8789");
	var_ebef42da = function_72a94f05(2, 4);
	if(function_6e2770d8(var_f1f6e3d) && var_f1f6e3d.size <= 0)
	{
		return;
	}
	var_5e76f0af = 0;
	var_34fb19f = var_f1f6e3d;
	while(1)
	{
		while(isdefined(self.var_8722cfb))
		{
			wait(0.05);
			continue;
		}
		if(function_6e2770d8(var_f1f6e3d))
		{
			self function_5ee81302(var_f1f6e3d[var_5e76f0af], var_28a08272);
			if(!function_4451c715(var_f1f6e3d[var_5e76f0af]) && isdefined(var_f1f6e3d[var_5e76f0af].var_7d402220))
			{
				wait(var_f1f6e3d[var_5e76f0af].var_7d402220);
			}
		}
		else
		{
			var_f1f6e3d = function_b75b8fc4(var_f1f6e3d);
			self function_5ee81302(var_f1f6e3d, var_28a08272);
			if(!function_4451c715(var_f1f6e3d) && isdefined(var_f1f6e3d.var_7d402220))
			{
				wait(var_f1f6e3d.var_7d402220);
			}
		}
		var_668981a4 = 0;
		if(function_6e2770d8(var_f1f6e3d))
		{
			var_5e76f0af = var_5e76f0af + 1;
			if(var_5e76f0af >= var_f1f6e3d.size)
			{
				var_5e76f0af = 0;
				var_668981a4 = 1;
			}
		}
		else if(var_f1f6e3d == var_34fb19f)
		{
			var_668981a4 = 1;
		}
		if(var_668981a4)
		{
			self notify("hash_b39fffd7");
			if(isdefined(var_28a08272))
			{
				var_28a08272 notify("hash_b39fffd7");
			}
		}
	}
}

/*
	Name: function_9c1ac1cb
	Namespace: namespace_7244fa9b
	Checksum: 0x72002CC2
	Offset: 0x1838
	Size: 0x3BB
	Parameters: 3
	Flags: None
*/
function function_9c1ac1cb(var_b8b1f3cd, var_8c915b2, var_5d61a864)
{
	self notify("hash_9c1ac1cb");
	self endon("hash_9c1ac1cb");
	self endon("hash_128f8789");
	var_37613e3e = self.var_722885f3;
	var_e651c736 = self.var_9d097bf8;
	var_c8240fdb = function_f679a325(self.var_9d097bf8);
	var_ed017668 = var_8c915b2 * 4;
	var_b996323e = function_73b84f4d(self.var_9d097bf8) / var_ed017668 * 2;
	var_a4ad846c = GetTime();
	var_ea09f212 = var_8c915b2 * 1000;
	var_1632b53d = var_ea09f212 * 0.75;
	var_82dfe931 = 0;
	var_3d372c1a = 65000;
	if(!isdefined(var_5d61a864) || var_5d61a864)
	{
		self endon("hash_9744842a");
	}
	while(GetTime() - var_a4ad846c < var_ea09f212)
	{
		if(!var_82dfe931 && GetTime() - var_a4ad846c > var_1632b53d)
		{
			self notify("hash_9744842a");
			var_82dfe931 = 1;
		}
		var_754498d2 = function_33724181(GetTime() - var_a4ad846c) / 1000;
		var_67fe8eb1 = function_95d0212b(var_754498d2, var_ed017668);
		var_e42cf565 = var_37613e3e + var_e651c736 * var_67fe8eb1;
		var_7a592a87 = var_e42cf565 + var_c8240fdb * var_b996323e * -0.5 * var_67fe8eb1 * var_67fe8eb1;
		var_60941c0a = var_754498d2 / var_8c915b2;
		var_60941c0a = 1 - 0.5 + function_ef0a72b2(var_60941c0a * 180) * 0.5;
		var_515ca7cf = var_b8b1f3cd;
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_515ca7cf));
		#/
		var_525ff8f3 = function_2049593f(var_7a592a87, var_515ca7cf, var_60941c0a);
		self.var_9d097bf8 = var_525ff8f3 - self.var_722885f3 / 0.05;
		if(var_525ff8f3[0] > var_3d372c1a * -1 && var_525ff8f3[0] < var_3d372c1a && var_525ff8f3[1] > var_3d372c1a * -1 && var_525ff8f3[1] < var_3d372c1a && var_525ff8f3[2] > var_3d372c1a * -1 && var_525ff8f3[2] < var_3d372c1a)
		{
			self.var_722885f3 = var_525ff8f3;
		}
		wait(0.05);
	}
}

/*
	Name: function_b75b8fc4
	Namespace: namespace_7244fa9b
	Checksum: 0x7FDDA166
	Offset: 0x1C00
	Size: 0x17F
	Parameters: 1
	Flags: None
*/
function function_b75b8fc4(var_90ca1fdd)
{
	if(!isdefined(var_90ca1fdd))
	{
		return undefined;
	}
	var_e236c887 = undefined;
	var_702f594c = undefined;
	if(isdefined(var_90ca1fdd.var_b07228b6) && isdefined(var_90ca1fdd.var_9194748))
	{
		var_e236c887 = namespace_14b42b8a::function_7922262b(var_90ca1fdd.var_b07228b6, "targetname");
		var_702f594c = namespace_14b42b8a::function_7922262b(var_90ca1fdd.var_9194748, "script_linkname");
	}
	else if(isdefined(var_90ca1fdd.var_b07228b6))
	{
		var_e236c887 = namespace_14b42b8a::function_7922262b(var_90ca1fdd.var_b07228b6, "targetname");
	}
	else if(isdefined(var_90ca1fdd.var_9194748))
	{
		var_e236c887 = namespace_14b42b8a::function_7922262b(var_90ca1fdd.var_9194748, "script_linkname");
	}
	if(isdefined(var_e236c887) && isdefined(var_702f594c))
	{
		if(function_72a94f05(0, 1) < 0.5)
		{
			return var_e236c887;
		}
		return var_702f594c;
	}
	return var_e236c887;
}

/*
	Name: function_5ee81302
	Namespace: namespace_7244fa9b
	Checksum: 0x64B88B7E
	Offset: 0x1D88
	Size: 0x1D7
	Parameters: 2
	Flags: None
*/
function function_5ee81302(var_79b9c7a7, var_5e36fd2e)
{
	self notify("hash_5ee81302");
	self endon("hash_5ee81302");
	self endon("hash_128f8789");
	if(function_fd096044(var_79b9c7a7))
	{
		var_79b9c7a7 endon("hash_128f8789");
		while(1)
		{
			var_dd89f865 = function_9bab0bf(var_79b9c7a7);
			var_f1646c95 = var_dd89f865 - self.var_722885f3;
			var_f1646c95 = var_f1646c95 * 0.2;
			self.var_722885f3 = self.var_722885f3 + var_f1646c95;
			wait(0.05);
		}
	}
	else
	{
		var_d007da9e = 200;
		var_dd89f865 = function_9bab0bf(var_79b9c7a7);
		var_60db70fa = function_7d15e2f8(var_dd89f865, self.var_722885f3) / var_d007da9e;
		var_779fd53f = 0;
		if(isdefined(var_5e36fd2e) && isdefined(var_5e36fd2e.var_26c21ea3))
		{
			var_779fd53f = 1;
			var_60db70fa = function_95d0212b(var_60db70fa, var_5e36fd2e.var_26c21ea3);
		}
		if(var_60db70fa > 0)
		{
			self thread function_9c1ac1cb(var_dd89f865, var_60db70fa, var_779fd53f);
			self waittill("hash_9744842a");
		}
	}
}

/*
	Name: function_e57ea743
	Namespace: namespace_7244fa9b
	Checksum: 0x602AA1C0
	Offset: 0x1F68
	Size: 0x271
	Parameters: 6
	Flags: None
*/
function function_e57ea743(var_a0d5568b, var_79b9c7a7, var_5143a614, var_717108ce, var_f7b61010, var_12065f0b)
{
	if(!isdefined(var_12065f0b))
	{
		var_12065f0b = 1;
	}
	if(isdefined(self.var_8722cfb) && (!var_12065f0b || self.var_8722cfb == var_79b9c7a7))
	{
		return;
	}
	self notify("hash_e57ea743");
	self endon("hash_e57ea743");
	self endon("hash_128f8789");
	self.var_8722cfb = var_79b9c7a7;
	self thread function_5ee81302(var_79b9c7a7, var_717108ce);
	var_2cbaef6c = 0;
	var_4bbe1b92 = 0;
	var_94a708a2 = 0;
	if(isdefined(var_717108ce.var_dfa3c2cb))
	{
		var_94a708a2 = var_717108ce.var_dfa3c2cb;
	}
	if(!isdefined(var_f7b61010))
	{
		var_f7b61010 = 1;
	}
	while(1)
	{
		if(var_4bbe1b92 >= var_94a708a2)
		{
			if(function_8d0347b8(var_717108ce))
			{
				var_717108ce.var_5fb3c5fe = !var_f7b61010;
				if(var_f7b61010)
				{
					var_717108ce.var_8c2ddc6 = GetTime();
				}
			}
		}
		if(!isdefined(var_79b9c7a7) || var_2cbaef6c >= var_5143a614)
		{
			self notify("hash_5ee81302");
			break;
		}
		if(!function_e7865c4b(var_a0d5568b, function_9bab0bf(var_79b9c7a7), 0, undefined))
		{
			var_2cbaef6c = var_2cbaef6c + 0.05;
		}
		else
		{
			var_2cbaef6c = 0;
		}
		var_4bbe1b92 = var_4bbe1b92 + 0.05;
		wait(0.05);
	}
	if(function_8d0347b8(var_717108ce))
	{
		var_717108ce.var_5fb3c5fe = 1;
	}
	self.var_8722cfb = undefined;
}

/*
	Name: function_821cb119
	Namespace: namespace_7244fa9b
	Checksum: 0xD61442D7
	Offset: 0x21E8
	Size: 0x45
	Parameters: 1
	Flags: None
*/
function function_821cb119(var_717108ce)
{
	if(!isdefined(var_717108ce))
	{
		return 0;
	}
	if(!isdefined(var_717108ce.var_8c2ddc6))
	{
		return 0;
	}
	return GetTime() - var_717108ce.var_8c2ddc6 < 3000;
}

