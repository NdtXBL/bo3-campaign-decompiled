#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_a7b77773;

/*
	Name: function_c35e6aab
	Namespace: namespace_a7b77773
	Checksum: 0x99EC1590
	Offset: 0x3C8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_a7b77773
	Checksum: 0x1053978
	Offset: 0x3D8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	level.var_c1aa5253["repulsorarmor_fx"] = "player/fx_plyr_ability_repulsor_armor";
	level.var_c1aa5253["repulsorarmorUpgraded_fx"] = "player/fx_plyr_ability_repulsor_armor";
	level.var_c1aa5253["repulsorarmor_contact"] = "electric/fx_elec_sparks_burst_lg_os";
	namespace_726a1ef0::function_8cb15f87("cybercom_repulsorarmor", 1);
	namespace_726a1ef0::function_8b4ef058("cybercom_repulsorarmor", &function_3988f084, &function_59ae49d2);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_a7b77773
	Checksum: 0x99EC1590
	Offset: 0x4D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
}

/*
	Name: function_aebcf025
	Namespace: namespace_a7b77773
	Checksum: 0x99EC1590
	Offset: 0x4E0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_3988f084
	Namespace: namespace_a7b77773
	Checksum: 0x6BB68ADD
	Offset: 0x4F0
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_3988f084(var_fe311e35)
{
	if(!isdefined(self.var_175490fb.var_c281e3c))
	{
		self.var_175490fb.var_c281e3c = [];
		self.var_175490fb.var_c281e3c[0] = function_a8fb77bd();
		self.var_175490fb.var_c281e3c[1] = function_a8fb77bd();
		self.var_175490fb.var_c281e3c[2] = function_a8fb77bd();
		self.var_175490fb.var_c281e3c[3] = function_a8fb77bd();
		self.var_175490fb.var_c281e3c[0].var_60db70fa = 0;
		self.var_175490fb.var_c281e3c[1].var_60db70fa = 0;
		self.var_175490fb.var_c281e3c[2].var_60db70fa = 0;
		self.var_175490fb.var_c281e3c[3].var_60db70fa = 0;
	}
	self thread function_170e07a2();
	self thread function_13a66a32(var_fe311e35);
}

/*
	Name: function_59ae49d2
	Namespace: namespace_a7b77773
	Checksum: 0xAEB2CF85
	Offset: 0x688
	Size: 0x59
	Parameters: 1
	Flags: None
*/
function function_59ae49d2(var_fe311e35)
{
	if(isdefined(self.var_3ab5b78c))
	{
		function_89191f29(self.var_3ab5b78c);
		self.var_3ab5b78c = undefined;
	}
	self notify("hash_59ae49d2");
	self.var_175490fb.var_c281e3c = undefined;
}

/*
	Name: function_13a66a32
	Namespace: namespace_a7b77773
	Checksum: 0xD565A0E
	Offset: 0x6F0
	Size: 0x207
	Parameters: 1
	Flags: Private
*/
function private function_13a66a32(var_dfcc01fd)
{
	self notify("hash_9fd8f9c4");
	self endon("hash_9fd8f9c4");
	self endon("hash_59ae49d2");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	var_87b94db5 = self function_76f34311(var_dfcc01fd) == 2;
	if(var_87b94db5)
	{
	}
	else
	{
	}
	var_5753664b = level.var_c1aa5253["repulsorarmor_fx"];
	if(!isdefined(self.var_3ab5b78c))
	{
		self.var_3ab5b78c = function_41346cf7(self, 4000, function_4bd0142f("scr_repulsorarmor_dist", 200), var_87b94db5);
	}
	var_804ee9ae = 0.5;
	var_6d621232 = GetTime();
	while(1)
	{
		self waittill("hash_d9877503", var_4a93c703);
		if(GetTime() > var_6d621232 + var_804ee9ae * 1000)
		{
			if(!isdefined(self.var_91c8e9a9) || (isdefined(self.var_91c8e9a9) && self.var_91c8e9a9 != 1))
			{
				function_da6acfd2(var_5753664b, self, "tag_origin");
				self function_921a1574("gdt_cybercore_rig_repulse_jawawawa");
				self thread function_934364a2(var_4a93c703, self.var_722885f3 + VectorScale((0, 0, 1), 72));
				var_6d621232 = GetTime();
			}
		}
	}
}

/*
	Name: function_170e07a2
	Namespace: namespace_a7b77773
	Checksum: 0x8BFE5DA9
	Offset: 0x900
	Size: 0x27F
	Parameters: 0
	Flags: Private
*/
function private function_170e07a2()
{
	self endon("hash_59ae49d2");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	while(1)
	{
		var_6556d20e = GetTime();
		var_f9459f98 = undefined;
		var_2f0e78d0 = 0;
		for(var_7e8d0707 = 0; var_7e8d0707 < 4; var_7e8d0707++)
		{
			if(self.var_175490fb.var_c281e3c[var_7e8d0707].var_60db70fa > var_6556d20e)
			{
				var_aa86143d = self.var_175490fb.var_c281e3c[var_7e8d0707].var_aa86143d;
				if(isdefined(var_aa86143d))
				{
					self.var_175490fb.var_c281e3c[var_7e8d0707].var_3b6e5f7e = self namespace_175490fb::function_c43df297(var_aa86143d.var_722885f3);
				}
				if(self.var_175490fb.var_c281e3c[var_7e8d0707].var_60db70fa > var_2f0e78d0)
				{
					var_2f0e78d0 = self.var_175490fb.var_c281e3c[var_7e8d0707].var_60db70fa;
					var_f9459f98 = var_7e8d0707;
				}
				continue;
			}
			if(self.var_175490fb.var_c281e3c[var_7e8d0707].var_60db70fa != 0)
			{
				self.var_175490fb.var_c281e3c[var_7e8d0707].var_60db70fa = 0;
				self.var_175490fb.var_c281e3c[var_7e8d0707].var_aa86143d = undefined;
				self.var_175490fb.var_c281e3c[var_7e8d0707].var_3b6e5f7e = undefined;
			}
		}
		if(isdefined(var_f9459f98))
		{
			self namespace_71e9cb84::function_cc4d5165("playerAbilities.repulsorIndicatorIntensity", 1);
			self namespace_71e9cb84::function_cc4d5165("playerAbilities.repulsorIndicatorDirection", var_f9459f98);
		}
		else
		{
			self namespace_71e9cb84::function_cc4d5165("playerAbilities.repulsorIndicatorIntensity", 0);
		}
		wait(0.05);
	}
}

/*
	Name: function_1542f1f0
	Namespace: namespace_a7b77773
	Checksum: 0x6F9CF3BE
	Offset: 0xB88
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_1542f1f0(var_aa86143d)
{
	if(isdefined(var_aa86143d.var_5e36fd2e))
	{
	}
	else
	{
	}
	var_aa86143d = var_aa86143d;
	var_3b6e5f7e = self namespace_175490fb::function_c43df297(var_aa86143d.var_722885f3);
	if(var_3b6e5f7e > -45 && var_3b6e5f7e <= 45)
	{
		var_7e8d0707 = 0;
	}
	else if(var_3b6e5f7e > 45 && var_3b6e5f7e <= 135)
	{
		var_7e8d0707 = 3;
	}
	else if(var_3b6e5f7e > 135 && var_3b6e5f7e <= 180 || (var_3b6e5f7e >= -180 && var_3b6e5f7e < -135))
	{
		var_7e8d0707 = 2;
	}
	else
	{
		var_7e8d0707 = 1;
	}
	self.var_175490fb.var_c281e3c[var_7e8d0707].var_60db70fa = GetTime() + function_4bd0142f("scr_repulsorarmor_indicator_durationMSEC", 1500);
	self.var_175490fb.var_c281e3c[var_7e8d0707].var_aa86143d = var_aa86143d;
	self.var_175490fb.var_c281e3c[var_7e8d0707].var_3b6e5f7e = var_3b6e5f7e;
}

/*
	Name: function_934364a2
	Namespace: namespace_a7b77773
	Checksum: 0x7C2E6EFF
	Offset: 0xD30
	Size: 0x83
	Parameters: 2
	Flags: Private
*/
function private function_934364a2(var_f461b5d, var_d355aea1)
{
	if(isdefined(var_f461b5d))
	{
		self thread function_1542f1f0(var_f461b5d);
		var_f461b5d function_921a1574("gdt_cybercore_rig_repulse_jawawawa_missile");
		function_fd4ba5e1(level.var_c1aa5253["repulsorarmor_contact"], var_f461b5d.var_722885f3);
	}
}

