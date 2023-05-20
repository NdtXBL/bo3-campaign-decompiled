#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\postfx_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_36cbf523;

/*
	Name: function_2dc19561
	Namespace: namespace_36cbf523
	Checksum: 0x1ED28E2A
	Offset: 0xAB0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("infection_util", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_36cbf523
	Checksum: 0x9D74586
	Offset: 0xAF0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_f53e79d4();
	function_2ea898a8();
}

/*
	Name: function_f53e79d4
	Namespace: namespace_36cbf523
	Checksum: 0xB742FF9E
	Offset: 0xB20
	Size: 0x215
	Parameters: 0
	Flags: None
*/
function function_f53e79d4()
{
	level.var_c1aa5253["ai_dni_rez_in_arm_left"] = "player/fx_ai_dni_rez_in_arm_left_dirty";
	level.var_c1aa5253["ai_dni_rez_in_arm_right"] = "player/fx_ai_dni_rez_in_arm_right_dirty";
	level.var_c1aa5253["ai_dni_rez_in_head"] = "player/fx_ai_dni_rez_in_head_dirty";
	level.var_c1aa5253["ai_dni_rez_in_hip_left"] = "player/fx_ai_dni_rez_in_hip_left_dirty";
	level.var_c1aa5253["ai_dni_rez_in_hip_right"] = "player/fx_ai_dni_rez_in_hip_right_dirty";
	level.var_c1aa5253["ai_dni_rez_in_leg_left"] = "player/fx_ai_dni_rez_in_leg_left_dirty";
	level.var_c1aa5253["ai_dni_rez_in_leg_right"] = "player/fx_ai_dni_rez_in_leg_right_dirty";
	level.var_c1aa5253["ai_dni_rez_in_torso"] = "player/fx_ai_dni_rez_in_torso_dirty";
	level.var_c1aa5253["ai_dni_rez_in_waist"] = "player/fx_ai_dni_rez_in_waist_dirty";
	level.var_c1aa5253["ai_dni_rez_out_arm_left"] = "player/fx_ai_dni_rez_out_arm_left_dirty";
	level.var_c1aa5253["ai_dni_rez_out_arm_right"] = "player/fx_ai_dni_rez_out_arm_right_dirty";
	level.var_c1aa5253["ai_dni_rez_out_head"] = "player/fx_ai_dni_rez_out_head_dirty";
	level.var_c1aa5253["ai_dni_rez_out_hip_left"] = "player/fx_ai_dni_rez_out_hip_left_dirty";
	level.var_c1aa5253["ai_dni_rez_out_hip_right"] = "player/fx_ai_dni_rez_out_hip_right_dirty";
	level.var_c1aa5253["ai_dni_rez_out_leg_left"] = "player/fx_ai_dni_rez_out_leg_left_dirty";
	level.var_c1aa5253["ai_dni_rez_out_leg_right"] = "player/fx_ai_dni_rez_out_leg_right_dirty";
	level.var_c1aa5253["ai_dni_rez_out_torso"] = "player/fx_ai_dni_rez_out_torso_dirty";
	level.var_c1aa5253["ai_dni_rez_out_waist"] = "player/fx_ai_dni_rez_out_waist_dirty";
	level.var_c1aa5253["ai_dni_rez_out_wolf_dirty"] = "player/fx_ai_dni_rez_out_wolf_dirty";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_36cbf523
	Checksum: 0xD7E3CAF6
	Offset: 0xD40
	Size: 0x463
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "snow_fx", 1, 2, "int", &function_baff6dde, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "sarah_objective_light", 1, 1, "int", &function_39ba15ad, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "sarah_body_light", 1, 1, "int", &function_206d5db6, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "reverse_arrival_snow_fx", 1, 1, "int", &function_e5419867, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "reverse_arrival_dmg_fx", 1, 1, "int", &function_f5a73f1e, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "exploding_ai_deaths", 1, 1, "int", &function_b3f0d569, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "reverse_arrival_explosion_fx", 1, 1, "int", &function_a3b6a74a, 0, 0);
	namespace_71e9cb84::function_50f16166("allplayers", "player_spawn_fx", 1, 1, "int", &function_aebc5072, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "stop_post_fx", 1, 1, "counter", &function_7bd51e31, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "ai_dni_rez_in", 1, 1, "int", &function_207ed741, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "ai_dni_rez_out", 1, 1, "counter", &function_5ae9b898, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_dni_interrupt", 1, 1, "counter", &function_82164883, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter", &function_baae4949, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "sarah_camo_shader", 1, 3, "int", &function_f532bd65, 0, 1);
	namespace_1c38f9cf::function_787bc305("active_camo", 90, "actor_camo_on", "", 0, "mc/hud_outline_predator_camo_active_inf", 1);
	namespace_1c38f9cf::function_787bc305("active_camo_flicker", 80, "actor_camo_flicker", "", 0, "mc/hud_outline_predator_camo_disruption_inf", 1);
}

/*
	Name: function_e5419867
	Namespace: namespace_36cbf523
	Checksum: 0xD21FEACE
	Offset: 0x11B0
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_e5419867(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_88a10e85(var_ec74b091, "reverse_snow_fx", "weather/fx_snow_impact_body_reverse_infection");
	}
}

/*
	Name: function_f5a73f1e
	Namespace: namespace_36cbf523
	Checksum: 0x8DF0EAE4
	Offset: 0x1230
	Size: 0xB3
	Parameters: 7
	Flags: None
*/
function function_f5a73f1e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_88a10e85(var_ec74b091, "reverse_blood_fx", "impacts/fx_bul_impact_blood_body_fatal_reverse", "tag_eye");
	}
	else
	{
		self function_88a10e85(var_ec74b091, "reverse_blood_fx", "impacts/fx_bul_impact_blood_body_fatal_reverse", "j_spine4");
	}
}

/*
	Name: function_a3b6a74a
	Namespace: namespace_36cbf523
	Checksum: 0x33B224FC
	Offset: 0x12F0
	Size: 0xAB
	Parameters: 7
	Flags: None
*/
function function_a3b6a74a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_ea0e7704(var_ec74b091, "reverse_explosion_arrival", "explosions/fx_exp_mortar_snow_reverse", 1, self.var_722885f3);
	}
	else
	{
		self function_be968491(var_ec74b091, "reverse_explosion_arrival", "explosions/fx_exp_mortar_snow_reverse");
	}
}

/*
	Name: function_b3f0d569
	Namespace: namespace_36cbf523
	Checksum: 0x19675820
	Offset: 0x13A8
	Size: 0x13B
	Parameters: 7
	Flags: None
*/
function function_b3f0d569(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_a2d47c3d = self function_d48f2ab3("j_spine4");
		var_6ab6f4fd = self function_cd1d99bd("j_spine4");
		var_1e5277ea = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", var_a2d47c3d, var_6ab6f4fd);
		var_1e5277ea function_88a10e85(var_ec74b091, "exploding_death_fx", "explosions/fx_exp_torso_blood_infection", "tag_origin");
		var_1e5277ea function_921a1574(0, "evt_ai_explode");
		WaitRealTime(6);
		var_1e5277ea function_dc8c8404();
	}
}

/*
	Name: function_39ba15ad
	Namespace: namespace_36cbf523
	Checksum: 0x766157DF
	Offset: 0x14F0
	Size: 0x181
	Parameters: 7
	Flags: None
*/
function function_39ba15ad(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_c1d1c557))
	{
		level.var_c1d1c557 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	}
	if(var_9193c732)
	{
		if(self.var_3e94206a != "allies")
		{
			return;
		}
		level thread function_cdbbde70(self, level.var_c1d1c557);
		level.var_c1d1c557 function_88a10e85(var_ec74b091, "objective_light", "light/fx_beam_sarah_marker_bright", "tag_origin");
		self function_88a10e85(var_ec74b091, "objective_light", "player/fx_ai_sarah_marker_body", "J_MainRoot");
	}
	else
	{
		level.var_c1d1c557 function_be968491(var_ec74b091, "objective_light", "light/fx_beam_sarah_marker_bright");
		self function_be968491(var_ec74b091, "objective_light", "player/fx_ai_sarah_marker_body");
		level notify("hash_f9e936e2");
	}
}

/*
	Name: function_cdbbde70
	Namespace: namespace_36cbf523
	Checksum: 0x3DF2F540
	Offset: 0x1680
	Size: 0xCF
	Parameters: 2
	Flags: None
*/
function function_cdbbde70(var_42189297, var_aba584c6)
{
	level notify("hash_f9e936e2");
	var_aba584c6 endon("hash_128f8789");
	level endon("hash_f9e936e2");
	while(isdefined(var_42189297))
	{
		var_aba584c6.var_722885f3 = function_e1dc201c(var_42189297.var_722885f3, var_42189297.var_722885f3 + VectorScale((0, 0, -1), 100000), 0, var_42189297)["position"];
		var_aba584c6.var_6ab6f4fd = (0, var_42189297.var_6ab6f4fd[1], 0);
		wait(0.016);
	}
}

/*
	Name: function_206d5db6
	Namespace: namespace_36cbf523
	Checksum: 0xC670A417
	Offset: 0x1758
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_206d5db6(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		if(self.var_3e94206a != "allies")
		{
			return;
		}
		self function_88a10e85(var_ec74b091, "objective_light", "player/fx_ai_sarah_marker_body", "J_MainRoot");
	}
	else
	{
		self function_be968491(var_ec74b091, "objective_light", "player/fx_ai_sarah_marker_body");
	}
}

/*
	Name: function_baff6dde
	Namespace: namespace_36cbf523
	Checksum: 0x12B73510
	Offset: 0x1820
	Size: 0x123
	Parameters: 7
	Flags: None
*/
function function_baff6dde(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_88a10e85(var_ec74b091, "snow_fx", "weather/fx_snow_player_loop", "none");
	}
	else if(var_9193c732 == 2)
	{
		self function_88a10e85(var_ec74b091, "snow_fx", "weather/fx_snow_player_loop_reverse", "none");
	}
	else if(var_9193c732 == 3)
	{
		self function_88a10e85(var_ec74b091, "snow_fx", "weather/fx_snow_player_loop_reverse_sideways", "none");
	}
	else
	{
		self function_400e6e82(var_ec74b091, "snow_fx", 0);
	}
}

/*
	Name: function_be968491
	Namespace: namespace_36cbf523
	Checksum: 0xD8E01976
	Offset: 0x1950
	Size: 0x10B
	Parameters: 3
	Flags: None
*/
function function_be968491(var_ec74b091, var_7b81749, var_fc9f79e7)
{
	if(!isdefined(self.var_62bb476b))
	{
		self.var_62bb476b = [];
	}
	if(!isdefined(self.var_62bb476b[var_ec74b091]))
	{
		self.var_62bb476b[var_ec74b091] = [];
	}
	if(!isdefined(self.var_62bb476b[var_ec74b091][var_7b81749]))
	{
		self.var_62bb476b[var_ec74b091][var_7b81749] = [];
	}
	if(isdefined(var_fc9f79e7) && isdefined(self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7]))
	{
		var_ac46de76 = self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7];
		function_28573e36(var_ec74b091, var_ac46de76, 0);
		self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = undefined;
	}
}

/*
	Name: function_400e6e82
	Namespace: namespace_36cbf523
	Checksum: 0x36C340C7
	Offset: 0x1A68
	Size: 0x11D
	Parameters: 3
	Flags: None
*/
function function_400e6e82(var_ec74b091, var_7b81749, var_91599cfb)
{
	if(!isdefined(var_91599cfb))
	{
		var_91599cfb = 1;
	}
	if(isdefined(self.var_62bb476b) && isdefined(self.var_62bb476b[var_ec74b091]) && isdefined(self.var_62bb476b[var_ec74b091][var_7b81749]))
	{
		var_a15d7eed = function_391512da(self.var_62bb476b[var_ec74b091][var_7b81749]);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_a15d7eed.size; var_c957f6b6++)
		{
			function_28573e36(var_ec74b091, self.var_62bb476b[var_ec74b091][var_7b81749][var_a15d7eed[var_c957f6b6]], var_91599cfb);
			self.var_62bb476b[var_ec74b091][var_7b81749][var_a15d7eed[var_c957f6b6]] = undefined;
		}
	}
}

/*
	Name: function_88a10e85
	Namespace: namespace_36cbf523
	Checksum: 0x4AAAE1C0
	Offset: 0x1B90
	Size: 0x10D
	Parameters: 5
	Flags: None
*/
function function_88a10e85(var_ec74b091, var_7b81749, var_fc9f79e7, var_c6107c9b, var_cffd17f8)
{
	if(!isdefined(var_c6107c9b))
	{
		var_c6107c9b = "tag_origin";
	}
	if(!isdefined(var_cffd17f8))
	{
		var_cffd17f8 = 1;
	}
	self function_be968491(var_ec74b091, var_7b81749, var_fc9f79e7);
	if(var_cffd17f8)
	{
		self function_400e6e82(var_ec74b091, var_7b81749, 0);
	}
	if(isdefined(self) && self function_f72343a0(var_ec74b091))
	{
		var_ac46de76 = function_da6acfd2(var_ec74b091, var_fc9f79e7, self, var_c6107c9b);
		self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = var_ac46de76;
	}
}

/*
	Name: function_ea0e7704
	Namespace: namespace_36cbf523
	Checksum: 0x3110CE79
	Offset: 0x1CA8
	Size: 0x15D
	Parameters: 7
	Flags: None
*/
function function_ea0e7704(var_ec74b091, var_7b81749, var_fc9f79e7, var_cffd17f8, var_c55dcd82, var_d230ad83, var_766fbf83)
{
	if(!isdefined(var_cffd17f8))
	{
		var_cffd17f8 = 1;
	}
	self function_be968491(var_ec74b091, var_7b81749, var_fc9f79e7);
	if(var_cffd17f8)
	{
		self function_400e6e82(var_ec74b091, var_7b81749, 0);
	}
	if(isdefined(var_d230ad83) && isdefined(var_766fbf83))
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82, var_d230ad83, var_766fbf83);
	}
	else if(isdefined(var_d230ad83))
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82, var_d230ad83);
	}
	else
	{
		var_ac46de76 = function_fd4ba5e1(var_ec74b091, var_fc9f79e7, var_c55dcd82);
	}
	self.var_62bb476b[var_ec74b091][var_7b81749][var_fc9f79e7] = var_ac46de76;
}

/*
	Name: function_aebc5072
	Namespace: namespace_36cbf523
	Checksum: 0xDDF0DD85
	Offset: 0x1E10
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_aebc5072(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_88a10e85(var_ec74b091, "objective_light", "light/fx_beam_friendly_flash_in_infection");
		self function_921a1574(0, "evt_ai_teleport");
	}
	else
	{
		self function_be968491(var_ec74b091, "objective_light", "light/fx_beam_friendly_flash_in_infection");
	}
}

/*
	Name: function_7bd51e31
	Namespace: namespace_36cbf523
	Checksum: 0x8C980E68
	Offset: 0x1ED8
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_7bd51e31(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_5dc5e20a namespace_bdde9225::function_3d1a8db5();
}

/*
	Name: function_82164883
	Namespace: namespace_36cbf523
	Checksum: 0x5F31EC5C
	Offset: 0x1F58
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_82164883(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self namespace_bdde9225::function_bca12b73("pstfx_dni_interrupt");
	}
}

/*
	Name: function_baae4949
	Namespace: namespace_36cbf523
	Checksum: 0x5901A154
	Offset: 0x1FC8
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_baae4949(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz");
	}
}

/*
	Name: function_f532bd65
	Namespace: namespace_36cbf523
	Checksum: 0x8F4D2AFC
	Offset: 0x2038
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_f532bd65(var_1094988d, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self namespace_1c38f9cf::function_1e56fc11("actor_camo_flicker", var_9193c732 == 2);
	self namespace_1c38f9cf::function_1e56fc11("actor_camo_on", var_9193c732 != 0);
	self namespace_1c38f9cf::function_c4cc39ce(var_1094988d);
}

/*
	Name: function_207ed741
	Namespace: namespace_36cbf523
	Checksum: 0x16E56767
	Offset: 0x20E8
	Size: 0x273
	Parameters: 7
	Flags: None
*/
function function_207ed741(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self function_921a1574(0, "evt_ai_teleport");
	if(var_9193c732)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_arm_left"], self, "j_elbow_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_arm_left"], self, "j_shoulder_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_arm_right"], self, "j_elbow_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_arm_right"], self, "j_shoulder_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_head"], self, "j_head");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_hip_left"], self, "j_hip_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_hip_right"], self, "j_hip_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_leg_left"], self, "j_knee_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_leg_right"], self, "j_knee_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_torso"], self, "j_spine4");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_in_waist"], self, "j_spinelower");
	}
}

/*
	Name: function_5ae9b898
	Namespace: namespace_36cbf523
	Checksum: 0x6F7EDB1E
	Offset: 0x2368
	Size: 0x34B
	Parameters: 7
	Flags: None
*/
function function_5ae9b898(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self function_921a1574(0, "evt_ai_explode");
	if(self.var_7fea67e9 === "zombie_dog")
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_wolf_dirty"], self, "j_head");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_wolf_dirty"], self, "j_mainroot");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_wolf_dirty"], self, "spine3_jnt");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_wolf_dirty"], self, "neck1_jnt");
	}
	else
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_arm_left"], self, "j_elbow_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_arm_left"], self, "j_shoulder_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_arm_right"], self, "j_elbow_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_arm_right"], self, "j_shoulder_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_head"], self, "j_head");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_hip_left"], self, "j_hip_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_hip_right"], self, "j_hip_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_leg_left"], self, "j_knee_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_leg_right"], self, "j_knee_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_torso"], self, "j_spine4");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_dni_rez_out_waist"], self, "j_spinelower");
	}
}

