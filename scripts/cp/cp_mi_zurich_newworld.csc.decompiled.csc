#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_newworld_fx;
#using scripts\cp\cp_mi_zurich_newworld_patch_c;
#using scripts\cp\cp_mi_zurich_newworld_sound;
#using scripts\cp\cp_mi_zurich_newworld_util;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_9925365a;

/*
	Name: function_d290ebfa
	Namespace: namespace_9925365a
	Checksum: 0x1D003013
	Offset: 0xD68
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 10);
	function_2ea898a8();
	namespace_bbfcd64f::function_d290ebfa();
	namespace_b5a65bd6::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	namespace_c415b483::function_7403e82b();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_9925365a
	Checksum: 0xDF4634B7
	Offset: 0xE08
	Size: 0x8DB
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("actor", "diaz_camo_shader", 1, 2, "int", &function_f532bd65, 0, 1);
	namespace_1c38f9cf::function_787bc305("active_camo", 90, "actor_camo_on", "", 0, "mc/hud_outline_predator_camo_active_inf", 0);
	namespace_1c38f9cf::function_787bc305("active_camo_flicker", 80, "actor_camo_flicker", "", 0, "mc/hud_outline_predator_camo_disruption_inf", 0);
	namespace_71e9cb84::function_50f16166("vehicle", "name_diaz_wasp", 1, 1, "int", &function_7998d02b, 0, 1);
	namespace_71e9cb84::function_50f16166("scriptmover", "weakpoint", 1, 1, "int", &function_12618c89, 0, 0);
	namespace_1c38f9cf::function_c20cc247("weakpoint_keyline", 100, "weakpoint_keyline_show_z", "weakpoint_keyline_hide_z", 2, "mc/hud_outline_model_z_orange", 1);
	namespace_71e9cb84::function_50f16166("world", "factory_exterior_vents", 1, 1, "int", &function_bb2c3dcf, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "open_vat_doors", 1, 1, "int", &function_2920b522, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "chase_pedestrian_blockers", 1, 1, "int", &function_a48088b, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "chase_train_rumble", 1, 1, "int", &function_c9af9d76, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "spinning_vent_fxanim", 1, 1, "int", &function_54776d63, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "crane_fxanim", 1, 1, "int", &function_f46455d6, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "ability_wheel_tutorial", 1, 1, "int", &function_8aaa2512, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "underground_subway_debris", 1, 2, "int", &function_a2a14d16, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "underground_subway_wires", 1, 1, "int", &function_9eeb165f, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "inbound_igc_glass", 1, 2, "int", &function_1dfb5937, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_robot_swing_glass_left", 1, 2, "int", &function_21d4cd3e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_robot_swing_glass_right", 1, 2, "int", &function_d5d4675, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_robot_swing_left_extra", 1, 1, "int", &function_54711778, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_robot_swing_right_extra", 1, 1, "int", &function_92f89bed, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_dropdown_glass", 1, 2, "int", &function_510d6e0e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_glass_left", 1, 2, "int", &function_b57c42f8, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_glass_right", 1, 2, "int", &function_eaa27407, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_1", 1, 1, "int", &function_3c3eadc2, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_2", 1, 1, "int", &function_163c3359, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_3", 1, 1, "int", &function_f039b8f0, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_4", 1, 1, "int", &function_fa4b11cf, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_lockdown_shutters_5", 1, 1, "int", &function_d4489766, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "train_throw_robot_corpses", 1, 1, "int", &function_b758d8f, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "train_throw_robot_corpses", 1, 1, "int", &function_b758d8f, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "train_brake_flaps", 1, 2, "int", &function_417ec9c, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sndTrainContext", 1, 2, "int", &namespace_b5a65bd6::function_98d2df25, 0, 0);
}

/*
	Name: function_71f88fc
	Namespace: namespace_9925365a
	Checksum: 0x1ECE4AD5
	Offset: 0x16F0
	Size: 0x2BD
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_7d372786)
{
	switch(var_7d372786)
	{
		case 1:
		{
			break;
		}
		case 2:
		{
			function_2e76fa01("c_hro_taylor_base_fb");
			function_2e76fa01("c_hro_diaz_base");
			function_71c4474e("cin_new_02_01_pallasintro_vign_appear");
			function_71c4474e("cin_new_02_01_pallasintro_vign_appear_player");
			break;
		}
		case 3:
		{
			function_2e76fa01("c_hro_taylor_base_fb");
			function_2e76fa01("c_hro_diaz_base");
			function_71c4474e("cin_new_04_01_insideman_1st_hack_sh010");
			function_71c4474e("cin_new_04_01_insideman_1st_hack_sh320");
			function_71c4474e("p7_fxanim_cp_sgen_charging_station_break_02_bundle");
			function_71c4474e("cin_sgen_16_01_charging_station_aie_awaken_robot03");
			function_71c4474e("cin_sgen_16_01_charging_station_aie_awaken_robot04");
			break;
		}
		case 6:
		{
			function_2e76fa01("c_hro_taylor_base_fb");
			function_2e76fa01("c_hro_maretti_base_fb");
			function_71c4474e("cin_new_10_01_pinneddown_1st_explanation");
			break;
		}
		case 7:
		{
			function_71c4474e("cin_new_13_01_stagingroom_1st_guidance");
			break;
		}
		case 8:
		{
			function_2e76fa01("c_hro_taylor_base_fb");
			function_71c4474e("cin_new_14_01_inbound_1st_preptalk");
			function_71c4474e("p7_fxanim_cp_newworld_train_glass_01_bundle");
			break;
		}
		case 9:
		{
			function_2e76fa01("c_hro_taylor_base_fb");
			function_71c4474e("p7_fxanim_cp_newworld_train_end_bundle");
			function_71c4474e("cin_new_16_01_detachbombcar_1st_detach");
			break;
		}
		case 10:
		{
			function_71c4474e("cin_new_17_01_wakingup_1st_reveal");
			function_71c4474e("p7_fxanim_cp_newworld_curtain_bundle");
			break;
		}
	}
}

/*
	Name: function_bb2c3dcf
	Namespace: namespace_9925365a
	Checksum: 0xB31B7D20
	Offset: 0x19B8
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_bb2c3dcf(var_1094988d, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_d12009e4("factory_vents", "pause");
	}
	else
	{
		function_d12009e4("factory_vents", "unpause");
	}
}

/*
	Name: function_f532bd65
	Namespace: namespace_9925365a
	Checksum: 0x631CF453
	Offset: 0x1A58
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
	Name: function_12618c89
	Namespace: namespace_9925365a
	Checksum: 0x557BB92A
	Offset: 0x1B08
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_12618c89(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "weakpoint_keyline_show_z", "weakpoint_keyline_hide_z");
		self function_ddb95859(2);
	}
	else
	{
		self namespace_1c38f9cf::function_c4cc39ce(var_ec74b091, "weakpoint_keyline_hide_z", "weakpoint_keyline_show_z");
		self function_ddb95859(0);
	}
}

/*
	Name: function_7998d02b
	Namespace: namespace_9925365a
	Checksum: 0x8FBB0D25
	Offset: 0x1BE0
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_7998d02b(var_1094988d, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_b18b3a98("Diaz", 1);
	}
}

/*
	Name: function_a48088b
	Namespace: namespace_9925365a
	Checksum: 0xFA0C5D1E
	Offset: 0x1C50
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_a48088b(var_1094988d, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_1583bd50(var_1094988d, 1);
	}
	else
	{
		function_1583bd50(var_1094988d, 0);
	}
}

/*
	Name: function_1583bd50
	Namespace: namespace_9925365a
	Checksum: 0xC6D7EC7B
	Offset: 0x1CE0
	Size: 0x271
	Parameters: 2
	Flags: None
*/
function function_1583bd50(var_ec74b091, var_f4d36bbd)
{
	if(!isdefined(var_f4d36bbd))
	{
		var_f4d36bbd = 1;
	}
	if(var_f4d36bbd)
	{
		var_9da3bffd = 1;
	}
	else
	{
		var_9da3bffd = -1;
	}
	var_929d2c59 = function_99201f25(var_ec74b091, "train_ped_blocker_right", "targetname");
	foreach(var_4c225fa1 in var_929d2c59)
	{
		if(var_4c225fa1.var_caae374e === "train_ped_blocker_mirrored")
		{
			var_4c225fa1 function_d7e3960e(64 * var_9da3bffd, 0.5);
			continue;
		}
		var_4c225fa1 function_d7e3960e(64 * var_9da3bffd * -1, 0.5);
	}
	var_ba59f2a4 = function_99201f25(var_ec74b091, "train_ped_blocker_left", "targetname");
	foreach(var_4c225fa1 in var_ba59f2a4)
	{
		if(var_4c225fa1.var_caae374e === "train_ped_blocker_mirrored")
		{
			var_4c225fa1 function_d7e3960e(64 * var_9da3bffd * -1, 0.5);
			continue;
		}
		var_4c225fa1 function_d7e3960e(64 * var_9da3bffd, 0.5);
	}
}

/*
	Name: function_c9af9d76
	Namespace: namespace_9925365a
	Checksum: 0xE6DE1E94
	Offset: 0x1F60
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_c9af9d76(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_8dedca9c(var_ec74b091, "cp_newworld_rumble_chase_train_near");
	}
	else
	{
		self function_8a0ba272(var_ec74b091, "cp_newworld_rumble_chase_train_near");
	}
}

/*
	Name: function_54776d63
	Namespace: namespace_9925365a
	Checksum: 0xA4193BB8
	Offset: 0x2000
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_54776d63(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_vent_roof_wobble_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_vent_roof_slow_bundle");
	}
	else
	{
		level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_vent_roof_wobble_bundle", 1);
		level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_vent_roof_slow_bundle", 1);
	}
}

/*
	Name: function_f46455d6
	Namespace: namespace_9925365a
	Checksum: 0x64854150
	Offset: 0x20D8
	Size: 0xCB
	Parameters: 7
	Flags: None
*/
function function_f46455d6(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_crane_hook_small_01_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_crane_pallet_01_bundle");
	}
	else
	{
		level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_crane_hook_small_01_bundle", 1);
		level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_crane_pallet_01_bundle", 1);
	}
}

/*
	Name: function_8aaa2512
	Namespace: namespace_9925365a
	Checksum: 0xBB8FC06D
	Offset: 0x21B0
	Size: 0x3B
	Parameters: 7
	Flags: None
*/
function function_8aaa2512(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
}

/*
	Name: function_a2a14d16
	Namespace: namespace_9925365a
	Checksum: 0xAE6B064A
	Offset: 0x21F8
	Size: 0xAB
	Parameters: 7
	Flags: None
*/
function function_a2a14d16(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_subway_debris_01_bundle");
	}
	else if(var_9193c732 == 2)
	{
		namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_subway_debris_01_bundle");
	}
	else
	{
		namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_newworld_subway_debris_01_bundle", 1);
	}
}

/*
	Name: function_1dfb5937
	Namespace: namespace_9925365a
	Checksum: 0xAE206D12
	Offset: 0x22B0
	Size: 0xE3
	Parameters: 7
	Flags: None
*/
function function_1dfb5937(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_train_glass_01_bundle");
	}
	else if(var_9193c732 == 2)
	{
		namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_train_glass_01_bundle");
	}
	else
	{
		var_378eee5b = function_6ada35ba(var_ec74b091, "newworld_train_glass_01", "targetname");
		if(isdefined(var_378eee5b))
		{
			var_378eee5b function_dc8c8404();
		}
	}
}

/*
	Name: function_21d4cd3e
	Namespace: namespace_9925365a
	Checksum: 0xC25C284B
	Offset: 0x23A0
	Size: 0x169
	Parameters: 7
	Flags: None
*/
function function_21d4cd3e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_train_glass_02_bundle");
		break;
	}
	if(var_9193c732 == 2)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_glass_left_01", "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
		break;
	}
	var_363ca6bb = function_99201f25(var_ec74b091, "newworld_train_glass_02", "targetname");
	foreach(var_378eee5b in var_363ca6bb)
	{
		var_378eee5b function_dc8c8404();
	}
}

/*
	Name: function_d5d4675
	Namespace: namespace_9925365a
	Checksum: 0x7D382F42
	Offset: 0x2518
	Size: 0x169
	Parameters: 7
	Flags: None
*/
function function_d5d4675(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_train_glass_03_bundle");
		break;
	}
	if(var_9193c732 == 2)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_glass_right_02", "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
		break;
	}
	var_363ca6bb = function_99201f25(var_ec74b091, "newworld_train_glass_03", "targetname");
	foreach(var_378eee5b in var_363ca6bb)
	{
		var_378eee5b function_dc8c8404();
	}
}

/*
	Name: function_54711778
	Namespace: namespace_9925365a
	Checksum: 0xE413309
	Offset: 0x2690
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_54711778(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_glass_left_02", "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_92f89bed
	Namespace: namespace_9925365a
	Checksum: 0xA1FA10CA
	Offset: 0x2728
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_92f89bed(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_glass_right_02", "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_510d6e0e
	Namespace: namespace_9925365a
	Checksum: 0xFBBD417A
	Offset: 0x27C0
	Size: 0xE3
	Parameters: 7
	Flags: None
*/
function function_510d6e0e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_train_glass_06_bundle");
	}
	else if(var_9193c732 == 2)
	{
		namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_train_glass_06_bundle");
	}
	else
	{
		var_378eee5b = function_6ada35ba(var_ec74b091, "newworld_train_glass_06", "targetname");
		if(isdefined(var_378eee5b))
		{
			var_378eee5b function_dc8c8404();
		}
	}
}

/*
	Name: function_b57c42f8
	Namespace: namespace_9925365a
	Checksum: 0x6C447FD1
	Offset: 0x28B0
	Size: 0x10B
	Parameters: 7
	Flags: None
*/
function function_b57c42f8(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_train_glass_04_bundle");
	}
	else if(var_9193c732 == 2)
	{
		namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_train_glass_04_bundle");
		namespace_4fe3eef1::function_11908f52("amb_train_window_wind", (-20401, 15614, 4293));
	}
	else
	{
		var_378eee5b = function_6ada35ba(var_ec74b091, "newworld_train_glass_04", "targetname");
		if(isdefined(var_378eee5b))
		{
			var_378eee5b function_dc8c8404();
		}
	}
}

/*
	Name: function_eaa27407
	Namespace: namespace_9925365a
	Checksum: 0xFA08F401
	Offset: 0x29C8
	Size: 0xF1
	Parameters: 7
	Flags: None
*/
function function_eaa27407(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_train_glass_05_bundle");
	}
	else if(var_9193c732 == 2)
	{
		namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_train_glass_05_bundle");
	}
	else
	{
		var_378eee5b = function_6ada35ba(var_ec74b091, "newworld_train_glass_05", "targetname");
		if(isdefined(var_378eee5b))
		{
			var_378eee5b function_dc8c8404();
		}
	}
	level notify("hash_6b336e59");
}

/*
	Name: function_3c3eadc2
	Namespace: namespace_9925365a
	Checksum: 0x951ADA5A
	Offset: 0x2AC8
	Size: 0x141
	Parameters: 7
	Flags: None
*/
function function_3c3eadc2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_shutter_01", "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
		break;
	}
	var_d4260265 = function_99201f25(var_ec74b091, "newworld_train_shutters_01", "targetname");
	foreach(var_aed142c5 in var_d4260265)
	{
		var_aed142c5 function_dc8c8404();
	}
}

/*
	Name: function_163c3359
	Namespace: namespace_9925365a
	Checksum: 0x89AA7EC2
	Offset: 0x2C18
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_163c3359(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_shutter_02", "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_f039b8f0
	Namespace: namespace_9925365a
	Checksum: 0x4C1BBE3E
	Offset: 0x2CB0
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_f039b8f0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_shutter_03", "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_fa4b11cf
	Namespace: namespace_9925365a
	Checksum: 0xC4A2307D
	Offset: 0x2D48
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_fa4b11cf(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_shutter_04", "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_d4489766
	Namespace: namespace_9925365a
	Checksum: 0x117B8102
	Offset: 0x2DE0
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_d4489766(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("train_shutter_05", "targetname");
		var_1cbcb46d namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_b758d8f
	Namespace: namespace_9925365a
	Checksum: 0x8559655E
	Offset: 0x2E78
	Size: 0x95
	Parameters: 7
	Flags: None
*/
function function_b758d8f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self.var_78962fff = GetTime();
		self thread function_965a6439(var_ec74b091);
		self thread function_a860cb86(var_ec74b091);
	}
	else
	{
		level notify("hash_4ce164a6");
	}
}

/*
	Name: function_965a6439
	Namespace: namespace_9925365a
	Checksum: 0xF67FDFC
	Offset: 0x2F18
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_965a6439(var_ec74b091)
{
	level endon("hash_4ce164a6");
	self endon("hash_128f8789");
	if(isdefined(10))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(10, "timeout");
	}
	var_5cf8a2dd = function_6ada35ba(var_ec74b091, "train_bad_area_corpses", "targetname");
	while(isdefined(self))
	{
		if(self function_32fa5072(var_5cf8a2dd))
		{
			var_be8789fc = function_72a94f05(700, 800);
			var_e48a0465 = function_72a94f05(-100, 100);
			var_a8c7ece = function_72a94f05(10, 100);
			self function_8461d2b1((var_be8789fc, var_e48a0465, var_a8c7ece));
			self thread namespace_ce0e5f06::function_52bc98a1(var_ec74b091);
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_a860cb86
	Namespace: namespace_9925365a
	Checksum: 0xBB857E31
	Offset: 0x30C8
	Size: 0x3E3
	Parameters: 1
	Flags: None
*/
function function_a860cb86(var_ec74b091)
{
	level endon("hash_4ce164a6");
	self endon("hash_128f8789");
	if(isdefined(10))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(10, "timeout");
	}
	var_accfeb6 = function_99201f25(var_ec74b091, "train_roof_brakeflap_trigger", "targetname");
	var_623b9b = function_99201f25(var_ec74b091, "train_roof_flap", "targetname");
	while(isdefined(self))
	{
		foreach(var_4f00cbcf in var_accfeb6)
		{
			if(self function_32fa5072(var_4f00cbcf) && self.var_2c3c4e50 !== var_4f00cbcf)
			{
				self.var_2c3c4e50 = var_4f00cbcf;
				var_9881fa10 = function_e7bdc1a1(self.var_722885f3, var_623b9b);
				if(!(isdefined(var_9881fa10.var_a3256cdc) && var_9881fa10.var_a3256cdc))
				{
					var_dde12958 = -1;
					if(isdefined(self.var_78962fff))
					{
						var_9cf7911 = GetTime();
						var_dde12958 = var_9cf7911 - self.var_78962fff;
					}
					if(!isdefined(self.var_cb6e468f))
					{
						if(namespace_d73b9283::function_d2c92ee7() == 1)
						{
							self.var_cb6e468f = 1;
						}
						else
						{
							self.var_cb6e468f = -1;
						}
					}
					if(var_dde12958 <= 300)
					{
						var_e48a0465 = function_72a94f05(10, 30) * self.var_cb6e468f;
						var_a8c7ece = function_72a94f05(40, 50);
					}
					else if(var_dde12958 > 300 && var_dde12958 <= 600)
					{
						var_e48a0465 = function_72a94f05(30, 50) * self.var_cb6e468f;
						var_a8c7ece = function_72a94f05(50, 60);
					}
					else
					{
						var_e48a0465 = function_72a94f05(50, 70) * self.var_cb6e468f;
						var_a8c7ece = function_72a94f05(60, 70);
					}
					self function_8461d2b1((0, var_e48a0465, var_a8c7ece));
					level thread function_a251bd0b(var_ec74b091, var_9881fa10);
					wait(0.25);
					break;
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_a251bd0b
	Namespace: namespace_9925365a
	Checksum: 0xB0927FE1
	Offset: 0x34B8
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_a251bd0b(var_ec74b091, var_9881fa10)
{
	var_9881fa10.var_a3256cdc = 1;
	var_9881fa10 notify("hash_47e64fc0");
	var_9881fa10 function_788ec1d6(25, 0.25);
	var_9881fa10 waittill("hash_6654e4f4");
	var_9881fa10 function_788ec1d6(-25, 0.5);
	var_9881fa10 thread function_20e68acf(var_ec74b091);
	wait(0.5);
	var_9881fa10.var_a3256cdc = 0;
}

/*
	Name: function_417ec9c
	Namespace: namespace_9925365a
	Checksum: 0x9ADCA36C
	Offset: 0x3580
	Size: 0x3B9
	Parameters: 7
	Flags: None
*/
function function_417ec9c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_a1ec3453 = function_99201f25(var_ec74b091, "train_roof_flap", "targetname");
		foreach(var_13f418 in var_a1ec3453)
		{
			var_13f418.var_6ab6f4fd = VectorScale((1, 0, 0), 90);
		}
		break;
	}
	if(var_9193c732 == 0)
	{
		var_22e036fa = namespace_14b42b8a::function_7922262b("front_of_the_train", "targetname");
		var_a1ec3453 = function_99201f25(var_ec74b091, "train_roof_flap", "targetname");
		var_a1ec3453 = namespace_84970cc4::function_4219028b(var_22e036fa.var_722885f3, var_a1ec3453);
		var_3e671a1 = 0;
		foreach(var_13f418 in var_a1ec3453)
		{
			if(!isdefined(var_13f418))
			{
				break;
			}
			var_13f418 function_788ec1d6(-90, 0.5);
			var_13f418 thread function_20e68acf(var_ec74b091);
			var_13f418 thread namespace_ce0e5f06::function_ff1b6796(var_ec74b091);
			var_13f418 function_c2931a36("evt_airbreak_loop");
			var_13f418 function_921a1574(0, "evt_airbreak_deploy");
			var_3e671a1++;
			if(var_3e671a1 % 3 == 0)
			{
				wait(0.25);
			}
		}
		break;
	}
	if(var_9193c732 == 2)
	{
		level notify("hash_1576c4c2");
		var_a1ec3453 = function_99201f25(var_ec74b091, "train_roof_flap", "targetname");
		foreach(var_13f418 in var_a1ec3453)
		{
			if(isdefined(var_13f418.var_f3f44e9))
			{
				var_13f418.var_f3f44e9 function_dc8c8404();
			}
			var_13f418 function_dc8c8404();
		}
	}
}

/*
	Name: function_20e68acf
	Namespace: namespace_9925365a
	Checksum: 0x3475560B
	Offset: 0x3948
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_20e68acf(var_ec74b091)
{
	level endon("hash_1576c4c2");
	self endon("hash_47e64fc0");
	self waittill("hash_6654e4f4");
	while(1)
	{
		var_f1d0b948 = function_72a94f05(2, 5);
		var_b53c9eef = function_72a94f05(0.15, 0.25);
		self function_788ec1d6(var_f1d0b948, var_b53c9eef);
		self waittill("hash_6654e4f4");
		var_f1d0b948 = var_f1d0b948 * -1;
		self function_788ec1d6(var_f1d0b948, var_b53c9eef);
		self waittill("hash_6654e4f4");
	}
}

/*
	Name: function_2920b522
	Namespace: namespace_9925365a
	Checksum: 0x6BEBAA4C
	Offset: 0x3A48
	Size: 0x273
	Parameters: 7
	Flags: None
*/
function function_2920b522(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_280d5f68 = function_e7bdc1a1(self.var_722885f3, function_99201f25(var_ec74b091, "vat_door_left", "targetname"));
	var_3c301126 = function_e7bdc1a1(self.var_722885f3, function_99201f25(var_ec74b091, "vat_door_right", "targetname"));
	var_43eea8e5 = function_298b8148(var_280d5f68.var_6ab6f4fd);
	if(var_9193c732)
	{
		var_33219fd6 = var_280d5f68.var_722885f3 + var_43eea8e5 * 60;
		var_280d5f68 function_a96a2721(var_33219fd6, 1.5);
		var_dac99ad = var_3c301126.var_722885f3 + var_43eea8e5 * 60 * -1;
		var_3c301126 function_a96a2721(var_dac99ad, 1.5);
		var_3c301126 function_921a1574(0, "evt_vat_door_open");
	}
	else
	{
		var_33219fd6 = var_280d5f68.var_722885f3 + var_43eea8e5 * 60 * -1;
		var_280d5f68 function_a96a2721(var_33219fd6, 1.5);
		var_dac99ad = var_3c301126.var_722885f3 + var_43eea8e5 * 60;
		var_3c301126 function_a96a2721(var_dac99ad, 1.5);
		var_3c301126 function_921a1574(0, "evt_vat_door_close");
	}
}

/*
	Name: function_9eeb165f
	Namespace: namespace_9925365a
	Checksum: 0x869ACE88
	Offset: 0x3CC8
	Size: 0x10B
	Parameters: 7
	Flags: None
*/
function function_9eeb165f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_xsml_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_xsml_thick_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_sml_bundle");
	}
	else
	{
		level namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wire_sparking_xsml_thick_bundle", 1);
		level namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wire_sparking_xsml_bundle", 1);
		level namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_wire_sparking_sml_bundle", 1);
	}
}

