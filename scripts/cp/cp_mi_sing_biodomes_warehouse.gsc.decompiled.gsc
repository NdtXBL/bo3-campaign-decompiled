#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_squad_control;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_markets;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai\warlord;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_siegebot;

#namespace namespace_23646cee;

/*
	Name: function_3a3ef2a
	Namespace: namespace_23646cee
	Checksum: 0xD47420C9
	Offset: 0x13D0
	Size: 0x3FB
	Parameters: 0
	Flags: None
*/
function function_3a3ef2a()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_3460d45c();
	}
	level function_2d153737();
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	level.var_2fd26037.var_7dfaf62 = 200;
	level namespace_cc27597::function_c35e6aab("cin_bio_05_02_warehouse_aie_activate");
	level thread function_d1e71c2c();
	namespace_2f06d687::function_2b37a3c9("warehouse_left_waiting", "script_noteworthy", &function_e7b0cb8e);
	namespace_2f06d687::function_2b37a3c9("robot_warehouse_high", "script_string", &function_9bf4e185);
	namespace_2f06d687::function_2b37a3c9("warehouse_container_shooter", "targetname", &function_ac9359ee);
	namespace_2f06d687::function_2b37a3c9("wasps_warehouse", "script_noteworthy", &function_d3621fb);
	namespace_2f06d687::function_2b37a3c9("warehouse_enemy_warlord", "targetname", &function_4940548b);
	var_3d912af2 = function_99201f25("spawn_trigger", "script_parameters");
	namespace_84970cc4::function_966ecb29(var_3d912af2, &function_26edc5d7);
	wait(0.5);
	level thread function_cc539146();
	level thread function_54ba2021();
	level thread function_16ff311a();
	level thread function_b1942036();
	level thread function_652f488c();
	level thread function_f18853d0();
	level thread function_ecf3cf41();
	level thread function_afee5825();
	level thread function_3c56dee4();
	level thread function_2a08e741();
	level thread function_6fb5d6ef();
	level.var_2fd26037 thread function_d02d38d();
	level.var_2fd26037 thread function_c2f6ee2c("right");
	level.var_2fd26037 thread function_c2f6ee2c("left");
	namespace_27a45d31::function_a22e7052(0, "warehouse_robot_exit_traversal", "targetname");
	namespace_4dbf3ae3::function_1ab5ebec("trig_back_door_close");
	level function_4812aaa();
}

/*
	Name: function_f7046c76
	Namespace: namespace_23646cee
	Checksum: 0x99EC1590
	Offset: 0x17D8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
}

/*
	Name: function_98f8d85b
	Namespace: namespace_23646cee
	Checksum: 0x5FC9B82
	Offset: 0x17E8
	Size: 0x2AB
	Parameters: 2
	Flags: None
*/
function function_98f8d85b(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_warehouse_init");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_warehouse"));
	namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		namespace_55d2f1be::function_cef897cf(var_b04bc952);
		level thread namespace_27a45d31::function_753a859(var_b04bc952);
		namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_cloud_mountain");
		namespace_4dbf3ae3::function_42e87952("trig_markets2_colors_end_2");
		namespace_84970cc4::function_7e64f710(function_99201f25("triggers_markets1", "script_noteworthy"));
		namespace_84970cc4::function_7e64f710(function_99201f25("triggers_markets2", "script_noteworthy"));
		level thread namespace_f1b4cbbc::function_fa2e45b8();
		level thread namespace_27a45d31::function_cc20e187("markets2");
		level thread namespace_27a45d31::function_cc20e187("warehouse", 1);
		var_6ecc8f2b = function_6ada35ba("markets2_bridge_collision", "targetname");
		var_6ecc8f2b function_dc8c8404();
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_27a45d31::function_cc20e187("cloudmountain", 1);
	level.var_996e05eb = "friendly_spawns_warehouse_entrance";
	function_9e3608e3("fxanim_markets1");
	function_9e3608e3("fxanim_nursery");
	function_6ddd4fa4("fxanim_cloud_mountain");
	namespace_73fc8448::function_dbb91fcf();
	level thread function_3a3ef2a();
}

/*
	Name: function_4d15fa71
	Namespace: namespace_23646cee
	Checksum: 0x4F77DD0E
	Offset: 0x1AA0
	Size: 0x91
	Parameters: 4
	Flags: None
*/
function function_4d15fa71(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("objective_warehouse_done");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("breadcrumb_warehouse"));
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_cloud_mountain");
	level notify("hash_43a6ada4");
}

/*
	Name: function_5e699ca2
	Namespace: namespace_23646cee
	Checksum: 0x3121969F
	Offset: 0x1B40
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_5e699ca2(var_b04bc952, var_74cd64bc)
{
	level thread function_79241926(var_b04bc952, 2);
}

/*
	Name: function_9989cb45
	Namespace: namespace_23646cee
	Checksum: 0xFE59C37
	Offset: 0x1B80
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_9989cb45(var_b04bc952, var_74cd64bc)
{
	level thread function_79241926(var_b04bc952, 1);
}

/*
	Name: function_79241926
	Namespace: namespace_23646cee
	Checksum: 0x1A840C83
	Offset: 0x1BC0
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_79241926(var_b04bc952, var_23d9a41a)
{
	namespace_27a45d31::function_bff1a867(var_b04bc952);
	level namespace_55d2f1be::function_cef897cf(var_b04bc952, var_23d9a41a);
	level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
	wait(2);
	namespace_2f06d687::function_22356ba7("warehouse_enemy_warlord", &function_dfbb625c);
	level namespace_ad23e503::function_74d6b22f("warehouse_warlord");
	level thread namespace_71e9cb84::function_74d6b22f("warehouse_window_break", 1);
	function_6ada35ba("warehouse_overwatch_window", "targetname") function_dc8c8404();
	var_bd0f35c = namespace_14b42b8a::function_7922262b("warehouse_surprise");
	function_9cf04c2e(0.25, 0.5, var_bd0f35c.var_722885f3, 1200);
	namespace_27a45d31::function_a22e7052(0, "warehouse_robot_exit_traversal", "targetname");
	level function_4812aaa();
}

/*
	Name: function_dfbb625c
	Namespace: namespace_23646cee
	Checksum: 0xCA5D91E9
	Offset: 0x1D70
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_dfbb625c()
{
	self.var_3a90f16b = 100;
	self waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("warehouse_warlord_dead");
	level namespace_ad23e503::function_74d6b22f("sm_warehouse_enemy_warlord_manager_cleared");
}

/*
	Name: function_d02d38d
	Namespace: namespace_23646cee
	Checksum: 0xBB673989
	Offset: 0x1DD8
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_d02d38d()
{
	level namespace_ad23e503::function_1ab5ebec("warehouse_wasps");
	if(isdefined(level.var_80a07074))
	{
		level thread [[level.var_80a07074]]();
	}
}

/*
	Name: function_16ff311a
	Namespace: namespace_23646cee
	Checksum: 0x1EBBD9
	Offset: 0x1E20
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_16ff311a()
{
	level waittill("hash_54ba2021");
	level namespace_d5067552::function_72e3dd35("sm_warehouse_robot_jumpdown");
	if(!level namespace_ad23e503::function_7922262b("left_path") && !level namespace_ad23e503::function_7922262b("right_path") && !level namespace_ad23e503::function_7922262b("center_path"))
	{
		level namespace_ad23e503::function_74d6b22f("warehouse_intro_vo_started");
		level thread function_1050699d();
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_which_way_do_we_go_0");
		level namespace_71b8dba1::function_a463d127("kane_your_call_both_end_0");
		namespace_76d95162::function_d9f49fba(1);
		level namespace_ad23e503::function_43ac000b(function_84970cc4("left_path", "right_path", "center_path"));
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_get_to_clou_0", 2);
		namespace_76d95162::function_d9f49fba(1);
	}
	level namespace_ad23e503::function_74d6b22f("warehouse_intro_vo_done");
}

/*
	Name: function_1050699d
	Namespace: namespace_23646cee
	Checksum: 0xA21382F9
	Offset: 0x1FE0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1050699d()
{
	level endon("hash_6794c924");
	level endon("hash_13ba8371");
	level endon("hash_9aade370");
	wait(14);
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "hend_what_s_the_plan_lef_0";
	var_2d3d7b7[1] = "hend_c_mon_we_gotta_move_0";
	level.var_2fd26037 namespace_71b8dba1::function_81141386(namespace_27a45d31::function_7ff50323(var_2d3d7b7));
}

/*
	Name: function_2a08e741
	Namespace: namespace_23646cee
	Checksum: 0xFC1FD080
	Offset: 0x2078
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2a08e741()
{
	level endon("hash_e85e589a");
	level namespace_ad23e503::function_1ab5ebec("xiulan_loudspeaker_go");
	namespace_d5067552::function_bae40a28("warehouse_right_rear_runners");
}

/*
	Name: function_9bf4e185
	Namespace: namespace_23646cee
	Checksum: 0x62AAB753
	Offset: 0x20C8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_9bf4e185()
{
	self endon("hash_128f8789");
	var_3c54858a = function_b4cb3503(self.var_b07228b6, "targetname");
	if(isdefined(var_3c54858a))
	{
		self thread namespace_d84e54db::function_19e98020(var_3c54858a, 36, 1, "goal", 1, 1);
	}
	self thread function_9ec04302();
}

/*
	Name: function_9ec04302
	Namespace: namespace_23646cee
	Checksum: 0x520752BF
	Offset: 0x2160
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_9ec04302()
{
	self endon("hash_128f8789");
	self endon("hash_a3a542bc");
	var_994792b4 = function_99201f25("trig_robot_jump_landing", "script_noteworthy");
	while(1)
	{
		foreach(var_4dbf3ae3 in var_994792b4)
		{
			if(self function_32fa5072(var_4dbf3ae3))
			{
				if(var_4dbf3ae3.var_170527fb === "trig_warehouse_robot_landing_left")
				{
					namespace_80983c42::function_80983c42("fx_warehouse_robot_jmp_dust_l");
				}
				else if(var_4dbf3ae3.var_170527fb === "trig_warehouse_robot_landing_right")
				{
					namespace_80983c42::function_80983c42("fx_warehouse_robot_jmp_dust_r");
				}
				self notify("hash_a3a542bc");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_afee5825
	Namespace: namespace_23646cee
	Checksum: 0x588ABFE7
	Offset: 0x22D0
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_afee5825()
{
	level namespace_ad23e503::function_1ab5ebec("container_drop");
	var_2122e778 = namespace_14b42b8a::function_7922262b("phalanx_warehouse_left_start").var_722885f3;
	var_7d0099f5 = namespace_14b42b8a::function_7922262b("phalanx_warehouse_left_end").var_722885f3;
	var_e1f76987 = namespace_14b42b8a::function_7922262b("phalanx_warehouse_right_start").var_722885f3;
	var_25d2a1d8 = namespace_14b42b8a::function_7922262b("phalanx_warehouse_right_end").var_722885f3;
	var_1b6ee6b2 = 1;
	if(level.var_2395e945.size >= 3)
	{
		var_1b6ee6b2 = 2;
	}
	function_9b385ca5();
	var_52fcc5ab = var_3bc9e3b7;
	function_e6cab0ff(var_52fcc5ab, "phanalx_wedge", var_2122e778, var_7d0099f5, 2);
	function_9b385ca5();
	var_1a84f71e = var_3bc9e3b7;
	function_e6cab0ff(var_1a84f71e, "phanalx_wedge", var_e1f76987, var_25d2a1d8, 2);
}

/*
	Name: function_3c56dee4
	Namespace: namespace_23646cee
	Checksum: 0xDD4AE11B
	Offset: 0x2470
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_3c56dee4()
{
	level endon("hash_9aade370");
	var_adc17f12 = [];
	var_adc17f12[0] = "xiulan_loudspeaker_go";
	if(level namespace_ad23e503::function_7922262b("warehouse_intro_vo_started"))
	{
		var_adc17f12[1] = "warehouse_intro_vo_done";
	}
	namespace_ad23e503::function_8870cfa8(var_adc17f12);
	var_f2fa33f7 = function_99201f25("so_xiulan_warehouse_loudspeaker", "targetname");
	foreach(var_ea519684 in var_f2fa33f7)
	{
		if(var_4bc288a0 == var_f2fa33f7.size - 1)
		{
			var_ea519684 namespace_71b8dba1::function_81141386("xiul_loyal_immortals_thi_0", 0, 1);
			continue;
		}
		var_ea519684 thread namespace_71b8dba1::function_81141386("xiul_loyal_immortals_thi_0", 0, 1);
	}
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_bitch_really_is_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_you_shot_her_brother_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_i_should_have_shot_h_0");
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_d3621fb
	Namespace: namespace_23646cee
	Checksum: 0x3DF8AE8E
	Offset: 0x2670
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_d3621fb()
{
	self endon("hash_128f8789");
	self namespace_72ee5da4::function_81b6f1ac();
	var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
	self thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
	self waittill("hash_6cf6ac7e");
	var_c55dcd82 = self function_8790dc2e(self.var_722885f3, 1024);
	var_c55dcd82 = (var_c55dcd82[0], var_c55dcd82[1], var_c55dcd82[2] + function_dc99997a(0, 72));
	if(isdefined(var_c55dcd82))
	{
		self function_c985552d(var_c55dcd82, 0);
		self waittill("hash_41d1aaf0");
	}
	var_67825717 = undefined;
	if(self.var_3d2183f2 == "wasps_warehouse_left")
	{
		var_67825717 = function_6ada35ba("volume_warehouse_wasps_left", "targetname");
	}
	else if(self.var_3d2183f2 == "wasps_warehouse_right")
	{
		var_67825717 = function_6ada35ba("volume_warehouse_wasps_right", "targetname");
	}
	self namespace_72ee5da4::function_efe9815e("combat");
	if(isdefined(var_67825717))
	{
		self function_169cc712(var_67825717, 1);
	}
}

/*
	Name: function_6fb5d6ef
	Namespace: namespace_23646cee
	Checksum: 0x9CC97847
	Offset: 0x2860
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6fb5d6ef()
{
	level endon("hash_652f488c");
	namespace_4dbf3ae3::function_39cd87a2("trig_warehouse_friendly_spawns_left", "trig_warehouse_friendly_spawns_right");
	level.var_996e05eb = "friendly_spawns_warehouse_corner";
}

/*
	Name: function_26edc5d7
	Namespace: namespace_23646cee
	Checksum: 0x1DB571AD
	Offset: 0x28A8
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function function_26edc5d7()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_78080f8f);
		if(isdefined(var_78080f8f.var_5e36fd2e) && function_65f192a6(var_78080f8f.var_5e36fd2e) || function_65f192a6(var_78080f8f))
		{
			break;
		}
	}
	var_694b7da = self.var_db7bb468;
	switch(var_694b7da)
	{
		case "spawner":
		{
			var_28c25ffb = self.var_caae374e;
			namespace_2f06d687::function_22356ba7(var_28c25ffb);
			break;
		}
		case "spawn_manager":
		{
			namespace_d5067552::function_bae40a28(self.var_caae374e, 1);
			break;
		}
	}
}

/*
	Name: function_c2f6ee2c
	Namespace: namespace_23646cee
	Checksum: 0xDAC9BA4
	Offset: 0x29C0
	Size: 0x223
	Parameters: 1
	Flags: None
*/
function function_c2f6ee2c(var_c11c02b4)
{
	if(var_c11c02b4 == "right")
	{
		level endon("hash_6794c924");
	}
	else
	{
		level endon("hash_13ba8371");
	}
	level namespace_4dbf3ae3::function_1ab5ebec("trig_hero_sprint_" + var_c11c02b4);
	if(level namespace_ad23e503::function_7922262b("warehouse_intro_vo_done"))
	{
		level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_moving_up_cover_me_1");
	}
	var_ea49a5c9 = namespace_2f06d687::function_7387a40a("warehouse_hero_target_" + var_c11c02b4);
	var_ea49a5c9 namespace_d84e54db::function_c9e45d52(1);
	var_ea49a5c9 namespace_d84e54db::function_ceb883cd("can_become_rusher", 0);
	var_ea49a5c9.var_7dfaf62 = 8;
	var_ea49a5c9 endon("hash_128f8789");
	level thread namespace_cc27597::function_c35e6aab("scene_warehouse_hendricks_jump_" + var_c11c02b4, "targetname", function_84970cc4(level.var_2fd26037, var_ea49a5c9));
	level namespace_4dbf3ae3::function_1ab5ebec("trig_hero_moment_" + var_c11c02b4);
	if(function_5b49d38c(var_ea49a5c9))
	{
		var_ea49a5c9 thread function_2b42cba3("scene_warehouse_hendricks_jump_" + var_c11c02b4);
		level namespace_cc27597::function_43718187("scene_warehouse_hendricks_jump_" + var_c11c02b4, "targetname", function_84970cc4(level.var_2fd26037, var_ea49a5c9));
	}
	level.var_2fd26037 function_e11ce512();
}

/*
	Name: function_2b42cba3
	Namespace: namespace_23646cee
	Checksum: 0xB06A2040
	Offset: 0x2BF0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_2b42cba3(var_294306eb)
{
	self waittill("hash_128f8789");
	level namespace_cc27597::function_fcf56ab5(var_294306eb);
}

/*
	Name: function_89e35d86
	Namespace: namespace_23646cee
	Checksum: 0x2523A330
	Offset: 0x2C30
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_89e35d86()
{
	level namespace_ad23e503::function_43ac000b(function_84970cc4("warehouse_warlord_dead", "warehouse_warlord_retreated"));
	if(isdefined(level.var_fd93406f))
	{
		level thread [[level.var_fd93406f]]();
	}
	level thread namespace_f1b4cbbc::function_973b77f9();
	namespace_d0ef8521::function_48f26766("cp_waypoint_breadcrumb");
	level thread namespace_36171bd3::function_9c52a47e("pry_door");
	level namespace_71b8dba1::function_a463d127("kane_the_robots_should_be_0", 2);
	level waittill("hash_24ac1796");
	level namespace_ad23e503::function_74d6b22f("back_door_opened");
	level function_cb52a73();
	level function_1b03da0e();
}

/*
	Name: function_cb52a73
	Namespace: namespace_23646cee
	Checksum: 0xF2EAB5CB
	Offset: 0x2D50
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_cb52a73()
{
	level.var_2fd26037 function_e11ce512();
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	level.var_2fd26037.var_7dfaf62 = 400;
	if(namespace_ad23e503::function_7922262b("cloudmountain_siegebots_dead"))
	{
		namespace_4dbf3ae3::function_42e87952("trig_hendricks_lobby_entrance_colors", "targetname");
	}
	else
	{
		namespace_4dbf3ae3::function_42e87952("trig_siegebot_hendricks_b0", "targetname");
	}
}

/*
	Name: function_1b03da0e
	Namespace: namespace_23646cee
	Checksum: 0xAC363859
	Offset: 0x2E08
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_1b03da0e()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a notify("hash_f4ef75a1");
	}
	foreach(var_f6c5842 in level.var_641fcd9c)
	{
		if(function_5b49d38c(var_f6c5842))
		{
			var_f6c5842 function_e11ce512();
			var_f6c5842 namespace_82b91a51::function_4b741fdc();
			var_f6c5842 namespace_d84e54db::function_ceb883cd("move_mode", "normal");
			var_f6c5842 namespace_d84e54db::function_ceb883cd("sprint", 1);
			var_f6c5842 function_169cc712(function_6ada35ba("back_door_goal_volume", "targetname"));
		}
	}
}

/*
	Name: function_ac9359ee
	Namespace: namespace_23646cee
	Checksum: 0xD0ED502D
	Offset: 0x2FC8
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_ac9359ee()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_6df4950e = 80;
	self function_169cc712(function_6ada35ba("volume_wasps_warehouse_crate_shooters", "targetname"), 1);
	namespace_82b91a51::function_958c7633(self);
	self namespace_82b91a51::function_c9aa1ff("goal", 2);
	var_377a9c22 = function_6ada35ba("container_target", "targetname");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self thread namespace_d84e54db::function_d104c596("normal", var_377a9c22, "tag_origin", 2);
	level namespace_ad23e503::function_d266a8b4(3, "container_drop");
	level namespace_ad23e503::function_74d6b22f("container_drop");
	namespace_82b91a51::function_4b741fdc(self);
	level namespace_ad23e503::function_43ac000b(function_84970cc4("left_path", "right_path", "center_path"));
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	if(level namespace_ad23e503::function_7922262b("left_path"))
	{
		self function_169cc712(function_6ada35ba("warehouse_goal_volume_back_left", "targetname"));
	}
	else if(level namespace_ad23e503::function_7922262b("right_path"))
	{
		self function_169cc712(function_6ada35ba("warehouse_goal_volume_back_right", "targetname"));
	}
	else if(level namespace_ad23e503::function_7922262b("center_path"))
	{
		self function_169cc712(function_6ada35ba("warehouse_crate_shooters_center_goal", "targetname"));
	}
}

/*
	Name: function_54ba2021
	Namespace: namespace_23646cee
	Checksum: 0xF490B69A
	Offset: 0x32C0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_54ba2021()
{
	level waittill("hash_54ba2021");
	level namespace_ad23e503::function_74d6b22f("container_done");
}

/*
	Name: function_cc539146
	Namespace: namespace_23646cee
	Checksum: 0xACDD6B28
	Offset: 0x32F8
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_cc539146()
{
	var_7954a18f = function_6ada35ba("container_drop_clip", "targetname");
	var_d76c34c9 = function_6ada35ba("container_pre_drop_clip", "targetname");
	var_7954a18f function_de8377bf();
	level namespace_ad23e503::function_1ab5ebec("container_drop");
	namespace_d5067552::function_bae40a28("sm_warehouse_robot_jumpdown");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_container_collapse_bundle");
	level thread function_5491de58();
	level waittill("hash_ae902056");
	var_d76c34c9 function_dc8c8404();
	level thread function_1636c832();
	var_7954a18f function_14c24d9d();
	wait(0.25);
	var_bd0f35c = namespace_14b42b8a::function_7922262b("container_crash");
	function_37cbcf1a("evt_warlord_door_smash", var_bd0f35c.var_722885f3);
	function_5e09918e("cp_biodomes_warehouse_container_rumble", var_bd0f35c.var_722885f3);
}

/*
	Name: function_5491de58
	Namespace: namespace_23646cee
	Checksum: 0x26777C1B
	Offset: 0x34B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_5491de58()
{
	level namespace_71b8dba1::function_a463d127("kane_woah_get_out_of_t_0");
	level namespace_71b8dba1::function_a463d127("kane_tracking_enemy_units_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_tell_me_something_i_0");
	level namespace_71b8dba1::function_a463d127("kane_i_ve_located_a_backd_0", 1);
	namespace_76d95162::function_d9f49fba(1);
	namespace_d0ef8521::function_48f26766("cp_waypoint_breadcrumb");
}

/*
	Name: function_1636c832
	Namespace: namespace_23646cee
	Checksum: 0x4368109
	Offset: 0x3570
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_1636c832()
{
	var_61a19dc6 = function_b8494651("allies");
	var_7954a18f = function_6ada35ba("container_drop_clip", "targetname");
	function_81403b2f(var_61a19dc6, level.var_2fd26037);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_61a19dc6.size; var_c957f6b6++)
	{
		if(var_61a19dc6[var_c957f6b6] function_32fa5072(var_7954a18f))
		{
			namespace_82b91a51::function_4b741fdc(var_61a19dc6[var_c957f6b6]);
			var_61a19dc6[var_c957f6b6] function_2992720d();
		}
	}
	var_61a19dc6 = [];
}

/*
	Name: function_c06efd40
	Namespace: namespace_23646cee
	Checksum: 0x481EC7F7
	Offset: 0x3680
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_c06efd40()
{
	self endon("hash_128f8789");
	self function_169cc712(self.var_722885f3, 1, 1);
	level namespace_ad23e503::function_1ab5ebec("container_done");
	self namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
	var_c6342f3d = function_b4cb3503(self.var_b07228b6, "targetname");
	self function_169cc712(var_c6342f3d, 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("move_mode", "normal");
	wait(10);
	self function_169cc712(self.var_722885f3, 0, 1200);
}

/*
	Name: function_c366df47
	Namespace: namespace_23646cee
	Checksum: 0x8B6C4287
	Offset: 0x37A8
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_c366df47(var_ffa6bda7)
{
	var_799e4c3a = function_6ada35ba(var_ffa6bda7, "targetname");
	if(isdefined(var_799e4c3a))
	{
		var_799e4c3a namespace_ad23e503::function_c35e6aab("glass_broken");
		while(isdefined(var_799e4c3a) && var_799e4c3a namespace_ad23e503::function_7922262b("glass_broken") == 0)
		{
			var_799e4c3a namespace_4dbf3ae3::function_1ab5ebec();
			if(!function_65f192a6(var_799e4c3a.var_aef176e7) || (function_65f192a6(var_799e4c3a.var_aef176e7) && var_799e4c3a.var_aef176e7 function_f3b38c23()))
			{
				function_be97adee(var_799e4c3a.var_722885f3, 100, 500, 500);
				var_799e4c3a namespace_ad23e503::function_74d6b22f("glass_broken");
			}
			wait(0.05);
		}
		if(isdefined(var_799e4c3a))
		{
			var_799e4c3a function_dc8c8404();
		}
	}
}

/*
	Name: function_d1e71c2c
	Namespace: namespace_23646cee
	Checksum: 0x4CD3A1CF
	Offset: 0x3938
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_d1e71c2c()
{
	level endon("hash_6794c924");
	level endon("hash_9aade370");
	level namespace_ad23e503::function_1ab5ebec("right_path");
	level namespace_cc27597::function_c35e6aab("cin_bio_05_02_warehouse_vign_forklift_move");
	namespace_4dbf3ae3::function_1ab5ebec("forklift_vignette_start");
	level namespace_cc27597::function_43718187("cin_bio_05_02_warehouse_vign_forklift_move");
}

/*
	Name: function_f18853d0
	Namespace: namespace_23646cee
	Checksum: 0x64B77CED
	Offset: 0x39D0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_f18853d0()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_warehouse_objective_complete");
	namespace_1d795d47::function_be8adfb8("objective_warehouse");
}

/*
	Name: function_ecf3cf41
	Namespace: namespace_23646cee
	Checksum: 0xA813710F
	Offset: 0x3A10
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_ecf3cf41()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_back_door_group");
	namespace_2f06d687::function_22356ba7(function_99201f25("back_door_enemy", "script_aigroup"));
	function_6ada35ba("back_door_look_trigger", "script_noteworthy") function_175e6b8e(1);
}

/*
	Name: function_4812aaa
	Namespace: namespace_23646cee
	Checksum: 0xBF85284B
	Offset: 0x3AA0
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_4812aaa()
{
	level.var_e6a85ae8 = function_6ada35ba("cloudmountain_door_upper", "targetname");
	level.var_7f103643 = function_6ada35ba("cloudmountain_door_lower", "targetname");
	level.var_e6a85ae8.var_ba7fc287 = level.var_e6a85ae8.var_722885f3;
	level.var_7f103643.var_ba7fc287 = level.var_7f103643.var_722885f3;
	level.var_e6a85ae8 function_8bdea13c(-40, 2);
	level.var_7f103643 function_8bdea13c(60, 2);
	level.var_e6a85ae8 function_921a1574("evt_warehouse_door_close_start");
	level.var_e6a85ae8 function_c2931a36("evt_warehouse_door_close_loop", 1);
	level.var_7f103643 waittill("hash_a21db68a");
	level.var_e6a85ae8 function_921a1574("evt_warehouse_door_close_stop");
	level.var_e6a85ae8 function_eaa69754(0.5);
	level namespace_ad23e503::function_74d6b22f("back_door_closed");
	var_60f8f46f = function_6ada35ba("back_door_full_clip", "targetname");
	var_60f8f46f function_8bdea13c(128, 0.05);
	var_bee08349 = function_6ada35ba("back_door_no_pen_clip", "targetname");
	var_bee08349 function_8bdea13c(128, 0.05);
	namespace_2f06d687::function_2b37a3c9("cloud_mountain_siegebot", "targetname", &function_c001cefd);
	namespace_d5067552::function_bae40a28("cloud_mountain_siegebot_manager");
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	level thread function_bd5615c2();
	level thread function_76ca6777();
	level thread function_89e35d86();
	level function_db58f411();
}

/*
	Name: function_d9982dc0
	Namespace: namespace_23646cee
	Checksum: 0xB7F5D94
	Offset: 0x3D98
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_d9982dc0()
{
	if(!isdefined(level.var_e6a85ae8) || !isdefined(level.var_7f103643))
	{
		level.var_e6a85ae8 = function_6ada35ba("cloudmountain_door_upper", "targetname");
		level.var_7f103643 = function_6ada35ba("cloudmountain_door_lower", "targetname");
	}
	level.var_e6a85ae8 function_a96a2721(level.var_e6a85ae8.var_ba7fc287, 2);
	level.var_7f103643 function_a96a2721(level.var_7f103643.var_ba7fc287, 2);
	level.var_e6a85ae8 function_921a1574("evt_warehouse_door_close_start");
	level.var_e6a85ae8 function_c2931a36("evt_warehouse_door_close_loop", 1);
	level.var_7f103643 waittill("hash_a21db68a");
	level.var_e6a85ae8 function_921a1574("evt_warehouse_door_close_stop");
	level.var_e6a85ae8 function_eaa69754(0.5);
	wait(3);
	level namespace_ad23e503::function_74d6b22f("back_door_opened");
	var_ec935bdb = function_6ada35ba("back_door_player_clip", "targetname");
	if(isdefined(var_ec935bdb))
	{
		var_ec935bdb function_dc8c8404();
	}
	var_3dffb84b = function_6ada35ba("back_door_full_clip", "targetname");
	if(isdefined(var_3dffb84b))
	{
		var_3dffb84b function_dc8c8404();
	}
	var_6f9ff65c = function_6ada35ba("back_door_no_pen_clip", "targetname");
	if(isdefined(var_6f9ff65c))
	{
		var_6f9ff65c function_dc8c8404();
	}
}

/*
	Name: function_c001cefd
	Namespace: namespace_23646cee
	Checksum: 0x5D782B5C
	Offset: 0x4020
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_c001cefd()
{
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self thread function_4a9bba52();
	self thread function_994b4243();
	level namespace_ad23e503::function_43ac000b(function_84970cc4("back_door_opened", "siegebot_alerted"));
	self function_8d63f8d0(1);
	self.var_dc29a320 = &namespace_d6bb7e31::function_3b05fc1b;
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	wait(0.5);
	namespace_4dbf3ae3::function_42e87952("trig_warehouse_objective_complete", "targetname", level.var_9b1393e7[0], 0);
}

/*
	Name: function_994b4243
	Namespace: namespace_23646cee
	Checksum: 0x20542880
	Offset: 0x4158
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_994b4243()
{
	self endon("hash_b38d1391");
	self endon("hash_b35c4231");
	self endon("hash_128f8789");
	self waittill("hash_4a129f22", var_66abe754);
	namespace_4dbf3ae3::function_42e87952("trig_siegebot_alerted", "targetname");
}

/*
	Name: function_c60cca3f
	Namespace: namespace_23646cee
	Checksum: 0x5A0AF96B
	Offset: 0x41C8
	Size: 0xB7
	Parameters: 15
	Flags: None
*/
function function_c60cca3f(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_dfcc01fd, var_10e30246, var_a080d759, var_ffd2636b, var_46043680, var_a5cf2304, var_3bc96147, var_269779a, var_829b9480, var_eca96ec1)
{
	namespace_4dbf3ae3::function_42e87952("trig_siegebot_alerted", "targetname");
	self.var_dc29a320 = &namespace_d6bb7e31::function_3b05fc1b;
	return var_74d0774f;
}

/*
	Name: function_4a9bba52
	Namespace: namespace_23646cee
	Checksum: 0x8EFA4D20
	Offset: 0x4288
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_4a9bba52()
{
	level endon("hash_b38d1391");
	self function_8d63f8d0(0);
	level namespace_ad23e503::function_1ab5ebec("siegebot_damage_enabled");
	self function_8d63f8d0(1);
	self.var_dc29a320 = &function_c60cca3f;
}

/*
	Name: function_bd5615c2
	Namespace: namespace_23646cee
	Checksum: 0x38B51EA2
	Offset: 0x4308
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_bd5615c2()
{
	var_95ad8660 = function_c20c2e8("back_door_enemy", "script_aigroup");
	foreach(var_68fb9693 in var_95ad8660)
	{
		if(function_5b49d38c(var_68fb9693))
		{
			var_68fb9693.var_255b9315 = 1;
			var_68fb9693.var_c584775c = 1;
		}
	}
	level namespace_82b91a51::function_564f2d81("start_back_door_retreat", "siegebot_damage_enabled");
	var_ec273240 = function_6ada35ba("back_door_goal_volume", "targetname");
	foreach(var_68fb9693 in var_95ad8660)
	{
		if(function_5b49d38c(var_68fb9693))
		{
			var_68fb9693.var_255b9315 = 0;
			var_68fb9693 function_169cc712(var_ec273240, 1);
		}
	}
	wait(10);
	foreach(var_68fb9693 in var_95ad8660)
	{
		if(function_5b49d38c(var_68fb9693))
		{
			var_68fb9693.var_c584775c = 0;
		}
	}
}

/*
	Name: function_e7b0cb8e
	Namespace: namespace_23646cee
	Checksum: 0xB07D95C5
	Offset: 0x4578
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_e7b0cb8e()
{
	self endon("hash_128f8789");
	self waittill("hash_6050ab17");
	wait(0.05);
	while(isdefined(self.var_6050ab17) && !self function_75754e3a(self.var_6050ab17))
	{
		wait(0.5);
	}
	self function_169cc712(function_6ada35ba("entire_warehouse_setgoal_volume", "targetname"));
}

/*
	Name: function_b1942036
	Namespace: namespace_23646cee
	Checksum: 0x88044CDD
	Offset: 0x4610
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_b1942036()
{
	level endon("hash_54e7636b");
	namespace_4dbf3ae3::function_1ab5ebec("trig_back_door_close");
	namespace_9f824288::function_5d2cdd99();
	wait(1.5);
	namespace_d5067552::function_bae40a28("warehouse_enemy_warlord_manager");
	level waittill("hash_c42f328d");
	level thread namespace_71e9cb84::function_74d6b22f("warehouse_window_break", 1);
	level namespace_ad23e503::function_74d6b22f("warehouse_warlord");
	namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb");
	namespace_2f06d687::function_22356ba7("warehouse_enemy_group3", &function_29b416ff);
	function_6ada35ba("warehouse_overwatch_window", "targetname") function_dc8c8404();
	var_c574fec8 = namespace_14b42b8a::function_7922262b("warehouse_warlord_surprise_landing");
	function_5e09918e("cp_biodomes_warehouse_warlord_rumble", var_c574fec8.var_722885f3);
	level thread function_62523f1d();
	level namespace_d5067552::function_72e3dd35("warehouse_enemy_warlord_manager");
	level namespace_ad23e503::function_74d6b22f("warehouse_warlord_dead");
}

/*
	Name: function_652f488c
	Namespace: namespace_23646cee
	Checksum: 0xD16398F4
	Offset: 0x47D0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_652f488c()
{
	level namespace_ad23e503::function_1ab5ebec("warehouse_warlord_friendly_goal");
	level.var_996e05eb = "friendly_spawns_warehouse_door";
	var_ab891f49 = function_6ada35ba("warehouse_warlord_friendly_volume", "targetname");
	foreach(var_f6c5842 in level.var_641fcd9c)
	{
		var_f6c5842 function_169cc712(var_ab891f49, 1);
	}
	level.var_2fd26037 function_169cc712(var_ab891f49, 1);
}

/*
	Name: function_29b416ff
	Namespace: namespace_23646cee
	Checksum: 0xD06DB8C8
	Offset: 0x48F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_29b416ff()
{
	self endon("hash_128f8789");
	self.var_c584775c = 1;
	wait(1);
	self.var_c584775c = 0;
}

/*
	Name: function_4940548b
	Namespace: namespace_23646cee
	Checksum: 0xD9E620A7
	Offset: 0x4928
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_4940548b()
{
	self endon("hash_128f8789");
	self.var_c584775c = 1;
	level namespace_cc27597::function_43718187("cin_bio_05_02_warehouse_aie_jump", self);
	self.var_7dfaf62 = 2048;
	self.var_a1ed1ed1 = 320;
	self namespace_27a45d31::function_f61c0df8("node_warlord_warehouse_preferred", 1, 3);
	wait(0.25);
	self.var_c584775c = 0;
	self namespace_4dbf3ae3::function_1ab5ebec("trig_siegebot_alerted");
	self namespace_69ee7109::function_94b1213d();
	self namespace_27a45d31::function_f61c0df8("node_warlord_mountain_entrance_preferred", 1, 2);
	self waittill("hash_128f8789");
	self namespace_69ee7109::function_94b1213d();
}

/*
	Name: function_62523f1d
	Namespace: namespace_23646cee
	Checksum: 0x82630E4F
	Offset: 0x4A40
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_62523f1d()
{
	level endon("hash_b9c5f11d");
	namespace_4dbf3ae3::function_1ab5ebec("trig_siegebot_alerted");
	for(var_7b95742a = 1; var_7b95742a;  = 1)
	{
		wait(1);
	}
	level namespace_ad23e503::function_74d6b22f("warehouse_warlord_retreated");
}

/*
	Name: function_5ecd2f63
	Namespace: namespace_23646cee
	Checksum: 0x828E666F
	Offset: 0x4AD0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_5ecd2f63()
{
	var_7c2eb0ca = function_6ada35ba("warehouse_warlord_retreat_check_volume", "targetname");
	var_bb2f0c05 = namespace_d5067552::function_423eae50("warehouse_enemy_warlord_manager");
	foreach(var_429f73c4 in var_bb2f0c05)
	{
		if(var_429f73c4 function_32fa5072(var_7c2eb0ca))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_db58f411
	Namespace: namespace_23646cee
	Checksum: 0xD9949F03
	Offset: 0x4BC8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_db58f411()
{
	var_526a0aed = function_6ada35ba("pry_door", "script_noteworthy");
	level thread namespace_36171bd3::function_bb612155(var_526a0aed);
}

/*
	Name: function_3460d45c
	Namespace: namespace_23646cee
	Checksum: 0xC915523B
	Offset: 0x4C20
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_3460d45c()
{
	self endon("hash_643a7daf");
	level endon("hash_43a6ada4");
	while(1)
	{
		self waittill("hash_91737d19", var_52b4a338);
		self namespace_7cb6cd95::function_6c745562(function_6ada35ba("hijacked_vehicle_range", "targetname"));
	}
}

/*
	Name: function_76ca6777
	Namespace: namespace_23646cee
	Checksum: 0xD84C3A97
	Offset: 0x4C98
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_76ca6777()
{
	level thread namespace_71e9cb84::function_74d6b22f("cloud_mountain_crows", 1);
	level namespace_ad23e503::function_43ac000b(function_84970cc4("back_door_opened", "siegebot_damage_enabled"));
	level thread namespace_71e9cb84::function_74d6b22f("cloud_mountain_crows", 2);
}

/*
	Name: function_2d153737
	Namespace: namespace_23646cee
	Checksum: 0x29A50914
	Offset: 0x4D18
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_2d153737()
{
	if(function_4bd0142f("tu1_biodomesWarehouseDisableTraversals", 1))
	{
		var_f901131c = function_c0545f55((4805, 13582, 90), 12, 0, 12, "End");
		foreach(var_90ca1fdd in var_f901131c)
		{
			function_d224409e(var_90ca1fdd, 0);
		}
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_23646cee
	Checksum: 0x99EC1590
	Offset: 0x4E10
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

