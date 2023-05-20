#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_16f9ecd3;

/*
	Name: function_2dc19561
	Namespace: namespace_16f9ecd3
	Checksum: 0x9E85F2E
	Offset: 0x4E0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("oed", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_16f9ecd3
	Checksum: 0x9CB242EB
	Offset: 0x520
	Size: 0x59B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("toplayer", "ev_toggle", 1, 1, "int", &function_683c01d7, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "sitrep_toggle", 1, 1, "int", &function_87d1be5b, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "tmode_toggle", 1, 3, "int", &function_8fc5e501, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "active_dni_fx", 1, 1, "counter", &function_6b87ceb0, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "hack_dni_fx", 1, 1, "counter", &function_ed988375, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "thermal_active", 1, 1, "int", &function_ff9664ce, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "sitrep_material", 1, 1, "int", &function_29cf4c66, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "force_tmode", 1, 1, "int", &function_6e9780f5, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "tagged", 1, 1, "int", &function_6ce4a07c, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "thermal_active", 1, 1, "int", &function_ff9664ce, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "sitrep_material", 1, 1, "int", &function_29cf4c66, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "thermal_active", 1, 1, "int", &function_ff9664ce, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "sitrep_material", 1, 1, "int", &function_29cf4c66, 0, 0);
	namespace_71e9cb84::function_50f16166("item", "sitrep_material", 1, 1, "int", &function_29cf4c66, 0, 0);
	namespace_1c38f9cf::function_c20cc247("sitrep_keyline", 25, "keyline_active", "keyfill_active", 2, "mc/hud_outline_model_z_white", 0);
	namespace_1c38f9cf::function_c20cc247("sitrep_fill", 25, "keyfill_active", "keyline_active", 2, "mc/hud_outline_model_orange_alpha", 0);
	namespace_1c38f9cf::function_c20cc247("sitrep_keyfill", 30, "keyline_active,keyfill_active", undefined, 2, "mc/hud_outline_model_orange_calpha", 0);
	namespace_1c38f9cf::function_c20cc247("enemy_thermal", 24, "thermal_enemy_active", undefined, 2, "mc/hud_outline_model_z_red", 0);
	namespace_1c38f9cf::function_c20cc247("friendly_thermal", 24, "thermal_friendly_active", undefined, 2, "mc/hud_outline_model_z_green", 0);
	namespace_e216c11c::function_336b3c36("tac_mode", 1, 15, undefined, "tac_mode_blue");
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	level namespace_ad23e503::function_c35e6aab("activate_tmode");
	level namespace_ad23e503::function_c35e6aab("activate_thermal");
	namespace_dabbe128::function_ded1b718(&function_a5129e56);
}

/*
	Name: function_aebcf025
	Namespace: namespace_16f9ecd3
	Checksum: 0x38F833BB
	Offset: 0xAC8
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	self.var_8b31f902 = 0;
	var_7fd179a9 = 10500;
	var_3b6a005d = 3000;
	if(isdefined(level.var_6411bf7a))
	{
		var_7fd179a9 = level.var_6411bf7a;
	}
	if(isdefined(level.var_80d69208))
	{
		var_3b6a005d = level.var_80d69208;
	}
	function_9e447dae(var_ec74b091, var_7fd179a9, var_3b6a005d);
	self function_9b098331(1);
	self function_449e9025(1);
	self function_4dcdae87(1800);
	self function_13f17361(0.01);
	self function_c8420300();
	function_357cbbf0(var_ec74b091);
	function_22ee3552(var_ec74b091);
}

/*
	Name: function_a5129e56
	Namespace: namespace_16f9ecd3
	Checksum: 0xA4633418
	Offset: 0xC10
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a5129e56(var_ec74b091)
{
	function_357cbbf0(var_ec74b091);
	function_22ee3552(var_ec74b091);
}

/*
	Name: function_c8420300
	Namespace: namespace_16f9ecd3
	Checksum: 0x99EC1590
	Offset: 0xC58
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c8420300()
{
}

/*
	Name: function_bcc974a
	Namespace: namespace_16f9ecd3
	Checksum: 0xD0AC6A6E
	Offset: 0xC68
	Size: 0x109
	Parameters: 1
	Flags: None
*/
function function_bcc974a(var_ec74b091)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	var_99ccb8b4 = function_99201f25(var_ec74b091);
	foreach(var_aa10fce8 in var_99ccb8b4)
	{
		if(isdefined(var_aa10fce8.var_1aa2bd23) && var_aa10fce8.var_1aa2bd23)
		{
			var_aa10fce8.var_1aa2bd23 = 0;
			var_aa10fce8 function_752fada3(4);
		}
	}
}

/*
	Name: function_683c01d7
	Namespace: namespace_16f9ecd3
	Checksum: 0x576291E5
	Offset: 0xD80
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_683c01d7(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	if(level namespace_957e94ce::function_7922262b("menu_open"))
	{
		return;
	}
	self function_a36d7529(var_ec74b091, var_9193c732);
}

/*
	Name: function_e8b1e8b2
	Namespace: namespace_16f9ecd3
	Checksum: 0xE305AAF5
	Offset: 0xE58
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_e8b1e8b2(var_ec74b091, var_9193c732)
{
	if(isdefined(self))
	{
		self function_6b39fff5(var_9193c732);
	}
	else
	{
		function_895b00("Dev Block strings are not supported");
		function_692d71bc(var_ec74b091, var_9193c732);
	}
	/#
	#/
}

/*
	Name: function_22ee3552
	Namespace: namespace_16f9ecd3
	Checksum: 0x214B8EF7
	Offset: 0xED0
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_22ee3552(var_ec74b091)
{
	namespace_4fe3eef1::function_b2f15380("gdt_oed_loop", (1, 2, 3));
	function_843d23d0(var_ec74b091);
	wait(0.016);
	self function_e8b1e8b2(var_ec74b091, 0);
	level namespace_ad23e503::function_9d134160("activate_thermal");
}

/*
	Name: function_357cbbf0
	Namespace: namespace_16f9ecd3
	Checksum: 0x172B43BC
	Offset: 0xF68
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_357cbbf0(var_ec74b091)
{
	self function_471a18c7(0);
	self thread function_bcc974a(var_ec74b091);
	wait(0.016);
	level namespace_ad23e503::function_9d134160("activate_tmode");
}

/*
	Name: function_a36d7529
	Namespace: namespace_16f9ecd3
	Checksum: 0x766E1517
	Offset: 0xFD8
	Size: 0x1AB
	Parameters: 2
	Flags: None
*/
function function_a36d7529(var_d4e10d80, var_9193c732)
{
	self.var_8b31f902 = var_9193c732;
	if(var_9193c732)
	{
		function_357cbbf0(var_d4e10d80);
		self function_e8b1e8b2(var_d4e10d80, var_9193c732);
		level namespace_ad23e503::function_74d6b22f("activate_thermal");
		if(isdefined(level.var_109d2487))
		{
			[[level.var_109d2487]]();
		}
		function_921a1574(var_d4e10d80, "gdt_oed_on", (0, 0, 0));
		namespace_4fe3eef1::function_11908f52("gdt_oed_loop", (1, 2, 3));
		function_dd48a4cf(var_d4e10d80);
	}
	else
	{
		function_921a1574(var_d4e10d80, "gdt_oed_off", (0, 0, 0));
		namespace_4fe3eef1::function_b2f15380("gdt_oed_loop", (1, 2, 3));
		function_843d23d0(var_d4e10d80);
		wait(0.016);
		self function_e8b1e8b2(var_d4e10d80, var_9193c732);
		level namespace_ad23e503::function_9d134160("activate_thermal");
	}
}

/*
	Name: function_ff9664ce
	Namespace: namespace_16f9ecd3
	Checksum: 0x2EFF89D1
	Offset: 0x1190
	Size: 0x14B
	Parameters: 7
	Flags: None
*/
function function_ff9664ce(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	level namespace_957e94ce::function_1ab5ebec("duplicaterender_registry_ready");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self), "Dev Block strings are not supported");
	#/
	if(var_9193c732 == 0)
	{
		self.var_de2e098b = 0;
		self function_6b2297d7(var_ec74b091, 0);
	}
	else
	{
		self.var_de2e098b = var_9193c732;
		var_5dc5e20a = function_79c174a3(var_ec74b091);
		if(isdefined(var_5dc5e20a.var_8b31f902) && var_5dc5e20a.var_8b31f902)
		{
			self function_6b2297d7(var_ec74b091, 1);
		}
		else
		{
			self function_6b2297d7(var_ec74b091, 0);
		}
	}
}

/*
	Name: function_6b2297d7
	Namespace: namespace_16f9ecd3
	Checksum: 0xD700ABB5
	Offset: 0x12E8
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_6b2297d7(var_ec74b091, var_e2e6bbcb)
{
	if(self.var_3e94206a == "allies")
	{
		self namespace_1c38f9cf::function_1e56fc11("thermal_friendly_active", var_e2e6bbcb);
		var_4bc288a0 = 6;
	}
	else
	{
		self namespace_1c38f9cf::function_1e56fc11("thermal_enemy_active", var_e2e6bbcb);
		var_4bc288a0 = 5;
	}
	if(var_e2e6bbcb)
	{
		self function_cae0c618(var_4bc288a0);
	}
	else
	{
		self function_752fada3(var_4bc288a0);
	}
}

/*
	Name: function_dd48a4cf
	Namespace: namespace_16f9ecd3
	Checksum: 0x6BDD7A07
	Offset: 0x13C0
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_dd48a4cf(var_ec74b091)
{
	var_b3624865 = function_99201f25(var_ec74b091);
	foreach(var_aa10fce8 in var_b3624865)
	{
		if(isdefined(var_aa10fce8.var_de2e098b) && var_aa10fce8.var_de2e098b)
		{
			var_aa10fce8 function_6b2297d7(var_ec74b091, 1);
		}
	}
}

/*
	Name: function_843d23d0
	Namespace: namespace_16f9ecd3
	Checksum: 0x34E2355B
	Offset: 0x14B0
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_843d23d0(var_ec74b091)
{
	var_b3624865 = function_99201f25(var_ec74b091);
	foreach(var_aa10fce8 in var_b3624865)
	{
		if(isdefined(var_aa10fce8.var_de2e098b) && var_aa10fce8.var_de2e098b)
		{
			var_aa10fce8 function_6b2297d7(var_ec74b091, 0);
		}
	}
}

/*
	Name: function_aa868720
	Namespace: namespace_16f9ecd3
	Checksum: 0x8B34FE18
	Offset: 0x15A0
	Size: 0xAB
	Parameters: 7
	Flags: None
*/
function function_aa868720(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	level namespace_957e94ce::function_1ab5ebec("duplicaterender_registry_ready");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self), "Dev Block strings are not supported");
	#/
	if(var_9193c732)
	{
		self namespace_1c38f9cf::function_a75081b3(var_ec74b091, var_9193c732);
	}
}

/*
	Name: function_6e9780f5
	Namespace: namespace_16f9ecd3
	Checksum: 0x7C2C5A3A
	Offset: 0x1658
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_6e9780f5(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self.var_10b39c91 = 1;
		self function_cae0c618(1);
	}
	else
	{
		self.var_10b39c91 = 0;
		self function_752fada3(1);
	}
}

/*
	Name: function_6ce4a07c
	Namespace: namespace_16f9ecd3
	Checksum: 0x8BC85B39
	Offset: 0x1700
	Size: 0x53
	Parameters: 7
	Flags: None
*/
function function_6ce4a07c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_5fb84e27(self, var_9193c732);
}

/*
	Name: function_6b87ceb0
	Namespace: namespace_16f9ecd3
	Checksum: 0xB23A7F52
	Offset: 0x1760
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_6b87ceb0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self thread namespace_bdde9225::function_bca12b73("pstfx_tactical_bootup");
}

/*
	Name: function_ed988375
	Namespace: namespace_16f9ecd3
	Checksum: 0x2279FF1E
	Offset: 0x17C8
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_ed988375(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self thread namespace_bdde9225::function_bca12b73("pstfx_hacking_bootup");
	self function_921a1574(0, "uin_hack_mode_activate");
}

/*
	Name: function_3b4d6db0
	Namespace: namespace_16f9ecd3
	Checksum: 0xBF8D3CDB
	Offset: 0x1850
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_3b4d6db0(var_ec74b091, var_99268403)
{
	if(!isdefined(var_99268403))
	{
		var_99268403 = 1;
	}
	self function_471a18c7(0);
	if(!isdefined(level.var_e46224ba) && !function_cc5c4ab6(var_ec74b091) && var_99268403)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_tactical_bootup");
	}
	self thread function_bcc974a(var_ec74b091);
	if(!function_cc5c4ab6(var_ec74b091) && var_99268403)
	{
		self function_921a1574(0, "uin_tac_mode_off");
	}
	level namespace_ad23e503::function_9d134160("activate_tmode");
}

/*
	Name: function_165838aa
	Namespace: namespace_16f9ecd3
	Checksum: 0xD69F07C4
	Offset: 0x1960
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function function_165838aa(var_ec74b091, var_99268403)
{
	if(!isdefined(var_99268403))
	{
		var_99268403 = 1;
	}
	function_22ee3552(var_ec74b091);
	level namespace_ad23e503::function_74d6b22f("activate_tmode");
	self function_471a18c7(1);
	if(isdefined(level.var_3bef64e1))
	{
		[[level.var_3bef64e1]]();
	}
	if(!isdefined(level.var_e46224ba) && var_99268403)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_tactical_bootup");
	}
	if(var_99268403)
	{
		self function_921a1574(0, "uin_tac_mode_on");
	}
}

/*
	Name: function_8fc5e501
	Namespace: namespace_16f9ecd3
	Checksum: 0x868F52F
	Offset: 0x1A58
	Size: 0x123
	Parameters: 7
	Flags: None
*/
function function_8fc5e501(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self.var_ec74b091))
	{
		return;
	}
	if(self.var_ec74b091 != var_ec74b091)
	{
		return;
	}
	if(level namespace_957e94ce::function_7922262b("menu_open"))
	{
		return;
	}
	self notify("hash_84f2548f");
	self.var_8b70667f = var_9193c732;
	var_99268403 = 0;
	if(var_9193c732 & 2)
	{
		var_99268403 = 1;
	}
	if(var_9193c732 & 4)
	{
		self function_165838aa(var_ec74b091, var_99268403);
	}
	else
	{
		self function_3b4d6db0(var_ec74b091, var_99268403);
	}
}

/*
	Name: function_87d1be5b
	Namespace: namespace_16f9ecd3
	Checksum: 0x74B8B325
	Offset: 0x1B88
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_87d1be5b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self.var_ec74b091))
	{
		return;
	}
	if(self.var_ec74b091 != var_ec74b091)
	{
		return;
	}
	self thread function_9532d33d(var_ec74b091, var_9193c732);
}

/*
	Name: function_9532d33d
	Namespace: namespace_16f9ecd3
	Checksum: 0x551127AC
	Offset: 0x1C28
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_9532d33d(var_d4e10d80, var_9193c732)
{
	self.var_c5bcb2b9 = var_9193c732;
	self function_b16b83d6(var_9193c732);
}

/*
	Name: function_29cf4c66
	Namespace: namespace_16f9ecd3
	Checksum: 0xA39F2ACA
	Offset: 0x1C70
	Size: 0x183
	Parameters: 7
	Flags: None
*/
function function_29cf4c66(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self), "Dev Block strings are not supported");
	#/
	level namespace_957e94ce::function_1ab5ebec("duplicaterender_registry_ready");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self), "Dev Block strings are not supported");
	#/
	if(var_9193c732 == 0)
	{
		self notify("hash_1b32b83b");
		self.var_6c4eaf38 = undefined;
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, undefined, "keyline_active,keyfill_active");
		self function_cae0c618(2);
	}
	else
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "keyline_active", "keyfill_active");
		self.var_ac0e7241 = 1;
		self function_752fada3(2);
		if(!isdefined(self.var_6c4eaf38))
		{
			self.var_6c4eaf38 = 1;
			self thread function_537efcea(var_ec74b091);
		}
	}
}

/*
	Name: function_537efcea
	Namespace: namespace_16f9ecd3
	Checksum: 0x67D6593E
	Offset: 0x1E00
	Size: 0x279
	Parameters: 1
	Flags: None
*/
function function_537efcea(var_ec74b091)
{
	self endon("hash_128f8789");
	self endon("hash_d5da096");
	self endon("hash_1b32b83b");
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_5dc5e20a endon("hash_643a7daf");
	var_5dc5e20a endon("hash_d5da096");
	var_56f99f06 = 0;
	var_56f99f06 = function_f3087faa("interactivePromptNearToDist", 8.4);
	var_56f99f06 = var_56f99f06 * 39.37;
	while(1)
	{
		var_ccd4343c = function_7d15e2f8(self.var_722885f3, var_5dc5e20a.var_722885f3);
		var_98b6ad82 = level namespace_ad23e503::function_7922262b("activate_thermal");
		var_d2ca8de = 0;
		if(var_ccd4343c <= 90 || var_ccd4343c > var_56f99f06 && self.var_ac0e7241 && !var_98b6ad82 && !var_d2ca8de || (var_98b6ad82 || var_d2ca8de && self.var_ac0e7241))
		{
			self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, undefined, "keyline_active,keyfill_active");
			self function_752fada3(2);
			self.var_ac0e7241 = 0;
		}
		else if(var_ccd4343c > 90 && var_ccd4343c <= var_56f99f06 && !self.var_ac0e7241 && !var_98b6ad82 && !var_d2ca8de)
		{
			self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "keyline_active", "keyfill_active");
			self function_cae0c618(2);
			self.var_ac0e7241 = 1;
		}
		wait(0.016 * function_dc99997a(1, 10));
	}
}

