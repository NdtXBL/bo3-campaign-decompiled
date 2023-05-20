#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\doors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_cba4cc55;

/*
	Name: function_588a8011
	Namespace: namespace_cba4cc55
	Checksum: 0xF656144A
	Offset: 0x3E0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_588a8011()
{
	self endon("hash_128f8789");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_b07228b6), "Dev Block strings are not supported" + self.var_722885f3 + "Dev Block strings are not supported");
	#/
	var_598dabc3 = function_99201f25(self.var_b07228b6, "targetname");
	self waittill("hash_4dbf3ae3");
	self namespace_82b91a51::function_7d402220();
	namespace_84970cc4::function_966ecb29(var_598dabc3, &function_2c2e94d1);
}

/*
	Name: function_2c2e94d1
	Namespace: namespace_cba4cc55
	Checksum: 0x1CB32DF2
	Offset: 0x4A0
	Size: 0x215
	Parameters: 0
	Flags: None
*/
function function_2c2e94d1()
{
	self namespace_82b91a51::function_7d402220();
	var_60db70fa = 0.5;
	if(isdefined(self.var_6604b19f))
	{
		var_60db70fa = self.var_6604b19f;
	}
	if(!isdefined(self.var_db7bb468))
	{
		self.var_db7bb468 = "move";
	}
	switch(self.var_db7bb468)
	{
		case "rotate":
		{
			if(isdefined(self.var_e90a6b23))
			{
				self function_c0b6566f(self.var_e90a6b23, var_60db70fa, 0, 0);
			}
			else if(isdefined(self.var_8202763a))
			{
				self function_21d0da55(self.var_8202763a, var_60db70fa, 0, 0);
			}
			break;
		}
		case "move":
		case default:
		{
			self function_b0b70abb(1);
			if(isdefined(self.var_bad30b66))
			{
				var_9b0373e4 = self.var_bad30b66;
				if(var_60db70fa >= 0.5)
				{
					self function_a96a2721(self.var_722885f3 + self.var_bad30b66, var_60db70fa, var_60db70fa * 0.25, var_60db70fa * 0.25);
				}
				else
				{
					self function_a96a2721(self.var_722885f3 + self.var_bad30b66, var_60db70fa);
				}
			}
			else if(isdefined(self.var_8202763a))
			{
				self function_8bdea13c(self.var_8202763a, var_60db70fa, 0, 0);
			}
			wait(var_60db70fa);
			self function_b0b70abb(0);
			break;
		}
	}
}

/*
	Name: function_f20239
	Namespace: namespace_cba4cc55
	Checksum: 0xCD27B823
	Offset: 0x6C0
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_f20239(var_e8ea412b)
{
	if(!isdefined(var_e8ea412b))
	{
		var_e8ea412b = 256;
	}
	self endon("hash_128f8789");
	self endon("hash_5906526");
	var_175d1224 = self.var_6ab6f4fd;
	var_f1b873af = (270, 90, 180);
	while(isdefined(self))
	{
		var_6bfe1586 = function_e7bdc1a1(self.var_722885f3, level.var_2395e945, var_e8ea412b);
		if(!isdefined(var_6bfe1586))
		{
			if(self.var_6ab6f4fd != var_175d1224)
			{
				self function_c0b6566f(var_175d1224, 1);
			}
			wait(1);
			continue;
		}
		var_6ff03bd5 = function_bdcdc423(var_6bfe1586.var_722885f3 - self.var_722885f3);
		var_d9f1bf1e = (0, var_6ff03bd5[1], 0) + var_f1b873af;
		self function_c0b6566f(var_d9f1bf1e, 0.5);
		self waittill("hash_6654e4f4");
	}
}

/*
	Name: function_359855
	Namespace: namespace_cba4cc55
	Checksum: 0xE7F08BE1
	Offset: 0x840
	Size: 0xFF
	Parameters: 1
	Flags: None
*/
function function_359855(var_e8ea412b)
{
	if(!isdefined(var_e8ea412b))
	{
		var_e8ea412b = 512;
	}
	self endon("hash_128f8789");
	self endon("hash_5906526");
	while(1)
	{
		var_6bfe1586 = function_e7bdc1a1(self.var_722885f3, level.var_2395e945, var_e8ea412b);
		if(!isdefined(var_6bfe1586))
		{
			if(isdefined(self.var_960fdad0))
			{
				self.var_960fdad0 = undefined;
				self function_873ad9f2();
			}
		}
		else if(!isdefined(self.var_960fdad0) || self.var_960fdad0 != var_6bfe1586)
		{
			self.var_960fdad0 = var_6bfe1586;
			self function_873ad9f2(self.var_960fdad0);
		}
		wait(1);
	}
}

/*
	Name: function_2065b4e9
	Namespace: namespace_cba4cc55
	Checksum: 0x998581EC
	Offset: 0x948
	Size: 0x77
	Parameters: 4
	Flags: None
*/
function function_2065b4e9(var_b904e29c, var_dbb2aef5, var_2b0c51d7, var_1b5295e)
{
	if(isdefined(var_dbb2aef5))
	{
		[[var_b904e29c]](var_dbb2aef5);
	}
	else
	{
		[[var_b904e29c]]();
	}
	if(isdefined(var_1b5295e))
	{
		[[var_2b0c51d7]](var_1b5295e);
	}
	else
	{
		[[var_2b0c51d7]]();
	}
}

/*
	Name: function_8b31a9a3
	Namespace: namespace_cba4cc55
	Checksum: 0xC677D0CA
	Offset: 0x9C8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_8b31a9a3()
{
	self notify("hash_f42cafec");
	self endon("hash_f42cafec");
	while(1)
	{
		var_b6b9582d = function_bd90138e();
		foreach(var_1e25855 in var_b6b9582d)
		{
			if(isdefined(var_1e25855))
			{
				var_1e25855 function_dc8c8404();
			}
		}
		wait(10);
	}
}

/*
	Name: function_36a6e271
	Namespace: namespace_cba4cc55
	Checksum: 0x28FDF9CE
	Offset: 0xAB8
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_36a6e271(var_a9fa335a, var_e3b635fb)
{
	if(!isdefined(var_e3b635fb))
	{
		var_e3b635fb = [];
	}
	while(1)
	{
		var_790129b = 0;
		var_6c4dd462 = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_32fa5072(self))
			{
				var_790129b++;
			}
		}
		foreach(var_d84e54db in var_e3b635fb)
		{
			if(var_d84e54db function_32fa5072(self))
			{
				var_6c4dd462++;
			}
		}
		if(var_790129b == level.var_2395e945.size && var_6c4dd462 == var_e3b635fb.size)
		{
			if(isdefined(var_a9fa335a) && var_a9fa335a)
			{
				self namespace_82b91a51::function_20ffc8ff();
			}
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_272df3bd
	Namespace: namespace_cba4cc55
	Checksum: 0xEFE2795C
	Offset: 0xC90
	Size: 0x8F
	Parameters: 4
	Flags: None
*/
function function_272df3bd(var_22ae8d39, var_8caa0808, var_d900369a, var_8b453fd2)
{
	/#
		if(isdefined(var_8b453fd2))
		{
			self endon(var_8b453fd2);
		}
		while(1)
		{
			if(isdefined(self) && isdefined(self.var_722885f3))
			{
				var_22ae8d39 = self.var_722885f3;
			}
			function_8f3e0f73(var_22ae8d39, var_8caa0808, var_d900369a);
			wait(0.05);
		}
	#/
}

/*
	Name: function_c22db411
	Namespace: namespace_cba4cc55
	Checksum: 0x1F255DC5
	Offset: 0xD28
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_c22db411(var_e0b7400e)
{
	switch(var_e0b7400e)
	{
		case 1:
		{
			self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
			break;
		}
		case 2:
		{
			self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
			break;
		}
		case 3:
		{
			self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_3");
			break;
		}
	}
	var_5955d439 = function_26299103(5);
	if(var_5955d439 == 0)
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "walk");
	}
	else if(var_5955d439 == 1)
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "run");
	}
	else
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
	}
}

/*
	Name: function_d2036e84
	Namespace: namespace_cba4cc55
	Checksum: 0x69546822
	Offset: 0xE98
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_d2036e84(var_ecc142a5, var_6203c1b5, var_bf402dd4)
{
	if(!isdefined(var_bf402dd4))
	{
		var_bf402dd4 = 1;
	}
	var_1cbcb46d = namespace_14b42b8a::function_7922262b(var_ecc142a5);
	var_1cbcb46d thread namespace_cc27597::function_43718187(level.var_2fd26037);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level namespace_ad23e503::function_1ab5ebec(var_6203c1b5);
	var_1cbcb46d namespace_cc27597::function_fcf56ab5();
}

/*
	Name: function_423cfae8
	Namespace: namespace_cba4cc55
	Checksum: 0x1EE48AA4
	Offset: 0xF50
	Size: 0x139
	Parameters: 2
	Flags: None
*/
function function_423cfae8(var_cbb15570, var_d51654a4)
{
	var_ae75b4be = namespace_14b42b8a::function_7faf4c39(var_cbb15570, "targetname");
	if(isdefined(var_ae75b4be) && var_ae75b4be.size > 0)
	{
		foreach(var_77b2d567 in var_ae75b4be)
		{
			if(var_d51654a4 === "open")
			{
				function_5a36b2c5();
				function_c4c41a9();
				continue;
			}
			function_b5a4f84f();
			function_651b78();
		}
	}
}

/*
	Name: function_c2ee574f
	Namespace: namespace_cba4cc55
	Checksum: 0xDF332340
	Offset: 0x1098
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_c2ee574f(var_ff608bc9, var_78962fff)
{
	self function_921a1574("evt_door_close_start");
	self function_c2931a36("evt_door_close_loop", 0.5);
	self function_a96a2721(self.var_722885f3 + var_ff608bc9, var_78962fff, var_78962fff * 0.1, var_78962fff * 0.25);
	self waittill("hash_a21db68a");
	self function_921a1574("evt_door_close_stop");
	self function_eaa69754(0.4);
}

/*
	Name: function_aef08215
	Namespace: namespace_cba4cc55
	Checksum: 0xCEE734E1
	Offset: 0x1188
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_aef08215()
{
	level endon("hash_c9e53487");
	self waittill("hash_4dbf3ae3", var_6bfe1586);
	level function_40077528(0.2, 2, self.var_722885f3, 5000);
}

/*
	Name: function_40077528
	Namespace: namespace_cba4cc55
	Checksum: 0x934C2773
	Offset: 0x11E8
	Size: 0x34B
	Parameters: 7
	Flags: None
*/
function function_40077528(var_e4fe6cc1, var_f05509e4, var_c6f2fa46, var_e8ea412b, var_77e1f19f, var_cab96061, var_f84d7dfe)
{
	if(!isdefined(var_e8ea412b))
	{
		var_e8ea412b = 5000;
	}
	if(!isdefined(var_77e1f19f))
	{
		var_77e1f19f = 1;
	}
	if(!isdefined(var_cab96061))
	{
		var_cab96061 = var_77e1f19f + 2;
	}
	if(!isdefined(var_f84d7dfe))
	{
		var_f84d7dfe = "cp_sgen_flood_earthquake_rumble";
	}
	var_6bfe1586 = namespace_84970cc4::function_47d18840(level.var_2395e945);
	var_c55dcd82 = namespace_d73b9283::function_4e8104ae(1700);
	function_5e09918e(var_f84d7dfe, var_6bfe1586.var_722885f3 + var_c55dcd82);
	function_9cf04c2e(var_e4fe6cc1, var_f05509e4, var_c6f2fa46, var_e8ea412b);
	if(var_e4fe6cc1 >= 3)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a notify("hash_c468597b");
			namespace_e216c11c::function_25294cfe("overlay", "earthquake_blur", var_5dc5e20a, 0.25);
			var_5dc5e20a namespace_82b91a51::function_67520c6a(var_f05509e4 + 3, "new_quake", &namespace_e216c11c::function_a5218027, "overlay", "earthquake_blur", var_5dc5e20a);
			var_5dc5e20a function_f1aa5a21("tankblast_mp", function_72a94f05(var_77e1f19f, var_cab96061));
		}
	}
	var_6cac4ba4 = (function_26299103(360), function_26299103(360), function_26299103(360));
	var_d230ad83 = function_bc7ce905(var_6cac4ba4);
	var_e8ea412b = function_72a94f05(500, 1000);
	var_7b7e3d11 = var_6bfe1586.var_722885f3 + var_d230ad83 * var_e8ea412b;
	function_37cbcf1a("evt_base_explo_deep", var_7b7e3d11);
}

/*
	Name: function_d455824c
	Namespace: namespace_cba4cc55
	Checksum: 0xD19FE14C
	Offset: 0x1540
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_d455824c()
{
	var_b71ed4a2 = (0, 0, 0);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_b71ed4a2 = var_b71ed4a2 + var_5dc5e20a.var_722885f3;
	}
	return var_b71ed4a2 / level.var_2395e945.size;
}

/*
	Name: function_a527e6f9
	Namespace: namespace_cba4cc55
	Checksum: 0xD2F2FE2F
	Offset: 0x15F8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a527e6f9()
{
	self.var_15dfd6c = 0.2;
	self.var_3a90f16b = 100;
	self.var_eddbd1e2 = 1;
	self function_22bedfa6(0.7);
	self namespace_71e9cb84::function_74d6b22f("robot_bubbles", 1);
}

/*
	Name: function_6d1a2a8d
	Namespace: namespace_cba4cc55
	Checksum: 0x55593771
	Offset: 0x1670
	Size: 0xD9
	Parameters: 2
	Flags: None
*/
function function_6d1a2a8d(var_cbb15570, var_1ba2b2a5)
{
	var_ac33ad59 = namespace_14b42b8a::function_7faf4c39("cp_coop_spawn", "targetname");
	foreach(var_7aeac9c6 in var_ac33ad59)
	{
		if(var_7aeac9c6.var_ff1f6868 === var_cbb15570)
		{
			var_7aeac9c6.var_ff1f6868 = var_1ba2b2a5;
		}
	}
}

/*
	Name: function_ceda7454
	Namespace: namespace_cba4cc55
	Checksum: 0x5521EADB
	Offset: 0x1758
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_ceda7454()
{
	if(function_e70ab977(self))
	{
		self function_9869ab67(self.var_722885f3 + level.var_c490ab3b, self.var_6ab6f4fd);
	}
	else
	{
		self.var_722885f3 = self.var_722885f3 + level.var_c490ab3b;
	}
}

/*
	Name: function_9cb9697d
	Namespace: namespace_cba4cc55
	Checksum: 0x9827C40C
	Offset: 0x17C8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_9cb9697d(var_294306eb)
{
	if(namespace_cc27597::function_444aea32(var_294306eb))
	{
		namespace_cc27597::function_fcf56ab5(var_294306eb);
	}
}

/*
	Name: function_169ff177
	Namespace: namespace_cba4cc55
	Checksum: 0x4BBDA627
	Offset: 0x1810
	Size: 0x123
	Parameters: 5
	Flags: None
*/
function function_169ff177(var_bb9e181, var_6d8cce82, var_3d420807, var_66ae145d, var_3e87e125)
{
	if(!isdefined(var_bb9e181))
	{
		var_bb9e181 = 0;
	}
	self.var_216251ed = function_9b7fda5e("script_model", self.var_722885f3);
	self.var_216251ed.var_6ab6f4fd = self.var_6ab6f4fd;
	self.var_216251ed function_e48f905e("tag_origin");
	self function_6fa6b424(0);
	if(var_bb9e181)
	{
		self function_ed594d21(self.var_216251ed, "tag_origin", 1, var_6d8cce82, var_3d420807, var_66ae145d, var_3e87e125, 1);
	}
	else
	{
		self function_f7477112(self.var_216251ed, "tag_origin");
	}
}

/*
	Name: function_72f4d03c
	Namespace: namespace_cba4cc55
	Checksum: 0xD1E9FC39
	Offset: 0x1940
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_72f4d03c()
{
	if(isdefined(self.var_216251ed))
	{
		self.var_216251ed function_dc8c8404();
		self function_6fa6b424(1);
	}
}

/*
	Name: function_deb49c87
	Namespace: namespace_cba4cc55
	Checksum: 0x6F5CC564
	Offset: 0x1990
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_deb49c87(var_97b06487)
{
	var_ee3cd374 = var_97b06487 - var_97b06487 % 10;
	if(var_ee3cd374 < var_97b06487)
	{
		var_ee3cd374 = var_ee3cd374 + 10;
	}
	return var_ee3cd374;
}

/*
	Name: function_7073af93
	Namespace: namespace_cba4cc55
	Checksum: 0xFB4B8F22
	Offset: 0x19E8
	Size: 0xDD
	Parameters: 4
	Flags: None
*/
function function_7073af93(var_a60475e6, var_9c4565e, var_3758b6eb, var_37004b6e)
{
	if(self != level)
	{
		self endon("hash_128f8789");
	}
	level namespace_957e94ce::function_1ab5ebec(var_a60475e6 + "_playing");
	do
	{
		var_8b453fd2 = self namespace_82b91a51::function_45ce26d(var_9c4565e, var_a60475e6 + "_playing");
		if(var_8b453fd2 == var_9c4565e)
		{
			self thread [[var_3758b6eb]]();
		}
	}
	while(!(isdefined(var_37004b6e) && var_37004b6e && level namespace_957e94ce::function_7922262b(var_a60475e6 + "_playing")));
}

/*
	Name: function_207b5ccf
	Namespace: namespace_cba4cc55
	Checksum: 0x447689A9
	Offset: 0x1AD0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_207b5ccf()
{
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_82b91a51::function_c04ace5b, 0, 0.5);
}

/*
	Name: function_f39fff1a
	Namespace: namespace_cba4cc55
	Checksum: 0x438B8FFD
	Offset: 0x1B18
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f39fff1a()
{
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_82b91a51::function_c04ace5b, 1, 0.5);
}

/*
	Name: function_cb1e4146
	Namespace: namespace_cba4cc55
	Checksum: 0x8327AA49
	Offset: 0x1B60
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_cb1e4146(var_294306eb, var_54f8120e)
{
	level waittill(var_294306eb + "_done");
	namespace_82b91a51::function_93831e79(var_54f8120e);
}

/*
	Name: function_411dc61b
	Namespace: namespace_cba4cc55
	Checksum: 0xC46E378C
	Offset: 0x1BA8
	Size: 0xAF
	Parameters: 2
	Flags: None
*/
function function_411dc61b(var_a8a66403, var_df47d27)
{
	var_aaf585dc = var_a8a66403 - var_df47d27;
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_aaf585dc = var_aaf585dc + var_df47d27;
	}
	return var_aaf585dc;
}

/*
	Name: function_705fac33
	Namespace: namespace_cba4cc55
	Checksum: 0x876CEC4F
	Offset: 0x1C60
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_705fac33()
{
	level.var_d7c2e2b0 = level.var_2b829c4e;
	level.var_2b829c4e = &function_fad7287a;
}

/*
	Name: function_45953c88
	Namespace: namespace_cba4cc55
	Checksum: 0x10A275E
	Offset: 0x1C98
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_45953c88()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_d7c2e2b0));
	#/
	level.var_2b829c4e = level.var_d7c2e2b0;
	level notify("hash_e9a8e69c");
}

/*
	Name: function_fad7287a
	Namespace: namespace_cba4cc55
	Checksum: 0x2AEDE328
	Offset: 0x1CE8
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_fad7287a()
{
	level namespace_82b91a51::function_564f2d81("objective_changed", "hotjoin_enabled");
	return 1;
}

/*
	Name: function_3d026c12
	Namespace: namespace_cba4cc55
	Checksum: 0xE1CDECC7
	Offset: 0x1D20
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_3d026c12()
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 function_faf8f736(0);
		var_6bfe1586 namespace_82b91a51::function_c72856fc(1);
		var_6bfe1586 function_901e0817();
	}
}

/*
	Name: function_1581b116
	Namespace: namespace_cba4cc55
	Checksum: 0x789D6943
	Offset: 0x1DE8
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_1581b116()
{
	var_8ea4a872 = self function_21995b5a();
	foreach(var_1d6db0a3 in var_8ea4a872)
	{
		self function_704b802a(var_1d6db0a3);
		self function_67795b5f(var_1d6db0a3, var_1d6db0a3.var_c0b2188);
	}
}

/*
	Name: function_c8849158
	Namespace: namespace_cba4cc55
	Checksum: 0xAF54D07
	Offset: 0x1ED0
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_c8849158(var_ccd4343c, var_ee7dbbc9)
{
	self endon("hash_128f8789");
	var_2540d664 = 0;
	if(self namespace_957e94ce::function_7922262b("scriptedanim"))
	{
		self namespace_957e94ce::function_d3de6822("scriptedanim");
	}
	if(isdefined(var_ee7dbbc9))
	{
		wait(var_ee7dbbc9);
	}
	while(!var_2540d664)
	{
		wait(1);
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(function_85e4c3b3(self))
			{
				var_911c6902 = self function_4246bc05(var_5dc5e20a);
			}
			else if(function_8d0347b8(self))
			{
				var_911c6902 = self function_75754e3a(var_5dc5e20a);
			}
			else
			{
				namespace_33b293fd::function_94739542("Dev Block strings are not supported");
				return;
			}
			/#
			#/
			if(!var_911c6902 && function_7d15e2f8(self.var_722885f3, var_5dc5e20a.var_722885f3) > var_ccd4343c && var_5dc5e20a namespace_82b91a51::function_d61b846f(self.var_722885f3, undefined, 0) == 0)
			{
				var_2540d664 = 1;
			}
		}
	}
	self function_dc8c8404();
}

