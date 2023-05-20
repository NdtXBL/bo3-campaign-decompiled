#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\ai\systems\fx_character;
#using scripts\shared\array_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_431cac9;

/*
	Name: function_571c4083
	Namespace: namespace_431cac9
	Checksum: 0xC8DBECCB
	Offset: 0x4E8
	Size: 0x115
	Parameters: 7
	Flags: None
*/
function function_571c4083(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	switch(var_9193c732)
	{
		case 5:
		{
			self thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_mobile_shops_casino_ext_parts_bundle");
			break;
		}
		case 1:
		{
			self thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_mobile_shops_medical_ext_parts_bundle");
			break;
		}
		case 2:
		{
			self thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_mobile_shops_merchant_ext_parts_bundle");
			break;
		}
		case 4:
		{
			self thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_mobile_shops_restaurant_ext_parts_bundle");
			break;
		}
		case 3:
		{
			self thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_mobile_shops_tattoo_ext_parts_bundle");
			break;
		}
	}
}

/*
	Name: function_83b903a6
	Namespace: namespace_431cac9
	Checksum: 0xE2329098
	Offset: 0x608
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_83b903a6(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 function_37f7858a(self);
	}
}

/*
	Name: function_84d3f32a
	Namespace: namespace_431cac9
	Checksum: 0xA0C0378F
	Offset: 0x6A8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_84d3f32a()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_lotus_mobile_shops_casino_ext_parts_bundle", &function_83b903a6);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_lotus_mobile_shops_medical_ext_parts_bundle", &function_83b903a6);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_lotus_mobile_shops_merchant_ext_parts_bundle", &function_83b903a6);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_lotus_mobile_shops_restaurant_ext_parts_bundle", &function_83b903a6);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_lotus_mobile_shops_tattoo_ext_parts_bundle", &function_83b903a6);
}

/*
	Name: function_50d69c96
	Namespace: namespace_431cac9
	Checksum: 0x38AA73A4
	Offset: 0x780
	Size: 0x107
	Parameters: 1
	Flags: None
*/
function function_50d69c96(var_7f004376)
{
	if(!isdefined(var_7f004376))
	{
		var_7f004376 = 12;
	}
	self notify("hash_9e31d48f");
	self endon("hash_9e31d48f");
	self endon("hash_d5da096");
	var_4286d30 = self.var_722885f3[2];
	self function_5ffdcb9d(var_7f004376);
	while(1)
	{
		var_78cd61fc = function_69c2f683(self.var_722885f3[2] - var_4286d30);
		if(var_78cd61fc > 320)
		{
			var_4286d30 = self.var_722885f3[2];
			self function_5ffdcb9d(var_7f004376);
		}
		wait(0.05);
	}
}

/*
	Name: function_5ffdcb9d
	Namespace: namespace_431cac9
	Checksum: 0x1E82410C
	Offset: 0x890
	Size: 0x33B
	Parameters: 1
	Flags: None
*/
function function_5ffdcb9d(var_7f004376)
{
	var_707bc057 = namespace_14b42b8a::function_7faf4c39("siege_anim");
	var_62b3e03f = function_eb04522d(self.var_722885f3[2], var_707bc057, var_7f004376);
	var_d47b3178 = function_41f575c3(var_62b3e03f);
	if(isdefined(level.var_707bc057))
	{
		var_41cebe05 = function_6f8792eb(var_62b3e03f, level.var_707bc057);
		var_3b2cf31a = function_41f575c3(level.var_707bc057);
		foreach(var_362f733e in var_41cebe05)
		{
			function_81403b2f(var_3b2cf31a, var_362f733e);
		}
		foreach(var_362f733e in var_3b2cf31a)
		{
			var_362f733e thread namespace_cc27597::function_fcf56ab5("cin_lot_03_01_hakim_crowd_new");
			var_362f733e.var_dad871b8 = 0;
			var_362f733e.var_646436ae = undefined;
		}
		foreach(var_6b28a522 in var_41cebe05)
		{
			function_81403b2f(var_d47b3178, var_6b28a522);
		}
	}
	foreach(var_362f733e in var_d47b3178)
	{
		var_362f733e thread namespace_cc27597::function_43718187("cin_lot_03_01_hakim_crowd_new");
		var_362f733e.var_646436ae = 1;
	}
	level.var_707bc057 = var_62b3e03f;
}

/*
	Name: function_eb04522d
	Namespace: namespace_431cac9
	Checksum: 0xB13C786B
	Offset: 0xBD8
	Size: 0x333
	Parameters: 3
	Flags: None
*/
function function_eb04522d(var_a8c7ece, var_e15110d3, var_12cf56f6)
{
	if(!isdefined(var_12cf56f6))
	{
		var_12cf56f6 = var_e15110d3.size;
	}
	if(var_12cf56f6 > var_e15110d3.size)
	{
		var_12cf56f6 = var_e15110d3.size;
	}
	var_932b706d = [];
	var_b9b72b4f = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e15110d3.size; var_c957f6b6++)
	{
		if(!isdefined(var_e15110d3[var_c957f6b6]))
		{
			continue;
		}
		if(isdefined(var_e15110d3[var_c957f6b6].var_aa7b6eee) && var_e15110d3[var_c957f6b6].var_aa7b6eee)
		{
			continue;
		}
		var_2d6836f8 = function_69c2f683(var_a8c7ece - var_e15110d3[var_c957f6b6].var_722885f3[2]);
		if(!isdefined(var_932b706d))
		{
			var_932b706d = [];
		}
		else if(!function_6e2770d8(var_932b706d))
		{
			var_932b706d = function_84970cc4(var_932b706d);
		}
		var_932b706d[var_932b706d.size] = var_2d6836f8;
		if(!isdefined(var_b9b72b4f))
		{
			var_b9b72b4f = [];
		}
		else if(!function_6e2770d8(var_b9b72b4f))
		{
			var_b9b72b4f = function_84970cc4(var_b9b72b4f);
		}
		var_b9b72b4f[var_b9b72b4f.size] = var_c957f6b6;
	}
	while(1)
	{
		var_d129fdb0 = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_932b706d.size - 1; var_c957f6b6++)
		{
			if(var_932b706d[var_c957f6b6] <= var_932b706d[var_c957f6b6 + 1])
			{
				continue;
			}
			var_d129fdb0 = 1;
			var_2d6836f8 = var_932b706d[var_c957f6b6];
			var_932b706d[var_c957f6b6] = var_932b706d[var_c957f6b6 + 1];
			var_932b706d[var_c957f6b6 + 1] = var_2d6836f8;
			var_4bc288a0 = var_b9b72b4f[var_c957f6b6];
			var_b9b72b4f[var_c957f6b6] = var_b9b72b4f[var_c957f6b6 + 1];
			var_b9b72b4f[var_c957f6b6 + 1] = var_4bc288a0;
		}
		if(!var_d129fdb0)
		{
			break;
		}
	}
	var_66dbf59d = [];
	if(var_b9b72b4f.size > 0)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_12cf56f6; var_c957f6b6++)
		{
			var_66dbf59d[var_c957f6b6] = var_e15110d3[var_b9b72b4f[var_c957f6b6]];
		}
	}
	return var_66dbf59d;
}

/*
	Name: function_3e466373
	Namespace: namespace_431cac9
	Checksum: 0x23AA4AA8
	Offset: 0xF18
	Size: 0x193
	Parameters: 4
	Flags: None
*/
function function_3e466373(var_6575414d, var_3a04fa7e, var_cbb15570, var_5e953b6)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "script_label";
	}
	var_707bc057 = namespace_14b42b8a::function_7faf4c39(var_cbb15570, var_5e953b6);
	if(var_3a04fa7e)
	{
		foreach(var_362f733e in var_707bc057)
		{
			var_362f733e.var_aa7b6eee = 1;
		}
		break;
	}
	foreach(var_362f733e in var_707bc057)
	{
		var_362f733e.var_aa7b6eee = undefined;
	}
	var_5dc5e20a = function_79c174a3(var_6575414d);
	var_5dc5e20a function_5ffdcb9d();
}

/*
	Name: function_b33fd8cd
	Namespace: namespace_431cac9
	Checksum: 0x64D1E3C9
	Offset: 0x10B8
	Size: 0xFB
	Parameters: 7
	Flags: None
*/
function function_b33fd8cd(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
		}
		self.var_ac46de76 = function_2e9c26ef(var_ec74b091, level.var_c1aa5253["player_dust"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	}
	else
	{
		self notify("hash_1f63111d");
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
		}
	}
}

/*
	Name: function_38ad4ef0
	Namespace: namespace_431cac9
	Checksum: 0xC8F4DCB6
	Offset: 0x11C0
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_38ad4ef0(var_ec74b091)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
}

/*
	Name: function_536a14db
	Namespace: namespace_431cac9
	Checksum: 0x252C23FB
	Offset: 0x11F0
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_536a14db(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_a10f70dd::function_99d2801(var_ec74b091, self, "c_nrc_robot_grunt_fx_def_1_rogue");
	}
	else
	{
		namespace_a10f70dd::function_fd87a5b(var_ec74b091, self, "c_nrc_robot_grunt_fx_def_1_rogue");
	}
}

/*
	Name: function_74fb8848
	Namespace: namespace_431cac9
	Checksum: 0xF8C55002
	Offset: 0x1290
	Size: 0x32F
	Parameters: 1
	Flags: None
*/
function function_74fb8848(var_ec74b091)
{
	self notify("hash_626c7e3a");
	self endon("hash_626c7e3a");
	self endon("hash_d5da096");
	wait(1);
	var_3bd3acaa = namespace_14b42b8a::function_7faf4c39("debris_spawn_point", "targetname");
	var_398ffcb7 = function_84970cc4("p7_ac_unit_large", "p7_barrel_keg_beer_metal_rusty", "p7_barrel_metal_55gal_blue_lt", "p7_barrel_plastic", "p7_barstool_modern_01", "p7_bed_frame_barrack", "p7_box_case_metal_02_large", "p7_bucket_plastic_5_gal_blue", "p7_cabinet_metal_large", "p7_cai_planter_01", "p7_cai_trashcan_metal", "p7_cargo_pallet_02", "p7_copier_plastic_med", "p7_dolly", "p7_sink_ceramic_old_01", "p7_vending_machine_food", "p7_water_heater_tank");
	while(1)
	{
		foreach(var_520ab411 in var_3bd3acaa)
		{
			var_562b538e = var_520ab411.var_f8456b37;
			var_be8789fc = var_520ab411.var_722885f3[0] + function_ef0a72b2(function_dc99997a(0, 360)) * var_562b538e;
			var_e48a0465 = var_520ab411.var_722885f3[1] + function_3c191891(function_dc99997a(0, 360)) * var_562b538e;
			var_4a6273cc = namespace_82b91a51::function_b9fd52a4(var_ec74b091, namespace_84970cc4::function_47d18840(var_398ffcb7), (var_be8789fc, var_e48a0465, var_520ab411.var_722885f3[2]), (function_26299103(360), function_26299103(360), function_26299103(360)));
			if(isdefined(var_4a6273cc))
			{
				var_4a6273cc thread function_9259cfc(var_4bc288a0 + 1);
			}
			wait(0.05);
		}
		wait(function_72a94f05(1.5, 3));
	}
}

/*
	Name: function_9259cfc
	Namespace: namespace_431cac9
	Checksum: 0xAE94C193
	Offset: 0x15C8
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_9259cfc(var_4bc288a0)
{
	self endon("hash_128f8789");
	var_99dbd5bf = function_b3bb41e6(self.var_722885f3, self.var_722885f3 + VectorScale((0, 0, -1), 999999));
	var_6389ab3d = function_7d15e2f8(self.var_722885f3, var_99dbd5bf["position"]);
	var_78962fff = var_6389ab3d / 2048;
	if(var_78962fff <= 0)
	{
		self function_dc8c8404();
		return;
	}
	self thread function_20e0d03e();
	wait(function_62e4226e(1));
	self function_a96a2721(var_99dbd5bf["position"], var_78962fff);
	self waittill("hash_a21db68a");
	self function_dc8c8404();
}

/*
	Name: function_20e0d03e
	Namespace: namespace_431cac9
	Checksum: 0xD4A4FD2
	Offset: 0x1710
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_20e0d03e()
{
	self endon("hash_a21db68a");
	var_15a53179 = function_26299103(3);
	var_78962fff = function_dc99997a(1, 4);
	while(isdefined(self))
	{
		switch(var_15a53179)
		{
			case 0:
			{
				self function_788ec1d6(360, var_78962fff);
				break;
			}
			case 1:
			{
				self function_5613042d(360, var_78962fff);
				break;
			}
			case default:
			{
				self function_21d0da55(360, var_78962fff);
				break;
			}
		}
		wait(var_78962fff - 0.5);
	}
}

/*
	Name: function_a62110e9
	Namespace: namespace_431cac9
	Checksum: 0x600BF0A6
	Offset: 0x1818
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_a62110e9()
{
	self notify("hash_b1727ec2");
	self endon("hash_b1727ec2");
	self function_7d0838b3(1.25);
	var_78962fff = function_dc99997a(2, 4);
	while(1)
	{
		self function_788ec1d6(360, var_78962fff);
		self waittill("hash_6654e4f4");
	}
}

/*
	Name: function_ace9894c
	Namespace: namespace_431cac9
	Checksum: 0xE47077BA
	Offset: 0x18B8
	Size: 0x169
	Parameters: 7
	Flags: None
*/
function function_ace9894c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_c2d82f9b = function_244f59e6(self.var_170527fb);
	if(var_9193c732)
	{
		foreach(var_4bc288a0 in var_c2d82f9b)
		{
			function_c879924d(var_4bc288a0);
		}
		break;
	}
	foreach(var_4bc288a0 in var_c2d82f9b)
	{
		function_733db26(var_4bc288a0);
	}
}

/*
	Name: function_baae4949
	Namespace: namespace_431cac9
	Checksum: 0xF4A09643
	Offset: 0x1A30
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_baae4949(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz_short");
	}
}

/*
	Name: function_16e0096d
	Namespace: namespace_431cac9
	Checksum: 0x1D7C6AE9
	Offset: 0x1AA0
	Size: 0xDB
	Parameters: 7
	Flags: None
*/
function function_16e0096d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	if(var_9193c732 == 1)
	{
		wait(0.5);
		self thread namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz_short");
		wait(0.25);
		self thread namespace_bdde9225::function_bca12b73("pstfx_raven_loop");
		wait(0.5);
		self thread namespace_bdde9225::function_51f910fd();
	}
}

/*
	Name: function_d823aea7
	Namespace: namespace_431cac9
	Checksum: 0x53E4DA03
	Offset: 0x1B88
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_d823aea7(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_frost_loop");
	}
	else
	{
		self thread namespace_bdde9225::function_51f910fd();
	}
}

/*
	Name: function_344d4c76
	Namespace: namespace_431cac9
	Checksum: 0x19E8FEDC
	Offset: 0x1C10
	Size: 0xC3
	Parameters: 7
	Flags: None
*/
function function_344d4c76(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	if(var_9193c732 == 1)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz_short");
		wait(0.3);
		self thread namespace_bdde9225::function_bca12b73("pstfx_tree_loop");
		wait(1.5);
		self thread namespace_bdde9225::function_bca12b73("pstfx_frost_loop");
	}
}

/*
	Name: function_a53d70f9
	Namespace: namespace_431cac9
	Checksum: 0xE33DD92C
	Offset: 0x1CE0
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_a53d70f9(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_c1dc0657(var_ec74b091, 2);
		function_ca48e0c8(var_ec74b091, -1, 1, -1);
	}
	else
	{
		function_c1dc0657(var_ec74b091, 1);
		function_ca48e0c8(var_ec74b091, -1, 0, -1);
	}
}

/*
	Name: function_df6eb506
	Namespace: namespace_431cac9
	Checksum: 0x5FD19394
	Offset: 0x1DA8
	Size: 0x171
	Parameters: 7
	Flags: None
*/
function function_df6eb506(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self notify("hash_aac931c8");
		self endon("hash_aac931c8");
		self endon("hash_643a7daf");
		self endon("hash_d5da096");
		while(1)
		{
			if(self function_b80a9a41() && self function_8448e0ee() === var_ec74b091)
			{
				function_2e9c26ef(var_ec74b091, level.var_c1aa5253["player_breath"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
			}
			else
			{
				namespace_82b91a51::function_67520c6a(function_72a94f05(5, 7), undefined, &function_da6acfd2, var_ec74b091, level.var_c1aa5253["breath_third_person"], self, "j_head");
			}
			wait(function_dc99997a(5, 7));
		}
	}
	else
	{
		self notify("hash_aac931c8");
	}
}

/*
	Name: function_b8a4442e
	Namespace: namespace_431cac9
	Checksum: 0x397382E3
	Offset: 0x1F28
	Size: 0xD9
	Parameters: 7
	Flags: None
*/
function function_b8a4442e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self notify("hash_dbbbf53a");
		self endon("hash_dbbbf53a");
		self endon("hash_643a7daf");
		self endon("hash_d5da096");
		while(1)
		{
			function_da6acfd2(var_ec74b091, level.var_c1aa5253["breath_third_person"], self, "j_head");
			wait(function_dc99997a(5, 7));
		}
	}
	else
	{
		self notify("hash_dbbbf53a");
	}
}

