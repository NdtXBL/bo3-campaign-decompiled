#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;

#namespace namespace_1254c007;

/*
	Name: function_2dc19561
	Namespace: namespace_1254c007
	Checksum: 0x192961E2
	Offset: 0x430
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("aquifer_ambience", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_1254c007
	Checksum: 0xAF1E6420
	Offset: 0x470
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_71e9cb84::function_50f16166("toplayer", "show_sand_storm", 1, 1, "int", &function_7ddc918d, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "hide_sand_storm", 1, 1, "int", &function_e5def758, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "play_trucks", 1, 1, "int", &function_91528afa, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "start_ambience", 1, 1, "int", &function_134f3566, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "stop_ambience", 1, 1, "int", &function_ad396d58, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "kill_ambience", 1, 1, "int", &function_9ba61e20, 0, 0);
	level thread function_89b52898();
}

/*
	Name: function_d290ebfa
	Namespace: namespace_1254c007
	Checksum: 0xD226EEAF
	Offset: 0x648
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_d290ebfa(var_ec74b091)
{
}

/*
	Name: function_134f3566
	Namespace: namespace_1254c007
	Checksum: 0x6D3A76B3
	Offset: 0x660
	Size: 0x171
	Parameters: 7
	Flags: None
*/
function function_134f3566(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_3f831f3b["scene"]["p7_fxanim_cp_aqu_war_dogfight_main_loop_a_bundle_client"]))
	{
		return;
	}
	thread function_ca056d7e();
	var_acfd8784 = namespace_14b42b8a::function_7faf4c39("p7_fxanim_cp_aqu_war_dogfight_main_loop_a_bundle_client", "scriptbundlename");
	var_7056bf21 = namespace_14b42b8a::function_7922262b("p7_fxanim_cp_aqu_war_dogfight_a_jet_vtol_bundle", "scriptbundlename");
	namespace_84970cc4::function_69554b3e(var_acfd8784, var_7056bf21);
	foreach(var_3668f67c in var_acfd8784)
	{
		var_3668f67c thread namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_ad396d58
	Namespace: namespace_1254c007
	Checksum: 0x385F71EC
	Offset: 0x7E0
	Size: 0x2CB
	Parameters: 7
	Flags: None
*/
function function_ad396d58(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level notify("hash_9e245bdd");
	if(!isdefined(level.var_c2750169))
	{
		level.var_c2750169 = [];
	}
	foreach(var_86f40d8a in level.var_c2750169)
	{
		var_86f40d8a thread namespace_cc27597::function_fcf56ab5(1);
		var_86f40d8a.var_123e33cb = 0;
	}
	var_acfd8784 = namespace_14b42b8a::function_7faf4c39("p7_fxanim_cp_aqu_war_dogfight_main_loop_a_bundle_client", "scriptbundlename");
	var_7056bf21 = namespace_14b42b8a::function_7922262b("p7_fxanim_cp_aqu_war_dogfight_a_jet_vtol_bundle", "scriptbundlename");
	var_ffd496bd = namespace_14b42b8a::function_7922262b("p7_fxanim_cp_aqu_war_patrol_a_vtol_nrc_bundle", "scriptbundlename");
	var_63f986ef = namespace_14b42b8a::function_7922262b("p7_fxanim_cp_aqu_war_patrol_a_vtol_egypt_bundle", "scriptbundlename");
	namespace_84970cc4::function_69554b3e(var_acfd8784, var_7056bf21);
	namespace_84970cc4::function_69554b3e(var_acfd8784, var_ffd496bd);
	namespace_84970cc4::function_69554b3e(var_acfd8784, var_63f986ef);
	foreach(var_3668f67c in var_acfd8784)
	{
		var_3668f67c thread namespace_cc27597::function_fcf56ab5(1);
		var_3668f67c.var_123e33cb = 0;
	}
	namespace_84970cc4::function_eaab05dc(level.var_c2750169, &namespace_cc27597::function_fcf56ab5, 1);
}

/*
	Name: function_9ba61e20
	Namespace: namespace_1254c007
	Checksum: 0x91E51F21
	Offset: 0xAB8
	Size: 0x343
	Parameters: 7
	Flags: None
*/
function function_9ba61e20(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	level notify("hash_9e245bdd");
	if(isdefined(level.var_c2750169))
	{
		foreach(var_86f40d8a in level.var_c2750169)
		{
			var_86f40d8a thread namespace_cc27597::function_fcf56ab5(1);
			var_86f40d8a.var_123e33cb = 0;
		}
	}
	var_acfd8784 = namespace_14b42b8a::function_7faf4c39("p7_fxanim_cp_aqu_war_dogfight_main_loop_a_bundle_client", "scriptbundlename");
	var_7056bf21 = namespace_14b42b8a::function_7922262b("p7_fxanim_cp_aqu_war_dogfight_a_jet_vtol_bundle", "scriptbundlename");
	var_ffd496bd = namespace_14b42b8a::function_7922262b("p7_fxanim_cp_aqu_war_patrol_a_vtol_nrc_bundle", "scriptbundlename");
	var_63f986ef = namespace_14b42b8a::function_7922262b("p7_fxanim_cp_aqu_war_patrol_a_vtol_egypt_bundle", "scriptbundlename");
	namespace_84970cc4::function_69554b3e(var_acfd8784, var_7056bf21);
	namespace_84970cc4::function_69554b3e(var_acfd8784, var_ffd496bd);
	namespace_84970cc4::function_69554b3e(var_acfd8784, var_63f986ef);
	foreach(var_3668f67c in var_acfd8784)
	{
		var_3668f67c thread namespace_cc27597::function_fcf56ab5(1);
	}
	waittillframeend;
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_aqu_war_dogfight_main_loop_a_bundle_client");
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_aqu_war_dogfight_a_jet_vtol_bundle");
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_aqu_warpatrol_a_vtol_nrc_bundle");
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_aqu_warpatrol_a_vtol_egypt_bundle");
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_aqu_war_flyover_a_jet_bundle");
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_aqu_war_flyover_b_jet_bundle");
}

/*
	Name: function_ca056d7e
	Namespace: namespace_1254c007
	Checksum: 0x97E01C72
	Offset: 0xE08
	Size: 0x23D
	Parameters: 0
	Flags: None
*/
function function_ca056d7e()
{
	var_514730dd = namespace_14b42b8a::function_7faf4c39("jet_flyover_pos", "targetname");
	if(var_514730dd.size == 0)
	{
		return;
	}
	var_ed7818f9 = [];
	namespace_84970cc4::function_69554b3e(var_ed7818f9, "p7_fxanim_cp_aqu_war_flyover_a_jet_bundle");
	namespace_84970cc4::function_69554b3e(var_ed7818f9, "p7_fxanim_cp_aqu_war_flyover_b_jet_bundle");
	if(isdefined(level.var_c2750169))
	{
		foreach(var_86f40d8a in level.var_c2750169)
		{
			if(var_86f40d8a namespace_cc27597::function_367f8966())
			{
				var_86f40d8a namespace_cc27597::function_fcf56ab5();
			}
		}
	}
	level notify("hash_9e245bdd");
	if(!isdefined(level.var_c2750169))
	{
		level.var_c2750169 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < 12; var_c957f6b6++)
		{
			level.var_c2750169[level.var_c2750169.size] = namespace_14b42b8a::function_9b7fda5e(var_514730dd[var_c957f6b6].var_722885f3, var_514730dd[var_c957f6b6].var_6ab6f4fd);
		}
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < 12; var_c957f6b6++)
	{
		level.var_c2750169[var_c957f6b6] thread function_5794dab9(var_ed7818f9[var_c957f6b6 % 2], function_72a94f05(0, 20));
	}
}

/*
	Name: function_5794dab9
	Namespace: namespace_1254c007
	Checksum: 0x127D9830
	Offset: 0x1050
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_5794dab9(var_c248e0ab, var_67520c6a)
{
	level endon("hash_9e245bdd");
	level endon("hash_2d1d861f");
	level endon("hash_c2988129");
	wait(var_67520c6a);
	self thread namespace_cc27597::function_43718187(var_c248e0ab);
}

/*
	Name: function_e5def758
	Namespace: namespace_1254c007
	Checksum: 0x3110C74D
	Offset: 0x10B0
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_e5def758(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_76968f56 = function_99201f25(var_ec74b091, "sand_storm", "targetname");
	if(var_76968f56.size > 0)
	{
		namespace_84970cc4::function_eaab05dc(var_76968f56, &function_5ab41da9, 0);
	}
}

/*
	Name: function_7ddc918d
	Namespace: namespace_1254c007
	Checksum: 0x4D1AD5DD
	Offset: 0x1160
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_7ddc918d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_76968f56 = function_99201f25(var_ec74b091, "sand_storm", "targetname");
	if(var_76968f56.size > 0)
	{
		namespace_84970cc4::function_eaab05dc(var_76968f56, &function_5ab41da9, 1);
	}
}

/*
	Name: function_5ab41da9
	Namespace: namespace_1254c007
	Checksum: 0x802451D1
	Offset: 0x1210
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_5ab41da9(var_2e076071)
{
	if(var_2e076071)
	{
		self function_48f26766();
	}
	else
	{
		self function_50ccee8d();
	}
}

/*
	Name: function_91528afa
	Namespace: namespace_1254c007
	Checksum: 0x8A4A502
	Offset: 0x1260
	Size: 0xEB
	Parameters: 7
	Flags: None
*/
function function_91528afa(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(level.var_3f831f3b["scene"]["p7_fxanim_cp_aqu_war_groundassault_bundle"]))
	{
		return;
	}
	var_a2d47c3d = function_6ada35ba(var_ec74b091, "dogfighting_scene_client_side", "targetname");
	var_a2d47c3d namespace_cc27597::function_43718187("p7_fxanim_cp_aqu_war_groundassault_bundle");
	var_a2d47c3d namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_aqu_war_groundassault_bundle", 1);
	waittillframeend;
	namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_aqu_war_groundassault_bundle");
}

/*
	Name: function_89b52898
	Namespace: namespace_1254c007
	Checksum: 0x33E438B1
	Offset: 0x1358
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_89b52898()
{
	level waittill("hash_496d3ee1");
	namespace_4fe3eef1::function_11908f52("amb_postwateroom_weird_lp", (12618, 1364, 2949));
}

