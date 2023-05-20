#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\cp_mi_sing_biodomes2_fx;
#using scripts\cp\cp_mi_sing_biodomes2_patch_c;
#using scripts\cp\cp_mi_sing_biodomes2_sound;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_ad848cf8;

/*
	Name: function_d290ebfa
	Namespace: namespace_ad848cf8
	Checksum: 0x8294CCFD
	Offset: 0x640
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_b37230e4();
	namespace_dfee119::function_d290ebfa();
	namespace_e0a1d00c::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	namespace_fa5abb9::function_7403e82b();
}

/*
	Name: function_b37230e4
	Namespace: namespace_ad848cf8
	Checksum: 0xEDE28053
	Offset: 0x6B8
	Size: 0x67B
	Parameters: 0
	Flags: None
*/
function function_b37230e4()
{
	namespace_71e9cb84::function_50f16166("toplayer", "zipline_rumble_loop", 1, 1, "int", &function_85392f32, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "dive_wind_rumble_loop", 1, 1, "int", &function_fdbd490e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "set_underwater_fx", 1, 1, "int", &function_16baac7c, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "sound_evt_boat_rattle", 1, 1, "counter", &function_1109eeba, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "supertree_jump_debris_play", 1, 1, "int", &function_e5173f86, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "zipline_speed_blur", 1, 1, "int", &function_424e31ac, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "boat_explosion_play", 1, 1, "int", &function_563b4794, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "elevator_top_debris_play", 1, 1, "int", &function_10ad2968, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "elevator_bottom_debris_play", 1, 1, "int", &function_72f3e314, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "tall_grass_init", 1, 1, "int", &function_e4cf15f9, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "tall_grass_play", 1, 1, "int", &function_17337465, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "supertree_fall_init", 1, 1, "counter", &function_ac881e7, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "supertree_fall_play", 1, 1, "counter", &function_339650bb, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "ferriswheel_fall_play", 1, 1, "int", &function_221ecea4, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "boat_disable_sfx", 1, 1, "int", &function_c2c3fb69, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "sound_evt_boat_scrape_impact", 1, 1, "counter", &function_6958b659, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_jump", 1, 1, "counter", &function_8983391c, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_jump_air", 1, 1, "counter", &function_c05a0451, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_land", 1, 1, "counter", &function_128728b7, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_ramp_hit", 1, 1, "counter", &function_4bb5f7e6, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "sound_veh_airboat_start", 1, 1, "counter", &function_bfdde97c, 0, 0);
	namespace_71e9cb84::function_50f16166("allplayers", "zipline_sound_loop", 1, 1, "int", &function_982d4d35, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "clone_control", 1, 1, "int", &function_d7b78660, 0, 0);
}

/*
	Name: function_1109eeba
	Namespace: namespace_ad848cf8
	Checksum: 0x518A9CA1
	Offset: 0xD40
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_1109eeba(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_a5d31326)
{
	self function_921a1574(var_6575414d, "evt_boat_rattle");
}

/*
	Name: function_6958b659
	Namespace: namespace_ad848cf8
	Checksum: 0xB4FD9626
	Offset: 0xDA8
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_6958b659(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_a5d31326)
{
	self function_921a1574(var_6575414d, "evt_boat_scrape_impact");
}

/*
	Name: function_8983391c
	Namespace: namespace_ad848cf8
	Checksum: 0xF8533F76
	Offset: 0xE10
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_8983391c(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_a5d31326)
{
	self function_921a1574(var_6575414d, "veh_airboat_jump");
}

/*
	Name: function_c05a0451
	Namespace: namespace_ad848cf8
	Checksum: 0x1223A165
	Offset: 0xE78
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_c05a0451(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_a5d31326)
{
	self function_921a1574(var_6575414d, "veh_airboat_jump_air");
}

/*
	Name: function_128728b7
	Namespace: namespace_ad848cf8
	Checksum: 0xB57506B7
	Offset: 0xEE0
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_128728b7(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_a5d31326)
{
	self function_921a1574(var_6575414d, "veh_airboat_land");
}

/*
	Name: function_4bb5f7e6
	Namespace: namespace_ad848cf8
	Checksum: 0x55D613B9
	Offset: 0xF48
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_4bb5f7e6(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_a5d31326)
{
	self function_921a1574(var_6575414d, "veh_airboat_ramp_hit");
}

/*
	Name: function_bfdde97c
	Namespace: namespace_ad848cf8
	Checksum: 0x10D07636
	Offset: 0xFB0
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_bfdde97c(var_6575414d, var_d5fa7963, var_3a04fa7e, var_3a8c4f80, var_406ad39b, var_2807366f, var_a5d31326)
{
	self function_921a1574(var_6575414d, "veh_airboat_start");
}

/*
	Name: function_424e31ac
	Namespace: namespace_ad848cf8
	Checksum: 0x7ABEECDC
	Offset: 0x1018
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_424e31ac(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_3cbcdf3a(var_ec74b091, 0.07, 0.55, 0.9, 0, 100, 100);
	}
	else
	{
		function_fa59de5f(var_ec74b091);
	}
}

/*
	Name: function_563b4794
	Namespace: namespace_ad848cf8
	Checksum: 0x514EC9EE
	Offset: 0x10B8
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_563b4794(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_boat_explosion_debris_bundle");
	}
}

/*
	Name: function_10ad2968
	Namespace: namespace_ad848cf8
	Checksum: 0xED26C631
	Offset: 0x1128
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_10ad2968(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_cafe_roof_01_bundle");
	}
}

/*
	Name: function_72f3e314
	Namespace: namespace_ad848cf8
	Checksum: 0x66C0A794
	Offset: 0x1198
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_72f3e314(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_cafe_roof_02_bundle");
	}
}

/*
	Name: function_e5173f86
	Namespace: namespace_ad848cf8
	Checksum: 0xBEF8A3F2
	Offset: 0x1208
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_e5173f86(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_super_tree_jump_01_bundle");
	}
}

/*
	Name: function_e4cf15f9
	Namespace: namespace_ad848cf8
	Checksum: 0xBCDF4596
	Offset: 0x1278
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_e4cf15f9(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_boat_grass_bundle");
	}
}

/*
	Name: function_17337465
	Namespace: namespace_ad848cf8
	Checksum: 0xA82F7DB8
	Offset: 0x12E8
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_17337465(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_boat_grass_bundle");
	}
}

/*
	Name: function_ac881e7
	Namespace: namespace_ad848cf8
	Checksum: 0x6C68D074
	Offset: 0x1358
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_ac881e7(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_super_tree_collapse_bundle");
	}
}

/*
	Name: function_339650bb
	Namespace: namespace_ad848cf8
	Checksum: 0x4DD78F7B
	Offset: 0x13C8
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_339650bb(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_super_tree_collapse_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_super_tree_collapse_catwalk_bundle");
	}
}

/*
	Name: function_221ecea4
	Namespace: namespace_ad848cf8
	Checksum: 0x67C60FB
	Offset: 0x1458
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_221ecea4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_ferris_wheel_bundle");
	}
}

/*
	Name: function_c2c3fb69
	Namespace: namespace_ad848cf8
	Checksum: 0x1D898516
	Offset: 0x14C8
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_c2c3fb69(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_bd96a419();
	}
	else
	{
		self function_bab65d14();
	}
}

/*
	Name: function_85392f32
	Namespace: namespace_ad848cf8
	Checksum: 0x9D128D22
	Offset: 0x1548
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_85392f32(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_8dedca9c(var_ec74b091, "cp_biodomes_zipline_loop_rumble");
	}
	else
	{
		self function_8a0ba272(var_ec74b091, "cp_biodomes_zipline_loop_rumble");
	}
}

/*
	Name: function_982d4d35
	Namespace: namespace_ad848cf8
	Checksum: 0x2823866
	Offset: 0x15E8
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_982d4d35(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_c2931a36("evt_zipline_move", 0.5);
	}
	else
	{
		self function_4a1ecb6c(0.5);
	}
}

/*
	Name: function_fdbd490e
	Namespace: namespace_ad848cf8
	Checksum: 0x5BDBA6E4
	Offset: 0x1680
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_fdbd490e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_8dedca9c(var_ec74b091, "fallwind_loop_rapid");
	}
	else
	{
		self function_8a0ba272(var_ec74b091, "fallwind_loop_rapid");
	}
}

/*
	Name: function_16baac7c
	Namespace: namespace_ad848cf8
	Checksum: 0xC1F35D88
	Offset: 0x1720
	Size: 0x193
	Parameters: 7
	Flags: None
*/
function function_16baac7c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_ca48e0c8(var_ec74b091, -1, 1, 1);
		function_c1dc0657(var_ec74b091, 2);
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
		}
		self.var_ac46de76 = function_2e9c26ef(var_ec74b091, level.var_c1aa5253["underwater_motes"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
		namespace_80983c42::function_80983c42("exp_underwater_lights");
	}
	else
	{
		function_ca48e0c8(var_ec74b091, -1, 0, 1);
		function_c1dc0657(var_ec74b091, 1);
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
		}
		namespace_80983c42::function_dfc351df("exp_underwater_lights");
	}
}

/*
	Name: function_d7b78660
	Namespace: namespace_ad848cf8
	Checksum: 0xF591EE85
	Offset: 0x18C0
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_d7b78660(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		if(self.var_5e36fd2e == function_79c174a3(var_ec74b091))
		{
			self thread function_6ec31df1(var_ec74b091);
		}
	}
}

/*
	Name: function_6ec31df1
	Namespace: namespace_ad848cf8
	Checksum: 0x6576A8BD
	Offset: 0x1950
	Size: 0xEF
	Parameters: 1
	Flags: None
*/
function function_6ec31df1(var_ec74b091)
{
	self endon("hash_d5da096");
	while(1)
	{
		if(self namespace_71e9cb84::function_7922262b("clone_control"))
		{
			var_5dc5e20a = function_79c174a3(var_ec74b091);
			if(isdefined(var_5dc5e20a))
			{
				if(function_c6f2a133(var_ec74b091))
				{
					self function_48f26766();
					var_5dc5e20a function_50ccee8d();
				}
				else
				{
					var_5dc5e20a function_48f26766();
					self function_50ccee8d();
				}
			}
		}
		wait(0.016);
	}
}

