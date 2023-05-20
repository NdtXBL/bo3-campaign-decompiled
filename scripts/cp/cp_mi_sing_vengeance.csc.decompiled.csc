#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_fx;
#using scripts\cp\cp_mi_sing_vengeance_patch_c;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\enemy_highlight;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\stealth_client;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_5a0096b2;

/*
	Name: function_d290ebfa
	Namespace: namespace_5a0096b2
	Checksum: 0x48B1C7FD
	Offset: 0xBF0
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 8);
	namespace_71e9cb84::function_50f16166("toplayer", "enemy_highlight", 1, 1, "int", &function_93ef80c, 0, 0);
	function_2ea898a8();
	function_aa332733("enable_global_wind", 1);
	function_aa332733("wind_global_vector", "-150 -230 0");
	namespace_a1cfe497::function_d290ebfa();
	namespace_7c587e3e::function_d290ebfa();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_d7916d65::function_d290ebfa();
	level.var_be75cb3c = function_de7504ea("graphic_content");
	namespace_b237ad4b::function_7403e82b();
	namespace_82b91a51::function_44333182(0);
	level thread function_23953002();
	level thread function_37d4d605();
	level thread function_be296801();
	level thread function_6f79b65d();
	level thread function_6c85145c();
	level thread function_d8ca2a96();
	level thread function_b2c7b02d();
	level thread function_8cc535c4();
	namespace_4fe3eef1::function_11908f52("amb_house_fan", (21660, -1394, 200));
}

/*
	Name: function_2ea898a8
	Namespace: namespace_5a0096b2
	Checksum: 0x6A4E5CC1
	Offset: 0xE40
	Size: 0x413
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	level namespace_ad23e503::function_c35e6aab("kill_qt_alley_light");
	namespace_71e9cb84::function_50f16166("toplayer", "play_client_igc", 1, 4, "int", &function_a3bc7b7b, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "apartment_light_fire_fx", 1, 1, "int", &function_5d084d45, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "kill_qt_alley_light", 1, 1, "int", &function_1e770357, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "xiulan_face_burn", 1, 1, "int", &function_1401c820, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "normal_hide", 1, 1, "int", &function_1c33477, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "normal_hide", 1, 1, "int", &function_1c33477, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "mature_hide", 1, 1, "int", &function_ba9281fe, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "mature_hide", 1, 1, "int", &function_ba9281fe, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fxanims_intro", 1, 1, "int", &function_6b145814, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fxanims_killing_streets", 1, 1, "int", &function_6b145814, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fxanims_dogleg_1", 1, 1, "int", &function_6b145814, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fxanims_dogleg_2", 1, 1, "int", &function_6b145814, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fxanims_garage_igc", 1, 1, "int", &function_6b145814, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "fxanims_safehouse_explodes", 1, 1, "int", &function_6b145814, 0, 0);
}

/*
	Name: function_6b145814
	Namespace: namespace_5a0096b2
	Checksum: 0xFC37F7
	Offset: 0x1260
	Size: 0xB3
	Parameters: 7
	Flags: None
*/
function function_6b145814(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 && (var_8d0de8f7 || var_ade4d29d != var_9193c732))
	{
		level thread namespace_cc27597::function_43718187(var_7f86519e, "targetname");
	}
	else if(var_9193c732 == 0)
	{
		level thread namespace_cc27597::function_fcf56ab5(var_7f86519e, "targetname", 1);
	}
}

/*
	Name: function_b69b9863
	Namespace: namespace_5a0096b2
	Checksum: 0x686B431F
	Offset: 0x1320
	Size: 0x8B
	Parameters: 5
	Flags: None
*/
function function_b69b9863(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7)
{
	if(!self function_b80a9a41())
	{
		return 0;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return 0;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_a3bc7b7b
	Namespace: namespace_5a0096b2
	Checksum: 0xFF973AF
	Offset: 0x13B8
	Size: 0x105
	Parameters: 7
	Flags: None
*/
function function_a3bc7b7b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!function_b69b9863(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7))
	{
		return;
	}
	switch(var_9193c732)
	{
		case 1:
		{
			function_22f8ce71(var_ec74b091);
			break;
		}
		case 2:
		{
			function_3ef59fde(var_ec74b091);
			break;
		}
		case 3:
		{
			break;
		}
		case 4:
		{
			break;
		}
		case 5:
		{
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
			break;
		}
	}
}

/*
	Name: function_22f8ce71
	Namespace: namespace_5a0096b2
	Checksum: 0x9F3B2E52
	Offset: 0x14C8
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_22f8ce71(var_ec74b091)
{
	var_3209e83e = namespace_14b42b8a::function_7faf4c39("killing_streets_vign", "targetname");
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "civilian_death_pose";
	foreach(var_14b42b8a in var_3209e83e)
	{
		if(isdefined(var_14b42b8a.var_caae374e))
		{
			namespace_cc27597::function_8f9f34e0(var_14b42b8a.var_caae374e, &function_65a61b78, "play", var_6a07eb6c);
			var_14b42b8a thread namespace_cc27597::function_43718187(var_14b42b8a.var_caae374e);
		}
	}
}

/*
	Name: function_3ef59fde
	Namespace: namespace_5a0096b2
	Checksum: 0xF13E2CE8
	Offset: 0x1608
	Size: 0x109
	Parameters: 1
	Flags: None
*/
function function_3ef59fde(var_ec74b091)
{
	var_3209e83e = namespace_14b42b8a::function_7faf4c39("killing_streets_vign", "targetname");
	foreach(var_14b42b8a in var_3209e83e)
	{
		if(isdefined(var_14b42b8a.var_caae374e))
		{
			var_14b42b8a thread namespace_cc27597::function_fcf56ab5(var_14b42b8a.var_caae374e, 1);
			level namespace_14b42b8a::function_368120a1("scene", var_14b42b8a.var_caae374e);
		}
	}
}

/*
	Name: function_65a61b78
	Namespace: namespace_5a0096b2
	Checksum: 0xDC5BE058
	Offset: 0x1720
	Size: 0xC1
	Parameters: 2
	Flags: None
*/
function function_65a61b78(var_c77d2837, var_6a07eb6c)
{
	if(!function_45e7dc7f())
	{
		foreach(var_806fd666 in var_6a07eb6c)
		{
			if(isdefined(var_c77d2837[var_806fd666]))
			{
				var_c77d2837[var_806fd666] function_50ccee8d();
			}
		}
	}
}

/*
	Name: function_8cfdae7
	Namespace: namespace_5a0096b2
	Checksum: 0x69E0AB79
	Offset: 0x17F0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_8cfdae7(var_ec74b091)
{
	var_14b42b8a = namespace_14b42b8a::function_7922262b("dogleg_1_intro_org", "targetname");
	var_14b42b8a namespace_cc27597::function_43718187("cin_ven_04_10_cafedoor_1st_sh010");
}

/*
	Name: function_1c33477
	Namespace: namespace_5a0096b2
	Checksum: 0x2520DBAD
	Offset: 0x1850
	Size: 0x73
	Parameters: 7
	Flags: None
*/
function function_1c33477(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self function_50ccee8d();
	}
	else
	{
		self function_48f26766();
	}
}

/*
	Name: function_ba9281fe
	Namespace: namespace_5a0096b2
	Checksum: 0x82F3FBFB
	Offset: 0x18D0
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_ba9281fe(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 && !namespace_82b91a51::function_193d7d1c())
	{
		self function_50ccee8d();
	}
	else
	{
		self function_48f26766();
	}
}

/*
	Name: function_93ef80c
	Namespace: namespace_5a0096b2
	Checksum: 0xA68F5DB5
	Offset: 0x1960
	Size: 0x11B
	Parameters: 7
	Flags: None
*/
function function_93ef80c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!self function_b80a9a41())
	{
		return;
	}
	if(!isdefined(self function_8448e0ee()))
	{
		return;
	}
	if(self function_8448e0ee() != var_ec74b091)
	{
		return;
	}
	if(var_9193c732)
	{
		if(!(isdefined(self.var_a2489af5) && self.var_a2489af5))
		{
			self thread namespace_68dfcbbe::function_a2489af5(var_ec74b091, "compassping_enemysatellite_diamond", 64, 0.25, 1, 1, "compassping_friendly");
		}
	}
	else if(isdefined(self.var_a2489af5) && self.var_a2489af5)
	{
		self thread namespace_68dfcbbe::function_5f9074e0(var_ec74b091);
	}
}

/*
	Name: function_71f88fc
	Namespace: namespace_5a0096b2
	Checksum: 0x3E72F95B
	Offset: 0x1A88
	Size: 0x541
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_7d372786)
{
	function_b375e682();
	switch(var_7d372786)
	{
		case 0:
		{
			break;
		}
		case 1:
		{
			function_2e76fa01("c_hro_hendricks_sing_body");
			function_2e76fa01("c_hro_hendricks_sing_head");
			function_2e76fa01("c_civ_zur_sing_male_5_face_fb_bloody");
			break;
		}
		case 2:
		{
			function_2e76fa01("c_hro_hendricks_sing_body");
			function_2e76fa01("c_hro_hendricks_sing_head");
			break;
		}
		case 3:
		{
			function_2e76fa01("c_54i_assault_body");
			function_2e76fa01("c_54i_assault_head1");
			function_2e76fa01("c_54i_assault_head2");
			function_2e76fa01("c_54i_assault_head3");
			function_2e76fa01("c_hro_hendricks_sing_body");
			function_2e76fa01("c_hro_hendricks_sing_head");
			function_2e76fa01("wpn_t7_ar_shva_prop_animate");
			function_2e76fa01("c_civ_zur_male_body1_1");
			function_2e76fa01("c_civ_zur_male_body1_2");
			function_2e76fa01("c_civ_zur_male_body1_3");
			function_2e76fa01("c_civ_zur_male_body1_4");
			function_2e76fa01("c_civ_zur_male_body2_1");
			function_2e76fa01("c_civ_zur_male_body2_2");
			function_2e76fa01("c_civ_zur_male_body2_3");
			function_2e76fa01("c_civ_zur_male_body2_4");
			function_2e76fa01("c_civ_zur_male_body4_1");
			function_2e76fa01("c_civ_zur_male_body4_2");
			function_2e76fa01("c_civ_zur_male_body4_3");
			function_2e76fa01("c_civ_zur_male_body4_4");
			function_2e76fa01("c_civ_zur_male_body5_1");
			function_2e76fa01("c_civ_zur_male_body5_2");
			function_2e76fa01("c_civ_zur_male_body5_3");
			function_2e76fa01("c_civ_zur_male_body5_4");
			function_2e76fa01("c_civ_egypt_male_body3_1");
			function_2e76fa01("c_civ_egypt_male_body3_2");
			function_2e76fa01("c_civ_egypt_male_body3_3");
			function_2e76fa01("c_civ_sing_male_head1");
			function_2e76fa01("c_civ_sing_male_head2");
			break;
		}
		case 4:
		{
			function_2e76fa01("c_civ_egypt_female_body1_4_bloody");
			function_2e76fa01("c_civ_zur_female_body1_2_bloody");
			function_2e76fa01("c_civ_zur_female_body3_3_bloody");
			function_2e76fa01("c_civ_zur_female_body4_2_bloody");
			function_2e76fa01("c_civ_sing_female_head1_bloody");
			function_2e76fa01("c_civ_sing_female_head2_bloody");
			break;
		}
		case 7:
		{
			function_2e76fa01("p7_ven_ctc_windows_01");
			break;
		}
		case 5:
		{
			break;
		}
		case 6:
		{
			function_2e76fa01("c_hro_hendricks_sing_body");
			function_2e76fa01("c_hro_hendricks_sing_head");
			function_2e76fa01("c_hro_rachel_sing_fb");
			function_2e76fa01("c_hro_goh_xiulan_base_cyberarm_burn_fb");
			function_71c4474e("cin_ven_12_01_1st_kane_rescue");
			function_71c4474e("cin_ven_12_kane_3rd_sh010");
			function_71c4474e("cin_ven_12_kane_3rd_sh020");
			function_71c4474e("cin_ven_12_kane_3rd_sh030");
			function_71c4474e("cin_ven_12_kane_3rd_sh040");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_5d084d45
	Namespace: namespace_5a0096b2
	Checksum: 0xA8462624
	Offset: 0x1FD8
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_5d084d45(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_80983c42("apartment_light_fire");
	}
	else
	{
		namespace_80983c42::function_67e7a937("apartment_light_fire");
	}
}

/*
	Name: function_23953002
	Namespace: namespace_5a0096b2
	Checksum: 0xF37A3D45
	Offset: 0x2068
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_23953002()
{
	level endon("hash_524d1cbf");
	level waittill("hash_7f1f9f3c");
	var_569bb3f4 = namespace_14b42b8a::function_7922262b("quadteaser_org", "targetname");
	function_c6d918f0(var_569bb3f4.var_722885f3, 550, 500, 40, 35);
	while(1)
	{
		level waittill("hash_71984294");
		function_c6d918f0(var_569bb3f4.var_722885f3, 550, 500, 30, 25);
	}
}

/*
	Name: function_1e770357
	Namespace: namespace_5a0096b2
	Checksum: 0xA2D82845
	Offset: 0x2128
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_1e770357(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		namespace_80983c42::function_80983c42("quad_tank_alley_volumetric");
	}
	else
	{
		namespace_80983c42::function_67e7a937("quad_tank_alley_volumetric");
	}
}

/*
	Name: function_37d4d605
	Namespace: namespace_5a0096b2
	Checksum: 0x780E3A71
	Offset: 0x21B8
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_37d4d605()
{
	level waittill("hash_132639c7");
	var_c13b7e2a = namespace_14b42b8a::function_7faf4c39("dogleg_2_glass_break", "targetname");
	foreach(var_d64f5bac in var_c13b7e2a)
	{
		function_534b3cba(0, var_d64f5bac.var_722885f3 + VectorScale((-1, 0, 0), 6), 60, 30, 0.5, 60, 60, 0, 1);
	}
}

/*
	Name: function_be296801
	Namespace: namespace_5a0096b2
	Checksum: 0x599E0F75
	Offset: 0x22C0
	Size: 0x35B
	Parameters: 0
	Flags: None
*/
function function_be296801()
{
	var_d9bfcc72 = function_244f59e6("garage_wall_hit_01_decal");
	var_b3bd5209 = function_244f59e6("garage_wall_hit_02_decal");
	var_8dbad7a0 = function_244f59e6("garage_wall_hit_03_decal");
	var_97cc307f = function_244f59e6("garage_wall_hit_04_decal");
	var_71c9b616 = function_244f59e6("garage_wall_hit_05_decal");
	var_4bc73bad = function_244f59e6("garage_wall_hit_06_decal");
	var_25c4c144 = function_244f59e6("garage_wall_hit_07_decal");
	var_2fd61a23 = function_244f59e6("garage_wall_hit_08_decal");
	var_9d39fba = function_244f59e6("garage_wall_hit_09_decal");
	var_d9bfcc72 thread function_cc435ce1();
	var_b3bd5209 thread function_cc435ce1();
	var_8dbad7a0 thread function_cc435ce1();
	var_97cc307f thread function_cc435ce1();
	var_71c9b616 thread function_cc435ce1();
	var_4bc73bad thread function_cc435ce1();
	var_25c4c144 thread function_cc435ce1();
	var_2fd61a23 thread function_cc435ce1();
	var_9d39fba thread function_cc435ce1();
	var_d9bfcc72 thread function_5bd50680("garage_wall_hit_01");
	var_b3bd5209 thread function_5bd50680("garage_wall_hit_02");
	var_8dbad7a0 thread function_5bd50680("garage_wall_hit_03");
	var_97cc307f thread function_5bd50680("garage_wall_hit_04");
	var_71c9b616 thread function_5bd50680("garage_wall_hit_05");
	var_4bc73bad thread function_5bd50680("garage_wall_hit_06");
	var_25c4c144 thread function_5bd50680("garage_wall_hit_07");
	var_2fd61a23 thread function_5bd50680("garage_wall_hit_08");
	var_9d39fba thread function_5bd50680("garage_wall_hit_09");
}

/*
	Name: function_cc435ce1
	Namespace: namespace_5a0096b2
	Checksum: 0x119B360A
	Offset: 0x2628
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_cc435ce1()
{
	foreach(var_b2afdf94 in self)
	{
		function_733db26(var_b2afdf94);
	}
}

/*
	Name: function_5bd50680
	Namespace: namespace_5a0096b2
	Checksum: 0x13D5FBBB
	Offset: 0x26C0
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_5bd50680(var_9d74d872)
{
	level waittill(var_9d74d872);
	foreach(var_b2afdf94 in self)
	{
		function_c879924d(var_b2afdf94);
	}
}

/*
	Name: function_6f79b65d
	Namespace: namespace_5a0096b2
	Checksum: 0xB78F8E3F
	Offset: 0x2768
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_6f79b65d()
{
	level waittill("hash_82cbfe2b");
	var_ac0ac802 = namespace_14b42b8a::function_7faf4c39("qt_trex_stomp", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		foreach(var_569bb3f4 in var_ac0ac802)
		{
			function_c6d918f0(var_569bb3f4.var_722885f3, 250, 350, 20, 10);
		}
		function_ca76ff24(var_ac0ac802[0].var_722885f3, 500, 1500);
		wait(1);
	}
	level waittill("hash_d801dbda");
	foreach(var_569bb3f4 in var_ac0ac802)
	{
		function_c6d918f0(var_569bb3f4.var_722885f3, 250, 350, 50, 40);
	}
	function_ca76ff24(var_ac0ac802[0].var_722885f3, 500, 1500);
}

/*
	Name: function_d8ca2a96
	Namespace: namespace_5a0096b2
	Checksum: 0x15BAC0F6
	Offset: 0x2970
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_d8ca2a96()
{
	function_d12009e4("backdraft_1a_blinds", "pause", "unloop", "goto_start");
	function_d12009e4("backdraft_1b_blinds", "pause", "unloop", "goto_start");
	function_d12009e4("backdraft_1c_blinds", "pause", "unloop", "goto_start");
	level waittill("hash_704aebad");
	function_d12009e4("backdraft_1a_blinds", "unpause");
	function_d12009e4("backdraft_1b_blinds", "unpause");
	function_d12009e4("backdraft_1c_blinds", "unpause");
}

/*
	Name: function_b2c7b02d
	Namespace: namespace_5a0096b2
	Checksum: 0xA53FF0C3
	Offset: 0x2A80
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b2c7b02d()
{
	function_d12009e4("backdraft_2_blinds", "pause", "unloop", "goto_start");
	level waittill("hash_2a99eaf6");
	function_d12009e4("backdraft_2_blinds", "unpause");
}

/*
	Name: function_8cc535c4
	Namespace: namespace_5a0096b2
	Checksum: 0xD0798A
	Offset: 0x2AF0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_8cc535c4()
{
	function_d12009e4("backdraft_3a_blinds", "pause", "unloop", "goto_start");
	function_d12009e4("backdraft_3b_blinds", "pause", "unloop", "goto_start");
	level waittill("hash_9013621b");
	function_d12009e4("backdraft_3a_blinds", "unpause");
	function_d12009e4("backdraft_3b_blinds", "unpause");
}

/*
	Name: function_6c85145c
	Namespace: namespace_5a0096b2
	Checksum: 0xD49CBC70
	Offset: 0x2BB0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_6c85145c()
{
	function_d12009e4("safehouse_falling_debris", "pause", "unloop", "goto_start");
	function_d12009e4("safehouse_falling_debris_rail", "pause", "unloop", "goto_start");
	level waittill("hash_d41345fd");
	function_d12009e4("safehouse_falling_debris", "unpause");
	function_d12009e4("safehouse_falling_debris_rail", "unpause");
}

/*
	Name: function_1401c820
	Namespace: namespace_5a0096b2
	Checksum: 0xCCC2D3E5
	Offset: 0x2C70
	Size: 0x37B
	Parameters: 7
	Flags: None
*/
function function_1401c820(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_8f5b0626 = 0;
		var_b4a26be3 = 0;
		var_42c8409b = 0.1;
		var_83bdc800 = 0.4;
		var_f5c5373b = 0.35;
		var_cfc2bcd2 = 0.25;
		var_cc07c7f3 = 0.1;
		var_5a0058b8 = 0.1;
		var_8002d321 = 0.55;
		var_3e0f372e = 0.25;
		while(var_8f5b0626 < var_83bdc800)
		{
			var_8f5b0626 = var_8f5b0626 + var_42c8409b * var_83bdc800;
			if(isdefined(self))
			{
				self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", 0, var_8f5b0626, 0, 0);
			}
			else
			{
				return;
			}
			wait(var_42c8409b);
		}
		while(var_8f5b0626 < var_f5c5373b)
		{
			var_8f5b0626 = var_8f5b0626 + var_42c8409b * var_f5c5373b;
			if(isdefined(self))
			{
				self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", 0, var_8f5b0626, 0, 0);
			}
			else
			{
				return;
			}
			wait(var_42c8409b);
		}
		while(var_8f5b0626 < var_f5c5373b)
		{
			var_8f5b0626 = var_8f5b0626 + var_42c8409b * var_f5c5373b;
			if(isdefined(self))
			{
				self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", 0, var_8f5b0626, 0, 0);
			}
			else
			{
				return;
			}
			wait(var_42c8409b);
		}
		while(var_8f5b0626 < var_5a0058b8)
		{
			var_b4a26be3 = var_b4a26be3 + var_42c8409b * var_5a0058b8;
			if(isdefined(self))
			{
				self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", var_b4a26be3, var_8f5b0626, 0, 0);
			}
			else
			{
				return;
			}
			wait(var_42c8409b);
		}
		while(var_8f5b0626 < var_8002d321)
		{
			var_b4a26be3 = var_b4a26be3 + var_42c8409b * var_8002d321;
			if(isdefined(self))
			{
				self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", var_b4a26be3, var_8f5b0626, 0, 0);
			}
			else
			{
				return;
			}
			wait(var_42c8409b);
		}
		while(var_8f5b0626 < var_3e0f372e)
		{
			var_b4a26be3 = var_b4a26be3 + var_42c8409b * var_3e0f372e;
			if(isdefined(self))
			{
				self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", var_b4a26be3, var_8f5b0626, 0, 0);
			}
			else
			{
				return;
			}
			wait(var_42c8409b);
		}
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_5a0096b2
	Checksum: 0x3041F07C
	Offset: 0x2FF8
	Size: 0x171
	Parameters: 1
	Flags: None
*/
function function_aebcf025(var_ec74b091)
{
	if(!isdefined(level.var_be75cb3c))
	{
		return;
	}
	if(!function_45e7dc7f())
	{
		foreach(var_6df9264 in level.var_be75cb3c)
		{
			if(isdefined(var_6df9264))
			{
				function_201670be(var_6df9264);
			}
			if(var_c957f6b6 % 25 == 0)
			{
				wait(0.016);
			}
		}
		break;
	}
	foreach(var_6df9264 in level.var_be75cb3c)
	{
		if(isdefined(var_6df9264))
		{
			function_28aac069(var_6df9264);
		}
	}
}

