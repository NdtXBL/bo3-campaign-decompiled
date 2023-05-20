#using scripts\codescripts\struct;
#using scripts\cp\_collectibles;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_quadtank_util;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_accolades;
#using scripts\cp\cp_mi_sing_sgen_enter_silo;
#using scripts\cp\cp_mi_sing_sgen_revenge_igc;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\abilities\_ability_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_5da6b440;

/*
	Name: function_62616b71
	Namespace: namespace_5da6b440
	Checksum: 0xFAE7B067
	Offset: 0x1D10
	Size: 0x461
	Parameters: 2
	Flags: None
*/
function function_62616b71(var_b04bc952, var_74cd64bc)
{
	level namespace_cc27597::function_c35e6aab("cin_sgen_01_intro_3rd_pre200_overlook_sh010");
	level namespace_cc27597::function_c35e6aab("cin_sgen_01_intro_3rd_pre100_flyover");
	level namespace_71e9cb84::function_74d6b22f("w_flyover_buoys", 1);
	namespace_d7916d65::function_c32ba481(1);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 function_faf8f736(1);
	}
	namespace_82b91a51::function_46d3a558(&"CP_MI_SING_SGEN_INTRO_LINE_2_FULL", &"CP_MI_SING_SGEN_INTRO_LINE_2_SHORT", &"CP_MI_SING_SGEN_INTRO_LINE_3_FULL", &"CP_MI_SING_SGEN_INTRO_LINE_3_SHORT", &"CP_MI_SING_SGEN_INTRO_LINE_4_FULL", &"CP_MI_SING_SGEN_INTRO_LINE_4_SHORT", &"CP_MI_SING_SGEN_INTRO_LINE_5_FULL", &"CP_MI_SING_SGEN_INTRO_LINE_5_SHORT", "", "");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_01_intro_3rd_pre200_overlook_sh010", &function_12570551);
	level namespace_cc27597::function_8f9f34e0("cin_sgen_01_intro_3rd_pre200_overlook_sh020", &function_d97219ae, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_01_intro_3rd_pre200_overlook_sh060", &function_149dd934, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_01_intro_3rd_pre200_overlook_sh060", &function_bd2f8313, "done");
	function_6c1294b8("ai_awarenessenabled", 1);
	level thread function_87664862();
	level thread function_524fa1f4();
	level thread function_843ef2d4();
	namespace_80983c42::function_80983c42("sgen_flying_IGC");
	if(isdefined(level.var_fbcb62fc))
	{
		level thread [[level.var_fbcb62fc]]();
	}
	level thread function_32c69f8a();
	level thread namespace_d40478f6::function_6cad5ce0();
	level namespace_cc27597::function_43718187("cin_sgen_01_intro_3rd_pre100_flyover");
	level namespace_71e9cb84::function_74d6b22f("w_flyover_buoys", 0);
	if(isdefined(level.var_18387790))
	{
		level thread [[level.var_18387790]]();
	}
	level thread namespace_cc27597::function_43718187("cin_sgen_01_intro_3rd_pre200_overlook_sh010");
	level thread function_4574902a();
	level namespace_ad23e503::function_1ab5ebec("intro_igc_done");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	namespace_82b91a51::function_93831e79("intro");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 function_faf8f736(0);
	}
}

/*
	Name: function_32c69f8a
	Namespace: namespace_5da6b440
	Checksum: 0x3D65B44C
	Offset: 0x2180
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_32c69f8a()
{
	level waittill("hash_f39fff1a");
	level thread namespace_82b91a51::function_7e61de2b(2);
	level waittill("hash_207b5ccf");
	level thread namespace_82b91a51::function_593c2af4(3);
}

/*
	Name: function_12570551
	Namespace: namespace_5da6b440
	Checksum: 0xC23BF262
	Offset: 0x21E0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_12570551(var_c77d2837)
{
	var_c77d2837["m_cinematic_hendricks"] namespace_71e9cb84::function_74d6b22f("dni_eye", 1);
	level waittill("hash_f39f25df");
	level namespace_71b8dba1::function_a463d127("kane_much_of_the_structur_0");
}

/*
	Name: function_149dd934
	Namespace: namespace_5da6b440
	Checksum: 0x6C6BD990
	Offset: 0x2250
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_149dd934(var_c77d2837)
{
	level.var_2fd26037 = var_c77d2837["hendricks_backpack"];
	namespace_82b91a51::function_66773296("hendricks_backpack");
	namespace_4dbf3ae3::function_42e87952("enter_sgen_hendricks", "targetname", undefined, 1);
}

/*
	Name: function_d97219ae
	Namespace: namespace_5da6b440
	Checksum: 0x208AE4E6
	Offset: 0x22C0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_d97219ae(var_c77d2837)
{
	var_5fd4d3b9 = function_99201f25("sgen_intro_igc_card", "targetname");
	foreach(var_375c9b15 in var_5fd4d3b9)
	{
		var_375c9b15 function_dc8c8404();
	}
}

/*
	Name: function_bd2f8313
	Namespace: namespace_5da6b440
	Checksum: 0x4615C50
	Offset: 0x2388
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_bd2f8313(var_c77d2837)
{
	namespace_1d795d47::function_be8adfb8("intro");
}

/*
	Name: function_19a68bdb
	Namespace: namespace_5da6b440
	Checksum: 0xFB77AAAB
	Offset: 0x23B8
	Size: 0x53
	Parameters: 4
	Flags: None
*/
function function_19a68bdb(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_01_intro_3rd_pre100_flyover");
	namespace_19d629e::function_a8e314e9();
}

/*
	Name: function_87664862
	Namespace: namespace_5da6b440
	Checksum: 0x19F6153C
	Offset: 0x2418
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_87664862()
{
	namespace_ad23e503::function_1ab5ebec("exterior_gone_hot");
	function_6c1294b8("ai_awarenessenabled", 0);
}

/*
	Name: function_d43e5685
	Namespace: namespace_5da6b440
	Checksum: 0xA9A4DE38
	Offset: 0x2458
	Size: 0x823
	Parameters: 2
	Flags: None
*/
function function_d43e5685(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		function_6c1294b8("ai_awarenessenabled", 1);
		level thread function_843ef2d4();
		level thread function_524fa1f4();
		level thread function_d97219ae();
		namespace_80983c42::function_80983c42("sgen_flying_IGC");
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		level thread function_4574902a();
		namespace_d7916d65::function_a2995f22();
	}
	namespace_82b91a51::function_ef3f75eb("sw");
	level thread namespace_d40478f6::function_973b77f9();
	namespace_99202726::function_6a1ab5fc();
	namespace_99202726::function_b2309b8();
	namespace_99202726::function_6a2780bc();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_210baecb();
	}
	namespace_dabbe128::function_356a4ee1(&function_210baecb);
	var_f38271e7 = function_6ada35ba("exterior_fountain_water", "targetname");
	level thread namespace_4dbf3ae3::function_555e49a2(var_f38271e7);
	namespace_96fa87af::function_994832bd("intro_truck", &function_ceeb020);
	namespace_4dbf3ae3::function_42e87952("t_intro_truck");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_enter_sgen_no_pointer");
	var_378dd13e = function_99201f25("outside_color_triggers", "script_noteworthy");
	foreach(var_f7ebb04b in var_378dd13e)
	{
		var_f7ebb04b.var_8ccee908 = 1;
	}
	var_2fab4a6b = function_99201f25("trig_hendricks_stealth", "script_noteworthy");
	foreach(var_f7ebb04b in var_2fab4a6b)
	{
		var_f7ebb04b thread function_daa3910f();
	}
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037.var_c48463a8 = 0;
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "fast");
	level.var_2fd26037.var_7dfaf62 = 64;
	var_2ac88b1d = function_c4d5ec1f("ar_standard_hero", "suppressed", "acog", "fastreload", "extclip", "damage");
	level.var_2fd26037 namespace_d84e54db::function_7901ac63(var_2ac88b1d, "right");
	level thread function_a56f1c2e();
	var_e4f2f922 = function_6ada35ba("trig_lobby_entrance", "targetname");
	var_e4f2f922 function_175e6b8e(0);
	level thread function_6dc55b15();
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 thread function_7d0e1b80();
	}
	level namespace_ad23e503::function_74d6b22f("start_technical");
	level namespace_ad23e503::function_1ab5ebec("start_enter_sgen");
	namespace_9f824288::function_5d2cdd99();
	level thread function_32832330();
	level thread function_234a4910();
	level.var_2fd26037 thread function_34be1751();
	level.var_48b27857 thread function_9200d313();
	level.var_48b27857 waittill("hash_128f8789");
	level.var_48b27857 function_14c24d9d();
	level namespace_ad23e503::function_74d6b22f("intro_quadtank_dead");
	var_addf374e = function_b8494651("axis");
	var_ce29d857 = function_6ada35ba("exterior_retreat_killer", "targetname");
	foreach(var_f4b1d057 in var_addf374e)
	{
		var_f4b1d057 function_169cc712(var_ce29d857, 1);
	}
	level namespace_ad23e503::function_74d6b22f("qtank_fight_completed");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_clear_entrance");
	namespace_99202726::function_45afef12();
	namespace_99202726::function_59fa6593();
	namespace_99202726::function_6d2fd9d2();
}

/*
	Name: function_da046478
	Namespace: namespace_5da6b440
	Checksum: 0x5C59DA95
	Offset: 0x2C88
	Size: 0x175
	Parameters: 0
	Flags: None
*/
function function_da046478()
{
	var_b640b7ec = function_6ada35ba("exterior_quad_tank_retreat", "targetname");
	var_24bbf032 = namespace_2f06d687::function_289e6fd1("exterior_guys");
	var_24bbf032 = function_f926d8e8(var_24bbf032, level.var_48b27857.var_722885f3, 0);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_24bbf032.size; var_c957f6b6++)
	{
		if(function_e70ab977(var_24bbf032[var_c957f6b6]) && var_24bbf032[var_c957f6b6].var_a33b36db !== "sniper")
		{
			var_24bbf032[var_c957f6b6] notify("hash_ed065856");
			var_24bbf032[var_c957f6b6] function_169cc712(var_b640b7ec, 1);
			var_24bbf032[var_c957f6b6] thread namespace_cba4cc55::function_c8849158(800);
			wait(function_72a94f05(2, 5));
		}
	}
}

/*
	Name: function_331e454
	Namespace: namespace_5da6b440
	Checksum: 0x2572BD6
	Offset: 0x2E08
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_331e454()
{
	var_5e764d1a = function_99201f25("sniper", "script_parameters");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5e764d1a.size; var_c957f6b6++)
	{
		if(function_5b49d38c(var_5e764d1a[var_c957f6b6]))
		{
			level.var_2fd26037 namespace_d84e54db::function_d104c596("kill_within_time", var_5e764d1a[var_c957f6b6], undefined, 10);
		}
	}
}

/*
	Name: function_a56f1c2e
	Namespace: namespace_5da6b440
	Checksum: 0x1BAD4A04
	Offset: 0x2EB8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_a56f1c2e()
{
	wait(10);
	var_b9b7fda9 = function_6ada35ba("intro_no_sight", "targetname");
	var_b9b7fda9 function_dc8c8404();
}

/*
	Name: function_ceeb020
	Namespace: namespace_5da6b440
	Checksum: 0x885E2FED
	Offset: 0x2F10
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_ceeb020()
{
	self endon("hash_128f8789");
	self namespace_96fa87af::function_3762fc40();
	self function_917f75ac(0);
	self.var_ff1f6868 = "gen_lab";
	self waittill("hash_6cf6ac7e");
	level namespace_ad23e503::function_74d6b22f("intro_truck_arrived");
	namespace_84970cc4::function_966ecb29(self.var_d925663e, &function_2a8b80c4);
	level namespace_ad23e503::function_1ab5ebec("exterior_gone_hot");
	self namespace_96fa87af::function_e8860e34("all");
}

/*
	Name: function_2a8b80c4
	Namespace: namespace_5da6b440
	Checksum: 0xC83E3664
	Offset: 0x2FF8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_2a8b80c4()
{
	self endon("hash_128f8789");
	level endon("hash_766878c3");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_82b91a51::function_5b7e3888("damage", "death", "bulletwhizby");
	level namespace_ad23e503::function_74d6b22f("exterior_gone_hot");
}

/*
	Name: function_daa3910f
	Namespace: namespace_5da6b440
	Checksum: 0xDC7B82B5
	Offset: 0x3088
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_daa3910f()
{
	self endon("hash_128f8789");
	level endon("hash_6db95ed8");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_6bfe1586);
		if(level.var_2395e945.size == 1)
		{
			namespace_4dbf3ae3::function_42e87952(self.var_db7bb468, "targetname", var_6bfe1586);
			wait(1);
		}
	}
}

/*
	Name: function_91e8545f
	Namespace: namespace_5da6b440
	Checksum: 0xD25848BA
	Offset: 0x3110
	Size: 0x123
	Parameters: 4
	Flags: None
*/
function function_91e8545f(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh020");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh020_female");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh030");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh030_female");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh040");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh050");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_01_intro_3rd_pre200_overlook_sh060");
	namespace_dabbe128::function_a0ac4434(&function_210baecb);
}

/*
	Name: function_234a4910
	Namespace: namespace_5da6b440
	Checksum: 0xFB677F38
	Offset: 0x3240
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_234a4910()
{
	var_e561bbaf = 0;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_1bcd223d = var_5dc5e20a function_48c6a3a2();
		if(function_b318b40(var_1bcd223d, "suppressed"))
		{
			var_e561bbaf = 1;
		}
	}
	if(!namespace_ad23e503::function_7922262b("exterior_gone_hot") && var_e561bbaf)
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_54i_crawling_all_ove_0");
		wait(0.8);
	}
	if(!namespace_ad23e503::function_7922262b("exterior_gone_hot"))
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_waiting_on_your_shot_0", 1);
	}
}

/*
	Name: function_6dc55b15
	Namespace: namespace_5da6b440
	Checksum: 0x3F1AC2E2
	Offset: 0x33A8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_6dc55b15()
{
	level thread namespace_d0ef8521::function_45d1556("trig_obj_1");
	namespace_ad23e503::function_1ab5ebec("exterior_gone_hot");
	level thread namespace_d0ef8521::function_45d1556("obj_intro_breadcrumb_3");
}

/*
	Name: function_2c6d8ae0
	Namespace: namespace_5da6b440
	Checksum: 0x23F93C53
	Offset: 0x3410
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_2c6d8ae0(var_aa686173, var_cbb15570)
{
	self endon(var_aa686173);
	level namespace_4dbf3ae3::function_1ab5ebec(var_cbb15570);
}

/*
	Name: function_7d0e1b80
	Namespace: namespace_5da6b440
	Checksum: 0x1AEFCD3D
	Offset: 0x3450
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_7d0e1b80()
{
	self endon("hash_128f8789");
	self thread function_cf842dc5();
	self thread function_cb09a77d();
	level namespace_ad23e503::function_1ab5ebec("exterior_gone_hot");
	level notify("hash_eba9585e");
}

/*
	Name: function_cf842dc5
	Namespace: namespace_5da6b440
	Checksum: 0xF962020
	Offset: 0x34C8
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_cf842dc5()
{
	self endon("hash_128f8789");
	level endon("hash_766878c3");
	level endon("hash_eba9585e");
	var_1bcd223d = self function_48c6a3a2();
	while(1)
	{
		self waittill("hash_aa1618b0");
		var_1bcd223d = self function_48c6a3a2();
		if(!function_b318b40(var_1bcd223d, "suppressed"))
		{
			level namespace_ad23e503::function_74d6b22f("exterior_gone_hot");
		}
	}
}

/*
	Name: function_cb09a77d
	Namespace: namespace_5da6b440
	Checksum: 0xF3BBCFB
	Offset: 0x3588
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_cb09a77d()
{
	self endon("hash_128f8789");
	level endon("hash_766878c3");
	level endon("hash_eba9585e");
	var_83181ea9[0] = "gadget_active_camo";
	var_83181ea9[1] = "gadget_es_strike";
	while(1)
	{
		self waittill("hash_81c0052c", var_db4f7ce4);
		var_cd5338bf = 0;
		foreach(var_86ce8156 in var_83181ea9)
		{
			if(function_5dbf7eca(var_db4f7ce4.var_4be20d44, var_86ce8156))
			{
				var_cd5338bf = 1;
			}
		}
		if(!var_cd5338bf)
		{
			level namespace_ad23e503::function_74d6b22f("exterior_gone_hot");
		}
	}
}

/*
	Name: function_30b0b2ca
	Namespace: namespace_5da6b440
	Checksum: 0x156D87A
	Offset: 0x36D8
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_30b0b2ca()
{
	level endon("hash_766878c3");
	level.var_cb80bdd = 0;
	while(1)
	{
		if(level.var_cb80bdd >= 8)
		{
			break;
		}
		wait(1);
	}
	wait(0.5);
	var_4e5ceeda = function_bd90138e();
	var_a76fb911 = function_e7bdc1a1(level.var_2395e945[0].var_722885f3, var_4e5ceeda);
	var_a1eda872 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_a76fb911.var_722885f3, var_a76fb911.var_6ab6f4fd);
	var_24bbf032 = function_b8494651("axis");
	var_cb8a52f1 = function_e7bdc1a1(var_a76fb911.var_722885f3, var_24bbf032);
	if(function_5b49d38c(var_cb8a52f1))
	{
		var_cb8a52f1 thread function_ef817b9c(var_a1eda872);
	}
}

/*
	Name: function_ef817b9c
	Namespace: namespace_5da6b440
	Checksum: 0x3C207432
	Offset: 0x3858
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_ef817b9c(var_9751fdd2)
{
	self endon("hash_128f8789");
	self notify("hash_eba9585e");
	self.var_c5fecd24 = 0;
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self namespace_d84e54db::function_19e98020(var_9751fdd2.var_722885f3, 64, 1);
	level namespace_ad23e503::function_74d6b22f("exterior_gone_hot");
}

/*
	Name: function_f4386791
	Namespace: namespace_5da6b440
	Checksum: 0x7A21314B
	Offset: 0x38F8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f4386791()
{
	level namespace_ad23e503::function_1ab5ebec("enable_battle_volumes");
	var_e9e4b7d = function_99201f25("vol_enemy_reaction", "script_noteworthy");
	namespace_84970cc4::function_eaab05dc(var_e9e4b7d, &function_dc8c8404);
}

/*
	Name: function_4574902a
	Namespace: namespace_5da6b440
	Checksum: 0x256836DF
	Offset: 0x3978
	Size: 0x2C3
	Parameters: 0
	Flags: None
*/
function function_4574902a()
{
	level thread function_f4386791();
	level thread function_30b0b2ca();
	namespace_2f06d687::function_2b37a3c9("exterior_guys", "script_aigroup", &function_82755bcd);
	namespace_2f06d687::function_2b37a3c9("quadtank_reinforcement_guy", "targetname", &function_79e56538);
	namespace_2f06d687::function_22356ba7("enemy_enter_sgen");
	namespace_2f06d687::function_22356ba7("exterior_patroller");
	level thread namespace_cc27597::function_c35e6aab("cin_gen_breakout_vign_orders");
	level namespace_76d95162::function_d9f49fba(0);
	level namespace_ad23e503::function_1ab5ebec("exterior_gone_hot");
	level thread namespace_cc27597::function_43718187("cin_gen_breakout_vign_orders");
	level namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_74d6b22f("start_enter_sgen");
	var_21b3ce57 = function_99201f25("color_enter_sgen", "script_noteworthy");
	namespace_84970cc4::function_eaab05dc(var_21b3ce57, &function_dc8c8404);
	namespace_2f06d687::function_c0434ff5("exterior_guys", 8);
	level namespace_ad23e503::function_74d6b22f("start_hendricks_move_up_battle_1");
	namespace_2f06d687::function_c0434ff5("exterior_guys", 12);
	level namespace_ad23e503::function_74d6b22f("start_hendricks_move_up_battle_2");
	namespace_2f06d687::function_c0434ff5("exterior_guys", 18);
	level namespace_ad23e503::function_74d6b22f("spawn_quad_tank");
	namespace_2f06d687::function_c0434ff5("exterior_guys", 25);
	level namespace_ad23e503::function_74d6b22f("fallback_to_qt");
}

/*
	Name: function_79e56538
	Namespace: namespace_5da6b440
	Checksum: 0xAEE88FE
	Offset: 0x3C48
	Size: 0x351
	Parameters: 0
	Flags: None
*/
function function_79e56538()
{
	self endon("hash_128f8789");
	self endon("hash_ed065856");
	var_45c136ef = function_6ada35ba("vol_enemy_end", "targetname");
	self function_169cc712(var_45c136ef, 1);
	level waittill("hash_9eb56acf");
	wait(function_72a94f05(1, 3));
	self function_fb5720f7();
	var_9b683040 = function_fe0cfd2e("nd_attack_quadtank", "targetname");
	foreach(var_71f6480e in var_9b683040)
	{
		self thread namespace_d84e54db::function_19e98020(var_71f6480e, 32, 1);
	}
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		self function_76aa5b30(var_6bfe1586, 1);
	}
	self function_76aa5b30(level.var_2fd26037, 1);
	self thread function_e9ad0b91();
	wait(function_72a94f05(8, 11));
	self function_76aa5b30(level.var_2fd26037, 0);
	var_45c136ef = function_6ada35ba("vol_enemy_end", "targetname");
	self function_169cc712(var_45c136ef, 1);
	wait(function_72a94f05(3, 5));
	self notify("hash_1ad878bf");
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		self function_76aa5b30(var_6bfe1586, 0);
	}
}

/*
	Name: function_e9ad0b91
	Namespace: namespace_5da6b440
	Checksum: 0xAB0E248B
	Offset: 0x3FA8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_e9ad0b91()
{
	self endon("hash_1ad878bf");
	self waittill("hash_f9348fda");
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		self function_76aa5b30(var_6bfe1586, 0);
	}
	self function_76aa5b30(level.var_2fd26037, 0);
}

/*
	Name: function_82755bcd
	Namespace: namespace_5da6b440
	Checksum: 0x677D9072
	Offset: 0x4080
	Size: 0x5A3
	Parameters: 0
	Flags: None
*/
function function_82755bcd()
{
	self endon("hash_128f8789");
	self endon("hash_dd3cd5b9");
	self thread function_efb86353();
	self thread function_e183f381();
	self.var_69dd5d62 = 1;
	self thread function_6f49bfa5();
	level namespace_ad23e503::function_1ab5ebec("start_technical");
	if(isdefined(self.var_db7bb468))
	{
		var_9d1abae9 = function_ffbd411();
		self thread function_e28048de(var_9d1abae9);
	}
	if(isdefined(self.var_caae374e))
	{
		namespace_cc27597::function_8f9f34e0("cin_sgen_02_05_exterior_vign_using_ipad_guy01", &function_b75564dc, "play");
		if(isdefined(self.var_8202763a))
		{
			self thread namespace_cc27597::function_c35e6aab(self.var_caae374e, self);
		}
		else
		{
			self thread namespace_cc27597::function_43718187(self.var_caae374e, self);
		}
	}
	level namespace_ad23e503::function_1ab5ebec("exterior_gone_hot");
	function_b81f9767();
	if(self.var_9ba4fd54 === 1)
	{
		level namespace_ad23e503::function_1ab5ebec("start_hendricks_move_up_battle_2");
	}
	if(isdefined(self.var_82d84400))
	{
		var_1c5878cd = function_b4cb3503(self.var_82d84400, "targetname");
		self namespace_d84e54db::function_19e98020(var_1c5878cd.var_722885f3, 32, 1);
		level waittill("hash_f567dc4e");
	}
	var_e9e4b7d = function_99201f25("vol_enemy_reaction", "script_noteworthy");
	foreach(var_9c169a5c in var_e9e4b7d)
	{
		if(self function_32fa5072(var_9c169a5c))
		{
			var_e35a0431 = function_6ada35ba(var_9c169a5c.var_170527fb, "targetname");
			self function_169cc712(var_e35a0431, 1);
			break;
		}
		var_c3354820 = function_99201f25("vol_hendricks_stealth", "targetname");
		foreach(var_9c169a5c in var_c3354820)
		{
			if(self function_32fa5072(var_9c169a5c))
			{
				self function_169cc712(var_9c169a5c, 1);
			}
		}
	}
	wait(function_72a94f05(10, 12));
	self function_fb5720f7();
	level namespace_ad23e503::function_74d6b22f("enable_battle_volumes");
	var_60a7dd2a = function_6ada35ba("vol_exterior_area", "targetname");
	self function_169cc712(var_60a7dd2a, 1);
	level namespace_ad23e503::function_1ab5ebec("start_hendricks_move_up_battle_1");
	self function_fb5720f7();
	var_6ef3070f = function_6ada35ba("vol_enemy_middle", "targetname");
	self function_169cc712(var_6ef3070f, 1);
	level namespace_ad23e503::function_1ab5ebec("start_hendricks_move_up_battle_2");
	self function_fb5720f7();
	var_45c136ef = function_6ada35ba("vol_enemy_end", "targetname");
	self function_169cc712(var_45c136ef, 1);
}

/*
	Name: function_e183f381
	Namespace: namespace_5da6b440
	Checksum: 0xA4CBDEB2
	Offset: 0x4630
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_e183f381()
{
	self endon("hash_128f8789");
	level endon("hash_766878c3");
	while(1)
	{
		wait(function_dc99997a(5, 15));
		self function_921a1574("amb_enemy_fake_radio");
	}
}

/*
	Name: function_b75564dc
	Namespace: namespace_5da6b440
	Checksum: 0x5E4F6DB7
	Offset: 0x4698
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_b75564dc(var_cd9c6d30)
{
	var_9ab0909 = var_cd9c6d30["tablet"];
	var_78080f8f = var_cd9c6d30["guy"];
	var_9ab0909 endon("hash_128f8789");
	var_9ab0909 thread function_9c58c518();
	level namespace_82b91a51::function_39b48811(level, "exterior_gone_hot", var_78080f8f, "damage", var_78080f8f, "death");
	var_78080f8f namespace_cc27597::function_fcf56ab5();
	wait(0.05);
	var_9ab0909 function_822f0cc5(var_9ab0909.var_722885f3, (0, 0, -1));
}

/*
	Name: function_9c58c518
	Namespace: namespace_5da6b440
	Checksum: 0x35F357FF
	Offset: 0x4788
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_9c58c518()
{
	level endon("hash_766878c3");
	self function_8d63f8d0(1);
	self waittill("hash_f9348fda");
	level namespace_ad23e503::function_74d6b22f("exterior_gone_hot");
}

/*
	Name: function_6f49bfa5
	Namespace: namespace_5da6b440
	Checksum: 0x784788E8
	Offset: 0x47E0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_6f49bfa5()
{
	self endon("hash_128f8789");
	level endon("hash_766878c3");
	self thread function_6808f370();
	self.var_7dfaf62 = 32;
	self.var_a09dbf8c = self.var_2a373326;
	self.var_2a373326 = 562500;
	self.var_a1f56f1f = 0.8;
	if(!function_27c72c1b())
	{
		self namespace_d84e54db::function_7bf590dd(1);
	}
	self namespace_82b91a51::function_5b7e3888("damage", "bulletwhizby");
	self thread function_b81f9767(1);
	wait(1);
	if(function_5b49d38c(self))
	{
		level namespace_ad23e503::function_74d6b22f("exterior_gone_hot");
	}
}

/*
	Name: function_b81f9767
	Namespace: namespace_5da6b440
	Checksum: 0x127D662B
	Offset: 0x4900
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_b81f9767(var_eeda4487)
{
	if(!isdefined(var_eeda4487))
	{
		var_eeda4487 = 0;
	}
	self endon("hash_128f8789");
	self.var_7dfaf62 = 2048;
	self.var_2a373326 = self.var_a09dbf8c;
	self.var_a1f56f1f = 0;
	if(!function_27c72c1b())
	{
		self namespace_d84e54db::function_7bf590dd(0);
	}
	self.var_c5fecd24 = 1;
	if(isdefined(self.var_caae374e))
	{
		wait(function_72a94f05(0.3, 1.5));
		if(function_5dbf7eca(self.var_caae374e, "rummage"))
		{
			self thread namespace_cc27597::function_43718187(self.var_caae374e + "_react", self);
		}
		else
		{
			namespace_cba4cc55::function_9cb9697d(self.var_caae374e);
		}
	}
}

/*
	Name: function_ffbd411
	Namespace: namespace_5da6b440
	Checksum: 0xAD88D046
	Offset: 0x4A28
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_ffbd411()
{
	switch(self.var_db7bb468)
	{
		case "nd_cargo_truck_driver":
		{
			self.var_87be2839 = "start_vehicle_patrols";
			self namespace_96fa87af::function_230eadd7(level.var_a2059f5c, "driver", 1);
			break;
		}
		case "nd_cargo_truck_passenger":
		{
			self.var_87be2839 = "start_vehicle_patrols";
			self namespace_96fa87af::function_230eadd7(level.var_a2059f5c, "passenger1", 1);
			break;
		}
		case "nd_left_walkway":
		{
			self.var_82d84400 = "nd_left_walkway_attack";
			break;
		}
		case "nd_right_walkway":
		{
			self.var_82d84400 = "nd_right_walkway_attack";
			break;
		}
		case "nd_big_rig":
		{
			self.var_82d84400 = "nd_bigrig_attack";
			break;
		}
		case "nd_patrol_right_truck_driver":
		{
			self.var_87be2839 = "start_vehicle_patrols";
			self namespace_96fa87af::function_230eadd7(level.var_8bf4b572, "driver", 1);
			break;
		}
		case "nd_right_driveway_path":
		{
			self.var_506b336f = 1.2;
			self thread function_5d6e495e();
			break;
		}
		case "nd_right_intro_shack":
		{
			self thread function_5d6e495e();
			break;
		}
		case "nd_left_driveway_path":
		{
			self.var_506b336f = 3;
			self thread function_5d6e495e();
			break;
		}
		case "nd_left_building_enemy_path":
		{
			self.var_87be2839 = "trig_left_exterior_building";
			self.var_9ba4fd54 = 1;
			self thread function_5d6e495e();
			break;
		}
	}
	var_ccf4d32c = function_b4cb3503(self.var_db7bb468, "targetname");
	return var_ccf4d32c;
}

/*
	Name: function_efb86353
	Namespace: namespace_5da6b440
	Checksum: 0x4323C261
	Offset: 0x4C60
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_efb86353()
{
	level endon("hash_766878c3");
	self waittill("hash_128f8789");
	level.var_cb80bdd++;
	if(self.var_db7bb468 === "left_building_enemy")
	{
		if(level.var_2395e945.size == 1)
		{
			namespace_4dbf3ae3::function_42e87952("trig_color_left_exterior_building_upstairs");
		}
	}
}

/*
	Name: function_5d6e495e
	Namespace: namespace_5da6b440
	Checksum: 0x2DF52ACA
	Offset: 0x4CD0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_5d6e495e()
{
	level endon("hash_766878c3");
	self endon("hash_3a662ede");
	self endon("hash_2f93f839");
	self.var_f9b223f5 = 1;
	self waittill("hash_128f8789", var_677b3e78);
	if(function_65f192a6(var_677b3e78) & !level namespace_ad23e503::function_7922262b("exterior_gone_hot"))
	{
		var_469bb0aa = function_e7bdc1a1(self.var_722885f3, function_b8494651("axis"), 512);
		if(function_5b49d38c(var_469bb0aa))
		{
			if(var_469bb0aa function_75754e3a(var_677b3e78) || var_469bb0aa function_75754e3a(self))
			{
				var_469bb0aa thread function_4e452acd(self.var_722885f3);
				var_469bb0aa thread function_94a23f13(var_677b3e78);
			}
		}
	}
}

/*
	Name: function_4e452acd
	Namespace: namespace_5da6b440
	Checksum: 0x5010CD8F
	Offset: 0x4E28
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_4e452acd(var_2fa53f37)
{
	self endon("hash_128f8789");
	wait(function_72a94f05(0.4, 0.8));
	if(!level.var_2fd26037.var_c48463a8)
	{
		if(self.var_f9b223f5 === 1)
		{
			if(level.var_2395e945.size == 1 && !namespace_82b91a51::function_22ff7ff0(level.var_2fd26037.var_722885f3, level.var_2395e945[0].var_6ab6f4fd, level.var_2395e945[0].var_722885f3, function_ef0a72b2(70)))
			{
				level.var_2fd26037.var_c48463a8 = 1;
				var_97b89aad = function_f679a325(level.var_2fd26037 function_501eb072() - self function_501eb072());
				var_e27e8c7e = self function_501eb072() + VectorScale(var_97b89aad, 300);
				var_ad1ec231 = self function_501eb072();
				function_87f3c622(level.var_2fd26037.var_dfcc01fd, var_e27e8c7e, var_ad1ec231, level.var_2fd26037);
				self function_2992720d(var_e27e8c7e, level.var_2fd26037);
			}
		}
	}
}

/*
	Name: function_94a23f13
	Namespace: namespace_5da6b440
	Checksum: 0x6562D4A0
	Offset: 0x5000
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_94a23f13(var_5dc5e20a)
{
	self endon("hash_128f8789");
	level endon("hash_766878c3");
	self notify("hash_1592960");
	if(isdefined(var_5dc5e20a) && function_cb3d1c9b(self.var_722885f3, var_5dc5e20a.var_722885f3) > 40000)
	{
		if(!level namespace_ad23e503::function_7922262b("enemy_alerting_area"))
		{
			if(!function_27c72c1b())
			{
				level namespace_ad23e503::function_74d6b22f("enemy_alerting_area");
				level namespace_82b91a51::function_67520c6a(3, undefined, &namespace_ad23e503::function_9d134160, "enemy_alerting_area");
				self namespace_cc27597::function_43718187("cin_sgen_02_01_alerting_scene", self);
			}
		}
	}
	else
	{
		self thread function_b81f9767(1);
		wait(1);
	}
	level namespace_ad23e503::function_74d6b22f("exterior_gone_hot");
}

/*
	Name: function_e28048de
	Namespace: namespace_5da6b440
	Checksum: 0x326D4553
	Offset: 0x5168
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_e28048de(var_ccf4d32c)
{
	self endon("hash_128f8789");
	level endon("hash_766878c3");
	if(isdefined(self.var_87be2839) && !level namespace_ad23e503::function_7922262b("exterior_gone_hot"))
	{
		level namespace_ad23e503::function_1ab5ebec(self.var_87be2839);
	}
	if(isdefined(self.var_506b336f))
	{
		wait(self.var_506b336f);
	}
	self thread namespace_d84e54db::function_99e190ff(var_ccf4d32c);
}

/*
	Name: function_843ef2d4
	Namespace: namespace_5da6b440
	Checksum: 0x612FE93C
	Offset: 0x5210
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_843ef2d4()
{
	level.var_b27f706d = function_c4d5ec1f("quadtank_main_turret_player");
	level.var_51d112fe = function_c4d5ec1f("quadtank_main_turret_rocketpods_straight");
	level.var_9e92e4b8 = function_c4d5ec1f("quadtank_main_turret_rocketpods_javelin");
	level.var_8bf4b572 = namespace_96fa87af::function_7387a40a("technical_fountain_right");
	level.var_8bf4b572 namespace_96fa87af::function_3762fc40();
	level.var_8bf4b572 function_917f75ac(0);
	level.var_8bf4b572 thread function_9e3af01c();
	var_1c0f637 = namespace_96fa87af::function_7387a40a("technical_fountain_left");
	var_1c0f637 namespace_96fa87af::function_3762fc40();
	var_1c0f637 function_917f75ac(0);
	var_1c0f637 thread function_d01267bd(level.var_2395e945.size, 2.5, "start_hendricks_move_up_battle_2");
	var_1c0f637 thread function_9e3af01c();
	level.var_a2059f5c = namespace_96fa87af::function_7387a40a("intro_cargo_truck");
	level.var_a2059f5c namespace_96fa87af::function_3762fc40();
	level.var_a2059f5c thread function_9e3af01c();
	level namespace_ad23e503::function_1ab5ebec("exterior_gone_hot");
	level.var_8bf4b572 namespace_96fa87af::function_e8860e34("all");
	level.var_a2059f5c namespace_96fa87af::function_e8860e34("all");
}

/*
	Name: function_55f744bd
	Namespace: namespace_5da6b440
	Checksum: 0xE3FEFEA2
	Offset: 0x5430
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_55f744bd(var_cc525a1a)
{
	self function_8d63f8d0(0);
	self function_921a1574("evt_sgen_technical_drive");
	self thread namespace_96fa87af::function_edb3a94e(var_cc525a1a);
	self waittill("hash_6cf6ac7e");
	self function_14c24d9d();
	self function_8d63f8d0(1);
}

/*
	Name: function_524fa1f4
	Namespace: namespace_5da6b440
	Checksum: 0x6C0F7475
	Offset: 0x54D0
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_524fa1f4()
{
	level.var_48b27857 = namespace_2f06d687::function_7387a40a("entrance_qtank");
	level.var_48b27857 namespace_d84e54db::function_c9e45d52(1);
	level.var_48b27857 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_48b27857 function_80765127();
	level.var_48b27857 function_422037f5();
	level.var_48b27857 namespace_16f9ecd3::function_a2477bbb();
	level.var_48b27857 namespace_71e9cb84::function_74d6b22f("quad_tank_tac_mode", 1);
	level.var_48b27857 namespace_82b91a51::function_e218424d();
	level.var_48b27857 namespace_3fc75f50::function_4c6ee4cc(0);
	if(level.var_2395e945.size == 1)
	{
		level.var_48b27857.var_3a90f16b = 2500;
	}
	level thread namespace_cc27597::function_c35e6aab("cin_sgen_03_01_qt_attack_vign_reveal_qt01");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_quadtank_reveal_debris_bundle");
}

/*
	Name: function_34be1751
	Namespace: namespace_5da6b440
	Checksum: 0x7E4B7E22
	Offset: 0x5648
	Size: 0x86B
	Parameters: 0
	Flags: None
*/
function function_34be1751()
{
	level namespace_ad23e503::function_1ab5ebec("exterior_gone_hot");
	var_2ac88b1d = function_c4d5ec1f("ar_standard_hero", "acog", "fastreload", "extclip", "damage");
	level.var_2fd26037 namespace_d84e54db::function_7901ac63(var_2ac88b1d, "right");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level.var_2fd26037.var_7dfaf62 = 2048;
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 1);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "off");
	if(!level namespace_ad23e503::function_7922262b("hendricks_on_hill"))
	{
		namespace_4dbf3ae3::function_42e87952("trig_color_security_exterior");
	}
	var_c3354820 = function_99201f25("vol_hendricks_stealth", "targetname");
	while(!level namespace_ad23e503::function_7922262b("start_hendricks_move_up_battle_1"))
	{
		foreach(var_9c169a5c in var_c3354820)
		{
			if(isdefined(var_9c169a5c))
			{
				if(level.var_2fd26037 function_32fa5072(var_9c169a5c) && var_9c169a5c.var_87d0e81f === 1)
				{
					var_9c169a5c.var_87d0e81f = 1;
					level.var_2fd26037.var_5b14c02a = function_6ada35ba(var_9c169a5c.var_caae374e, "targetname");
					level.var_2fd26037 function_169cc712(level.var_2fd26037.var_5b14c02a, 1);
					if(!level.var_2fd26037 function_32fa5072(level.var_2fd26037.var_5b14c02a))
					{
						wait(1);
					}
					var_9c169a5c.var_87d0e81f = 0;
				}
			}
		}
		wait(5);
	}
	level.var_2fd26037 function_fb5720f7();
	foreach(var_9c169a5c in var_c3354820)
	{
		if(isdefined(var_9c169a5c))
		{
			if(level.var_2fd26037 function_32fa5072(var_9c169a5c))
			{
				switch(var_9c169a5c.var_caae374e)
				{
					case "vol_security_room":
					{
						level.var_f60a06d4 = 1;
						var_dad69a16 = function_6ada35ba("trig_color_move_security_1", "targetname");
						var_b4d41fad = function_6ada35ba("trig_color_move_security_2", "targetname");
						var_8ed1a544 = function_6ada35ba("trig_color_move_security_3", "targetname");
						break;
					}
					case "vol_driveway":
					{
						level.var_f60a06d4 = 0;
						var_dad69a16 = function_6ada35ba("trig_color_move_middle_1", "targetname");
						var_b4d41fad = function_6ada35ba("trig_color_move_middle_2", "targetname");
						var_8ed1a544 = function_6ada35ba("trig_color_move_middle_3", "targetname");
						break;
					}
					case "vol_left_building_exterior":
					{
						level.var_f60a06d4 = 0;
						var_dad69a16 = function_6ada35ba("trig_color_left_building_1", "targetname");
						var_b4d41fad = function_6ada35ba("trig_color_left_building_2", "targetname");
						var_8ed1a544 = function_6ada35ba("trig_color_move_middle_3", "targetname");
						break;
					}
					case "vol_left_building":
					{
						level.var_f60a06d4 = 0;
						var_dad69a16 = function_6ada35ba("trig_color_left_building_1", "targetname");
						var_b4d41fad = function_6ada35ba("trig_color_left_building_2", "targetname");
						var_8ed1a544 = function_6ada35ba("trig_color_move_middle_3", "targetname");
						break;
					}
					case default:
					{
						level.var_f60a06d4 = 0;
						var_dad69a16 = function_6ada35ba("trig_color_move_middle_1", "targetname");
						var_b4d41fad = function_6ada35ba("trig_color_move_middle_2", "targetname");
						var_8ed1a544 = function_6ada35ba("trig_color_move_middle_3", "targetname");
						break;
					}
				}
			}
		}
	}
	if(!isdefined(var_dad69a16))
	{
		var_dad69a16 = function_6ada35ba("trig_color_move_middle_1", "targetname");
	}
	if(!isdefined(var_b4d41fad))
	{
		var_b4d41fad = function_6ada35ba("trig_color_move_middle_2", "targetname");
	}
	if(!isdefined(var_8ed1a544))
	{
		var_8ed1a544 = function_6ada35ba("trig_color_move_middle_3", "targetname");
	}
	namespace_4dbf3ae3::function_42e87952(var_dad69a16.var_170527fb);
	level namespace_ad23e503::function_1ab5ebec("start_hendricks_move_up_battle_2");
	namespace_4dbf3ae3::function_42e87952(var_b4d41fad.var_170527fb);
	level namespace_ad23e503::function_1ab5ebec("spawn_quad_tank");
	var_3cfcee01 = function_6ada35ba("vol_enemy_middle", "targetname");
	level.var_2fd26037 function_169cc712(var_3cfcee01);
	level namespace_ad23e503::function_1ab5ebec("qtank_fight_completed");
	namespace_76d95162::function_d9f49fba(0);
}

/*
	Name: function_9200d313
	Namespace: namespace_5da6b440
	Checksum: 0x515E3852
	Offset: 0x5EC0
	Size: 0x3A3
	Parameters: 0
	Flags: None
*/
function function_9200d313()
{
	level namespace_ad23e503::function_1ab5ebec("activate_quad_tank");
	level thread function_da046478();
	level thread function_331e454();
	namespace_2f06d687::function_22356ba7("quadtank_reinforcement_guy");
	level thread namespace_d40478f6::function_3440789f();
	namespace_4dbf3ae3::function_42e87952("obj_intro_breadcrumb_3");
	namespace_82b91a51::function_67520c6a(4, undefined, &namespace_d0ef8521::function_74d6b22f, "cp_level_sgen_clear_entrance", level.var_48b27857);
	level.var_48b27857 namespace_d84e54db::function_c9e45d52(0);
	level.var_48b27857 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_48b27857 function_8dafb866();
	level.var_48b27857 function_4083a98e();
	level.var_48b27857 namespace_16f9ecd3::function_b3ce91e0();
	level.var_48b27857 namespace_71e9cb84::function_74d6b22f("quad_tank_tac_mode", 0);
	level.var_48b27857.var_3e94206a = "team3";
	var_3bc3122a = function_6ada35ba("qt_intro_target", "targetname");
	level.var_48b27857 namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_3bc3122a);
	level.var_48b27857 thread function_f2daaec0();
	level.var_48b27857 thread function_e6160d3();
	level namespace_82b91a51::function_67520c6a(2, undefined, &namespace_ad23e503::function_74d6b22f, "exterior_gone_hot");
	if(isdefined(level.var_6f535f97))
	{
		level thread [[level.var_6f535f97]]();
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_quadtank_reveal_debris_bundle");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_03_01_qt_attack_vign_reveal_qt01", &function_dce4d116);
	level namespace_cc27597::function_43718187("cin_sgen_03_01_qt_attack_vign_reveal_qt01");
	namespace_9f824288::function_5d2cdd99();
	level.var_48b27857 namespace_3fc75f50::function_4c6ee4cc(1);
	level.var_48b27857.var_7dfaf62 = 512;
	level.var_48b27857 function_500dc2f7(128);
	level.var_48b27857 thread function_b59ee5b9();
	level namespace_ad23e503::function_1ab5ebec("intro_quadtank_dead");
	level thread namespace_d40478f6::function_973b77f9();
	level namespace_ad23e503::function_d3de6822("quad_tank_nag_vo_playing");
	level thread namespace_71b8dba1::function_a463d127("kane_core_destabilized_q_0", 1);
}

/*
	Name: function_dce4d116
	Namespace: namespace_5da6b440
	Checksum: 0x720691E
	Offset: 0x6270
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_dce4d116(var_c77d2837)
{
	level.var_48b27857 waittill("hash_58adff7c");
	level.var_48b27857 namespace_3fc75f50::function_fefa9078();
}

/*
	Name: function_e6160d3
	Namespace: namespace_5da6b440
	Checksum: 0xB94C3C9E
	Offset: 0x62B0
	Size: 0x3E3
	Parameters: 0
	Flags: None
*/
function function_e6160d3()
{
	self endon("hash_128f8789");
	var_e5018 = [];
	var_e5018[0] = "kane_keep_hammering_its_t_1";
	var_e5018[1] = "hend_what_are_you_waiting_2";
	var_e5018[2] = "hend_trophy_system_s_mark_0";
	var_e5018[3] = "hend_ain_t_gonna_do_damag_0";
	var_e5018[4] = "kane_keep_firing_on_its_t_0";
	var_cb546862 = [];
	var_cb546862[0] = "kane_trophy_system_offlin_0";
	var_cb546862[1] = "kane_quad_defense_disable_0";
	var_cb546862[2] = "hend_c_mon_hit_it_the_rp_0";
	var_cb546862[3] = "kane_use_an_rpg_or_a_gren_0";
	var_cb546862[4] = "hend_only_a_few_more_shot_0";
	var_cb546862[5] = "hend_hurry_up_use_your_r_0";
	var_cb546862[6] = "hend_an_rpg_will_weaken_i_0";
	var_b3480890 = [];
	var_b3480890[0] = "kane_clean_hit_0";
	var_b3480890[1] = "hend_good_shot_that_ba_0";
	var_b3480890[2] = "kane_one_more_direct_hit_0";
	var_b3480890[3] = "kane_direct_hit_few_more_0";
	var_b3480890[4] = "hend_it_s_weakening_0";
	var_1085ad79 = [];
	var_1085ad79[0] = "hend_hit_its_defensive_sy_0";
	var_1085ad79[1] = "kane_keep_hammering_its_t_0";
	var_1085ad79[2] = "hend_we_re_shooting_blank_0";
	var_7685eec3 = [];
	var_7685eec3[0] = "kane_trophy_system_offlin_1";
	var_7685eec3[1] = "hend_this_is_it_hit_it_w_0";
	var_7685eec3[2] = "hend_c_mon_shoot_that_f_0";
	namespace_dabbe128::function_d38f54b1(&function_4fc8c2e, self);
	level namespace_71b8dba1::function_a463d127("kane_find_cover_quad_un_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_bastard_should_0", 1.5);
	level namespace_71b8dba1::function_a463d127("kane_quad_tanks_have_a_tr_0", 2);
	level namespace_71b8dba1::function_a463d127("kane_hit_the_quad_s_troph_0", 0.5);
	self thread function_749f2173();
	self thread function_624e7d89();
	self thread namespace_855113f3::function_35209d64();
	self thread function_91175921("vo_trophy_system_destroyed", var_7685eec3, 5);
	self thread function_91175921("vo_trophy_system_disabled", var_cb546862, 10, "quad_tank_trophy_system_destroyed");
	self thread function_91175921("vo_trophy_system_enabled", var_e5018, 10, "quad_tank_trophy_system_destroyed");
	self thread function_91175921("vo_direct_hit", var_b3480890);
	self thread function_91175921("vo_bullet_damage", var_1085ad79, 30);
}

/*
	Name: function_624e7d89
	Namespace: namespace_5da6b440
	Checksum: 0xB3F0C19F
	Offset: 0x66A0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_624e7d89()
{
	self endon("hash_128f8789");
	self waittill("hash_27175bcd");
	level namespace_ad23e503::function_74d6b22f("quad_tank_trophy_system_destroyed");
	while(1)
	{
		level notify("hash_868c73b");
		wait(function_72a94f05(10, 15));
	}
}

/*
	Name: function_749f2173
	Namespace: namespace_5da6b440
	Checksum: 0x7D85A368
	Offset: 0x6720
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_749f2173()
{
	self endon("hash_128f8789");
	self endon("hash_27175bcd");
	while(1)
	{
		self waittill("hash_6530962c");
		level notify("hash_828f5f9a");
		self waittill("hash_f015cdf7");
		level notify("hash_e6776989");
	}
}

/*
	Name: function_91175921
	Namespace: namespace_5da6b440
	Checksum: 0x354D43FF
	Offset: 0x6788
	Size: 0x251
	Parameters: 4
	Flags: None
*/
function function_91175921(var_8b453fd2, var_cbd11028, var_b6c00097, var_2148cdcc)
{
	self endon("hash_128f8789");
	foreach(var_3fe3c7c8 in var_cbd11028)
	{
		if(level namespace_ad23e503::function_7922262b("intro_quadtank_dead"))
		{
			return;
		}
		if(isdefined(var_2148cdcc) && level namespace_ad23e503::function_7922262b(var_2148cdcc))
		{
			return;
		}
		level waittill(var_8b453fd2);
		if(level namespace_ad23e503::function_7922262b("quad_tank_nag_vo_playing"))
		{
			var_946e0cd4 = level namespace_82b91a51::function_9fcf3cd8(5, "quad_tank_nag_vo_playing", "intro_quadtank_dead");
			if(var_946e0cd4 == "timeout" || var_946e0cd4 == "intro_quadtank_dead")
			{
				continue;
			}
		}
		level namespace_ad23e503::function_74d6b22f("quad_tank_nag_vo_playing");
		if(function_39c15145(var_3fe3c7c8, "hend"))
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386(var_3fe3c7c8);
		}
		else
		{
			level thread namespace_71b8dba1::function_a463d127(var_3fe3c7c8);
			level waittill("hash_120cde7f", var_c8ee7e7d);
			var_c8ee7e7d waittillmatch("hash_90f83311");
		}
		wait(1);
		level namespace_ad23e503::function_9d134160("quad_tank_nag_vo_playing");
		if(isdefined(var_b6c00097))
		{
			wait(var_b6c00097);
		}
	}
}

/*
	Name: function_4fc8c2e
	Namespace: namespace_5da6b440
	Checksum: 0x317E7367
	Offset: 0x69E8
	Size: 0xFD
	Parameters: 2
	Flags: None
*/
function function_4fc8c2e(var_56fd354c, var_a8563e07)
{
	if(function_65f192a6(var_a8563e07.var_3a212fd7))
	{
		if(var_a8563e07.var_ba36487d === "MOD_RIFLE_BULLET")
		{
			if(var_a8563e07.var_f105c26b != "tag_target_lower" && var_a8563e07.var_f105c26b != "tag_target_upper" && var_a8563e07.var_f105c26b != "tag_defense_active" && var_a8563e07.var_f105c26b != "tag_body_animate")
			{
				level notify("hash_52293e91");
			}
		}
		if(var_a8563e07.var_dfcc01fd.var_4be20d44 === "launcher_standard")
		{
			level notify("hash_e09e14de");
		}
	}
}

/*
	Name: function_b59ee5b9
	Namespace: namespace_5da6b440
	Checksum: 0x9E300B5C
	Offset: 0x6AF0
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_b59ee5b9()
{
	self endon("hash_128f8789");
	var_9f3a0049 = namespace_14b42b8a::function_7faf4c39("quadtank_positions", "script_noteworthy");
	var_263175f7 = namespace_84970cc4::function_47d18840(var_9f3a0049);
	while(1)
	{
		if(var_263175f7 == var_263175f7)
		{
			var_263175f7 = namespace_84970cc4::function_47d18840(var_9f3a0049);
		}
		self function_169cc712(var_263175f7.var_722885f3, 1);
		self namespace_82b91a51::function_564f2d81("near_goal", "goal");
		if(var_263175f7.var_db7bb468 === "qt_pos_back")
		{
			if(level.var_f60a06d4 === 1)
			{
				namespace_4dbf3ae3::function_42e87952("trig_color_qt_right_fallback");
			}
			else
			{
				namespace_4dbf3ae3::function_42e87952("trig_color_qt_left_fallback");
			}
		}
		if(var_263175f7.var_db7bb468 === "qt_pos_back")
		{
			if(level.var_f60a06d4 === 1)
			{
				namespace_4dbf3ae3::function_42e87952("trig_color_qt_right_push");
			}
			else
			{
				namespace_4dbf3ae3::function_42e87952("trig_color_qt_left_push");
			}
		}
		wait(function_72a94f05(6, 9));
	}
}

/*
	Name: function_f2daaec0
	Namespace: namespace_5da6b440
	Checksum: 0xC5B15EC9
	Offset: 0x6CC0
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_f2daaec0()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_sgen_truck_flip_crates_bundle", &function_78ca0a7d);
	self waittill("hash_c7569801");
	wait(0.2);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_truck_flip_crates_bundle");
	var_3f9c346d = namespace_14b42b8a::function_7922262b("qtank_impact", "targetname");
	function_eac31668(var_3f9c346d.var_722885f3, 180, 500, 90, self);
	var_3af498bc = function_fe0cfd2e("qt_truck_nodes", "script_noteworthy");
	foreach(var_22752fde in var_3af498bc)
	{
		function_d224409e(var_22752fde, 0);
	}
	var_df4fa6d = function_99201f25("pickup_carver", "targetname");
	foreach(var_4c9c8550 in var_df4fa6d)
	{
		var_4c9c8550 function_dc8c8404();
	}
}

/*
	Name: function_78ca0a7d
	Namespace: namespace_5da6b440
	Checksum: 0x71683FB
	Offset: 0x6EE8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_78ca0a7d(var_c77d2837)
{
	level waittill("hash_8d9c68d3");
	var_c77d2837["truck_flip"] function_e48f905e("veh_t7_civ_truck_pickup_yell_dead_not_flat");
}

/*
	Name: function_32832330
	Namespace: namespace_5da6b440
	Checksum: 0xDE7F270E
	Offset: 0x6F38
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_32832330()
{
	level namespace_ad23e503::function_1ab5ebec("qtank_fight_completed");
	level namespace_ad23e503::function_9d134160("player_at_sgen_entrance");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_enter_sgen_no_pointer");
	namespace_d0ef8521::function_45d1556("obj_intro_breadcrumb_3");
	namespace_4dbf3ae3::function_1ab5ebec("obj_intro_breadcrumb_3", "targetname", undefined, 0);
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
	level namespace_ad23e503::function_1ab5ebec("hendricks_at_lobby_idle");
	var_e4f2f922 = function_6ada35ba("trig_lobby_entrance", "targetname");
	var_e4f2f922 function_175e6b8e(1);
	namespace_82b91a51::function_14518e76(var_e4f2f922, &"cp_prompt_dni_sgen_hack_door", &"CP_MI_SING_SGEN_HACK", &function_5d647309);
	level thread function_6d9af09f(var_e4f2f922.var_722885f3);
}

/*
	Name: function_5d647309
	Namespace: namespace_5da6b440
	Checksum: 0xF2AE5AE
	Offset: 0x70B0
	Size: 0x523
	Parameters: 1
	Flags: None
*/
function function_5d647309(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	level namespace_ad23e503::function_74d6b22f("lobby_door_opening");
	level thread namespace_cc27597::function_43718187("cin_sgen_03_03_undeadqt_1st_transmit_player", var_6bfe1586);
	var_6bfe1586 namespace_175490fb::function_f8669cbf(1);
	var_6bfe1586 namespace_71e9cb84::function_e9c3870b("sndCCHacking", 2);
	var_6bfe1586 namespace_82b91a51::function_67520c6a(1, undefined, &namespace_71e9cb84::function_688ed188, "hack_dni_fx");
	wait(0.5);
	var_8cc17559 = function_99201f25("exterior_hack_panel", "targetname");
	foreach(var_6df9264 in var_8cc17559)
	{
		var_6df9264 function_e48f905e("p7_sgen_door_access_panel_hacked");
	}
	var_6bfe1586 thread function_27f3c2cd();
	level waittill("hash_7507e989");
	if(isdefined(var_6bfe1586))
	{
		var_6bfe1586 namespace_71e9cb84::function_e9c3870b("sndCCHacking", 0);
	}
	var_f40abca8 = function_99201f25("lobby_entrance_doors", "script_noteworthy");
	foreach(var_edaada1 in var_f40abca8)
	{
		var_b53b6cbf = function_6ada35ba(var_edaada1.var_b07228b6, "targetname");
		var_b53b6cbf function_37f7858a(var_edaada1);
	}
	var_78962fff = 1;
	var_2e1eebfc = 0.25;
	var_1fbff2a7 = 0.25;
	foreach(var_edaada1 in var_f40abca8)
	{
		if(var_edaada1.var_170527fb == "lobby_entrance_door_left")
		{
			var_96ba651b = function_bc7ce905(var_edaada1.var_6ab6f4fd) * -60;
			var_edaada1 function_a96a2721(var_edaada1.var_722885f3 + var_96ba651b, var_78962fff, var_2e1eebfc, var_1fbff2a7);
			function_37cbcf1a("evt_lobby_door_open", var_edaada1.var_722885f3);
			continue;
		}
		var_96ba651b = function_bc7ce905(var_edaada1.var_6ab6f4fd) * 60;
		var_edaada1 function_a96a2721(var_edaada1.var_722885f3 + var_96ba651b, var_78962fff, var_2e1eebfc, var_1fbff2a7);
	}
	wait(var_78962fff);
	foreach(var_edaada1 in var_f40abca8)
	{
		var_edaada1 function_de8377bf();
	}
	level namespace_ad23e503::function_74d6b22f("lobby_door_opened");
	self namespace_a230c2b1::function_c5a39495(1);
}

/*
	Name: function_27f3c2cd
	Namespace: namespace_5da6b440
	Checksum: 0x4B061B13
	Offset: 0x75E0
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_27f3c2cd()
{
	level endon("hash_7507e989");
	self waittill("hash_128f8789");
	level notify("hash_7507e989");
}

/*
	Name: function_6d9af09f
	Namespace: namespace_5da6b440
	Checksum: 0x1456EBFC
	Offset: 0x7618
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_6d9af09f(var_c70dfc78)
{
	level waittill("hash_6d9af09f");
	function_37cbcf1a("evt_lobby_door_panelhack", var_c70dfc78);
}

/*
	Name: function_2c76d8aa
	Namespace: namespace_5da6b440
	Checksum: 0x2F5537B4
	Offset: 0x7658
	Size: 0x38B
	Parameters: 2
	Flags: None
*/
function function_2c76d8aa(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level thread function_d97219ae();
		namespace_2f06d687::function_7387a40a("entrance_qtank", &function_86c5b0ca);
		namespace_80983c42::function_80983c42("sgen_flying_IGC");
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_clear_entrance");
		var_e4f2f922 = function_6ada35ba("trig_lobby_entrance", "targetname");
		var_e4f2f922 function_175e6b8e(0);
		level namespace_ad23e503::function_74d6b22f("player_at_sgen_entrance");
		level namespace_ad23e503::function_74d6b22f("qtank_fight_completed");
		namespace_d7916d65::function_a2995f22();
		level thread function_32832330();
	}
	namespace_d275cebc::function_93523442("p7_nc_sin_coa_02", undefined, VectorScale((0, -1, 0), 8));
	namespace_d275cebc::function_37aecd21();
	function_6c1294b8("ai_awarenessenabled", 0);
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_overhang_building_glass_bundle");
	level thread function_b50db732();
	level thread function_51fb0632();
	level.var_2fd26037 thread function_68742ac0(var_74cd64bc);
	level namespace_ad23e503::function_1ab5ebec("lobby_door_opened");
	level namespace_cc27597::function_c35e6aab("cin_sgen_05_01_discoverdata_vign_lookaround_bodies");
	level namespace_cc27597::function_c35e6aab("pb_sgen_data_discovery_hack");
	if(isdefined(level.var_d83c2f6a))
	{
		level thread [[level.var_d83c2f6a]]();
	}
	namespace_80983c42::function_80983c42("lgt_sgen_obelisk_lobby");
	level.var_75c82874 = 1;
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_hack_door");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_investigate_sgen");
	var_c7d2cbe9 = function_6ada35ba("trig_post_discover_data", "targetname");
	var_c7d2cbe9 function_175e6b8e(0);
	namespace_4dbf3ae3::function_1ab5ebec("discover_data_breadcrumb_2");
	if(isdefined(level.var_9c89f6ae))
	{
		[[level.var_9c89f6ae]]();
	}
	function_547e0499();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_86c5b0ca
	Namespace: namespace_5da6b440
	Checksum: 0x6D895506
	Offset: 0x79F0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_86c5b0ca()
{
	self.var_3e94206a = "neutral";
	self namespace_d84e54db::function_c9e45d52(1);
	level thread namespace_cc27597::function_c35e6aab("cin_sgen_03_01_qt_attack_vign_reveal_qt01");
	level namespace_ad23e503::function_1ab5ebec("player_past_shimmy_wall");
	self function_dc8c8404();
}

/*
	Name: function_8903df94
	Namespace: namespace_5da6b440
	Checksum: 0x7D6732CC
	Offset: 0x7A80
	Size: 0x17B
	Parameters: 4
	Flags: None
*/
function function_8903df94(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(!(isdefined(level.var_75c82874) && level.var_75c82874))
	{
		level.var_75c82874 = 1;
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
	}
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_02_05_exterior_vign_using_ipad_guy01");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_03_01_qt_attack_vign_reveal_qt01");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_03_03_undeadqt_1st_transmit_player");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks_moveintolobby");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_04_01_lobby_vign_react_hendricks");
	function_9e3608e3("sgen_ocean_water");
	var_dee3d10a = function_6ada35ba("discover_data_tele", "script_flag_set");
	var_dee3d10a.var_ff1f6868 = "discover_data";
}

/*
	Name: function_51fb0632
	Namespace: namespace_5da6b440
	Checksum: 0x2013F052
	Offset: 0x7C08
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_51fb0632()
{
	level namespace_ad23e503::function_1ab5ebec("player_in_lobby");
	function_acdfe1fe("cp_sgen_env_LobbyMovie", 1);
	var_910bc1f3 = function_9b7fda5e("script_origin", (1414, -432, 304));
	var_910bc1f3 function_c2931a36("amb_billboard_glitch_loop");
	var_1c4260d1 = function_9b7fda5e("script_origin", (-6, -1301, 250));
	var_1c4260d1 function_921a1574("mus_coalescence_theme_lobby");
	wait(6);
	var_1c4260d1 function_921a1574("mus_coalescence_theme_lobby_underscore");
	var_1c4260d1 namespace_71b8dba1::function_81141386("rbot_welcome_to_coalescen_0");
	wait(45);
	var_1c4260d1 function_dc8c8404();
}

/*
	Name: function_b50db732
	Namespace: namespace_5da6b440
	Checksum: 0x4BD73914
	Offset: 0x7D58
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_b50db732()
{
	level namespace_ad23e503::function_1ab5ebec("player_at_sgen_entrance");
	level waittill("hash_33481609");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_investigate_sgen");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_investigate_sgen_atrium");
	namespace_d0ef8521::function_45d1556("discover_data_breadcrumb_2");
}

/*
	Name: function_68742ac0
	Namespace: namespace_5da6b440
	Checksum: 0x48FE1EB5
	Offset: 0x7DE0
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_68742ac0(var_640e871b)
{
	level namespace_ad23e503::function_1ab5ebec("qtank_fight_completed");
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self namespace_6f7b2095::function_54bdb053();
	level thread namespace_cc27597::function_43718187("cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks");
	level namespace_82b91a51::function_9fcf3cd8(25, "cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks_done");
	level namespace_ad23e503::function_74d6b22f("hendricks_at_lobby_idle");
	self thread function_79f61708();
	level namespace_ad23e503::function_1ab5ebec("lobby_door_opening");
	level namespace_cc27597::function_43718187("cin_sgen_03_03_undeadqt_vign_limitedpower_hendricks_moveintolobby");
	level.var_2fd26037 thread function_d05c5d63();
	level namespace_cc27597::function_43718187("cin_sgen_04_01_lobby_vign_react_hendricks");
	self namespace_6f7b2095::function_1b497663("r");
	self namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("trig_hendricks_lobby_color");
	self waittill("hash_41d1aaf0");
	level notify("hash_33481609");
	level namespace_ad23e503::function_1ab5ebec("player_at_data_doors");
	level namespace_ad23e503::function_74d6b22f("hendricks_at_silo_doors");
}

/*
	Name: function_79f61708
	Namespace: namespace_5da6b440
	Checksum: 0x5096D4D0
	Offset: 0x8008
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_79f61708()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_at_lobby_idle");
	level namespace_71b8dba1::function_a463d127("kane_interface_with_that_2");
	if(level namespace_ad23e503::function_7922262b("lobby_door_opening"))
	{
		return;
	}
	level endon("hash_6a13f4bf");
	wait(5);
	self namespace_71b8dba1::function_81141386("hend_hey_let_s_go_0");
}

/*
	Name: function_d05c5d63
	Namespace: namespace_5da6b440
	Checksum: 0x3625094E
	Offset: 0x80A8
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_d05c5d63()
{
	self waittill("hash_b32ba9d");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		if(function_7d15e2f8(self.var_722885f3, var_6bfe1586.var_722885f3) <= 500)
		{
			self namespace_71b8dba1::function_81141386("hend_don_t_get_skittish_0");
			break;
		}
	}
}

/*
	Name: function_547e0499
	Namespace: namespace_5da6b440
	Checksum: 0xC486EC5B
	Offset: 0x8188
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_547e0499()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_at_silo_doors");
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen_atrium");
	level.var_2fd26037 namespace_175490fb::function_f8669cbf(1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_interfacing_with_the_0");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sndSiloBG", 1);
	}
	wait(0.5);
	var_280d5f68 = function_6ada35ba("silo_door_left", "targetname");
	var_3c301126 = function_6ada35ba("silo_door_right", "targetname");
	var_280d5f68 function_21d0da55(var_280d5f68.var_8202763a, 1, 0.25, 0.4);
	function_37cbcf1a("evt_silo_door_open", var_280d5f68.var_722885f3);
	var_3c301126 function_21d0da55(var_3c301126.var_8202763a, 1, 0.25, 0.4);
	function_37cbcf1a("evt_silo_door_open", var_3c301126.var_722885f3);
	var_3c301126 waittill("hash_6654e4f4");
	level namespace_ad23e503::function_74d6b22f("silo_door_opened");
}

/*
	Name: function_6808f370
	Namespace: namespace_5da6b440
	Checksum: 0x5DA114A0
	Offset: 0x8420
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_6808f370()
{
	self endon("hash_128f8789");
	self endon("hash_1592960");
	level endon("hash_766878c3");
	var_32e6e795 = 0;
	var_50cacf55 = undefined;
	do
	{
		var_32e6e795 = 0;
		if(self.var_c5fecd24 === 1)
		{
			var_32e6e795 = 1;
		}
		var_32e6e795 = 1;
		var_50cacf55 = var_5dc5e20a;
		break;
		wait(0.1);
	}
	while(!!var_32e6e795);
	else
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(!isdefined(var_5dc5e20a.var_1611b636) && var_5dc5e20a.var_1611b636 && self function_75754e3a(var_5dc5e20a))
			{
			}
		}
	}
	self thread function_94a23f13(var_50cacf55);
}

/*
	Name: function_d01267bd
	Namespace: namespace_5da6b440
	Checksum: 0x35EBAA17
	Offset: 0x8590
	Size: 0x183
	Parameters: 3
	Flags: None
*/
function function_d01267bd(var_2e939094, var_ee7dbbc9, var_aa686173)
{
	if(!isdefined(var_2e939094))
	{
		var_2e939094 = 1;
	}
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 1;
	}
	if(function_27c72c1b())
	{
		return;
	}
	self endon("hash_128f8789");
	if(isdefined(var_aa686173))
	{
		level endon(var_aa686173);
	}
	level namespace_ad23e503::function_1ab5ebec("exterior_gone_hot");
	self namespace_37b990db::function_bae40a28(1, 1);
	var_531b88b4 = 0;
	while(var_531b88b4 < var_2e939094)
	{
		var_dfb53de7 = self namespace_96fa87af::function_ad4ec07a("gunner1");
		if(function_5b49d38c(var_dfb53de7))
		{
			var_dfb53de7 waittill("hash_128f8789");
		}
		else
		{
			var_dfb53de7 = function_392ca6eb(self);
			if(function_5b49d38c(var_dfb53de7))
			{
				var_dfb53de7 namespace_96fa87af::function_230eadd7(self, "gunner1", 0);
				var_531b88b4++;
			}
		}
		wait(var_ee7dbbc9);
	}
}

/*
	Name: function_392ca6eb
	Namespace: namespace_5da6b440
	Checksum: 0xB97CCD92
	Offset: 0x8720
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_392ca6eb(var_45900c37)
{
	var_24bbf032 = function_33222815("human", "axis");
	var_997800be = function_57efbe1(var_24bbf032, var_45900c37.var_722885f3);
	return var_997800be[0];
}

/*
	Name: function_9e3af01c
	Namespace: namespace_5da6b440
	Checksum: 0xA4F5CA0D
	Offset: 0x8798
	Size: 0x249
	Parameters: 0
	Flags: None
*/
function function_9e3af01c()
{
	level endon("hash_a4b7fa05");
	while(1)
	{
		self waittill("hash_f9348fda", var_74d0774f, var_a0ad4f34, var_34d7a5cf, var_dd89f865, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		if(var_dfcc01fd == level.var_b27f706d || var_dfcc01fd == level.var_51d112fe || var_dfcc01fd == level.var_9e92e4b8)
		{
			self function_c3945cd5(self.var_3a90f16b, self.var_722885f3);
			break;
		}
	}
	var_cfcb49a5 = function_bc7ce905(self.var_6ab6f4fd) * -350 + VectorScale((0, 0, 1), 200);
	var_c6f2fa46 = self.var_722885f3 + function_bc7ce905(self.var_6ab6f4fd) * 10;
	self function_7d4fb40(var_cfcb49a5, var_c6f2fa46, 0);
	self thread function_a2ef2c8c();
	var_39352a5 = self.var_d925663e;
	foreach(var_d84e54db in var_39352a5)
	{
		var_d84e54db function_c3945cd5(var_d84e54db.var_3a90f16b, var_d84e54db.var_722885f3);
	}
}

/*
	Name: function_a2ef2c8c
	Namespace: namespace_5da6b440
	Checksum: 0x53B32BD0
	Offset: 0x89F0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_a2ef2c8c()
{
	self endon("hash_128f8789");
	if(isdefined(60))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(60, "timeout");
	}
	self waittill("hash_32ae4445");
	if(isdefined(self))
	{
		self function_921a1574("evt_truck_impact");
	}
}

/*
	Name: function_210baecb
	Namespace: namespace_5da6b440
	Checksum: 0x5F8CF1B0
	Offset: 0x8A90
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_210baecb()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_1194c978");
		if(self function_48c6a3a2() == function_c4d5ec1f("launcher_standard"))
		{
			self thread function_7aa1381();
			break;
		}
	}
}

/*
	Name: function_7aa1381
	Namespace: namespace_5da6b440
	Checksum: 0x933B3066
	Offset: 0x8B10
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_7aa1381()
{
	self endon("hash_128f8789");
	self endon("hash_b6eb1761");
	if(!isdefined(self.var_c142b118))
	{
		self namespace_82b91a51::function_32d40124(&"COOP_EQUIP_XM53", 0, "weapon_swap_learned", 10);
		var_637636ed = 0;
		while(self function_48c6a3a2() == function_c4d5ec1f("launcher_standard") && var_637636ed <= 10)
		{
			var_637636ed = var_637636ed + 0.1;
			wait(0.1);
		}
		self.var_c142b118 = 1;
		self namespace_82b91a51::function_f9e5537b();
		self notify("hash_b6eb1761");
	}
}

