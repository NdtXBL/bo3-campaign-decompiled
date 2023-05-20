#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_plaza_battle;
#using scripts\cp\cp_mi_zurich_coalescence_zurich_sacrifice;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_b73b0f52;

/*
	Name: function_9c1fc2fd
	Namespace: namespace_b73b0f52
	Checksum: 0x37C96F76
	Offset: 0xF08
	Size: 0x473
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_c35e6aab("hq_decon_deactivated");
	level namespace_ad23e503::function_c35e6aab("hq_locker_room_open");
	level namespace_ad23e503::function_c35e6aab("hq_lmg_robots_destroyed");
	namespace_2f06d687::function_2b37a3c9("hq_turrets", "script_noteworthy", &function_5268b119);
	namespace_2f06d687::function_2b37a3c9("hq_stairs_robots_spawn_manager_guy", "targetname", &function_b87db3a3);
	namespace_2f06d687::function_2b37a3c9("hq_lmg_robots", "script_noteworthy", &function_b6d67e55);
	namespace_2f06d687::function_2b37a3c9("hq_defend_robots_spawn_manager_guy", "targetname", &function_56de520f);
	namespace_2f06d687::function_2b37a3c9("hq_stairs_siegebot", "targetname", &function_3b671c19);
	namespace_2f06d687::function_2b37a3c9("hq_elevator_siegebot", "targetname", &function_e877afeb);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_8e9083ff::function_da579a5d(var_b04bc952, 0);
		level thread function_44ee5cb7();
		namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle", &namespace_8e9083ff::function_162b9ea0, "init");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_coalescence_tower_door_open_bundle");
		level namespace_71e9cb84::function_74d6b22f("hq_amb", 1);
		namespace_d7916d65::function_a2995f22();
	}
	if(isdefined(level.var_f2c0d73))
	{
		level thread [[level.var_f2c0d73]]();
	}
	level thread namespace_67110270::function_ce97ecac();
	function_bab1ff00("hq_entrance_umbra_gate", 1);
	var_306008cd = namespace_8e9083ff::function_b0dd51f4("hq_iff_override_robots", "script_string");
	level.var_3d556bcd thread function_87324847();
	namespace_80983c42::function_67e7a937("streets_tower_wasp_swarm");
	level thread function_371b16ae();
	level thread function_f8e4b283();
	level thread function_c5e1700c();
	level thread namespace_8e9083ff::function_2361541e("hq");
	level thread namespace_8e9083ff::function_c049667c(1);
	level thread function_f05c4095();
	level thread function_4cf537aa();
	level thread function_9006ed1d();
	level thread function_68b74f29();
	level thread function_c198b862();
	namespace_9f824288::function_5d2cdd99();
	level thread function_19d7c072();
	level thread function_51e389ee(var_74cd64bc);
	level function_457da6c2();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_44ee5cb7
	Namespace: namespace_b73b0f52
	Checksum: 0x194AFD98
	Offset: 0x1388
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_44ee5cb7()
{
	level endon("hash_c8ab51de");
	while(1)
	{
		wait(1);
		function_37cbcf1a("amb_troop_alarm", (-8326, 37739, 559));
	}
}

/*
	Name: function_1a4dfaaa
	Namespace: namespace_b73b0f52
	Checksum: 0xEBB41828
	Offset: 0x13D8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_1a4dfaaa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_8e9083ff::function_4d032f25(0);
}

/*
	Name: function_68b74f29
	Namespace: namespace_b73b0f52
	Checksum: 0x67CCF0F7
	Offset: 0x1420
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_68b74f29()
{
	level.var_3d556bcd thread function_2436a71e();
	level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_this_is_the_heart_of_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_it_won_t_come_to_tha_0", 1);
	level namespace_ad23e503::function_1ab5ebec("flag_hq_security_room_clear");
	level.var_3d556bcd namespace_71b8dba1::function_81141386("kane_how_could_hendricks_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_i_don_t_think_there_0", 1);
}

/*
	Name: function_c198b862
	Namespace: namespace_b73b0f52
	Checksum: 0xD9F280B3
	Offset: 0x1508
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_c198b862()
{
	namespace_8e9083ff::function_1b3dfa61("enter_facility_vo_struct_trig", undefined, 256);
	level namespace_71b8dba1::function_13b3b16a("plyr_it_s_just_like_in_si_0");
}

/*
	Name: function_2436a71e
	Namespace: namespace_b73b0f52
	Checksum: 0x5C5AF85F
	Offset: 0x1558
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2436a71e()
{
	self function_fbb2cef(namespace_14b42b8a::function_7922262b("hq_kane_lookat_pos").var_722885f3);
	wait(4);
	self function_fbb2cef();
}

/*
	Name: function_19d7c072
	Namespace: namespace_b73b0f52
	Checksum: 0xF1A96A55
	Offset: 0x15B0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_19d7c072()
{
	var_e26726e5 = function_6ada35ba("hq_atrium_door_01", "targetname");
	var_e26726e5.var_489b2980 = var_e26726e5.var_722885f3;
	var_9a7f401d = function_6ada35ba("hq_atrium_door_02", "targetname");
	var_9a7f401d.var_489b2980 = var_9a7f401d.var_722885f3;
	var_e09dab06 = function_6ada35ba("hq_atrium_door_clip", "targetname");
	var_e26726e5 function_a96a2721(var_e26726e5.var_722885f3 + VectorScale((0, 0, 1), 44), 0.5);
	var_9a7f401d function_a96a2721(var_9a7f401d.var_722885f3 + VectorScale((0, 0, -1), 44), 0.5);
	var_9a7f401d waittill("hash_a21db68a");
	var_e09dab06 function_422037f5();
	var_e09dab06 function_de8377bf();
	namespace_4dbf3ae3::function_1ab5ebec("hq_exit_zone_trig");
	var_e26726e5 function_a96a2721(var_e26726e5.var_489b2980, 0.05);
	var_9a7f401d function_a96a2721(var_9a7f401d.var_489b2980, 0.05);
	var_e09dab06 function_4083a98e();
	var_e09dab06 function_14c24d9d();
}

/*
	Name: function_f05c4095
	Namespace: namespace_b73b0f52
	Checksum: 0x2DED8329
	Offset: 0x17C8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_f05c4095()
{
	level thread function_6c64938e();
	namespace_4dbf3ae3::function_1ab5ebec("trig_hq_robots_start");
	level thread namespace_67110270::function_232f4de7();
	namespace_d5067552::function_bae40a28("hq_defend_robots_spawn_manager");
	namespace_d5067552::function_347e835a("hq_stairs_robots_spawn_manager");
	level namespace_ad23e503::function_1ab5ebec("hq_lmg_robots_destroyed");
	namespace_d5067552::function_72e3dd35("hq_stairs_robots_spawn_manager");
	level namespace_ad23e503::function_74d6b22f("flag_hq_security_room_move_upstairs");
	namespace_d5067552::function_72e3dd35("hq_defend_robots_spawn_manager");
	level namespace_ad23e503::function_74d6b22f("flag_hq_security_room_clear");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_4cf537aa
	Namespace: namespace_b73b0f52
	Checksum: 0xCB2DFD0E
	Offset: 0x18F0
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_4cf537aa()
{
	level namespace_ad23e503::function_1ab5ebec("flag_hq_siege_bot_encounter_start");
	namespace_d5067552::function_bae40a28("hq_stairs_siegebot_spawn_manager");
	namespace_d5067552::function_347e835a("hq_stairs_siegebot_spawn_manager");
	namespace_84970cc4::function_966ecb29(namespace_d5067552::function_423eae50("hq_stairs_siegebot_spawn_manager"), &function_47e79f7);
	level namespace_ad23e503::function_1ab5ebec("flag_start_elevator_siege_bot");
	namespace_d5067552::function_bae40a28("hq_elevator_siegebot_spawn_manager");
	namespace_d5067552::function_347e835a("hq_elevator_siegebot_spawn_manager");
	level function_66b77465();
	namespace_84970cc4::function_966ecb29(namespace_d5067552::function_423eae50("hq_elevator_siegebot_spawn_manager"), &function_47e79f7);
	namespace_d5067552::function_72e3dd35("hq_elevator_siegebot_spawn_manager");
	namespace_d5067552::function_72e3dd35("hq_stairs_siegebot_spawn_manager");
	namespace_9f824288::function_5d2cdd99();
	namespace_d5067552::function_bae40a28("hq_robots_lab_reinforcement_spawn_manager");
	level namespace_ad23e503::function_74d6b22f("flag_hq_siege_bot_dead");
	namespace_d5067552::function_347e835a("hq_robots_lab_reinforcement_spawn_manager");
	level thread function_e6db4b20();
	namespace_d5067552::function_72e3dd35("hq_robots_lab_reinforcement_spawn_manager");
	level thread namespace_67110270::function_bb8ce831();
	level namespace_ad23e503::function_74d6b22f("flag_hq_move_to_airlock");
}

/*
	Name: function_457da6c2
	Namespace: namespace_b73b0f52
	Checksum: 0x57C0E88A
	Offset: 0x1B20
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_457da6c2()
{
	level namespace_ad23e503::function_74d6b22f("hq_locker_room_open");
	level thread function_2950b33d();
	namespace_4dbf3ae3::function_1ab5ebec("hq_exit_zone_trig");
	level waittill("hash_7871b80b");
}

/*
	Name: function_9006ed1d
	Namespace: namespace_b73b0f52
	Checksum: 0xB5644F1F
	Offset: 0x1B88
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_9006ed1d()
{
	namespace_84970cc4::function_966ecb29(function_99201f25("trig_hq_break_glass", "targetname"), &function_187d0cba);
}

/*
	Name: function_187d0cba
	Namespace: namespace_b73b0f52
	Checksum: 0xDF62ED95
	Offset: 0x1BD8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_187d0cba()
{
	level endon("hash_13a0547d");
	self waittill("hash_4dbf3ae3", var_65669d7b);
	var_65669d7b namespace_82b91a51::function_ef82abcf(200);
}

/*
	Name: function_6c64938e
	Namespace: namespace_b73b0f52
	Checksum: 0x33F31C48
	Offset: 0x1C28
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_6c64938e()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_hq_robots_start");
	for(var_c957f6b6 = 1; var_c957f6b6 < 3; var_c957f6b6++)
	{
		var_6a2c8ee9 = function_99201f25("security_checkpoint_door_0" + var_c957f6b6, "targetname");
		foreach(var_530f952d in var_6a2c8ee9)
		{
			if(isdefined(var_530f952d.var_b07228b6))
			{
				var_73c9db2b = namespace_14b42b8a::function_7922262b(var_530f952d.var_b07228b6, "targetname");
				var_530f952d function_a96a2721(var_73c9db2b.var_722885f3, 1.5);
				var_530f952d thread function_eaedd1eb();
			}
		}
		wait(3);
	}
}

/*
	Name: function_eaedd1eb
	Namespace: namespace_b73b0f52
	Checksum: 0xC06FAAE6
	Offset: 0x1DB8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_eaedd1eb()
{
	namespace_4dbf3ae3::function_1ab5ebec("hq_exit_zone_trig");
	self function_dc8c8404();
}

/*
	Name: function_66b77465
	Namespace: namespace_b73b0f52
	Checksum: 0x5C2C9C5A
	Offset: 0x1DF8
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_66b77465()
{
	var_f2c7e89 = function_6ada35ba("siegebot_elevator_door", "targetname");
	var_f2c7e89 function_8bdea13c(140, 3);
	var_f2c7e89 function_921a1574("evt_siegebot_elevator_door");
	var_f2c7e89 thread function_a8bf6ebc();
	var_f2c7e89 waittill("hash_a21db68a");
	level notify("hash_99b0e05f");
}

/*
	Name: function_a8bf6ebc
	Namespace: namespace_b73b0f52
	Checksum: 0x9028CE7F
	Offset: 0x1EA8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a8bf6ebc()
{
	namespace_4dbf3ae3::function_1ab5ebec("hq_exit_zone_trig");
	self function_dc8c8404();
}

/*
	Name: function_51e389ee
	Namespace: namespace_b73b0f52
	Checksum: 0xDA3AF1BF
	Offset: 0x1EE8
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_51e389ee(var_74cd64bc)
{
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_apprehend_obj");
	namespace_d0ef8521::function_45d1556("hq_security_approach_breadcrumb_trigger");
	level function_196e4f52();
	level namespace_ad23e503::function_1ab5ebec("flag_hq_siege_bot_dead");
	namespace_d0ef8521::function_45d1556("hq_lab_exit_breadcrumb_trig");
	namespace_d0ef8521::function_45d1556("hq_locker_room_breadcrumb_trig");
	namespace_d0ef8521::function_45d1556("hq_decon_breadcrumb_trig");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("flag_hq_set_sacrifice_obj", "sacrifice_kane_activation_ready"));
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_apprehend_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_use_terminal_obj");
}

/*
	Name: function_196e4f52
	Namespace: namespace_b73b0f52
	Checksum: 0x99F29EAC
	Offset: 0x2010
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_196e4f52()
{
	level endon("hash_ad88abee");
	level namespace_ad23e503::function_1ab5ebec("flag_hq_security_room_move_upstairs");
	namespace_d0ef8521::function_45d1556("hq_lab_approach_breadcrumb_trig");
}

/*
	Name: function_47e79f7
	Namespace: namespace_b73b0f52
	Checksum: 0xB50330FF
	Offset: 0x2060
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_47e79f7()
{
	namespace_d0ef8521::function_50ccee8d("cp_level_zurich_apprehend_obj");
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_destroy_pawws_obj", self);
	namespace_d0ef8521::function_74d6b22f("cp_level_zurich_low_destroy", self);
	self waittill("hash_128f8789");
	namespace_d0ef8521::function_66c6f97b("cp_level_zurich_destroy_pawws_obj", self);
	namespace_d0ef8521::function_31cd1834("cp_level_zurich_low_destroy", self);
	namespace_d0ef8521::function_48f26766("cp_level_zurich_apprehend_obj");
}

/*
	Name: function_c5e1700c
	Namespace: namespace_b73b0f52
	Checksum: 0x884BF8A6
	Offset: 0x2110
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_c5e1700c()
{
	function_6ada35ba("trig_zurich_hq_door_hack", "targetname") function_e68ee88a("HINT_NOICON");
}

/*
	Name: function_e2ca7f8f
	Namespace: namespace_b73b0f52
	Checksum: 0x525ADF50
	Offset: 0x2158
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e2ca7f8f()
{
	var_5cca3f31 = function_6ada35ba("trig_zurich_hq_door_hack", "targetname");
	var_5cca3f31 namespace_8e9083ff::function_d1996775();
	level function_e6db4b20();
	level namespace_ad23e503::function_74d6b22f("flag_hq_hack_door_open");
}

/*
	Name: function_e6db4b20
	Namespace: namespace_b73b0f52
	Checksum: 0x184D3819
	Offset: 0x21E0
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_e6db4b20()
{
	var_adad709 = function_6ada35ba("hq_siegebot_exitdoor", "targetname");
	var_adad709.var_489b2980 = var_adad709.var_722885f3;
	var_adad709.var_491bc153 = var_adad709.var_722885f3 + VectorScale((0, 0, 1), 128);
	var_d6628508 = 2;
	var_adad709 function_921a1574("evt_decon_door_open");
	var_adad709 function_a96a2721(var_adad709.var_491bc153, var_d6628508);
	var_adad709 thread function_45d5a571();
	wait(var_d6628508 / 2);
}

/*
	Name: function_45d5a571
	Namespace: namespace_b73b0f52
	Checksum: 0x492AD9D1
	Offset: 0x22D8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_45d5a571()
{
	namespace_4dbf3ae3::function_1ab5ebec("hq_exit_zone_trig");
	self function_dc8c8404();
}

/*
	Name: function_2950b33d
	Namespace: namespace_b73b0f52
	Checksum: 0x96D88223
	Offset: 0x2318
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_2950b33d()
{
	level thread function_ae937789();
	level namespace_ad23e503::function_1ab5ebec("hq_decon_active");
	level namespace_71e9cb84::function_74d6b22f("decon_spray", 1);
	wait(12);
	level function_3319c9ae();
	level namespace_ad23e503::function_74d6b22f("flag_decon_door_open");
	level namespace_71e9cb84::function_74d6b22f("decon_spray", 0);
	level namespace_68404a06::function_d3eae9b7();
}

/*
	Name: function_ae937789
	Namespace: namespace_b73b0f52
	Checksum: 0x34360400
	Offset: 0x23F0
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_ae937789()
{
	var_adad709 = function_6ada35ba("hq_decon_door_entrance", "targetname");
	var_d874dcf = function_6ada35ba("hq_decon_door_entrance_clip", "targetname");
	var_d874dcf function_422037f5();
	level namespace_ad23e503::function_1ab5ebec("hq_decon_active");
	var_d874dcf function_4083a98e();
	var_adad709 function_8bdea13c(-86, 2);
	var_adad709 function_921a1574("evt_decon_door_close");
	wait(2);
	namespace_d5067552::function_2992720d("hq_stairs_robots_spawn_manager", 1);
	var_24bbf032 = function_b8494651();
	namespace_84970cc4::function_966ecb29(var_24bbf032, &namespace_8e9083ff::function_48463818);
	level notify("hash_7871b80b");
}

/*
	Name: function_3319c9ae
	Namespace: namespace_b73b0f52
	Checksum: 0x7563F763
	Offset: 0x2568
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_3319c9ae()
{
	var_adad709 = function_6ada35ba("hq_decon_door", "targetname");
	var_adad709.var_489b2980 = var_adad709.var_722885f3;
	var_adad709.var_491bc153 = var_adad709.var_722885f3 + VectorScale((0, 0, 1), 128);
	var_d6628508 = 2;
	var_adad709 function_921a1574("evt_decon_door_open");
	var_adad709 function_a96a2721(var_adad709.var_491bc153, var_d6628508);
}

/*
	Name: function_b52a0060
	Namespace: namespace_b73b0f52
	Checksum: 0x4B98673C
	Offset: 0x2640
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b52a0060()
{
	var_adad709 = function_6ada35ba("hq_decon_door", "targetname");
	var_adad709 function_921a1574("evt_decon_door_close");
	var_adad709 function_a96a2721(var_adad709.var_489b2980, 0.5);
}

/*
	Name: function_8cb99e45
	Namespace: namespace_b73b0f52
	Checksum: 0xAE950EAF
	Offset: 0x26C0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_8cb99e45()
{
	var_107d713c = function_6ada35ba("hq_decon_door", "targetname");
	var_2049505e = function_6ada35ba("hq_decon_door_entrance", "targetname");
	var_d874dcf = function_6ada35ba("hq_decon_door_entrance_clip", "targetname");
	var_107d713c function_dc8c8404();
	var_2049505e function_dc8c8404();
	var_d874dcf function_dc8c8404();
}

/*
	Name: function_b87db3a3
	Namespace: namespace_b73b0f52
	Checksum: 0x680ADA65
	Offset: 0x27A0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_b87db3a3()
{
	self endon("hash_128f8789");
	self endon("hash_63f76929");
	self thread function_ee7e8dd7();
	if(isdefined(self.var_caae374e))
	{
		for(var_c957f6b6 = 1; var_c957f6b6 < 3; var_c957f6b6++)
		{
			if(self.var_caae374e == "security_robot_0" + var_c957f6b6)
			{
				self waittill("hash_41d1aaf0");
				self namespace_d84e54db::function_90d3ed43("security_room_attack_node_0" + var_c957f6b6, "targetname");
			}
		}
	}
}

/*
	Name: function_b6d67e55
	Namespace: namespace_b73b0f52
	Checksum: 0xE5B109B4
	Offset: 0x2860
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_b6d67e55()
{
	if(!isdefined(level.var_64f4feb8))
	{
		level.var_64f4feb8 = 0;
	}
	self waittill("hash_128f8789");
	level.var_64f4feb8++;
	if(level.var_64f4feb8 == 2)
	{
		level namespace_ad23e503::function_74d6b22f("hq_lmg_robots_destroyed");
	}
}

/*
	Name: function_56de520f
	Namespace: namespace_b73b0f52
	Checksum: 0xB2F39724
	Offset: 0x28C8
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_56de520f()
{
	self endon("hash_128f8789");
	self endon("hash_63f76929");
	self thread function_ee7e8dd7();
	if(isdefined(self.var_caae374e))
	{
		for(var_c957f6b6 = 1; var_c957f6b6 < 3; var_c957f6b6++)
		{
			if(self.var_caae374e == "security_defend_robot_0" + var_c957f6b6)
			{
				level namespace_ad23e503::function_1ab5ebec("flag_hq_security_room_move_upstairs");
				self namespace_d84e54db::function_90d3ed43("security_room_defend_node_0" + var_c957f6b6, "script_noteworthy");
			}
		}
	}
}

/*
	Name: function_ee7e8dd7
	Namespace: namespace_b73b0f52
	Checksum: 0xD6A788AB
	Offset: 0x2990
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_ee7e8dd7()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("trig_move_to_lab");
	self notify("hash_63f76929");
	self namespace_d84e54db::function_90d3ed43("hq_lab_defend_volume", "targetname");
}

/*
	Name: function_3b671c19
	Namespace: namespace_b73b0f52
	Checksum: 0x452DFFAC
	Offset: 0x29F0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_3b671c19()
{
	level endon("hash_ae9347d9");
	if(level.var_2395e945.size < 3)
	{
		var_78a0d7c6 = self.var_3a90f16b / 2;
		while(self.var_3a90f16b > var_78a0d7c6)
		{
			wait(1);
		}
	}
	else
	{
		self waittill("hash_128f8789");
	}
	level namespace_ad23e503::function_74d6b22f("flag_start_elevator_siege_bot");
}

/*
	Name: function_e877afeb
	Namespace: namespace_b73b0f52
	Checksum: 0x494C013F
	Offset: 0x2A88
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e877afeb()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_cc27597::function_c35e6aab("cin_zur_02_001_siegebot_elevator_entrance", self);
	level waittill("hash_99b0e05f");
	self namespace_cc27597::function_43718187("cin_zur_02_001_siegebot_elevator_entrance", self);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_5268b119
	Namespace: namespace_b73b0f52
	Checksum: 0xD6F45F5E
	Offset: 0x2B40
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_5268b119()
{
	self thread function_4c300990();
}

/*
	Name: function_4c300990
	Namespace: namespace_b73b0f52
	Checksum: 0x332C6C6B
	Offset: 0x2B68
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_4c300990()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_175490fb::function_59965309("cybercom_hijack");
}

/*
	Name: function_e9914039
	Namespace: namespace_b73b0f52
	Checksum: 0x8C4282CF
	Offset: 0x2BB0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e9914039()
{
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_175490fb::function_a1f70a02("cybercom_hijack");
}

/*
	Name: function_348d993a
	Namespace: namespace_b73b0f52
	Checksum: 0x5C7D45AB
	Offset: 0x2BF8
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function function_348d993a()
{
	var_f765f588 = self;
	if(!function_6e2770d8(self))
	{
		var_f765f588 = function_84970cc4(self);
	}
	var_53acb497 = [];
	foreach(var_f074d981 in var_f765f588)
	{
		var_53acb497[var_4bc288a0] = namespace_2f06d687::function_7387a40a(var_f074d981);
		var_53acb497[var_4bc288a0] thread function_661dadea();
		wait(0.05);
	}
	return var_53acb497;
}

/*
	Name: function_661dadea
	Namespace: namespace_b73b0f52
	Checksum: 0x2D2D980
	Offset: 0x2D10
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_661dadea()
{
	self endon("hash_128f8789");
	var_f7da2b48 = 0.3;
	var_12cf56f6 = 1.3;
	var_39178da3 = function_72a94f05(var_f7da2b48, var_12cf56f6);
	var_c26efe11 = 2;
	self.var_61ba68c8 = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	self.var_61ba68c8.var_ff1f6868 = self.var_ff1f6868;
	var_265380bb = namespace_14b42b8a::function_7922262b(self.var_b07228b6);
	self function_37f7858a(self.var_61ba68c8, "tag_origin");
	self.var_61ba68c8 function_a96a2721(var_265380bb.var_722885f3, var_c26efe11);
	self.var_61ba68c8 waittill("hash_a21db68a");
	wait(var_39178da3);
	self function_e9914039();
}

/*
	Name: function_525e4268
	Namespace: namespace_b73b0f52
	Checksum: 0x92BD22AC
	Offset: 0x2E78
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_525e4268()
{
	var_53acb497 = self;
	if(!function_6e2770d8(self))
	{
		var_53acb497 = function_84970cc4(self);
	}
	foreach(var_b8f9a884 in self)
	{
		if(function_5b49d38c(var_b8f9a884))
		{
			var_b8f9a884.var_3e3a41eb = 1;
			var_b8f9a884 notify("hash_128f8789");
			if(!function_5b49d38c(var_b8f9a884))
			{
				var_b8f9a884 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_87324847
	Namespace: namespace_b73b0f52
	Checksum: 0x5FFF067C
	Offset: 0x2FA0
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function function_87324847()
{
	self thread function_f3b250de();
	self namespace_d84e54db::function_ceb883cd("forceTacticalWalk", 1);
	self function_156339b6(function_b4cb3503("plaza_battle_kane_lobby_node", "targetname"));
	wait(3);
	self namespace_6f7b2095::function_1b497663("r");
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_start");
	level namespace_ad23e503::function_1ab5ebec("flag_hq_kane_enter_security_room");
	self namespace_d84e54db::function_ceb883cd("forceTacticalWalk", 0);
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_lobby");
	level namespace_ad23e503::function_1ab5ebec("flag_hq_robots_start");
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_lobby_fight");
	level function_ee4479b3();
	level namespace_ad23e503::function_43ac000b(function_84970cc4("flag_hq_security_room_clear", "flag_hq_passed_turrets"));
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_siege_bot_fight");
	level namespace_ad23e503::function_1ab5ebec("flag_hq_siege_bot_dead");
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_siege_bot_fight_done");
	level namespace_ad23e503::function_43ac000b(function_84970cc4("flag_hq_move_to_airlock", "flag_hq_move_kane_to_locker_room"));
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_door_hack");
	self namespace_76d95162::function_d9f49fba(0);
	if(level namespace_ad23e503::function_7922262b("flag_hq_move_kane_to_locker_room"))
	{
		wait(1);
	}
	else
	{
		level namespace_ad23e503::function_1ab5ebec("flag_hq_move_kane_to_locker_room");
	}
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_decon");
	level namespace_ad23e503::function_1ab5ebec("flag_hq_move_kane_into_decon");
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_in_decon");
	level namespace_ad23e503::function_1ab5ebec("flag_decon_door_open");
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_lab_interior");
}

/*
	Name: function_ee4479b3
	Namespace: namespace_b73b0f52
	Checksum: 0x89A84EA5
	Offset: 0x32A8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ee4479b3()
{
	level endon("hash_ad88abee");
	level endon("hash_f95b7888");
	level namespace_ad23e503::function_1ab5ebec("flag_hq_security_room_move_upstairs");
	namespace_4dbf3ae3::function_42e87952("trig_color_kane_hq_security_room_upstairs");
}

/*
	Name: function_f3b250de
	Namespace: namespace_b73b0f52
	Checksum: 0x3A74B1CF
	Offset: 0x3300
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f3b250de()
{
	level namespace_ad23e503::function_1ab5ebec("flag_hq_set_kane_ignoreall");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
}

/*
	Name: function_371b16ae
	Namespace: namespace_b73b0f52
	Checksum: 0x4FCF3DB4
	Offset: 0x3360
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_371b16ae()
{
	namespace_8e9083ff::function_1b3dfa61("hq_start_ravens_struct_trig", undefined, 600, 512);
	function_37cbcf1a("mus_coalescence_theme_lobby", (-8698, 38395, 594));
}

/*
	Name: function_f8e4b283
	Namespace: namespace_b73b0f52
	Checksum: 0x5CC79A3A
	Offset: 0x33B8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_f8e4b283()
{
	level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle_eating_raven", &namespace_8e9083ff::function_e547724d, "init");
	level namespace_cc27597::function_8f9f34e0("cin_gen_ambient_raven_idle", &namespace_8e9083ff::function_e547724d, "init");
	level namespace_cc27597::function_8f9f34e0("cin_gen_traversal_raven_fly_away", &namespace_8e9083ff::function_86b1cd8a);
	level thread function_762c95f0("hq_start_ravens", 600, 512);
	level thread function_762c95f0("hq_locker_room_ravens", 466, 128);
	level thread function_6e7da34e();
}

/*
	Name: function_762c95f0
	Namespace: namespace_b73b0f52
	Checksum: 0xA637EFA6
	Offset: 0x34B8
	Size: 0x289
	Parameters: 3
	Flags: None
*/
function function_762c95f0(var_af782668, var_4d9cdec3, var_9895c1a4)
{
	namespace_8e9083ff::function_1b3dfa61(var_af782668 + "_struct_trig", undefined, var_4d9cdec3, var_9895c1a4);
	var_575a3d6e = namespace_14b42b8a::function_7faf4c39(var_af782668);
	foreach(var_1cbcb46d in var_575a3d6e)
	{
		var_1cbcb46d namespace_82b91a51::function_67520c6a(function_62e4226e(0.15), undefined, &namespace_cc27597::function_43718187);
	}
	wait(0.5);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_688ed188, "postfx_hallucinations", 1);
	wait(0.5);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_e216c11c::function_25294cfe("visionset", "cp_zurich_hallucination", var_5dc5e20a);
	}
	wait(1.8);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_e216c11c::function_a5218027("visionset", "cp_zurich_hallucination", var_5dc5e20a);
	}
}

/*
	Name: function_6e7da34e
	Namespace: namespace_b73b0f52
	Checksum: 0xEC60EBBA
	Offset: 0x3750
	Size: 0x313
	Parameters: 0
	Flags: None
*/
function function_6e7da34e()
{
	var_575a3d6e = namespace_14b42b8a::function_7faf4c39("hq_airlock_ravens");
	namespace_84970cc4::function_966ecb29(var_575a3d6e, &namespace_cc27597::function_c35e6aab);
	level namespace_ad23e503::function_1ab5ebec("hq_decon_active");
	wait(7);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_688ed188, "postfx_hallucinations", 1);
	wait(0.8);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_e216c11c::function_25294cfe("visionset", "cp_zurich_hallucination", var_5dc5e20a);
	}
	level notify("hash_755edaa4");
	foreach(var_1cbcb46d in var_575a3d6e)
	{
		var_1cbcb46d namespace_82b91a51::function_67520c6a(function_62e4226e(1), undefined, &namespace_cc27597::function_43718187);
	}
	level namespace_ad23e503::function_1ab5ebec("flag_decon_door_open");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_688ed188, "postfx_hallucinations", 1);
	wait(0.8);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		namespace_e216c11c::function_a5218027("visionset", "cp_zurich_hallucination", var_5dc5e20a);
	}
	wait(0.5);
	namespace_84970cc4::function_966ecb29(var_575a3d6e, &namespace_cc27597::function_fcf56ab5);
}

