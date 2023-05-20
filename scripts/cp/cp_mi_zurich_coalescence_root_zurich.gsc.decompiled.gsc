#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_root_cinematics;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_6a04e6cd;

/*
	Name: function_d290ebfa
	Namespace: namespace_6a04e6cd
	Checksum: 0xCEE10A82
	Offset: 0xBE0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	var_b2a6f229 = function_99201f25("root_zurich_spawners", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_b2a6f229, &namespace_2f06d687::function_994832bd, &namespace_82b91a51::function_65ba133d);
	var_603657ba = function_99201f25("root_zurich_robot_spawners", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_603657ba, &namespace_2f06d687::function_994832bd, &namespace_8e9083ff::function_d8c91e6b);
}

/*
	Name: function_2ea898a8
	Namespace: namespace_6a04e6cd
	Checksum: 0x3211216D
	Offset: 0xCC0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "zurich_snow_rise", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "reflection_extracam", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "zurich_vinewall_init", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "root_vine_cleanup", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "mirror_break", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "mirror_warp", 1, 1, "int");
}

/*
	Name: function_9c1fc2fd
	Namespace: namespace_6a04e6cd
	Checksum: 0xF51F0584
	Offset: 0xDF0
	Size: 0x2E3
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	if(var_74cd64bc)
	{
		level namespace_82b91a51::function_7e61de2b(0);
	}
	level namespace_cc27597::function_c35e6aab("cin_zur_12_01_root_1st_mirror_01");
	if(isdefined(level.var_405a73a5))
	{
		level thread [[level.var_405a73a5]]();
	}
	var_4ccf970 = namespace_8e9083ff::function_a00fa665(var_b04bc952);
	namespace_80983c42::function_80983c42("zurich_lightning_exp");
	namespace_8e9083ff::function_4d032f25(1, 0.5);
	namespace_2f06d687::function_2b37a3c9("raven_ambush_ai", "script_parameters", &namespace_8e9083ff::function_aceff870);
	level thread function_2d897f84(var_b04bc952);
	level thread function_187dfb55();
	level thread function_8182f3c5();
	level thread function_9831305d();
	namespace_d7916d65::function_a2995f22();
	namespace_1d795d47::function_552e05fb(var_b04bc952, 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_82b91a51::function_df6eb506, 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "zurich_vinewall_init", 1);
	level namespace_8e9083ff::function_b0f0dd1f(1, "light_snow");
	level thread function_aa95075d(var_b04bc952);
	level thread function_53a7bcca();
	level thread namespace_8e9083ff::function_a03f30f2(var_b04bc952, "root_zurich_vortex", "root_zurich_regroup");
	level thread namespace_8e9083ff::function_dd842585(var_b04bc952, "root_zurich_vortex", "t_root_zurich_vortex");
	level waittill(var_b04bc952 + "enter_vortex");
	level thread namespace_67110270::function_973b77f9();
	level thread function_95b88092("root_zurich_vortex", 0);
}

/*
	Name: function_95b88092
	Namespace: namespace_6a04e6cd
	Checksum: 0x1921466E
	Offset: 0x10E0
	Size: 0x2C3
	Parameters: 2
	Flags: None
*/
function function_95b88092(var_b04bc952, var_74cd64bc)
{
	if(isdefined(var_74cd64bc) && var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d7916d65::function_a2995f22();
		namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
		namespace_8e9083ff::function_4d032f25(1, 0.5);
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			var_6bfe1586 thread namespace_82b91a51::function_df6eb506(1);
		}
	}
	else if(isdefined(level.var_45d30b5a))
	{
		level thread [[level.var_45d30b5a]]();
	}
	level thread namespace_cc27597::function_c35e6aab("zurich_fxanim_heart_ceiling", "targetname");
	namespace_80983c42::function_80983c42("heartLightsZurich");
	level thread namespace_67110270::function_973b77f9();
	level namespace_82b91a51::function_ef3f75eb("stZURmus");
	level thread function_1ef8526e();
	level namespace_8e9083ff::function_c90e23b6(var_b04bc952);
	level.var_1c26230b thread namespace_8e9083ff::function_fe5160df(1);
	if(level.var_2395e945 === 1)
	{
		namespace_9f824288::function_5d2cdd99();
	}
	var_8fb0849a = namespace_8e9083ff::function_a1851f86(var_b04bc952);
	var_8fb0849a waittill("hash_40b1a9d9");
	level thread namespace_bbb4ee72::function_b319df2(var_b04bc952, var_8fb0849a.var_90971f20.var_6bfe1586);
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	function_4a0fb95e("cp_zurich_env_corvusmonitor");
	namespace_80983c42::function_67e7a937("zurich_lightning_exp");
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_6a04e6cd
	Checksum: 0xAF5B749
	Offset: 0x13B0
	Size: 0x131
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level notify("hash_c955b42d");
	level namespace_8e9083ff::function_b0f0dd1f(0);
	level namespace_71e9cb84::function_331efedc("root_vine_cleanup");
	level thread namespace_8e9083ff::function_4a00a473("root_zurich");
	level namespace_82b91a51::function_ef3f75eb("stp_mus");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 thread namespace_82b91a51::function_df6eb506(0);
	}
}

/*
	Name: function_a61dfb7
	Namespace: namespace_6a04e6cd
	Checksum: 0xFE09517C
	Offset: 0x14F0
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_a61dfb7()
{
	level endon("hash_1d98ceef");
	level namespace_ad23e503::function_1ab5ebec("flag_monologue_zurich_root_01");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_don_t_understand_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_talk_to_me_please_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_don_t_know_what_s_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_don_t_know_what_to_0", 3);
	level namespace_ad23e503::function_1ab5ebec("flag_monologue_zurich_root_02");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_know_corvus_is_ins_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_know_it_s_trying_t_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_want_to_get_it_out_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_have_to_keep_going_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_have_to_finish_thi_0", 3);
	level namespace_ad23e503::function_1ab5ebec("flag_monologue_zurich_root_03");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_m_coming_for_you_c_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_destroyed_my_tea_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_destroyed_my_fri_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_m_going_to_find_yo_0", 3);
	level namespace_ad23e503::function_1ab5ebec("flag_monologue_zurich_root_04");
	level namespace_71b8dba1::function_13b3b16a("plyr_do_you_hear_me_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_it_doesn_t_matter_wh_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_will_not_let_go_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_do_you_hear_me_i_wi_0", 3);
	level namespace_ad23e503::function_74d6b22f("flag_monologue_zurich_root_04_done");
}

/*
	Name: function_1ef8526e
	Namespace: namespace_6a04e6cd
	Checksum: 0x7C08B7B5
	Offset: 0x17C8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1ef8526e()
{
	level endon("hash_1d98ceef");
	level namespace_ad23e503::function_1ab5ebec("flag_monologue_zurich_root_04_done");
	level namespace_71b8dba1::function_a463d127("salm_the_human_mind_holds_0", 4, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("salm_our_ability_to_analy_0", 1, "NO_DNI");
}

/*
	Name: function_9dd2872e
	Namespace: namespace_6a04e6cd
	Checksum: 0xAFFECDA8
	Offset: 0x1860
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_9dd2872e(var_b04bc952)
{
	level endon(var_b04bc952 + "enter_vortex");
	level notify("hash_d3c69346");
	level thread namespace_67110270::function_ff7a72bf();
	level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_all_this_shit_around_1", 1);
	level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_corvus_is_messing_wi_0", 1);
	level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_just_stay_with_me_0", 1);
	level thread function_a61dfb7();
}

/*
	Name: function_53a7bcca
	Namespace: namespace_6a04e6cd
	Checksum: 0x3BA2962
	Offset: 0x1938
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_53a7bcca()
{
	var_f7ebb04b = namespace_4dbf3ae3::function_1ab5ebec("t_zurichroot_2", "script_noteworthy");
	var_1f6e1fda = function_b8494651("axis", "team3");
	foreach(var_2eecd77a in var_1f6e1fda)
	{
		if(function_7d15e2f8(var_f7ebb04b.var_aef176e7.var_722885f3, var_2eecd77a.var_722885f3) > 2000)
		{
			namespace_82b91a51::function_4b741fdc(var_2eecd77a);
			var_2eecd77a function_2992720d();
		}
	}
}

/*
	Name: function_aa95075d
	Namespace: namespace_6a04e6cd
	Checksum: 0x14B7830D
	Offset: 0x1A80
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function function_aa95075d(var_b04bc952)
{
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_mirror_bundle", &function_b8580c84, "init");
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_mirror_bundle");
	level thread function_c88fe82();
	level thread namespace_67110270::function_973b77f9();
	var_a3612ddd = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_a3612ddd++;
		var_5dc5e20a thread function_2a895f94(var_a3612ddd);
	}
	level waittill("hash_3e3847fd");
	wait(1);
	level thread namespace_82b91a51::function_593c2af4(1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_688ed188, "postfx_transition");
	function_37cbcf1a("evt_clearing_trans_in", (0, 0, 0));
	level waittill("hash_1f51b705");
	level thread namespace_cc27597::function_43718187("cin_zur_12_01_root_1st_mirror_taylor_cam");
	level waittill("hash_c27a3d1");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_mirror_bundle");
	level waittill("hash_e01132f9");
	namespace_82b91a51::function_a0938376();
	namespace_9f824288::function_5d2cdd99();
	level namespace_8e9083ff::function_c90e23b6(var_b04bc952, "breadcrumb_zurichroot_5");
	level.var_1c26230b thread namespace_8e9083ff::function_fe5160df(1);
	wait(2);
	level function_3292451c();
	level thread function_9dd2872e(var_b04bc952);
	function_acdfe1fe("cp_zurich_env_corvusmonitor", 1);
}

/*
	Name: function_b8580c84
	Namespace: namespace_6a04e6cd
	Checksum: 0x37FEFFB2
	Offset: 0x1D48
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_b8580c84(var_c77d2837)
{
	var_29613ea0 = var_c77d2837["zurich_mirror_start"];
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "reflection_extracam", 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "mirror_break", 1);
	level notify("hash_3e3847fd");
	level waittill("hash_80b2a624");
	var_29613ea0 namespace_71e9cb84::function_74d6b22f("mirror_warp", 1);
	var_29613ea0 function_921a1574("evt_mirror_warp_taylor");
	level waittill("hash_1f51b705");
	var_29613ea0 namespace_71e9cb84::function_74d6b22f("mirror_warp", 0);
}

/*
	Name: function_2a895f94
	Namespace: namespace_6a04e6cd
	Checksum: 0x146B700C
	Offset: 0x1E70
	Size: 0x421
	Parameters: 1
	Flags: None
*/
function function_2a895f94(var_a3612ddd)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	namespace_cc27597::function_8f9f34e0("cin_zur_12_01_root_1st_mirror_taylor_0" + var_a3612ddd, &function_cbebe415, "play");
	var_b16f0715 = [];
	var_e0cf565f = namespace_84970cc4::function_d010fbb9(level.var_2395e945, function_84970cc4(self));
	foreach(var_5abbae22 in var_e0cf565f)
	{
		var_52b4a338 = namespace_82b91a51::function_f7337c08(var_5abbae22);
		var_52b4a338.var_f5434f17 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_52b4a338 function_d48f2ab3("tag_weapon_right"), var_52b4a338 function_cd1d99bd("tag_weapon_right"));
		var_daa69c19 = var_5abbae22.var_fd4f9b7c;
		var_52b4a338.var_f5434f17 function_97877619(var_daa69c19, var_daa69c19.var_7c2864e6, var_5abbae22 function_16a63cbf(var_daa69c19));
		var_52b4a338.var_f5434f17 function_37f7858a(var_52b4a338, "tag_weapon_right");
		foreach(var_6bfe1586 in var_e0cf565f)
		{
			var_52b4a338 function_64218ffc(var_6bfe1586, 1);
			var_52b4a338.var_f5434f17 function_64218ffc(var_6bfe1586, 1);
		}
		namespace_84970cc4::function_69554b3e(var_b16f0715, var_52b4a338);
	}
	self function_8c1f7070();
	self thread function_2398f048(var_b16f0715, var_a3612ddd);
	namespace_84970cc4::function_69554b3e(var_b16f0715, self);
	level thread namespace_cc27597::function_43718187("cin_zur_12_01_root_1st_mirror_taylor_0" + var_a3612ddd);
	level namespace_cc27597::function_43718187("cin_zur_12_01_root_1st_mirror_0" + var_a3612ddd, var_b16f0715);
	namespace_82b91a51::function_93831e79("root_zurich_start");
	var_b16f0715 = namespace_84970cc4::function_d010fbb9(var_b16f0715, function_84970cc4(self));
	namespace_84970cc4::function_eaab05dc(var_b16f0715, &function_dc8c8404);
	self function_48f26766();
	self function_bb863f19();
	level notify("hash_e01132f9");
}

/*
	Name: function_2398f048
	Namespace: namespace_6a04e6cd
	Checksum: 0xC80B72A4
	Offset: 0x22A0
	Size: 0x1BB
	Parameters: 2
	Flags: None
*/
function function_2398f048(var_b16f0715, var_a3612ddd)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	level waittill("hash_1f51b705");
	var_182ef0f0 = namespace_cc27597::function_af9fe39b("taylor_0" + var_a3612ddd);
	var_182ef0f0 function_858ac43f(self);
	wait(0.5);
	foreach(var_52b4a338 in var_b16f0715)
	{
		if(isdefined(var_52b4a338.var_f5434f17))
		{
			var_52b4a338.var_f5434f17 function_52fddbd0();
			var_52b4a338.var_f5434f17 function_dc8c8404();
		}
	}
	namespace_84970cc4::function_eaab05dc(var_b16f0715, &function_64218ffc, self, 1);
	self function_50ccee8d();
	level waittill("hash_e01132f9");
	wait(3);
	self namespace_71e9cb84::function_e9c3870b("reflection_extracam", 0);
}

/*
	Name: function_cbebe415
	Namespace: namespace_6a04e6cd
	Checksum: 0x49A68373
	Offset: 0x2468
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_cbebe415(var_c77d2837)
{
	foreach(var_182ef0f0 in var_c77d2837)
	{
		var_182ef0f0 function_8c1f7070();
	}
}

/*
	Name: function_9831305d
	Namespace: namespace_6a04e6cd
	Checksum: 0x24E2DE13
	Offset: 0x2508
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_9831305d()
{
	var_b6e5ad19 = function_99201f25("zurich_popup_poles", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_b6e5ad19.size; var_c957f6b6++)
	{
		var_b6e5ad19[var_c957f6b6].var_679a97b7 = var_b6e5ad19[var_c957f6b6].var_722885f3;
		if(isdefined(var_b6e5ad19[var_c957f6b6].var_b07228b6))
		{
			var_fb3442a9 = namespace_14b42b8a::function_7faf4c39(var_b6e5ad19[var_c957f6b6].var_b07228b6, "targetname");
			for(var_a3557c4d = 0; var_a3557c4d < var_fb3442a9.size; var_a3557c4d++)
			{
				if(var_fb3442a9[var_a3557c4d].var_caae374e === "start_pos")
				{
					var_b6e5ad19[var_c957f6b6].var_f08dfc9c = var_fb3442a9[var_a3557c4d].var_722885f3;
					var_b6e5ad19[var_c957f6b6] function_a96a2721(var_b6e5ad19[var_c957f6b6].var_f08dfc9c, 0.05);
					continue;
				}
				if(var_fb3442a9[var_a3557c4d].var_caae374e === "fx_pos")
				{
					var_b6e5ad19[var_c957f6b6].var_eb550668 = var_fb3442a9[var_a3557c4d];
				}
			}
		}
	}
}

/*
	Name: function_3292451c
	Namespace: namespace_6a04e6cd
	Checksum: 0x5E19EE15
	Offset: 0x26D8
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_3292451c()
{
	var_6fbeca4a = 1;
	for(var_6fe9b606 = function_6ada35ba("popup_pole_" + var_6fbeca4a, "script_noteworthy"); isdefined(var_6fe9b606);  = function_6ada35ba("popup_pole_" + var_6fbeca4a, "script_noteworthy"))
	{
		var_6fe9b606 function_a96a2721(var_6fe9b606.var_679a97b7, 0.5);
		var_607afad = function_cbc4f0b(var_6fe9b606.var_eb550668.var_722885f3, var_6fe9b606.var_722885f3, 0, var_6fe9b606)["position"];
		var_f33892ac = namespace_82b91a51::function_b9fd52a4("tag_origin", var_607afad, var_6fe9b606.var_6ab6f4fd);
		var_6fe9b606 waittill("hash_a21db68a");
		var_f33892ac namespace_71e9cb84::function_331efedc("zurich_snow_rise");
		function_37cbcf1a("evt_roots_grow", var_f33892ac.var_722885f3);
		var_f33892ac thread function_df835392();
		namespace_80983c42::function_80983c42("lgt_zurichpole_exp_" + var_6fbeca4a);
		var_6fbeca4a++;
	}
}

/*
	Name: function_c88fe82
	Namespace: namespace_6a04e6cd
	Checksum: 0x588B62D9
	Offset: 0x28B0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_c88fe82()
{
	level namespace_71b8dba1::function_a463d127("mcor_you_ever_say_or_do_s_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("tayr_maretti_is_that_yo_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("mcor_maybe_it_wasn_t_you_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("mcor_maybe_it_was_someone_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("tayr_what_the_fuck_0", 1, "NO_DNI");
	level namespace_71b8dba1::function_13b3b16a("plyr_taylor_3", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_are_you_still_with_m_0", 1);
}

/*
	Name: function_2d897f84
	Namespace: namespace_6a04e6cd
	Checksum: 0x9B6E11B2
	Offset: 0x2A00
	Size: 0x13D
	Parameters: 1
	Flags: None
*/
function function_2d897f84(var_b04bc952)
{
	level endon(var_b04bc952 + "_done");
	level endon("hash_c955b42d");
	var_b1cdbf1d = 1;
	while(1)
	{
		var_f6e695c0 = namespace_14b42b8a::function_7922262b("breadcrumb_zurichroot_" + var_b1cdbf1d, "targetname");
		var_b1fe230f = function_6ada35ba("t_zurichroot_" + var_b1cdbf1d, "script_noteworthy");
		if(!isdefined(var_f6e695c0) || !isdefined(var_b1fe230f))
		{
			return;
		}
		namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_f6e695c0);
		var_b1fe230f waittill("hash_4dbf3ae3");
		level notify("hash_431e9a83");
		namespace_9f824288::function_5d2cdd99();
		namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_f6e695c0);
		var_b1cdbf1d++;
	}
}

/*
	Name: function_8182f3c5
	Namespace: namespace_6a04e6cd
	Checksum: 0x26632D43
	Offset: 0x2B48
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_8182f3c5()
{
	var_3e269f89 = function_99201f25("zurich_vinewall_trig", "targetname");
	namespace_84970cc4::function_966ecb29(var_3e269f89, &function_ddbd0859);
}

/*
	Name: function_ddbd0859
	Namespace: namespace_6a04e6cd
	Checksum: 0x2B9D12A6
	Offset: 0x2BA8
	Size: 0x291
	Parameters: 0
	Flags: None
*/
function function_ddbd0859()
{
	var_4cb02780 = function_99201f25(self.var_b07228b6, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_4cb02780.size; var_c957f6b6++)
	{
		var_4cb02780[var_c957f6b6].var_679a97b7 = var_4cb02780[var_c957f6b6].var_722885f3;
		if(isdefined(var_4cb02780[var_c957f6b6].var_db7bb468))
		{
			var_4cb02780[var_c957f6b6] thread function_e8047245();
		}
		if(isdefined(var_4cb02780[var_c957f6b6].var_b07228b6))
		{
			var_fb3442a9 = namespace_14b42b8a::function_7faf4c39(var_4cb02780[var_c957f6b6].var_b07228b6, "targetname");
			for(var_a3557c4d = 0; var_a3557c4d < var_fb3442a9.size; var_a3557c4d++)
			{
				if(var_fb3442a9[var_a3557c4d].var_caae374e === "start_pos")
				{
					var_4cb02780[var_c957f6b6].var_f08dfc9c = var_fb3442a9[var_a3557c4d].var_722885f3;
					var_4cb02780[var_c957f6b6] function_a96a2721(var_4cb02780[var_c957f6b6].var_f08dfc9c, 0.05);
					continue;
				}
			}
		}
		else if(!isdefined(var_4cb02780[var_c957f6b6].var_f08dfc9c))
		{
			var_4cb02780[var_c957f6b6] function_8bdea13c(-128, 0.05);
		}
	}
	self waittill("hash_4dbf3ae3");
	foreach(var_ec523dd5 in var_4cb02780)
	{
		var_ec523dd5 thread function_300319e3();
	}
}

/*
	Name: function_300319e3
	Namespace: namespace_6a04e6cd
	Checksum: 0xD56A291C
	Offset: 0x2E48
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function function_300319e3()
{
	var_78962fff = function_72a94f05(0.2, 0.75);
	wait(var_78962fff);
	self function_a96a2721(self.var_679a97b7, var_78962fff);
	if(isdefined(self.var_b07228b6))
	{
		var_abc323ed = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_abc323ed.size; var_c957f6b6++)
		{
			if(var_abc323ed[var_c957f6b6].var_caae374e === "fx_pos")
			{
				var_607afad = function_cbc4f0b(var_abc323ed[var_c957f6b6].var_722885f3, self.var_722885f3, 0, self)["position"];
				var_f33892ac = namespace_82b91a51::function_b9fd52a4("tag_origin", var_607afad, var_abc323ed[var_c957f6b6].var_6ab6f4fd);
				self waittill("hash_a21db68a");
				var_f33892ac namespace_71e9cb84::function_331efedc("zurich_snow_rise");
				function_37cbcf1a("evt_roots_grow", var_abc323ed[var_c957f6b6].var_722885f3);
				var_f33892ac thread function_df835392();
				return;
			}
		}
	}
}

/*
	Name: function_e8047245
	Namespace: namespace_6a04e6cd
	Checksum: 0xCBFF9721
	Offset: 0x3020
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_e8047245()
{
	var_a8a64a67 = function_fe0cfd2e(self.var_db7bb468, "targetname");
	foreach(var_974cc07 in var_a8a64a67)
	{
		function_d224409e(var_974cc07, 0);
	}
	self waittill("hash_a21db68a");
	foreach(var_974cc07 in var_a8a64a67)
	{
		function_d224409e(var_974cc07, 1);
	}
}

/*
	Name: function_df835392
	Namespace: namespace_6a04e6cd
	Checksum: 0x19C13B44
	Offset: 0x3178
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_df835392()
{
	wait(3);
	self function_dc8c8404();
}

/*
	Name: function_187dfb55
	Namespace: namespace_6a04e6cd
	Checksum: 0x48F2CCFB
	Offset: 0x31A0
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_187dfb55()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_roots_train_bundle", &function_74c17b69, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_roots_train_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "zurich_root_completed");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_roots_train_bundle");
	level namespace_ad23e503::function_1ab5ebec("flag_start_zurich_train_logic");
	level thread function_b9295ca8();
	level thread function_ddc2d04e();
	level namespace_ad23e503::function_1ab5ebec("flag_zurich_root_final_encounter_complete");
	namespace_d0ef8521::function_45d1556("t_zurichroot_traincars");
	namespace_4dbf3ae3::function_1ab5ebec("t_zurichroot_traincars");
	namespace_d5067552::function_2992720d("sm_zurich_root_end_rushers");
	function_37cbcf1a("evt_roots_train_start", (-21602, -25483, 1681));
	level thread function_a85c54c7();
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_roots_train_bundle");
}

/*
	Name: function_a85c54c7
	Namespace: namespace_6a04e6cd
	Checksum: 0x4477B264
	Offset: 0x3350
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_a85c54c7()
{
	level waittill("hash_bf94f0c3");
	function_6ada35ba("zur_root_train_blocker", "targetname") function_dc8c8404();
	namespace_d0ef8521::function_45d1556("t_breadcrumb_zurichroot_exit");
}

/*
	Name: function_74c17b69
	Namespace: namespace_6a04e6cd
	Checksum: 0x19CB0FAE
	Offset: 0x33B8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_74c17b69(var_c77d2837)
{
	foreach(var_4c9c8550 in var_c77d2837)
	{
		var_4c9c8550 function_e2af603e("cp_infection_hideout_stretch");
	}
}

/*
	Name: function_b9295ca8
	Namespace: namespace_6a04e6cd
	Checksum: 0xD2A8B5D6
	Offset: 0x3460
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b9295ca8()
{
	level endon("hash_e0d2827d");
	namespace_d5067552::function_27bf2e8("sm_zurich_root_end", 2);
	level namespace_ad23e503::function_74d6b22f("flag_zurich_root_final_encounter_complete");
}

/*
	Name: function_ddc2d04e
	Namespace: namespace_6a04e6cd
	Checksum: 0x3FB53A5D
	Offset: 0x34B8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ddc2d04e()
{
	level endon("hash_e0d2827d");
	wait(60);
	level namespace_ad23e503::function_74d6b22f("flag_zurich_root_final_encounter_complete");
}

