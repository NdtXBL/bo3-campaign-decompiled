#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_laststand;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_squad_control;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_fighttothedome;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes_warehouse;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_f5edec75;

/*
	Name: function_f7046c76
	Namespace: namespace_f5edec75
	Checksum: 0x99EC1590
	Offset: 0x2720
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_f5edec75
	Checksum: 0x9AF21219
	Offset: 0x2730
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_2f06d687::function_2b37a3c9("rambo", "script_noteworthy", &function_c81145c2);
	namespace_2f06d687::function_2b37a3c9("rusher", "script_noteworthy", &function_6a4cb712);
	namespace_2f06d687::function_2b37a3c9("hunter_flybys", "script_noteworthy", &function_45d0a02a);
	namespace_2f06d687::function_2b37a3c9("cloud_mountain_reinforcements", "script_noteworthy", &function_715d6f43);
	namespace_2f06d687::function_2b37a3c9("cloud_mountain_retreaters", "script_noteworthy", &function_ec47b2e6);
	namespace_2f06d687::function_2b37a3c9("level_3_surprised_enemies", "script_noteworthy", &function_2c36cacd);
	namespace_2f06d687::function_2b37a3c9("pod_spawners", "script_noteworthy", &function_e99db423);
	namespace_2f06d687::function_2b37a3c9("sp_cloudmountain_level_2_warlord", "targetname", &function_a288e474);
	level thread function_7c81648();
}

/*
	Name: function_710c7f6a
	Namespace: namespace_f5edec75
	Checksum: 0x584E77CE
	Offset: 0x28D8
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function function_710c7f6a()
{
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_warehouse"));
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain01"));
	namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb");
	namespace_4dbf3ae3::function_1ab5ebec("trig_level_2_enemy_spawns_1");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain01"));
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain02"));
	namespace_4dbf3ae3::function_1ab5ebec("trig_breadcrumb_cloudmountain_03");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain02"));
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain03"));
	namespace_4dbf3ae3::function_1ab5ebec("trig_breadcrumb_cloudmountain_04");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain03"));
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain_04"));
	namespace_4dbf3ae3::function_1ab5ebec("trig_level_3_catwalk_reinforcements");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain04"));
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain_end"));
	namespace_4dbf3ae3::function_1ab5ebec("trig_breadcrumb_cloudmountain_end");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain_end"));
}

/*
	Name: function_34f37fe
	Namespace: namespace_f5edec75
	Checksum: 0x7DDAE0AC
	Offset: 0x2B88
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_34f37fe(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_cloudmountain_init");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		namespace_55d2f1be::function_cef897cf(var_b04bc952);
		level namespace_ad23e503::function_74d6b22f("back_door_opened");
		var_b06d4473 = function_6ada35ba("back_door_player_clip", "targetname");
		var_b06d4473 function_dc8c8404();
		namespace_d5067552::function_bae40a28("cloud_mountain_siegebot_manager");
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		level thread namespace_23646cee::function_cb52a73();
		level thread namespace_23646cee::function_1b03da0e();
		level thread namespace_27a45d31::function_cc20e187("warehouse");
		level thread namespace_27a45d31::function_cc20e187("cloudmountain", 1);
		namespace_d7916d65::function_a2995f22();
	}
	function_9e3608e3("fxanim_markets2");
	level thread namespace_f1b4cbbc::function_2e34977e();
	level thread function_6da34baf();
}

/*
	Name: function_6da34baf
	Namespace: namespace_f5edec75
	Checksum: 0xBB177087
	Offset: 0x2D60
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_6da34baf()
{
	level thread function_710c7f6a();
	level thread function_a52ff7c1();
	level thread function_11f04863();
	level thread function_d532cc21();
	namespace_2f06d687::function_c6ffd13e("cloud_mountain_entrance_bridge", &function_4df7264d);
	namespace_d5067552::function_bae40a28("manager_phalanx_humans_bridge");
	level thread function_a234f527();
	level thread function_efae47c8();
	level thread function_9a10cb7d();
	level thread function_85070883();
	level thread function_333f5b5b();
	level thread namespace_23646cee::function_c366df47("trig_cloudmountain_glass1");
	level thread namespace_23646cee::function_c366df47("trig_cloudmountain_glass2");
	level thread namespace_23646cee::function_c366df47("trig_cloudmountain_glass3");
	namespace_4dbf3ae3::function_1ab5ebec("trig_cloud_mountain_level_2_start");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	level.var_2fd26037 function_e11ce512();
	namespace_1d795d47::function_be8adfb8("objective_cloudmountain");
}

/*
	Name: function_9a10cb7d
	Namespace: namespace_f5edec75
	Checksum: 0x7AB71133
	Offset: 0x2F48
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9a10cb7d()
{
	level endon("hash_19af2c9a");
	level waittill("hash_ce48e0c4");
	namespace_d5067552::function_bae40a28("manager_phalanx_humans_overhead");
}

/*
	Name: function_efae47c8
	Namespace: namespace_f5edec75
	Checksum: 0xCEF0FAD2
	Offset: 0x2F88
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_efae47c8()
{
	namespace_d5067552::function_347e835a("cloud_mountain_siegebot_manager");
	var_c81e3075 = namespace_d5067552::function_423eae50("cloud_mountain_siegebot_manager");
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_siegebot", var_c81e3075);
	foreach(var_51a7831a in var_c81e3075)
	{
		var_51a7831a thread function_7ec07da9();
	}
	var_60104d0b = level namespace_82b91a51::function_45ce26d("cloudmountain_siegebots_dead", "cloudmountain_siegebots_skipped");
	if(var_60104d0b == "cloudmountain_siegebots_skipped")
	{
		level thread function_f6a70610(var_c81e3075);
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_servers");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_siegebot");
}

/*
	Name: function_7ec07da9
	Namespace: namespace_f5edec75
	Checksum: 0x2B2C401E
	Offset: 0x3100
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_7ec07da9()
{
	level endon("hash_1530fdbd");
	level endon("hash_b6c3b80a");
	self waittill("hash_128f8789", var_677b3e78);
	namespace_d0ef8521::function_66c6f97b("cp_level_biodomes_siegebot", self);
	wait(1);
	namespace_76d95162::function_d9f49fba(0);
	if(function_65f192a6(var_677b3e78))
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_siege_bot_is_s_o_l_0");
		var_7a45cb6d = "hendricks";
	}
	else
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_fucker_s_done_0");
		var_7a45cb6d = "player";
	}
	namespace_76d95162::function_d9f49fba(1);
	var_dcd92b65 = namespace_2f06d687::function_289e6fd1("cloudmountain_siegebots");
	if(var_dcd92b65.size)
	{
		var_dcd92b65[0] thread function_1932917(var_7a45cb6d);
		level notify("hash_1530fdbd");
	}
	else
	{
		level function_a1fa89a2();
	}
}

/*
	Name: function_1932917
	Namespace: namespace_f5edec75
	Checksum: 0xADA5BE6B
	Offset: 0x3280
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_1932917(var_f7824075)
{
	self waittill("hash_128f8789");
	level endon("hash_b6c3b80a");
	namespace_d0ef8521::function_66c6f97b("cp_level_biodomes_siegebot", self);
	wait(1);
	namespace_76d95162::function_d9f49fba(0);
	if(var_f7824075 == "player")
	{
		level namespace_71b8dba1::function_13b3b16a("plyr_siege_bot_is_s_o_l_0");
	}
	else if(var_f7824075 == "hendricks")
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_fucker_s_done_0");
	}
	namespace_76d95162::function_d9f49fba(1);
	level function_a1fa89a2();
}

/*
	Name: function_f6a70610
	Namespace: namespace_f5edec75
	Checksum: 0x337DFD69
	Offset: 0x3380
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_f6a70610(var_c81e3075)
{
	level waittill("hash_69d6458d");
	foreach(var_51a7831a in var_c81e3075)
	{
		if(function_5b49d38c(var_51a7831a))
		{
			var_51a7831a function_2992720d();
		}
	}
}

/*
	Name: function_a1fa89a2
	Namespace: namespace_f5edec75
	Checksum: 0x9B22402F
	Offset: 0x3440
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a1fa89a2()
{
	level namespace_ad23e503::function_74d6b22f("cloudmountain_siegebots_dead");
	level thread namespace_f1b4cbbc::function_973b77f9();
	level thread namespace_27a45d31::function_a1669688("cloud_mountain_entrance_bridge", "cloudmountain_lobby_retreat_volume", 2, 4);
	namespace_4dbf3ae3::function_42e87952("trig_hendricks_lobby_entrance_colors", "targetname", undefined, 0);
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_a234f527
	Namespace: namespace_f5edec75
	Checksum: 0x60334B1B
	Offset: 0x34F0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_a234f527()
{
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_they_gotta_siege_bot_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_don_t_have_the_fi_0", 2);
	level namespace_71b8dba1::function_a463d127("kane_it_s_heavily_armored_0");
	namespace_76d95162::function_d9f49fba(1);
	level namespace_82b91a51::function_564f2d81("cloudmountain_siegebots_dead", "cloudmountain_siegebots_skipped");
	wait(2);
	level thread function_b2ae6383();
}

/*
	Name: function_b2ae6383
	Namespace: namespace_f5edec75
	Checksum: 0x2473D90A
	Offset: 0x35E0
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_b2ae6383(var_b146902)
{
	if(!isdefined(var_b146902))
	{
		var_b146902 = 0;
	}
	if(!var_b146902)
	{
		namespace_76d95162::function_d9f49fba(0);
		level namespace_71b8dba1::function_a463d127("kane_server_room_s_locate_0", 1);
		namespace_d0ef8521::function_48f26766("cp_waypoint_breadcrumb");
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_guess_we_re_going_up_0");
		namespace_76d95162::function_d9f49fba(1);
	}
	level thread function_170b0353(var_b146902);
	level thread namespace_f1b4cbbc::function_6c35b4f3();
	namespace_4dbf3ae3::function_1ab5ebec("trig_cloud_mountain_level_2_start");
	wait(2);
	namespace_76d95162::function_d9f49fba(0);
	level namespace_71b8dba1::function_13b3b16a("plyr_third_floor_where_n_0");
	level namespace_71b8dba1::function_a463d127("kane_server_room_directly_0");
	namespace_76d95162::function_d9f49fba(1);
	level notify("hash_e36f3648");
}

/*
	Name: function_170b0353
	Namespace: namespace_f5edec75
	Checksum: 0xD92E7815
	Offset: 0x3768
	Size: 0x469
	Parameters: 1
	Flags: None
*/
function function_170b0353(var_b146902)
{
	if(!isdefined(var_b146902))
	{
		var_b146902 = 0;
	}
	level endon("hash_be472a4a");
	if(!var_b146902)
	{
		if(!level namespace_ad23e503::function_7922262b("cloudmountain_second_floor_vo"))
		{
			namespace_4dbf3ae3::function_1ab5ebec("trig_cloudmountain_second_floor_vo");
			namespace_76d95162::function_d9f49fba(0);
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_take_the_second_floo_0");
			level namespace_71b8dba1::function_a463d127("kane_ex_fil_on_marker_bi_0", 1);
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_copy_that_0");
			namespace_76d95162::function_d9f49fba(1);
		}
	}
	level waittill("hash_e36f3648");
	wait(5);
	namespace_76d95162::function_d9f49fba(0);
	level namespace_71b8dba1::function_a463d127("kane_you_need_to_hustle_0");
	namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_1ab5ebec("cloudmountain_hunter_spawned");
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_they_gotta_hun_0", 2);
	level namespace_71b8dba1::function_a463d127("kane_do_not_engage_the_hu_1");
	level namespace_71b8dba1::function_a463d127("kane_long_as_you_re_in_th_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_fan_fucking_tastic_1");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_more_reinforcements_0", 2);
	level namespace_71b8dba1::function_a463d127("kane_leave_em_goh_xiula_0");
	namespace_76d95162::function_d9f49fba(1);
	if(!level namespace_ad23e503::function_7922262b("end_level_2_sniper_vo"))
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a thread function_e2e19ed7("cm_level_2_snipers", "end_level_2_sniper_vo");
		}
	}
	level namespace_ad23e503::function_1ab5ebec("cloudmountain_level_3_catwalk_vo");
	level namespace_ad23e503::function_74d6b22f("end_level_2_sniper_vo");
	if(!level namespace_ad23e503::function_7922262b("end_level_3_sniper_vo"))
	{
		namespace_76d95162::function_d9f49fba(0);
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_they_re_on_the_walkw_0", 1);
		namespace_76d95162::function_d9f49fba(1);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a thread function_e2e19ed7("cm_level_3_snipers", "end_level_3_sniper_vo");
		}
	}
}

/*
	Name: function_e2e19ed7
	Namespace: namespace_f5edec75
	Checksum: 0x32CA960A
	Offset: 0x3BE0
	Size: 0x203
	Parameters: 2
	Flags: None
*/
function function_e2e19ed7(var_69e64c43, var_2148cdcc)
{
	level endon(var_2148cdcc);
	self endon("hash_128f8789");
	var_4d8945 = 0;
	while(!var_4d8945)
	{
		self waittill("hash_f9348fda", var_74d0774f, var_677b3e78);
		var_5e764d1a = namespace_2f06d687::function_289e6fd1(var_69e64c43);
		if(var_5e764d1a.size)
		{
			foreach(var_7244fa9b in var_5e764d1a)
			{
				if(var_7244fa9b == var_677b3e78)
				{
					var_2d3d7b7 = [];
					if(var_69e64c43 == "cm_level_2_snipers")
					{
						var_2d3d7b7[0] = "hend_sniper_spotted_on_th_0";
						var_2d3d7b7[1] = "hend_i_got_a_sniper_on_th_0";
					}
					else
					{
						var_2d3d7b7[0] = "hend_54i_sniper_on_the_ba_0";
						var_2d3d7b7[1] = "hend_sniper_on_the_walkwa_0";
					}
					namespace_76d95162::function_d9f49fba(0);
					level.var_2fd26037 namespace_71b8dba1::function_81141386(namespace_27a45d31::function_7ff50323(var_2d3d7b7));
					namespace_76d95162::function_d9f49fba(1);
					var_4d8945 = 1;
					break;
				}
			}
		}
		else
		{
			break;
		}
	}
	level namespace_ad23e503::function_74d6b22f(var_2148cdcc);
}

/*
	Name: function_333f5b5b
	Namespace: namespace_f5edec75
	Checksum: 0x89C571C8
	Offset: 0x3DF0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_333f5b5b()
{
	level endon("hash_a68d9993");
	namespace_4dbf3ae3::function_1ab5ebec("trig_cloudmountain_first_floor_backup");
	namespace_d5067552::function_bae40a28("sm_cloudmountain_level_2_amws");
	namespace_d5067552::function_bae40a28("sm_cloudmountain_level_2_warlord");
	namespace_9f824288::function_5d2cdd99();
	namespace_d5067552::function_347e835a("sm_cloudmountain_level_2_amws");
	namespace_2f06d687::function_45679edd("cloudmountain_first_floor_backup", 0);
	var_f62f0db4 = function_b4cb3503("hendricks_cloudmountain_stairs", "targetname");
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 function_169cc712(var_f62f0db4, 1);
}

/*
	Name: function_a288e474
	Namespace: namespace_f5edec75
	Checksum: 0x2D78566F
	Offset: 0x3EF8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_a288e474()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 1024;
	self.var_a1ed1ed1 = 320;
	self function_169cc712(level.var_9b1393e7[0]);
	self namespace_69ee7109::function_13ed0a8b(1);
	self namespace_27a45d31::function_f61c0df8("node_cloud_mountain_warlord_preferred", 1, 2);
}

/*
	Name: function_7dffd386
	Namespace: namespace_f5edec75
	Checksum: 0x87B3729
	Offset: 0x3F88
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7dffd386()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_cloudmountain_first_floor_backup");
	if(!level namespace_ad23e503::function_7922262b("stalagtites_dropped"))
	{
		namespace_4dbf3ae3::function_42e87952("cloudmountain_entrance_stalagmite_01");
	}
}

/*
	Name: function_ace9f6d8
	Namespace: namespace_f5edec75
	Checksum: 0x3294D3B0
	Offset: 0x3FE8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_ace9f6d8(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("objective_cloudmountain_done");
}

/*
	Name: function_8ce887a2
	Namespace: namespace_f5edec75
	Checksum: 0xD0046065
	Offset: 0x4030
	Size: 0x273
	Parameters: 4
	Flags: None
*/
function function_8ce887a2(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_servers");
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		level namespace_ad23e503::function_74d6b22f("back_door_opened");
		var_b06d4473 = function_6ada35ba("back_door_player_clip", "targetname");
		var_b06d4473 function_dc8c8404();
		var_31861e2e = function_6ada35ba("trig_level_2_robot_spawns", "targetname");
		if(isdefined(var_31861e2e))
		{
			var_31861e2e function_dc8c8404();
		}
		function_8232942d();
		function_56019233();
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
		level thread function_710c7f6a();
		level thread function_11f04863();
		level thread function_85070883();
		level thread namespace_27a45d31::function_cc20e187("cloudmountain");
		namespace_d7916d65::function_a2995f22();
		level thread function_b2ae6383(1);
		level thread function_170b0353(1);
	}
	namespace_d5067552::function_bae40a28("sm_cloud_mountain_riot_shield");
	level.var_2fd26037.var_7dfaf62 = 256;
	namespace_4dbf3ae3::function_1ab5ebec("trig_turret_hallway_enemy_spawns");
	namespace_1d795d47::function_be8adfb8("objective_cloudmountain_level_2");
}

/*
	Name: function_2013f39c
	Namespace: namespace_f5edec75
	Checksum: 0xFBDC987E
	Offset: 0x42B0
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_2013f39c(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("objective_cloudmountain_level_2_done");
}

/*
	Name: function_8232942d
	Namespace: namespace_f5edec75
	Checksum: 0x7DF73B21
	Offset: 0x42F8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_8232942d()
{
	var_82ac908a = function_6ada35ba("trig_cloudmountain_left_stairs_spawns", "targetname");
	var_82ac908a function_dc8c8404();
	var_7870fb88 = function_6ada35ba("trig_sm_level_1_rushers", "targetname");
	var_7870fb88 function_dc8c8404();
}

/*
	Name: function_56019233
	Namespace: namespace_f5edec75
	Checksum: 0x252E926C
	Offset: 0x4388
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_56019233()
{
	var_b6a97ee5 = function_99201f25("cloudmountain_level_1_glass_triggers", "script_noteworthy");
	foreach(var_799e4c3a in var_b6a97ee5)
	{
		function_be97adee(var_799e4c3a.var_722885f3, 100, 500, 500);
		var_799e4c3a function_dc8c8404();
	}
}

/*
	Name: function_9d75973
	Namespace: namespace_f5edec75
	Checksum: 0xC055C5D3
	Offset: 0x4478
	Size: 0x16F
	Parameters: 1
	Flags: None
*/
function function_9d75973(var_b49710a9)
{
	level endon("hash_478882aa");
	var_16de839d = function_6ada35ba("trig_exhibit_" + var_b49710a9, "targetname");
	while(1)
	{
		var_16de839d namespace_4dbf3ae3::function_1ab5ebec();
		switch(var_b49710a9)
		{
			case "A":
			{
				var_16de839d namespace_71b8dba1::function_81141386("Welcome to the Cloud Forest wildlife exhibit. Please take a moment to read the rules of conduct.", 0, 1);
				break;
			}
			case "B":
			{
				var_16de839d namespace_71b8dba1::function_81141386("Hundreds of different animal species make their home among the flora of Cloud Forests across Southeast Asia.", 0, 1);
				break;
			}
			case "C":
			{
				var_16de839d namespace_71b8dba1::function_81141386("Amphibians such as this Spotted Tree Frog are particularly well suited to the unique climate found here.", 0, 1);
				break;
			}
			case "D":
			{
				var_16de839d namespace_71b8dba1::function_81141386("Tree Shrews are descended from one of the earliest known mammals on earth. They forage in the dense undergrowth at all hours of the day.", 0, 1);
				break;
			}
			case "E":
			{
				var_16de839d namespace_71b8dba1::function_81141386("Up ahead is the overlook and elevator access to the Cloud Walk. Watch your step! Walkways are slippery when wet.", 0, 1);
				break;
			}
		}
		wait(15);
	}
}

/*
	Name: function_11f04863
	Namespace: namespace_f5edec75
	Checksum: 0xEAB3167D
	Offset: 0x45F0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_11f04863()
{
	namespace_4dbf3ae3::function_1ab5ebec("level_2_catwalk_spawns", "targetname");
	var_f2c7e89 = function_6ada35ba("dome_side_door", "targetname");
	var_f2c7e89 function_de8377bf();
	var_f2c7e89 function_8bdea13c(100, 2);
	var_f2c7e89 waittill("hash_a21db68a");
	level namespace_ad23e503::function_1ab5ebec("supertree_door_close");
	var_f2c7e89 function_8bdea13c(-100, 2);
}

/*
	Name: function_d532cc21
	Namespace: namespace_f5edec75
	Checksum: 0xB3CB33D
	Offset: 0x46C8
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_d532cc21()
{
	level namespace_ad23e503::function_c35e6aab("stalagtites_dropped");
	var_897e5d1 = namespace_14b42b8a::function_7922262b("stalactite_kill_zone", "targetname");
	namespace_4dbf3ae3::function_1ab5ebec("cloudmountain_entrance_stalagmite_01");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_stalagmite_01_bundle");
	level waittill("hash_422a3570");
	var_2ef43a6a = function_8e1da51e(var_897e5d1.var_722885f3, var_897e5d1.var_f8456b37);
	var_2ef43a6a = namespace_84970cc4::function_d010fbb9(var_2ef43a6a, level.var_9b1393e7);
	if(var_2ef43a6a.size > 0)
	{
		namespace_769dc23f::function_8ca89944();
		foreach(var_8bcb913d in var_2ef43a6a)
		{
			var_8bcb913d function_2992720d();
		}
	}
	level namespace_ad23e503::function_74d6b22f("stalagtites_dropped");
}

/*
	Name: function_45d0a02a
	Namespace: namespace_f5edec75
	Checksum: 0x63D8464C
	Offset: 0x4888
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_45d0a02a()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("cloudmountain_hunter_spawned");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_342d9e3a = 1;
	var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
	if(isdefined(var_3c54858a))
	{
		self namespace_72ee5da4::function_81b6f1ac();
		self namespace_96fa87af::function_edb3a94e(var_3c54858a);
		self function_dc8c8404();
	}
}

/*
	Name: function_715d6f43
	Namespace: namespace_f5edec75
	Checksum: 0xB088644
	Offset: 0x4978
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_715d6f43()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
}

/*
	Name: function_ec47b2e6
	Namespace: namespace_f5edec75
	Checksum: 0x6EEB560C
	Offset: 0x49A8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_ec47b2e6()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	var_9de10fe3 = function_b4cb3503(self.var_b07228b6, "targetname");
	if(isdefined(var_9de10fe3))
	{
		self function_169cc712(var_9de10fe3, 1);
		self waittill("hash_41d1aaf0");
	}
	self function_dc8c8404();
}

/*
	Name: function_2c36cacd
	Namespace: namespace_f5edec75
	Checksum: 0x2F5D0A80
	Offset: 0x4A48
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_2c36cacd()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 4;
	self namespace_d84e54db::function_b4f5e3b9(1);
	namespace_4dbf3ae3::function_1ab5ebec("trig_lookat_level_3_surprised");
	wait(function_72a94f05(0.1, 0.5));
	self namespace_cc27597::function_43718187("cin_gen_vign_confusion_02", self);
	var_284ca6ef = function_6ada35ba("trig_level_3_catwalks_goal", "targetname");
	if(isdefined(var_284ca6ef))
	{
		self function_169cc712(var_284ca6ef);
		self waittill("hash_41d1aaf0");
	}
	self namespace_d84e54db::function_b4f5e3b9(0);
	self.var_7dfaf62 = 1024;
}

/*
	Name: function_e99db423
	Namespace: namespace_f5edec75
	Checksum: 0xDCF32CD6
	Offset: 0x4B58
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_e99db423()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self thread function_d7238641();
	var_f64bb476 = function_6ada35ba(self.var_b07228b6, "targetname");
	var_f64bb476 thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_charging_station_open_01_bundle", var_f64bb476);
	var_294306eb = "cin_bio_07_03_climb_aie_charging_station";
	var_6df191e = namespace_14b42b8a::function_7922262b(var_f64bb476.var_b07228b6, "targetname");
	var_6df191e thread namespace_cc27597::function_c35e6aab(var_294306eb, self);
	while(1)
	{
		var_a3ef017f = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_6e4dffe8 = function_316422d1(self.var_722885f3, var_5dc5e20a.var_722885f3);
			if(var_5dc5e20a namespace_82b91a51::function_d61b846f(self.var_722885f3) && var_6e4dffe8 < 1000000 || var_6e4dffe8 < 360000)
			{
				var_a3ef017f = 1;
				break;
			}
		}
		if(var_a3ef017f)
		{
			break;
		}
		wait(0.05);
	}
	var_6df191e thread namespace_cc27597::function_43718187(var_294306eb, self);
	self waittill("hash_c366df47");
	var_f64bb476 thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_charging_station_open_01_bundle", var_f64bb476);
	self namespace_d84e54db::function_c9e45d52(0);
	var_2104bfe4 = self function_8a4ba3db();
	if(isdefined(var_2104bfe4))
	{
		self function_169cc712(var_2104bfe4);
	}
}

/*
	Name: function_d7238641
	Namespace: namespace_f5edec75
	Checksum: 0x2B76CF3C
	Offset: 0x4E20
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d7238641()
{
	self endon("hash_128f8789");
	level waittill("hash_d7238641");
	self function_dc8c8404();
}

/*
	Name: function_a52ff7c1
	Namespace: namespace_f5edec75
	Checksum: 0x70624C4
	Offset: 0x4E60
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_a52ff7c1()
{
	function_6f311542();
	namespace_4dbf3ae3::function_1ab5ebec("trig_cloudmountain_elevators");
	namespace_2f06d687::function_22356ba7("cloudmountain_elevator_enemy", &function_f5170df1, "cloudmountain");
}

/*
	Name: function_7c81648
	Namespace: namespace_f5edec75
	Checksum: 0x5C0C8180
	Offset: 0x4EC8
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_7c81648()
{
	var_9396ef10 = function_d35375b8("catwalk", "script_noteworthy");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_9396ef10.size; var_c957f6b6++)
	{
		var_9396ef10[var_c957f6b6] namespace_2f06d687::function_994832bd(&function_84f859bf);
	}
}

/*
	Name: function_84f859bf
	Namespace: namespace_f5edec75
	Checksum: 0x6F0DA646
	Offset: 0x4F58
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_84f859bf()
{
	self.var_7dfaf62 = 400;
}

/*
	Name: function_a36395f0
	Namespace: namespace_f5edec75
	Checksum: 0x582FA1ED
	Offset: 0x4F70
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_a36395f0()
{
	var_3d912af2 = function_99201f25("cloudmountain_spawn_trigger", "script_noteworthy");
	foreach(var_4dbf3ae3 in var_3d912af2)
	{
		var_4dbf3ae3 function_dc8c8404();
	}
	function_8232942d();
}

/*
	Name: function_85070883
	Namespace: namespace_f5edec75
	Checksum: 0xFB80474A
	Offset: 0x5040
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_85070883()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_cloud_mountain_reinforcements");
	namespace_2f06d687::function_2b37a3c9("sp_cloud_mountain_reinforcements_wasps", "targetname", &function_947a1ae8);
	namespace_d5067552::function_bae40a28("sm_cloud_mountain_reinforcements");
	namespace_d5067552::function_bae40a28("sm_cloud_mountain_reinforcements_wasps");
	namespace_d5067552::function_bae40a28("sm_cloud_mountain_retreaters");
}

/*
	Name: function_df51ef25
	Namespace: namespace_f5edec75
	Checksum: 0xA12EBF8
	Offset: 0x50E0
	Size: 0x343
	Parameters: 2
	Flags: None
*/
function function_df51ef25(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("turret_hallway_init");
	if(!function_27c72c1b())
	{
		level namespace_cc27597::function_c35e6aab("server_room_access_start", "targetname");
	}
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_cloudmountain_end"));
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		level.var_2fd26037 notify("hash_93bef291");
		level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
		namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_servers");
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		level thread namespace_27a45d31::function_cc20e187("cloudmountain");
		function_a36395f0();
		namespace_d7916d65::function_a2995f22();
		level thread namespace_f1b4cbbc::function_6c35b4f3();
	}
	level namespace_ad23e503::function_c35e6aab("turret_hallway_phalanx_dead");
	level thread function_ee13f890();
	level thread function_3679c70a();
	level thread function_f52ce87b();
	level thread function_de8fde30();
	namespace_2f06d687::function_72214789("turret_hallway_group");
	function_58b4a5d6();
	level namespace_ad23e503::function_74d6b22f("turret_hall_clear");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_564407fb::function_38a9aff8())
		{
			var_5dc5e20a namespace_564407fb::function_d397bc5c(var_5dc5e20a, 0);
		}
		if(function_5b49d38c(var_5dc5e20a.var_a03af093))
		{
			var_5dc5e20a.var_a03af093 namespace_7cb6cd95::function_664c9cd6();
		}
	}
	namespace_1d795d47::function_be8adfb8("objective_turret_hallway");
}

/*
	Name: function_3679c70a
	Namespace: namespace_f5edec75
	Checksum: 0xFB1755
	Offset: 0x5430
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_3679c70a()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_near_turrets");
	namespace_76d95162::function_d9f49fba(0);
	var_9d979b27 = function_c20c2e8("hallway_turret", "script_noteworthy");
	if(var_9d979b27.size > 0)
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_focus_on_the_turrets_0");
	}
	var_9d979b27 = function_c20c2e8("hallway_turret", "script_noteworthy");
	if(var_9d979b27.size > 0)
	{
		var_653d9a07 = 0;
		var_85ee3d97 = 0;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(isdefined(var_5dc5e20a.var_f5ffba49.var_83023915) && var_5dc5e20a.var_f5ffba49.var_83023915 && var_5dc5e20a.var_c87cedb6 > 0)
			{
				var_653d9a07 = 1;
			}
			if(isdefined(var_5dc5e20a.var_bd1a8795) && var_5dc5e20a.var_22f7edca > 0)
			{
				var_85ee3d97 = 1;
			}
		}
		if(var_653d9a07)
		{
			level namespace_71b8dba1::function_a463d127("kane_your_emp_grenade_sho_0");
		}
		else if(var_85ee3d97)
		{
			level namespace_71b8dba1::function_a463d127("kane_toss_a_frag_in_there_0");
		}
	}
}

/*
	Name: function_f52ce87b
	Namespace: namespace_f5edec75
	Checksum: 0x5F9F1F4B
	Offset: 0x5668
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_f52ce87b()
{
	level namespace_ad23e503::function_1ab5ebec("turret_hallway_phalanx");
	level namespace_ad23e503::function_74d6b22f("end_level_3_sniper_vo");
	var_489b2980 = namespace_14b42b8a::function_7922262b("turret_hallway_phalanx_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b("turret_hallway_phalanx_end").var_722885f3;
	var_1b6ee6b2 = 2;
	if(level.var_641fcd9c.size > 0)
	{
		var_1b6ee6b2 = 3;
	}
	function_9b385ca5();
	var_2f359655 = var_3bc9e3b7;
	function_e6cab0ff(var_2f359655, "phalanx_diagonal_left", var_489b2980, var_491bc153, 1);
	while(var_2f359655.var_73d3be38.size + var_2f359655.var_d00dab6d.size + var_2f359655.var_75841262.size > 0)
	{
		wait(0.25);
	}
	level namespace_ad23e503::function_74d6b22f("turret_hallway_phalanx_dead");
}

/*
	Name: function_de8fde30
	Namespace: namespace_f5edec75
	Checksum: 0xCA5D3758
	Offset: 0x57F0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_de8fde30()
{
	namespace_80983c42::function_80983c42("turret_light");
	namespace_4dbf3ae3::function_1ab5ebec("trig_turret_lights_damaged", "targetname");
	namespace_80983c42::function_dfc351df("turret_light");
	namespace_80983c42::function_80983c42("fx_turrethallway_turret_smk");
	namespace_cc27597::function_43718187("p7_fxanim_gp_floodlight_01_bundle");
}

/*
	Name: function_2c72fa5a
	Namespace: namespace_f5edec75
	Checksum: 0x3DD8DDAC
	Offset: 0x5880
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_2c72fa5a()
{
	self namespace_37b990db::function_c8f12004(1, 0);
	switch(self.var_db7bb468)
	{
		case "turret_left":
		{
			namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_cloud_mountain_turret_left", self);
			self waittill("hash_128f8789");
			namespace_d0ef8521::function_31cd1834("cp_level_biodomes_cloud_mountain_turret_left", self);
			break;
		}
		case "turret_right":
		{
			namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_cloud_mountain_turret_right", self);
			self waittill("hash_128f8789");
			namespace_d0ef8521::function_31cd1834("cp_level_biodomes_cloud_mountain_turret_right", self);
			break;
		}
	}
}

/*
	Name: function_d8eaa27f
	Namespace: namespace_f5edec75
	Checksum: 0x88E03A5F
	Offset: 0x5958
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_d8eaa27f(var_9d979b27)
{
	level endon("hash_48527e55");
	function_c80e1213("turret_left");
	function_c80e1213("turret_right");
}

/*
	Name: function_c80e1213
	Namespace: namespace_f5edec75
	Checksum: 0x73AB42D5
	Offset: 0x59A8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_c80e1213(var_3199aef)
{
	var_974cc07 = function_b4cb3503("hendricks_" + var_3199aef, "targetname");
	level.var_2fd26037 function_169cc712(var_974cc07, 1);
	var_b888d69a = function_c20c2e8(var_3199aef, "script_label");
	if(function_5b49d38c(var_b888d69a[0]))
	{
		level.var_2fd26037 function_65453879(var_b888d69a[0]);
		while(function_5b49d38c(var_b888d69a[0]))
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_ee13f890
	Namespace: namespace_f5edec75
	Checksum: 0xC7618814
	Offset: 0x5AA8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_ee13f890()
{
	level namespace_ad23e503::function_1ab5ebec("a_player_sees_hallway_turrets");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_servers");
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_destroy_hallway_turrets");
	var_9d979b27 = function_c20c2e8("hallway_turret", "script_noteworthy");
	foreach(var_c316ad54 in var_9d979b27)
	{
		var_c316ad54 thread function_2c72fa5a();
	}
	level namespace_ad23e503::function_1ab5ebec("turret_hallway_phalanx_dead");
	function_d8eaa27f(var_9d979b27);
}

/*
	Name: function_58b4a5d6
	Namespace: namespace_f5edec75
	Checksum: 0x52DC46E2
	Offset: 0x5BE8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_58b4a5d6()
{
	for(var_a4854031 = 1; var_a4854031;  = 1)
	{
		wait(1);
	}
}

/*
	Name: function_50c932d0
	Namespace: namespace_f5edec75
	Checksum: 0x5B36F128
	Offset: 0x5C38
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_50c932d0()
{
	var_53efc9b3 = function_6ada35ba("turret_hallway_enemy_check_volume", "targetname");
	var_da0978dc = function_24e95264("axis", "all");
	foreach(var_e98b4e9b in var_da0978dc)
	{
		if(var_e98b4e9b function_32fa5072(var_53efc9b3))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_9cfbecff
	Namespace: namespace_f5edec75
	Checksum: 0xDDC3D540
	Offset: 0x5D38
	Size: 0xCB
	Parameters: 4
	Flags: None
*/
function function_9cfbecff(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_destroy_hallway_turrets");
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_awaiting_update");
	namespace_27a45d31::function_ddb0eeea("turret_hallway_done");
	function_6ada35ba("trig_turret_hallway_enemy_spawns", "targetname") function_dc8c8404();
	function_6ada35ba("trig_turret_hallway_defender_spawns", "targetname") function_dc8c8404();
}

/*
	Name: function_e696b86c
	Namespace: namespace_f5edec75
	Checksum: 0x916D5ABB
	Offset: 0x5E10
	Size: 0x32B
	Parameters: 2
	Flags: None
*/
function function_e696b86c(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("xiulan_vignette_init");
	namespace_27a45d31::function_a22e7052(0, "server_room_window_mantle", "script_noteworthy");
	level thread namespace_82b91a51::function_d8eaed3d(2);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		level.var_2fd26037.var_7dfaf62 = 32;
		namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_awaiting_update");
		function_a36395f0();
		level namespace_cc27597::function_c35e6aab("server_room_access_start", "targetname");
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		var_777355da = function_99201f25("hallway_turret", "script_noteworthy");
		var_b888d69a = namespace_2f06d687::function_22356ba7(var_777355da);
		namespace_84970cc4::function_eaab05dc(var_b888d69a, &function_2992720d);
		level thread namespace_27a45d31::function_cc20e187("cloudmountain");
		namespace_d7916d65::function_a2995f22();
	}
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	var_5cb57398 = function_b4cb3503("nd_turret_win_idle", "targetname");
	level.var_2fd26037 function_169cc712(var_5cb57398);
	level thread function_9c35b4f7();
	var_d874dcf = function_6ada35ba("turret_hallway_door_ai_clip", "targetname");
	var_d874dcf function_dc8c8404();
	var_e5214b43 = function_6ada35ba("server_room_initial_bullet_brush_outer", "targetname");
	var_e5214b43 function_50ccee8d();
	var_f3ad8f26 = function_6ada35ba("server_room_initial_bullet_brush_inner", "targetname");
	var_f3ad8f26 function_50ccee8d();
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_server_room_window_break_01_bundle");
	level function_cd4c4257();
}

/*
	Name: function_cd4c4257
	Namespace: namespace_f5edec75
	Checksum: 0x9DBA1D96
	Offset: 0x6148
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_cd4c4257()
{
	level thread namespace_f1b4cbbc::function_973b77f9();
	namespace_76d95162::function_d9f49fba(0);
	level namespace_71b8dba1::function_a463d127("kane_shit_she_s_uploadi_0");
	level namespace_71b8dba1::function_a463d127("kane_it_s_uploading_direc_0");
	level notify("hash_9b74c38e");
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_e638433c
	Namespace: namespace_f5edec75
	Checksum: 0x90CBA906
	Offset: 0x61F0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_e638433c()
{
	self endon("hash_128f8789");
	self waittill("hash_41d1aaf0");
	var_e4e5aca5 = namespace_14b42b8a::function_7922262b("hallway_look_target").var_722885f3;
	self function_13ffb22b("face direction", self.var_722885f3 - var_e4e5aca5);
	self waittill("hash_6050ab17");
	self function_13ffb22b("face enemy");
}

/*
	Name: function_a0e7b9b7
	Namespace: namespace_f5edec75
	Checksum: 0xD7ECFA10
	Offset: 0x6298
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_a0e7b9b7()
{
	self.var_255b9315 = 1;
}

/*
	Name: function_9c35b4f7
	Namespace: namespace_f5edec75
	Checksum: 0xDADBD131
	Offset: 0x62B0
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function function_9c35b4f7()
{
	level waittill("hash_9b74c38e");
	var_27c4935 = (0, 0, 0);
	var_e1e45904 = function_6ada35ba("trig_server_room_door_use_object", "targetname");
	var_e1e45904 function_48f26766();
	var_ca0e9b65 = namespace_82b91a51::function_14518e76(var_e1e45904, &"cp_level_biodomes_server_door", &"CP_MI_SING_BIODOMES_CLOUDMOUNTAIN_ACCESS_TERMINAL", &function_9a82e132);
	level waittill("hash_69d6458d");
	var_56dd1913 = function_b8494651("axis");
	namespace_84970cc4::function_eaab05dc(var_56dd1913, &function_dc8c8404);
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 1);
	level thread function_d28364c1();
	level thread namespace_71b8dba1::function_13b3b16a("plyr_we_have_to_take_her_0", 1);
	level thread namespace_f1b4cbbc::function_3919d226();
	level namespace_cc27597::function_8f9f34e0("cin_bio_09_accessdrives_3rd_sh010", &function_2db7566e, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bio_09_accessdrives_3rd_sh020", &function_3de47a8b, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bio_09_accessdrives_3rd_sh090", &function_cbdd0b50, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bio_09_accessdrives_3rd_sh170", &function_7dedb1f0, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bio_09_accessdrives_3rd_sh190", &function_f1df85b9, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bio_09_accessdrives_3rd_sh260", &function_d065fdd0, "done");
	level.var_2fd26037.var_c584775c = 1;
	if(isdefined(level.var_d9cf116b))
	{
		level thread [[level.var_d9cf116b]]();
	}
	level namespace_cc27597::function_43718187("server_room_access_start", "targetname", level.var_f2be4c1f);
	namespace_1d795d47::function_be8adfb8("objective_xiulan_vignette");
}

/*
	Name: function_934481ae
	Namespace: namespace_f5edec75
	Checksum: 0xF9393AA0
	Offset: 0x65B8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_934481ae(var_f2c7e89)
{
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_server_door", var_f2c7e89);
}

/*
	Name: function_9a82e132
	Namespace: namespace_f5edec75
	Checksum: 0xDBA04C5D
	Offset: 0x65F0
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_9a82e132(var_6bfe1586)
{
	level.var_f2be4c1f = var_6bfe1586;
	var_485a1dbf = namespace_14b42b8a::function_7922262b("s_server_room_hack_pos");
	function_37cbcf1a("evt_hack_panel", var_485a1dbf.var_722885f3);
	self namespace_a230c2b1::function_e54c54c3();
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_server_door");
	level notify("hash_69d6458d");
}

/*
	Name: function_2db7566e
	Namespace: namespace_f5edec75
	Checksum: 0xD13D7E03
	Offset: 0x66A0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_2db7566e(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_175490fb::function_f8669cbf(1);
		var_5dc5e20a namespace_71e9cb84::function_688ed188("hack_dni_fx");
	}
}

/*
	Name: function_7dedb1f0
	Namespace: namespace_f5edec75
	Checksum: 0x92637095
	Offset: 0x6768
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_7dedb1f0(var_c77d2837)
{
	level waittill("hash_f7774ee4");
	level thread function_a91388d2(1);
	level waittill("hash_127c12ee");
	level namespace_ad23e503::function_1ab5ebec("server_control_room_door_open");
	level thread function_a91388d2(0);
}

/*
	Name: function_d065fdd0
	Namespace: namespace_f5edec75
	Checksum: 0x9AF95C5C
	Offset: 0x67E8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_d065fdd0(var_c77d2837)
{
	level notify("hash_d065fdd0");
	level namespace_71e9cb84::function_74d6b22f("set_exposure_bank", 0);
	level namespace_82b91a51::function_93831e79("s_server_room_scene_end_warps");
	level thread namespace_82b91a51::function_a0938376();
	function_acdfe1fe("cp_biodomes_env_serverhackvid4looping", 1);
}

/*
	Name: function_4a1b1d4c
	Namespace: namespace_f5edec75
	Checksum: 0x90FBE0C4
	Offset: 0x6888
	Size: 0xCB
	Parameters: 3
	Flags: None
*/
function function_4a1b1d4c(var_3e94206a, var_5dc5e20a, var_77f265f6)
{
	if(isdefined(var_77f265f6) && var_77f265f6)
	{
		self namespace_a230c2b1::function_e54c54c3();
		var_2fc559ed = function_6ada35ba("server_room_door", "targetname");
		var_2fc559ed function_8bdea13c(100, 2);
		var_2fc559ed function_de8377bf();
		var_2fc559ed waittill("hash_a21db68a");
		var_2fc559ed function_dc8c8404();
	}
}

/*
	Name: function_3de47a8b
	Namespace: namespace_f5edec75
	Checksum: 0x165B998B
	Offset: 0x6960
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_3de47a8b(var_c77d2837)
{
	function_acdfe1fe("cp_biodomes_env_serverhackvid1");
}

/*
	Name: function_cbdd0b50
	Namespace: namespace_f5edec75
	Checksum: 0x41B2DC60
	Offset: 0x6990
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_cbdd0b50(var_c77d2837)
{
	function_acdfe1fe("cp_biodomes_env_serverhackvid2");
}

/*
	Name: function_f1df85b9
	Namespace: namespace_f5edec75
	Checksum: 0xA713E242
	Offset: 0x69C0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_f1df85b9(var_c77d2837)
{
	function_acdfe1fe("cp_biodomes_env_serverhackvid3");
}

/*
	Name: function_a91388d2
	Namespace: namespace_f5edec75
	Checksum: 0x2A783964
	Offset: 0x69F0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_a91388d2(var_c20d98a0)
{
	var_4fe84cbf = function_6ada35ba("server_control_room_door", "targetname");
	if(var_c20d98a0)
	{
		var_4fe84cbf function_fde61077(50, 0.5);
		var_4fe84cbf waittill("hash_a21db68a");
		level namespace_ad23e503::function_74d6b22f("server_control_room_door_open");
	}
	else
	{
		var_4fe84cbf function_fde61077(-50, 0.5);
		var_4fe84cbf waittill("hash_a21db68a");
		level namespace_ad23e503::function_9d134160("server_control_room_door_open");
	}
}

/*
	Name: function_6be20b72
	Namespace: namespace_f5edec75
	Checksum: 0xCD355B71
	Offset: 0x6AD8
	Size: 0x153
	Parameters: 4
	Flags: None
*/
function function_6be20b72(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("xiulan_vignette_done");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_mainobj_capture_data_drives");
	var_2fc559ed = function_6ada35ba("server_room_door", "targetname");
	if(isdefined(var_2fc559ed))
	{
		var_2fc559ed function_de8377bf();
		var_2fc559ed function_dc8c8404();
	}
	var_d9a05e72 = function_6ada35ba("server_room_door_clip", "targetname");
	if(isdefined(var_d9a05e72))
	{
		var_d9a05e72 function_de8377bf();
		var_d9a05e72 function_dc8c8404();
	}
	function_6ada35ba("trig_server_room_door_use_object", "targetname") function_dc8c8404();
}

/*
	Name: function_d28364c1
	Namespace: namespace_f5edec75
	Checksum: 0xF854B37C
	Offset: 0x6C38
	Size: 0x27F
	Parameters: 0
	Flags: None
*/
function function_d28364c1()
{
	level waittill("hash_67213d76");
	var_e5214b43 = function_6ada35ba("server_room_initial_bullet_brush_outer", "targetname");
	var_f3ad8f26 = function_6ada35ba("server_room_initial_bullet_brush_inner", "targetname");
	var_1c634edb = namespace_2f06d687::function_7387a40a("server_room_initial_bullet_shooter");
	var_1c634edb endon("hash_128f8789");
	var_6b372cba = function_b4cb3503("initial_shooter_node", "targetname");
	var_1c634edb function_169cc712(var_6b372cba, 1);
	if(!namespace_cc27597::function_b1f75ee9())
	{
		var_1c634edb namespace_d84e54db::function_c9e45d52(1);
		var_1c634edb namespace_d84e54db::function_b4f5e3b9(1);
		var_1c634edb.var_5ed2f6d3 = 1;
		level waittill("hash_ab045282");
		var_1c634edb namespace_d84e54db::function_b4f5e3b9(0);
		var_1c634edb namespace_d84e54db::function_d104c596("normal", var_e5214b43, "tag_origin");
		var_18ee9c37 = function_6ada35ba("trig_initial_bullet_damage", "targetname");
		var_18ee9c37 namespace_82b91a51::function_c9aa1ff("damage", 3);
		var_1c634edb.var_5ed2f6d3 = 0;
		var_1c634edb namespace_d84e54db::function_c9e45d52(0);
		var_1c634edb function_e11ce512();
	}
	var_1c634edb.var_15dfd6c = 0.05;
	var_e5214b43 function_48f26766();
	var_f3ad8f26 function_48f26766();
	wait(5);
	var_1c634edb.var_15dfd6c = 1;
}

/*
	Name: function_8dacf956
	Namespace: namespace_f5edec75
	Checksum: 0xAC877075
	Offset: 0x6EC0
	Size: 0x353
	Parameters: 2
	Flags: None
*/
function function_8dacf956(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("server_room_defend_init");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_awaiting_update");
	function_6ada35ba("server_koolaid", "targetname") function_14c24d9d();
	level thread function_a78ec4a();
	if(var_74cd64bc)
	{
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		function_a36395f0();
		level function_a91388d2(0);
		level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_server_room_window_break_01_bundle");
		namespace_27a45d31::function_a22e7052(0, "server_room_window_mantle", "script_noteworthy");
		var_777355da = function_99201f25("hallway_turret", "script_noteworthy");
		var_b888d69a = namespace_2f06d687::function_22356ba7(var_777355da);
		namespace_84970cc4::function_eaab05dc(var_b888d69a, &function_2992720d);
		var_d874dcf = function_6ada35ba("turret_hallway_door_ai_clip", "targetname");
		var_d874dcf function_dc8c8404();
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		level thread namespace_82b91a51::function_6729b6ba(1, "server_room_intro_done");
	}
	function_9e3608e3("fxanim_cloud_mountain");
	level thread function_17d3780e();
	level thread function_d813e7f(var_74cd64bc);
	level thread function_564d6426();
	function_2d01c10e();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_564407fb::function_38a9aff8())
		{
			var_5dc5e20a namespace_564407fb::function_d397bc5c(var_5dc5e20a, 0);
		}
	}
	namespace_1d795d47::function_be8adfb8("objective_server_room_defend");
}

/*
	Name: function_17d3780e
	Namespace: namespace_f5edec75
	Checksum: 0x5E2A0D2D
	Offset: 0x7220
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_17d3780e()
{
	level waittill("hash_d065fdd0");
	level notify("hash_5891b40a");
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_defend_server_room", level.var_2fd26037);
}

/*
	Name: function_a78ec4a
	Namespace: namespace_f5edec75
	Checksum: 0x15C918C1
	Offset: 0x7268
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_a78ec4a()
{
	level namespace_4dbf3ae3::function_1ab5ebec("server_room_all_players_in");
	var_2d1826b2 = function_6ada35ba("turret_hallway_front_door", "targetname");
	var_f2087d4a = function_6ada35ba("turret_hallway_door_clip", "targetname");
	var_f2087d4a function_37f7858a(var_2d1826b2);
	var_2d1826b2 function_de8377bf();
	var_2d1826b2 function_8bdea13c(-100, 1);
	var_2d1826b2 waittill("hash_a21db68a");
	var_2d1826b2 function_14c24d9d();
}

/*
	Name: function_2d01c10e
	Namespace: namespace_f5edec75
	Checksum: 0x99424F13
	Offset: 0x7370
	Size: 0xC51
	Parameters: 0
	Flags: None
*/
function function_2d01c10e()
{
	level.var_2e1f1d9a = [];
	level.var_2e1f1d9a[0] = function_6ada35ba("server_room_window_target0", "targetname");
	level.var_2e1f1d9a[1] = function_6ada35ba("server_room_window_target1", "targetname");
	level.var_2e1f1d9a[2] = function_6ada35ba("server_room_window_target2", "targetname");
	level.var_2e1f1d9a[3] = function_6ada35ba("server_room_window_target3", "targetname");
	var_3af498bc = function_fe0cfd2e("swat_node", "script_noteworthy");
	foreach(var_90ca1fdd in var_3af498bc)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	namespace_2f06d687::function_2b37a3c9("server_room_enemy_window", "targetname", &function_229a8bc9);
	namespace_2f06d687::function_2b37a3c9("server_room_enemy_elevator1", "targetname", &function_f5170df1, "server_room");
	namespace_2f06d687::function_2b37a3c9("server_room_enemy_elevator2", "targetname", &function_40ff4c80, "server_room");
	namespace_2f06d687::function_2b37a3c9("server_room_enemy_swat1", "targetname", &function_7b66a225);
	level waittill("hash_d065fdd0");
	level thread namespace_71b8dba1::function_a463d127("kane_he_s_fine_0");
	namespace_9f824288::function_5d2cdd99();
	level thread namespace_f1b4cbbc::function_46333a8a();
	function_37cbcf1a("evt_server_def_walla_1st", (603, 12812, 1184));
	function_37cbcf1a("evt_server_def_walla_2nd", (900, 12750, 1140));
	level notify("hash_f3c45157");
	wait(2);
	namespace_2f06d687::function_22356ba7("server_room_enemy_window");
	namespace_2f06d687::function_c6ffd13e("top_floor", &function_13ed10e0);
	namespace_d5067552::function_bae40a28("server_room_wave_2_1");
	level namespace_82b91a51::function_c9aa1ff("top_floor_breached", 10);
	namespace_d5067552::function_bae40a28("server_room_wave_2_2");
	if(level namespace_ad23e503::function_7922262b("top_floor_breached"))
	{
		level thread namespace_71b8dba1::function_13b3b16a("plyr_breach_on_the_second_0");
	}
	if(level.var_2395e945.size < 3)
	{
		function_dbcb1086(1, 15, "top_floor");
	}
	else
	{
		function_dbcb1086(2, 10, "top_floor");
	}
	namespace_9f824288::function_5d2cdd99();
	level thread namespace_71b8dba1::function_a463d127("kane_download_at_twenty_p_0");
	function_37cbcf1a("evt_server_def_walla_3rd", (900, 12750, 1140));
	namespace_2f06d687::function_2b37a3c9("sp_server_room_background", "targetname", &namespace_6f13ba4a::function_76c56ee1);
	namespace_d5067552::function_bae40a28("sm_server_room_background");
	level thread function_963807b1();
	level waittill("hash_b4a4fe67");
	if(level.var_2395e945.size > 2)
	{
		function_dbcb1086(3, 10, "window", "top_floor", "hallway");
	}
	else
	{
		function_dbcb1086(3, 45, "window", "top_floor");
	}
	namespace_9f824288::function_5d2cdd99();
	level namespace_71b8dba1::function_a463d127("kane_download_at_forty_pe_0");
	function_37cbcf1a("evt_server_def_walla_bots_a", (1117, 13871, 1116));
	level function_88e395d2();
	namespace_2f06d687::function_22356ba7("server_room_enemy_elevator1");
	if(level.var_2395e945.size > 2)
	{
		namespace_2f06d687::function_22356ba7("server_room_enemy_elevator2");
	}
	level thread function_28931f52();
	if(level.var_2395e945.size > 2)
	{
		function_dbcb1086(5, 45, "hallway", "top_floor");
	}
	else
	{
		function_dbcb1086(8, 30, "hallway");
	}
	namespace_9f824288::function_5d2cdd99();
	level function_88e395d2();
	namespace_2f06d687::function_22356ba7("server_room_enemy_elevator1");
	if(level.var_2395e945.size > 2)
	{
		namespace_2f06d687::function_22356ba7("server_room_enemy_elevator2");
		wait(2);
		namespace_d5067552::function_bae40a28("server_room_topfloor_fodder_manager", &function_d2bb2597);
	}
	level namespace_71b8dba1::function_13b3b16a("plyr_more_hostiles_from_t_0");
	level thread namespace_71b8dba1::function_a463d127("kane_download_at_sixty_pe_0", 1);
	function_37cbcf1a("evt_server_def_walla_bots_b", (1117, 13871, 1116));
	function_dbcb1086(2, 5, "hallway");
	if(level.var_2395e945.size > 1)
	{
		namespace_d5067552::function_bae40a28("server_room_fodder_manager_stairs", &function_d2bb2597);
	}
	namespace_d5067552::function_2992720d("server_room_topfloor_fodder_manager");
	function_dbcb1086(0, 25, "top_floor", "hallway", "window");
	namespace_9f824288::function_5d2cdd99();
	level namespace_71b8dba1::function_13b3b16a("plyr_we_gotta_get_the_hel_0");
	level thread namespace_71b8dba1::function_a463d127("kane_download_at_eighty_p_0");
	function_37cbcf1a("evt_server_def_walla_4th", (1278, 13578, 1276));
	wait(3);
	function_560d15cf();
	wait(3);
	namespace_d5067552::function_bae40a28("server_room_final_wave_manager", &function_d2bb2597);
	function_dbcb1086(2, 2, "final_wave");
	namespace_d5067552::function_bae40a28("server_room_fodder_manager_stairs", &function_d2bb2597);
	if(level.var_2395e945.size > 2)
	{
		wait(0.25);
		namespace_2f06d687::function_22356ba7("server_room_enemy_hallway_final");
		var_31a99ad4 = function_99201f25("server_room_enemy_hallway_final_ai", "targetname");
		level thread function_ca5f1131(var_31a99ad4, "smoke_grenade_final_hallway1_start");
		wait(2);
		var_31a99ad4 = function_99201f25("server_room_enemy_hallway_final_ai", "targetname");
	}
	function_dbcb1086(3, 30, "hallway", "top_floor", "final_wave");
	namespace_d5067552::function_2992720d("server_room_fodder_manager_stairs");
	if(function_5b49d38c(level.var_c7a78bed))
	{
		level.var_c7a78bed waittill("hash_128f8789");
		level.var_c7a78bed namespace_69ee7109::function_94b1213d();
	}
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	wait(2);
	namespace_9f824288::function_5d2cdd99();
	level thread namespace_71b8dba1::function_a463d127("kane_download_complete_e_0");
	namespace_d5067552::function_2992720d("server_room_final_wave_manager");
	function_7ed3a33e();
	function_dbcb1086(0, 60, "window", "top_floor", "hallway", "final_wave");
	do
	{
		var_70369b18 = 0;
		var_56dd1913 = function_b8494651("axis");
		foreach(var_2eecd77a in var_56dd1913)
		{
			if(function_5b49d38c(var_2eecd77a))
			{
				if(var_2eecd77a.var_8fc0e50e === "human" || var_2eecd77a.var_8fc0e50e === "robot")
				{
					var_70369b18 = 1;
				}
			}
		}
		wait(0.05);
	}
	while(!var_70369b18);
	level notify("hash_fd7af6ca");
}

/*
	Name: function_229a8bc9
	Namespace: namespace_f5edec75
	Checksum: 0x29A655D4
	Offset: 0x7FD0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_229a8bc9()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self namespace_82b91a51::function_5b7e3888("goal", "near_goal");
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	var_2422bd4b = "cin_bio_10_01_serverroom_aie_breakin_enemy0" + self.var_8202763a;
	self namespace_cc27597::function_c35e6aab(var_2422bd4b, self);
	level waittill("hash_14bb5165");
	self namespace_cc27597::function_43718187(var_2422bd4b, self);
	level namespace_ad23e503::function_1ab5ebec("window_broken");
	self function_169cc712(function_6ada35ba("server_room_entrance_goal_volume", "targetname"));
}

/*
	Name: function_ca5f1131
	Namespace: namespace_f5edec75
	Checksum: 0xD66F53CD
	Offset: 0x8100
	Size: 0x1CD
	Parameters: 2
	Flags: None
*/
function function_ca5f1131(var_56dd1913, var_7bcec858)
{
	var_92792721 = function_c4d5ec1f("willy_pete_nd");
	var_aaeb38b0 = namespace_14b42b8a::function_7922262b(var_7bcec858, "targetname");
	var_c863acc3 = namespace_14b42b8a::function_7922262b(var_aaeb38b0.var_b07228b6, "targetname");
	var_b7ac748c = function_f679a325(var_c863acc3.var_722885f3 - var_aaeb38b0.var_722885f3) * 200;
	foreach(var_d84e54db in var_56dd1913)
	{
		if(function_5b49d38c(var_d84e54db) && function_2d525639(var_92792721))
		{
			var_c863acc3 namespace_5753664b::function_43718187("smoke_grenade", var_c863acc3.var_722885f3);
			break;
			continue;
		}
		var_c863acc3 namespace_5753664b::function_43718187("smoke_grenade", var_c863acc3.var_722885f3);
		break;
	}
}

/*
	Name: function_560d15cf
	Namespace: namespace_f5edec75
	Checksum: 0xEFB1610F
	Offset: 0x82D8
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_560d15cf()
{
	var_479db1f9 = namespace_14b42b8a::function_7922262b("warlord_smash", "targetname");
	function_37cbcf1a("evt_breach_warning", var_479db1f9.var_722885f3);
	wait(2);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_warlord_breach_01_bundle");
	function_5e09918e("cp_biodomes_server_room_breach_rumble", var_479db1f9.var_722885f3);
	namespace_d5067552::function_bae40a28("sm_server_room_riot_shield_breach");
	var_bfaffc0d = function_6ada35ba("server_koolaid", "targetname");
	var_bfaffc0d function_de8377bf();
	var_bfaffc0d function_dc8c8404();
	level thread namespace_71b8dba1::function_a463d127("kane_hostiles_breaching_t_0", 1);
}

/*
	Name: function_7ed3a33e
	Namespace: namespace_f5edec75
	Checksum: 0xF00783BB
	Offset: 0x8410
	Size: 0x1E1
	Parameters: 0
	Flags: None
*/
function function_7ed3a33e()
{
	var_e17601b = [];
	var_ca9eeae1 = namespace_2f06d687::function_289e6fd1("window");
	var_4ba8bf11 = namespace_2f06d687::function_289e6fd1("top_floor");
	var_ef02bf0d = namespace_2f06d687::function_289e6fd1("hallway");
	var_be5f20b9 = namespace_2f06d687::function_289e6fd1("final_wave");
	var_e17601b = function_525ae497(var_ca9eeae1, var_4ba8bf11, 1, 0);
	var_e17601b = function_525ae497(var_e17601b, var_ef02bf0d, 1, 0);
	var_e17601b = function_525ae497(var_e17601b, var_be5f20b9, 1, 0);
	var_57825414 = function_6ada35ba("server_room_window_goal_volume", "targetname");
	foreach(var_6050ab17 in var_e17601b)
	{
		var_6050ab17 function_169cc712(var_57825414, 1);
	}
}

/*
	Name: function_451e55d0
	Namespace: namespace_f5edec75
	Checksum: 0x3458B6AD
	Offset: 0x8600
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_451e55d0(var_190535de)
{
	var_190535de endon("hash_128f8789");
	var_190535de.var_c584775c = 1;
	var_7b6710fa = function_6ada35ba("server_room_window_goal_volume", "targetname");
	while(var_190535de function_32fa5072(var_7b6710fa) == 0)
	{
		wait(0.1);
		if(self function_1439c75a() == 0)
		{
			var_190535de function_169cc712(function_b4cb3503("server_window_node", "targetname"));
		}
	}
	var_190535de.var_c584775c = 0;
}

/*
	Name: function_7f9c1afd
	Namespace: namespace_f5edec75
	Checksum: 0xF04D0E91
	Offset: 0x86F0
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_7f9c1afd()
{
	self endon("hash_128f8789");
	var_bfbe03c6 = function_6ada35ba("server_room_entrance_goal_volume", "targetname");
	if(level namespace_ad23e503::function_7922262b("window_broken") == 0)
	{
		function_451e55d0(self);
		continue;
	}
	self function_169cc712(var_bfbe03c6);
	continue;
	while(level namespace_ad23e503::function_7922262b("window_broken") == 0)
	{
		var_68b2835f = function_e7bdc1a1(self.var_722885f3, level.var_2e1f1d9a);
		self namespace_d84e54db::function_d104c596("normal", var_68b2835f, undefined, 1);
		wait(1);
	}
	self function_169cc712(function_b4cb3503("server_room_goal", "targetname"), 0, 256);
	self namespace_82b91a51::function_5b7e3888("goal", "near_goal");
	self function_169cc712(var_bfbe03c6);
}

/*
	Name: function_d813e7f
	Namespace: namespace_f5edec75
	Checksum: 0xA0D08424
	Offset: 0x8880
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_d813e7f(var_74cd64bc)
{
	if(level namespace_cc27597::function_444aea32("cin_bio_09_02_accessdrives_1st_sever_end_loop"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_bio_09_02_accessdrives_1st_sever_end_loop");
	}
	level waittill("hash_d065fdd0");
	level.var_2fd26037 notify("hash_93bef291");
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037.var_c584775c = 1;
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
	level.var_2fd26037.var_7dfaf62 = 1;
	var_f18b8368 = namespace_14b42b8a::function_7922262b("hendricks_works_computer", "script_noteworthy");
	if(var_74cd64bc)
	{
		level thread function_a91388d2(1);
	}
	level.var_2fd26037 namespace_1d795d47::function_d9b1ee00(var_f18b8368);
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3);
	level thread namespace_cc27597::function_c35e6aab("cin_bio_10_01_serverroom_vign_hack_loop");
}

/*
	Name: function_9ed4c7c0
	Namespace: namespace_f5edec75
	Checksum: 0x3231AA83
	Offset: 0x8A10
	Size: 0x13F
	Parameters: 4
	Flags: None
*/
function function_9ed4c7c0(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("server_room_defend_done");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_defend_server_room", level.var_2fd26037);
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_mainobj_upload_data");
	var_603f4fb1 = function_6ada35ba("server_window", "targetname");
	if(isdefined(var_603f4fb1))
	{
		var_603f4fb1 function_dc8c8404();
	}
	if(level namespace_cc27597::function_444aea32("cin_bio_09_02_accessdrives_1st_sever_end_loop"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_bio_09_02_accessdrives_1st_sever_end_loop");
	}
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 function_e11ce512();
		level.var_2fd26037.var_7dfaf62 = 1024;
	}
}

/*
	Name: function_f5170df1
	Namespace: namespace_f5edec75
	Checksum: 0x3FFDE1EC
	Offset: 0x8B58
	Size: 0x39B
	Parameters: 1
	Flags: None
*/
function function_f5170df1(var_95456b04)
{
	self endon("hash_128f8789");
	var_7da22691 = function_6ada35ba(self.var_caae374e + "_l", "targetname");
	var_91c4d84f = function_6ada35ba(self.var_caae374e + "_r", "targetname");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 1;
	level thread function_8bf5e64e(var_95456b04);
	function_37cbcf1a("evt_elevator_ding", var_7da22691.var_722885f3);
	var_7da22691.var_92bda14 = var_7da22691.var_722885f3;
	var_91c4d84f.var_92bda14 = var_91c4d84f.var_722885f3;
	var_aa55666b = namespace_14b42b8a::function_7922262b(var_7da22691.var_b07228b6, "targetname");
	var_2bc53ed1 = namespace_14b42b8a::function_7922262b(var_91c4d84f.var_b07228b6, "targetname");
	var_7da22691.var_ee4758e4 = var_aa55666b.var_722885f3;
	var_91c4d84f.var_ee4758e4 = var_2bc53ed1.var_722885f3;
	var_7da22691 function_a96a2721(var_7da22691.var_ee4758e4, 1);
	var_91c4d84f function_a96a2721(var_91c4d84f.var_ee4758e4, 1);
	var_7da22691 waittill("hash_a21db68a");
	level thread function_c9d85cf6(self, var_7da22691, var_91c4d84f);
	var_c6342f3d = function_b4cb3503(self.var_b07228b6, "targetname");
	self function_169cc712(var_c6342f3d);
	function_524e3ee1(self);
	self namespace_d84e54db::function_b4f5e3b9(0);
	if(var_95456b04 == "cloudmountain")
	{
		self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
	}
	else
	{
		self namespace_82b91a51::function_5b7e3888("goal", "near_goal");
		self.var_7dfaf62 = 2048;
		self namespace_82b91a51::function_9fcf3cd8(5, "damage", "pain");
		var_67825717 = function_6ada35ba("server_room_entrance_goal_volume", "targetname");
		self function_169cc712(var_67825717);
	}
}

/*
	Name: function_40ff4c80
	Namespace: namespace_f5edec75
	Checksum: 0xD02579DB
	Offset: 0x8F00
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_40ff4c80()
{
	self endon("hash_128f8789");
	var_7da22691 = function_6ada35ba(self.var_caae374e + "_l", "targetname");
	var_91c4d84f = function_6ada35ba(self.var_caae374e + "_r", "targetname");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 1;
	var_7da22691 waittill("hash_a21db68a");
	wait(0.1);
	var_c6342f3d = function_b4cb3503(self.var_b07228b6, "targetname");
	self function_169cc712(var_c6342f3d, 0, 200);
	function_524e3ee1(self);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
}

/*
	Name: function_88e395d2
	Namespace: namespace_f5edec75
	Checksum: 0x737549F0
	Offset: 0x9070
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_88e395d2()
{
	var_5a7d265d = function_99201f25("turret_elevator_doors", "script_noteworthy");
	foreach(var_47eb21b2 in var_5a7d265d)
	{
		var_47eb21b2 function_de8377bf();
	}
	wait(0.5);
}

/*
	Name: function_8bf5e64e
	Namespace: namespace_f5edec75
	Checksum: 0x62BCCFDA
	Offset: 0x9138
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_8bf5e64e(var_95456b04)
{
	if(level namespace_ad23e503::function_7922262b("elevator_light_on_" + var_95456b04) == 0)
	{
		var_f05509e4 = 3;
		level namespace_ad23e503::function_74d6b22f("elevator_light_on_" + var_95456b04);
		if(var_95456b04 == "server_room")
		{
			namespace_80983c42::function_3ab4ff7d("objective_server_room_def_elevator_lights", var_f05509e4);
		}
		else if(var_95456b04 == "cloudmountain")
		{
			namespace_80983c42::function_3ab4ff7d("fx_cloudmt_elevator_1st_l", var_f05509e4);
		}
		wait(var_f05509e4);
		level namespace_ad23e503::function_9d134160("elevator_light_on_" + var_95456b04);
	}
}

/*
	Name: function_28931f52
	Namespace: namespace_f5edec75
	Checksum: 0x69A586BF
	Offset: 0x9230
	Size: 0x1ED
	Parameters: 0
	Flags: None
*/
function function_28931f52()
{
	namespace_2f06d687::function_22356ba7("server_room_enemy_swat1");
	if(level.var_2395e945.size > 2)
	{
		namespace_2f06d687::function_22356ba7("server_room_enemy_swat2");
	}
	var_c47e641c = function_6ada35ba("staging_area", "targetname");
	var_a7af994d = 0;
	while(var_a7af994d == 0)
	{
		wait(1);
		var_3635f2f4 = 0;
		var_13f4f150 = function_c20c2e8("server_room_enemy_swat1_ai", "targetname");
		var_aa5462d4 = var_13f4f150.size;
		foreach(var_d84e54db in var_13f4f150)
		{
			if(var_d84e54db function_32fa5072(var_c47e641c))
			{
				var_3635f2f4++;
			}
		}
		if(var_aa5462d4 < 4 || var_3635f2f4 >= var_aa5462d4 * 0.7)
		{
			var_a7af994d = 1;
		}
		if(var_3635f2f4 > 0 || var_a7af994d == 1)
		{
			level thread function_ca5f1131(var_13f4f150, "smoke_grenade_final_hallway2_start");
		}
	}
	level notify("hash_70f54e3");
}

/*
	Name: function_7b66a225
	Namespace: namespace_f5edec75
	Checksum: 0x1E91F3C
	Offset: 0x9428
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_7b66a225()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 1;
	var_c4d6a8bf = function_b4cb3503(self.var_b07228b6, "targetname");
	function_d224409e(var_c4d6a8bf);
	self function_169cc712(var_c4d6a8bf, 0, 1);
	level waittill("hash_70f54e3");
	var_ccb21e50 = function_fe0cfd2e("swat_node_" + self.var_caae374e, "targetname");
	var_aafc13f3 = namespace_84970cc4::function_47d18840(var_ccb21e50);
	self function_169cc712(var_aafc13f3, 0, 200);
	function_d224409e(var_c4d6a8bf, 0);
	self namespace_82b91a51::function_5b7e3888("goal", "pain", "near_goal", "damage");
	self function_169cc712(self.var_722885f3, 0, 512);
}

/*
	Name: function_d2bb2597
	Namespace: namespace_f5edec75
	Checksum: 0xF9418C14
	Offset: 0x95A0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d2bb2597()
{
	var_57825414 = function_6ada35ba("server_room_entrance_goal_volume", "targetname");
	self function_169cc712(var_57825414);
}

/*
	Name: function_13ed10e0
	Namespace: namespace_f5edec75
	Checksum: 0x877202BC
	Offset: 0x95F8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_13ed10e0()
{
	self endon("hash_128f8789");
	var_77b2d567 = namespace_14b42b8a::function_7922262b("top_floor_door");
	self function_169cc712(var_77b2d567.var_722885f3, 0, 100);
	self waittill("hash_41d1aaf0");
	if(level namespace_ad23e503::function_7922262b("top_floor_breached") == 0)
	{
		if(!level namespace_cc27597::function_367f8966("p7_fxanim_gp_door_broken_open_01_bundle"))
		{
			level thread namespace_cc27597::function_43718187("p7_fxanim_gp_door_broken_open_01_bundle");
		}
		var_f2c7e89 = function_6ada35ba("top_floor_door_clip", "targetname");
		if(isdefined(var_f2c7e89))
		{
			function_5e09918e("cp_biodomes_server_room_top_floor_door_rumble", var_f2c7e89.var_722885f3);
			var_f2c7e89 function_dc8c8404();
		}
		level namespace_ad23e503::function_1ab5ebec("top_floor_breached");
	}
	self function_169cc712(function_6ada35ba("server_room_entrance_goal_volume", "targetname"));
}

/*
	Name: function_564d6426
	Namespace: namespace_f5edec75
	Checksum: 0xC42B9F39
	Offset: 0x9790
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_564d6426()
{
	level waittill("hash_1ca4dee3");
	level namespace_ad23e503::function_74d6b22f("top_floor_breached");
}

/*
	Name: function_963807b1
	Namespace: namespace_f5edec75
	Checksum: 0x4A72E460
	Offset: 0x97C8
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function function_963807b1()
{
	level endon("hash_6a76551d");
	level notify("hash_14bb5165");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_server_room_window_break_01_bundle");
	level waittill("hash_53ff6d53");
	var_603f4fb1 = function_6ada35ba("server_window", "targetname");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a namespace_82b91a51::function_4ccc8ec5(var_603f4fb1, 0.3))
		{
			var_5dc5e20a thread namespace_71b8dba1::function_13b3b16a("plyr_shit_they_re_blowin_0", 0.25);
		}
	}
	level waittill("hash_578006af");
	level namespace_ad23e503::function_74d6b22f("window_broken");
	if(isdefined(var_603f4fb1))
	{
		function_9cf04c2e(1, 1, var_603f4fb1.var_722885f3, 1000);
		function_5e09918e("cp_biodomes_server_room_window_rumble", var_603f4fb1.var_722885f3);
		var_603f4fb1 function_dc8c8404();
	}
	level thread namespace_27a45d31::function_a22e7052(1, "server_room_window_mantle", "script_noteworthy");
	level waittill("hash_99d5298d");
	wait(1);
	level thread function_72d7b33c();
	level thread namespace_71b8dba1::function_a463d127("kane_hostiles_ziplining_i_0");
}

/*
	Name: function_72d7b33c
	Namespace: namespace_f5edec75
	Checksum: 0x2A08D178
	Offset: 0x9A10
	Size: 0x2FD
	Parameters: 0
	Flags: None
*/
function function_72d7b33c()
{
	level endon("hash_6a76551d");
	level.var_1a0f3432 = 0;
	namespace_2f06d687::function_22356ba7("server_room_enemy_rope2_guy1", &function_dde40552);
	wait(function_62e4226e(0.5));
	namespace_2f06d687::function_22356ba7("server_room_enemy_rope1_guy1", &function_dde40552);
	wait(function_72a94f05(1, 4));
	namespace_2f06d687::function_22356ba7("server_room_enemy_rope2_guy2", &function_dde40552);
	wait(function_62e4226e(0.5));
	namespace_2f06d687::function_22356ba7("server_room_enemy_rope1_guy2", &function_dde40552);
	wait(function_72a94f05(1, 4));
	namespace_2f06d687::function_22356ba7("server_room_enemy_rope2_guy3", &function_dde40552);
	wait(function_62e4226e(0.5));
	namespace_2f06d687::function_22356ba7("server_room_enemy_rope1_guy3", &function_dde40552);
	if(level.var_2395e945.size > 2)
	{
		wait(function_72a94f05(1, 3));
		namespace_2f06d687::function_22356ba7("server_room_enemy_rope2_guy1", &function_dde40552);
		wait(function_62e4226e(0.5));
		namespace_2f06d687::function_22356ba7("server_room_enemy_rope1_guy1", &function_dde40552);
		wait(function_72a94f05(1, 3));
		namespace_2f06d687::function_22356ba7("server_room_enemy_rope2_guy2", &function_dde40552);
		wait(function_62e4226e(0.5));
		namespace_2f06d687::function_22356ba7("server_room_enemy_rope1_guy2", &function_dde40552);
	}
	namespace_2f06d687::function_c6ffd13e("top_floor", &function_d2bb2597);
	namespace_d5067552::function_bae40a28("server_room_topfloor_fodder_manager");
	level notify("hash_b4a4fe67");
	wait(10);
	level notify("hash_4551b516");
}

/*
	Name: function_dde40552
	Namespace: namespace_f5edec75
	Checksum: 0x95B45CA1
	Offset: 0x9D18
	Size: 0x3AF
	Parameters: 0
	Flags: None
*/
function function_dde40552()
{
	self endon("hash_128f8789");
	var_4e03b768 = namespace_14b42b8a::function_7922262b("vtol_dropoff_" + self.var_caae374e);
	var_c574fec8 = namespace_14b42b8a::function_7922262b("vtol_landing_" + self.var_caae374e);
	self function_9869ab67(var_4e03b768.var_722885f3, var_4e03b768.var_6ab6f4fd);
	var_c312dab9 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_4e03b768.var_722885f3, var_4e03b768.var_6ab6f4fd);
	var_c312dab9 thread namespace_cc27597::function_43718187("cin_gen_traversal_zipline_enemy02_idle", self);
	var_b39127dd = namespace_82b91a51::function_b9fd52a4("wpn_t7_zipline_trolley_prop", self function_d48f2ab3("tag_weapon_left"), self function_cd1d99bd("tag_weapon_left"));
	var_b39127dd function_37f7858a(self, "tag_weapon_left");
	self thread function_e87de176(function_84970cc4(var_c312dab9, var_b39127dd));
	var_ccd4343c = function_7d15e2f8(var_4e03b768.var_722885f3, var_c574fec8.var_722885f3);
	var_78962fff = var_ccd4343c / 500;
	var_c312dab9 function_a96a2721(var_c574fec8.var_722885f3, var_78962fff);
	var_c312dab9 function_c2931a36("evt_vtol_npc_move");
	self thread function_f879ebc4(var_c312dab9);
	var_c312dab9 waittill("hash_a21db68a");
	var_c312dab9 function_eaa69754(0.5);
	var_c312dab9 function_921a1574("evt_vtol_npc_detach");
	var_e5642e86 = function_eed6dab7(var_c312dab9.var_722885f3, 100, 48);
	if(isdefined(var_e5642e86))
	{
		var_c312dab9 function_a96a2721(var_e5642e86, 0.25);
	}
	var_c312dab9 namespace_cc27597::function_43718187("cin_gen_traversal_zipline_enemy02_dismount", self);
	self notify("hash_4d91a838");
	self function_52fddbd0();
	namespace_82b91a51::function_76f13293();
	var_c312dab9 function_dc8c8404();
	var_b39127dd function_dc8c8404();
	self function_169cc712(function_6ada35ba("server_room_entrance_goal_volume", "targetname"));
	level waittill("hash_fd7af6ca");
}

/*
	Name: function_f879ebc4
	Namespace: namespace_f5edec75
	Checksum: 0x8AFA3A3A
	Offset: 0xA0D0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_f879ebc4(var_c312dab9)
{
	var_c312dab9 endon("hash_a21db68a");
	self waittill("hash_128f8789");
	var_c312dab9 function_eaa69754(0.5);
}

/*
	Name: function_e87de176
	Namespace: namespace_f5edec75
	Checksum: 0xDC6E22DF
	Offset: 0xA120
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_e87de176(var_4ca5dd1f)
{
	self endon("hash_4d91a838");
	self waittill("hash_128f8789");
	namespace_769dc23f::function_72f8596b();
	self function_52fddbd0();
	self function_d7a0a9d8(1);
	foreach(var_aa10fce8 in var_4ca5dd1f)
	{
		var_aa10fce8 function_dc8c8404();
	}
}

/*
	Name: function_c81145c2
	Namespace: namespace_f5edec75
	Checksum: 0xEEEDD195
	Offset: 0xA218
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_c81145c2()
{
	self namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
}

/*
	Name: function_6a4cb712
	Namespace: namespace_f5edec75
	Checksum: 0xE6F13E08
	Offset: 0xA250
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6a4cb712()
{
	self namespace_d84e54db::function_ceb883cd("move_mode", "rusher");
}

/*
	Name: function_4df7264d
	Namespace: namespace_f5edec75
	Checksum: 0x8557EB50
	Offset: 0xA288
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4df7264d()
{
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	namespace_82b91a51::function_564f2d81("goal", "damage");
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
}

/*
	Name: function_c9d85cf6
	Namespace: namespace_f5edec75
	Checksum: 0x16E41DC3
	Offset: 0xA2F8
	Size: 0xD3
	Parameters: 3
	Flags: None
*/
function function_c9d85cf6(var_9ae72db, var_7da22691, var_91c4d84f)
{
	level namespace_ad23e503::function_1ab5ebec(var_9ae72db.var_caae374e + "_cleared");
	var_7da22691 function_a96a2721(var_7da22691.var_92bda14, 1);
	var_91c4d84f function_a96a2721(var_91c4d84f.var_92bda14, 1);
	var_7da22691 waittill("hash_a21db68a");
	var_7da22691 function_14c24d9d();
	var_91c4d84f function_14c24d9d();
}

/*
	Name: function_524e3ee1
	Namespace: namespace_f5edec75
	Checksum: 0xDDC644C5
	Offset: 0xA3D8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_524e3ee1(var_9ae72db)
{
	var_9ae72db endon("hash_128f8789");
	var_3f69ee40 = function_6ada35ba(var_9ae72db.var_caae374e + "_elevator_trigger", "targetname");
	while(var_9ae72db function_32fa5072(var_3f69ee40) || namespace_82b91a51::function_f08b9be6(var_3f69ee40, "allies"))
	{
		wait(0.5);
	}
}

/*
	Name: function_6f311542
	Namespace: namespace_f5edec75
	Checksum: 0x72EB2F89
	Offset: 0xA488
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_6f311542()
{
	var_b05a0766 = function_6ada35ba("lobby_elevator_door_01_l", "targetname");
	var_c3cad8fd = function_6ada35ba("lobby_elevator_door_01_r", "targetname");
	var_b05a0766 function_14c24d9d();
	var_c3cad8fd function_14c24d9d();
}

/*
	Name: function_dbcb1086
	Namespace: namespace_f5edec75
	Checksum: 0xF844D9D3
	Offset: 0xA520
	Size: 0x213
	Parameters: 6
	Flags: None
*/
function function_dbcb1086(var_fc05da5a, var_3eac426f, var_32af39a0, var_a4b6a8db, var_7eb42e72, var_f0bb9dad)
{
	wait(1);
	if(isdefined(var_f0bb9dad))
	{
		while(var_3eac426f > 0 && namespace_2f06d687::function_41e09b9(var_32af39a0) + namespace_2f06d687::function_41e09b9(var_a4b6a8db) + namespace_2f06d687::function_41e09b9(var_7eb42e72) + namespace_2f06d687::function_41e09b9(var_f0bb9dad) > var_fc05da5a)
		{
			wait(1);
			var_3eac426f = var_3eac426f - 1;
		}
		break;
	}
	if(isdefined(var_7eb42e72))
	{
		while(var_3eac426f > 0 && namespace_2f06d687::function_41e09b9(var_32af39a0) + namespace_2f06d687::function_41e09b9(var_a4b6a8db) + namespace_2f06d687::function_41e09b9(var_7eb42e72) > var_fc05da5a)
		{
			wait(1);
			var_3eac426f = var_3eac426f - 1;
		}
		break;
	}
	if(isdefined(var_a4b6a8db))
	{
		while(var_3eac426f > 0 && namespace_2f06d687::function_41e09b9(var_32af39a0) + namespace_2f06d687::function_41e09b9(var_a4b6a8db) > var_fc05da5a)
		{
			wait(1);
			var_3eac426f = var_3eac426f - 1;
		}
		break;
	}
	while(var_3eac426f > 0 && namespace_2f06d687::function_41e09b9(var_32af39a0) > var_fc05da5a)
	{
		wait(1);
		var_3eac426f = var_3eac426f - 1;
	}
	wait(3);
}

/*
	Name: function_947a1ae8
	Namespace: namespace_f5edec75
	Checksum: 0xA11DFA95
	Offset: 0xA740
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_947a1ae8()
{
	self endon("hash_128f8789");
	var_67825717 = function_6ada35ba(self.var_b07228b6, "targetname");
	self function_169cc712(var_67825717, 1);
}

