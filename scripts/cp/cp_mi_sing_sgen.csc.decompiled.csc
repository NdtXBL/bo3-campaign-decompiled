#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen_fx;
#using scripts\cp\cp_mi_sing_sgen_patch_c;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\shared\ai\systems\fx_character;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\exploder_shared;
#using scripts\shared\filter_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_4bf13193;

/*
	Name: function_d290ebfa
	Namespace: namespace_4bf13193
	Checksum: 0xA93C6299
	Offset: 0x1398
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 6);
	function_2ea898a8();
	function_fe72942e();
	namespace_219c76cc::function_d290ebfa();
	namespace_172c963::function_d290ebfa();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_82b91a51::function_b499f765();
	function_673254cc();
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	namespace_dc4413fe::function_7403e82b();
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_gp_crane_pallet_01_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_silo_twins_revenge_flood_bldg_01_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_silo_twins_revenge_flood_bldg_02_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_silo_twins_revenge_flood_bldg_03_bundle");
}

/*
	Name: function_aebcf025
	Namespace: namespace_4bf13193
	Checksum: 0x46CF472B
	Offset: 0x1508
	Size: 0x107
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	namespace_3d5de9eb::function_2faed441(self);
	namespace_1c38f9cf::function_c20cc247("sitrep_keyline_red", 25, "keyline_active_red", "keyfill_active_red", 2, "mc/hud_outline_model_z_red", 0);
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	if(var_5dc5e20a function_c7f3ce11() != self function_c7f3ce11())
	{
		return;
	}
	if(isdefined(level.var_d9cf9150))
	{
		self thread function_e76aa170(var_ec74b091, undefined, level.var_d9cf9150);
	}
	self.var_65ff120a = 0;
	self.var_580d2ee1 = 0;
	self.var_97b77690 = 0;
}

/*
	Name: function_2ea898a8
	Namespace: namespace_4bf13193
	Checksum: 0x120AA837
	Offset: 0x1618
	Size: 0xD73
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "w_fxa_truck_flip", 1, 1, "int", &function_39252d24, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "w_robot_window_break", 1, 2, "int", &function_2f6bc99e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "testing_lab_wires", 1, 1, "int", &function_f8965920, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "silo_swim_bridge_fall", 1, 1, "int", &function_6a3af99, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "w_underwater_state", 1, 1, "int", &function_3fd63c17, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "w_flood_combat_windows_b", 1, 1, "int", &function_43174f13, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "w_flood_combat_windows_c", 1, 1, "int", &function_1d14d4aa, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "elevator_light_probe", 1, 1, "int", &function_5ac1b440, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "flood_defend_hallway_flood_siege", 1, 1, "int", &function_34e88b9c, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "tower_chunks1", 1, 1, "int", &function_2b219c66, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "tower_chunks2", 1, 1, "int", &function_51f21fd, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "tower_chunks3", 1, 1, "int", &function_df1ca794, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "observation_deck_destroy", 1, 1, "counter", &function_492309fc, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fallen_soldiers_client_fxanims", 1, 1, "int", &function_f81dc3f2, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "w_flyover_buoys", 1, 1, "int", &function_95af50c, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "w_twin_igc_fxanim", 1, 2, "int", &function_ff1a4bbc, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "set_exposure_bank", 1, 1, "int", &function_1e832062, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "silo_debris", 1, 3, "int", &function_6688e3e0, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "ceiling_collapse", 1, 3, "int", &function_66617c6c, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "debris_catwalk", 1, 1, "counter", &function_19ebac1e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "debris_wall", 1, 1, "counter", &function_e0e27617, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "debris_fall", 1, 1, "counter", &function_b309e328, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "debris_bridge", 1, 1, "counter", &function_73dfc2c8, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "structural_weakness", 1, 1, "int", &function_d69a238f, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "sm_elevator_shader", 1, 2, "int", &function_a30fa29c, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "sm_elevator_door_state", 1, 2, "int", &function_31d56bb1, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "weakpoint", 1, 1, "int", &function_12618c89, 0, 0);
	namespace_1c38f9cf::function_c20cc247("weakpoint_keyline", 100, "weakpoint_keyline_show_z", "weakpoint_keyline_hide_z", 2, "mc/hud_outline_model_z_orange");
	namespace_71e9cb84::function_50f16166("scriptmover", "sm_depth_charge_fx", 1, 2, "int", &function_21197c95, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "dni_eye", 1, 1, "int", &function_1561b96d, 1, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "turn_fake_robot_eye", 1, 1, "int", &function_be719f1, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "play_cia_robot_rogue_control", 1, 1, "int", &function_4fdcffa3, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "cooling_tower_damage", 1, 1, "int", &function_ef39e6b6, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "pallas_monitors_state", 1, function_eaa48678(3), "int", &function_e76aa170, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "tp_water_sheeting", 1, 1, "int", &function_6be6da89, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "oed_interference", 1, 1, "int", &function_ba68067e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "sndSiloBG", 1, 1, "int", &function_594a4308, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "dust_motes", 1, 1, "int", &function_c9e9a72c, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "water_motes", 1, 1, "int", &function_5cefaf77, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "water_teleport", 1, 1, "int", &function_a93a4b6a, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "extra_cam_ent", 1, 2, "int", &function_fe61b5f4, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "sm_depth_charge_fx", 1, 2, "int", &function_21197c95, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "quad_tank_tac_mode", 1, 1, "int", &function_8b62fa9d, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "robot_bubbles", 1, 1, "int", &function_59c47b1, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "sndStepSet", 1, 1, "int", &function_fb081b8c, 1, 0);
	namespace_71e9cb84::function_50f16166("actor", "disable_tmode", 1, 1, "int", &function_47257e43, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "sndLabWalla", 1, 1, "int", &namespace_172c963::function_698dfbe4, 0, 0);
	namespace_e216c11c::function_42617574("earthquake_blur", 1, 1, 0.1, 0.25, 4);
}

/*
	Name: function_fe72942e
	Namespace: namespace_4bf13193
	Checksum: 0x1B349B70
	Offset: 0x2398
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_fe72942e()
{
	if(function_33d0d4d7())
	{
		var_2bb20e65 = namespace_14b42b8a::function_7faf4c39("no_splitscreen", "targetname");
		foreach(var_eff8c94a in var_2bb20e65)
		{
			var_eff8c94a namespace_14b42b8a::function_dc8c8404();
		}
	}
}

/*
	Name: function_673254cc
	Namespace: namespace_4bf13193
	Checksum: 0x407BB393
	Offset: 0x2468
	Size: 0x4E3
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("intro", &function_c1c92a60, "Intro");
	namespace_1d795d47::function_69554b3e("exterior", &function_f591a5d3, "Exterior");
	namespace_1d795d47::function_69554b3e("enter_sgen", &function_41d43f98, "Enter SGEN");
	namespace_1d795d47::function_69554b3e("enter_lobby", &function_64b835d1, "QTank Fight", &function_8903df94);
	namespace_1d795d47::function_69554b3e("discover_data", &function_b5bc2e86, "Discover Data");
	namespace_1d795d47::function_69554b3e("aquarium_shimmy", &function_d70d27cf, "Aquarium Shimmy");
	namespace_1d795d47::function_69554b3e("gen_lab", &function_b8453b40, "Genetics Lab");
	namespace_1d795d47::function_69554b3e("post_gen_lab", &function_c9a9671f, "Post Gen Lab");
	namespace_1d795d47::function_69554b3e("chem_lab", &function_69d3873d, "Chemical Lab");
	namespace_1d795d47::function_69554b3e("post_chem_lab", &function_7f2d460, "Post Chem Lab");
	namespace_1d795d47::function_69554b3e("silo_floor", &function_7ed6c252, "Silo Floor Battle", &function_e3f81a25);
	namespace_1d795d47::function_69554b3e("under_silo", &function_82a600e0, "Under Silo");
	namespace_1d795d47::function_69554b3e("fallen_soldiers", &function_6a18d1d4, "Fallen Soldiers");
	namespace_1d795d47::function_69554b3e("testing_lab_igc", &function_6a18d1d4, "Human Testing Lab");
	namespace_1d795d47::function_69554b3e("dark_battle", &function_70fafd70, "Dark Battle");
	namespace_1d795d47::function_69554b3e("charging_station", &function_6a18d1d4, "Charging Station");
	namespace_1d795d47::function_69554b3e("descent", &function_6a18d1d4, "Descent");
	namespace_1d795d47::function_69554b3e("pallas_start", &function_1eba9086, "pallas start");
	namespace_1d795d47::function_69554b3e("pallas_end", &function_6a18d1d4, "Pallas Death");
	namespace_1d795d47::function_69554b3e("twin_revenge", &function_8a68f6ae, "Twin Revenge", &function_9dd018de);
	namespace_1d795d47::function_69554b3e("flood_combat", &function_12a6900b, "Flood Combat");
	namespace_1d795d47::function_69554b3e("flood_defend", &function_12a6900b, "Flood Defend");
	namespace_1d795d47::function_69554b3e("underwater_battle", &function_12a6900b, "Underwater Battle");
	namespace_1d795d47::function_69554b3e("underwater_rail", &function_12a6900b, "Underwater Rail");
	namespace_1d795d47::function_69554b3e("silo_swim", &function_12a6900b, "Silo Swim");
}

/*
	Name: function_6a18d1d4
	Namespace: namespace_4bf13193
	Checksum: 0x72F1078E
	Offset: 0x2958
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_6a18d1d4(var_b04bc952, var_74cd64bc)
{
}

/*
	Name: function_70fafd70
	Namespace: namespace_4bf13193
	Checksum: 0x76B641EA
	Offset: 0x2978
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_70fafd70(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_80983c42::function_80983c42("sgen_pods_on");
	}
}

/*
	Name: function_12a6900b
	Namespace: namespace_4bf13193
	Checksum: 0xDD44438E
	Offset: 0x29B8
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_12a6900b(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc || var_b04bc952 == "flood_combat")
	{
		level thread function_4b788e97();
	}
}

/*
	Name: function_1eba9086
	Namespace: namespace_4bf13193
	Checksum: 0x84F7FCB6
	Offset: 0x2A08
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_1eba9086(var_b04bc952, var_74cd64bc)
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_observation_deck_break_01_bundle");
}

/*
	Name: function_c1c92a60
	Namespace: namespace_4bf13193
	Checksum: 0x34E8C15A
	Offset: 0x2A48
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_c1c92a60(var_b04bc952, var_74cd64bc)
{
	level thread function_6dddaec0();
}

/*
	Name: function_f591a5d3
	Namespace: namespace_4bf13193
	Checksum: 0x44F38788
	Offset: 0x2A80
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_f591a5d3(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_6dddaec0();
	}
}

/*
	Name: function_41d43f98
	Namespace: namespace_4bf13193
	Checksum: 0x2484B2C1
	Offset: 0x2AC0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_41d43f98(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_6dddaec0();
	}
}

/*
	Name: function_64b835d1
	Namespace: namespace_4bf13193
	Checksum: 0x4C5BE7FD
	Offset: 0x2B00
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_64b835d1(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_6dddaec0();
	}
}

/*
	Name: function_8903df94
	Namespace: namespace_4bf13193
	Checksum: 0x7027DF8B
	Offset: 0x2B40
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8903df94(var_b04bc952, var_74cd64bc)
{
}

/*
	Name: function_b5bc2e86
	Namespace: namespace_4bf13193
	Checksum: 0xA164809C
	Offset: 0x2B60
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_b5bc2e86(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_6dddaec0();
	}
}

/*
	Name: function_d70d27cf
	Namespace: namespace_4bf13193
	Checksum: 0xDF655D44
	Offset: 0x2BA0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_d70d27cf(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_6dddaec0();
	}
}

/*
	Name: function_b8453b40
	Namespace: namespace_4bf13193
	Checksum: 0x13F0532A
	Offset: 0x2BE0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_b8453b40(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_941e3519();
	}
}

/*
	Name: function_c9a9671f
	Namespace: namespace_4bf13193
	Checksum: 0x27B6AD21
	Offset: 0x2C20
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_c9a9671f(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_941e3519();
	}
}

/*
	Name: function_69d3873d
	Namespace: namespace_4bf13193
	Checksum: 0x12DF905B
	Offset: 0x2C60
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_69d3873d(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_32a8709a();
	}
}

/*
	Name: function_7f2d460
	Namespace: namespace_4bf13193
	Checksum: 0x32556AAB
	Offset: 0x2CA0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_7f2d460(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_32a8709a();
	}
}

/*
	Name: function_7ed6c252
	Namespace: namespace_4bf13193
	Checksum: 0xEA77F8BD
	Offset: 0x2CE0
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_7ed6c252(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_32a8709a();
	}
}

/*
	Name: function_e3f81a25
	Namespace: namespace_4bf13193
	Checksum: 0x878BAB9D
	Offset: 0x2D20
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_e3f81a25(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		wait(1);
	}
	if(namespace_cc27597::function_444aea32("p7_fxanim_gp_raven_circle_ccw_01_bundle"))
	{
		level namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_raven_circle_ccw_01_bundle", "scriptbundlename", 1);
	}
	wait(0.1);
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_gp_raven_circle_ccw_01_bundle");
}

/*
	Name: function_82a600e0
	Namespace: namespace_4bf13193
	Checksum: 0xE4EC689F
	Offset: 0x2DB8
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_82a600e0(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_32a8709a();
	}
}

/*
	Name: function_8a68f6ae
	Namespace: namespace_4bf13193
	Checksum: 0xA0C87153
	Offset: 0x2DF8
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_8a68f6ae(var_b04bc952, var_74cd64bc)
{
}

/*
	Name: function_9dd018de
	Namespace: namespace_4bf13193
	Checksum: 0xE62058F0
	Offset: 0x2E18
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_9dd018de(var_b04bc952, var_74cd64bc)
{
}

/*
	Name: function_6dddaec0
	Namespace: namespace_4bf13193
	Checksum: 0xB9F28222
	Offset: 0x2E38
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6dddaec0()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_rappel_rope_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_crane_pallet_01_bundle");
}

/*
	Name: function_941e3519
	Namespace: namespace_4bf13193
	Checksum: 0x82E09B6D
	Offset: 0x2E88
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_941e3519()
{
	level namespace_cc27597::function_43718187("p7_fxanim_gp_crane_pallet_01_bundle");
}

/*
	Name: function_32a8709a
	Namespace: namespace_4bf13193
	Checksum: 0x6425F6E
	Offset: 0x2EB8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_32a8709a()
{
	level namespace_cc27597::function_43718187("p7_fxanim_gp_crane_pallet_01_bundle");
}

/*
	Name: function_1561b96d
	Namespace: namespace_4bf13193
	Checksum: 0x3DFA3670
	Offset: 0x2EE8
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_1561b96d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", 0, 1, 0, 0);
	}
	else
	{
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", 0, 0, 0, 0);
	}
}

/*
	Name: function_8b62fa9d
	Namespace: namespace_4bf13193
	Checksum: 0x46CB469E
	Offset: 0x2F90
	Size: 0xAB
	Parameters: 7
	Flags: None
*/
function function_8b62fa9d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_cae0c618(9);
		self function_cae0c618(10);
	}
	else
	{
		self function_752fada3(9);
		self function_752fada3(10);
	}
}

/*
	Name: function_47257e43
	Namespace: namespace_4bf13193
	Checksum: 0x3F891635
	Offset: 0x3048
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_47257e43(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_cae0c618(0);
	}
	else
	{
		self function_752fada3(0);
	}
}

/*
	Name: function_2370f00f
	Namespace: namespace_4bf13193
	Checksum: 0xF3AC569E
	Offset: 0x30C8
	Size: 0x85
	Parameters: 4
	Flags: None
*/
function function_2370f00f(var_ec74b091, var_9193c732, var_b8da2278, var_5e953b6)
{
	switch(var_9193c732)
	{
		case 2:
		{
			level thread namespace_cc27597::function_c35e6aab(var_b8da2278, var_5e953b6);
			break;
		}
		case 1:
		{
			level thread namespace_cc27597::function_43718187(var_b8da2278, var_5e953b6);
			break;
		}
	}
}

/*
	Name: function_2f6bc99e
	Namespace: namespace_4bf13193
	Checksum: 0x3E6C6F5B
	Offset: 0x3158
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_2f6bc99e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_2370f00f(var_ec74b091, var_9193c732, "robot_window_break_start", "targetname");
}

/*
	Name: function_73dfc2c8
	Namespace: namespace_4bf13193
	Checksum: 0xE400AC43
	Offset: 0x31C8
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_73dfc2c8(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_2370f00f(var_ec74b091, var_9193c732, "p7_fxanim_cp_sgen_silo_debris_bridge_bundle");
}

/*
	Name: function_e0e27617
	Namespace: namespace_4bf13193
	Checksum: 0x689BC3BD
	Offset: 0x3230
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_e0e27617(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_2370f00f(var_ec74b091, var_9193c732, "p7_fxanim_cp_sgen_silo_debris_wall_bundle");
}

/*
	Name: function_4b788e97
	Namespace: namespace_4bf13193
	Checksum: 0x490F630B
	Offset: 0x3298
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4b788e97()
{
	level thread namespace_cc27597::function_43718187("uw_battle_fxanims");
}

/*
	Name: function_b309e328
	Namespace: namespace_4bf13193
	Checksum: 0xCA0F2B0C
	Offset: 0x32C8
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_b309e328(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_silo_debris_fall_bundle");
	}
}

/*
	Name: function_19ebac1e
	Namespace: namespace_4bf13193
	Checksum: 0x272D0C4E
	Offset: 0x3338
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_19ebac1e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_silo_debris_catwalk_bundle");
	}
}

/*
	Name: function_39252d24
	Namespace: namespace_4bf13193
	Checksum: 0x53644441
	Offset: 0x33A8
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_39252d24(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("truck_flip", "targetname");
	}
}

/*
	Name: function_d69a238f
	Namespace: namespace_4bf13193
	Checksum: 0x4CB4E56E
	Offset: 0x3420
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_d69a238f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self namespace_1c38f9cf::function_a75081b3(var_ec74b091, var_9193c732);
}

/*
	Name: function_6a3af99
	Namespace: namespace_4bf13193
	Checksum: 0xBCEF9925
	Offset: 0x3488
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_6a3af99(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("bridge_collapse", "targetname");
	}
}

/*
	Name: function_fe61b5f4
	Namespace: namespace_4bf13193
	Checksum: 0x965E6955
	Offset: 0x3500
	Size: 0x27B
	Parameters: 7
	Flags: None
*/
function function_fe61b5f4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_27c4935 = function_bc7ce905(self.var_6ab6f4fd) * 10;
		var_b71ed4a2 = self.var_722885f3 + var_27c4935;
		self.var_628a497e = function_9b7fda5e(var_ec74b091, var_b71ed4a2, "script_origin");
		self.var_628a497e.var_6ab6f4fd = self.var_6ab6f4fd + VectorScale((0, 0, -1), 90);
		self.var_628a497e function_37f7858a(self, "tag_origin");
		self.var_628a497e function_69b16290(0);
		function_921a1574(0, "uin_pip_open", (0, 0, 0));
	}
	else if(var_9193c732 == 2)
	{
		var_27c4935 = function_bc7ce905(self.var_6ab6f4fd) * 10;
		var_b71ed4a2 = self.var_722885f3 + var_27c4935;
		self.var_628a497e = function_9b7fda5e(var_ec74b091, var_b71ed4a2, "script_origin");
		self.var_628a497e.var_6ab6f4fd = self.var_6ab6f4fd;
		self.var_628a497e function_37f7858a(self, "tag_origin");
		self.var_628a497e function_69b16290(0);
		function_921a1574(0, "uin_pip_open", (0, 0, 0));
	}
	else if(isdefined(self.var_628a497e))
	{
		function_921a1574(0, "uin_pip_close", (0, 0, 0));
		self.var_628a497e function_9de0788f();
		self.var_628a497e function_dc8c8404();
	}
}

/*
	Name: function_ba68067e
	Namespace: namespace_4bf13193
	Checksum: 0xB61F2E23
	Offset: 0x3788
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_ba68067e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self.var_97b77690 = 0.004;
		self.var_45d466a1 = 0;
	}
	else
	{
		self.var_97b77690 = -1 * 0.005333334;
		self.var_45d466a1 = 1;
	}
	self thread function_248868ae(var_ec74b091);
}

/*
	Name: function_248868ae
	Namespace: namespace_4bf13193
	Checksum: 0xD9C6E257
	Offset: 0x3830
	Size: 0x247
	Parameters: 1
	Flags: None
*/
function function_248868ae(var_ec74b091)
{
	self endon("hash_128f8789");
	self notify("hash_5a719f24");
	self endon("hash_5a719f24");
	if(!isdefined(self.var_65ff120a))
	{
		self.var_65ff120a = 0;
	}
	if(!isdefined(self.var_580d2ee1))
	{
		self.var_580d2ee1 = 0;
	}
	if(!isdefined(self.var_97b77690))
	{
		self.var_97b77690 = 0;
	}
	if(!isdefined(self.var_8b31f902))
	{
		self.var_8b31f902 = 0;
	}
	while(isdefined(self))
	{
		self.var_65ff120a = self.var_65ff120a + self.var_97b77690;
		if(self.var_65ff120a < 0)
		{
			self.var_65ff120a = 0;
		}
		else if(self.var_65ff120a > 1)
		{
			self.var_65ff120a = 1;
		}
		if(!self.var_8b31f902 || self.var_65ff120a == 0 && !self.var_45d466a1)
		{
			if(self.var_580d2ee1)
			{
				self.var_580d2ee1 = 0;
				namespace_3d5de9eb::function_671d8b9(self, 0);
			}
		}
		else if(self.var_65ff120a > 0)
		{
			if(!self.var_580d2ee1)
			{
				self.var_580d2ee1 = 1;
				namespace_3d5de9eb::function_496935c(self, 0);
			}
			if(self.var_580d2ee1)
			{
				namespace_3d5de9eb::function_6f3b715c(self, 0, self.var_65ff120a);
				var_e8ea412b = 150 + 1 - self.var_65ff120a * 10350;
				var_864ac2d9 = 50 + 1 - self.var_65ff120a * 2950;
				function_9e447dae(var_ec74b091, var_e8ea412b, var_864ac2d9);
			}
		}
		wait(0.016);
	}
}

/*
	Name: function_f8965920
	Namespace: namespace_4bf13193
	Checksum: 0x2AE92E2A
	Offset: 0x3A80
	Size: 0xD3
	Parameters: 7
	Flags: None
*/
function function_f8965920(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 && (var_8d0de8f7 || var_ade4d29d != var_9193c732))
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_sml_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_med_thick_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_xlong_thick_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_xsml_thick_bundle");
	}
}

/*
	Name: function_ef39e6b6
	Namespace: namespace_4bf13193
	Checksum: 0xBB49C0C1
	Offset: 0x3B60
	Size: 0xC7
	Parameters: 7
	Flags: None
*/
function function_ef39e6b6(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_128f8789");
	self endon("hash_d5da096");
	self endon("hash_ecd8f5eb");
	if(!var_9193c732)
	{
		self notify("hash_ecd8f5eb");
		break;
	}
	while(1)
	{
		self waittill("hash_f9348fda", var_e63dbf6d);
		function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["core_impact"], var_e63dbf6d);
	}
}

/*
	Name: function_66617c6c
	Namespace: namespace_4bf13193
	Checksum: 0x2F558F96
	Offset: 0x3C30
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_66617c6c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level namespace_cc27597::function_43718187("hallway_ceiling_collapse_0" + var_9193c732, "targetname");
	}
}

/*
	Name: function_e76aa170
	Namespace: namespace_4bf13193
	Checksum: 0x8F45ADBA
	Offset: 0x3CA8
	Size: 0x149
	Parameters: 7
	Flags: None
*/
function function_e76aa170(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level notify("hash_2fdfc947");
	level.var_d9cf9150 = var_9193c732;
	switch(var_9193c732)
	{
		case 0:
		{
			self thread function_6f15ec64(var_ec74b091);
			break;
		}
		case 1:
		{
			self thread function_cacf88e6(var_ec74b091);
			break;
		}
		case 2:
		{
			self thread function_b84a3557(var_ec74b091);
			break;
		}
		case 3:
		{
			if(isdefined(self.var_146171cd))
			{
				for(var_c957f6b6 = 0; var_c957f6b6 < self.var_146171cd.size; var_c957f6b6++)
				{
					self.var_146171cd[var_c957f6b6] function_dc8c8404();
				}
			}
			level.var_d9cf9150 = undefined;
			break;
		}
	}
}

/*
	Name: function_cacf88e6
	Namespace: namespace_4bf13193
	Checksum: 0x17F32832
	Offset: 0x3E00
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_cacf88e6(var_ec74b091)
{
	self endon("hash_128f8789");
	level endon("hash_2fdfc947");
	var_ba5d91ee = function_99201f25(var_ec74b091, "pallas_xcam_model", "targetname");
	while(isdefined(self))
	{
		var_ba5d91ee = namespace_84970cc4::function_4219028b(self.var_722885f3, var_ba5d91ee);
		var_3e671a1 = 0;
		foreach(var_969f33c9 in var_ba5d91ee)
		{
			if(var_3e671a1 < 12)
			{
				if(isdefined(var_969f33c9.var_d51654a4))
				{
					continue;
				}
				var_969f33c9 function_48f26766();
				var_3e671a1++;
				continue;
			}
			var_969f33c9 function_50ccee8d();
			var_969f33c9.var_d51654a4 = undefined;
		}
		wait(0.75);
	}
}

/*
	Name: function_5799c6c0
	Namespace: namespace_4bf13193
	Checksum: 0xFE231596
	Offset: 0x3F88
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_5799c6c0()
{
	level endon("hash_2fdfc947");
	self.var_d51654a4 = "off";
	self function_50ccee8d();
	wait(function_72a94f05(2, 5));
	self.var_d51654a4 = undefined;
}

/*
	Name: function_39b5ac35
	Namespace: namespace_4bf13193
	Checksum: 0x140C6426
	Offset: 0x3FF0
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function function_39b5ac35()
{
	level endon("hash_2fdfc947");
	var_78962fff = function_72a94f05(2, 5);
	var_7b4a2690 = var_78962fff / 0.05;
	self.var_d51654a4 = "blink";
	for(var_c957f6b6 = 0; var_c957f6b6 < var_7b4a2690; var_c957f6b6++)
	{
		if(function_26299103(100) < 50)
		{
			self function_48f26766();
		}
		else
		{
			self function_50ccee8d();
		}
		wait(0.05);
	}
	self function_50ccee8d();
	self.var_d51654a4 = undefined;
}

/*
	Name: function_b84a3557
	Namespace: namespace_4bf13193
	Checksum: 0x54D14F5A
	Offset: 0x4108
	Size: 0x12F
	Parameters: 1
	Flags: None
*/
function function_b84a3557(var_ec74b091)
{
	self endon("hash_128f8789");
	level endon("hash_2fdfc947");
	var_ba5d91ee = function_99201f25(var_ec74b091, "pallas_xcam_model", "targetname");
	while(isdefined(self))
	{
		var_ba5d91ee = namespace_84970cc4::function_8332f7f6(var_ba5d91ee);
		foreach(var_bd94a149 in var_ba5d91ee)
		{
			if(var_c957f6b6 % 3 == 0)
			{
				var_bd94a149 function_48f26766();
				continue;
			}
			var_bd94a149 function_50ccee8d();
		}
		wait(0.1);
	}
}

/*
	Name: function_6f15ec64
	Namespace: namespace_4bf13193
	Checksum: 0x32EE39FC
	Offset: 0x4240
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_6f15ec64(var_ec74b091)
{
	level endon("hash_2fdfc947");
	var_ba5d91ee = function_99201f25(var_ec74b091, "pallas_xcam_model", "targetname");
	foreach(var_bd94a149 in var_ba5d91ee)
	{
		var_bd94a149 function_48f26766();
	}
}

/*
	Name: function_6be6da89
	Namespace: namespace_4bf13193
	Checksum: 0xDCE9F7CF
	Offset: 0x4318
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_6be6da89(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_6c7d1149(var_ec74b091, 0);
	}
	else
	{
		function_d92493fb(var_ec74b091, 1);
	}
}

/*
	Name: function_3fd63c17
	Namespace: namespace_4bf13193
	Checksum: 0x7107C2AF
	Offset: 0x43A0
	Size: 0xF3
	Parameters: 7
	Flags: None
*/
function function_3fd63c17(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_6c1294b8("phys_buoyancy", 1);
		function_6c1294b8("phys_ragdoll_buoyancy", 1);
		function_6c1294b8("player_useWaterFriction", 0);
	}
	else
	{
		function_6c1294b8("phys_buoyancy", 0);
		function_6c1294b8("phys_ragdoll_buoyancy", 0);
		function_6c1294b8("player_useWaterFriction", 1);
	}
}

/*
	Name: function_43174f13
	Namespace: namespace_4bf13193
	Checksum: 0xE8CE9BEF
	Offset: 0x44A0
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_43174f13(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("window_lt_01_start", "targetname");
	}
}

/*
	Name: function_1d14d4aa
	Namespace: namespace_4bf13193
	Checksum: 0x119E3209
	Offset: 0x4518
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_1d14d4aa(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("window_rt_02_start", "targetname");
	}
}

/*
	Name: function_5ac1b440
	Namespace: namespace_4bf13193
	Checksum: 0x959D3AF5
	Offset: 0x4590
	Size: 0x1E1
	Parameters: 7
	Flags: None
*/
function function_5ac1b440(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_99450f8a = function_99201f25(var_ec74b091, "pallas_elevator_probe", "targetname");
	var_8df90b18 = function_99201f25(var_ec74b091, "pallas_elevator_light", "targetname");
	var_be31aa9a = function_6ada35ba(var_ec74b091, "boss_fight_lift", "targetname");
	foreach(var_7c14d90b in var_99450f8a)
	{
		var_7c14d90b function_37f7858a(var_be31aa9a);
	}
	foreach(var_122a7711 in var_8df90b18)
	{
		var_122a7711 function_37f7858a(var_be31aa9a);
	}
}

/*
	Name: function_34e88b9c
	Namespace: namespace_4bf13193
	Checksum: 0xD415C06F
	Offset: 0x4780
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_34e88b9c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_water_hallway_flood_bundle");
	}
}

/*
	Name: function_a30fa29c
	Namespace: namespace_4bf13193
	Checksum: 0x9506E98D
	Offset: 0x47F0
	Size: 0x1FD
	Parameters: 7
	Flags: None
*/
function function_a30fa29c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(self.var_10ff82f3))
	{
		self.var_10ff82f3 = function_6ada35ba(var_ec74b091, "boss_fight_lift", "targetname");
		self.var_10ff82f3 function_37f7858a(self);
	}
	switch(var_9193c732)
	{
		case 3:
		{
			self.var_10ff82f3 function_48f26766();
			break;
		}
		case 2:
		{
			self.var_10ff82f3 function_50ccee8d();
			break;
		}
		case 1:
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < 2;  = 0)
			{
				self.var_10ff82f3 function_e7f6dc4e(0, 0, "scriptVector0", var_c957f6b6 / 2, 0, 0, 0);
				wait(0.01);
			}
			break;
		}
		case 0:
		{
			for(var_c957f6b6 = 3; var_c957f6b6 > 0;  = 3)
			{
				self.var_10ff82f3 function_e7f6dc4e(0, 0, "scriptVector0", var_c957f6b6 / 3, 0, 0, 0);
				wait(0.01);
			}
			self.var_10ff82f3 function_50ccee8d();
			break;
		}
	}
}

/*
	Name: function_31d56bb1
	Namespace: namespace_4bf13193
	Checksum: 0x124365DE
	Offset: 0x49F8
	Size: 0xED
	Parameters: 7
	Flags: None
*/
function function_31d56bb1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	switch(var_9193c732)
	{
		case 2:
		{
			self.var_fd5b0874 = function_6ada35ba(var_ec74b091, "pallas_lift_back", "targetname");
			self.var_fd5b0874 function_37f7858a(self);
			break;
		}
		case 1:
		{
			self.var_fd5b0874 = function_6ada35ba(var_ec74b091, "pallas_lift_front", "targetname");
			self.var_fd5b0874 function_37f7858a(self);
			break;
		}
	}
}

/*
	Name: function_492309fc
	Namespace: namespace_4bf13193
	Checksum: 0x16FF1D78
	Offset: 0x4AF0
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_492309fc(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_1585c6d))
	{
		level.var_1585c6d = 0;
	}
	level.var_1585c6d++;
	if(level.var_1585c6d > 3)
	{
		return;
	}
	level namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_observation_deck_break_0" + level.var_1585c6d + "_bundle");
}

/*
	Name: function_2b219c66
	Namespace: namespace_4bf13193
	Checksum: 0x75E4FD54
	Offset: 0x4B98
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_2b219c66(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level namespace_cc27597::function_43718187("server_tower_chunks_01", "targetname");
}

/*
	Name: function_51f21fd
	Namespace: namespace_4bf13193
	Checksum: 0xADE1995C
	Offset: 0x4C08
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_51f21fd(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level namespace_cc27597::function_43718187("server_tower_chunks_02", "targetname");
}

/*
	Name: function_df1ca794
	Namespace: namespace_4bf13193
	Checksum: 0xB34F1AAB
	Offset: 0x4C78
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_df1ca794(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level namespace_cc27597::function_43718187("server_tower_chunks_03", "targetname");
}

/*
	Name: function_be719f1
	Namespace: namespace_4bf13193
	Checksum: 0xC218116D
	Offset: 0x4CE8
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_be719f1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	namespace_a10f70dd::function_99d2801(var_ec74b091, self, "c_54i_robot_grunt_fx_def_4_rogue");
}

/*
	Name: function_4fdcffa3
	Namespace: namespace_4bf13193
	Checksum: 0x770476C2
	Offset: 0x4D50
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_4fdcffa3(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		namespace_a10f70dd::function_99d2801(var_ec74b091, self, "c_cia_robot_grunt_fx_def_1_rogue");
	}
	else
	{
		namespace_a10f70dd::function_fd87a5b(var_ec74b091, self, "c_cia_robot_grunt_fx_def_1_rogue");
	}
}

/*
	Name: function_594a4308
	Namespace: namespace_4bf13193
	Checksum: 0x57FFFB47
	Offset: 0x4DE8
	Size: 0x85
	Parameters: 7
	Flags: None
*/
function function_594a4308(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self thread function_131c4b50("amb_descent_bg_top", "amb_descent_bg_mid", "amb_descent_bg_bot");
	}
	else
	{
		level notify("hash_bf6420ee");
	}
}

/*
	Name: function_131c4b50
	Namespace: namespace_4bf13193
	Checksum: 0x8A1A26BD
	Offset: 0x4E78
	Size: 0x6F5
	Parameters: 3
	Flags: None
*/
function function_131c4b50(var_9b32d4cc, var_d3a4407, var_e737c99e)
{
	level endon("hash_bf6420ee");
	var_7649add = (42, 226, 128);
	var_d0697212 = (203, 865, -2671);
	var_5ef6d693 = function_69c2f683(var_7649add[2] - var_d0697212[2]);
	if(!isdefined(var_9b32d4cc) && !isdefined(var_d3a4407))
	{
		return;
	}
	var_9f07e606 = var_7649add[2];
	var_79056b9d = var_d0697212[2];
	if(isdefined(var_e737c99e))
	{
		var_9f07e606 = var_7649add;
		var_79056b9d = (var_7649add[0] + var_d0697212[0] / 2, var_7649add[1] + var_d0697212[1] / 2, var_7649add[2] + var_d0697212[2] / 2);
		var_5302f134 = var_d0697212;
	}
	var_47f2e24a = function_9b7fda5e(0, var_7649add, "script_origin");
	var_47f2e24a function_c2931a36(var_9b32d4cc, 0.5);
	var_47f2e24a function_98e1d594(var_9b32d4cc, 1, 1);
	var_21f067e1 = function_9b7fda5e(0, var_7649add, "script_origin");
	var_21f067e1 function_c2931a36(var_d3a4407, 0.5);
	var_21f067e1 function_98e1d594(var_d3a4407, 0, 1);
	var_21f067e1 function_37f7858a(var_47f2e24a);
	if(isdefined(var_e737c99e))
	{
		var_fbeded78 = function_9b7fda5e(0, var_7649add, "script_origin");
		var_fbeded78 function_c2931a36(var_e737c99e, 0.5);
		var_fbeded78 function_98e1d594(var_e737c99e, 0, 1);
		var_fbeded78 function_37f7858a(var_47f2e24a);
	}
	level thread function_c87bd675(var_47f2e24a, var_21f067e1, var_fbeded78);
	wait(0.5);
	if(!isdefined(self))
	{
		return;
	}
	while(isdefined(self))
	{
		var_ab1780c5 = self.var_722885f3[2];
		var_5adf0e21 = function_69c2f683(var_9f07e606[2] - var_ab1780c5);
		var_80e1888a = function_69c2f683(var_79056b9d[2] - var_ab1780c5);
		if(isdefined(var_e737c99e))
		{
			var_a6e402f3 = function_69c2f683(var_5302f134[2] - var_ab1780c5);
		}
		var_9d968d78 = namespace_4fe3eef1::function_1bc38161(0, function_69c2f683(var_9f07e606[2] - var_79056b9d[2]), 0, 1, var_5adf0e21);
		var_9d968d78 = function_69c2f683(1 - var_9d968d78);
		var_47f2e24a function_98e1d594(var_9b32d4cc, var_9d968d78, 1);
		var_f9dfcb3 = namespace_4fe3eef1::function_1bc38161(0, function_69c2f683(var_9f07e606[2] - var_79056b9d[2]), 0, 1, var_80e1888a);
		var_f9dfcb3 = function_69c2f683(1 - var_f9dfcb3);
		var_21f067e1 function_98e1d594(var_d3a4407, var_f9dfcb3, 1);
		if(isdefined(var_e737c99e))
		{
			var_e99b824a = namespace_4fe3eef1::function_1bc38161(0, function_69c2f683(var_79056b9d[2] - var_5302f134[2]), 0, 1, var_a6e402f3);
			var_e99b824a = function_69c2f683(1 - var_e99b824a);
			var_fbeded78 function_98e1d594(var_e737c99e, var_e99b824a, 1);
		}
		var_17aaef5 = var_5adf0e21 / var_5ef6d693;
		var_afec9063 = var_d0697212[0] - var_7649add[0] * var_17aaef5 + var_7649add[0];
		var_3de52128 = var_d0697212[1] - var_7649add[1] * var_17aaef5 + var_7649add[1];
		var_63e79b91 = var_ab1780c5;
		if(var_ab1780c5 >= var_7649add[2])
		{
			var_afec9063 = var_7649add[0];
			var_3de52128 = var_7649add[1];
			var_63e79b91 = var_7649add[2];
		}
		if(var_ab1780c5 <= var_d0697212[2])
		{
			var_afec9063 = var_d0697212[0];
			var_3de52128 = var_d0697212[1];
			var_63e79b91 = var_d0697212[2];
		}
		var_47f2e24a function_a96a2721((var_afec9063, var_3de52128, var_63e79b91), 0.2);
		wait(0.2);
	}
	level notify("hash_bf6420ee");
}

/*
	Name: function_c87bd675
	Namespace: namespace_4bf13193
	Checksum: 0x24065C5
	Offset: 0x5578
	Size: 0x6B
	Parameters: 3
	Flags: None
*/
function function_c87bd675(var_11e3ff05, var_37e6796e, var_5de8f3d7)
{
	level waittill("hash_bf6420ee");
	var_11e3ff05 function_dc8c8404();
	var_37e6796e function_dc8c8404();
	var_5de8f3d7 function_dc8c8404();
}

/*
	Name: function_c9e9a72c
	Namespace: namespace_4bf13193
	Checksum: 0x2C739866
	Offset: 0x55F0
	Size: 0xC3
	Parameters: 7
	Flags: None
*/
function function_c9e9a72c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	wait(0.1);
	if(var_9193c732)
	{
		if(isdefined(self))
		{
			self.var_ac46de76 = function_138d4551(var_ec74b091, level.var_c1aa5253["dust_motes"], "tag_camera");
		}
	}
	else if(isdefined(self) && isdefined(self.var_ac46de76))
	{
		function_28573e36(var_ec74b091, self.var_ac46de76, 1);
	}
}

/*
	Name: function_5cefaf77
	Namespace: namespace_4bf13193
	Checksum: 0xBE996B2E
	Offset: 0x56C0
	Size: 0xC3
	Parameters: 7
	Flags: None
*/
function function_5cefaf77(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	wait(0.1);
	if(var_9193c732)
	{
		if(isdefined(self))
		{
			self.var_8e8c7340 = function_138d4551(var_ec74b091, level.var_c1aa5253["water_motes"], "tag_camera");
		}
	}
	else if(isdefined(self) && isdefined(self.var_ac46de76))
	{
		function_28573e36(var_ec74b091, self.var_8e8c7340, 1);
	}
}

/*
	Name: function_a93a4b6a
	Namespace: namespace_4bf13193
	Checksum: 0x963804A0
	Offset: 0x5790
	Size: 0x133
	Parameters: 7
	Flags: None
*/
function function_a93a4b6a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_6f7efbc2))
	{
		level.var_6f7efbc2 = [];
	}
	if(var_9193c732)
	{
		if(isdefined(self))
		{
			if(isdefined(level.var_6f7efbc2[var_ec74b091]))
			{
				return;
			}
			level.var_6f7efbc2[var_ec74b091] = function_138d4551(var_ec74b091, level.var_c1aa5253["water_teleport"], "tag_camera");
			namespace_80983c42::function_80983c42("flood_lighting");
		}
	}
	else if(isdefined(self) && isdefined(level.var_6f7efbc2[var_ec74b091]))
	{
		function_28573e36(var_ec74b091, level.var_6f7efbc2[var_ec74b091], 0);
		namespace_80983c42::function_67e7a937("flood_lighting");
	}
}

/*
	Name: function_6688e3e0
	Namespace: namespace_4bf13193
	Checksum: 0x904EF5F9
	Offset: 0x58D0
	Size: 0xC5
	Parameters: 7
	Flags: None
*/
function function_6688e3e0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 < 6)
	{
		level namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_underwater_silo_debris_0" + var_9193c732 + "_bundle");
		break;
	}
	for(var_4f8217af = 0; var_4f8217af < 6; var_4f8217af++)
	{
		level namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_sgen_underwater_silo_debris_0" + var_4f8217af + "_bundle");
	}
}

/*
	Name: function_71f88fc
	Namespace: namespace_4bf13193
	Checksum: 0x40A47D58
	Offset: 0x59A0
	Size: 0x2ED
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_7d372786)
{
	switch(var_7d372786)
	{
		case 2:
		{
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh010");
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh020");
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh030");
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh040");
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh050");
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh060");
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh070");
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh080");
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh090");
			function_71c4474e("cin_sgen_14_humanlab_3rd_sh020");
			break;
		}
		case 3:
		{
			function_71c4474e("p7_fxanim_cp_sgen_pallas_ai_tower_collapse_bundle");
			function_71c4474e("cin_sgen_19_ghost_3rd_sh010");
			function_71c4474e("cin_sgen_19_ghost_3rd_sh020");
			function_71c4474e("cin_sgen_19_ghost_3rd_sh030");
			function_71c4474e("cin_sgen_19_ghost_3rd_sh040");
			function_71c4474e("cin_sgen_19_ghost_3rd_sh050");
			function_71c4474e("cin_sgen_19_ghost_3rd_sh060");
			function_71c4474e("cin_sgen_19_ghost_3rd_sh070");
			function_71c4474e("cin_sgen_19_ghost_3rd_sh080");
			function_71c4474e("cin_sgen_19_ghost_3rd_sh090");
			break;
		}
		case 4:
		{
			function_2e76fa01("c_54i_assault_body");
			function_2e76fa01("c_54i_assault_lieutenant_head");
			break;
		}
		case 5:
		{
			function_71c4474e("cin_sgen_26_01_lobbyexit_1st_escape_grab");
			function_71c4474e("cin_sgen_26_01_lobbyexit_1st_escape_outro");
			function_71c4474e("p7_fxanim_cp_sgen_end_building_collapse_debris_bundle");
			break;
		}
		case 6:
		{
			function_2e76fa01("c_hro_hendricks_sing_body");
			function_2e76fa01("c_hro_hendricks_sing_head");
			break;
		}
	}
}

/*
	Name: function_12618c89
	Namespace: namespace_4bf13193
	Checksum: 0xDF95F507
	Offset: 0x5C98
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
	Name: function_f81dc3f2
	Namespace: namespace_4bf13193
	Checksum: 0xE2443E2A
	Offset: 0x5D70
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_f81dc3f2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 && (var_8d0de8f7 || var_ade4d29d != var_9193c732))
	{
		level namespace_cc27597::function_43718187("p7_fxanim_gp_wire_sparking_xsml_bundle");
	}
}

/*
	Name: function_95af50c
	Namespace: namespace_4bf13193
	Checksum: 0x9BF2C1E9
	Offset: 0x5DF0
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_95af50c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level namespace_cc27597::function_43718187("p7_fxanim_gp_floating_buoy_02_upright_bundle");
	}
	else
	{
		level namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_floating_buoy_02_upright_bundle");
	}
}

/*
	Name: function_fb081b8c
	Namespace: namespace_4bf13193
	Checksum: 0xF9BDFF7A
	Offset: 0x5E80
	Size: 0x12B
	Parameters: 7
	Flags: None
*/
function function_fb081b8c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_12dfaaa8 = "fly_water_wade";
		var_cbf69fd2 = function_99201f25(0, "audio_step_trigger", "targetname");
		foreach(var_5948b3df in var_cbf69fd2)
		{
			if(var_5948b3df.var_b2ff4d87 == var_12dfaaa8)
			{
				self thread function_df9260b7(var_5948b3df, var_12dfaaa8);
				return;
			}
		}
	}
}

/*
	Name: function_df9260b7
	Namespace: namespace_4bf13193
	Checksum: 0xA789B8DC
	Offset: 0x5FB8
	Size: 0xCF
	Parameters: 2
	Flags: None
*/
function function_df9260b7(var_4dbf3ae3, var_48b937ab)
{
	self endon("hash_128f8789");
	self endon("hash_d5da096");
	self.var_111461f1 = 0;
	while(1)
	{
		if(self function_32fa5072(var_4dbf3ae3))
		{
			if(!self.var_111461f1)
			{
				self.var_111461f1 = 1;
				self function_d7ea2748(var_48b937ab + "_npc");
			}
		}
		else if(self.var_111461f1)
		{
			self.var_111461f1 = 0;
			self function_f298d1cb();
		}
		wait(0.1);
	}
}

/*
	Name: function_59c47b1
	Namespace: namespace_4bf13193
	Checksum: 0xE4F72AC1
	Offset: 0x6090
	Size: 0xAB
	Parameters: 7
	Flags: None
*/
function function_59c47b1(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(self.var_d1efe793))
	{
		self.var_d1efe793 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["water_robot_bubbles"], self, "tag_aim");
		self waittill("hash_128f8789");
		function_d555a113(var_ec74b091, self.var_d1efe793);
	}
}

/*
	Name: function_21197c95
	Namespace: namespace_4bf13193
	Checksum: 0x5677F476
	Offset: 0x6148
	Size: 0x13D
	Parameters: 7
	Flags: None
*/
function function_21197c95(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(isdefined(self.var_46695cf4))
	{
		function_d555a113(var_ec74b091, self.var_46695cf4);
		self.var_46695cf4 = undefined;
	}
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(self))
	{
		return;
	}
	switch(var_9193c732)
	{
		case 1:
		{
			self.var_46695cf4 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["yellow_light"], self, "tag_origin");
			break;
		}
		case 2:
		{
			self.var_46695cf4 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["red_light"], self, "tag_origin");
			break;
		}
	}
}

/*
	Name: function_ff1a4bbc
	Namespace: namespace_4bf13193
	Checksum: 0x857F8E65
	Offset: 0x6290
	Size: 0x175
	Parameters: 7
	Flags: None
*/
function function_ff1a4bbc(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	switch(var_9193c732)
	{
		case 1:
		{
			var_5cee1345 = function_de7504ea("twin_revenge_bldg_static1");
			if(isdefined(var_5cee1345))
			{
				foreach(var_bc3c6c65 in var_5cee1345)
				{
					function_201670be(var_bc3c6c65);
				}
			}
			level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_silo_twins_revenge_flood_bldg_01_bundle");
			break;
		}
		case 2:
		{
			level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_silo_twins_revenge_flood_bldg_02_bundle");
			break;
		}
		case 3:
		{
			level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_silo_twins_revenge_flood_bldg_03_bundle");
			break;
		}
	}
}

/*
	Name: function_1e832062
	Namespace: namespace_4bf13193
	Checksum: 0xF39F43C2
	Offset: 0x6410
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_1e832062(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_2f183a94(var_ec74b091, 4);
	}
	else
	{
		function_2f183a94(var_ec74b091, 1);
	}
}

