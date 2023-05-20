#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection_village_surreal;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_8cdbec1b;

/*
	Name: function_2dc19561
	Namespace: namespace_8cdbec1b
	Checksum: 0x2AD08B8E
	Offset: 0x1420
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("infection_village", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_8cdbec1b
	Checksum: 0x20D3896B
	Offset: 0x1460
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_49eb92b9();
}

/*
	Name: function_ff58a260
	Namespace: namespace_8cdbec1b
	Checksum: 0xCAC1D4A4
	Offset: 0x1480
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	namespace_71e9cb84::function_50f16166("world", "village_mortar_index", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("world", "village_intro_mortar", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "init_fold", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "start_fold", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "fold_buildings", 1, 1, "int");
}

/*
	Name: function_32e49d5b
	Namespace: namespace_8cdbec1b
	Checksum: 0x336A9118
	Offset: 0x1580
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_32e49d5b(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level notify("hash_b9a0c4f0");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_gather_airlock");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_8cdbec1b
	Checksum: 0x9FCDBD6D
	Offset: 0x15D8
	Size: 0x4E3
	Parameters: 3
	Flags: None
*/
function function_d290ebfa(var_b04bc952, var_74cd64bc, var_75294396)
{
	if(!isdefined(var_75294396))
	{
		var_75294396 = 0;
	}
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_c4110989();
	}
	level thread namespace_36cbf523::function_c8d7e76("foy_reverse_anim");
	function_a8ccd78c();
	if(var_74cd64bc)
	{
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_reverse_house_01_bundle");
		level thread namespace_cc27597::function_c35e6aab("cin_inf_10_01_foy_aie_reversemortar");
		level thread namespace_cc27597::function_c35e6aab("cin_inf_10_02_foy_aie_reversewallexplosion_suppressor");
		level thread namespace_cc27597::function_c35e6aab("cin_inf_10_01_foy_vign_intro");
		level namespace_82b91a51::function_d8eaed3d(7);
		namespace_d0ef8521::function_74d6b22f("cp_level_infection_follow_sarah");
	}
	level.var_d0d4a835 = 0;
	level.var_4fd72c4a = 0;
	level.var_acfc49b5 = 0;
	namespace_2f06d687::function_2b37a3c9("sp_foy_friendlies", "targetname", &function_6759312c);
	namespace_2f06d687::function_2b37a3c9("sp_foy_friendlies_respawn_1", "targetname", &function_63a38a35);
	namespace_2f06d687::function_2b37a3c9("sp_foy_friendlies_respawn_2", "targetname", &function_63a38a35);
	namespace_2f06d687::function_2b37a3c9("sp_foy_friendlies_respawn_3", "targetname", &function_63a38a35);
	if(isdefined(level.var_27ad69e1))
	{
		level thread [[level.var_27ad69e1]]();
	}
	if(!function_27c72c1b())
	{
		function_714c5fbc();
		function_e353cef7();
		function_bd51548e();
	}
	namespace_36cbf523::function_1cdb9014();
	var_d5ca9084 = function_99201f25("foy_gather_point_debris_blocker", "targetname");
	level thread function_901bfe3e(var_d5ca9084);
	level thread function_4c895b57();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
		level thread function_55081eb6(0);
	}
	else
	{
		level thread function_55081eb6(1);
	}
	level thread function_d52b4c08();
	level thread function_9bb4e7ef();
	if(!function_27c72c1b())
	{
		level thread function_ed8c7500();
		level thread function_c217937d();
		level thread function_7d93c0c();
	}
	level thread function_5ba8c80b();
	level thread function_b7cb180c();
	level thread function_5b4650e2();
	level thread function_a3cd1770();
	level thread function_aa2056b4();
	level thread function_52900ba5();
	level thread function_631f7f5e();
	level thread function_5eb4b60c();
	level thread function_7fc734e2();
	level thread function_880a13df();
	level thread namespace_82b91a51::function_a0938376();
}

/*
	Name: function_633271eb
	Namespace: namespace_8cdbec1b
	Checksum: 0x4369B750
	Offset: 0x1AC8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_633271eb()
{
	level thread namespace_36cbf523::function_f6d49772("t_salm_having_established_a_1", "salm_having_established_a_1", "end_salm_foy_dialog");
}

/*
	Name: function_4c895b57
	Namespace: namespace_8cdbec1b
	Checksum: 0x569F57A1
	Offset: 0x1B08
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_4c895b57()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_allies_disadvantage");
	level.var_d0d4a835 = 1;
	var_7b3a5649 = function_b8494651("allies");
	foreach(var_d84e54db in var_7b3a5649)
	{
		if(isdefined(var_d84e54db.var_170527fb))
		{
			if(var_d84e54db.var_170527fb == "sp_foy_friendlies_ai")
			{
				var_d84e54db.var_2dd707 = 1;
			}
		}
	}
}

/*
	Name: function_9bb4e7ef
	Namespace: namespace_8cdbec1b
	Checksum: 0x8E4C7F0A
	Offset: 0x1C18
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_9bb4e7ef()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_battlechatter_reclaim_foy");
	namespace_36cbf523::function_3c363cb3("company_move");
	wait(3);
	namespace_36cbf523::function_3c363cb3("reclaim_foy");
}

/*
	Name: function_714c5fbc
	Namespace: namespace_8cdbec1b
	Checksum: 0x1C34C531
	Offset: 0x1C78
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_714c5fbc()
{
	function_9b385ca5();
	level.var_eb740d59 = var_ce2d510;
	var_cb7ecfda = namespace_96fa87af::function_7387a40a("sp_foy_turret_01");
	function_66f910ed(level.var_eb740d59, var_cb7ecfda, "sp_foy_turret_01_gunner");
}

/*
	Name: function_e353cef7
	Namespace: namespace_8cdbec1b
	Checksum: 0xEEFC5416
	Offset: 0x1CE8
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_e353cef7()
{
	function_9b385ca5();
	level.var_117687c2 = var_ce2d510;
	var_a57c5571 = namespace_96fa87af::function_7387a40a("sp_foy_turret_02");
	function_66f910ed(level.var_117687c2, var_a57c5571, "sp_foy_turret_02_gunner");
}

/*
	Name: function_bd51548e
	Namespace: namespace_8cdbec1b
	Checksum: 0xEBCA01F1
	Offset: 0x1D50
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_bd51548e()
{
	function_9b385ca5();
	level.var_3779022b = var_ce2d510;
	var_7f79db08 = namespace_96fa87af::function_7387a40a("sp_foy_turret_03");
	var_7f79db08 function_8d63f8d0(1);
	var_7f79db08.var_3a90f16b = 2000;
	function_66f910ed(level.var_3779022b, var_7f79db08, "sp_foy_turret_03_gunner");
}

/*
	Name: function_ed8c7500
	Namespace: namespace_8cdbec1b
	Checksum: 0xE2852183
	Offset: 0x1DE8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ed8c7500()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_foy_turret_01_enable");
	function_2919200c();
	wait(2);
	namespace_36cbf523::function_3c363cb3("mg_middle");
}

/*
	Name: function_c217937d
	Namespace: namespace_8cdbec1b
	Checksum: 0x5EFEC310
	Offset: 0x1E40
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_c217937d()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_foy_turret_02_spawn");
	level thread function_713ae2bf("turret_door");
	namespace_80983c42::function_80983c42("fx_expl_barn_window_open");
	wait(0.5);
	function_2919200c();
	wait(1);
	namespace_36cbf523::function_3c363cb3("mg_brick_building");
	level thread function_77321751();
	namespace_d5067552::function_bae40a28("sm_turret_barn_door");
	level thread function_713ae2bf("turret_barn_door");
	namespace_80983c42::function_80983c42("fx_expl_barn_door_open");
}

/*
	Name: function_77321751
	Namespace: namespace_8cdbec1b
	Checksum: 0x75C05A7D
	Offset: 0x1F40
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_77321751()
{
	level waittill("hash_ec7a5edf");
	wait(1);
	namespace_36cbf523::function_3c363cb3("mg_down");
}

/*
	Name: function_7d93c0c
	Namespace: namespace_8cdbec1b
	Checksum: 0x3D568E2C
	Offset: 0x1F78
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_7d93c0c()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_foy_turret_03_spawn");
	level thread function_713ae2bf("barn_door");
	wait(0.5);
	function_2919200c();
	namespace_80983c42::function_80983c42("fx_expl_mg_bullet_impacts_village01");
	wait(1.5);
	namespace_80983c42::function_80983c42("fx_expl_mg_bullet_impacts_village02");
	wait(1.5);
	namespace_80983c42::function_80983c42("fx_expl_mg_bullet_impacts_village03");
}

/*
	Name: function_d52b4c08
	Namespace: namespace_8cdbec1b
	Checksum: 0xEF182DD5
	Offset: 0x2038
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d52b4c08()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_sm_barn_house_1");
	function_713ae2bf("barn_lower_door");
	wait(0.25);
	namespace_d5067552::function_bae40a28("sm_barn_house_1");
}

/*
	Name: function_618e1e4e
	Namespace: namespace_8cdbec1b
	Checksum: 0x7799FC02
	Offset: 0x2098
	Size: 0xDF
	Parameters: 2
	Flags: None
*/
function function_618e1e4e(var_62ebac00, var_506b336f)
{
	self endon("hash_128f8789");
	if(isdefined(var_62ebac00))
	{
		var_377a9c22 = function_b4cb3503(var_62ebac00, "targetname");
	}
	while(isdefined(var_377a9c22))
	{
		self function_169cc712(var_377a9c22);
		self waittill("hash_41d1aaf0");
		self.var_7dfaf62 = 64;
		if(isdefined(var_377a9c22.var_b07228b6))
		{
			wait(var_506b336f);
			var_377a9c22 = function_b4cb3503(var_377a9c22.var_b07228b6, "targetname");
		}
		else
		{
			var_377a9c22 = undefined;
		}
	}
}

/*
	Name: function_b7cb180c
	Namespace: namespace_8cdbec1b
	Checksum: 0x7094568E
	Offset: 0x2180
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b7cb180c()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_sm_foy_town_waves");
	namespace_d5067552::function_bae40a28("sm_foy_town_wave_1");
	namespace_d5067552::function_bae40a28("sm_foy_town_wave_2");
	namespace_d5067552::function_bae40a28("sm_foy_town_wave_3");
}

/*
	Name: function_5ba8c80b
	Namespace: namespace_8cdbec1b
	Checksum: 0xE4194B42
	Offset: 0x21F0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_5ba8c80b()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_retreat_sp_wall_fx_german");
	level thread namespace_36cbf523::function_642da963("foy_wall_fx_german_01_ai", "foy_goal_volume_2");
	level thread namespace_36cbf523::function_642da963("foy_wall_fx_german_02_ai", "foy_goal_volume_2");
	level thread namespace_36cbf523::function_642da963("foy_wall_fx_german_03_ai", "foy_goal_volume_2");
	level thread namespace_36cbf523::function_642da963("foy_wall_fx_german_04_ai", "foy_goal_volume_2");
	var_6768705a = namespace_2f06d687::function_7387a40a("sp_retreat_01");
	var_6768705a thread function_618e1e4e("nd_retreat_01", 12);
	var_4165f5f1 = namespace_2f06d687::function_7387a40a("sp_retreat_02");
	var_4165f5f1 thread function_618e1e4e("nd_retreat_02", 10);
	var_1b637b88 = namespace_2f06d687::function_7387a40a("sp_retreat_03");
	var_1b637b88 thread function_618e1e4e("nd_retreat_03", 8);
}

/*
	Name: function_5b4650e2
	Namespace: namespace_8cdbec1b
	Checksum: 0x18ED870F
	Offset: 0x2390
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5b4650e2()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_retreat_sp_foy_post_intro_formation_1_ai");
	level thread namespace_36cbf523::function_810ccf7("t_sp_foy_post_intro_formation_1_ai", "foy_goal_volume_2");
}

/*
	Name: function_a3cd1770
	Namespace: namespace_8cdbec1b
	Checksum: 0xC570926D
	Offset: 0x23E0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a3cd1770()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_retreat_sp_barn_house_1_ai");
	level thread namespace_36cbf523::function_810ccf7("t_sp_barn_house_1_ai", "t_sp_foy_town_wave_ai");
	level thread namespace_36cbf523::function_810ccf7("foy_goal_volume_2", "t_sp_foy_town_wave_ai");
}

/*
	Name: function_aa2056b4
	Namespace: namespace_8cdbec1b
	Checksum: 0xCE35C43E
	Offset: 0x2458
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_aa2056b4()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_retreat_sp_foy_guys_right_ai");
	level thread namespace_36cbf523::function_810ccf7("t_sp_foy_guys_right_ai", "foy_goal_volume_3");
}

/*
	Name: function_52900ba5
	Namespace: namespace_8cdbec1b
	Checksum: 0xE0D8BF73
	Offset: 0x24A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_52900ba5()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_retreat_sp_foy_town_wave_ai");
	level thread namespace_36cbf523::function_810ccf7("t_sp_foy_town_wave_ai", "foy_goal_volume_3");
}

/*
	Name: function_631f7f5e
	Namespace: namespace_8cdbec1b
	Checksum: 0x6F3B0141
	Offset: 0x24F8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_631f7f5e()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_sm_foy_post_fold");
	namespace_36cbf523::function_3c363cb3("fences_move");
	namespace_ad23e503::function_1ab5ebec("final_area_cleared");
	namespace_76d95162::function_d9f49fba(0);
	wait(1);
	function_c79f9420();
}

/*
	Name: function_c4110989
	Namespace: namespace_8cdbec1b
	Checksum: 0xB4F8EF44
	Offset: 0x2580
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c4110989()
{
	namespace_36cbf523::function_aa0ddbc3(1);
	namespace_2f06d687::function_ef554cf7("axis", &namespace_36cbf523::function_dafed344);
}

/*
	Name: function_49eb92b9
	Namespace: namespace_8cdbec1b
	Checksum: 0x3D25958C
	Offset: 0x25D0
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_49eb92b9()
{
	namespace_cc27597::function_8f9f34e0("cin_inf_10_01_foy_vign_walk", &namespace_36cbf523::function_c32dc5f6, "init");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_01_foy_vign_walk", &namespace_36cbf523::function_368baff9, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_01_foy_vign_intro", &function_7ee91ee8, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_01_foy_vign_intro", &function_fbf84bda, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_01_foy_vign_intro", &function_f42e77de, "done");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_01_foy_vign_intro", &namespace_36cbf523::function_c32dc5f6, "done");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_01_foy_vign_intro", &namespace_36cbf523::function_23e59afd, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_01_foy_vign_intro", &namespace_36cbf523::function_e2eba6da, "done");
	namespace_36cbf523::function_a3f21cef("p7_fxanim_cp_infection_reverse_wall_01_bundle", "fxanim_reverse_wall_explosion_trigger");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_wall_01_bundle", &function_26e55eb5, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_06_03_bastogne_aie_reverse_soldier01hipshot_suppressor", &namespace_36cbf523::function_2a5e3b2a, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_06_03_bastogne_aie_reverse_soldier02headshot_suppressor", &namespace_36cbf523::function_2a5e3b2a, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_01_foy_aie_reversemortar_react", &namespace_36cbf523::function_2a5e3b2a, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_10_02_foy_aie_reversewallexplosion_suppressor", &namespace_36cbf523::function_2a5e3b2a, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_fold_bundle", &function_8b16f470, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_fold_bundle", &function_6ac10d8c, "play");
}

/*
	Name: function_6759312c
	Namespace: namespace_8cdbec1b
	Checksum: 0xC7A93DF
	Offset: 0x28D0
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_6759312c()
{
	self endon("hash_128f8789");
	self function_50ccee8d();
	self.var_2dd707 = 0;
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 256;
	self.var_15dfd6c = 0.25;
	self.var_44a68a57 = &function_cc841ab;
	self thread namespace_36cbf523::function_6ff4aa0e(0);
	namespace_82b91a51::function_76f13293();
	self function_48f26766();
	var_cec80dd3 = function_26299103(2);
	var_e402f51e = undefined;
	switch(var_cec80dd3)
	{
		case 0:
		{
			var_e402f51e = "cin_inf_10_02_foy_vign_teleport_spawn";
			break;
		}
		case 1:
		{
			var_e402f51e = "cin_inf_10_02_foy_vign_teleport_spawn02";
			break;
		}
		case 2:
		{
			var_e402f51e = "cin_inf_10_02_foy_vign_teleport_spawn03";
			break;
		}
	}
	self namespace_cc27597::function_43718187(var_e402f51e, self);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_63a38a35
	Namespace: namespace_8cdbec1b
	Checksum: 0xECFB8DB
	Offset: 0x2A58
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_63a38a35()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 256;
	self.var_15dfd6c = 0.25;
	self.var_44a68a57 = &function_cc841ab;
}

/*
	Name: function_cc841ab
	Namespace: namespace_8cdbec1b
	Checksum: 0xF6C50E58
	Offset: 0x2AA8
	Size: 0x91
	Parameters: 12
	Flags: None
*/
function function_cc841ab(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_ae725cb8, var_a5cf2304, var_5d7e7ac2)
{
	if(isdefined(var_3a212fd7) && function_65f192a6(var_3a212fd7))
	{
		var_f9a179ed = 0;
	}
	return var_f9a179ed;
}

/*
	Name: function_26e55eb5
	Namespace: namespace_8cdbec1b
	Checksum: 0x91DB4766
	Offset: 0x2B48
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_26e55eb5(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("village_mortar_index", 1);
	level thread namespace_cc27597::function_43718187("cin_inf_10_02_foy_aie_reversewallexplosion_suppressor");
	wait(1);
	namespace_d5067552::function_bae40a28("sm_foy_friendlies");
	namespace_d5067552::function_347e835a("sm_foy_friendlies");
	namespace_d5067552::function_2992720d("sm_foy_friendlies");
}

/*
	Name: function_f42e77de
	Namespace: namespace_8cdbec1b
	Checksum: 0x75CA952F
	Offset: 0x2BF0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_f42e77de(var_c77d2837)
{
	level thread namespace_36cbf523::function_efa09886(var_c77d2837);
	namespace_36cbf523::function_3ea445de();
	namespace_82b91a51::function_76f13293();
	namespace_36cbf523::function_1cdb9014();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_e905c73c);
}

/*
	Name: function_a8ccd78c
	Namespace: namespace_8cdbec1b
	Checksum: 0xA1BF9B49
	Offset: 0x2C78
	Size: 0x423
	Parameters: 0
	Flags: None
*/
function function_a8ccd78c()
{
	level.var_1808e6f7 = function_99201f25("reverse_barn_01_corner", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_1808e6f7);
	level.var_e9ce649f = function_99201f25("m_reverse_fence_01", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_e9ce649f);
	level.var_77c6f564 = function_99201f25("m_reverse_fence_02", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_77c6f564);
	level.var_a8fa691f = function_99201f25("m_reverse_chciken_coop_01", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_a8fa691f);
	level.var_36f2f9e4 = function_99201f25("m_reverse_chciken_coop_02", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_36f2f9e4);
	level.var_e1c85461 = function_99201f25("m_reverse_house_01", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_e1c85461);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_barn_01_bundle", &function_47317809, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_fence_01_bundle", &function_1e97d97d, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_fence_02_bundle", &function_449a53e6, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_chciken_coop_01_bundle", &function_41ec98c5, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_chciken_coop_02_bundle", &function_67ef132e, "done");
	if(!function_27c72c1b())
	{
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_house_01_bundle", &function_d4580490, "play");
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_infection_reverse_house_01_bundle", &function_e541046b, "done");
	}
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_barn_01_bundle", "s_infection_reverse_barn_01_bundle", "t_infection_reverse_barn_01_bundle_inner", "t_infection_reverse_barn_01_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_fence_01_bundle", "s_infection_reverse_fence_01_bundle", "t_infection_reverse_fence_01_bundle_inner", "t_infection_reverse_fence_01_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_fence_02_bundle", "s_infection_reverse_fence_02_bundle", "t_infection_reverse_fence_02_bundle_inner", "t_infection_reverse_fence_02_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_chciken_coop_01_bundle", "s_infection_reverse_chciken_coop_01_bundle", "t_infection_reverse_chciken_coop_01_bundle_inner", "t_infection_reverse_chciken_coop_01_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_chciken_coop_02_bundle", "s_infection_reverse_chciken_coop_02_bundle", "t_infection_reverse_chciken_coop_02_bundle_inner", "t_infection_reverse_chciken_coop_02_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_telephone_pole_bundle", "s_infection_reverse_telephone_pole_bundle", "t_infection_reverse_telephone_pole_bundle_inner", "t_infection_reverse_telephone_pole_bundle_outter");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_reverse_transition_wall_bundle");
}

/*
	Name: function_47317809
	Namespace: namespace_8cdbec1b
	Checksum: 0x98F8C3E9
	Offset: 0x30A8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_47317809(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_1808e6f7);
}

/*
	Name: function_1e97d97d
	Namespace: namespace_8cdbec1b
	Checksum: 0xEDDAD262
	Offset: 0x30D8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_1e97d97d(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_e9ce649f);
}

/*
	Name: function_449a53e6
	Namespace: namespace_8cdbec1b
	Checksum: 0x4A7E4A79
	Offset: 0x3108
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_449a53e6(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_77c6f564);
}

/*
	Name: function_41ec98c5
	Namespace: namespace_8cdbec1b
	Checksum: 0x1CEE33D8
	Offset: 0x3138
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_41ec98c5(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_a8fa691f);
}

/*
	Name: function_67ef132e
	Namespace: namespace_8cdbec1b
	Checksum: 0xBE009287
	Offset: 0x3168
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_67ef132e(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_36f2f9e4);
}

/*
	Name: function_d4580490
	Namespace: namespace_8cdbec1b
	Checksum: 0xE625D014
	Offset: 0x3198
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_d4580490(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_c7c1f146();
	}
	level waittill("hash_471dbb27");
	level thread namespace_cc27597::function_43718187("cin_inf_10_01_foy_aie_reversemortar");
}

/*
	Name: function_e541046b
	Namespace: namespace_8cdbec1b
	Checksum: 0xFC9EDD
	Offset: 0x3260
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_e541046b(var_c77d2837)
{
	namespace_36cbf523::function_bdea6c61(level.var_e1c85461);
	level notify("hash_be705059");
}

/*
	Name: function_1bf08d19
	Namespace: namespace_8cdbec1b
	Checksum: 0x1C40D08A
	Offset: 0x32A0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_1bf08d19()
{
	function_c4110989();
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_reverse_house_01_bundle");
	level thread namespace_cc27597::function_c35e6aab("cin_inf_10_01_foy_aie_reversemortar");
	level thread namespace_cc27597::function_c35e6aab("cin_inf_10_02_foy_aie_reversewallexplosion_suppressor");
	level thread namespace_cc27597::function_c35e6aab("cin_inf_10_01_foy_vign_intro");
}

/*
	Name: function_55081eb6
	Namespace: namespace_8cdbec1b
	Checksum: 0xD748D1D6
	Offset: 0x3340
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_55081eb6(var_ea6e4b0d)
{
	if(var_ea6e4b0d)
	{
		level waittill("hash_6aa6dc33");
	}
	else
	{
		level namespace_cc27597::function_9e5b8cdb("p7_fxanim_cp_infection_reverse_house_01_bundle");
		level namespace_cc27597::function_43718187("cin_inf_10_01_foy_vign_intro");
	}
	namespace_cc27597::function_f69c7a83();
	level namespace_ad23e503::function_1ab5ebec("sarah_anchor_post_scene_done");
	level thread namespace_36cbf523::function_3fe1f72("t_sarah_foy_objective_", 0, &function_3077f3dc);
	level.var_2395e945[0] thread namespace_71b8dba1::function_81141386("hall_this_is_the_path_i_0", 2);
	level namespace_71e9cb84::function_74d6b22f("village_intro_mortar", 1);
	namespace_80983c42::function_80983c42("light_foy_introroom");
	level notify("hash_5b12bc4");
	level thread function_2af73f0e();
	level thread function_179f2a9c();
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_infection_fold_bundle");
}

/*
	Name: function_8b16f470
	Namespace: namespace_8cdbec1b
	Checksum: 0x167646FF
	Offset: 0x34C8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8b16f470(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("init_fold", 1);
	var_c77d2837["fold_skinned"] namespace_71e9cb84::function_74d6b22f("fold_buildings", 1);
}

/*
	Name: function_6ac10d8c
	Namespace: namespace_8cdbec1b
	Checksum: 0x148B7F30
	Offset: 0x3530
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_6ac10d8c(var_c77d2837)
{
	level namespace_71e9cb84::function_74d6b22f("start_fold", 1);
}

/*
	Name: function_7ee91ee8
	Namespace: namespace_8cdbec1b
	Checksum: 0x8423F15F
	Offset: 0x3568
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_7ee91ee8(var_c77d2837)
{
	if(!namespace_cc27597::function_b1f75ee9())
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_e2af603e("infection2_tank_crash_rumble");
			var_5dc5e20a function_f1aa5a21("default", 3.5);
		}
	}
	level waittill("hash_9459f59");
	level thread function_f632b4ee();
	level namespace_cc27597::function_43718187("p7_fxanim_cp_infection_reverse_house_01_bundle");
}

/*
	Name: function_179f2a9c
	Namespace: namespace_8cdbec1b
	Checksum: 0x2E056DE0
	Offset: 0x3688
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_179f2a9c()
{
	self endon("hash_c2ceb0dd");
	namespace_4dbf3ae3::function_1ab5ebec("t_alert_german");
	if(level.var_4fd72c4a == 0)
	{
		var_4fd72c4a = 1;
		level notify("hash_c6b9fd97");
		function_4fd72c4a();
	}
}

/*
	Name: function_ac605917
	Namespace: namespace_8cdbec1b
	Checksum: 0xEB573BDD
	Offset: 0x36F8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_ac605917()
{
	self endon("hash_643a7daf");
	while(!self function_be4a4b0d() && !self function_33327fdf() && !self function_c11ae181())
	{
		wait(0.05);
	}
	wait(0.2);
}

/*
	Name: function_8eb94bbb
	Namespace: namespace_8cdbec1b
	Checksum: 0x20DEC940
	Offset: 0x3770
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_8eb94bbb()
{
	self endon("hash_643a7daf");
	self function_ac605917();
	level notify("hash_4fd72c4a");
}

/*
	Name: function_2af73f0e
	Namespace: namespace_8cdbec1b
	Checksum: 0x308F7E3E
	Offset: 0x37B0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_2af73f0e()
{
	self endon("hash_c6b9fd97");
	namespace_84970cc4::function_57dd1fd4(level.var_2395e945, &function_8eb94bbb);
	level waittill("hash_4fd72c4a");
	if(level.var_4fd72c4a == 0)
	{
		var_4fd72c4a = 1;
		level notify("hash_c2ceb0dd");
		function_4fd72c4a();
	}
}

/*
	Name: function_4fd72c4a
	Namespace: namespace_8cdbec1b
	Checksum: 0xF62B95D
	Offset: 0x3840
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_4fd72c4a()
{
	var_54ff35a3 = function_6ada35ba("foy_intro_german_01_ai", "targetname");
	var_e2f7c668 = function_6ada35ba("foy_intro_german_02_ai", "targetname");
	var_8fa40d1 = function_6ada35ba("foy_intro_german_03_ai", "targetname");
	var_965b80d3 = function_84970cc4(var_54ff35a3, var_e2f7c668, var_8fa40d1);
	level namespace_cc27597::function_fcf56ab5("cin_inf_10_01_foy_aie_reversemortar");
	level thread namespace_cc27597::function_43718187("cin_inf_10_01_foy_aie_reversemortar_react", var_965b80d3);
}

/*
	Name: function_3077f3dc
	Namespace: namespace_8cdbec1b
	Checksum: 0x76C30871
	Offset: 0x3940
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3077f3dc()
{
	self namespace_cc27597::function_43718187("cin_inf_10_01_foy_vign_walk", self);
	self thread namespace_cc27597::function_c35e6aab("cin_inf_11_02_fold_1st_airlock_entrance", self);
	function_8e0f756c();
}

/*
	Name: function_f632b4ee
	Namespace: namespace_8cdbec1b
	Checksum: 0xCD9AEFBC
	Offset: 0x39A0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_f632b4ee()
{
	function_37cbcf1a("evt_infection_record_reverse_event", (-66734, -9538, 491));
	var_e20459b1 = function_799102f2("evt_infection_record_reverse_event");
	var_e20459b1 = var_e20459b1 * 0.001;
	var_e20459b1 = var_e20459b1 - 0.25;
	wait(var_e20459b1 - 7);
	level namespace_82b91a51::function_ef3f75eb("sndREC");
}

/*
	Name: function_5eb4b60c
	Namespace: namespace_8cdbec1b
	Checksum: 0x199DA30F
	Offset: 0x3A48
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_5eb4b60c()
{
	namespace_4dbf3ae3::function_1ab5ebec("fold_start");
	function_37cbcf1a("evt_world_fold", (-67613, -4626, 755));
	function_37d87ef1();
}

/*
	Name: function_aa5ecc7
	Namespace: namespace_8cdbec1b
	Checksum: 0x9319B651
	Offset: 0x3AA8
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_aa5ecc7()
{
	self endon("hash_128f8789");
	while(1)
	{
		/#
			function_617f6eba(self.var_722885f3, 2, (1, 0, 0));
		#/
		wait(0.1);
	}
}

/*
	Name: function_eceb8030
	Namespace: namespace_8cdbec1b
	Checksum: 0x8826B44D
	Offset: 0x3AF8
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_eceb8030(var_b196132a)
{
	var_1308049f = namespace_14b42b8a::function_7922262b(var_b196132a, "targetname");
	var_27c4935 = VectorScale((0, 0, -1), 500);
	var_64852f68 = namespace_36cbf523::function_5ec7eb7d(var_1308049f.var_722885f3 + var_27c4935, 128, 1024);
	var_64852f68 waittill("hash_4dbf3ae3");
	var_64852f68 function_dc8c8404();
}

/*
	Name: function_215ac586
	Namespace: namespace_8cdbec1b
	Checksum: 0x3DCFFCEE
	Offset: 0x3BB8
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_215ac586()
{
	namespace_2f06d687::function_d5e942a4("axis", &namespace_36cbf523::function_dafed344);
	namespace_6f7b2095::function_d3f001ef();
	var_f7c28862 = function_b8494651("allies");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_f7c28862.size; var_c957f6b6++)
	{
		if(isdefined(var_f7c28862[var_c957f6b6].var_170527fb))
		{
			if(!function_5dbf7eca(var_f7c28862[var_c957f6b6].var_170527fb, "sarah"))
			{
				var_f7c28862[var_c957f6b6] function_c3945cd5(var_f7c28862[var_c957f6b6].var_3a90f16b + 100, var_f7c28862[var_c957f6b6].var_722885f3);
				wait(0.1);
			}
			continue;
		}
		var_f7c28862[var_c957f6b6] function_c3945cd5(var_f7c28862[var_c957f6b6].var_3a90f16b + 100, var_f7c28862[var_c957f6b6].var_722885f3);
		wait(0.1);
	}
	var_dc4d1688 = function_b8494651("axis");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_dc4d1688.size; var_c957f6b6++)
	{
		if(function_5b49d38c(var_dc4d1688[var_c957f6b6]))
		{
			if(isdefined(var_dc4d1688[var_c957f6b6].var_ff1f6868))
			{
				if(var_dc4d1688[var_c957f6b6].var_ff1f6868 == "village")
				{
					var_dc4d1688[var_c957f6b6] function_c3945cd5(var_dc4d1688[var_c957f6b6].var_3a90f16b + 100, var_dc4d1688[var_c957f6b6].var_722885f3);
				}
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_8e0f756c
	Namespace: namespace_8cdbec1b
	Checksum: 0x5E886265
	Offset: 0x3E28
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_8e0f756c()
{
	function_c79f9420();
	namespace_4dbf3ae3::function_1ab5ebec("t_foy_house_regroup", "targetname");
	level thread namespace_82b91a51::function_7e61de2b(1, "white", "foy_white");
	namespace_82b91a51::function_76f13293();
	level thread function_215ac586();
	namespace_36cbf523::function_3ea445de();
	namespace_36cbf523::function_aa0ddbc3(0);
	var_d5ca9084 = function_99201f25("foy_gather_point_debris_blocker", "targetname");
	level thread function_6d98603d(var_d5ca9084);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_reverse_transition_wall_bundle");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	self thread namespace_cc27597::function_43718187("cin_inf_11_02_fold_1st_airlock_entrance", self);
	level thread namespace_4e2074f4::function_a1dc825e();
	var_7d116593 = namespace_14b42b8a::function_7922262b("s_village_inception_lighting_hint", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.var_722885f3);
	level thread namespace_82b91a51::function_d8eaed3d(11);
	wait(1.5);
	level thread namespace_1d795d47::function_be8adfb8("village");
}

/*
	Name: function_c79f9420
	Namespace: namespace_8cdbec1b
	Checksum: 0x5BDCD06
	Offset: 0x4048
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_c79f9420()
{
	if(!isdefined(level.var_acfc49b5) || !level.var_acfc49b5)
	{
		level.var_acfc49b5 = 1;
		var_b20e84b = namespace_14b42b8a::function_7922262b("s_foy_gather_point_blocker", "targetname");
		namespace_d0ef8521::function_74d6b22f("cp_level_infection_gather_airlock", var_b20e84b);
	}
}

/*
	Name: function_901bfe3e
	Namespace: namespace_8cdbec1b
	Checksum: 0x55FCB850
	Offset: 0x40C8
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_901bfe3e(var_d5ca9084)
{
	foreach(var_375c9b15 in var_d5ca9084)
	{
		var_375c9b15 function_50ccee8d();
		var_375c9b15 function_422037f5();
	}
}

/*
	Name: function_6d98603d
	Namespace: namespace_8cdbec1b
	Checksum: 0xCE9A5008
	Offset: 0x4180
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_6d98603d(var_d5ca9084)
{
	foreach(var_375c9b15 in var_d5ca9084)
	{
		var_375c9b15 function_48f26766();
		var_375c9b15 function_4083a98e();
	}
}

/*
	Name: function_7fc734e2
	Namespace: namespace_8cdbec1b
	Checksum: 0xE385156B
	Offset: 0x4238
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_7fc734e2()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_village_mortar_2");
	namespace_71e9cb84::function_74d6b22f("village_mortar_index", 2);
	namespace_4dbf3ae3::function_1ab5ebec("t_village_mortar_3");
	namespace_71e9cb84::function_74d6b22f("village_mortar_index", 3);
	namespace_4dbf3ae3::function_1ab5ebec("t_village_mortar_4");
	namespace_71e9cb84::function_74d6b22f("village_mortar_index", 0);
}

/*
	Name: function_87c01d16
	Namespace: namespace_8cdbec1b
	Checksum: 0xE9139736
	Offset: 0x42E8
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_87c01d16(var_524f5a91, var_506b336f)
{
	self endon("hash_128f8789");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_524f5a91; var_c957f6b6++)
	{
		self function_e2af603e("cp_infection_fold_start");
		wait(var_506b336f);
	}
}

/*
	Name: function_c7c1f146
	Namespace: namespace_8cdbec1b
	Checksum: 0xFCE408C9
	Offset: 0x4360
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_c7c1f146()
{
	self endon("hash_128f8789");
	level endon("hash_be705059");
	while(1)
	{
		self function_e2af603e("cp_infection_fold_house");
		wait(0.5);
	}
}

/*
	Name: function_37d87ef1
	Namespace: namespace_8cdbec1b
	Checksum: 0x37D4C19A
	Offset: 0x43B0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_37d87ef1()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_infection_fold_bundle");
	var_55f89057 = function_6ada35ba("fold_earthquake_origin", "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_55f89057), "Dev Block strings are not supported");
	#/
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_87c01d16(3, 0.5);
	}
	wait(3);
	level thread function_ab0f0ce9(57, var_55f89057.var_722885f3);
	level thread namespace_36cbf523::function_7ad4dc15(var_55f89057, 3500, 57);
}

/*
	Name: function_ab0f0ce9
	Namespace: namespace_8cdbec1b
	Checksum: 0xE2FD464A
	Offset: 0x4508
	Size: 0x185
	Parameters: 2
	Flags: None
*/
function function_ab0f0ce9(var_f05509e4, var_83683dc7)
{
	function_9cf04c2e(0.1, var_f05509e4, var_83683dc7, 10000);
	var_3a881315 = 6;
	var_ae578142 = function_b6b79a0(var_f05509e4 / var_3a881315) - 1;
	var_1fde3d88 = 1.4;
	var_3ad36936 = 1.6;
	var_5aa5cb2c = 0.25;
	var_45872392 = 0.28;
	for(var_c957f6b6 = 0; var_c957f6b6 <= var_ae578142; var_c957f6b6++)
	{
		wait(function_72a94f05(var_3a881315 - 1, var_3a881315));
		var_163d97e9 = function_72a94f05(var_1fde3d88, var_3ad36936);
		var_a77dfe85 = function_72a94f05(var_5aa5cb2c, var_45872392);
		function_9cf04c2e(var_a77dfe85, var_163d97e9, var_83683dc7, 10000);
	}
}

/*
	Name: function_713ae2bf
	Namespace: namespace_8cdbec1b
	Checksum: 0xBCED56B4
	Offset: 0x4698
	Size: 0x297
	Parameters: 1
	Flags: None
*/
function function_713ae2bf(var_ba740f55)
{
	var_db8e4d94 = function_99201f25(var_ba740f55, "targetname");
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
		var_be1f149f function_21d0da55(var_edaada1.var_8202763a, 0.75, 0.2, 0);
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
	wait(0.75);
}

/*
	Name: function_fbf84bda
	Namespace: namespace_8cdbec1b
	Checksum: 0xC6A6DDF2
	Offset: 0x4938
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_fbf84bda(var_c77d2837)
{
	var_dc5e890e = var_c77d2837["sarah"];
	if(isdefined(var_dc5e890e))
	{
		var_dc5e890e function_ca711294("allies");
	}
	else
	{
		var_dc5e890e = level.var_2395e945[0];
	}
	level waittill("hash_925bfe17");
}

/*
	Name: function_880a13df
	Namespace: namespace_8cdbec1b
	Checksum: 0xE88EDABF
	Offset: 0x49B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_880a13df()
{
	level waittill("hash_5b12bc4");
	namespace_82b91a51::function_76f13293();
	namespace_9f824288::function_5d2cdd99();
	namespace_4dbf3ae3::function_1ab5ebec("foy_post_fold_spawn_trigger", "targetname");
	namespace_9f824288::function_5d2cdd99();
}

