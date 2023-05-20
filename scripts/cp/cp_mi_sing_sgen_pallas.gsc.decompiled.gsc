#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_dark_battle;
#using scripts\cp\cp_mi_sing_sgen_revenge_igc;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\damagefeedback_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_646f304f;

/*
	Name: function_1a420bcd
	Namespace: namespace_646f304f
	Checksum: 0x6747035E
	Offset: 0x17E0
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function function_1a420bcd(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room");
		function_4ef8cf79();
		level namespace_ad23e503::function_74d6b22f("weapons_research_vo_done");
		namespace_d7916d65::function_a2995f22();
	}
	level thread function_3a855484();
	level thread function_dda88b2e();
	level function_b8e4148d();
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_confront_pallas", level.var_7f246cd7);
}

/*
	Name: function_d15424d7
	Namespace: namespace_646f304f
	Checksum: 0x6CE56024
	Offset: 0x1940
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_d15424d7(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_14b42b8a::function_368120a1("cin_sgen_14_humanlab_3rd_sh005");
}

/*
	Name: function_1f2baf43
	Namespace: namespace_646f304f
	Checksum: 0x2CC80ADA
	Offset: 0x1988
	Size: 0x551
	Parameters: 2
	Flags: None
*/
function function_1f2baf43(var_b04bc952, var_74cd64bc)
{
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room");
	namespace_2f06d687::function_2b37a3c9("pallas_bot", "script_noteworthy", &function_a44a2f8d);
	namespace_2f06d687::function_2b37a3c9("pallas_core_guard", "script_noteworthy", &function_c92b9eaf);
	namespace_2f06d687::function_2b37a3c9("pallas_center_guard", "script_noteworthy", &function_a198a1);
	level namespace_ad23e503::function_74d6b22f("pallas_start");
	level.var_e16e585d = 0;
	level.var_e259308b = 0;
	level.var_9945a95d = 0;
	level.var_844375bd = namespace_14b42b8a::function_7faf4c39("pallas_robot_dropdown");
	level thread function_7362d6c4();
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_confront_pallas");
		function_4ef8cf79();
		function_6e72c0ab("back", "open");
		var_be31aa9a = function_6ada35ba("boss_fight_lift", "targetname");
		var_be31aa9a function_8bdea13c(-1750, 0.1);
		namespace_d7916d65::function_a2995f22();
		level thread function_3a855484();
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "pallas_monitors_state", 2);
	}
	level thread function_8470b8c(var_74cd64bc);
	level thread function_4ee50667(var_74cd64bc);
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 namespace_82b91a51::function_df6eb506(1);
	}
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_2fd26037 namespace_6f7b2095::function_1b497663("r");
	level thread function_ab0e4cbe();
	level thread function_1497c676();
	level thread namespace_cba4cc55::function_8b31a9a3();
	level thread function_c88aca45();
	level thread function_ecf57b76();
	level namespace_ad23e503::function_1ab5ebec("core_two_destroyed");
	level thread function_4301ab5f();
	level namespace_ad23e503::function_1ab5ebec("pallas_death");
	level notify("hash_f42cafec");
	var_915bcd4e = function_b8494651("team3");
	foreach(var_f8253a5c in var_915bcd4e)
	{
		var_f8253a5c function_dc8c8404();
	}
}

/*
	Name: function_5a8d1289
	Namespace: namespace_646f304f
	Checksum: 0xEA5CF40B
	Offset: 0x1EE8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_5a8d1289(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_bf36708e
	Namespace: namespace_646f304f
	Checksum: 0x34C54305
	Offset: 0x1F18
	Size: 0x43F
	Parameters: 2
	Flags: None
*/
function function_bf36708e(var_b04bc952, var_74cd64bc)
{
	var_be31aa9a = function_6ada35ba("boss_fight_lift", "targetname");
	level thread function_3452571c();
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		var_587da295 = function_6ada35ba("pallas", "targetname");
		var_587da295 namespace_2f06d687::function_994832bd(&function_ff91efc5);
		namespace_2f06d687::function_22356ba7(var_587da295);
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_confront_pallas");
		function_4ef8cf79();
		function_6e72c0ab("back", "open");
		var_be31aa9a function_8bdea13c(-1750, 0.05);
		level thread namespace_cc27597::function_c35e6aab("cin_sgen_19_ghost_3rd_sh010");
		namespace_d7916d65::function_a2995f22();
	}
	else
	{
		level.var_cd52fefe = GetTime();
		namespace_82b91a51::function_7e61de2b(0.25, "black", "ghost_fade");
		level namespace_82b91a51::function_7d553ac6();
	}
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "pallas_monitors_state", 3);
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	level thread function_d6b86f3d();
	level namespace_cc27597::function_8f9f34e0("cin_sgen_19_ghost_3rd_sh010", &function_48b24f3d, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_19_ghost_3rd_sh040", &function_ac1384da, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_19_ghost_3rd_sh110", &function_c524f1b2, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_19_ghost_3rd_sh050", &function_7d1791ba, "done");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_19_ghost_3rd_sh190", &function_90b577e6, "done");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_pallas_ai_tower_collapse_bundle");
	level thread function_38ce56e0();
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 1);
	level namespace_cc27597::function_43718187("cin_sgen_19_ghost_3rd_sh010");
	if(isdefined(level.var_3b075261))
	{
		level thread [[level.var_3b075261]]();
	}
}

/*
	Name: function_509b3c70
	Namespace: namespace_646f304f
	Checksum: 0x7176DD74
	Offset: 0x2360
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_509b3c70(var_c77d2837)
{
	level waittill("hash_74753696");
	level namespace_82b91a51::function_7e61de2b(0.45, "black", "twin_cover");
}

/*
	Name: function_6610aebe
	Namespace: namespace_646f304f
	Checksum: 0xD0FC3A01
	Offset: 0x23B0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_6610aebe(var_c77d2837)
{
	var_c77d2837["pallas_ai_tower"] function_8c8e79fe();
}

/*
	Name: function_c5372adb
	Namespace: namespace_646f304f
	Checksum: 0xC8D3AD1B
	Offset: 0x23E8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_c5372adb(var_c77d2837)
{
	var_c77d2837["pallas_ai_tower"] function_48f26766();
}

/*
	Name: function_48b24f3d
	Namespace: namespace_646f304f
	Checksum: 0xDA7067EB
	Offset: 0x2420
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_48b24f3d(var_c77d2837)
{
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 function_8c8e79fe();
	}
	if(isdefined(level.var_cd52fefe) && GetTime() - level.var_cd52fefe < 500)
	{
		namespace_82b91a51::function_76f13293();
	}
	namespace_82b91a51::function_593c2af4(0, "black", "ghost_fade");
}

/*
	Name: function_ac1384da
	Namespace: namespace_646f304f
	Checksum: 0x9AE2C908
	Offset: 0x24C0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_ac1384da(var_c77d2837)
{
	if(isdefined(level.var_7f246cd7))
	{
		level.var_7f246cd7 function_48f26766();
	}
}

/*
	Name: function_7d1791ba
	Namespace: namespace_646f304f
	Checksum: 0xA97FF07E
	Offset: 0x2500
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_7d1791ba(var_c77d2837)
{
	level.var_7f246cd7 function_169cc712(level.var_7f246cd7.var_722885f3, 1);
	level.var_7f246cd7.var_7dfaf62 = 8;
}

/*
	Name: function_c524f1b2
	Namespace: namespace_646f304f
	Checksum: 0xD17421B9
	Offset: 0x2558
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_c524f1b2(var_c77d2837)
{
	foreach(var_9544d7c1 in var_c77d2837)
	{
		if(var_9544d7c1 == level.var_2fd26037)
		{
			var_9544d7c1 namespace_175490fb::function_f8669cbf(1);
		}
	}
}

/*
	Name: function_38ce56e0
	Namespace: namespace_646f304f
	Checksum: 0xAFB47465
	Offset: 0x2608
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_38ce56e0()
{
	wait(0.05);
	var_b05603a8 = function_99201f25("pallas_core_destruct", "targetname");
	namespace_84970cc4::function_eaab05dc(var_b05603a8, &function_dc8c8404);
	var_8c77ffe9 = function_99201f25("pallas_rail_destruct", "targetname");
	namespace_84970cc4::function_eaab05dc(var_8c77ffe9, &function_dc8c8404);
}

/*
	Name: function_e3c54b48
	Namespace: namespace_646f304f
	Checksum: 0xDC13DE59
	Offset: 0x26C0
	Size: 0xC9
	Parameters: 4
	Flags: None
*/
function function_e3c54b48(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_confront_pallas");
	if(!var_74cd64bc)
	{
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			var_6bfe1586 namespace_82b91a51::function_df6eb506(0);
		}
	}
}

/*
	Name: function_90b577e6
	Namespace: namespace_646f304f
	Checksum: 0x46C6EEC3
	Offset: 0x2798
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_90b577e6(var_c77d2837)
{
	namespace_82b91a51::function_a0938376();
	namespace_1d795d47::function_be8adfb8("pallas_end");
}

/*
	Name: function_b8e4148d
	Namespace: namespace_646f304f
	Checksum: 0x3AF9C904
	Offset: 0x27D8
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_b8e4148d()
{
	level waittill("hash_f913de07");
	if(isdefined(level.var_52bd434a))
	{
		level thread [[level.var_52bd434a]]();
	}
	level namespace_71b8dba1::function_a463d127("diaz_listen_do_you_hea_0");
	level namespace_71b8dba1::function_a463d127("diaz_there_is_blood_on_ou_0", 0.5);
	level namespace_71b8dba1::function_a463d127("diaz_you_know_who_i_am_i_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_i_ve_got_diaz_0", 0.3);
	level namespace_71b8dba1::function_a463d127("diaz_taylor_is_right_0", 0.5);
	level namespace_71b8dba1::function_a463d127("kane_oh_my_god_he_s_wi_0", 0.4);
	level namespace_71b8dba1::function_a463d127("kane_he_s_directly_contro_0");
	level namespace_71b8dba1::function_a463d127("kane_listen_to_me_we_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_right_now_he_s_uploa_0", 1);
}

/*
	Name: function_5ac1b440
	Namespace: namespace_646f304f
	Checksum: 0xDEA1BF08
	Offset: 0x2950
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_5ac1b440()
{
	var_8df90b18 = function_99201f25("pallas_elevator_probe", "targetname");
	var_99450f8a = function_99201f25("pallas_elevator_light", "script_noteworthy");
	var_be31aa9a = function_6ada35ba("boss_fight_lift", "targetname");
	namespace_84970cc4::function_eaab05dc(var_99450f8a, &function_37f7858a, var_be31aa9a);
	namespace_84970cc4::function_eaab05dc(var_8df90b18, &function_37f7858a, var_be31aa9a);
}

/*
	Name: function_3a855484
	Namespace: namespace_646f304f
	Checksum: 0x1C0C2718
	Offset: 0x2A38
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_3a855484()
{
	namespace_cc27597::function_8f9f34e0("cin_sgen_18_01_pallasfight_vign_crucifix_pallas_loop", &function_517f8c74, "play");
	var_587da295 = function_6ada35ba("pallas", "targetname");
	var_764b080d = function_6ada35ba("pallas2", "targetname");
	var_587da295 namespace_2f06d687::function_994832bd(&function_ff91efc5);
	var_764b080d namespace_2f06d687::function_994832bd(&function_ff91efc5, 1);
	level thread namespace_cc27597::function_43718187("cin_sgen_18_01_pallasfight_vign_crucifix_pallas_loop");
	function_acdfe1fe("cp_sgen_env_diazserver", 1);
	level waittill("hash_2e9dd028");
	function_4a0fb95e("cp_sgen_env_diazserver");
	function_acdfe1fe("cp_sgen_env_diazserver", 1);
	level thread namespace_cc27597::function_43718187("cin_sgen_18_01_pallasfight_vign_crucifix_pallas_stage2");
	level waittill("hash_2e9dd028");
	function_4a0fb95e("cp_sgen_env_diazserver");
	function_acdfe1fe("cp_sgen_env_diazserver", 1);
	level thread namespace_cc27597::function_43718187("cin_sgen_18_01_pallasfight_vign_crucifix_pallas_stage3");
	level waittill("hash_eb30fd63");
	function_4a0fb95e("cp_sgen_env_diazserver");
}

/*
	Name: function_517f8c74
	Namespace: namespace_646f304f
	Checksum: 0xEDE493D
	Offset: 0x2C58
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_517f8c74(var_c77d2837)
{
	level.var_7f246cd7 = var_c77d2837["pallas_model"];
}

/*
	Name: function_ff91efc5
	Namespace: namespace_646f304f
	Checksum: 0x32506DD6
	Offset: 0x2C80
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_ff91efc5(var_74bf1e88)
{
	if(!isdefined(var_74bf1e88))
	{
		var_74bf1e88 = 0;
	}
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self function_80765127();
	self.var_bab9655e = 0;
	self.var_342d9e3a = 1;
	if(var_74bf1e88)
	{
		self function_fef374cd();
		level.var_e934a4b7 = self;
	}
	else
	{
		level.var_7f246cd7 = self;
	}
}

/*
	Name: function_1497c676
	Namespace: namespace_646f304f
	Checksum: 0x40A63F23
	Offset: 0x2D40
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_1497c676()
{
	level namespace_4c73eafb::function_a8cfe9ae();
	level.var_2fd26037.var_255b9315 = 1;
	var_35925132 = namespace_14b42b8a::function_7922262b("hendrick_console_hack", "targetname");
	level thread namespace_cc27597::function_43718187("cin_sgen_18_01_pallasfight_vign_controls_hendricks_active", level.var_2fd26037);
	level waittill("hash_7d401fb9");
	var_35925132 thread namespace_cc27597::function_fcf56ab5("cin_sgen_18_01_pallasfight_vign_controls_hendricks_active");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_646f304f
	Checksum: 0x99EC1590
	Offset: 0x2DF8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
}

/*
	Name: function_8470b8c
	Namespace: namespace_646f304f
	Checksum: 0x17C1CB7D
	Offset: 0x2E08
	Size: 0x199
	Parameters: 1
	Flags: None
*/
function function_8470b8c(var_74cd64bc)
{
	level.var_51a695e5 = [];
	level.var_38f0e071 = [];
	level.var_87d58962 = [];
	var_91f66e00 = function_99201f25("pallas_intro_spawner", "targetname");
	foreach(var_dc854c29 in var_91f66e00)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a(var_dc854c29);
		if(isdefined(var_f6c5842))
		{
			if(var_74cd64bc)
			{
				if(isdefined(var_f6c5842.var_b07228b6))
				{
					var_9de10fe3 = function_b4cb3503(var_f6c5842.var_b07228b6, "targetname");
					var_f6c5842 function_9869ab67(var_9de10fe3.var_722885f3, var_9de10fe3.var_6ab6f4fd);
				}
			}
			var_f6c5842 thread function_f0f76126();
			namespace_82b91a51::function_76f13293();
		}
	}
}

/*
	Name: function_ecf57b76
	Namespace: namespace_646f304f
	Checksum: 0x48201DAA
	Offset: 0x2FB0
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_ecf57b76()
{
	level endon("hash_eb30fd63");
	while(!level namespace_ad23e503::function_7922262b("pallas_death"))
	{
		level.var_51a695e5 = namespace_84970cc4::function_b87262e(level.var_51a695e5);
		level.var_38f0e071 = namespace_84970cc4::function_b87262e(level.var_38f0e071);
		level.var_87d58962 = namespace_84970cc4::function_b87262e(level.var_87d58962);
		wait(5);
	}
	level.var_51a695e5 = undefined;
	level.var_38f0e071 = undefined;
	level.var_87d58962 = undefined;
}

/*
	Name: function_a7dc2319
	Namespace: namespace_646f304f
	Checksum: 0x8FD68560
	Offset: 0x3068
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_a7dc2319()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_ad23e503::function_1ab5ebec("pallas_ambush_over");
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_a44a2f8d
	Namespace: namespace_646f304f
	Checksum: 0x27E5CE90
	Offset: 0x30D0
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_a44a2f8d()
{
	self endon("hash_128f8789");
	self.var_2b04bf92 = 0.25;
	self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
	switch(level.var_e16e585d)
	{
		case 0:
		{
			self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
			break;
		}
		case 1:
		{
			self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
			break;
		}
		case 2:
		{
			self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
			self.var_db7bb468 = "potential_hendricks_bot";
			self thread function_39072821();
			break;
		}
		case 3:
		{
			self thread function_39072821();
			break;
		}
	}
	if(!level namespace_ad23e503::function_7922262b("pallas_ambush_over"))
	{
		self thread function_a7dc2319();
	}
	else
	{
		self function_969fe47();
	}
	level namespace_ad23e503::function_1ab5ebec("pallas_ambush_over");
	var_b97ded2e = function_6ada35ba("pallas_tier_two_volume", "targetname");
	self function_169cc712(var_b97ded2e);
}

/*
	Name: function_a198a1
	Namespace: namespace_646f304f
	Checksum: 0xC8D02C2F
	Offset: 0x32C0
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_a198a1()
{
	self endon("hash_128f8789");
	self.var_2b04bf92 = 0.25;
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
	self namespace_d84e54db::function_ceb883cd("can_become_rusher", 0);
	if(!level namespace_ad23e503::function_7922262b("pallas_ambush_over"))
	{
		self thread function_a7dc2319();
	}
	else
	{
		self function_969fe47();
	}
	level namespace_ad23e503::function_1ab5ebec("pallas_ambush_over");
	if(level.var_51a695e5.size < 3)
	{
		level.var_51a695e5[level.var_51a695e5.size] = self;
		var_b97ded2e = function_6ada35ba("pallas_center_volume", "targetname");
	}
	else if(level.var_38f0e071.size < 6)
	{
		level.var_38f0e071[level.var_38f0e071.size] = self;
		var_b97ded2e = function_6ada35ba("pallas_tier_two_volume", "targetname");
	}
	else
	{
		level.var_87d58962[level.var_87d58962.size] = self;
		var_b97ded2e = function_6ada35ba("pallas_bottom_tier", "targetname");
	}
	self function_169cc712(var_b97ded2e, 1);
	self thread function_39072821();
}

/*
	Name: function_c92b9eaf
	Namespace: namespace_646f304f
	Checksum: 0xC49617DD
	Offset: 0x34B8
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_c92b9eaf()
{
	self endon("hash_128f8789");
	self.var_2b04bf92 = 0.25;
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
	self namespace_d84e54db::function_ceb883cd("force_cover", 1);
	self namespace_d84e54db::function_ceb883cd("can_become_rusher", 0);
	self function_969fe47();
	level.var_e259308b++;
	var_b2b61fc5 = function_b4cb3503("core_guard" + level.var_e259308b, "script_noteworthy");
	var_b97ded2e = function_6ada35ba("pallas_center_volume", "targetname");
	if(!isdefined(var_b2b61fc5) || function_4eb15419(var_b2b61fc5))
	{
		self function_169cc712(var_b97ded2e, 1, 16, 16);
	}
	else
	{
		self function_169cc712(var_b2b61fc5, 1, 16, 16);
	}
	self thread function_39072821();
}

/*
	Name: function_969fe47
	Namespace: namespace_646f304f
	Checksum: 0xFF06363A
	Offset: 0x3660
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_969fe47()
{
	self namespace_ad23e503::function_c35e6aab("in_playable_space");
	var_85919dec = namespace_84970cc4::function_47d18840(level.var_844375bd);
	var_85919dec namespace_cc27597::function_43718187("cin_sgen_18_01_pallasfight_aie_jumpdown_robot01", self);
	self namespace_ad23e503::function_74d6b22f("in_playable_space");
}

/*
	Name: function_39072821
	Namespace: namespace_646f304f
	Checksum: 0x1138FDF8
	Offset: 0x36F0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_39072821()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("tower_three_destroyed");
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_3");
	if(GetTime() < level.var_94d58561)
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "run");
	}
	else
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
	}
}

/*
	Name: function_4ef8cf79
	Namespace: namespace_646f304f
	Checksum: 0x22E22857
	Offset: 0x37B0
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_4ef8cf79()
{
	var_be31aa9a = function_6ada35ba("boss_fight_lift", "targetname");
	var_be31aa9a function_b0b70abb(1);
	var_be31aa9a.var_b2ce92e0 = [];
	var_be31aa9a.var_b2ce92e0["front"] = function_6ada35ba("pallas_lift_front", "targetname");
	var_be31aa9a.var_b2ce92e0["front"].var_d51654a4 = "close";
	var_be31aa9a.var_b2ce92e0["back"] = function_6ada35ba("pallas_lift_back", "targetname");
	var_be31aa9a.var_b2ce92e0["back"].var_d51654a4 = "close";
	namespace_84970cc4::function_eaab05dc(var_be31aa9a.var_b2ce92e0, &function_37f7858a, var_be31aa9a);
	var_be31aa9a.var_b2ce92e0["front"] namespace_71e9cb84::function_74d6b22f("sm_elevator_door_state", 1);
	var_be31aa9a.var_b2ce92e0["back"] namespace_71e9cb84::function_74d6b22f("sm_elevator_door_state", 2);
}

/*
	Name: function_6e72c0ab
	Namespace: namespace_646f304f
	Checksum: 0xB7E55B32
	Offset: 0x3978
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_6e72c0ab(var_19321990, var_d51654a4)
{
	var_be31aa9a = function_6ada35ba("boss_fight_lift", "targetname");
	if(!var_be31aa9a.var_b2ce92e0[var_19321990].var_d51654a4 === var_d51654a4)
	{
		var_be31aa9a.var_b2ce92e0[var_19321990].var_d51654a4 = var_d51654a4;
		var_be31aa9a.var_b2ce92e0[var_19321990] function_52fddbd0();
		var_c49c82b9 = 150;
		if(var_d51654a4 === "open")
		{
			var_c49c82b9 = var_c49c82b9 * -1;
		}
		var_be31aa9a.var_b2ce92e0[var_19321990] function_8bdea13c(var_c49c82b9, 3.947368, 3.947368 * 0.1, 3.947368 * 0.25);
		if(var_d51654a4 == "open")
		{
			var_be31aa9a.var_b2ce92e0[var_19321990] function_921a1574("veh_lift_doors_open");
		}
		else
		{
			var_be31aa9a.var_b2ce92e0[var_19321990] function_921a1574("veh_lift_doors_close");
		}
		var_be31aa9a.var_b2ce92e0[var_19321990] waittill("hash_a21db68a");
		var_be31aa9a.var_b2ce92e0[var_19321990] function_37f7858a(var_be31aa9a);
		if(var_d51654a4 == "open")
		{
			level namespace_ad23e503::function_74d6b22f("pallas_lift_" + var_19321990 + "_open");
		}
		else
		{
			level namespace_ad23e503::function_9d134160("pallas_lift_" + var_19321990 + "_open");
		}
	}
}

/*
	Name: function_fe851f75
	Namespace: namespace_646f304f
	Checksum: 0xFE38FC73
	Offset: 0x3BE0
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_fe851f75(var_d51654a4)
{
	var_be31aa9a = function_6ada35ba("boss_fight_lift", "targetname");
	if(!var_be31aa9a.var_631a2015["left"].var_d51654a4 === var_d51654a4)
	{
		foreach(var_b018a7fa in var_be31aa9a.var_631a2015)
		{
			var_42c0d741 = var_b018a7fa.var_bad30b66;
			if(var_d51654a4 == "close")
			{
				var_42c0d741 = var_42c0d741 * -1;
			}
			var_b018a7fa.var_d51654a4 = var_d51654a4;
			var_b018a7fa function_a96a2721(var_b018a7fa.var_722885f3 + var_42c0d741, 3.947368, 3.947368 * 0.1, 3.947368 * 0.25);
		}
	}
}

/*
	Name: function_aab7d2d8
	Namespace: namespace_646f304f
	Checksum: 0xC993075
	Offset: 0x3D68
	Size: 0x2AB
	Parameters: 1
	Flags: None
*/
function function_aab7d2d8(var_d2f053ec)
{
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
	var_be31aa9a = function_6ada35ba("boss_fight_lift", "targetname");
	var_be31aa9a.var_d2f053ec = var_d2f053ec;
	var_d838974e = function_6ada35ba("decon_fx_origin", "targetname");
	var_d838974e function_37f7858a(var_be31aa9a);
	function_da6acfd2(level.var_c1aa5253["decon_mist"], var_d838974e, "tag_origin");
	var_d838974e function_921a1574("veh_lift_mist");
	var_c49c82b9 = 1750;
	if(var_d2f053ec == "down")
	{
		var_c49c82b9 = var_c49c82b9 * -1;
	}
	var_be31aa9a function_8bdea13c(var_c49c82b9, 48.61111, 48.61111 * 0.1, 48.61111 * 0.25);
	var_be31aa9a function_921a1574("veh_lift_start");
	var_be2ea7e9 = function_9b7fda5e("script_origin", var_be31aa9a.var_722885f3);
	var_be2ea7e9 function_37f7858a(var_be31aa9a);
	var_be2ea7e9 function_c2931a36("veh_lift_loop", 0.5);
	var_be31aa9a waittill("hash_a21db68a");
	var_be2ea7e9 function_eaa69754(0.5);
	var_be31aa9a function_921a1574("veh_lift_stop");
	var_be2ea7e9 function_dc8c8404();
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 0);
}

/*
	Name: function_2a8da7f0
	Namespace: namespace_646f304f
	Checksum: 0xA9804318
	Offset: 0x4020
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_2a8da7f0(var_c595a2bb)
{
	var_be31aa9a = function_6ada35ba("boss_fight_lift", "targetname");
	var_be31aa9a namespace_71e9cb84::function_74d6b22f("sm_elevator_shader", var_c595a2bb);
}

/*
	Name: function_dda88b2e
	Namespace: namespace_646f304f
	Checksum: 0xEF1F723
	Offset: 0x4088
	Size: 0x411
	Parameters: 0
	Flags: None
*/
function function_dda88b2e()
{
	function_6e72c0ab("front", "open");
	level namespace_ad23e503::function_1ab5ebec("weapons_research_vo_done");
	var_a3f7ac49 = function_6ada35ba("pallas_lift_trigger", "targetname");
	var_a3f7ac49 namespace_cba4cc55::function_36a6e271();
	level thread function_5ac1b440();
	namespace_84970cc4::function_966ecb29(function_99201f25("head_track_model", "targetname"), &namespace_82b91a51::function_6729b6ba, 0.05, "stop_head_track_player");
	namespace_84970cc4::function_eaab05dc(function_99201f25("pallas_lift_front_clip", "targetname"), &function_8bdea13c, 112, 0.05);
	function_6e72c0ab("front", "close");
	function_2a8da7f0(3);
	level thread namespace_d40478f6::function_874f01d();
	level notify("hash_f913de07");
	level notify("hash_38764c78");
	var_e3b635fb = function_b8494651("team3");
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_dc8c8404();
		}
	}
	level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 0);
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room_indicator", namespace_14b42b8a::function_7922262b("pallas_elevator_descent_objective"));
	namespace_82b91a51::function_67520c6a(3, undefined, &namespace_1d795d47::function_be8adfb8, "descent");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "pallas_monitors_state", 2);
	function_aab7d2d8("down");
	function_6e72c0ab("back", "open");
	level notify("hash_7336a7fd");
	var_4d26ec84 = function_fe0cfd2e("pallas_elevator_start", "script_noteworthy");
	foreach(var_90ca1fdd in var_4d26ec84)
	{
		function_47d28a09(var_90ca1fdd);
	}
}

/*
	Name: function_4aa034ed
	Namespace: namespace_646f304f
	Checksum: 0x364588DE
	Offset: 0x44A8
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_4aa034ed(var_74cd64bc)
{
	function_6e72c0ab("back", "close");
	if(!var_74cd64bc)
	{
		var_be31aa9a = function_6ada35ba("boss_fight_lift", "targetname");
		var_be31aa9a.var_722885f3 = var_be31aa9a.var_722885f3 + VectorScale((0, 0, 1), 1750);
	}
	function_6e72c0ab("front", "open");
}

/*
	Name: function_adabc4c6
	Namespace: namespace_646f304f
	Checksum: 0xCA0739F0
	Offset: 0x4560
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_adabc4c6()
{
	level endon("hash_343d5e2c");
	self namespace_82b91a51::function_564f2d81("damage", "death");
	level namespace_ad23e503::function_74d6b22f("pallas_ambush_over");
}

/*
	Name: function_87d6b629
	Namespace: namespace_646f304f
	Checksum: 0xB021DD22
	Offset: 0x45C0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_87d6b629()
{
	level endon("hash_343d5e2c");
	namespace_84970cc4::function_1d74ca91(level.var_2395e945, "weapon_fired");
	level namespace_ad23e503::function_74d6b22f("pallas_ambush_over");
}

/*
	Name: function_4ee50667
	Namespace: namespace_646f304f
	Checksum: 0x291AB547
	Offset: 0x4618
	Size: 0x25B
	Parameters: 1
	Flags: None
*/
function function_4ee50667(var_74cd64bc)
{
	if(!var_74cd64bc)
	{
		var_34a8e0f = function_6ada35ba("pallas_turret_enable_trigger", "targetname");
		var_34a8e0f.var_722885f3 = var_34a8e0f.var_722885f3 + VectorScale((0, -1, 0), 38);
		level waittill("hash_7336a7fd");
		namespace_4dbf3ae3::function_4ab4cb6(30, "pallas_turret_enable_trigger");
	}
	level thread namespace_d40478f6::function_973b77f9();
	namespace_9f824288::function_5d2cdd99();
	level thread function_87d6b629();
	level namespace_71b8dba1::function_13b3b16a("plyr_diaz_you_have_to_s_0", 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "pallas_monitors_state", 1);
	level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_i_am_willing_to_d_0");
	level thread namespace_d40478f6::function_ad14681b();
	level namespace_ad23e503::function_74d6b22f("pallas_ambush_over");
	level namespace_71b8dba1::function_a463d127("kane_the_only_way_to_disc_0", 2);
	level namespace_71b8dba1::function_a463d127("hend_kane_i_m_currently_0");
	level namespace_71b8dba1::function_a463d127("kane_access_the_primary_s_0");
	level namespace_71b8dba1::function_a463d127("hend_you_re_the_boss_lad_0");
	level notify("hash_e44856f1");
	wait(2);
	level namespace_71b8dba1::function_a463d127("kane_got_it_focus_fire_o_0", 2);
	level namespace_ad23e503::function_74d6b22f("pallas_intro_completed");
}

/*
	Name: function_ab0e4cbe
	Namespace: namespace_646f304f
	Checksum: 0x223686A8
	Offset: 0x4880
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_ab0e4cbe()
{
	level endon("hash_680acbda");
	while(1)
	{
		level waittill("hash_2693b45");
		for(var_c957f6b6 = 1; var_c957f6b6 <= 3; var_c957f6b6++)
		{
			var_41e38302 = function_6ada35ba("diaz_ball_" + var_c957f6b6, "targetname");
			var_41e38302 namespace_88a69b2f::function_d66e4079(&"tag_weakpoint");
		}
	}
}

/*
	Name: function_c88aca45
	Namespace: namespace_646f304f
	Checksum: 0xF56A4D27
	Offset: 0x4930
	Size: 0xF27
	Parameters: 0
	Flags: None
*/
function function_c88aca45()
{
	level endon("hash_a9dda4e1");
	level waittill("hash_e44856f1");
	var_53769c03 = function_99201f25("pallas_coolant_control", "targetname");
	foreach(var_4dbf3ae3 in var_53769c03)
	{
		var_4dbf3ae3 function_d5eb00e3(&"CP_MI_SING_SGEN_DESTROY_PILLAR");
		var_4dbf3ae3 function_175e6b8e(0);
	}
	level namespace_ad23e503::function_1ab5ebec("pallas_intro_completed");
	var_61b0688 = function_99201f25("diaz_tower_1", "targetname");
	while(1)
	{
		level thread function_6030416();
		var_fa72961f = function_26299103(var_61b0688.size);
		var_6c5a6b2b = var_61b0688[var_fa72961f];
		var_61b0688 = namespace_84970cc4::function_8fdf50c0(var_61b0688, var_fa72961f);
		var_6c5a6b2b function_8bdea13c(114, 4);
		function_fd4ba5e1(level.var_c1aa5253["coolant_tower_unleash"], var_6c5a6b2b.var_722885f3 + VectorScale((0, 0, -1), 250));
		var_6c5a6b2b function_921a1574("evt_pillar_move");
		switch(level.var_e16e585d)
		{
			case 0:
			{
				level thread namespace_71b8dba1::function_a463d127("kane_cooling_tower_one_ex_0", 1);
				break;
			}
			case 1:
			{
				level thread namespace_71b8dba1::function_a463d127("kane_cooling_tower_two_ex_0", 1);
				break;
			}
			case 2:
			{
				level thread namespace_71b8dba1::function_a463d127("kane_cooling_tower_three_0", 1);
				break;
			}
		}
		level thread function_e4f0c0ff();
		var_6c5a6b2b waittill("hash_a21db68a");
		level thread function_fede65f(var_6c5a6b2b.var_6604b19f);
		var_2815ed68 = function_99201f25("pallas_coolant_control", "targetname");
		var_2815ed68 = function_57efbe1(var_2815ed68, var_6c5a6b2b.var_722885f3);
		var_589f8c88 = var_2815ed68[0];
		level thread function_e1f7b7();
		level waittill("hash_6aac2089");
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "pallas_monitors_state", 2);
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_destroy_tower");
		level.var_e16e585d++;
		var_6c5a6b2b function_921a1574("evt_pillar_dest");
		function_37cbcf1a("evt_diaz_alarm", var_6c5a6b2b.var_722885f3);
		level thread function_47bd64a2();
		wait(5);
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "pallas_monitors_state", 0);
		level thread function_cc42d59b();
		var_589f8c88 function_175e6b8e(1);
		var_dabb26b1 = function_a8fb77bd();
		var_dabb26b1.var_722885f3 = var_589f8c88.var_722885f3 + VectorScale((0, 0, 1), 16);
		var_dabb26b1.var_6ab6f4fd = var_589f8c88.var_6ab6f4fd;
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_release_coolant", var_dabb26b1.var_722885f3);
		if(level.var_e16e585d == 3)
		{
			level thread namespace_cc27597::function_c35e6aab("cin_sgen_19_ghost_3rd_sh010");
		}
		var_fd110328 = 0;
		while(!var_fd110328)
		{
			var_589f8c88 waittill("hash_4dbf3ae3", var_6bfe1586);
			if(!var_6bfe1586 namespace_564407fb::function_38a9aff8())
			{
				var_fd110328 = 1;
				var_6bfe1586 function_83fd42b5();
			}
		}
		level notify("hash_2f3ced1f");
		switch(level.var_e16e585d)
		{
			case 1:
			{
				namespace_d5067552::function_2992720d("sm_stage1_flood", 0);
				namespace_d5067552::function_2992720d("sm_stage1");
				level thread namespace_d40478f6::function_3d554ba8();
				break;
			}
			case 2:
			{
				namespace_d5067552::function_2992720d("sm_stage2_flood", 0);
				namespace_d5067552::function_2992720d("sm_stage2");
				level thread namespace_d40478f6::function_af5cbae3();
				break;
			}
			case 3:
			{
				namespace_d5067552::function_2992720d("sm_stage3_flood", 0);
				level thread namespace_d40478f6::function_895a407a();
				break;
			}
		}
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_release_coolant", var_dabb26b1.var_722885f3);
		var_e7ffabc5 = namespace_14b42b8a::function_7922262b(var_589f8c88.var_b07228b6, "targetname");
		var_b788969e = var_589f8c88.var_caae374e + var_589f8c88.var_db7bb468;
		switch(level.var_e16e585d)
		{
			case 1:
			case 2:
			{
				level namespace_cc27597::function_43718187(var_b788969e + "_a", var_6bfe1586);
				level thread namespace_cc27597::function_43718187(var_b788969e + "_b", var_6bfe1586);
				break;
			}
			case 3:
			{
				level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_sgen_pallas_ai_tower_collapse_bundle", &function_c5372adb, "play");
				level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_sgen_pallas_ai_tower_collapse_bundle", &function_6610aebe, "init");
				level thread namespace_cc27597::function_43718187(var_b788969e + "_a", var_6bfe1586);
				level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_pallas_ai_tower_collapse_bundle");
				level waittill(var_b788969e + "_a_done");
				level namespace_ad23e503::function_74d6b22f("pallas_death");
				namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "pallas_monitors_state", 3);
				var_6bfe1586 function_4890e520();
				level thread namespace_1d795d47::function_be8adfb8("pallas_start");
				break;
			}
		}
		var_589f8c88 function_dc8c8404();
		level waittill("hash_804e608");
		level thread function_2532875f();
		var_a5c1510d = namespace_82b91a51::function_b9fd52a4("tag_origin", var_e7ffabc5.var_722885f3, var_e7ffabc5.var_6ab6f4fd);
		level namespace_cba4cc55::function_40077528(0.5, 1, var_a5c1510d.var_722885f3, 5000, 4, 7);
		level thread function_8c31d3c3(var_6c5a6b2b.var_6604b19f);
		wait(2);
		if(isdefined(var_6bfe1586))
		{
			var_6bfe1586 function_4890e520();
		}
		var_a5c1510d function_dc8c8404();
		switch(level.var_e16e585d)
		{
			case 1:
			{
				level notify("hash_2e9dd028");
				level namespace_71b8dba1::function_13b3b16a("plyr_grenade_detonated_0");
				level namespace_71b8dba1::function_a463d127("kane_it_worked_central_0");
				if(isdefined(level.var_e9d4a03e))
				{
					level thread [[level.var_e9d4a03e]](40, 40, 20);
				}
				if(isdefined(level.var_fd2d1f37))
				{
					level thread [[level.var_fd2d1f37]](150, 150, 150);
				}
				if(isdefined(level.var_27fb20e1))
				{
					level thread [[level.var_27fb20e1]](10);
				}
				break;
			}
			case 2:
			{
				level notify("hash_2e9dd028");
				level namespace_71b8dba1::function_13b3b16a("plyr_successful_detonatio_0");
				level namespace_71b8dba1::function_a463d127("kane_central_core_down_to_0");
				namespace_80983c42::function_80983c42("light_sgen_palas_em");
				var_419151a0 = namespace_14b42b8a::function_7922262b("hendrick_console_hack");
				if(isdefined(level.var_e9d4a03e))
				{
					level thread [[level.var_e9d4a03e]](25, 50, 25);
				}
				if(isdefined(level.var_fd2d1f37))
				{
					level thread [[level.var_fd2d1f37]](175, 175, 175);
				}
				if(isdefined(level.var_27fb20e1))
				{
					level thread [[level.var_27fb20e1]](15);
				}
				if(!function_27c72c1b())
				{
					namespace_d0ef8521::function_74d6b22f("cp_level_sgen_protect_hendricks", var_419151a0.var_722885f3);
				}
				break;
			}
		}
		namespace_9f824288::function_5d2cdd99();
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "pallas_monitors_state", 1);
		wait(2);
		switch(level.var_e16e585d)
		{
			case 1:
			{
				namespace_d5067552::function_bae40a28("sm_stage2");
				break;
			}
			case 2:
			{
				level.var_e259308b = 0;
				namespace_d5067552::function_bae40a28("sm_stage3");
				level namespace_ad23e503::function_74d6b22f("core_two_destroyed");
				break;
			}
		}
		if(level.var_e16e585d == 1)
		{
			level namespace_71b8dba1::function_a463d127("kane_working_on_opening_c_0", 2);
			level namespace_71b8dba1::function_13b3b16a("plyr_hurry_up_kane_i_m_0", 3);
			function_75946123("sm_stage2", 4, 20);
		}
		else if(level.var_e16e585d == 2)
		{
			level namespace_71b8dba1::function_a463d127("kane_working_on_tower_thr_0");
			wait(20);
			switch(level.var_2395e945.size)
			{
				case 2:
				{
					var_995846e9 = 25;
					break;
				}
				case 3:
				{
					var_995846e9 = 30;
					break;
				}
				case 4:
				{
					var_995846e9 = 35;
					break;
				}
				case default:
				{
					var_995846e9 = 20;
					break;
				}
			}
			function_864a9c57("sm_stage3", var_995846e9, 30);
			level notify("hash_265b1313");
			level thread function_e8ee435e();
			namespace_82b91a51::function_c9aa1ff("all_suicide_bots_killed", 15);
			level namespace_ad23e503::function_74d6b22f("hendricks_attacked_done");
			if(!function_27c72c1b())
			{
				namespace_d0ef8521::function_31cd1834("cp_level_sgen_protect_hendricks");
			}
		}
	}
}

/*
	Name: function_47bd64a2
	Namespace: namespace_646f304f
	Checksum: 0x70E513B2
	Offset: 0x5860
	Size: 0x115
	Parameters: 0
	Flags: None
*/
function function_47bd64a2()
{
	switch(level.var_e16e585d)
	{
		case 1:
		{
			level namespace_71b8dba1::function_a463d127("kane_cooling_tower_one_of_0");
			break;
		}
		case 2:
		{
			level namespace_71b8dba1::function_a463d127("kane_cooling_tower_two_of_0");
			break;
		}
		case 3:
		{
			level.var_94d58561 = GetTime() + 30000;
			level namespace_ad23e503::function_74d6b22f("tower_three_destroyed");
			level namespace_71b8dba1::function_a463d127("kane_cooling_tower_three_1");
			level namespace_71b8dba1::function_a463d127("hend_this_better_not_kill_0");
			level namespace_71b8dba1::function_a463d127("kane_not_the_time_comman_0");
			namespace_80983c42::function_593e8a39("light_sgen_palas_em");
			break;
		}
	}
}

/*
	Name: function_75946123
	Namespace: namespace_646f304f
	Checksum: 0xC9457A23
	Offset: 0x5980
	Size: 0x8B
	Parameters: 3
	Flags: None
*/
function function_75946123(var_7dbfe5d9, var_9d16f6ba, var_637636ed)
{
	if(isdefined(var_637636ed))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(var_637636ed, "timeout");
	}
	namespace_d5067552::function_27bf2e8(var_7dbfe5d9, var_9d16f6ba);
}

/*
	Name: function_864a9c57
	Namespace: namespace_646f304f
	Checksum: 0xBD4EA210
	Offset: 0x5A18
	Size: 0x8B
	Parameters: 3
	Flags: None
*/
function function_864a9c57(var_7dbfe5d9, var_995846e9, var_637636ed)
{
	if(isdefined(var_637636ed))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(var_637636ed, "timeout");
	}
	namespace_d5067552::function_740ea7ff(var_7dbfe5d9, var_995846e9);
}

/*
	Name: function_e1f7b7
	Namespace: namespace_646f304f
	Checksum: 0x585CCF2C
	Offset: 0x5AB0
	Size: 0xED
	Parameters: 0
	Flags: None
*/
function function_e1f7b7()
{
	level endon("hash_2f3ced1f");
	switch(level.var_e16e585d)
	{
		case 0:
		{
			namespace_d5067552::function_27bf2e8("sm_stage1", 3);
			namespace_d5067552::function_bae40a28("sm_stage1_flood");
			break;
		}
		case 1:
		{
			namespace_d5067552::function_27bf2e8("sm_stage2", 3);
			namespace_d5067552::function_bae40a28("sm_stage2_flood");
			break;
		}
		case 2:
		{
			level waittill("hash_6aac2089");
			namespace_d5067552::function_2992720d("sm_stage3");
			namespace_d5067552::function_bae40a28("sm_stage3_flood");
			break;
		}
	}
}

/*
	Name: function_fede65f
	Namespace: namespace_646f304f
	Checksum: 0xAFEE5EE2
	Offset: 0x5BA8
	Size: 0x3F3
	Parameters: 1
	Flags: None
*/
function function_fede65f(var_45891e3b)
{
	var_45891e3b = function_b6b79a0(var_45891e3b);
	var_77224c8 = function_6ada35ba("diaz_ball_" + var_45891e3b, "targetname");
	var_77224c8 namespace_88a69b2f::function_8ee5a301(&"tag_weakpoint");
	var_f831d587 = 300 * level.var_2395e945.size;
	var_77224c8.var_3a90f16b = var_f831d587;
	var_77224c8 thread function_f63f5d7a();
	namespace_80983c42::function_80983c42("pallas_fight_coolant_tower_" + var_45891e3b);
	while(var_77224c8.var_3a90f16b >= var_f831d587 / 2)
	{
		var_77224c8 waittill("hash_f9348fda");
	}
	namespace_80983c42::function_80983c42("pallas_fight_dmg_1_tower_" + var_45891e3b);
	var_3cfc28cf = namespace_82b91a51::function_b9fd52a4("tag_origin", var_77224c8.var_722885f3, var_77224c8.var_6ab6f4fd);
	function_da6acfd2(level.var_c1aa5253["coolant_tower_damage_minor"], var_3cfc28cf, "tag_origin");
	if(var_77224c8.var_3a90f16b > 0)
	{
		var_77224c8 waittill("hash_128f8789");
	}
	var_77224c8 function_80765127();
	var_77224c8 namespace_88a69b2f::function_d66e4079(&"tag_weakpoint");
	switch(var_45891e3b)
	{
		case 1:
		{
			level thread namespace_cc27597::function_43718187("coolant_hose_03", "targetname");
			level namespace_71e9cb84::function_74d6b22f("tower_chunks2", 1);
			break;
		}
		case 2:
		{
			level thread namespace_cc27597::function_43718187("coolant_hose_01", "targetname");
			level namespace_71e9cb84::function_74d6b22f("tower_chunks1", 1);
			break;
		}
		case 3:
		{
			level thread namespace_cc27597::function_43718187("coolant_hose_05", "targetname");
			level namespace_71e9cb84::function_74d6b22f("tower_chunks3", 1);
			break;
		}
	}
	level namespace_cba4cc55::function_40077528(0.5, 1, var_77224c8.var_722885f3, 5000, 4, 7);
	namespace_80983c42::function_80983c42("pallas_fight_exp_tower_" + var_45891e3b);
	var_3cfc28cf function_dc8c8404();
	level notify("hash_6aac2089");
	var_3cfc28cf = namespace_82b91a51::function_b9fd52a4("tag_origin", var_77224c8.var_722885f3, var_77224c8.var_6ab6f4fd);
	function_da6acfd2(level.var_c1aa5253["coolant_tower_damage_major"], var_3cfc28cf, "tag_origin");
}

/*
	Name: function_f63f5d7a
	Namespace: namespace_646f304f
	Checksum: 0x3A0340C7
	Offset: 0x5FA8
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_f63f5d7a()
{
	self function_a9dcd549(8192);
	self function_8d63f8d0(1);
	self function_8dafb866();
	self.var_3e94206a = "axis";
	self namespace_71e9cb84::function_74d6b22f("cooling_tower_damage", 1);
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_destroy_tower", self.var_722885f3 + VectorScale((0, 0, 1), 18));
	while(self.var_3a90f16b > 0)
	{
		self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_102e3d58, var_dd89f865);
		function_fd4ba5e1(level.var_c1aa5253["weakspot_impact"], var_dd89f865, var_102e3d58 * -1);
		var_a0ad4f34 namespace_fc79db9f::function_debccd1a();
	}
	self namespace_71e9cb84::function_74d6b22f("cooling_tower_damage", 0);
	self function_a9dcd549(256);
	self function_8d63f8d0(0);
	self function_80765127();
	self.var_3e94206a = "none";
}

/*
	Name: function_4301ab5f
	Namespace: namespace_646f304f
	Checksum: 0xB85E6183
	Offset: 0x6170
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_4301ab5f()
{
	level endon("hash_eb30fd63");
	level endon("hash_265b1313");
	level.var_eb13b054 = [];
	level.var_2d3af18b = 0;
	level.var_e15d967a = 8 + level.var_2395e945.size * 2;
	var_cf1fb9af = 0;
	while(var_cf1fb9af < level.var_e15d967a)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < 2; var_c957f6b6++)
		{
			if(!function_5b49d38c(level.var_eb13b054[var_c957f6b6]))
			{
				var_d495f536 = function_99201f25("potential_hendricks_bot", "script_string");
				var_9b203de1 = function_e7bdc1a1(level.var_2fd26037.var_722885f3, var_d495f536);
				if(function_5b49d38c(var_9b203de1))
				{
					var_9b203de1.var_db7bb468 = undefined;
					level.var_eb13b054[var_c957f6b6] = var_9b203de1;
					var_9b203de1 thread function_b8eb0475(var_c957f6b6 + 1);
					var_cf1fb9af++;
					namespace_82b91a51::function_76f13293();
				}
			}
		}
		wait(0.5);
	}
}

/*
	Name: function_e8ee435e
	Namespace: namespace_646f304f
	Checksum: 0xB2BC20FB
	Offset: 0x6310
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_e8ee435e()
{
	foreach(var_9b203de1 in level.var_eb13b054)
	{
		if(function_5b49d38c(var_9b203de1))
		{
			var_9b203de1 waittill("hash_128f8789");
		}
	}
	wait(0.1);
	level notify("hash_e33ac8c");
}

/*
	Name: function_b8eb0475
	Namespace: namespace_646f304f
	Checksum: 0xFFBC0E93
	Offset: 0x63D0
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_b8eb0475(var_687222b4)
{
	self endon("hash_128f8789");
	if(function_27c72c1b())
	{
		return;
	}
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_3");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_ad23e503::function_1ab5ebec("in_playable_space");
	level thread namespace_cc27597::function_43718187("cin_sgen_18_01_pallasfight_vign_takedown_explode0" + var_687222b4, self);
	self waittill("hash_827e691d");
	level thread function_f9909efe();
	switch(level.var_2395e945.size)
	{
		case 2:
		{
			wait(5);
			break;
		}
		case 3:
		case 4:
		{
			wait(3);
			break;
		}
		case default:
		{
			wait(7);
			break;
		}
	}
	level thread namespace_cc27597::function_fcf56ab5("cin_sgen_18_01_pallasfight_vign_takedown_explode0" + var_687222b4);
	self namespace_d84e54db::function_ceb883cd("rogue_force_explosion", 1);
	level thread function_5eceee36();
}

/*
	Name: function_5eceee36
	Namespace: namespace_646f304f
	Checksum: 0xBEBCCB52
	Offset: 0x6550
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_5eceee36()
{
	level.var_2d3af18b++;
	switch(level.var_2d3af18b)
	{
		case 1:
		{
			level namespace_71e9cb84::function_331efedc("observation_deck_destroy");
			level namespace_71b8dba1::function_a463d127("hend_shit_kane_hurry_t_0", 1);
			break;
		}
		case 2:
		{
			level namespace_71b8dba1::function_a463d127("hend_gimme_a_hand_i_got_0");
			break;
		}
		case 3:
		{
			level namespace_71e9cb84::function_331efedc("observation_deck_destroy");
			level namespace_71b8dba1::function_a463d127("hend_i_m_getting_torn_up_0", 1);
			break;
		}
		case 4:
		{
			level namespace_71b8dba1::function_a463d127("hend_robots_overtaking_my_0");
			break;
		}
		case 5:
		{
			level thread function_c79b403e();
			break;
		}
	}
}

/*
	Name: function_c79b403e
	Namespace: namespace_646f304f
	Checksum: 0x2C8BBF3F
	Offset: 0x6678
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_c79b403e()
{
	level namespace_71e9cb84::function_331efedc("observation_deck_destroy", 1);
	var_35925132 = namespace_14b42b8a::function_7922262b("hendrick_console_hack", "targetname");
	var_35925132 thread namespace_cc27597::function_fcf56ab5("cin_sgen_18_01_pallasfight_vign_controls_hendricks_active");
	wait(0.05);
	level.var_2fd26037 namespace_82b91a51::function_4b741fdc();
	level.var_2fd26037 function_c3945cd5(level.var_2fd26037.var_3a90f16b, level.var_2fd26037.var_722885f3);
	wait(3.5);
	namespace_82b91a51::function_207f8667(&"CP_MI_SING_SGEN_HENDRICKS_KILLED");
}

/*
	Name: function_f0f76126
	Namespace: namespace_646f304f
	Checksum: 0x3D55CA4E
	Offset: 0x6768
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f0f76126()
{
	self waittill("hash_128f8789");
	level.var_9945a95d++;
	if(level.var_9945a95d == 8)
	{
		namespace_d5067552::function_bae40a28("sm_stage1");
	}
}

/*
	Name: function_e4f0c0ff
	Namespace: namespace_646f304f
	Checksum: 0xF9CA57CE
	Offset: 0x67B8
	Size: 0xED
	Parameters: 0
	Flags: None
*/
function function_e4f0c0ff()
{
	level endon("hash_6aac2089");
	wait(function_72a94f05(10, 15));
	switch(level.var_e16e585d)
	{
		case 0:
		{
			level namespace_71b8dba1::function_a463d127("hend_focus_fire_take_ou_0");
			wait(function_72a94f05(15, 20));
			level namespace_71b8dba1::function_a463d127("hend_disable_that_tower_t_0");
			break;
		}
		case 1:
		{
			level namespace_71b8dba1::function_a463d127("kane_we_need_to_bring_dow_0");
			break;
		}
		case 2:
		{
			level namespace_71b8dba1::function_a463d127("kane_take_the_tower_offli_0");
			break;
		}
	}
}

/*
	Name: function_cc42d59b
	Namespace: namespace_646f304f
	Checksum: 0x6D350E45
	Offset: 0x68B0
	Size: 0x205
	Parameters: 0
	Flags: None
*/
function function_cc42d59b()
{
	level endon("hash_2f3ced1f");
	wait(function_72a94f05(7, 10));
	switch(level.var_e16e585d)
	{
		case 1:
		{
			level namespace_71b8dba1::function_a463d127("kane_you_ve_got_to_get_cl_0");
			wait(function_72a94f05(8, 12));
			level namespace_71b8dba1::function_a463d127("kane_come_on_climb_the_c_0");
			wait(function_72a94f05(8, 12));
			level namespace_71b8dba1::function_a463d127("hend_you_heard_her_get_o_0");
			wait(function_72a94f05(8, 12));
			level namespace_71b8dba1::function_a463d127("hend_climb_the_tower_hi_0");
			break;
		}
		case 2:
		{
			level namespace_71b8dba1::function_a463d127("hend_get_another_grenade_0");
			wait(function_72a94f05(12, 16));
			level namespace_71b8dba1::function_a463d127("hend_we_re_running_out_of_2");
			break;
		}
		case 3:
		{
			level namespace_71b8dba1::function_a463d127("hend_get_on_that_tower_an_0");
			wait(function_72a94f05(12, 16));
			level namespace_71b8dba1::function_a463d127("kane_get_a_grenade_in_the_0");
			wait(function_72a94f05(12, 16));
			level namespace_71b8dba1::function_a463d127("kane_blow_the_damn_core_0");
			break;
		}
	}
}

/*
	Name: function_6030416
	Namespace: namespace_646f304f
	Checksum: 0x30A9C4FC
	Offset: 0x6AC0
	Size: 0x40D
	Parameters: 0
	Flags: None
*/
function function_6030416()
{
	level endon("hash_2f3ced1f");
	wait(function_72a94f05(3, 5));
	switch(level.var_e16e585d)
	{
		case 0:
		{
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_listen_only_to_the_s_0");
			wait(function_72a94f05(3, 5));
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_let_your_mind_relax_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_let_your_thoughts_dr_0");
			wait(function_72a94f05(5, 8));
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_let_the_bad_memories_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_let_peace_be_upon_yo_0");
			break;
		}
		case 1:
		{
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_surrender_yourself_t_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_let_them_wash_over_y_0");
			wait(function_72a94f05(5, 8));
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_imagine_somewhere_ca_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_imagine_somewhere_sa_0");
			wait(function_72a94f05(5, 8));
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_imagine_yourself_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_you_are_standing_in_0");
			wait(function_72a94f05(5, 8));
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_the_trees_around_you_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_pure_white_snowflake_0");
			break;
		}
		case 2:
		{
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_you_can_feel_them_me_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_you_are_not_cold_0");
			wait(function_72a94f05(3, 5));
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_it_cannot_overcome_t_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_can_you_hear_it_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_can_you_hear_it_0");
			wait(function_72a94f05(3, 5));
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_do_you_hear_it_slowi_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_you_are_slowing_it_0");
			wait(function_72a94f05(3, 5));
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_you_are_in_control_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_calm_0");
			level.var_7f246cd7 namespace_71b8dba1::function_81141386("diaz_at_peace_0");
			break;
		}
	}
}

/*
	Name: function_f9909efe
	Namespace: namespace_646f304f
	Checksum: 0xEC0D4BFA
	Offset: 0x6ED8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f9909efe()
{
	if(!isdefined(level.var_4a6cbb96))
	{
		level.var_4a6cbb96 = 0;
	}
	if(!level.var_4a6cbb96)
	{
		level.var_4a6cbb96 = 1;
		level namespace_71b8dba1::function_a463d127("hend_hey_i_got_grunts_c_0");
	}
}

/*
	Name: function_2532875f
	Namespace: namespace_646f304f
	Checksum: 0xBAA5781
	Offset: 0x6F38
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_2532875f(var_eeda4487)
{
	if(!isdefined(var_eeda4487))
	{
		var_eeda4487 = 0;
	}
	var_961d572f = function_b8494651("team3");
	foreach(var_e98b4e9b in var_961d572f)
	{
		if(function_5b49d38c(var_e98b4e9b))
		{
			var_e98b4e9b function_c3945cd5(1000, var_e98b4e9b.var_722885f3);
			if(!var_eeda4487)
			{
				wait(function_72a94f05(0.05, 0.2));
			}
		}
	}
}

/*
	Name: function_7362d6c4
	Namespace: namespace_646f304f
	Checksum: 0x1A0FA461
	Offset: 0x7058
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function function_7362d6c4()
{
	level thread function_3452571c();
	for(var_4f8217af = 1; var_4f8217af <= 8; var_4f8217af++)
	{
		level namespace_cc27597::function_c35e6aab("coolant_hose_0" + var_4f8217af, "targetname");
	}
}

/*
	Name: function_d6b86f3d
	Namespace: namespace_646f304f
	Checksum: 0xC5287B7D
	Offset: 0x70D0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d6b86f3d()
{
	level waittill("hash_d6b86f3d");
	level thread namespace_cc27597::function_43718187("coolant_hose_02", "targetname");
	level thread namespace_cc27597::function_43718187("coolant_hose_04", "targetname");
	level thread namespace_cc27597::function_43718187("coolant_hose_06", "targetname");
	level thread namespace_cc27597::function_43718187("coolant_hose_07", "targetname");
	level thread namespace_cc27597::function_43718187("coolant_hose_08", "targetname");
}

/*
	Name: function_3452571c
	Namespace: namespace_646f304f
	Checksum: 0x9EE197D2
	Offset: 0x71B0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3452571c()
{
	var_363ca6bb = function_99201f25("pallas_glass_break_whole", "script_noteworthy");
	namespace_84970cc4::function_eaab05dc(var_363ca6bb, &function_50ccee8d);
}

/*
	Name: function_8c31d3c3
	Namespace: namespace_646f304f
	Checksum: 0x18D08F05
	Offset: 0x7210
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_8c31d3c3(var_7d1d4eb6)
{
	var_7d1d4eb6 = function_b6b79a0(var_7d1d4eb6);
	switch(var_7d1d4eb6)
	{
		case 1:
		{
			var_378eee5b = function_6ada35ba("pallas_glass_break_1", "targetname");
			break;
		}
		case 2:
		{
			var_378eee5b = function_6ada35ba("pallas_glass_break_3", "targetname");
			break;
		}
		case default:
		{
			var_378eee5b = function_6ada35ba("pallas_glass_break_2", "targetname");
			break;
		}
	}
	var_378eee5b function_48f26766();
}

/*
	Name: function_efa6b6f5
	Namespace: namespace_646f304f
	Checksum: 0x22B1F341
	Offset: 0x7308
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_efa6b6f5(var_cd69a81f)
{
	var_cd69a81f waittill("hash_128f8789");
	self function_dc8c8404();
}

/*
	Name: function_eea8b6a8
	Namespace: namespace_646f304f
	Checksum: 0x4EF627FF
	Offset: 0x7340
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_eea8b6a8()
{
	self endon("hash_128f8789");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(function_cb3d1c9b(self.var_722885f3, var_5dc5e20a.var_722885f3) < 250000)
			{
				self notify("hash_43dfea79");
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_ad61b905
	Namespace: namespace_646f304f
	Checksum: 0xAEBB954D
	Offset: 0x7420
	Size: 0x157
	Parameters: 2
	Flags: None
*/
function function_ad61b905(var_d72a94c2, var_ef342c6d)
{
	level endon("hash_eb30fd63");
	var_4dbf3ae3 = function_6ada35ba(var_d72a94c2, "targetname");
	while(1)
	{
		var_71d7943b = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_32fa5072(var_4dbf3ae3))
			{
				var_71d7943b = var_71d7943b + 1;
			}
		}
		if(var_71d7943b > 0)
		{
			namespace_d5067552::function_bae40a28(var_ef342c6d);
		}
		else if(namespace_d5067552::function_56a7483f(var_ef342c6d))
		{
			namespace_d5067552::function_54bdb053(var_ef342c6d);
		}
		wait(0.5);
	}
}

