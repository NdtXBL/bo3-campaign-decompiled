#using scripts\codescripts\struct;
#using scripts\core\_multi_extracam;
#using scripts\cp\_training_sim;
#using scripts\shared\_character_customization;
#using scripts\shared\_weapon_customization_icon;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\custom_class;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\lui_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_a6816cde;

/*
	Name: function_2dc19561
	Namespace: namespace_a6816cde
	Checksum: 0xB6D19FE2
	Offset: 0xEC8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("safehouse", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_a6816cde
	Checksum: 0xDBA8D5D5
	Offset: 0xF08
	Size: 0x41B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("world", "nextMap", 1, 6, "int", &function_9887cf30, 0, 1);
	namespace_71e9cb84::function_50f16166("world", "near_gun_rack", 1, 1, "int", &function_e08a1c76, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "toggle_console_1", 1, 1, "int", &function_279201f, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "toggle_console_2", 1, 1, "int", &function_9071b0e4, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "toggle_console_3", 1, 1, "int", &function_b6742b4d, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "toggle_console_4", 1, 1, "int", &function_446cbc12, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "player_clone", 1, 1, "int", &function_c9199cc8, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "training_sim_extracam", 1, function_eaa48678(4), "int", &function_9d476185, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "gun_rack_init", 1, function_eaa48678(1), "int", &function_d887013e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "sh_exit_duck_active", 1, 1, "int", &function_2b8cf6a0, 0, 0);
	namespace_dabbe128::function_828aea2c(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_a022a0ac::function_c35e6aab();
	level.var_f32afe03 = &function_f32afe03;
	function_2f834a09(0);
	var_cb97644f = function_5821abb6(function_c9741013(), "nextMap");
	var_aed90fc4 = function_f4afdfcc(0);
	function_bd3f2b3b(var_cb97644f, var_aed90fc4);
	if(!isdefined(level.var_51cfdd5))
	{
		level.var_51cfdd5 = [];
	}
	if(!isdefined(level.var_f2434cd3))
	{
		level.var_f2434cd3 = [];
	}
}

/*
	Name: function_e2d25a1b
	Namespace: namespace_a6816cde
	Checksum: 0x3910FE00
	Offset: 0x1330
	Size: 0x74B
	Parameters: 1
	Flags: None
*/
function function_e2d25a1b(var_ec74b091)
{
	namespace_ce7c3ed5::function_2d7df35a(var_ec74b091);
	namespace_ce7c3ed5::function_25d4b1fc("BrowseCollectibles", var_ec74b091, &function_336d330b, 0, undefined, &function_74e49d6f);
	namespace_ce7c3ed5::function_37071106("BrowseCollectibles", var_ec74b091, 1, &function_a2e25254);
	namespace_ce7c3ed5::function_ad22f2bf("BrowseCollectibles", var_ec74b091, function_84970cc4("weapon_kick", "lights_paintshop"));
	namespace_ce7c3ed5::function_25d4b1fc("InspectingCollectibles", var_ec74b091, &function_5f0902f7, 0, undefined, &function_74e49d6f);
	namespace_ce7c3ed5::function_37071106("InspectingCollectibles", var_ec74b091, 1, &function_d9350b98);
	namespace_ce7c3ed5::function_ad22f2bf("InspectingCollectibles", var_ec74b091, function_84970cc4("weapon_kick", "lights_paintshop"));
	namespace_ce7c3ed5::function_c9647d4d("ChooseOutfit", var_ec74b091, "personalizeHero_camera", undefined, "ui_cam_character_customization", "cam_preview");
	namespace_ce7c3ed5::function_ad22f2bf("ChooseOutfit", var_ec74b091, function_84970cc4("char_custom_bg", "char_customization"));
	namespace_ce7c3ed5::function_1c470db0("ChooseOutfit", var_ec74b091, "character_customization");
	namespace_ce7c3ed5::function_25d4b1fc("PersonalizeCharacter", var_ec74b091, &function_9d60eac, 0, &function_fa299ef0, &function_9236c726);
	namespace_ce7c3ed5::function_ad22f2bf("PersonalizeCharacter", var_ec74b091, function_84970cc4("char_custom_bg", "char_customization"));
	namespace_ce7c3ed5::function_1c470db0("PersonalizeCharacter", var_ec74b091, "character_customization");
	namespace_ce7c3ed5::function_c9647d4d("ChooseHead", var_ec74b091, "personalizeHero_camera", "ui_cam_character_customization", "cam_helmet", undefined, &function_e6a435de, &function_ec0911d0);
	namespace_ce7c3ed5::function_ad22f2bf("ChooseHead", var_ec74b091, function_84970cc4("char_custom_bg", "char_customization"));
	namespace_ce7c3ed5::function_1c470db0("ChooseHead", var_ec74b091, "character_customization");
	namespace_ce7c3ed5::function_c9647d4d("chooseClass", var_ec74b091, "spawn_char_cac_choose", "ui_cam_cac_specialist", "cam_specialist", undefined, &function_1b2ac60a, &function_fd35bd40);
	namespace_ce7c3ed5::function_1c470db0("chooseClass", var_ec74b091, "character_customization");
	namespace_ce7c3ed5::function_ad22f2bf("chooseClass", var_ec74b091, function_84970cc4("char_custom_bg", "char_customization", "weapon_kick", "lights_paintshop"));
	namespace_ce7c3ed5::function_c9647d4d("chooseClass_TrainingSim", var_ec74b091, "spawn_char_cac_choose", "ui_cam_cac_specialist", "cam_specialist", undefined, &function_1b2ac60a, &function_fd35bd40);
	namespace_ce7c3ed5::function_1c470db0("chooseClass_TrainingSim", var_ec74b091, "character_customization");
	namespace_ce7c3ed5::function_ad22f2bf("chooseClass_TrainingSim", var_ec74b091, function_84970cc4("char_custom_bg", "char_customization", "weapon_kick", "lights_paintshop"));
	namespace_ce7c3ed5::function_c9647d4d("CybercoreUpgrade", var_ec74b091, "spawn_char_cac_choose", "ui_cam_cac_perk", "cam_cac", undefined, &function_85a15cfc, &function_62845c2);
	namespace_ce7c3ed5::function_1c470db0("CybercoreUpgrade", var_ec74b091, "character_customization");
	namespace_ce7c3ed5::function_25d4b1fc("Paintshop", var_ec74b091, undefined, 0, undefined, &function_59622cb6);
	namespace_ce7c3ed5::function_25d4b1fc("Gunsmith", var_ec74b091, undefined, 0, undefined, &function_66ec7bf3);
	namespace_ce7c3ed5::function_25d4b1fc("CombatRecordWeapons", var_ec74b091, undefined, 0, undefined, &function_30eb9463);
	namespace_ce7c3ed5::function_ad22f2bf("CombatRecordWeapons", var_ec74b091, function_84970cc4("char_customization", "char_custom_bg"));
	namespace_ce7c3ed5::function_25d4b1fc("CombatRecordEquipment", var_ec74b091, undefined, 0, undefined, &function_30eb9463);
	namespace_ce7c3ed5::function_ad22f2bf("CombatRecordEquipment", var_ec74b091, function_84970cc4("char_customization", "char_custom_bg"));
	namespace_ce7c3ed5::function_25d4b1fc("CombatRecordCybercore", var_ec74b091, undefined, 0, undefined, &function_30eb9463);
	namespace_ce7c3ed5::function_ad22f2bf("CombatRecordCybercore", var_ec74b091, function_84970cc4("char_customization", "char_custom_bg"));
	namespace_ce7c3ed5::function_25d4b1fc("CombatRecordCollectibles", var_ec74b091, undefined, 0, undefined, &function_30eb9463);
	namespace_ce7c3ed5::function_ad22f2bf("CombatRecordCollectibles", var_ec74b091, function_84970cc4("char_customization", "char_custom_bg"));
}

/*
	Name: function_1bbcb5e2
	Namespace: namespace_a6816cde
	Checksum: 0x75B29448
	Offset: 0x1A88
	Size: 0xDD
	Parameters: 3
	Flags: None
*/
function function_1bbcb5e2(var_ec74b091, var_1e2ce4de, var_caae374e)
{
	var_9f5d8b33 = namespace_14b42b8a::function_7faf4c39("player_bunk_" + var_1e2ce4de);
	if(isdefined(var_9f5d8b33))
	{
		foreach(var_c5b0e858 in var_9f5d8b33)
		{
			if(var_c5b0e858.var_caae374e === var_caae374e)
			{
				return var_c5b0e858;
			}
		}
	}
	return undefined;
}

/*
	Name: function_2f834a09
	Namespace: namespace_a6816cde
	Checksum: 0xD38615A3
	Offset: 0x1B70
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_2f834a09(var_404ab86)
{
	function_b375e682();
	function_c6294019(0);
}

/*
	Name: function_9887cf30
	Namespace: namespace_a6816cde
	Checksum: 0xEE17A1E5
	Offset: 0x1BB0
	Size: 0xC3
	Parameters: 7
	Flags: None
*/
function function_9887cf30(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_cb97644f = function_5821abb6(function_c9741013(), "nextMap");
	var_aed90fc4 = function_f4afdfcc(var_9193c732);
	function_eddb9d0f(var_aed90fc4);
	function_bd3f2b3b(var_cb97644f, var_aed90fc4);
}

/*
	Name: function_d887013e
	Namespace: namespace_a6816cde
	Checksum: 0x8B23B396
	Offset: 0x1C80
	Size: 0x381
	Parameters: 7
	Flags: None
*/
function function_d887013e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_87a9e25c = [];
	var_87a9e25c["link_wpn_t7_shotgun_spartan_world01_jnt"] = "wpn_t7_shotgun_spartan_world";
	var_87a9e25c["link_wpn_t7_shotgun_spartan_world02_jnt"] = "wpn_t7_shotgun_spartan_world";
	var_87a9e25c["link_wpn_t7_m229_world01_jnt"] = "wpn_t7_shotgun_spartan_world";
	var_87a9e25c["link_wpn_t7_m229_world02_jnt"] = "wpn_t7_shotgun_spartan_world";
	var_87a9e25c["link_wpn_t7_lmg_dingo_world01_jnt"] = "wpn_t7_lmg_dingo_world";
	var_87a9e25c["link_wpn_t7_lmg_dingo_world02_jnt"] = "wpn_t7_lmg_dingo_world";
	var_87a9e25c["link_wpn_t7_arak_world_cp01_jnt"] = "wpn_t7_arak_world_cp";
	var_87a9e25c["link_wpn_t7_arak_world_cp02_jnt"] = "wpn_t7_arak_world_cp";
	var_87a9e25c["link_wpn_t7_base_rifle_world01_jnt"] = "wpn_t7_ar_isr27_world";
	var_87a9e25c["link_wpn_t7_base_rifle_world02_jnt"] = "wpn_t7_ar_isr27_world";
	var_87a9e25c["link_wpn_t7_xr2_world01_jnt"] = "wpn_t7_xr2_world";
	var_87a9e25c["link_wpn_t7_xr2_world02_jnt"] = "wpn_t7_xr2_world";
	var_87a9e25c["link_wpn_t7_grenade_emp_world_jnt"] = "wpn_t7_grenade_emp_world";
	var_87a9e25c["link_wpn_t7_grenade_flashbang_world_jnt"] = "wpn_t7_grenade_flashbang_world";
	var_87a9e25c["link_wpn_t7_grenade_semtex_jnt"] = "wpn_t7_grenade_semtex_world";
	var_87a9e25c["link_wpn_t7_grenade_frag_jnt"] = "wpn_t7_grenade_frag_world";
	var_87a9e25c["link_wpn_t7_grenade_sensor_world_jnt"] = "wpn_t7_grenade_sensor_world";
	var_87a9e25c["link_wpn_t7_grenade_supply_world01_jnt"] = "wpn_t7_grenade_supply_world";
	var_87a9e25c["link_wpn_t7_grenade_supply_world02_jnt"] = "wpn_t7_grenade_supply_world";
	var_87a9e25c["link_wpn_t7_pistol_triton01_jnt"] = "wpn_t7_pistol_triton_world";
	var_87a9e25c["link_wpn_t7_pistol_triton02_jnt"] = "wpn_t7_pistol_triton_world";
	var_87a9e25c["link_wpn_t7_mr6_world_cac01_jnt"] = "wpn_t7_mr6_world";
	var_87a9e25c["link_wpn_t7_mr6_world_cac02_jnt"] = "wpn_t7_mr6_world";
	var_87a9e25c["link_wpn_t7_base_pistol_01_jnt"] = "wpn_t7_pistol_triton_world";
	var_87a9e25c["link_wpn_t7_base_pistol_02_jnt"] = "wpn_t7_pistol_triton_world";
	foreach(var_2ffd9881 in var_87a9e25c)
	{
		var_daa69c19 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, var_2ffd9881, self function_d48f2ab3(var_c6107c9b), self function_cd1d99bd(var_c6107c9b));
		var_daa69c19 function_37f7858a(self, var_c6107c9b);
	}
}

/*
	Name: function_e08a1c76
	Namespace: namespace_a6816cde
	Checksum: 0x19F30812
	Offset: 0x2010
	Size: 0x3B
	Parameters: 7
	Flags: None
*/
function function_e08a1c76(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
}

/*
	Name: function_279201f
	Namespace: namespace_a6816cde
	Checksum: 0xA1B43BCF
	Offset: 0x2058
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_279201f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_46813487 = function_6ada35ba(var_ec74b091, "arm_1", "targetname");
	if(var_9193c732 == 1)
	{
		var_46813487 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_arm_console_1_down_bundle");
	}
	else
	{
		var_46813487 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_arm_console_1_up_bundle");
	}
}

/*
	Name: function_9071b0e4
	Namespace: namespace_a6816cde
	Checksum: 0x66B6D4E2
	Offset: 0x2120
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_9071b0e4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_46813487 = function_6ada35ba(var_ec74b091, "arm_2", "targetname");
	if(var_9193c732 == 1)
	{
		var_46813487 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_arm_console_2_down_bundle");
	}
	else
	{
		var_46813487 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_arm_console_2_up_bundle");
	}
}

/*
	Name: function_b6742b4d
	Namespace: namespace_a6816cde
	Checksum: 0x8A3F4999
	Offset: 0x21E8
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_b6742b4d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_46813487 = function_6ada35ba(var_ec74b091, "arm_3", "targetname");
	if(var_9193c732 == 1)
	{
		var_46813487 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_arm_console_3_down_bundle");
	}
	else
	{
		var_46813487 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_arm_console_3_up_bundle");
	}
}

/*
	Name: function_446cbc12
	Namespace: namespace_a6816cde
	Checksum: 0x4DC37FEE
	Offset: 0x22B0
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_446cbc12(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_46813487 = function_6ada35ba(var_ec74b091, "arm_4", "targetname");
	if(var_9193c732 == 1)
	{
		var_46813487 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_arm_console_4_down_bundle");
	}
	else
	{
		var_46813487 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_arm_console_4_up_bundle");
	}
}

/*
	Name: function_c9199cc8
	Namespace: namespace_a6816cde
	Checksum: 0xCDBBB5E5
	Offset: 0x2378
	Size: 0xB3
	Parameters: 7
	Flags: None
*/
function function_c9199cc8(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_f386abc9)
{
	var_11ee1e64 = self;
	var_5e36fd2e = var_11ee1e64 function_f97c0820(var_ec74b091);
	if(var_5e36fd2e function_65f192a6())
	{
		var_11ee1e64 function_ec30fa7e();
		var_11ee1e64 function_1de3f0cf(1);
	}
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_a6816cde
	Checksum: 0x4D1EBD22
	Offset: 0x2438
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_fb4f96b5(var_ec74b091)
{
	/#
		function_895b00("Dev Block strings are not supported" + var_ec74b091);
	#/
	function_7e781987(var_ec74b091);
	namespace_a022a0ac::function_80bc4653(var_ec74b091);
	function_e2d25a1b(var_ec74b091);
}

/*
	Name: function_1b2ac60a
	Namespace: namespace_a6816cde
	Checksum: 0xD379B8E8
	Offset: 0x24C0
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_1b2ac60a(var_ec74b091, var_bb7f7c57)
{
	level thread namespace_15737250::function_731a29a3(var_ec74b091, var_bb7f7c57.var_a56ff24, "choose_class_closed" + var_ec74b091);
}

/*
	Name: function_fd35bd40
	Namespace: namespace_a6816cde
	Checksum: 0xB5297DDF
	Offset: 0x2518
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function function_fd35bd40(var_ec74b091, var_bb7f7c57)
{
	level notify("choose_class_closed" + var_ec74b091);
}

/*
	Name: function_85a15cfc
	Namespace: namespace_a6816cde
	Checksum: 0x3347B326
	Offset: 0x2548
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_85a15cfc(var_ec74b091, var_bb7f7c57)
{
	namespace_bdde9225::function_ef318b3(var_ec74b091, "cybercore", 1);
}

/*
	Name: function_62845c2
	Namespace: namespace_a6816cde
	Checksum: 0x7A96940F
	Offset: 0x2588
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_62845c2(var_ec74b091, var_bb7f7c57)
{
	function_94b4fd36(var_ec74b091, 0);
	function_ab23d927(var_ec74b091, 0);
	namespace_bdde9225::function_ef318b3(var_ec74b091, "cybercore", 0);
}

/*
	Name: function_7e781987
	Namespace: namespace_a6816cde
	Checksum: 0xB6827216
	Offset: 0x25F8
	Size: 0x483
	Parameters: 1
	Flags: None
*/
function function_7e781987(var_ec74b091)
{
	level.var_19c61a80 = function_bd42c9d1();
	var_d275cebc = namespace_14b42b8a::function_10500222("collectible");
	foreach(var_c5b0e858 in var_d275cebc)
	{
		if(!isdefined(level.var_19c61a80[var_c5b0e858.var_4ac27406]) && isdefined(var_c5b0e858.var_f5f2ac2e) && var_c5b0e858.var_f5f2ac2e !== "tag_origin")
		{
			level.var_19c61a80[var_c5b0e858.var_4ac27406] = var_c5b0e858.var_f5f2ac2e;
		}
	}
	level.var_f2434cd3[var_ec74b091] = [];
	for(var_ecc65052 = 0; var_ecc65052 < 4; var_ecc65052++)
	{
		level.var_f2434cd3[var_ec74b091][var_ecc65052] = function_a8fb77bd();
		level.var_f2434cd3[var_ec74b091][var_ecc65052].var_7e3ecbc3 = [];
		for(var_f607056a = 0; var_f607056a <= 8; var_f607056a++)
		{
			var_c5b0e858 = function_1bbcb5e2(var_ec74b091, var_ecc65052, "collectible_" + var_f607056a);
			if(isdefined(var_c5b0e858))
			{
				var_e44d919a = function_a8fb77bd();
				var_e44d919a.var_6df9264 = namespace_82b91a51::function_b9fd52a4(var_ec74b091, level.var_19c61a80[function_48fdc243(var_f607056a)], var_c5b0e858.var_722885f3, var_c5b0e858.var_6ab6f4fd);
				var_e44d919a.var_6df9264 function_50ccee8d();
				var_e44d919a.var_56ad232d = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", var_e44d919a.var_6df9264 function_d48f2ab3("tag_center_rotate_anim"), var_e44d919a.var_6df9264 function_cd1d99bd("tag_center_rotate_anim"));
				if(function_48fdc243(var_f607056a) == 0)
				{
					var_e44d919a.var_56ad232d.var_722885f3 = var_e44d919a.var_56ad232d.var_722885f3 + VectorScale((0, 0, -1), 4);
				}
				level.var_f2434cd3[var_ec74b091][var_ecc65052].var_7e3ecbc3[var_f607056a] = var_e44d919a;
			}
		}
	}
	var_1dd8c4d6 = namespace_14b42b8a::function_7922262b("browse_collectible_position");
	if(isdefined(var_1dd8c4d6))
	{
		level.var_51cfdd5[var_ec74b091] = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", var_1dd8c4d6.var_722885f3, var_1dd8c4d6.var_6ab6f4fd);
		level.var_51cfdd5[var_ec74b091].var_f5cc4b9c = var_1dd8c4d6.var_722885f3;
		level.var_51cfdd5[var_ec74b091].var_69992842 = var_1dd8c4d6.var_6ab6f4fd;
		level.var_51cfdd5[var_ec74b091].var_f3e9c22 = (0, 0, 0);
		level.var_51cfdd5[var_ec74b091] function_50ccee8d();
	}
}

/*
	Name: function_48fdc243
	Namespace: namespace_a6816cde
	Checksum: 0x75061057
	Offset: 0x2A88
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_48fdc243(var_2d11f419)
{
	switch(var_2d11f419)
	{
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		{
			return 0;
		}
		case 6:
		case 7:
		{
			return 1;
		}
		case 8:
		{
			return 2;
		}
	}
}

/*
	Name: function_f32afe03
	Namespace: namespace_a6816cde
	Checksum: 0xC9F40890
	Offset: 0x2B08
	Size: 0x39D
	Parameters: 3
	Flags: None
*/
function function_f32afe03(var_79678dca, var_7217384b, var_ec74b091)
{
	if(!isdefined(var_ec74b091))
	{
		var_ec74b091 = 0;
	}
	/#
		namespace_33b293fd::function_a7ee953(var_7217384b.size == 9);
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_f2434cd3));
	#/
	for(var_2d11f419 = 0; var_2d11f419 < var_7217384b.size; var_2d11f419++)
	{
		if(!(isdefined(level.var_f2434cd3[var_ec74b091][var_79678dca].var_7e3ecbc3[var_2d11f419].var_d3fca4df) && level.var_f2434cd3[var_ec74b091][var_79678dca].var_7e3ecbc3[var_2d11f419].var_d3fca4df))
		{
			var_f10f645 = level.var_19c61a80[function_48fdc243(var_2d11f419)];
			var_ab67f66c = 1;
			if(isdefined(var_7217384b[var_2d11f419]))
			{
				var_89573eb4 = namespace_14b42b8a::function_6409b8e5("collectible", var_7217384b[var_2d11f419]["collectiblelist"]);
				if(isdefined(var_89573eb4))
				{
					var_71cdd4fd = namespace_14b42b8a::function_b7af54ae("collectible", var_89573eb4[var_7217384b[var_2d11f419]["index"]]);
					if(isdefined(var_71cdd4fd))
					{
						var_f10f645 = var_71cdd4fd.var_f5f2ac2e;
						if(isdefined(var_71cdd4fd.var_250662be))
						{
							var_f10f645 = var_71cdd4fd.var_250662be;
						}
						var_ab67f66c = 0;
					}
				}
			}
			if(var_ab67f66c)
			{
				level.var_f2434cd3[var_ec74b091][var_79678dca].var_7e3ecbc3[var_2d11f419].var_6df9264 function_50ccee8d();
				level.var_f2434cd3[var_ec74b091][var_79678dca].var_7e3ecbc3[var_2d11f419].var_5ab41da9 = undefined;
			}
			level.var_f2434cd3[var_ec74b091][var_79678dca].var_7e3ecbc3[var_2d11f419].var_6df9264 function_e48f905e(var_f10f645);
			level.var_f2434cd3[var_ec74b091][var_79678dca].var_7e3ecbc3[var_2d11f419].var_6df9264 function_ee4604c8(var_ec74b091, function_b24300d0(var_f10f645));
			if(!var_ab67f66c)
			{
				level.var_f2434cd3[var_ec74b091][var_79678dca].var_7e3ecbc3[var_2d11f419].var_6df9264 function_48f26766();
				level.var_f2434cd3[var_ec74b091][var_79678dca].var_7e3ecbc3[var_2d11f419].var_5ab41da9 = 1;
			}
		}
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_a6816cde
	Checksum: 0xBE811777
	Offset: 0x2EB0
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	self endon("hash_643a7daf");
	function_a3a1013c(var_ec74b091);
	wait(1);
}

/*
	Name: function_89e3b03e
	Namespace: namespace_a6816cde
	Checksum: 0x63768277
	Offset: 0x2EF0
	Size: 0x4B
	Parameters: 3
	Flags: None
*/
function function_89e3b03e(var_473db734, var_f7142c9e, var_a049e3e8)
{
	self notify("hash_2126f815");
	self function_e438eaad(var_473db734, var_f7142c9e, var_a049e3e8);
}

/*
	Name: function_f1f14ab8
	Namespace: namespace_a6816cde
	Checksum: 0xDB1167DE
	Offset: 0x2F48
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function function_f1f14ab8(var_473db734, var_e419ae70, var_f7142c9e, var_a049e3e8)
{
	self endon("hash_d5da096");
	self notify("hash_2126f815");
	self endon("hash_2126f815");
	wait(var_e419ae70);
	self function_e438eaad(var_473db734, var_f7142c9e, var_a049e3e8);
}

/*
	Name: function_336d330b
	Namespace: namespace_a6816cde
	Checksum: 0xEE83CF3D
	Offset: 0x2FC0
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_336d330b(var_ec74b091, var_a467390a)
{
	level thread function_9b46e51(var_ec74b091, var_a467390a);
	level thread function_a0fa5ef7(var_ec74b091, var_a467390a, 1);
	level thread function_8b8118fc(var_ec74b091, var_a467390a);
}

/*
	Name: function_5f0902f7
	Namespace: namespace_a6816cde
	Checksum: 0xFD7AFA6D
	Offset: 0x3040
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_5f0902f7(var_ec74b091, var_a467390a)
{
	level thread function_9b46e51(var_ec74b091, var_a467390a);
	level thread function_a0fa5ef7(var_ec74b091, var_a467390a, 0);
	level thread function_8b8118fc(var_ec74b091, var_a467390a);
}

/*
	Name: function_74e49d6f
	Namespace: namespace_a6816cde
	Checksum: 0xC2F999AD
	Offset: 0x30C0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_74e49d6f(var_ec74b091, var_a467390a)
{
	level.var_51cfdd5[var_ec74b091] function_50ccee8d();
}

/*
	Name: function_9b46e51
	Namespace: namespace_a6816cde
	Checksum: 0xAD261AF5
	Offset: 0x3100
	Size: 0x2D7
	Parameters: 2
	Flags: None
*/
function function_9b46e51(var_ec74b091, var_a467390a)
{
	level endon("hash_643a7daf");
	level endon(var_a467390a + "_closed");
	var_c5958671 = function_dd1bd95(var_ec74b091);
	var_a7f04717 = function_938048a7(function_557eb98c(var_c5958671, "safehouse.inClientBunk"));
	var_e4e20590 = function_1bbcb5e2(var_ec74b091, var_a7f04717, "tag_align_cam_coll_sm");
	var_b2f25812 = function_1bbcb5e2(var_ec74b091, var_a7f04717, "tag_align_cam_coll_med");
	var_89ca8dbc = function_1bbcb5e2(var_ec74b091, var_a7f04717, "tag_align_cam_coll_lg");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_e4e20590) && isdefined(var_b2f25812) && isdefined(var_89ca8dbc));
	#/
	function_c7c08dd4(var_ec74b091, "c_saf_ram_bunk_vign_sm", 0, "cam1", "s_collectible", var_e4e20590.var_722885f3, var_e4e20590.var_6ab6f4fd);
	while(1)
	{
		level waittill("collectibles_slot_change" + var_ec74b091, var_2d11f419);
		if(var_2d11f419 === 0)
		{
			function_c7c08dd4(var_ec74b091, "c_saf_ram_bunk_vign_sm", 500, "cam1", "s_collectible", var_e4e20590.var_722885f3, var_e4e20590.var_6ab6f4fd);
		}
		else if(var_2d11f419 === 1)
		{
			function_c7c08dd4(var_ec74b091, "c_saf_ram_bunk_vign_med", 500, "cam1", "m_collectible", var_b2f25812.var_722885f3, var_b2f25812.var_6ab6f4fd);
		}
		else if(var_2d11f419 === 2)
		{
			function_c7c08dd4(var_ec74b091, "c_saf_ram_bunk_vign_lg", 500, "cam1", "l_collectible", var_89ca8dbc.var_722885f3, var_89ca8dbc.var_6ab6f4fd);
		}
	}
}

/*
	Name: function_6b23f34f
	Namespace: namespace_a6816cde
	Checksum: 0x8E7239B2
	Offset: 0x33E0
	Size: 0xD3
	Parameters: 4
	Flags: None
*/
function function_6b23f34f(var_ec74b091, var_1e2ce4de, var_34a4eb6d, var_dd852326)
{
	level.var_f2434cd3[var_ec74b091][var_1e2ce4de].var_7e3ecbc3[var_34a4eb6d].var_6df9264 function_e48f905e(var_dd852326);
	level.var_f2434cd3[var_ec74b091][var_1e2ce4de].var_7e3ecbc3[var_34a4eb6d].var_6df9264 function_48f26766();
	level.var_f2434cd3[var_ec74b091][var_1e2ce4de].var_7e3ecbc3[var_34a4eb6d].var_d3fca4df = 1;
}

/*
	Name: function_884c7480
	Namespace: namespace_a6816cde
	Checksum: 0x3E3EF663
	Offset: 0x34C0
	Size: 0xE3
	Parameters: 3
	Flags: None
*/
function function_884c7480(var_ec74b091, var_1e2ce4de, var_34a4eb6d)
{
	level.var_f2434cd3[var_ec74b091][var_1e2ce4de].var_7e3ecbc3[var_34a4eb6d].var_6df9264 function_50ccee8d();
	level.var_f2434cd3[var_ec74b091][var_1e2ce4de].var_7e3ecbc3[var_34a4eb6d].var_6df9264 function_e48f905e(level.var_19c61a80[function_48fdc243(var_34a4eb6d)]);
	level.var_f2434cd3[var_ec74b091][var_1e2ce4de].var_7e3ecbc3[var_34a4eb6d].var_d3fca4df = 1;
}

/*
	Name: function_b24300d0
	Namespace: namespace_a6816cde
	Checksum: 0x7E6497F2
	Offset: 0x35B0
	Size: 0xD
	Parameters: 1
	Flags: None
*/
function function_b24300d0(var_748c4478)
{
	return 0;
}

/*
	Name: function_a0fa5ef7
	Namespace: namespace_a6816cde
	Checksum: 0x88436D0A
	Offset: 0x35C8
	Size: 0xB79
	Parameters: 3
	Flags: None
*/
function function_a0fa5ef7(var_ec74b091, var_a467390a, var_64bc1c63)
{
	level endon("hash_643a7daf");
	level endon(var_a467390a + "_closed");
	level thread function_d9b15719(var_ec74b091, var_a467390a);
	var_c5958671 = function_dd1bd95(var_ec74b091);
	var_a7f04717 = function_938048a7(function_557eb98c(var_c5958671, "safehouse.inClientBunk"));
	if(var_64bc1c63)
	{
		for(var_f607056a = 0; var_f607056a <= 8; var_f607056a++)
		{
		}
	}
	var_47da189b = function_a8fb77bd();
	level.var_51cfdd5[var_ec74b091] function_48f26766();
	level.var_51cfdd5[var_ec74b091] function_cea50a94(1, 1);
	while(1)
	{
		level waittill("collectible_update" + var_ec74b091, var_279e4e97, var_34a4eb6d, var_6df9264);
		if(var_279e4e97 === "inspecting")
		{
			if(isdefined(level.var_51cfdd5[var_ec74b091]))
			{
				level.var_51cfdd5[var_ec74b091] function_e48f905e(var_34a4eb6d);
				level.var_51cfdd5[var_ec74b091] function_ee4604c8(var_ec74b091, function_b24300d0(var_34a4eb6d));
				level.var_51cfdd5[var_ec74b091].var_f3e9c22 = function_e3dee4f2(var_34a4eb6d) * -1;
				level.var_51cfdd5[var_ec74b091].var_6ab6f4fd = level.var_51cfdd5[var_ec74b091].var_69992842 - VectorScale((0, 1, 0), 5);
			}
			break;
		}
		if(var_279e4e97 === "inspect_focus_change")
		{
			if(isdefined(level.var_f2434cd3[var_ec74b091][var_a7f04717].var_9e6f06a8))
			{
				function_835a2f7b(var_ec74b091, level.var_f2434cd3[var_ec74b091][var_a7f04717].var_9e6f06a8);
			}
			level.var_f2434cd3[var_ec74b091][var_a7f04717].var_9e6f06a8 = function_da6acfd2(var_ec74b091, "light/fx_glow_collectible_white", level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_34a4eb6d].var_56ad232d, "tag_center_rotate_anim");
			break;
		}
		if(var_64bc1c63)
		{
			if(var_279e4e97 === "clear_preview_collectible")
			{
				if(isdefined(var_47da189b.var_5ab41da9) && var_47da189b.var_5ab41da9)
				{
					function_6b23f34f(var_ec74b091, var_a7f04717, var_47da189b.var_2d11f419, var_47da189b.var_6df9264);
				}
				else
				{
					function_884c7480(var_ec74b091, var_a7f04717, var_47da189b.var_2d11f419);
				}
				for(var_a34073af = 0; var_a34073af < level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3.size; var_a34073af++)
				{
					var_2de04519 = level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_a34073af];
					if(isdefined(var_2de04519.var_c62c5c23) && var_2de04519.var_c62c5c23 && (isdefined(var_2de04519.var_5ab41da9) && var_2de04519.var_5ab41da9))
					{
						var_2de04519.var_6df9264 function_48f26766();
					}
					var_2de04519.var_c62c5c23 = undefined;
				}
			}
			else if(var_279e4e97 === "equip")
			{
				function_6b23f34f(var_ec74b091, var_a7f04717, var_34a4eb6d, var_6df9264);
				level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_34a4eb6d].var_5ab41da9 = 1;
				level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_34a4eb6d].var_6df9264 function_ee4604c8(var_ec74b091, function_b24300d0(var_6df9264));
				var_47da189b.var_2d11f419 = undefined;
				var_47da189b.var_5ab41da9 = undefined;
				var_47da189b.var_6df9264 = undefined;
				for(var_a34073af = 0; var_a34073af < level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3.size; var_a34073af++)
				{
					var_2de04519 = level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_a34073af];
					var_2de04519.var_c62c5c23 = undefined;
				}
			}
			else if(var_279e4e97 === "unequip")
			{
				function_884c7480(var_ec74b091, var_a7f04717, var_34a4eb6d);
				level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_34a4eb6d].var_5ab41da9 = 0;
				var_47da189b.var_2d11f419 = undefined;
				var_47da189b.var_5ab41da9 = undefined;
				var_47da189b.var_6df9264 = undefined;
				for(var_a34073af = 0; var_a34073af < level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3.size; var_a34073af++)
				{
					var_2de04519 = level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_a34073af];
					var_2de04519.var_c62c5c23 = undefined;
					if(isdefined(var_2de04519.var_5ab41da9) && var_2de04519.var_5ab41da9)
					{
						var_2de04519.var_6df9264 function_48f26766();
					}
				}
			}
			else if(var_279e4e97 === "focus_change")
			{
				if(isdefined(var_47da189b.var_2d11f419))
				{
					if(isdefined(var_47da189b.var_5ab41da9) && var_47da189b.var_5ab41da9)
					{
						function_6b23f34f(var_ec74b091, var_a7f04717, var_47da189b.var_2d11f419, var_47da189b.var_6df9264);
						level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_47da189b.var_2d11f419].var_6df9264 function_ee4604c8(var_ec74b091, function_b24300d0(var_47da189b.var_6df9264));
					}
					else
					{
						function_884c7480(var_ec74b091, var_a7f04717, var_47da189b.var_2d11f419);
					}
				}
				var_47da189b.var_2d11f419 = var_34a4eb6d;
				var_47da189b.var_6df9264 = level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_47da189b.var_2d11f419].var_6df9264.var_6df9264;
				var_47da189b.var_5ab41da9 = level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_47da189b.var_2d11f419].var_5ab41da9;
				for(var_a34073af = 0; var_a34073af < level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3.size; var_a34073af++)
				{
					var_2de04519 = level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_a34073af];
					if(var_2de04519.var_6df9264.var_6df9264 == var_6df9264 && var_a34073af != var_47da189b.var_2d11f419)
					{
						var_2de04519.var_c62c5c23 = 1;
						continue;
					}
					var_2de04519.var_c62c5c23 = undefined;
				}
				function_6b23f34f(var_ec74b091, var_a7f04717, var_47da189b.var_2d11f419, var_6df9264);
				level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_47da189b.var_2d11f419].var_6df9264 function_ee4604c8(var_ec74b091, function_b24300d0(var_6df9264));
			}
			for(var_a34073af = 0; var_a34073af < level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3.size; var_a34073af++)
			{
				var_2de04519 = level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_a34073af];
				if(isdefined(var_2de04519.var_c62c5c23) && var_2de04519.var_c62c5c23)
				{
					var_2de04519.var_6df9264 function_50ccee8d();
				}
			}
		}
	}
}

/*
	Name: function_a2e25254
	Namespace: namespace_a6816cde
	Checksum: 0x345DE1B1
	Offset: 0x4150
	Size: 0x15F
	Parameters: 3
	Flags: None
*/
function function_a2e25254(var_ec74b091, var_a467390a, var_43dfbd55)
{
	level endon("hash_643a7daf");
	level endon(var_a467390a + "_closed");
	var_96736a6 = namespace_630abc90::function_bf1f2002(var_ec74b091, "browse_collectible_position", 1);
	if(isdefined(var_96736a6))
	{
		var_96736a6 function_e438eaad("c_saf_collectibles_staging_small_cam", 0, "cam_1");
	}
	while(1)
	{
		level waittill("collectible_size" + var_ec74b091, var_982bfcf2);
		if(var_982bfcf2 === 0)
		{
			var_96736a6 function_e438eaad("c_saf_collectibles_staging_small_cam", 0, "cam_1");
		}
		else if(var_982bfcf2 === 1)
		{
			var_96736a6 function_e438eaad("c_saf_collectibles_staging_cam", 0, "cam_1");
		}
		else if(var_982bfcf2 === 2)
		{
			var_96736a6 function_e438eaad("c_saf_collectibles_staging_large_cam", 0, "cam_1");
		}
	}
}

/*
	Name: function_d9350b98
	Namespace: namespace_a6816cde
	Checksum: 0xC6F20C1C
	Offset: 0x42B8
	Size: 0x15F
	Parameters: 3
	Flags: None
*/
function function_d9350b98(var_ec74b091, var_a467390a, var_43dfbd55)
{
	level endon("hash_643a7daf");
	level endon(var_a467390a + "_closed");
	var_96736a6 = namespace_630abc90::function_bf1f2002(var_ec74b091, "browse_collectible_position", 1);
	if(isdefined(var_96736a6))
	{
		var_96736a6 function_e438eaad("c_saf_collectibles_staging_small_cam", 0, "cam_1");
	}
	while(1)
	{
		level waittill("collectibles_slot_change" + var_ec74b091, var_982bfcf2);
		if(var_982bfcf2 === 0)
		{
			var_96736a6 function_e438eaad("c_saf_collectibles_staging_small_cam", 0, "cam_1");
		}
		else if(var_982bfcf2 === 1)
		{
			var_96736a6 function_e438eaad("c_saf_collectibles_staging_cam", 0, "cam_1");
		}
		else if(var_982bfcf2 === 2)
		{
			var_96736a6 function_e438eaad("c_saf_collectibles_staging_large_cam", 0, "cam_1");
		}
	}
}

/*
	Name: function_8b8118fc
	Namespace: namespace_a6816cde
	Checksum: 0xE48BEFCA
	Offset: 0x4420
	Size: 0x32F
	Parameters: 2
	Flags: None
*/
function function_8b8118fc(var_ec74b091, var_a467390a)
{
	level endon("hash_643a7daf");
	level endon(var_a467390a + "_closed");
	if(isdefined(level.var_51cfdd5[var_ec74b091]))
	{
		while(1)
		{
			var_a2d47c3d = function_f1ab8db6(var_ec74b091);
			var_f99cbb4d = 0;
			var_6d5323e = 0;
			if(isdefined(var_a2d47c3d["rightStick"]))
			{
				var_f99cbb4d = var_a2d47c3d["rightStick"][0];
				var_6d5323e = var_a2d47c3d["rightStick"][1];
			}
			else
			{
				var_f99cbb4d = var_a2d47c3d["look"][0];
				var_6d5323e = var_a2d47c3d["look"][1];
			}
			if(function_8810ff0a())
			{
				var_a2d47c3d = function_b3c67946(var_ec74b091);
				var_f99cbb4d = var_f99cbb4d - var_a2d47c3d["yaw"];
				var_6d5323e = var_6d5323e - var_a2d47c3d["pitch"];
			}
			var_f0e36723 = (0, var_f99cbb4d * 3, 0);
			level.var_51cfdd5[var_ec74b091].var_6ab6f4fd = (function_64dbcbf2(level.var_51cfdd5[var_ec74b091].var_6ab6f4fd[0] + var_f0e36723[0]), function_64dbcbf2(level.var_51cfdd5[var_ec74b091].var_6ab6f4fd[1] + var_f0e36723[1]), function_64dbcbf2(level.var_51cfdd5[var_ec74b091].var_6ab6f4fd[2] + var_f0e36723[2]));
			var_27c4935 = level.var_51cfdd5[var_ec74b091].var_f3e9c22;
			var_daa79c5b = level.var_51cfdd5[var_ec74b091].var_f5cc4b9c;
			var_f99cbb4d = level.var_51cfdd5[var_ec74b091].var_6ab6f4fd[1];
			var_6d5323e = level.var_51cfdd5[var_ec74b091].var_6ab6f4fd[2];
			var_e1664ef3 = function_56bedeb6(var_27c4935, (0, 0, 1), var_f99cbb4d);
			level.var_51cfdd5[var_ec74b091].var_722885f3 = var_e1664ef3 + var_daa79c5b;
			wait(0.01);
		}
	}
}

/*
	Name: function_d9b15719
	Namespace: namespace_a6816cde
	Checksum: 0x228D032
	Offset: 0x4758
	Size: 0x137
	Parameters: 2
	Flags: None
*/
function function_d9b15719(var_ec74b091, var_a467390a)
{
	level endon("hash_643a7daf");
	level waittill(var_a467390a + "_closed");
	var_c5958671 = function_dd1bd95(var_ec74b091);
	var_a7f04717 = function_938048a7(function_557eb98c(var_c5958671, "safehouse.inClientBunk"));
	for(var_f607056a = 0; var_f607056a <= 8; var_f607056a++)
	{
		if(isdefined(level.var_f2434cd3[var_ec74b091][var_a7f04717].var_9e6f06a8))
		{
			function_835a2f7b(var_ec74b091, level.var_f2434cd3[var_ec74b091][var_a7f04717].var_9e6f06a8);
		}
		level.var_f2434cd3[var_ec74b091][var_a7f04717].var_7e3ecbc3[var_f607056a].var_9e6f06a8 = undefined;
	}
}

/*
	Name: function_e6a435de
	Namespace: namespace_a6816cde
	Checksum: 0x687B6FA
	Offset: 0x4898
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_e6a435de(var_ec74b091, var_bb7f7c57)
{
	namespace_bdde9225::function_ef318b3(var_ec74b091, "heads", 1);
	namespace_15737250::function_ea9faed5(var_ec74b091, level.var_3f51e01[var_ec74b091], 0);
}

/*
	Name: function_ec0911d0
	Namespace: namespace_a6816cde
	Checksum: 0xDD88C343
	Offset: 0x4900
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_ec0911d0(var_ec74b091, var_bb7f7c57)
{
	namespace_15737250::function_ea9faed5(var_ec74b091, level.var_3f51e01[var_ec74b091], 1);
	namespace_bdde9225::function_ef318b3(var_ec74b091, "heads", 0);
}

/*
	Name: function_9d60eac
	Namespace: namespace_a6816cde
	Checksum: 0x9B216EF8
	Offset: 0x4968
	Size: 0x1E7
	Parameters: 2
	Flags: None
*/
function function_9d60eac(var_ec74b091, var_a467390a)
{
	level endon("hash_643a7daf");
	level endon(var_a467390a + "_closed");
	var_6d010658 = namespace_14b42b8a::function_7922262b("personalizeHero_camera", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_6d010658));
	#/
	function_c7c08dd4(var_ec74b091, "ui_cam_character_customization", 0, "cam_preview");
	while(1)
	{
		level waittill("camera_change" + var_ec74b091, var_9285489a);
		if(var_9285489a === "exploring")
		{
			function_c7c08dd4(var_ec74b091, "ui_cam_character_customization", 300, "cam_preview", "", var_6d010658.var_722885f3, var_6d010658.var_6ab6f4fd);
		}
		else if(var_9285489a === "inspecting_helmet")
		{
			function_c7c08dd4(var_ec74b091, "ui_cam_character_customization", 300, "cam_helmet", "", var_6d010658.var_722885f3, var_6d010658.var_6ab6f4fd);
		}
		else if(var_9285489a === "inspecting_body")
		{
			function_c7c08dd4(var_ec74b091, "ui_cam_character_customization", 300, "cam_select", "", var_6d010658.var_722885f3, var_6d010658.var_6ab6f4fd);
		}
	}
}

/*
	Name: function_fa299ef0
	Namespace: namespace_a6816cde
	Checksum: 0x59094CC9
	Offset: 0x4B58
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_fa299ef0(var_ec74b091, var_bb7f7c57)
{
	namespace_bdde9225::function_ef318b3(var_ec74b091, "character", 1);
	function_a4882736(var_ec74b091, var_bb7f7c57);
}

/*
	Name: function_9236c726
	Namespace: namespace_a6816cde
	Checksum: 0xC8D29EBF
	Offset: 0x4BB0
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_9236c726(var_ec74b091, var_bb7f7c57)
{
	function_99fac7ab(var_ec74b091, var_bb7f7c57);
	namespace_bdde9225::function_ef318b3(var_ec74b091, "character", 0);
}

/*
	Name: function_a4882736
	Namespace: namespace_a6816cde
	Checksum: 0x1372240B
	Offset: 0x4C08
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_a4882736(var_ec74b091, var_bb7f7c57)
{
	level thread namespace_15737250::function_731a29a3(var_ec74b091, var_bb7f7c57.var_a56ff24, "end_character_rotating" + var_ec74b091);
}

/*
	Name: function_99fac7ab
	Namespace: namespace_a6816cde
	Checksum: 0x7956F949
	Offset: 0x4C60
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function function_99fac7ab(var_ec74b091, var_bb7f7c57)
{
	level notify("end_character_rotating" + var_ec74b091);
}

/*
	Name: function_9d476185
	Namespace: namespace_a6816cde
	Checksum: 0x70A0ED44
	Offset: 0x4C90
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_9d476185(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_69b16290(var_9193c732 - 1, 640, -1);
	}
	else
	{
		self function_9de0788f();
	}
}

/*
	Name: function_66ec7bf3
	Namespace: namespace_a6816cde
	Checksum: 0x2942B910
	Offset: 0x4D20
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_66ec7bf3(var_ec74b091, var_bb7f7c57)
{
	function_40ae388a(var_ec74b091);
}

/*
	Name: function_59622cb6
	Namespace: namespace_a6816cde
	Checksum: 0xD0B16520
	Offset: 0x4D58
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_59622cb6(var_ec74b091, var_bb7f7c57)
{
	function_40ae388a(var_ec74b091);
}

/*
	Name: function_30eb9463
	Namespace: namespace_a6816cde
	Checksum: 0xF7EAB759
	Offset: 0x4D90
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_30eb9463(var_ec74b091, var_bb7f7c57)
{
	function_40ae388a(var_ec74b091);
}

/*
	Name: function_2b8cf6a0
	Namespace: namespace_a6816cde
	Checksum: 0xF1E950C8
	Offset: 0x4DC8
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_2b8cf6a0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 > 0)
	{
		namespace_4fe3eef1::function_36bbd2b2("cp_safehouse_exit");
	}
	else
	{
		namespace_4fe3eef1::function_36bbd2b2("default");
	}
}

/*
	Name: function_ee4604c8
	Namespace: namespace_a6816cde
	Checksum: 0xAD2E766
	Offset: 0x4E58
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_ee4604c8(var_ec74b091, var_c1e63f13)
{
	if(!isdefined(var_c1e63f13))
	{
		var_c1e63f13 = 1;
	}
	self thread function_6b0a5a71(var_ec74b091, var_c1e63f13);
}

/*
	Name: function_6b0a5a71
	Namespace: namespace_a6816cde
	Checksum: 0x1DDF5D9F
	Offset: 0x4EA8
	Size: 0x1EB
	Parameters: 2
	Flags: None
*/
function function_6b0a5a71(var_ec74b091, var_c1e63f13)
{
	self endon("hash_d5da096");
	self notify("hash_ee4604c8");
	self endon("hash_ee4604c8");
	while(var_c1e63f13)
	{
		self namespace_1c38f9cf::function_1e56fc11("armor_on", 1);
		self namespace_1c38f9cf::function_2c582173(var_ec74b091);
		var_aa5d763a = "scriptVector3";
		var_fc81e73c = 0.4;
		var_754d7044 = 1;
		var_e754df7f = 0.45;
		var_595c4eba = 0;
		var_6c5c3132 = "scriptVector4";
		var_93429fd9 = 0.6;
		self function_e7f6dc4e(var_ec74b091, 0, var_aa5d763a, var_fc81e73c, var_754d7044, var_e754df7f, var_595c4eba);
		self function_e7f6dc4e(var_ec74b091, 0, var_6c5c3132, var_93429fd9, 0, 0, 0);
		self function_cae0c618(10);
		wait(0.5);
		self namespace_1c38f9cf::function_1e56fc11("armor_on", 0);
		self namespace_1c38f9cf::function_2c582173(var_ec74b091);
		wait(10);
	}
	self namespace_1c38f9cf::function_1e56fc11("armor_on", 0);
	self namespace_1c38f9cf::function_2c582173(var_ec74b091);
}

