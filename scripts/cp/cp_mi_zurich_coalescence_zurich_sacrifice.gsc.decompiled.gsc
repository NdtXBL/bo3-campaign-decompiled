#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_hq;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_plaza_battle;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_server_room;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_68404a06;

/*
	Name: function_9c1fc2fd
	Namespace: namespace_68404a06
	Checksum: 0x75A0F212
	Offset: 0xAC8
	Size: 0x35B
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_ad23e503::function_c35e6aab("hq_decon_deactivated");
		namespace_8e9083ff::function_da579a5d(var_b04bc952, 0);
		level.var_3d556bcd.var_7dfaf62 = 16;
		level thread namespace_b73b0f52::function_2950b33d();
		level thread namespace_8e9083ff::function_2361541e("hq");
		level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle_eating_raven", &namespace_8e9083ff::function_e547724d, "init");
		level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle", &namespace_8e9083ff::function_e547724d, "init");
		level thread namespace_b73b0f52::function_6e7da34e();
	}
	namespace_82b91a51::function_d8eaed3d(2);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	level thread function_50aaa108();
	level thread function_51e389ee(var_74cd64bc);
	level.var_3d556bcd thread function_3769aa25(var_74cd64bc);
	level thread function_87a50dde();
	level thread function_f6f2b542();
	level thread function_a87436d9();
	level thread function_a660f4ee();
	namespace_4dbf3ae3::function_1ab5ebec("sacrifice_enter_control_room_trig", undefined, undefined, 0);
	if(isdefined(level.var_3a0a2835))
	{
		level thread [[level.var_3a0a2835]]();
	}
	level namespace_ad23e503::function_74d6b22f("flag_move_kane_into_sacrifice_start");
	level thread namespace_67110270::function_876e5649();
	namespace_ad23e503::function_1ab5ebec("sacrifice_kane_activation_ready");
	level thread function_86f33bf();
	level waittill("hash_f0ca35d0");
	var_24bbf032 = function_b8494651();
	namespace_84970cc4::function_966ecb29(var_24bbf032, &namespace_8e9083ff::function_48463818);
	level waittill("hash_2bcc2145");
	level thread function_bef4fc91();
	level namespace_e0fbc9fc::function_f62d8d36();
	level thread namespace_e0fbc9fc::function_ef7b97bd();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_68404a06
	Checksum: 0xF0E56C
	Offset: 0xE30
	Size: 0x69
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_8e9083ff::function_4d032f25(0);
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_zurich_use_terminal_obj");
	}
	level notify("hash_1851c43a");
}

/*
	Name: function_50aaa108
	Namespace: namespace_68404a06
	Checksum: 0x7133B3BE
	Offset: 0xEA8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_50aaa108()
{
	level waittill("hash_5ed65de9");
	level namespace_71b8dba1::function_13b3b16a("plyr_what_were_they_messi_0", 1);
	level waittill("hash_2bcc2145");
	level namespace_71b8dba1::function_13b3b16a("plyr_i_swear_i_m_going_0", 2);
}

/*
	Name: function_22dc4b59
	Namespace: namespace_68404a06
	Checksum: 0x24263593
	Offset: 0xF18
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_22dc4b59()
{
	self endon("hash_128f8789");
	self.var_3a90f16b = 150;
	self namespace_82b91a51::function_958c7633();
	namespace_4dbf3ae3::function_1ab5ebec("trig_look_sacrifice_lab_int");
	self thread function_52cdaa83();
	wait(3);
	self namespace_82b91a51::function_4b741fdc();
	level namespace_ad23e503::function_1ab5ebec("flag_kane_sacrifice_door_closed");
	self function_dc8c8404();
}

/*
	Name: function_52cdaa83
	Namespace: namespace_68404a06
	Checksum: 0x73CBF83A
	Offset: 0xFD8
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_52cdaa83()
{
	self waittill("hash_128f8789");
	level.var_56c8a612++;
}

/*
	Name: function_bebe324d
	Namespace: namespace_68404a06
	Checksum: 0xF8165805
	Offset: 0xFF8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_bebe324d()
{
	self endon("hash_128f8789");
	level.var_286ef070++;
	self thread function_474a932e();
	self function_156339b6(function_b4cb3503("hallway_robot_goal", "targetname"), 1);
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
}

/*
	Name: function_474a932e
	Namespace: namespace_68404a06
	Checksum: 0x80657F16
	Offset: 0x1088
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_474a932e()
{
	self waittill("hash_128f8789");
	level.var_286ef070--;
}

/*
	Name: function_a50fba17
	Namespace: namespace_68404a06
	Checksum: 0x2B4C0757
	Offset: 0x10A8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_a50fba17()
{
	self endon("hash_128f8789");
	self thread function_d8b70cd();
	self thread function_f5b0e3d0();
	self.var_3a90f16b = 150;
	self namespace_82b91a51::function_958c7633();
	namespace_4dbf3ae3::function_1ab5ebec("trig_look_sacrifice_lab_int");
	wait(3);
	self namespace_82b91a51::function_4b741fdc();
	level waittill("hash_ae3bd4e0");
	self thread function_71b157ad();
}

/*
	Name: function_a19013c7
	Namespace: namespace_68404a06
	Checksum: 0xEF88F14E
	Offset: 0x1160
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a19013c7()
{
	self endon("hash_128f8789");
	self thread function_5412a5bb();
	self thread function_f5b0e3d0();
	self namespace_82b91a51::function_958c7633();
	namespace_4dbf3ae3::function_1ab5ebec("trig_look_sacrifice_lab_int");
	wait(3);
	self namespace_82b91a51::function_4b741fdc();
	level waittill("hash_350e4134");
	self thread function_71b157ad();
}

/*
	Name: function_5412a5bb
	Namespace: namespace_68404a06
	Checksum: 0xAC842742
	Offset: 0x1210
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_5412a5bb()
{
	self waittill("hash_128f8789");
	if(!isdefined(level.var_a8bbb2e4))
	{
		level.var_a8bbb2e4 = 0;
	}
	level.var_a8bbb2e4++;
	if(level.var_a8bbb2e4 == 4)
	{
		level notify("hash_ae3bd4e0");
	}
}

/*
	Name: function_d8b70cd
	Namespace: namespace_68404a06
	Checksum: 0xB7334064
	Offset: 0x1268
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_d8b70cd()
{
	self waittill("hash_128f8789");
	if(!isdefined(level.var_7f489288))
	{
		level.var_7f489288 = 0;
	}
	level.var_7f489288++;
	if(level.var_7f489288 == 4)
	{
		level notify("hash_350e4134");
	}
}

/*
	Name: function_f5b0e3d0
	Namespace: namespace_68404a06
	Checksum: 0xB1A65F99
	Offset: 0x12C0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f5b0e3d0()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("flag_kane_sacrifice_door_closed");
	self namespace_82b91a51::function_4b741fdc();
	self function_dc8c8404();
}

/*
	Name: function_51e389ee
	Namespace: namespace_68404a06
	Checksum: 0x49B53C96
	Offset: 0x1328
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_51e389ee(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_apprehend_obj");
		level namespace_ad23e503::function_8870cfa8(function_84970cc4("flag_hq_set_sacrifice_obj", "sacrifice_kane_activation_ready"));
		namespace_d0ef8521::function_50ccee8d("cp_level_zurich_apprehend_obj");
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_use_terminal_obj");
	}
	level waittill("hash_e8fb3b96");
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_use_terminal_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_use_terminal_awaiting_obj");
	level namespace_ad23e503::function_1ab5ebec("hq_decon_deactivated");
	namespace_d0ef8521::function_31cd1834("cp_level_zurich_use_terminal_awaiting_obj");
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_apprehend_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_apprehend_hack_obj");
}

/*
	Name: function_3769aa25
	Namespace: namespace_68404a06
	Checksum: 0x24F40BDF
	Offset: 0x1468
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_3769aa25(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		self namespace_76d95162::function_d9f49fba(0);
		self namespace_6f7b2095::function_1b497663("r");
		namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_in_decon");
		level namespace_ad23e503::function_1ab5ebec("flag_decon_door_open");
		namespace_4dbf3ae3::function_42e87952("trig_color_kane_lab_interior");
	}
	else
	{
		level thread namespace_8e9083ff::function_c049667c(0);
	}
	namespace_4dbf3ae3::function_1ab5ebec("trig_move_kane_into_sacrifice_igc");
	self namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_cc27597::function_43718187("cin_zur_06_02_decontamination_vign_schematic", level.var_3d556bcd);
	level namespace_ad23e503::function_74d6b22f("sacrifice_kane_activation_ready");
}

/*
	Name: function_a174da35
	Namespace: namespace_68404a06
	Checksum: 0x49EE3E01
	Offset: 0x15A0
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_a174da35(var_6bfe1586)
{
	namespace_cc27597::function_8f9f34e0("cin_zur_06_sacrifice_3rd_sh010", &function_71882809, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_06_sacrifice_3rd_sh010", &function_a08db270, "skip_started");
	namespace_cc27597::function_8f9f34e0("cin_zur_06_sacrifice_3rd_sh150", &function_ed9e0a0b, "done");
	namespace_cc27597::function_8f9f34e0("cin_zur_06_sacrifice_3rd_sh110", &function_dc0b1e53, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_06_sacrifice_3rd_sh110", &function_f57ae209, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_06_sacrifice_3rd_sh150", &function_aa30b938, "done");
	level namespace_cc27597::function_c35e6aab("cin_zur_06_sacrifice_3rd_sh010", var_6bfe1586);
	wait(0.5);
	level namespace_ad23e503::function_74d6b22f("flag_start_kane_sacrifice_igc");
	level thread function_6bd697de(var_6bfe1586);
	level thread function_c22d22c5();
	level namespace_cc27597::function_43718187("cin_zur_06_sacrifice_3rd_sh010", var_6bfe1586);
	namespace_80983c42::function_80983c42("cin_zur_06_sacrifice_3rd_lgt_off");
}

/*
	Name: function_c22d22c5
	Namespace: namespace_68404a06
	Checksum: 0x208ABF17
	Offset: 0x1788
	Size: 0x1A9
	Parameters: 0
	Flags: None
*/
function function_c22d22c5()
{
	level waittill("hash_d25d8e9");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_688ed188("postfx_hallucinations", 1);
		namespace_e216c11c::function_25294cfe("visionset", "cp_zurich_hallucination", var_5dc5e20a);
		var_5dc5e20a function_b8862210("vox_dying_infected_after", var_5dc5e20a);
	}
	level waittill("hash_e2567632");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_688ed188("postfx_hallucinations", 1);
		namespace_e216c11c::function_a5218027("visionset", "cp_zurich_hallucination", var_5dc5e20a);
	}
}

/*
	Name: function_6bd697de
	Namespace: namespace_68404a06
	Checksum: 0xCC7C1311
	Offset: 0x1940
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_6bd697de(var_6bfe1586)
{
	level waittill("hash_fab94d49");
	var_6bfe1586 namespace_175490fb::function_f8669cbf(1);
	level thread namespace_ce7c3ed5::function_8f7bd062("cp_zurich_fs_novasix", "fullscreen_additive");
	level waittill("hash_7fbd13b6");
	var_6bfe1586 namespace_175490fb::function_f8669cbf(1);
}

/*
	Name: function_a08db270
	Namespace: namespace_68404a06
	Checksum: 0xC115A1A6
	Offset: 0x19D0
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_a08db270(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a notify("hash_d2c577ed", "FullscreenMovie", "finished_movie_playback");
	}
}

/*
	Name: function_71882809
	Namespace: namespace_68404a06
	Checksum: 0x7B5089CE
	Offset: 0x1A78
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_71882809(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 1);
	var_c77d2837["kane"] namespace_82b91a51::function_c49ce021("kane");
}

/*
	Name: function_ed9e0a0b
	Namespace: namespace_68404a06
	Checksum: 0x1B61FB6E
	Offset: 0x1AD8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_ed9e0a0b(var_c77d2837)
{
	namespace_82b91a51::function_93831e79("sacrifice_teleport_spot");
	level namespace_ad23e503::function_74d6b22f("hq_decon_deactivated");
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 0);
	self thread namespace_8e9083ff::function_9f90bc0f(var_c77d2837, "hq_ambient_cleanup");
}

/*
	Name: function_dc0b1e53
	Namespace: namespace_68404a06
	Checksum: 0x2761BE46
	Offset: 0x1B68
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_dc0b1e53(var_c77d2837)
{
	level waittill("hash_e8fb3b96");
	var_c77d2837["kane"] namespace_71e9cb84::function_74d6b22f("skin_transition_melt", 1);
}

/*
	Name: function_f57ae209
	Namespace: namespace_68404a06
	Checksum: 0x68F74757
	Offset: 0x1BB8
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_f57ae209(var_c77d2837)
{
	level waittill("hash_2fdcd39c");
	var_db8e4d94 = function_99201f25("sacrifice_blast_door", "targetname");
	namespace_84970cc4::function_eaab05dc(var_db8e4d94, &function_8bdea13c, -118, 3);
	namespace_4dbf3ae3::function_1ab5ebec("hq_exit_zone_trig");
	namespace_84970cc4::function_eaab05dc(var_db8e4d94, &function_dc8c8404);
}

/*
	Name: function_aa30b938
	Namespace: namespace_68404a06
	Checksum: 0x60074A01
	Offset: 0x1C70
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_aa30b938(var_c77d2837)
{
	level notify("hash_2bcc2145");
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_f6f2b542
	Namespace: namespace_68404a06
	Checksum: 0xBBF72200
	Offset: 0x1CA8
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_f6f2b542()
{
	level endon("hash_29f9f0fd");
	wait(2);
	if(!isdefined(level.var_56c8a612))
	{
		level.var_56c8a612 = 0;
	}
	level thread namespace_8e9083ff::function_33ec653f("hq_hallway_ally_fake_spawn_manager", undefined, 0.25, &function_22dc4b59);
	if(!isdefined(level.var_286ef070))
	{
		level.var_286ef070 = 0;
	}
	while(level.var_56c8a612 < 4)
	{
		if(level.var_286ef070 > 3)
		{
			wait(1.5);
		}
		else
		{
			level thread namespace_8e9083ff::function_33ec653f("hq_hallway_enemy_fake_spawn_manager", undefined, 2, &function_bebe324d);
			wait(14);
		}
	}
}

/*
	Name: function_87a50dde
	Namespace: namespace_68404a06
	Checksum: 0xB9609431
	Offset: 0x1D90
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_87a50dde()
{
	level thread function_1d5e51b();
	level.var_7f489288 = 0;
	level.var_a8bbb2e4 = 0;
	level thread namespace_8e9083ff::function_33ec653f("hq_labs_enemy_fake_spawn_manager", undefined, 0.15, &function_a50fba17);
	level thread namespace_8e9083ff::function_33ec653f("hq_labs_ally_fake_spawn_manager", undefined, 0.15, &function_a19013c7);
}

/*
	Name: function_71b157ad
	Namespace: namespace_68404a06
	Checksum: 0x63E7C011
	Offset: 0x1E30
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_71b157ad()
{
	self endon("hash_128f8789");
	wait(function_72a94f05(1.5, 3.5));
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_e11ce512();
	self namespace_d84e54db::function_90d3ed43("lab_fight_end_node", "targetname", 1);
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
}

/*
	Name: function_1d5e51b
	Namespace: namespace_68404a06
	Checksum: 0x44927635
	Offset: 0x1EE0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_1d5e51b()
{
	level namespace_ad23e503::function_1ab5ebec("flag_start_kane_sacrifice_igc");
	namespace_84970cc4::function_eaab05dc(function_c20c2e8(), &function_dc8c8404);
}

/*
	Name: function_86f33bf
	Namespace: namespace_68404a06
	Checksum: 0xAE9B9068
	Offset: 0x1F40
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_86f33bf()
{
	var_da697227 = function_6ada35ba("sacrifice_activate_chamber_trig", "targetname");
	var_376507c0 = &"cp_level_zurich_hack_terminal";
	var_f6e313be = &"CP_MI_ZURICH_COALESCENCE_HACK";
	namespace_82b91a51::function_14518e76(var_da697227, var_376507c0, var_f6e313be, &function_34d834a6);
	var_da697227 function_175e6b8e(1);
}

/*
	Name: function_34d834a6
	Namespace: namespace_68404a06
	Checksum: 0xE63BE20
	Offset: 0x1FE8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_34d834a6(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	var_6bfe1586 namespace_175490fb::function_f8669cbf(1);
	namespace_82b91a51::function_76f13293();
	level notify("hash_71da81fb");
	level notify("hash_f0ca35d0");
	level thread namespace_67110270::function_455aaf94();
	level.var_3d556bcd thread function_a174da35(var_6bfe1586);
}

/*
	Name: function_3f3aadf9
	Namespace: namespace_68404a06
	Checksum: 0xDA08C28D
	Offset: 0x2090
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_3f3aadf9()
{
	var_adad709 = function_6ada35ba("sacrifice_server_door", "targetname");
	var_adad709 function_dc8c8404();
}

/*
	Name: function_d3eae9b7
	Namespace: namespace_68404a06
	Checksum: 0x7ADCFA1D
	Offset: 0x20E0
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_d3eae9b7()
{
	var_adad709 = function_6ada35ba("sacrifice_room_entrance_door", "targetname");
	var_d874dcf = function_6ada35ba("sacrifice_room_entrance_door_clip", "targetname");
	var_adad709.var_489b2980 = var_adad709.var_722885f3;
	var_adad709.var_491bc153 = var_adad709.var_722885f3 + VectorScale((0, 0, 1), 128);
	var_d6628508 = 3;
	var_d874dcf function_422037f5();
	var_adad709 function_a96a2721(var_adad709.var_491bc153, var_d6628508);
	wait(var_d6628508 / 2);
}

/*
	Name: function_a87436d9
	Namespace: namespace_68404a06
	Checksum: 0xC67C6721
	Offset: 0x21F0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_a87436d9()
{
	var_adad709 = function_6ada35ba("sacrifice_room_entrance_door", "targetname");
	var_d874dcf = function_6ada35ba("sacrifice_room_entrance_door_clip", "targetname");
	namespace_4dbf3ae3::function_1ab5ebec("trig_enter_kane_sacrifice");
	var_d874dcf function_4083a98e();
	wait(0.5);
	var_adad709 function_921a1574("evt_sacrifice_door_close");
	var_adad709 function_a96a2721(var_adad709.var_489b2980, 0.5);
	level namespace_71e9cb84::function_74d6b22f("hq_amb", 0);
	level namespace_ad23e503::function_74d6b22f("flag_kane_sacrifice_door_closed");
}

/*
	Name: function_2d235e66
	Namespace: namespace_68404a06
	Checksum: 0x8932CA8C
	Offset: 0x2320
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_2d235e66()
{
	var_adad709 = function_6ada35ba("sacrifice_room_entrance_door", "targetname");
	var_d874dcf = function_6ada35ba("sacrifice_room_entrance_door_clip", "targetname");
	var_adad709 function_dc8c8404();
	var_d874dcf function_dc8c8404();
}

/*
	Name: function_bef4fc91
	Namespace: namespace_68404a06
	Checksum: 0xC55E849B
	Offset: 0x23B8
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function function_bef4fc91()
{
	var_adad709 = function_6ada35ba("sacrifice_room_exit_door", "targetname");
	var_adad709.var_489b2980 = var_adad709.var_722885f3;
	var_adad709.var_491bc153 = var_adad709.var_722885f3 + VectorScale((0, 0, 1), 128);
	var_d6628508 = 3;
	var_adad709 function_a96a2721(var_adad709.var_491bc153, var_d6628508);
	var_adad709 function_921a1574("evt_zur_sac_sh150_door");
	wait(var_d6628508 / 2);
}

/*
	Name: function_105fe4b3
	Namespace: namespace_68404a06
	Checksum: 0x477A5D77
	Offset: 0x24A0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_105fe4b3()
{
	var_adad709 = function_6ada35ba("sacrifice_room_exit_door", "targetname");
	var_adad709 function_a96a2721(var_adad709.var_489b2980, 2.25);
}

/*
	Name: function_1dc45e88
	Namespace: namespace_68404a06
	Checksum: 0x290D4F07
	Offset: 0x2508
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1dc45e88()
{
	var_adad709 = function_6ada35ba("sacrifice_room_exit_door", "targetname");
	var_adad709 function_dc8c8404();
}

/*
	Name: function_a660f4ee
	Namespace: namespace_68404a06
	Checksum: 0x3A531DE0
	Offset: 0x2558
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_a660f4ee()
{
	level thread function_8c13120f();
	namespace_4dbf3ae3::function_39cd87a2("trig_enter_kane_sacrifice", "trig_enter_kane_sacrifice_tu1");
	level thread namespace_8e9083ff::function_11b424e5(1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_8e9083ff::function_7be427b1, 5);
	level waittill("hash_71da81fb");
	namespace_84970cc4::function_c9d224ae(level.var_2395e945, "stop_radiation_monitor");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_8e9083ff::function_61bb5738);
}

/*
	Name: function_8c13120f
	Namespace: namespace_68404a06
	Checksum: 0x1BDC8A9B
	Offset: 0x2640
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_8c13120f()
{
	var_6c495a34 = function_9b7fda5e("trigger_box", (-10213, 43921, -100), 0, 1200, 600, 300);
	var_6c495a34.var_6ab6f4fd = VectorScale((0, 1, 0), 29.5);
	var_6c495a34.var_170527fb = "trig_enter_kane_sacrifice_tu1";
	var_6c495a34.var_62978788 = "flag_hq_set_sacrifice_obj";
	var_6c495a34.var_f8fd6930 = "flag_kane_in_sacrifice_room";
	level thread namespace_4dbf3ae3::function_f1980fe1(var_6c495a34);
	level thread namespace_4dbf3ae3::function_438fb303(var_6c495a34, var_6c495a34.var_62978788);
}

