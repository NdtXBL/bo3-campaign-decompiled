#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_squad_control;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_fx;
#using scripts\cp\cp_mi_sing_biodomes_patch_c;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\shared\clientfield_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_55d2f1be;

/*
	Name: function_d290ebfa
	Namespace: namespace_55d2f1be
	Checksum: 0xF6711B1D
	Offset: 0x768
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_b37230e4();
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 2);
	namespace_7042442b::function_d290ebfa();
	namespace_a46315e2::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	namespace_8d32191f::function_7403e82b();
}

/*
	Name: function_b37230e4
	Namespace: namespace_55d2f1be
	Checksum: 0x7ADA69B5
	Offset: 0x808
	Size: 0x4CB
	Parameters: 0
	Flags: None
*/
function function_b37230e4()
{
	namespace_71e9cb84::function_50f16166("toplayer", "player_dust_fx", 1, 1, "int", &function_b33fd8cd, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_waterfall_pstfx", 1, 1, "int", &function_cf78dbd9, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "bullet_disconnect_pstfx", 1, 1, "int", &function_89d42240, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "zipline_speed_blur", 1, 1, "int", &function_424e31ac, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "umbra_tome_markets2", 1, 1, "counter", &function_51e4599a, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "waiter_blood_shader", 1, 1, "int", &function_81199318, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "set_exposure_bank", 1, 1, "int", &function_1e832062, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "party_house_shutter", 1, 1, "int", &function_e49f0db0, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "party_house_destruction", 1, 1, "int", &function_f3caffbf, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "dome_glass_break", 1, 1, "int", &function_f386de49, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "warehouse_window_break", 1, 1, "int", &function_c42f328d, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "control_room_window_break", 1, 1, "int", &function_b84be585, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "server_extra_cam", 1, 5, "int", &function_aee2517f, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "server_interact_cam", 1, 3, "int", &function_7c68b681, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "cloud_mountain_crows", 1, 2, "int", &function_76ca6777, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fighttothedome_exfil_rope", 1, 2, "int", &function_32baa33e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fighttothedome_exfil_rope_sim_player", 1, 1, "int", &function_d550bd06, 0, 0);
}

/*
	Name: function_ab86121d
	Namespace: namespace_55d2f1be
	Checksum: 0x34D4C0EB
	Offset: 0xCE0
	Size: 0x125
	Parameters: 7
	Flags: None
*/
function function_ab86121d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	switch(var_9193c732)
	{
		case 2:
		{
			self thread namespace_bdde9225::function_bca12b73("pstfx_vehicle_takeover_fade_in");
			function_921a1574(0, "gdt_securitybreach_transition_in", (0, 0, 0));
			break;
		}
		case 3:
		{
			self thread namespace_bdde9225::function_bca12b73("pstfx_vehicle_takeover_fade_out");
			function_921a1574(0, "gdt_securitybreach_transition_out", (0, 0, 0));
			break;
		}
		case 1:
		{
			self thread namespace_bdde9225::function_3d1a8db5();
			break;
		}
		case 4:
		{
			self thread namespace_bdde9225::function_bca12b73("pstfx_vehicle_takeover_white");
			break;
		}
	}
}

/*
	Name: function_51e4599a
	Namespace: namespace_55d2f1be
	Checksum: 0xAE8C06D8
	Offset: 0xE10
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_51e4599a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_51d2921b(var_ec74b091, "markets2");
}

/*
	Name: function_cf78dbd9
	Namespace: namespace_55d2f1be
	Checksum: 0xFD450113
	Offset: 0xE78
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_cf78dbd9(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	return;
	if(var_9193c732)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_waterfall");
	}
	else
	{
		self thread namespace_bdde9225::function_3d1a8db5();
	}
}

/*
	Name: function_89d42240
	Namespace: namespace_55d2f1be
	Checksum: 0xD6509BA8
	Offset: 0xF00
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_89d42240(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz");
	}
	else
	{
		self thread namespace_bdde9225::function_3d1a8db5();
	}
}

/*
	Name: function_424e31ac
	Namespace: namespace_55d2f1be
	Checksum: 0x31B689D6
	Offset: 0xF88
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
	Name: function_81199318
	Namespace: namespace_55d2f1be
	Checksum: 0x897E0AE2
	Offset: 0x1028
	Size: 0x12F
	Parameters: 7
	Flags: None
*/
function function_81199318(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	var_94db6e7c = GetTime();
	var_67c8a9ed = 1;
	while(var_67c8a9ed)
	{
		var_78962fff = GetTime();
		var_348e23ad = var_78962fff - var_94db6e7c / 1000;
		if(var_348e23ad >= 4)
		{
			var_348e23ad = 4;
			var_67c8a9ed = 0;
		}
		var_cba49b4e = 0.9 * var_348e23ad / 4;
		self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", var_cba49b4e, 0, 0);
		wait(0.01);
	}
}

/*
	Name: function_e49f0db0
	Namespace: namespace_55d2f1be
	Checksum: 0x92CED728
	Offset: 0x1160
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_e49f0db0(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_roll_up_door_bundle");
	}
}

/*
	Name: function_f3caffbf
	Namespace: namespace_55d2f1be
	Checksum: 0x6B4CD45D
	Offset: 0x11D0
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_f3caffbf(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_party_house_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_lantern_paper_04_red_single_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_lantern_paper_03_red_single_bundle");
	}
}

/*
	Name: function_f386de49
	Namespace: namespace_55d2f1be
	Checksum: 0x2712E5C7
	Offset: 0x1280
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_f386de49(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_rpg_dome_glass_bundle");
	}
}

/*
	Name: function_c42f328d
	Namespace: namespace_55d2f1be
	Checksum: 0xEEBF8EFC
	Offset: 0x12F0
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_c42f328d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_warehouse_glass_break_bundle");
	}
}

/*
	Name: function_b84be585
	Namespace: namespace_55d2f1be
	Checksum: 0x7739D6B1
	Offset: 0x1360
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_b84be585(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_server_room_window_break_02_bundle");
	}
}

/*
	Name: function_76ca6777
	Namespace: namespace_55d2f1be
	Checksum: 0x4E953B70
	Offset: 0x13D0
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_76ca6777(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_crow_takeoff_bundle");
	}
	else if(var_9193c732 == 2)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_crow_takeoff_bundle");
	}
}

/*
	Name: function_32baa33e
	Namespace: namespace_55d2f1be
	Checksum: 0x280C0ABC
	Offset: 0x1470
	Size: 0x133
	Parameters: 7
	Flags: None
*/
function function_32baa33e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_biodomes_rope_sim_player_bundle", &function_1f0ba50, "init");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_rope_drop_player_bundle");
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_rope_sim_player_bundle");
		wait(1);
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_rope_drop_hendricks_bundle");
	}
	else if(var_9193c732 == 2)
	{
		level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_biodomes_rope_drop_hendricks_bundle", 1);
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_rope_drop_player_bundle");
	}
}

/*
	Name: function_1f0ba50
	Namespace: namespace_55d2f1be
	Checksum: 0xBFB6788
	Offset: 0x15B0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_1f0ba50(var_c77d2837)
{
	var_c77d2837["rope_sim_player"] function_50ccee8d();
}

/*
	Name: function_d550bd06
	Namespace: namespace_55d2f1be
	Checksum: 0xE7747C11
	Offset: 0x15E8
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_d550bd06(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_biodomes_rope_sim_player_bundle", &function_be7ae167, "play");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_rope_sim_player_bundle");
	}
}

/*
	Name: function_be7ae167
	Namespace: namespace_55d2f1be
	Checksum: 0x64192F3F
	Offset: 0x1688
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_be7ae167(var_c77d2837)
{
	var_c77d2837["rope_sim_player"] function_48f26766();
}

/*
	Name: function_aee2517f
	Namespace: namespace_55d2f1be
	Checksum: 0xA745FE02
	Offset: 0x16C0
	Size: 0x21D
	Parameters: 7
	Flags: None
*/
function function_aee2517f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_ebb945a1 = function_6ada35ba(var_ec74b091, "server_camera1", "targetname");
	var_11bbc00a = function_6ada35ba(var_ec74b091, "server_camera2", "targetname");
	var_37be3a73 = function_6ada35ba(var_ec74b091, "server_camera3", "targetname");
	var_5dc0b4dc = function_6ada35ba(var_ec74b091, "server_camera4", "targetname");
	switch(var_9193c732)
	{
		case 0:
		{
			break;
		}
		case 1:
		{
			var_11bbc00a function_69b16290(0);
			break;
		}
		case 2:
		{
			var_ebb945a1 function_69b16290(0);
			break;
		}
		case 3:
		{
			var_37be3a73 function_69b16290(0);
			var_37be3a73 function_21d0da55(35, 2);
			break;
		}
		case 4:
		{
			var_5dc0b4dc function_69b16290(0);
			break;
		}
		case 5:
		{
			var_37be3a73 function_69b16290(0);
			var_37be3a73 function_21d0da55(-35, 2);
			break;
		}
	}
}

/*
	Name: function_7c68b681
	Namespace: namespace_55d2f1be
	Checksum: 0xF3470E3B
	Offset: 0x18E8
	Size: 0x1CD
	Parameters: 7
	Flags: None
*/
function function_7c68b681(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	return;
	var_ebb945a1 = function_6ada35ba(var_ec74b091, "server_camera1", "targetname");
	var_11bbc00a = function_6ada35ba(var_ec74b091, "server_camera2", "targetname");
	var_37be3a73 = function_6ada35ba(var_ec74b091, "server_camera3", "targetname");
	var_5dc0b4dc = function_6ada35ba(var_ec74b091, "server_camera4", "targetname");
	switch(var_9193c732)
	{
		case 0:
		{
			var_11bbc00a function_69b16290(3);
			break;
		}
		case 1:
		{
			var_37be3a73 function_69b16290(3);
			break;
		}
		case 2:
		{
			var_5dc0b4dc function_69b16290(3);
			break;
		}
		case 3:
		{
			var_ebb945a1 function_69b16290(3);
			break;
		}
		case 4:
		{
			var_ebb945a1 function_9de0788f();
			break;
		}
	}
}

/*
	Name: function_71f88fc
	Namespace: namespace_55d2f1be
	Checksum: 0xF3D3DA9E
	Offset: 0x1AC0
	Size: 0xDD
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_7d372786)
{
	switch(var_7d372786)
	{
		case 1:
		{
			function_1a2ef02e("cp_mi_sing_biodomes");
			function_71c4474e("cin_bio_01_01_party_1st_drinks");
			function_71c4474e("cin_bio_01_01_party_1st_drinks_part2");
			function_71c4474e("p7_fxanim_cp_biodomes_party_house_drinks_bundle");
			function_71c4474e("p7_fxanim_cp_biodomes_roll_up_door_bundle");
			break;
		}
		case 2:
		{
			function_2e76fa01("c_54i_supp_body");
			function_2e76fa01("c_54i_supp_head1");
			break;
		}
	}
}

/*
	Name: function_1e832062
	Namespace: namespace_55d2f1be
	Checksum: 0x36424DFC
	Offset: 0x1BA8
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

/*
	Name: function_b33fd8cd
	Namespace: namespace_55d2f1be
	Checksum: 0xC1357463
	Offset: 0x1C30
	Size: 0xEB
	Parameters: 7
	Flags: None
*/
function function_b33fd8cd(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(self.var_ac46de76))
		{
			function_28573e36(var_ec74b091, self.var_ac46de76, 1);
		}
		self.var_ac46de76 = function_2e9c26ef(var_ec74b091, level.var_c1aa5253["player_dust"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	}
	else if(isdefined(self.var_ac46de76))
	{
		function_28573e36(var_ec74b091, self.var_ac46de76, 1);
	}
}

