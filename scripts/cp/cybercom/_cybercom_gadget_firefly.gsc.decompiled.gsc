#using scripts\codescripts\struct;
#using scripts\cp\_achievements;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\animation_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_3ed98204;

/*
	Name: function_c35e6aab
	Namespace: namespace_3ed98204
	Checksum: 0xD697869
	Offset: 0x8B0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_71e9cb84::function_50f16166("vehicle", "firefly_state", 1, 4, "int");
	namespace_71e9cb84::function_50f16166("actor", "firefly_state", 1, 4, "int");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_ability_firefly_launch_bundle", &function_1e89505d, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_ability_firebug_launch_bundle", &function_1e89505d, "play");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_3ed98204
	Checksum: 0xF97F2A90
	Offset: 0x980
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(2, 8, 1);
	level.var_175490fb.var_de159d8d = function_a8fb77bd();
	level.var_175490fb.var_de159d8d.var_875da84b = &function_875da84b;
	level.var_175490fb.var_de159d8d.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_de159d8d.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_de159d8d.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_de159d8d.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_de159d8d.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_de159d8d.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_de159d8d.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_875da84b
	Namespace: namespace_3ed98204
	Checksum: 0xADC32B30
	Offset: 0xB10
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_3ed98204
	Checksum: 0x5F7CE284
	Offset: 0xB28
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_3ed98204
	Checksum: 0xD8EA36DE
	Offset: 0xB48
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_9d8e0758 = &function_8aac802c;
	self.var_175490fb.var_c40accd3 = &function_602b28e9;
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
	self namespace_175490fb::function_8257bcb3("base_rifle", 2);
	self namespace_175490fb::function_8257bcb3("fem_rifle", 2);
	self namespace_175490fb::function_8257bcb3("riotshield", 2);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_3ed98204
	Checksum: 0xAFACF266
	Offset: 0xC20
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_5d2fec30
	Namespace: namespace_3ed98204
	Checksum: 0x99EC1590
	Offset: 0xC40
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_3ed98204
	Checksum: 0x2F1D4256
	Offset: 0xC50
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	namespace_175490fb::function_adc40f11(var_dfcc01fd, 1);
	self thread function_519bddcd(self function_1a9006bd("cybercom_fireflyswarm") == 2);
	self notify("hash_b64936fe", "firefly_deploy");
	if(function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_fireflyswarm");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_251e7cf
	Namespace: namespace_3ed98204
	Checksum: 0xC9F26572
	Offset: 0xD50
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_4135a1c4
	Namespace: namespace_3ed98204
	Checksum: 0x36B4B19
	Offset: 0xD70
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_4135a1c4(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_2cba8648
	Namespace: namespace_3ed98204
	Checksum: 0x6E6BEBCE
	Offset: 0xD90
	Size: 0x2DB
	Parameters: 3
	Flags: None
*/
function function_2cba8648(var_b07228b6, var_9bc2efcb, var_668a3301)
{
	if(!isdefined(var_9bc2efcb))
	{
		var_9bc2efcb = 1;
	}
	if(!isdefined(var_668a3301))
	{
		var_668a3301 = 1;
	}
	self endon("hash_128f8789");
	if(self.var_8fc0e50e != "human")
	{
		return;
	}
	if(isdefined(var_9bc2efcb) && var_9bc2efcb)
	{
		var_fe311e35 = self namespace_175490fb::function_5e3d3aa();
		self function_13ffb22b("face default");
		self function_5d64f4b4("ai_cybercom_anim", self.var_722885f3, self.var_6ab6f4fd, "ai_base_rifle_" + var_fe311e35 + "_exposed_cybercom_activate");
		self function_921a1574("gdt_firefly_activate_npc");
		self waittillmatch("hash_39fa7e38");
	}
	if(function_6e2770d8(var_b07228b6))
	{
		foreach(var_6b45b25e in var_b07228b6)
		{
			if(!isdefined(var_6b45b25e))
			{
				continue;
			}
			if(isdefined(var_6b45b25e.var_8fc0e50e) && (var_6b45b25e.var_8fc0e50e == "human" || var_6b45b25e.var_8fc0e50e == "human_riotshield" || var_6b45b25e.var_8fc0e50e == "zombie"))
			{
				self thread function_519bddcd(var_668a3301, var_6b45b25e, 1);
			}
		}
	}
	else if(isdefined(var_b07228b6))
	{
		if(isdefined(var_b07228b6.var_8fc0e50e) && (var_b07228b6.var_8fc0e50e == "human" || var_b07228b6.var_8fc0e50e == "human_riotshield" || var_b07228b6.var_8fc0e50e == "zombie"))
		{
			self thread function_519bddcd(var_668a3301, var_b07228b6);
		}
	}
}

/*
	Name: function_1e89505d
	Namespace: namespace_3ed98204
	Checksum: 0xF5D479F6
	Offset: 0x1078
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_1e89505d(var_c77d2837)
{
	var_6aea7e18 = var_c77d2837["ability_firefly_launch"];
	var_6aea7e18 waittill("hash_9571598b");
	if(isdefined(var_6aea7e18))
	{
		var_722885f3 = var_6aea7e18 function_d48f2ab3("tag_fx_01_end_jnt");
		var_6ab6f4fd = var_6aea7e18 function_cd1d99bd("tag_fx_01_end_jnt");
		var_6aea7e18 function_dc8c8404();
	}
	if(isdefined(self.var_5e36fd2e))
	{
		if(!isdefined(var_722885f3))
		{
			var_722885f3 = self.var_5e36fd2e.var_722885f3 + VectorScale((0, 0, 1), 72);
		}
		if(!isdefined(var_6ab6f4fd))
		{
			var_6ab6f4fd = self.var_5e36fd2e.var_6ab6f4fd;
		}
		self.var_5e36fd2e notify("hash_74e27b96", var_722885f3, var_6ab6f4fd);
	}
}

/*
	Name: function_a767f9b4
	Namespace: namespace_3ed98204
	Checksum: 0x71A2327F
	Offset: 0x11A0
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_a767f9b4()
{
	var_c89de9c6 = function_c20c2e8();
	foreach(var_d84e54db in var_c89de9c6)
	{
		if(var_d84e54db === self)
		{
			continue;
		}
		if(var_d84e54db.var_375cf54a === 1)
		{
			var_d84e54db function_cceed911(self);
		}
	}
}

/*
	Name: function_519bddcd
	Namespace: namespace_3ed98204
	Checksum: 0xFA7BC0BE
	Offset: 0x1280
	Size: 0x967
	Parameters: 4
	Flags: None
*/
function function_519bddcd(var_668a3301, var_ddd6bbfd, var_b15e885a, var_b6dd531c)
{
	if(!isdefined(var_b15e885a))
	{
		var_b15e885a = function_4bd0142f("scr_firefly_swarm_count", 3);
	}
	if(!isdefined(var_b6dd531c))
	{
		var_b6dd531c = function_4bd0142f("scr_firefly_swarm_split_count", 0);
	}
	self endon("hash_128f8789");
	var_941c77ac = function_4bd0142f("scr_firefly_swarm_lifetime", 14);
	var_3691675 = var_b6dd531c;
	var_c1ee81b = 0;
	var_8cdffe04 = 0;
	var_4f33000c = [];
	if(isdefined(var_ddd6bbfd) && (isdefined(var_ddd6bbfd.var_93b5a824) && var_ddd6bbfd.var_93b5a824))
	{
		var_ddd6bbfd = undefined;
	}
	if(!function_85e4c3b3(self))
	{
		var_171f5aa7 = function_a8fb77bd();
		var_171f5aa7.var_5e36fd2e = self;
		if(function_65f192a6(self))
		{
			var_722885f3 = self function_501eb072();
			var_6ab6f4fd = self function_89c87c9c();
		}
		else
		{
			var_722885f3 = self function_d48f2ab3("tag_eye");
			var_6ab6f4fd = self function_cd1d99bd("tag_eye");
		}
		var_2bcb465b = var_722885f3 + function_bc7ce905(var_6ab6f4fd) * 100;
		var_a52faa04 = function_e1dc201c(var_722885f3, var_2bcb465b, 0, undefined);
		if(var_a52faa04["fraction"] == 1)
		{
			var_171f5aa7.var_722885f3 = var_722885f3;
			var_171f5aa7.var_6ab6f4fd = var_6ab6f4fd;
			if(var_668a3301)
			{
				if(function_27c72c1b() && function_143fc4a5())
				{
				}
				else
				{
					var_171f5aa7 thread namespace_cc27597::function_43718187("p7_fxanim_gp_ability_firebug_launch_bundle");
					self waittill("hash_74e27b96", var_722885f3, var_6ab6f4fd);
				}
			}
			else if(function_27c72c1b() && function_143fc4a5())
			{
			}
			else
			{
				var_171f5aa7 thread namespace_cc27597::function_43718187("p7_fxanim_gp_ability_firefly_launch_bundle");
				self waittill("hash_74e27b96", var_722885f3, var_6ab6f4fd);
			}
		}
		else
		{
			var_722885f3 = self.var_722885f3 + VectorScale((0, 0, 1), 72);
			var_6ab6f4fd = self.var_6ab6f4fd;
		}
		if(var_668a3301)
		{
			var_941c77ac = function_4bd0142f("scr_firefly_swarm_upgraded_lifetime", 14);
			var_8cdffe04 = function_4bd0142f("scr_firefly_swarm_firebug_count", 1);
		}
		var_941c77ac = var_941c77ac * 1000;
		var_e0d7f279 = GetTime() + var_941c77ac;
		var_4f33000c = self function_cd0239e5(self.var_722885f3, self.var_6ab6f4fd);
		continue;
	}
	var_e0d7f279 = self.var_941c77ac;
	var_b15e885a = 1;
	var_3691675 = 0;
	var_c1ee81b = 1;
	if(isdefined(self.var_dd7b8ea))
	{
	}
	else
	{
	}
	var_8cdffe04 = 0;
	var_722885f3 = self.var_722885f3;
	var_6ab6f4fd = self.var_6ab6f4fd;
	while(var_b15e885a)
	{
		var_284c5bbb = function_ee83ff72("spawner_bo3_cybercom_firefly", var_722885f3, var_6ab6f4fd, "firefly_swarm");
		var_b15e885a--;
		if(isdefined(var_284c5bbb))
		{
			if(function_27c72c1b())
			{
				var_284c5bbb function_25b39be3(1);
			}
			var_284c5bbb.var_d28ae602 = -300;
			if(!isdefined(var_ddd6bbfd))
			{
				if(var_4f33000c.size)
				{
					var_ddd6bbfd = namespace_175490fb::function_5ee38fe3(var_284c5bbb.var_722885f3, var_4f33000c);
					function_81403b2f(var_4f33000c, var_ddd6bbfd, 0);
				}
			}
			var_284c5bbb.var_2344774d = level.var_175490fb.var_f9269224;
			var_284c5bbb.var_5e36fd2e = self;
			var_284c5bbb.var_3e94206a = self.var_3e94206a;
			var_284c5bbb.var_941c77ac = var_e0d7f279;
			var_284c5bbb.var_3691675 = var_3691675;
			var_284c5bbb.var_ddd6bbfd = var_ddd6bbfd;
			var_284c5bbb.var_35a76be7 = var_c1ee81b;
			var_284c5bbb.var_dd7b8ea = var_8cdffe04;
			var_284c5bbb.var_fb7ac308 = 1;
			var_284c5bbb.var_f96f74aa = function_a8fb77bd();
			var_284c5bbb.var_f96f74aa.var_d290ebfa = 0;
			var_284c5bbb.var_f96f74aa.var_69efbce5 = 0;
			var_284c5bbb.var_f96f74aa.var_6b84a4de = 0;
			var_284c5bbb.var_f96f74aa.var_492f3a52 = 0;
			var_284c5bbb.var_f96f74aa.var_193c0c5b = 0;
			var_284c5bbb function_a767f9b4();
			var_284c5bbb.var_bf0b4bb2 = namespace_bb771e9f::function_f7f12a75("brain", var_284c5bbb, "swarm_change_state");
			var_284c5bbb.var_bf0b4bb2 namespace_bb771e9f::function_26678920("init", &function_c57b33a, &function_cad082e8, &function_744baaac);
			var_284c5bbb.var_bf0b4bb2 namespace_bb771e9f::function_26678920("main", &function_c57b33a, &function_4a163234, &function_744baaac);
			var_284c5bbb.var_bf0b4bb2 namespace_bb771e9f::function_26678920("move", &function_c57b33a, &function_cf23fec8, &function_744baaac);
			var_284c5bbb.var_bf0b4bb2 namespace_bb771e9f::function_26678920("attack", &function_c57b33a, &function_36654cef, &function_744baaac);
			var_284c5bbb.var_bf0b4bb2 namespace_bb771e9f::function_26678920("hunt", &function_c57b33a, &function_a3deb004, &function_744baaac);
			var_284c5bbb.var_bf0b4bb2 namespace_bb771e9f::function_26678920("dead", &function_c57b33a, &function_b7b30921, &function_744baaac);
			var_284c5bbb.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("init");
			var_ddd6bbfd = undefined;
		}
		level notify("hash_61df3d1c", var_284c5bbb, self.var_dd7b8ea);
		level.var_175490fb.var_f9269224 = level.var_175490fb.var_f9269224 + 1;
		level.var_175490fb.var_12f85dec++;
	}
}

/*
	Name: function_54bc061f
	Namespace: namespace_3ed98204
	Checksum: 0x154F396E
	Offset: 0x1BF0
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_54bc061f()
{
	self endon("hash_128f8789");
	wait(0.1);
	for(;;)
	{
		self function_333fd8f0(self.var_c1239d26.var_c0fdf540);
		self.var_1cf0dd4a = function_93d07f7e();
		if(isdefined(self.var_1cf0dd4a))
		{
			var_30ca253a = 1;
			if(self.var_6511f34d === 0)
			{
				var_30ca253a = 0;
			}
			if(self function_c985552d(self.var_1cf0dd4a, 1, var_30ca253a))
			{
				self thread function_4891e8b4();
				self namespace_72ee5da4::function_3a863dac();
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_4891e8b4
	Namespace: namespace_3ed98204
	Checksum: 0x70CC82BA
	Offset: 0x1CE0
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_4891e8b4()
{
	self endon("hash_128f8789");
	self endon("hash_48a3d97f");
	self endon("hash_6cf6ac7e");
	wait(1);
	while(1)
	{
		if(isdefined(self.var_1cf0dd4a))
		{
			if(function_316422d1(self.var_1cf0dd4a, self.var_ae11119e) > self.var_7dfaf62 * self.var_7dfaf62)
			{
				wait(0.2);
				self notify("hash_48a3d97f");
			}
		}
		wait(0.2);
	}
}

/*
	Name: function_93d07f7e
	Namespace: namespace_3ed98204
	Checksum: 0x104AC3E7
	Offset: 0x1D88
	Size: 0x315
	Parameters: 0
	Flags: None
*/
function function_93d07f7e()
{
	if(self.var_3096a55f)
	{
		var_ae11119e = self function_8790dc2e(self.var_ae11119e, 100);
		if(isdefined(var_ae11119e))
		{
			if(function_cb3d1c9b(var_ae11119e, self.var_ae11119e) > 50 * 50)
			{
				self.var_6511f34d = 0;
			}
			return var_ae11119e;
		}
		return self.var_ae11119e;
	}
	var_961b3962 = 1;
	var_d5b210fc = function_54f69de9(self.var_722885f3, 80, 500 * var_961b3962, 500, 3 * self.var_f8456b37 * var_961b3962, self, self.var_f8456b37 * var_961b3962);
	function_9d329e33(var_d5b210fc, self);
	namespace_72ee5da4::function_dc90001d(var_d5b210fc);
	self.var_6511f34d = var_d5b210fc.var_1d8893fc;
	var_18db854 = undefined;
	var_71b668d0 = -999999;
	foreach(var_dd89f865 in var_d5b210fc.var_72254e15)
	{
		var_5eb06716 = function_72a94f05(0, 100);
		var_5795f122 = var_dd89f865.var_e2d16e6e * 0.2;
		var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + var_5eb06716 + var_5795f122;
		/#
			if(!isdefined(var_dd89f865.var_a3216a9f))
			{
				var_dd89f865.var_a3216a9f = [];
			}
			var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = var_5795f122;
		#/
		var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + var_5795f122;
		if(var_dd89f865.var_f1242439 > var_71b668d0)
		{
			var_71b668d0 = var_dd89f865.var_f1242439;
			var_18db854 = var_dd89f865;
		}
	}
	self namespace_72ee5da4::function_629ab2b1(var_d5b210fc);
	if(!isdefined(var_18db854))
	{
		return undefined;
	}
	return var_18db854.var_722885f3;
}

/*
	Name: function_744baaac
	Namespace: namespace_3ed98204
	Checksum: 0xF691E8F5
	Offset: 0x20A8
	Size: 0x45
	Parameters: 1
	Flags: None
*/
function function_744baaac(var_a8563e07)
{
	if(isdefined(self.var_fa1da7a7))
	{
		function_baa5973("swarmBP_" + self.var_2344774d);
		self.var_fa1da7a7 = undefined;
	}
}

/*
	Name: function_c57b33a
	Namespace: namespace_3ed98204
	Checksum: 0x7C4ABDD6
	Offset: 0x20F8
	Size: 0x13
	Parameters: 1
	Flags: None
*/
function function_c57b33a(var_a8563e07)
{
	wait(0.05);
}

/*
	Name: function_c7762542
	Namespace: namespace_3ed98204
	Checksum: 0xC9FC7B5D
	Offset: 0x2118
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_c7762542()
{
	if(self.var_3e94206a === "axis")
	{
		return "allies";
	}
	else
	{
		return "axis";
	}
}

/*
	Name: function_cad082e8
	Namespace: namespace_3ed98204
	Checksum: 0xE27D6667
	Offset: 0x2150
	Size: 0x633
	Parameters: 1
	Flags: None
*/
function function_cad082e8(var_a8563e07)
{
	self function_e48f905e("tag_origin");
	self function_422037f5();
	self.var_422037f5 = 1;
	self.var_ffaa44f = 0;
	self notify("hash_72a13f79");
	self.var_c584775c = 1;
	self.var_2dd707 = 0;
	self.var_7dfaf62 = 36;
	self.var_a1ed1ed1 = 36;
	self.var_b5a0facd = 1;
	self function_500dc2f7(48);
	self.var_c1239d26 = namespace_14b42b8a::function_b7af54ae("vehiclecustomsettings", self.var_279dd9e7);
	if(function_4bd0142f("scr_firefly_swarm_debug", 0))
	{
		self thread namespace_175490fb::function_252cee46();
	}
	self thread function_55a395c8();
	self thread function_99d5c745();
	self function_e11ce512();
	self function_169cc712(self.var_722885f3, 1, self.var_7dfaf62);
	if(!function_b62bb1c5(self.var_722885f3, "navvolume_small"))
	{
		if(isdefined(self.var_5e36fd2e))
		{
			var_74b53775 = self.var_5e36fd2e function_501eb072();
		}
		else
		{
			var_74b53775 = self.var_722885f3;
		}
		var_3985988f = self function_8790dc2e(var_74b53775, 100);
		if(isdefined(var_3985988f))
		{
			if(!self.var_dd7b8ea)
			{
				self namespace_71e9cb84::function_74d6b22f("firefly_state", 2);
			}
			else
			{
				self namespace_71e9cb84::function_74d6b22f("firefly_state", 7);
			}
			self function_c985552d(var_3985988f, 1, 0);
			self namespace_82b91a51::function_9fcf3cd8(2, "near_goal");
		}
	}
	self thread function_54bc061f();
	if(!(isdefined(self.var_35a76be7) && self.var_35a76be7))
	{
		var_657b1773 = self function_8aac802c();
		var_d9574143 = function_57efbe1(var_657b1773, self.var_722885f3, var_657b1773.size, 0, 512);
		if(var_d9574143.size == 0)
		{
			var_6ab6f4fd = (self.var_6ab6f4fd[0], self.var_6ab6f4fd[1], 0);
			var_2bcb465b = self.var_722885f3 + function_bc7ce905(var_6ab6f4fd) * 240;
			var_e4a8c6a4 = function_e1dc201c(self.var_722885f3, var_2bcb465b, 0, undefined, 1);
			var_a2dfe760 = var_e4a8c6a4["position"];
			var_d5b210fc = function_54f69de9(var_a2dfe760, 0, 72, 72, 20, self);
			if(var_d5b210fc.var_72254e15.size > 0)
			{
				var_6a3f1ca1 = self function_4a26559(self.var_722885f3, var_d5b210fc.var_72254e15[0].var_722885f3, 1, 0);
				if(var_6a3f1ca1)
				{
					if(function_4bd0142f("scr_firefly_swarm_debug", 0))
					{
						level thread namespace_175490fb::function_b5002a71(var_d5b210fc.var_72254e15[0].var_722885f3, 16, 10, (1, 0, 0));
					}
					self function_e11ce512();
					self function_169cc712(var_d5b210fc.var_72254e15[0].var_722885f3, 1, self.var_7dfaf62);
					if(!self.var_dd7b8ea)
					{
						self namespace_71e9cb84::function_74d6b22f("firefly_state", 2);
					}
					else
					{
						self namespace_71e9cb84::function_74d6b22f("firefly_state", 7);
					}
					self namespace_82b91a51::function_9fcf3cd8(5, "near_goal");
				}
			}
		}
	}
	if(isdefined(self.var_ddd6bbfd) && function_5b49d38c(self.var_ddd6bbfd))
	{
		self.var_ddd6bbfd.var_284c5bbb = self;
		self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("move");
	}
	else
	{
		self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("hunt");
	}
}

/*
	Name: function_99d5c745
	Namespace: namespace_3ed98204
	Checksum: 0x9631C0F9
	Offset: 0x2790
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_99d5c745()
{
	self endon("hash_c547a8e7");
	self endon("hash_128f8789");
	wait(3);
	while(self.var_3691675 > 0)
	{
		wait(0.5);
		var_98949c32 = self function_3ab9233(function_4bd0142f("scr_firefly_swarm_split_radius", 864));
		if(isdefined(var_98949c32))
		{
			self thread function_519bddcd(0, var_98949c32);
			self.var_3691675--;
		}
	}
}

/*
	Name: function_ba872fe6
	Namespace: namespace_3ed98204
	Checksum: 0x27B62359
	Offset: 0x2838
	Size: 0x34F
	Parameters: 1
	Flags: None
*/
function function_ba872fe6(var_b07228b6)
{
	var_5b928902 = [];
	var_a8728a16 = "base_rifle";
	if(isdefined(self.var_e4b959c5) && function_f45850ec(self.var_e4b959c5, 7) == "f")
	{
		var_a8728a16 = "fem_rifle";
	}
	else if(var_b07228b6.var_8fc0e50e === "human_riotshield")
	{
		var_a8728a16 = "riotshield";
	}
	var_fe311e35 = var_b07228b6 namespace_175490fb::function_5e3d3aa();
	if(var_fe311e35 == "")
	{
		var_b07228b6.var_284c5bbb = undefined;
		self.var_ddd6bbfd = undefined;
		var_b07228b6.var_86386274 = GetTime() + 1000;
		self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("main");
		return;
	}
	self thread function_45a6577f(var_b07228b6);
	self namespace_71e9cb84::function_74d6b22f("firefly_state", 1);
	var_a6216360 = self.var_5e36fd2e namespace_175490fb::function_e06423b6(var_a8728a16);
	if(self.var_dd7b8ea > 0)
	{
		self.var_dd7b8ea--;
		var_5b928902["intro"] = "ai_" + var_a8728a16 + "_" + var_fe311e35 + "_exposed_swarm_upg_react_intro" + var_a6216360;
		var_b07228b6 thread function_4c41b2f7(self, var_5b928902, function_c4d5ec1f("gadget_firefly_swarm_upgraded"));
		var_b07228b6 notify("hash_b64936fe", "fireflyAttack");
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 9);
	}
	else if(var_b07228b6.var_8fc0e50e === "human")
	{
		var_5b928902["intro"] = "ai_" + var_a8728a16 + "_" + var_fe311e35 + "_exposed_swarm_react_intro" + var_a6216360;
		var_5b928902["outro"] = "ai_" + var_a8728a16 + "_" + var_fe311e35 + "_exposed_swarm_react_outro" + var_a6216360;
	}
	else
	{
		var_5b928902 = [];
	}
	var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 4);
	var_b07228b6 thread function_34de18ba(self, var_5b928902, function_c4d5ec1f("gadget_firefly_swarm"));
	var_b07228b6 notify("hash_b64936fe", "fireflyAttack");
	self waittill("hash_b07f7e73");
}

/*
	Name: function_6fb6c7d7
	Namespace: namespace_3ed98204
	Checksum: 0xCD248B28
	Offset: 0x2B90
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_6fb6c7d7(var_b07228b6)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b07228b6));
	#/
	if(!self.var_dd7b8ea)
	{
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 4);
	}
	else
	{
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 9);
	}
	if(self.var_dd7b8ea > 0)
	{
		self.var_dd7b8ea--;
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("arch_actor_fire_fx", 1);
		var_b07228b6.var_3a90f16b = 1;
	}
	wait(1);
	if(isdefined(var_b07228b6))
	{
		var_b07228b6.var_284c5bbb = undefined;
	}
	wait(function_dc99997a(3, 7));
	if(isdefined(var_b07228b6) && function_5b49d38c(var_b07228b6))
	{
		var_b07228b6 function_c3945cd5(var_b07228b6.var_3a90f16b, var_b07228b6.var_722885f3, undefined, undefined, "none", "MOD_BURNED");
	}
}

/*
	Name: function_cb5f9a2
	Namespace: namespace_3ed98204
	Checksum: 0xCBD5A040
	Offset: 0x2D00
	Size: 0x1EF
	Parameters: 1
	Flags: None
*/
function function_cb5f9a2(var_b07228b6)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b07228b6));
	#/
	if(!self.var_dd7b8ea)
	{
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 4);
	}
	else
	{
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 9);
	}
	self thread function_45a6577f(var_b07228b6);
	self namespace_71e9cb84::function_74d6b22f("firefly_state", 1);
	var_5b928902 = [];
	if(self.var_dd7b8ea > 0 && var_b07228b6.var_3a90f16b <= function_4bd0142f("scr_firefly_swarm_warlord_hitpoint_allowed_thresh", 400))
	{
		self.var_dd7b8ea--;
		var_b07228b6 thread function_4c41b2f7(self, var_5b928902, function_c4d5ec1f("gadget_firefly_swarm_upgraded"));
		var_b07228b6 notify("hash_b64936fe", "fireflyAttack");
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 9);
	}
	else
	{
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 4);
		var_b07228b6 thread function_34de18ba(self, var_5b928902, function_c4d5ec1f("gadget_firefly_swarm"));
		var_b07228b6 notify("hash_b64936fe", "fireflyAttack");
	}
	self waittill("hash_b07f7e73");
}

/*
	Name: function_eb96939e
	Namespace: namespace_3ed98204
	Checksum: 0x6169CE67
	Offset: 0x2EF8
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_eb96939e(var_b07228b6)
{
	self thread function_326c3df4(var_b07228b6);
	if(isdefined(self.var_5e36fd2e))
	{
		var_a0ad4f34 = self.var_5e36fd2e;
	}
	else
	{
		var_a0ad4f34 = self;
	}
	var_b07228b6 function_c3945cd5(function_4bd0142f("scr_swarm_player_damage", 50), var_b07228b6.var_722885f3, var_a0ad4f34, self, "none", "MOD_UNKNOWN", 0, function_c4d5ec1f("gadget_firefly_swarm_upgraded"));
}

/*
	Name: function_36654cef
	Namespace: namespace_3ed98204
	Checksum: 0xF45241EF
	Offset: 0x2FC0
	Size: 0x39B
	Parameters: 1
	Flags: None
*/
function function_36654cef(var_a8563e07)
{
	self endon("hash_c547a8e7");
	self endon("hash_128f8789");
	self.var_f96f74aa.var_69efbce5++;
	self namespace_71e9cb84::function_74d6b22f("firefly_state", 1);
	var_b07228b6 = self.var_ddd6bbfd;
	if(!isdefined(var_b07228b6) || !function_5b49d38c(var_b07228b6))
	{
		self.var_ddd6bbfd = undefined;
		self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("main");
		return;
	}
	var_b07228b6 notify("hash_f8c5dd60", function_c4d5ec1f("gadget_firefly_swarm"), self.var_5e36fd2e);
	if(!self.var_dd7b8ea)
	{
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 4);
	}
	else
	{
		var_b07228b6 namespace_71e9cb84::function_74d6b22f("firefly_state", 9);
	}
	if(isdefined(var_b07228b6.var_8fc0e50e))
	{
		if(var_b07228b6.var_8fc0e50e == "human" || var_b07228b6.var_8fc0e50e == "human_riotshield")
		{
			self function_169cc712(self.var_ddd6bbfd.var_722885f3 + VectorScale((0, 0, 1), 48), 1, self.var_7dfaf62);
			function_48a41df0("swarmBP_" + self.var_2344774d, 0, var_b07228b6.var_722885f3, 256, 80, "axis");
			self.var_fa1da7a7 = 1;
			self function_ba872fe6(var_b07228b6);
		}
		else if(var_b07228b6.var_8fc0e50e == "zombie")
		{
			self function_6fb6c7d7(var_b07228b6);
		}
		else if(var_b07228b6.var_8fc0e50e == "warlord")
		{
			self function_cb5f9a2(var_b07228b6);
		}
	}
	else if(function_65f192a6(var_b07228b6))
	{
		self function_169cc712(self.var_ddd6bbfd.var_722885f3 + VectorScale((0, 0, 1), 48), 1, self.var_7dfaf62);
		function_48a41df0("swarmBP_" + self.var_2344774d, 0, var_b07228b6.var_722885f3, 256, 80, "axis");
		self.var_fa1da7a7 = 1;
		self function_eb96939e(var_b07228b6);
	}
	self.var_ddd6bbfd = undefined;
	self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("main");
	self.var_f96f74aa.var_69efbce5--;
}

/*
	Name: function_45a6577f
	Namespace: namespace_3ed98204
	Checksum: 0xCCF3C95B
	Offset: 0x3368
	Size: 0x3D
	Parameters: 1
	Flags: None
*/
function function_45a6577f(var_b07228b6)
{
	self endon("hash_128f8789");
	self endon("hash_b07f7e73");
	var_b07228b6 waittill("hash_128f8789");
	self notify("hash_b07f7e73");
}

/*
	Name: function_edd19e27
	Namespace: namespace_3ed98204
	Checksum: 0x96299D04
	Offset: 0x33B0
	Size: 0xB9
	Parameters: 3
	Flags: Private
*/
function private function_edd19e27(var_284c5bbb, var_5b928902, var_dfcc01fd)
{
	self endon("hash_128f8789");
	if(isdefined(var_284c5bbb))
	{
		self function_c3945cd5(5, self.var_722885f3, var_284c5bbb.var_5e36fd2e, var_284c5bbb, "none", "MOD_BURNED", 0, var_dfcc01fd, -1, 1);
	}
	if(!self namespace_175490fb::function_421746e0())
	{
		self waittillmatch("hash_5270341e");
	}
	self notify("hash_2a24f27a", "specialpain");
}

/*
	Name: function_6fffd543
	Namespace: namespace_3ed98204
	Checksum: 0x6A605B37
	Offset: 0x3478
	Size: 0x3B
	Parameters: 0
	Flags: Private
*/
function private function_6fffd543()
{
	self waittill("hash_c67510f3", var_1e25855);
	var_1e25855 namespace_71e9cb84::function_74d6b22f("arch_actor_fire_fx", 2);
}

/*
	Name: function_4c41b2f7
	Namespace: namespace_3ed98204
	Checksum: 0xDEC40CA7
	Offset: 0x34C0
	Size: 0x343
	Parameters: 3
	Flags: Private
*/
function private function_4c41b2f7(var_284c5bbb, var_5b928902, var_dfcc01fd)
{
	self endon("hash_128f8789");
	self.var_c584775c = 1;
	self.var_93b5a824 = 1;
	var_c318824b = 0;
	self notify("hash_37486b44", var_284c5bbb);
	level notify("hash_37486b44", self, var_284c5bbb);
	if(self namespace_175490fb::function_eee64fa2())
	{
		self function_52fddbd0();
		var_c318824b = 1;
	}
	if(!isdefined(var_c318824b) && var_c318824b && isdefined(var_5b928902["intro"]))
	{
		self function_5d64f4b4("swarm_intro_anim", self.var_722885f3, self.var_6ab6f4fd, var_5b928902["intro"]);
		self waittillmatch("hash_352d2dcc");
	}
	self namespace_71e9cb84::function_74d6b22f("arch_actor_fire_fx", 1);
	self thread function_6fffd543();
	if(!(isdefined(var_c318824b) && var_c318824b))
	{
		self thread function_edd19e27(var_284c5bbb, var_5b928902, var_dfcc01fd);
		self namespace_82b91a51::function_9fcf3cd8(function_4bd0142f("scr_firefly_swarm_human_burn_duration", 10), "firebug_time_to_die");
	}
	self namespace_71e9cb84::function_74d6b22f("firefly_state", 10);
	if(isdefined(var_284c5bbb))
	{
		var_284c5bbb notify("hash_b07f7e73", "end");
		if(isdefined(self.var_e4b959c5) && isdefined(self.var_273d3e89))
		{
			self thread namespace_76d95162::function_81d8fcf2(self.var_e4b959c5 + self.var_273d3e89 + "_exert_firefly_burning", 1);
		}
		var_284c5bbb.var_5e36fd2e notify("hash_304642e3");
		self function_c3945cd5(self.var_3a90f16b, self.var_722885f3, var_284c5bbb.var_5e36fd2e, var_284c5bbb, "none", "MOD_BURNED", 0, var_dfcc01fd, -1, 1);
	}
	else if(isdefined(self.var_e4b959c5) && isdefined(self.var_273d3e89))
	{
		self thread namespace_76d95162::function_81d8fcf2(self.var_e4b959c5 + self.var_273d3e89 + "_exert_firefly_burning", 1);
	}
	self function_c3945cd5(self.var_3a90f16b, self.var_722885f3, undefined, undefined, "none", "MOD_BURNED", 0, var_dfcc01fd, -1, 1);
}

/*
	Name: function_77e5963a
	Namespace: namespace_3ed98204
	Checksum: 0x188338F0
	Offset: 0x3810
	Size: 0x71
	Parameters: 1
	Flags: Private
*/
function private function_77e5963a(var_284c5bbb)
{
	while(isdefined(var_284c5bbb))
	{
		self namespace_82b91a51::function_9fcf3cd8(1, "damage");
		if(isdefined(self) && self.var_3a90f16b <= 0)
		{
			self namespace_71e9cb84::function_74d6b22f("firefly_state", 10);
			return;
		}
	}
}

/*
	Name: function_369d3494
	Namespace: namespace_3ed98204
	Checksum: 0x88C1F5D2
	Offset: 0x3890
	Size: 0x53
	Parameters: 1
	Flags: Private
*/
function private function_369d3494(var_284c5bbb)
{
	var_284c5bbb endon("hash_128f8789");
	self waittill("hash_c67510f3", var_1e25855);
	var_1e25855 namespace_71e9cb84::function_74d6b22f("firefly_state", 10);
}

/*
	Name: function_963f8ef6
	Namespace: namespace_3ed98204
	Checksum: 0xA54D7D0A
	Offset: 0x38F0
	Size: 0xB3
	Parameters: 4
	Flags: None
*/
function function_963f8ef6(var_12dfaaa8, var_22fd856d, var_1ccbc268, var_3fc1574)
{
	self endon("hash_128f8789");
	if(isdefined(var_3fc1574))
	{
		self endon(var_3fc1574);
		while(1)
		{
			if(isdefined(var_12dfaaa8))
			{
				self waittillmatch(var_12dfaaa8);
			}
			else
			{
				self waittill(var_22fd856d);
			}
			self notify(var_1ccbc268, var_22fd856d);
		}
	}
	else if(isdefined(var_12dfaaa8))
	{
		self waittillmatch(var_12dfaaa8);
	}
	else
	{
		self waittill(var_22fd856d);
	}
	self notify(var_1ccbc268, var_22fd856d);
}

/*
	Name: function_34de18ba
	Namespace: namespace_3ed98204
	Checksum: 0xA0B31D42
	Offset: 0x39B0
	Size: 0x46B
	Parameters: 3
	Flags: Private
*/
function private function_34de18ba(var_284c5bbb, var_5b928902, var_dfcc01fd)
{
	self endon("hash_128f8789");
	self thread function_369d3494(var_284c5bbb);
	var_ee89044a = self.var_48deb832;
	self.var_48deb832 = 0.1;
	self.var_93b5a824 = 1;
	self function_13ffb22b("face point", var_284c5bbb.var_722885f3);
	self notify("hash_4457f945", var_284c5bbb);
	level notify("hash_4457f945", self, var_284c5bbb);
	if(self namespace_175490fb::function_421746e0())
	{
		if(isdefined(var_284c5bbb.var_5e36fd2e))
		{
		}
		else
		{
		}
		self function_2992720d(self.var_722885f3, undefined);
		if(isdefined(var_284c5bbb))
		{
			var_284c5bbb notify("hash_b07f7e73", var_284c5bbb.var_5e36fd2e);
		}
		return;
	}
	if(!function_5b49d38c(self) || self function_10fe46aa())
	{
		return;
	}
	if(isdefined(var_5b928902["intro"]))
	{
		self function_5d64f4b4("swarm_intro_anim", self.var_722885f3, self.var_6ab6f4fd, var_5b928902["intro"]);
		self thread namespace_175490fb::function_cf64f12c("damage", "swarm_intro_anim");
		self waittillmatch("hash_352d2dcc");
	}
	for(var_69efbce5 = 1; var_69efbce5 && isdefined(var_284c5bbb);  = 1)
	{
		self function_c3945cd5(5, self.var_722885f3, var_284c5bbb.var_5e36fd2e, var_284c5bbb, "none", "MOD_UNKNOWN", 0, var_dfcc01fd, -1, 1);
		wait(0.05);
		self waittillmatch("hash_5270341e");
	}
	self notify("hash_b07f7e73", isdefined(var_284c5bbb) && (!isdefined(var_284c5bbb.var_24bf6015) && var_284c5bbb.var_24bf6015) && function_cb3d1c9b(self.var_722885f3 + VectorScale((0, 0, 1), 48), var_284c5bbb.var_722885f3) < function_4bd0142f("scr_firefly_swarm_attack_radius", 110) * function_4bd0142f("scr_firefly_swarm_attack_radius", 110) && function_5b49d38c(self), "specialpain", "end");
	if(function_5b49d38c(self) && !self function_10fe46aa())
	{
		self namespace_71e9cb84::function_74d6b22f("firefly_state", 5);
		self.var_48deb832 = var_ee89044a;
		self.var_284c5bbb = undefined;
		self function_13ffb22b("face default");
		if(isdefined(var_5b928902["outro"]))
		{
			self function_5d64f4b4("swarm_outro_anim", self.var_722885f3, self.var_6ab6f4fd, var_5b928902["outro"]);
			self thread namespace_175490fb::function_cf64f12c("damage", "swarm_outro_anim");
			self waittillmatch("hash_f331901");
		}
		self.var_93b5a824 = undefined;
	}
	if(isdefined(var_284c5bbb))
	{
		var_284c5bbb notify("hash_b07f7e73", "end");
	}
}

/*
	Name: function_4169c117
	Namespace: namespace_3ed98204
	Checksum: 0xBFE99AD4
	Offset: 0x3E28
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_4169c117()
{
	if(isdefined(self))
	{
		self notify("hash_c547a8e7");
		if(isdefined(self.var_ddd6bbfd) && !function_65f192a6(self.var_ddd6bbfd))
		{
			self.var_ddd6bbfd namespace_71e9cb84::function_74d6b22f("firefly_state", 5);
			self.var_ddd6bbfd.var_284c5bbb = undefined;
			self.var_ddd6bbfd.var_ce97216f = GetTime() + 2000;
		}
		level.var_175490fb.var_12f85dec--;
		namespace_4a344d81::function_b2d1aafa();
		self function_744baaac();
		self function_dc8c8404();
	}
}

/*
	Name: function_55a395c8
	Namespace: namespace_3ed98204
	Checksum: 0x1815D5B3
	Offset: 0x3F18
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_55a395c8()
{
	self endon("hash_128f8789");
	while(GetTime() < self.var_941c77ac)
	{
		wait(1);
	}
	self.var_24bf6015 = 1;
	wait(2);
	self function_4169c117();
}

/*
	Name: function_b7b30921
	Namespace: namespace_3ed98204
	Checksum: 0x401B90A4
	Offset: 0x3F70
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_b7b30921(var_a8563e07)
{
	self notify("hash_c547a8e7");
	self endon("hash_128f8789");
	self function_e11ce512();
	if(!self.var_dd7b8ea)
	{
		self namespace_71e9cb84::function_74d6b22f("firefly_state", 5);
	}
	else
	{
		self namespace_71e9cb84::function_74d6b22f("firefly_state", 10);
	}
	if(isdefined(self.var_ddd6bbfd) && !function_65f192a6(self.var_ddd6bbfd))
	{
		self.var_ddd6bbfd namespace_71e9cb84::function_74d6b22f("firefly_state", 5);
		self.var_ddd6bbfd.var_284c5bbb = undefined;
		self.var_ddd6bbfd.var_ce97216f = GetTime() + 2000;
	}
	self namespace_96fa87af::function_42496438(0);
	if(isdefined(self.var_5e36fd2e))
	{
		self.var_5e36fd2e notify("hash_b64936fe", "firefly_end");
	}
	wait(3);
	self function_4169c117();
}

/*
	Name: function_4a163234
	Namespace: namespace_3ed98204
	Checksum: 0x1E0A005D
	Offset: 0x40D8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_4a163234(var_a8563e07)
{
	self endon("hash_c547a8e7");
	self endon("hash_128f8789");
	if(isdefined(self.var_24bf6015) && self.var_24bf6015)
	{
		self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("dead");
		return;
	}
	self.var_f96f74aa.var_d290ebfa++;
	if(!isdefined(self.var_ddd6bbfd))
	{
		self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("hunt");
	}
	else if(function_cb3d1c9b(self.var_ddd6bbfd.var_722885f3 + VectorScale((0, 0, 1), 48), self.var_722885f3) > function_4bd0142f("scr_firefly_swarm_attack_radius", 110) * function_4bd0142f("scr_firefly_swarm_attack_radius", 110))
	{
		self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("move");
	}
	else
	{
		self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("attack");
	}
	self.var_f96f74aa.var_d290ebfa--;
}

/*
	Name: function_8aac802c
	Namespace: namespace_3ed98204
	Checksum: 0x378BF8F3
	Offset: 0x4250
	Size: 0xF1
	Parameters: 0
	Flags: Private
*/
function private function_8aac802c()
{
	var_221351df = function_525ae497(function_24e95264(self function_c7762542(), "human"), function_24e95264("team3", "human"), 0, 0);
	var_debfe596 = function_525ae497(function_24e95264(self function_c7762542(), "zombie"), function_24e95264("team3", "zombie"), 0, 0);
	return function_525ae497(var_221351df, var_debfe596, 0, 0);
}

/*
	Name: function_602b28e9
	Namespace: namespace_3ed98204
	Checksum: 0xCD42BBF
	Offset: 0x4350
	Size: 0x1C7
	Parameters: 1
	Flags: Private
*/
function private function_602b28e9(var_b07228b6)
{
	if(isdefined(self.var_5e36fd2e) && !self.var_5e36fd2e namespace_175490fb::function_7a7d1608(var_b07228b6, function_c4d5ec1f("gadget_firefly_swarm")))
	{
		return 0;
	}
	if(var_b07228b6.var_8fc0e50e != "human" && var_b07228b6.var_8fc0e50e != "human_riotshield" && var_b07228b6.var_8fc0e50e != "zombie" && var_b07228b6.var_8fc0e50e != "warlord")
	{
		return 0;
	}
	if(var_b07228b6 namespace_175490fb::function_8fd8f5b1("cybercom_fireflyswarm"))
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_284c5bbb))
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_86386274))
	{
		if(var_b07228b6.var_86386274 > GetTime())
		{
			return 0;
		}
		var_b07228b6.var_86386274 = undefined;
	}
	if(isdefined(var_b07228b6.var_ce97216f) && GetTime() < var_b07228b6.var_ce97216f)
	{
		return 0;
	}
	if(function_8d0347b8(var_b07228b6) && var_b07228b6 namespace_175490fb::function_78525729() != "stand" && var_b07228b6 namespace_175490fb::function_78525729() != "crouch")
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_cd0239e5
	Namespace: namespace_3ed98204
	Checksum: 0x96F2D438
	Offset: 0x4520
	Size: 0x1A1
	Parameters: 4
	Flags: None
*/
function function_cd0239e5(var_722885f3, var_6ab6f4fd, var_10a84c6e, var_1a6983c2)
{
	if(!isdefined(var_10a84c6e))
	{
		var_10a84c6e = function_4bd0142f("scr_firefly_swarm_hunt_radius", 1536);
	}
	if(!isdefined(var_1a6983c2))
	{
		var_1a6983c2 = function_ef0a72b2(45);
	}
	var_657b1773 = self function_8aac802c();
	var_d9574143 = function_57efbe1(var_657b1773, var_722885f3, var_657b1773.size, 0, var_10a84c6e);
	var_4f33000c = [];
	foreach(var_6b45b25e in var_d9574143)
	{
		if(!function_602b28e9(var_6b45b25e))
		{
			continue;
		}
		if(namespace_82b91a51::function_22ff7ff0(var_722885f3, var_6ab6f4fd, var_6b45b25e.var_722885f3, var_1a6983c2))
		{
			var_4f33000c[var_4f33000c.size] = var_6b45b25e;
		}
	}
	return var_4f33000c;
}

/*
	Name: function_3ab9233
	Namespace: namespace_3ed98204
	Checksum: 0x1A5D1EB0
	Offset: 0x46D0
	Size: 0x223
	Parameters: 1
	Flags: None
*/
function function_3ab9233(var_10a84c6e)
{
	if(!isdefined(var_10a84c6e))
	{
		var_10a84c6e = function_4bd0142f("scr_firefly_swarm_hunt_radius", 1536);
	}
	self endon("hash_c547a8e7");
	self endon("hash_128f8789");
	var_657b1773 = self function_8aac802c();
	var_d9574143 = function_57efbe1(var_657b1773, self.var_722885f3, var_657b1773.size, 0, var_10a84c6e);
	var_b4d58996 = undefined;
	while(var_d9574143.size > 0)
	{
		var_b4d58996 = namespace_175490fb::function_5ee38fe3(self.var_722885f3, var_d9574143, var_10a84c6e);
		if(!function_602b28e9(var_b4d58996))
		{
			function_81403b2f(var_d9574143, var_b4d58996, 0);
			var_b4d58996 = undefined;
			wait(0.05);
			continue;
		}
		if(!isdefined(var_b4d58996))
		{
			break;
		}
		var_6a3f1ca1 = 0;
		var_d5b210fc = function_54f69de9(var_b4d58996.var_722885f3, 0, 128, 128, 20, self);
		if(var_d5b210fc.var_72254e15.size > 0)
		{
			var_6a3f1ca1 = self function_4a26559(self.var_722885f3, var_d5b210fc.var_72254e15[0].var_722885f3, 1, 0);
		}
		if(!var_6a3f1ca1)
		{
			function_81403b2f(var_d9574143, var_b4d58996, 0);
			var_b4d58996 = undefined;
			wait(0.05);
			continue;
		}
		break;
	}
	return var_b4d58996;
}

/*
	Name: function_a3deb004
	Namespace: namespace_3ed98204
	Checksum: 0x3963BB96
	Offset: 0x4900
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_a3deb004(var_a8563e07)
{
	self endon("hash_c547a8e7");
	self endon("hash_128f8789");
	self.var_f96f74aa.var_6b84a4de++;
	self namespace_82b91a51::function_9fcf3cd8(3, "near_goal");
	self function_e11ce512();
	if(!self.var_dd7b8ea)
	{
		self namespace_71e9cb84::function_74d6b22f("firefly_state", 1);
	}
	else
	{
		self namespace_71e9cb84::function_74d6b22f("firefly_state", 6);
	}
	if(function_4bd0142f("scr_firefly_swarm_debug", 0))
	{
		self thread namespace_175490fb::function_b5002a71(self.var_722885f3, function_4bd0142f("scr_firefly_swarm_hunt_radius", 1536), 0.1, (1, 1, 0));
	}
	self.var_ddd6bbfd = self function_3ab9233();
	if(isdefined(self.var_ddd6bbfd))
	{
		self.var_ddd6bbfd.var_284c5bbb = self;
	}
	self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("main");
	self.var_f96f74aa.var_6b84a4de--;
}

/*
	Name: function_cf23fec8
	Namespace: namespace_3ed98204
	Checksum: 0x6FE6DFCB
	Offset: 0x4AB0
	Size: 0x1BB
	Parameters: 1
	Flags: None
*/
function function_cf23fec8(var_a8563e07)
{
	self endon("hash_c547a8e7");
	self endon("hash_128f8789");
	self.var_f96f74aa.var_492f3a52++;
	if(!self.var_dd7b8ea)
	{
		self namespace_71e9cb84::function_74d6b22f("firefly_state", 2);
	}
	else
	{
		self namespace_71e9cb84::function_74d6b22f("firefly_state", 7);
	}
	wait(0.5);
	self.var_7dfaf62 = 12;
	self.var_a1ed1ed1 = 12;
	if(!self.var_dd7b8ea)
	{
		self namespace_71e9cb84::function_74d6b22f("firefly_state", 3);
	}
	else
	{
		self namespace_71e9cb84::function_74d6b22f("firefly_state", 8);
	}
	self function_e11ce512();
	if(isdefined(self.var_ddd6bbfd))
	{
		self function_169cc712(self.var_ddd6bbfd.var_722885f3 + VectorScale((0, 0, 1), 48), 1, self.var_7dfaf62);
		var_279e4e97 = self namespace_82b91a51::function_9fcf3cd8(30, "near_goal");
	}
	self.var_bf0b4bb2 namespace_bb771e9f::function_fa59cc99("main");
	self.var_f96f74aa.var_492f3a52--;
}

/*
	Name: function_326c3df4
	Namespace: namespace_3ed98204
	Checksum: 0x259916C8
	Offset: 0x4C78
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_326c3df4(var_5dc5e20a)
{
	self endon("hash_643a7daf");
	var_5dc5e20a function_f1aa5a21("proximity_grenade", 2, 0);
}

