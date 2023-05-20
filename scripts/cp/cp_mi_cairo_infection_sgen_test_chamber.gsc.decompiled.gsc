#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_sound;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_9ac99a6e;

/*
	Name: function_d290ebfa
	Namespace: namespace_9ac99a6e
	Checksum: 0xC6F15873
	Offset: 0x730
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	function_ff58a260();
	function_7b244c18();
}

/*
	Name: function_ff58a260
	Namespace: namespace_9ac99a6e
	Checksum: 0x8EFA7230
	Offset: 0x780
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	namespace_71e9cb84::function_50f16166("world", "sgen_test_chamber_pod_graphics", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "sgen_test_chamber_time_lapse", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "sgen_test_guys_decay", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "fxanim_hive_cluster_break", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "fxanim_time_lapse_objects", 1, 1, "int");
}

/*
	Name: function_7b244c18
	Namespace: namespace_9ac99a6e
	Checksum: 0x88401077
	Offset: 0x880
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_7b244c18()
{
	namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh090", &function_fd16dd41, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh140", &function_ee093b22, "done");
	namespace_cc27597::function_8f9f34e0("cin_inf_05_taylorinfected_3rd_sh010", &function_6b291c0d, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_05_taylorinfected_3rd_sh080", &function_6089d98, "done");
	namespace_cc27597::function_8f9f34e0("cin_inf_04_02_sarah_vign_01", &function_11c1cade, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh140", &function_eabb935c, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh150", &function_c43d862, "play");
}

/*
	Name: function_c467cbf
	Namespace: namespace_9ac99a6e
	Checksum: 0x80A263A
	Offset: 0x9E0
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_c467cbf()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("damage_heavy");
	}
}

/*
	Name: function_ee093b22
	Namespace: namespace_9ac99a6e
	Checksum: 0xC2DEFD5D
	Offset: 0xA80
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_ee093b22(var_38fa6e84)
{
	level notify("hash_b4468c2e");
}

/*
	Name: function_eabb935c
	Namespace: namespace_9ac99a6e
	Checksum: 0x6E8EA94C
	Offset: 0xAA8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_eabb935c(var_38fa6e84)
{
	level namespace_82b91a51::function_d8eaed3d(6);
}

/*
	Name: function_c43d862
	Namespace: namespace_9ac99a6e
	Checksum: 0xBD654854
	Offset: 0xAD8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_c43d862(var_38fa6e84)
{
	level waittill("hash_ee361e18");
	if(isdefined(var_38fa6e84["wire"]))
	{
		var_37dcc322 = var_38fa6e84["wire"];
		var_37dcc322 function_e48f905e("p7_sgen_dni_testing_pod_wires_01_off");
	}
}

/*
	Name: function_fd16dd41
	Namespace: namespace_9ac99a6e
	Checksum: 0x62AC1071
	Offset: 0xB48
	Size: 0x151
	Parameters: 1
	Flags: None
*/
function function_fd16dd41(var_38fa6e84)
{
	var_a9aa9f1c = function_99201f25("inf_test_chamber_flashlight", "script_noteworthy");
	if(isdefined(var_38fa6e84["flashlight"]))
	{
		var_83683dc7 = var_38fa6e84["flashlight"] function_d48f2ab3("tag_origin");
		foreach(var_e0a1e3dd in var_a9aa9f1c)
		{
			var_e0a1e3dd.var_722885f3 = var_38fa6e84["flashlight"] function_d48f2ab3("tag_light_position");
			var_e0a1e3dd function_37f7858a(var_38fa6e84["flashlight"], "tag_origin");
		}
	}
}

/*
	Name: function_a29f7cbd
	Namespace: namespace_9ac99a6e
	Checksum: 0x467BD71
	Offset: 0xCA8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_a29f7cbd()
{
	level namespace_cc27597::function_c35e6aab("cin_inf_04_humanlabdeath_3rd_sh010");
	level namespace_82b91a51::function_d8eaed3d(9);
}

/*
	Name: function_c568c95b
	Namespace: namespace_9ac99a6e
	Checksum: 0x6C06B18F
	Offset: 0xCF0
	Size: 0x30B
	Parameters: 2
	Flags: None
*/
function function_c568c95b(var_b04bc952, var_74cd64bc)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	level namespace_71e9cb84::function_74d6b22f("sgen_test_chamber_pod_graphics", 1);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
		function_a29f7cbd();
		level namespace_82b91a51::function_11a89b44();
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_eccdd5d1::function_6ef2bfc6();
	level thread namespace_82b91a51::function_67520c6a("start_fade", undefined, &namespace_82b91a51::function_593c2af4, 2, "white");
	level thread namespace_82b91a51::function_67520c6a("fx_explosion", undefined, &function_c467cbf);
	level thread namespace_82b91a51::function_67520c6a("fx_explosion", undefined, &namespace_71e9cb84::function_74d6b22f, "fxanim_hive_cluster_break", 0);
	level namespace_71e9cb84::function_74d6b22f("fxanim_hive_cluster_break", 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_688ed188, "stop_post_fx", 1);
	level thread function_7711faaf();
	if(isdefined(level.var_af6a0d17))
	{
		level thread [[level.var_af6a0d17]]();
	}
	level namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh010", &function_e3124fd9, "skip_completed");
	level namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh020", &function_e3124fd9, "skip_completed");
	level namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh030", &function_e3124fd9, "skip_completed");
	level namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh040", &function_e3124fd9, "skip_completed");
	level thread namespace_cc27597::function_43718187("cin_inf_04_humanlabdeath_3rd_sh010");
	level waittill("hash_b4468c2e");
	namespace_1d795d47::function_be8adfb8("sgen_test_chamber");
}

/*
	Name: function_e3124fd9
	Namespace: namespace_9ac99a6e
	Checksum: 0x33735771
	Offset: 0x1008
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_e3124fd9(var_c77d2837)
{
	namespace_82b91a51::function_7e61de2b(0);
	level namespace_82b91a51::function_7d553ac6();
	level namespace_82b91a51::function_11a89b44();
	namespace_82b91a51::function_593c2af4(0);
	level namespace_82b91a51::function_f7beb173();
}

/*
	Name: function_7711faaf
	Namespace: namespace_9ac99a6e
	Checksum: 0x648BAC69
	Offset: 0x1098
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_7711faaf()
{
	function_acdfe1fe("cp_infection_env_dnimainmonitor", 1);
	level waittill("hash_ba03959f");
	function_4a0fb95e("cp_infection_env_dnimainmonitor");
	function_acdfe1fe("cp_infection_env_timelapse_fail", 1);
}

/*
	Name: function_7985eb71
	Namespace: namespace_9ac99a6e
	Checksum: 0xCEDEEC44
	Offset: 0x1110
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_7985eb71(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
}

/*
	Name: function_21e8c919
	Namespace: namespace_9ac99a6e
	Checksum: 0x40969D9F
	Offset: 0x1160
	Size: 0x143
	Parameters: 2
	Flags: None
*/
function function_21e8c919(var_b04bc952, var_74cd64bc)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	if(!var_74cd64bc)
	{
		function_4a0fb95e("cp_infection_env_timelapse_fail");
	}
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_82b91a51::function_d8eaed3d(9);
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
		namespace_d7916d65::function_a2995f22();
	}
	function_acdfe1fe("cp_infection_env_raventimelapse_ravens", 1);
	level thread function_b99b8b97();
	level thread function_27249631();
	level waittill("hash_d469a3e9");
	level thread namespace_82b91a51::function_a0938376();
	namespace_1d795d47::function_be8adfb8("time_lapse");
}

/*
	Name: function_b99b8b97
	Namespace: namespace_9ac99a6e
	Checksum: 0xC5D161F
	Offset: 0x12B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_b99b8b97()
{
	namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh150", &function_888bbd49, "play");
	namespace_cc27597::function_8f9f34e0("cin_inf_04_humanlabdeath_3rd_sh150", &function_d469a3e9, "done");
	level thread namespace_cc27597::function_43718187("cin_inf_04_humanlabdeath_3rd_sh150");
	level waittill("hash_c6e56c65");
	wait(1);
	namespace_71e9cb84::function_74d6b22f("sgen_test_chamber_time_lapse", 1);
}

/*
	Name: function_888bbd49
	Namespace: namespace_9ac99a6e
	Checksum: 0x7F6003F4
	Offset: 0x1370
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_888bbd49(var_c77d2837)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	level thread function_a2b1036();
	var_bc282e3d = var_c77d2837["decayedman"];
	var_bc282e3d thread function_ccc1a59f();
	level waittill("hash_5e798509");
	namespace_82b91a51::function_7e61de2b(0, "white");
}

/*
	Name: function_ccc1a59f
	Namespace: namespace_9ac99a6e
	Checksum: 0x60D6E322
	Offset: 0x1418
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_ccc1a59f()
{
	level endon("hash_d469a3e9");
	self waittill("hash_21b0eee7");
	level notify("hash_c6e56c65");
	wait(1);
	self function_e48f905e("c_spc_decayman_stage1_tout_fb");
	self namespace_71e9cb84::function_74d6b22f("sgen_test_guys_decay", 1);
	wait(1);
	self function_e48f905e("c_spc_decayman_stage2_tin_fb");
	wait(1);
	self function_e48f905e("c_spc_decayman_stage2_fb");
	wait(1);
	self function_e48f905e("c_spc_decayman_stage2_tout_fb");
	wait(1);
	self function_e48f905e("c_spc_decayman_stage3_tin_fb");
	wait(1);
	self function_e48f905e("c_spc_decayman_stage3_fb");
	wait(1.5);
	self function_e48f905e("c_spc_decayman_stage4_fb");
}

/*
	Name: function_d469a3e9
	Namespace: namespace_9ac99a6e
	Checksum: 0x524A45B8
	Offset: 0x1588
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_d469a3e9(var_c77d2837)
{
	level notify("hash_d469a3e9");
	level thread namespace_82b91a51::function_a0938376();
}

/*
	Name: function_27249631
	Namespace: namespace_9ac99a6e
	Checksum: 0x566AF97B
	Offset: 0x15C0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_27249631()
{
	level thread namespace_71e9cb84::function_74d6b22f("fxanim_time_lapse_objects", 1);
}

/*
	Name: function_f7f4cbd3
	Namespace: namespace_9ac99a6e
	Checksum: 0xAC2137D9
	Offset: 0x15F0
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_f7f4cbd3(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	function_4a0fb95e("cp_infection_env_raventimelapse_ravens");
}

/*
	Name: function_a2b1036
	Namespace: namespace_9ac99a6e
	Checksum: 0xF82F6BB1
	Offset: 0x1658
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a2b1036()
{
	level namespace_cc27597::function_c35e6aab("cin_inf_04_02_sarah_vign_01");
}

/*
	Name: function_621e0975
	Namespace: namespace_9ac99a6e
	Checksum: 0x6672DC28
	Offset: 0x1688
	Size: 0x22B
	Parameters: 2
	Flags: None
*/
function function_621e0975(var_b04bc952, var_74cd64bc)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	level namespace_82b91a51::function_d8eaed3d(3);
	function_acdfe1fe("cp_infection_env_timelapse_fail", 1);
	if(var_74cd64bc)
	{
		namespace_82b91a51::function_7e61de2b(0, "white");
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_9f10c537);
	}
	level thread namespace_82b91a51::function_593c2af4(1.5, "white");
	if(isdefined(level.var_f31e5abc))
	{
		level thread [[level.var_f31e5abc]]();
	}
	level namespace_cc27597::function_43718187("cin_inf_04_02_sarah_vign_01");
	if(isdefined(level.var_1852dcea))
	{
		level thread [[level.var_1852dcea]]();
	}
	level thread namespace_eccdd5d1::function_e0a3aca4();
	level thread namespace_cc27597::function_43718187("cin_inf_05_taylorinfected_3rd_sh010");
	level waittill("hash_90395238");
	if(namespace_cc27597::function_b1f75ee9())
	{
		namespace_82b91a51::function_7e61de2b(0, "black", "end_level_fade");
	}
	else
	{
		namespace_82b91a51::function_7e61de2b(1, "black", "end_level_fade");
		level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	}
	level thread namespace_82b91a51::function_a0938376();
	namespace_1d795d47::function_be8adfb8("cyber_soliders_invest");
}

/*
	Name: function_790aa7af
	Namespace: namespace_9ac99a6e
	Checksum: 0x129B07D4
	Offset: 0x18C0
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_790aa7af(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	function_4a0fb95e("cp_infection_env_timelapse_fail");
}

/*
	Name: function_11c1cade
	Namespace: namespace_9ac99a6e
	Checksum: 0x334B82C8
	Offset: 0x1928
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_11c1cade(var_38fa6e84)
{
	level namespace_cc27597::function_c35e6aab("cin_inf_05_taylorinfected_3rd_sh010");
	level waittill("hash_849f7f99");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_82b91a51::function_7e61de2b(1, "white");
	}
}

/*
	Name: function_6b291c0d
	Namespace: namespace_9ac99a6e
	Checksum: 0x30243166
	Offset: 0x19A0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_6b291c0d(var_38fa6e84)
{
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 3);
		level waittill("hash_60ced02");
		level thread namespace_82b91a51::function_593c2af4(1.5, "white");
	}
}

/*
	Name: function_6089d98
	Namespace: namespace_9ac99a6e
	Checksum: 0xC5D7B982
	Offset: 0x1A18
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_6089d98(var_38fa6e84)
{
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 1);
	}
}

