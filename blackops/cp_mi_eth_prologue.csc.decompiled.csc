#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_oed;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_patch_c;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\shared\clientfield_shared;
#using scripts\shared\duplicaterender_mgr;
#using scripts\shared\exploder_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_4dc8633b;

/*
	Name: function_d290ebfa
	Namespace: namespace_4dc8633b
	Checksum: 0x2F3DA00B
	Offset: 0xA80
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 7);
	function_f45953c();
	function_b37230e4();
	namespace_34e37984::function_d290ebfa();
	namespace_7685657b::function_d290ebfa();
	namespace_e216c11c::function_3aea3c1a(0, "cp_mi_eth_prologue", 0);
	namespace_e216c11c::function_3aea3c1a(1, "cp_mi_eth_prologue", 0);
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	function_6c1294b8("sv_mapswitch", 1);
	namespace_ba84f16::function_7403e82b();
}

/*
	Name: function_f45953c
	Namespace: namespace_4dc8633b
	Checksum: 0x45E3DE9E
	Offset: 0xB90
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_f45953c()
{
	level.var_c1aa5253["player_tunnel_dust"] = "dirt/fx_dust_motes_player_loop_lite";
}

/*
	Name: function_b37230e4
	Namespace: namespace_4dc8633b
	Checksum: 0xBC24811E
	Offset: 0xBB8
	Size: 0x6A3
	Parameters: 0
	Flags: None
*/
function function_b37230e4()
{
	namespace_71e9cb84::function_50f16166("world", "tunnel_wall_explode", 1, 1, "int", &function_2e707998, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "unlimited_sprint_off", 1, 1, "int", &function_9e6eac31, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "apc_rail_tower_collapse", 1, 1, "int", &function_5faba7ec, 1, 0);
	namespace_71e9cb84::function_50f16166("world", "vtol_missile_explode_trash_fx", 1, 1, "int", &function_b9aea50f, 1, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "turn_on_multicam", 1, 3, "int", &function_a014174b, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "setup_security_cameras", 1, 1, "int", &function_edd36550, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "update_camera_position", 1, 4, "int", &function_9fd7493, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "interrogate_physics", 1, 1, "int", &function_a1ad4aa7, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "set_cam_lookat_object", 1, 4, "int", &function_c2af0716, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "sndCameraScanner", 1, 3, "int", &function_8466bb27, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "blend_in_cleanup", 1, 1, "int", &function_4551c159, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fuel_depot_truck_explosion", 1, 1, "int", &function_aea2e22e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "turn_off_tacmode_vfx", 1, 1, "int", &function_7e8cf38d, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "dropship_rumble_loop", 1, 1, "int", &function_d376a908, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "apc_speed_blur", 1, 1, "int", &function_8515be07, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "diaz_break_1", 1, 2, "int", &function_35a91904, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "diaz_break_2", 1, 2, "int", &function_a7b0883f, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_tunnel_dust_fx_on_off", 1, 1, "int", &namespace_34e37984::function_fda9ad5f, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_tunnel_dust_fx", 1, 1, "int", &namespace_34e37984::function_ba9197c, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_blood_splatter", 1, 1, "int", &namespace_34e37984::function_55f87893, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "cyber_soldier_camo", 1, 2, "int", &function_f532bd65, 0, 1);
	namespace_1c38f9cf::function_787bc305("active_camo", 90, "actor_camo_on", "", 0, "mc/hud_outline_predator_camo_active_inf", 0);
	namespace_1c38f9cf::function_787bc305("active_camo_flicker", 80, "actor_camo_flicker", "", 0, "mc/hud_outline_predator_camo_disruption_inf", 0);
	namespace_71e9cb84::function_50f16166("world", "toggle_security_camera_pbg_bank", 1, 1, "int", &function_c9395227, 0, 0);
}

/*
	Name: function_71f88fc
	Namespace: namespace_4dc8633b
	Checksum: 0x37C8DA34
	Offset: 0x1268
	Size: 0x105
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_4bc288a0)
{
	switch(var_4bc288a0)
	{
		case 1:
		{
			break;
		}
		case 2:
		{
			function_71c4474e("cin_pro_05_01_securitycam_1st_stealth_kill_closedoor");
			break;
		}
		case 3:
		{
			function_71c4474e("cin_pro_06_03_hostage_vign_breach_playerbreach");
			function_2e76fa01("p7_door_metal_security_02_rt_keypad");
			break;
		}
		case 4:
		{
			function_71c4474e("cin_pro_06_03_hostage_1st_khalil_intro_player_rescue");
			break;
		}
		case 5:
		{
			function_71c4474e("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack");
			break;
		}
		case 6:
		{
			function_71c4474e("cin_pro_11_01_jeepalley_vign_engage_start");
			break;
		}
	}
}

/*
	Name: function_f532bd65
	Namespace: namespace_4dc8633b
	Checksum: 0xCC40AA1F
	Offset: 0x1378
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
	Name: function_8515be07
	Namespace: namespace_4dc8633b
	Checksum: 0x5C186A64
	Offset: 0x1428
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_8515be07(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_3cbcdf3a(var_ec74b091, 0.25, 0.9, 1, 0, 1, 1, 1);
	}
	else
	{
		function_fa59de5f(var_ec74b091);
	}
}

/*
	Name: function_d376a908
	Namespace: namespace_4dc8633b
	Checksum: 0x1ABCC81D
	Offset: 0x14C8
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_d376a908(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self function_8dedca9c(var_ec74b091, "cp_prologue_rumble_dropship");
	}
	else
	{
		self function_8a0ba272(var_ec74b091, "cp_prologue_rumble_dropship");
	}
}

/*
	Name: function_2e707998
	Namespace: namespace_4dc8633b
	Checksum: 0x2533A992
	Offset: 0x1568
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_2e707998(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_apc_rail_wall_explode_bundle");
	}
}

/*
	Name: function_9e6eac31
	Namespace: namespace_4dc8633b
	Checksum: 0xE1BE65C9
	Offset: 0x15D8
	Size: 0xBB
	Parameters: 7
	Flags: None
*/
function function_9e6eac31(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_6c1294b8("player_sprintUnlimited", 0);
		function_6c1294b8("slide_forceBaseSlide", 1);
	}
	else
	{
		function_6c1294b8("player_sprintUnlimited", 1);
		function_6c1294b8("slide_forceBaseSlide", 0);
	}
}

/*
	Name: function_a014174b
	Namespace: namespace_4dc8633b
	Checksum: 0xD31A259B
	Offset: 0x16A0
	Size: 0x153
	Parameters: 7
	Flags: None
*/
function function_a014174b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_6c1294b8("r_extracam_custom_aspectratio", 2.85);
		var_351745fc = function_6ada35ba(var_ec74b091, "s_security_cam_hallway", "targetname");
		var_351745fc function_69b16290(0);
		var_351745fc function_a41474b(0, var_351745fc.var_81a24d4e);
		level thread function_5f6dad34(var_ec74b091, 1);
	}
	level thread function_5f6dad34(var_ec74b091, 0);
	level.var_3792d454 = 0;
	if(var_9193c732)
	{
		function_c2af0716(var_ec74b091, var_ade4d29d, 0, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3);
	}
}

/*
	Name: function_5f6dad34
	Namespace: namespace_4dc8633b
	Checksum: 0x651506DE
	Offset: 0x1800
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_5f6dad34(var_ec74b091, var_c1e63f13)
{
	if(!isdefined(level.var_4073afd6))
	{
		level.var_4073afd6 = function_6ada35ba(var_ec74b091, "security_pstfx_screen", "targetname");
	}
	level.var_4073afd6 notify("hash_5f6dad34");
	level.var_4073afd6 endon("hash_5f6dad34");
	level.var_4073afd6 function_e7f6dc4e(var_ec74b091, 0, "ScriptVector0");
	level.var_4073afd6 function_e7f6dc4e(var_ec74b091, 1, "ScriptVector1");
	if(var_c1e63f13)
	{
		level.var_4073afd6 function_636ac8d4(var_ec74b091, 0, 1, 0, 0, 0);
		while(1)
		{
			var_a4ad846c = GetTime();
			var_c957f6b6 = GetTime() - var_a4ad846c;
			while(var_c957f6b6 < 2000 && isdefined(self))
			{
				var_5acbeba0 = var_c957f6b6 / 1000;
				if(var_5acbeba0 <= 1)
				{
					level.var_4073afd6 function_636ac8d4(var_ec74b091, 1, 0, 0, var_5acbeba0, 0);
				}
				else if(var_5acbeba0 > 1)
				{
					level.var_4073afd6 function_636ac8d4(var_ec74b091, 1, 0, 0, namespace_d73b9283::function_e4ef4645(2 - var_5acbeba0, 0, 1, 0, 1), 0);
				}
				var_c957f6b6 = GetTime() - var_a4ad846c;
				wait(0.016);
			}
		}
	}
	else
	{
		level.var_4073afd6 function_636ac8d4(var_ec74b091, 0, 0, 0, 0, 0);
		level.var_4073afd6 function_636ac8d4(var_ec74b091, 1, 0, 0, 0, 0);
	}
}

/*
	Name: function_9fd7493
	Namespace: namespace_4dc8633b
	Checksum: 0x125B6DD
	Offset: 0x1A60
	Size: 0xD3
	Parameters: 7
	Flags: None
*/
function function_9fd7493(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_205cf3cb))
	{
		return;
	}
	var_4bc288a0 = var_9193c732;
	if(var_4bc288a0 == 9)
	{
		var_4bc288a0 = 0;
	}
	if(isdefined(level.var_205cf3cb[var_ec74b091][var_4bc288a0]))
	{
		level.var_205cf3cb[var_ec74b091][var_4bc288a0].var_722885f3 = self.var_722885f3;
		level.var_205cf3cb[var_ec74b091][var_4bc288a0].var_6ab6f4fd = self.var_6ab6f4fd;
	}
}

/*
	Name: function_c2af0716
	Namespace: namespace_4dc8633b
	Checksum: 0x5F0C3479
	Offset: 0x1B40
	Size: 0x123
	Parameters: 7
	Flags: None
*/
function function_c2af0716(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_205cf3cb) || level.var_205cf3cb.size == 0)
	{
		return;
	}
	var_351745fc = level.var_205cf3cb[var_ec74b091][var_9193c732];
	if(isdefined(var_351745fc))
	{
		if(!namespace_82b91a51::function_193d7d1c() && var_351745fc.var_6516b558)
		{
			var_351745fc function_69b16290(level.var_3792d454, 64, 36);
		}
		else
		{
			var_351745fc function_69b16290(level.var_3792d454, 1024, 768);
		}
		var_351745fc function_a41474b(level.var_3792d454, var_351745fc.var_81a24d4e);
	}
}

/*
	Name: function_8466bb27
	Namespace: namespace_4dc8633b
	Checksum: 0x465380DF
	Offset: 0x1C70
	Size: 0x19D
	Parameters: 7
	Flags: None
*/
function function_8466bb27(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	switch(var_9193c732)
	{
		case 1:
		{
			function_921a1574(0, "evt_camera_scan_start", (0, 0, 0));
			self.var_a9e4b020 = self function_c2931a36("evt_camera_scan_lp", 1);
			break;
		}
		case 2:
		{
			function_921a1574(0, "evt_camera_scan_nomatch", (0, 0, 0));
			if(isdefined(self.var_a9e4b020))
			{
				self function_eaa69754(self.var_a9e4b020, 0.5);
			}
			break;
		}
		case 3:
		{
			function_921a1574(0, "evt_camera_scan_match", (0, 0, 0));
			if(isdefined(self.var_a9e4b020))
			{
				self function_eaa69754(self.var_a9e4b020, 0.5);
			}
			break;
		}
		case default:
		{
			if(isdefined(self.var_a9e4b020))
			{
				self function_eaa69754(self.var_a9e4b020, 0.5);
			}
			break;
		}
	}
}

/*
	Name: function_edd36550
	Namespace: namespace_4dc8633b
	Checksum: 0xB47FC66F
	Offset: 0x1E18
	Size: 0x39B
	Parameters: 7
	Flags: None
*/
function function_edd36550(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		if(!isdefined(level.var_205cf3cb))
		{
			level.var_205cf3cb = [];
		}
		if(!isdefined(level.var_205cf3cb[var_ec74b091]))
		{
			level.var_205cf3cb[var_ec74b091] = [];
			level.var_205cf3cb[var_ec74b091][level.var_205cf3cb[var_ec74b091].size] = function_b0867fa6(var_ec74b091, "s_security_cam_hallway", 28);
			level.var_205cf3cb[var_ec74b091][level.var_205cf3cb[var_ec74b091].size] = function_b0867fa6(var_ec74b091, "s_security_interrogation", 45);
			level.var_205cf3cb[var_ec74b091][level.var_205cf3cb[var_ec74b091].size] = function_b0867fa6(var_ec74b091, "s_security_cower_on_floor", 50);
			level.var_205cf3cb[var_ec74b091][level.var_205cf3cb[var_ec74b091].size] = function_b0867fa6(var_ec74b091, "s_security_beating", 24, 1);
			level.var_205cf3cb[var_ec74b091][level.var_205cf3cb[var_ec74b091].size] = function_b0867fa6(var_ec74b091, "s_security_bound_in_chair", 35, 1);
			level.var_205cf3cb[var_ec74b091][level.var_205cf3cb[var_ec74b091].size] = function_b0867fa6(var_ec74b091, "s_security_torture", 35, 0);
			level.var_205cf3cb[var_ec74b091][level.var_205cf3cb[var_ec74b091].size] = function_b0867fa6(var_ec74b091, "s_security_lying_on_bed", 30, 1);
			level.var_205cf3cb[var_ec74b091][level.var_205cf3cb[var_ec74b091].size] = function_b0867fa6(var_ec74b091, "s_security_cam_minister_waterboard", 35, 1);
			level.var_205cf3cb[var_ec74b091][level.var_205cf3cb[var_ec74b091].size] = function_b0867fa6(var_ec74b091, "s_security_standing_wall", 38, 1);
		}
	}
	else if(isdefined(level.var_205cf3cb[var_ec74b091]))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_205cf3cb[var_ec74b091].size; var_c957f6b6++)
		{
			level.var_205cf3cb[var_ec74b091][var_c957f6b6] function_9de0788f();
			level.var_205cf3cb[var_ec74b091][var_c957f6b6] function_dc8c8404();
			level.var_205cf3cb[var_ec74b091][var_c957f6b6] = undefined;
		}
	}
	level.var_205cf3cb[var_ec74b091] = undefined;
}

/*
	Name: function_c9395227
	Namespace: namespace_4dc8633b
	Checksum: 0x25C245FC
	Offset: 0x21C0
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_c9395227(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_4c5bfec4(var_ec74b091, 2);
	}
	else
	{
		function_4c5bfec4(var_ec74b091, 1);
	}
}

/*
	Name: function_b0867fa6
	Namespace: namespace_4dc8633b
	Checksum: 0xE7A57C7
	Offset: 0x2248
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_b0867fa6(var_ec74b091, var_fd7c1054, var_81a24d4e, var_6516b558)
{
	if(!isdefined(var_81a24d4e))
	{
		var_81a24d4e = 14.64;
	}
	if(!isdefined(var_6516b558))
	{
		var_6516b558 = 0;
	}
	var_351745fc = function_6ada35ba(var_ec74b091, var_fd7c1054, "targetname");
	var_351745fc.var_81a24d4e = var_81a24d4e;
	var_351745fc.var_6516b558 = var_6516b558;
	return var_351745fc;
}

/*
	Name: function_cd98eb8d
	Namespace: namespace_4dc8633b
	Checksum: 0x9F0A1C90
	Offset: 0x22F8
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_cd98eb8d()
{
	self endon("hash_128f8789");
	level endon("hash_4551c159");
	var_6cac4ba4 = VectorScale((0, -1, 0), 20);
	var_c26efe11 = 4;
	var_5c20815 = 5;
	self function_c0b6566f(self.var_6ab6f4fd + var_6cac4ba4, var_c26efe11 / 2);
	wait(var_5c20815 / 2);
	while(1)
	{
		var_6cac4ba4 = VectorScale((0, 1, 0), 40);
		self function_c0b6566f(self.var_6ab6f4fd + var_6cac4ba4, var_c26efe11);
		wait(var_5c20815);
		var_6cac4ba4 = VectorScale((0, -1, 0), 40);
		self function_c0b6566f(self.var_6ab6f4fd + var_6cac4ba4, var_c26efe11);
		wait(var_5c20815);
	}
}

/*
	Name: function_a1ad4aa7
	Namespace: namespace_4dc8633b
	Checksum: 0xBE19CF5E
	Offset: 0x2420
	Size: 0x111
	Parameters: 7
	Flags: None
*/
function function_a1ad4aa7(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_8b68ce61 = namespace_14b42b8a::function_7faf4c39("s_interrogation_physics", "targetname");
	foreach(var_14b42b8a in var_8b68ce61)
	{
		function_534b3cba(var_ec74b091, var_14b42b8a.var_722885f3, 100, 1, 10, 99, 100, 1, 1);
	}
}

/*
	Name: function_4551c159
	Namespace: namespace_4dc8633b
	Checksum: 0xC9A24A4E
	Offset: 0x2540
	Size: 0x12B
	Parameters: 7
	Flags: None
*/
function function_4551c159(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level notify("hash_4551c159");
	namespace_cc27597::function_fcf56ab5("tower_sparking_wire_01", "targetname");
	namespace_cc27597::function_fcf56ab5("tower_sparking_wire_02", "targetname");
	namespace_cc27597::function_fcf56ab5("tower_sparking_wire_03", "targetname");
	namespace_cc27597::function_fcf56ab5("tower_sparking_wire_04", "targetname");
	namespace_cc27597::function_fcf56ab5("tower_sparking_wire_05", "targetname");
	namespace_cc27597::function_fcf56ab5("tower_sparking_wire_06", "targetname");
	namespace_cc27597::function_fcf56ab5("tower_sparking_wire_07", "targetname");
}

/*
	Name: function_aea2e22e
	Namespace: namespace_4dc8633b
	Checksum: 0x37F7099E
	Offset: 0x2678
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_aea2e22e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_trash_newspaper_burst_out_01_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_trash_newspaper_burst_up_01_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_trash_paper_burst_up_01_bundle");
}

/*
	Name: function_5faba7ec
	Namespace: namespace_4dc8633b
	Checksum: 0x7569DB4
	Offset: 0x2720
	Size: 0x6B
	Parameters: 7
	Flags: None
*/
function function_5faba7ec(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("rail_tower_collapse_start", "targetname");
	}
}

/*
	Name: function_b9aea50f
	Namespace: namespace_4dc8633b
	Checksum: 0x602FE7F3
	Offset: 0x2798
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_b9aea50f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("vtol_hangar_trash_01", "targetname");
		level thread namespace_cc27597::function_43718187("vtol_hangar_trash_02", "targetname");
	}
}

/*
	Name: function_7e8cf38d
	Namespace: namespace_4dc8633b
	Checksum: 0x2F643157
	Offset: 0x2838
	Size: 0x4F
	Parameters: 7
	Flags: None
*/
function function_7e8cf38d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level.var_e46224ba = 1;
	}
}

/*
	Name: function_35a91904
	Namespace: namespace_4dc8633b
	Checksum: 0x640A373A
	Offset: 0x2890
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_35a91904(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_window_break_hangar_01_bundle");
	}
	else
	{
		namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_window_break_hangar_01_bundle");
	}
}

/*
	Name: function_a7b0883f
	Namespace: namespace_4dc8633b
	Checksum: 0x4807B2AA
	Offset: 0x2920
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_a7b0883f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_window_break_hangar_02_bundle");
	}
	else
	{
		namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_window_break_hangar_02_bundle");
	}
}

