#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\abilities\_ability_player;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameskill_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\statemachine_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_d9c8cca1;

/*
	Name: function_c35e6aab
	Namespace: namespace_d9c8cca1
	Checksum: 0x7F7E2015
	Offset: 0x5B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_71e9cb84::function_50f16166("toplayer", "misdirection_enable", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "makedecoy", 1, 1, "int");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_d9c8cca1
	Checksum: 0xB587B2A
	Offset: 0x620
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_d00ec32::function_36b56038(2, 32, 1);
	level.var_175490fb.var_2429a51d = function_a8fb77bd();
	level.var_175490fb.var_2429a51d.var_875da84b = &function_875da84b;
	level.var_175490fb.var_2429a51d.var_8d01efb6 = &function_8d01efb6;
	level.var_175490fb.var_2429a51d.var_bdb47551 = &function_bdb47551;
	level.var_175490fb.var_2429a51d.var_39ea6a1b = &function_39ea6a1b;
	level.var_175490fb.var_2429a51d.var_5d2fec30 = &function_5d2fec30;
	level.var_175490fb.var_2429a51d.var_b039e27b = &function_b039e27b;
	level.var_175490fb.var_2429a51d.var_251e7cf = &function_251e7cf;
	level.var_175490fb.var_2429a51d.var_4135a1c4 = &function_4135a1c4;
}

/*
	Name: function_875da84b
	Namespace: namespace_d9c8cca1
	Checksum: 0x6324FF93
	Offset: 0x7B0
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_875da84b(var_2d11f419)
{
}

/*
	Name: function_8d01efb6
	Namespace: namespace_d9c8cca1
	Checksum: 0x93687036
	Offset: 0x7C8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8d01efb6(var_2d11f419, var_dfcc01fd)
{
}

/*
	Name: function_bdb47551
	Namespace: namespace_d9c8cca1
	Checksum: 0x3DA85D42
	Offset: 0x7E8
	Size: 0x193
	Parameters: 2
	Flags: None
*/
function function_bdb47551(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_6735c679 = function_f3087faa("scr_misdirection_lifetime", 4);
	self.var_175490fb.var_c0a69197 = function_4bd0142f("scr_misdirection_target_count", 3);
	self.var_175490fb.var_e5260c29 = function_f3087faa("scr_misdirection_fov", 0.968);
	if(self function_1a9006bd("cybercom_misdirection") == 2)
	{
		self.var_175490fb.var_6735c679 = function_f3087faa("scr_misdirection_upgraded_lifetime", 5.5);
		self.var_175490fb.var_c0a69197 = function_4bd0142f("scr_misdirection_target_count_upgraded", 5);
		self.var_175490fb.var_e5260c29 = function_f3087faa("scr_misdirection_upgraded_fov", 0.94);
	}
	namespace_71e9cb84::function_e9c3870b("misdirection_enable", 1);
	self thread namespace_175490fb::function_b5f4e597(var_dfcc01fd);
}

/*
	Name: function_39ea6a1b
	Namespace: namespace_d9c8cca1
	Checksum: 0x3AE22221
	Offset: 0x988
	Size: 0x3F
	Parameters: 2
	Flags: None
*/
function function_39ea6a1b(var_2d11f419, var_dfcc01fd)
{
	namespace_71e9cb84::function_e9c3870b("misdirection_enable", 0);
	self.var_175490fb.var_301030f7 = 0;
}

/*
	Name: function_5d2fec30
	Namespace: namespace_d9c8cca1
	Checksum: 0x99EC1590
	Offset: 0x9D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5d2fec30()
{
}

/*
	Name: function_b039e27b
	Namespace: namespace_d9c8cca1
	Checksum: 0xD4E032BC
	Offset: 0x9E0
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_b039e27b(var_2d11f419, var_dfcc01fd)
{
	var_3c61bfc2 = self function_12a86f2e(var_2d11f419, var_dfcc01fd);
	if(!var_3c61bfc2)
	{
		self function_868603c7(var_2d11f419, var_dfcc01fd, 2);
	}
	namespace_175490fb::function_adc40f11(var_dfcc01fd, var_3c61bfc2);
	self.var_175490fb.var_301030f7 = 0;
	if(function_65f192a6(self))
	{
		var_1630584c = function_e967a021("cybercom_misdirection");
		if(isdefined(var_1630584c))
		{
			self function_ab8716a0("ItemStats", var_1630584c, "stats", "used", "statValue", 1);
		}
	}
}

/*
	Name: function_251e7cf
	Namespace: namespace_d9c8cca1
	Checksum: 0xB67E7E71
	Offset: 0xB00
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function function_251e7cf(var_2d11f419, var_dfcc01fd)
{
	self.var_175490fb.var_301030f7 = 0;
}

/*
	Name: function_4135a1c4
	Namespace: namespace_d9c8cca1
	Checksum: 0xA456AF9A
	Offset: 0xB30
	Size: 0x4F
	Parameters: 2
	Flags: None
*/
function function_4135a1c4(var_2d11f419, var_dfcc01fd)
{
	if(!(isdefined(self.var_175490fb.var_301030f7) && self.var_175490fb.var_301030f7))
	{
		self.var_175490fb.var_301030f7 = 1;
	}
}

/*
	Name: function_8aac802c
	Namespace: namespace_d9c8cca1
	Checksum: 0x3EF02424
	Offset: 0xB88
	Size: 0x33D
	Parameters: 1
	Flags: Private
*/
function private function_8aac802c(var_dfcc01fd)
{
	var_49e0ea09 = function_bc7ce905(self function_89c87c9c());
	var_657b1773 = function_525ae497(function_b8494651("axis"), function_b8494651("team3"), 0, 0);
	var_657b1773 = function_f926d8e8(var_657b1773, self.var_722885f3, 1);
	var_d1df9c1 = [];
	foreach(var_6b45b25e in var_657b1773)
	{
		if(function_85e4c3b3(var_6b45b25e))
		{
			continue;
		}
		if(!function_8d0347b8(var_6b45b25e))
		{
			continue;
		}
		if(!isdefined(var_6b45b25e.var_8fc0e50e) || var_6b45b25e.var_8fc0e50e == "direwolf" || var_6b45b25e.var_8fc0e50e == "zombie")
		{
			continue;
		}
		var_2c3e05ad = function_cb3d1c9b(self.var_722885f3, var_6b45b25e.var_722885f3);
		if(var_2c3e05ad < function_4bd0142f("scr_misdirection_min_distanceSQR", function_4bd0142f("scr_misdirection_min_distance", 200) * function_4bd0142f("scr_misdirection_min_distance", 200)))
		{
			continue;
		}
		if(var_2c3e05ad > function_4bd0142f("scr_misdirection_max_distanceSQR", function_4bd0142f("scr_misdirection_max_distance", 1750) * function_4bd0142f("scr_misdirection_max_distance", 1750)))
		{
			continue;
		}
		var_42bd74de = function_5f9a4869(var_49e0ea09, function_f679a325(var_6b45b25e.var_722885f3 - self.var_722885f3));
		if(var_42bd74de < self.var_175490fb.var_e5260c29)
		{
			continue;
		}
		var_d1df9c1[var_d1df9c1.size] = var_6b45b25e;
		self thread namespace_f74b04eb::function_96ed590f("cybercom_uses_chaos");
	}
	return var_d1df9c1;
}

/*
	Name: function_12a86f2e
	Namespace: namespace_d9c8cca1
	Checksum: 0x9F743A02
	Offset: 0xED0
	Size: 0x185
	Parameters: 2
	Flags: Private
*/
function private function_12a86f2e(var_2d11f419, var_dfcc01fd)
{
	var_b3db42a9 = function_8aac802c(var_dfcc01fd);
	self.var_175490fb.var_1beb8e5f = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < self.var_175490fb.var_c0a69197; var_c957f6b6++)
	{
		var_b97178f7 = self function_4adc7dc8(var_b3db42a9);
		if(isdefined(var_b97178f7))
		{
			self.var_175490fb.var_1beb8e5f[self.var_175490fb.var_1beb8e5f.size] = var_b97178f7;
			namespace_82b91a51::function_76f13293();
		}
	}
	foreach(var_b97178f7 in self.var_175490fb.var_1beb8e5f)
	{
		var_b97178f7 thread function_7ca046a9(self.var_175490fb.var_6735c679, self);
	}
	return 1;
}

/*
	Name: function_7074260
	Namespace: namespace_d9c8cca1
	Checksum: 0x81231AD7
	Offset: 0x1060
	Size: 0x115
	Parameters: 1
	Flags: None
*/
function function_7074260(var_dd89f865)
{
	foreach(var_d3c532e6 in self.var_175490fb.var_1beb8e5f)
	{
		var_2c3e05ad = function_316422d1(var_dd89f865, var_d3c532e6.var_722885f3);
		if(var_2c3e05ad < function_4bd0142f("scr_misdirection_decoy_spacingSQR", function_4bd0142f("scr_misdirection_decoy_spacing", 90) * function_4bd0142f("scr_misdirection_decoy_spacing", 90)))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_10cd71b
	Namespace: namespace_d9c8cca1
	Checksum: 0x4A6A2932
	Offset: 0x1180
	Size: 0x6B7
	Parameters: 2
	Flags: None
*/
function function_10cd71b(var_b97178f7, var_99fe996d)
{
	var_c8bc3f0a = VectorScale((1, 1, 1), 1000000);
	var_8b6f854 = VectorScale((-1, -1, -1), 1000000);
	var_49e0ea09 = function_bc7ce905(self function_89c87c9c());
	var_49e0ea09 = (var_49e0ea09[0], var_49e0ea09[1], 0);
	var_81ca05ac = function_298b8148(self function_89c87c9c());
	var_81ca05ac = (var_81ca05ac[0], var_81ca05ac[1], 0);
	foreach(var_b07228b6 in var_99fe996d)
	{
		var_722885f3 = var_b07228b6.var_722885f3;
		var_c8bc3f0a = function_44a2ae85(var_722885f3, var_c8bc3f0a);
		var_8b6f854 = function_b72ba417(var_722885f3, var_8b6f854);
	}
	var_1c4f52d6 = self.var_722885f3 + var_49e0ea09 * function_4bd0142f("scr_misdirection_no_target_max_distance", 675);
	var_8b6f854 = function_b72ba417(var_1c4f52d6, var_8b6f854);
	var_15a2728 = self.var_722885f3 + var_49e0ea09 * function_4bd0142f("scr_misdirection_min_distance", 200);
	var_c8bc3f0a = function_44a2ae85(var_15a2728, var_c8bc3f0a);
	var_4880f4e6 = var_8b6f854 + var_c8bc3f0a * 0.5;
	var_412aa3ee = function_7d15e2f8(var_4880f4e6, self.var_722885f3);
	var_eec44088 = function_f679a325(var_4880f4e6 - self.var_722885f3);
	var_b333c85b = self.var_722885f3 + var_eec44088 * var_412aa3ee;
	var_6a0945f2 = var_b333c85b;
	var_cfaafed4 = 6;
	var_539aaa1a = 0;
	var_86b53547 = var_81ca05ac * function_4bd0142f("scr_misdirection_decoy_spacing", 90);
	while(var_cfaafed4 > 0)
	{
		var_255826d2 = var_6a0945f2 + 6 - var_cfaafed4 * var_86b53547;
		var_607afad = function_e1dc201c(var_255826d2 + VectorScale((0, 0, 1), 72), var_255826d2 + VectorScale((0, 0, -1), 2048), 0, undefined, 1)["position"];
		var_255826d2 = (var_255826d2[0], var_255826d2[1], var_607afad[2]);
		var_17f4e357 = function_e1dc201c(self.var_722885f3 + VectorScale((0, 0, 1), 24), var_255826d2 + VectorScale((0, 0, 1), 24), 1, self)["position"];
		var_bd00ff2a = function_f679a325(var_17f4e357 - self.var_722885f3);
		var_17f4e357 = var_17f4e357 + -48 * var_bd00ff2a;
		var_607afad = function_e1dc201c(var_17f4e357, var_17f4e357 + VectorScale((0, 0, -1), 2048), 0, undefined, 1)["position"];
		if(self function_7074260(var_607afad))
		{
			var_b333c85b = var_607afad;
			break;
		}
		var_7d6c9041 = var_6a0945f2 - 6 - var_cfaafed4 * var_86b53547;
		var_607afad = function_e1dc201c(var_7d6c9041 + VectorScale((0, 0, 1), 72), var_7d6c9041 + VectorScale((0, 0, -1), 2048), 0, undefined, 1)["position"];
		var_7d6c9041 = (var_7d6c9041[0], var_7d6c9041[1], var_607afad[2]);
		var_17f4e357 = function_e1dc201c(self.var_722885f3 + VectorScale((0, 0, 1), 24), var_7d6c9041 + VectorScale((0, 0, 1), 24), 1, self)["position"];
		var_bd00ff2a = function_f679a325(var_17f4e357 - self.var_722885f3);
		var_17f4e357 = var_17f4e357 + -48 * var_bd00ff2a;
		var_607afad = function_e1dc201c(var_17f4e357, var_17f4e357 + VectorScale((0, 0, -1), 2048), 0, undefined, 1)["position"];
		if(self function_7074260(var_607afad))
		{
			var_b333c85b = var_607afad;
			break;
		}
		var_cfaafed4--;
	}
	var_b97178f7.var_722885f3 = var_b333c85b + VectorScale((0, 0, 1), 64);
}

/*
	Name: function_a767f9b4
	Namespace: namespace_d9c8cca1
	Checksum: 0x1E70FAEF
	Offset: 0x1840
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
		if(var_d84e54db.var_3a087745 === 1)
		{
			var_d84e54db function_cceed911(self);
		}
	}
}

/*
	Name: function_4adc7dc8
	Namespace: namespace_d9c8cca1
	Checksum: 0xCA2770FF
	Offset: 0x1920
	Size: 0x387
	Parameters: 1
	Flags: None
*/
function function_4adc7dc8(var_99fe996d)
{
	var_b97178f7 = function_9b7fda5e("script_model", self.var_722885f3);
	if(!isdefined(var_b97178f7))
	{
		return undefined;
	}
	var_b97178f7.var_6ab6f4fd = self.var_6ab6f4fd;
	var_b97178f7 function_e48f905e("tag_origin");
	var_b97178f7 function_d1d5545();
	var_b97178f7.var_3e94206a = self.var_3e94206a;
	var_b97178f7.var_e42818a3 = 1;
	var_b97178f7 function_8c8e79fe();
	var_b97178f7 function_a767f9b4();
	foreach(var_b07228b6 in var_99fe996d)
	{
		var_17f4e357 = function_e1dc201c(self.var_722885f3 + VectorScale((0, 0, 1), 24), var_b07228b6.var_722885f3 + VectorScale((0, 0, 1), 24), 1, self)["position"];
		var_bd00ff2a = function_f679a325(var_17f4e357 - self.var_722885f3);
		var_17f4e357 = var_17f4e357 + -48 * var_bd00ff2a;
		var_607afad = function_e1dc201c(var_17f4e357, var_17f4e357 + VectorScale((0, 0, -1), 2048), 0, var_b07228b6, 1)["position"];
		if(self function_7074260(var_607afad) == 0)
		{
			continue;
		}
		var_b97178f7.var_722885f3 = var_607afad + VectorScale((0, 0, 1), 64);
		var_b97178f7.var_faa77c1d = var_b07228b6;
		break;
	}
	if(!isdefined(var_b97178f7.var_faa77c1d))
	{
		self function_10cd71b(var_b97178f7, var_99fe996d);
	}
	var_b97178f7 function_422037f5();
	var_b97178f7.var_422037f5 = 1;
	var_b97178f7 notify("hash_72a13f79");
	var_b97178f7.var_c584775c = 1;
	var_b97178f7.var_2dd707 = 0;
	var_b97178f7.var_3a90f16b = 10000;
	var_b97178f7.var_7dfaf62 = 36;
	var_b97178f7.var_a1ed1ed1 = 36;
	var_b97178f7.var_b5a0facd = 1;
	return var_b97178f7;
}

/*
	Name: function_7ca046a9
	Namespace: namespace_d9c8cca1
	Checksum: 0xCCE458D8
	Offset: 0x1CB0
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_7ca046a9(var_941c77ac, var_5dc5e20a)
{
	self notify("hash_7ca046a9");
	self endon("hash_7ca046a9");
	self function_48f26766();
	self namespace_71e9cb84::function_74d6b22f("makedecoy", 1);
	var_77a7fe7d = var_941c77ac + function_72a94f05(1, 3);
	if(function_4bd0142f("scr_misdirection_debug", 0))
	{
		level thread namespace_afd2f70b::function_a0e51d80(self.var_722885f3, var_77a7fe7d, 20, (1, 0, 0));
	}
	wait(var_77a7fe7d);
	self namespace_71e9cb84::function_74d6b22f("makedecoy", 0);
	namespace_82b91a51::function_76f13293();
	self function_dc8c8404();
}

/*
	Name: function_44a2ae85
	Namespace: namespace_d9c8cca1
	Checksum: 0xCB981DFC
	Offset: 0x1DE0
	Size: 0xCD
	Parameters: 2
	Flags: None
*/
function function_44a2ae85(var_d2412961, var_c8bc3f0a)
{
	if(var_d2412961[0] < var_c8bc3f0a[0])
	{
		var_c8bc3f0a = (var_d2412961[0], var_c8bc3f0a[1], var_c8bc3f0a[2]);
	}
	if(var_d2412961[1] < var_c8bc3f0a[1])
	{
		var_c8bc3f0a = (var_c8bc3f0a[0], var_d2412961[1], var_c8bc3f0a[2]);
	}
	if(var_d2412961[2] < var_c8bc3f0a[2])
	{
		var_c8bc3f0a = (var_c8bc3f0a[0], var_c8bc3f0a[1], var_d2412961[2]);
	}
	return var_c8bc3f0a;
}

/*
	Name: function_b72ba417
	Namespace: namespace_d9c8cca1
	Checksum: 0x49ACDF7B
	Offset: 0x1EB8
	Size: 0xCD
	Parameters: 2
	Flags: None
*/
function function_b72ba417(var_d2412961, var_8b6f854)
{
	if(var_d2412961[0] > var_8b6f854[0])
	{
		var_8b6f854 = (var_d2412961[0], var_8b6f854[1], var_8b6f854[2]);
	}
	if(var_d2412961[1] > var_8b6f854[1])
	{
		var_8b6f854 = (var_8b6f854[0], var_d2412961[1], var_8b6f854[2]);
	}
	if(var_d2412961[2] > var_8b6f854[2])
	{
		var_8b6f854 = (var_8b6f854[0], var_8b6f854[1], var_d2412961[2]);
	}
	return var_8b6f854;
}

