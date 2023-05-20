#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\cp_mi_cairo_infection_hideout_outro;
#using scripts\shared\clientfield_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_b0a87e94;

/*
	Name: function_d290ebfa
	Namespace: namespace_b0a87e94
	Checksum: 0x46A547EC
	Offset: 0x568
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level.var_f2a478d8 = 150;
	function_2ea898a8();
	function_f53e79d4();
}

/*
	Name: function_f53e79d4
	Namespace: namespace_b0a87e94
	Checksum: 0x8800EC29
	Offset: 0x5A8
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_f53e79d4()
{
	level.var_c1aa5253["eye_glow"] = "zombie/fx_glow_eye_orange";
	level.var_c1aa5253["rise_burst"] = "zombie/fx_spawn_dirt_hand_burst_zmb";
	level.var_c1aa5253["rise_billow"] = "zombie/fx_spawn_dirt_body_billowing_zmb";
	level.var_c1aa5253["rise_dust"] = "zombie/fx_spawn_dirt_body_dustfalling_zmb";
	level.var_c1aa5253["zombie_firewall_fx"] = "fire/fx_fire_wall_moving_infection_city";
	level.var_c1aa5253["zombie_guts_explosion"] = "zombie/fx_blood_torso_explo_zmb";
	level.var_c1aa5253["zombie_backdraft_md"] = "fire/fx_fire_backdraft_md";
	level.var_c1aa5253["zombie_backdraft_sm"] = "fire/fx_fire_backdraft_sm";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_b0a87e94
	Checksum: 0x68DF7E48
	Offset: 0x698
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	/#
		function_895b00("Dev Block strings are not supported");
	#/
	if(!function_27c72c1b())
	{
		namespace_71e9cb84::function_50f16166("actor", "zombie_riser_fx", 1, 1, "int", &function_d9fa15ed, 1, 1);
		namespace_71e9cb84::function_50f16166("actor", "zombie_has_eyes", 1, 1, "int", &function_a340759a, 0, 1);
		namespace_71e9cb84::function_50f16166("actor", "zombie_gut_explosion", 1, 1, "int", &function_fe38007a, 0, 1);
		namespace_71e9cb84::function_50f16166("actor", "zombie_tac_mode_disable", 1, 1, "int", &function_fa4362c9, 0, 0);
	}
	namespace_71e9cb84::function_50f16166("scriptmover", "zombie_fire_wall_fx", 1, 1, "int", &function_92a91bd2, 1, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "zombie_fire_backdraft_fx", 1, 1, "int", &function_2ef010d2, 1, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "zombie_fire_overlay_init", 1, 1, "int", &function_449961e9, 1, 1);
	namespace_71e9cb84::function_50f16166("toplayer", "zombie_fire_overlay", 1, 7, "float", &function_760de3ec, 1, 1);
	namespace_71e9cb84::function_50f16166("world", "zombie_root_grow", 1, 1, "int", &function_9551b3d5, 0, 0);
}

/*
	Name: function_d9fa15ed
	Namespace: namespace_b0a87e94
	Checksum: 0x9456AE05
	Offset: 0x960
	Size: 0x1BD
	Parameters: 7
	Flags: None
*/
function function_d9fa15ed(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level endon("hash_cead83db");
	self endon("hash_d5da096");
	if(!var_ade4d29d && var_9193c732)
	{
		var_ec485aa4 = level.var_ec485aa4;
		var_93b50d82 = "zmb_zombie_spawn";
		var_3b8d5686 = level.var_c1aa5253["rise_burst"];
		var_a1e88d89 = level.var_c1aa5253["rise_billow"];
		var_fe311e35 = "dirt";
		if(isdefined(level.var_3347d5f7) && level.var_3347d5f7 == "snow")
		{
			var_93b50d82 = "zmb_zombie_spawn_snow";
			var_3b8d5686 = level.var_c1aa5253["rise_burst_snow"];
			var_a1e88d89 = level.var_c1aa5253["rise_billow_snow"];
			var_fe311e35 = "snow";
		}
		function_921a1574(0, var_93b50d82, self.var_722885f3);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_ec485aa4.size; var_c957f6b6++)
		{
			self thread function_4d70c126(var_c957f6b6, var_fe311e35, var_a1e88d89, var_3b8d5686);
		}
	}
}

/*
	Name: function_4d70c126
	Namespace: namespace_b0a87e94
	Checksum: 0xB58839E8
	Offset: 0xB28
	Size: 0x21D
	Parameters: 4
	Flags: None
*/
function function_4d70c126(var_cf6fe380, var_fe311e35, var_a1e88d89, var_3b8d5686)
{
	var_2c360a4c = "J_SpineUpper";
	self endon("hash_d5da096");
	level endon("hash_cead83db");
	if(isdefined(var_3b8d5686))
	{
		function_fd4ba5e1(var_cf6fe380, var_3b8d5686, self.var_722885f3 + (0, 0, function_dc99997a(5, 10)));
	}
	wait(0.25);
	if(isdefined(var_a1e88d89))
	{
		function_fd4ba5e1(var_cf6fe380, var_a1e88d89, self.var_722885f3 + (function_dc99997a(-10, 10), function_dc99997a(-10, 10), function_dc99997a(5, 10)));
	}
	wait(2);
	var_2a0876f7 = 5.5;
	var_a5407687 = 0.3;
	var_5dc5e20a = level.var_ec485aa4[var_cf6fe380];
	var_5f813dde = level.var_c1aa5253["rise_dust"];
	if(var_fe311e35 == "snow")
	{
		var_5f813dde = level.var_c1aa5253["rise_dust_snow"];
	}
	else if(var_fe311e35 == "none")
	{
		return;
	}
	for(var_e78c0153 = 0; var_e78c0153 < var_2a0876f7;  = 0)
	{
		function_da6acfd2(var_cf6fe380, var_5f813dde, self, var_2c360a4c);
		wait(var_a5407687);
	}
}

/*
	Name: function_9551b3d5
	Namespace: namespace_b0a87e94
	Checksum: 0xE248CC79
	Offset: 0xD50
	Size: 0x233
	Parameters: 7
	Flags: None
*/
function function_9551b3d5(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_house_roots_left_bundle", &function_a24844d7, "init");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_house_roots_middle_bundle", &function_a24844d7, "init");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_house_roots_right_bundle", &function_a24844d7, "init");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_roots_left_bundle");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_roots_middle_bundle");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_house_roots_right_bundle");
	}
	else
	{
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_house_roots_left_bundle", &function_a24844d7, "play");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_house_roots_middle_bundle", &function_a24844d7, "play");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_house_roots_right_bundle", &function_a24844d7, "play");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_house_roots_left_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_house_roots_middle_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_house_roots_right_bundle");
	}
}

/*
	Name: function_a24844d7
	Namespace: namespace_b0a87e94
	Checksum: 0x89B29C00
	Offset: 0xF90
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_a24844d7(var_c77d2837)
{
	foreach(var_d6f141bd in var_c77d2837)
	{
		var_d6f141bd thread namespace_6473bd03::function_9cf7347d();
	}
}

/*
	Name: function_a340759a
	Namespace: namespace_b0a87e94
	Checksum: 0x802ACBBF
	Offset: 0x1030
	Size: 0x153
	Parameters: 7
	Flags: None
*/
function function_a340759a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	if(var_9193c732)
	{
		self function_255c0b26(var_ec74b091);
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector2", 0, function_d2a9f995(), self function_6b4bd44e());
	}
	else
	{
		self function_232ddafc(var_ec74b091);
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector2", 0, function_28ded1d3(), self function_6b4bd44e());
	}
	if(isdefined(level.var_3ae99156))
	{
		self [[level.var_3ae99156]](var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3);
	}
}

/*
	Name: function_255c0b26
	Namespace: namespace_b0a87e94
	Checksum: 0x6118AF87
	Offset: 0x1190
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_255c0b26(var_ec74b091)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self.var_bf10a952))
	{
		self.var_bf10a952 = [];
	}
	if(!isdefined(self.var_bf10a952[var_ec74b091]))
	{
		var_462a7173 = "j_eyeball_le";
		var_5f813dde = level.var_c1aa5253["eye_glow"];
		if(isdefined(level.var_caf242c3))
		{
			var_5f813dde = level.var_caf242c3;
		}
		if(isdefined(self.var_8cb6d100))
		{
			var_5f813dde = self.var_8cb6d100;
		}
		if(isdefined(self.var_c7df3eb0))
		{
			var_462a7173 = self.var_c7df3eb0;
		}
		self.var_bf10a952[var_ec74b091] = function_da6acfd2(var_ec74b091, var_5f813dde, self, var_462a7173);
	}
}

/*
	Name: function_d2a9f995
	Namespace: namespace_b0a87e94
	Checksum: 0x2E710665
	Offset: 0x12A0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_d2a9f995()
{
	if(isdefined(level.var_8357ee79))
	{
		return level.var_8357ee79;
	}
	return 1;
}

/*
	Name: function_28ded1d3
	Namespace: namespace_b0a87e94
	Checksum: 0xCE1FDB23
	Offset: 0x12C8
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_28ded1d3()
{
	if(isdefined(level.var_9a7fd725))
	{
		return level.var_9a7fd725;
	}
	return 0;
}

/*
	Name: function_6b4bd44e
	Namespace: namespace_b0a87e94
	Checksum: 0xFA2527D7
	Offset: 0x12F0
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_6b4bd44e()
{
	var_35c84e32 = 0;
	if(isdefined(level.var_5b676411))
	{
		var_35c84e32 = level.var_5b676411;
	}
	if(isdefined(self.var_5b676411))
	{
		var_35c84e32 = self.var_5b676411;
	}
	return var_35c84e32;
}

/*
	Name: function_232ddafc
	Namespace: namespace_b0a87e94
	Checksum: 0xF0D79B31
	Offset: 0x1340
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_232ddafc(var_ec74b091)
{
	if(isdefined(self.var_bf10a952))
	{
		if(isdefined(self.var_bf10a952[var_ec74b091]))
		{
			function_28573e36(var_ec74b091, self.var_bf10a952[var_ec74b091], 1);
			self.var_bf10a952[var_ec74b091] = undefined;
		}
	}
}

/*
	Name: function_fe38007a
	Namespace: namespace_b0a87e94
	Checksum: 0x6995079E
	Offset: 0x13A8
	Size: 0xB3
	Parameters: 7
	Flags: None
*/
function function_fe38007a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		if(isdefined(level.var_c1aa5253["zombie_guts_explosion"]))
		{
			var_22ae8d39 = self function_d48f2ab3("J_SpineLower");
			if(isdefined(var_22ae8d39))
			{
				function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_guts_explosion"], var_22ae8d39);
			}
		}
	}
}

/*
	Name: function_fa4362c9
	Namespace: namespace_b0a87e94
	Checksum: 0xA18BB264
	Offset: 0x1468
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_fa4362c9(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_cae0c618(9);
	}
	else
	{
		self function_752fada3(9);
	}
}

/*
	Name: function_92a91bd2
	Namespace: namespace_b0a87e94
	Checksum: 0x92C1815B
	Offset: 0x14F0
	Size: 0x20D
	Parameters: 7
	Flags: None
*/
function function_92a91bd2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5ddef2e5 = function_d4b4bd92();
	if(!isdefined(var_5ddef2e5))
	{
		return;
	}
	if(var_9193c732)
	{
		foreach(var_5dc5e20a in var_5ddef2e5)
		{
			var_ae6a34c0 = var_5dc5e20a function_8448e0ee();
			self namespace_82b91a51::function_2e224d69(var_ae6a34c0);
			self.var_9ddfd913[var_ae6a34c0] = function_da6acfd2(var_ae6a34c0, level.var_c1aa5253["zombie_firewall_fx"], self, "tag_origin");
		}
		break;
	}
	foreach(var_5dc5e20a in var_5ddef2e5)
	{
		var_ae6a34c0 = var_5dc5e20a function_8448e0ee();
		function_28573e36(var_ae6a34c0, self.var_9ddfd913[var_ae6a34c0], 0);
		self.var_9ddfd913[var_ae6a34c0] = undefined;
	}
}

/*
	Name: function_2ef010d2
	Namespace: namespace_b0a87e94
	Checksum: 0xF36772C5
	Offset: 0x1708
	Size: 0xF9
	Parameters: 7
	Flags: None
*/
function function_2ef010d2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_d894d2f4 = namespace_14b42b8a::function_7faf4c39("backdraft_fire", "targetname");
		foreach(var_14b42b8a in var_d894d2f4)
		{
			var_14b42b8a thread function_bd533269(var_ec74b091, self);
		}
	}
}

/*
	Name: function_bd533269
	Namespace: namespace_b0a87e94
	Checksum: 0x4D0E98DB
	Offset: 0x1810
	Size: 0x17B
	Parameters: 2
	Flags: None
*/
function function_bd533269(var_ec74b091, var_7c15369c)
{
	var_7c15369c endon("hash_d5da096");
	for(var_169b6893 = var_7c15369c.var_722885f3; self.var_722885f3[0] < var_169b6893[0];  = var_7c15369c.var_722885f3)
	{
		wait(0.1);
	}
	var_1a859714 = function_bc7ce905(self.var_6ab6f4fd);
	if(function_26299103(100) > 50)
	{
		function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_backdraft_md"], self.var_722885f3, var_1a859714);
		function_921a1574(0, "pfx_backdraft", self.var_722885f3);
	}
	else
	{
		function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["zombie_backdraft_sm"], self.var_722885f3, var_1a859714);
		function_921a1574(0, "pfx_backdraft", self.var_722885f3);
	}
}

/*
	Name: function_449961e9
	Namespace: namespace_b0a87e94
	Checksum: 0x720AB0A7
	Offset: 0x1998
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_449961e9(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_6c1294b8("r_radioactiveFX_enable", var_9193c732);
	if(var_9193c732 != var_ade4d29d)
	{
		function_6c1294b8("r_radioactiveIntensity", 0);
	}
}

/*
	Name: function_760de3ec
	Namespace: namespace_b0a87e94
	Checksum: 0xD051B530
	Offset: 0x1A28
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_760de3ec(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_2aa20526 = namespace_d73b9283::function_e4ef4645(var_9193c732, 0, 1, 0, 4);
	function_6c1294b8("r_radioactiveIntensity", var_2aa20526);
}

