#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_mapping_drone;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_accolades;
#using scripts\cp\cp_mi_sing_sgen_enter_silo;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_testing_lab_igc;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_ed09da6e;

/*
	Name: function_73eb52a7
	Namespace: namespace_ed09da6e
	Checksum: 0xFAF602D4
	Offset: 0x1028
	Size: 0x323
	Parameters: 2
	Flags: None
*/
function function_73eb52a7(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_c35e6aab("kane_robots_convo_done");
	level namespace_ad23e503::function_c35e6aab("fallen_soldiers_hendricks_ready_to_enter_dayroom");
	level thread function_68f0b726();
	namespace_2f06d687::function_2b37a3c9("fallen_soldiers_spawner", "script_noteworthy", &function_fbd51610);
	namespace_2f06d687::function_2b37a3c9("fallen_soldiers_start_awake", "script_noteworthy", &function_bebe324d);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		var_d3556aed = function_b4cb3503("nd_post_jump_downs", "targetname");
		level.var_2fd26037 thread namespace_d84e54db::function_19e98020(var_d3556aed, 32);
		level namespace_76d95162::function_d9f49fba(0);
		level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 1);
		level namespace_71e9cb84::function_74d6b22f("fallen_soldiers_client_fxanims", 1);
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_find_recon_drone", level.var_ea764859);
		level thread namespace_d40478f6::function_71f06599();
		namespace_2afd69a::function_10dad989(undefined, 0);
		function_da6acfd2(level.var_c1aa5253["drone_sparks"], level.var_ea764859, "tag_origin");
		namespace_d7916d65::function_a2995f22();
	}
	for(var_4f8217af = 0; var_4f8217af < 6; var_4f8217af++)
	{
		namespace_84970cc4::function_eaab05dc(function_99201f25("robot0" + var_4f8217af, "targetname"), &function_dc8c8404);
	}
	function_d290ebfa();
	namespace_1d795d47::function_be8adfb8("fallen_soldiers");
}

/*
	Name: function_51f4af5d
	Namespace: namespace_ed09da6e
	Checksum: 0x118256A7
	Offset: 0x1358
	Size: 0x12B
	Parameters: 4
	Flags: None
*/
function function_51f4af5d(var_b04bc952, var_d6b1856a, var_e4cd2b8b, var_5dc5e20a)
{
	for(var_4f8217af = 0; var_4f8217af < 6; var_4f8217af++)
	{
		namespace_84970cc4::function_966ecb29(function_99201f25("robot0" + var_4f8217af, "targetname"), &namespace_82b91a51::function_20ffc8ff);
	}
	namespace_80983c42::function_acff04bd("fallen_soldiers_decon_spray");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_12_01_corvus_vign_secret_entrance_hendricks");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_12_01_corvus_vign_dayroom");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_13_01_fallensoldiers_vign_grab_start");
	namespace_14b42b8a::function_368120a1("scene", "cin_sgen_13_01_fallensoldiers_vign_grab_end");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_ed09da6e
	Checksum: 0xEABC67B3
	Offset: 0x1490
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level.var_2fd26037.var_7dfaf62 = 16;
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level thread namespace_cc27597::function_c35e6aab("cin_sgen_14_humanlab_3rd_sh005");
	level thread function_8d753d94();
	level thread function_ab5cee74();
	level thread function_b2ddfb27();
	level thread namespace_d40478f6::function_973b77f9();
	function_6596c28b();
	level namespace_ad23e503::function_d266a8b4(40, "fallen_soldiers_hendricks_ready_to_enter_dayroom");
	namespace_4dbf3ae3::function_4ab4cb6(5, "fallen_soldiers_encounter_clear_trig");
	level notify("hash_aa9b4587");
	level thread function_f7879f6f();
	function_edc1192b(20, "fallen_soldiers_robots_cleared");
	level.var_2fd26037 function_169cc712(function_b4cb3503("fallen_soldiers_hendricks_dayroom_enter_node", "targetname"), 1);
	level namespace_ad23e503::function_1ab5ebec("fallen_soldiers_dayroom_started");
	namespace_2f06d687::function_72214789("fallen_soldiers_extra_robots");
	level.var_2fd26037 waittill("hash_41d1aaf0");
	wait(0.5);
	function_5ed260ac();
	namespace_4dbf3ae3::function_1ab5ebec("fallen_soldiers_exit_zone_trig");
}

/*
	Name: function_99e352d9
	Namespace: namespace_ed09da6e
	Checksum: 0x70A88D21
	Offset: 0x16B8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_99e352d9()
{
	level endon("hash_38e80c44");
	level.var_2fd26037 function_169cc712(function_b4cb3503("fallen_soldiers_hendricks_decon_door_exit_node", "targetname"), 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level.var_2fd26037 function_2b5c3469("fallen_soldiers_hendricks_decon_exit_zone_aitrig");
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(0);
	level namespace_ad23e503::function_1ab5ebec("fallen_soldiers_lockerroom_second_spawn");
	level.var_2fd26037 function_2b5c3469("fallen_soldiers_hendricks_dayroom_approach_aitrig");
	level namespace_ad23e503::function_74d6b22f("fallen_soldiers_hendricks_ready_to_enter_dayroom");
}

/*
	Name: function_568e0f1b
	Namespace: namespace_ed09da6e
	Checksum: 0xB10041AB
	Offset: 0x17B8
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_568e0f1b()
{
	var_aaf02c35 = function_6ada35ba("fallen_soldiers_left_first_spawn_trig", "targetname");
	var_d07fc618 = function_6ada35ba("fallen_soldiers_right_first_spawn_trig", "targetname");
	var_aaf02c35 endon("hash_128f8789");
	var_d07fc618 waittill("hash_128f8789");
}

/*
	Name: function_2b5c3469
	Namespace: namespace_ed09da6e
	Checksum: 0x787E19DE
	Offset: 0x1840
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_2b5c3469(var_5e953b6, var_64f5eece)
{
	if(!isdefined(var_64f5eece))
	{
		var_64f5eece = "targetname";
	}
	self endon("hash_128f8789");
	level endon("hash_38e80c44");
	var_68d8f035 = function_6ada35ba(var_5e953b6, var_64f5eece);
	var_12859611 = function_b4cb3503(var_68d8f035.var_b07228b6, "targetname");
	var_68d8f035 endon("hash_128f8789");
	do
	{
		var_68d8f035 waittill("hash_4dbf3ae3");
		var_f580cae3 = 0;
		var_64e85e6d = function_24e95264("team3", "robot");
		foreach(var_f6c5842 in var_64e85e6d)
		{
			if(function_5b49d38c(var_f6c5842) && var_f6c5842 function_32fa5072(self))
			{
				var_f580cae3++;
			}
		}
		wait(1.5);
	}
	while(!var_f580cae3 > 0);
	self function_169cc712(var_12859611);
}

/*
	Name: function_b2ddfb27
	Namespace: namespace_ed09da6e
	Checksum: 0x35BAC656
	Offset: 0x1A18
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_b2ddfb27()
{
	var_f0e94a11 = function_6ada35ba("trig_testing_lab_door", "targetname");
	var_f0e94a11 function_175e6b8e(0);
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_decon_hallway_door", "close");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_12_01_corvus_vign_secret_entrance_hendricks", &function_cc10b9af, "init");
	level namespace_cc27597::function_c35e6aab("cin_sgen_12_01_corvus_vign_secret_entrance_hendricks");
	level namespace_ad23e503::function_1ab5ebec("player_entered_corvus");
	level namespace_ad23e503::function_1ab5ebec("hendricks_corvus_examination");
	if(isdefined(level.var_aedd8570))
	{
		level thread [[level.var_aedd8570]]();
	}
	level namespace_cc27597::function_8f9f34e0("cin_sgen_12_01_corvus_vign_secret_entrance_hendricks", &function_1c39896e, "play");
	level namespace_cc27597::function_43718187("cin_sgen_12_01_corvus_vign_secret_entrance_hendricks");
	level thread namespace_d40478f6::function_22982c6e();
	level.var_2fd26037 waittill("hash_41d1aaf0");
	wait(0.5);
	level namespace_cc27597::function_c35e6aab("cin_sgen_13_01_fallensoldiers_vign_grab_start");
	namespace_4dbf3ae3::function_1ab5ebec("fallen_soldiers_enter_decon_trig");
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_enter_door", "open");
	level notify("hash_3b302c78");
	namespace_4dbf3ae3::function_1ab5ebec("fallen_soldiers_hendricks_grab_start", undefined, undefined, 0);
	level namespace_cc27597::function_43718187("cin_sgen_13_01_fallensoldiers_vign_grab_start");
	var_3ab04d1b = function_6ada35ba("decontamination_room_trigger", "targetname");
	var_3ab04d1b namespace_cba4cc55::function_36a6e271(1, function_84970cc4(level.var_2fd26037));
	level notify("hash_b0f8d01");
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_enter_door", "close");
	level notify("hash_c74ae0a4");
	wait(1.3);
	namespace_cc27597::function_8f9f34e0("cin_sgen_13_01_fallensoldiers_vign_grab_end", &function_2f485a41);
	level namespace_cc27597::function_43718187("cin_sgen_13_01_fallensoldiers_vign_grab_end");
	level namespace_ad23e503::function_74d6b22f("fallen_soldiers_hendricks_ready");
}

/*
	Name: function_2f485a41
	Namespace: namespace_ed09da6e
	Checksum: 0x3AD078FA
	Offset: 0x1D88
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_2f485a41(var_c77d2837)
{
	foreach(var_6104a93b in var_c77d2837)
	{
		if(var_6104a93b.var_170527fb == "fallen_soldiers_grab_robot")
		{
			var_6104a93b thread function_d43d6872();
		}
	}
}

/*
	Name: function_d43d6872
	Namespace: namespace_ed09da6e
	Checksum: 0x77FFD898
	Offset: 0x1E40
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d43d6872()
{
	self waittill("hash_e103651a");
	self namespace_71e9cb84::function_74d6b22f("play_cia_robot_rogue_control", 1);
	self waittill("hash_4289520f");
	self namespace_71e9cb84::function_74d6b22f("play_cia_robot_rogue_control", 0);
}

/*
	Name: function_1c39896e
	Namespace: namespace_ed09da6e
	Checksum: 0x3039620E
	Offset: 0x1EA8
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_1c39896e(var_c77d2837)
{
	level waittill("hash_8fb37212");
	level namespace_ad23e503::function_74d6b22f("fallen_soldiers_hendricks_approaching_exit");
	level.var_2fd26037 function_169cc712(function_b4cb3503("fallen_soldiers_hendricks_decon_ready_node", "targetname"), 1);
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_decon_hallway_door", "open");
	level notify("hash_b8163f70");
}

/*
	Name: function_6596c28b
	Namespace: namespace_ed09da6e
	Checksum: 0x87DC8442
	Offset: 0x1F60
	Size: 0x34B
	Parameters: 0
	Flags: None
*/
function function_6596c28b()
{
	var_3d011d2a = function_99201f25("fallen_soldiers_robot_trigger", "script_noteworthy");
	var_dc854c29 = function_6ada35ba("fallen_soldiers_spawner", "targetname");
	var_99abfd05 = function_99201f25("fallen_soldiers_walkeup_looktrig", "targetname");
	namespace_84970cc4::function_966ecb29(var_99abfd05, &function_7d5168cb);
	foreach(var_10e4a34a in var_3d011d2a)
	{
		var_10e4a34a thread function_80a49394(var_dc854c29);
	}
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_enter_door", "close");
	level namespace_ad23e503::function_1ab5ebec("fallen_soldiers_hendricks_ready");
	level namespace_ad23e503::function_74d6b22f("fallen_soldiers_robots_wakeup_started");
	function_37cbcf1a("evt_decon_light_breaker", (828, -1411, -4552));
	namespace_80983c42::function_80983c42("fallen_soldiers_decon_spray");
	namespace_80983c42::function_80983c42("lgt_light_deconroom");
	level.var_2fd26037.var_7dfaf62 = 16;
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037 function_169cc712(function_b4cb3503("fallen_soldiers_hendricks_decon_battle_node", "targetname"), 1);
	var_59101dfd = function_6ada35ba("fallen_soldiers_decon_room_wake_trig", "targetname");
	var_59101dfd waittill("hash_128f8789");
	function_edc1192b(7, "fallen_soldiers_robots_decon_room_cleared");
	namespace_d5067552::function_bae40a28("fallen_soldiers_decon_room_door_rushers_spawnmanager");
	level notify("hash_2454d800");
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_exit_door", "open");
	namespace_d5067552::function_347e835a("fallen_soldiers_decon_room_door_rushers_spawnmanager");
	level thread function_99e352d9();
	namespace_4dbf3ae3::function_1ab5ebec("fallen_soldiers_decon_room_exit_trig");
}

/*
	Name: function_5ed260ac
	Namespace: namespace_ed09da6e
	Checksum: 0xBA69DE56
	Offset: 0x22B8
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_5ed260ac()
{
	level namespace_cc27597::function_8f9f34e0("cin_sgen_12_01_corvus_vign_dayroom", &function_3dbe13f9, "play");
	level namespace_cc27597::function_43718187("cin_sgen_12_01_corvus_vign_dayroom");
	level notify("hash_96a30d1b");
}

/*
	Name: function_3dbe13f9
	Namespace: namespace_ed09da6e
	Checksum: 0x302CFC14
	Offset: 0x2328
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_3dbe13f9(var_c77d2837)
{
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037.var_7dfaf62 = 16;
	level.var_2fd26037 function_169cc712(function_b4cb3503("fallen_soldiers_hendricks_hack_door_node", "targetname"), 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level.var_2fd26037 function_e11ce512();
}

/*
	Name: function_8d753d94
	Namespace: namespace_ed09da6e
	Checksum: 0x294A0BB0
	Offset: 0x23D0
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_8d753d94()
{
	namespace_82b91a51::function_5b7e3888("player_saw_drone", "hendricks_approaching_drone");
	level thread namespace_d40478f6::function_55f6ee71();
	level namespace_71b8dba1::function_13b3b16a("plyr_what_the_hell_happen_0");
	level notify("hash_d840edf1");
	level thread namespace_d40478f6::function_973b77f9();
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_find_recon_drone");
	level waittill("hash_3b302c78");
	level namespace_71b8dba1::function_13b3b16a("plyr_what_s_going_on_here_0", 1.5);
	level waittill("hash_c74ae0a4");
	function_37cbcf1a("evt_decon_alarm", (796, -1406, -4604));
	level thread namespace_d40478f6::function_3eb3d06();
	level waittill("hash_2b998700");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_what_the_hell_0");
	level namespace_76d95162::function_d9f49fba(1);
	level waittill("hash_2454d800");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_goto_signal_source");
	level waittill("hash_2cbed988");
	level namespace_ad23e503::function_1ab5ebec("fallen_soldiers_robots_cleared");
	level namespace_76d95162::function_d9f49fba(0);
	level thread namespace_d40478f6::function_973b77f9();
	level thread function_c1c96249();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_area_clear_stay_ale_0", 1.5);
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_you_ever_see_a_0", 0.2);
	level namespace_71b8dba1::function_a463d127("kane_i_ve_never_seen_any_0", 0.2);
	level thread function_fe403015();
	level namespace_ad23e503::function_74d6b22f("kane_robots_convo_done");
}

/*
	Name: function_fe403015
	Namespace: namespace_ed09da6e
	Checksum: 0xD66C1529
	Offset: 0x2678
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_fe403015()
{
	namespace_4dbf3ae3::function_1ab5ebec("fallen_soldiers_enter_reception_looktrig");
	level thread namespace_d40478f6::function_973b77f9();
	level namespace_ad23e503::function_1ab5ebec("kane_robots_convo_done");
	level namespace_71b8dba1::function_a463d127("kane_according_to_the_gps_0");
}

/*
	Name: function_c1c96249
	Namespace: namespace_ed09da6e
	Checksum: 0x9ECA454E
	Offset: 0x26F8
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_c1c96249()
{
	if(function_27c72c1b())
	{
		return;
	}
	level endon("hash_89d9c0f");
	level endon("hash_c1907e5d");
	var_337b3942 = function_6ada35ba("dayroom_salim_speaker", "targetname");
	for(var_c957f6b6 = 1; var_c957f6b6 < 6; var_c957f6b6++)
	{
		var_2050b70 = "vox_sgen_visual_extracts_00" + var_c957f6b6 + "_salm";
		var_337b3942 function_ca265377(var_2050b70, "sounddone");
		var_337b3942 waittill("hash_7e0f33fa");
		wait(5);
	}
}

/*
	Name: function_68f0b726
	Namespace: namespace_ed09da6e
	Checksum: 0x5252143E
	Offset: 0x27E0
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_68f0b726()
{
	if(function_27c72c1b())
	{
		return;
	}
	var_277885f5 = function_99201f25("trig_salim_journal_use", "targetname");
	level.var_38cfe33a = [];
	level.var_d0b26d28 = 0;
	foreach(var_4dbf3ae3 in var_277885f5)
	{
		level.var_38cfe33a[var_4dbf3ae3.var_8202763a] = namespace_82b91a51::function_14518e76(var_4dbf3ae3, &"cp_prompt_dni_sgen_access_journal", &"CP_MI_SING_SGEN_ACCESS_JOURNAL", &function_a43abada);
	}
}

/*
	Name: function_88a16751
	Namespace: namespace_ed09da6e
	Checksum: 0xF97266F9
	Offset: 0x2900
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_88a16751()
{
	self function_39419ae5();
	wait(0.1);
	self function_921a1574("evt_salim_speaker_destroy");
}

/*
	Name: function_a43abada
	Namespace: namespace_ed09da6e
	Checksum: 0xCA95EB43
	Offset: 0x2950
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_a43abada()
{
	var_6a8436fc = self function_52b8ab2b();
	var_c50aa484 = function_9b7fda5e("script_origin", self.var_722885f3);
	level.var_d0b26d28++;
	level notify("hash_c1907e5d");
	var_337b3942 = function_6ada35ba("dayroom_salim_speaker", "targetname");
	var_337b3942 thread function_88a16751();
	switch(level.var_d0b26d28)
	{
		case 1:
		{
			var_55df1164 = "vox_sgen_medical_logs_001_salm";
			break;
		}
		case 2:
		{
			var_55df1164 = "vox_sgen_medical_logs_002_salm";
			break;
		}
		case 3:
		{
			var_55df1164 = "vox_sgen_medical_logs_003_salm";
			break;
		}
		case 4:
		{
			var_55df1164 = "vox_sgen_medical_logs_004_salm";
			break;
		}
		case 5:
		{
			var_55df1164 = "vox_sgen_medical_logs_005_salm";
			break;
		}
		case 6:
		{
			var_55df1164 = "vox_sgen_medical_logs_006_salm";
			break;
		}
		case 7:
		{
			var_55df1164 = "vox_sgen_medical_logs_007_salm";
			break;
		}
	}
	if(isdefined(level.var_79b63714))
	{
		level.var_79b63714 function_39419ae5();
	}
	var_c50aa484 function_921a1574(var_55df1164);
	level.var_79b63714 = var_c50aa484;
	if(level.var_d0b26d28 == 7)
	{
		namespace_99202726::function_c75f9c25();
	}
	self namespace_a230c2b1::function_c5a39495(1);
	self function_dc8c8404();
}

/*
	Name: function_edc1192b
	Namespace: namespace_ed09da6e
	Checksum: 0x28D5A57D
	Offset: 0x2B70
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_edc1192b(var_637636ed, var_4ac85f5f)
{
	level thread function_516039af(var_4ac85f5f);
	level namespace_ad23e503::function_d266a8b4(var_637636ed, var_4ac85f5f);
	level namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
}

/*
	Name: function_7d5168cb
	Namespace: namespace_ed09da6e
	Checksum: 0xC18628B4
	Offset: 0x2BE0
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_7d5168cb()
{
	self endon("hash_128f8789");
	level endon("hash_aa9b4587");
	var_c9cf27c4 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	var_7f788a1 = function_6ada35ba(var_c9cf27c4.var_b07228b6, "targetname");
	var_7f788a1 endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3");
		if(isdefined(var_7f788a1))
		{
			var_7f788a1 namespace_4dbf3ae3::function_42e87952();
		}
		else
		{
			self function_dc8c8404();
		}
	}
}

/*
	Name: function_80a49394
	Namespace: namespace_ed09da6e
	Checksum: 0xECD6999C
	Offset: 0x2CC0
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_80a49394(var_dc854c29)
{
	self endon("hash_128f8789");
	level endon("hash_aa9b4587");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_b07228b6), "Dev Block strings are not supported" + self.var_722885f3);
	#/
	var_64e85e6d = [];
	var_b6944555 = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6);
	foreach(var_f3505fa in var_b6944555)
	{
		var_64e85e6d[var_3e671a1] = namespace_2f06d687::function_7387a40a(var_dc854c29);
		var_f3505fa thread namespace_cc27597::function_c35e6aab(var_64e85e6d[var_3e671a1]);
	}
	level namespace_ad23e503::function_1ab5ebec("fallen_soldiers_robots_wakeup_started");
	foreach(var_f3505fa in var_b6944555)
	{
		if(function_5b49d38c(var_64e85e6d[var_3e671a1]))
		{
			self function_ae64ae2(var_64e85e6d[var_3e671a1], var_f3505fa);
		}
	}
	self function_dc8c8404();
}

/*
	Name: function_ae64ae2
	Namespace: namespace_ed09da6e
	Checksum: 0xD672CA75
	Offset: 0x2EC8
	Size: 0xB9
	Parameters: 2
	Flags: None
*/
function function_ae64ae2(var_f6c5842, var_f3505fa)
{
	level endon("hash_aa9b4587");
	var_f6c5842 endon("hash_128f8789");
	self endon("hash_128f8789");
	self namespace_82b91a51::function_39b48811(var_f6c5842, "damage", self, "trigger");
	wait(function_72a94f05(0.1, 0.25));
	var_f6c5842 function_89ba9422();
	var_f3505fa namespace_cc27597::function_43718187(var_f6c5842);
	level notify("hash_2cbed988");
}

/*
	Name: function_31e3341a
	Namespace: namespace_ed09da6e
	Checksum: 0x4765CFF8
	Offset: 0x2F90
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_31e3341a()
{
	var_ec24660 = namespace_cba4cc55::function_411dc61b(1.3, -0.25);
	var_39dd968a = namespace_cba4cc55::function_411dc61b(2.4, -0.51);
	if(var_ec24660 < 0)
	{
		var_ec24660 = 0;
	}
	if(var_39dd968a <= 0)
	{
		var_39dd968a = 0.2;
	}
	wait(function_72a94f05(var_ec24660, var_39dd968a));
}

/*
	Name: function_fbd51610
	Namespace: namespace_ed09da6e
	Checksum: 0xF194BC8
	Offset: 0x3060
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_fbd51610()
{
	self.var_3e94206a = "team3";
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_ceb883cd("robot_lights", 2);
}

/*
	Name: function_bebe324d
	Namespace: namespace_ed09da6e
	Checksum: 0xDA385CBE
	Offset: 0x30D0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_bebe324d()
{
	self endon("hash_128f8789");
	self.var_3e94206a = "team3";
	self.var_164093db = 1;
	var_e0b7400e = 2;
	if(isdefined(self.var_8202763a))
	{
		var_e0b7400e = self.var_8202763a;
	}
	if(isdefined(self.var_db7bb468))
	{
		if(self.var_db7bb468 == "crawler")
		{
			self.var_ccaf574a = GetTime() + function_dc99997a(20000, 30000);
			self namespace_d84e54db::function_ceb883cd("force_crawler", "remove_legs");
			self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
		}
	}
	else
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_" + var_e0b7400e);
	}
}

/*
	Name: function_89ba9422
	Namespace: namespace_ed09da6e
	Checksum: 0x83EFBBFE
	Offset: 0x31F8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_89ba9422()
{
	self.var_164093db = 1;
	self function_921a1574("evt_robot_ambush_arise");
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_ceb883cd("robot_lights", 0);
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
}

/*
	Name: function_516039af
	Namespace: namespace_ed09da6e
	Checksum: 0x18F61498
	Offset: 0x32A8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_516039af(var_4ac85f5f)
{
	level endon(var_4ac85f5f);
	var_64e85e6d = function_24e95264("team3", "robot");
	var_64e85e6d function_15debd57(var_4ac85f5f);
	level namespace_ad23e503::function_74d6b22f(var_4ac85f5f);
}

/*
	Name: function_15debd57
	Namespace: namespace_ed09da6e
	Checksum: 0xB09C994B
	Offset: 0x3328
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_15debd57(var_53e4687d)
{
	level endon(var_53e4687d);
	foreach(var_f6c5842 in self)
	{
		if(function_5b49d38c(var_f6c5842) && (isdefined(var_f6c5842.var_164093db) && var_f6c5842.var_164093db))
		{
			var_f6c5842 waittill("hash_128f8789");
		}
	}
}

/*
	Name: function_f7879f6f
	Namespace: namespace_ed09da6e
	Checksum: 0x164FA10A
	Offset: 0x3400
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f7879f6f()
{
	namespace_4dbf3ae3::function_1ab5ebec("fallen_soldiers_encounter_clear_trig", undefined, undefined, 0);
	namespace_d5067552::function_2992720d("fallen_soldiers_mid_encounter_group");
}

/*
	Name: function_ab5cee74
	Namespace: namespace_ed09da6e
	Checksum: 0x9EA5E662
	Offset: 0x3448
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_ab5cee74()
{
	level waittill("hash_b8163f70");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_goto_signal_source");
	level thread namespace_d0ef8521::function_45d1556("fallen_soldiers_decon_breadcrumb");
	level waittill("hash_b0f8d01");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
	level waittill("hash_2454d800");
	level thread namespace_d0ef8521::function_45d1556("fallen_soldiers_decon_room_breadcrumb_start");
	level waittill("hash_96a30d1b");
	level thread namespace_d0ef8521::function_45d1556("fallen_soldiers_end_breadcrumb_trig");
}

/*
	Name: function_cc10b9af
	Namespace: namespace_ed09da6e
	Checksum: 0x19253B3E
	Offset: 0x3518
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_cc10b9af(var_c77d2837)
{
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_c77d2837["mapping_drone"]);
	namespace_4dbf3ae3::function_1ab5ebec("fallen_soldiers_drone_intro_looktrig");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_c77d2837["mapping_drone"]);
}

