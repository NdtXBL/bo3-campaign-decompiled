#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\_vehicle_platform;
#using scripts\cp\cp_mi_cairo_lotus3_sound;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\lotus_accolades;
#using scripts\cp\lotus_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_45eca03;

/*
	Name: function_ccc2baba
	Namespace: namespace_45eca03
	Checksum: 0xE820367B
	Offset: 0x12E0
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_ccc2baba(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		var_4b8428ba = function_6ada35ba("p_intro_glass_window", "targetname");
		var_4b8428ba function_dc8c8404();
		level namespace_cc27597::function_c35e6aab("cin_lot_11_tower2ascent_3rd_sh060_halfway");
	}
	level function_fc9a646b("hide");
	level thread function_66b6b1c7();
	level.var_1df069b5 = 0;
	level.var_2e49e915 = 0;
	function_428ff2f();
	function_750a4f4c();
	level namespace_cc27597::function_8f9f34e0("cin_lot_15_taylorintro_3rd_sh050", &function_1d2443e2, "done");
	level namespace_cc27597::function_8f9f34e0("cin_lot_11_tower2ascent_3rd_sh120", &function_a7f02ddb, "done");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
		if(isdefined(level.var_f16c27e6))
		{
			level thread [[level.var_f16c27e6]]();
		}
		level namespace_cc27597::function_43718187("cin_lot_11_tower2ascent_3rd_sh060_halfway");
	}
	level waittill("hash_a7f02ddb");
	if(isdefined(level.var_f48af665))
	{
		level thread [[level.var_f48af665]]();
	}
	level waittill("hash_59f31b4d");
	level thread function_c40186f4();
	level waittill("hash_41bb6835");
	level namespace_82b91a51::function_93831e79("boss_battle");
	namespace_1d795d47::function_be8adfb8("prometheus_intro");
}

/*
	Name: function_750a4f4c
	Namespace: namespace_45eca03
	Checksum: 0x749F2FE2
	Offset: 0x1540
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_750a4f4c()
{
	var_7b183fd7 = function_99201f25("atrium01_mobile_shop", "targetname");
	foreach(var_4e29c01c in var_7b183fd7)
	{
		var_4e29c01c function_dc8c8404();
	}
}

/*
	Name: function_c40186f4
	Namespace: namespace_45eca03
	Checksum: 0xD1E5159E
	Offset: 0x1600
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_c40186f4()
{
	var_dc105c2b = namespace_431cac9::function_8108bdb8("shed_explosion_a", "hero_shed_piece", undefined);
	var_dc105c2b namespace_431cac9::function_aabc561a("mobile_shop_fall_explosion");
	level function_fc9a646b("show");
}

/*
	Name: function_fc9a646b
	Namespace: namespace_45eca03
	Checksum: 0x23C40955
	Offset: 0x1678
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_fc9a646b(var_158cd2ca)
{
	if(!isdefined(var_158cd2ca))
	{
		var_158cd2ca = "hide";
	}
	var_4b2f4450 = function_99201f25("area_shed_debris_1", "targetname");
	if(var_158cd2ca == "show")
	{
		foreach(var_fd7c985 in var_4b2f4450)
		{
			if(isdefined(var_fd7c985))
			{
				var_fd7c985 function_48f26766();
			}
		}
		break;
	}
	foreach(var_fd7c985 in var_4b2f4450)
	{
		if(isdefined(var_fd7c985))
		{
			var_fd7c985 function_50ccee8d();
		}
	}
}

/*
	Name: function_a7f02ddb
	Namespace: namespace_45eca03
	Checksum: 0xE888FE92
	Offset: 0x1800
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_a7f02ddb(var_c77d2837)
{
	level notify("hash_a7f02ddb");
}

/*
	Name: function_1d2443e2
	Namespace: namespace_45eca03
	Checksum: 0xD16F10A4
	Offset: 0x1828
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_1d2443e2(var_c77d2837)
{
	level notify("hash_41bb6835");
}

/*
	Name: function_ec70e2a1
	Namespace: namespace_45eca03
	Checksum: 0x80C56195
	Offset: 0x1850
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_ec70e2a1(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_babb1dd5
	Namespace: namespace_45eca03
	Checksum: 0x3A4B2DEB
	Offset: 0x1880
	Size: 0x783
	Parameters: 2
	Flags: None
*/
function function_babb1dd5(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_428ff2f();
	}
	level namespace_cc27597::function_8f9f34e0("cin_lot_17_oldfriend_3rd_sh190", &function_eaf57a3, "done");
	level namespace_cc27597::function_8f9f34e0("cin_lot_17_oldfriend_3rd_sh070", &function_90b04eba, "done");
	level namespace_cc27597::function_8f9f34e0("cin_lot_17_oldfriend_3rd_sh080", &function_623303f2, "done");
	level namespace_cc27597::function_8f9f34e0("cin_lot_17_oldfriend_3rd_sh090", &function_90b04eba, "done");
	level namespace_cc27597::function_8f9f34e0("cin_lot_17_oldfriend_3rd_sh140", &function_623303f2, "done");
	level namespace_cc27597::function_8f9f34e0("cin_lot_17_oldfriend_3rd_sh150", &function_90b04eba, "done");
	level namespace_cc27597::function_8f9f34e0("cin_lot_17_oldfriend_3rd_sh160", &function_623303f2, "done");
	level namespace_cc27597::function_8f9f34e0("cin_lot_17_oldfriend_3rd_sh220", &function_90b04eba, "done");
	namespace_cc27597::function_8f9f34e0("cin_lot_17_01_oldfriend_1st_wakeup", &function_203a65ec, "skip_started");
	namespace_cc27597::function_8f9f34e0("cin_lot_17_01_oldfriend_1st_wakeup", &function_4d425f2a, "done");
	var_8e1ab582 = function_99201f25("of_igc_railing", "targetname");
	foreach(var_d1610bbf in var_8e1ab582)
	{
		var_d1610bbf function_50ccee8d();
	}
	if(isdefined(level.var_38a4277e))
	{
		level.var_38a4277e function_dc8c8404();
	}
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("gunship_down_fxanim", "targetname");
	if(var_74cd64bc)
	{
		var_1cbcb46d namespace_cc27597::function_c35e6aab();
		level namespace_cc27597::function_c35e6aab("cin_lot_17_oldfriend_3rd_sh010");
		namespace_d7916d65::function_a2995f22();
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_5dc5e20a::function_51bdb647(1);
		var_5dc5e20a.var_9a6e8567 = 1;
	}
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	level thread namespace_3bad5a01::function_dae48a54();
	level namespace_cc27597::function_43718187("cin_lot_17_oldfriend_3rd_sh010");
	level waittill("hash_65ad50c6");
	if(isdefined(level.var_36848938))
	{
		level thread [[level.var_36848938]]();
	}
	var_1cbcb46d thread namespace_cc27597::function_43718187();
	var_9541c781 = function_99201f25("gunship_fall", "targetname");
	foreach(var_e9d5eee1 in var_9541c781)
	{
		var_e9d5eee1 function_50ccee8d();
	}
	level waittill("hash_c2926439");
	var_182ef0f0 = function_6ada35ba("taylor", "targetname");
	var_182ef0f0 function_e48f905e("c_hro_taylor_base_bullet_wound");
	level waittill("hash_4868cda0");
	level thread function_5bb13a75();
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_82b91a51::function_7e61de2b(3, "black", "old_friend_hospital_transition");
	}
	level waittill("hash_e43285f9");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_82b91a51::function_593c2af4(3, "black", "old_friend_hospital_transition");
	}
	level thread namespace_4fe3eef1::function_9908d262("mus_lotus_theme_intro");
	level thread namespace_3bad5a01::function_6be50b2c();
	if(isdefined(level.var_7c5276b2))
	{
		level thread [[level.var_7c5276b2]]();
	}
	level waittill("hash_4f90f275");
	var_4af4348c = function_6ada35ba("rachel", "targetname");
	var_4af4348c function_cb3bf380("c_hro_rachel_egypt_scarf");
	level waittill("hash_6adfba7a");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
		level thread namespace_82b91a51::function_7e61de2b(1, "white");
	}
	function_d4f82627("clear");
	namespace_1d795d47::function_be8adfb8("old_friend");
}

/*
	Name: function_4d425f2a
	Namespace: namespace_45eca03
	Checksum: 0x50C94626
	Offset: 0x2010
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_4d425f2a(var_c77d2837)
{
	namespace_1d795d47::function_be8adfb8("old_friend");
}

/*
	Name: function_203a65ec
	Namespace: namespace_45eca03
	Checksum: 0x4ED2BDF2
	Offset: 0x2040
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_203a65ec(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_5e6740a8(1);
	}
	namespace_82b91a51::function_7e61de2b(0, "black");
}

/*
	Name: function_eaf57a3
	Namespace: namespace_45eca03
	Checksum: 0x8582DEAA
	Offset: 0x2120
	Size: 0x3A3
	Parameters: 0
	Flags: None
*/
function function_eaf57a3()
{
	var_30944458 = function_6ada35ba("cin_lot_debris_piece_01", "targetname");
	var_a29bb393 = function_6ada35ba("cin_lot_debris_piece_02", "targetname");
	var_7c99392a = function_6ada35ba("cin_lot_debris_piece_03", "targetname");
	var_eea0a865 = function_6ada35ba("cin_lot_debris_piece_04", "targetname");
	var_c89e2dfc = function_6ada35ba("cin_lot_debris_piece_05", "targetname");
	var_3aa59d37 = function_6ada35ba("cin_lot_debris_piece_06", "targetname");
	var_14a322ce = function_6ada35ba("cin_lot_debris_piece_07", "targetname");
	var_2682eb79 = function_6ada35ba("cin_lot_debris_piece_08", "targetname");
	var_807110 = function_6ada35ba("cin_lot_debris_piece_09", "targetname");
	var_d7ff5896 = function_6ada35ba("cin_lot_debris_piece_10", "targetname");
	var_fe01d2ff = function_6ada35ba("cin_lot_debris_piece_11", "targetname");
	var_8bfa63c4 = function_6ada35ba("cin_lot_debris_piece_12", "targetname");
	var_b1fcde2d = function_6ada35ba("cin_lot_debris_piece_13", "targetname");
	var_30944458 function_dc8c8404();
	var_a29bb393 function_dc8c8404();
	var_7c99392a function_dc8c8404();
	var_eea0a865 function_dc8c8404();
	var_c89e2dfc function_dc8c8404();
	var_3aa59d37 function_dc8c8404();
	var_14a322ce function_dc8c8404();
	var_2682eb79 function_dc8c8404();
	var_807110 function_dc8c8404();
	var_d7ff5896 function_dc8c8404();
	var_fe01d2ff function_dc8c8404();
	var_8bfa63c4 function_dc8c8404();
	var_b1fcde2d function_dc8c8404();
}

/*
	Name: function_d9f5f2cf
	Namespace: namespace_45eca03
	Checksum: 0x4113CA4
	Offset: 0x24D0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_d9f5f2cf()
{
	self namespace_96fa87af::function_42496438(0);
	self namespace_96fa87af::function_500f51c7(0);
	self namespace_37b990db::function_54bdb053(0);
	self namespace_96fa87af::function_492f8fe7(1, 0);
	self namespace_96fa87af::function_492f8fe7(2, 0);
	self namespace_71e9cb84::function_74d6b22f("gunship_rumble_off", 1);
}

/*
	Name: function_90b04eba
	Namespace: namespace_45eca03
	Checksum: 0x4628D6C7
	Offset: 0x2578
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_90b04eba(var_c77d2837)
{
	var_c77d2837["mothership"] function_8c8e79fe();
}

/*
	Name: function_623303f2
	Namespace: namespace_45eca03
	Checksum: 0x96C3DBC
	Offset: 0x25B0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_623303f2(var_c77d2837)
{
	var_c77d2837["mothership"] function_48f26766();
}

/*
	Name: function_5b067572
	Namespace: namespace_45eca03
	Checksum: 0x9675EF99
	Offset: 0x25E8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_5b067572(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_5bb13a75
	Namespace: namespace_45eca03
	Checksum: 0x7C2C24FA
	Offset: 0x2618
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_5bb13a75()
{
	wait(3);
	var_f9749701 = function_9b7fda5e("script_origin", (0, 0, 0));
	var_f9749701 function_c2931a36("amb_heart_monitor_2d", 1);
}

/*
	Name: function_faf62cf1
	Namespace: namespace_45eca03
	Checksum: 0x7170A6A
	Offset: 0x2678
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_faf62cf1(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_428ff2f();
		level thread function_c40186f4();
		level thread function_66b6b1c7();
	}
	else if(function_5b49d38c(level.var_2fd26037))
	{
		level.var_2fd26037 function_dc8c8404();
	}
	namespace_1d795d47::function_f58fccb8(var_b04bc952);
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("gunship_down_fxanim", "targetname");
	var_1cbcb46d namespace_cc27597::function_c35e6aab();
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_capture_taylor");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_leviathan");
	namespace_f4ff722a::function_a2c4c634();
	function_335a1753();
	function_f5bbb458();
	var_15025f5b = "ms_r4";
	level thread function_ad67b293(var_15025f5b);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	level.var_38a4277e = namespace_2f06d687::function_7387a40a("gunship");
	level.var_38a4277e thread function_82e92a08();
	level notify("hash_a450f864");
	namespace_80983c42::function_80983c42("fx_boss_battle_ambients");
	level thread function_49249bff();
	level waittill("hash_4c66c579");
	level thread namespace_3bad5a01::function_973b77f9();
	wait(2);
	namespace_1d795d47::function_be8adfb8("boss_battle");
}

/*
	Name: function_49249bff
	Namespace: namespace_45eca03
	Checksum: 0x285A7462
	Offset: 0x28E0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_49249bff()
{
	level thread namespace_3bad5a01::function_d6e5b30();
	wait(0.5);
	level namespace_ad23e503::function_74d6b22f("ready_to_move_first_armory_vo");
	level namespace_71b8dba1::function_a463d127("kane_leviathans_are_heavy_0");
	level namespace_71b8dba1::function_a463d127("kane_mobile_armories_on_t_0");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_leviathan_destroy");
	level namespace_ad23e503::function_74d6b22f("story_vo_completed");
	wait(5);
	level thread function_eb80777c();
}

/*
	Name: function_309d7a5a
	Namespace: namespace_45eca03
	Checksum: 0x3C042FF5
	Offset: 0x29C0
	Size: 0xC9
	Parameters: 2
	Flags: None
*/
function function_309d7a5a(var_24d48af, var_3865186)
{
	if(!isdefined(level.var_2e49e915))
	{
		level.var_2e49e915 = 0;
	}
	if(level namespace_ad23e503::function_7922262b("story_vo_completed") && !isdefined(level.var_1d581e7) && level.var_2e49e915 == 0)
	{
		level.var_1d581e7 = var_24d48af;
		level.var_1df069b5 = 1;
		namespace_71b8dba1::function_a463d127(var_24d48af);
		level.var_1df069b5 = 0;
		if(!isdefined(var_3865186))
		{
			var_3865186 = 5;
		}
		wait(var_3865186);
		level.var_1d581e7 = undefined;
	}
}

/*
	Name: function_335a1753
	Namespace: namespace_45eca03
	Checksum: 0xF08D2854
	Offset: 0x2A98
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_335a1753()
{
	level namespace_ad23e503::function_c35e6aab("call_next_mobile_shop");
	level namespace_ad23e503::function_c35e6aab("call_next_mobile_armory");
	level namespace_ad23e503::function_c35e6aab("gunship_in_transition");
	level namespace_ad23e503::function_c35e6aab("story_vo_completed");
	level namespace_ad23e503::function_c35e6aab("gunship_high_out_of_battle");
	level namespace_ad23e503::function_74d6b22f("flag_roof_battle_kill_trigger_enable");
	level.var_6c0436ff = 0;
	level namespace_ad23e503::function_c35e6aab("first_missile_fired_vo");
	level namespace_ad23e503::function_c35e6aab("first_mobile_armory_vo");
	level namespace_ad23e503::function_c35e6aab("ready_to_move_first_armory_vo");
	level namespace_ad23e503::function_c35e6aab("stop_dialog_remote");
	level.var_fadf752 = [];
	level.var_fadf752[0] = "plyr_kane_you_telling_me_0";
	level.var_fadf752[1] = "plyr_kane_you_telling_me_1";
	level.var_af475f02 = [];
	level.var_af475f02[0] = "kane_leviathan_deploying_1";
	level.var_af475f02[1] = "kane_grab_cover_incoming_0";
	level.var_af475f02[2] = "kane_missiles_incoming_0";
	level.var_ead3caed = [];
	level.var_ead3caed[0] = "kane_leviathan_deploying_0";
	level.var_ead3caed[1] = "kane_incoming_raps_0";
	level.var_ead3caed[2] = "kane_nrc_airship_deployin_0";
	level.var_4483235d = [];
	level.var_4483235d[0] = "kane_leviathan_deploying_2";
	level.var_4483235d[1] = "kane_heads_up_hounds_inc_0";
	level.var_4483235d[2] = "kane_nrc_airship_sending_0";
}

/*
	Name: function_eb80777c
	Namespace: namespace_45eca03
	Checksum: 0x8FAAF31A
	Offset: 0x2D08
	Size: 0x7B7
	Parameters: 0
	Flags: None
*/
function function_eb80777c()
{
	wait(8);
	level function_80fdeb82();
	level.var_2e49e915 = 1;
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_a463d127("tayr_welcome_back_2");
	}
	level.var_2e49e915 = 0;
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_taylor_you_need_to_0");
	}
	level.var_2e49e915 = 0;
	var_22598b38 = 3 + function_26299103(5);
	wait(var_22598b38);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_a463d127("tayr_do_you_know_what_s_h_1");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_i_know_you_can_hear_0");
	}
	level.var_2e49e915 = 0;
	var_22598b38 = 3 + function_26299103(5);
	wait(var_22598b38);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_a463d127("tayr_you_ve_got_a_long_wa_1");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_what_s_happening_to_1");
	}
	level.var_2e49e915 = 0;
	var_22598b38 = 3 + function_26299103(5);
	wait(var_22598b38);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_a463d127("tayr_your_dni_may_show_yo_1");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_you_don_t_have_to_be_0");
	}
	level.var_2e49e915 = 0;
	var_22598b38 = 3 + function_26299103(5);
	wait(var_22598b38);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_a463d127("tayr_you_were_with_sarah_0");
	}
	level.var_2e49e915 = 0;
	wait(0.5);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_you_re_right_i_was_0");
	}
	level.var_2e49e915 = 0;
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_i_also_know_it_wasn_0");
	}
	level.var_2e49e915 = 0;
	var_22598b38 = 3 + function_26299103(5);
	wait(var_22598b38);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_a463d127("tayr_clock_s_ticking_new_1");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_you_know_me_you_can_2");
	}
	level.var_2e49e915 = 0;
	var_22598b38 = 3 + function_26299103(5);
	wait(var_22598b38);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_it_s_not_too_late_to_2");
	}
	level.var_2e49e915 = 0;
	wait(1);
	level.var_2e49e915 = 1;
	level function_80fdeb82();
	if(!level namespace_ad23e503::function_7922262b("stop_dialog_remote"))
	{
		level namespace_71b8dba1::function_a463d127("tayr_sometimes_you_have_1");
	}
	level.var_2e49e915 = 0;
}

/*
	Name: function_80fdeb82
	Namespace: namespace_45eca03
	Checksum: 0x560D9C6A
	Offset: 0x34C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_80fdeb82()
{
	level endon("hash_4c66c579");
	while(level.var_1df069b5 == 1)
	{
		wait(0.1);
	}
}

/*
	Name: function_66b6b1c7
	Namespace: namespace_45eca03
	Checksum: 0xD5976C58
	Offset: 0x3500
	Size: 0x229
	Parameters: 0
	Flags: None
*/
function function_66b6b1c7()
{
	var_912c35b = function_99201f25("hero_shed_piece", "targetname");
	foreach(var_f29b0bec in var_912c35b)
	{
		if(var_f29b0bec.var_fc5ff01a != "shed_explosion_a")
		{
			var_f29b0bec thread namespace_431cac9::function_cdf9cde7("mobile_shop_fall_explosion");
		}
	}
	var_912c35b = function_99201f25("roof_shed_piece_l", "targetname");
	foreach(var_f29b0bec in var_912c35b)
	{
		var_f29b0bec thread namespace_431cac9::function_cdf9cde7("mobile_shop_fall_explosion");
	}
	var_912c35b = function_99201f25("roof_shed_piece_r", "targetname");
	foreach(var_f29b0bec in var_912c35b)
	{
		var_f29b0bec thread namespace_431cac9::function_cdf9cde7("mobile_shop_fall_explosion");
	}
}

/*
	Name: function_849fa351
	Namespace: namespace_45eca03
	Checksum: 0x652DAA12
	Offset: 0x3738
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_849fa351()
{
	var_2e9702c2 = function_99201f25("boss_player_hunter", "targetname");
}

/*
	Name: function_f5bbb458
	Namespace: namespace_45eca03
	Checksum: 0x9548706C
	Offset: 0x3770
	Size: 0x291
	Parameters: 0
	Flags: None
*/
function function_f5bbb458()
{
	level.var_217caec4 = [];
	function_87c0d86f("ms_l1", 0);
	function_87c0d86f("ms_l2", 1);
	function_87c0d86f("ms_l3", 5);
	function_87c0d86f("ms_l4", 3);
	function_87c0d86f("ms_r1", 3);
	function_87c0d86f("ms_r2", 2);
	function_87c0d86f("ms_r3", 4);
	function_87c0d86f("ms_r4", 0);
	level.var_b774ab1 = [];
	level.var_7f35354d = [];
	function_a1307751("ms_l1");
	function_a1307751("ms_l2");
	function_a1307751("ms_l3");
	function_a1307751("ms_l4");
	function_a1307751("ms_r1");
	function_a1307751("ms_r2");
	function_a1307751("ms_r3");
	function_a1307751("ms_r4");
	var_c92cac0f = function_99201f25("raps_slow", "targetname");
	foreach(var_91fc4ce in var_c92cac0f)
	{
		var_91fc4ce function_175e6b8e(0);
	}
}

/*
	Name: function_a1307751
	Namespace: namespace_45eca03
	Checksum: 0x9CD68E2C
	Offset: 0x3A10
	Size: 0x9D
	Parameters: 1
	Flags: None
*/
function function_a1307751(var_cbb15570)
{
	level.var_7f35354d[var_cbb15570] = namespace_431cac9::function_b26ca094(var_cbb15570 + "_group", 1, 0, 1, undefined, 1);
	function_9b385ca5();
	var_ca404144 = var_fa0d90fd;
	function_c35e6aab(var_ca404144, var_cbb15570);
	level.var_b774ab1[var_cbb15570] = var_ca404144;
}

/*
	Name: function_87c0d86f
	Namespace: namespace_45eca03
	Checksum: 0x92AE0BAC
	Offset: 0x3AB8
	Size: 0xE7
	Parameters: 3
	Flags: None
*/
function function_87c0d86f(var_cbb15570, var_a550bf45, var_95456b04)
{
	level.var_217caec4[var_cbb15570] = function_a8fb77bd();
	level.var_217caec4[var_cbb15570].var_c957ee7 = 0;
	level.var_217caec4[var_cbb15570].var_69a938b4 = 0;
	level.var_217caec4[var_cbb15570].var_a550bf45 = var_a550bf45;
	var_20eebd31 = namespace_14b42b8a::function_7922262b(var_cbb15570 + "_1", "targetname");
	level.var_217caec4[var_cbb15570].var_b71ed4a2 = var_20eebd31.var_722885f3;
}

/*
	Name: function_ad67b293
	Namespace: namespace_45eca03
	Checksum: 0x3808BDD2
	Offset: 0x3BA8
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_ad67b293(var_15025f5b)
{
	level.var_33df5678 = level.var_217caec4[var_15025f5b];
	level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
	level namespace_ad23e503::function_1ab5ebec("ready_to_move_first_armory_vo");
	level thread function_396f2a6e("ms_r2", "other");
	level thread function_396f2a6e("ms_r3", "minigun");
	level thread function_396f2a6e("ms_l1", "other");
	level thread function_396f2a6e("ms_l4", "minigun");
}

/*
	Name: function_afb8707f
	Namespace: namespace_45eca03
	Checksum: 0xAF817921
	Offset: 0x3CB0
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_afb8707f()
{
	self.var_cfe2cc2c = function_6ada35ba("gunship_first_missile_target", "targetname");
	var_1ad1e636 = function_6ada35ba("bb_start_weapon_clip", "targetname");
	var_1ad1e636 function_8d63f8d0(1);
	var_1ad1e636.var_3a90f16b = 10000;
	var_1ad1e636 endon("hash_128f8789");
	while(1)
	{
		var_1ad1e636 waittill("hash_f9348fda", var_74d0774f, var_677b3e78, var_a3382de1, var_10e30246, var_394451d8, var_c4fe462, var_e64d69f9, var_c04aef90, var_1d6db0a3);
		if(var_677b3e78.var_9d34dca7 === "veh_bo3_mil_gunship_nrc" && (var_394451d8 == "MOD_PROJECTILE" || var_394451d8 == "MOD_PROJECTILE_SPLASH"))
		{
			self.var_cfe2cc2c function_dc8c8404();
			self.var_cfe2cc2c = undefined;
			var_1ad1e636 function_dc8c8404();
		}
		var_1ad1e636.var_3a90f16b = 10000;
		wait(0.05);
	}
}

/*
	Name: function_b2b695fd
	Namespace: namespace_45eca03
	Checksum: 0xF6B7269A
	Offset: 0x3E68
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b2b695fd()
{
	level namespace_ad23e503::function_1ab5ebec("ready_to_move_first_armory_vo");
	level thread function_309d7a5a("kane_mobile_armories_on_t_0");
	level namespace_ad23e503::function_74d6b22f("first_mobile_armory_vo");
}

/*
	Name: function_396f2a6e
	Namespace: namespace_45eca03
	Checksum: 0x9F9145B2
	Offset: 0x3ED8
	Size: 0xB69
	Parameters: 2
	Flags: None
*/
function function_396f2a6e(var_cbb15570, var_4e8cfdc6)
{
	level.var_217caec4[var_cbb15570].var_d51654a4 = "normal";
	level.var_217caec4[var_cbb15570].var_c957ee7 = 1;
	level.var_33df5678 = level.var_217caec4[var_cbb15570];
	var_959da48b = var_cbb15570 + "_group";
	var_526507d5 = var_cbb15570 + "_gate";
	var_7b6485f6 = function_99201f25(var_526507d5, "targetname");
	var_59dc7746 = 0;
	if(var_4e8cfdc6 == "minigun")
	{
		var_59dc7746 = 1;
	}
	var_f9a1ddd6 = level.var_7f35354d[var_cbb15570];
	if(var_4e8cfdc6 == "minigun")
	{
		foreach(var_83f53318 in var_f9a1ddd6.var_75cccf1)
		{
			var_409f4c83 = var_83f53318 namespace_431cac9::function_c7b0a169(1, 1);
			var_409f4c83 function_37f7858a(var_f9a1ddd6);
		}
		break;
	}
	foreach(var_daa69c19 in var_f9a1ddd6.var_87a9e25c)
	{
		var_1c023cce = var_daa69c19 namespace_431cac9::function_bc5f7909(var_daa69c19.var_db7bb468);
		var_1c023cce function_37f7858a(var_f9a1ddd6);
	}
	var_158e4f91 = level.var_b774ab1[var_cbb15570];
	var_23abba9c = function_9bc3d62a();
	var_23abba9c function_5a5a8b2c();
	var_23abba9c function_ada64136();
	function_845aae7f(var_158e4f91);
	namespace_4dbf3ae3::function_42e87952("trig_" + var_cbb15570, "script_noteworthy");
	level waittill("vehicle_platform_" + var_cbb15570 + "_stop");
	foreach(var_a43047cf in var_7b6485f6)
	{
		var_a43047cf thread function_d2dd0256(38, 0.5);
	}
	var_5f7e5fb4 = [];
	if(!isdefined(var_5f7e5fb4))
	{
		var_5f7e5fb4 = [];
	}
	else if(!function_6e2770d8(var_5f7e5fb4))
	{
		var_5f7e5fb4 = function_84970cc4(var_5f7e5fb4);
	}
	var_5f7e5fb4[var_5f7e5fb4.size] = function_b4cb3503(var_cbb15570 + "_in_begin", "targetname");
	if(!isdefined(var_5f7e5fb4))
	{
		var_5f7e5fb4 = [];
	}
	else if(!function_6e2770d8(var_5f7e5fb4))
	{
		var_5f7e5fb4 = function_84970cc4(var_5f7e5fb4);
	}
	var_5f7e5fb4[var_5f7e5fb4.size] = function_b4cb3503(var_cbb15570 + "_out_begin", "targetname");
	foreach(var_c2c49b4c in var_5f7e5fb4)
	{
		if(isdefined(var_c2c49b4c))
		{
			function_47d28a09(var_c2c49b4c);
		}
	}
	var_91fc4ce = function_6ada35ba("trig_slow_" + var_cbb15570, "script_noteworthy");
	var_91fc4ce function_175e6b8e(1);
	level notify("hash_4ccf207", var_cbb15570 + "_start_up", var_158e4f91);
	if(var_4e8cfdc6 == "minigun")
	{
		var_8b943ba8 = 1;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(function_5dbf7eca(var_5dc5e20a.var_fd4f9b7c.var_4be20d44, "minigun"))
			{
				var_8b943ba8 = 0;
			}
		}
		if(var_8b943ba8)
		{
			level thread function_309d7a5a("kane_get_that_minigun_fro_0");
		}
	}
	level waittill("hash_4c66c579");
	function_c4bfe365(var_cbb15570);
	foreach(var_a43047cf in var_7b6485f6)
	{
		var_a43047cf thread function_ee5df555(38, 0.5);
	}
	var_23abba9c function_ada64136();
	function_845aae7f(var_158e4f91);
	namespace_4dbf3ae3::function_42e87952("trig_" + var_cbb15570, "script_noteworthy");
	var_91fc4ce = function_6ada35ba("trig_slow_" + var_cbb15570, "script_noteworthy");
	var_91fc4ce function_175e6b8e(0);
	if(var_4e8cfdc6 == "minigun")
	{
		foreach(var_83f53318 in var_f9a1ddd6.var_75cccf1)
		{
			if(isdefined(var_83f53318))
			{
				if(isdefined(var_83f53318.var_409f4c83))
				{
					var_83f53318.var_409f4c83 function_dc8c8404();
				}
			}
		}
	}
	foreach(var_c2c49b4c in var_5f7e5fb4)
	{
		if(isdefined(var_c2c49b4c))
		{
			function_9ab58e36(var_c2c49b4c);
		}
	}
	level waittill("vehicle_platform_" + var_cbb15570 + "_stop");
	if(var_4e8cfdc6 == "minigun")
	{
		foreach(var_83f53318 in var_f9a1ddd6.var_75cccf1)
		{
			if(isdefined(var_83f53318))
			{
				var_83f53318 notify("hash_28a4f84e", var_cbb15570 + "_start_down");
			}
		}
	}
	foreach(var_33723053 in var_f9a1ddd6.var_bcf73ab6)
	{
		var_33723053 function_48f26766();
		var_33723053 function_4083a98e();
	}
	foreach(var_daa69c19 in var_f9a1ddd6.var_87a9e25c)
	{
		var_daa69c19 function_50ccee8d();
	}
}

/*
	Name: function_ee5df555
	Namespace: namespace_45eca03
	Checksum: 0x90B8E5F0
	Offset: 0x4A50
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_ee5df555(var_7d15e2f8, var_a3adc876)
{
	self function_a96a2721(self.var_722885f3 + (0, 0, var_7d15e2f8), var_a3adc876);
}

/*
	Name: function_d2dd0256
	Namespace: namespace_45eca03
	Checksum: 0xBBE7D296
	Offset: 0x4AA0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_d2dd0256(var_7d15e2f8, var_a3adc876)
{
	self function_a96a2721(self.var_722885f3 - (0, 0, var_7d15e2f8), var_a3adc876);
}

/*
	Name: function_aa06c2d7
	Namespace: namespace_45eca03
	Checksum: 0xEDC967C0
	Offset: 0x4AF0
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_aa06c2d7()
{
	var_d264ae0a = function_84970cc4("none", "none", "minigun");
	var_3c3fc8a8 = function_c4d5ec1f("minigun_lotus");
	var_7098dcba = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_2103ff4b(var_3c3fc8a8))
		{
			var_7098dcba++;
		}
	}
	if(var_7098dcba != level.var_2395e945.size)
	{
		if(!isdefined(var_d264ae0a))
		{
			var_d264ae0a = [];
		}
		else if(!function_6e2770d8(var_d264ae0a))
		{
			var_d264ae0a = function_84970cc4(var_d264ae0a);
		}
		var_d264ae0a[var_d264ae0a.size] = "minigun";
	}
	var_4e8cfdc6 = namespace_84970cc4::function_47d18840(var_d264ae0a);
	if(var_4e8cfdc6 != "none")
	{
		level.var_6c0436ff = 0;
	}
	else
	{
		level.var_6c0436ff++;
		if(level.var_6c0436ff > 2)
		{
			function_81403b2f(var_d264ae0a, "none");
			var_4e8cfdc6 = namespace_84970cc4::function_47d18840(var_d264ae0a);
		}
	}
	return var_4e8cfdc6;
}

/*
	Name: function_9981be4a
	Namespace: namespace_45eca03
	Checksum: 0x13E1DEE9
	Offset: 0x4D10
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_9981be4a(var_cbb15570)
{
	var_1d2985c7 = function_316422d1(level.var_2395e945[0].var_722885f3, level.var_217caec4[var_cbb15570].var_b71ed4a2);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_36b8634f = function_316422d1(var_5dc5e20a.var_722885f3, level.var_217caec4[var_cbb15570].var_b71ed4a2);
		if(var_36b8634f < var_1d2985c7)
		{
			var_1d2985c7 = var_36b8634f;
		}
	}
	var_4996fe37 = function_a8fb77bd();
	var_4996fe37.var_cbb15570 = var_cbb15570;
	var_4996fe37.var_36b8634f = var_1d2985c7;
	return var_4996fe37;
}

/*
	Name: function_c4bfe365
	Namespace: namespace_45eca03
	Checksum: 0x5CA4F16F
	Offset: 0x4E88
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_c4bfe365(var_cbb15570)
{
	var_67825717 = function_6ada35ba("vol_" + var_cbb15570, "targetname");
	var_60be00cb = 1;
	while(isdefined(var_60be00cb) && var_60be00cb)
	{
		var_23541867 = 0;
		var_c7a9ddc2 = function_99201f25("gunship_raps_ai", "targetname");
		var_c7a9ddc2 = function_525ae497(var_c7a9ddc2, level.var_2395e945, 0, 0);
		foreach(var_ad931ecf in var_c7a9ddc2)
		{
			if(var_ad931ecf function_32fa5072(var_67825717))
			{
				break;
			}
			var_23541867++;
		}
		if(var_23541867 == var_c7a9ddc2.size)
		{
			var_60be00cb = 0;
		}
		wait(0.05);
	}
}

/*
	Name: function_82e92a08
	Namespace: namespace_45eca03
	Checksum: 0x1EFBDF7B
	Offset: 0x5018
	Size: 0x3EB
	Parameters: 0
	Flags: None
*/
function function_82e92a08()
{
	self endon("hash_128f8789");
	level thread function_e0652cc();
	function_aa332733("vehicle_selfCollision", 1);
	self function_4f87e1b9(-1);
	self.var_2f6b8583 = self.var_3a90f16b * 0.01;
	self.var_eb0aa568 = 0;
	self.var_c753fc26 = 0;
	self.var_9d040270 = 0;
	self.var_9db475fa = level.var_33df5678.var_a550bf45;
	self.var_dc29a320 = &function_a3869b68;
	self.var_af439c86 = 0;
	self.var_e7f801f1 = 0;
	self.var_7dfaf62 = 999999;
	self.var_a1ed1ed1 = 4000;
	self function_169cc712(self.var_722885f3, 0, self.var_7dfaf62, self.var_a1ed1ed1);
	self function_500dc2f7(self.var_f8456b37 * 0.5);
	self.var_342d9e3a = 1;
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_279dd9e7));
	#/
	self.var_c1239d26 = namespace_14b42b8a::function_b7af54ae("vehiclecustomsettings", self.var_279dd9e7);
	self namespace_96fa87af::function_492f8fe7(1, 1);
	self namespace_96fa87af::function_492f8fe7(2, 1);
	self.var_375cf54a = 1;
	self.var_3a087745 = 1;
	self namespace_72ee5da4::function_a767f9b4();
	self.var_7f956758 = [];
	self namespace_ad23e503::function_c35e6aab("gunship_can_shoot");
	self namespace_ad23e503::function_c35e6aab("missiles_not_firing");
	self namespace_ad23e503::function_c35e6aab("gunship_over_roof");
	self namespace_ad23e503::function_74d6b22f("gunship_can_shoot");
	self namespace_ad23e503::function_74d6b22f("missiles_not_firing");
	var_70518e6d = function_6ada35ba("gunship_body", "targetname");
	var_70518e6d function_8f279593();
	var_70518e6d function_37f7858a(self);
	var_70518e6d thread function_69c5f9ce(self);
	self thread function_1e767c06();
	self thread function_fe22bc30();
	self thread function_59faab94();
	self.var_c3733510 = 0;
	self thread function_d41b2661();
	self.var_f7041287 = 0;
	self thread function_a113ef2c();
	self thread function_4c66c579();
	self function_a5223a12();
}

/*
	Name: function_e0652cc
	Namespace: namespace_45eca03
	Checksum: 0xDF7B09F
	Offset: 0x5410
	Size: 0x14F
	Parameters: 0
	Flags: None
*/
function function_e0652cc()
{
	while(1)
	{
		level waittill("hash_2693b45");
		wait(1);
		if(isdefined(level.var_38a4277e))
		{
			if(level.var_38a4277e.var_e507c83f["tag_target_fan_right_outer"])
			{
				level.var_38a4277e namespace_88a69b2f::function_8ee5a301(&"tag_target_fan_right_outer", 4000, 7500);
			}
			if(level.var_38a4277e.var_e507c83f["tag_target_fan_right_inner"])
			{
				level.var_38a4277e namespace_88a69b2f::function_8ee5a301(&"tag_target_fan_right_inner", 4000, 7500);
			}
			if(level.var_38a4277e.var_e507c83f["tag_target_fan_left_inner"])
			{
				level.var_38a4277e namespace_88a69b2f::function_8ee5a301(&"tag_target_fan_left_inner", 4000, 7500);
			}
			if(level.var_38a4277e.var_e507c83f["tag_target_fan_left_outer"])
			{
				level.var_38a4277e namespace_88a69b2f::function_8ee5a301(&"tag_target_fan_left_outer", 4000, 7500);
			}
		}
	}
}

/*
	Name: function_d41b2661
	Namespace: namespace_45eca03
	Checksum: 0x41DA688F
	Offset: 0x5568
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_d41b2661()
{
	wait(10);
	self.var_c3733510 = 1;
}

/*
	Name: function_93d07f7e
	Namespace: namespace_45eca03
	Checksum: 0xA2201D86
	Offset: 0x5588
	Size: 0x79F
	Parameters: 0
	Flags: None
*/
function function_93d07f7e()
{
	var_de9716e7 = function_87ea89a(self.var_722885f3, self.var_377a9c22.var_722885f3);
	var_9ef92dc6 = 0.5 * self.var_c1239d26.var_4d52f4f4 + self.var_c1239d26.var_ca67b2ea;
	var_50e6d6bb = 1.2 * var_9ef92dc6;
	var_de56317c = 3 * var_9ef92dc6;
	var_961b3962 = function_34bf0601(var_50e6d6bb, var_de56317c, 1, 3, var_de9716e7);
	var_7ad04df4 = 0.5 * self.var_c1239d26.var_f7c19119 - self.var_c1239d26.var_52676fa7;
	var_2a678981 = 300;
	var_d5b210fc = function_54f69de9(self.var_722885f3, self.var_f8456b37 + 500, 10000, 1000, self.var_f8456b37 * 0.4, self, self.var_f8456b37 * 0.4);
	if(!isdefined(var_d5b210fc.var_1d8893fc) && var_d5b210fc.var_1d8893fc && !level namespace_ad23e503::function_7922262b("gunship_high_out_of_battle"))
	{
		var_5740256e = self function_8790dc2e(self.var_722885f3, self.var_f8456b37 + 500);
		if(isdefined(var_5740256e))
		{
			self.var_ec9be5b1 = var_d5b210fc.var_1d8893fc;
			/#
				function_2e4b8c78("Dev Block strings are not supported");
			#/
			return var_5740256e;
		}
	}
	function_9d329e33(var_d5b210fc, self);
	namespace_72ee5da4::function_dc90001d(var_d5b210fc);
	self namespace_72ee5da4::function_d6e12a11(var_d5b210fc, self.var_377a9c22, self.var_c1239d26.var_4d52f4f4, self.var_c1239d26.var_ca67b2ea);
	var_a1ed1ed1 = self.var_377a9c22.var_722885f3[2] + 0.5 * self.var_c1239d26.var_52676fa7 + self.var_c1239d26.var_f7c19119;
	foreach(var_dd89f865 in var_d5b210fc.var_72254e15)
	{
		/#
			if(!isdefined(var_dd89f865.var_a3216a9f))
			{
				var_dd89f865.var_a3216a9f = [];
			}
			var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = function_72a94f05(0, var_2a678981);
		#/
		var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + function_72a94f05(0, var_2a678981);
		/#
			if(!isdefined(var_dd89f865.var_a3216a9f))
			{
				var_dd89f865.var_a3216a9f = [];
			}
			var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = var_dd89f865.var_2c18542d * -1;
		#/
		var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + var_dd89f865.var_2c18542d * -1;
		var_fe369119 = function_69c2f683(var_dd89f865.var_722885f3[2] - var_a1ed1ed1);
		if(var_fe369119 > var_7ad04df4)
		{
			/#
				if(!isdefined(var_dd89f865.var_a3216a9f))
				{
					var_dd89f865.var_a3216a9f = [];
				}
				var_dd89f865.var_a3216a9f["Dev Block strings are not supported"] = var_fe369119 * -1;
			#/
			var_dd89f865.var_f1242439 = var_dd89f865.var_f1242439 + var_fe369119 * -1;
		}
	}
	namespace_72ee5da4::function_272864e7(var_d5b210fc);
	function_88b06e3(var_d5b210fc, self.var_377a9c22.var_722885f3, self function_501eb072() - self.var_722885f3, self, 1, self.var_377a9c22);
	var_18db854 = undefined;
	foreach(var_dd89f865 in var_d5b210fc.var_72254e15)
	{
		if(isdefined(var_dd89f865.var_88cb27d1) && var_dd89f865.var_88cb27d1)
		{
			var_18db854 = var_dd89f865;
			break;
		}
	}
	if(!isdefined(var_18db854))
	{
		if(isdefined(var_d5b210fc.var_72254e15[0]))
		{
			var_18db854 = var_d5b210fc.var_72254e15[0];
		}
	}
	self namespace_72ee5da4::function_629ab2b1(var_d5b210fc);
	/#
		if(isdefined(function_4bd0142f("Dev Block strings are not supported")) && function_4bd0142f("Dev Block strings are not supported"))
		{
			if(isdefined(var_18db854))
			{
				function_8afd7e24(self.var_722885f3, var_18db854.var_722885f3, (0.3, 1, 0));
			}
			function_8afd7e24(self.var_722885f3, self.var_377a9c22.var_722885f3, (1, 0, 0.4));
		}
	#/
	var_3e63db = self.var_722885f3;
	self.var_ec9be5b1 = var_d5b210fc.var_1d8893fc;
	if(isdefined(var_18db854))
	{
		var_3e63db = var_18db854.var_722885f3;
	}
	return var_3e63db;
}

/*
	Name: function_ea4bbd0d
	Namespace: namespace_45eca03
	Checksum: 0x3FC1301B
	Offset: 0x5D30
	Size: 0x1EB
	Parameters: 3
	Flags: None
*/
function function_ea4bbd0d(var_dd89f865, var_6050ab17, var_5e1bf73c)
{
	self endon("hash_128f8789");
	var_6050ab17 endon("hash_128f8789");
	var_6050ab17 endon("hash_643a7daf");
	if(!isdefined(self.var_fa144784))
	{
		self.var_fa144784 = function_9b7fda5e("script_origin", var_dd89f865);
	}
	self.var_fa144784 function_52fddbd0();
	self.var_fa144784.var_722885f3 = var_dd89f865;
	self function_3488d445(self.var_fa144784);
	self waittill("hash_4ab576df");
	var_2973f62a = GetTime();
	var_a4e8111c = (0, 0, 0);
	if(function_5cfb84bb(var_6050ab17))
	{
		var_a4e8111c = var_6050ab17 function_501eb072() - var_6050ab17.var_722885f3;
	}
	while(GetTime() < var_2973f62a + var_5e1bf73c * 1000)
	{
		self.var_fa144784.var_722885f3 = function_c7118d57(var_dd89f865, var_6050ab17.var_722885f3 + var_a4e8111c, GetTime() - var_2973f62a / var_5e1bf73c * 1000);
		wait(0.05);
	}
	self.var_fa144784.var_722885f3 = var_6050ab17.var_722885f3 + var_a4e8111c;
	wait(0.05);
	self.var_fa144784 function_37f7858a(var_6050ab17);
}

/*
	Name: function_e2183396
	Namespace: namespace_45eca03
	Checksum: 0x601E65FF
	Offset: 0x5F28
	Size: 0x1A7
	Parameters: 0
	Flags: None
*/
function function_e2183396()
{
	self endon("hash_128f8789");
	self endon("hash_2e91796b");
	while(1)
	{
		if(!level namespace_ad23e503::function_7922262b("gunship_high_out_of_battle"))
		{
			var_6050ab17 = self.var_377a9c22;
			if(isdefined(var_6050ab17))
			{
				if(self function_4246bc05(var_6050ab17))
				{
					var_ecb12b18 = function_f679a325((self.var_722885f3 - var_6050ab17.var_722885f3[0], self.var_722885f3 - var_6050ab17.var_722885f3[1], 0));
					self thread function_ea4bbd0d(var_6050ab17.var_722885f3 + var_ecb12b18 * 200, var_6050ab17, 1);
					self waittill("hash_4ab576df");
					self namespace_72ee5da4::function_afb82faf(1.5 + function_62e4226e(0.5));
					wait(2 + function_62e4226e(0.4));
				}
				else
				{
					wait(0.1);
				}
			}
			else
			{
				self function_62b52961();
				wait(0.2);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_a5223a12
	Namespace: namespace_45eca03
	Checksum: 0xB20B60A5
	Offset: 0x60D8
	Size: 0x467
	Parameters: 0
	Flags: None
*/
function function_a5223a12()
{
	self endon("hash_128f8789");
	self endon("hash_b72bd855");
	self.var_16f2fd07 = 0;
	var_85191bfb = level.var_33df5678;
	var_29eaa707 = 0;
	var_64e13df2 = 0;
	self thread function_e2183396();
	while(1)
	{
		if(self.var_16f2fd07)
		{
			wait(0.05);
			continue;
		}
		if(level namespace_ad23e503::function_7922262b("gunship_high_out_of_battle"))
		{
			var_ef088aca = namespace_14b42b8a::function_7faf4c39("gunship_out_of_fight_point", "targetname");
			var_cea909a8 = 1955032704;
			foreach(var_c7b6e8e4 in var_ef088aca)
			{
				if(function_cb3d1c9b(var_c7b6e8e4.var_722885f3, self.var_722885f3) < var_cea909a8)
				{
					var_1b28c94b = var_c7b6e8e4;
					var_cea909a8 = function_cb3d1c9b(var_c7b6e8e4.var_722885f3, self.var_722885f3);
				}
			}
			self function_c985552d(var_1b28c94b.var_722885f3, 1, 0);
			self namespace_72ee5da4::function_3a863dac();
			wait(0.05);
			continue;
		}
		if(isdefined(level.var_33df5678))
		{
			if(function_26299103(100) < 100 && (isdefined(self.var_d24de693) && self.var_d24de693) && (isdefined(self.var_b5b6b568) && self.var_b5b6b568))
			{
				self.var_1e900bbc = 1;
			}
			self function_333fd8f0(self.var_c1239d26.var_c0fdf540);
			if(isdefined(self.var_64c14cb4) && self.var_64c14cb4)
			{
				wait(0.1);
			}
			else if(!isdefined(self.var_377a9c22))
			{
				wait(0.25);
			}
			else if(isdefined(self.var_f7041287) && self.var_f7041287)
			{
				self function_313b72be();
				self.var_f7041287 = 0;
			}
			if(isdefined(self.var_7c83c7b9) && self.var_7c83c7b9)
			{
				self function_aa03c076();
			}
			else
			{
				var_3e63db = function_93d07f7e();
				self.var_1cf0dd4a = var_3e63db;
				if(isdefined(self.var_1cf0dd4a))
				{
					if(isdefined(self.var_ec9be5b1) && self.var_ec9be5b1)
					{
						self function_c985552d(self.var_1cf0dd4a, 1, 1);
						self namespace_72ee5da4::function_3a863dac();
					}
					else
					{
						self function_c985552d(self.var_1cf0dd4a, 1, 0);
						self namespace_72ee5da4::function_3a863dac();
					}
				}
				if(self.var_c3733510 && function_26299103(100) < 30)
				{
					self function_313b72be();
				}
			}
		}
	}
}

/*
	Name: function_52fd8e0c
	Namespace: namespace_45eca03
	Checksum: 0x6A21E9EB
	Offset: 0x6548
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_52fd8e0c()
{
	var_930421fd = function_99201f25("gunship_raps_ai", "targetname");
	level.var_36a074b0 = GetTime();
	while(var_930421fd.size > 2 && GetTime() - level.var_36a074b0 < 20000)
	{
		wait(0.05);
		var_930421fd = function_99201f25("gunship_raps_ai", "targetname");
	}
}

/*
	Name: function_7a689af4
	Namespace: namespace_45eca03
	Checksum: 0x10054056
	Offset: 0x65F0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_7a689af4()
{
	var_b9229bcd = function_99201f25("gunship_amws_ai", "targetname");
	level.var_5b028c20 = GetTime();
	while(var_b9229bcd.size > 2 && GetTime() - level.var_5b028c20 < 20000)
	{
		wait(0.05);
		var_b9229bcd = function_99201f25("gunship_amws_ai", "targetname");
	}
}

/*
	Name: function_fabd65a5
	Namespace: namespace_45eca03
	Checksum: 0xC2B9CAA
	Offset: 0x6698
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_fabd65a5()
{
	self.var_16f2fd07 = 1;
	self function_c985552d(self.var_722885f3 + VectorScale((0, 0, 1), 3000), 1, 1);
	self namespace_72ee5da4::function_3a863dac();
	self.var_16f2fd07 = 0;
	level namespace_ad23e503::function_2698b54f("gunship_high_out_of_battle", 0);
}

/*
	Name: function_59faab94
	Namespace: namespace_45eca03
	Checksum: 0x17A249F4
	Offset: 0x6728
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_59faab94()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	wait(0.5);
	self namespace_88a69b2f::function_8ee5a301(&"tag_target_fan_right_outer", 4000, 7500);
	self namespace_88a69b2f::function_8ee5a301(&"tag_target_fan_right_inner", 4000, 7500);
	self namespace_88a69b2f::function_8ee5a301(&"tag_target_fan_left_inner", 4000, 7500);
	self namespace_88a69b2f::function_8ee5a301(&"tag_target_fan_left_outer", 4000, 7500);
	self.var_e507c83f = [];
	self.var_e507c83f["tag_target_fan_right_outer"] = 1;
	self.var_e507c83f["tag_target_fan_right_inner"] = 1;
	self.var_e507c83f["tag_target_fan_left_inner"] = 1;
	self.var_e507c83f["tag_target_fan_left_outer"] = 1;
	var_c9f0ffa0 = function_99201f25("gunship_weakpoint", "targetname");
	self.var_c9f0ffa0 = var_c9f0ffa0;
	self.var_fd056e61 = [];
	foreach(var_d23e13a5 in var_c9f0ffa0)
	{
		var_d23e13a5 function_37f7858a(self);
		function_7a078777(var_d23e13a5);
		var_f4bd5505 = "fan_" + var_d23e13a5.var_caae374e + "_hurt";
		level.var_e7484c42[var_f4bd5505] = &function_9eab29c4;
		var_ce9e1adb = "fan_" + var_d23e13a5.var_caae374e + "_destroyed";
		level.var_e7484c42[var_ce9e1adb] = &function_6c18838;
		self.var_fd056e61[var_ce9e1adb] = var_d23e13a5;
	}
}

/*
	Name: function_6c18838
	Namespace: namespace_45eca03
	Checksum: 0x46E9B065
	Offset: 0x69F0
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_6c18838(var_ffec1daa, var_677b3e78)
{
	self function_118e623c(self.var_fd056e61[var_ffec1daa].var_8202763a);
	self.var_af439c86 = self.var_af439c86 + 1;
	self.var_e7f801f1 = self.var_e7f801f1 + 1;
	self.var_fd056e61[var_ffec1daa] function_dc8c8404();
}

/*
	Name: function_9eab29c4
	Namespace: namespace_45eca03
	Checksum: 0xC4F0B425
	Offset: 0x6A88
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function function_9eab29c4(var_ffec1daa, var_677b3e78)
{
	self.var_e7f801f1 = self.var_e7f801f1 + 1;
}

/*
	Name: function_118e623c
	Namespace: namespace_45eca03
	Checksum: 0x5015AB19
	Offset: 0x6AB8
	Size: 0x129
	Parameters: 1
	Flags: None
*/
function function_118e623c(var_62e1e54b)
{
	switch(var_62e1e54b)
	{
		case 1:
		{
			self namespace_88a69b2f::function_d66e4079(&"tag_target_fan_right_outer");
			self.var_e507c83f["tag_target_fan_right_outer"] = 0;
			break;
		}
		case 2:
		{
			self namespace_88a69b2f::function_d66e4079(&"tag_target_fan_right_inner");
			self.var_e507c83f["tag_target_fan_right_inner"] = 0;
			break;
		}
		case 3:
		{
			self namespace_88a69b2f::function_d66e4079(&"tag_target_fan_left_inner");
			self.var_e507c83f["tag_target_fan_left_inner"] = 0;
			break;
		}
		case 4:
		{
			self namespace_88a69b2f::function_d66e4079(&"tag_target_fan_left_outer");
			self.var_e507c83f["tag_target_fan_left_outer"] = 0;
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_4c66c579
	Namespace: namespace_45eca03
	Checksum: 0x1A620AEB
	Offset: 0x6BF0
	Size: 0x411
	Parameters: 0
	Flags: None
*/
function function_4c66c579()
{
	while(self.var_af439c86 < 4)
	{
		wait(0.05);
	}
	var_adc17f12 = [];
	if(!isdefined(var_adc17f12))
	{
		var_adc17f12 = [];
	}
	else if(!function_6e2770d8(var_adc17f12))
	{
		var_adc17f12 = function_84970cc4(var_adc17f12);
	}
	var_adc17f12[var_adc17f12.size] = "gunship_can_shoot";
	if(!isdefined(var_adc17f12))
	{
		var_adc17f12 = [];
	}
	else if(!function_6e2770d8(var_adc17f12))
	{
		var_adc17f12 = function_84970cc4(var_adc17f12);
	}
	var_adc17f12[var_adc17f12.size] = "missiles_not_firing";
	self namespace_ad23e503::function_8870cfa8(var_adc17f12);
	self notify("hash_478d205f");
	self notify("hash_9d463a5c");
	self notify("hash_b72bd855");
	self namespace_37b990db::function_54bdb053(0);
	var_c9f0ffa0 = function_99201f25("gunship_weakpoint", "targetname");
	foreach(var_d23e13a5 in var_c9f0ffa0)
	{
		self function_118e623c(var_d23e13a5.var_8202763a);
	}
	self notify("hash_cd4fad51");
	self function_333fd8f0(50);
	var_86b0a02 = namespace_14b42b8a::function_7922262b("of_gunship_start_pos");
	self function_bcfeb18(var_86b0a02.var_722885f3, 1, 0);
	self waittill("hash_48a3d97f");
	level notify("hash_4c66c579");
	level namespace_ad23e503::function_74d6b22f("stop_dialog_remote");
	var_930421fd = function_99201f25("gunship_raps_ai", "targetname");
	foreach(var_388753bb in var_930421fd)
	{
		var_388753bb function_dc8c8404();
	}
	var_b9229bcd = function_99201f25("gunship_amws_ai", "targetname");
	foreach(var_31e90922 in var_b9229bcd)
	{
		var_31e90922 function_dc8c8404();
	}
}

/*
	Name: function_69c5f9ce
	Namespace: namespace_45eca03
	Checksum: 0x30C20B47
	Offset: 0x7010
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_69c5f9ce(var_38a4277e)
{
	var_38a4277e endon("hash_6d2412ee");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_fe6599be);
		if(function_65f192a6(var_fe6599be))
		{
			var_fe6599be namespace_82b91a51::function_32d40124(&"CP_MI_CAIRO_LOTUS_LEVIATHAN_HINT", 1);
		}
		wait(30);
	}
}

/*
	Name: function_fe22bc30
	Namespace: namespace_45eca03
	Checksum: 0xF2C2C67B
	Offset: 0x7090
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_fe22bc30()
{
	self endon("hash_128f8789");
	var_ddd24e04 = self.var_2f6b8583;
	var_1082952f = self.var_3a90f16b - var_ddd24e04;
	var_8feca2ee = self.var_3a90f16b / 2;
	var_2f7d2047 = self.var_3a90f16b * 0.75;
	self thread function_66246a8b();
	while(1)
	{
		if(self.var_3a90f16b < var_1082952f)
		{
			self notify("hash_6105d0b5");
			var_1082952f = self.var_3a90f16b - var_ddd24e04;
		}
		if(self.var_e7f801f1 >= 4)
		{
			self notify("hash_6d2412ee");
		}
		if(self.var_e7f801f1 >= 2)
		{
			self notify("hash_cf300440");
		}
		wait(0.05);
	}
}

/*
	Name: function_a113ef2c
	Namespace: namespace_45eca03
	Checksum: 0x6FA9FE8
	Offset: 0x71B0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_a113ef2c()
{
	self endon("hash_128f8789");
	self.var_d7a55a8 = 30;
	self waittill("hash_6d2412ee");
	self.var_d24de693 = 1;
	self.var_d7a55a8 = 54;
	self thread function_16ed7b4();
	level namespace_cc27597::function_c35e6aab("cin_lot_17_oldfriend_3rd_sh010");
}

/*
	Name: function_16ed7b4
	Namespace: namespace_45eca03
	Checksum: 0x8235F29B
	Offset: 0x7230
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_16ed7b4()
{
	self endon("hash_128f8789");
	while(1)
	{
		self notify("hash_8d85c04a");
		wait(10);
	}
}

/*
	Name: function_66246a8b
	Namespace: namespace_45eca03
	Checksum: 0xF7970E05
	Offset: 0x7268
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_66246a8b()
{
	self endon("hash_128f8789");
	self waittill("hash_cf300440");
	while(1)
	{
		self.var_7c83c7b9 = 1;
		self waittill("hash_fe14afa0");
		function_52fd8e0c();
		function_7a689af4();
		self function_fabd65a5();
		wait(40);
	}
}

/*
	Name: function_aa03c076
	Namespace: namespace_45eca03
	Checksum: 0xF1BBCC70
	Offset: 0x72F0
	Size: 0x64F
	Parameters: 0
	Flags: None
*/
function function_aa03c076()
{
	self function_333fd8f0(3 * self.var_c1239d26.var_c0fdf540);
	var_166cf772 = [];
	var_34168a41 = [];
	var_736e1fad = [];
	var_e612786e = function_99201f25("raps_ship_pos", "targetname");
	var_b78c14cc = function_99201f25("raps_aim_pos", "targetname");
	var_3df07ee9 = function_57efbe1(var_e612786e, self.var_722885f3);
	var_3d2fc9e7 = function_57efbe1(var_b78c14cc, self.var_722885f3);
	if(function_26299103(100) < 50)
	{
		var_19321990 = "left";
	}
	else
	{
		var_19321990 = "right";
	}
	var_e296d6b4 = function_8f336df2() * level.var_2395e945.size;
	foreach(var_2b86b404 in var_3df07ee9)
	{
		if(var_2b86b404.var_db7bb468 == var_19321990)
		{
			var_34168a41[var_34168a41.size] = var_e296d6b4 / 3 - var_166cf772.size;
			var_e296d6b4 = var_e296d6b4 - var_34168a41[var_34168a41.size - 1];
			var_736e1fad[var_736e1fad.size] = var_2b86b404;
		}
	}
	foreach(var_2b86b404 in var_3d2fc9e7)
	{
		if(var_2b86b404.var_db7bb468 == var_19321990)
		{
			var_166cf772[var_166cf772.size] = var_2b86b404;
		}
	}
	if(self function_c985552d(var_736e1fad[function_26299103(2)].var_722885f3, 1, 1))
	{
		self function_df42c640(var_736e1fad[2]);
		self.var_77116e68 = 1;
		self namespace_72ee5da4::function_3a863dac();
	}
	wait(2);
	level namespace_71e9cb84::function_74d6b22f("city_sky", 1);
	var_7099d5e = function_8a8d7d66();
	if(isdefined(self.var_1e900bbc) && self.var_1e900bbc && (isdefined(self.var_b5b6b568) && self.var_b5b6b568))
	{
		for(var_a3557c4d = 0; var_a3557c4d < 3; var_a3557c4d++)
		{
			var_b9229bcd = function_99201f25("gunship_amws_ai", "targetname");
			if(var_b9229bcd.size < var_7099d5e)
			{
				self.var_3e8f6c24 = var_166cf772[var_a3557c4d].var_722885f3;
				self.var_6ded64ae = var_34168a41[var_a3557c4d];
				self function_1f2b3ab5();
			}
		}
		wait(2);
	}
	for(var_a3557c4d = 0; var_a3557c4d < 3; var_a3557c4d++)
	{
		var_930421fd = function_99201f25("gunship_raps_ai", "targetname");
		if(var_930421fd.size < var_7099d5e)
		{
			self.var_3e8f6c24 = var_166cf772[var_a3557c4d].var_722885f3;
			self.var_6ded64ae = var_34168a41[var_a3557c4d];
			self function_41d6059d();
		}
	}
	wait(2);
	for(var_a3557c4d = 0; var_a3557c4d < 3; var_a3557c4d++)
	{
		var_930421fd = function_99201f25("gunship_raps_ai", "targetname");
		if(var_930421fd.size < var_7099d5e)
		{
			self.var_3e8f6c24 = var_166cf772[var_a3557c4d].var_722885f3;
			self.var_6ded64ae = var_34168a41[var_a3557c4d];
			self function_41d6059d();
		}
	}
	var_506b336f = 0.05;
	wait(var_506b336f);
	self notify("hash_fe14afa0");
	self.var_77116e68 = 0;
	self.var_b5b6b568 = 1;
	if(isdefined(self.var_894468a1) && self.var_894468a1)
	{
		self.var_1e900bbc = 0;
	}
	self.var_7c83c7b9 = 0;
}

/*
	Name: function_db5569bf
	Namespace: namespace_45eca03
	Checksum: 0x1C33B76D
	Offset: 0x7948
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_db5569bf()
{
	self endon("hash_128f8789");
	self namespace_ad23e503::function_74d6b22f("gunship_over_roof");
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_e2af603e, "damage_light");
	wait(0.25);
	while(self namespace_ad23e503::function_7922262b("gunship_over_roof"))
	{
		namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_e2af603e, "damage_heavy");
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			function_9cf04c2e(0.5, 0.15, var_5dc5e20a.var_722885f3, 64);
		}
		wait(0.15);
	}
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_e2af603e, "damage_light");
}

/*
	Name: function_37e6d832
	Namespace: namespace_45eca03
	Checksum: 0x17365FEB
	Offset: 0x7AF0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_37e6d832()
{
	self endon("hash_128f8789");
	wait(2);
	self namespace_ad23e503::function_9d134160("gunship_over_roof");
}

/*
	Name: function_5f92c323
	Namespace: namespace_45eca03
	Checksum: 0x9A47AFFE
	Offset: 0x7B30
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_5f92c323()
{
	var_537a4b22 = self.var_9db475fa + 3 % 6;
	if(var_537a4b22 == 0)
	{
		var_eca3a58a = 1;
	}
	else
	{
		var_eca3a58a = 2;
	}
	return var_eca3a58a;
}

/*
	Name: function_68aeee69
	Namespace: namespace_45eca03
	Checksum: 0xF4A809E9
	Offset: 0x7BA0
	Size: 0x1D
	Parameters: 1
	Flags: None
*/
function function_68aeee69(var_506b336f)
{
	wait(var_506b336f);
	level notify("hash_79414051");
}

/*
	Name: function_e9e10dcf
	Namespace: namespace_45eca03
	Checksum: 0x7F153FC5
	Offset: 0x7BC8
	Size: 0x19F
	Parameters: 0
	Flags: None
*/
function function_e9e10dcf()
{
	self endon("hash_128f8789");
	while(1)
	{
		var_a0a193e9 = self function_d48f2ab3("tag_rocket1");
		var_95a39498 = function_e1dc201c(var_a0a193e9, level.var_2395e945[0].var_722885f3, 0, self);
		namespace_82b91a51::function_a9c39c8b(var_a0a193e9, level.var_2395e945[0].var_722885f3, (1, 0, 0), 0.8, 0, 1);
		var_a0a193e9 = self function_d48f2ab3("tag_rocket2");
		var_7ab03d3 = function_e1dc201c(var_a0a193e9, level.var_2395e945[0].var_722885f3, 0, self);
		namespace_82b91a51::function_a9c39c8b(var_a0a193e9, level.var_2395e945[0].var_722885f3, (1, 0, 0), 0.8, 0, 1);
		if(var_95a39498["fraction"] < 0.59 || var_7ab03d3["fraction"] < 0.59)
		{
			function_2e4b8c78("don't shoot");
		}
		wait(0.05);
	}
}

/*
	Name: function_4ea99800
	Namespace: namespace_45eca03
	Checksum: 0x5ABA626C
	Offset: 0x7D70
	Size: 0x3F3
	Parameters: 0
	Flags: None
*/
function function_4ea99800()
{
	self endon("hash_128f8789");
	var_c6da11b8 = function_99201f25("boss_wasp", "targetname");
	var_dc416322 = [];
	while(1)
	{
		level waittill("hash_14f52a04");
		if(isdefined(self.var_377a9c22) && self.var_377a9c22.var_e0beb6ee == "playing")
		{
			var_dc416322 = namespace_84970cc4::function_5c13fae0(var_dc416322);
			var_b8c96ec3 = 4 * level.var_2395e945.size;
			var_df9ad083 = level.var_2395e945;
			foreach(var_6bfe1586 in level.var_2395e945)
			{
				if(var_6bfe1586 != self.var_377a9c22)
				{
					if(!isdefined(var_df9ad083))
					{
						var_df9ad083 = [];
					}
					else if(!function_6e2770d8(var_df9ad083))
					{
						var_df9ad083 = function_84970cc4(var_df9ad083);
					}
					var_df9ad083[var_df9ad083.size] = var_6bfe1586;
				}
			}
			var_5908c36e = 0;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_b8c96ec3; var_c957f6b6++)
			{
				var_69e69694 = function_57efbe1(var_c6da11b8, var_df9ad083[var_5908c36e].var_722885f3);
				var_aaefedf3 = namespace_2f06d687::function_7387a40a(var_69e69694[0]);
				var_aaefedf3.var_722885f3 = self function_d48f2ab3("tag_bomb");
				var_aaefedf3.var_6ab6f4fd = self function_cd1d99bd("tag_bomb");
				if(function_26299103(2))
				{
				}
				else
				{
				}
				var_119839ea = -256;
				if(function_26299103(2))
				{
				}
				else
				{
				}
				var_dcbf0361 = -256;
				var_bc5fb476 = var_df9ad083[var_5908c36e].var_722885f3 + (var_119839ea, var_dcbf0361, 64);
				var_4d7cb886 = var_aaefedf3 function_169cc712(var_bc5fb476, 1);
				var_aaefedf3 thread function_5d39689d();
				if(!isdefined(var_dc416322))
				{
					var_dc416322 = [];
				}
				else if(!function_6e2770d8(var_dc416322))
				{
					var_dc416322 = function_84970cc4(var_dc416322);
				}
				var_dc416322[var_dc416322.size] = var_aaefedf3;
				var_5908c36e++;
				if(var_5908c36e == var_df9ad083.size)
				{
					var_5908c36e = 0;
				}
			}
			wait(15);
		}
		wait(0.05);
	}
}

/*
	Name: function_5d39689d
	Namespace: namespace_45eca03
	Checksum: 0x608CE4B9
	Offset: 0x8170
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5d39689d()
{
	self endon("hash_128f8789");
	self waittill("hash_41d1aaf0");
	self function_e11ce512();
}

/*
	Name: function_a6b9e99b
	Namespace: namespace_45eca03
	Checksum: 0x17CB4B3
	Offset: 0x81B0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_a6b9e99b()
{
	if(isdefined(self.var_377a9c22))
	{
		var_9cb05100 = function_99201f25("boss_minion_hunter", "targetname");
		self.var_5a36be60 = function_f8f08291();
		for(var_c957f6b6 = 0; var_c957f6b6 < function_f8f08291(); var_c957f6b6++)
		{
			var_782205f8 = namespace_2f06d687::function_7387a40a(var_9cb05100[0]);
			var_782205f8 thread function_d1ab4085(self);
			var_782205f8 thread function_f9cdfde1(self);
			var_782205f8 namespace_72ee5da4::function_fa59cc99("scripted");
			var_782205f8.var_722885f3 = self function_d48f2ab3("tag_bomb");
			var_782205f8.var_6ab6f4fd = self function_cd1d99bd("tag_bomb");
			var_63055781 = (var_782205f8.var_722885f3[0], var_782205f8.var_722885f3[1], var_782205f8.var_722885f3[2] - 600);
			var_782205f8 function_bcfeb18(var_63055781, 1, 1);
			var_782205f8 waittill("hash_48a3d97f");
			var_782205f8 namespace_72ee5da4::function_fa59cc99("combat");
			wait(0.05);
		}
		self.var_382c873 = 1;
	}
}

/*
	Name: function_d1ab4085
	Namespace: namespace_45eca03
	Checksum: 0xC393BB98
	Offset: 0x83C8
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_d1ab4085(var_617e6803)
{
	self waittill("hash_128f8789");
	var_617e6803.var_5a36be60--;
}

/*
	Name: function_f9cdfde1
	Namespace: namespace_45eca03
	Checksum: 0xCB339464
	Offset: 0x83F8
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_f9cdfde1(var_617e6803)
{
	self endon("hash_128f8789");
	var_8c0ed5db = self.var_3e94206a;
	while(1)
	{
		if(var_8c0ed5db != self.var_3e94206a)
		{
			break;
		}
		wait(5);
	}
	var_617e6803.var_5a36be60--;
}

/*
	Name: function_41d6059d
	Namespace: namespace_45eca03
	Checksum: 0xF03A2CE1
	Offset: 0x8460
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_41d6059d()
{
	if(isdefined(self.var_377a9c22) && function_65f192a6(self.var_377a9c22) && self.var_377a9c22.var_e0beb6ee == "playing")
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_3e8f6c24));
		#/
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_6ded64ae));
		#/
		var_6ee22718 = self.var_6ded64ae;
		self function_921a1574("veh_raps_launch");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_6ee22718; var_c957f6b6++)
		{
			var_3e32f05a = namespace_2f06d687::function_7387a40a("gunship_raps");
			if(var_3e32f05a.var_8fc0e50e == "raps")
			{
				var_3e32f05a.var_2f8cff2 = 1;
			}
			var_3e32f05a.var_722885f3 = self function_d48f2ab3("tag_origin") + VectorScale((0, 0, 1), 512);
			var_3e32f05a namespace_82b91a51::function_e218424d();
			var_3e32f05a namespace_71e9cb84::function_74d6b22f("play_raps_trail_fx", 1);
			var_3e32f05a thread function_853d3b2b(self.var_3e8f6c24);
			wait(0.15);
		}
		level namespace_ad23e503::function_2698b54f("gunship_high_out_of_battle", 1);
		level thread function_309d7a5a(namespace_84970cc4::function_47d18840(level.var_ead3caed));
	}
}

/*
	Name: function_1f2b3ab5
	Namespace: namespace_45eca03
	Checksum: 0xCA5EE236
	Offset: 0x8680
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function function_1f2b3ab5()
{
	if(isdefined(self.var_377a9c22) && function_65f192a6(self.var_377a9c22) && self.var_377a9c22.var_e0beb6ee == "playing")
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_3e8f6c24));
		#/
		/#
			namespace_33b293fd::function_a7ee953(isdefined(self.var_6ded64ae));
		#/
		var_483569a0 = self.var_6ded64ae;
		self function_921a1574("veh_raps_launch");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_483569a0; var_c957f6b6++)
		{
			var_31e90922 = namespace_2f06d687::function_7387a40a("gunship_amws");
			var_31e90922.var_722885f3 = self function_d48f2ab3("tag_origin") + VectorScale((0, 0, 1), 512);
			var_31e90922 namespace_82b91a51::function_e218424d();
			var_31e90922 thread function_853d3b2b(self.var_3e8f6c24);
			wait(0.15);
		}
		level namespace_ad23e503::function_2698b54f("gunship_high_out_of_battle", 1);
		level thread function_309d7a5a(namespace_84970cc4::function_47d18840(level.var_4483235d));
	}
	self.var_894468a1 = 1;
}

/*
	Name: function_853d3b2b
	Namespace: namespace_45eca03
	Checksum: 0xCB57AFCA
	Offset: 0x8858
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_853d3b2b(var_ff72f147)
{
	self endon("hash_128f8789");
	self namespace_72ee5da4::function_fa59cc99("scripted");
	self function_7d4fb40(VectorScale((0, 0, 1), 200));
	wait(1);
	self function_10215c6f(var_ff72f147);
	self thread function_15e66414(var_ff72f147);
	wait(5.5);
	self namespace_72ee5da4::function_fa59cc99("combat");
}

/*
	Name: function_15e66414
	Namespace: namespace_45eca03
	Checksum: 0xD02B36C0
	Offset: 0x8918
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_15e66414(var_b748b5a5)
{
	self endon("hash_128f8789");
	self namespace_96fa87af::function_42496438(0);
	if(function_4bd0142f("tu1_lotusBossSkeetShoot", 1))
	{
		while(!isdefined(function_eed6dab7(self.var_722885f3, 200)))
		{
			wait(0.1);
		}
		break;
	}
	while(function_7d15e2f8(self.var_722885f3, var_b748b5a5) > 400)
	{
		wait(0.1);
	}
	if(isdefined(self.var_2f8cff2))
	{
		self.var_2f8cff2 = 0;
	}
	self function_921a1574("veh_raps_first_land");
	self namespace_71e9cb84::function_74d6b22f("play_raps_trail_fx", 0);
	self namespace_96fa87af::function_42496438(1);
}

/*
	Name: function_8f336df2
	Namespace: namespace_45eca03
	Checksum: 0x7D76AD6F
	Offset: 0x8A40
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_8f336df2()
{
	switch(level.var_2395e945.size)
	{
		case 1:
		{
			var_3e671a1 = 3;
			break;
		}
		case 2:
		{
			var_3e671a1 = 2;
			break;
		}
		case 3:
		{
			var_3e671a1 = 2;
			break;
		}
		case 4:
		{
			var_3e671a1 = 2;
			break;
		}
		case default:
		{
			break;
		}
	}
	return var_3e671a1;
}

/*
	Name: function_8a8d7d66
	Namespace: namespace_45eca03
	Checksum: 0x5BA1CA7C
	Offset: 0x8AF8
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_8a8d7d66()
{
	switch(level.var_2395e945.size)
	{
		case 1:
		{
			var_3e671a1 = 12;
			break;
		}
		case 2:
		{
			var_3e671a1 = 20;
			break;
		}
		case 3:
		{
			var_3e671a1 = 24;
			break;
		}
		case 4:
		{
			var_3e671a1 = 32;
			break;
		}
		case default:
		{
			break;
		}
	}
	return var_3e671a1;
}

/*
	Name: function_f8f08291
	Namespace: namespace_45eca03
	Checksum: 0xC524F9A0
	Offset: 0x8B90
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_f8f08291()
{
	switch(level.var_2395e945.size)
	{
		case 1:
		{
			var_3e671a1 = 1;
			break;
		}
		case 2:
		{
			var_3e671a1 = 2;
			break;
		}
		case 3:
		{
			var_3e671a1 = 2;
			break;
		}
		case 4:
		{
			var_3e671a1 = 3;
			break;
		}
		case default:
		{
			break;
		}
	}
	return var_3e671a1;
}

/*
	Name: function_313b72be
	Namespace: namespace_45eca03
	Checksum: 0xFA2E9C0A
	Offset: 0x8C48
	Size: 0x491
	Parameters: 0
	Flags: None
*/
function function_313b72be()
{
	self endon("hash_128f8789");
	self endon("hash_9d463a5c");
	var_6bffcc7a = level.var_9b1393e7.size;
	if(isdefined(self.var_7f956758) && self.var_7f956758.size != 0)
	{
		var_6bffcc7a = self.var_7f956758.size;
	}
	self function_6e075bdf(0, 1);
	self function_6e075bdf(1, 1);
	var_7fd6892d = 0;
	self.var_c1d01bf8 = 0;
	if(isdefined(self.var_377a9c22) && !level namespace_ad23e503::function_7922262b("gunship_high_out_of_battle"))
	{
		function_37cbcf1a("evt_boss_rocket_prime", self.var_722885f3);
		self notify("hash_2e91796b");
		self function_ca265377("evt_boss_rocket_charge", "sound_done");
		self waittill("hash_3d1f3795");
		level thread function_309d7a5a(namespace_84970cc4::function_47d18840(level.var_af475f02));
		if(!level namespace_ad23e503::function_7922262b("first_missile_fired_vo"))
		{
			level namespace_ad23e503::function_74d6b22f("first_missile_fired_vo");
		}
		var_d230ad83 = function_bc7ce905(self.var_6ab6f4fd);
		var_840a016a = self function_d48f2ab3("tag_gunner_turret1");
		var_68880690 = var_840a016a + var_d230ad83 * 1024;
		self function_6521eb5d(var_68880690, 0);
		var_5e078701 = self function_d48f2ab3("tag_gunner_turret2");
		var_da8f75cb = var_5e078701 + var_d230ad83 * 1024;
		self function_6521eb5d(var_da8f75cb, 1);
		self waittill("hash_8c2d5c45");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_6bffcc7a; var_c957f6b6++)
		{
			wait(0.1);
			self function_d7bfd7f(0);
			wait(0.1);
			self function_d7bfd7f(1);
		}
		wait(1);
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			if(isdefined(var_6bfe1586.var_c5b310a6))
			{
				var_6bfe1586.var_c5b310a6 function_52fddbd0();
			}
		}
		self namespace_82b91a51::function_c9aa1ff("all_missiles_destroyed", 6.45);
		self thread function_e2183396();
		var_7fd6892d = 0;
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			if(isdefined(var_6bfe1586.var_c5b310a6))
			{
				var_6bfe1586.var_c5b310a6 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_b5e3704e
	Namespace: namespace_45eca03
	Checksum: 0x477ED191
	Offset: 0x90E8
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_b5e3704e()
{
	var_a0a193e9 = self function_d48f2ab3("tag_rocket1");
	var_95a39498 = function_e1dc201c(var_a0a193e9, self.var_377a9c22.var_722885f3, 0, self);
	var_a0a193e9 = self function_d48f2ab3("tag_rocket2");
	for(var_7ab03d3 = function_e1dc201c(var_a0a193e9, self.var_377a9c22.var_722885f3, 0, self); var_95a39498["fraction"] < 0.59 || var_7ab03d3["fraction"] < 0.59;  = function_e1dc201c(var_a0a193e9, self.var_377a9c22.var_722885f3, 0, self))
	{
		wait(0.05);
		var_a0a193e9 = self function_d48f2ab3("tag_rocket1");
		var_95a39498 = function_e1dc201c(var_a0a193e9, self.var_377a9c22.var_722885f3, 0, self);
		var_a0a193e9 = self function_d48f2ab3("tag_rocket2");
	}
}

/*
	Name: function_d7bfd7f
	Namespace: namespace_45eca03
	Checksum: 0xE3566370
	Offset: 0x9298
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_d7bfd7f(var_1fe9bd0c)
{
	var_377a9c22 = self function_5b0cea0a();
	var_e6ad0ba4 = var_1fe9bd0c + 1;
	var_c6107c9b = "tag_rocket" + var_e6ad0ba4;
	var_a0a193e9 = self function_d48f2ab3(var_c6107c9b);
	var_429f87f7 = function_c4d5ec1f("gunship_cannon");
	var_973828cf = function_87f3c622(var_429f87f7, var_a0a193e9, var_a0a193e9 + VectorScale((0, 0, 1), 1024), self, var_377a9c22);
	var_973828cf thread function_7ec8c202(self);
}

/*
	Name: function_5b0cea0a
	Namespace: namespace_45eca03
	Checksum: 0x6A1CDCEB
	Offset: 0x93B0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_5b0cea0a()
{
	var_9dcd387d = undefined;
	if(isdefined(self.var_cfe2cc2c))
	{
		var_9dcd387d = self.var_cfe2cc2c;
	}
	else
	{
		var_d3f6be49 = function_57efbe1(self.var_7f956758, level.var_33df5678.var_b71ed4a2);
		var_13748228 = function_b6b79a0(self.var_c1d01bf8 / 2);
		if(var_13748228 >= var_d3f6be49.size)
		{
			var_13748228 = var_d3f6be49.size - 1;
		}
		var_377a9c22 = var_d3f6be49[var_13748228];
		if(!isdefined(var_377a9c22.var_c5b310a6))
		{
			var_377a9c22.var_c5b310a6 = function_9b7fda5e("script_model", var_377a9c22.var_722885f3, 0);
			var_377a9c22.var_c5b310a6 function_37f7858a(var_377a9c22);
		}
		var_9dcd387d = var_377a9c22.var_c5b310a6;
	}
	self.var_c1d01bf8++;
	return var_9dcd387d;
}

/*
	Name: function_7ec8c202
	Namespace: namespace_45eca03
	Checksum: 0xA0806F05
	Offset: 0x9518
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_7ec8c202(var_38a4277e)
{
	self waittill("hash_128f8789");
	var_38a4277e.var_c1d01bf8--;
	if(var_38a4277e.var_c1d01bf8 == 0)
	{
		var_38a4277e notify("hash_8611c1b6");
	}
}

/*
	Name: function_bcfeb18
	Namespace: namespace_45eca03
	Checksum: 0xB9FC0A64
	Offset: 0x9570
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_bcfeb18(var_b71ed4a2, var_da005640, var_8c59a8de)
{
	var_d620769c = self function_c985552d(var_b71ed4a2, var_da005640);
	/#
		if(!(isdefined(var_d620769c) && var_d620769c))
		{
			function_2e4b8c78("Dev Block strings are not supported");
		}
	#/
}

/*
	Name: function_68e67780
	Namespace: namespace_45eca03
	Checksum: 0x9E56C304
	Offset: 0x95F0
	Size: 0x3BF
	Parameters: 1
	Flags: None
*/
function function_68e67780(var_9db475fa)
{
	self endon("hash_128f8789");
	self notify("hash_cd4fad51");
	self endon("hash_cd4fad51");
	self.var_9db475fa = var_9db475fa;
	var_91c497de = "gunship_pos_" + self.var_9db475fa;
	var_4e9a9978 = var_91c497de;
	var_5013796b = "clockwise";
	var_9c8616bd = namespace_14b42b8a::function_7922262b("gunship_pos_" + self.var_c753fc26, "targetname");
	if(self.var_c753fc26 != self.var_9db475fa)
	{
		self namespace_ad23e503::function_9d134160("gunship_can_shoot");
		var_5013796b = self function_cf3bbe02();
		if(var_5013796b == "counterclockwise")
		{
			var_4e9a9978 = self function_c38d5af4(var_9c8616bd, var_91c497de);
		}
		else
		{
			var_4e9a9978 = self function_cdb12f14(var_9c8616bd, var_91c497de);
		}
		self namespace_ad23e503::function_74d6b22f("gunship_can_shoot");
	}
	var_86b0a02 = namespace_14b42b8a::function_7922262b(var_4e9a9978, "targetname");
	var_697e3556 = namespace_14b42b8a::function_7922262b(var_86b0a02.var_b07228b6, "targetname");
	var_216bf22d = namespace_14b42b8a::function_7922262b(var_86b0a02.var_db7bb468, "targetname");
	while(1)
	{
		self notify("hash_8e5e255b");
		self.var_9d040270 = var_86b0a02.var_8202763a;
		self function_bcfeb18(var_86b0a02.var_722885f3, 0, 1);
		self waittill("hash_48a3d97f");
		self.var_eb0aa568 = self.var_c753fc26;
		self.var_c753fc26 = var_86b0a02.var_8202763a;
		if(var_5013796b == "counterclockwise")
		{
			self.var_9d040270 = var_216bf22d.var_8202763a;
			self function_bcfeb18(var_216bf22d.var_722885f3, 1, 1);
			self waittill("hash_48a3d97f");
			self.var_eb0aa568 = self.var_c753fc26;
			self.var_c753fc26 = var_216bf22d.var_8202763a;
			var_5013796b = "clockwise";
		}
		else
		{
			self.var_9d040270 = var_697e3556.var_8202763a;
			self function_bcfeb18(var_697e3556.var_722885f3, 1, 1);
			self waittill("hash_48a3d97f");
			self.var_eb0aa568 = self.var_c753fc26;
			self.var_c753fc26 = var_697e3556.var_8202763a;
			var_5013796b = "counterclockwise";
		}
		wait(0.05);
	}
}

/*
	Name: function_cf3bbe02
	Namespace: namespace_45eca03
	Checksum: 0x4AB9FF7C
	Offset: 0x99B8
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_cf3bbe02()
{
	var_3c8b0726 = 5 - self.var_c753fc26;
	if(self.var_c753fc26 > self.var_9db475fa)
	{
		var_3c8b0726 = var_3c8b0726 + self.var_9db475fa + 1;
	}
	var_d0e7904a = self.var_c753fc26 - self.var_9db475fa;
	if(self.var_c753fc26 < self.var_9db475fa)
	{
		var_d0e7904a = var_d0e7904a + 6;
	}
	if(var_d0e7904a < var_3c8b0726)
	{
		var_5013796b = "counterclockwise";
	}
	else
	{
		var_5013796b = "clockwise";
	}
	return var_5013796b;
}

/*
	Name: function_cdb12f14
	Namespace: namespace_45eca03
	Checksum: 0x49FFAE14
	Offset: 0x9A98
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_cdb12f14(var_9c8616bd, var_91c497de)
{
	for(var_4e9a9978 = var_9c8616bd.var_b07228b6; var_4e9a9978 != var_91c497de;  = var_9c8616bd.var_b07228b6)
	{
		var_86b0a02 = namespace_14b42b8a::function_7922262b(var_4e9a9978, "targetname");
		self.var_9d040270 = var_86b0a02.var_8202763a;
		self function_bcfeb18(var_86b0a02.var_722885f3, 0, 1);
		self waittill("hash_48a3d97f");
		self.var_eb0aa568 = self.var_c753fc26;
		self.var_c753fc26 = var_86b0a02.var_8202763a;
	}
	return var_4e9a9978;
}

/*
	Name: function_c38d5af4
	Namespace: namespace_45eca03
	Checksum: 0x4D3CB10B
	Offset: 0x9BA0
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_c38d5af4(var_9c8616bd, var_91c497de)
{
	for(var_4e9a9978 = var_9c8616bd.var_db7bb468; var_4e9a9978 != var_91c497de;  = var_9c8616bd.var_db7bb468)
	{
		var_86b0a02 = namespace_14b42b8a::function_7922262b(var_4e9a9978, "targetname");
		self.var_9d040270 = var_86b0a02.var_8202763a;
		self function_bcfeb18(var_86b0a02.var_722885f3, 0, 1);
		self waittill("hash_48a3d97f");
		self.var_eb0aa568 = self.var_c753fc26;
		self.var_c753fc26 = var_86b0a02.var_8202763a;
	}
	return var_4e9a9978;
}

/*
	Name: function_c60bcf77
	Namespace: namespace_45eca03
	Checksum: 0x919C9332
	Offset: 0x9CA8
	Size: 0x12B
	Parameters: 1
	Flags: Private
*/
function private function_c60bcf77(var_b07228b6)
{
	if(!isdefined(var_b07228b6))
	{
		return 0;
	}
	if(!function_5b49d38c(var_b07228b6))
	{
		return 0;
	}
	if(function_65f192a6(var_b07228b6) && var_b07228b6.var_e0beb6ee == "spectator")
	{
		return 0;
	}
	if(function_65f192a6(var_b07228b6) && var_b07228b6.var_e0beb6ee == "intermission")
	{
		return 0;
	}
	if(isdefined(self.var_4b93af95) && self.var_4b93af95)
	{
		return 0;
	}
	if(isdefined(var_b07228b6.var_255b9315) && var_b07228b6.var_255b9315)
	{
		return 0;
	}
	if(var_b07228b6 function_8f454113())
	{
		return 0;
	}
	if(self.var_3e94206a == var_b07228b6.var_3e94206a)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_965c000c
	Namespace: namespace_45eca03
	Checksum: 0x46392C7F
	Offset: 0x9DE0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_965c000c()
{
	self endon("hash_128f8789");
	var_df348736 = [];
	do
	{
		var_448352cd = function_525ae497(level.var_2395e945, function_b8494651("allies"), 0, 0);
		if(var_448352cd.size > 0)
		{
			foreach(var_738974f1 in var_448352cd)
			{
				if(function_c60bcf77(var_738974f1))
				{
					var_df348736[var_df348736.size] = var_738974f1;
				}
			}
		}
		wait(0.05);
	}
	while(!var_df348736.size == 0);
	self.var_7f956758 = var_df348736;
}

/*
	Name: function_1e767c06
	Namespace: namespace_45eca03
	Checksum: 0x1BE9A7B8
	Offset: 0x9F18
	Size: 0x29F
	Parameters: 0
	Flags: None
*/
function function_1e767c06()
{
	self endon("hash_128f8789");
	self function_965c000c();
	self.var_377a9c22 = self.var_7f956758[0];
	if(!isdefined(self.var_77116e68) && self.var_77116e68 && isdefined(self.var_377a9c22))
	{
		self function_df42c640(self.var_377a9c22);
	}
	while(!isdefined(level.var_33df5678))
	{
		wait(0.05);
	}
	while(1)
	{
		self function_965c000c();
		var_e370f4cd = self.var_7f956758[0];
		if(isdefined(var_e370f4cd))
		{
			var_9f6fafde = function_316422d1(var_e370f4cd.var_722885f3, level.var_33df5678.var_b71ed4a2);
		}
		foreach(var_b07228b6 in self.var_7f956758)
		{
			var_36b8634f = function_316422d1(var_b07228b6.var_722885f3, level.var_33df5678.var_b71ed4a2);
			if(var_36b8634f < var_9f6fafde)
			{
				var_e370f4cd = var_b07228b6;
				var_9f6fafde = var_36b8634f;
			}
		}
		if(isdefined(self.var_377a9c22) && isdefined(var_e370f4cd) && var_e370f4cd != self.var_377a9c22)
		{
			self.var_377a9c22 = var_e370f4cd;
		}
		else if(!function_c60bcf77(self.var_377a9c22))
		{
			self.var_377a9c22 = undefined;
			if(isdefined(var_e370f4cd))
			{
				self.var_377a9c22 = var_e370f4cd;
			}
		}
		if(!isdefined(self.var_77116e68) && self.var_77116e68 && isdefined(self.var_377a9c22))
		{
			self function_df42c640(self.var_377a9c22);
		}
		wait(0.5);
	}
}

/*
	Name: function_a3869b68
	Namespace: namespace_45eca03
	Checksum: 0x16A5C068
	Offset: 0xA1C0
	Size: 0x23B
	Parameters: 15
	Flags: None
*/
function function_a3869b68(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_dfcc01fd, var_10e30246, var_a080d759, var_ffd2636b, var_46043680, var_a5cf2304, var_3bc96147, var_269779a, var_829b9480, var_eca96ec1)
{
	switch(level.var_2395e945.size)
	{
		case 1:
		{
			var_74d0774f = function_b6b79a0(var_74d0774f * 3);
			break;
		}
		case 2:
		{
			var_74d0774f = function_b6b79a0(var_74d0774f * 2.25);
			break;
		}
		case 3:
		{
			var_74d0774f = function_b6b79a0(var_74d0774f * 1.5);
			break;
		}
		case 4:
		{
			var_74d0774f = function_b6b79a0(var_74d0774f * 1);
			break;
		}
		case default:
		{
			break;
		}
	}
	var_267e9243 = self.var_3a90f16b - var_74d0774f;
	if(self.var_3a90f16b < self.var_2f6b8583)
	{
		var_74d0774f = 0;
	}
	else if(var_267e9243 < self.var_2f6b8583)
	{
		var_74d0774f = self.var_3a90f16b - self.var_2f6b8583 + 1;
	}
	if(isdefined(self.var_e507c83f[var_829b9480]) && self.var_e507c83f[var_829b9480])
	{
		if(var_74d0774f > 0)
		{
			self thread function_1ccd0b11(var_829b9480);
		}
	}
	else
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_1ccd0b11
	Namespace: namespace_45eca03
	Checksum: 0xB2BFF3CB
	Offset: 0xA408
	Size: 0x1E5
	Parameters: 1
	Flags: None
*/
function function_1ccd0b11(var_afa2946c)
{
	self endon("hash_128f8789");
	switch(var_afa2946c)
	{
		case "tag_target_fan_left_outer":
		{
			if(!self namespace_71e9cb84::function_7922262b("boss_left_outer_fx"))
			{
				self namespace_71e9cb84::function_74d6b22f("boss_left_outer_fx", 1);
				wait(0.2);
				self namespace_71e9cb84::function_74d6b22f("boss_left_outer_fx", 0);
			}
			break;
		}
		case "tag_target_fan_left_inner":
		{
			if(!self namespace_71e9cb84::function_7922262b("boss_left_inner_fx"))
			{
				self namespace_71e9cb84::function_74d6b22f("boss_left_inner_fx", 1);
				wait(0.2);
				self namespace_71e9cb84::function_74d6b22f("boss_left_inner_fx", 0);
			}
			break;
		}
		case "tag_target_fan_right_inner":
		{
			if(!self namespace_71e9cb84::function_7922262b("boss_right_inner_fx"))
			{
				self namespace_71e9cb84::function_74d6b22f("boss_right_inner_fx", 1);
				wait(0.2);
				self namespace_71e9cb84::function_74d6b22f("boss_right_inner_fx", 0);
			}
			break;
		}
		case "tag_target_fan_right_outer":
		{
			if(!self namespace_71e9cb84::function_7922262b("boss_right_outer_fx"))
			{
				self namespace_71e9cb84::function_74d6b22f("boss_right_outer_fx", 1);
				wait(0.2);
				self namespace_71e9cb84::function_74d6b22f("boss_right_outer_fx", 0);
			}
			break;
		}
	}
}

/*
	Name: function_b9eaf37e
	Namespace: namespace_45eca03
	Checksum: 0xE762999F
	Offset: 0xA5F8
	Size: 0x53
	Parameters: 4
	Flags: None
*/
function function_b9eaf37e(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_leviathan");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_leviathan_destroy");
}

/*
	Name: function_428ff2f
	Namespace: namespace_45eca03
	Checksum: 0xABAFCB4B
	Offset: 0xA658
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_428ff2f()
{
	var_f29f9112 = function_99201f25("roof_ammo_caches", "prefabname");
	foreach(var_13326c99 in var_f29f9112)
	{
		var_13326c99 function_48f26766();
	}
}

