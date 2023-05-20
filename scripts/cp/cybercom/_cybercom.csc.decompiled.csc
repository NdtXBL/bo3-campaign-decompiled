#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_gadget_misdirection;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_175490fb;

/*
	Name: function_2dc19561
	Namespace: namespace_175490fb
	Checksum: 0xF06EE7DA
	Offset: 0xB10
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("cybercom", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_175490fb
	Checksum: 0x3D97D02A
	Offset: 0xB50
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_6c1294b8("cybercom_fastswitch_enabled", "1");
	level.var_8e17394 = 0;
	function_2ea898a8();
	function_15b9d1ea();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_fbc778c5::function_c35e6aab();
	namespace_acd01c5c::function_c35e6aab();
	namespace_df84fe46::function_c35e6aab();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_175490fb
	Checksum: 0x8DA5274
	Offset: 0xC00
	Size: 0x5D9
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "cybercom_disabled", 1, 1, "int", &function_be9fd9e0, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "cybercom_disabled", 1, 1, "int", &function_6e9f329b, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_setiffname", 1, 3, "int", &function_ad58c2c9, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "cybercom_setiffname", 1, 3, "int", &function_ad58c2c9, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "cybercom_immolate", 1, 2, "int", &function_87475da2, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_immolate", 1, 1, "int", &function_a7363f41, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "cybercom_sysoverload", 1, 2, "int", &function_572c7315, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_sysoverload", 1, 1, "int", &function_38510c4a, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "cybercom_surge", 1, 2, "int", &function_2d61bf2e, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_surge", 1, 2, "int", &function_50dfd00b, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "cybercom_surge", 1, 1, "int", &function_38cc3f2e, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "cybercom_shortout", 1, 2, "int", &function_82d4e6fe, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "cybercom_shortout", 1, 2, "int", &function_6f88468d, 0, 0);
	namespace_71e9cb84::function_50f16166("allplayers", "cyber_arm_pulse", 1, 2, "counter", &function_7ee723d1, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "cyber_arm_pulse", 1, 2, "counter", &function_7ee723d1, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "cyber_arm_pulse", 1, 2, "counter", &function_7ee723d1, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "sensory_overload", 1, 2, "int", &function_dacce323, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "forced_malfunction", 1, 1, "int", &function_815b0789, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "hacking_progress", 1, 12, "int", &function_9439eecf, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "resetAbilityWheel", 1, 1, "int", &function_806d1a61, 0, 0);
	level.var_c1aa5253["sensory_disable_human"] = "electric/fx_ability_elec_sensory_ol_human";
	level.var_c1aa5253["forced_malfunction"] = "electric/fx_ability_elec_sensory_ol_weapon";
}

/*
	Name: function_15b9d1ea
	Namespace: namespace_175490fb
	Checksum: 0xE224E8F4
	Offset: 0x11E8
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function function_15b9d1ea()
{
	level.var_6d1233cd = function_a8fb77bd();
	level.var_6d1233cd.var_f9151455 = [];
	level.var_6d1233cd.var_f9151455[0] = 1;
	level.var_6d1233cd.var_f9151455[1] = 2;
	level.var_6d1233cd.var_f9151455[2] = 6;
	level.var_6d1233cd.var_f9151455[3] = 3;
	level.var_6d1233cd.var_f9151455[4] = 5;
	level.var_6d1233cd.var_f9151455[5] = 4;
	level.var_6d1233cd.var_7835feac = [];
	level.var_6d1233cd.var_7835feac[0] = 0;
	level.var_6d1233cd.var_7835feac[1] = 1;
	level.var_6d1233cd.var_7835feac[2] = 3;
	level.var_6d1233cd.var_7835feac[3] = 5;
	level.var_6d1233cd.var_7835feac[4] = 4;
	level.var_6d1233cd.var_7835feac[5] = 2;
}

/*
	Name: function_ff55db55
	Namespace: namespace_175490fb
	Checksum: 0x42990FE
	Offset: 0x1380
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_ff55db55(var_29072664)
{
	return level.var_6d1233cd.var_f9151455[var_29072664];
}

/*
	Name: function_d3ef9004
	Namespace: namespace_175490fb
	Checksum: 0x665119D3
	Offset: 0x13A8
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_d3ef9004(var_b41337db)
{
	return level.var_6d1233cd.var_7835feac[var_b41337db];
}

/*
	Name: function_850a0f8d
	Namespace: namespace_175490fb
	Checksum: 0xADC74C16
	Offset: 0x13D0
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function function_850a0f8d(var_80c5df, var_abf8ab96)
{
	for(var_5e76f0af = 1; var_5e76f0af < 6; var_5e76f0af++)
	{
		var_93a57fde = var_abf8ab96 + var_5e76f0af % 6;
		var_fb0372cb = function_d3ef9004(var_93a57fde);
		if(self function_9c4789c0(var_80c5df, var_fb0372cb))
		{
			return var_93a57fde;
		}
	}
	return undefined;
}

/*
	Name: function_5eccc9a4
	Namespace: namespace_175490fb
	Checksum: 0x3B2FD7A2
	Offset: 0x1480
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_5eccc9a4(var_ec74b091)
{
	var_28b99141 = self function_b0f8529d();
	var_1d8356fd = function_371a93b4(var_ec74b091, var_28b99141);
	if(!isdefined(var_1d8356fd))
	{
		return;
	}
	var_f0285882 = self function_850a0f8d(var_28b99141, var_1d8356fd);
	if(!isdefined(var_f0285882))
	{
		return;
	}
	var_b536f3a3 = function_d3ef9004(var_f0285882);
	var_d2dd9579 = self function_b5a28a10(self function_b0f8529d(), var_b536f3a3);
	self function_c42e9308(var_d2dd9579);
	function_62d5481c(var_ec74b091, var_28b99141, var_f0285882);
}

/*
	Name: function_aebcf025
	Namespace: namespace_175490fb
	Checksum: 0xBE3976B2
	Offset: 0x15C0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	self function_b2a31ff5(var_ec74b091);
	self thread function_1ae067db(var_ec74b091);
}

/*
	Name: function_2551a9f6
	Namespace: namespace_175490fb
	Checksum: 0x1F342338
	Offset: 0x1608
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_2551a9f6(var_ec74b091)
{
	if(!isdefined(self.var_7e5d2bdb) && !function_cc5c4ab6(var_ec74b091))
	{
		self.var_7e5d2bdb = function_5307ab20(var_ec74b091, self.var_175490fb.var_1df81780);
		function_2f6b6a4c(var_ec74b091, self.var_7e5d2bdb);
		self function_f5e709a8(1);
		namespace_4fe3eef1::function_11908f52("gdt_tac_menu_snapshot_loop", (0, 0, 0));
	}
	else
	{
		self.var_316fa5e6 = 1;
	}
	self.var_5208f863 = undefined;
}

/*
	Name: function_6944603a
	Namespace: namespace_175490fb
	Checksum: 0xBE7B628C
	Offset: 0x16E8
	Size: 0xD5
	Parameters: 2
	Flags: None
*/
function function_6944603a(var_ec74b091, var_1df81780)
{
	self endon("hash_643a7daf");
	self notify("hash_6944603a");
	self endon("hash_6944603a");
	namespace_4fe3eef1::function_b2f15380("gdt_tac_menu_snapshot_loop", (0, 0, 0));
	wait(0.25);
	function_2b74b70a(var_ec74b091, var_1df81780);
	if(!isdefined(self))
	{
		return;
	}
	self.var_7e5d2bdb = undefined;
	self function_f5e709a8(0);
	if(isdefined(self.var_316fa5e6) && self.var_316fa5e6)
	{
		self function_2551a9f6(var_ec74b091);
		self.var_316fa5e6 = undefined;
	}
}

/*
	Name: function_1a968b40
	Namespace: namespace_175490fb
	Checksum: 0xB36F96C4
	Offset: 0x17C8
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_1a968b40(var_ec74b091)
{
	if(isdefined(self.var_7e5d2bdb))
	{
		function_3a9588ea(var_ec74b091, self.var_7e5d2bdb, "close_current_menu", 1);
		self thread function_6944603a(var_ec74b091, self.var_7e5d2bdb);
	}
	else if(isdefined(self.var_5208f863) && (isdefined(self.var_5208f863) && self.var_5208f863) && function_4bd0142f("cybercom_fastswitch_enabled") == 1)
	{
		self function_5eccc9a4(var_ec74b091);
	}
	self.var_316fa5e6 = undefined;
	self.var_5208f863 = undefined;
}

/*
	Name: function_536608d5
	Namespace: namespace_175490fb
	Checksum: 0x8A0A1DEE
	Offset: 0x18A8
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_536608d5(var_ec74b091)
{
	self endon("hash_643a7daf");
	self notify("hash_9bd07647");
	self endon("hash_9bd07647");
	for(;;)
	{
		self namespace_82b91a51::function_5b7e3888("tactical_menu_close", "death");
		self function_1a968b40(var_ec74b091);
	}
}

/*
	Name: function_524667f7
	Namespace: namespace_175490fb
	Checksum: 0x61042E36
	Offset: 0x1920
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_524667f7(var_ec74b091)
{
	self endon("hash_43329acf");
	self endon("hash_8d1dd925");
	self endon("hash_ae8ccd0d");
	self endon("hash_128f8789");
	self.var_5208f863 = 1;
	wait(0.15);
	self function_2551a9f6(var_ec74b091);
}

/*
	Name: function_8887931f
	Namespace: namespace_175490fb
	Checksum: 0xD41E2F74
	Offset: 0x1998
	Size: 0x97
	Parameters: 1
	Flags: None
*/
function function_8887931f(var_ec74b091)
{
	self notify("hash_ae8ccd0d");
	self endon("hash_ae8ccd0d");
	for(;;)
	{
		self waittill("hash_43329acf");
		if(level.var_8e17394 == 0 && (!isdefined(self.var_6e9f329b) && self.var_6e9f329b) && !function_cc5c4ab6(var_ec74b091))
		{
			self thread function_524667f7(var_ec74b091);
		}
	}
}

/*
	Name: function_820cd75b
	Namespace: namespace_175490fb
	Checksum: 0x4108D146
	Offset: 0x1A38
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_820cd75b(var_ec74b091)
{
	self notify("hash_820cd75b");
	self endon("hash_820cd75b");
	for(;;)
	{
		self waittill("hash_8ab38dcb");
		if(isdefined(self.var_7e5d2bdb))
		{
			self function_1a968b40(var_ec74b091);
			continue;
		}
		if(level.var_8e17394 == 0 && (!isdefined(self.var_6e9f329b) && self.var_6e9f329b) && !function_cc5c4ab6(var_ec74b091))
		{
			self function_2551a9f6(var_ec74b091);
		}
	}
}

/*
	Name: function_1ae067db
	Namespace: namespace_175490fb
	Checksum: 0xEFA504B2
	Offset: 0x1B00
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_1ae067db(var_ec74b091)
{
	if(self function_b80a9a41())
	{
		self thread function_8887931f(var_ec74b091);
		self thread function_536608d5(var_ec74b091);
		self thread function_820cd75b(var_ec74b091);
	}
}

/*
	Name: function_6e9f329b
	Namespace: namespace_175490fb
	Checksum: 0xF5BC6F83
	Offset: 0x1B78
	Size: 0x71
	Parameters: 7
	Flags: None
*/
function function_6e9f329b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self notify("hash_8d1dd925");
		self.var_6e9f329b = 1;
	}
	else
	{
		self.var_6e9f329b = undefined;
	}
}

/*
	Name: function_be9fd9e0
	Namespace: namespace_175490fb
	Checksum: 0x6F90DCFA
	Offset: 0x1BF8
	Size: 0x18F
	Parameters: 7
	Flags: None
*/
function function_be9fd9e0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level.var_8e17394 = var_9193c732;
	var_2395e945 = function_d4b4bd92();
	if(level.var_8e17394 == 1)
	{
		foreach(var_5dc5e20a in var_2395e945)
		{
			var_5dc5e20a notify("hash_8d1dd925");
			var_5dc5e20a.var_6e9f329b = 1;
		}
		break;
	}
	foreach(var_5dc5e20a in var_2395e945)
	{
		var_5dc5e20a notify("hash_8d1dd925");
		var_5dc5e20a.var_6e9f329b = undefined;
	}
}

/*
	Name: function_23f4af98
	Namespace: namespace_175490fb
	Checksum: 0x589409BF
	Offset: 0x1D90
	Size: 0x15B
	Parameters: 7
	Flags: None
*/
function function_23f4af98(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5dc5e20a));
	#/
	if(isdefined(var_5dc5e20a.var_23f4af98) && var_5dc5e20a.var_23f4af98 && !var_9193c732)
	{
		var_5dc5e20a.var_23f4af98 = undefined;
		function_6a90da04(var_ec74b091, function_6f1ebe57("mapname"), 0);
	}
	else if(!isdefined(var_5dc5e20a.var_23f4af98) && var_5dc5e20a.var_23f4af98 && var_9193c732)
	{
		var_5dc5e20a.var_23f4af98 = 1;
		function_6a90da04(var_ec74b091, "cheat_bw", 0.5);
	}
}

/*
	Name: function_a4a20db6
	Namespace: namespace_175490fb
	Checksum: 0x611CD051
	Offset: 0x1EF8
	Size: 0x15B
	Parameters: 7
	Flags: None
*/
function function_a4a20db6(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5dc5e20a));
	#/
	if(isdefined(var_5dc5e20a.var_70b79bdd) && var_5dc5e20a.var_70b79bdd && !var_9193c732)
	{
		var_5dc5e20a.var_70b79bdd = undefined;
		function_6a90da04(var_ec74b091, function_6f1ebe57("mapname"), 0);
	}
	else if(!isdefined(var_5dc5e20a.var_70b79bdd) && var_5dc5e20a.var_70b79bdd && var_9193c732)
	{
		var_5dc5e20a.var_70b79bdd = 1;
		function_6a90da04(var_ec74b091, "cheat_bw", 0.5);
	}
}

/*
	Name: function_52e82d52
	Namespace: namespace_175490fb
	Checksum: 0x57728CED
	Offset: 0x2060
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_52e82d52(var_ec74b091)
{
	self notify("hash_52e82d52");
	self endon("hash_52e82d52");
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	self.var_175490fb.var_3064004f = 0;
	while(1)
	{
		self waittill("hash_92d38111");
		var_6556d20e = GetTime();
		if(self.var_175490fb.var_3064004f + 1000 < var_6556d20e)
		{
			function_7ee723d1(var_ec74b091, 0, 0);
			self.var_175490fb.var_3064004f = var_6556d20e;
		}
	}
}

/*
	Name: function_b2a31ff5
	Namespace: namespace_175490fb
	Checksum: 0x13A4C30E
	Offset: 0x2130
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_b2a31ff5(var_ec74b091)
{
	if(!isdefined(self.var_175490fb))
	{
		self.var_175490fb = function_a8fb77bd();
		self.var_175490fb.var_1df81780 = "AbilityWheel";
		self.var_7e5d2bdb = undefined;
	}
	self thread function_52e82d52(var_ec74b091);
}

/*
	Name: function_38510c4a
	Namespace: namespace_175490fb
	Checksum: 0xEA7CDCD0
	Offset: 0x21A8
	Size: 0x17D
	Parameters: 7
	Flags: None
*/
function function_38510c4a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_fd4ba5e1(var_ec74b091, "electric/fx_elec_sparks_burst_lg_os", self.var_722885f3);
		if(isdefined(self.var_8fc0e50e))
		{
			switch(self.var_8fc0e50e)
			{
				case "turret":
				{
					function_921a1574(0, "gdt_cybercore_turret_shutdown", self.var_722885f3);
					break;
				}
				case "amws":
				{
					function_921a1574(0, "gdt_cybercore_amws_shutdown", self.var_722885f3);
					break;
				}
				case "pamws":
				{
					function_921a1574(0, "gdt_cybercore_amws_shutdown", self.var_722885f3);
					break;
				}
				case "raps":
				{
					function_921a1574(0, "veh_raps_skid", self.var_722885f3);
					break;
				}
				case "wasp":
				{
					function_921a1574(0, "gdt_cybercore_wasp_shutdown", self.var_722885f3);
					break;
				}
			}
		}
	}
}

/*
	Name: function_572c7315
	Namespace: namespace_175490fb
	Checksum: 0xD5119E89
	Offset: 0x2330
	Size: 0xE3
	Parameters: 7
	Flags: None
*/
function function_572c7315(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_da6acfd2(var_ec74b091, "electric/fx_elec_sparks_burst_lg_os", self, "j_neck");
		self function_921a1574(0, "fly_bot_disable");
	}
	else if(var_9193c732 == 2)
	{
		function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_startup_robot", self, "j_spine4");
		self function_921a1574(0, "fly_bot_reboot");
	}
}

/*
	Name: function_38cc3f2e
	Namespace: namespace_175490fb
	Checksum: 0x615904F3
	Offset: 0x2420
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_38cc3f2e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_trail", self, "tag_origin");
		self function_921a1574(0, "gdt_surge_bounce");
	}
}

/*
	Name: function_2d61bf2e
	Namespace: namespace_175490fb
	Checksum: 0x571CE7E9
	Offset: 0x24B8
	Size: 0xE3
	Parameters: 7
	Flags: None
*/
function function_2d61bf2e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_robot", self, "j_spine4");
		self function_921a1574(0, "gdt_surge_impact");
	}
	else if(var_9193c732 == 2)
	{
		function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_robot", self, "j_spine4");
		self function_921a1574(0, "gdt_surge_chase");
	}
}

/*
	Name: function_50dfd00b
	Namespace: namespace_175490fb
	Checksum: 0xDB02D505
	Offset: 0x25A8
	Size: 0x355
	Parameters: 7
	Flags: None
*/
function function_50dfd00b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(isdefined(self.var_3949887b))
	{
		function_d555a113(var_ec74b091, self.var_3949887b);
	}
	if(var_9193c732 == 1)
	{
		self function_921a1574(0, "gdt_surge_impact");
		switch(self.var_8fc0e50e)
		{
			case "turret":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_turret", self, "tag_fx");
				break;
			}
			case "amws":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_amws", self, "tag_head_slide_animate");
				break;
			}
			case "pamws":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_pamws", self, "tag_head_slide_animate");
				break;
			}
			case "raps":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_raps", self, "tag_wheel_front_right_animate");
				break;
			}
			case "wasp":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_wasp", self, "tag_body");
				break;
			}
			case default:
			{
				/#
					namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
				#/
				break;
			}
		}
		break;
	}
	if(var_9193c732 == 2)
	{
		switch(self.var_8fc0e50e)
		{
			case "turret":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_turret", self, "tag_fx");
				break;
			}
			case "amws":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_amws", self, "tag_head_slide_animate");
				break;
			}
			case "pamws":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_pamws", self, "tag_head_slide_animate");
				break;
			}
			case "raps":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_raps", self, "tag_wheel_front_right_animate");
				break;
			}
			case "wasp":
			{
				self.var_3949887b = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_wasp", self, "tag_body");
				break;
			}
			case default:
			{
				/#
					namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
				#/
				break;
			}
		}
	}
}

/*
	Name: function_82d4e6fe
	Namespace: namespace_175490fb
	Checksum: 0x9CA258CE
	Offset: 0x2908
	Size: 0xE3
	Parameters: 7
	Flags: None
*/
function function_82d4e6fe(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_921a1574(0, "gdt_servo_robot_die");
		function_da6acfd2(var_ec74b091, "electric/fx_ability_servo_shortout_robot", self, "j_spine4");
	}
	if(var_9193c732 == 2)
	{
		function_da6acfd2(var_ec74b091, "destruct/fx_dest_robot_limb_sparks_right", self, "j_knee_ri");
		function_da6acfd2(var_ec74b091, "destruct/fx_dest_robot_limb_sparks_left", self, "j_knee_le");
	}
}

/*
	Name: function_6f88468d
	Namespace: namespace_175490fb
	Checksum: 0xBD9CB45B
	Offset: 0x29F8
	Size: 0x355
	Parameters: 7
	Flags: None
*/
function function_6f88468d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(isdefined(self.var_3e759796))
	{
		function_d555a113(var_ec74b091, self.var_3e759796);
	}
	if(var_9193c732 == 1)
	{
		self function_921a1574(0, "gdt_servo_robot_die");
		switch(self.var_8fc0e50e)
		{
			case "turret":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_turret", self, "tag_fx");
				break;
			}
			case "amws":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_amws", self, "tag_head_slide_animate");
				break;
			}
			case "pamws":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_pamws", self, "tag_head_slide_animate");
				break;
			}
			case "raps":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_raps", self, "tag_wheel_front_right_animate");
				break;
			}
			case "wasp":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_wasp", self, "tag_body");
				break;
			}
			case default:
			{
				/#
					namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
				#/
				break;
			}
		}
		break;
	}
	if(var_9193c732 == 2)
	{
		switch(self.var_8fc0e50e)
		{
			case "turret":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_turret", self, "tag_fx");
				break;
			}
			case "amws":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_amws", self, "tag_head_slide_animate");
				break;
			}
			case "pamws":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_pamws", self, "tag_head_slide_animate");
				break;
			}
			case "raps":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_raps", self, "tag_wheel_front_right_animate");
				break;
			}
			case "wasp":
			{
				self.var_3e759796 = function_da6acfd2(var_ec74b091, "electric/fx_ability_elec_surge_short_upgrade_wasp", self, "tag_body");
				break;
			}
			case default:
			{
				/#
					namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported");
				#/
				break;
			}
		}
	}
}

/*
	Name: function_87475da2
	Namespace: namespace_175490fb
	Checksum: 0xA879A994
	Offset: 0x2D58
	Size: 0x1EB
	Parameters: 7
	Flags: None
*/
function function_87475da2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(self.var_8fc0e50e == "robot")
	{
		if(var_9193c732 == 1)
		{
			self function_921a1574(0, "gdt_immolation_robot_countdown");
		}
		else if(var_9193c732 == 2)
		{
			var_5dc5e20a = function_d4b4bd92()[0];
			var_5dc5e20a function_9cf04c2e(0.5, 0.5, self.var_722885f3, 500);
			function_5e09918e(var_ec74b091, "grenade_rumble", self.var_722885f3);
			function_921a1574(0, "wpn_incendiary_explode", self.var_722885f3);
			function_da6acfd2(var_ec74b091, "explosions/fx_ability_exp_immolation", self, "j_spinelower");
			function_534b3cba(var_ec74b091, self.var_722885f3, 200, 32, 2, 10, 1, 1, 1);
		}
	}
	else if(self.var_8fc0e50e == "human" || self.var_8fc0e50e == "human_riotshield")
	{
		if(var_9193c732 == 1)
		{
			self function_921a1574(0, "gdt_immolation_human_countdown");
		}
	}
}

/*
	Name: function_a7363f41
	Namespace: namespace_175490fb
	Checksum: 0x90467609
	Offset: 0x2F50
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_a7363f41(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_921a1574(0, "gdt_immolation_robot_countdown");
	}
}

/*
	Name: function_ad58c2c9
	Namespace: namespace_175490fb
	Checksum: 0x8C19CEE2
	Offset: 0x2FC0
	Size: 0x235
	Parameters: 7
	Flags: None
*/
function function_ad58c2c9(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	switch(var_9193c732)
	{
		case 0:
		{
			self function_b18b3a98();
			self.var_2b998b77 = undefined;
			self notify("hash_e0f9c098");
			break;
		}
		case 1:
		{
			var_8caa0808 = function_5c8c8601("WEAPON_LINK_INPROGRESS");
			self.var_2b998b77 = var_8caa0808;
			self function_b18b3a98(self.var_2b998b77, 1);
			self function_921a1574(0, "gdt_iff_activate");
			break;
		}
		case 2:
		{
			self.var_2b998b77 = function_a4cd6b9a();
			self function_b18b3a98(self.var_2b998b77);
			self namespace_dabbe128::function_b38b56f(&function_d48fcfa6);
			break;
		}
		case 3:
		{
			var_8caa0808 = function_5c8c8601("WEAPON_LINK_FAILURE");
			self.var_2b998b77 = var_8caa0808;
			self function_b18b3a98(self.var_2b998b77, 1);
			break;
		}
		case 4:
		{
			var_8caa0808 = function_5c8c8601("WEAPON_LINK_TERMINATED");
			self.var_2b998b77 = var_8caa0808;
			self function_b18b3a98(self.var_2b998b77, 1);
			self function_921a1574(0, "gdt_iff_deactivate");
			break;
		}
	}
}

/*
	Name: function_13f09a6b
	Namespace: namespace_175490fb
	Checksum: 0x3A2D7FB4
	Offset: 0x3200
	Size: 0x7F
	Parameters: 0
	Flags: Private
*/
function private function_13f09a6b()
{
	self endon("hash_d5da096");
	self notify("hash_e0f9c098");
	self endon("hash_e0f9c098");
	while(1)
	{
		wait(2);
		self function_b18b3a98(self.var_2b998b77, 2);
		wait(2);
		self function_b18b3a98(self.var_2b998b77, 1);
	}
}

/*
	Name: function_d48fcfa6
	Namespace: namespace_175490fb
	Checksum: 0xF9A8425F
	Offset: 0x3288
	Size: 0x23
	Parameters: 1
	Flags: Private
*/
function private function_d48fcfa6(var_ec74b091)
{
	self function_b18b3a98();
}

/*
	Name: function_66be631b
	Namespace: namespace_175490fb
	Checksum: 0x63FC349B
	Offset: 0x32B8
	Size: 0x197
	Parameters: 0
	Flags: Private
*/
function private function_66be631b()
{
	var_aabe9f43 = function_84970cc4("A", "B", "C", "D", "E", "F");
	var_70933c28 = function_84970cc4("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");
	if(function_26299103(100) < 50)
	{
	}
	else
	{
	}
	var_f00997fd = var_70933c28[function_26299103(var_70933c28.size)];
	if(function_26299103(100) < 50)
	{
	}
	else
	{
	}
	var_160c1266 = var_70933c28[function_26299103(var_70933c28.size)];
	return var_f00997fd + var_160c1266;
}

/*
	Name: function_a4cd6b9a
	Namespace: namespace_175490fb
	Checksum: 0x55A79DB3
	Offset: 0x3458
	Size: 0x121
	Parameters: 0
	Flags: Private
*/
function private function_a4cd6b9a()
{
	var_4be20d44 = "";
	if(function_5dbf7eca(self.var_6df9264, "_54i_"))
	{
		var_461b88f6 = "3534:49FF:FE";
	}
	else if(function_5dbf7eca(self.var_6df9264, "_nrc_"))
	{
		var_461b88f6 = "4E52:43FF:FE";
	}
	else
	{
		var_461b88f6 = "4349:41FF:FE";
	}
	var_13ff0d3c = function_66be631b();
	var_86067c77 = function_66be631b();
	var_6004020e = function_66be631b();
	var_4be20d44 = var_461b88f6 + var_13ff0d3c + ":" + var_86067c77 + var_6004020e;
	return var_4be20d44;
}

/*
	Name: function_7ee723d1
	Namespace: namespace_175490fb
	Checksum: 0x50CBBFA6
	Offset: 0x3588
	Size: 0x175
	Parameters: 7
	Flags: None
*/
function function_7ee723d1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_a40f758e = 1;
	var_ab8d7883 = 1;
	var_67dd73d2 = 1;
	switch(var_9193c732)
	{
		case 0:
		{
			self notify("hash_2f142d63");
			self thread function_38e32940();
			break;
		}
		case 1:
		{
			var_ab8d7883 = 3.023;
			var_a40f758e = 3.05;
			var_67dd73d2 = 4;
			self notify("hash_2f142d63");
			self function_9e4b9f5a(var_a40f758e, var_ab8d7883, var_67dd73d2, "gdt_cybercore_arm_pulse");
			break;
		}
		case 2:
		{
			var_ab8d7883 = 3.023;
			var_a40f758e = 3.05;
			var_67dd73d2 = 5;
			self notify("hash_2f142d63");
			self function_9e4b9f5a(var_a40f758e, var_ab8d7883, var_67dd73d2, "gdt_cybercore_arm_pulse");
			break;
		}
	}
}

/*
	Name: function_38e32940
	Namespace: namespace_175490fb
	Checksum: 0x16E8FB94
	Offset: 0x3708
	Size: 0x33D
	Parameters: 0
	Flags: None
*/
function function_38e32940()
{
	self endon("hash_d5da096");
	self endon("hash_643a7daf");
	self endon("hash_2f142d63");
	var_f13af102 = 0;
	var_b608e411 = 0;
	var_9fd3593c = 1;
	var_862b0fff = 0;
	var_a36d3ca2 = function_4bd0142f("cybercom_arm_ready", 50);
	var_b6fa88aa = function_4bd0142f("cybercom_move_down_arm", 110);
	var_293e9a7b = function_4bd0142f("cybercom_hold_on_arm", 290);
	var_968d78d2 = function_f3087faa("cybercom_hand_glow_shader_pct", 0.46);
	var_191c13e8 = function_f3087faa("cybercom_hand_glow_start", 0.07);
	var_266a1a59 = 690;
	var_b608e411 = var_191c13e8;
	var_b110c763 = var_266a1a59;
	while(var_862b0fff < var_b110c763)
	{
		var_49a93b24 = var_862b0fff;
		switch(var_f13af102)
		{
			case 0:
			{
				if(var_49a93b24 > var_a36d3ca2)
				{
					var_f13af102 = 1;
				}
				else
				{
					var_9fd3593c = 0.2 - var_191c13e8 / var_a36d3ca2 * 0.09999999;
					var_b608e411 = var_b608e411 + var_9fd3593c;
					self function_f5faa2db(var_b608e411);
				}
				break;
			}
			case 1:
			{
				if(var_49a93b24 > var_b6fa88aa)
				{
					var_f13af102 = 2;
				}
				else
				{
					var_9fd3593c = var_968d78d2 - 0.2 / var_b6fa88aa - var_a36d3ca2 * 0.09999999;
					var_b608e411 = var_b608e411 + var_9fd3593c;
					self function_f5faa2db(var_b608e411);
				}
				break;
			}
			case 2:
			{
				if(var_49a93b24 > var_293e9a7b)
				{
					var_9fd3593c = 1 - var_968d78d2 / var_b110c763 - var_49a93b24 * 0.09999999;
					var_f13af102 = 3;
				}
				break;
			}
			case 3:
			{
				var_b608e411 = var_b608e411 + var_9fd3593c;
				self function_f5faa2db(var_b608e411);
				break;
			}
		}
		wait(0.01);
		var_862b0fff = var_862b0fff + 10;
	}
}

/*
	Name: function_815b0789
	Namespace: namespace_175490fb
	Checksum: 0xFAD030DF
	Offset: 0x3A50
	Size: 0x11B
	Parameters: 7
	Flags: None
*/
function function_815b0789(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 0 && isdefined(self.var_dea2a612))
	{
		function_28573e36(var_ec74b091, self.var_dea2a612);
	}
	if(var_9193c732 == 1)
	{
		if(isdefined(self.var_dea2a612))
		{
			function_28573e36(var_ec74b091, self.var_dea2a612);
		}
		var_2882fd1d = self function_d48f2ab3("tag_brass");
		if(isdefined(var_2882fd1d))
		{
			self.var_dea2a612 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["forced_malfunction"], self, "tag_brass");
		}
	}
}

/*
	Name: function_dacce323
	Namespace: namespace_175490fb
	Checksum: 0x9659B0DF
	Offset: 0x3B78
	Size: 0x103
	Parameters: 7
	Flags: None
*/
function function_dacce323(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 0 && isdefined(self.var_ac70f183))
	{
		function_28573e36(var_ec74b091, self.var_ac70f183);
	}
	if(var_9193c732 == 2)
	{
	}
	else
	{
	}
	if(var_9193c732 != 0)
	{
		if(isdefined(self.var_ac70f183))
		{
			function_28573e36(var_ec74b091, self.var_ac70f183);
		}
		self.var_ac70f183 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["sensory_disable_human"], self, "j_neck");
	}
}

/*
	Name: function_2aa9d708
	Namespace: namespace_175490fb
	Checksum: 0x103AB7D3
	Offset: 0x3C88
	Size: 0x11B
	Parameters: 3
	Flags: None
*/
function function_2aa9d708(var_6df9264, var_4de1f24c, var_34fb19f)
{
	self notify("hash_2aa9d708");
	self endon("hash_2aa9d708");
	self endon("hash_14a1bc97");
	var_a4ad846c = function_3586fb08();
	var_35c84e32 = var_34fb19f / var_4de1f24c;
	while(var_35c84e32 <= 1)
	{
		function_bd3f2b3b(var_6df9264, var_35c84e32);
		var_8c915b2 = function_3586fb08() - var_a4ad846c / 1000 + var_34fb19f;
		var_35c84e32 = namespace_d73b9283::function_31931862(var_8c915b2 / var_4de1f24c, 0, 1);
		wait(0.016);
	}
	function_bd3f2b3b(var_6df9264, 0);
}

/*
	Name: function_9439eecf
	Namespace: namespace_175490fb
	Checksum: 0x6E87CF72
	Offset: 0x3DB0
	Size: 0x115
	Parameters: 7
	Flags: None
*/
function function_9439eecf(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_6df9264 = function_557eb98c(function_dd1bd95(var_ec74b091), "WorldSpaceIndicators.hackingPercent");
	if(!isdefined(var_6df9264))
	{
		return;
	}
	function_bd3f2b3b(var_6df9264, 0);
	if(var_9193c732 > 0)
	{
		var_4de1f24c = var_9193c732 & 31;
		var_34fb19f = var_9193c732 >> 5 / 128 * var_4de1f24c;
		self thread function_2aa9d708(var_6df9264, var_4de1f24c, var_34fb19f);
	}
	else
	{
		self notify("hash_14a1bc97");
	}
}

/*
	Name: function_806d1a61
	Namespace: namespace_175490fb
	Checksum: 0x5E0F8EAD
	Offset: 0x3ED0
	Size: 0x20B
	Parameters: 7
	Flags: None
*/
function function_806d1a61(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_8ca942f0 = function_dd1bd95(var_ec74b091);
		var_3d954e27 = function_557eb98c(var_8ca942f0, "AbilityWheel.Selected1");
		if(!isdefined(var_3d954e27))
		{
			function_5821abb6(var_8ca942f0, "AbilityWheel.Selected1");
			var_3d954e27 = function_557eb98c(var_8ca942f0, "AbilityWheel.Selected1");
		}
		var_cb8ddeec = function_557eb98c(var_8ca942f0, "AbilityWheel.Selected2");
		if(!isdefined(var_cb8ddeec))
		{
			function_5821abb6(var_8ca942f0, "AbilityWheel.Selected2");
			var_cb8ddeec = function_557eb98c(var_8ca942f0, "AbilityWheel.Selected2");
		}
		var_f1905955 = function_557eb98c(var_8ca942f0, "AbilityWheel.Selected3");
		if(!isdefined(var_f1905955))
		{
			function_5821abb6(var_8ca942f0, "AbilityWheel.Selected3");
			var_f1905955 = function_557eb98c(var_8ca942f0, "AbilityWheel.Selected3");
		}
		function_bd3f2b3b(var_3d954e27, 1);
		function_bd3f2b3b(var_cb8ddeec, 1);
		function_bd3f2b3b(var_f1905955, 1);
	}
}

/*
	Name: function_62d5481c
	Namespace: namespace_175490fb
	Checksum: 0x57792AD
	Offset: 0x40E8
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_62d5481c(var_ec74b091, var_5a8c2a63, var_191d8f6d)
{
	var_8ca942f0 = function_dd1bd95(var_ec74b091);
	var_e4d4320f = "AbilityWheel.Selected" + var_5a8c2a63 + 1;
	var_d3ecf79a = function_557eb98c(var_8ca942f0, var_e4d4320f);
	function_bd3f2b3b(var_d3ecf79a, var_191d8f6d + 1);
}

/*
	Name: function_371a93b4
	Namespace: namespace_175490fb
	Checksum: 0x9210948C
	Offset: 0x41A0
	Size: 0x13F
	Parameters: 2
	Flags: None
*/
function function_371a93b4(var_ec74b091, var_c5f458e4)
{
	var_e4230c26 = self function_b0f8529d();
	var_8ca942f0 = function_dd1bd95(var_ec74b091);
	var_29ad5b90 = undefined;
	if(var_e4230c26 == 0)
	{
		var_29ad5b90 = function_557eb98c(var_8ca942f0, "AbilityWheel.Selected1");
	}
	else if(var_e4230c26 == 1)
	{
		var_29ad5b90 = function_557eb98c(var_8ca942f0, "AbilityWheel.Selected2");
	}
	else if(var_e4230c26 == 2)
	{
		var_29ad5b90 = function_557eb98c(var_8ca942f0, "AbilityWheel.Selected3");
	}
	if(!isdefined(var_29ad5b90))
	{
		return undefined;
	}
	var_191d8f6d = function_938048a7(var_29ad5b90);
	if(!isdefined(var_191d8f6d))
	{
		return undefined;
	}
	return var_191d8f6d - 1;
}

