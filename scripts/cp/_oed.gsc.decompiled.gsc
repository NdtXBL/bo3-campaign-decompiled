#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_16f9ecd3;

/*
	Name: function_2dc19561
	Namespace: namespace_16f9ecd3
	Checksum: 0xC005C270
	Offset: 0x2D8
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("oed", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_16f9ecd3
	Checksum: 0x14F4E14B
	Offset: 0x320
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("toplayer", "ev_toggle", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "sitrep_toggle", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "tmode_toggle", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "active_dni_fx", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "hack_dni_fx", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("actor", "thermal_active", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "sitrep_material", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "force_tmode", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "tagged", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "thermal_active", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "sitrep_material", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "thermal_active", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "sitrep_material", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("item", "sitrep_material", 1, 1, "int");
	if(!isdefined(level.var_598df736))
	{
		level.var_598df736 = 50;
	}
	namespace_e216c11c::function_9be319f9("visionset", "tac_mode", 1, level.var_598df736, 15, 1, &namespace_e216c11c::function_c2714a65, 0);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_2f06d687::function_ef554cf7("axis", &function_d47e8f1b);
	namespace_2f06d687::function_ef554cf7("allies", &function_d47e8f1b);
	level.var_d829fe9f = 1;
	level.var_1e983b11 = 1;
	level.var_f8b5c03f = 0;
	level.var_b3ce91e0 = &function_b3ce91e0;
	level.var_a2477bbb = &function_a2477bbb;
}

/*
	Name: function_5b6b9132
	Namespace: namespace_16f9ecd3
	Checksum: 0x3F596E70
	Offset: 0x6E8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_5b6b9132()
{
	function_9b299cd6();
}

/*
	Name: function_9b299cd6
	Namespace: namespace_16f9ecd3
	Checksum: 0x83F9C8ED
	Offset: 0x708
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_9b299cd6()
{
	waittillframeend;
	if(level.var_1e983b11)
	{
		namespace_84970cc4::function_966ecb29(namespace_82b91a51::function_e9d02c78(function_bd42c9d1("classname", "weapon_"), 1, [], 1, 1), &function_e228c18a);
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_16f9ecd3
	Checksum: 0xBEAB933A
	Offset: 0x788
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self.var_d829fe9f = level.var_d829fe9f;
	self.var_aa3f3ac2 = 0;
	self function_1c59df50(self.var_aa3f3ac2);
	self.var_1e983b11 = level.var_1e983b11;
	self.var_d5846b2c = 0;
	var_99268403 = 0;
	if(!function_27c72c1b())
	{
		if(isdefined(function_afedf5ee("tacticalModeAutoOn")) && function_afedf5ee("tacticalModeAutoOn"))
		{
			self.var_d5846b2c = 1;
			var_99268403 = 0;
		}
	}
	self function_12a9df06(self.var_d5846b2c, var_99268403);
	self namespace_71e9cb84::function_e9c3870b("sitrep_toggle", 1);
	self thread function_cec8e852();
	self thread function_e29f0dd6();
}

/*
	Name: function_cec8e852
	Namespace: namespace_16f9ecd3
	Checksum: 0x9D6433FD
	Offset: 0x8D0
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_cec8e852()
{
	self endon("hash_128f8789");
	self endon("hash_3b109bff");
	while(1)
	{
		/#
			level namespace_957e94ce::function_d3de6822("Dev Block strings are not supported");
		#/
		if(level.var_d829fe9f && self.var_d829fe9f && self function_8ba29281())
		{
			if(!namespace_cc27597::function_9407fe2c())
			{
				self.var_aa3f3ac2 = !isdefined(self.var_aa3f3ac2) && self.var_aa3f3ac2;
				self function_1c59df50(self.var_aa3f3ac2);
				while(self function_8ba29281())
				{
					wait(0.05);
				}
			}
		}
		if(!function_27c72c1b() && level.var_1e983b11 && self.var_1e983b11 && self function_7db80007())
		{
			if(!namespace_cc27597::function_9407fe2c())
			{
				self.var_d5846b2c = !isdefined(self.var_d5846b2c) && self.var_d5846b2c;
				self function_12a9df06(self.var_d5846b2c);
				namespace_e216c11c::function_25294cfe("visionset", "tac_mode", self, 0.05, 0, 0.8);
				wait(0.85);
				while(self function_7db80007())
				{
					wait(0.05);
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d47e8f1b
	Namespace: namespace_16f9ecd3
	Checksum: 0x64FC4F22
	Offset: 0xAD0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d47e8f1b()
{
	if(self.var_3e94206a == "axis")
	{
		self function_b3ce91e0();
	}
	else if(self.var_3e94206a == "allies")
	{
		self function_b3ce91e0();
	}
}

/*
	Name: function_b3ce91e0
	Namespace: namespace_16f9ecd3
	Checksum: 0x326818C7
	Offset: 0xB38
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_b3ce91e0(var_ec99e627)
{
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_74d6b22f("thermal_active", 1);
	self thread function_ba755d7a();
	if(isdefined(var_ec99e627))
	{
		level waittill(var_ec99e627);
		self function_a2477bbb();
	}
}

/*
	Name: function_ba755d7a
	Namespace: namespace_16f9ecd3
	Checksum: 0x1CBE5FFE
	Offset: 0xBB8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_ba755d7a()
{
	self endon("hash_a2477bbb");
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		self function_a2477bbb();
	}
}

/*
	Name: function_a2477bbb
	Namespace: namespace_16f9ecd3
	Checksum: 0xA498E3D0
	Offset: 0xC00
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_a2477bbb()
{
	self namespace_71e9cb84::function_74d6b22f("thermal_active", 0);
	self notify("hash_a2477bbb");
}

/*
	Name: function_b3c589a6
	Namespace: namespace_16f9ecd3
	Checksum: 0x7213FD1F
	Offset: 0xC40
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_b3c589a6(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	level.var_d829fe9f = var_e2e6bbcb;
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586.var_d829fe9f = var_e2e6bbcb;
	}
}

/*
	Name: function_e234a6a6
	Namespace: namespace_16f9ecd3
	Checksum: 0x39B38F1C
	Offset: 0xCF8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_e234a6a6(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	self.var_d829fe9f = var_e2e6bbcb;
	if(!var_e2e6bbcb)
	{
		self function_1c59df50(var_e2e6bbcb);
	}
}

/*
	Name: function_fc1750c9
	Namespace: namespace_16f9ecd3
	Checksum: 0xC4891479
	Offset: 0xD50
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_fc1750c9(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	self.var_1e983b11 = var_e2e6bbcb;
	if(var_e2e6bbcb)
	{
		if(!function_27c72c1b() && (isdefined(function_afedf5ee("tacticalModeAutoOn")) && function_afedf5ee("tacticalModeAutoOn")))
		{
			self function_12a9df06(1, 0);
		}
	}
	else
	{
		self function_12a9df06(0, 0);
	}
}

/*
	Name: function_35ce409
	Namespace: namespace_16f9ecd3
	Checksum: 0x582CD158
	Offset: 0xE20
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_35ce409(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	function_1c59df50(var_e2e6bbcb);
}

/*
	Name: function_1c59df50
	Namespace: namespace_16f9ecd3
	Checksum: 0xC5F1F7BF
	Offset: 0xE60
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_1c59df50(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	self.var_aa3f3ac2 = var_e2e6bbcb;
	if(self.var_aa3f3ac2)
	{
		if(isdefined(self.var_d5846b2c) && self.var_d5846b2c)
		{
			self.var_2b22c8c8 = 1;
		}
		else
		{
			self.var_2b22c8c8 = 0;
		}
		self function_12a9df06(0, 0, 0);
	}
	if(self.var_aa3f3ac2)
	{
		self notify("hash_2b839b92");
	}
	else
	{
		self notify("hash_49d8a575");
	}
	self namespace_71e9cb84::function_e9c3870b("ev_toggle", self.var_aa3f3ac2);
	if(!self.var_aa3f3ac2)
	{
		if(isdefined(self.var_2b22c8c8) && self.var_2b22c8c8)
		{
			if(!function_27c72c1b() && (isdefined(function_afedf5ee("tacticalModeAutoOn")) && function_afedf5ee("tacticalModeAutoOn")))
			{
				self function_12a9df06(1, 0, 0);
			}
		}
	}
}

/*
	Name: function_12a9df06
	Namespace: namespace_16f9ecd3
	Checksum: 0x7DABBB2C
	Offset: 0xFD0
	Size: 0x193
	Parameters: 3
	Flags: None
*/
function function_12a9df06(var_e2e6bbcb, var_99268403, var_8bdc47ed)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	if(!isdefined(var_99268403))
	{
		var_99268403 = 1;
	}
	if(!isdefined(var_8bdc47ed))
	{
		var_8bdc47ed = 1;
	}
	self.var_d5846b2c = var_e2e6bbcb;
	if(var_8bdc47ed && self.var_d5846b2c)
	{
		self function_1c59df50(0);
	}
	if(self.var_d5846b2c)
	{
		self notify("hash_8d6266d8");
	}
	else
	{
		self notify("hash_e0fad893");
	}
	self function_fe41568a(self.var_d5846b2c);
	var_acd4c5da = 0;
	if(!isdefined(self.var_73c16596))
	{
		self.var_73c16596 = 0;
	}
	self.var_73c16596++;
	self.var_73c16596 = self.var_73c16596 & 1;
	var_acd4c5da = self.var_73c16596;
	if(var_99268403)
	{
		var_acd4c5da = var_acd4c5da | 2;
	}
	if(self.var_d5846b2c)
	{
		var_acd4c5da = var_acd4c5da | 4;
	}
	self namespace_71e9cb84::function_e9c3870b("tmode_toggle", var_acd4c5da);
	self namespace_9f824288::function_bee608f0("tmode", self.var_d5846b2c);
}

/*
	Name: function_e29f0dd6
	Namespace: namespace_16f9ecd3
	Checksum: 0x22F410BC
	Offset: 0x1170
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_e29f0dd6()
{
	var_c649c515 = function_99201f25();
	foreach(var_2dd5c5dd in var_c649c515)
	{
		if(isdefined(var_2dd5c5dd.var_d3426abc) && var_2dd5c5dd.var_d3426abc)
		{
			var_2dd5c5dd thread function_b3ce91e0();
		}
	}
}

/*
	Name: function_f0f40bb5
	Namespace: namespace_16f9ecd3
	Checksum: 0x9B87AA15
	Offset: 0x1248
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_f0f40bb5(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	level.var_1e983b11 = var_e2e6bbcb;
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586.var_1e983b11 = var_e2e6bbcb;
	}
}

/*
	Name: function_6e4b8a4f
	Namespace: namespace_16f9ecd3
	Checksum: 0xD7561243
	Offset: 0x1300
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_6e4b8a4f(var_e2e6bbcb)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	self.var_10b39c91 = var_e2e6bbcb;
	self namespace_71e9cb84::function_74d6b22f("force_tmode", var_e2e6bbcb);
}

/*
	Name: function_e228c18a
	Namespace: namespace_16f9ecd3
	Checksum: 0x6A66AF27
	Offset: 0x1358
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_e228c18a(var_63c5785a, var_ec99e627)
{
	if(!isdefined(var_63c5785a))
	{
		var_63c5785a = 0;
	}
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_74d6b22f("sitrep_material", 1);
	self thread function_6042d612();
	if(isdefined(var_ec99e627))
	{
		level waittill(var_ec99e627);
		self function_14ec2d71();
	}
}

/*
	Name: function_6042d612
	Namespace: namespace_16f9ecd3
	Checksum: 0xFAEF3FF8
	Offset: 0x13F8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6042d612()
{
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		self function_14ec2d71();
	}
}

/*
	Name: function_14ec2d71
	Namespace: namespace_16f9ecd3
	Checksum: 0xFCDE8D83
	Offset: 0x1430
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_14ec2d71()
{
	self namespace_71e9cb84::function_74d6b22f("sitrep_material", 0);
}

/*
	Name: function_cb36c1ba
	Namespace: namespace_16f9ecd3
	Checksum: 0xFF22C134
	Offset: 0x1460
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_cb36c1ba(var_ce32be36)
{
	if(!isdefined(var_ce32be36))
	{
		var_ce32be36 = 1;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_c5bcb2b9 = !isdefined(var_5dc5e20a.var_c5bcb2b9) && var_5dc5e20a.var_c5bcb2b9;
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sitrep_toggle", var_5dc5e20a.var_c5bcb2b9);
	}
}

/*
	Name: function_34347f5d
	Namespace: namespace_16f9ecd3
	Checksum: 0xA1955D30
	Offset: 0x1558
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_34347f5d()
{
	if(!isdefined(self.var_6ab6f4fd))
	{
		self.var_6ab6f4fd = (0, 0, 0);
	}
	var_8b914409 = level.var_3f831f3b["sitrep"][self.var_1157a889];
	var_92fa0808 = namespace_82b91a51::function_b9fd52a4(var_8b914409.var_6df9264, self.var_722885f3, self.var_6ab6f4fd);
	if(isdefined(var_8b914409.var_259ea471))
	{
		var_92fa0808.var_79c8542e = var_8b914409.var_259ea471;
	}
	else
	{
		var_92fa0808.var_79c8542e = 0;
	}
	return var_92fa0808;
}

