#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_mobile_armory;
#using scripts\cp\_objectives;
#using scripts\cp\_quadtank_util;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection_village_surreal;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_1bcb6ea8;

/*
	Name: function_ff58a260
	Namespace: namespace_1bcb6ea8
	Checksum: 0xBC0802DE
	Offset: 0xAA0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	namespace_71e9cb84::function_50f16166("world", "light_church_int_cath_all", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "toggle_cathedral_fog_banks", 1, 1, "int");
}

/*
	Name: function_7c4081cb
	Namespace: namespace_1bcb6ea8
	Checksum: 0x1A022DF5
	Offset: 0xB10
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_7c4081cb(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_e905c73c);
}

/*
	Name: function_9fdc48d2
	Namespace: namespace_1bcb6ea8
	Checksum: 0x1BDA99A2
	Offset: 0xB68
	Size: 0x7B
	Parameters: 4
	Flags: None
*/
function function_9fdc48d2(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_36cbf523::function_aa0ddbc3(0);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_e905c73c);
	level thread function_bcf5c753();
}

/*
	Name: function_56c1b3cc
	Namespace: namespace_1bcb6ea8
	Checksum: 0x166BC975
	Offset: 0xBF0
	Size: 0x2EB
	Parameters: 2
	Flags: None
*/
function function_56c1b3cc(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
	}
	level thread function_85611d5b();
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_church_explode_01_bundle", &function_9ad74a02, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_church_explode_02_bundle", &function_e3cbb3ec, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_church_tank_02_bundle", &function_99a9f593, "done");
	namespace_cc27597::function_8f9f34e0("cin_inf_11_04_fold_vign_walk_end_unreveal", &function_8c83aff9, "play");
	var_e9020a33 = namespace_82b91a51::function_740f8516("sarah");
	if(var_74cd64bc)
	{
		function_1319db1b();
		namespace_d7916d65::function_a2995f22();
	}
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
	if(var_74cd64bc)
	{
		var_e9020a33 thread namespace_cc27597::function_43718187("cin_inf_11_04_fold_vign_walk_end", var_e9020a33);
	}
	if(isdefined(level.var_44ab3893))
	{
		level thread [[level.var_44ab3893]]();
	}
	level namespace_71e9cb84::function_74d6b22f("kill_light_church_ext_window", 1);
	wait(2);
	var_e9020a33 thread namespace_cc27597::function_43718187("cin_inf_11_04_fold_vign_walk_end_unreveal", var_e9020a33);
	wait(3);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_church_tank_01_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_church_explode_01_bundle");
	level waittill("hash_29e5a19f");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_church_tank_02_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_church_explode_02_bundle");
	function_8aabc20e();
	level waittill("hash_ad9dbc82");
	level namespace_71e9cb84::function_74d6b22f("light_church_int_all", 0);
	level namespace_71e9cb84::function_74d6b22f("light_church_int_cath_all", 0);
}

/*
	Name: function_8c83aff9
	Namespace: namespace_1bcb6ea8
	Checksum: 0xBD3E7D26
	Offset: 0xEE8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8c83aff9(var_c77d2837)
{
	var_c77d2837["sarah"] namespace_71e9cb84::function_74d6b22f("sarah_body_light", 0);
	var_c77d2837["sarah"] thread namespace_36cbf523::function_9110a277(1);
}

/*
	Name: function_cbb5d383
	Namespace: namespace_1bcb6ea8
	Checksum: 0x88C5E286
	Offset: 0xF50
	Size: 0x1DB
	Parameters: 2
	Flags: None
*/
function function_cbb5d383(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
	}
	function_e0d63cf4();
	function_f46b47c();
	var_5948b3df = function_6ada35ba("cathedral_sarah_at_altar", "targetname");
	var_5948b3df function_175e6b8e(0);
	namespace_80983c42::function_80983c42("fx_light_cathedral_lightning");
	namespace_80983c42::function_80983c42("cathedral_alter_candle_lights");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
		function_e32e0193();
	}
	namespace_f25bd8c8::function_211b07c5();
	if(level.var_2395e945.size > 0)
	{
		function_c63f5a62();
	}
	level namespace_ad23e503::function_1ab5ebec("cathedral_quad_tank_destroyed");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_destroy_quadtank");
	namespace_82b91a51::function_67520c6a(2, undefined, &namespace_f25bd8c8::function_2c8ffdaf);
	function_e5a6d1b6();
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	function_611a9795();
	function_6d3642e();
	function_4043ed0a();
}

/*
	Name: function_bb28f49a
	Namespace: namespace_1bcb6ea8
	Checksum: 0xB0D61209
	Offset: 0x1138
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_bb28f49a()
{
	level namespace_71b8dba1::function_13b3b16a("plyr_what_the_fuck_0", 1);
	level thread namespace_71b8dba1::function_a463d127("hall_brute_force_somet_0", 0, "NO_DNI");
}

/*
	Name: function_b6b71003
	Namespace: namespace_1bcb6ea8
	Checksum: 0x10B5CEB6
	Offset: 0x11A0
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_b6b71003(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_c35e6aab("sarah_distance_objective");
	level thread function_f46b47c();
	function_611a9795();
	function_6d3642e();
	function_4043ed0a();
	level thread namespace_1d795d47::function_be8adfb8("dev_cathedral_outro");
}

/*
	Name: function_956d2096
	Namespace: namespace_1bcb6ea8
	Checksum: 0xAD6BD776
	Offset: 0x1248
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_956d2096(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_e0d63cf4
	Namespace: namespace_1bcb6ea8
	Checksum: 0x6C2CCA6
	Offset: 0x1278
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_e0d63cf4()
{
	namespace_2f06d687::function_2b37a3c9("sm_cathedral_guys", "script_noteworthy", &namespace_36cbf523::function_b86426b1);
	namespace_2f06d687::function_2b37a3c9("sm_cathedral_guys", "script_noteworthy", &function_64a8118d);
	namespace_36cbf523::function_aa0ddbc3(1);
	level namespace_ad23e503::function_c35e6aab("cathedral_quad_tank_destroyed");
	level namespace_ad23e503::function_c35e6aab("sarah_distance_objective");
}

/*
	Name: function_1319db1b
	Namespace: namespace_1bcb6ea8
	Checksum: 0x97CD6035
	Offset: 0x1340
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_1319db1b()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_church_explode_01_bundle", &function_452b629a, "init");
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_church_explode_01_bundle");
	level namespace_71e9cb84::function_74d6b22f("light_church_int_cath_all", 1);
}

/*
	Name: function_452b629a
	Namespace: namespace_1bcb6ea8
	Checksum: 0xF9FE026F
	Offset: 0x13B8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_452b629a(var_c77d2837)
{
	var_c77d2837[0] function_fef374cd();
}

/*
	Name: function_e32e0193
	Namespace: namespace_1bcb6ea8
	Checksum: 0x7235B36C
	Offset: 0x13E8
	Size: 0x1A3
	Parameters: 1
	Flags: None
*/
function function_e32e0193(var_5152e048)
{
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_c03736ba::function_e9f7384d);
	var_6ba9931 = function_6ada35ba("quad_tank_cathedral", "script_noteworthy");
	var_1b1b9e26 = namespace_2f06d687::function_7387a40a(var_6ba9931, &function_526e9212);
	if(isdefined(var_5152e048))
	{
		var_1b1b9e26.var_722885f3 = var_5152e048.var_722885f3;
		var_1b1b9e26.var_6ab6f4fd = var_5152e048.var_6ab6f4fd;
	}
	namespace_cc27597::function_8f9f34e0("cin_inf_11_05_fold_vign_qtbirth", &function_50768ebe, "done");
	level thread namespace_cc27597::function_43718187("cin_inf_11_05_fold_vign_qtbirth", var_1b1b9e26);
	level thread namespace_cc27597::function_43718187("cin_inf_11_05_fold_vign_tigertank");
	level thread function_bb28f49a();
	var_ab891f49 = function_6ada35ba("quadtank_goal_volume", "targetname");
	var_1b1b9e26 function_169cc712(var_ab891f49);
}

/*
	Name: function_50768ebe
	Namespace: namespace_1bcb6ea8
	Checksum: 0xC0CF87B2
	Offset: 0x1598
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_50768ebe(var_38fa6e84)
{
	level notify("hash_50768ebe");
}

/*
	Name: function_526e9212
	Namespace: namespace_1bcb6ea8
	Checksum: 0x249ACBE3
	Offset: 0x15C0
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_526e9212()
{
	self namespace_82b91a51::function_e218424d();
	self namespace_3fc75f50::function_4c6ee4cc(0);
	self waittill("hash_58adff7c");
	self namespace_3fc75f50::function_fefa9078();
	level waittill("hash_50768ebe");
	self namespace_3fc75f50::function_4c6ee4cc(1);
	self thread function_74e24b66();
	self thread function_1828efd2();
	self thread function_3546987d();
	self thread namespace_855113f3::function_35209d64();
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("cathedral_quad_tank_destroyed");
}

/*
	Name: function_74e24b66
	Namespace: namespace_1bcb6ea8
	Checksum: 0xDC81C567
	Offset: 0x16D0
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_74e24b66()
{
	self endon("hash_128f8789");
	while(1)
	{
		self namespace_82b91a51::function_564f2d81("trophy_system_disabled", "trophy_system_destroyed");
		var_2eecd77a = namespace_d5067552::function_423eae50("sm_cathedral_lower");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2eecd77a.size; var_c957f6b6++)
		{
			if(var_c957f6b6 < 5 && function_316422d1(self.var_722885f3, var_2eecd77a[var_c957f6b6].var_722885f3) > 40000)
			{
				self thread function_b26e24ab(var_2eecd77a[var_c957f6b6]);
			}
		}
		self waittill("hash_f015cdf7");
		var_2eecd77a = namespace_d5067552::function_423eae50("sm_cathedral_lower");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2eecd77a.size; var_c957f6b6++)
		{
			var_2eecd77a[var_c957f6b6] function_e11ce512();
		}
	}
}

/*
	Name: function_1828efd2
	Namespace: namespace_1bcb6ea8
	Checksum: 0xD16841F4
	Offset: 0x1838
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_1828efd2()
{
	self endon("hash_128f8789");
	self thread function_6a01df15("church_pillars_explode_01", "p7_fxanim_cp_infection_church_pillars_explode_01_bundle");
	self thread function_6a01df15("church_pillars_explode_02", "p7_fxanim_cp_infection_church_pillars_explode_02_bundle");
	self thread function_6a01df15("church_pillars_explode_03", "p7_fxanim_cp_infection_church_pillars_explode_03_bundle");
	self thread function_6a01df15("church_pillars_explode_04", "p7_fxanim_cp_infection_church_pillars_explode_04_bundle");
}

/*
	Name: function_6a01df15
	Namespace: namespace_1bcb6ea8
	Checksum: 0xD1408385
	Offset: 0x18F0
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_6a01df15(var_f7ebb04b, var_65f65be)
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec(var_f7ebb04b);
	var_5948b3df = function_6ada35ba(var_f7ebb04b, "targetname");
	var_377a9c22 = function_9b7fda5e("script_origin", var_5948b3df.var_722885f3);
	self function_3488d445(var_377a9c22);
	self waittill("hash_4ab576df");
	self function_90ad4ed1(0, var_377a9c22);
	level namespace_cc27597::function_43718187(var_65f65be, "scriptbundlename");
}

/*
	Name: function_b26e24ab
	Namespace: namespace_1bcb6ea8
	Checksum: 0x12091CC6
	Offset: 0x19F0
	Size: 0x107
	Parameters: 1
	Flags: None
*/
function function_b26e24ab(var_d84e54db)
{
	self endon("hash_f015cdf7");
	self endon("hash_128f8789");
	var_d84e54db endon("hash_128f8789");
	var_5f76c18b = 150;
	var_d59f2b65 = 350;
	var_ec020d8 = 48;
	while(1)
	{
		var_72237359 = [];
		var_72237359 = namespace_82b91a51::function_ee78923e(self.var_722885f3, var_5f76c18b, var_d59f2b65, var_ec020d8, 70, var_d84e54db);
		if(var_72237359.size)
		{
			var_d84e54db function_169cc712(namespace_84970cc4::function_47d18840(var_72237359), 1);
		}
		wait(function_72a94f05(0.5, 1));
	}
}

/*
	Name: function_3546987d
	Namespace: namespace_1bcb6ea8
	Checksum: 0x26115F2F
	Offset: 0x1B00
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_3546987d()
{
	namespace_d0ef8521::function_31cd1834("cp_level_infection_follow_sarah");
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_destroy_quadtank", self);
}

/*
	Name: function_f46b47c
	Namespace: namespace_1bcb6ea8
	Checksum: 0x7A5AD1F3
	Offset: 0x1B40
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_f46b47c()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_church_pillars_explode_01_bundle", "scriptbundlename");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_church_pillars_explode_02_bundle", "scriptbundlename");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_church_pillars_explode_03_bundle", "scriptbundlename");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_church_pillars_explode_04_bundle", "scriptbundlename");
	namespace_cc27597::function_8f9f34e0("cin_inf_11_06_fold_vign_hell", &function_517e0167, "init");
	namespace_cc27597::function_8f9f34e0("cin_inf_11_06_fold_vign_hell", &function_a4194ec3, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_cathedral_floor_bundle", &function_d0dfc621, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_12_01_underwater_1st_fall_01", &function_5661e491, "play");
}

/*
	Name: function_e5a6d1b6
	Namespace: namespace_1bcb6ea8
	Checksum: 0x352B149E
	Offset: 0x1CB0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_e5a6d1b6()
{
	var_357e383d = 0;
	var_e3b635fb = function_b8494651("axis");
	for(var_e3b635fb = namespace_84970cc4::function_b87262e(var_e3b635fb, 0); var_e3b635fb.size > 0 && var_357e383d < 3;  = namespace_84970cc4::function_b87262e(var_e3b635fb, 0))
	{
		wait(0.1);
		var_357e383d = var_357e383d + 0.1;
		var_e3b635fb = function_b8494651("axis");
	}
}

/*
	Name: function_96d3596c
	Namespace: namespace_1bcb6ea8
	Checksum: 0xC1E03CB3
	Offset: 0x1D90
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_96d3596c()
{
	namespace_d5067552::function_bae40a28("sm_cathedral_upper");
	namespace_d5067552::function_bae40a28("sm_cathedral_lower");
	namespace_4dbf3ae3::function_4ab4cb6(20, "cathedral_intro_reverse");
	if(level.var_2395e945.size <= 2)
	{
		namespace_d5067552::function_41cd3a68(21);
	}
	if(level.var_2395e945.size >= 3)
	{
		namespace_d5067552::function_41cd3a68(31);
	}
}

/*
	Name: function_c63f5a62
	Namespace: namespace_1bcb6ea8
	Checksum: 0x8ED0D0E1
	Offset: 0x1E40
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_c63f5a62()
{
	namespace_36cbf523::function_c8d7e76("cathedral_reverse_anim");
	level thread function_96d3596c();
	level thread namespace_bed101ee::function_b716312();
	level namespace_ad23e503::function_1ab5ebec("cathedral_quad_tank_destroyed");
	namespace_d5067552::function_2992720d("sm_cathedral_upper");
	namespace_d5067552::function_2992720d("sm_cathedral_lower");
	namespace_82b91a51::function_76f13293();
	level thread function_bcf5c753();
}

/*
	Name: function_bcf5c753
	Namespace: namespace_1bcb6ea8
	Checksum: 0x62D9C5DA
	Offset: 0x1F10
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_bcf5c753()
{
	var_e3b635fb = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
	{
		if(function_5b49d38c(var_e3b635fb[var_c957f6b6]))
		{
			var_e3b635fb[var_c957f6b6] function_2992720d();
			wait(0.1);
		}
	}
}

/*
	Name: function_611a9795
	Namespace: namespace_1bcb6ea8
	Checksum: 0x74A104C8
	Offset: 0x1FB0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_611a9795()
{
	level namespace_cc27597::function_c35e6aab("cin_inf_11_06_fold_vign_hell");
}

/*
	Name: function_6d3642e
	Namespace: namespace_1bcb6ea8
	Checksum: 0x89F2AE71
	Offset: 0x1FE0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_6d3642e()
{
	var_5948b3df = function_6ada35ba("cathedral_sarah_at_altar", "targetname");
	var_5948b3df function_175e6b8e(1);
	var_5948b3df waittill("hash_4dbf3ae3", var_aef176e7);
	level.var_26e8728a = var_aef176e7;
	level namespace_ad23e503::function_74d6b22f("sarah_distance_objective");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_confront_sarah");
	level thread namespace_bed101ee::function_af130cfc();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
}

/*
	Name: function_4043ed0a
	Namespace: namespace_1bcb6ea8
	Checksum: 0xF28808EE
	Offset: 0x20D8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_4043ed0a()
{
	level namespace_cc27597::function_43718187("cin_inf_11_06_fold_vign_hell", level.var_26e8728a);
	level waittill("hash_319c8cf7");
	level thread namespace_1d795d47::function_be8adfb8("cathedral");
}

/*
	Name: function_5661e491
	Namespace: namespace_1bcb6ea8
	Checksum: 0x4D72EB81
	Offset: 0x2138
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_5661e491(var_c77d2837)
{
	level thread namespace_bed101ee::function_973b77f9();
}

/*
	Name: function_d0dfc621
	Namespace: namespace_1bcb6ea8
	Checksum: 0xE008DE10
	Offset: 0x2168
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_d0dfc621(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("cathedral_water_state", 1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_50bfe0b5(6, 1);
		function_9cf04c2e(0.22, 7, var_5dc5e20a.var_722885f3, 150);
	}
}

/*
	Name: function_517e0167
	Namespace: namespace_1bcb6ea8
	Checksum: 0xEAB39875
	Offset: 0x2260
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_517e0167(var_c77d2837)
{
	if(!level namespace_ad23e503::function_7922262b("sarah_distance_objective"))
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_infection_confront_sarah", var_c77d2837["sarah"]);
	}
	var_c77d2837["sarah"] thread namespace_36cbf523::function_9110a277(0);
}

/*
	Name: function_a4194ec3
	Namespace: namespace_1bcb6ea8
	Checksum: 0x89AFEFD
	Offset: 0x22E0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_a4194ec3(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("toggle_cathedral_fog_banks", 1);
	level thread namespace_cc27597::function_c35e6aab("cin_inf_12_01_underwater_1st_fall_underwater02");
	level waittill("hash_bd8dec38");
	var_c77d2837["sarah"] thread namespace_36cbf523::function_9110a277(1);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_cathedral_floor_bundle");
	level thread function_ee14f7e6();
	level waittill("hash_88307bc9");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_cathedral_floor_bundle");
}

/*
	Name: function_ee14f7e6
	Namespace: namespace_1bcb6ea8
	Checksum: 0x12AA72D4
	Offset: 0x23C8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_ee14f7e6()
{
	while(!namespace_cc27597::function_92591589("p7_fxanim_cp_infection_cathedral_floor_bundle"))
	{
		wait(0.05);
	}
	function_9e3608e3("inf_cathedral_floor_fxanim");
}

/*
	Name: function_50bfe0b5
	Namespace: namespace_1bcb6ea8
	Checksum: 0x663BF823
	Offset: 0x2418
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_50bfe0b5(var_524f5a91, var_506b336f)
{
	self endon("hash_128f8789");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_524f5a91; var_c957f6b6++)
	{
		self function_e2af603e("cp_infection_floor_break");
		wait(var_506b336f);
	}
}

/*
	Name: function_85611d5b
	Namespace: namespace_1bcb6ea8
	Checksum: 0x59320106
	Offset: 0x2490
	Size: 0x3D9
	Parameters: 0
	Flags: None
*/
function function_85611d5b()
{
	level thread namespace_bed101ee::function_973b77f9();
	var_db8e4d94 = function_99201f25("church_door", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(var_db8e4d94.size, "Dev Block strings are not supported");
	#/
	var_5c953c1c = [];
	foreach(var_edaada1 in var_db8e4d94)
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_edaada1.var_8202763a), "Dev Block strings are not supported" + var_edaada1.var_722885f3 + "Dev Block strings are not supported");
		#/
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_edaada1.var_b07228b6), "Dev Block strings are not supported" + var_edaada1.var_722885f3 + "Dev Block strings are not supported");
		#/
		var_2aa12782 = namespace_14b42b8a::function_7922262b(var_edaada1.var_b07228b6, "targetname");
		var_be1f149f = function_9b7fda5e("script_origin", var_2aa12782.var_722885f3);
		var_edaada1 function_37f7858a(var_be1f149f);
		var_be1f149f function_21d0da55(var_edaada1.var_8202763a, 1.5, 0.25, 0.25);
		var_be1f149f function_921a1574("evt_church_doors_close");
		if(!isdefined(var_5c953c1c))
		{
			var_5c953c1c = [];
		}
		else if(!function_6e2770d8(var_5c953c1c))
		{
			var_5c953c1c = function_84970cc4(var_5c953c1c);
		}
		var_5c953c1c[var_5c953c1c.size] = var_be1f149f;
	}
	wait(1.5);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("damage_heavy");
	}
	foreach(var_be1f149f in var_5c953c1c)
	{
		var_be1f149f function_dc8c8404();
	}
}

/*
	Name: function_8aabc20e
	Namespace: namespace_1bcb6ea8
	Checksum: 0x5895E89A
	Offset: 0x2878
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_8aabc20e()
{
	var_10729d99 = namespace_14b42b8a::function_7922262b("church_in_foy", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_10729d99), "Dev Block strings are not supported");
	#/
	var_96eed922 = namespace_14b42b8a::function_7922262b("church_inside_cathedral", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_96eed922), "Dev Block strings are not supported");
	#/
	var_4e7ce67b = namespace_82b91a51::function_b9fd52a4("tag_origin", var_10729d99.var_722885f3, var_10729d99.var_6ab6f4fd);
	var_fc400d58 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_96eed922.var_722885f3, var_96eed922.var_6ab6f4fd);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_85536595 = var_4e7ce67b function_7a465687(var_5dc5e20a.var_722885f3);
		var_baf9d36 = var_fc400d58 function_d3197299(var_85536595);
		var_6cac4ba4 = function_35495468(var_fc400d58.var_6ab6f4fd - var_4e7ce67b.var_6ab6f4fd, var_5dc5e20a function_89c87c9c());
		var_5dc5e20a function_a30814d(var_baf9d36);
		var_5dc5e20a function_eda2be50(var_6cac4ba4);
	}
	var_4e7ce67b function_dc8c8404();
	var_fc400d58 function_dc8c8404();
	namespace_1d795d47::function_be8adfb8("church");
}

/*
	Name: function_9ad74a02
	Namespace: namespace_1bcb6ea8
	Checksum: 0xCEC979F5
	Offset: 0x2B38
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_9ad74a02(var_c77d2837)
{
	level waittill("hash_252cf940");
	level namespace_71e9cb84::function_74d6b22f("light_church_int_all", 1);
	namespace_84970cc4::function_57dd1fd4(level.var_2395e945, &function_252cf940, var_c77d2837[0]);
}

/*
	Name: function_252cf940
	Namespace: namespace_1bcb6ea8
	Checksum: 0x977D5D03
	Offset: 0x2BB0
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_252cf940(var_4aa3a795)
{
	var_89c338ec = var_4aa3a795.var_722885f3 - self.var_722885f3;
	var_89c338ec = function_f679a325(var_89c338ec);
	var_d230ad83 = function_bc7ce905(self.var_6ab6f4fd);
	var_ab382970 = function_5f9a4869(var_89c338ec, var_d230ad83);
	if(var_ab382970 >= 0)
	{
		var_a6cdd544 = -1;
	}
	else
	{
		var_a6cdd544 = 1;
	}
	var_a080d759 = function_bc7ce905(self.var_6ab6f4fd);
	var_e03fdb7 = var_a6cdd544 * 1200;
	self function_f5df04e6(var_a080d759 * var_e03fdb7);
}

/*
	Name: function_e3cbb3ec
	Namespace: namespace_1bcb6ea8
	Checksum: 0xC39D247B
	Offset: 0x2CE8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_e3cbb3ec(var_c77d2837)
{
	var_c77d2837[0] function_fef374cd();
	level waittill("hash_99bc006e");
	var_c77d2837[0] function_422037f5();
}

/*
	Name: function_99a9f593
	Namespace: namespace_1bcb6ea8
	Checksum: 0xFFF6D7DE
	Offset: 0x2D40
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_99a9f593(var_c77d2837)
{
	var_f793f80e = var_c77d2837["tiger_tank_cinematic"];
	function_e32e0193(var_f793f80e);
}

/*
	Name: function_64a8118d
	Namespace: namespace_1bcb6ea8
	Checksum: 0x5DBCC4AB
	Offset: 0x2D88
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_64a8118d()
{
	self.var_15dfd6c = 0.7;
}

