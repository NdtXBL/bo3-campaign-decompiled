#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_clearing;
#using scripts\cp\cp_mi_zurich_coalescence_fx;
#using scripts\cp\cp_mi_zurich_coalescence_patch_c;
#using scripts\cp\cp_mi_zurich_coalescence_root_cairo;
#using scripts\cp\cp_mi_zurich_coalescence_root_cinematics;
#using scripts\cp\cp_mi_zurich_coalescence_root_singapore;
#using scripts\cp\cp_mi_zurich_coalescence_root_zurich;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_street;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\filter_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_f165e60d;

/*
	Name: function_d290ebfa
	Namespace: namespace_f165e60d
	Checksum: 0xBDF99673
	Offset: 0xB00
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 9);
	namespace_2ebd997a::function_d290ebfa();
	namespace_b301a1fd::function_d290ebfa();
	namespace_bbb4ee72::function_d290ebfa();
	namespace_3d19ef22::function_d290ebfa();
	namespace_6a04e6cd::function_d290ebfa();
	namespace_73dbe018::function_d290ebfa();
	namespace_29799936::function_d290ebfa();
	namespace_1beb9396::function_d290ebfa();
	function_673254cc();
	namespace_d7916d65::function_d290ebfa();
	level.var_67968f2d = function_4bd0142f("oob_timelimit_ms", 3000);
	namespace_82b91a51::function_44333182(0);
	namespace_3a5b90::function_7403e82b();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_f165e60d
	Checksum: 0x7B827073
	Offset: 0xC38
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "intro_ambience", 1, 1, "int", &function_ba3ef194, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "plaza_battle_amb_wasps", 1, 1, "int", &function_87d2cd22, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "hq_amb", 1, 1, "int", &function_5cd74265, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "decon_spray", 1, 1, "int", &function_5080f69e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "clearing_hide_lotus_tower", 1, 1, "int", &function_cb32c615, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "clearing_hide_ferris_wheel", 1, 1, "int", &function_9d9bb681, 0, 0);
}

/*
	Name: function_673254cc
	Namespace: namespace_f165e60d
	Checksum: 0x2E55871B
	Offset: 0xDF8
	Size: 0x3EB
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("zurich", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("intro_igc", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("intro_pacing", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("street", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("garage", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("rails", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("plaza_battle", &namespace_8e9083ff::function_5bcd68f2, undefined, &namespace_8e9083ff::function_3bf27f88);
	namespace_1d795d47::function_69554b3e("hq", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("sacrifice", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("clearing_start", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("clearing_waterfall", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("clearing_path_choice", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("clearing_hub", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("root_zurich_start", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("root_zurich_vortex", &namespace_8e9083ff::function_5bcd68f2, undefined, &namespace_8e9083ff::function_3bf27f88);
	namespace_1d795d47::function_69554b3e("clearing_hub_2", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("root_cairo_start", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("root_cairo_vortex", &namespace_8e9083ff::function_5bcd68f2, undefined, &namespace_8e9083ff::function_3bf27f88);
	namespace_1d795d47::function_69554b3e("clearing_hub_3", &namespace_8e9083ff::function_5bcd68f2, undefined, &namespace_8e9083ff::function_3bf27f88);
	namespace_1d795d47::function_69554b3e("root_singapore_start", &namespace_3d19ef22::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("root_singapore_vortex", &namespace_3d19ef22::function_95b88092, undefined, &namespace_3d19ef22::function_5c143f59);
	namespace_1d795d47::function_69554b3e("outro_movie", &namespace_8e9083ff::function_5bcd68f2);
	namespace_1d795d47::function_69554b3e("server_interior", &namespace_8e9083ff::function_5bcd68f2);
}

/*
	Name: function_71f88fc
	Namespace: namespace_f165e60d
	Checksum: 0x82924721
	Offset: 0x11F0
	Size: 0x329
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
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh010");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh020");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh030");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh040");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh050");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh060");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh070");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh080");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh090");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh100");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh110");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh120");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh130");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh140");
			function_71c4474e("cin_zur_06_sacrifice_3rd_sh150");
			break;
		}
		case 3:
		{
			function_71c4474e("cin_zur_09_02_standoff_1st_forest");
			function_2e76fa01("p7_foliage_tree_redwood_xlrg_base_02");
			function_2e76fa01("p7_foliage_tree_redwood_med_base_01");
			function_2e76fa01("p7_foliage_tree_redwood_lrg_mid");
			function_2e76fa01("p7_foliage_tree_redwood_lrg_top");
			break;
		}
		case 4:
		{
			break;
		}
		case 5:
		{
			function_71c4474e("cin_zur_09_01_standoff_vign_far_as_i_go");
			function_71c4474e("p7_fxanim_cp_zurich_tree_krueger_split_rt_bundle");
			function_71c4474e("cin_zur_11_01_paths_1st_still_chance");
			break;
		}
		case 6:
		{
			break;
		}
		case 7:
		{
			break;
		}
		case 8:
		{
			function_71c4474e("p7_fxanim_cp_zurich_roots_water01_bundle");
			function_71c4474e("p7_fxanim_cp_zurich_roots_water02_bundle");
			break;
		}
		case 9:
		{
			function_71c4474e("cin_zur_20_01_plaza_1st_fight_it");
			function_71c4474e("cin_zur_20_01_plaza_1st_fight_it_player_start");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_ba3ef194
	Namespace: namespace_f165e60d
	Checksum: 0x1F7C346E
	Offset: 0x1528
	Size: 0xED
	Parameters: 7
	Flags: None
*/
function function_ba3ef194(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(level.var_f5d22b9a) && level.var_f5d22b9a)
		{
			return;
		}
		level.var_f5d22b9a = 1;
		level thread function_12bc9caf(var_ec74b091);
		level thread function_be3b9c8(var_ec74b091);
	}
	else if(!(isdefined(level.var_f5d22b9a) && level.var_f5d22b9a))
	{
		return;
	}
	level.var_f5d22b9a = undefined;
	namespace_84970cc4::function_7e64f710(level.var_1fce2949);
	level.var_1fce2949 = undefined;
}

/*
	Name: function_12bc9caf
	Namespace: namespace_f165e60d
	Checksum: 0xD4B76223
	Offset: 0x1620
	Size: 0x14F
	Parameters: 1
	Flags: None
*/
function function_12bc9caf(var_ec74b091)
{
	var_68ce2879 = namespace_14b42b8a::function_7faf4c39("street_ambient_wasp_start");
	if(!isdefined(var_68ce2879) || var_68ce2879.size == 0)
	{
		return;
	}
	while(isdefined(level.var_f5d22b9a) && level.var_f5d22b9a)
	{
		var_10729d99 = namespace_84970cc4::function_47d18840(var_68ce2879);
		var_da8d98bc = function_bcde9a83(var_ec74b091, var_10729d99);
		for(var_bda430d5 = function_dc99997a(1, 4); var_bda430d5 > 1; var_bda430d5--)
		{
			wait(0.6);
			var_da8d98bc = function_bcde9a83(var_ec74b091, var_10729d99);
		}
		wait(function_72a94f05(1, 4));
	}
}

/*
	Name: function_bcde9a83
	Namespace: namespace_f165e60d
	Checksum: 0x9D7CD5DD
	Offset: 0x1778
	Size: 0x12F
	Parameters: 2
	Flags: None
*/
function function_bcde9a83(var_ec74b091, var_86b0a02)
{
	level.var_c1aa5253["wasp_lights"] = "light/fx_light_veh_wasp";
	var_da8d98bc = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "veh_t7_drone_attack_gun_zdf", var_86b0a02.var_722885f3, var_86b0a02.var_6ab6f4fd);
	var_da8d98bc.var_60c8714b = [];
	var_da8d98bc.var_fdcf75a9 = var_86b0a02;
	var_da8d98bc.var_a6b1619d = 750;
	var_75743dbd = function_da6acfd2(var_ec74b091, level.var_c1aa5253["wasp_lights"], var_da8d98bc, "tag_origin");
	var_da8d98bc.var_60c8714b = function_84970cc4(var_75743dbd);
	var_da8d98bc thread function_ffeb5fe9(var_ec74b091);
	return var_da8d98bc;
}

/*
	Name: function_ffeb5fe9
	Namespace: namespace_f165e60d
	Checksum: 0xCDF92E3D
	Offset: 0x18B0
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_ffeb5fe9(var_ec74b091)
{
	if(!isdefined(self.var_a6b1619d))
	{
		self.var_a6b1619d = 500;
	}
	var_10729d99 = self.var_fdcf75a9;
	var_74adb9b4 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
	while(isdefined(var_74adb9b4))
	{
		var_6389ab3d = function_7d15e2f8(var_10729d99.var_722885f3, var_74adb9b4.var_722885f3);
		var_78962fff = var_6389ab3d / self.var_a6b1619d;
		self function_a96a2721(var_74adb9b4.var_722885f3, var_78962fff);
		self function_c0b6566f(var_74adb9b4.var_6ab6f4fd, var_78962fff);
		self waittill("hash_a21db68a");
		var_10729d99 = var_74adb9b4;
		var_74adb9b4 = undefined;
		if(isdefined(var_10729d99.var_b07228b6))
		{
			var_74adb9b4 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
		}
	}
	if(isdefined(self.var_60c8714b))
	{
		self.var_60c8714b = namespace_84970cc4::function_5c13fae0(self.var_60c8714b);
		foreach(var_5753664b in self.var_60c8714b)
		{
			function_28573e36(var_ec74b091, var_5753664b, 0);
		}
		self.var_60c8714b = undefined;
	}
	self function_dc8c8404();
}

/*
	Name: function_87d2cd22
	Namespace: namespace_f165e60d
	Checksum: 0x4AAF213C
	Offset: 0x1B08
	Size: 0x229
	Parameters: 7
	Flags: None
*/
function function_87d2cd22(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(level.var_3e64f16b) && level.var_3e64f16b)
		{
			return;
		}
		level.var_3e64f16b = 1;
		var_68ce2879 = namespace_14b42b8a::function_7faf4c39("plaza_battle_ambient_wasp_start");
		if(!isdefined(var_68ce2879) || var_68ce2879.size == 0)
		{
			return;
		}
		while(isdefined(level.var_3e64f16b) && level.var_3e64f16b)
		{
			var_68ce2879 = namespace_84970cc4::function_8332f7f6(var_68ce2879);
			foreach(var_10729d99 in var_68ce2879)
			{
				var_da8d98bc = function_bcde9a83(var_ec74b091, var_10729d99);
				for(var_bda430d5 = function_dc99997a(1, 8); var_bda430d5 > 1; var_bda430d5--)
				{
					wait(0.2);
					var_da8d98bc = function_bcde9a83(var_ec74b091, var_10729d99);
				}
				wait(function_72a94f05(15, 30));
			}
		}
	}
	else
	{
		level.var_3e64f16b = undefined;
	}
}

/*
	Name: function_be3b9c8
	Namespace: namespace_f165e60d
	Checksum: 0xBB9A3A78
	Offset: 0x1D40
	Size: 0x11D
	Parameters: 1
	Flags: None
*/
function function_be3b9c8(var_ec74b091)
{
	var_10729d99 = namespace_14b42b8a::function_7922262b("street_train_start");
	var_96eed922 = namespace_14b42b8a::function_7922262b("street_train_end");
	level.var_1fce2949 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 13; var_c957f6b6++)
	{
		level.var_1fce2949[var_c957f6b6] = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "p7_zur_train_subway_01", var_10729d99.var_722885f3, var_10729d99.var_6ab6f4fd);
		level.var_1fce2949[var_c957f6b6] thread function_94a8aac7(var_10729d99, var_96eed922, 3);
		wait(0.14);
	}
}

/*
	Name: function_94a8aac7
	Namespace: namespace_f165e60d
	Checksum: 0xC15521F3
	Offset: 0x1E68
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function function_94a8aac7(var_10729d99, var_96eed922, var_c26efe11)
{
	while(isdefined(level.var_f5d22b9a) && level.var_f5d22b9a)
	{
		self function_a96a2721(var_96eed922.var_722885f3, var_c26efe11);
		self waittill("hash_a21db68a");
		self.var_722885f3 = var_10729d99.var_722885f3;
	}
}

/*
	Name: function_cb32c615
	Namespace: namespace_f165e60d
	Checksum: 0xE2E0E3CB
	Offset: 0x1EF8
	Size: 0xF1
	Parameters: 7
	Flags: None
*/
function function_cb32c615(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_201606f3 = function_de7504ea("forest_vista_lotus_tower");
		foreach(var_6df9264 in var_201606f3)
		{
			function_201670be(var_6df9264);
		}
	}
}

/*
	Name: function_9d9bb681
	Namespace: namespace_f165e60d
	Checksum: 0x34C5D674
	Offset: 0x1FF8
	Size: 0xF1
	Parameters: 7
	Flags: None
*/
function function_9d9bb681(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_6d3190a3 = function_de7504ea("forest_vista_ferris_wheel");
		foreach(var_6df9264 in var_6d3190a3)
		{
			function_201670be(var_6df9264);
		}
	}
}

/*
	Name: function_b230d19c
	Namespace: namespace_f165e60d
	Checksum: 0xE8CD169F
	Offset: 0x20F8
	Size: 0x1A1
	Parameters: 7
	Flags: None
*/
function function_b230d19c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_10d89562), "Dev Block strings are not supported");
	#/
	if(var_9193c732 == 1)
	{
		foreach(var_6df9264 in level.var_10d89562)
		{
			function_201670be(var_6df9264);
			if(var_c957f6b6 % 25 == 0)
			{
				wait(0.016);
			}
		}
		break;
	}
	foreach(var_6df9264 in level.var_10d89562)
	{
		function_28aac069(var_6df9264);
	}
}

/*
	Name: function_e3c5be62
	Namespace: namespace_f165e60d
	Checksum: 0x489EEFF0
	Offset: 0x22A8
	Size: 0x21
	Parameters: 2
	Flags: None
*/
function function_e3c5be62(var_b04bc952, var_74cd64bc)
{
	level notify("hash_6774bf18");
}

/*
	Name: function_5cd74265
	Namespace: namespace_f165e60d
	Checksum: 0x44A4652A
	Offset: 0x22D8
	Size: 0x17D
	Parameters: 7
	Flags: None
*/
function function_5cd74265(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(level.var_f97ee69) && level.var_f97ee69)
		{
			return;
		}
		level.var_f97ee69 = 1;
		namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_trash_paper_blowing_01_bundle", &function_923c5fd7, "play");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_trash_paper_burst_up_01_bundle", &function_923c5fd7, "play");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_gp_trash_paper_burst_out_01_bundle", &function_923c5fd7, "play");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_trash_paper_blowing_01_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_trash_paper_burst_up_01_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_trash_paper_burst_out_01_bundle");
	}
	else
	{
		level.var_f97ee69 = undefined;
		level notify("hash_5266ce6e");
	}
}

/*
	Name: function_923c5fd7
	Namespace: namespace_f165e60d
	Checksum: 0x9B09785B
	Offset: 0x2460
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_923c5fd7(var_c77d2837)
{
	level waittill("hash_5266ce6e");
	if(isdefined(var_c77d2837) && function_6e2770d8(var_c77d2837))
	{
		var_c77d2837 = namespace_84970cc4::function_5c13fae0(var_c77d2837);
		if(var_c77d2837.size)
		{
			foreach(var_4c9c8550 in var_c77d2837)
			{
				var_4c9c8550 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_5080f69e
	Namespace: namespace_f165e60d
	Checksum: 0x7531FBBF
	Offset: 0x2558
	Size: 0x195
	Parameters: 7
	Flags: None
*/
function function_5080f69e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level.var_aafa350b = [];
		function_921a1574(0, "evt_decon_alarm", (-9457, 42594, 16));
		var_1e806caa = namespace_14b42b8a::function_7faf4c39("s_hq_decon_spray", "targetname");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1e806caa.size; var_c957f6b6++)
		{
			level.var_aafa350b[var_c957f6b6] = function_fd4ba5e1(var_ec74b091, "steam/fx_steam_decon_mist_spray_lg_sgen", var_1e806caa[var_c957f6b6].var_722885f3, function_bc7ce905(var_1e806caa[var_c957f6b6].var_6ab6f4fd), (0, 0, 1));
		}
	}
	else
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_aafa350b.size; var_c957f6b6++)
		{
			function_d555a113(var_ec74b091, level.var_aafa350b[var_c957f6b6]);
		}
		level.var_aafa350b = undefined;
	}
}

