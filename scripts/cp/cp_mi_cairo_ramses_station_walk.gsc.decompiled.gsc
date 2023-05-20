#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_level_start;
#using scripts\cp\cp_mi_cairo_ramses_nasser_interview;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_7434c6b7;

/*
	Name: function_d290ebfa
	Namespace: namespace_7434c6b7
	Checksum: 0xE358714B
	Offset: 0x1AA0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level namespace_ad23e503::function_c35e6aab("end_tunneltalk_pt1");
	level namespace_ad23e503::function_c35e6aab("khalil_walk_done");
	level thread function_6b91ca4();
	level thread function_3a8a502();
	level thread function_e9be9fb3();
	level thread function_bbd12ed2();
	level thread function_78528b3d();
	level thread function_a99e5acb();
	level thread function_dd2cc06c();
	function_eef5b755();
	level namespace_1d795d47::function_be8adfb8("rs_walk_through");
}

/*
	Name: function_dd2cc06c
	Namespace: namespace_7434c6b7
	Checksum: 0x61DC2EDC
	Offset: 0x1BC8
	Size: 0x287
	Parameters: 0
	Flags: None
*/
function function_dd2cc06c()
{
	var_b04bc952 = "cp_waypoint_follow";
	namespace_d0ef8521::function_74d6b22f(var_b04bc952, level.var_9db406db);
	var_660ee73d = function_6ada35ba("trig_close_main_station_door", "targetname");
	while(!level namespace_ad23e503::function_7922262b("khalil_walk_done"))
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(!isdefined(var_5dc5e20a.var_2e3d01f0))
			{
				var_5dc5e20a.var_2e3d01f0 = 0;
			}
			if(function_7d15e2f8(var_5dc5e20a.var_722885f3, level.var_9db406db.var_722885f3) < 500 || var_5dc5e20a function_32fa5072(var_660ee73d))
			{
				if(var_5dc5e20a.var_2e3d01f0 == 0)
				{
					namespace_d0ef8521::function_50ccee8d(var_b04bc952, var_5dc5e20a);
					var_5dc5e20a.var_2e3d01f0 = 1;
				}
				continue;
			}
			if(var_5dc5e20a.var_2e3d01f0 == 1)
			{
				namespace_d0ef8521::function_48f26766(var_b04bc952, var_5dc5e20a);
				var_5dc5e20a.var_2e3d01f0 = 0;
			}
		}
		wait(1);
	}
	namespace_d0ef8521::function_31cd1834(var_b04bc952, level.var_9db406db);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_2e3d01f0 = undefined;
	}
}

/*
	Name: function_e29f0dd6
	Namespace: namespace_7434c6b7
	Checksum: 0x8E77A065
	Offset: 0x1E58
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_e29f0dd6(var_b04bc952)
{
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_7a9855f3 = namespace_82b91a51::function_740f8516("rachel");
	level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
	namespace_1d795d47::function_3096a6fd(var_b04bc952);
}

/*
	Name: function_93d2e417
	Namespace: namespace_7434c6b7
	Checksum: 0x99EC1590
	Offset: 0x1EE8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_93d2e417()
{
}

/*
	Name: function_eef5b755
	Namespace: namespace_7434c6b7
	Checksum: 0xE15E9A55
	Offset: 0x1EF8
	Size: 0x3AB
	Parameters: 0
	Flags: None
*/
function function_eef5b755()
{
	level endon("hash_6f437b92");
	level thread namespace_391e4301::function_e950228a();
	level thread function_317364f4();
	namespace_cc27597::function_c35e6aab("cin_ram_02_04_walk_1st_introduce_01");
	namespace_cc27597::function_c35e6aab("cin_ram_02_04_walk_1st_thousandyardstare");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_04_walk_1st_introduce_04", &function_19a13445, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_04_walk_1st_introduce_01", &function_4c91219b, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_04_walk_1st_introduce_01", &function_1ec9cc48, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_04_walk_1st_introduce_01", &function_fa1c2163, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_04_walk_1st_introduce_01", &namespace_391e4301::function_3bc57aa8, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_04_walk_1st_introduce_02", &namespace_391e4301::function_3bc57aa8, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_04_walk_1st_introduce_03", &namespace_391e4301::function_3bc57aa8, "done");
	namespace_cc27597::function_8f9f34e0("cin_ram_02_04_walk_1st_introduce_04", &namespace_391e4301::function_3bc57aa8, "done");
	namespace_cc27597::function_43718187("cin_ram_02_04_walk_1st_introduce_01");
	namespace_cc27597::function_43718187("cin_ram_02_04_walk_1st_introduce_02");
	namespace_cc27597::function_43718187("cin_ram_02_04_walk_1st_introduce_03");
	level thread function_bc43c2f8();
	level thread namespace_e55eaf53::function_2ed0dd8e();
	namespace_391e4301::function_e7ebe596();
	level thread namespace_cc27597::function_43718187("cin_ram_02_04_walk_1st_introduce_04");
	var_80f9be56 = function_6ada35ba("armory_door_collision", "targetname");
	var_80f9be56 function_422037f5();
	level waittill("hash_db50bccb");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_e55eaf53::function_1bcd464b();
	}
	level namespace_ad23e503::function_74d6b22f("khalil_walk_done");
	namespace_e55eaf53::function_b760b954();
	namespace_4dbf3ae3::function_1ab5ebec("trig_close_main_station_door");
}

/*
	Name: function_4c91219b
	Namespace: namespace_7434c6b7
	Checksum: 0x5D817720
	Offset: 0x22B0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_4c91219b(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("station_walk_past_stairs");
}

/*
	Name: function_1ec9cc48
	Namespace: namespace_7434c6b7
	Checksum: 0xDAE63AE3
	Offset: 0x22E8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_1ec9cc48(var_c77d2837)
{
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_meet_with_khalil");
	level waittill("hash_17035476");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_go_to_holding_room");
}

/*
	Name: function_fa1c2163
	Namespace: namespace_7434c6b7
	Checksum: 0xE768DE80
	Offset: 0x2340
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_fa1c2163(var_c77d2837)
{
	level waittill("hash_fa1c2163");
	level namespace_71b8dba1::function_13b3b16a("plyr_winslow_accord_resou_0");
}

/*
	Name: function_bc43c2f8
	Namespace: namespace_7434c6b7
	Checksum: 0x996893C1
	Offset: 0x2380
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_bc43c2f8(var_c4db808e)
{
	if(!isdefined(var_c4db808e))
	{
		var_c4db808e = 1;
	}
	level.var_9db406db namespace_d84e54db::function_ceb883cd("patrol", 1);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("vignette_mode", "slow");
	if(var_c4db808e)
	{
		level.var_9db406db waittill("hash_55d71436");
	}
	level.var_9db406db function_169cc712(function_b4cb3503("khalil_post_station_walk_node", "targetname"), 1);
	level namespace_ad23e503::function_1ab5ebec("dr_nasser_interview_started");
	level.var_9db406db namespace_d84e54db::function_ceb883cd("patrol", 0);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("disablearrivals", 0);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("vignette_mode", "off");
}

/*
	Name: function_19a13445
	Namespace: namespace_7434c6b7
	Checksum: 0xBFB8FA97
	Offset: 0x2500
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_19a13445(var_c77d2837)
{
	level waittill("hash_5292a904");
	level namespace_ad23e503::function_74d6b22f("station_walk_complete");
}

/*
	Name: function_317364f4
	Namespace: namespace_7434c6b7
	Checksum: 0xDFB60C2B
	Offset: 0x2540
	Size: 0x601
	Parameters: 0
	Flags: None
*/
function function_317364f4()
{
	level namespace_82b91a51::function_c9aa1ff("unaligned_walk_anims_init_done", 2);
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_triage_helmettable_02");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_04_walk_vign_movemove_02");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_walk_to_escalator_sit");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_run_to_crates");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_walk_run_to_guy_at_cleanup");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_run_to_surgery_cleanup");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_guys_impede_vips_guy02");
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_guys_impede_vips_guy01");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_jump_off_crates");
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_triage_enter_02");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_mop_blood_move");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_intosurgery");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_recovery_vign_walk_inspect");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_stressed");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_interview_guards");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_recovery_room_guys");
	level thread namespace_82b91a51::function_67520c6a("play_impede_vips", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_guys_impede_vips_guy01");
	level thread namespace_82b91a51::function_67520c6a("play_impede_vips", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_guys_impede_vips_guy02");
	level thread namespace_82b91a51::function_67520c6a("play_walk_to_escalator_sit", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_walk_to_escalator_sit");
	level thread namespace_82b91a51::function_67520c6a("play_run_to_crates", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_run_to_crates");
	level thread namespace_82b91a51::function_67520c6a("play_run_to_surgery_cleanup", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_run_to_surgery_cleanup");
	level thread namespace_82b91a51::function_67520c6a("play_recovery_room_guys", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_recovery_room_guys");
	level thread namespace_82b91a51::function_67520c6a("play_interview_guards", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_interview_guards");
	level thread namespace_82b91a51::function_67520c6a("play_run_to_guy_at_cleanup", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_walk_run_to_guy_at_cleanup");
	level thread namespace_82b91a51::function_67520c6a("play_triage_enter", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_triage_enter_02");
	level thread namespace_82b91a51::function_67520c6a("play_into_surgery", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_intosurgery");
	level thread namespace_82b91a51::function_67520c6a("play_mop_blood_move", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_mop_blood_move");
	level thread namespace_82b91a51::function_67520c6a("play_move_move", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_04_walk_vign_movemove_02");
	level thread namespace_82b91a51::function_67520c6a("play_jump_off_crates", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_jump_off_crates");
	level thread namespace_82b91a51::function_67520c6a("play_helmet_table", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_triage_helmettable_02");
	level thread namespace_82b91a51::function_67520c6a("play_move_move", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_stressed");
	level thread namespace_82b91a51::function_67520c6a("play_inspect_servers", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_recovery_vign_walk_inspect");
	level notify("hash_bfb2bcf2");
}

/*
	Name: function_3a8a502
	Namespace: namespace_7434c6b7
	Checksum: 0xBA8363CC
	Offset: 0x2B50
	Size: 0x3D9
	Parameters: 0
	Flags: None
*/
function function_3a8a502()
{
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_cornerguard_derive");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_inspect_patients_02_medic");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_inspect_patients_02_guy01");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_inspect_patients_02_guy02");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_inspect_patients_01_medic");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_inspect_patients_01_guy01");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_inspect_patients_01_guy02");
	namespace_82b91a51::function_76f13293();
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_on_crates_inspecting");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_inspecting_two_crates");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_reflecting_guy01");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_reflecting_guy02");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_readingipad_guy01_raised");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_readingipad_guy02");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_supply_opencrate");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_supply_inventory");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_recovery_vign_patient01");
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_recovery_vign_patient02");
	level thread namespace_82b91a51::function_67520c6a("play_recovery_medics", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_inspect_patients_02_medic");
	level thread namespace_82b91a51::function_67520c6a("play_recovery_medics", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_inspect_patients_01_medic");
	level thread namespace_82b91a51::function_67520c6a("play_medic_01_patient_02", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_inspect_patients_01_guy02");
	level notify("hash_1980f74e");
}

/*
	Name: function_e9be9fb3
	Namespace: namespace_7434c6b7
	Checksum: 0x90DA3486
	Offset: 0x2F38
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_e9be9fb3()
{
	level waittill("hash_1980f74e");
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_scaffold_inspecting");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_amputee_arm_a");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_amputee_arm_b");
	namespace_82b91a51::function_76f13293();
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_shrapnel_comfort_1");
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_consoling_chair");
	level thread namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_consoling");
	level thread namespace_cc27597::function_c35e6aab("cin_ram_02_03_station_vign_triage_gurney_elevated_main");
	level thread namespace_82b91a51::function_67520c6a("play_triage_enter", "station_walk_cleanup", &namespace_cc27597::function_43718187, "cin_ram_02_03_station_vign_triage_gurney_elevated_main");
	level notify("hash_5f07aa77");
}

/*
	Name: function_d86d27dc
	Namespace: namespace_7434c6b7
	Checksum: 0xF550AA15
	Offset: 0x30A8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_d86d27dc(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("end_tunneltalk_pt1");
}

/*
	Name: function_2badd8cd
	Namespace: namespace_7434c6b7
	Checksum: 0xBBCE7132
	Offset: 0x30E0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_2badd8cd()
{
	level namespace_cc27597::function_43718187("cin_ram_02_03_interview_vign_forklift_passes");
}

/*
	Name: function_a99e5acb
	Namespace: namespace_7434c6b7
	Checksum: 0x5CA6C806
	Offset: 0x3110
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_a99e5acb()
{
	level namespace_ad23e503::function_1ab5ebec("subway_cleared");
	var_65d86eb9 = function_6ada35ba("trig_subway_area_top", "targetname");
	var_889ac756 = function_6ada35ba("trig_subway_area_mid", "targetname");
	var_13d98121 = function_6ada35ba("trig_subway_area_bottom", "targetname");
	var_7bb6a6b6 = namespace_14b42b8a::function_7922262b("subway_sight_target");
	do
	{
		var_d806b4f5 = 1;
		while(namespace_82b91a51::function_f08b9be6(var_65d86eb9, "allies") || namespace_82b91a51::function_f08b9be6(var_889ac756, "allies") || namespace_82b91a51::function_f08b9be6(var_13d98121, "allies"))
		{
			wait(0.25);
		}
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a namespace_82b91a51::function_4ccc8ec5(var_7bb6a6b6, 0.5))
			{
				var_d806b4f5 = 0;
			}
		}
		wait(0.25);
	}
	while(!var_d806b4f5 == 0);
	function_51f408f1();
	level namespace_cc27597::function_43718187("cin_ram_02_03_station_vign_gate_guard_derive");
}

/*
	Name: function_51f408f1
	Namespace: namespace_7434c6b7
	Checksum: 0xA76528ED
	Offset: 0x3350
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_51f408f1()
{
	var_7925d66f = function_6ada35ba("subway_collision", "script_string");
	var_7925d66f function_48f26766();
	var_d5ca9084 = function_99201f25("subway_blocker", "script_string");
	foreach(var_375c9b15 in var_d5ca9084)
	{
		var_375c9b15 function_48f26766();
	}
	namespace_80983c42::function_dfc351df("fx_exploder_sparks_off");
	level namespace_ad23e503::function_74d6b22f("hot_join_station_walk_warp");
	level thread function_7768c0ae();
}

/*
	Name: function_7768c0ae
	Namespace: namespace_7434c6b7
	Checksum: 0x31C933A4
	Offset: 0x34A0
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_7768c0ae()
{
	level endon("hash_d1bd1424");
	var_716f4f40 = function_6ada35ba("trig_hot_join_station_walk_warp", "targetname");
	while(1)
	{
		var_716f4f40 namespace_4dbf3ae3::function_1ab5ebec();
		var_5dc5e20a = var_716f4f40.var_aef176e7;
		var_1edb317b = namespace_14b42b8a::function_7922262b("s_station_walk_hot_join_warp_" + var_5dc5e20a function_c7f3ce11(), "targetname");
		var_5dc5e20a function_a30814d(var_1edb317b.var_722885f3);
		var_5dc5e20a function_eda2be50(var_1edb317b.var_6ab6f4fd);
	}
}

/*
	Name: function_bbd12ed2
	Namespace: namespace_7434c6b7
	Checksum: 0x1A1B8115
	Offset: 0x35A8
	Size: 0x23C5
	Parameters: 1
	Flags: None
*/
function function_bbd12ed2(var_6dc777dc)
{
	if(!isdefined(var_6dc777dc))
	{
		var_6dc777dc = 1;
	}
	if(var_6dc777dc)
	{
		level namespace_ad23e503::function_1ab5ebec("station_walk_cleanup");
	}
	else
	{
		wait(0.05);
	}
	level notify("hash_39d63594");
	var_53d1df2a = [];
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_interview_vign_clipboard_a";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_interview_vign_clipboard_b";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_interview_vign_clipboard_c";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_interview_vign_argument_a";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_interview_vign_argument_b";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_walk_vign_forklift_loop";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_interview_vign_medsuppliesdelivery";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_interview_vign_patient_in_shock";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_interview_vign_forklift_passes";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_bloodyhead_seated_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_bloodyhead_seated_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_bloodyhead_seated_guy03";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_conversation";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_sharpening";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_sleeping_seated";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_sleeping_seated_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_sleeping_seated_guy03";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_sleeping_seated_guy04";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_using_ipad_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_using_ipad_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_using_ipad_guy03";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_amputee_arm_a";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_amputee_arm_b";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_amputee_arm_c";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_amputee_preist";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_balcony_surveying_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_balcony_surveying_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_balcony_surveying_guy03";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_triage_bleedout";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_seizure_soldier";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_scaffold_inspecting";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_staring_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_giving_blood_guy1";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_giving_blood_guy2";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_giving_blood_guy3";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_thousandstare_a_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_thousandstare_a_guy03";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_thousandstare_b_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_thousandstare_b_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_treated_soldier_guy05";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_treated_soldier_guy06";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_treated_soldier_guy08";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_nervous_guy03";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_smoking_guy03";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_smoking_guy04";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_on_crates_inspecting";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_inspecting_two_crates";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_reflecting_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_reflecting_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_readingipad_guy01_raised";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_readingipad_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_supply_opencrate";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_supply_inventory";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_inspect_patients_01_medic";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_inspect_patients_01_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_inspect_patients_01_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_inspect_patients_02_medic";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_inspect_patients_02_medic_endloop";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_inspect_patients_02_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_inspect_patients_02_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_triage_helmettable_02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_bloodmopping";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_triage_nursegauze_distributing";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_triage_cot_exitdoors";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_walk_run_to_guy_at_cleanup";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_interview_guards";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_recovery_room_guys";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_walk_to_escalator_sit";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_run_to_crates";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_run_to_surgery_cleanup";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_guys_impede_vips_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_guys_impede_vips_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_run_to_guy_at_cleanup";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_jump_off_crates";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_triage_enter_02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_mop_blood_move";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_04_walk_vign_movemove_02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_intosurgery";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_04_walk_1st_thousandyardstare";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_stressed";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_recovery_vign_walk_inspect";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_recovery_vign_patient01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_recovery_vign_patient02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_cornerguard_derive";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_gate_guard_derive";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_amputee_arm_a";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_amputee_arm_b";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_shrapnel_comfort_1";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_triage_gurney_elevated_main";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_consoling_chair";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_consoling";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_01_01_enterstation_vign_loading";
	var_18763f91 = 0;
	foreach(var_294306eb in var_53d1df2a)
	{
		if(level namespace_cc27597::function_444aea32(var_294306eb))
		{
			level thread namespace_cc27597::function_fcf56ab5(var_294306eb, 1);
			var_18763f91++;
			if(var_18763f91 > 4)
			{
				wait(0.05);
				var_18763f91 = 0;
			}
		}
	}
}

/*
	Name: function_6b91ca4
	Namespace: namespace_7434c6b7
	Checksum: 0x25567B60
	Offset: 0x5978
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_6b91ca4()
{
	level endon("hash_39d63594");
	var_dc1935e1 = namespace_14b42b8a::function_7faf4c39("walk_flyover_vtol", "targetname");
	var_795e65b4 = namespace_14b42b8a::function_7faf4c39("struct_station_fly_end", "targetname");
	while(1)
	{
		var_489b2980 = namespace_84970cc4::function_47d18840(var_dc1935e1).var_722885f3;
		var_2ef9d306 = function_9b7fda5e("script_model", var_489b2980);
		var_2ef9d306 function_e48f905e("p7_mil_vtol_egypt_alphatest");
		namespace_82b91a51::function_76f13293();
		var_992af830 = namespace_84970cc4::function_47d18840(var_795e65b4).var_722885f3;
		var_84574b1 = var_992af830 - var_489b2980;
		var_6ab6f4fd = function_bdcdc423(var_84574b1);
		var_2ef9d306.var_6ab6f4fd = var_6ab6f4fd;
		var_2ef9d306 thread function_4fec5052(var_992af830);
		wait(function_72a94f05(12, 15));
	}
}

/*
	Name: function_4fec5052
	Namespace: namespace_7434c6b7
	Checksum: 0x7DCA82B2
	Offset: 0x5B18
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_4fec5052(var_992af830)
{
	self function_a96a2721(var_992af830, 5);
	self waittill("hash_a21db68a");
	self function_dc8c8404();
}

/*
	Name: function_78528b3d
	Namespace: namespace_7434c6b7
	Checksum: 0x24D04157
	Offset: 0x5B70
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_78528b3d()
{
	level thread function_54d1b8f8("sndScene1", (6346, -1864, 94), "vox_rams_vign_generic_002_med3", "vox_rams_vign_generic_003_med4", "vox_rams_vign_generic_006_med3");
	level thread function_54d1b8f8("sndScene2", (6830, -1580, 90), "vox_rams_vign_generic_000_med1", "vox_rams_vign_generic_001_med2");
	level thread function_54d1b8f8("sndScene3", (7079, -2344, 84), "vox_rams_vign_inventory_001_esl2", "vox_rams_vign_inventory_002_esl3");
	level thread function_54d1b8f8("sndScene4", (7442, -1686, 86), "vox_rams_vign_generic_010_srg1", "vox_rams_vign_generic_011_srg4", "vox_rams_vign_generic_016_srg1");
	level thread function_54d1b8f8("sndScene5", (7907, -1126, 96), "vox_rams_vign_inventory_003_esl4", "vox_rams_vign_inventory_004_esl1");
	level thread function_54d1b8f8("sndScene6", (7251, -398, 36), "vox_rams_vign_civ2_000_esl1", "vox_rams_vign_civ2_001_esl2");
	level thread function_54d1b8f8("sndScene7", (7442, -1686, 86), "vox_rams_vign_generic_008_med1", "vox_rams_vign_generic_009_med2");
	level thread function_671a7a61();
}

/*
	Name: function_54d1b8f8
	Namespace: namespace_7434c6b7
	Checksum: 0xC3BEFE76
	Offset: 0x5D30
	Size: 0x133
	Parameters: 6
	Flags: None
*/
function function_54d1b8f8(var_562e5771, var_c70dfc78, var_21071b78, var_930e8ab3, var_6d0c104a, var_df137f85)
{
	level waittill(var_562e5771);
	function_37cbcf1a(var_21071b78, var_c70dfc78);
	level function_e43e1d61(var_21071b78);
	if(isdefined(var_930e8ab3))
	{
		function_37cbcf1a(var_930e8ab3, var_c70dfc78);
		level function_e43e1d61(var_21071b78);
	}
	if(isdefined(var_6d0c104a))
	{
		function_37cbcf1a(var_6d0c104a, var_c70dfc78);
		level function_e43e1d61(var_21071b78);
	}
	if(isdefined(var_df137f85))
	{
		function_37cbcf1a(var_df137f85, var_c70dfc78);
		level function_e43e1d61(var_21071b78);
	}
}

/*
	Name: function_e43e1d61
	Namespace: namespace_7434c6b7
	Checksum: 0x4432EDE8
	Offset: 0x5E70
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_e43e1d61(var_2017476)
{
	var_e20459b1 = function_799102f2(var_2017476);
	if(var_e20459b1 >= 0)
	{
		var_77a7fe7d = var_e20459b1 * 0.001;
		wait(var_77a7fe7d);
	}
	else
	{
		wait(1);
	}
}

/*
	Name: function_671a7a61
	Namespace: namespace_7434c6b7
	Checksum: 0xA56110C0
	Offset: 0x5EE0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_671a7a61()
{
	var_1c4260d1 = function_9b7fda5e("script_origin", (7068, -1791, 548));
	while(1)
	{
		level waittill("hash_166d2243");
		var_1c4260d1 function_921a1574("amb_hospital_pa");
	}
}

