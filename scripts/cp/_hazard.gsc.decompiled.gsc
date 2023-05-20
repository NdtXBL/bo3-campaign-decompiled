#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_419e977d;

/*
	Name: function_2dc19561
	Namespace: namespace_419e977d
	Checksum: 0x4D9CADCF
	Offset: 0x248
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("hazard", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_419e977d
	Checksum: 0xBC6FBDBE
	Offset: 0x288
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_6c2729dd("heat", 500, 50, 1, &function_476442fb);
	function_6c2729dd("filter", 500, 50, 2);
	function_6c2729dd("o2", 500, 60, 3, &function_8b413656);
	function_6c2729dd("radation", 500, 50, 4);
	function_6c2729dd("biohazard", 500, 50, 5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_1b292fa6(&function_1b292fa6);
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
}

/*
	Name: function_6c2729dd
	Namespace: namespace_419e977d
	Checksum: 0x3D1698C4
	Offset: 0x3D0
	Size: 0xEB
	Parameters: 5
	Flags: None
*/
function function_6c2729dd(var_cbb15570, var_4758598, var_ef1f9f4, var_26f0bb84, var_f313500d)
{
	if(!isdefined(level.var_7817fe3c))
	{
		level.var_7817fe3c = [];
	}
	if(!isdefined(level.var_7817fe3c[var_cbb15570]))
	{
		level.var_7817fe3c[var_cbb15570] = function_a8fb77bd();
	}
	level.var_7817fe3c[var_cbb15570].var_4758598 = var_4758598;
	level.var_7817fe3c[var_cbb15570].var_ef1f9f4 = var_ef1f9f4;
	level.var_7817fe3c[var_cbb15570].var_26f0bb84 = var_26f0bb84;
	level.var_7817fe3c[var_cbb15570].var_f313500d = var_f313500d;
}

/*
	Name: function_aebcf025
	Namespace: namespace_419e977d
	Checksum: 0x3F6EEE1C
	Offset: 0x4C8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	function_11424fa(1);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_419e977d
	Checksum: 0x8B2A3FCF
	Offset: 0x4F0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	function_11424fa(0);
	self thread function_b6af57a8();
	self thread function_a421f870();
}

/*
	Name: function_1b292fa6
	Namespace: namespace_419e977d
	Checksum: 0xAB3171A
	Offset: 0x548
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1b292fa6()
{
	function_11424fa(1);
}

/*
	Name: function_11424fa
	Namespace: namespace_419e977d
	Checksum: 0x7100897C
	Offset: 0x570
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_11424fa(var_b18f74fe)
{
	foreach(var_5c00bf0 in level.var_7817fe3c)
	{
		self.var_7dec7e93[var_cbb15570] = 0;
		self.var_6c3e78bb[var_cbb15570] = 1;
	}
	self.var_8657b6f = [];
	self.var_8657b6f["hudItems.hess1"] = 0;
	self.var_8657b6f["hudItems.hess2"] = 0;
	if(var_b18f74fe)
	{
		self function_f2e7970f("hudItems.hess1.type", 0);
		self function_f2e7970f("hudItems.hess2.type", 0);
	}
}

/*
	Name: function_b6af57a8
	Namespace: namespace_419e977d
	Checksum: 0xB6FDD4C3
	Offset: 0x698
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_b6af57a8()
{
	self endon("hash_643a7daf");
	while(1)
	{
		level waittill("hash_2693b45");
		if(isdefined(self.var_8dcb3948) && self.var_8dcb3948)
		{
			continue;
		}
		var_8601d520 = function_391512da(level.var_7817fe3c);
		foreach(var_cbb15570 in var_8601d520)
		{
			self function_d65827ea(var_cbb15570, 3, undefined);
			wait(0.1);
		}
	}
}

/*
	Name: function_a421f870
	Namespace: namespace_419e977d
	Checksum: 0xCFE483D9
	Offset: 0x798
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_a421f870()
{
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_90831b9e");
		foreach(var_5c00bf0 in level.var_7817fe3c)
		{
			if(function_b78a859e(var_cbb15570) >= 1)
			{
				function_12231466(var_cbb15570);
			}
		}
	}
}

/*
	Name: function_12231466
	Namespace: namespace_419e977d
	Checksum: 0x6F222BBB
	Offset: 0x870
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_12231466(var_cbb15570)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_7817fe3c[var_cbb15570]), "Dev Block strings are not supported" + var_cbb15570 + "Dev Block strings are not supported");
	#/
	self.var_7dec7e93[var_cbb15570] = 0;
}

/*
	Name: function_d65827ea
	Namespace: namespace_419e977d
	Checksum: 0xBFDE7E7B
	Offset: 0x8D0
	Size: 0x1C5
	Parameters: 4
	Flags: None
*/
function function_d65827ea(var_cbb15570, var_74d0774f, var_4c9c8550, var_16e92c54)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_7817fe3c[var_cbb15570]), "Dev Block strings are not supported" + var_cbb15570 + "Dev Block strings are not supported");
	#/
	if(!isdefined(var_16e92c54))
	{
		var_16e92c54 = 0;
	}
	if(namespace_cc27597::function_9407fe2c())
	{
		return 0;
	}
	var_1fc26863 = level.var_7817fe3c[var_cbb15570];
	self.var_7dec7e93[var_cbb15570] = function_95d0212b(self.var_7dec7e93[var_cbb15570] + var_74d0774f, var_1fc26863.var_4758598);
	if(self.var_7dec7e93[var_cbb15570] < var_1fc26863.var_4758598)
	{
		self thread function_be12f5f8(var_cbb15570, var_4c9c8550, var_16e92c54);
		return 1;
	}
	switch(var_cbb15570)
	{
		case "o2":
		{
			var_36feaabb = "MOD_DROWN";
			break;
		}
		case "heat":
		{
			var_36feaabb = "MOD_BURNED";
			break;
		}
		case default:
		{
			var_36feaabb = "MOD_UNKNOWN";
		}
	}
	self function_c3945cd5(self.var_3a90f16b, self.var_722885f3, undefined, undefined, undefined, var_36feaabb);
	return 0;
}

/*
	Name: function_eaa9157d
	Namespace: namespace_419e977d
	Checksum: 0xE9FCF0C3
	Offset: 0xAA0
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_eaa9157d(var_cbb15570)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_7dec7e93[var_cbb15570]), "Dev Block strings are not supported" + var_cbb15570 + "Dev Block strings are not supported");
	#/
	return self.var_7dec7e93[var_cbb15570];
}

/*
	Name: function_b78a859e
	Namespace: namespace_419e977d
	Checksum: 0xE1B74171
	Offset: 0xAF8
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_b78a859e(var_cbb15570)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_7dec7e93[var_cbb15570]), "Dev Block strings are not supported" + var_cbb15570 + "Dev Block strings are not supported");
	#/
	return self.var_7dec7e93[var_cbb15570] / level.var_7817fe3c[var_cbb15570].var_4758598;
}

/*
	Name: function_459e5eff
	Namespace: namespace_419e977d
	Checksum: 0xE491CFF7
	Offset: 0xB68
	Size: 0x75
	Parameters: 2
	Flags: None
*/
function function_459e5eff(var_cbb15570, var_5b9ad5b3)
{
	if(!isdefined(var_5b9ad5b3))
	{
		var_5b9ad5b3 = 1;
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_6c3e78bb[var_cbb15570]), "Dev Block strings are not supported" + var_cbb15570 + "Dev Block strings are not supported");
	#/
	self.var_6c3e78bb[var_cbb15570] = var_5b9ad5b3;
}

/*
	Name: function_be12f5f8
	Namespace: namespace_419e977d
	Checksum: 0xF67374C3
	Offset: 0xBE8
	Size: 0x38B
	Parameters: 3
	Flags: Private
*/
function private function_be12f5f8(var_cbb15570, var_4c9c8550, var_16e92c54)
{
	self notify("_hazard_protection_" + var_cbb15570);
	self endon("_hazard_protection_" + var_cbb15570);
	self endon("hash_128f8789");
	var_1fc26863 = level.var_7817fe3c[var_cbb15570];
	var_c8fe868d = "";
	foreach(var_fe311e35 in self.var_8657b6f)
	{
		if(var_fe311e35 == var_1fc26863.var_26f0bb84)
		{
			var_c8fe868d = var_6df9264;
			break;
		}
	}
	if(var_c8fe868d == "")
	{
		foreach(var_fe311e35 in self.var_8657b6f)
		{
			if(var_fe311e35 == 0)
			{
				var_c8fe868d = var_6df9264;
				break;
			}
		}
	}
	else if(var_c8fe868d != "")
	{
		if(!var_16e92c54)
		{
			self function_f2e7970f(var_c8fe868d + ".type", var_1fc26863.var_26f0bb84);
		}
		self.var_8657b6f[var_c8fe868d] = var_1fc26863.var_26f0bb84;
	}
	do
	{
		var_3b567224 = function_34bf0601(0, var_1fc26863.var_4758598, 1, 0, self.var_7dec7e93[var_cbb15570]);
		if(var_c8fe868d != "" && !var_16e92c54)
		{
			self function_f2e7970f(var_c8fe868d + ".ratio", var_3b567224);
		}
		if(isdefined(var_1fc26863.var_f313500d))
		{
			[[var_1fc26863.var_f313500d]](var_3b567224, var_4c9c8550);
		}
		wait(0.05);
		if(self.var_6c3e78bb[var_cbb15570] == 1)
		{
			self.var_7dec7e93[var_cbb15570] = self.var_7dec7e93[var_cbb15570] - var_1fc26863.var_ef1f9f4 * 0.05;
		}
	}
	while(!self.var_7dec7e93[var_cbb15570] >= 0);
	self function_45f02912();
	if(var_c8fe868d != "")
	{
		if(!var_16e92c54)
		{
			self function_f2e7970f(var_c8fe868d + ".type", 0);
		}
		self.var_8657b6f[var_c8fe868d] = 0;
	}
	else
	{
		namespace_33b293fd::function_a7ee953("Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_45f02912
	Namespace: namespace_419e977d
	Checksum: 0xFDB4C3A0
	Offset: 0xF80
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_45f02912()
{
	self namespace_71e9cb84::function_74d6b22f("burn", 0);
	self namespace_71e9cb84::function_e9c3870b("player_cam_bubbles", 0);
}

/*
	Name: function_476442fb
	Namespace: namespace_419e977d
	Checksum: 0xDF4B273F
	Offset: 0xFD0
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_476442fb(var_e9a83a8e, var_4c9c8550)
{
	if(!isdefined(var_4c9c8550) || namespace_cc27597::function_9407fe2c())
	{
		self.var_65e617f8 = undefined;
		self namespace_71e9cb84::function_74d6b22f("burn", 0);
		return;
	}
	if(!isdefined(self.var_65e617f8) && self.var_65e617f8 && self function_32fa5072(var_4c9c8550))
	{
		self namespace_71e9cb84::function_74d6b22f("burn", 1);
	}
	else
	{
		self.var_65e617f8 = undefined;
		self namespace_71e9cb84::function_74d6b22f("burn", 0);
	}
}

/*
	Name: function_503a50a8
	Namespace: namespace_419e977d
	Checksum: 0xE9C8FD62
	Offset: 0x10C0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_503a50a8()
{
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_e9c3870b("player_cam_bubbles", 1);
	wait(4);
	self namespace_71e9cb84::function_e9c3870b("player_cam_bubbles", 0);
}

/*
	Name: function_8b413656
	Namespace: namespace_419e977d
	Checksum: 0x173E20B7
	Offset: 0x1120
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_8b413656(var_d2eebe84, var_4c9c8550)
{
	if(!isdefined(self.var_18c7e911))
	{
		self.var_18c7e911 = 0;
	}
	if(var_d2eebe84 <= 0.2)
	{
		if(self.var_18c7e911 > 0.2)
		{
			self thread function_503a50a8();
		}
	}
	else if(var_d2eebe84 <= 0.1)
	{
		if(self.var_18c7e911 > 0.1)
		{
			self thread function_503a50a8();
		}
	}
	var_b45ec125 = function_84970cc4(0.5, 0.3, 0.2, 0.15, 0.1, 0.5);
	foreach(var_791757 in var_b45ec125)
	{
		if(var_d2eebe84 != 0 && var_d2eebe84 <= var_791757)
		{
			if(self.var_18c7e911 > var_791757)
			{
				self function_921a1574("vox_plyr_uw_gasp");
				if(var_791757 < 0.4)
				{
					self thread function_fda01c41("vox_plyr_uw_emerge_gasp");
				}
				else
				{
					self thread function_fda01c41("vox_plyr_uw_emerge");
				}
				break;
			}
		}
	}
	self.var_18c7e911 = var_d2eebe84;
}

/*
	Name: function_fda01c41
	Namespace: namespace_419e977d
	Checksum: 0x15C159CC
	Offset: 0x1340
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_fda01c41(var_48b937ab)
{
	self notify("hash_fda01c41");
	self endon("hash_fda01c41");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_2693b45");
	while(self function_8213df59())
	{
		wait(0.1);
	}
	self function_921a1574(var_48b937ab);
}

/*
	Name: function_e9b126ef
	Namespace: namespace_419e977d
	Checksum: 0x76E0FF17
	Offset: 0x13D0
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_e9b126ef(var_78962fff, var_827d6de0)
{
	if(!isdefined(var_827d6de0))
	{
		var_827d6de0 = 1;
	}
	self thread function_ccddb105("o2", 4, var_78962fff, var_827d6de0);
}

/*
	Name: function_ccddb105
	Namespace: namespace_419e977d
	Checksum: 0x40DDE053
	Offset: 0x1430
	Size: 0x1F9
	Parameters: 4
	Flags: None
*/
function function_ccddb105(var_be6a04c9, var_6d20ee14, var_78962fff, var_827d6de0)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_7817fe3c[var_be6a04c9]), "Dev Block strings are not supported" + var_be6a04c9 + "Dev Block strings are not supported");
	#/
	self notify("stop_hazard_dot_" + var_be6a04c9);
	self endon("stop_hazard_dot_" + var_be6a04c9);
	self endon("hash_128f8789");
	self function_459e5eff(var_be6a04c9, 0);
	var_dd075cd2 = 1;
	var_1fc26863 = level.var_7817fe3c[var_be6a04c9];
	var_74d0774f = var_6d20ee14;
	if(isdefined(var_78962fff))
	{
		var_97dd249c = self function_eaa9157d(var_be6a04c9);
		var_90d01cd2 = var_1fc26863.var_4758598;
		var_7046c7b3 = var_827d6de0 * var_90d01cd2;
		var_a6321c17 = var_7046c7b3 - var_97dd249c;
		if(var_a6321c17 > 0)
		{
			var_74d0774f = var_a6321c17 / var_78962fff;
		}
	}
	while(1)
	{
		wait(1);
		var_dd075cd2 = self function_d65827ea(var_be6a04c9, var_74d0774f);
		var_7ba0abc9 = self function_b78a859e(var_be6a04c9);
		if(var_74d0774f > var_6d20ee14 && var_7ba0abc9 >= var_827d6de0)
		{
			var_74d0774f = var_6d20ee14;
		}
	}
}

/*
	Name: function_60455f28
	Namespace: namespace_419e977d
	Checksum: 0x10C8CC52
	Offset: 0x1638
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_60455f28(var_be6a04c9)
{
	self notify("stop_hazard_dot_" + var_be6a04c9);
	self function_459e5eff(var_be6a04c9, 1);
}

