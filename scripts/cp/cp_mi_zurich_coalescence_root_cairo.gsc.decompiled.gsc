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
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_raps;

#namespace namespace_73dbe018;

/*
	Name: function_d290ebfa
	Namespace: namespace_73dbe018
	Checksum: 0xCCBC83BB
	Offset: 0xC40
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level namespace_ad23e503::function_c35e6aab("vtol_dropped_wall");
	level.var_c1aa5253["lightning_strike"] = "explosions/fx_exp_lightning_fold_infection";
	level.var_c1aa5253["explosion_medium"] = "explosions/fx_exp_debris_metal_md";
	level.var_c1aa5253["explosion_large"] = "explosions/fx_exp_sky_bridge_lotus";
	level thread function_54b0174d();
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_wall_drop_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "cairo_root_completed");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_checkpoint_wall_01_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "cairo_root_completed");
}

/*
	Name: function_2ea898a8
	Namespace: namespace_73dbe018
	Checksum: 0xD1BD5463
	Offset: 0xD58
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "vtol_spawn_fx", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "cairo_client_ents", 1, 1, "int");
}

/*
	Name: function_9c1fc2fd
	Namespace: namespace_73dbe018
	Checksum: 0x6B7E9AA0
	Offset: 0xDC8
	Size: 0x2B3
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	if(var_74cd64bc)
	{
		level namespace_82b91a51::function_7e61de2b(0);
		level namespace_ad23e503::function_74d6b22f("flag_diaz_first_path_complete_vo_done");
	}
	function_acdfe1fe("cp_zurich_env_corvusmonitor", 1);
	level namespace_cc27597::function_c35e6aab("cin_zur_14_01_cairo_root_1st_fall");
	level thread namespace_67110270::function_973b77f9();
	namespace_80983c42::function_80983c42("weather_lightning_exp");
	var_4ccf970 = namespace_8e9083ff::function_a00fa665(var_b04bc952);
	namespace_8e9083ff::function_4d032f25(1, 0.5);
	namespace_2f06d687::function_2b37a3c9("raven_ambush_ai", "script_parameters", &namespace_8e9083ff::function_aceff870);
	namespace_2f06d687::function_2b37a3c9("raven_spawn_teleport", "script_parameters", &namespace_8e9083ff::function_3287bea1);
	level thread namespace_67110270::function_1935b4aa();
	level thread function_42dddb91(var_b04bc952);
	level namespace_71e9cb84::function_74d6b22f("cairo_client_ents", 1);
	level thread function_4cca3b70();
	level thread function_6559d2b2();
	namespace_d7916d65::function_a2995f22();
	namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
	level thread namespace_8e9083ff::function_a03f30f2(var_b04bc952, "root_cairo_vortex", "root_cairo_regroup");
	level thread namespace_8e9083ff::function_dd842585(var_b04bc952, "root_cairo_vortex", "t_root_cairo_vortex");
	level thread function_962eebf2(var_b04bc952);
	level waittill(var_b04bc952 + "enter_vortex");
	level thread function_95b88092("root_cairo_vortex", 0);
}

/*
	Name: function_95b88092
	Namespace: namespace_73dbe018
	Checksum: 0x3D241068
	Offset: 0x1088
	Size: 0x253
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
		level thread namespace_8e9083ff::function_c90e23b6(var_b04bc952);
	}
	if(isdefined(level.var_4c8d19ff))
	{
		level thread [[level.var_4c8d19ff]]();
	}
	level thread namespace_cc27597::function_c35e6aab("cairo_fxanim_heart_ceiling", "targetname");
	namespace_80983c42::function_80983c42("heartLightsCairo");
	level thread namespace_67110270::function_973b77f9();
	level thread function_2dbeaba5();
	level thread function_c3dca267();
	level namespace_82b91a51::function_ef3f75eb("stCAMU");
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
	level notify("hash_ef6331cc");
	function_4a0fb95e("cp_zurich_env_corvusmonitor");
	namespace_80983c42::function_67e7a937("weather_lightning_exp");
	level namespace_82b91a51::function_ef3f75eb("stp_mus");
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_73dbe018
	Checksum: 0xF2360735
	Offset: 0x12E8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level notify("hash_83eebac0");
	level thread namespace_8e9083ff::function_4a00a473("root_cairo");
	namespace_80983c42::function_67e7a937("weather_lightning_exp");
	level namespace_71e9cb84::function_74d6b22f("cairo_client_ents", 0);
}

/*
	Name: function_7cdb6ab4
	Namespace: namespace_73dbe018
	Checksum: 0xAB5E755B
	Offset: 0x1378
	Size: 0x38B
	Parameters: 0
	Flags: None
*/
function function_7cdb6ab4()
{
	level endon("hash_1f265efe");
	level namespace_ad23e503::function_1ab5ebec("flag_cairo_root_monologue_01");
	level namespace_71b8dba1::function_13b3b16a("plyr_listen_only_to_the_s_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_your_mind_relax_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_your_thoughts_dr_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_the_bad_memories_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_peace_be_upon_yo_0", 3);
	level namespace_ad23e503::function_1ab5ebec("flag_cairo_root_monologue_02");
	level namespace_71b8dba1::function_13b3b16a("plyr_surrender_yourself_t_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_them_wash_over_y_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_imagine_somewhere_ca_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_imagine_somewhere_sa_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_imagine_yourself_0", 3);
	level namespace_ad23e503::function_1ab5ebec("flag_cairo_root_monologue_03");
	level namespace_71b8dba1::function_13b3b16a("plyr_you_are_standing_in_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_the_trees_around_you_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_pure_white_snowflake_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_can_feel_them_me_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_are_not_cold_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_it_cannot_overcome_t_0", 3);
	level namespace_ad23e503::function_1ab5ebec("flag_cairo_root_monologue_04");
	level namespace_71b8dba1::function_13b3b16a("plyr_can_you_hear_it_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_only_have_to_lis_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_do_you_hear_it_slowi_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_are_slowing_it_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_are_in_control_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_calm_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_at_peace_0", 3);
	level namespace_ad23e503::function_74d6b22f("flag_cairo_root_monologue_04_done");
}

/*
	Name: function_2dbeaba5
	Namespace: namespace_73dbe018
	Checksum: 0x8C7C86D8
	Offset: 0x1710
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_2dbeaba5()
{
	level endon("hash_1f265efe");
	level namespace_ad23e503::function_1ab5ebec("flag_cairo_root_monologue_04_done");
	level namespace_71b8dba1::function_a463d127("salm_the_nature_of_memory_0", 4, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("salm_over_the_last_centur_0", 1, "NO_DNI");
}

/*
	Name: function_d3f1996d
	Namespace: namespace_73dbe018
	Checksum: 0xF01820D1
	Offset: 0x17A8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_d3f1996d(var_b04bc952)
{
	level endon(var_b04bc952 + "enter_vortex");
	level namespace_ad23e503::function_1ab5ebec("flag_diaz_first_path_complete_vo_done");
	wait(3);
	level notify("hash_d3c69346");
	level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_diaz_and_maretti_i_0", 1);
	level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_they_were_trying_to_0", 1);
	level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_it_couldn_t_control_1", 1);
	wait(5);
	level thread function_7cdb6ab4();
	level namespace_ad23e503::function_1ab5ebec("flag_taylor_vo_never_give_up");
	level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_don_t_give_up_be_0", 1);
}

/*
	Name: function_962eebf2
	Namespace: namespace_73dbe018
	Checksum: 0x81BCA60
	Offset: 0x18D8
	Size: 0x203
	Parameters: 1
	Flags: None
*/
function function_962eebf2(var_b04bc952)
{
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_faf8f736, 1);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_83fd42b5);
	level namespace_cc27597::function_c35e6aab("cin_zur_14_01_cairo_root_1st_fall");
	level namespace_82b91a51::function_11a89b44();
	level thread namespace_82b91a51::function_593c2af4(1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_688ed188, "postfx_transition");
	function_37cbcf1a("evt_clearing_trans_in", (0, 0, 0));
	if(isdefined(level.var_1e860021))
	{
		level thread [[level.var_1e860021]]();
	}
	level namespace_cc27597::function_43718187("cin_zur_14_01_cairo_root_1st_fall");
	level namespace_82b91a51::function_93831e79("root_cairo_intro_end");
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_faf8f736, 0);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_4890e520);
	namespace_82b91a51::function_a0938376();
	namespace_9f824288::function_5d2cdd99();
	level thread namespace_8e9083ff::function_c90e23b6(var_b04bc952, "breadcrumb_cairoroot_3");
	level thread function_d3f1996d(var_b04bc952);
}

/*
	Name: function_4cca3b70
	Namespace: namespace_73dbe018
	Checksum: 0x4819D692
	Offset: 0x1AE8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_4cca3b70()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_wall_drop_bundle", &function_fe87d3eb, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_wall_drop_bundle", &function_e3c9dd29, "play");
	level thread function_ef1ee0c7();
	var_15ecae1 = function_6ada35ba("trigger_vtol_arrival", "targetname");
	var_15ecae1 waittill("hash_4dbf3ae3");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_wall_drop_bundle");
	level waittill("hash_883eae52");
	wait(3);
	level notify("hash_4dbdcce4");
	level namespace_ad23e503::function_1ab5ebec("flag_cairo_start_wall_spawn");
	namespace_d5067552::function_bae40a28("sm_vtol_wall");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_fe87d3eb
	Namespace: namespace_73dbe018
	Checksum: 0xF6E8021
	Offset: 0x1C28
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_fe87d3eb(var_c77d2837)
{
	level namespace_ad23e503::function_1ab5ebec("vtol_dropped_wall");
	var_58ee3480 = function_6ada35ba("wall_drop_doors", "targetname");
	if(!isdefined(var_58ee3480))
	{
		return;
	}
	level namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_wall_drop_doors_up_bundle", var_58ee3480);
	namespace_d5067552::function_bae40a28("sm_doors_open");
}

/*
	Name: function_ef1ee0c7
	Namespace: namespace_73dbe018
	Checksum: 0x39716ED9
	Offset: 0x1CD0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_ef1ee0c7()
{
	var_abef87dc = function_6ada35ba("open_wall_doors", "script_noteworthy");
	var_abef87dc waittill("hash_4dbf3ae3");
	level namespace_ad23e503::function_74d6b22f("vtol_dropped_wall");
}

/*
	Name: function_e3c9dd29
	Namespace: namespace_73dbe018
	Checksum: 0x90A0E4E9
	Offset: 0x1D38
	Size: 0x105
	Parameters: 1
	Flags: None
*/
function function_e3c9dd29(var_c77d2837)
{
	var_2ef9d306 = var_c77d2837["wall_drop_vtol"];
	var_ec523dd5 = var_c77d2837["wall_drop_wall"];
	var_24a1012d = namespace_14b42b8a::function_7faf4c39("vtol_scene_spawn_fx", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_24a1012d.size; var_c957f6b6++)
	{
		var_9508eea7 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_24a1012d[var_c957f6b6].var_722885f3, (0, 0, 0));
		namespace_82b91a51::function_76f13293();
		var_9508eea7 thread function_899f9f96();
	}
}

/*
	Name: function_899f9f96
	Namespace: namespace_73dbe018
	Checksum: 0xE60F6F49
	Offset: 0x1E48
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_899f9f96()
{
	self namespace_71e9cb84::function_331efedc("vtol_spawn_fx");
	wait(3);
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_6559d2b2
	Namespace: namespace_73dbe018
	Checksum: 0x859035FA
	Offset: 0x1E98
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_6559d2b2()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_checkpoint_wall_01_bundle", &function_c5b12ba9, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_checkpoint_wall_01_bundle", &function_73238a8, "play");
	namespace_4dbf3ae3::function_1ab5ebec("trig_cairo_arena_start", "script_noteworthy");
	namespace_d5067552::function_bae40a28("sm_cairo_wall_02");
	namespace_d5067552::function_bae40a28("sm_cairo_ambush");
	level thread function_8c7755d2();
	level thread function_46b4203d();
	level namespace_ad23e503::function_1ab5ebec("flag_cairo_arena_complete");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_checkpoint_wall_01_bundle");
	namespace_d5067552::function_54bdb053("sm_cairo_ambush");
}

/*
	Name: function_8c7755d2
	Namespace: namespace_73dbe018
	Checksum: 0xF10859CF
	Offset: 0x1FE0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8c7755d2()
{
	level endon("hash_fc5ed004");
	wait(60);
	level namespace_ad23e503::function_74d6b22f("flag_cairo_arena_complete");
}

/*
	Name: function_46b4203d
	Namespace: namespace_73dbe018
	Checksum: 0x96A10702
	Offset: 0x2020
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_46b4203d()
{
	level endon("hash_fc5ed004");
	namespace_d5067552::function_27bf2e8("sm_cairo_wall_02", 2);
	level namespace_ad23e503::function_74d6b22f("flag_cairo_arena_complete");
}

/*
	Name: function_c5b12ba9
	Namespace: namespace_73dbe018
	Checksum: 0x1A2E348A
	Offset: 0x2078
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_c5b12ba9(var_c77d2837)
{
	foreach(var_4c9c8550 in var_c77d2837)
	{
		var_4c9c8550 function_50ccee8d();
	}
}

/*
	Name: function_73238a8
	Namespace: namespace_73dbe018
	Checksum: 0xD4E58A12
	Offset: 0x2118
	Size: 0x1C3
	Parameters: 1
	Flags: None
*/
function function_73238a8(var_c77d2837)
{
	var_7be3ca60 = function_99201f25("root_cairo_arena_doors", "targetname");
	foreach(var_4c9c8550 in var_c77d2837)
	{
		var_4c9c8550 function_48f26766();
	}
	foreach(var_adad709 in var_7be3ca60)
	{
		var_adad709 function_dc8c8404();
	}
	var_d874dcf = function_6ada35ba("root_cairo_arena_clip", "targetname");
	if(isdefined(var_d874dcf))
	{
		var_d874dcf function_422037f5();
		var_d874dcf function_de8377bf();
		var_d874dcf function_dc8c8404();
	}
}

/*
	Name: function_54b0174d
	Namespace: namespace_73dbe018
	Checksum: 0xBB8740DF
	Offset: 0x22E8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_54b0174d()
{
	var_35a225f3 = function_6ada35ba("lotus_tower_sink", "targetname");
	if(isdefined(var_35a225f3))
	{
		var_35a225f3 function_7d0838b3(0.4);
		var_35a225f3 function_50ccee8d();
		level namespace_ad23e503::function_1ab5ebec("root_cairo_start");
		var_35a225f3 function_48f26766();
		var_35a225f3 thread function_1a9fae41();
	}
}

/*
	Name: function_1a9fae41
	Namespace: namespace_73dbe018
	Checksum: 0x48B5656F
	Offset: 0x23B0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_1a9fae41()
{
	var_70cf920f = function_6ada35ba("t_lotus_sink", "script_noteworthy");
	var_70cf920f waittill("hash_4dbf3ae3");
	var_10729d99 = self;
	function_fd4ba5e1(level.var_c1aa5253["explosion_large"], self.var_722885f3);
	var_74adb9b4 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	while(isdefined(var_74adb9b4))
	{
		var_6389ab3d = function_7d15e2f8(var_10729d99.var_722885f3, var_74adb9b4.var_722885f3);
		var_78962fff = var_6389ab3d / 20;
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
}

/*
	Name: function_42dddb91
	Namespace: namespace_73dbe018
	Checksum: 0x9B96087E
	Offset: 0x2570
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_42dddb91(var_b04bc952)
{
	level endon(var_b04bc952 + "_done");
	level endon("hash_83eebac0");
	namespace_d0ef8521::function_45d1556("t_breadcrumb_cairoroot_1");
	namespace_4dbf3ae3::function_1ab5ebec("t_breadcrumb_cairoroot_1");
	level notify("hash_431e9a83");
	namespace_9f824288::function_5d2cdd99();
	namespace_d0ef8521::function_45d1556("t_breadcrumb_cairoroot_2");
	namespace_4dbf3ae3::function_1ab5ebec("t_breadcrumb_cairoroot_2");
	level notify("hash_431e9a83");
	namespace_9f824288::function_5d2cdd99();
	namespace_d0ef8521::function_45d1556("t_breadcrumb_cairoroot_3");
}

/*
	Name: function_c3dca267
	Namespace: namespace_73dbe018
	Checksum: 0x691A8CDD
	Offset: 0x2658
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_c3dca267()
{
	var_765ae49e = function_99201f25("cairo_vortex_spawn", "targetname");
	namespace_84970cc4::function_966ecb29(var_765ae49e, &function_24c08a2f);
}

/*
	Name: function_24c08a2f
	Namespace: namespace_73dbe018
	Checksum: 0x8018EE36
	Offset: 0x26B8
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_24c08a2f()
{
	self waittill("hash_4dbf3ae3");
	var_66b68fff = function_99201f25(self.var_b07228b6, "targetname");
	self function_dc8c8404();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_66b68fff.size; var_c957f6b6++)
	{
		var_3e32f05a = namespace_2f06d687::function_7387a40a(var_66b68fff[var_c957f6b6], &namespace_8e9083ff::function_c412aad5);
		if(isdefined(var_66b68fff[var_c957f6b6].var_caae374e))
		{
			var_3e32f05a.var_b691b9cf = var_66b68fff[var_c957f6b6].var_caae374e;
			var_3e32f05a namespace_72ee5da4::function_fa59cc99("scripted");
			var_3e32f05a function_333fd8f0(20);
			var_3e32f05a thread function_54c51e5b();
			var_3e32f05a thread function_20541efa();
		}
	}
}

/*
	Name: function_54c51e5b
	Namespace: namespace_73dbe018
	Checksum: 0x5FA3CE75
	Offset: 0x2810
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_54c51e5b()
{
	self endon("hash_128f8789");
	var_3c54858a = function_243bb261(self.var_caae374e + "_start", "targetname");
	self thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
	self waittill("hash_6cf6ac7e");
	self namespace_a7941edd::function_c1eaf281();
}

/*
	Name: function_20541efa
	Namespace: namespace_73dbe018
	Checksum: 0x418CAFE8
	Offset: 0x28A0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_20541efa()
{
	self endon("hash_128f8789");
	while(1)
	{
		var_6bfe1586 = function_e7bdc1a1(self.var_722885f3, level.var_9b1393e7);
		if(function_7d15e2f8(self.var_722885f3, var_6bfe1586.var_722885f3) <= 600)
		{
			self namespace_72ee5da4::function_fa59cc99("combat");
			return;
		}
		wait(0.1);
	}
}

