#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_city;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_1beb9396;

/*
	Name: function_d290ebfa
	Namespace: namespace_1beb9396
	Checksum: 0xEFF79BF8
	Offset: 0x18E8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_parking_wall_explode_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "garage_ambient_cleanup");
}

/*
	Name: function_9c1fc2fd
	Namespace: namespace_1beb9396
	Checksum: 0x7FF3D175
	Offset: 0x1930
	Size: 0x5AB
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_c35e6aab("garage_entrance_attack");
	level namespace_ad23e503::function_c35e6aab("garage_entrance_cleared");
	level namespace_ad23e503::function_c35e6aab("garage_entrance_open");
	level namespace_ad23e503::function_c35e6aab("garage_ramp_cleared");
	level namespace_ad23e503::function_c35e6aab("street_clear");
	level namespace_ad23e503::function_c35e6aab("street_phalanx_scatter");
	level namespace_ad23e503::function_c35e6aab("street_truck_cover_available");
	level namespace_ad23e503::function_c35e6aab("street_intro_intersection_cleared");
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_2f06d687::function_2b37a3c9("street_robot_custom_entry", "script_string", &function_9ae7d78);
	namespace_2f06d687::function_2b37a3c9("street_vehicle_ai_splined_entry", "script_noteworthy", &function_c89b08c9);
	namespace_2f06d687::function_2b37a3c9("garage_intro_guys", "script_noteworthy", &function_748fa5c2);
	namespace_2f06d687::function_2b37a3c9("garage_2nd_floor_intro_guys", "script_noteworthy", &function_9ff08320);
	namespace_2f06d687::function_2b37a3c9("street_intro_guys", "script_noteworthy", &function_721c929f);
	namespace_2f06d687::function_2b37a3c9("robot_phalanx", "script_noteworthy", &function_721c929f);
	namespace_2f06d687::function_2b37a3c9("street_turret_spawn_manager_robot", "targetname", &function_dcb29c2c);
	namespace_2f06d687::function_2b37a3c9("garage_breach_street_enemy", "targetname", &function_2ad4a40f);
	namespace_2f06d687::function_2b37a3c9("garage_breach_rushers", "script_aigroup", &function_42881589);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_8e9083ff::function_da579a5d(var_b04bc952, 1);
		level.var_3d556bcd.var_7dfaf62 = 32;
		var_35a3121c = namespace_8e9083ff::function_b0dd51f4("zurich_street_redshirts");
		namespace_4dbf3ae3::function_42e87952("zurich_street_start_colortrig");
		namespace_f815059a::function_e3750802();
		level thread namespace_f815059a::function_ab4451a1();
		level.var_ebb30c1a = [];
		function_48166ad7();
		level namespace_71e9cb84::function_74d6b22f("intro_ambience", 1);
		namespace_80983c42::function_80983c42("streets_tower_wasp_swarm");
		level namespace_71e9cb84::function_74d6b22f("zurich_city_ambience", 1);
		level thread function_1be1a835();
		level thread namespace_67110270::function_db37681();
		level thread namespace_f815059a::function_da30164f();
		namespace_d7916d65::function_a2995f22();
	}
	var_b8f9a884 = namespace_2f06d687::function_7387a40a("street_turret", &function_5268b119);
	level thread function_ce297ff6(var_74cd64bc);
	level thread function_1b074d61();
	level thread namespace_f815059a::function_9b9c35d7();
	function_b0c3c450();
	level namespace_71e9cb84::function_74d6b22f("intro_ambience", 0);
	var_62e3398b = function_d35375b8("robot_phalanx", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_62e3398b, &namespace_2f06d687::function_81b8f7c, &function_721c929f);
	namespace_dabbe128::function_a0ac4434(&function_aebcf025);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_1beb9396
	Checksum: 0xC0D2D33D
	Offset: 0x1EE8
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_8e9083ff::function_4d032f25(0);
	level thread namespace_8e9083ff::function_4a00a473("street");
}

/*
	Name: function_b0c3c450
	Namespace: namespace_1beb9396
	Checksum: 0x2C6AB968
	Offset: 0x1F50
	Size: 0x50B
	Parameters: 0
	Flags: None
*/
function function_b0c3c450()
{
	namespace_8e9083ff::function_3f4f84e("garage_entrance_nodes", "script_noteworthy", 0);
	namespace_8e9083ff::function_3f4f84e("garage_intro_enemies", undefined, 0);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_parking_wall_explode_bundle");
	level thread function_1b8ff897();
	level thread function_9a1931bc();
	var_edc6e0e1 = function_243bb261("street_garage_vtol", "targetname") namespace_8e9083ff::function_a569867c(undefined, &function_b8380f70);
	level thread function_c8cc9a0d();
	level thread function_6a364612();
	level thread function_ba4b9ec5();
	level namespace_ad23e503::function_1ab5ebec("street_battle_intersection_reached");
	wait(0.05);
	namespace_8e9083ff::function_33ec653f("street_intersection_raven_soldier_spawn_manager", undefined, undefined, &namespace_8e9083ff::function_d065a580);
	level.var_3d556bcd thread function_4e8285e0();
	level namespace_ad23e503::function_1ab5ebec("street_civs_start");
	level thread namespace_8e9083ff::function_e7fdcb95("street_phalanx", "phalanx_forward", 6, 1, undefined, "street_phalanx_scatter", 2);
	wait(0.05);
	namespace_d5067552::function_bae40a28("street_spawn_manager");
	level namespace_ad23e503::function_1ab5ebec("street_balcony_spawn_closet_available");
	var_edc6e0e1 = function_243bb261("street_garage_vtol2", "targetname") namespace_8e9083ff::function_a569867c(undefined, &function_b8380f70);
	wait(0.05);
	namespace_d5067552::function_bae40a28("street_balcony_reinforcement_spawn_manager");
	namespace_8e9083ff::function_33ec653f("street_garage_roof_raven_soldier_spawn_manager", undefined, undefined, &namespace_8e9083ff::function_d065a580);
	namespace_d5067552::function_27bf2e8("street_balcony_reinforcement_spawn_manager", 2);
	var_64e85e6d = namespace_d5067552::function_423eae50("street_balcony_reinforcement_spawn_manager");
	foreach(var_d84e54db in var_64e85e6d)
	{
		if(var_d84e54db.var_caae374e === "street_balcony_robot_sniper")
		{
			continue;
		}
		var_d84e54db namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	}
	var_b3b33e02 = namespace_d5067552::function_423eae50("street_wasp_spawn_manager");
	namespace_84970cc4::function_966ecb29(var_b3b33e02, &function_90c5d999);
	namespace_d5067552::function_2992720d("street_spawn_manager", 1);
	level namespace_ad23e503::function_74d6b22f("street_clear");
	namespace_9f824288::function_5d2cdd99();
	wait(3);
	var_66b24a60 = namespace_8e9083ff::function_3789d4db("street_garage_entrance_open_trig", undefined, 700, 768);
	var_66b24a60 thread function_3a6344d1(5);
	var_66b24a60 waittill("hash_4dbf3ae3");
	var_66b24a60 function_dc8c8404();
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	function_4d92b2c7();
	level namespace_ad23e503::function_74d6b22f("garage_entrance_open");
}

/*
	Name: function_ba4b9ec5
	Namespace: namespace_1beb9396
	Checksum: 0x58551D60
	Offset: 0x2468
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_ba4b9ec5()
{
	level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_what_does_it_want_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_right_now_i_think_i_0", 1);
	level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_it_knows_we_re_comin_0", 1);
}

/*
	Name: function_242cb817
	Namespace: namespace_1beb9396
	Checksum: 0xE43A4532
	Offset: 0x24F0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_242cb817()
{
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_cleared");
	level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_we_have_to_move_thro_0", 1);
	level namespace_ad23e503::function_1ab5ebec("flag_start_plyr_controlling_vo");
	level namespace_71b8dba1::function_13b3b16a("plyr_controlling_these_ro_0", 1);
	namespace_4dbf3ae3::function_39cd87a2("garage_kane_rooftop_colortrig", "garage_kane_exit_colortrig");
	level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_stay_with_me_3", 1);
	level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_we_ll_get_through_th_0", 2);
	level namespace_ad23e503::function_74d6b22f("flag_start_kane_it_won_t_vo_done");
}

/*
	Name: function_568e2e07
	Namespace: namespace_1beb9396
	Checksum: 0x98EE4F3C
	Offset: 0x2618
	Size: 0x553
	Parameters: 2
	Flags: None
*/
function function_568e2e07(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_ad23e503::function_c35e6aab("garage_entrance_attack");
		level namespace_ad23e503::function_c35e6aab("garage_entrance_cleared");
		level namespace_ad23e503::function_c35e6aab("garage_entrance_open");
		level namespace_ad23e503::function_c35e6aab("garage_ramp_cleared");
		level namespace_ad23e503::function_c35e6aab("street_truck_cover_available", 1);
		level namespace_ad23e503::function_74d6b22f("street_balcony_spawn_closet_available");
		namespace_2f06d687::function_2b37a3c9("street_robot_custom_entry", "script_string", &function_9ae7d78);
		namespace_2f06d687::function_2b37a3c9("street_vehicle_ai_splined_entry", "script_noteworthy", &function_c89b08c9);
		namespace_2f06d687::function_2b37a3c9("garage_breach_rushers", "script_aigroup", &function_42881589);
		namespace_2f06d687::function_2b37a3c9("garage_intro_guys", "script_noteworthy", &function_748fa5c2);
		namespace_2f06d687::function_2b37a3c9("garage_2nd_floor_intro_guys", "script_noteworthy", &function_9ff08320);
		namespace_2f06d687::function_2b37a3c9("garage_breach_street_enemy", "targetname", &function_2ad4a40f);
		namespace_8e9083ff::function_da579a5d(var_b04bc952, 1);
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_parking_wall_explode_bundle");
		level.var_ebb30c1a = [];
		level thread function_1b074d61();
		function_48166ad7(var_b04bc952);
		namespace_d7916d65::function_a2995f22();
		wait(0.05);
		namespace_f815059a::function_e3750802();
		wait(0.05);
		var_b8f9a884 = namespace_2f06d687::function_7387a40a("street_turret", &function_5268b119);
		wait(0.05);
		var_933bbc2c = namespace_8e9083ff::function_33ec653f("garage_skipto_allies_spawn_manager");
		for(var_c957f6b6 = 0; var_c957f6b6 < 2; var_c957f6b6++)
		{
			if(!function_5b49d38c(var_933bbc2c[var_c957f6b6]))
			{
				continue;
			}
			var_933bbc2c[var_c957f6b6] namespace_82b91a51::function_958c7633();
		}
		level thread function_8535a819();
		namespace_80983c42::function_80983c42("streets_tower_wasp_swarm");
		level namespace_71e9cb84::function_74d6b22f("zurich_city_ambience", 1);
		level thread namespace_f815059a::function_ab4451a1();
		namespace_8e9083ff::function_3f4f84e("garage_entrance_nodes", "script_noteworthy", 0);
		namespace_8e9083ff::function_3f4f84e("garage_intro_enemies", undefined, 0);
		level thread namespace_67110270::function_db37681();
		level thread namespace_f815059a::function_da30164f();
		level thread function_a0abe6b6();
	}
	level thread function_410cfaac(var_74cd64bc);
	level thread function_242cb817();
	level thread namespace_8e9083ff::function_c83720c9();
	function_c83d3033();
	function_ec9dd4a5();
	function_b7d40ae();
	function_7a0e84a8();
	level notify("hash_c7263fa8");
	level thread namespace_8e9083ff::function_2361541e("garage");
	function_2480a40a();
	level thread function_d987ae9();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_5b6ddf20
	Namespace: namespace_1beb9396
	Checksum: 0xC216E948
	Offset: 0x2B78
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_5b6ddf20(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_8e9083ff::function_4d032f25(0);
	level thread namespace_8e9083ff::function_4a00a473("garage");
}

/*
	Name: function_2480a40a
	Namespace: namespace_1beb9396
	Checksum: 0x319AE5E8
	Offset: 0x2BE0
	Size: 0x7D5
	Parameters: 0
	Flags: None
*/
function function_2480a40a()
{
	level thread function_1c9e622e();
	level thread function_dc91abc9();
	level thread function_b3a34ca5();
	level thread function_34ad4dc8();
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_open");
	if(isdefined(level.var_851372ea))
	{
		level thread [[level.var_851372ea]]();
	}
	namespace_8e9083ff::function_3f4f84e("garage_entrance_nodes", "script_noteworthy");
	namespace_8e9083ff::function_3f4f84e("garage_intro_enemies");
	namespace_d5067552::function_bae40a28("street_garage_breach_spawn_manger");
	wait(0.05);
	namespace_d5067552::function_bae40a28("garage_allies_spawn_manager");
	wait(0.05);
	level thread namespace_8e9083ff::function_33ec653f("garage_intro_enemy_fake_spawn_manager", undefined, undefined, &function_748fa5c2);
	wait(0.05);
	namespace_d5067552::function_2992720d("street_allies_spawn_manager", 1);
	level thread function_b863f1b1();
	namespace_4dbf3ae3::function_1ab5ebec("street_exit_zone_trig");
	var_64e85e6d = namespace_d5067552::function_423eae50("street_turret_spawn_manager");
	namespace_84970cc4::function_966ecb29(var_64e85e6d, &function_bb52655d);
	namespace_d5067552::function_2992720d("street_turret_spawn_manager", 1);
	if(level.var_2395e945.size < 3)
	{
		var_5e764d1a = function_99201f25("street_balcony_robot_sniper", "script_noteworthy");
		foreach(var_d84e54db in var_5e764d1a)
		{
			if(function_5b49d38c(var_d84e54db))
			{
				var_d84e54db function_2992720d();
			}
		}
	}
	level thread function_1418d19();
	var_9f88d117 = function_6ada35ba("garage_intro_glass_weapon_clip", "targetname");
	var_9f88d117 function_dc8c8404();
	namespace_4dbf3ae3::function_1ab5ebec("garage_ramp_spawn_manager_trig");
	level thread namespace_d5067552::function_5000af1e("garage_ramp_spawn_manager", &function_bdb3b32d);
	namespace_d5067552::function_bae40a28("garage_ramp_spawn_manager");
	namespace_4dbf3ae3::function_1ab5ebec("garage_robots_spawn_manager_trig");
	namespace_d5067552::function_bae40a28("garage_robots_spawn_manager");
	namespace_d5067552::function_bae40a28("garage_2nd_floor_allies_spawn_manager");
	namespace_4dbf3ae3::function_1ab5ebec("garage_third_floor_trig");
	namespace_9f824288::function_5d2cdd99();
	level thread function_e804203a();
	level namespace_ad23e503::function_1ab5ebec("garage_end_phalanx_scatter");
	var_b2d1f880 = function_6ada35ba("garage_upper_floor_left_goaltrig", "targetname");
	var_d587bca1 = function_6ada35ba("garage_upper_floor_right_goaltrig", "targetname");
	var_bb5c7c43 = function_6ada35ba("garage_exit_gate_left_trig", "targetname");
	var_678e7878 = function_6ada35ba("garage_exit_gate_right_trig", "targetname");
	var_24bbf032 = function_24e95264("axis", "robot");
	namespace_84970cc4::function_eaab05dc(var_24bbf032, &function_932e49ba, var_b2d1f880, var_d587bca1, var_bb5c7c43, var_678e7878);
	level namespace_ad23e503::function_1ab5ebec("garage_gate_open");
	var_26d693b1 = namespace_2f06d687::function_289e6fd1("intro_hero_redshirts");
	namespace_84970cc4::function_eaab05dc(var_26d693b1, &namespace_82b91a51::function_4b741fdc);
	namespace_9f824288::function_5d2cdd99();
	namespace_d5067552::function_2992720d("garage_ramp_spawn_manager", 1);
	namespace_d5067552::function_2992720d("garage_robots_spawn_manager", 1);
	namespace_d5067552::function_2992720d("garage_2nd_floor_allies_spawn_manager", 1);
	var_24bbf032 = function_24e95264("axis", "robot");
	foreach(var_d84e54db in var_24bbf032)
	{
		if(!var_d84e54db function_32fa5072(var_bb5c7c43) && !var_d84e54db function_32fa5072(var_678e7878))
		{
			var_d84e54db function_2992720d();
		}
	}
	namespace_4dbf3ae3::function_1ab5ebec("garage_exit_zone_trig");
	if(level.var_2395e945.size == 1)
	{
		var_24bbf032 = function_24e95264("axis", "robot");
		foreach(var_d84e54db in var_24bbf032)
		{
			var_d84e54db.var_44a68a57 = &namespace_8e9083ff::function_8ac3f026;
		}
	}
}

/*
	Name: function_bb52655d
	Namespace: namespace_1beb9396
	Checksum: 0xD5FE1721
	Offset: 0x33C0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_bb52655d()
{
	var_9bfba9d9 = function_6ada35ba("street_center_goaltrig", "targetname");
	if(self function_32fa5072(var_9bfba9d9))
	{
		return;
	}
	self function_2992720d();
}

/*
	Name: function_bdb3b32d
	Namespace: namespace_1beb9396
	Checksum: 0x1D36EEFC
	Offset: 0x3430
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_bdb3b32d()
{
	namespace_d5067552::function_347e835a("garage_ramp_spawn_manager");
	namespace_2f06d687::function_45679edd("garage_entrance_robots", 0);
	level namespace_ad23e503::function_74d6b22f("garage_ramp_cleared");
	var_64e85e6d = namespace_2f06d687::function_289e6fd1("garage_saffold_robots");
	foreach(var_d84e54db in var_64e85e6d)
	{
		var_d84e54db namespace_d84e54db::function_c9e45d52(0);
		var_d84e54db.var_44a68a57 = &namespace_8e9083ff::function_8ac3f026;
	}
}

/*
	Name: function_e804203a
	Namespace: namespace_1beb9396
	Checksum: 0x3B5E1623
	Offset: 0x3558
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_e804203a()
{
	namespace_4dbf3ae3::function_1ab5ebec("garage_phalanx_spawn_trig");
	namespace_8e9083ff::function_e7fdcb95("garage_left_path_phalanx", "phanalx_wedge", 3, 1, 0.1, "garage_end_phalanx_scatter", 3);
}

/*
	Name: function_932e49ba
	Namespace: namespace_1beb9396
	Checksum: 0x908A6A3C
	Offset: 0x35C0
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_932e49ba(var_b2d1f880, var_d587bca1, var_bb5c7c43, var_678e7878)
{
	if(self function_32fa5072(var_b2d1f880))
	{
		self function_169cc712(var_bb5c7c43);
		return;
	}
	else if(self function_32fa5072(var_d587bca1))
	{
		self function_169cc712(var_678e7878);
		return;
	}
	self function_169cc712(var_bb5c7c43);
}

/*
	Name: function_b863f1b1
	Namespace: namespace_1beb9396
	Checksum: 0xACEC4120
	Offset: 0x3670
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_b863f1b1()
{
	namespace_d5067552::function_347e835a("street_garage_breach_spawn_manger");
	namespace_2f06d687::function_45679edd("garage_breach_rushers", 1);
	level namespace_ad23e503::function_74d6b22f("garage_entrance_attack");
	namespace_d5067552::function_72e3dd35("street_garage_breach_spawn_manger");
	namespace_80983c42::function_67e7a937("street_parking_wall_exp");
	level namespace_ad23e503::function_74d6b22f("garage_entrance_cleared");
	namespace_9f824288::function_5d2cdd99();
	namespace_d5067552::function_72e3dd35("garage_allies_spawn_manager");
	if(level.var_2395e945.size < 3)
	{
		var_b04fa3dc = namespace_14b42b8a::function_7922262b("garage_intro_enemy_fake_spawn_manager");
		var_fb75ccb0 = namespace_84970cc4::function_b87262e(var_b04fa3dc.var_e3b635fb);
		foreach(var_d84e54db in var_fb75ccb0)
		{
			var_d84e54db.var_15dfd6c = 0.2;
		}
	}
}

/*
	Name: function_a0abe6b6
	Namespace: namespace_1beb9396
	Checksum: 0x43531066
	Offset: 0x3830
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_a0abe6b6()
{
	var_66b24a60 = namespace_8e9083ff::function_3789d4db("street_garage_entrance_open_trig", undefined, 720, 768);
	var_66b24a60 thread function_3a6344d1(4);
	var_66b24a60 waittill("hash_4dbf3ae3");
	var_66b24a60 function_dc8c8404();
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	function_4d92b2c7();
	level namespace_ad23e503::function_74d6b22f("garage_entrance_open");
}

/*
	Name: function_ce297ff6
	Namespace: namespace_1beb9396
	Checksum: 0x716ECAAB
	Offset: 0x3900
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_ce297ff6(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_assault_hq_obj");
		namespace_d0ef8521::function_45d1556("intro_breadcrumb_trig2", "cp_waypoint_breadcrumb");
	}
	namespace_4dbf3ae3::function_1ab5ebec("truck_burst_breadcrumb_trig", undefined, undefined, 0);
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_assault_hq_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_assault_hq_awaiting_obj");
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_cleared");
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_assault_hq_awaiting_obj");
	namespace_d0ef8521::function_48f26766("cp_level_zurich_assault_hq_obj");
	namespace_d0ef8521::function_45d1556("street_garage_entrance_breadcrumb_trig", "cp_waypoint_breadcrumb");
}

/*
	Name: function_410cfaac
	Namespace: namespace_1beb9396
	Checksum: 0x9AD65422
	Offset: 0x3A18
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_410cfaac(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_assault_hq_awaiting_obj");
		level namespace_ad23e503::function_1ab5ebec("garage_entrance_cleared");
		namespace_d0ef8521::function_50ccee8d("cp_level_zurich_assault_hq_awaiting_obj");
		namespace_d0ef8521::function_74d6b22f("cp_level_zurich_assault_hq_obj");
		namespace_d0ef8521::function_45d1556("street_garage_entrance_breadcrumb_trig", "cp_waypoint_breadcrumb");
	}
	namespace_4dbf3ae3::function_1ab5ebec("street_garage_entrance_breadcrumb_trig", undefined, undefined, 0);
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_assault_hq_obj");
	namespace_d0ef8521::function_48f26766("cp_level_zurich_assault_hq_awaiting_obj");
	level namespace_ad23e503::function_1ab5ebec("garage_ramp_cleared");
	namespace_4dbf3ae3::function_1ab5ebec("street_garage_2nd_floor_breadcrumb_spot", undefined, undefined, 0);
	var_c226e38e = function_6ada35ba("garage_cleanup_trig", "targetname");
	while(isdefined(var_c226e38e) && level.var_3d556bcd function_32fa5072(var_c226e38e))
	{
		wait(0.2);
	}
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_assault_hq_awaiting_obj");
	namespace_d0ef8521::function_48f26766("cp_level_zurich_assault_hq_obj");
	namespace_d0ef8521::function_45d1556("garage_kane_rooftop_colortrig", "cp_waypoint_breadcrumb");
}

/*
	Name: function_aebcf025
	Namespace: namespace_1beb9396
	Checksum: 0xCA55D616
	Offset: 0x3C00
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	self function_2e5e657b();
}

/*
	Name: function_2e5e657b
	Namespace: namespace_1beb9396
	Checksum: 0xD69536D4
	Offset: 0x3C28
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_2e5e657b()
{
	level endon("hash_4defcad0");
	self endon("hash_128f8789");
	if(level namespace_ad23e503::function_7922262b("street_balcony_spawn_closet_available"))
	{
		return;
	}
	while(1)
	{
		self waittill("hash_aa1618b0");
		foreach(var_cbc51d9b in level.var_ebb30c1a)
		{
			if(!function_5b49d38c(var_cbc51d9b))
			{
				continue;
			}
			var_b8f6e26f = self namespace_82b91a51::function_d61b846f(var_cbc51d9b function_501eb072(), 0.98, 1, self);
			if(var_b8f6e26f && (isdefined(var_cbc51d9b.var_6e5e16ee) && var_cbc51d9b.var_6e5e16ee) && self namespace_82b91a51::function_552ba2e2())
			{
				namespace_4dbf3ae3::function_42e87952("street_vehicle_burst_scene_trig", undefined, undefined, 0);
				return;
			}
		}
	}
}

/*
	Name: function_dcb29c2c
	Namespace: namespace_1beb9396
	Checksum: 0x47EB2C7D
	Offset: 0x3DB8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_dcb29c2c()
{
	self endon("hash_128f8789");
	var_713e715e = namespace_14b42b8a::function_7922262b("street_turret_enemy_goal_spot");
	self function_169cc712(var_713e715e.var_722885f3, 0, 256);
}

/*
	Name: function_5268b119
	Namespace: namespace_1beb9396
	Checksum: 0xDCC031EE
	Offset: 0x3E20
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_5268b119()
{
	self endon("hash_128f8789");
	level endon("hash_2415602e");
	self namespace_96fa87af::function_fdf99c07();
	while(1)
	{
		self waittill("hash_80eb92fc");
		namespace_d5067552::function_bae40a28("street_turret_spawn_manager", 1);
		self waittill("hash_133288a0");
		namespace_d5067552::function_54bdb053("street_turret_spawn_manager", 1);
	}
}

/*
	Name: function_c89b08c9
	Namespace: namespace_1beb9396
	Checksum: 0x4AF24063
	Offset: 0x3EB0
	Size: 0x1EB
	Parameters: 1
	Flags: None
*/
function function_c89b08c9(var_3c54858a)
{
	self endon("hash_128f8789");
	if(!isdefined(var_3c54858a))
	{
		var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
	}
	self function_80765127();
	self namespace_72ee5da4::function_81b6f1ac();
	self.var_3e94206a = "team3";
	self thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
	if(var_3c54858a.var_db7bb468 === "run_defend_logic")
	{
		self function_fd9eb46();
		return;
	}
	if(var_3c54858a.var_db7bb468 === "run_guard_logic")
	{
		self function_dbaa39f6();
		return;
	}
	else if(self.var_fd67e920 === "hunter")
	{
		self namespace_96fa87af::function_fdf99c07();
		self thread function_ba1c7fdb();
	}
	self waittill("hash_6cf6ac7e");
	if(self.var_db7bb468 === "stop_scripted")
	{
		self namespace_72ee5da4::function_efe9815e();
		self function_8dafb866();
		self.var_3e94206a = "axis";
		return;
	}
	else if(self.var_db7bb468 === "run_wasp_attack_logic")
	{
		self function_3feabcbe();
		return;
	}
	self function_dc8c8404();
}

/*
	Name: function_9ae7d78
	Namespace: namespace_1beb9396
	Checksum: 0x7DDF042B
	Offset: 0x40A8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_9ae7d78()
{
	self endon("hash_128f8789");
	var_1cbcb46d = namespace_14b42b8a::function_7922262b(self.var_b07228b6);
	level namespace_cc27597::function_43718187(var_1cbcb46d.var_170527fb, "targetname", self);
	if(isdefined(var_1cbcb46d.var_b07228b6))
	{
		var_41d1aaf0 = function_6ada35ba(var_1cbcb46d.var_b07228b6, "targetname");
		if(!isdefined(var_41d1aaf0))
		{
			var_41d1aaf0 = function_b4cb3503(var_1cbcb46d.var_b07228b6, "targetname");
		}
		if(isdefined(var_41d1aaf0))
		{
			self function_169cc712(var_41d1aaf0);
		}
	}
}

/*
	Name: function_892106c9
	Namespace: namespace_1beb9396
	Checksum: 0xB8C3EBB8
	Offset: 0x41A8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_892106c9()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self function_ade7ef6b();
	level waittill("hash_90cef371");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_ade7ef6b
	Namespace: namespace_1beb9396
	Checksum: 0x4DAE3908
	Offset: 0x4240
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_ade7ef6b()
{
	var_8a3b64d6 = namespace_8e9083ff::function_411dc61b(0, 35);
	if(function_26299103(100) <= var_8a3b64d6)
	{
		wait(0.05);
		self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_3");
		self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
		self.var_3e94206a = "axis";
	}
}

/*
	Name: function_ba1c7fdb
	Namespace: namespace_1beb9396
	Checksum: 0xB5A80889
	Offset: 0x42F8
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_ba1c7fdb()
{
	self endon("hash_128f8789");
	self waittill("hash_3113e74d");
	self thread namespace_72ee5da4::function_afb82faf(100);
	self waittill("hash_5d07b3ec");
	self notify("hash_6c8e0d8c");
}

/*
	Name: function_721c929f
	Namespace: namespace_1beb9396
	Checksum: 0x79D90A3B
	Offset: 0x4350
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_721c929f()
{
	self endon("hash_128f8789");
	if(self.var_3e94206a == "allies")
	{
		self.var_15dfd6c = 0.1;
	}
	else
	{
		self.var_6e5e16ee = 1;
	}
	if(!function_27c72c1b())
	{
		self namespace_82b91a51::function_958c7633();
	}
	if(self.var_db7bb468 === "intro_redshirt")
	{
		return;
	}
	level namespace_ad23e503::function_1ab5ebec("street_phalanx_scatter");
	if(!function_27c72c1b())
	{
		self.var_3a90f16b = self.var_47c252e3;
		self namespace_82b91a51::function_4b741fdc();
	}
	if(self.var_3e94206a == "axis")
	{
		return;
	}
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_attack");
	self namespace_6f7b2095::function_1b497663("y");
}

/*
	Name: function_748fa5c2
	Namespace: namespace_1beb9396
	Checksum: 0xCE108411
	Offset: 0x4480
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_748fa5c2()
{
	self endon("hash_128f8789");
	if(!function_27c72c1b())
	{
		self namespace_d84e54db::function_b4f5e3b9(1);
		self namespace_82b91a51::function_958c7633();
	}
	if(self.var_3e94206a == "allies")
	{
		self.var_15dfd6c = 0.1;
		self namespace_d84e54db::function_c9e45d52(1);
	}
	namespace_4dbf3ae3::function_1ab5ebec("street_wall_approach_trig", undefined, undefined, 0);
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	level namespace_ad23e503::function_1ab5ebec("street_exit_zone_reached");
	if(!function_27c72c1b())
	{
		self.var_3a90f16b = self.var_47c252e3;
		self namespace_82b91a51::function_4b741fdc();
	}
	if(self.var_3e94206a == "axis")
	{
		self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	}
}

/*
	Name: function_42881589
	Namespace: namespace_1beb9396
	Checksum: 0x9012247A
	Offset: 0x4600
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_42881589()
{
	self function_ade7ef6b();
}

/*
	Name: function_9ff08320
	Namespace: namespace_1beb9396
	Checksum: 0x9F4C6E0F
	Offset: 0x4628
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_9ff08320()
{
	self endon("hash_128f8789");
	if(self.var_3e94206a == "allies")
	{
		self.var_15dfd6c = 0.1;
	}
	if(!function_27c72c1b())
	{
		self namespace_82b91a51::function_958c7633();
	}
	level namespace_ad23e503::function_1ab5ebec("garage_ramp_reached");
	if(!function_27c72c1b())
	{
		self namespace_82b91a51::function_4b741fdc();
	}
	self namespace_6f7b2095::function_1b497663("y");
}

/*
	Name: function_b8380f70
	Namespace: namespace_1beb9396
	Checksum: 0x6D9A47D6
	Offset: 0x46F8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_b8380f70()
{
	self endon("hash_128f8789");
	self.var_3a90f16b = 100000;
	self.var_3e94206a = "axis";
	self.var_7a04481c = namespace_8e9083ff::function_411dc61b(4000, 1000);
	self.var_90937e6 = namespace_14b42b8a::function_7faf4c39("street_vtol_crash_point");
	self namespace_96fa87af::function_fdf99c07();
	if(self.var_db7bb468 !== "no_death")
	{
		self thread namespace_8e9083ff::function_6d571441();
	}
	self waittill("hash_5f96e13c");
	var_b0a9b597 = namespace_2f06d687::function_289e6fd1("street_vtol_riders");
	namespace_84970cc4::function_eaab05dc(var_b0a9b597, &function_2992720d);
}

/*
	Name: function_2ad4a40f
	Namespace: namespace_1beb9396
	Checksum: 0x4A51B44E
	Offset: 0x4820
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_2ad4a40f()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_open");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_9a1931bc
	Namespace: namespace_1beb9396
	Checksum: 0xA2FE947B
	Offset: 0x4888
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_9a1931bc()
{
	level thread namespace_8e9083ff::function_33ec653f("street_intro_redshirts_fake_spawn_manager", undefined, undefined, &function_721c929f);
	level namespace_ad23e503::function_1ab5ebec("street_civs_start");
	namespace_4dbf3ae3::function_42e87952("street_allies_intro_battle_colortrig");
	level namespace_ad23e503::function_1ab5ebec("street_intro_intersection_cleared");
	namespace_4dbf3ae3::function_42e87952("street_kane_intersection_colortrig");
	namespace_4dbf3ae3::function_42e87952("street_allies_intro_colortrig");
	level namespace_ad23e503::function_1ab5ebec("street_truck_cover_available");
	namespace_4dbf3ae3::function_42e87952("street_allies_battle_colortrig");
	level namespace_ad23e503::function_1ab5ebec("street_balcony_spawn_closet_available");
	level.var_3d556bcd namespace_d84e54db::function_c9e45d52(1);
	level.var_3d556bcd thread namespace_8e9083ff::function_d0103e8d();
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_attack");
	namespace_4dbf3ae3::function_42e87952("street_allies_attack_colortrig");
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_cleared");
	namespace_4dbf3ae3::function_42e87952("street_allies_garage_enter_colortrig");
	namespace_4dbf3ae3::function_1ab5ebec("street_wall_approach_trig");
	namespace_4dbf3ae3::function_42e87952("street_kane_garage_colortrig");
	level namespace_ad23e503::function_1ab5ebec("street_exit_zone_reached");
	namespace_4dbf3ae3::function_42e87952("street_allies_garage_colortrig");
}

/*
	Name: function_8535a819
	Namespace: namespace_1beb9396
	Checksum: 0x9F79DF91
	Offset: 0x4AB8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_8535a819()
{
	namespace_4dbf3ae3::function_42e87952("street_allies_battle_colortrig");
	level.var_3d556bcd namespace_d84e54db::function_c9e45d52(1);
	level.var_3d556bcd thread namespace_8e9083ff::function_d0103e8d();
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_attack");
	namespace_4dbf3ae3::function_42e87952("street_allies_attack_colortrig");
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_cleared");
	namespace_4dbf3ae3::function_42e87952("street_allies_garage_enter_colortrig");
	namespace_4dbf3ae3::function_1ab5ebec("street_wall_approach_trig");
	namespace_4dbf3ae3::function_42e87952("street_kane_garage_colortrig");
}

/*
	Name: function_1c9e622e
	Namespace: namespace_1beb9396
	Checksum: 0xA8A49A97
	Offset: 0x4BB8
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_1c9e622e()
{
	level.var_3d556bcd namespace_d84e54db::function_c9e45d52(0);
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_cleared");
	level.var_3d556bcd namespace_8e9083ff::function_121ba443();
	level.var_3d556bcd thread function_c9dccfc4();
	namespace_8e9083ff::function_c049667c(1);
	var_933bbc2c = function_b8494651("allies");
	foreach(var_d84e54db in var_933bbc2c)
	{
		if(var_d84e54db namespace_82b91a51::function_d3426abc() || var_d84e54db.var_caae374e === "garage_intro_guys")
		{
			continue;
		}
		var_d84e54db namespace_6f7b2095::function_1b497663("y");
	}
	namespace_d5067552::function_347e835a("garage_ramp_spawn_manager");
	namespace_4dbf3ae3::function_42e87952("garage_kane_intro_clear_colortrig");
	namespace_4dbf3ae3::function_42e87952("garage_redshirts_2nd_floor_colortrig");
	namespace_d5067552::function_27bf2e8("garage_ramp_spawn_manager", 1);
	namespace_4dbf3ae3::function_42e87952("garage_kane_2nd_floor_colortrig");
	level namespace_ad23e503::function_1ab5ebec("garage_ramp_reached");
	namespace_4dbf3ae3::function_42e87952("garage_kane_ramp_colortrig");
	namespace_4dbf3ae3::function_1ab5ebec("street_garage_2nd_floor_wasp_spawn_trig", undefined, undefined, 0);
	level namespace_ad23e503::function_1ab5ebec("garage_gate_open");
	var_24bbf032 = function_24e95264("axis", "robot");
	namespace_84970cc4::function_1ab5ebec(var_24bbf032, "death");
	namespace_4dbf3ae3::function_42e87952("garage_kane_exit_colortrig");
	level namespace_ad23e503::function_1ab5ebec("garage_completed");
}

/*
	Name: function_c9dccfc4
	Namespace: namespace_1beb9396
	Checksum: 0xF176B63B
	Offset: 0x4EA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_c9dccfc4()
{
	level endon("hash_9903fa62");
	level namespace_ad23e503::function_1ab5ebec("garage_car_2nd_floor_standard_01_done");
	namespace_4dbf3ae3::function_1ab5ebec("garage_kane_left_change_color_colortrig");
	self namespace_6f7b2095::function_1b497663("o");
	level namespace_ad23e503::function_1ab5ebec("garage_completed");
	self namespace_6f7b2095::function_1b497663("b");
}

/*
	Name: function_82ecade4
	Namespace: namespace_1beb9396
	Checksum: 0x4E866F0A
	Offset: 0x4F58
	Size: 0x151
	Parameters: 3
	Flags: None
*/
function function_82ecade4(var_41d1aaf0, var_ec24660, var_39dd968a)
{
	if(!isdefined(var_ec24660))
	{
		var_ec24660 = 0.3;
	}
	if(!isdefined(var_39dd968a))
	{
		var_39dd968a = 1.1;
	}
	var_e3b635fb = self;
	if(!function_6e2770d8(self))
	{
		var_e3b635fb = function_84970cc4(self);
	}
	foreach(var_d84e54db in var_e3b635fb)
	{
		wait(function_72a94f05(var_ec24660, var_39dd968a));
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_169cc712(var_41d1aaf0);
		}
	}
}

/*
	Name: function_10b3aeea
	Namespace: namespace_1beb9396
	Checksum: 0x843FC899
	Offset: 0x50B8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_10b3aeea(var_ee7dbbc9)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0;
	}
	self endon("hash_128f8789");
	wait(var_ee7dbbc9);
	self function_2992720d();
}

/*
	Name: function_6a364612
	Namespace: namespace_1beb9396
	Checksum: 0x91B214F6
	Offset: 0x5108
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_6a364612()
{
	level namespace_ad23e503::function_1ab5ebec("street_civs_start");
	namespace_d5067552::function_bae40a28("street_wasp_spawn_manager");
	level namespace_ad23e503::function_1ab5ebec("street_clear");
	namespace_d5067552::function_2992720d("street_wasp_spawn_manager", 1);
}

/*
	Name: function_34ad4dc8
	Namespace: namespace_1beb9396
	Checksum: 0xFB0A3E7E
	Offset: 0x5190
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_34ad4dc8()
{
	level namespace_ad23e503::function_1ab5ebec("garage_entrance_open");
	namespace_d5067552::function_bae40a28("garage_entrance_wasp_spawn_manager");
	namespace_4dbf3ae3::function_1ab5ebec("street_garage_2nd_floor_wasp_spawn_trig", undefined, undefined, 0);
	namespace_d5067552::function_bae40a28("street_garage_2nd_floor_wasp_end_spawnmanager");
	level namespace_ad23e503::function_1ab5ebec("garage_gate_open");
	var_b3b33e02 = namespace_d5067552::function_423eae50("street_garage_2nd_floor_wasp_end_spawnmanager");
	namespace_d5067552::function_2992720d("street_garage_2nd_floor_wasp_end_spawnmanager", 1);
	namespace_84970cc4::function_eaab05dc(var_b3b33e02, &function_2992720d);
}

/*
	Name: function_3feabcbe
	Namespace: namespace_1beb9396
	Checksum: 0x70B94C3E
	Offset: 0x5290
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_3feabcbe()
{
	self endon("hash_128f8789");
	self namespace_72ee5da4::function_efe9815e();
	self function_8dafb866();
	self.var_3e94206a = "axis";
	var_284ca6ef = function_6ada35ba("garage_wasp_goaltrig", "targetname");
	self function_169cc712(var_284ca6ef);
}

/*
	Name: function_fd9eb46
	Namespace: namespace_1beb9396
	Checksum: 0xE2DB865C
	Offset: 0x5330
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_fd9eb46()
{
	self endon("hash_128f8789");
	self waittill("hash_6cf6ac7e");
	self namespace_72ee5da4::function_efe9815e();
	self function_8dafb866();
	self.var_3e94206a = "axis";
	var_284ca6ef = function_6ada35ba("garage_wasp_defend_goaltrig", "targetname");
	self function_169cc712(var_284ca6ef);
}

/*
	Name: function_dbaa39f6
	Namespace: namespace_1beb9396
	Checksum: 0xD9EB2E69
	Offset: 0x53E0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_dbaa39f6()
{
	self endon("hash_128f8789");
	self waittill("hash_6cf6ac7e");
	self namespace_72ee5da4::function_efe9815e();
	self function_8dafb866();
	self.var_3e94206a = "axis";
	self function_90c5d999();
}

/*
	Name: function_90c5d999
	Namespace: namespace_1beb9396
	Checksum: 0x2BE50FB6
	Offset: 0x5460
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_90c5d999()
{
	var_284ca6ef = function_6ada35ba("street_center_goaltrig", "targetname");
	self function_169cc712(var_284ca6ef);
}

/*
	Name: function_11cc2d60
	Namespace: namespace_1beb9396
	Checksum: 0xB3326B24
	Offset: 0x54B8
	Size: 0x139
	Parameters: 7
	Flags: None
*/
function function_11cc2d60(var_3c54858a, var_78962fff, var_6f3beb2b, var_464f9e6e, var_d8d7c010, var_4339be5c, var_6dcbc9a2)
{
	if(!isdefined(var_78962fff))
	{
		var_78962fff = 0.2;
	}
	if(!isdefined(var_6f3beb2b))
	{
		var_6f3beb2b = 8;
	}
	if(isdefined(var_464f9e6e) && isdefined(var_d8d7c010))
	{
		var_78962fff = function_72a94f05(var_464f9e6e, var_d8d7c010);
	}
	if(isdefined(var_d8d7c010) && isdefined(var_6dcbc9a2))
	{
		var_6f3beb2b = function_dc99997a(var_d8d7c010, var_6dcbc9a2);
	}
	var_c779405 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_6f3beb2b; var_c957f6b6++)
	{
		var_c779405[var_c957f6b6] = namespace_2f06d687::function_7387a40a(self, &function_c89b08c9, var_3c54858a);
		wait(var_78962fff);
	}
	return var_c779405;
}

/*
	Name: function_1b8ff897
	Namespace: namespace_1beb9396
	Checksum: 0x45D5D656
	Offset: 0x5600
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_1b8ff897()
{
	level endon("hash_5539c1de");
	namespace_8e9083ff::function_1b3dfa61("p7_fxanim_cp_zurich_car_crash_06_bundle_trig", undefined, 1300, 768);
	level namespace_ad23e503::function_74d6b22f("street_intro_intersection_cleared");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_car_crash_06_bundle");
}

/*
	Name: function_1be1a835
	Namespace: namespace_1beb9396
	Checksum: 0xDDFBB031
	Offset: 0x5680
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_1be1a835()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_truck_crash_01_bundle", &function_93e3e895, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_truck_crash_01_bundle", &function_8c1a1bb7, "done");
	wait(0.05);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_truck_crash_01_bundle");
	wait(0.05);
	namespace_8e9083ff::function_1b3dfa61("street_vehicle_burst_scene_trig", undefined, 1300, 512);
	level namespace_ad23e503::function_74d6b22f("street_phalanx_scatter");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_truck_crash_01_bundle");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_93e3e895
	Namespace: namespace_1beb9396
	Checksum: 0x65045040
	Offset: 0x5790
	Size: 0x433
	Parameters: 1
	Flags: None
*/
function function_93e3e895(var_c77d2837)
{
	var_a146f241 = function_fe0cfd2e("street_intro_redshirts", "targetname");
	var_9b1ed538 = function_fe0cfd2e("street_intro_truck_cover_nodes", "targetname");
	var_b04fa3dc = namespace_14b42b8a::function_7922262b("street_intro_redshirts_fake_spawn_manager");
	var_a3f74aa3 = var_b04fa3dc.var_e3b635fb;
	var_a3f74aa3 = namespace_84970cc4::function_b87262e(var_a3f74aa3);
	foreach(var_48b27c8f in var_9b1ed538)
	{
		function_d224409e(var_48b27c8f, 0);
	}
	var_c77d2837["truck_crash_01_veh"] thread function_d700903e();
	var_c77d2837["truck_crash_01_veh"] waittill("hash_84bfd73b");
	var_c77d2837["truck_crash_01_veh"] notify("hash_1968d8fb");
	var_a3f74aa3 = namespace_84970cc4::function_b87262e(var_a3f74aa3);
	foreach(var_d84e54db in var_a3f74aa3)
	{
		if(!function_5b49d38c(var_d84e54db))
		{
			continue;
		}
		var_d84e54db namespace_82b91a51::function_4b741fdc();
		if(var_d84e54db.var_db7bb468 === "intro_redshirt")
		{
			var_d84e54db function_2992720d();
		}
	}
	var_a146f241 = function_fe0cfd2e("street_intro_redshirts", "targetname");
	var_9b1ed538 = function_fe0cfd2e("street_intro_truck_cover_nodes", "targetname");
	foreach(var_48b27c8f in var_a146f241)
	{
		function_d224409e(var_48b27c8f, 0);
	}
	foreach(var_48b27c8f in var_9b1ed538)
	{
		function_d224409e(var_48b27c8f, 1);
	}
	level namespace_ad23e503::function_74d6b22f("street_truck_cover_available");
	function_534b3cba(var_c77d2837["truck_crash_01_veh"].var_722885f3, 512, 0, 1.2);
}

/*
	Name: function_c8cc9a0d
	Namespace: namespace_1beb9396
	Checksum: 0x9303CE47
	Offset: 0x5BD0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_c8cc9a0d()
{
	var_7b5de48c = namespace_14b42b8a::function_7922262b("street_intro_robot_magic_bullet_start");
	var_364fd53c = namespace_14b42b8a::function_7922262b(var_7b5de48c.var_b07228b6);
	var_9faa0c88 = function_c4d5ec1f("launcher_standard");
	function_87f3c622(var_9faa0c88, var_7b5de48c.var_722885f3, var_364fd53c.var_722885f3);
	wait(1);
	function_eac31668(var_7b5de48c.var_722885f3, 64, 700, 500);
}

/*
	Name: function_8c1a1bb7
	Namespace: namespace_1beb9396
	Checksum: 0xDE396565
	Offset: 0x5CB0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_8c1a1bb7(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("street_balcony_spawn_closet_available");
	self thread namespace_8e9083ff::function_9f90bc0f(var_c77d2837, "garage_ambient_cleanup");
}

/*
	Name: function_4e8285e0
	Namespace: namespace_1beb9396
	Checksum: 0xED88D74A
	Offset: 0x5D08
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_4e8285e0()
{
	level namespace_ad23e503::function_1ab5ebec("street_civs_start");
	var_295a1e1f = function_99201f25("zurich_intro_camera_ai", "targetname");
	var_9cb1bda3 = function_e7bdc1a1(self.var_722885f3, var_295a1e1f);
	if(!isdefined(var_9cb1bda3))
	{
		return;
	}
	self function_fbb2cef(var_9cb1bda3.var_722885f3);
	self thread namespace_d84e54db::function_d104c596("normal", var_9cb1bda3);
	wait(2);
	if(!function_5b49d38c(var_9cb1bda3))
	{
		return;
	}
	var_9cb1bda3 function_2992720d();
}

/*
	Name: function_dc91abc9
	Namespace: namespace_1beb9396
	Checksum: 0xA652785F
	Offset: 0x5E10
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function function_dc91abc9()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_car_crash_03_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("street_exit_zone_trig");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_01_bundle", &function_d8cdc243, "play");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_car_crash_01_bundle");
	function_723d47ab();
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_car_crash_02_bundle");
	level namespace_ad23e503::function_74d6b22f("garage_car_2nd_floor_standard_01_done");
	namespace_4dbf3ae3::function_1ab5ebec("garage_third_floor_trig");
	var_9582077f = function_99201f25("garage_car_scene_trig", "targetname");
	namespace_84970cc4::function_966ecb29(var_9582077f, &function_95c63963);
	wait(21);
	level namespace_ad23e503::function_d266a8b4(15, "garage_entrance_cleared");
	namespace_8e9083ff::function_1b3dfa61("garage_exit_gate_trig", undefined, 400.5, 512);
	function_bab1ff00("garage_umbra_gate", 1);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_03_bundle", &function_646cd830, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_03_bundle", &function_5d018732, "done");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_car_crash_03_bundle");
	level namespace_ad23e503::function_74d6b22f("garage_gate_open");
}

/*
	Name: function_723d47ab
	Namespace: namespace_1beb9396
	Checksum: 0xCD6181AE
	Offset: 0x6070
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_723d47ab()
{
	if(level.var_9b1393e7.size < 2)
	{
		level endon("hash_c88a6904");
	}
	namespace_8e9083ff::function_3adbd846("garage_car_2nd_floor_standard_01_trig", undefined, 1);
}

/*
	Name: function_1418d19
	Namespace: namespace_1beb9396
	Checksum: 0x4C8EE678
	Offset: 0x60C0
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_1418d19()
{
	var_f6338e1d = namespace_14b42b8a::function_7faf4c39("train_crash_glass_break_spot");
	var_c7b1d4be = namespace_14b42b8a::function_7922262b("train_crash_sound_spot");
	function_37cbcf1a("evt_train_crash_front", var_c7b1d4be.var_722885f3);
	wait(6);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 function_e2af603e("damage_heavy");
	}
	function_9cf04c2e(0.25, 2, var_c7b1d4be.var_722885f3, 10000);
	foreach(var_ca17143d in var_f6338e1d)
	{
		function_be97adee(var_ca17143d.var_722885f3, var_ca17143d.var_f8456b37, 700, 500, "MOD_GRENADE_SPLASH");
		wait(function_72a94f05(0.2, 0.3));
	}
}

/*
	Name: function_4d92b2c7
	Namespace: namespace_1beb9396
	Checksum: 0xC802C8E8
	Offset: 0x62D0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4d92b2c7()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_parking_wall_explode_bundle");
	var_e8009655 = function_6ada35ba("garage_entrance_wall", "targetname");
	var_e8009655 function_dc8c8404();
}

/*
	Name: function_3a6344d1
	Namespace: namespace_1beb9396
	Checksum: 0x87D1A811
	Offset: 0x6340
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_3a6344d1(var_ee7dbbc9)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 1;
	}
	self endon("hash_128f8789");
	var_d29ecee5 = namespace_14b42b8a::function_7922262b("train_crash_sound_spot");
	wait(var_ee7dbbc9);
	do
	{
		wait(0.1);
	}
	while(!!namespace_8e9083ff::function_f8645b6(-1, var_d29ecee5.var_722885f3, 0.92));
	self namespace_4dbf3ae3::function_42e87952();
}

/*
	Name: function_48166ad7
	Namespace: namespace_1beb9396
	Checksum: 0xB773EEA6
	Offset: 0x63F0
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_48166ad7(var_b04bc952)
{
	var_80658d78 = function_84970cc4("p7_fxanim_cp_zurich_car_crash_01_bundle", "p7_fxanim_cp_zurich_car_crash_02_bundle", "p7_fxanim_cp_zurich_car_crash_06_bundle");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_stuck_bundle", &function_96b02c44, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_stuck_bundle", &function_e0bb6e8b, "done");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_car_crash_stuck_bundle");
	wait(0.05);
	foreach(var_a3d1f031 in var_80658d78)
	{
		namespace_cc27597::function_8f9f34e0(var_a3d1f031, &function_c9765981, "play");
		namespace_cc27597::function_8f9f34e0(var_a3d1f031, &function_e0bb6e8b, "done");
		level namespace_cc27597::function_c35e6aab(var_a3d1f031);
		wait(0.05);
	}
	if(var_b04bc952 === "garage")
	{
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_zurich_car_crash_06_bundle");
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_zurich_truck_crash_01_bundle");
		namespace_80983c42::function_80983c42("street_truck_crash_fires");
		namespace_80983c42::function_80983c42("street_truck_crash_garage_linger");
		level namespace_ad23e503::function_74d6b22f("street_balcony_spawn_closet_available");
	}
}

/*
	Name: function_1b074d61
	Namespace: namespace_1beb9396
	Checksum: 0x702BDE27
	Offset: 0x6648
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_1b074d61()
{
	level endon("hash_9903fa62");
	while(1)
	{
		var_21c17e53 = function_b8494651("axis", "allies");
		level.var_ebb30c1a = function_525ae497(var_21c17e53, level.var_9b1393e7, 0, 0);
		wait(0.05);
	}
}

/*
	Name: function_d700903e
	Namespace: namespace_1beb9396
	Checksum: 0x7DDF1FEE
	Offset: 0x66C8
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_d700903e()
{
	self endon("hash_128f8789");
	self endon("hash_1968d8fb");
	while(1)
	{
		foreach(var_cbc51d9b in level.var_ebb30c1a)
		{
			if(isdefined(var_cbc51d9b) && var_cbc51d9b function_32fa5072(self))
			{
				var_cabb1f64 = function_5b49d38c(var_cbc51d9b) && !var_cbc51d9b namespace_82b91a51::function_d3426abc() && !function_65f192a6(var_cbc51d9b);
				var_550ab23b = function_65f192a6(var_cbc51d9b) || (isdefined(var_cbc51d9b.var_5e36fd2e) && function_65f192a6(var_cbc51d9b.var_5e36fd2e));
				if(var_cabb1f64)
				{
					var_cbc51d9b namespace_82b91a51::function_4b741fdc();
					var_cbc51d9b function_2992720d();
					continue;
				}
				if(var_550ab23b)
				{
					var_cbc51d9b function_c3945cd5(var_cbc51d9b.var_3a90f16b + 1000, var_cbc51d9b.var_722885f3, self, undefined, undefined, "MOD_HIT_BY_OBJECT");
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_42ac5715
	Namespace: namespace_1beb9396
	Checksum: 0x4E1AC480
	Offset: 0x68C8
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_42ac5715(var_cec244a2, var_1767d763)
{
	var_efb53e77 = function_6ada35ba(var_cec244a2, "targetname");
	var_af96fbd4 = function_6ada35ba(var_1767d763, "targetname");
	var_a56fa84f = namespace_14b42b8a::function_7922262b(var_af96fbd4.var_b07228b6);
	var_efb53e77 endon("hash_128f8789");
	var_af96fbd4 endon("hash_128f8789");
	while(!var_efb53e77 function_32fa5072(var_af96fbd4))
	{
		wait(0.05);
	}
	function_eac31668(var_a56fa84f.var_722885f3, var_a56fa84f.var_f8456b37, 700, 500, var_efb53e77);
	var_af96fbd4 function_dc8c8404();
}

/*
	Name: function_96b02c44
	Namespace: namespace_1beb9396
	Checksum: 0xB5F285C6
	Offset: 0x69F8
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_96b02c44(var_c77d2837)
{
	foreach(var_21a4c59 in var_c77d2837)
	{
		/#
			function_58f8da89(var_21a4c59);
		#/
		var_21a4c59 thread namespace_82b91a51::function_f6e4f19a();
	}
}

/*
	Name: function_c9765981
	Namespace: namespace_1beb9396
	Checksum: 0x394E6F6F
	Offset: 0x6AB0
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_c9765981(var_c77d2837)
{
	foreach(var_21a4c59 in var_c77d2837)
	{
		/#
			function_58f8da89(var_21a4c59);
		#/
		var_21a4c59 thread function_d700903e();
	}
}

/*
	Name: function_e0bb6e8b
	Namespace: namespace_1beb9396
	Checksum: 0x56C4FDF6
	Offset: 0x6B68
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_e0bb6e8b(var_c77d2837)
{
	foreach(var_21a4c59 in var_c77d2837)
	{
		var_21a4c59 notify("hash_1968d8fb");
	}
	self thread namespace_8e9083ff::function_9f90bc0f(var_c77d2837, "rails_ambient_cleanup");
}

/*
	Name: function_646cd830
	Namespace: namespace_1beb9396
	Checksum: 0x4AA6662B
	Offset: 0x6C20
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_646cd830(var_c77d2837)
{
	/#
		function_58f8da89(var_c77d2837["Dev Block strings are not supported"]);
	#/
	/#
		function_58f8da89(var_c77d2837["Dev Block strings are not supported"]);
	#/
	var_c77d2837["car_crash_03"] thread function_d700903e();
	var_c77d2837["car_crash_03_wall"] waittill("hash_c0199b64");
	var_e8009655 = function_6ada35ba("garage_exit_wall", "targetname");
	var_e8009655 function_dc8c8404();
}

/*
	Name: function_5d018732
	Namespace: namespace_1beb9396
	Checksum: 0xE2CEDC3E
	Offset: 0x6D00
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_5d018732(var_c77d2837)
{
	foreach(var_21a4c59 in var_c77d2837)
	{
		var_21a4c59 notify("hash_1968d8fb");
	}
	self thread namespace_8e9083ff::function_9f90bc0f(var_c77d2837, "rails_ambient_cleanup");
}

/*
	Name: function_95c63963
	Namespace: namespace_1beb9396
	Checksum: 0x2E6BD4D9
	Offset: 0x6DB8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_95c63963()
{
	self endon("hash_128f8789");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_db7bb468), "Dev Block strings are not supported");
	#/
	self waittill("hash_4dbf3ae3");
	namespace_cc27597::function_8f9f34e0(self.var_db7bb468, &function_91c120ae, "play");
	level namespace_cc27597::function_43718187(self.var_db7bb468);
	self function_dc8c8404();
}

/*
	Name: function_91c120ae
	Namespace: namespace_1beb9396
	Checksum: 0xBB08DDE3
	Offset: 0x6E70
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_91c120ae(var_c77d2837)
{
	var_19f54c8f = function_99201f25(self.var_1157a889 + "_gates", "targetname");
	namespace_84970cc4::function_966ecb29(var_19f54c8f, &function_9b734821, var_c77d2837);
}

/*
	Name: function_3f5b8a5e
	Namespace: namespace_1beb9396
	Checksum: 0x18217BBF
	Offset: 0x6EE8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_3f5b8a5e(var_c77d2837)
{
	var_19f54c8f = function_99201f25(self.var_1157a889 + "_gates", "targetname");
	namespace_84970cc4::function_966ecb29(var_19f54c8f, &function_74bdec69, var_c77d2837);
}

/*
	Name: function_74bdec69
	Namespace: namespace_1beb9396
	Checksum: 0x4D638D32
	Offset: 0x6F60
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_74bdec69(var_c77d2837)
{
	self endon("hash_128f8789");
	var_78962fff = 0.5;
	var_ccd4343c = 44;
	if(self.var_caae374e === "bottom")
	{
		var_ccd4343c = var_ccd4343c * -1;
	}
	self.var_489b2980 = self.var_722885f3;
	self function_a96a2721(self.var_722885f3 + (0, 0, var_ccd4343c), var_78962fff);
}

/*
	Name: function_9b734821
	Namespace: namespace_1beb9396
	Checksum: 0x7744D3BE
	Offset: 0x7010
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_9b734821(var_c77d2837)
{
	self endon("hash_128f8789");
	var_1cc36e32 = function_6ada35ba(self.var_170527fb + "_trig", "targetname");
	if(isdefined(var_1cc36e32))
	{
		var_1cc36e32 waittill("hash_4dbf3ae3");
	}
	self function_a96a2721(self.var_489b2980, 0.62);
}

/*
	Name: function_d8cdc243
	Namespace: namespace_1beb9396
	Checksum: 0x80FDAAF8
	Offset: 0x70A8
	Size: 0x14F
	Parameters: 1
	Flags: None
*/
function function_d8cdc243(var_c77d2837)
{
	var_aea40fc = namespace_14b42b8a::function_7faf4c39("garge_ramp_car_glass_break_spot");
	level waittill("hash_cc6fa4a6");
	foreach(var_222be1d9 in var_c77d2837)
	{
		foreach(var_b28eb61c in var_aea40fc)
		{
			function_be97adee(var_b28eb61c.var_722885f3, var_b28eb61c.var_f8456b37, 700, 500, "MOD_GRENADE_SPLASH");
		}
	}
}

/*
	Name: function_c83d3033
	Namespace: namespace_1beb9396
	Checksum: 0xD993451
	Offset: 0x7200
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_c83d3033()
{
	var_ae75b4be = namespace_14b42b8a::function_7faf4c39("garage_elevator_doors", "script_noteworthy");
	var_7be3ca60 = [];
	foreach(var_d8e7bbc in var_ae75b4be)
	{
		var_7be3ca60[var_4bc288a0] = namespace_82b91a51::function_b9fd52a4(var_d8e7bbc.var_6df9264, var_d8e7bbc.var_722885f3, var_d8e7bbc.var_6ab6f4fd);
		var_7be3ca60[var_4bc288a0].var_170527fb = var_d8e7bbc.var_170527fb;
		var_7be3ca60[var_4bc288a0].var_ff1f6868 = "rails";
		wait(0.05);
	}
}

/*
	Name: function_b3a34ca5
	Namespace: namespace_1beb9396
	Checksum: 0xD529FDFE
	Offset: 0x7340
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_b3a34ca5()
{
	level endon("hash_e0d14dc8");
	level thread function_19764f0e();
	level thread function_60227c5();
	wait(2.1);
	level thread function_7248d34();
	wait(1.3);
	level thread function_adb65bc4();
	namespace_4dbf3ae3::function_1ab5ebec("garage_end_elevators_trig");
	function_9c0b8c73();
}

/*
	Name: function_19764f0e
	Namespace: namespace_1beb9396
	Checksum: 0x8F4EAFFD
	Offset: 0x73F0
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_19764f0e()
{
	level endon("hash_e0d14dc8");
	var_836db305 = function_6ada35ba("garage_elevator_door_left_entrance2", "targetname");
	var_73d5b598 = function_6ada35ba("garage_elevator_door_right_entrance2", "targetname");
	/#
		function_58f8da89(var_836db305);
	#/
	/#
		function_58f8da89(var_73d5b598);
	#/
	var_73d5b598 function_788ec1d6(-1, 0.1);
	var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 4 * -1, 0), 0.1);
	var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 4, 0), 0.1);
	var_73d5b598 waittill("hash_a21db68a");
	while(1)
	{
		var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 36 * -1, 0), 0.45);
		var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 36, 0), 0.45);
		var_73d5b598 waittill("hash_a21db68a");
		var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 36, 0), 0.45);
		var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 36 * -1, 0), 0.45);
		var_73d5b598 waittill("hash_a21db68a");
	}
}

/*
	Name: function_60227c5
	Namespace: namespace_1beb9396
	Checksum: 0xACA239AF
	Offset: 0x7660
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_60227c5()
{
	level endon("hash_e0d14dc8");
	var_836db305 = function_6ada35ba("garage_elevator_door_left_entrance", "targetname");
	var_73d5b598 = function_6ada35ba("garage_elevator_door_right_entrance", "targetname");
	/#
		function_58f8da89(var_836db305);
	#/
	/#
		function_58f8da89(var_73d5b598);
	#/
	var_836db305 function_788ec1d6(4, 0.1);
	var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 2 * -1, 0), 0.1);
	var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 2, 0), 0.1);
	var_73d5b598 waittill("hash_a21db68a");
	while(1)
	{
		var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 8 * -1, 0), 0.15);
		var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 8, 0), 0.15);
		var_73d5b598 waittill("hash_a21db68a");
		var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 8, 0), 0.15);
		var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 8 * -1, 0), 0.15);
		var_73d5b598 waittill("hash_a21db68a");
	}
}

/*
	Name: function_7248d34
	Namespace: namespace_1beb9396
	Checksum: 0xB5B6DA89
	Offset: 0x78D0
	Size: 0x1FD
	Parameters: 0
	Flags: None
*/
function function_7248d34()
{
	level endon("hash_e0d14dc8");
	var_836db305 = function_6ada35ba("garage_elevator_door_left_2nd_floor_entrance", "targetname");
	var_73d5b598 = function_6ada35ba("garage_elevator_door_right_2nd_floor_entrance", "targetname");
	/#
		function_58f8da89(var_836db305);
	#/
	/#
		function_58f8da89(var_73d5b598);
	#/
	while(1)
	{
		var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 60 * -1, 0), 0.75);
		var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 60, 0), 0.75);
		var_73d5b598 function_921a1574("evt_elevator_glitch");
		var_73d5b598 waittill("hash_a21db68a");
		var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 60, 0), 0.75);
		var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 60 * -1, 0), 0.75);
		var_73d5b598 function_921a1574("evt_elevator_glitch");
		var_73d5b598 waittill("hash_a21db68a");
	}
}

/*
	Name: function_adb65bc4
	Namespace: namespace_1beb9396
	Checksum: 0x1C7D2FA
	Offset: 0x7AD8
	Size: 0x1BD
	Parameters: 0
	Flags: None
*/
function function_adb65bc4()
{
	level endon("hash_e0d14dc8");
	var_836db305 = function_6ada35ba("garage_elevator_door_left_2nd_floor_entrance2", "targetname");
	var_73d5b598 = function_6ada35ba("garage_elevator_door_right_2nd_floor_entrance2", "targetname");
	/#
		function_58f8da89(var_836db305);
	#/
	/#
		function_58f8da89(var_73d5b598);
	#/
	while(1)
	{
		var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 35 * -1, 0), 0.6);
		var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 35, 0), 0.6);
		var_73d5b598 waittill("hash_a21db68a");
		var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 35, 0), 0.6);
		var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 35 * -1, 0), 0.6);
		var_73d5b598 waittill("hash_a21db68a");
	}
}

/*
	Name: function_9c0b8c73
	Namespace: namespace_1beb9396
	Checksum: 0xD9865AF
	Offset: 0x7CA0
	Size: 0x3CB
	Parameters: 0
	Flags: None
*/
function function_9c0b8c73()
{
	var_836db305 = function_6ada35ba("garage_elevator_door_left_exit", "targetname");
	var_73d5b598 = function_6ada35ba("garage_elevator_door_right_exit", "targetname");
	var_bf22cfbd = function_6ada35ba("garage_elevator_door_left_exit2", "targetname");
	var_5de8c6ca = function_6ada35ba("garage_elevator_door_right_exit2", "targetname");
	var_b76dcc17 = namespace_8e9083ff::function_33ec653f("garage_exit_elevator_robots_spawn_manager", undefined, 0.15, &function_892106c9);
	var_bdf5e96c = function_6ada35ba("garage_exit_elevator_zone_aitrig", "targetname");
	/#
		function_58f8da89(var_836db305);
	#/
	/#
		function_58f8da89(var_73d5b598);
	#/
	/#
		function_58f8da89(var_bf22cfbd);
	#/
	/#
		function_58f8da89(var_5de8c6ca);
	#/
	function_37cbcf1a("evt_elevator_ding", namespace_14b42b8a::function_7922262b("garage_elevator_sound_spot").var_722885f3);
	var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 64, 0), 2);
	var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 64 * -1, 0), 2);
	wait(0.4);
	var_bf22cfbd function_a96a2721(var_bf22cfbd.var_722885f3 + (0, 64, 0), 2);
	var_5de8c6ca function_a96a2721(var_5de8c6ca.var_722885f3 + (0, 64 * -1, 0), 2);
	var_5de8c6ca waittill("hash_a21db68a");
	level notify("hash_90cef371");
	level namespace_ad23e503::function_1ab5ebec("garage_exit_elevator_zone_clear");
	var_836db305 function_a96a2721(var_836db305.var_722885f3 + (0, 64 * -1, 0), 2);
	var_73d5b598 function_a96a2721(var_73d5b598.var_722885f3 + (0, 64, 0), 2);
	wait(0.4);
	var_bf22cfbd function_a96a2721(var_bf22cfbd.var_722885f3 + (0, 64 * -1, 0), 2);
	var_5de8c6ca function_a96a2721(var_5de8c6ca.var_722885f3 + (0, 64, 0), 2);
}

/*
	Name: function_7a0e84a8
	Namespace: namespace_1beb9396
	Checksum: 0xB40EEA72
	Offset: 0x8078
	Size: 0x3EB
	Parameters: 0
	Flags: None
*/
function function_7a0e84a8()
{
	var_3b159664 = function_fe0cfd2e("garage_lift_gate_nodes", "script_noteworthy");
	foreach(var_48b27c8f in var_3b159664)
	{
		function_d224409e(var_48b27c8f, 0);
	}
	var_19f54c8f = [];
	var_71955f5e = namespace_14b42b8a::function_7faf4c39("p7_fxanim_cp_zurich_car_crash_04_bundle_gates");
	var_9797d9c7 = namespace_14b42b8a::function_7faf4c39("p7_fxanim_cp_zurich_car_crash_05_bundle_gates");
	var_91ad292d = function_525ae497(var_71955f5e, var_9797d9c7, 0, 0);
	wait(0.05);
	foreach(var_a2168002 in var_91ad292d)
	{
		var_19f54c8f[var_c957f6b6] = namespace_82b91a51::function_b9fd52a4(var_a2168002.var_6df9264, var_a2168002.var_722885f3, var_a2168002.var_6ab6f4fd);
		var_19f54c8f[var_c957f6b6].var_170527fb = var_a2168002.var_170527fb;
		var_19f54c8f[var_c957f6b6].var_caae374e = var_a2168002.var_caae374e;
		var_19f54c8f[var_c957f6b6].var_db7bb468 = var_a2168002.var_db7bb468;
		var_19f54c8f[var_c957f6b6].var_ff1f6868 = "rails";
		wait(0.05);
	}
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_04_bundle", &function_3f5b8a5e, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_05_bundle", &function_3f5b8a5e, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_04_bundle", &function_c9765981, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_05_bundle", &function_c9765981, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_04_bundle", &function_e0bb6e8b, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_crash_05_bundle", &function_e0bb6e8b, "done");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_car_crash_04_bundle");
	wait(0.05);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_car_crash_05_bundle");
}

/*
	Name: function_d987ae9
	Namespace: namespace_1beb9396
	Checksum: 0xFD1D3B8B
	Offset: 0x8470
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_d987ae9()
{
	var_c4a1b346 = function_6ada35ba("garage_cleanup_trig", "targetname");
	var_c4a1b346 endon("hash_128f8789");
	while(1)
	{
		var_52adae1e = function_b8494651("axis", "allies");
		foreach(var_d84e54db in var_52adae1e)
		{
			var_cabb1f64 = function_5b49d38c(var_d84e54db) && !var_d84e54db namespace_82b91a51::function_d3426abc();
			if(var_cabb1f64 && !var_d84e54db namespace_8e9083ff::function_6f990596(1024) && var_d84e54db function_32fa5072(var_c4a1b346))
			{
				var_d84e54db namespace_82b91a51::function_4b741fdc();
				var_d84e54db function_2992720d();
			}
		}
		wait(1);
	}
}

/*
	Name: function_b7d40ae
	Namespace: namespace_1beb9396
	Checksum: 0x7DAAE2EE
	Offset: 0x8610
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_b7d40ae()
{
	var_11cbfab3 = function_99201f25("break_glass", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_11cbfab3, &function_b09dbdde);
}

/*
	Name: function_b09dbdde
	Namespace: namespace_1beb9396
	Checksum: 0x63A49940
	Offset: 0x8670
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b09dbdde()
{
	self endon("hash_128f8789");
	self waittill("hash_4dbf3ae3", var_26c7381f);
	function_be97adee(var_26c7381f.var_722885f3, 64, 700, 500, "MOD_HIT_BY_OBJECT");
	self function_dc8c8404();
}

/*
	Name: function_ec9dd4a5
	Namespace: namespace_1beb9396
	Checksum: 0xD196EBFB
	Offset: 0x86F0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_ec9dd4a5()
{
	var_3e9d5326 = function_99201f25("garage_car_kill_trig", "targetname");
	namespace_84970cc4::function_966ecb29(var_3e9d5326, &function_f3cdc2c1);
}

/*
	Name: function_f3cdc2c1
	Namespace: namespace_1beb9396
	Checksum: 0x7853329D
	Offset: 0x8750
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_f3cdc2c1()
{
	self endon("hash_128f8789");
	var_b6c065b4 = namespace_14b42b8a::function_7922262b(self.var_b07228b6);
	var_562b538e = var_b6c065b4.var_f8456b37;
	if(!isdefined(var_562b538e))
	{
		var_562b538e = 64;
	}
	self waittill("hash_4dbf3ae3");
	function_eac31668(var_b6c065b4.var_722885f3, var_562b538e, 1200, 1100);
}

/*
	Name: function_9075d8d6
	Namespace: namespace_1beb9396
	Checksum: 0xF6744BE
	Offset: 0x8808
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_9075d8d6()
{
	/#
		self endon("hash_128f8789");
		var_db04d156 = 0;
		while(1)
		{
			self thread namespace_8e9083ff::function_ff016910("Dev Block strings are not supported" + var_db04d156, undefined);
			self waittill("hash_a21db68a");
			self notify("hash_8fba9");
			var_db04d156++;
		}
	#/
}

