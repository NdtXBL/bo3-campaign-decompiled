#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_swamp;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes2_sound;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_hunter;

#namespace namespace_1b0f1865;

/*
	Name: function_d290ebfa
	Namespace: namespace_1b0f1865
	Checksum: 0x926215EB
	Offset: 0x1CC0
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_fd35e580();
	level thread function_2387e4bd();
	level thread function_c85169ef();
	namespace_2f06d687::function_2b37a3c9("zipline_guys", "script_noteworthy", &function_cdb04f99);
	namespace_2f06d687::function_2b37a3c9("zipline_scene_guys", "script_noteworthy", &function_eb9e3e82);
	namespace_2f06d687::function_2b37a3c9("bridge1_runners", "script_noteworthy", &function_68f11e2b);
	namespace_2f06d687::function_2b37a3c9("finaltree_rpg_guys", "script_noteworthy", &function_d4fba74e);
	namespace_2f06d687::function_2b37a3c9("zipline_reinforcements", "script_noteworthy", &function_d79559c5);
	namespace_2f06d687::function_2b37a3c9("supertree_arsonists", "script_noteworthy", &function_5ac671e7);
	namespace_2f06d687::function_2b37a3c9("zipline_wasps", "script_noteworthy", &function_6e1246e9);
	var_6cfd4078 = function_99201f25("reached_finaltree_triggers", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_6cfd4078, &function_5a80eb84);
	var_69535641 = function_99201f25("bridge_trigger_enter", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_69535641, &function_8dba42a1);
	var_c23afe76 = function_99201f25("bridge2_transition_triggers", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_c23afe76, &function_4331ad22);
	level.var_d582416e = function_c4d5ec1f("pistol_standard");
	level.var_8ffd4cdb = function_c4d5ec1f("pistol_fullauto");
	level.var_44a0465d = function_c4d5ec1f("pistol_burst");
	level.var_957c9ba0 = function_c4d5ec1f("hero_annihilator");
	level.var_17a1f194 = function_c4d5ec1f("pistol_standard_zipline");
	level.var_d397bc89 = function_c4d5ec1f("pistol_fullauto_zipline");
	level.var_80242247 = function_c4d5ec1f("pistol_burst_zipline");
	level.var_135a01e4 = function_c4d5ec1f("noweapon_zipline");
	level.var_ad139ea = function_c4d5ec1f("hero_annihilator_cp_zipline");
	function_7b244c18();
}

/*
	Name: function_7b244c18
	Namespace: namespace_1b0f1865
	Checksum: 0x6E9C0B51
	Offset: 0x2088
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_7b244c18()
{
	namespace_cc27597::function_8f9f34e0("cin_bio_13_03_treefight_1st_zipline", &function_5068f9bd, "play");
}

/*
	Name: function_765faa8e
	Namespace: namespace_1b0f1865
	Checksum: 0xF70359B
	Offset: 0x20C8
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function function_765faa8e(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	namespace_27a45d31::function_ddb0eeea("objective_descend_init");
	namespace_27a45d31::function_bff1a867(var_b04bc952);
	function_9e3608e3("fxanim_fish");
	namespace_d7916d65::function_a2995f22();
	var_a1a8c705 = level thread namespace_2f06d687::function_22356ba7("sp_supertrees_tree1_explode", &function_1c60cd10);
	level namespace_71e9cb84::function_331efedc("supertree_fall_init", 1);
	level namespace_ad23e503::function_74d6b22f("start_slide");
	level thread function_65ac2d4e();
	var_be8bdabd = function_6ada35ba("trig_objective_descend_complete", "targetname");
	level thread namespace_82b91a51::function_8828b758(var_be8bdabd, &function_62260259);
	level thread function_7254f23f();
	level thread namespace_76133733::function_ec357599();
	if(isdefined(level.var_46d46f79))
	{
		level thread [[level.var_46d46f79]]();
	}
	namespace_4dbf3ae3::function_1ab5ebec("trig_objective_descend_complete");
	level thread namespace_76133733::function_683d15e();
	namespace_1d795d47::function_be8adfb8("objective_descend");
}

/*
	Name: function_65ac2d4e
	Namespace: namespace_1b0f1865
	Checksum: 0xBD7531A
	Offset: 0x22D0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_65ac2d4e()
{
	namespace_cc27597::function_8f9f34e0("cin_bio_12_05_descend_vign_planc", &function_20ff3f32, "done");
	level namespace_cc27597::function_c35e6aab("cin_bio_12_05_descend_vign_planc");
	level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
	level thread function_492debfc();
	level namespace_cc27597::function_43718187("cin_bio_12_05_descend_vign_planc");
	wait(0.15);
	namespace_4dbf3ae3::function_42e87952("trig_move_toward_supertree", undefined, undefined, 0);
}

/*
	Name: function_7254f23f
	Namespace: namespace_1b0f1865
	Checksum: 0x5321297D
	Offset: 0x23B0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_7254f23f()
{
	level namespace_71b8dba1::function_a463d127("kane_keep_going_just_get_0");
}

/*
	Name: function_62260259
	Namespace: namespace_1b0f1865
	Checksum: 0x22C33824
	Offset: 0x23E0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_62260259()
{
	self endon("hash_128f8789");
	while(1)
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		var_5dc5e20a = self.var_aef176e7;
		self function_64218ffc(var_5dc5e20a);
		var_5dc5e20a thread function_b76ad4cd();
	}
}

/*
	Name: function_b76ad4cd
	Namespace: namespace_1b0f1865
	Checksum: 0x81995FFB
	Offset: 0x2460
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b76ad4cd()
{
	self endon("hash_128f8789");
	self function_83fd42b5();
	wait(2);
	self function_4890e520();
}

/*
	Name: function_9aee8548
	Namespace: namespace_1b0f1865
	Checksum: 0x6F1B39A8
	Offset: 0x24A8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_9aee8548(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("objective_descend_done");
}

/*
	Name: function_ac17866e
	Namespace: namespace_1b0f1865
	Checksum: 0xC6F5A9C8
	Offset: 0x24F0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_ac17866e()
{
	self namespace_d84e54db::function_fd6c4374();
	self namespace_d84e54db::function_c9e45d52(1);
	if(isdefined(self.var_b07228b6))
	{
		level thread namespace_cc27597::function_43718187(self.var_b07228b6, self);
	}
	else
	{
		self function_2992720d();
	}
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		self function_d7a0a9d8(1);
	}
}

/*
	Name: function_1c60cd10
	Namespace: namespace_1b0f1865
	Checksum: 0xA2FE8A23
	Offset: 0x25A0
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_1c60cd10()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 4;
	self.var_a1ed1ed1 = 4;
	level waittill("hash_706115bc");
	var_d7f9ac76 = function_dc99997a(1, 4);
	wait(function_72a94f05(0.25, 0.75));
	switch(var_d7f9ac76)
	{
		case 1:
		{
			self thread namespace_cc27597::function_43718187("cin_gen_xplode_death_1", self);
			break;
		}
		case 2:
		{
			self thread namespace_cc27597::function_43718187("cin_gen_xplode_death_2", self);
			break;
		}
		case 3:
		{
			self thread namespace_cc27597::function_43718187("cin_gen_xplode_death_3", self);
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_68f11e2b
	Namespace: namespace_1b0f1865
	Checksum: 0xF1F7CECE
	Offset: 0x26C0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_68f11e2b()
{
	self endon("hash_128f8789");
	var_c6342f3d = function_b4cb3503(self.var_b07228b6, "targetname");
	if(isdefined(var_c6342f3d))
	{
		self.var_501514b8 = 1;
		self.var_356d8ec0 = 0;
		self namespace_d84e54db::function_3c155012();
		self function_b4aecd8e(1);
		self function_169cc712(var_c6342f3d);
		self waittill("hash_41d1aaf0");
		self namespace_d84e54db::function_8d86e3af();
		self.var_356d8ec0 = 1;
		self.var_501514b8 = 0;
		self function_b4aecd8e(0);
	}
}

/*
	Name: function_6e1246e9
	Namespace: namespace_1b0f1865
	Checksum: 0x8C82BA4E
	Offset: 0x27C0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_6e1246e9()
{
	self endon("hash_128f8789");
	self.var_3a90f16b = 2;
	self thread function_9da1f0ff();
}

/*
	Name: function_9da1f0ff
	Namespace: namespace_1b0f1865
	Checksum: 0x79566D2F
	Offset: 0x2800
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_9da1f0ff()
{
	self endon("hash_128f8789");
	var_5f6003ea = self.var_b07228b6;
	var_840ef1ce = var_5f6003ea + "_move";
	var_a8f67e26 = function_6ada35ba(var_840ef1ce, "targetname");
	var_ea32a33b = "trig_" + var_5f6003ea;
	self namespace_4dbf3ae3::function_1ab5ebec(var_ea32a33b, "targetname");
	self function_169cc712(var_a8f67e26);
}

/*
	Name: function_6ab1d04e
	Namespace: namespace_1b0f1865
	Checksum: 0x91C2DFCA
	Offset: 0x28C8
	Size: 0x45B
	Parameters: 2
	Flags: None
*/
function function_6ab1d04e(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_supertrees_init");
	namespace_769dc23f::function_e77dc7c0();
	namespace_769dc23f::function_e3f60acf();
	namespace_769dc23f::function_3f59ea45();
	namespace_769dc23f::function_765fa7e9();
	namespace_769dc23f::function_9ccc0413();
	level namespace_ad23e503::function_c35e6aab("tree2_and_tree3_pursuit_allowed");
	level namespace_ad23e503::function_c35e6aab("tree4_and_tree5_pursuit_allowed");
	if(var_74cd64bc)
	{
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		level namespace_ad23e503::function_1ab5ebec("all_players_connected");
		level namespace_71e9cb84::function_331efedc("supertree_fall_init", 1);
		namespace_cc27597::function_8f9f34e0("cin_bio_12_05_descend_vign_planc", &function_20ff3f32, "done");
		level thread namespace_cc27597::function_5c143f59("cin_bio_12_05_descend_vign_planc", undefined, undefined, 0.5);
		level thread function_492debfc(var_74cd64bc);
		var_a1a8c705 = namespace_2f06d687::function_22356ba7("sp_supertrees_tree1_explode", &function_1c60cd10);
		level thread namespace_76133733::function_683d15e();
		function_9e3608e3("fxanim_fish");
	}
	level thread function_9c95d588();
	level thread function_d6919efd();
	level thread function_bfd61da4();
	level thread function_e0cc746();
	level.var_2fd26037 thread function_9c25cf32();
	level thread function_6738338b();
	level thread function_d656e12f();
	level.var_2fd26037 thread function_805505ea();
	level.var_2fd26037 notify("hash_93bef291");
	level.var_2fd26037 function_e11ce512();
	level.var_2fd26037.var_7dfaf62 = 200;
	level.var_2fd26037.var_a1ed1ed1 = 80;
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	level.var_2fd26037.var_fd3ee5eb = "tree1";
	level thread function_482775a2(0);
	level thread function_7c3cd57();
	namespace_4dbf3ae3::function_1ab5ebec("trig_supertrees_breadcrumb3");
	level namespace_ad23e503::function_74d6b22f("player_reached_top_finaltree");
	level waittill("hash_449ba453");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree1_enemy1");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree1_enemy2");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree3_enemy1");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree4_enemy1");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree5_enemy1");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_finaltree_enemy1");
	level namespace_1d795d47::function_be8adfb8("objective_supertrees");
}

/*
	Name: function_20ff3f32
	Namespace: namespace_1b0f1865
	Checksum: 0xA74C356B
	Offset: 0x2D30
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_20ff3f32(var_8a818774)
{
	level namespace_ad23e503::function_74d6b22f("supertrees_intro_done");
}

/*
	Name: function_492debfc
	Namespace: namespace_1b0f1865
	Checksum: 0x988FA4FA
	Offset: 0x2D68
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_492debfc(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	namespace_76d95162::function_d9f49fba(0);
	level namespace_ad23e503::function_1ab5ebec("supertrees_intro_done");
	level notify("hash_c8f7f782");
	level namespace_71b8dba1::function_a463d127("kane_the_supertree_on_the_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_copy_that_let_s_get_0");
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_74d6b22f("supertrees_intro_vo_complete");
}

/*
	Name: function_9c95d588
	Namespace: namespace_1b0f1865
	Checksum: 0xB893423E
	Offset: 0x2E48
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_9c95d588()
{
	level waittill("hash_c8f7f782");
	var_3ecaa61 = namespace_14b42b8a::function_7922262b("s_objective_treefinal", "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_supertrees_treefinal", var_3ecaa61);
	level namespace_ad23e503::function_1ab5ebec("player_ziplines_up_last_tree");
	level thread namespace_76133733::function_fcea1d9(3);
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_supertrees_treefinal");
}

/*
	Name: function_d6919efd
	Namespace: namespace_1b0f1865
	Checksum: 0x9FD7A6A0
	Offset: 0x2F00
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_d6919efd()
{
	var_f652bfac = 11;
	var_2f184298 = level namespace_82b91a51::function_45ce26d("player_landed_on_tree2", "player_landed_on_tree3");
	level function_cc1f04a7(var_2f184298, var_f652bfac);
	namespace_9f824288::function_5d2cdd99();
	var_2f184298 = level namespace_82b91a51::function_45ce26d("player_landed_on_tree4", "player_crossed_to_tree4", "player_landed_on_tree5");
	if(var_2f184298 == "player_crossed_to_tree4")
	{
		namespace_9f824288::function_5d2cdd99();
	}
	else
	{
		level function_cc1f04a7(var_2f184298, var_f652bfac);
		namespace_9f824288::function_5d2cdd99();
	}
	level namespace_82b91a51::function_5b7e3888("player_landed_on_treefinal");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_cc1f04a7
	Namespace: namespace_1b0f1865
	Checksum: 0x7E9ACE80
	Offset: 0x3038
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_cc1f04a7(var_3095dc45, var_637636ed)
{
	level namespace_ad23e503::function_ee4e9833(7, "tree2_and_tree3_pursuit_allowed");
	var_aac0e4ef = function_52b6f57a(var_3095dc45);
	var_e4b1b0d6 = "vol_" + var_3095dc45;
	var_f721d9a5 = GetTime();
	var_a4854031 = 1;
	while(var_a4854031)
	{
		var_49a93b24 = GetTime();
		var_e65455e6 = var_49a93b24 - var_f721d9a5 / 1000;
		if(var_e65455e6 >= var_637636ed)
		{
			break;
		}
		var_a4854031 = function_a4603364(var_e4b1b0d6, var_aac0e4ef);
		wait(0.25);
	}
}

/*
	Name: function_a4603364
	Namespace: namespace_1b0f1865
	Checksum: 0x690E5888
	Offset: 0x3148
	Size: 0x14D
	Parameters: 2
	Flags: None
*/
function function_a4603364(var_e4b1b0d6, var_aac0e4ef)
{
	var_26884bd1 = function_6ada35ba(var_e4b1b0d6, "targetname");
	var_24bbf032 = function_b8494651("axis");
	foreach(var_2eecd77a in var_24bbf032)
	{
		if(var_2eecd77a function_32fa5072(var_26884bd1))
		{
			return 1;
			continue;
		}
		if(function_5b49d38c(var_2eecd77a) && var_2eecd77a.var_8fc0e50e === "hunter")
		{
			if(var_2eecd77a.var_aac0e4ef === var_aac0e4ef)
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_bfd61da4
	Namespace: namespace_1b0f1865
	Checksum: 0x15BBDC57
	Offset: 0x32A0
	Size: 0x279
	Parameters: 0
	Flags: None
*/
function function_bfd61da4()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_supertrees_hunter_flyby1");
	namespace_d5067552::function_bae40a28("sm_supertrees_finaltree_rpg");
	namespace_d5067552::function_bae40a28("sm_supertrees_finaltree_reinforcements");
	namespace_4dbf3ae3::function_1ab5ebec("trig_finaltree_hendricks_zipline_go");
	namespace_d5067552::function_2992720d("sm_supertrees_finaltree_rpg");
	namespace_d5067552::function_2992720d("sm_supertrees_finaltree_reinforcements");
	var_df90cda = function_846256f4("axis");
	foreach(var_d84e54db in var_df90cda)
	{
		if(var_d84e54db.var_fd3ee5eb === "treefinal" && !var_d84e54db.var_23304c9e && var_d84e54db.var_170527fb != "sp_supertrees_finaltree_arsonists_ai")
		{
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				if(var_5dc5e20a.var_fd3ee5eb === "tree4" || var_5dc5e20a.var_fd3ee5eb === "tree5")
				{
					var_d84e54db.var_db7bb468 = var_5dc5e20a.var_fd3ee5eb;
					break;
					continue;
				}
				var_d84e54db.var_db7bb468 = var_5dc5e20a.var_fd3ee5eb;
			}
			var_d84e54db notify("hash_f3069794");
			var_d84e54db thread function_76e355e1();
		}
	}
}

/*
	Name: function_d4fba74e
	Namespace: namespace_1b0f1865
	Checksum: 0xF9135435
	Offset: 0x3528
	Size: 0x337
	Parameters: 0
	Flags: None
*/
function function_d4fba74e()
{
	self endon("hash_128f8789");
	level endon("hash_52434ccd");
	level endon("hash_75a4526b");
	self.var_fd3ee5eb = "treefinal";
	var_5bd22e42 = function_b4cb3503(self.var_b07228b6, "targetname");
	if(isdefined(var_5bd22e42))
	{
		self function_169cc712(var_5bd22e42, 1);
		self waittill("hash_41d1aaf0");
	}
	self.var_2b04bf92 = 0.1;
	var_e6e6dfc8 = namespace_14b42b8a::function_7faf4c39("s_finaltree_fake_rockets", "targetname");
	while(1)
	{
		var_4eb49a16 = function_e7bdc1a1(self.var_722885f3, level.var_9b1393e7);
		if(isdefined(var_4eb49a16))
		{
			var_bdb1a817 = namespace_84970cc4::function_47d18840(var_e6e6dfc8);
			var_5e92b8ab = function_c4d5ec1f("smaw");
			var_8a86412d = 0;
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				if(var_5dc5e20a namespace_82b91a51::function_d61b846f(var_bdb1a817.var_722885f3, 0.9, 1, var_5dc5e20a))
				{
					var_8a86412d = 1;
					break;
				}
			}
			var_ccd4343c = function_316422d1(var_4eb49a16.var_722885f3, self.var_722885f3);
			if(var_ccd4343c > self.var_a01aef5a * self.var_a01aef5a && !var_8a86412d)
			{
				function_87f3c622(var_5e92b8ab, var_bdb1a817.var_722885f3, var_4eb49a16.var_722885f3, self, var_4eb49a16, (400, 400, 200));
			}
			else
			{
				self thread namespace_d84e54db::function_d104c596("normal", var_4eb49a16, undefined);
			}
			if(var_4eb49a16.var_fd3ee5eb === "tree4" || var_4eb49a16.var_fd3ee5eb === "tree5")
			{
				break;
			}
		}
		wait(5);
	}
	self.var_2b04bf92 = 1;
}

/*
	Name: function_d79559c5
	Namespace: namespace_1b0f1865
	Checksum: 0x8FC6FBAF
	Offset: 0x3868
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_d79559c5()
{
	self endon("hash_128f8789");
	level endon("hash_52434ccd");
	level endon("hash_75a4526b");
	if(isdefined(self.var_b2ff4d87))
	{
		self.var_fd3ee5eb = self.var_b2ff4d87;
	}
	else
	{
		self.var_fd3ee5eb = "treefinal";
	}
	wait(function_dc99997a(1, 4));
	self function_76e355e1();
}

/*
	Name: function_5ac671e7
	Namespace: namespace_1b0f1865
	Checksum: 0x966D14B3
	Offset: 0x3900
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_5ac671e7()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 10;
	if(isdefined(self.var_b2ff4d87))
	{
		self.var_fd3ee5eb = self.var_b2ff4d87;
	}
	else
	{
		self.var_fd3ee5eb = "treefinal";
	}
	self waittill("hash_41d1aaf0");
	var_6609c808 = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	var_9ef7554b = namespace_82b91a51::function_b9fd52a4("p7_container_medical_02", self.var_722885f3, self.var_6ab6f4fd);
	self thread function_e7da495a(var_9ef7554b, var_6609c808);
	if(namespace_d73b9283::function_d2c92ee7())
	{
		var_6609c808 namespace_cc27597::function_43718187("cin_bio_13_03_treefight_vign_gas_pour_a", function_84970cc4(self, var_9ef7554b));
	}
	else
	{
		var_6609c808 namespace_cc27597::function_43718187("cin_bio_13_03_treefight_vign_gas_pour_b", function_84970cc4(self, var_9ef7554b));
	}
	var_6609c808 function_dc8c8404();
	self namespace_d84e54db::function_b4f5e3b9(0);
	self function_e11ce512();
	self.var_7dfaf62 = 200;
}

/*
	Name: function_e7da495a
	Namespace: namespace_1b0f1865
	Checksum: 0xC0B99135
	Offset: 0x3AD0
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_e7da495a(var_9ef7554b, var_6609c808)
{
	self waittill("hash_128f8789");
	if(isdefined(var_9ef7554b))
	{
		var_9ef7554b function_dc8c8404();
	}
	if(isdefined(var_6609c808))
	{
		var_6609c808 function_dc8c8404();
	}
}

/*
	Name: function_76e355e1
	Namespace: namespace_1b0f1865
	Checksum: 0xCC90B14
	Offset: 0x3B40
	Size: 0x1AD
	Parameters: 0
	Flags: None
*/
function function_76e355e1()
{
	self endon("hash_128f8789");
	var_e3325966 = namespace_14b42b8a::function_7faf4c39(self.var_fd3ee5eb, "script_label");
	var_e3325966 = namespace_84970cc4::function_8332f7f6(var_e3325966);
	foreach(var_e60b519d in var_e3325966)
	{
		if(isdefined(self.var_db7bb468))
		{
			if(isdefined(var_e60b519d.var_b07228b6))
			{
				var_daa592e9 = namespace_14b42b8a::function_7922262b(var_e60b519d.var_b07228b6, "targetname");
			}
			else
			{
				continue;
			}
			if(var_daa592e9.var_b2ff4d87 === self.var_db7bb468)
			{
				self.var_b07228b6 = var_e60b519d.var_170527fb;
				self function_cdb04f99();
				break;
			}
			continue;
		}
		if(isdefined(var_e60b519d.var_b07228b6))
		{
			self.var_b07228b6 = var_e60b519d.var_170527fb;
			self function_cdb04f99();
			break;
		}
	}
}

/*
	Name: function_4331ad22
	Namespace: namespace_1b0f1865
	Checksum: 0x6AB7A385
	Offset: 0x3CF8
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_4331ad22()
{
	self endon("hash_128f8789");
	level endon("hash_3a2c1be8");
	while(1)
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		if(self.var_170527fb === "trig_supertrees_tree2_entered")
		{
			self.var_aef176e7.var_fd3ee5eb = "tree2";
		}
		else if(self.var_170527fb === "trig_supertrees_tree4_entered")
		{
			self.var_aef176e7.var_fd3ee5eb = "tree4";
		}
		if(function_65f192a6(self.var_aef176e7))
		{
			level notify("player_crossed_to_" + self.var_aef176e7.var_fd3ee5eb);
		}
		else if(function_8d0347b8(self.var_aef176e7))
		{
			self.var_aef176e7 notify("landed_on_" + self.var_aef176e7.var_fd3ee5eb);
		}
	}
}

/*
	Name: function_7c3cd57
	Namespace: namespace_1b0f1865
	Checksum: 0x75EF32A8
	Offset: 0x3E18
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_7c3cd57()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_supertrees_tree1_start");
	level namespace_ad23e503::function_74d6b22f("supertrees_tree1_started");
	if(level namespace_ad23e503::function_7922262b("supertrees_intro_vo_complete"))
	{
		namespace_76d95162::function_d9f49fba(0);
		level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_pick_a_path_and_move_0");
		var_adc17f12 = function_84970cc4("tree1_interior", "tree1_exterior");
		level namespace_ad23e503::function_43ac000b(var_adc17f12);
		if(level namespace_ad23e503::function_7922262b("tree1_interior"))
		{
			level namespace_71b8dba1::function_13b3b16a("plyr_taking_interior_hen_0");
		}
		else
		{
			level namespace_71b8dba1::function_13b3b16a("plyr_taking_exterior_hen_0");
		}
		level namespace_71b8dba1::function_a463d127("kane_overwatch_shows_54i_0", 0.5);
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_leaning_tree_s_0");
		namespace_76d95162::function_d9f49fba(1);
	}
	level namespace_ad23e503::function_1ab5ebec("supertrees_intro_vo_complete");
	var_9343c9b7 = function_99201f25("so_xiulan_supertree_loudspeaker", "targetname");
	wait(2);
	foreach(var_ea519684 in var_9343c9b7)
	{
		var_ea519684 thread namespace_71b8dba1::function_81141386("xiul_immortals_hunt_dow_0", 0, 1);
	}
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_shit_i_d_kinda_ho_0", 2);
	namespace_76d95162::function_d9f49fba(1);
	level thread function_f6a22b91();
}

/*
	Name: function_f6a22b91
	Namespace: namespace_1b0f1865
	Checksum: 0xE7698584
	Offset: 0x4110
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_f6a22b91()
{
	level endon("hash_75a4526b");
	wait(4);
	level namespace_ad23e503::function_1ab5ebec("supertrees_hunter_arrival");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hunter_grab_some_co_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_don_t_let_that_hunte_0");
	level waittill("hash_38124849");
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_hunter_s_targeting_u_0");
	level waittill("hash_82f2510e");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_hunter_moving_on_our_0");
	level waittill("hash_82f2510e");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_eyes_up_hunter_comi_0", 6);
	level waittill("hash_82f2510e");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_get_that_hu_0", 6);
	level namespace_71b8dba1::function_a463d127("kane_there_s_no_time_hen_0");
}

/*
	Name: function_a87139db
	Namespace: namespace_1b0f1865
	Checksum: 0x9BE3B30F
	Offset: 0x4278
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_a87139db()
{
	level endon("hash_f6312ac0");
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_they_re_trying_0");
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "kane_negative_that_s_you_0";
	var_2d3d7b7[1] = "kane_negative_that_s_you_1";
	level namespace_71b8dba1::function_a463d127(namespace_27a45d31::function_7ff50323(var_2d3d7b7));
	level namespace_71b8dba1::function_13b3b16a("plyr_what_no_plan_d_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_now_is_not_the_time_0");
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_1ab5ebec("any_player_reached_bottom_finaltree");
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_get_us_outta_h_0", 2);
	level namespace_71b8dba1::function_a463d127("kane_get_to_the_elevators_0");
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_e0cc746
	Namespace: namespace_1b0f1865
	Checksum: 0xA8F25753
	Offset: 0x4410
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e0cc746()
{
	var_7ec8ecac = namespace_2f06d687::function_7387a40a("sp_enemy_bridge1_thrown");
	if(function_5b49d38c(var_7ec8ecac))
	{
		var_7ec8ecac endon("hash_128f8789");
		namespace_4dbf3ae3::function_1ab5ebec("trig_supertrees_hendricks_throw_bridge1");
		namespace_4dbf3ae3::function_42e87952("trig_supertrees_color_tree1_1");
	}
}

/*
	Name: function_8dba42a1
	Namespace: namespace_1b0f1865
	Checksum: 0xF279408
	Offset: 0x4498
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_8dba42a1()
{
	while(isdefined(self))
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		self.var_aef176e7 thread function_3cd19f27(self);
	}
}

/*
	Name: function_3cd19f27
	Namespace: namespace_1b0f1865
	Checksum: 0xE0F7D4E4
	Offset: 0x44E0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_3cd19f27(var_e3ffd761)
{
	self endon("hash_128f8789");
	var_e3ffd761 function_64218ffc(self);
	while(self function_32fa5072(var_e3ffd761))
	{
		var_ae0d7318 = function_72a94f05(1, 3);
		wait(var_ae0d7318);
	}
	var_e3ffd761 function_858ac43f(self);
}

/*
	Name: function_805505ea
	Namespace: namespace_1b0f1865
	Checksum: 0xA7D924C4
	Offset: 0x4580
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_805505ea()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_supertrees_hunter_flyby1");
	level thread namespace_cc27597::function_c35e6aab("cin_bio_13_02_treefight_vign_ziplinekill");
	namespace_4dbf3ae3::function_1ab5ebec("trig_supertrees_tree2_enemy2_zipline");
	if(namespace_2f06d687::function_1913dec8("zipline_takedown") > 0)
	{
		level namespace_cc27597::function_43718187("cin_bio_13_02_treefight_vign_ziplinekill");
	}
	level namespace_ad23e503::function_74d6b22f("hendricks_played_supertree_takedown");
}

/*
	Name: function_eb9e3e82
	Namespace: namespace_1b0f1865
	Checksum: 0x33F5B044
	Offset: 0x4638
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_eb9e3e82()
{
	self waittill("hash_128f8789");
	if(level namespace_cc27597::function_367f8966("cin_bio_13_02_treefight_vign_ziplinekill"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_bio_13_02_treefight_vign_ziplinekill");
	}
}

/*
	Name: function_ff1892e
	Namespace: namespace_1b0f1865
	Checksum: 0x3E2ED012
	Offset: 0x4690
	Size: 0xBB
	Parameters: 3
	Flags: None
*/
function function_ff1892e(var_b07228b6, var_f3d436cd, var_8a5a20d0)
{
	self endon("hash_3a2c1be8");
	self endon("hash_128f8789");
	var_8dc33a9 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_b07228b6.var_722885f3, var_b07228b6.var_6ab6f4fd);
	while(1)
	{
		self function_3488d445(var_8dc33a9);
		self thread namespace_72ee5da4::function_afb82faf(var_f3d436cd);
		wait(var_f3d436cd + var_8a5a20d0);
	}
}

/*
	Name: function_6738338b
	Namespace: namespace_1b0f1865
	Checksum: 0x1F94B884
	Offset: 0x4758
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6738338b()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_supertrees_finaltree_hunter");
	level thread namespace_71e9cb84::function_74d6b22f("elevator_bottom_debris_play", 1);
}

/*
	Name: function_482775a2
	Namespace: namespace_1b0f1865
	Checksum: 0xB77D4266
	Offset: 0x47A0
	Size: 0x2D1
	Parameters: 1
	Flags: None
*/
function function_482775a2(var_31b91f3a)
{
	var_edc6e0e1 = namespace_2f06d687::function_7387a40a("vtol_supertrees_crash");
	var_edc6e0e1 namespace_37b990db::function_bae40a28(0, 0);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_super_tree_collapse_vtol_bundle", var_edc6e0e1);
	level thread function_a2bdd835();
	level namespace_ad23e503::function_1ab5ebec("start_supertree_crash");
	function_ebb6378a(var_edc6e0e1);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_super_tree_collapse_vtol_bundle", var_edc6e0e1);
	var_edc6e0e1 waittill("hash_fee929b6");
	function_37cbcf1a("wpn_rocket_explode", var_edc6e0e1.var_722885f3);
	level namespace_71e9cb84::function_331efedc("supertree_fall_play", 1);
	level thread function_3fbe7731();
	level namespace_ad23e503::function_74d6b22f("supertree_fall_played");
	namespace_4dbf3ae3::function_1ab5ebec("trig_supertrees_hunter_flyby1");
	level namespace_ad23e503::function_74d6b22f("supertrees_hunter_arrival");
	namespace_d5067552::function_bae40a28("sm_supertrees_hunter");
	namespace_d5067552::function_740ea7ff("sm_supertrees_hunter", 1);
	var_325ce29e = namespace_d5067552::function_423eae50("sm_supertrees_hunter");
	var_325ce29e[0] namespace_ad23e503::function_c35e6aab("hunter_sees_player");
	var_325ce29e[0] thread function_de17e19c("info_volume_hunter_patrol_tree1");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_5f8f3618(var_325ce29e[0]);
	}
}

/*
	Name: function_a2bdd835
	Namespace: namespace_1b0f1865
	Checksum: 0x6DCE51C7
	Offset: 0x4A80
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_a2bdd835()
{
	for(var_56dd1913 = function_c20c2e8("supertrees_explode_enemies", "script_noteworthy"); var_56dd1913.size != 0;  = function_c20c2e8("supertrees_explode_enemies", "script_noteworthy"))
	{
		wait(0.05);
	}
	level namespace_ad23e503::function_74d6b22f("start_supertree_crash");
}

/*
	Name: function_ebb6378a
	Namespace: namespace_1b0f1865
	Checksum: 0xF81F49AE
	Offset: 0x4B10
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_ebb6378a(var_edc6e0e1)
{
	var_8af78429 = function_c4d5ec1f("hunter_rocket_turret");
	for(var_c957f6b6 = 1; var_c957f6b6 <= 2; var_c957f6b6++)
	{
		var_10729d99 = namespace_14b42b8a::function_7922262b("missile_attack_vtol_pos_" + var_c957f6b6);
		function_87f3c622(var_8af78429, var_10729d99.var_722885f3, var_edc6e0e1.var_722885f3 + VectorScale((0, 0, -1), 64));
		wait(0.15);
	}
	var_edc6e0e1 namespace_82b91a51::function_c9aa1ff("damage", 3);
	function_37cbcf1a("wpn_rocket_explode", var_edc6e0e1.var_722885f3);
}

/*
	Name: function_7d32eadb
	Namespace: namespace_1b0f1865
	Checksum: 0xB6D17693
	Offset: 0x4C40
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_7d32eadb()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_supertrees_finaltree_hunter");
	level thread function_6febb5e2();
}

/*
	Name: function_33cde320
	Namespace: namespace_1b0f1865
	Checksum: 0xCEF90922
	Offset: 0x4C80
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_33cde320()
{
	self waittill("hash_128f8789");
	level thread function_6febb5e2();
}

/*
	Name: function_6febb5e2
	Namespace: namespace_1b0f1865
	Checksum: 0x426EAF06
	Offset: 0x4CB0
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_6febb5e2()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(isdefined(var_5dc5e20a function_e9022fe("HunterPatrolSightingMenu")))
		{
			var_5dc5e20a function_2b74b70a(var_5dc5e20a function_e9022fe("HunterPatrolSightingMenu"));
		}
		var_5dc5e20a notify("hash_82f2510e");
	}
}

/*
	Name: function_de17e19c
	Namespace: namespace_1b0f1865
	Checksum: 0xF99A9602
	Offset: 0x4D90
	Size: 0x4DF
	Parameters: 1
	Flags: None
*/
function function_de17e19c(var_13e51ee2)
{
	self endon("hash_128f8789");
	self endon("hash_a2c295a");
	self.var_df1b2d54 = 0;
	var_13d45be4 = function_99201f25("hunter_supertree_patrol_volumes", "script_noteworthy");
	var_2ba4edf6 = function_6ada35ba(var_13e51ee2, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_2ba4edf6), "Dev Block strings are not supported");
	#/
	self namespace_72ee5da4::function_81b6f1ac();
	self function_c985552d(var_2ba4edf6.var_722885f3, 1, 1);
	self.var_aac0e4ef = function_52b6f57a(var_2ba4edf6.var_170527fb);
	self waittill("hash_41d1aaf0");
	while(1)
	{
		if(self namespace_ad23e503::function_7922262b("hunter_sees_player") && !level namespace_ad23e503::function_7922262b("player_reached_top_finaltree"))
		{
			self namespace_72ee5da4::function_efe9815e("combat");
			self function_169cc712(var_2ba4edf6, 1);
		}
		wait(function_dc99997a(2, 5));
		if(self namespace_ad23e503::function_7922262b("hunter_sees_player") && !level namespace_ad23e503::function_7922262b("player_reached_top_finaltree"))
		{
			level notify("hash_38124849");
			level notify("hash_82f2510e");
			if(isdefined(self.var_a0ad4f34))
			{
				var_8f2206cb = self.var_a0ad4f34;
			}
			else if(isdefined(self.var_6050ab17))
			{
				var_8f2206cb = self.var_6050ab17;
			}
			else
			{
				var_8f2206cb = level.var_2395e945[0];
			}
			var_2ba4edf6 = function_e7bdc1a1(var_8f2206cb.var_722885f3, var_13d45be4);
			/#
				namespace_33b293fd::function_a7ee953(isdefined(var_2ba4edf6), "Dev Block strings are not supported");
			#/
			if(self.var_3a90f16b < self.var_38a62b0e * 0.75 && self.var_df1b2d54 === 0)
			{
				self.var_df1b2d54++;
				self function_d2eb46b7(var_8f2206cb);
			}
			else if(self.var_3a90f16b < self.var_38a62b0e * 0.4 && self.var_df1b2d54 === 1)
			{
				self.var_df1b2d54++;
				self function_d2eb46b7(var_8f2206cb);
			}
		}
		else
		{
			var_2ba4edf6 = function_6ada35ba(var_2ba4edf6.var_b07228b6, "targetname");
			/#
				namespace_33b293fd::function_a7ee953(isdefined(var_2ba4edf6), "Dev Block strings are not supported");
			#/
		}
		self function_8d87b0f9();
		self namespace_72ee5da4::function_81b6f1ac();
		self.var_aac0e4ef = function_52b6f57a(var_2ba4edf6.var_170527fb);
		var_946e0cd4 = "find_new_goal";
		while(var_946e0cd4 !== "goal")
		{
			wait(1);
			var_1237bd50 = function_316422d1(self.var_722885f3, var_2ba4edf6.var_722885f3);
			if(var_1237bd50 > 16384)
			{
				self function_c985552d(var_2ba4edf6.var_722885f3, 1, 1);
				var_946e0cd4 = self namespace_82b91a51::function_9fcf3cd8(6, "goal", "pathfind_failed");
			}
		}
	}
}

/*
	Name: function_52b6f57a
	Namespace: namespace_1b0f1865
	Checksum: 0x453D3968
	Offset: 0x5278
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_52b6f57a(var_cbb15570)
{
	var_a556a495 = function_d6df1f20(var_cbb15570, "_");
	var_aac0e4ef = var_a556a495[var_a556a495.size - 1];
	return var_aac0e4ef;
}

/*
	Name: function_d2eb46b7
	Namespace: namespace_1b0f1865
	Checksum: 0xF0AB21E5
	Offset: 0x52E0
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_d2eb46b7(var_8f2206cb)
{
	var_2ed198ee = function_99201f25("hunter_supertree_retreat_volumes", "script_noteworthy");
	if(var_2ed198ee.size)
	{
		var_ec273240 = function_f270b41d(var_8f2206cb.var_722885f3, var_2ed198ee);
		self function_8d87b0f9();
		self namespace_72ee5da4::function_81b6f1ac();
		self function_c985552d(var_ec273240.var_722885f3, 1, 1);
		self waittill("hash_41d1aaf0");
		wait(function_dc99997a(6, 12));
	}
}

/*
	Name: function_d656e12f
	Namespace: namespace_1b0f1865
	Checksum: 0x2AD16B7C
	Offset: 0x53D8
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_d656e12f()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_supertrees_hunter_flyby2");
	if(namespace_2f06d687::function_41e09b9("supertrees_hunter_aigroup") == 0)
	{
		var_ce310ae3 = namespace_2f06d687::function_7387a40a("sp_hunter_supertree_boat_fire");
		var_ce310ae3 namespace_ad23e503::function_c35e6aab("hunter_sees_player");
	}
	else
	{
		var_2e9e2605 = namespace_2f06d687::function_289e6fd1("supertrees_hunter_aigroup");
		var_ce310ae3 = var_2e9e2605[0];
	}
	var_ce310ae3 endon("hash_128f8789");
	var_ce310ae3 notify("hash_a2c295a");
	level thread function_f2c36556();
	var_2ba4edf6 = function_6ada35ba("info_volume_supertrees_hunter_patrol_end", "targetname");
	var_ce310ae3 namespace_72ee5da4::function_81b6f1ac();
	var_ce310ae3 function_c985552d(var_2ba4edf6.var_722885f3, 1, 1);
	var_ce310ae3 waittill("hash_41d1aaf0");
	wait(2);
	var_8c0e2909 = namespace_14b42b8a::function_7faf4c39("s_hunter_supertree_boat_fire", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(var_8c0e2909.size > 0, "Dev Block strings are not supported");
	#/
	var_8dc33a9 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_8c0e2909[0].var_722885f3, var_8c0e2909[0].var_6ab6f4fd);
	var_ce310ae3 function_df42c640(var_8dc33a9);
	var_ce310ae3 function_3488d445(var_8dc33a9);
	wait(3);
	for(var_c957f6b6 = 0; var_c957f6b6 < 10; var_c957f6b6++)
	{
		var_4bc288a0 = function_dc99997a(0, var_8c0e2909.size);
		var_377a9c22 = var_8c0e2909[var_4bc288a0];
		var_ce310ae3 namespace_5e7ee507::function_ed543896(0, var_377a9c22.var_722885f3);
		wait(0.5);
	}
	wait(5);
	var_ce310ae3 function_8d87b0f9();
	var_ce310ae3 function_62b52961();
	var_8dc33a9 function_dc8c8404();
	var_ce310ae3 namespace_ad23e503::function_74d6b22f("hunter_sees_player");
	var_ce310ae3 thread function_de17e19c("info_volume_hunter_patrol_tree3");
}

/*
	Name: function_86a08a81
	Namespace: namespace_1b0f1865
	Checksum: 0xBEBCAF61
	Offset: 0x5748
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_86a08a81(var_b04bc952, var_74cd64bc)
{
	/#
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		level.var_2fd26037.var_fd3ee5eb = "Dev Block strings are not supported";
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a.var_fd3ee5eb = "Dev Block strings are not supported";
		}
		level thread function_8b1a5d48();
	#/
}

/*
	Name: function_6e6908bc
	Namespace: namespace_1b0f1865
	Checksum: 0xC61A1EA7
	Offset: 0x5830
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_6e6908bc(var_b04bc952, var_74cd64bc)
{
	/#
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		level.var_2fd26037.var_fd3ee5eb = "Dev Block strings are not supported";
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a.var_fd3ee5eb = "Dev Block strings are not supported";
		}
		level thread function_8b1a5d48();
	#/
}

/*
	Name: function_8b1a5d48
	Namespace: namespace_1b0f1865
	Checksum: 0x44143D35
	Offset: 0x5918
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_8b1a5d48()
{
	/#
		level thread function_a2b40033();
		level thread function_ca1d2a2d();
		level.var_2fd26037 thread function_9c25cf32();
		level thread function_6738338b();
		level namespace_ad23e503::function_74d6b22f("Dev Block strings are not supported");
		level namespace_ad23e503::function_1ab5ebec("Dev Block strings are not supported");
		var_3ecaa61 = namespace_14b42b8a::function_7922262b("Dev Block strings are not supported", "Dev Block strings are not supported");
		namespace_d0ef8521::function_74d6b22f("Dev Block strings are not supported", var_3ecaa61);
		level thread function_9c95d588();
		level thread function_bfd61da4();
		level namespace_ad23e503::function_74d6b22f("Dev Block strings are not supported");
		var_a6557ae = function_99201f25("Dev Block strings are not supported", "Dev Block strings are not supported");
		var_a6557ae[0] namespace_4dbf3ae3::function_42e87952();
		level thread function_f2c36556();
	#/
}

/*
	Name: function_f2c36556
	Namespace: namespace_1b0f1865
	Checksum: 0x9729741E
	Offset: 0x5AC0
	Size: 0x36B
	Parameters: 0
	Flags: None
*/
function function_f2c36556()
{
	namespace_2f06d687::function_22356ba7("sp_supertrees_rpg_boat_fire", &function_b0272bca);
	level thread function_b1436bdb();
	wait(1);
	if(isdefined(level.var_4aa51716))
	{
		level thread [[level.var_4aa51716]]();
	}
	namespace_80983c42::function_80983c42("fx_expl_fire_prehunter_supertree");
	wait(3);
	level notify("hash_75a4526b");
	namespace_80983c42::function_80983c42("fx_expl_fire_posthunter_supertree");
	namespace_80983c42::function_80983c42("fx_expl_fire_arrivetop_supertree");
	namespace_80983c42::function_80983c42("fx_expl_fire_lowerplatform_supertree");
	level thread function_a87139db();
	level waittill("hash_52434ccd");
	level namespace_71e9cb84::function_74d6b22f("boat_explosion_play", 1);
	namespace_80983c42::function_80983c42("fx_expl_fire_zip_explode");
	wait(1);
	function_44ec4f8f();
	wait(1);
	function_44ec4f8f();
	var_65051b38 = namespace_4dbf3ae3::function_1ab5ebec("trig_final_zipline_for_one");
	level notify("hash_b0ab1d93");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(isdefined(var_5dc5e20a.var_23304c9e) && var_5dc5e20a.var_23304c9e)
		{
			var_5dc5e20a function_f74e47aa();
		}
	}
	if(level.var_2fd26037 namespace_ad23e503::function_7922262b("hendricks_on_zipline"))
	{
		level.var_2fd26037 function_cac74662();
	}
	level thread namespace_cc27597::function_43718187("cin_bio_14_01_treejump_vign_elevator_shaft_hendricks");
	level thread namespace_cc27597::function_43718187("cin_bio_13_03_treefight_1st_zipline", var_65051b38.var_aef176e7);
	level waittill("hash_ecb1951e");
	level namespace_82b91a51::function_93831e79("dive_start_igc");
	if(level.var_2fd26037.var_722885f3[2] < 4572)
	{
		level.var_2fd26037 namespace_1d795d47::function_d9b1ee00(namespace_14b42b8a::function_7922262b("dive_start_igc_hendricks"));
	}
	level notify("hash_449ba453");
	level thread function_f6312ac0();
}

/*
	Name: function_44ec4f8f
	Namespace: namespace_1b0f1865
	Checksum: 0x6354666D
	Offset: 0x5E38
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_44ec4f8f()
{
	var_beecfae5 = namespace_14b42b8a::function_7faf4c39("final_zipline_explosion_location");
	foreach(var_14b42b8a in var_beecfae5)
	{
		function_5e09918e("cp_biodomes_zipline_explosion_positional_rumble", var_14b42b8a.var_722885f3);
	}
}

/*
	Name: function_b1436bdb
	Namespace: namespace_1b0f1865
	Checksum: 0x951C8F50
	Offset: 0x5F00
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_b1436bdb()
{
	var_5e92b8ab = function_c4d5ec1f("smaw");
	var_5e2b4bef = namespace_14b42b8a::function_7faf4c39("s_final_supertree_fake_rocket_dests", "targetname");
	var_55ad5a1e = namespace_14b42b8a::function_7922262b("s_final_supertree_fake_rocket_start", "targetname");
	if(isdefined(var_55ad5a1e) && isdefined(var_5e2b4bef))
	{
		foreach(var_c91531f1 in var_5e2b4bef)
		{
			function_87f3c622(var_5e92b8ab, var_55ad5a1e.var_722885f3, var_c91531f1.var_722885f3);
			wait(0.25);
		}
	}
}

/*
	Name: function_b0272bca
	Namespace: namespace_1b0f1865
	Checksum: 0x640FEDC4
	Offset: 0x6050
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_b0272bca()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	var_5bd22e42 = function_b4cb3503(self.var_b07228b6, "targetname");
	if(isdefined(var_5bd22e42))
	{
		self function_169cc712(var_5bd22e42, 1);
		self waittill("hash_41d1aaf0");
	}
	var_2dcf8554 = namespace_14b42b8a::function_7faf4c39("s_hunter_supertree_boat_fire", "targetname");
	var_b10a5b26 = function_e7bdc1a1(self.var_722885f3, var_2dcf8554);
	if(isdefined(var_b10a5b26))
	{
		var_3929e8a2 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_b10a5b26.var_722885f3, var_b10a5b26.var_6ab6f4fd);
		self thread function_f2bd3676();
		self namespace_d84e54db::function_d104c596("normal", var_3929e8a2, "tag_origin", 10, 10);
		var_3929e8a2 function_dc8c8404();
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_f2bd3676
	Namespace: namespace_1b0f1865
	Checksum: 0xDB88C8C2
	Offset: 0x61F0
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_f2bd3676()
{
	self endon("hash_128f8789");
	self endon("hash_7a868ba5");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(isdefined(var_5dc5e20a))
			{
				var_ccd4343c = function_316422d1(var_5dc5e20a.var_722885f3, self.var_722885f3);
				if(var_ccd4343c < 90000)
				{
					self namespace_d84e54db::function_7a868ba5();
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_5068f9bd
	Namespace: namespace_1b0f1865
	Checksum: 0x14C99E50
	Offset: 0x62F8
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_5068f9bd(var_c77d2837)
{
	level waittill("hash_a668dfbe");
	var_5dc5e20a = var_c77d2837["player 1"];
	var_5dc5e20a namespace_5753664b::function_43718187("explosion_zipline_up", var_5dc5e20a.var_722885f3 + VectorScale((0, 0, -1), 150), undefined, "elevator_fire_stops", 1);
	var_5dc5e20a namespace_71e9cb84::function_e9c3870b("zipline_rumble_loop", 1);
	level waittill("hash_9b2c77c4");
	var_5dc5e20a namespace_71e9cb84::function_e9c3870b("zipline_rumble_loop", 0);
	var_38a15f56 = function_6ada35ba("fx_fire_elevator", "targetname");
	if(isdefined(var_38a15f56))
	{
		var_38a15f56 namespace_5753664b::function_43718187("explosion_zipline_up", var_38a15f56.var_722885f3, undefined);
	}
	level thread namespace_71e9cb84::function_74d6b22f("elevator_top_debris_play", 1);
}

/*
	Name: function_5f8f3618
	Namespace: namespace_1b0f1865
	Checksum: 0xB71765E5
	Offset: 0x6448
	Size: 0x2B7
	Parameters: 1
	Flags: None
*/
function function_5f8f3618(var_11976e03)
{
	self endon("hash_643a7daf");
	self endon("hash_82f2510e");
	self endon("hash_643a7daf");
	var_11976e03 endon("hash_128f8789");
	var_3eac426f = 0;
	var_25f54188 = 1;
	var_aabe9f43 = 0;
	level thread function_7d32eadb();
	var_11976e03 thread function_33cde320();
	while(1)
	{
		var_24c4f8db = function_316422d1(self.var_722885f3, var_11976e03.var_722885f3);
		if(var_11976e03 namespace_82b91a51::function_4ccc8ec5(self, 0.5, 1) && !self namespace_564407fb::function_38a9aff8() && var_24c4f8db <= 6250000)
		{
			var_3eac426f = var_3eac426f + 0.05;
			if(var_3eac426f > 1.25)
			{
				level notify("hash_38124849");
			}
			if(var_3eac426f > 5)
			{
				var_3eac426f = 5;
			}
			var_25f54188 = var_3eac426f / 5;
		}
		else if(!var_11976e03 namespace_82b91a51::function_4ccc8ec5(self, 0.5, 1) || var_24c4f8db > 6250000)
		{
			var_3eac426f = var_3eac426f - 0.05;
			if(var_3eac426f < 0)
			{
				var_3eac426f = 0;
			}
			var_25f54188 = var_3eac426f / 5;
		}
		if(var_3eac426f >= 5 || var_11976e03.var_3a90f16b < var_11976e03.var_38a62b0e * 0.9 || var_11976e03 namespace_ad23e503::function_7922262b("hunter_sees_player"))
		{
			var_3eac426f = 0;
			var_11976e03 namespace_ad23e503::function_74d6b22f("hunter_sees_player");
			var_11976e03 namespace_d84e54db::function_c9e45d52(0);
			level thread function_6febb5e2();
		}
		wait(0.05);
	}
}

/*
	Name: function_3fbe7731
	Namespace: namespace_1b0f1865
	Checksum: 0x2BE6E227
	Offset: 0x6708
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_3fbe7731()
{
	var_b1e02cab = namespace_14b42b8a::function_7922262b("hunter_target_tree1_1", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b1e02cab), "Dev Block strings are not supported");
	#/
	function_5e09918e("cp_biodomes_supertree_collapse_1_rumble", var_b1e02cab.var_722885f3);
	level notify("hash_706115bc");
	var_c889b49e = namespace_2f06d687::function_22356ba7("sp_supertree_tree1_wounded", &function_ac17866e);
	level thread function_5cfa83d9("sp_supertrees_treecrash_ragdolls1", 2, (80, 15, 90), 0, 0.25);
	level thread function_5cfa83d9("sp_supertrees_treecrash_ragdolls2", 2, (80, 15, 100), 0, 0.25);
	wait(4);
	function_5e09918e("cp_biodomes_supertree_collapse_2_rumble", var_b1e02cab.var_722885f3);
	wait(5);
	function_5e09918e("cp_biodomes_supertree_collapse_3_rumble", var_b1e02cab.var_722885f3);
	if(!namespace_d5067552::function_56a7483f("sm_supertrees_wasp1"))
	{
		namespace_d5067552::function_bae40a28("sm_supertrees_wasp1");
	}
}

/*
	Name: function_5cfa83d9
	Namespace: namespace_1b0f1865
	Checksum: 0xE6BC1882
	Offset: 0x68D8
	Size: 0x18D
	Parameters: 5
	Flags: None
*/
function function_5cfa83d9(var_28c25ffb, var_ee8ca7aa, var_8cd5b0c5, var_4e2b3cf, var_e91b3285)
{
	if(!isdefined(var_4e2b3cf))
	{
		var_4e2b3cf = 0;
	}
	if(!isdefined(var_e91b3285))
	{
		var_e91b3285 = 0.1;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_ee8ca7aa; var_c957f6b6++)
	{
		var_d84e54db = namespace_2f06d687::function_7387a40a(var_28c25ffb);
		var_d84e54db function_d7a0a9d8();
		var_1d83c20f = function_dc99997a(-5, 5);
		var_f78147a6 = function_dc99997a(-5, 5);
		var_d17ecd3d = function_dc99997a(-5, 5);
		var_8cd5b0c5 = var_8cd5b0c5 + (var_1d83c20f, var_f78147a6, var_d17ecd3d);
		var_d84e54db function_8461d2b1(var_8cd5b0c5);
		var_d84e54db function_2992720d();
		wait(function_72a94f05(var_4e2b3cf, var_e91b3285));
	}
}

/*
	Name: function_29eec7b2
	Namespace: namespace_1b0f1865
	Checksum: 0xB1E845E2
	Offset: 0x6A70
	Size: 0x147
	Parameters: 5
	Flags: None
*/
function function_29eec7b2(var_effa55fa, var_abf8ab96, var_4ed8d59d, var_4e2b3cf, var_e91b3285)
{
	if(!isdefined(var_4e2b3cf))
	{
		var_4e2b3cf = 1;
	}
	if(!isdefined(var_e91b3285))
	{
		var_e91b3285 = 1;
	}
	for(var_c957f6b6 = var_abf8ab96; var_c957f6b6 <= var_4ed8d59d; var_c957f6b6++)
	{
		var_96f9f90c = namespace_14b42b8a::function_7922262b(var_effa55fa + "_" + var_c957f6b6, "targetname");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_96f9f90c), "Dev Block strings are not supported" + var_effa55fa + "Dev Block strings are not supported" + var_c957f6b6);
		#/
		self namespace_5e7ee507::function_ed543896(0, var_96f9f90c);
		var_3865186 = function_72a94f05(var_4e2b3cf, var_e91b3285 + 0.01);
		wait(var_3865186);
	}
}

/*
	Name: function_5a80eb84
	Namespace: namespace_1b0f1865
	Checksum: 0x38E30017
	Offset: 0x6BC0
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_5a80eb84()
{
	while(isdefined(self) && self function_c5637452())
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		level namespace_ad23e503::function_74d6b22f("any_player_reached_bottom_finaltree");
		if(self.var_aef176e7 == level.var_2395e945[0])
		{
			level namespace_ad23e503::function_74d6b22f("player_reached_bottom_finaltree");
			var_6cfd4078 = function_99201f25("reached_finaltree_triggers", "script_noteworthy");
			foreach(var_4dbf3ae3 in var_6cfd4078)
			{
				var_4dbf3ae3 function_175e6b8e(0);
			}
		}
	}
}

/*
	Name: function_9c25cf32
	Namespace: namespace_1b0f1865
	Checksum: 0x3DE81489
	Offset: 0x6D10
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function function_9c25cf32()
{
	self endon("hash_57ce910f");
	var_3dc3d229 = namespace_4dbf3ae3::function_1ab5ebec("trig_finaltree_hendricks_zipline_go");
	self namespace_ad23e503::function_d3de6822("hendricks_on_zipline");
	if(self.var_fd3ee5eb == "tree3")
	{
		self.var_db7bb468 = var_3dc3d229.var_b2ff4d87;
		self function_76e355e1();
	}
	else if(self.var_fd3ee5eb == "tree2")
	{
		self.var_fd3ee5eb = "tree4";
		self function_76e355e1();
	}
	else if(self.var_fd3ee5eb == "tree1")
	{
		if(!level namespace_ad23e503::function_7922262b("hendricks_played_supertree_takedown"))
		{
			level namespace_cc27597::function_fcf56ab5("cin_bio_13_02_treefight_vign_ziplinekill");
		}
		self.var_db7bb468 = "tree3";
		self function_76e355e1();
		self.var_db7bb468 = var_3dc3d229.var_b2ff4d87;
		self function_76e355e1();
	}
	self.var_db7bb468 = "treefinal";
	self function_76e355e1();
	level namespace_ad23e503::function_74d6b22f("hendricks_reached_finaltree");
	self namespace_6f7b2095::function_54bdb053();
	self function_e11ce512();
	var_dfcbd82b = function_b4cb3503("hendricks_elevator_goal", "targetname");
	self function_169cc712(var_dfcbd82b);
}

/*
	Name: function_657c0308
	Namespace: namespace_1b0f1865
	Checksum: 0x986226EA
	Offset: 0x6F58
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_657c0308(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_769dc23f::function_4b47f9f6();
	namespace_769dc23f::function_16509d1f();
	namespace_27a45d31::function_ddb0eeea("objective_supertrees_done");
}

/*
	Name: function_e83c544
	Namespace: namespace_1b0f1865
	Checksum: 0xAADF41E0
	Offset: 0x6FC0
	Size: 0x33B
	Parameters: 2
	Flags: None
*/
function function_e83c544(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_dive_init");
	namespace_d5067552::function_2992720d("sm_supertrees_hunter");
	function_6ddd4fa4("fxanim_fish");
	level notify("hash_3a2c1be8");
	level thread function_a2b40033();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		namespace_d0ef8521::function_31cd1834("cp_level_biodomes_supertrees_treefinal");
		level namespace_ad23e503::function_74d6b22f("supertrees_hunter_arrival");
		level namespace_ad23e503::function_74d6b22f("player_reached_bottom_finaltree");
		level namespace_ad23e503::function_74d6b22f("player_reached_top_finaltree");
		level namespace_ad23e503::function_74d6b22f("any_player_reached_bottom_finaltree");
		level namespace_ad23e503::function_74d6b22f("hendricks_played_supertree_takedown");
		namespace_80983c42::function_80983c42("fx_expl_fire_prehunter_supertree");
		namespace_80983c42::function_80983c42("fx_expl_fire_arrivetop_supertree");
		level thread function_f6312ac0(var_74cd64bc);
		level namespace_71e9cb84::function_74d6b22f("elevator_top_debris_play", 1);
		level namespace_71e9cb84::function_74d6b22f("boat_explosion_play", 1);
		level thread namespace_76133733::function_973b77f9();
		namespace_d7916d65::function_a2995f22();
	}
	level.var_2fd26037 notify("hash_3a2c1be8");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 0);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level namespace_82b91a51::function_ef3f75eb("sndRamp");
	level thread function_ca1d2a2d();
	level thread namespace_a660d427::function_b52b6eac();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_a660d427::function_39af75ef, "boats_go");
	level namespace_ad23e503::function_1ab5ebec("player_dive_done");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level namespace_1d795d47::function_be8adfb8("objective_dive");
}

/*
	Name: function_863b63b5
	Namespace: namespace_1b0f1865
	Checksum: 0xA4212BB
	Offset: 0x7308
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_863b63b5()
{
	level endon("hash_f6312ac0");
	wait(12);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_re_dead_if_we_don_0");
	level notify("hash_b1e29472");
}

/*
	Name: function_f6312ac0
	Namespace: namespace_1b0f1865
	Checksum: 0xC5CA9F0
	Offset: 0x7358
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_f6312ac0(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	if(var_74cd64bc)
	{
		level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
	}
	level thread namespace_cc27597::function_43718187("cin_bio_14_01_treejump_vign_dive");
	wait(2);
	level notify("hash_3d6e28");
	if(isdefined(level.var_e32d12f3))
	{
		level thread [[level.var_e32d12f3]]();
	}
	var_c908f76f = namespace_14b42b8a::function_7922262b("s_waypoint_supertree_jump");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_c908f76f), "Dev Block strings are not supported");
	#/
	level namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_jump_from_supertree", var_c908f76f);
	if(!level namespace_ad23e503::function_7922262b("start_hendricks_dive"))
	{
		level thread function_863b63b5();
		level namespace_ad23e503::function_1ab5ebec("start_hendricks_dive");
	}
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_82b91a51::function_6729b6ba(2, "top_of_supertree_explosion");
	level namespace_cc27597::function_43718187("cin_bio_14_01_treejump_vign_dive_end");
	level.var_2fd26037 namespace_a660d427::function_dd9ded92();
}

/*
	Name: function_975cf43a
	Namespace: namespace_1b0f1865
	Checksum: 0x3BEC7891
	Offset: 0x7530
	Size: 0x5F
	Parameters: 4
	Flags: None
*/
function function_975cf43a(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("objective_dive_done");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_jump_from_supertree");
	level.var_adcba170 = 1;
}

#namespace namespace_ba668242;

/*
	Name: function_9b385ca5
	Namespace: namespace_ba668242
	Checksum: 0xFE72B3B1
	Offset: 0x7598
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_58955f5c = function_99201f25("gate_tree_1a", "targetname");
	self.var_7e16e483 = self.var_58955f5c[0].var_170527fb;
	self.var_1484043e = self.var_58955f5c[0].var_b07228b6;
	self.var_ceb54ef4 = 0.25;
	self.var_8d014670 = 0.25;
	self.var_6aa78718 = self.var_58955f5c[0].var_722885f3;
	self.var_bbe2e3a7 = self.var_58955f5c[1].var_722885f3;
	self.var_63199256 = self.var_58955f5c[0].var_6ab6f4fd;
	self.var_10ff592d = self.var_58955f5c[1].var_6ab6f4fd;
	self.var_c88d0ebd = self.var_58955f5c[0].var_6ab6f4fd;
	self.var_e6756120 = self.var_58955f5c[1].var_6ab6f4fd;
}

/*
	Name: function_5fba2032
	Namespace: namespace_ba668242
	Checksum: 0x99EC1590
	Offset: 0x76F0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: function_c35e6aab
	Namespace: namespace_ba668242
	Checksum: 0x46E4BACC
	Offset: 0x7700
	Size: 0x4F3
	Parameters: 1
	Flags: None
*/
function function_c35e6aab(var_43ccc7b4)
{
	self.var_58955f5c = function_99201f25(var_43ccc7b4, "targetname");
	self.var_7e16e483 = var_43ccc7b4;
	self.var_1484043e = self.var_58955f5c[0].var_b07228b6;
	self.var_6aa78718 = self.var_58955f5c[0].var_722885f3;
	self.var_bbe2e3a7 = self.var_58955f5c[1].var_722885f3;
	self.var_c88d0ebd = self.var_58955f5c[0].var_6ab6f4fd;
	self.var_e6756120 = self.var_58955f5c[1].var_6ab6f4fd;
	if(self.var_7e16e483 == "restaurant_gate_01")
	{
		self.var_63199256 = self.var_58955f5c[0].var_6ab6f4fd + (self.var_58955f5c[0].var_6ab6f4fd[0] + 14, self.var_58955f5c[0].var_6ab6f4fd[1] + -90, self.var_58955f5c[0].var_6ab6f4fd[2] + 0);
		self.var_10ff592d = self.var_58955f5c[1].var_6ab6f4fd + (self.var_58955f5c[1].var_6ab6f4fd[0] + -2, self.var_58955f5c[1].var_6ab6f4fd[1] + 90, self.var_58955f5c[1].var_6ab6f4fd[2] + -18);
	}
	else if(self.var_7e16e483 == "restaurant_gate_02")
	{
		self.var_63199256 = self.var_58955f5c[0].var_6ab6f4fd + (self.var_58955f5c[0].var_6ab6f4fd[0] + 2, self.var_58955f5c[0].var_6ab6f4fd[1] + -90, self.var_58955f5c[0].var_6ab6f4fd[2] + -4);
		self.var_10ff592d = self.var_58955f5c[1].var_6ab6f4fd + (self.var_58955f5c[1].var_6ab6f4fd[0] + -8, self.var_58955f5c[1].var_6ab6f4fd[1] + 90, self.var_58955f5c[1].var_6ab6f4fd[2] + -5);
	}
	else
	{
		self.var_63199256 = self.var_58955f5c[0].var_6ab6f4fd + (self.var_58955f5c[0].var_6ab6f4fd[0], self.var_58955f5c[0].var_6ab6f4fd[1] + -90, self.var_58955f5c[0].var_6ab6f4fd[2]);
		self.var_10ff592d = self.var_58955f5c[1].var_6ab6f4fd + (self.var_58955f5c[1].var_6ab6f4fd[0], self.var_58955f5c[1].var_6ab6f4fd[1] + 90, self.var_58955f5c[1].var_6ab6f4fd[2]);
	}
	var_fcd3376c = 0;
	foreach(var_82e417eb in level.var_77a37a25)
	{
		if(self == function_cabbdf40())
		{
			var_fcd3376c = 1;
			break;
		}
	}
	if(!var_fcd3376c)
	{
		namespace_84970cc4::function_69554b3e(level.var_77a37a25, self);
	}
}

/*
	Name: function_c3e1dff0
	Namespace: namespace_ba668242
	Checksum: 0x3DA306E3
	Offset: 0x7C00
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_c3e1dff0()
{
	self.var_58955f5c[0] function_c0b6566f(self.var_63199256, self.var_ceb54ef4);
	self.var_58955f5c[1] function_c0b6566f(self.var_10ff592d, self.var_ceb54ef4);
	function_37cbcf1a("evt_zipline_gate_open", self.var_6aa78718);
	wait(self.var_ceb54ef4);
}

/*
	Name: function_c0cdf2d2
	Namespace: namespace_ba668242
	Checksum: 0x99DE9C09
	Offset: 0x7C98
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_c0cdf2d2()
{
	self.var_58955f5c[0] function_c0b6566f(self.var_c88d0ebd, self.var_8d014670);
	self.var_58955f5c[1] function_c0b6566f(self.var_e6756120, self.var_8d014670);
	function_37cbcf1a("evt_zipline_gate_close", self.var_6aa78718);
	wait(self.var_8d014670);
}

/*
	Name: function_cabbdf40
	Namespace: namespace_ba668242
	Checksum: 0xA3AB4062
	Offset: 0x7D30
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_cabbdf40()
{
	return self.var_7e16e483;
}

/*
	Name: function_83f15319
	Namespace: namespace_ba668242
	Checksum: 0xBB5B4C5D
	Offset: 0x7D48
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_83f15319()
{
	return self.var_1484043e;
}

#namespace namespace_1b0f1865;

/*
	Name: function_ba668242
	Namespace: namespace_1b0f1865
	Checksum: 0xFE743B14
	Offset: 0x7D60
	Size: 0x175
	Parameters: 0
	Flags: 6
*/
function private autoexec function_ba668242()
{
	classes.var_ba668242[0] = function_a8fb77bd();
	classes.var_ba668242[0].var_b684a6d1[-2081336551] = &namespace_ba668242::function_83f15319;
	classes.var_ba668242[0].var_b684a6d1[-893657280] = &namespace_ba668242::function_cabbdf40;
	classes.var_ba668242[0].var_b684a6d1[-1060244782] = &namespace_ba668242::function_c0cdf2d2;
	classes.var_ba668242[0].var_b684a6d1[-1008607248] = &namespace_ba668242::function_c3e1dff0;
	classes.var_ba668242[0].var_b684a6d1[-1017222485] = &namespace_ba668242::function_c35e6aab;
	classes.var_ba668242[0].var_b684a6d1[1606033458] = &namespace_ba668242::function_5fba2032;
	classes.var_ba668242[0].var_b684a6d1[-1690805083] = &namespace_ba668242::function_9b385ca5;
}

/*
	Name: function_c85169ef
	Namespace: namespace_1b0f1865
	Checksum: 0x9246CF95
	Offset: 0x7EE0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c85169ef()
{
	level.var_77a37a25 = [];
	var_1f0c83ec = function_99201f25("zipline_gates", "script_parameters");
	namespace_84970cc4::function_966ecb29(var_1f0c83ec, &function_b41f17f2);
}

/*
	Name: function_b41f17f2
	Namespace: namespace_1b0f1865
	Checksum: 0x2B95A6B8
	Offset: 0x7F50
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_b41f17f2()
{
	function_9b385ca5();
	var_1eb88afc = var_ba668242;
	function_c35e6aab(var_1eb88afc);
}

/*
	Name: function_558d1745
	Namespace: namespace_1b0f1865
	Checksum: 0xC4D4E077
	Offset: 0x7F90
	Size: 0x1DF
	Parameters: 2
	Flags: None
*/
function function_558d1745()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_fd35e580
	Namespace: namespace_1b0f1865
	Checksum: 0x5A7F8FB6
	Offset: 0x8178
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_fd35e580()
{
	var_9d26d41c = function_99201f25("zipline_trigger", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_9d26d41c, &function_36934515);
}

/*
	Name: function_36934515
	Namespace: namespace_1b0f1865
	Checksum: 0x2E0B7C59
	Offset: 0x81D8
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_36934515()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	self.var_5356d2cc = namespace_82b91a51::function_14518e76(self, &"cp_prompt_zipline_biodomes_use", &"CP_MI_SING_BIODOMES_ZIPLINE_USE", &function_cbfdcddd);
	self.var_5356d2cc thread namespace_a230c2b1::function_e0e2d0fe((1, 1, 1), 400, 0);
	var_10729d99 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_10729d99), "Dev Block strings are not supported" + self.var_722885f3 + "Dev Block strings are not supported");
	#/
	var_96eed922 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_96eed922), "Dev Block strings are not supported" + var_10729d99.var_722885f3 + "Dev Block strings are not supported");
	#/
	while(1)
	{
		self waittill("hash_4032ce0f", var_5dc5e20a);
		var_5dc5e20a function_45f61c3c(self, var_10729d99, var_96eed922);
	}
}

/*
	Name: function_cbfdcddd
	Namespace: namespace_1b0f1865
	Checksum: 0x320EE68A
	Offset: 0x8378
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_cbfdcddd(var_5dc5e20a)
{
	self.var_4dbf3ae3 notify("hash_4032ce0f", var_5dc5e20a);
	if(isdefined(self.var_4dbf3ae3.var_a33b36db))
	{
		if(self.var_4dbf3ae3.var_a33b36db == "gate_tree_4b" || self.var_4dbf3ae3.var_a33b36db == "gate_tree_5b")
		{
			level notify("hash_52434ccd");
		}
	}
}

/*
	Name: function_45f61c3c
	Namespace: namespace_1b0f1865
	Checksum: 0xAEA49B59
	Offset: 0x8400
	Size: 0x9D3
	Parameters: 3
	Flags: None
*/
function function_45f61c3c(var_4dbf3ae3, var_10729d99, var_96eed922)
{
	self endon("hash_128f8789");
	self.var_23304c9e = 1;
	var_ad470f8c = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, var_10729d99.var_6ab6f4fd, 0, 0);
	self function_ed594d21(var_ad470f8c, undefined, 1, 20, 20, 15, 60);
	var_ccd4343c = function_7d15e2f8(var_10729d99.var_722885f3, var_96eed922.var_722885f3);
	var_78962fff = var_ccd4343c / 400;
	self thread function_ace0977c();
	self function_e6152ede();
	self function_518a4a08();
	self function_1c75a89a(0);
	self function_f5ba63f2(0);
	level notify("hash_2c534be8", self, 1);
	var_ad470f8c function_b8862210("evt_zipline_attach", self);
	var_b01e95a = namespace_82b91a51::function_f7337c08(self);
	var_f4ce3e5 = namespace_82b91a51::function_b9fd52a4("wpn_t7_zipline_trolley_prop", var_b01e95a function_d48f2ab3("tag_weapon_left"), var_b01e95a function_cd1d99bd("tag_weapon_left"));
	var_f4ce3e5 function_37f7858a(var_b01e95a, "tag_weapon_left");
	var_f4ce3e5 function_d610622c(self);
	var_d13f855e = self.var_fd4f9b7c;
	var_9f2c3e1c = self function_1caa9276();
	var_1ca8dedf = namespace_82b91a51::function_b9fd52a4(var_9f2c3e1c.var_7c2864e6, var_b01e95a function_d48f2ab3("tag_weapon_right"), var_b01e95a function_cd1d99bd("tag_weapon_right"));
	var_1ca8dedf function_37f7858a(var_b01e95a, "tag_weapon_right");
	var_1ca8dedf function_d610622c(self);
	if(var_9f2c3e1c === level.var_135a01e4)
	{
		self.var_42a705b8 = 0;
		self function_1271a73e();
		self function_1b947e2a("weapon_hud_visible", 0);
	}
	var_b01e95a namespace_71e9cb84::function_74d6b22f("clone_control", 1);
	var_f4ce3e5 namespace_71e9cb84::function_74d6b22f("clone_control", 1);
	var_1ca8dedf namespace_71e9cb84::function_74d6b22f("clone_control", 1);
	self function_8c8e79fe();
	self.var_fd3ee5eb = var_96eed922.var_b2ff4d87;
	var_ad470f8c.var_722885f3 = self.var_722885f3;
	var_ad470f8c.var_6ab6f4fd = self.var_6ab6f4fd;
	if(self.var_42a705b8)
	{
		var_b01e95a thread namespace_1fb6a2e5::function_43718187("pb_pistol_zipline_enter", var_ad470f8c, "tag_origin");
	}
	else
	{
		var_b01e95a thread namespace_1fb6a2e5::function_43718187("pb_zipline_enter", var_ad470f8c, "tag_origin");
	}
	var_ad470f8c function_a96a2721(var_10729d99.var_722885f3, 0.25);
	var_ad470f8c function_c0b6566f(var_10729d99.var_6ab6f4fd, 0.25);
	var_ad470f8c waittill("hash_a21db68a");
	self function_e2af603e("cp_biodomes_zipline_attach_rumble");
	self thread function_558d1745(var_4dbf3ae3, var_ad470f8c);
	if(self == level.var_2395e945[0] && !level namespace_ad23e503::function_7922262b("player_reached_final_zipline"))
	{
		level.var_2fd26037 thread function_b5e8c4c0(var_10729d99);
	}
	if(self.var_42a705b8)
	{
		var_b01e95a thread namespace_1fb6a2e5::function_43718187("pb_pistol_zipline_loop", var_ad470f8c, "tag_origin");
	}
	else
	{
		var_b01e95a thread namespace_1fb6a2e5::function_43718187("pb_zipline_loop", var_ad470f8c, "tag_origin");
	}
	self namespace_71e9cb84::function_e9c3870b("zipline_speed_blur", 1);
	self namespace_71e9cb84::function_e9c3870b("zipline_rumble_loop", 1);
	self function_c2931a36("evt_zipline_move", 0.3);
	var_ad470f8c function_a96a2721(var_96eed922.var_722885f3, var_78962fff, 0, 0);
	var_ad470f8c waittill("hash_a21db68a");
	self function_52fddbd0();
	var_d230ad83 = function_bc7ce905(self.var_6ab6f4fd);
	self function_f5df04e6(var_d230ad83 * 300);
	self function_e2af603e("cp_biodomes_zipline_dismount_rumble");
	self namespace_71e9cb84::function_e9c3870b("zipline_rumble_loop", 0);
	self namespace_71e9cb84::function_e9c3870b("zipline_speed_blur", 0);
	self function_eaa69754(0.5);
	var_e5642e86 = function_eed6dab7(var_ad470f8c.var_722885f3, 72, 48);
	if(isdefined(var_e5642e86))
	{
		if(self.var_42a705b8)
		{
			var_b01e95a thread namespace_1fb6a2e5::function_43718187("pb_pistol_zipline_exit", var_ad470f8c, "tag_origin");
		}
		else
		{
			var_b01e95a thread namespace_1fb6a2e5::function_43718187("pb_zipline_exit", var_ad470f8c, "tag_origin");
		}
		var_ad470f8c function_a96a2721(var_e5642e86, 0.25);
		var_ad470f8c waittill("hash_a21db68a");
	}
	else
	{
		var_ccacea03 = function_cbc4f0b(self.var_722885f3, self.var_722885f3 + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
		var_ad470f8c function_a96a2721(var_ccacea03, 0.25);
	}
	self notify("hash_4d91a838");
	level notify("player_landed_on_" + self.var_fd3ee5eb);
	var_b01e95a namespace_71e9cb84::function_74d6b22f("clone_control", 0);
	var_f4ce3e5 namespace_71e9cb84::function_74d6b22f("clone_control", 0);
	var_1ca8dedf namespace_71e9cb84::function_74d6b22f("clone_control", 0);
	var_ad470f8c function_dc8c8404();
	var_1ca8dedf function_dc8c8404();
	var_f4ce3e5 function_dc8c8404();
	self function_48f26766();
	var_b01e95a function_50ccee8d();
	namespace_82b91a51::function_76f13293();
	var_b01e95a function_dc8c8404();
	self function_1ed1ef36();
	self function_1f3745c0(var_9f2c3e1c);
	self function_9785d11(var_d13f855e);
}

/*
	Name: function_1ed1ef36
	Namespace: namespace_1b0f1865
	Checksum: 0x7767BA82
	Offset: 0x8DE0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_1ed1ef36()
{
	if(!self.var_42a705b8)
	{
		self function_901e0817();
		self function_1b947e2a("weapon_hud_visible", 1);
	}
	self function_6c8f914f();
	self function_4b9f6977();
	self function_1c75a89a(1);
	self function_f5ba63f2(1);
	level notify("hash_786c76a1", self);
	self.var_23304c9e = 0;
}

/*
	Name: function_f74e47aa
	Namespace: namespace_1b0f1865
	Checksum: 0xBE3BF793
	Offset: 0x8EA8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_f74e47aa()
{
	self notify("hash_9d906207");
	self function_52fddbd0();
	self namespace_71e9cb84::function_e9c3870b("zipline_rumble_loop", 0);
	self namespace_71e9cb84::function_e9c3870b("zipline_speed_blur", 0);
	self notify("hash_4d91a838");
	self function_48f26766();
	self function_1ed1ef36();
}

/*
	Name: function_ace0977c
	Namespace: namespace_1b0f1865
	Checksum: 0x66BCB3FE
	Offset: 0x8F50
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ace0977c()
{
	self endon("hash_128f8789");
	self function_83fd42b5();
	self waittill("hash_4d91a838");
	wait(2);
	self function_4890e520();
}

/*
	Name: function_1caa9276
	Namespace: namespace_1b0f1865
	Checksum: 0x21C68107
	Offset: 0x8FA8
	Size: 0x5C7
	Parameters: 0
	Flags: None
*/
function function_1caa9276()
{
	self.var_42a705b8 = 0;
	if(self.var_fd4f9b7c.var_f4ae8e42 == "pistol")
	{
		self.var_42a705b8 = 1;
		var_d1f13390 = self.var_fd4f9b7c;
		break;
	}
	if(isdefined(self.var_e4b7ccb8))
	{
		foreach(var_dfcc01fd in self.var_e4b7ccb8)
		{
			if(var_dfcc01fd.var_f4ae8e42 === "pistol")
			{
				self.var_42a705b8 = 1;
				var_d1f13390 = var_dfcc01fd;
				break;
			}
		}
	}
	else if(isdefined(self.var_ed60773f))
	{
		foreach(var_dfcc01fd in self.var_ed60773f)
		{
			if(var_dfcc01fd.var_f4ae8e42 === "pistol")
			{
				self.var_42a705b8 = 1;
				var_d1f13390 = var_dfcc01fd;
				break;
			}
		}
	}
	var_64026dbd = [];
	if(isdefined(var_d1f13390))
	{
		var_1bf470cb = self function_159a070b(var_d1f13390);
		var_bdb1b959 = self function_54d84899(var_d1f13390);
		var_64026dbd = var_d1f13390.var_4a294ea1;
	}
	if(self.var_42a705b8)
	{
		if(var_d1f13390.var_8c02d299 == level.var_957c9ba0)
		{
			var_9f2c3e1c = level.var_ad139ea;
		}
		else if(var_d1f13390.var_8c02d299 == level.var_d582416e)
		{
			var_9f2c3e1c = level.var_17a1f194;
		}
		else if(var_d1f13390.var_8c02d299 == level.var_8ffd4cdb)
		{
			var_9f2c3e1c.var_8c02d299 = level.var_d397bc89;
		}
		else if(var_d1f13390.var_8c02d299 == level.var_44a0465d)
		{
			var_9f2c3e1c = level.var_80242247;
		}
		else if(self.var_42a705b8)
		{
			var_9f2c3e1c = level.var_17a1f194;
		}
		switch(var_64026dbd.size)
		{
			case 1:
			{
				var_9f2c3e1c = function_c4d5ec1f(var_9f2c3e1c.var_4be20d44, var_64026dbd[0]);
				break;
			}
			case 2:
			{
				var_9f2c3e1c = function_c4d5ec1f(var_9f2c3e1c.var_4be20d44, var_64026dbd[0], var_64026dbd[1]);
				break;
			}
			case 3:
			{
				var_9f2c3e1c = function_c4d5ec1f(var_9f2c3e1c.var_4be20d44, var_64026dbd[0], var_64026dbd[1], var_64026dbd[2]);
				break;
			}
			case 4:
			{
				var_9f2c3e1c = function_c4d5ec1f(var_9f2c3e1c.var_4be20d44, var_64026dbd[0], var_64026dbd[1], var_64026dbd[2], var_64026dbd[3]);
				break;
			}
			case default:
			{
				break;
			}
		}
	}
	else if(self function_2103ff4b(level.var_957c9ba0, 1))
	{
		var_9f2c3e1c = level.var_ad139ea;
	}
	else if(self function_2103ff4b(level.var_d582416e, 1))
	{
		var_9f2c3e1c = level.var_17a1f194;
	}
	else if(self function_2103ff4b(level.var_8ffd4cdb, 1))
	{
		var_9f2c3e1c = level.var_d397bc89;
	}
	else if(self function_2103ff4b(level.var_44a0465d, 1))
	{
		var_9f2c3e1c = level.var_80242247;
	}
	else
	{
		var_9f2c3e1c = level.var_135a01e4;
	}
	self function_860a040a(var_9f2c3e1c);
	self function_9785d11(var_9f2c3e1c);
	if(isdefined(var_d1f13390))
	{
		self function_67795b5f(var_9f2c3e1c, var_1bf470cb);
		self function_cdf98bcd(var_9f2c3e1c, var_bdb1b959);
		self thread function_5cab4471(var_9f2c3e1c, var_d1f13390);
	}
	return var_9f2c3e1c;
}

/*
	Name: function_5cab4471
	Namespace: namespace_1b0f1865
	Checksum: 0x9C193BEA
	Offset: 0x9578
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_5cab4471(var_9f2c3e1c, var_d1f13390)
{
	self endon("hash_128f8789");
	self waittill("hash_4d91a838");
	self function_67795b5f(var_d1f13390, self function_159a070b(var_9f2c3e1c));
	self function_cdf98bcd(var_d1f13390, self function_54d84899(var_9f2c3e1c));
}

/*
	Name: function_b5e8c4c0
	Namespace: namespace_1b0f1865
	Checksum: 0xFFA3BC89
	Offset: 0x9610
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_b5e8c4c0(var_53525ae3)
{
	level endon("hash_f7ebef4e");
	self namespace_ad23e503::function_d3de6822("hendricks_on_zipline");
	self notify("hash_93bef291");
	if(!level namespace_ad23e503::function_7922262b("hendricks_played_supertree_takedown"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_bio_13_02_treefight_vign_ziplinekill");
	}
	self.var_b07228b6 = var_53525ae3.var_170527fb;
	self thread function_cdb04f99();
}

/*
	Name: function_cdb04f99
	Namespace: namespace_1b0f1865
	Checksum: 0x3A531C72
	Offset: 0x96C8
	Size: 0x833
	Parameters: 0
	Flags: None
*/
function function_cdb04f99()
{
	var_10729d99 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_10729d99), "Dev Block strings are not supported" + self.var_722885f3 + "Dev Block strings are not supported");
	#/
	var_96eed922 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_96eed922), "Dev Block strings are not supported" + var_10729d99.var_722885f3 + "Dev Block strings are not supported");
	#/
	self.var_fd3ee5eb = var_10729d99.var_b2ff4d87;
	if(self == level.var_2fd26037)
	{
		self endon("hash_57ce910f");
		self namespace_6f7b2095::function_54bdb053();
		self namespace_ad23e503::function_74d6b22f("hendricks_on_zipline");
	}
	self endon("hash_128f8789");
	self endon("hash_f3069794");
	var_ccacea03 = function_cbc4f0b(var_10729d99.var_722885f3, var_10729d99.var_722885f3 + VectorScale((0, 0, -1), 100000), 0, self, 1)["position"];
	if(isdefined(var_ccacea03))
	{
		self function_169cc712(var_ccacea03, 1);
		var_c312dab9 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_ccacea03, var_10729d99.var_6ab6f4fd);
	}
	else
	{
		self function_169cc712(var_ccacea03, 1);
		var_c312dab9 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_10729d99.var_722885f3, var_10729d99.var_6ab6f4fd);
	}
	self waittill("hash_41d1aaf0");
	if(self == level.var_2fd26037 && (self.var_fd3ee5eb == "tree4" || self.var_fd3ee5eb == "tree5"))
	{
		namespace_80983c42::function_80983c42("fx_expl_fire_leadzip_explode");
		level thread namespace_82b91a51::function_67520c6a(1.5, undefined, &function_44ec4f8f);
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
	self.var_23304c9e = 1;
	var_ccd4343c = function_7d15e2f8(var_10729d99.var_722885f3, var_96eed922.var_722885f3);
	if(self == level.var_2fd26037)
	{
		var_78962fff = var_ccd4343c / 400;
	}
	else
	{
		var_78962fff = var_ccd4343c / 350;
		self.var_3a90f16b = 5;
	}
	var_b39127dd = namespace_82b91a51::function_b9fd52a4("wpn_t7_zipline_trolley_prop", self function_d48f2ab3("tag_weapon_left"), self function_cd1d99bd("tag_weapon_left"));
	var_b39127dd function_37f7858a(self, "tag_weapon_left");
	if(self == level.var_2fd26037)
	{
		self.var_ae65ed78 = var_b39127dd;
		self.var_ae451748 = var_c312dab9;
	}
	else
	{
		self thread function_e87de176(function_84970cc4(var_c312dab9, var_b39127dd));
	}
	var_c312dab9.var_722885f3 = self.var_722885f3;
	var_c312dab9.var_6ab6f4fd = self.var_6ab6f4fd;
	var_c312dab9 thread namespace_cc27597::function_43718187("cin_gen_traversal_zipline_enemy02_attach", self);
	self waittill("hash_8c8d4197");
	var_c312dab9 function_a96a2721(var_10729d99.var_722885f3, 0.33);
	var_c312dab9 function_c0b6566f(var_10729d99.var_6ab6f4fd, 0.33);
	var_c312dab9 waittill("hash_a21db68a");
	var_c312dab9 thread namespace_cc27597::function_43718187("cin_gen_traversal_zipline_enemy02_idle", self);
	var_c312dab9 function_a96a2721(var_96eed922.var_722885f3, var_78962fff);
	self thread function_558d1745(var_10729d99, var_c312dab9);
	self thread function_c936992e();
	var_c312dab9 namespace_82b91a51::function_c9aa1ff("movedone", 8);
	var_e5642e86 = function_eed6dab7(var_c312dab9.var_722885f3, 72, 36);
	if(isdefined(var_e5642e86))
	{
		var_c312dab9 function_a96a2721(var_e5642e86, 0.25);
	}
	else
	{
		var_ccacea03 = function_cbc4f0b(self.var_722885f3, self.var_722885f3 + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
		var_c312dab9 function_a96a2721(var_ccacea03, 0.25);
	}
	var_c312dab9 namespace_cc27597::function_43718187("cin_gen_traversal_zipline_enemy02_dismount", self);
	self notify("hash_4d91a838");
	self notify("landed_on_" + self.var_fd3ee5eb);
	self function_52fddbd0();
	self.var_fd3ee5eb = var_96eed922.var_b2ff4d87;
	self function_e11ce512();
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	namespace_82b91a51::function_76f13293();
	var_c312dab9 function_dc8c8404();
	var_b39127dd function_dc8c8404();
	self.var_23304c9e = 0;
	self namespace_d84e54db::function_b4f5e3b9(0);
	if(self == level.var_2fd26037)
	{
		self namespace_6f7b2095::function_bae40a28();
		self namespace_ad23e503::function_9d134160("hendricks_on_zipline");
	}
	if(self != level.var_2fd26037)
	{
		self.var_7dfaf62 = 2000;
		self.var_a1ed1ed1 = 200;
		self.var_3a90f16b = self.var_47c252e3;
		wait(function_dc99997a(8, 15));
		self thread function_3ca0a891();
	}
}

/*
	Name: function_c936992e
	Namespace: namespace_1b0f1865
	Checksum: 0xE2EF113A
	Offset: 0x9F08
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c936992e()
{
	self endon("hash_128f8789");
	self endon("hash_4d91a838");
	wait(9);
	if(self.var_67c7c241 === "cin_gen_traversal_zipline_enemy02_idle")
	{
		self function_470f7e4c();
		self function_52fddbd0();
	}
}

/*
	Name: function_cac74662
	Namespace: namespace_1b0f1865
	Checksum: 0x64438A98
	Offset: 0x9F78
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_cac74662()
{
	self notify("hash_57ce910f");
	self function_52fddbd0();
	if(isdefined(self.var_ae65ed78))
	{
		self.var_ae65ed78 function_dc8c8404();
	}
	if(isdefined(self.var_ae451748))
	{
		self.var_ae451748 namespace_cc27597::function_fcf56ab5();
		self.var_ae451748 function_dc8c8404();
	}
	self function_e11ce512();
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	self.var_23304c9e = 0;
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_6f7b2095::function_bae40a28();
	self namespace_ad23e503::function_9d134160("hendricks_on_zipline");
}

/*
	Name: function_e87de176
	Namespace: namespace_1b0f1865
	Checksum: 0x8D94EAB5
	Offset: 0xA0A0
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_e87de176(var_4ca5dd1f)
{
	self endon("hash_4d91a838");
	self waittill("hash_128f8789");
	if(isdefined(self))
	{
		self function_52fddbd0();
		self function_d7a0a9d8(1);
	}
	foreach(var_aa10fce8 in var_4ca5dd1f)
	{
		if(isdefined(var_aa10fce8))
		{
			var_aa10fce8 function_dc8c8404();
		}
	}
}

/*
	Name: function_3ca0a891
	Namespace: namespace_1b0f1865
	Checksum: 0xD5012689
	Offset: 0xA198
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_3ca0a891()
{
	self endon("hash_128f8789");
	level endon("hash_3a2c1be8");
	var_53e40947 = 0;
	while(1)
	{
		wait(function_dc99997a(3, 7));
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a.var_fd3ee5eb === self.var_fd3ee5eb)
			{
				var_53e40947 = 1;
				break;
				continue;
			}
			var_53e40947 = 0;
		}
		if(!var_53e40947)
		{
			var_4eb49a16 = function_e7bdc1a1(self.var_722885f3, level.var_9b1393e7);
			if(isdefined(var_4eb49a16))
			{
				self function_d15ea140(self.var_fd3ee5eb, var_4eb49a16.var_fd3ee5eb);
			}
		}
	}
}

/*
	Name: function_d15ea140
	Namespace: namespace_1b0f1865
	Checksum: 0x342AB094
	Offset: 0xA300
	Size: 0x789
	Parameters: 2
	Flags: None
*/
function function_d15ea140(var_fd3ee5eb, var_91776028)
{
	self endon("hash_128f8789");
	self endon("hash_f3069794");
	var_8ab385b5 = namespace_14b42b8a::function_7faf4c39(var_fd3ee5eb, "script_label");
	if(!var_8ab385b5.size)
	{
		return;
	}
	if(var_fd3ee5eb === "tree1")
	{
		switch(var_91776028)
		{
			case "tree2":
			{
				level namespace_ad23e503::function_1ab5ebec("tree2_and_tree3_pursuit_allowed");
				self function_258f9c50(var_8ab385b5, "tree2");
				break;
			}
			case "tree3":
			{
				level namespace_ad23e503::function_1ab5ebec("tree2_and_tree3_pursuit_allowed");
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree4":
			{
				self function_258f9c50(var_8ab385b5, "tree2");
				break;
			}
			case "tree5":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "treefinal":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case default:
			{
				break;
			}
		}
		break;
	}
	if(var_fd3ee5eb === "tree2")
	{
		switch(var_91776028)
		{
			case "tree1":
			{
				self function_258f9c50(var_8ab385b5, "tree1");
				break;
			}
			case "tree3":
			{
				self function_258f9c50(var_8ab385b5, "tree1");
				break;
			}
			case "tree4":
			{
				var_5bd22e42 = function_b4cb3503("nd_tree4_center", "targetname");
				self function_169cc712(var_5bd22e42, 1);
				self waittill("hash_41d1aaf0");
				self.var_fd3ee5eb = "tree4";
				self thread function_3ca0a891();
				break;
			}
			case "tree5":
			{
				var_5bd22e42 = function_b4cb3503("nd_tree4_center", "targetname");
				self function_169cc712(var_5bd22e42, 1);
				self waittill("hash_41d1aaf0");
				self.var_fd3ee5eb = "tree4";
				self thread function_3ca0a891();
				break;
			}
			case "treefinal":
			{
				var_5bd22e42 = function_b4cb3503("nd_tree4_center", "targetname");
				self function_169cc712(var_5bd22e42, 1);
				self waittill("hash_41d1aaf0");
				self.var_fd3ee5eb = "tree4";
				break;
			}
			case default:
			{
				break;
			}
		}
		break;
	}
	if(var_fd3ee5eb === "tree3")
	{
		switch(var_91776028)
		{
			case "tree1":
			{
				self function_258f9c50(var_8ab385b5, "tree1");
				break;
			}
			case "tree2":
			{
				self function_258f9c50(var_8ab385b5, "tree1");
				break;
			}
			case "tree4":
			{
				level namespace_ad23e503::function_1ab5ebec("tree4_and_tree5_pursuit_allowed");
				self function_258f9c50(var_8ab385b5, "tree4");
				break;
			}
			case "tree5":
			{
				level namespace_ad23e503::function_1ab5ebec("tree4_and_tree5_pursuit_allowed");
				self function_258f9c50(var_8ab385b5, "tree5");
				break;
			}
			case "treefinal":
			{
				self function_258f9c50(var_8ab385b5, "tree5");
				break;
			}
			case default:
			{
				break;
			}
		}
		break;
	}
	if(var_fd3ee5eb === "tree4")
	{
		switch(var_91776028)
		{
			case "tree1":
			{
				self function_258f9c50(var_8ab385b5, "tree5");
				break;
			}
			case "tree2":
			{
				var_5bd22e42 = function_b4cb3503("nd_tree2_center", "targetname");
				self function_169cc712(var_5bd22e42, 1);
				self waittill("hash_41d1aaf0");
				self.var_fd3ee5eb = "tree2";
				self thread function_3ca0a891();
				break;
			}
			case "tree3":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree5":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "treefinal":
			{
				self function_258f9c50(var_8ab385b5, "treefinal");
				break;
			}
			case default:
			{
				break;
			}
		}
		break;
	}
	if(var_fd3ee5eb === "tree5")
	{
		switch(var_91776028)
		{
			case "tree1":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree2":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree3":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree4":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "treefinal":
			{
				self function_258f9c50(var_8ab385b5, "treefinal");
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_258f9c50
	Namespace: namespace_1b0f1865
	Checksum: 0x5577D84B
	Offset: 0xAA98
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_258f9c50(var_5b5ad127, var_91776028)
{
	self endon("hash_128f8789");
	self endon("hash_f3069794");
	var_fd729fb3 = [];
	foreach(var_5e1dc07 in var_5b5ad127)
	{
		if(isdefined(var_5e1dc07.var_b07228b6))
		{
			namespace_84970cc4::function_69554b3e(var_fd729fb3, var_5e1dc07, 0);
		}
	}
	var_d4bb1798 = var_fd729fb3[0].var_170527fb;
	foreach(var_5e1dc07 in var_fd729fb3)
	{
		var_96eed922 = namespace_14b42b8a::function_7922262b(var_5e1dc07.var_b07228b6, "targetname");
		if(var_96eed922.var_b2ff4d87 === var_91776028)
		{
			var_d4bb1798 = var_5e1dc07.var_170527fb;
			break;
		}
	}
	self thread function_495d7b05();
	self.var_b07228b6 = var_d4bb1798;
	self function_cdb04f99();
}

/*
	Name: function_495d7b05
	Namespace: namespace_1b0f1865
	Checksum: 0xF0DCA150
	Offset: 0xAC98
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_495d7b05()
{
	self endon("hash_128f8789");
	self endon("hash_4d91a838");
	self endon("hash_f3069794");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a.var_fd3ee5eb === self.var_fd3ee5eb)
			{
				if(self.var_23304c9e === 0)
				{
					self function_e11ce512();
					self namespace_d84e54db::function_b4f5e3b9(0);
					self notify("hash_f3069794");
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_2387e4bd
	Namespace: namespace_1b0f1865
	Checksum: 0x7509D3EA
	Offset: 0xADB0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_2387e4bd()
{
	var_3fa09da0 = function_6ada35ba("trig_dive_fxanim_debris", "targetname");
	var_3fa09da0 thread function_af083c9b();
	var_e193b33b = function_6ada35ba("trig_supertrees_playerdive_play", "targetname");
	var_e193b33b thread function_644d430e();
	level thread namespace_cc27597::function_8f9f34e0("cin_bio_14_01_treejump_vign_dive_end", &function_2370ed93, "done");
}

/*
	Name: function_2370ed93
	Namespace: namespace_1b0f1865
	Checksum: 0x958F2C16
	Offset: 0xAE70
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_2370ed93(var_294306eb)
{
	level namespace_ad23e503::function_74d6b22f("hendricks_dive");
}

/*
	Name: function_a2b40033
	Namespace: namespace_1b0f1865
	Checksum: 0xF4E114D
	Offset: 0xAEA8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_a2b40033()
{
	var_e05caeb2 = function_6ada35ba("trig_supertrees_finaltree_hurt", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_e05caeb2), "Dev Block strings are not supported");
	#/
	var_e05caeb2 function_175e6b8e(0);
	level waittill("hash_b1e29472");
	var_e05caeb2 function_175e6b8e(1);
	function_5e09918e("cp_biodomes_final_tree_explosion_rumble", var_e05caeb2.var_722885f3);
	namespace_80983c42::function_80983c42("fx_expl_fire_deathtop_supertree");
}

/*
	Name: function_ca1d2a2d
	Namespace: namespace_1b0f1865
	Checksum: 0x1D33C8D
	Offset: 0xAF88
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ca1d2a2d()
{
	level waittill("hash_76e22d2b");
	namespace_80983c42::function_80983c42("fx_expl_fire_descendlast_supertree");
}

/*
	Name: function_af083c9b
	Namespace: namespace_1b0f1865
	Checksum: 0x30E85486
	Offset: 0xAFC0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_af083c9b()
{
	while(isdefined(self))
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		var_5dc5e20a = self.var_aef176e7;
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("supertree_jump_debris_play", 1);
	}
}

/*
	Name: function_644d430e
	Namespace: namespace_1b0f1865
	Checksum: 0xF232E0CA
	Offset: 0xB028
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_644d430e()
{
	while(isdefined(self))
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		var_5dc5e20a = self.var_aef176e7;
		level namespace_82b91a51::function_ef3f75eb("sndRampEnd");
		var_5dc5e20a thread function_a04a0f57(self);
		var_5dc5e20a thread function_9eb272bb();
	}
}

/*
	Name: function_a04a0f57
	Namespace: namespace_1b0f1865
	Checksum: 0xC9D4167F
	Offset: 0xB0B8
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_a04a0f57(var_4dbf3ae3)
{
	self endon("hash_128f8789");
	level notify("hash_76e22d2b");
	var_4dbf3ae3 function_64218ffc(self);
	self function_83fd42b5();
	var_2d103051 = namespace_14b42b8a::function_7922262b("fake_tag_align_supertree_dive_p" + self function_c7f3ce11(), "targetname");
	if(isdefined(var_2d103051))
	{
		var_2d103051 namespace_cc27597::function_43718187("cin_bio_14_01_treejump_1st_dive", self);
	}
	else
	{
		level namespace_cc27597::function_43718187("cin_bio_14_01_treejump_1st_dive", self);
	}
	var_57a51f3c = function_6ada35ba("vista_water", "targetname");
	if(isdefined(var_57a51f3c))
	{
		var_57a51f3c function_dc8c8404();
	}
	level namespace_ad23e503::function_74d6b22f("player_dive_done");
	wait(2);
	var_4dbf3ae3 function_858ac43f(self);
	self function_4890e520();
}

/*
	Name: function_9eb272bb
	Namespace: namespace_1b0f1865
	Checksum: 0x2415A6D4
	Offset: 0xB250
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_9eb272bb()
{
	self endon("hash_128f8789");
	self waittill("hash_786c0556");
	self namespace_71e9cb84::function_e9c3870b("dive_wind_rumble_loop", 1);
	self waittill("hash_76ed094c");
	thread function_c59ffff();
	self namespace_71e9cb84::function_e9c3870b("dive_wind_rumble_loop", 0);
}

/*
	Name: function_c59ffff
	Namespace: namespace_1b0f1865
	Checksum: 0x13C97BDB
	Offset: 0xB2D8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_c59ffff()
{
	var_be2ea7e9 = function_9b7fda5e("script_origin", (-3498, 1773, 406));
	if(isdefined(var_be2ea7e9))
	{
		var_be2ea7e9 function_c2931a36("amb_post_dive_battle", 1);
		wait(120);
		var_be2ea7e9 function_dc8c8404();
	}
}

