#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_mapping_drone;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_exterior;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\warlord;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_9c567844;

/*
	Name: function_aa390943
	Namespace: namespace_9c567844
	Checksum: 0x9A69B4A5
	Offset: 0x21A8
	Size: 0x423
	Parameters: 2
	Flags: None
*/
function function_aa390943(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_acdfe1fe("cp_sgen_env_LobbyMovie", 1);
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		level namespace_ad23e503::function_74d6b22f("hendricks_at_silo_doors");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_overhang_building_glass_bundle");
		level namespace_cc27597::function_c35e6aab("cin_sgen_05_01_discoverdata_vign_lookaround_hendricks");
		level namespace_cc27597::function_c35e6aab("pb_sgen_data_discovery_hack");
		var_c7d2cbe9 = function_6ada35ba("trig_post_discover_data", "targetname");
		var_c7d2cbe9 function_175e6b8e(0);
		namespace_80983c42::function_80983c42("sgen_flying_IGC");
		namespace_d7916d65::function_a2995f22();
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 1);
		}
		namespace_5da6b440::function_547e0499();
	}
	level thread function_ab1ca63f();
	level namespace_ad23e503::function_1ab5ebec("silo_door_opened");
	if(isdefined(level.var_4f37abd3))
	{
		level thread [[level.var_4f37abd3]]();
	}
	level thread function_ab489996();
	level thread function_370bcbcc();
	level thread namespace_d40478f6::function_26fc5a92();
	level thread namespace_cc27597::function_43718187("cin_sgen_05_01_discoverdata_vign_lookaround_hendricks");
	level waittill("hash_dd334053");
	level thread namespace_82b91a51::function_d8eaed3d(6);
	level namespace_82b91a51::function_67520c6a(2, undefined, &function_2f312deb);
	level namespace_ad23e503::function_1ab5ebec("data_recovered");
	namespace_2afd69a::function_10dad989();
	level namespace_cc27597::function_8f9f34e0("cin_sgen_06_01_followleader_vign_activate_eac_hendricks", &function_8e9806c5);
	level namespace_cc27597::function_8f9f34e0("cin_sgen_06_01_followleader_vign_activate_eac_drone", &function_8cf3dc94);
	level thread namespace_cc27597::function_43718187("cin_sgen_06_01_followleader_vign_activate_eac_drone");
	level thread namespace_cc27597::function_43718187("cin_sgen_06_01_followleader_vign_activate_eac_hendricks");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_370bcbcc
	Namespace: namespace_9c567844
	Checksum: 0xB162F5A8
	Offset: 0x25D8
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_370bcbcc()
{
	var_f3ad9584 = function_6ada35ba("emf_device", "targetname");
	level waittill("hash_dd334053");
	var_d202c753 = function_9b7fda5e("script_origin", var_f3ad9584.var_722885f3);
	var_d202c753 function_c2931a36("evt_emf_signal");
	level namespace_ad23e503::function_1ab5ebec("kane_data_callout");
	var_da697227 = function_9b7fda5e("trigger_radius_use", var_f3ad9584.var_722885f3, 0, 32, 32);
	var_da697227 function_1d5013fa();
	var_da697227 function_bb863f19();
	var_da697227 function_dc378587("none");
	var_da697227 function_1f80b3d5();
	var_d67faff5 = namespace_82b91a51::function_14518e76(var_da697227, &"cp_prompt_dni_sgen_hack_emf_source", &"CP_MI_SING_SGEN_HACK", &function_41ebcee5, function_84970cc4(var_f3ad9584));
	level namespace_ad23e503::function_1ab5ebec("data_discovered");
	var_d202c753 function_eaa69754();
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
	var_d67faff5 namespace_a230c2b1::function_e54c54c3();
	level namespace_ad23e503::function_1ab5ebec("data_recovered");
	var_d67faff5 namespace_a230c2b1::function_c5a39495(1, 0);
}

/*
	Name: function_41ebcee5
	Namespace: namespace_9c567844
	Checksum: 0x5AC2DCFC
	Offset: 0x2828
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_41ebcee5(var_6bfe1586)
{
	level namespace_ad23e503::function_74d6b22f("data_discovered");
	level namespace_cc27597::function_8f9f34e0("pb_sgen_data_discovery_hack", &function_692aa639);
	level namespace_cc27597::function_43718187("pb_sgen_data_discovery_hack", var_6bfe1586);
	level namespace_ad23e503::function_74d6b22f("data_recovered");
}

/*
	Name: function_8cf3dc94
	Namespace: namespace_9c567844
	Checksum: 0x4C2C1251
	Offset: 0x28C8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_8cf3dc94(var_c77d2837)
{
	level.var_ea764859 namespace_96fa87af::function_3762fc40();
	level.var_ea764859.var_ff1f6868 = "fallen_soldiers";
	level waittill("hash_3ac74ca");
	level.var_ea764859 namespace_96fa87af::function_e103651a();
}

/*
	Name: function_692aa639
	Namespace: namespace_9c567844
	Checksum: 0xECD8D60E
	Offset: 0x2938
	Size: 0x149
	Parameters: 1
	Flags: None
*/
function function_692aa639(var_c77d2837)
{
	wait(2.5);
	foreach(var_9544d7c1 in var_c77d2837)
	{
		if(function_65f192a6(var_9544d7c1))
		{
			var_9544d7c1 namespace_175490fb::function_f8669cbf(1);
			var_9544d7c1 namespace_71e9cb84::function_e9c3870b("sndCCHacking", 2);
			var_9544d7c1 namespace_82b91a51::function_67520c6a(1, "death", &namespace_71e9cb84::function_688ed188, "hack_dni_fx");
			var_9544d7c1 namespace_82b91a51::function_67520c6a(2, "death", &namespace_71e9cb84::function_e9c3870b, "sndCCHacking", 0);
		}
	}
}

/*
	Name: function_ab489996
	Namespace: namespace_9c567844
	Checksum: 0x40BE74AC
	Offset: 0x2A90
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_ab489996()
{
	level thread function_cc8a136f();
	level thread function_782fe79e();
	level namespace_ad23e503::function_1ab5ebec("play_building_glass_debris");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_overhang_building_glass_bundle");
}

/*
	Name: function_782fe79e
	Namespace: namespace_9c567844
	Checksum: 0xD9E2483D
	Offset: 0x2B10
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_782fe79e()
{
	level endon("hash_c391ab53");
	var_7c70a111 = function_6ada35ba("trig_lookat_glass_debris", "targetname");
	level.var_2395e945[0] namespace_82b91a51::function_3546be91(var_7c70a111.var_722885f3, 0.8, 0);
	level namespace_ad23e503::function_74d6b22f("play_building_glass_debris");
}

/*
	Name: function_cc8a136f
	Namespace: namespace_9c567844
	Checksum: 0xF2948E11
	Offset: 0x2BA8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_cc8a136f()
{
	level endon("hash_c391ab53");
	wait(10);
	level namespace_ad23e503::function_74d6b22f("play_building_glass_debris");
}

/*
	Name: function_2f312deb
	Namespace: namespace_9c567844
	Checksum: 0x128B7329
	Offset: 0x2BE8
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_2f312deb()
{
	level namespace_ad23e503::function_74d6b22f("kane_data_callout");
	level namespace_71b8dba1::function_a463d127("kane_i_m_picking_up_an_em_0");
	level namespace_ad23e503::function_1ab5ebec("data_discovered");
	level namespace_71b8dba1::function_13b3b16a("plyr_got_it_uploading_0");
	level namespace_71b8dba1::function_a463d127("kane_the_looters_didn_t_j_0");
	level.var_2fd26037 waittill("hash_efcaa5e4");
	level namespace_71b8dba1::function_a463d127("kane_message_received_and_0");
	level namespace_ad23e503::function_1ab5ebec("post_discover_data");
	level thread namespace_d40478f6::function_fb17452c();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_stick_to_the_ledge_0");
}

/*
	Name: function_e59a6c89
	Namespace: namespace_9c567844
	Checksum: 0x55ECC9D
	Offset: 0x2D20
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_e59a6c89(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_05_01_discoverdata_1st_handgesture_player_dataacquired");
}

/*
	Name: function_ab1ca63f
	Namespace: namespace_9c567844
	Checksum: 0x4D5EB9D3
	Offset: 0x2D70
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_ab1ca63f()
{
	level namespace_ad23e503::function_1ab5ebec("discover_data_tele");
	namespace_82b91a51::function_76f13293();
	function_4a0fb95e("cp_sgen_env_lobbymovie");
	namespace_82b91a51::function_76f13293();
	function_4a0fb95e("cp_sgen_env_LobbyMovie");
}

/*
	Name: function_17b49f2c
	Namespace: namespace_9c567844
	Checksum: 0xD17CFA4
	Offset: 0x2DF0
	Size: 0x383
	Parameters: 2
	Flags: None
*/
function function_17b49f2c(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_2afd69a::function_10dad989("nd_post_discover_data");
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
		var_ed29ccc2 = function_6ada35ba("bm_discover_data_player_clip", "targetname");
		var_ed29ccc2 function_dc8c8404();
		var_95951a6d = function_6ada35ba("trig_discover_data_kill", "targetname");
		var_95951a6d function_dc8c8404();
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_descend_into_core");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_sgen_hendricks_railing_kick_bundle");
		level namespace_ad23e503::function_74d6b22f("hendricks_data_anim_done");
		level namespace_ad23e503::function_74d6b22f("glass_railing_kicked");
		namespace_d7916d65::function_a2995f22();
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 1);
		}
	}
	level thread function_2e4ed53c(var_74cd64bc);
	level thread function_8e0d5dae();
	level thread function_552e0e0a();
	level thread function_982aa3da();
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 thread function_183c2b6();
	level.var_ea764859 thread function_f142d622();
	level thread function_d3711d76();
	level thread function_e7bc299d();
	level namespace_ad23e503::function_1ab5ebec("player_past_shimmy_wall");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_e28bb832
	Namespace: namespace_9c567844
	Checksum: 0x9A4AE22F
	Offset: 0x3180
	Size: 0x103
	Parameters: 4
	Flags: None
*/
function function_e28bb832(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_sgen_overhang_building_glass_bundle");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh010");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_03_03_undeadqt_vign_limitedpower_corpses");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_05_01_discoverdata_vign_lookaround_hendricks");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_05_01_discoverdata_1st_handgestrure_player_dataacquired");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_06_01_followleader_vign_activate_eac_drone");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_06_01_followleader_vign_activate_eac_hendricks");
}

/*
	Name: function_e7bc299d
	Namespace: namespace_9c567844
	Checksum: 0x3F21DEB3
	Offset: 0x3290
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_e7bc299d()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_follow1_wait2");
	level namespace_71e9cb84::function_331efedc("debris_catwalk", 1);
	level namespace_ad23e503::function_1ab5ebec("play_shimmy_wall_debris");
	level namespace_71e9cb84::function_331efedc("debris_wall", 1);
}

/*
	Name: function_552e0e0a
	Namespace: namespace_9c567844
	Checksum: 0x663AF13E
	Offset: 0x3320
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_552e0e0a()
{
	level namespace_ad23e503::function_1ab5ebec("glass_railing_kicked");
	namespace_d0ef8521::function_45d1556("post_data_breadcrumb");
	level namespace_ad23e503::function_1ab5ebec("post_discover_data");
	var_95951a6d = function_6ada35ba("trig_discover_data_kill", "targetname");
	if(isdefined(var_95951a6d))
	{
		var_95951a6d function_dc8c8404();
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_descend_into_core");
	namespace_d0ef8521::function_45d1556("obj_first_jump_down");
	function_d693b44a();
}

/*
	Name: function_8e9806c5
	Namespace: namespace_9c567844
	Checksum: 0x19C2B48F
	Offset: 0x3418
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_8e9806c5(var_c77d2837)
{
	level waittill("hash_922f2f3");
	level.var_2fd26037 function_e48f905e("spawner_ally_hero_hendricks_sgen");
	level.var_2fd26037.var_b691b9cf = "hendricks";
	namespace_82b91a51::function_a0938376();
	level namespace_ad23e503::function_1ab5ebec("highlight_railing_glass");
	var_eb043fdb = function_6ada35ba("railing_kick", "animname");
	var_eb043fdb thread namespace_16f9ecd3::function_e228c18a(0, "glass_railing_kicked");
	level namespace_ad23e503::function_1ab5ebec("glass_railing_kicked");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_hendricks_railing_kick_bundle");
	level waittill("hash_359ae459");
	var_ed29ccc2 = function_6ada35ba("bm_discover_data_player_clip", "targetname");
	var_ed29ccc2 function_dc8c8404();
	var_c7d2cbe9 = function_6ada35ba("trig_post_discover_data", "targetname");
	var_c7d2cbe9 function_175e6b8e(1);
}

/*
	Name: function_183c2b6
	Namespace: namespace_9c567844
	Checksum: 0xD1F010AF
	Offset: 0x35D0
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_183c2b6()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_data_anim_done");
	level namespace_ad23e503::function_1ab5ebec("post_discover_data");
	level namespace_cc27597::function_43718187("cin_sgen_06_02_followtheleader_vign_hendricks_traversal_start");
	level namespace_ad23e503::function_1ab5ebec("hendricks_follow1_jump1");
	level namespace_cc27597::function_43718187("cin_sgen_06_02_followtheleader_vign_hendricks_traversal_finish");
	self namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("trig_color_post_first_jump", undefined, undefined, 0);
	level namespace_ad23e503::function_1ab5ebec("hendricks_follow1_wait3");
	namespace_4dbf3ae3::function_42e87952("pre_gen_lab_after_slide");
	level namespace_cc27597::function_43718187("cin_sgen_06_02_followleader_vign_slide_hendricks");
	level namespace_ad23e503::function_1ab5ebec("player_near_shimmy");
	level.var_2fd26037 thread function_45dfc585();
}

/*
	Name: function_2e4ed53c
	Namespace: namespace_9c567844
	Checksum: 0x804420E9
	Offset: 0x3748
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_2e4ed53c(var_74cd64bc)
{
	level namespace_ad23e503::function_1ab5ebec("post_discover_data");
	if(var_74cd64bc)
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hey_let_s_go_0");
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_stick_to_the_ledge_0", 1);
	}
	wait(3);
	level namespace_ad23e503::function_1ab5ebec("enter_silo_killings_vo");
	wait(2);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
	level namespace_71b8dba1::function_13b3b16a("plyr_the_footage_we_saw_o_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_i_ve_known_taylor_a_0", 1.5);
	level namespace_71b8dba1::function_13b3b16a("plyr_maybe_he_wasn_t_the_0", 0.75);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_even_so_doesn_t_ex_0", 1.33);
	level namespace_71b8dba1::function_13b3b16a("plyr_we_ll_get_to_the_bot_0", 1);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 1);
}

/*
	Name: function_8e0d5dae
	Namespace: namespace_9c567844
	Checksum: 0x63340086
	Offset: 0x3938
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_8e0d5dae()
{
	var_4fee738e = function_6ada35ba("dust_fx", "targetname");
	var_4fee738e endon("hash_128f8789");
	while(1)
	{
		var_4fee738e waittill("hash_4dbf3ae3", var_aef176e7);
		if(function_65f192a6(var_aef176e7))
		{
			var_4fee738e function_64218ffc(var_aef176e7);
			var_aef176e7 namespace_71e9cb84::function_e9c3870b("dust_motes", 1);
		}
	}
}

/*
	Name: function_d3711d76
	Namespace: namespace_9c567844
	Checksum: 0x194E5E4F
	Offset: 0x39F8
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_d3711d76()
{
	var_4121a753 = function_6ada35ba("oarfish", "targetname");
	level namespace_ad23e503::function_1ab5ebec("hendricks_follow1_wait2");
	var_4121a753.var_6ab6f4fd = var_4121a753.var_6ab6f4fd + VectorScale((-1, 0, 0), 15);
	var_78962fff = 10;
	var_26aaa5cc = var_4121a753;
	while(isdefined(var_26aaa5cc.var_b07228b6))
	{
		var_26aaa5cc = namespace_14b42b8a::function_7922262b(var_26aaa5cc.var_b07228b6, "targetname");
		var_4121a753 function_a96a2721(var_26aaa5cc.var_722885f3, var_78962fff);
		var_4121a753 function_c0b6566f(var_26aaa5cc.var_6ab6f4fd, var_78962fff, var_78962fff / 2, var_78962fff / 2);
		wait(var_78962fff);
	}
}

/*
	Name: function_ab2e4091
	Namespace: namespace_9c567844
	Checksum: 0x73F1E0C7
	Offset: 0x3B40
	Size: 0x2E3
	Parameters: 2
	Flags: None
*/
function function_ab2e4091(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_2afd69a::function_10dad989("nd_start_gen_lab");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_descend_into_core");
		level.var_2fd26037 thread function_45dfc585();
		level thread function_d693b44a();
		level thread namespace_d40478f6::function_fb17452c();
		namespace_d7916d65::function_a2995f22();
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 1);
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("dust_motes", 1);
		}
	}
	level thread function_bed09c90();
	level namespace_71e9cb84::function_74d6b22f("sndLabWalla", 1);
	level.var_ea764859 thread function_a6381cd();
	var_fe6ba37c = function_6ada35ba("trig_gen_lab_door_player_check", "targetname");
	var_fe6ba37c function_175e6b8e(0);
	level thread function_7e668807();
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_lab_ceiling_light_01_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_lab_ceiling_light_02_bundle");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("hendricks_at_gen_lab_door", "player_at_gen_lab_door"));
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_d693b44a
	Namespace: namespace_9c567844
	Checksum: 0x3D4459
	Offset: 0x3E30
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d693b44a()
{
	namespace_d0ef8521::function_45d1556("sgen_lab_breadcrumb_1");
	level namespace_ad23e503::function_1ab5ebec("gen_lab_cleared");
	namespace_d0ef8521::function_45d1556("sgen_labs_exit_breadcrumb");
}

/*
	Name: function_bed09c90
	Namespace: namespace_9c567844
	Checksum: 0xDC0C4178
	Offset: 0x3E90
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_bed09c90()
{
	level namespace_ad23e503::function_1ab5ebec("trig_spawn_gen_lab");
	var_f40abca8 = function_99201f25("lobby_entrance_doors", "script_noteworthy");
	var_280d5f68 = function_6ada35ba("silo_door_left", "targetname");
	var_3c301126 = function_6ada35ba("silo_door_right", "targetname");
	var_280d5f68 function_21d0da55(91, 1, 0.25, 0.4);
	function_37cbcf1a("evt_silo_door_open", var_280d5f68.var_722885f3);
	var_3c301126 function_21d0da55(-91, 1, 0.25, 0.4);
	function_37cbcf1a("evt_silo_door_open", var_3c301126.var_722885f3);
}

/*
	Name: function_7e668807
	Namespace: namespace_9c567844
	Checksum: 0xB876E
	Offset: 0x4018
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_7e668807()
{
	level namespace_ad23e503::function_1ab5ebec("trig_spawn_gen_lab");
	level thread function_eee46d16();
	level thread function_a05adac1();
	level.var_2fd26037 thread function_c7a9d766();
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 thread function_7d0e1b80();
	}
	level thread function_65b50bfd();
	level namespace_ad23e503::function_1ab5ebec("player_mid_gen_lab");
	namespace_2f06d687::function_22356ba7("gen_lab_enemy_wave_2", &function_3121a98c);
	level thread function_f092b9c1();
}

/*
	Name: function_3121a98c
	Namespace: namespace_9c567844
	Checksum: 0x7CD258C1
	Offset: 0x4188
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_3121a98c()
{
	self.var_7dfaf62 = 1024;
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	var_e2f91888 = function_6ada35ba("vol_gen_lab_fallback", "targetname");
	self function_169cc712(var_e2f91888);
}

/*
	Name: function_a05adac1
	Namespace: namespace_9c567844
	Checksum: 0xB8D10AFF
	Offset: 0x4210
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a05adac1()
{
	level namespace_ad23e503::function_1ab5ebec("gen_lab_gone_hot");
	level namespace_76d95162::function_d9f49fba(1);
	namespace_2f06d687::function_22356ba7("gen_lab_reinforcements");
}

/*
	Name: function_65b50bfd
	Namespace: namespace_9c567844
	Checksum: 0xF98EAB23
	Offset: 0x4270
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_65b50bfd()
{
	level namespace_ad23e503::function_1ab5ebec("player_front_gen_lab");
	level namespace_ad23e503::function_74d6b22f("gen_lab_gone_hot");
	level thread namespace_d40478f6::function_b345d175();
}

/*
	Name: function_c7a9d766
	Namespace: namespace_9c567844
	Checksum: 0xB601F72C
	Offset: 0x42D8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_c7a9d766()
{
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_ad23e503::function_1ab5ebec("gen_lab_gone_hot");
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_7d0e1b80
	Namespace: namespace_9c567844
	Checksum: 0x99648A7B
	Offset: 0x4368
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_7d0e1b80()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	level namespace_ad23e503::function_1ab5ebec("gen_lab_gone_hot");
	if(self.var_1611b636 === 1)
	{
		self waittill("hash_1d75a6cc");
	}
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_eee46d16
	Namespace: namespace_9c567844
	Checksum: 0xC00E23B3
	Offset: 0x43E8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_eee46d16()
{
	namespace_2f06d687::function_c0434ff5("gen_lab_enemies", 3);
	namespace_4dbf3ae3::function_42e87952("gen_lab_color_chain_front", undefined, undefined, 0);
	namespace_2f06d687::function_c0434ff5("gen_lab_enemies", 6);
	namespace_2f06d687::function_72214789("gen_lab_warlords");
	namespace_4dbf3ae3::function_42e87952("gen_lab_color_chain_mid", undefined, undefined, 0);
}

/*
	Name: function_426de534
	Namespace: namespace_9c567844
	Checksum: 0x2CBF91FD
	Offset: 0x4490
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_426de534(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		if(function_e70ab977(var_a3d46ee4))
		{
			var_a3d46ee4 thread function_3764d5e();
		}
	}
}

/*
	Name: function_3764d5e
	Namespace: namespace_9c567844
	Checksum: 0xF796C529
	Offset: 0x4548
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3764d5e()
{
	level endon("hash_c95fad0d");
	self waittill("hash_f9348fda");
	namespace_cba4cc55::function_9cb9697d(self.var_67c7c241);
	level namespace_ad23e503::function_74d6b22f("gen_lab_gone_hot");
	level thread namespace_d40478f6::function_b345d175();
}

/*
	Name: function_1cc12213
	Namespace: namespace_9c567844
	Checksum: 0xF7746F3
	Offset: 0x45C0
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_1cc12213()
{
	self endon("hash_128f8789");
	self.var_a09dbf8c = self.var_2a373326;
	self.var_2a373326 = 360000;
	self.var_a1f56f1f = 0.95;
	self thread function_9ce64b5a();
	self thread function_d7c7eef1();
	self namespace_16f9ecd3::function_6e4b8a4f();
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	if(self.var_db7bb468 === "gen_lab_force_hot_guy")
	{
		self thread function_552c9cce();
	}
	level namespace_ad23e503::function_1ab5ebec("gen_lab_gone_hot");
	self.var_2a373326 = self.var_a09dbf8c;
	self.var_a1f56f1f = 0;
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self.var_7dfaf62 = 1024;
	if(self.var_db7bb468 === "cover_office")
	{
		var_36b24c48 = function_6ada35ba("gen_lab_office_goalvolume", "targetname");
	}
	else
	{
		var_36b24c48 = function_6ada35ba("gen_lab_soldier_goal", "targetname");
	}
	self function_169cc712(var_36b24c48);
	level namespace_ad23e503::function_1ab5ebec("player_mid_gen_lab");
	var_e2f91888 = function_6ada35ba("vol_gen_lab_fallback", "targetname");
	self function_169cc712(var_e2f91888);
}

/*
	Name: function_9ce64b5a
	Namespace: namespace_9c567844
	Checksum: 0xDED5163
	Offset: 0x4830
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_9ce64b5a()
{
	level endon("hash_c95fad0d");
	self endon("hash_128f8789");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(self function_75754e3a(var_5dc5e20a))
			{
				level namespace_ad23e503::function_74d6b22f("gen_lab_gone_hot");
				level thread namespace_d40478f6::function_b345d175();
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_d7c7eef1
	Namespace: namespace_9c567844
	Checksum: 0xD1FC1799
	Offset: 0x4928
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d7c7eef1()
{
	self namespace_82b91a51::function_5b7e3888("bulletwhizby", "grenade_fire");
	level namespace_ad23e503::function_74d6b22f("gen_lab_gone_hot");
}

/*
	Name: function_552c9cce
	Namespace: namespace_9c567844
	Checksum: 0xB47596B1
	Offset: 0x4980
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_552c9cce()
{
	level endon("hash_c95fad0d");
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("hendricks_in_gen_lab");
	var_17a7bd69 = function_b4cb3503("nd_gen_lab_patrol_force_hot", "targetname");
	self thread namespace_d84e54db::function_99e190ff(var_17a7bd69);
}

/*
	Name: function_aafbf321
	Namespace: namespace_9c567844
	Checksum: 0xD55FFA52
	Offset: 0x4A08
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_aafbf321()
{
	self endon("hash_128f8789");
	self namespace_16f9ecd3::function_6e4b8a4f();
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_ad23e503::function_1ab5ebec("gen_lab_gone_hot");
	self function_169cc712(self.var_722885f3);
	self.var_7dfaf62 = 1024;
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_69ee7109::function_13ed0a8b(1);
	self function_f61c0df8("node_gen_lab_warlord_preferred", 3, 5);
}

/*
	Name: function_627360fb
	Namespace: namespace_9c567844
	Checksum: 0x20CCF83F
	Offset: 0x4B20
	Size: 0xE3
	Parameters: 4
	Flags: None
*/
function function_627360fb(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_74d6b22f("gen_lab_door_opened");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_06_02_followtheleader_vign_hendricks_traversal_start");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_06_02_followtheleader_vign_hendricks_traversal_finish");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_06_02_followleader_vign_slide_hendricks");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_06_02_follow_leader_vign_wallrun");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_07_01_genlab_vign_patrol");
}

/*
	Name: function_f092b9c1
	Namespace: namespace_9c567844
	Checksum: 0x5B51E2D
	Offset: 0x4C10
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_f092b9c1()
{
	namespace_2f06d687::function_72214789("gen_lab_enemies");
	namespace_2f06d687::function_72214789("gen_lab_warlords");
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	level namespace_ad23e503::function_74d6b22f("gen_lab_cleared");
	level thread namespace_d40478f6::function_973b77f9();
	level thread namespace_d40478f6::function_d930fe43();
	level namespace_76d95162::function_d9f49fba(0);
}

/*
	Name: function_f61c0df8
	Namespace: namespace_9c567844
	Checksum: 0x491A2AA
	Offset: 0x4CD0
	Size: 0xE9
	Parameters: 3
	Flags: None
*/
function function_f61c0df8(var_e39815ad, var_464f9e6e, var_d8d7c010)
{
	var_91efa0da = function_fe0cfd2e(var_e39815ad, "targetname");
	foreach(var_90ca1fdd in var_91efa0da)
	{
		self namespace_69ee7109::function_da308a83(var_90ca1fdd.var_722885f3, var_464f9e6e * 1000, var_d8d7c010 * 1000);
	}
}

/*
	Name: function_45dfc585
	Namespace: namespace_9c567844
	Checksum: 0x136E376A
	Offset: 0x4DC8
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_45dfc585()
{
	self namespace_6f7b2095::function_54bdb053();
	var_387075d5 = function_b4cb3503("nd_hendricks_post_shimmy_wall", "targetname");
	self thread namespace_d84e54db::function_19e98020(var_387075d5, 32);
	level namespace_ad23e503::function_1ab5ebec("player_past_shimmy_wall");
	level namespace_cc27597::function_43718187("cin_sgen_06_02_follow_leader_vign_wallrun");
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	var_d5b5e0a8 = function_b4cb3503("nd_hendricks_outside_gen_lab", "targetname");
	self thread namespace_d84e54db::function_19e98020(var_d5b5e0a8, 32);
	level namespace_ad23e503::function_1ab5ebec("hendricks_gen_lab_intro_color");
	var_cb5df8f8 = function_b4cb3503("nd_hendricks_front_gen_lab", "targetname");
	self namespace_d84e54db::function_19e98020(var_cb5df8f8, 32);
	level namespace_ad23e503::function_74d6b22f("hendricks_in_gen_lab");
	self namespace_6f7b2095::function_bae40a28();
	level thread function_532aa385();
	level namespace_ad23e503::function_1ab5ebec("gen_lab_gone_hot");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level thread namespace_d40478f6::function_b345d175();
	self.var_7dfaf62 = 1024;
	level namespace_ad23e503::function_1ab5ebec("gen_lab_cleared");
	self namespace_6f7b2095::function_54bdb053();
	var_320f1cb = function_b4cb3503("nd_gen_lab_door", "targetname");
	self function_169cc712(var_320f1cb, 1);
	self waittill("hash_41d1aaf0");
	level namespace_ad23e503::function_74d6b22f("hendricks_at_gen_lab_door");
	level namespace_ad23e503::function_1ab5ebec("gen_lab_door_opened");
	self namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_532aa385
	Namespace: namespace_9c567844
	Checksum: 0x7E1BC53F
	Offset: 0x50F0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_532aa385()
{
	level endon("hash_c95fad0d");
	var_c085d91c = [];
	var_c085d91c[0] = "hendricks_in_gen_lab";
	var_c085d91c[1] = "pre_gen_lab_vo_done";
	level namespace_ad23e503::function_43ac000b(var_c085d91c);
	if(!level namespace_ad23e503::function_7922262b("gen_lab_gone_hot"))
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_take_the_first_shot_0");
	}
}

/*
	Name: function_d26cae1c
	Namespace: namespace_9c567844
	Checksum: 0x80B3264D
	Offset: 0x5198
	Size: 0x323
	Parameters: 2
	Flags: None
*/
function function_d26cae1c(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_2afd69a::function_10dad989("nd_post_gen_lab_start");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_descend_into_core");
		level thread namespace_d0ef8521::function_45d1556("sgen_labs_exit_breadcrumb");
		var_6d927f8e = function_6ada35ba("gen_lab_end_door", "targetname");
		var_6d927f8e function_dc8c8404();
		level namespace_ad23e503::function_74d6b22f("gen_lab_door_opened");
		namespace_d7916d65::function_a2995f22();
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 1);
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("dust_motes", 1);
		}
		level thread namespace_d40478f6::function_d930fe43();
	}
	level notify("hash_996f8b77");
	level thread function_8a4d2dee();
	level thread function_a6226aba();
	level.var_2fd26037 thread function_201e2a08();
	level.var_ea764859 thread function_2c83d390();
	var_58d37bcd = function_6ada35ba("trig_bridge_kill_trigger", "targetname");
	var_58d37bcd function_175e6b8e(0);
	var_dee3d10a = function_6ada35ba("1", "scriptgroup_playerspawns_regroup");
	var_dee3d10a.var_3367c99d = 500;
	level namespace_ad23e503::function_1ab5ebec("follow_chem_lab");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_dcc3e542
	Namespace: namespace_9c567844
	Checksum: 0x234A98DC
	Offset: 0x54C8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_dcc3e542(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_982aa3da
	Namespace: namespace_9c567844
	Checksum: 0x2DDF89FB
	Offset: 0x54F8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_982aa3da()
{
	level endon("hash_8210273d");
	level namespace_ad23e503::function_1ab5ebec("gen_lab_hendricks_safety");
	level namespace_ad23e503::function_74d6b22f("hendricks_follow1_jump1");
	level namespace_ad23e503::function_74d6b22f("hendricks_follow1_wait2");
	level namespace_ad23e503::function_74d6b22f("hendricks_follow1_wait3");
	level namespace_ad23e503::function_74d6b22f("hendricks_follow1_wait4");
}

/*
	Name: function_8a4d2dee
	Namespace: namespace_9c567844
	Checksum: 0x1B3562B1
	Offset: 0x55B0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_8a4d2dee()
{
	function_9e3608e3("silo_bridge_edge_break_static");
	level namespace_71e9cb84::function_331efedc("debris_fall", 1);
	level namespace_ad23e503::function_1ab5ebec("main_bridge_collapse");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_bridge_silo_debris_bundle");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
	function_6ddd4fa4("silo_bridge_edge_break_static");
	level namespace_ad23e503::function_1ab5ebec("post_bridge_collapse_rocks");
	level namespace_71e9cb84::function_331efedc("debris_bridge", 1);
}

/*
	Name: function_201e2a08
	Namespace: namespace_9c567844
	Checksum: 0xA8CABE74
	Offset: 0x56B0
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_201e2a08()
{
	level namespace_cc27597::function_43718187("cin_sgen_08_01_followleader_2_vign_pathfinding_aie_jumpdown_hendricks");
	level namespace_ad23e503::function_1ab5ebec("hendricks_follow2_wallrun_trick");
	namespace_cc27597::function_8f9f34e0("cin_sgen_09_01_chemlab_vign_windowknock_robots_start", &function_67a6b650);
	level thread namespace_cc27597::function_43718187("cin_sgen_09_01_chemlab_vign_windowknock_robots_start");
	level namespace_cc27597::function_43718187("cin_sgen_08_01_followleader2_vign_wallrun");
	level namespace_ad23e503::function_1ab5ebec("hendricks_wallrun_done");
	self function_169cc712(function_b4cb3503("nd_before_bridge_collapse", "targetname"), 1);
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	level namespace_ad23e503::function_1ab5ebec("post_bridge_collapse_rocks");
	self thread namespace_71b8dba1::function_81141386("hend_watch_your_step_t_1", 1);
	level namespace_cc27597::function_fcf56ab5("cin_sgen_08_01_followleader2_vign_wallrun");
	self function_169cc712(function_b4cb3503("nd_after_bridge_collapse", "targetname"), 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("cqb", 0);
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
}

/*
	Name: function_a6226aba
	Namespace: namespace_9c567844
	Checksum: 0x68E58474
	Offset: 0x58E0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a6226aba()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_follow2_jumpdown");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_trying_to_send_u_0");
	level namespace_71b8dba1::function_a463d127("kane_i_just_want_the_same_0", 0.75);
}

/*
	Name: function_f6774f56
	Namespace: namespace_9c567844
	Checksum: 0x610B0D61
	Offset: 0x5958
	Size: 0x363
	Parameters: 2
	Flags: None
*/
function function_f6774f56(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_2afd69a::function_10dad989("nd_follow_chem_lab");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_descend_into_core");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
		level namespace_ad23e503::function_74d6b22f("hendricks_wallrun_done");
		namespace_cc27597::function_8f9f34e0("cin_sgen_09_01_chemlab_vign_windowknock_robots_start", &function_67a6b650);
		level thread namespace_cc27597::function_43718187("cin_sgen_09_01_chemlab_vign_windowknock_robots_start");
		level thread namespace_d40478f6::function_d930fe43();
		namespace_d7916d65::function_a2995f22();
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 1);
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("dust_motes", 1);
		}
	}
	else if(isdefined(level.var_685af7f6))
	{
		level thread [[level.var_685af7f6]]();
	}
	level.var_2fd26037 thread function_53d46eee();
	level.var_ea764859 thread function_1acc965e();
	level namespace_cc27597::function_c35e6aab("cin_sgen_09_02_chem_lab_vign_opendoor_hendricks");
	level namespace_cc27597::function_c35e6aab("cin_sgen_11_02_silofloor_vign_notice_hendricks");
	level thread function_631aad();
	level thread function_5a74dfe6();
	level thread function_144d5a8a();
	var_3fe0a4d2 = function_6ada35ba("trig_player_at_silo_floor", "targetname");
	var_3fe0a4d2 function_175e6b8e(0);
	level namespace_ad23e503::function_1ab5ebec("follow3_1");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_79f1dc0
	Namespace: namespace_9c567844
	Checksum: 0xE5BB9D77
	Offset: 0x5CC8
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_79f1dc0(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_74d6b22f("chem_door_open");
	namespace_14b42b8a::function_368120a1("cin_sgen_09_01_chemlab_vign_windowknock_robots_stop");
	namespace_14b42b8a::function_368120a1("cin_sgen_09_01_chemlab_vign_windowknock_hendricks_start_idle");
	namespace_14b42b8a::function_368120a1("cin_sgen_09_01_chemlab_vign_windowknock_hendricks_moveinroom");
}

/*
	Name: function_631aad
	Namespace: namespace_9c567844
	Checksum: 0xD33C153E
	Offset: 0x5D60
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_631aad()
{
	level thread namespace_d0ef8521::function_45d1556("obj_chem_lab_mid_breadcrumb");
	level namespace_ad23e503::function_1ab5ebec("player_in_chem_lab");
	level waittill("hash_7afd09b6");
	namespace_d0ef8521::function_45d1556("obj_chem_lab_door_breadcrumb");
}

/*
	Name: function_53d46eee
	Namespace: namespace_9c567844
	Checksum: 0x3399E2BE
	Offset: 0x5DD8
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function function_53d46eee()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_wallrun_done");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	level thread namespace_cc27597::function_43718187("cin_sgen_09_01_chemlab_vign_windowknock_hendricks_start_idle");
	level waittill("hash_797660ac");
	level namespace_ad23e503::function_1ab5ebec("chem_lab_start");
	level namespace_cc27597::function_43718187("cin_sgen_09_01_chemlab_vign_windowknock_hendricks_moveinroom");
	level namespace_ad23e503::function_1ab5ebec("player_in_chem_lab");
	level thread namespace_cc27597::function_43718187("cin_sgen_09_01_chemlab_vign_windowknock_robots_stop");
	level thread namespace_cc27597::function_43718187("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree");
	level namespace_ad23e503::function_1ab5ebec("chem_lab_hendricks_movein_done");
	level thread namespace_cc27597::function_43718187("cin_sgen_09_02_chem_lab_vign_opendoor_hendricks");
	level waittill("hash_99a916d7");
	var_91729078 = function_6ada35ba("chem_lab_door_player_clip", "targetname");
	var_91729078 function_422037f5();
	level waittill("hash_7afd09b6");
	level thread function_c411551e();
	level namespace_ad23e503::function_74d6b22f("chem_door_open");
	namespace_4dbf3ae3::function_1ab5ebec("trig_silo_floor_player_check");
	level namespace_ad23e503::function_74d6b22f("all_players_outside_chem_lab");
	var_91729078 function_4083a98e();
	level namespace_cc27597::function_43718187("cin_sgen_09_02_chem_lab_vign_exitdoor_hendricks");
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 1);
	self thread function_abf124c5();
}

/*
	Name: function_c411551e
	Namespace: namespace_9c567844
	Checksum: 0x27353F98
	Offset: 0x6110
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_c411551e()
{
	level endon("hash_a643ceff");
	level endon("hash_41959839");
	wait(8);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_i_m_not_gonna_hold_i_0");
	wait(10);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_wanna_pick_up_the_pa_0");
}

/*
	Name: function_144d5a8a
	Namespace: namespace_9c567844
	Checksum: 0xE1B20752
	Offset: 0x6188
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_144d5a8a()
{
	namespace_cc27597::function_8f9f34e0("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree", &function_67a6b650);
	namespace_cc27597::function_c35e6aab("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree");
	level thread function_ed4bb74b();
	level namespace_ad23e503::function_1ab5ebec("start_chem_lab_robot_scare");
	level thread namespace_cc27597::function_43718187("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree_stop");
}

/*
	Name: function_ed4bb74b
	Namespace: namespace_9c567844
	Checksum: 0x36BCEDC7
	Offset: 0x6230
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_ed4bb74b()
{
	level namespace_71e9cb84::function_74d6b22f("w_robot_window_break", 2);
	level waittill("hash_d4320be3");
	level thread namespace_d40478f6::function_98762d53();
	level notify("hash_aa7c8a11");
	level.var_2395e945[0] thread namespace_71b8dba1::function_13b3b16a("plyr_shit_1", 1);
	level namespace_71e9cb84::function_74d6b22f("w_robot_window_break", 1);
}

/*
	Name: function_67a6b650
	Namespace: namespace_9c567844
	Checksum: 0xF1D5B476
	Offset: 0x62D8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_67a6b650(var_c77d2837)
{
	namespace_84970cc4::function_ce1a87ca(var_c77d2837, &function_7bff1955);
}

/*
	Name: function_7bff1955
	Namespace: namespace_9c567844
	Checksum: 0xCD17296F
	Offset: 0x6310
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_7bff1955(var_6104a93b)
{
	var_6104a93b function_8ff2374e("c_cia_robot_dam_1_lights_1");
	var_6104a93b namespace_71e9cb84::function_74d6b22f("play_cia_robot_rogue_control", 1);
	var_6104a93b waittill("hash_4289520f");
	var_6104a93b namespace_71e9cb84::function_74d6b22f("play_cia_robot_rogue_control", 0);
}

/*
	Name: function_4843e971
	Namespace: namespace_9c567844
	Checksum: 0x22A075E3
	Offset: 0x6398
	Size: 0x3AB
	Parameters: 2
	Flags: None
*/
function function_4843e971(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
		level namespace_ad23e503::function_74d6b22f("player_in_chem_lab");
		namespace_2afd69a::function_10dad989("nd_pre_ambush");
		level.var_ea764859 thread function_3054092d();
		level.var_2fd26037 thread function_abf124c5();
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_descend_into_core");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
		level namespace_cc27597::function_5c143f59("cin_sgen_09_02_chem_lab_vign_exitdoor_hendricks");
		namespace_cc27597::function_8f9f34e0("cin_sgen_11_02_silofloor_vign_notice_hendricks", &function_2e68b5db, "init");
		level namespace_cc27597::function_c35e6aab("cin_sgen_11_02_silofloor_vign_notice_hendricks");
		level thread function_5a74dfe6();
		level thread namespace_d40478f6::function_98762d53();
		level namespace_ad23e503::function_74d6b22f("follow3_1");
		var_3fe0a4d2 = function_6ada35ba("trig_player_at_silo_floor", "targetname");
		var_3fe0a4d2 function_175e6b8e(0);
		level namespace_ad23e503::function_74d6b22f("chem_door_open");
		namespace_d7916d65::function_a2995f22();
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 1);
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("dust_motes", 1);
		}
	}
	level thread function_9ed55736();
	level namespace_ad23e503::function_1ab5ebec("player_at_silo_floor");
	if(isdefined(level.var_72cf7c7d))
	{
		level thread [[level.var_72cf7c7d]]();
	}
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_ff8909db
	Namespace: namespace_9c567844
	Checksum: 0x96F7F73
	Offset: 0x6750
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_ff8909db(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_14b42b8a::function_368120a1("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree");
	namespace_14b42b8a::function_368120a1("cin_sgen_09_02_chem_lab_vign_workerbot_robot01_breakfree_stop");
	namespace_14b42b8a::function_368120a1("cin_sgen_09_02_chem_lab_vign_opendoor_hendricks");
	namespace_14b42b8a::function_368120a1("cin_sgen_09_02_chem_lab_vign_exitdoor_hendricks");
}

/*
	Name: function_9ed55736
	Namespace: namespace_9c567844
	Checksum: 0xC93FB03B
	Offset: 0x67E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9ed55736()
{
	namespace_d0ef8521::function_45d1556("obj_chem_lab_slide_breadcrumb");
}

/*
	Name: function_abf124c5
	Namespace: namespace_9c567844
	Checksum: 0x7A4C4912
	Offset: 0x6808
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_abf124c5()
{
	level thread function_dce4e081();
	self.var_7dfaf62 = 32;
	var_bb56ca64 = function_b4cb3503("nd_hendricks_post_chem_lab", "targetname");
	self function_169cc712(var_bb56ca64.var_722885f3, 1);
	level namespace_ad23e503::function_1ab5ebec("hendricks_follow3_wait1");
	level namespace_cc27597::function_43718187("cin_sgen_10_01_followleader3_vign_slide");
	var_f98517de = function_b4cb3503("hendricks_silo_floor", "targetname");
	self namespace_d84e54db::function_19e98020(var_f98517de, 32);
	self thread function_fe2615a5();
}

/*
	Name: function_dce4e081
	Namespace: namespace_9c567844
	Checksum: 0x7F4D13DD
	Offset: 0x6930
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_dce4e081()
{
	level namespace_71b8dba1::function_a463d127("plyr_kane_could_someone_0");
	level namespace_71b8dba1::function_a463d127("kane_it_s_unlikely_that_a_0");
}

/*
	Name: function_c15000a5
	Namespace: namespace_9c567844
	Checksum: 0xCCCA64C2
	Offset: 0x6980
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_c15000a5()
{
	level namespace_ad23e503::function_1ab5ebec("player_ev_tutorial");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_aa3f3ac2) && var_5dc5e20a.var_aa3f3ac2)
		{
			return;
			continue;
		}
		var_5dc5e20a thread namespace_82b91a51::function_32d40124(&"CP_MI_SING_SGEN_EV_TUTORIAL", 0, "enhanced_vision_activated", 5);
	}
}

/*
	Name: function_6926cd7f
	Namespace: namespace_9c567844
	Checksum: 0xBF257ACC
	Offset: 0x6A78
	Size: 0x2E3
	Parameters: 2
	Flags: None
*/
function function_6926cd7f(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
		level.var_2fd26037 thread function_fe2615a5();
		namespace_2afd69a::function_10dad989("nd_highlight_grate");
		level.var_ea764859 thread function_fdbec74b();
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_descend_into_core");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
		namespace_cc27597::function_8f9f34e0("cin_sgen_11_02_silofloor_vign_notice_hendricks", &function_2e68b5db, "init");
		level namespace_cc27597::function_c35e6aab("cin_sgen_11_02_silofloor_vign_notice_hendricks");
		level namespace_ad23e503::function_74d6b22f("follow3_1");
		level thread function_5a74dfe6();
		namespace_d7916d65::function_a2995f22();
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 1);
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("dust_motes", 1);
		}
		level namespace_ad23e503::function_74d6b22f("start_silo_floor_battle");
	}
	level thread function_6720a440();
	function_ee660c8a();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_6720a440
	Namespace: namespace_9c567844
	Checksum: 0x852DB5AC
	Offset: 0x6D68
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_6720a440()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_at_silo_floor");
	level namespace_ad23e503::function_1ab5ebec("player_at_silo_floor");
	level namespace_ad23e503::function_74d6b22f("send_drone_over_grate");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_recon_drone_says_the_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_anyone_wanna_bet_a_h_0", 0.5);
	function_37cbcf1a(" evt_metal_bang", (-624, 995, -2569));
	wait(1);
	function_37cbcf1a("mus_coalescence_theme_silo", (-624, 995, -2569));
	wait(1);
	level notify("hash_2e6ff9d9");
	level thread namespace_d40478f6::function_e596bdfd();
	level namespace_ad23e503::function_74d6b22f("start_floor_risers");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_whoa_what_the_hel_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_whoa_whoa_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_hendricks_they_re_t_0");
	level namespace_ad23e503::function_1ab5ebec("start_silo_ambush");
	level namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_fe2615a5
	Namespace: namespace_9c567844
	Checksum: 0xCB8B5FCA
	Offset: 0x6F60
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_fe2615a5()
{
	level namespace_ad23e503::function_74d6b22f("hendricks_at_silo_floor");
	var_3fe0a4d2 = function_6ada35ba("trig_player_at_silo_floor", "targetname");
	var_3fe0a4d2 function_175e6b8e(1);
	level namespace_ad23e503::function_1ab5ebec("player_at_silo_floor");
	var_fefa0361 = function_b4cb3503("nd_hendricks_silo_front", "targetname");
	self namespace_d84e54db::function_19e98020(var_fefa0361, 32);
	level namespace_ad23e503::function_1ab5ebec("start_silo_ambush");
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_silo_kill");
	var_2131da4e = function_b4cb3503("nd_hendricks_silo_fallback", "targetname");
	self namespace_d84e54db::function_19e98020(var_2131da4e, 32);
}

/*
	Name: function_ee660c8a
	Namespace: namespace_9c567844
	Checksum: 0xE1179DB7
	Offset: 0x70F0
	Size: 0x32B
	Parameters: 0
	Flags: None
*/
function function_ee660c8a()
{
	namespace_84970cc4::function_966ecb29(function_d35375b8("silo_robot_rusher", "script_noteworthy"), &namespace_2f06d687::function_994832bd, &function_e45f3fb4);
	namespace_84970cc4::function_966ecb29(function_d35375b8("middle_room_robots", "targetname"), &namespace_2f06d687::function_994832bd, &function_13ad6b1f);
	namespace_84970cc4::function_966ecb29(function_d35375b8("silo_ambush_robots", "targetname"), &namespace_2f06d687::function_994832bd, &function_13ad6b1f);
	namespace_9f824288::function_5d2cdd99();
	level namespace_ad23e503::function_1ab5ebec("start_silo_ambush");
	level.var_ea764859 namespace_2afd69a::function_74191a2(1);
	level thread function_b8692659();
	if(level.var_2395e945.size > 1)
	{
		var_ee7dbbc9 = 20;
	}
	else
	{
		var_ee7dbbc9 = 30;
	}
	level thread namespace_ad23e503::function_ee4e9833(var_ee7dbbc9, "spawn_silo_robots");
	level namespace_ad23e503::function_1ab5ebec("spawn_silo_robots");
	level namespace_82b91a51::function_67520c6a(2, undefined, &function_847fb8ed, "break_higher_balcony_right");
	level namespace_82b91a51::function_67520c6a(4.5, undefined, &function_847fb8ed, "break_higher_balcony_left");
	namespace_2f06d687::function_22356ba7("silo_ambush_robots");
	namespace_2f06d687::function_72214789("silo_floor_robots");
	level thread namespace_d40478f6::function_973b77f9();
	level namespace_76d95162::function_d9f49fba(0);
	level.var_ea764859 namespace_2afd69a::function_74191a2(0);
	level namespace_ad23e503::function_74d6b22f("silo_floor_cleared");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_all_clear_who_the_h_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_i_don_t_know_i_m_0", 0.5);
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_silo_kill");
}

/*
	Name: function_b8692659
	Namespace: namespace_9c567844
	Checksum: 0x2184882E
	Offset: 0x7428
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_b8692659()
{
	wait(5);
	namespace_2f06d687::function_22356ba7("middle_room_robots");
	if(level.var_2395e945.size > 1)
	{
		var_2cba70ff = 4;
	}
	else
	{
		var_2cba70ff = 6;
	}
	namespace_2f06d687::function_c0434ff5("silo_floor_robots", var_2cba70ff);
	level namespace_ad23e503::function_74d6b22f("spawn_silo_robots");
}

/*
	Name: function_5a74dfe6
	Namespace: namespace_9c567844
	Checksum: 0xC87EBFEB
	Offset: 0x74C8
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_5a74dfe6()
{
	level thread function_cc37bee6("front_robot_riser_01", 1);
	level thread function_cc37bee6("front_robot_riser_02", 3.5);
	level thread function_cc37bee6("front_robot_riser_03", 2.5);
	level thread function_cc37bee6("middle_room_riser_01", 1);
	level thread function_cc37bee6("middle_room_riser_02", 3);
	level thread function_cc37bee6("middle_room_riser_03", 1.5);
	level thread function_cc37bee6("middle_room_riser_04", 4);
	level namespace_ad23e503::function_1ab5ebec("start_floor_risers");
	wait(2);
	level thread function_847fb8ed("break_lower_balcony");
	level namespace_ad23e503::function_74d6b22f("start_silo_ambush");
}

/*
	Name: function_847fb8ed
	Namespace: namespace_9c567844
	Checksum: 0x84595D8
	Offset: 0x7630
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_847fb8ed(var_5b3b7ceb)
{
	var_80fc8ac2 = namespace_14b42b8a::function_7922262b(var_5b3b7ceb);
	var_895e60d2 = namespace_14b42b8a::function_7faf4c39(var_80fc8ac2.var_b07228b6);
	for(var_c957f6b6 = 0; var_c957f6b6 < 5; var_c957f6b6++)
	{
		var_895e60d2 = namespace_84970cc4::function_8332f7f6(var_895e60d2);
		foreach(var_c62a5d83 in var_895e60d2)
		{
			function_87f3c622(level.var_2fd26037.var_dfcc01fd, var_80fc8ac2.var_722885f3, var_c62a5d83.var_722885f3);
			wait(function_72a94f05(0.05, 0.2));
		}
	}
}

/*
	Name: function_cc37bee6
	Namespace: namespace_9c567844
	Checksum: 0x86A05701
	Offset: 0x77A8
	Size: 0x2B3
	Parameters: 2
	Flags: None
*/
function function_cc37bee6(var_30545f10, var_ee7dbbc9)
{
	var_a269823c = namespace_2f06d687::function_7387a40a("robot_riser_spawner");
	var_a269823c endon("hash_128f8789");
	var_a269823c namespace_16f9ecd3::function_a2477bbb();
	var_a269823c namespace_71e9cb84::function_74d6b22f("disable_tmode", 1);
	var_a269823c function_80765127();
	var_a269823c function_73a47766(0);
	var_a269823c namespace_d84e54db::function_ceb883cd("robot_lights", 2);
	var_6df191e = namespace_14b42b8a::function_7922262b(var_30545f10);
	var_6df191e thread namespace_cc27597::function_c35e6aab(var_a269823c);
	level namespace_ad23e503::function_1ab5ebec("start_floor_risers");
	if(isdefined(var_ee7dbbc9))
	{
		wait(var_ee7dbbc9);
	}
	var_a269823c namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
	var_a269823c namespace_d84e54db::function_ceb883cd("robot_lights", 0);
	var_6df191e thread namespace_cc27597::function_43718187(var_a269823c);
	var_a269823c namespace_16f9ecd3::function_b3ce91e0();
	var_a269823c namespace_71e9cb84::function_74d6b22f("disable_tmode", 0);
	var_a269823c function_8dafb866();
	var_a269823c function_73a47766(1);
	if(isdefined(var_6df191e.var_b07228b6))
	{
		var_9de10fe3 = function_b4cb3503(var_6df191e.var_b07228b6, "targetname");
		var_a269823c function_169cc712(var_9de10fe3, 1);
	}
	else
	{
		var_5a6f1df6 = function_6ada35ba("silo_floor_volume", "targetname");
		var_a269823c function_169cc712(var_5a6f1df6);
	}
}

/*
	Name: function_13ad6b1f
	Namespace: namespace_9c567844
	Checksum: 0x607E9952
	Offset: 0x7A68
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_13ad6b1f()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
	if(isdefined(self.var_b07228b6))
	{
		var_9de10fe3 = function_b4cb3503(self.var_b07228b6, "targetname");
		self namespace_d84e54db::function_19e98020(var_9de10fe3, 32);
	}
	else
	{
		var_5a6f1df6 = function_6ada35ba("silo_floor_volume", "targetname");
		self function_169cc712(var_5a6f1df6, 1);
	}
}

/*
	Name: function_e45f3fb4
	Namespace: namespace_9c567844
	Checksum: 0xF0C71CDD
	Offset: 0x7B50
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e45f3fb4()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
	if(level.var_2395e945.size == 1)
	{
		wait(function_72a94f05(0.5, 2.5));
	}
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
}

/*
	Name: function_e3f81a25
	Namespace: namespace_9c567844
	Checksum: 0xA430CD31
	Offset: 0x7C08
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function function_e3f81a25(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_08_01_followleader_2_vign_pathfinding_aie_jumpdown_hendricks");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_08_01_followleader2_vign_wallrun");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_09_01_chemlab_vign_windowknock_robots_start");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_10_01_followleader3_vign_slide");
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_sgen_hendricks_railing_kick_bundle");
}

/*
	Name: function_73a47766
	Namespace: namespace_9c567844
	Checksum: 0xAE026F32
	Offset: 0x7CD8
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_73a47766(var_ca4b1dc7)
{
	if(var_ca4b1dc7)
	{
		self namespace_175490fb::function_a1f70a02("cybercom_servoshortout");
		self namespace_175490fb::function_a1f70a02("cybercom_systemoverload");
		self namespace_175490fb::function_a1f70a02("cybercom_immolation");
		self namespace_175490fb::function_a1f70a02("cybercom_fireflyswarm");
		self namespace_175490fb::function_a1f70a02("cybercom_iffoverride");
		self namespace_175490fb::function_a1f70a02("cybercom_surge");
	}
	else
	{
		self namespace_175490fb::function_59965309("cybercom_servoshortout");
		self namespace_175490fb::function_59965309("cybercom_systemoverload");
		self namespace_175490fb::function_59965309("cybercom_immolation");
		self namespace_175490fb::function_59965309("cybercom_fireflyswarm");
		self namespace_175490fb::function_59965309("cybercom_iffoverride");
		self namespace_175490fb::function_59965309("cybercom_surge");
	}
}

/*
	Name: function_77964ef1
	Namespace: namespace_9c567844
	Checksum: 0x5639C810
	Offset: 0x7E78
	Size: 0x3D3
	Parameters: 2
	Flags: None
*/
function function_77964ef1(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_2afd69a::function_10dad989("nd_silo_grate");
		level.var_ea764859 thread function_e6e2c015();
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
		namespace_cc27597::function_8f9f34e0("cin_sgen_11_02_silofloor_vign_notice_hendricks", &function_2e68b5db, "init");
		level namespace_cc27597::function_c35e6aab("cin_sgen_11_02_silofloor_vign_notice_hendricks");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_descend_into_core");
		level namespace_ad23e503::function_74d6b22f("silo_floor_cleared");
		level namespace_ad23e503::function_74d6b22f("drone_over_grate");
		level namespace_ad23e503::function_74d6b22f("start_silo_ambush");
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		level thread namespace_d40478f6::function_71f06599();
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 1);
		}
		namespace_d7916d65::function_a2995f22();
	}
	level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 1);
	level namespace_71e9cb84::function_74d6b22f("fallen_soldiers_client_fxanims", 1);
	level.var_2fd26037 function_28906173();
	level namespace_ad23e503::function_1ab5ebec("enter_corvus");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 0);
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("dust_motes", 0);
	}
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
	level thread function_8738e00c();
}

/*
	Name: function_1ebdd30c
	Namespace: namespace_9c567844
	Checksum: 0xFA713318
	Offset: 0x8258
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1ebdd30c()
{
	namespace_d0ef8521::function_45d1556("under_silo_breadcrumb");
}

/*
	Name: function_2edb6f5b
	Namespace: namespace_9c567844
	Checksum: 0x8DE191A9
	Offset: 0x8280
	Size: 0x14B
	Parameters: 4
	Flags: None
*/
function function_2edb6f5b(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_74d6b22f("silo_grate_open");
	namespace_14b42b8a::function_368120a1("p7_fxanim_cp_sgen_lab_ceiling_light_01_bundle");
	namespace_14b42b8a::function_368120a1("p7_fxanim_cp_sgen_lab_ceiling_light_02_bundle");
	namespace_14b42b8a::function_368120a1("p7_fxanim_cp_sgen_monkey_jar_bundle");
	namespace_14b42b8a::function_368120a1("p7_fxanim_cp_sgen_bridge_silo_edge_break_bundle");
	namespace_14b42b8a::function_368120a1("cin_sgen_11_02_silofloor_vign_notice_hendricks");
	namespace_14b42b8a::function_368120a1("cin_sgen_11_02_silofloor_vign_notice_drone");
	namespace_14b42b8a::function_368120a1("cin_sgen_11_02_silofloor_traverse_vign_hendricks_firstjump");
	namespace_14b42b8a::function_368120a1("cin_sgen_11_02_silofloor_traverse_vign_hendricks_secondjump");
	namespace_14b42b8a::function_368120a1("cin_sgen_11_02_silofloor_traverse_vign_hendricks_thirdjump");
	namespace_14b42b8a::function_368120a1("cin_sgen_11_02_silofloor_traverse_vign_hendricks_fourthjump");
	namespace_14b42b8a::function_368120a1("cin_sgen_11_02_silofloor_traverse_vign_hendricks_fifthjump");
}

/*
	Name: function_8738e00c
	Namespace: namespace_9c567844
	Checksum: 0x3FEA6C2B
	Offset: 0x83D8
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_8738e00c()
{
	var_b6b9582d = function_bd90138e();
	foreach(var_1e25855 in var_b6b9582d)
	{
		if(isdefined(var_1e25855))
		{
			var_1e25855 function_dc8c8404();
			wait(0.05);
		}
	}
}

/*
	Name: function_2e68b5db
	Namespace: namespace_9c567844
	Checksum: 0x15DD925D
	Offset: 0x84A0
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_2e68b5db(var_cd9c6d30)
{
	level namespace_ad23e503::function_1ab5ebec("drone_over_grate");
	var_cd9c6d30["silo_floor_grate"] namespace_71e9cb84::function_74d6b22f("structural_weakness", 1);
	level namespace_ad23e503::function_1ab5ebec("start_silo_ambush");
	var_cd9c6d30["silo_floor_grate"] namespace_71e9cb84::function_74d6b22f("structural_weakness", 0);
	level namespace_ad23e503::function_1ab5ebec("drone_over_grate_real");
	var_cd9c6d30["silo_floor_grate"] namespace_71e9cb84::function_74d6b22f("structural_weakness", 1);
	level namespace_ad23e503::function_1ab5ebec("silo_grate_open");
	var_cd9c6d30["silo_floor_grate"] namespace_71e9cb84::function_74d6b22f("structural_weakness", 0);
}

/*
	Name: function_28906173
	Namespace: namespace_9c567844
	Checksum: 0x13AEBFEC
	Offset: 0x85E8
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_28906173()
{
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	level namespace_ad23e503::function_1ab5ebec("silo_floor_regroup");
	level thread function_c15000a5();
	level namespace_ad23e503::function_1ab5ebec("drone_over_grate_real");
	if(isdefined(level.var_e6d6fe31))
	{
		level thread [[level.var_e6d6fe31]]();
	}
	namespace_cc27597::function_43718187("cin_sgen_11_02_silofloor_vign_notice_hendricks");
	level thread function_953a1437();
	level thread function_1ebdd30c();
	level thread namespace_82b91a51::function_ef3f75eb("sound_kill_thunder");
	level namespace_cc27597::function_43718187("cin_sgen_11_02_silofloor_traverse_vign_hendricks_firstjump");
	level.var_2fd26037 waittill("hash_568ee845");
	wait(1);
	level namespace_ad23e503::function_1ab5ebec("hendricks_under_silo_second_jump");
	level thread namespace_cc27597::function_43718187("cin_sgen_11_02_silofloor_traverse_vign_hendricks_secondjump");
	level.var_2fd26037 waittill("hash_568ee845");
	level namespace_ad23e503::function_1ab5ebec("hendricks_under_silo_third_jump");
	level thread namespace_cc27597::function_43718187("cin_sgen_11_02_silofloor_traverse_vign_hendricks_thirdjump");
	level.var_2fd26037 waittill("hash_568ee845");
	level namespace_ad23e503::function_1ab5ebec("hendricks_under_silo_fourth_jump");
	level thread namespace_cc27597::function_43718187("cin_sgen_11_02_silofloor_traverse_vign_hendricks_fourthjump");
	level.var_2fd26037 waittill("hash_568ee845");
	level namespace_ad23e503::function_1ab5ebec("hendricks_under_silo_fifth_jump");
	level namespace_cc27597::function_43718187("cin_sgen_11_02_silofloor_traverse_vign_hendricks_fifthjump");
	var_d3556aed = function_b4cb3503("nd_post_jump_downs", "targetname");
	self function_169cc712(var_d3556aed, 1);
}

/*
	Name: function_953a1437
	Namespace: namespace_9c567844
	Checksum: 0x733CB123
	Offset: 0x88C8
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_953a1437()
{
	level namespace_71b8dba1::function_a463d127("kane_limited_light_ahead_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_copy_that_kane_0", 0.8);
	level namespace_ad23e503::function_1ab5ebec("hendricks_under_silo_second_jump");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hustle_recon_drone_0");
	level namespace_ad23e503::function_1ab5ebec("drone_died");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_we_lost_the_f_0");
	level namespace_71b8dba1::function_a463d127("kane_negative_beat_blu_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_fucking_tech_0", 0.5);
	level namespace_71b8dba1::function_a463d127("kane_keep_moving_gps_co_0", 1);
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_find_recon_drone", level.var_ea764859);
}

/*
	Name: function_f142d622
	Namespace: namespace_9c567844
	Checksum: 0x28CE592C
	Offset: 0x8A40
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_f142d622()
{
	self thread function_80ea03f0();
	level namespace_ad23e503::function_1ab5ebec("post_discover_data");
	if(level namespace_cc27597::function_444aea32("cin_sgen_06_01_followleader_vign_activate_eac_drone"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_sgen_06_01_followleader_vign_activate_eac_drone");
	}
	self namespace_2afd69a::function_3831a720("nd_post_discover_data", "post_discover_data");
	level namespace_ad23e503::function_1ab5ebec("player_past_shimmy_wall");
}

/*
	Name: function_80ea03f0
	Namespace: namespace_9c567844
	Checksum: 0x21D4D078
	Offset: 0x8B10
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_80ea03f0()
{
	level namespace_ad23e503::function_1ab5ebec("player_past_shimmy_wall");
	self notify("hash_c4902f95");
	if(level namespace_ad23e503::function_7922262b("drone_scanning"))
	{
		level namespace_ad23e503::function_9d134160("drone_scanning");
	}
	self namespace_2afd69a::function_6a8adcf6(35);
}

/*
	Name: function_51e1520f
	Namespace: namespace_9c567844
	Checksum: 0x3C2BE89F
	Offset: 0x8BA0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_51e1520f()
{
	wait(3.4);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_shit_damn_54i_are_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_think_it_s_time_we_0");
	level namespace_ad23e503::function_74d6b22f("pre_gen_lab_vo_done");
}

/*
	Name: function_a6381cd
	Namespace: namespace_9c567844
	Checksum: 0xD6E182C1
	Offset: 0x8C18
	Size: 0x433
	Parameters: 0
	Flags: None
*/
function function_a6381cd()
{
	level namespace_cc27597::function_c35e6aab("cin_sgen_07_01_genlab_vign_patrol");
	self namespace_2afd69a::function_6a8adcf6(25);
	self namespace_2afd69a::function_3831a720("nd_start_gen_lab");
	self namespace_2afd69a::function_74191a2(1);
	namespace_cc27597::function_8f9f34e0("cin_sgen_07_01_genlab_vign_patrol", &function_426de534, "play");
	namespace_2f06d687::function_7387a40a("gen_lab_warlord", &function_aafbf321);
	namespace_2f06d687::function_7387a40a("gen_lab_warlord2", &function_aafbf321);
	namespace_2f06d687::function_7387a40a("gen_lab_enemy_1", &function_1cc12213);
	namespace_2f06d687::function_7387a40a("gen_lab_enemy_2", &function_1cc12213);
	namespace_2f06d687::function_7387a40a("gen_lab_enemy_3", &function_1cc12213);
	namespace_2f06d687::function_7387a40a("gen_lab_enemy_4", &function_1cc12213);
	namespace_2f06d687::function_7387a40a("gen_lab_enemy_5", &function_1cc12213);
	if(isdefined(level.var_9de79ddb))
	{
		level thread [[level.var_9de79ddb]]();
	}
	level thread namespace_cc27597::function_43718187("cin_sgen_07_01_genlab_vign_patrol");
	level thread function_51e1520f();
	level namespace_ce7c3ed5::function_8f7bd062("cp_sgen_pip_mappingdrone01", "pip");
	level notify("hash_12cb211a");
	self namespace_2afd69a::function_6a8adcf6(5);
	self namespace_2afd69a::function_3831a720("gen_lab_wait_goal");
	level namespace_ad23e503::function_1ab5ebec("gen_lab_cleared");
	self namespace_2afd69a::function_74191a2(0);
	self namespace_2afd69a::function_6a8adcf6(10);
	self thread namespace_2afd69a::function_3831a720("nd_follow_gen_lab_mid");
	self waittill("hash_f6e9e60f");
	self namespace_2afd69a::function_6a8adcf6(5);
	level namespace_ad23e503::function_1ab5ebec("hendricks_at_gen_lab_door");
	var_fe6ba37c = function_6ada35ba("trig_gen_lab_door_player_check", "targetname");
	var_fe6ba37c function_175e6b8e(1);
	level namespace_ad23e503::function_1ab5ebec("player_at_gen_lab_door");
	var_6d927f8e = function_6ada35ba("gen_lab_end_door", "targetname");
	var_6d927f8e function_8bdea13c(100, 2, 1);
	var_6d927f8e function_921a1574("evt_genlab_door_open");
	var_6d927f8e waittill("hash_a21db68a");
	level namespace_ad23e503::function_74d6b22f("gen_lab_door_opened");
}

/*
	Name: function_2c83d390
	Namespace: namespace_9c567844
	Checksum: 0xB911F2E7
	Offset: 0x9058
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_2c83d390()
{
	self namespace_2afd69a::function_6a8adcf6(15);
	self namespace_2afd69a::function_3831a720("nd_post_gen_lab_start");
	self thread namespace_2afd69a::function_3831a720("nd_drone_bridge_path", "hendricks_follow2_wallrun_trick");
	self waittill("hash_f6e9e60f");
	self namespace_2afd69a::function_6a8adcf6(5);
	level namespace_ad23e503::function_1ab5ebec("follow_chem_lab");
}

/*
	Name: function_1acc965e
	Namespace: namespace_9c567844
	Checksum: 0xC47A93D3
	Offset: 0x9110
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_1acc965e()
{
	self namespace_2afd69a::function_2dde6e87();
	self namespace_2afd69a::function_6a8adcf6(5);
	self namespace_2afd69a::function_3831a720("nd_follow_chem_lab", "chem_lab_start");
	self namespace_2afd69a::function_3831a720("nd_post_chem_lab", "chem_door_open");
	self thread function_3054092d();
}

/*
	Name: function_3054092d
	Namespace: namespace_9c567844
	Checksum: 0xFBEE0DB8
	Offset: 0x91B8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_3054092d()
{
	self namespace_2afd69a::function_6a8adcf6(10);
	self namespace_2afd69a::function_3831a720("nd_pre_ambush", "follow3_1");
	self thread function_fdbec74b();
}

/*
	Name: function_fdbec74b
	Namespace: namespace_9c567844
	Checksum: 0x69D7D302
	Offset: 0x9220
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_fdbec74b()
{
	self namespace_2afd69a::function_6a8adcf6(15);
	self namespace_2afd69a::function_3831a720("nd_highlight_grate", "send_drone_over_grate");
	level namespace_ad23e503::function_74d6b22f("drone_over_grate");
	self namespace_2afd69a::function_6a8adcf6(15);
	self namespace_2afd69a::function_3831a720("nd_ambush_react", "start_floor_risers");
	self thread function_e6e2c015();
}

/*
	Name: function_e6e2c015
	Namespace: namespace_9c567844
	Checksum: 0xCC7A2DDE
	Offset: 0x92E8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_e6e2c015()
{
	self namespace_2afd69a::function_6a8adcf6(15);
	self namespace_2afd69a::function_3831a720("nd_silo_grate", "silo_floor_cleared");
	level thread namespace_cc27597::function_c35e6aab("cin_sgen_11_02_silofloor_vign_notice_drone");
	level namespace_ad23e503::function_74d6b22f("drone_over_grate_real");
	level namespace_ad23e503::function_1ab5ebec("silo_grate_open");
	level thread namespace_d40478f6::function_71f06599();
	level namespace_cc27597::function_43718187("cin_sgen_11_02_silofloor_vign_notice_drone");
	self.var_c1535232 = 0;
	self namespace_2afd69a::function_6a8adcf6(25);
	self namespace_2afd69a::function_3831a720("nd_silo_floor_platform_1", "hendricks_under_silo_second_jump", &function_fa0e227a);
}

/*
	Name: function_fa0e227a
	Namespace: namespace_9c567844
	Checksum: 0xA33EC3C2
	Offset: 0x9428
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_fa0e227a()
{
	level namespace_ce7c3ed5::function_2222cd4f("cp_sgen_pip_mappingdrone02");
	self waittill("hash_5e3e50f0");
	level namespace_ce7c3ed5::function_8f7bd062("cp_sgen_pip_mappingdrone02", "pip");
	level namespace_ad23e503::function_74d6b22f("drone_died");
	function_da6acfd2(level.var_c1aa5253["drone_sparks"], self, "tag_origin");
	self namespace_96fa87af::function_3762fc40();
	self namespace_96fa87af::function_42496438(0);
}

