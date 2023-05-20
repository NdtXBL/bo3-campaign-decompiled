#using scripts\codescripts\struct;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_df84fe46;

/*
	Name: function_c35e6aab
	Namespace: namespace_df84fe46
	Checksum: 0xCFF9DBEB
	Offset: 0x2E8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	function_2ea898a8();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_df84fe46
	Checksum: 0xCC0D3757
	Offset: 0x308
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "misdirection_enable", 1, 1, "int", &function_ec87e5c5, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "makedecoy", 1, 1, "int", &function_ac2a831d, 0, 0);
	namespace_1c38f9cf::function_1a41edb("armor_pl", 0, "armor_on", undefined, 1, "mc/mtl_power_armor", 0);
}

/*
	Name: function_ec87e5c5
	Namespace: namespace_df84fe46
	Checksum: 0x22EF6C6C
	Offset: 0x3D8
	Size: 0x53
	Parameters: 7
	Flags: None
*/
function function_ec87e5c5(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_9b227748(var_ec74b091, var_9193c732);
}

/*
	Name: function_2c16a75b
	Namespace: namespace_df84fe46
	Checksum: 0xD69D6BB
	Offset: 0x438
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_2c16a75b(var_ec74b091)
{
	self endon("hash_d5da096");
	wait(0.016);
	var_76dfdc9 = self.var_722885f3;
	var_4e886208 = function_72a94f05(4, 12);
	var_42d9e9e3 = function_72a94f05(0.2, 1);
	var_37d22dd = function_26299103(360);
	while(1)
	{
		var_37d22dd = var_37d22dd + var_42d9e9e3;
		if(var_37d22dd > 360)
		{
			var_37d22dd = function_b6b79a0(var_37d22dd) % 360;
		}
		var_50413d99 = function_3c191891(var_37d22dd);
		var_f7827dff = var_4e886208 * var_50413d99;
		self.var_722885f3 = var_76dfdc9 + (0, 0, var_f7827dff);
		wait(0.016);
	}
}

/*
	Name: function_ac2a831d
	Namespace: namespace_df84fe46
	Checksum: 0xA9084D34
	Offset: 0x588
	Size: 0x38B
	Parameters: 7
	Flags: None
*/
function function_ac2a831d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self.var_b97178f7 = function_9b7fda5e(var_ec74b091, self.var_722885f3, "script_model");
		if(isdefined(self.var_b97178f7))
		{
			self.var_b97178f7 function_e48f905e("veh_t7_wasp_cybercom");
			self.var_b97178f7.var_6ab6f4fd = (0, function_26299103(360), 0);
			self.var_b97178f7 function_50ccee8d();
			self.var_b97178f7 thread function_2c16a75b();
			self.var_b97178f7 namespace_1c38f9cf::function_1e56fc11("armor_on", 1);
			self.var_b97178f7 namespace_1c38f9cf::function_2c582173(var_ec74b091);
			var_aa5d763a = "scriptVector3";
			var_fc81e73c = 0.4;
			var_754d7044 = 1;
			var_e754df7f = 0.45;
			var_595c4eba = 0;
			var_6c5c3132 = "scriptVector4";
			var_93429fd9 = 0.6;
			self.var_b97178f7 function_e7f6dc4e(var_ec74b091, 0, var_aa5d763a, var_fc81e73c, var_754d7044, var_e754df7f, var_595c4eba);
			self.var_b97178f7 function_e7f6dc4e(var_ec74b091, 0, var_6c5c3132, var_93429fd9, 0, 0, 0);
			function_da6acfd2(var_ec74b091, "vehicle/fx_veh_dni_wasp_rez_in", self.var_b97178f7, "tag_origin");
			wait(0.25);
			self.var_b97178f7 function_48f26766();
		}
		self function_921a1574(0, "gdt_cybercore_decoy_spawn");
		self.var_9a18ebba = self function_c2931a36("gdt_cybercore_decoy_lp", 0.75);
		self thread function_4fbb807c(self.var_722885f3);
	}
	else if(isdefined(self.var_b97178f7))
	{
		function_da6acfd2(var_ec74b091, "vehicle/fx_veh_dni_wasp_rez_out", self.var_b97178f7, "tag_origin");
		self.var_b97178f7 namespace_1c38f9cf::function_1e56fc11("armor_on", 0);
		var_b97178f7 = self.var_b97178f7;
		wait(0.25);
		var_b97178f7 function_dc8c8404();
	}
}

/*
	Name: function_4fbb807c
	Namespace: namespace_df84fe46
	Checksum: 0x8585797C
	Offset: 0x920
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_4fbb807c(var_c70dfc78)
{
	self waittill("hash_d5da096");
	function_921a1574(0, "gdt_cybercore_decoy_delete", var_c70dfc78);
}

