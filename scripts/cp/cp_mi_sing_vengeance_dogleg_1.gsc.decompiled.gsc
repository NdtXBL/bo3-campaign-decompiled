#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_accolades;
#using scripts\cp\cp_mi_sing_vengeance_quadtank_alley;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_level;
#using scripts\shared\stealth_status;
#using scripts\shared\stealth_vo;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_445ee992;

/*
	Name: function_36184f5d
	Namespace: namespace_445ee992
	Checksum: 0xA9C2F9A2
	Offset: 0x1308
	Size: 0x24B
	Parameters: 2
	Flags: None
*/
function function_36184f5d(var_b04bc952, var_74cd64bc)
{
	level thread function_ced218b0();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_63b4601c::function_b87f9c13(var_b04bc952, var_74cd64bc);
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
		level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
		level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
		level.var_2fd26037.var_7dfaf62 = 32;
		level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3);
		namespace_63b4601c::function_e00864bd("dogleg_1_umbra_gate", 1, "dogleg_1_gate");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_safehouse");
		namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_safehouse");
		level thread namespace_9fd035::function_dad71f51("tension_loop_2");
		level.var_4c62d05f = level.var_2395e945[0];
		namespace_cc27597::function_c35e6aab("cin_ven_04_10_cafedoor_1st_sh010");
		namespace_82b91a51::function_d8eaed3d(3);
		namespace_d7916d65::function_a2995f22();
	}
	namespace_63b4601c::function_4e8207e9("dogleg_1");
	function_803e1db9(var_b04bc952, var_74cd64bc);
}

/*
	Name: function_803e1db9
	Namespace: namespace_445ee992
	Checksum: 0xFBD9BF4B
	Offset: 0x1560
	Size: 0x359
	Parameters: 2
	Flags: None
*/
function function_803e1db9(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_74d6b22f("dogleg_1_begin");
	level thread function_254de1e5();
	function_e17e849c();
	namespace_ad06727a::function_11424fa();
	namespace_523da15d::function_e887345e();
	namespace_523da15d::function_eda4634d();
	level thread function_7272ed9d();
	level thread function_4326839a();
	level.var_831ab6b2 = namespace_14b42b8a::function_7922262b("quadtank_alley_intro_org");
	level.var_831ab6b2 namespace_cc27597::function_c35e6aab("cin_ven_04_30_quadalleydoor_1st");
	level thread function_6236563e();
	level.var_cd03373 = namespace_2f06d687::function_22356ba7("dogleg_1_patroller_spawners", &namespace_63b4601c::function_b62b56ba);
	level thread function_6c25c493(var_74cd64bc);
	level thread function_1909c582();
	level thread function_6fdd2184();
	level thread function_3c2b6e87();
	level thread function_842de716();
	level.var_ecc18bcf = namespace_14b42b8a::function_7922262b("lineup_kill_scripted_node", "targetname");
	level.var_ecc18bcf thread namespace_cc27597::function_c35e6aab("cin_ven_03_20_storelineup_vign_exit");
	var_600ff27c = function_6ada35ba("storelineup_door3_clip", "targetname");
	if(isdefined(var_600ff27c))
	{
		var_600ff27c function_4083a98e();
		var_600ff27c function_14c24d9d();
	}
	var_eac6b54b = function_6ada35ba("storelineup_door3_open_clip", "targetname");
	var_eac6b54b function_dc8c8404();
	var_cbf69fd2 = function_99201f25("dogleg_1_stealth_checkpoint_trigger", "targetname");
	foreach(var_4dbf3ae3 in var_cbf69fd2)
	{
		var_4dbf3ae3 thread namespace_63b4601c::function_f9c94344();
	}
}

/*
	Name: function_254de1e5
	Namespace: namespace_445ee992
	Checksum: 0xDFD89CF4
	Offset: 0x18C8
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_254de1e5()
{
	var_3ced446f = function_b8494651("allies");
	foreach(var_157acf1b in var_3ced446f)
	{
		if(isdefined(var_157acf1b.var_6319d77b))
		{
			var_157acf1b function_dc8c8404();
		}
	}
}

/*
	Name: function_e17e849c
	Namespace: namespace_445ee992
	Checksum: 0xCA4D83D7
	Offset: 0x1998
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_e17e849c()
{
	level.var_5abaf57 = namespace_14b42b8a::function_7922262b("dogleg_1_intro_org");
	namespace_63b4601c::function_ac2b4535("cin_ven_04_10_cafedoor_1st_sh100", "cafe_igc_teleport");
	level thread function_798b0fec();
	level thread function_d45f757d();
	if(isdefined(level.var_95299f90))
	{
		level thread [[level.var_95299f90]]();
	}
	level.var_5abaf57 thread namespace_cc27597::function_43718187("cin_ven_04_10_cafedoor_1st_sh010", level.var_4c62d05f);
	level.var_2fd26037 thread function_58b57a69();
	level waittill("hash_a60d391c");
	level thread function_668cc6df();
	level thread function_e9e34547();
	level waittill("hash_2b965a47");
	if(isdefined(level.var_63599d))
	{
		level thread [[level.var_63599d]]();
	}
	level thread namespace_9fd035::function_dad71f51("tension_loop_2");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_fd7fd40d();
	}
	namespace_82b91a51::function_a0938376();
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_fd7fd40d
	Namespace: namespace_445ee992
	Checksum: 0x7A9F8156
	Offset: 0x1BA0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_fd7fd40d()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self thread function_8e0d7da8();
	var_ca775902 = function_c4d5ec1f("ar_marksman_veng_hero_weap");
	if(!self function_2103ff4b(var_ca775902))
	{
		self function_860a040a(var_ca775902);
	}
	self function_9785d11(var_ca775902);
	self thread namespace_63b4601c::function_12a1b6a0();
}

/*
	Name: function_8e0d7da8
	Namespace: namespace_445ee992
	Checksum: 0x8431ECAA
	Offset: 0x1C60
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_8e0d7da8()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self function_3c3596e5();
	var_ca775902 = function_c4d5ec1f("ar_marksman_veng_hero_weap");
	wait(0.15);
	self function_859d37b8();
}

/*
	Name: function_798b0fec
	Namespace: namespace_445ee992
	Checksum: 0x10C77771
	Offset: 0x1CD8
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_798b0fec()
{
	level endon("hash_2b965a47");
	level namespace_71b8dba1::function_a463d127("tayr_you_don_t_understand_1", 0, "no_dni");
	level thread namespace_9fd035::function_862430bd();
	namespace_82b91a51::function_ef3f75eb("sndLRstop");
	level notify("hash_15e32f84");
	level.var_2fd26037 waittill("hash_a89f76ac");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_you_sold_us_out_you_0");
	level namespace_71b8dba1::function_a463d127("tayr_i_told_the_truth_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("tayr_behind_a_slick_corpo_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("tayr_experiments_that_wou_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("tayr_ask_yourself_who_s_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("tayr_the_people_who_survi_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("tayr_or_the_fucking_suits_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("tayr_the_immortals_built_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("tayr_maybe_they_want_reve_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("tayr_maybe_they_just_want_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("tayr_either_way_you_can_0", 0, "no_dni");
	level namespace_71b8dba1::function_a463d127("hend_taylor_taylor_0", 0, "no_dni");
	namespace_71b8dba1::function_13b3b16a("plyr_kane_how_the_hell_0");
}

/*
	Name: function_d45f757d
	Namespace: namespace_445ee992
	Checksum: 0xB1BC4303
	Offset: 0x1F58
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_d45f757d()
{
	level waittill("hash_73c7894d");
	var_58cff577 = function_6ada35ba("molotov_civilian", "targetname");
	if(isdefined(var_58cff577))
	{
		var_58cff577 thread namespace_63b4601c::function_f6af6062();
	}
	var_b2db52d7 = function_6ada35ba("molotov_civilian2", "targetname");
	if(isdefined(var_b2db52d7))
	{
		var_b2db52d7 thread namespace_63b4601c::function_f6af6062();
	}
	var_8cd8d86e = function_6ada35ba("molotov_civilian3", "targetname");
	if(isdefined(var_8cd8d86e))
	{
		var_8cd8d86e thread namespace_63b4601c::function_f6af6062();
	}
}

/*
	Name: function_842de716
	Namespace: namespace_445ee992
	Checksum: 0x8DA5B2D8
	Offset: 0x2068
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_842de716()
{
	var_a47f76cc = function_6ada35ba("dogleg_1_entrance_door_clip", "targetname");
	if(isdefined(var_a47f76cc))
	{
		var_a47f76cc function_422037f5();
		var_a47f76cc function_de8377bf();
		wait(0.05);
		var_a47f76cc function_dc8c8404();
	}
}

/*
	Name: function_7272ed9d
	Namespace: namespace_445ee992
	Checksum: 0x74E85E1A
	Offset: 0x2100
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_7272ed9d()
{
	var_e6aec0a = function_99201f25("killing_streets_lineup_kill_ai_blockers", "targetname");
	foreach(var_a3d46ee4 in var_e6aec0a)
	{
		var_a3d46ee4 function_422037f5();
		var_a3d46ee4 function_de8377bf();
		wait(0.05);
		var_a3d46ee4 function_dc8c8404();
	}
}

/*
	Name: function_58b57a69
	Namespace: namespace_445ee992
	Checksum: 0x83524E3C
	Offset: 0x21F8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_58b57a69()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_6f7b2095::function_54bdb053();
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self.var_7dfaf62 = 32;
	self function_169cc712(self.var_722885f3);
	self waittill("hash_8e639ede");
	self function_dc8c8404();
}

/*
	Name: function_4326839a
	Namespace: namespace_445ee992
	Checksum: 0x422D82A4
	Offset: 0x22C0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_4326839a()
{
	level.var_4326839a = namespace_2f06d687::function_22356ba7("dogleg_1_wasps", &function_b5dfff73);
	level.var_4843e321 = level.var_4326839a.size;
	namespace_523da15d::function_cae14a51();
}

/*
	Name: function_b5dfff73
	Namespace: namespace_445ee992
	Checksum: 0x1DD5D0B8
	Offset: 0x2320
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_b5dfff73()
{
	var_a896d541 = function_6ada35ba("dogleg_1_wasp_gv", "targetname");
	if(isdefined(var_a896d541))
	{
		self function_e11ce512();
		self function_fb5720f7();
		self function_169cc712(var_a896d541);
	}
}

/*
	Name: function_668cc6df
	Namespace: namespace_445ee992
	Checksum: 0x14F242F5
	Offset: 0x23A8
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_668cc6df()
{
	level.var_b4fee772 = namespace_14b42b8a::function_7922262b("cafe_execution_org");
	namespace_2f06d687::function_2b37a3c9("cafe_execution_civ_spawners", "script_noteworthy", &function_d6204097);
	namespace_2f06d687::function_2b37a3c9("cafe_execution_thug_spawners", "script_noteworthy", &function_631eb91d);
	namespace_2f06d687::function_2b37a3c9("cafe_execution_thug_spawners", "script_noteworthy", &function_1fef873);
	level.var_b4fee772 namespace_cc27597::function_c35e6aab("cin_ven_04_20_cafeexecution_vign_intro");
	while(!level namespace_cc27597::function_92591589("cin_ven_04_20_cafeexecution_vign_intro"))
	{
		wait(0.05);
	}
	level.var_f7d1a350 = function_6ada35ba("cafe_execution_54i_thug_a_ai", "targetname", 1);
	level.var_3848e5e1 = function_6ada35ba("cafe_execution_civ_01_ai", "targetname", 1);
	level.var_1836a85c = function_6ada35ba("cafe_execution_civ_02_ai", "targetname", 1);
	level.var_f6f4fc0b = function_6ada35ba("cafe_execution_civ_03_ai", "targetname", 1);
	level thread function_dbe2f523();
}

/*
	Name: function_d6204097
	Namespace: namespace_445ee992
	Checksum: 0x5EDD5EE4
	Offset: 0x2590
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_d6204097()
{
	self endon("hash_128f8789");
	self.var_3e94206a = "allies";
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("panic", 0);
	self.var_3a90f16b = 1;
	self namespace_82b91a51::function_564f2d81("try_to_escape", "kill_me");
	if(!level namespace_ad23e503::function_7922262b("cafe_execution_thug_dead"))
	{
		self.var_2dd707 = 1;
		self.var_eddbd1e2 = 1;
		self.var_bab9655e = 1;
		self function_2992720d();
	}
	else
	{
		self function_470f7e4c();
		self.var_8aa848ca = 1;
		self namespace_d84e54db::function_c9e45d52(0);
		self namespace_d84e54db::function_b4f5e3b9(0);
		self namespace_1fb6a2e5::function_43718187(self.var_a33b36db, level.var_b4fee772.var_722885f3, level.var_b4fee772.var_6ab6f4fd);
		if(isdefined(self.var_b07228b6))
		{
			var_90ca1fdd = function_b4cb3503(self.var_b07228b6, "targetname");
			self thread namespace_63b4601c::function_3d5f97bd(var_90ca1fdd);
		}
		self namespace_d84e54db::function_ceb883cd("panic", 1);
	}
}

/*
	Name: function_631eb91d
	Namespace: namespace_445ee992
	Checksum: 0xD48AF6CE
	Offset: 0x27A8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_631eb91d()
{
	self endon("hash_128f8789");
	self waittill("hash_78a7a5b9");
	level.var_b4fee772 namespace_cc27597::function_43718187("cin_ven_04_20_cafeexecution_vign_intro");
}

/*
	Name: function_1fef873
	Namespace: namespace_445ee992
	Checksum: 0x6FF80127
	Offset: 0x27F0
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_1fef873()
{
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("cafe_execution_thug_dead");
	for(var_c957f6b6 = 1; var_c957f6b6 < 6; var_c957f6b6++)
	{
		var_6b45b25e = function_6ada35ba("cafe_execution_civ_0" + var_c957f6b6 + "_ai", "targetname");
		if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e))
		{
			var_6b45b25e notify("hash_465046de");
		}
	}
}

/*
	Name: function_dbe2f523
	Namespace: namespace_445ee992
	Checksum: 0xDA523C9D
	Offset: 0x28C0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_dbe2f523()
{
	level.var_f7d1a350 endon("hash_128f8789");
	level.var_3848e5e1 endon("hash_128f8789");
	level.var_1836a85c endon("hash_128f8789");
	level.var_f6f4fc0b endon("hash_128f8789");
	level.var_f7d1a350 endon("hash_78a7a5b9");
	level.var_f7d1a350 endon("hash_da6a4775");
	var_4dbf3ae3 = function_6ada35ba("cafeexecution_vign_vo_trigger", "targetname");
	var_4dbf3ae3 waittill("hash_4dbf3ae3");
	level.var_f7d1a350 namespace_63b4601c::function_5fbec645("ffim1_all_your_money_won_t_1");
	wait(0.5);
	level.var_f7d1a350 namespace_63b4601c::function_5fbec645("ffim2_laughter_2");
	wait(0.5);
	level.var_3848e5e1 namespace_63b4601c::function_5fbec645("mciv_stoooop_noooooo_0");
	wait(1);
	level.var_1836a85c namespace_63b4601c::function_5fbec645("mciv_let_me_go_please_0");
	wait(0.5);
	level.var_f7d1a350 namespace_63b4601c::function_5fbec645("ffim3_laughter_3");
}

/*
	Name: function_ced218b0
	Namespace: namespace_445ee992
	Checksum: 0x864D161F
	Offset: 0x2A28
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_ced218b0()
{
	level.var_914326f9 = namespace_14b42b8a::function_7922262b("cafe_burning_org");
	namespace_2f06d687::function_2b37a3c9("cafe_burning_54i_thug_a", "targetname", &function_8b8b9516);
	namespace_2f06d687::function_2b37a3c9("cafe_burning_54i_thug_b", "targetname", &function_97ac3293);
	namespace_2f06d687::function_2b37a3c9("cafe_burning_civ_01", "targetname", &function_8ac1fffe);
	namespace_2f06d687::function_2b37a3c9("cafe_burning_civ_02", "targetname", &function_8ac1fffe);
	namespace_2f06d687::function_2b37a3c9("cafe_burning_civ_03", "targetname", &function_8ac1fffe);
	namespace_cc27597::function_8f9f34e0("cin_ven_04_20_cafeburning_vign_loop", &function_924af258, "init", 1);
	level.var_914326f9 namespace_cc27597::function_c35e6aab("cin_ven_04_20_cafeburning_vign_loop");
}

/*
	Name: function_e9e34547
	Namespace: namespace_445ee992
	Checksum: 0x8B9160FB
	Offset: 0x2BA0
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_e9e34547()
{
	namespace_cc27597::function_8f9f34e0("cin_ven_04_20_cafeburning_vign_loop", &function_924af258, "play");
	level.var_914326f9 thread namespace_cc27597::function_43718187("cin_ven_04_20_cafeburning_vign_loop");
	wait(1);
	level.var_b6fadac7 = function_6ada35ba("cafe_burning_54i_thug_a_ai", "targetname", 1);
	level.var_2e6fdc0e = function_6ada35ba("cafe_burning_54i_thug_b_ai", "targetname", 1);
	level.var_3a5715c2 = function_6ada35ba("cafe_burning_civ_01_ai", "targetname", 1);
	level.var_4e5d9a0c = function_6ada35ba("cafe_burning_civ_02_ai", "targetname", 1);
	level.var_96a3037b = function_6ada35ba("cafe_burning_civ_03_ai", "targetname", 1);
	level thread function_558e4ac8();
	level.var_b6fadac7 thread namespace_63b4601c::function_394ba9b5(level.var_2e6fdc0e);
	level.var_2e6fdc0e thread namespace_63b4601c::function_394ba9b5(level.var_b6fadac7);
	level.var_b6fadac7 thread namespace_63b4601c::function_d468b73d("death", function_84970cc4(level.var_3a5715c2, level.var_96a3037b, level.var_4e5d9a0c), "cafe_burning_check_for_escape");
	var_7f22fa2d = [];
	var_7f22fa2d[0] = level.var_b6fadac7;
	var_7f22fa2d[1] = level.var_2e6fdc0e;
	level.var_3a5715c2 thread function_dc4e86b5(var_7f22fa2d);
	level.var_96a3037b thread function_dc4e86b5(var_7f22fa2d);
	level.var_4e5d9a0c thread function_dc4e86b5(var_7f22fa2d);
}

/*
	Name: function_558e4ac8
	Namespace: namespace_445ee992
	Checksum: 0x87FD3BC4
	Offset: 0x2E28
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_558e4ac8()
{
	level.var_b6fadac7 endon("hash_128f8789");
	level.var_2e6fdc0e endon("hash_128f8789");
	level.var_3a5715c2 endon("hash_128f8789");
	level.var_4e5d9a0c endon("hash_128f8789");
	level.var_96a3037b endon("hash_128f8789");
	level.var_b6fadac7 endon("hash_78a7a5b9");
	level.var_2e6fdc0e endon("hash_78a7a5b9");
	level.var_b6fadac7 endon("hash_da6a4775");
	level.var_2e6fdc0e endon("hash_da6a4775");
	var_4dbf3ae3 = function_6ada35ba("cafeburning_vign_vo_trigger", "targetname");
	var_4dbf3ae3 waittill("hash_4dbf3ae3");
	level.var_b6fadac7 namespace_63b4601c::function_5fbec645("ffim1_now_we_re_the_ones_w_1");
	wait(1);
	level.var_2e6fdc0e namespace_63b4601c::function_5fbec645("ffim2_laughter_3");
	wait(1);
	level.var_3a5715c2 namespace_63b4601c::function_5fbec645("mciv_no_please_noooooo_0");
	wait(1.5);
	level.var_96a3037b namespace_63b4601c::function_5fbec645("mciv_stop_i_have_childre_0");
	wait(0.5);
	level.var_b6fadac7 namespace_63b4601c::function_5fbec645("ffim1_your_children_will_j_0");
	wait(0.5);
	level.var_2e6fdc0e namespace_63b4601c::function_5fbec645("ffim3_laughter_3");
}

/*
	Name: function_924af258
	Namespace: namespace_445ee992
	Checksum: 0xFC07D4DA
	Offset: 0x2FE8
	Size: 0x121
	Parameters: 2
	Flags: None
*/
function function_924af258(var_c77d2837, var_fa34ed42)
{
	if(isdefined(var_fa34ed42))
	{
		foreach(var_a3d46ee4 in var_c77d2837)
		{
			var_a3d46ee4 function_50ccee8d();
		}
		break;
	}
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_a3d46ee4 function_48f26766();
	}
}

/*
	Name: function_8b8b9516
	Namespace: namespace_445ee992
	Checksum: 0x1234DC46
	Offset: 0x3118
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_8b8b9516()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("can_melee", 0);
	var_ccf9b73f = namespace_82b91a51::function_1b8c5958("p7_ven_gascan_static");
	var_ccf9b73f function_37f7858a(self, "tag_weapon_chest", (0, 0, 0), (0, 0, 0));
	self thread function_78c388c0(var_ccf9b73f);
	self thread namespace_63b4601c::function_57b69bd6(var_ccf9b73f);
	self waittill("hash_da6a4775");
	if(isdefined(self.var_e73d60ea) && self.var_e73d60ea)
	{
		return;
	}
	self function_470f7e4c();
}

/*
	Name: function_78c388c0
	Namespace: namespace_445ee992
	Checksum: 0xBBE243B
	Offset: 0x3208
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_78c388c0(var_ccf9b73f)
{
	function_3f42ba98(var_ccf9b73f);
}

/*
	Name: function_3f42ba98
	Namespace: namespace_445ee992
	Checksum: 0xF0057C6F
	Offset: 0x3238
	Size: 0x337
	Parameters: 1
	Flags: None
*/
function function_3f42ba98(var_ccf9b73f)
{
	self endon("hash_128f8789");
	self endon("hash_da6a4775");
	self endon("hash_78a7a5b9");
	while(1)
	{
		level waittill("hash_e239447e");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_bc36ca15");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_96344fac");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_7031d543");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_4a2f5ada");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_242ce071");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_fe2a6608");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_d827eb9f");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_b2257136");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_be9dc60a");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_e4a04073");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
		level waittill("hash_7298d138");
		function_da6acfd2(level.var_c1aa5253["fx_fuel_pour_far_ven"], var_ccf9b73f, "tag_fx");
	}
}

/*
	Name: function_97ac3293
	Namespace: namespace_445ee992
	Checksum: 0x8A90379F
	Offset: 0x3578
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_97ac3293()
{
	self endon("hash_128f8789");
	self thread function_d1ab4085();
	wait(0.2);
	self thread function_a44271e3();
	self namespace_82b91a51::function_5b7e3888("alert", "fake_alert");
	level notify("hash_f4512440");
	if(isdefined(self.var_e73d60ea) && self.var_e73d60ea)
	{
		return;
	}
	level.var_914326f9 thread namespace_cc27597::function_43718187("cin_ven_04_20_cafeburning_vign_main");
	self waittill("hash_fe8ef509");
	level namespace_ad23e503::function_74d6b22f("cafe_burning_match_thrown");
	self.var_bab9655e = 1;
}

/*
	Name: function_a44271e3
	Namespace: namespace_445ee992
	Checksum: 0xB6696FC3
	Offset: 0x3668
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_a44271e3()
{
	level endon("hash_e9ff59d5");
	while(function_5b49d38c(self))
	{
		var_dd18437 = function_6ada35ba("cafe_burning_flare", "targetname", 1);
		if(isdefined(var_dd18437))
		{
			break;
		}
		wait(0.05);
	}
	if(!function_5b49d38c(self) && !isdefined(var_dd18437))
	{
		level.var_914326f9 namespace_cc27597::function_fcf56ab5("cin_ven_04_20_cafeburning_vign_loop");
	}
	else
	{
		self thread namespace_63b4601c::function_1ed65aa(function_84970cc4(var_dd18437));
	}
}

/*
	Name: function_d1ab4085
	Namespace: namespace_445ee992
	Checksum: 0xB258248A
	Offset: 0x3760
	Size: 0x1D
	Parameters: 0
	Flags: None
*/
function function_d1ab4085()
{
	self waittill("hash_128f8789");
	level notify("hash_22b8c948");
}

/*
	Name: function_8ac1fffe
	Namespace: namespace_445ee992
	Checksum: 0x215B0036
	Offset: 0x3788
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function function_8ac1fffe()
{
	self endon("hash_128f8789");
	self.var_3e94206a = "allies";
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("panic", 0);
	self.var_3a90f16b = 1;
	self.var_7dfaf62 = 32;
	var_813fc428 = level namespace_82b91a51::function_45ce26d("cafeburning_flare_enemy_alert", "cafeburning_flare_enemy_dead");
	if(var_813fc428 == "cafeburning_flare_enemy_dead")
	{
		self function_470f7e4c();
		self.var_8aa848ca = 1;
		self namespace_d84e54db::function_c9e45d52(0);
		self namespace_d84e54db::function_b4f5e3b9(0);
		level.var_914326f9 namespace_cc27597::function_43718187(self.var_a33b36db);
		if(isdefined(self.var_b07228b6))
		{
			var_90ca1fdd = function_b4cb3503(self.var_b07228b6, "targetname");
			self thread namespace_63b4601c::function_3d5f97bd(var_90ca1fdd, undefined, undefined, 1024);
		}
		self namespace_d84e54db::function_ceb883cd("panic", 1);
	}
	else
	{
		self waittill("hash_fc14964f");
		function_37cbcf1a("evt_civ_group_burn", (21564, -86, 136));
		self namespace_63b4601c::function_f6af6062(0);
		self namespace_63b4601c::function_f6af6062(0);
		self namespace_63b4601c::function_f6af6062(0);
	}
}

/*
	Name: function_dc4e86b5
	Namespace: namespace_445ee992
	Checksum: 0x34BEDEE1
	Offset: 0x39D0
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_dc4e86b5(var_7f22fa2d)
{
	level endon("hash_e9ff59d5");
	level endon("hash_8a3b89d3");
	self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34);
	if(function_65f192a6(var_a0ad4f34))
	{
		foreach(var_6050ab17 in var_7f22fa2d)
		{
			if(isdefined(var_6050ab17))
			{
				var_6050ab17 thread namespace_ad45a419::function_959a64c9();
			}
		}
	}
}

/*
	Name: function_3c2b6e87
	Namespace: namespace_445ee992
	Checksum: 0xEF5E150B
	Offset: 0x3AC8
	Size: 0x5F3
	Parameters: 0
	Flags: None
*/
function function_3c2b6e87()
{
	level endon("hash_e9ff59d5");
	level.var_a5179e6a = namespace_14b42b8a::function_7922262b("cafe_molotov_org");
	namespace_2f06d687::function_2b37a3c9("cafe_molotov_civ_spawners", "script_noteworthy", &function_147bbbbf);
	var_932d1fc6 = [];
	var_932d1fc6[0] = namespace_2f06d687::function_7387a40a("cafe_molotov_thug_a", undefined, undefined, undefined, undefined, undefined, undefined, 1);
	var_932d1fc6[1] = namespace_82b91a51::function_1b8c5958("p7_emergency_flare");
	var_932d1fc6[2] = namespace_82b91a51::function_1b8c5958("p7_bottle_glass_liquor_03");
	var_932d1fc6[3] = namespace_82b91a51::function_1b8c5958("p7_bottle_glass_liquor_03");
	var_932d1fc6[4] = namespace_82b91a51::function_1b8c5958("p7_bottle_glass_liquor_03");
	var_932d1fc6[5] = namespace_82b91a51::function_1b8c5958("p7_bottle_glass_liquor_03");
	var_6b2e5977 = [];
	var_6b2e5977[0] = var_932d1fc6[1];
	var_6b2e5977[1] = var_932d1fc6[2];
	var_6b2e5977[2] = var_932d1fc6[3];
	var_6b2e5977[3] = var_932d1fc6[4];
	var_6b2e5977[4] = var_932d1fc6[5];
	wait(0.2);
	level.var_a5179e6a thread namespace_cc27597::function_43718187("cin_ven_04_20_cafemolotovflush_vign_intro", var_932d1fc6);
	wait(0.2);
	var_932d1fc6[0] thread namespace_63b4601c::function_7122594d(var_6b2e5977);
	wait(14);
	level.var_a5179e6a thread namespace_cc27597::function_43718187("cin_ven_04_20_cafemolotovflush_vign_civa");
	wait(0.05);
	var_6b45b25e = function_6ada35ba("cafe_molotov_civ_01_ai", "targetname");
	if(isdefined(var_6b45b25e))
	{
		var_6b45b25e thread namespace_63b4601c::function_f6af6062();
	}
	wait(function_72a94f05(4, 8));
	level.var_a5179e6a thread namespace_cc27597::function_43718187("cin_ven_04_20_cafemolotovflush_vign_civb");
	wait(0.05);
	var_6b45b25e = function_6ada35ba("cafe_molotov_civ_02_ai", "targetname");
	if(isdefined(var_6b45b25e))
	{
		var_6b45b25e thread namespace_63b4601c::function_f6af6062();
	}
	wait(function_72a94f05(4, 8));
	level.var_a5179e6a thread namespace_cc27597::function_43718187("cin_ven_04_20_cafemolotovflush_vign_civc");
	wait(0.05);
	var_6b45b25e = function_6ada35ba("cafe_molotov_civ_03_ai", "targetname");
	if(isdefined(var_6b45b25e))
	{
		var_6b45b25e thread namespace_63b4601c::function_f6af6062();
	}
	wait(function_72a94f05(4, 8));
	level.var_a5179e6a thread namespace_cc27597::function_43718187("cin_ven_04_20_cafemolotovflush_vign_civd");
	wait(0.05);
	var_6b45b25e = function_6ada35ba("cafe_molotov_civ_04_ai", "targetname");
	if(isdefined(var_6b45b25e))
	{
		var_6b45b25e thread namespace_63b4601c::function_f6af6062();
	}
	wait(function_72a94f05(4, 8));
	level.var_a5179e6a thread namespace_cc27597::function_43718187("cin_ven_04_20_cafemolotovflush_vign_cive");
	wait(0.05);
	var_6b45b25e = function_6ada35ba("cafe_molotov_civ_05_ai", "targetname");
	if(isdefined(var_6b45b25e))
	{
		var_6b45b25e thread namespace_63b4601c::function_f6af6062();
	}
	wait(function_72a94f05(4, 8));
	level.var_a5179e6a thread namespace_cc27597::function_43718187("cin_ven_04_20_cafemolotovflush_vign_civf");
	wait(0.05);
	var_6b45b25e = function_6ada35ba("cafe_molotov_civ_06_ai", "targetname");
	if(isdefined(var_6b45b25e))
	{
		var_6b45b25e thread namespace_63b4601c::function_f6af6062();
	}
	wait(function_72a94f05(4, 8));
	level.var_a5179e6a thread namespace_cc27597::function_43718187("cin_ven_04_20_cafemolotovflush_vign_civg");
	wait(0.05);
	var_6b45b25e = function_6ada35ba("cafe_molotov_civ_07_ai", "targetname");
	if(isdefined(var_6b45b25e))
	{
		var_6b45b25e thread namespace_63b4601c::function_f6af6062();
	}
}

/*
	Name: function_147bbbbf
	Namespace: namespace_445ee992
	Checksum: 0xB9E4998C
	Offset: 0x40C8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_147bbbbf()
{
	self endon("hash_128f8789");
	self.var_3e94206a = "allies";
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("panic", 0);
	self.var_3a90f16b = 1;
}

/*
	Name: function_6236563e
	Namespace: namespace_445ee992
	Checksum: 0x1C5807D
	Offset: 0x4150
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_6236563e()
{
	wait(3);
	var_4d665055 = namespace_14b42b8a::function_7922262b("goto_quadtank_alley_obj_org", "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_goto_quadtank_alley", var_4d665055);
	var_23b47afc = function_6ada35ba("quadtank_alley_intro_trigger", "script_noteworthy");
	var_23b47afc function_175e6b8e(0);
	var_813fc428 = level namespace_82b91a51::function_45ce26d("goto_quadtank_alley_trigger_touched", "stealth_discovered");
	if(var_813fc428 == "stealth_discovered")
	{
		namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_goto_quadtank_alley");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_clear_area");
		level namespace_ad23e503::function_d3de6822("stealth_discovered");
		namespace_d0ef8521::function_48f26766("cp_level_vengeance_goto_quadtank_alley");
		namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_clear_area");
		level namespace_ad23e503::function_1ab5ebec("goto_quadtank_alley_trigger_touched");
	}
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_goto_quadtank_alley");
	var_23b47afc function_175e6b8e(1);
	var_ca0e9b65 = namespace_82b91a51::function_14518e76(var_23b47afc, &"cp_prompt_enter_ven_gate", &"CP_MI_SING_VENGEANCE_HINT_OPEN", &function_9c72eea2);
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_open_quadtank_alley_menu");
	level thread namespace_63b4601c::function_8a63fd6b(var_23b47afc, undefined, "cp_level_vengeance_open_quadtank_alley_menu", "start_quadtank_alley_intro", "cp_level_vengeance_clear_area", var_ca0e9b65);
	level namespace_ad23e503::function_1ab5ebec("start_quadtank_alley_intro");
	var_ca0e9b65 namespace_a230c2b1::function_e54c54c3();
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_open_quadtank_alley_menu");
}

/*
	Name: function_9c72eea2
	Namespace: namespace_445ee992
	Checksum: 0xC64C4987
	Offset: 0x43F0
	Size: 0x27
	Parameters: 1
	Flags: None
*/
function function_9c72eea2(var_6bfe1586)
{
	level notify("hash_93d1a6c2");
	level.var_4c62d05f = var_6bfe1586;
}

/*
	Name: function_1909c582
	Namespace: namespace_445ee992
	Checksum: 0x50280DF1
	Offset: 0x4420
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_1909c582()
{
	level endon("hash_e9ff59d5");
	level namespace_ad23e503::function_1ab5ebec("stealth_combat");
	level.var_508337f6 = 1;
}

/*
	Name: function_6fdd2184
	Namespace: namespace_445ee992
	Checksum: 0x12D6626A
	Offset: 0x4460
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_6fdd2184()
{
	level endon("hash_e9ff59d5");
	level namespace_ad23e503::function_1ab5ebec("stealth_discovered");
	namespace_ad06727a::function_26f24c93(0);
	level thread namespace_63b4601c::function_80840124();
	level thread function_adb6f63(5);
	while(1)
	{
		var_35ef0ec1 = function_b8494651("axis");
		if(isdefined(var_35ef0ec1) && var_35ef0ec1.size <= 0 || !isdefined(var_35ef0ec1))
		{
			break;
		}
		else
		{
			wait(0.1);
		}
	}
	namespace_63b4601c::function_ee75acde("hend_that_s_the_last_of_0");
	level namespace_ad23e503::function_9d134160("stealth_combat");
	level namespace_ad23e503::function_9d134160("stealth_discovered");
}

/*
	Name: function_24a63cea
	Namespace: namespace_445ee992
	Checksum: 0xCA38F392
	Offset: 0x45A0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_24a63cea()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_66a618ee) && self.var_66a618ee)
	{
		self namespace_d84e54db::function_ceb883cd("sprint", 1);
	}
}

/*
	Name: function_8db83207
	Namespace: namespace_445ee992
	Checksum: 0xFEB8E2B6
	Offset: 0x45F0
	Size: 0x3DB
	Parameters: 4
	Flags: None
*/
function function_8db83207(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_74d6b22f("dogleg_1_end");
	level notify("hash_bab8795");
	level namespace_ad23e503::function_9d134160("combat_enemies_retreating");
	level function_e775c7d8();
	namespace_523da15d::function_a4b67c57();
	namespace_523da15d::function_82266abb();
	namespace_63b4601c::function_4e8207e9("dogleg_1", 0);
	if(!isdefined(var_74cd64bc) || (isdefined(var_74cd64bc) && var_74cd64bc == 0))
	{
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		namespace_63b4601c::function_ac2b4535("cin_ven_04_30_quadalleydoor_1st", "quadalleydoor_igc_teleport");
		namespace_2f06d687::function_2b37a3c9("quadteaser_qt", "script_noteworthy", &namespace_6f44bbbf::function_5c60b4ee);
		level thread namespace_6f44bbbf::function_32620a97();
		level thread namespace_6f44bbbf::function_323d0a39();
		level namespace_82b91a51::function_c9aa1ff("quadtank_alley_activated", 1);
		if(isdefined(level.var_552d576a))
		{
			level thread [[level.var_552d576a]]();
		}
		level.var_831ab6b2 thread namespace_cc27597::function_43718187("cin_ven_04_30_quadalleydoor_1st", level.var_4c62d05f);
		level waittill("hash_57cf6a02");
		var_7d044b82 = namespace_14b42b8a::function_7922262b("quad_alley_door_physics", "targetname");
		function_534b3cba(var_7d044b82.var_722885f3, 64, 48, 1);
	}
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_1st_sh010");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_3rd_sh020");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_3rd_sh030");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_3rd_sh040");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_3rd_sh050");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_3rd_sh060");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_3rd_sh070");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_3rd_sh080");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_3rd_sh090");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_04_10_cafedoor_1st_sh100");
}

/*
	Name: function_e775c7d8
	Namespace: namespace_445ee992
	Checksum: 0x70AE359F
	Offset: 0x49D8
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_e775c7d8()
{
	namespace_84970cc4::function_966ecb29(function_b8494651("axis"), &namespace_82b91a51::function_20ffc8ff);
	namespace_84970cc4::function_eaab05dc(function_bd90138e(), &function_dc8c8404);
	if(isdefined(level.var_4326839a))
	{
		foreach(var_6050ab17 in level.var_4326839a)
		{
			if(isdefined(var_6050ab17))
			{
				var_6050ab17 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_adb6f63
	Namespace: namespace_445ee992
	Checksum: 0x9A688757
	Offset: 0x4AF0
	Size: 0x28F
	Parameters: 1
	Flags: None
*/
function function_adb6f63(var_f02766b0)
{
	level endon("hash_e9ff59d5");
	if(!isdefined(var_f02766b0))
	{
		var_f02766b0 = 3;
	}
	while(1)
	{
		var_35ef0ec1 = function_b8494651("axis");
		if(isdefined(var_35ef0ec1) && var_35ef0ec1.size <= var_f02766b0)
		{
			foreach(var_6b45b25e in var_35ef0ec1)
			{
				if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e))
				{
					if(function_85e4c3b3(var_6b45b25e))
					{
						var_fea4c4ed = namespace_14b42b8a::function_7faf4c39("dogleg_1_wasp_retreat_nodes", "targetname");
						var_90ca1fdd = namespace_84970cc4::function_47d18840(var_fea4c4ed);
						var_6b45b25e thread namespace_63b4601c::function_3d5f97bd(var_90ca1fdd);
					}
					var_90ca1fdd = function_f1ec6341("dogleg_1_retreat_nodes", "targetname", var_6b45b25e.var_722885f3, 4096);
					if(isdefined(var_90ca1fdd[0]))
					{
						if(var_6b45b25e namespace_d84e54db::function_18775385("sprint"))
						{
							var_6b45b25e namespace_d84e54db::function_ceb883cd("sprint", 1);
						}
						var_6b45b25e thread namespace_63b4601c::function_3d5f97bd(var_90ca1fdd[0]);
						continue;
					}
					var_e3b635fb = function_84970cc4(var_6b45b25e);
					level thread namespace_63b4601c::function_ff5f379(var_e3b635fb, 1024);
				}
			}
			level namespace_ad23e503::function_74d6b22f("combat_enemies_retreating");
			break;
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_6c25c493
	Namespace: namespace_445ee992
	Checksum: 0x866D64F8
	Offset: 0x4D88
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_6c25c493(var_74cd64bc)
{
	level endon("hash_8a3b89d3");
	namespace_ad06727a::function_26f24c93(1);
	namespace_ad23e503::function_1ab5ebec("dogleg_1_stealth_motivator_01");
	namespace_ad23e503::function_1ab5ebec("dogleg_1_stealth_motivator_02");
}

