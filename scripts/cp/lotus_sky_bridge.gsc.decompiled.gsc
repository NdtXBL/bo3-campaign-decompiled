#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\lotus_security_station;
#using scripts\cp\lotus_util;
#using scripts\shared\ai\archetype_robot;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_da5cdb0c;

/*
	Name: function_99c7c24f
	Namespace: namespace_da5cdb0c
	Checksum: 0xF4D15217
	Offset: 0x2100
	Size: 0x513
	Parameters: 2
	Flags: None
*/
function function_99c7c24f(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_2fd26037.var_ca3202d["bc"] = 0;
		namespace_4dbf3ae3::function_42e87952("body_fall_trigger");
		namespace_431cac9::function_69533bc9();
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_d7916d65::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
	}
	namespace_dabbe128::function_a0ac4434(&namespace_431cac9::function_6edd9874);
	namespace_dabbe128::function_a0ac4434(&namespace_431cac9::function_5157e72f);
	namespace_80983c42::function_dfc351df("fx_interior_snow_1");
	level.var_2fd26037 namespace_71e9cb84::function_74d6b22f("hendricks_frost_breath", 0);
	function_6ada35ba("trig_oob_industrial_zone", "targetname") function_175e6b8e(0);
	level.var_2fd26037.var_7dfaf62 = 128;
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level namespace_ad23e503::function_c35e6aab("wallsmash_done");
	level thread function_9d01fecc();
	namespace_2f06d687::function_2b37a3c9("industrial_nrc", "script_noteworthy", &function_885b5bfb);
	namespace_80983c42::function_80983c42("fx_vista_read2a");
	namespace_431cac9::function_176c92fd();
	function_67db331d("skybridge_event_10-39_broken", "hide");
	function_67db331d("skybridge_event_10-41_broken", "hide");
	function_67db331d("skybridge_event_10-42_broken", "hide");
	var_95dd38e4 = function_99201f25("skybridge_event_10-41", "targetname");
	foreach(var_93700c60 in var_95dd38e4)
	{
		var_93700c60.var_722885f3 = var_93700c60.var_722885f3 + VectorScale((1, 0, 0), 9206);
	}
	wait(0.1);
	function_56782c4("skybridge00a_custom_traversal", 1);
	function_56782c4("skybridge01_custom_traversal", 1);
	function_56782c4("skybridge01a_custom_traversal", 1);
	function_56782c4("skybridge02_custom_traversal", 1);
	level thread function_6e922340();
	level thread function_fbd7205();
	level thread function_8175b0d4(1);
	level thread function_fbaeb3a1();
	level thread function_9f38eee8();
	wait(1);
	level thread function_4354b307();
	level namespace_ad23e503::function_1ab5ebec("cin_hendricks_observes_go");
	level thread function_b5b850b7();
	namespace_4dbf3ae3::function_1ab5ebec("industrial_zone_complete");
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	namespace_1d795d47::function_be8adfb8("industrial_zone");
}

/*
	Name: function_9d01fecc
	Namespace: namespace_da5cdb0c
	Checksum: 0xFC5774F9
	Offset: 0x2620
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_9d01fecc()
{
	namespace_76d95162::function_d9f49fba(0);
	namespace_ad23e503::function_1ab5ebec("flag_wallsmash");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_we_need_a_way_0");
	level namespace_71b8dba1::function_81141386("kane_that_door_should_get_0", 1);
	level thread namespace_a92ad484::function_208b0a38();
	level notify("hash_49e3585a");
	level waittill("hash_bf54b99c");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_that_ll_work_too_l_0", 0.5);
	wait(2);
	level namespace_ad23e503::function_1ab5ebec("init_industrial_robot_attack_01");
	level namespace_71b8dba1::function_a463d127("kane_you_better_hustle_0");
	wait(3);
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_b5b850b7
	Namespace: namespace_da5cdb0c
	Checksum: 0xCEEA4D80
	Offset: 0x2760
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b5b850b7()
{
	namespace_ad23e503::function_1ab5ebec("flag_industrial_spawn_2");
	level thread namespace_431cac9::function_99514074("industrial_robo_entrance_jumpdown01", "industrial_robo_entrant01");
	level thread namespace_431cac9::function_99514074("industrial_robo_entrance_jumpdown02", "industrial_robo_entrant02", "flag_grand_entrance_02");
}

/*
	Name: function_4354b307
	Namespace: namespace_da5cdb0c
	Checksum: 0x27198924
	Offset: 0x27E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4354b307()
{
	namespace_d0ef8521::function_45d1556("industrial_breadcrumb01");
	namespace_ad23e503::function_1ab5ebec("wallsmash_done");
	namespace_d0ef8521::function_45d1556("industrial_breadcrumb03");
}

/*
	Name: function_3ec62858
	Namespace: namespace_da5cdb0c
	Checksum: 0xF1745118
	Offset: 0x2838
	Size: 0xCB
	Parameters: 4
	Flags: None
*/
function function_3ec62858(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_cc27597::function_c35e6aab("skybridge_2_falling_shop", "targetname");
	level thread namespace_cc27597::function_c35e6aab("skybridge_2_falling_shop_2", "targetname");
	level namespace_ad23e503::function_c35e6aab("khalil_convo_done");
	level namespace_ad23e503::function_c35e6aab("skybridge_final_vo_can_play");
	namespace_76d95162::function_d9f49fba(0);
}

/*
	Name: function_9f38eee8
	Namespace: namespace_da5cdb0c
	Checksum: 0xC9E858E7
	Offset: 0x2910
	Size: 0x37B
	Parameters: 0
	Flags: None
*/
function function_9f38eee8()
{
	var_a112a6b7 = function_6ada35ba("industrial_wallbreak_decal", "targetname");
	if(isdefined(var_a112a6b7))
	{
		var_a112a6b7 function_50ccee8d();
	}
	level namespace_cc27597::function_c35e6aab("cin_lot_09_02_pursuit_vign_wallsmash");
	level waittill("hash_49e3585a");
	level namespace_ad23e503::function_1ab5ebec("flag_wallsmash");
	if(level namespace_ad23e503::function_dbca4c5d("hendricks_stomps_cin_done"))
	{
		level namespace_ad23e503::function_1ab5ebec("hendricks_stomps_cin_done");
	}
	var_7e20817e = function_6ada35ba("industrial_wallbreak", "targetname");
	if(isdefined(var_7e20817e))
	{
		var_7e20817e function_50ccee8d();
		var_7e20817e function_dc8c8404();
	}
	if(isdefined(var_a112a6b7))
	{
		var_a112a6b7 function_48f26766();
	}
	var_8215eb73 = function_6ada35ba("wallsmash_playerclip", "targetname");
	var_8215eb73 function_dc8c8404();
	level thread namespace_cc27597::function_43718187("cin_lot_09_02_pursuit_vign_wallsmash");
	wait(0.5);
	level notify("hash_bf54b99c");
	var_258dd90b = namespace_14b42b8a::function_7922262b("hendricks_stomps_cin", "targetname");
	if(var_258dd90b namespace_cc27597::function_367f8966(var_258dd90b.var_1157a889))
	{
		level.var_2fd26037 function_470f7e4c(0.3);
	}
	var_f6c5842 = function_6ada35ba("cin_lot_09_02_pursuit_vign_wallsmash_robot_ai", "targetname");
	if(function_5b49d38c(var_f6c5842))
	{
		level.var_2fd26037 namespace_d84e54db::function_d104c596("normal", var_f6c5842, undefined, 0.75);
	}
	level namespace_ad23e503::function_74d6b22f("wallsmash_done");
	namespace_2f06d687::function_72214789("wallsmash_robot");
	namespace_4dbf3ae3::function_42e87952("trig_hendricks_through_hole", "targetname");
	namespace_ad23e503::function_1ab5ebec("flag_industrial_spawn_2");
	var_935a64f = function_6ada35ba("industrial_jump_robot_clip", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f function_dc8c8404();
	}
}

/*
	Name: function_885b5bfb
	Namespace: namespace_da5cdb0c
	Checksum: 0x63060BC9
	Offset: 0x2C98
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_885b5bfb(var_e0b7400e, var_8a7c6b8f)
{
	self endon("hash_128f8789");
	if(self.var_8fc0e50e == "robot")
	{
		self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_" + var_e0b7400e);
		if(isdefined(var_8a7c6b8f))
		{
			var_c9ae457a = function_6ada35ba(var_8a7c6b8f + "_1", "targetname");
			self function_169cc712(var_c9ae457a);
		}
	}
	else
	{
		self namespace_d84e54db::function_ceb883cd("can_initiateaivsaimelee", 0);
		self namespace_d84e54db::function_ceb883cd("can_melee", 0);
	}
	self.var_44a68a57 = &function_9ce96a15;
	namespace_4dbf3ae3::function_1ab5ebec("trig_industrial_end_fight");
	self.var_fd5a8f70 = 1;
	if(isdefined(var_8a7c6b8f))
	{
		namespace_4dbf3ae3::function_1ab5ebec("trig_industrial_spawn_1");
		var_c9ae457a = function_6ada35ba(var_8a7c6b8f + "_2", "targetname");
		self function_169cc712(var_c9ae457a);
		namespace_ad23e503::function_1ab5ebec("flag_industrial_spawn_2");
		self function_fb5720f7();
	}
}

/*
	Name: function_9ce96a15
	Namespace: namespace_da5cdb0c
	Checksum: 0x708D628B
	Offset: 0x2E70
	Size: 0xB9
	Parameters: 12
	Flags: None
*/
function function_9ce96a15(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_2ffd9881, var_10e30246, var_a080d759, var_ffd2636b, var_269779a, var_a5cf2304, var_fe8d5ebb)
{
	if(self.var_fd5a8f70 === 1 && self.var_8fc0e50e == "human")
	{
		var_74d0774f = self.var_3a90f16b;
	}
	else if(!function_65f192a6(var_fb19c839))
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_fbaeb3a1
	Namespace: namespace_da5cdb0c
	Checksum: 0x82BA91FE
	Offset: 0x2F38
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_fbaeb3a1()
{
	namespace_2f06d687::function_2b37a3c9("industrial_robot_attack_02_robot", "targetname", &namespace_d84e54db::function_ceb883cd, "rogue_control", "level_2");
	namespace_ad23e503::function_1ab5ebec("cin_hendricks_observes_go");
	function_91311306();
	if(!level namespace_ad23e503::function_7922262b("flag_wallsmash"))
	{
		namespace_ad23e503::function_c35e6aab("hendricks_stomps_cin_done");
		level namespace_431cac9::function_283fcbc5("hendricks_stomps_cin", "hendricks_stomps_cin_robot", "at_industrial_outside", 0, 1);
		namespace_ad23e503::function_74d6b22f("hendricks_stomps_cin_done");
	}
	namespace_cc27597::function_8f9f34e0("cin_gen_melee_robot_nogun_overhead_throw_init", &function_faa38388, "init");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_01", "forced_level_2", "do_industrial_robot_attack_01", undefined, "industrial_zone_done");
	namespace_ad23e503::function_1ab5ebec("flag_industrial_rvh");
	level thread namespace_431cac9::function_df89b05b("industrial_rvh_choke_throw", "forced_level_1", "industrial_rvh_choke_throw_go", 0.1, "industrial_zone_done");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_02", "forced_level_1", "industrial_robot_attack_02_go", 0.1, "industrial_zone_done");
	namespace_cc27597::function_a5195379("cin_gen_melee_robot_nogun_overhead_throw_init", &function_faa38388, "init");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_03", "forced_level_1", "industrial_robot_attack_03_go", 0, "industrial_zone_done");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_03a", "forced_level_1", "industrial_robot_attack_03_go", 0.5, "industrial_zone_done");
	level thread namespace_431cac9::function_df89b05b("industrial_robot_attack_03b", "forced_level_1", "industrial_robot_attack_03_go", 1, "industrial_zone_done");
	namespace_cc27597::function_c35e6aab("cin_lot_10_01_skybridge_1st_init_shop");
}

/*
	Name: function_faa38388
	Namespace: namespace_da5cdb0c
	Checksum: 0x591EEB3B
	Offset: 0x3230
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_faa38388(var_c77d2837)
{
	var_c77d2837["nrc_soldier_thrown"] endon("hash_128f8789");
	level waittill("hash_9aa959d8");
	var_c77d2837["nrc_soldier_thrown"] function_470f7e4c();
	var_c77d2837["nrc_soldier_thrown"] function_d7a0a9d8();
}

/*
	Name: function_91311306
	Namespace: namespace_da5cdb0c
	Checksum: 0xD4895A8B
	Offset: 0x32B0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_91311306()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	if(!level namespace_ad23e503::function_7922262b("flag_wallsmash"))
	{
		var_1cbcb46d = namespace_14b42b8a::function_7922262b("cin_hendricks_observes", "targetname");
		var_1cbcb46d namespace_cc27597::function_c35e6aab(level.var_2fd26037);
		var_1cbcb46d thread namespace_cc27597::function_43718187(level.var_2fd26037);
		namespace_82b91a51::function_5b7e3888("flag_wallsmash", "cin_lot_09_02_pursuit_vign_observation_done");
		var_1cbcb46d namespace_cc27597::function_fcf56ab5();
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	}
	var_b81735e0 = function_6ada35ba("hendricks_dont_fall_clip", "targetname");
	var_b81735e0 function_dc8c8404();
}

/*
	Name: function_4e9c70f
	Namespace: namespace_da5cdb0c
	Checksum: 0xFDE0DD9B
	Offset: 0x3408
	Size: 0x89B
	Parameters: 2
	Flags: None
*/
function function_4e9c70f(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_2fd26037.var_ca3202d["bc"] = 0;
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_cc27597::function_c35e6aab("cin_lot_10_01_skybridge_1st_init_shop");
		namespace_431cac9::function_69533bc9();
		level namespace_82b91a51::function_d8eaed3d(3, 1);
		namespace_d7916d65::function_a2995f22();
		namespace_431cac9::function_176c92fd();
		namespace_80983c42::function_80983c42("fx_vista_read2a");
	}
	else
	{
		level thread namespace_82b91a51::function_d8eaed3d(3, 1);
		namespace_431cac9::function_8738e00c();
	}
	var_8ef169cb = namespace_4a43ba8::function_5880f755("cp_coop_respawn", 1);
	foreach(var_921e9701 in var_8ef169cb)
	{
		if(var_921e9701.var_ff1f6868 === "sky_bridge1")
		{
			var_921e9701.var_91572f2d = 1;
			level namespace_957e94ce::function_74d6b22f("spawnpoints_dirty");
		}
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_431cac9::function_f21ea22f();
	}
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
	namespace_2f06d687::function_2b37a3c9("wwz_vtol_block_rushing_players", "targetname", &function_15bb85bc);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_mobile_shop_sky01_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_mobile_shop_sky02_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_mobile_shop_sky03_break_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_skybridge_hunter_crash_01_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_skybridge_hunter_crash_02_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_skybridge_hunter_crash_03_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_skybridge_hunter_crash_04_bundle");
	level thread function_fbd7205();
	function_67db331d("skybridge_event_10-39_broken", "hide");
	function_67db331d("skybridge_event_10-41_broken", "hide");
	function_67db331d("skybridge_event_10-42_broken", "hide");
	function_56782c4("sb_1_broken_start", 1);
	level thread function_5fcdf0e7(1);
	level thread function_c23650f9();
	function_12e65254(var_74cd64bc);
	level namespace_ad23e503::function_1ab5ebec("skybridge_debris_cleared");
	namespace_9f824288::function_fb150717();
	var_8ef169cb = namespace_4a43ba8::function_5880f755("cp_coop_respawn", 1);
	foreach(var_921e9701 in var_8ef169cb)
	{
		if(var_921e9701.var_ff1f6868 === "sky_bridge1")
		{
			var_921e9701.var_91572f2d = undefined;
			level namespace_957e94ce::function_74d6b22f("spawnpoints_dirty");
		}
	}
	level thread function_c07c8c85();
	level namespace_431cac9::function_484bc3aa(0);
	function_8bb390e5(1);
	namespace_431cac9::function_f80cafbd(1);
	level.var_941f173a = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_fdb69d4a();
	}
	level thread function_8175b0d4(7);
	level thread function_5fcdf0e7(2);
	level thread function_5fcdf0e7(3, 1, &function_236dcbd8);
	level thread function_5fcdf0e7(4);
	namespace_4dbf3ae3::function_42e87952("hendricks_color_sky_bridge1_start");
	level thread function_8b154406(var_74cd64bc, "sky_bridge1_obj_breadcrumb");
	level thread function_54838261();
	level thread function_a070d03f();
	level thread function_fd34fb22();
	namespace_4dbf3ae3::function_1ab5ebec("trig_mobile_shop_sky01");
	level thread function_132d3902();
	level thread function_98c38bd4();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_mobile_shop_sky01_bundle");
	level waittill("hash_9a772ab1");
	namespace_4dbf3ae3::function_42e87952("hendricks_color_sky_bridge1_post_shop_fall");
	function_2ecaeb37();
	level thread function_70f27cf6();
	namespace_4dbf3ae3::function_1ab5ebec("sky_bridge1_complete");
	namespace_1d795d47::function_be8adfb8("sky_bridge1");
}

/*
	Name: function_ac629618
	Namespace: namespace_da5cdb0c
	Checksum: 0xD13E573E
	Offset: 0x3CB0
	Size: 0xF3
	Parameters: 4
	Flags: None
*/
function function_ac629618(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_lotus_go_to_skybridge");
		namespace_d0ef8521::function_31cd1834("cp_level_lotus_clear_debris");
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_tower_two");
		level namespace_ad23e503::function_74d6b22f("khalil_convo_done");
		namespace_431cac9::function_3b6587d6(0, "lotus2_tower1_debris_push_umbra_gate");
		level namespace_cc27597::function_5c143f59("cin_lot_10_01_skybridge_1st_init_shop");
	}
	namespace_431cac9::function_3b6587d6(0, "lotus2_tower2_umbra_gate");
}

/*
	Name: function_2ecaeb37
	Namespace: namespace_da5cdb0c
	Checksum: 0xF2518666
	Offset: 0x3DB0
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_2ecaeb37()
{
	var_b3f0c3af = function_99201f25("mobile_shop_fall_1_clip", "targetname");
	var_9794db6e = namespace_14b42b8a::function_7922262b("skybridge_mobile_shop_crash_loc").var_722885f3;
	foreach(var_d874dcf in var_b3f0c3af)
	{
		var_d874dcf function_dc8c8404();
	}
	wait(0.05);
	var_d7188244 = function_bd90138e();
	foreach(var_5d5ef481 in var_d7188244)
	{
		if(function_87ea89a(var_9794db6e, var_5d5ef481.var_722885f3) < 250)
		{
			var_5d5ef481 function_dc8c8404();
		}
	}
	function_8f0c1eed(var_9794db6e, 250, 0, (0, 0, -1));
}

/*
	Name: function_54838261
	Namespace: namespace_da5cdb0c
	Checksum: 0xBFB93F60
	Offset: 0x3F98
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_54838261()
{
	level namespace_ad23e503::function_1ab5ebec("player_at_crash_point");
	if(!level namespace_ad23e503::function_7922262b("wwz_vtol_crash_done"))
	{
		namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb");
	}
}

/*
	Name: function_231ed907
	Namespace: namespace_da5cdb0c
	Checksum: 0x290C4B27
	Offset: 0x4000
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_231ed907()
{
	if(isdefined(15))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(15, "timeout");
	}
	namespace_2f06d687::function_371d219c("industrial_zone_robots", 2);
}

/*
	Name: function_12e65254
	Namespace: namespace_da5cdb0c
	Checksum: 0x7AAD08DE
	Offset: 0x4088
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_12e65254(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	var_8800fa4a = function_6ada35ba("trig_debris_push", "targetname");
	var_8800fa4a function_175e6b8e(0);
	var_a917350c = function_6ada35ba("debris_push_carver", "targetname");
	var_a917350c function_de8377bf();
	function_231ed907();
	namespace_cc27597::function_c35e6aab("cin_lot_10_01_skybridge_1st_push", level.var_2fd26037);
	if(var_74cd64bc)
	{
		wait(1);
	}
	level namespace_ad23e503::function_c35e6aab("debris_push_ready");
	level namespace_ad23e503::function_c35e6aab("debris_push_started");
	level thread function_90b6f882();
	level.var_2fd26037 waittill("hash_82588407");
	level namespace_ad23e503::function_74d6b22f("debris_push_ready");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_go_to_skybridge");
	var_8800fa4a function_175e6b8e(1);
	namespace_82b91a51::function_14518e76(var_8800fa4a, &"cp_level_lotus_clear_debris", &"CP_MI_CAIRO_LOTUS_CLEAR", &function_9d1fa3b5);
}

/*
	Name: function_9d1fa3b5
	Namespace: namespace_da5cdb0c
	Checksum: 0x9CB6BF3
	Offset: 0x4260
	Size: 0x243
	Parameters: 1
	Flags: None
*/
function function_9d1fa3b5(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	level namespace_ad23e503::function_74d6b22f("debris_push_started");
	namespace_431cac9::function_3b6587d6(0, "lotus2_tower1_debris_push_umbra_gate");
	level thread namespace_a92ad484::function_1d1fd3af();
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_clear_debris");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_tower_two");
	level thread function_9e8d7e95();
	var_935a64f = function_6ada35ba("debris_push_clip", "targetname");
	var_935a64f function_de8377bf();
	var_935a64f function_dc8c8404();
	namespace_cc27597::function_8f9f34e0("cin_lot_10_01_skybridge_1st_push", &function_2fc33d6d, "play");
	namespace_cc27597::function_43718187("cin_lot_10_01_skybridge_1st_push", var_6bfe1586);
	level namespace_ad23e503::function_74d6b22f("skybridge_debris_cleared");
	level namespace_82b91a51::function_93831e79("after_debris_push_player_pos");
	function_6ada35ba("trig_oob_industrial_zone", "targetname") function_175e6b8e(1);
	function_6ada35ba("pursuit_oob", "targetname") function_dc8c8404();
	level thread function_e50bbb52();
	self namespace_a230c2b1::function_c5a39495(1);
}

/*
	Name: function_90b6f882
	Namespace: namespace_da5cdb0c
	Checksum: 0x631C6822
	Offset: 0x44B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_90b6f882()
{
	level namespace_71b8dba1::function_a463d127("kane_taylor_just_entered_0", 2);
	level namespace_71b8dba1::function_13b3b16a("plyr_he_s_headed_to_the_r_0", 0.5);
	if(!level namespace_ad23e503::function_7922262b("debris_push_started"))
	{
		level namespace_ad23e503::function_1ab5ebec("debris_push_ready");
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_gimme_a_hand_0", 0.25);
	}
}

/*
	Name: function_2fc33d6d
	Namespace: namespace_da5cdb0c
	Checksum: 0xA2CE9A21
	Offset: 0x4570
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function function_2fc33d6d(var_c77d2837)
{
	level waittill("hash_3d336d3b");
	var_d3b22312 = namespace_14b42b8a::function_7922262b("hunter_crash_intro", "script_noteworthy");
	var_d3b22312 namespace_cc27597::function_43718187();
	wait(0.1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("artillery_rumble");
		function_9cf04c2e(0.65, 0.7, var_5dc5e20a.var_722885f3, 128);
	}
}

/*
	Name: function_c23650f9
	Namespace: namespace_da5cdb0c
	Checksum: 0x93357B3D
	Offset: 0x46A0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c23650f9()
{
	namespace_4dbf3ae3::function_1ab5ebec("hendricks_exited_industrial_zone", "targetname");
	var_a917350c = function_6ada35ba("debris_push_carver", "targetname");
	var_a917350c function_14c24d9d();
}

/*
	Name: function_9e8d7e95
	Namespace: namespace_da5cdb0c
	Checksum: 0xB3042836
	Offset: 0x4710
	Size: 0x3E3
	Parameters: 0
	Flags: None
*/
function function_9e8d7e95()
{
	wait(2);
	level thread function_d5c66ea2("thrown_sb1_shot01_align");
	level thread function_d5c66ea2("thrown_sb1_double01_align", &function_87326039, &function_8a89718c);
	wait(0.05);
	level thread function_46627c19(14, "exited_industrial_zone", function_72a94f05(1, 4));
	level thread function_46627c19(12, "exited_industrial_zone", function_72a94f05(2, 5));
	level thread function_46627c19(13, "exited_industrial_zone", function_72a94f05(2, 5));
	level thread function_46627c19(20, "trig_mobile_shop_sky01", function_72a94f05(1, 4), "mobile_shop_kill");
	level thread function_46627c19(21, "trig_mobile_shop_sky01", function_72a94f05(2, 5), "mobile_shop_kill");
	level thread function_46627c19(22, "trig_mobile_shop_sky01", function_72a94f05(2, 5), "mobile_shop_kill");
	level thread function_46627c19(2, "trig_stop_pre_wwz_vtol_rvh", function_72a94f05(10, 16));
	level thread function_46627c19(3, "trig_stop_pre_wwz_vtol_rvh", function_72a94f05(10, 16));
	level thread function_46627c19(4, "trig_stop_pre_wwz_vtol_rvh", function_72a94f05(10, 16));
	level thread function_46627c19(5, "trig_stop_pre_wwz_vtol_rvh", function_72a94f05(10, 16));
	function_56782c4("skybridge01_custom_traversal", 0);
	function_67db331d("skybridge_event_10-39_broken", "show");
	function_67db331d("skybridge_event_10-41_broken", "show");
	function_67db331d("skybridge_event_10-41", "delete");
	wait(5);
	namespace_2f06d687::function_2b37a3c9("robot_long_jump", "script_string", &function_d5a3009e);
	namespace_d5067552::function_bae40a28("sm_sky_bridge_0");
	level thread namespace_cc27597::function_43718187("cin_lot_10_01_skybridge_vign_jump_robot05");
}

/*
	Name: function_8a89718c
	Namespace: namespace_da5cdb0c
	Checksum: 0x5455CF7C
	Offset: 0x4B00
	Size: 0x131
	Parameters: 1
	Flags: None
*/
function function_8a89718c(var_c77d2837)
{
	var_713e715e = namespace_14b42b8a::function_7922262b("sky_bridge_1_del_goal", "targetname");
	foreach(var_3a90b959 in var_c77d2837)
	{
		if(function_5b49d38c(var_3a90b959))
		{
			var_3a90b959 namespace_d84e54db::function_b4f5e3b9(1);
			var_3a90b959 function_169cc712(var_713e715e.var_722885f3);
			var_3a90b959 thread namespace_8e4b89e2::function_2f52df3();
			wait(function_72a94f05(0.5, 2));
		}
	}
}

/*
	Name: function_d5a3009e
	Namespace: namespace_da5cdb0c
	Checksum: 0xE894EEA
	Offset: 0x4C40
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d5a3009e()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	wait(function_72a94f05(2, 3));
	if(!isdefined(level.var_4704ff29))
	{
		level.var_4704ff29 = 1;
	}
	else
	{
		level.var_4704ff29++;
		level.var_4704ff29++;
		if(level.var_4704ff29 > 4)
		{
			return;
		}
	}
	self namespace_cc27597::function_43718187("cin_lot_10_01_skybridge_vign_jump_robot0" + level.var_4704ff29, function_84970cc4(self));
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_87326039
	Namespace: namespace_da5cdb0c
	Checksum: 0x52CAAB83
	Offset: 0x4D20
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_87326039()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_cc27597::function_43718187("cin_lot_10_01_skybridge_vign_jump_robot03", function_84970cc4(self));
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_fd34fb22
	Namespace: namespace_da5cdb0c
	Checksum: 0x2F5520F2
	Offset: 0x4D90
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_fd34fb22()
{
	namespace_4dbf3ae3::function_1ab5ebec("exited_industrial_zone", "targetname");
	do
	{
		var_264ebbeb = function_b8494651("team3");
		var_264ebbeb = function_525ae497(var_264ebbeb, function_b8494651("axis"), 0, 0);
		var_264ebbeb = namespace_84970cc4::function_3d5de9eb(var_264ebbeb, 0, &function_67fe0ba5, "sb1_initial_battle_area");
		wait(0.2);
	}
	while(!var_264ebbeb.size);
	level namespace_ad23e503::function_74d6b22f("sb1_initial_battle_done");
}

/*
	Name: function_236dcbd8
	Namespace: namespace_da5cdb0c
	Checksum: 0xC2BEF9D3
	Offset: 0x4E78
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_236dcbd8()
{
	self waittill("hash_40f1c00");
	var_32cf47f = namespace_14b42b8a::function_7922262b("fxanim_mobile_shop02_skybridge", "targetname");
	var_32cf47f namespace_cc27597::function_43718187();
}

/*
	Name: function_67db331d
	Namespace: namespace_da5cdb0c
	Checksum: 0x8AD4461
	Offset: 0x4ED8
	Size: 0x141
	Parameters: 2
	Flags: None
*/
function function_67db331d(var_cbb15570, var_d51654a4)
{
	var_493d6271 = function_99201f25(var_cbb15570, "targetname");
	foreach(var_93700c60 in var_493d6271)
	{
		if(var_d51654a4 == "hide")
		{
			var_93700c60 function_8c8e79fe();
			var_93700c60 function_422037f5();
			continue;
		}
		if(var_d51654a4 == "show")
		{
			var_93700c60 function_48f26766();
			var_93700c60 function_4083a98e();
			continue;
		}
		var_93700c60 function_dc8c8404();
	}
}

/*
	Name: function_46627c19
	Namespace: namespace_da5cdb0c
	Checksum: 0xACCABDA2
	Offset: 0x5028
	Size: 0x23B
	Parameters: 4
	Flags: None
*/
function function_46627c19(var_4bc288a0, var_db803bcf, var_506b336f, var_8f4b8aaf)
{
	var_f6c5842 = namespace_2f06d687::function_7387a40a("rvh_robot_" + var_4bc288a0);
	var_f6c5842.var_fd5a8f70 = 0;
	if(isdefined(var_db803bcf))
	{
		var_3f3a4339 = namespace_2f06d687::function_7387a40a("rvh_human_" + var_4bc288a0);
		var_3f3a4339 namespace_d84e54db::function_ceb883cd("can_initiateaivsaimelee", 0);
		var_3f3a4339.var_fd5a8f70 = 0;
		var_3f3a4339.var_44a68a57 = &function_383fe57e;
		var_3f3a4339 function_21f41d11(var_f6c5842);
		var_f6c5842.var_44a68a57 = &function_383fe57e;
		var_f6c5842 function_21f41d11(var_3f3a4339);
		var_f6c5842 function_d61ede6b(1);
		if(isdefined(var_8f4b8aaf))
		{
			var_3f3a4339 thread function_699800ba(var_8f4b8aaf);
			var_f6c5842 thread function_699800ba(var_8f4b8aaf);
		}
		namespace_4dbf3ae3::function_1ab5ebec(var_db803bcf);
		if(isdefined(var_506b336f))
		{
			wait(var_506b336f);
		}
		if(function_5b49d38c(var_3f3a4339))
		{
			var_3f3a4339 namespace_d84e54db::function_b4f5e3b9(0);
			var_3f3a4339 namespace_d84e54db::function_c9e45d52(0);
			var_3f3a4339.var_fd5a8f70 = 1;
		}
	}
	if(function_5b49d38c(var_f6c5842))
	{
		var_f6c5842 function_d61ede6b(0);
	}
}

/*
	Name: function_699800ba
	Namespace: namespace_da5cdb0c
	Checksum: 0x7F6E4602
	Offset: 0x5270
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_699800ba(var_8b453fd2)
{
	self endon("hash_128f8789");
	level waittill(var_8b453fd2);
	wait(0.05);
	self function_2992720d();
}

/*
	Name: function_383fe57e
	Namespace: namespace_da5cdb0c
	Checksum: 0xC491A1BA
	Offset: 0x52B8
	Size: 0x107
	Parameters: 12
	Flags: None
*/
function function_383fe57e(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_2ffd9881, var_10e30246, var_a080d759, var_ffd2636b, var_269779a, var_a5cf2304, var_fe8d5ebb)
{
	if(isdefined(var_fb19c839))
	{
		if(!function_65f192a6(var_fb19c839))
		{
			if(self.var_fd5a8f70 === 1 || var_fb19c839.var_170527fb === "wwz_vtol_vh")
			{
				var_74d0774f = self.var_3a90f16b;
			}
			else if(var_fb19c839.var_3e94206a === "axis" || var_fb19c839.var_3e94206a === "team3")
			{
				var_74d0774f = 0;
			}
		}
	}
	return var_74d0774f;
}

/*
	Name: function_d61ede6b
	Namespace: namespace_da5cdb0c
	Checksum: 0x3BDA4D60
	Offset: 0x53C8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_d61ede6b(var_aa7b6eee)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		self function_76aa5b30(var_5dc5e20a, var_aa7b6eee);
	}
}

/*
	Name: function_98c38bd4
	Namespace: namespace_da5cdb0c
	Checksum: 0x14AA0139
	Offset: 0x5470
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_98c38bd4()
{
	namespace_4dbf3ae3::function_1ab5ebec("start_sky_bridge_bottom_rvh_battle", "targetname");
	level thread function_46627c19(6, "end_skybridge2_rvh", 0);
	level thread function_46627c19(7, "end_skybridge2_rvh", function_72a94f05(0, 2));
	level thread function_46627c19(8, "end_skybridge2_rvh", function_72a94f05(0, 2));
}

/*
	Name: function_808ed174
	Namespace: namespace_da5cdb0c
	Checksum: 0x1D7C15BC
	Offset: 0x5530
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_808ed174()
{
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
	var_c2c49b4c = function_b4cb3503("fall_to_death_traversal", "targetname");
	self namespace_d84e54db::function_ceb883cd("rogue_control_force_goal", var_c2c49b4c.var_722885f3);
}

/*
	Name: function_f0763a16
	Namespace: namespace_da5cdb0c
	Checksum: 0x50ABB85A
	Offset: 0x55C0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_f0763a16()
{
	var_a03a2e28 = function_6ada35ba("sky_bridge1_hurryup_hunter01", "targetname") namespace_2f06d687::function_9b7fda5e();
	var_a03a2e28 function_e0a794cf(60);
	var_a03a2e28 namespace_72ee5da4::function_81b6f1ac();
	var_a03a2e28 function_5c586b0b(function_243bb261(var_a03a2e28.var_b07228b6, "targetname"));
	var_a03a2e28 function_d142a882();
}

/*
	Name: function_a070d03f
	Namespace: namespace_da5cdb0c
	Checksum: 0x7FADE1AD
	Offset: 0x5690
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_a070d03f()
{
	namespace_4dbf3ae3::function_1ab5ebec("exited_industrial_zone");
	var_e4630460 = function_c9c1e189("sky_bridge_flyby_vtol");
	var_566a739b = function_c9c1e189("sky_bridge_flyby_vtol02");
	var_e4630460 thread function_ec3fbb5c("sb1_flyby_vtol", 1, 6, 1);
	wait(2);
	var_566a739b thread function_ec3fbb5c("sb1_flyby_vtol02", 1, 6, 1);
	namespace_4dbf3ae3::function_1ab5ebec("trig_wwz_vtol");
	var_e4630460.var_d700fcda = 0;
	var_566a739b.var_d700fcda = 0;
}

/*
	Name: function_2e696104
	Namespace: namespace_da5cdb0c
	Checksum: 0x3EDB3403
	Offset: 0x5798
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_2e696104()
{
	var_e4630460 = function_c9c1e189("sky_bridge_flyby_vtol");
	var_566a739b = function_c9c1e189("sky_bridge_flyby_vtol02");
	var_e4630460 thread function_ec3fbb5c("sb1_flyby_vtol", 4, 6, 0);
	wait(5);
	var_566a739b thread function_ec3fbb5c("sb1_flyby_vtol02", 4, 6, 0);
}

/*
	Name: function_c07c8c85
	Namespace: namespace_da5cdb0c
	Checksum: 0x51029564
	Offset: 0x5848
	Size: 0x8BB
	Parameters: 0
	Flags: None
*/
function function_c07c8c85()
{
	var_a917350c = function_6ada35ba("wwz_vtol_crash_carver", "targetname");
	var_a917350c function_de8377bf();
	level thread namespace_71b8dba1::function_a463d127("vtlp_air_support_coming_i_0", 1);
	wait(3);
	level notify("hash_f84c667e");
	var_edc6e0e1 = namespace_96fa87af::function_2962e239("wwz_vtol");
	var_edc6e0e1 namespace_82b91a51::function_958c7633();
	var_edc6e0e1 namespace_ad23e503::function_c35e6aab("set_0_done");
	var_edc6e0e1 thread function_c8a963d2();
	var_edc6e0e1 thread function_c5005576();
	level thread namespace_a92ad484::function_12202095();
	level thread function_555c7428();
	namespace_cc27597::function_8f9f34e0("cin_lot_10_02_skybridge_vign_wwzfinale_approach", &function_2bf854b3, "play");
	level thread namespace_cc27597::function_43718187("cin_lot_10_02_skybridge_vign_wwzfinale_approach");
	var_edc6e0e1 waittill("hash_6cf6ac7e");
	var_edc6e0e1 function_ada64136();
	var_edc6e0e1 function_8d87b0f9();
	var_edc6e0e1.var_b691b9cf = "fxanim_skybridge_vtol";
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_skybridge_vtol_idle_bundle", var_edc6e0e1);
	namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb");
	level thread namespace_cc27597::function_43718187("cin_lot_10_02_skybridge_vign_wwzfinale");
	level waittill("hash_441e4f3");
	var_edc6e0e1 namespace_82b91a51::function_4b741fdc();
	var_edc6e0e1.var_3e3a41eb = 1;
	var_edc6e0e1 notify("hash_128f8789");
	if(!function_5b49d38c(var_edc6e0e1))
	{
		var_edc6e0e1 function_dc8c8404();
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_skybridge_vtol_crash_bundle");
	var_692f87a6 = function_6ada35ba("fxanim_skybridge_vtol", "targetname");
	var_692f87a6 thread function_c5005576();
	namespace_4dbf3ae3::function_42e87952("kill_sm_wwz_vtol_block_rushing_players", "targetname");
	level waittill("hash_2989fcfb");
	function_37cbcf1a("evt_bridge_explosion", var_692f87a6.var_722885f3);
	var_b9acdfe5 = namespace_14b42b8a::function_7922262b("smoke_raven_location");
	function_fd4ba5e1(level.var_c1aa5253["raven_explosion"], var_b9acdfe5.var_722885f3, (1, 1, 0), (0, 0, 1));
	var_67825717 = function_6ada35ba("vol_wwz_crash", "targetname");
	var_c9f1aa5e = function_b8494651("team3");
	var_c9f1aa5e = function_525ae497(var_c9f1aa5e, function_b8494651("axis"), 0, 0);
	var_c9f1aa5e = function_57efbe1(var_c9f1aa5e, level.var_2fd26037.var_722885f3);
	var_6f23fc2e = 0;
	foreach(var_f6c5842 in var_c9f1aa5e)
	{
		if(var_f6c5842 function_32fa5072(var_67825717))
		{
			var_f6c5842 function_c3945cd5(var_f6c5842.var_3a90f16b, var_f6c5842.var_722885f3, undefined, undefined, undefined, "MOD_GRENADE_SPLASH");
		}
	}
	function_56782c4("sb_1_broken_start", 0);
	function_67db331d("skybridge_event_10-42", "hide");
	function_67db331d("skybridge_event_10-42-clip", "hide");
	function_67db331d("skybridge_event_10-42_broken", "show");
	var_a917350c function_14c24d9d();
	function_6ada35ba("lotus2_vtol_crash_roof_clip", "targetname") function_dc8c8404();
	function_6ada35ba("skybridge_crash_oob", "targetname") function_dc8c8404();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("artillery_rumble");
		function_9cf04c2e(0.65, 0.7, var_5dc5e20a.var_722885f3, 128);
	}
	namespace_4dbf3ae3::function_42e87952("hunter_crashes_after_wwz_vtol");
	wait(3);
	level namespace_ad23e503::function_74d6b22f("wwz_vtol_crash_done");
	level thread function_2e696104();
	namespace_d0ef8521::function_48f26766("cp_waypoint_breadcrumb");
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level namespace_cc27597::function_c35e6aab("cin_lot_10_03_skybridge_vign_vtoljump_hendricks_start", level.var_2fd26037);
	level waittill("hash_baec8538");
	namespace_ad23e503::function_1ab5ebec("hendricks_jump_down_to_vtol");
	level namespace_cc27597::function_fcf56ab5("cin_lot_10_03_skybridge_vign_vtoljump_hendricks_start");
	level namespace_cc27597::function_43718187("cin_lot_10_03_skybridge_vign_vtoljump_hendricks", level.var_2fd26037);
	level namespace_cc27597::function_c35e6aab("cin_lot_10_03_skybridge_vign_vtoljump_hendricks_end", level.var_2fd26037);
	namespace_ad23e503::function_1ab5ebec("hendricks_jump_across_from_vtol");
	if(isdefined(level.var_7285b6d5))
	{
		level thread [[level.var_7285b6d5]]();
	}
	level namespace_cc27597::function_43718187("cin_lot_10_03_skybridge_vign_vtoljump_hendricks_end", level.var_2fd26037);
	namespace_4dbf3ae3::function_42e87952("end_skybridge2_rvh");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_c5005576
	Namespace: namespace_da5cdb0c
	Checksum: 0x3A79960B
	Offset: 0x6110
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_c5005576()
{
	self endon("hash_128f8789");
	self endon("hash_2989fcfb");
	while(1)
	{
		function_5e09918e("cp_lotus_rumble_wwz_vtol", self.var_722885f3);
		wait(0.1);
	}
}

/*
	Name: function_c8a963d2
	Namespace: namespace_da5cdb0c
	Checksum: 0xBD74C60C
	Offset: 0x6168
	Size: 0x1EF
	Parameters: 0
	Flags: None
*/
function function_c8a963d2()
{
	self endon("hash_128f8789");
	self endon("hash_2989fcfb");
	wait(1);
	var_56dd1913 = function_c20c2e8("rvh_ambient_first", "script_string");
	foreach(var_2eecd77a in var_56dd1913)
	{
		if(function_5b49d38c(var_2eecd77a))
		{
			self namespace_37b990db::function_d104c596(var_2eecd77a, -1, undefined, 0);
		}
	}
	self namespace_ad23e503::function_74d6b22f("set_0_done");
	while(1)
	{
		var_c9f1aa5e = function_c20c2e8("sky_bridge_swarm", "script_string");
		foreach(var_f6c5842 in var_c9f1aa5e)
		{
			if(function_5b49d38c(var_f6c5842))
			{
				self namespace_37b990db::function_d104c596(var_f6c5842, -1, undefined, 0);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_15bb85bc
	Namespace: namespace_da5cdb0c
	Checksum: 0xEEA8A4DA
	Offset: 0x6360
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_15bb85bc()
{
	var_f93e39e2 = namespace_14b42b8a::function_7faf4c39("wwz_vtol_block_rushing_players_align", "targetname");
	do
	{
		var_fd20b602 = namespace_84970cc4::function_47d18840(var_f93e39e2);
		wait(0.2);
	}
	while(!var_fd20b602.var_1049238d === 1);
	var_fd20b602.var_1049238d = 1;
	self function_179b4ac6(var_fd20b602, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
	var_fd20b602.var_1049238d = 0;
	self namespace_d84e54db::function_b4f5e3b9(1);
	var_2188bf75 = function_6ada35ba("wwz_target", "targetname").var_722885f3;
	self function_169cc712(var_2188bf75, 0, 1200);
	self namespace_82b91a51::function_5b7e3888("goal", "near_goal");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self function_169cc712(self.var_722885f3, 0, 1200);
}

/*
	Name: function_555c7428
	Namespace: namespace_da5cdb0c
	Checksum: 0xABDD7C14
	Offset: 0x64E8
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_555c7428()
{
	level namespace_71b8dba1::function_a463d127("khal_central_i_need_rein_0", 3);
	level namespace_71b8dba1::function_a463d127("kane_khalil_gimme_a_sit_0", 2);
	level namespace_71b8dba1::function_a463d127("kane_lost_central_comms_0", 2);
	level namespace_71b8dba1::function_a463d127("ecmd_lieutenant_khalil_s_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_what_about_kha_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_john_taylor_is_yo_0");
	level namespace_71b8dba1::function_a463d127("kane_i_promise_0", 0.5);
	level namespace_ad23e503::function_74d6b22f("khalil_convo_done");
}

/*
	Name: function_70f27cf6
	Namespace: namespace_da5cdb0c
	Checksum: 0xC33FB0F2
	Offset: 0x6600
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_70f27cf6()
{
	level namespace_ad23e503::function_1ab5ebec("khalil_convo_done");
	wait(1);
	level namespace_ad23e503::function_1ab5ebec("hendricks_jump_down_to_vtol");
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_how_long_until_0", 3);
	level namespace_71b8dba1::function_a463d127("kane_few_minutes_tops_g_0", 2);
	level namespace_ad23e503::function_1ab5ebec("wont_be_long_now");
	level namespace_71b8dba1::function_a463d127("plyr_it_won_t_be_long_now_0");
	level namespace_ad23e503::function_74d6b22f("skybridge_final_vo_can_play");
}

/*
	Name: function_132d3902
	Namespace: namespace_da5cdb0c
	Checksum: 0xFD649B81
	Offset: 0x66F0
	Size: 0x315
	Parameters: 0
	Flags: None
*/
function function_132d3902()
{
	level thread function_92d695a8();
	namespace_4dbf3ae3::function_1ab5ebec("trig_sb_climbers_0");
	var_19321990 = "right_";
	var_c2d82f9b = function_feb90a14(3);
	var_f5253661 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		var_3a997f10 = namespace_2f06d687::function_7387a40a("sb_1_normal_climber");
		var_43b313f7 = var_c2d82f9b[var_f5253661];
		var_adf03719 = namespace_14b42b8a::function_7922262b("sb_normal_climb_" + var_19321990 + var_43b313f7);
		var_3a997f10 thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
		if(var_19321990 == "left_")
		{
			var_19321990 = "right_";
		}
		else
		{
			var_19321990 = "left_";
		}
		var_f5253661++;
		if(var_f5253661 == var_c2d82f9b.size)
		{
			var_c2d82f9b = function_f1a5312(var_c2d82f9b);
			var_f5253661 = 0;
		}
		if(namespace_d73b9283::function_d2c92ee7())
		{
			var_3a997f10 namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_3");
		}
		wait(function_72a94f05(0.3, 1));
	}
	if(level.var_2395e945.size > 2)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < 2; var_c957f6b6++)
		{
			var_3a997f10 = namespace_2f06d687::function_7387a40a("sb_forced_level_1");
			var_43b313f7 = function_26299103(1);
			var_adf03719 = namespace_14b42b8a::function_7922262b("sb_fast_climb_" + var_19321990 + var_43b313f7);
			var_3a997f10 thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
			if(var_19321990 == "left_")
			{
				var_19321990 = "right_";
			}
			else
			{
				var_19321990 = "left_";
			}
			wait(function_72a94f05(0.3, 1));
		}
	}
}

/*
	Name: function_feb90a14
	Namespace: namespace_da5cdb0c
	Checksum: 0x877E8082
	Offset: 0x6A10
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_feb90a14(var_aaa62b0c)
{
	var_c2d82f9b = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_aaa62b0c; var_c957f6b6++)
	{
		if(!isdefined(var_c2d82f9b))
		{
			var_c2d82f9b = [];
		}
		else if(!function_6e2770d8(var_c2d82f9b))
		{
			var_c2d82f9b = function_84970cc4(var_c2d82f9b);
		}
		var_c2d82f9b[var_c2d82f9b.size] = var_c957f6b6;
	}
	var_c2d82f9b = function_f1a5312(var_c2d82f9b);
	return var_c2d82f9b;
}

/*
	Name: function_f1a5312
	Namespace: namespace_da5cdb0c
	Checksum: 0x7436BB1C
	Offset: 0x6AD8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_f1a5312(var_e15110d3)
{
	var_1cb55aeb = undefined;
	var_c5b0e858 = var_e15110d3[var_e15110d3.size - 1];
	while(!(isdefined(var_1cb55aeb) && var_1cb55aeb))
	{
		var_e15110d3 = namespace_84970cc4::function_8332f7f6(var_e15110d3);
		if(var_e15110d3[0] != var_c5b0e858)
		{
			var_1cb55aeb = 1;
		}
		wait(0.05);
	}
	return var_e15110d3;
}

/*
	Name: function_92d695a8
	Namespace: namespace_da5cdb0c
	Checksum: 0x4581A354
	Offset: 0x6B78
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_92d695a8()
{
	level endon("hash_2989fcfb");
	level waittill("hash_f84c667e");
	level thread function_88e98712();
	var_f6c5842 = namespace_2f06d687::function_7387a40a("robot_swarm_t2");
	var_f6c5842.var_db7bb468 = "sky_bridge_swarm";
	var_c2d82f9b = function_feb90a14(13);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_c2d82f9b.size; var_c957f6b6++)
	{
		var_3a997f10 = namespace_2f06d687::function_7387a40a("sb_forced_level_2");
		var_3a997f10.var_db7bb468 = "sky_bridge_swarm";
		var_adf03719 = namespace_14b42b8a::function_7922262b("sb_fast_climb_swarm_" + var_c2d82f9b[var_c957f6b6]);
		var_3a997f10 thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
		wait(function_72a94f05(1, 3));
	}
	level notify("hash_88e98712");
}

/*
	Name: function_88e98712
	Namespace: namespace_da5cdb0c
	Checksum: 0x5BA87903
	Offset: 0x6D08
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_88e98712()
{
	level endon("hash_2989fcfb");
	level waittill("hash_88e98712");
	var_c2d82f9b = function_feb90a14(13);
	var_f5253661 = 0;
	while(1)
	{
		var_61a19dc6 = function_c20c2e8("sky_bridge_swarm", "script_string");
		if(var_61a19dc6.size < 13)
		{
			var_3a997f10 = namespace_2f06d687::function_7387a40a("sb_forced_level_2");
			var_3a997f10.var_db7bb468 = "sky_bridge_swarm";
			var_adf03719 = namespace_14b42b8a::function_7922262b("sb_fast_climb_swarm_continue_" + var_c2d82f9b[var_f5253661]);
			var_3a997f10 thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_climbinfast_robot01");
			var_f5253661++;
			if(var_f5253661 == var_c2d82f9b.size)
			{
				var_c2d82f9b = function_f1a5312(var_c2d82f9b);
				var_f5253661 = 0;
			}
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_179b4ac6
	Namespace: namespace_da5cdb0c
	Checksum: 0x2065164B
	Offset: 0x6E98
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_179b4ac6(var_adf03719, var_f501f9e9)
{
	self endon("hash_128f8789");
	self function_d61ede6b(1);
	self namespace_1fb6a2e5::function_43718187(var_f501f9e9, var_adf03719);
	self function_d61ede6b(0);
}

/*
	Name: function_b7f9ae1f
	Namespace: namespace_da5cdb0c
	Checksum: 0x4BD7B01A
	Offset: 0x6F10
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_b7f9ae1f(var_350c27ef)
{
	self waittill("hash_9ad21f0c");
	self namespace_d84e54db::function_19e98020(var_350c27ef, 64, 1, undefined, undefined, 1);
}

/*
	Name: function_d5c66ea2
	Namespace: namespace_da5cdb0c
	Checksum: 0xBCD62CA9
	Offset: 0x6F60
	Size: 0x3A1
	Parameters: 3
	Flags: None
*/
function function_d5c66ea2(var_e270de9a, var_1c0be1aa, var_a6902cc5)
{
	if(!isdefined(var_1c0be1aa))
	{
		var_1c0be1aa = undefined;
	}
	if(!isdefined(var_a6902cc5))
	{
		var_a6902cc5 = undefined;
	}
	var_6df191e = namespace_14b42b8a::function_7922262b(var_e270de9a, "targetname");
	if(function_5dbf7eca(var_e270de9a, "double"))
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("vign_thrown_robot_level_2", &namespace_82b91a51::function_958c7633);
		var_3f3a4339 = namespace_2f06d687::function_7387a40a("vign_thrown_human", &namespace_82b91a51::function_958c7633);
		var_e71e42f3 = namespace_2f06d687::function_7387a40a("vign_thrown_human02");
		var_c77d2837 = function_84970cc4(var_3f3a4339, var_e71e42f3, var_f6c5842);
		foreach(var_a3d46ee4 in var_c77d2837)
		{
			var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
		}
		var_6df191e namespace_cc27597::function_43718187("cin_lot_09_02_pursuit_vign_thrown_double", var_c77d2837);
	}
	else if(function_5dbf7eca(var_e270de9a, "shot"))
	{
		var_3f3a4339 = namespace_2f06d687::function_7387a40a("vign_thrown_human", &namespace_82b91a51::function_958c7633);
		var_f6c5842 = namespace_2f06d687::function_7387a40a("vign_thrown_robot_level_1");
		var_c77d2837 = function_84970cc4(var_3f3a4339, var_f6c5842);
		foreach(var_a3d46ee4 in var_c77d2837)
		{
			var_a3d46ee4 namespace_82b91a51::function_4b741fdc();
		}
		var_6df191e namespace_cc27597::function_43718187("cin_lot_09_02_pursuit_vign_thrown_shot", var_c77d2837);
		if(function_5b49d38c(var_f6c5842))
		{
			var_f6c5842 namespace_d84e54db::function_ceb883cd("rogue_control", "level_2");
		}
	}
	if(isdefined(var_1c0be1aa))
	{
		if(isdefined(var_f6c5842) && function_5b49d38c(var_f6c5842))
		{
			var_f6c5842 thread [[var_1c0be1aa]]();
		}
	}
	if(isdefined(var_a6902cc5))
	{
		level thread [[var_a6902cc5]](var_c77d2837);
	}
}

/*
	Name: function_38aca7a
	Namespace: namespace_da5cdb0c
	Checksum: 0x685520EE
	Offset: 0x7310
	Size: 0x87B
	Parameters: 2
	Flags: None
*/
function function_38aca7a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		level.var_2fd26037.var_ca3202d["bc"] = 0;
		namespace_431cac9::function_69533bc9();
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_lotus_skybridge_vtol_crash_bundle");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_lotus_mobile_shop_sky01_bundle");
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("move_mode", "normal");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_mobile_shop_sky03_break_bundle");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_skybridge_hunter_crash_01_bundle");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_skybridge_hunter_crash_02_bundle");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_skybridge_hunter_crash_03_bundle");
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_skybridge_hunter_crash_04_bundle");
		namespace_431cac9::function_f80cafbd(1);
		level thread function_fbd7205();
		level thread function_8175b0d4(0);
		level thread function_46627c19(6, "hendricks_color_sky_bridge2_start", 0);
		level thread function_46627c19(7, "hendricks_color_sky_bridge2_start", function_72a94f05(0, 2));
		level thread function_46627c19(8, "hendricks_color_sky_bridge2_start", function_72a94f05(0, 2));
		level thread function_8b154406(var_74cd64bc, "sky_bridge2_obj_breadcrumb");
		level thread function_e50bbb52();
		namespace_d7916d65::function_a2995f22();
		namespace_80983c42::function_80983c42("fx_exterior_vtol_bridge_crash");
		namespace_80983c42::function_80983c42("fx_vista_read2a");
		namespace_431cac9::function_176c92fd();
		level namespace_ad23e503::function_74d6b22f("khalil_convo_done");
		level namespace_ad23e503::function_74d6b22f("hendricks_jump_down_to_vtol");
		function_8bb390e5(1);
		level thread function_70f27cf6();
	}
	namespace_2f06d687::function_2b37a3c9("sb_wasp", "script_noteworthy", &function_92753586);
	function_67db331d("skybridge_event_10-42", "delete");
	function_67db331d("skybridge_event_10-42-clip", "delete");
	function_67db331d("skybridge_event_10-42_broken", "show");
	level thread function_843bdbe4();
	level thread function_5fcdf0e7(5);
	if(level.var_2395e945.size > 2)
	{
		var_3a997f10 = namespace_2f06d687::function_7387a40a("sb_1_normal_climber");
		var_adf03719 = namespace_14b42b8a::function_7922262b("sb_normal_climb_2");
		var_3a997f10 thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_sideclimb_robot02");
		namespace_d5067552::function_bae40a28("sm_sky_bridge_2");
	}
	level thread function_1294d662();
	function_be1c6bc9("trig_sky_bridge_bottom_0");
	namespace_4dbf3ae3::function_42e87952("trig_sky_bridge_bottom_0", "targetname", undefined, 0);
	wait(1);
	namespace_4dbf3ae3::function_42e87952("trig_sb2_top_0", "targetname", undefined, 0);
	var_3a997f10 = namespace_2f06d687::function_7387a40a("sb_1_normal_climber");
	var_adf03719 = namespace_14b42b8a::function_7922262b("sb_normal_climb_1");
	var_3a997f10 thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_sideclimb_robot02");
	namespace_4dbf3ae3::function_1ab5ebec("sky_bridge2_hendricks_vo");
	level thread function_f6434b1f();
	namespace_4dbf3ae3::function_1ab5ebec("trig_sb_2_retreat");
	var_61a19dc6 = function_c20c2e8("sb_2_shooters", "script_string");
	var_67825717 = function_6ada35ba("vol_sb_2_retreat", "targetname");
	foreach(var_f6c5842 in var_61a19dc6)
	{
		var_f6c5842 function_169cc712(var_67825717, 1);
	}
	level thread function_fa01f7b8();
	namespace_4dbf3ae3::function_1ab5ebec("sky_bridge2_final_vo");
	level thread function_80b5176f();
	var_7ab662a3 = namespace_4dbf3ae3::function_1ab5ebec("sky_bridge2_complete");
	level notify("hash_5de07fa5");
	if(isdefined(level.var_551bb62))
	{
		level thread [[level.var_551bb62]]();
	}
	level thread namespace_71b8dba1::function_13b3b16a("plyr_kane_something_s_wr_0", 1.5);
	level thread namespace_cc27597::function_8f9f34e0("cin_lot_09_01_pursuit_1st_switch_start", &function_203a65ec, "skip_started");
	level thread namespace_cc27597::function_43718187("cin_lot_09_01_pursuit_1st_switch_start", var_7ab662a3.var_aef176e7);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_35cef19b);
	level waittill("hash_6a4e357d");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	namespace_1d795d47::function_be8adfb8("sky_bridge2");
}

/*
	Name: function_203a65ec
	Namespace: namespace_da5cdb0c
	Checksum: 0xB3F5ECA5
	Offset: 0x7B98
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_203a65ec(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_5e6740a8(1);
	}
	namespace_82b91a51::function_7e61de2b(0, "black");
}

/*
	Name: function_35cef19b
	Namespace: namespace_da5cdb0c
	Checksum: 0x36AB68AB
	Offset: 0x7C58
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_35cef19b()
{
	self endon("hash_128f8789");
	var_de0db1fd = 0.5;
	var_66c3b4b9 = 0.6;
	while(var_66c3b4b9 >= 0)
	{
		self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1);
		wait(var_de0db1fd);
		self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
		wait(var_66c3b4b9);
		var_66c3b4b9 = var_66c3b4b9 - 0.05;
		var_de0db1fd = var_de0db1fd + 0.1;
	}
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1);
}

/*
	Name: function_1294d662
	Namespace: namespace_da5cdb0c
	Checksum: 0xDDF5AF4A
	Offset: 0x7D40
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1294d662()
{
	namespace_4dbf3ae3::function_1ab5ebec("hendricks_color_sky_bridge2_start");
	var_3a997f10 = namespace_2f06d687::function_7387a40a("sb_1_normal_climber");
	var_adf03719 = namespace_14b42b8a::function_7922262b("sb_normal_climb_0");
	var_3a997f10 thread function_179b4ac6(var_adf03719, "ch_lot_10_03_skybridge_aie_sideclimb_robot02");
}

/*
	Name: function_843bdbe4
	Namespace: namespace_da5cdb0c
	Checksum: 0xFC0EDFDB
	Offset: 0x7DD8
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_843bdbe4()
{
	level waittill("hash_74eca106");
	var_e4630460 = function_c9c1e189("sky_bridge_flyby_vtol");
	var_566a739b = function_c9c1e189("sky_bridge_flyby_vtol02");
	var_e4630460 thread function_ec3fbb5c("sb2_flyby_vtol", 1, 1, 0);
	wait(2);
	var_566a739b thread function_ec3fbb5c("sb2_flyby_vtol02", 1, 1, 0);
}

/*
	Name: function_f6434b1f
	Namespace: namespace_da5cdb0c
	Checksum: 0x8702E80B
	Offset: 0x7E98
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_f6434b1f()
{
	var_e4630460 = function_c9c1e189("sky_bridge_flyby_vtol");
	var_566a739b = function_c9c1e189("sky_bridge_flyby_vtol02");
	var_e4630460 thread function_ec3fbb5c("sb2_flyby_vtol", 2, 2, 0);
	wait(2);
	var_566a739b thread function_ec3fbb5c("sb2_flyby_vtol02", 2, 2, 0);
}

/*
	Name: function_be1c6bc9
	Namespace: namespace_da5cdb0c
	Checksum: 0xFF8C04E6
	Offset: 0x7F48
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_be1c6bc9(var_aa686173)
{
	level endon(var_aa686173);
	while(1)
	{
		var_bdd1b88a = function_b8494651("team3");
		var_bdd1b88a = function_525ae497(var_bdd1b88a, function_b8494651("axis"), 0, 0);
		var_bdd1b88a = namespace_84970cc4::function_3d5de9eb(var_bdd1b88a, 0, &function_67fe0ba5, "sky_bridge2_start_area");
		if(!var_bdd1b88a.size)
		{
			return;
		}
		wait(0.2);
	}
}

/*
	Name: function_67fe0ba5
	Namespace: namespace_da5cdb0c
	Checksum: 0xB7426CE6
	Offset: 0x8010
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function function_67fe0ba5(var_315e324, var_cbb15570)
{
	var_67825717 = function_6ada35ba(var_cbb15570, "targetname");
	if(var_315e324 function_32fa5072(var_67825717))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_80b5176f
	Namespace: namespace_da5cdb0c
	Checksum: 0x737C8147
	Offset: 0x8080
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_80b5176f()
{
	level namespace_ad23e503::function_1ab5ebec("skybridge_final_vo_can_play");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_taylor_it_s_just_yo_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_this_isn_t_you_it_0", 0.5);
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_what_is_it_john_wh_0", 1);
	wait(5.5);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1);
		wait(0.5);
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
	}
}

/*
	Name: function_92753586
	Namespace: namespace_da5cdb0c
	Checksum: 0xC41FA35E
	Offset: 0x81E0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_92753586()
{
	self.var_3e94206a = "team3";
	var_ac8ea4f8 = function_c20c2e8("friendly_vtol_crew_ai", "targetname");
	var_ac8ea4f8 = namespace_84970cc4::function_b87262e(var_ac8ea4f8, 0);
	if(var_ac8ea4f8.size > 0)
	{
		self function_21f41d11(namespace_84970cc4::function_47d18840(var_ac8ea4f8));
	}
}

/*
	Name: function_fa01f7b8
	Namespace: namespace_da5cdb0c
	Checksum: 0x3302791F
	Offset: 0x8280
	Size: 0x191
	Parameters: 0
	Flags: None
*/
function function_fa01f7b8()
{
	level waittill("hash_a31a8136");
	level thread namespace_a92ad484::function_beaa78ac();
	namespace_80983c42::function_80983c42("fx_sky_bridge_tower2_exp1");
	var_cc034878 = function_99201f25("tower2_ext_wall_explode_clean", "targetname");
	foreach(var_93700c60 in var_cc034878)
	{
		var_93700c60 function_dc8c8404();
	}
	var_1adcc6bf = function_99201f25("tower2_ext_wall_explode_destroy", "targetname");
	foreach(var_93700c60 in var_1adcc6bf)
	{
		var_93700c60 function_48f26766();
	}
}

/*
	Name: function_664a4f61
	Namespace: namespace_da5cdb0c
	Checksum: 0xED20EB9A
	Offset: 0x8420
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_664a4f61(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_6e922340
	Namespace: namespace_da5cdb0c
	Checksum: 0xA281BAC6
	Offset: 0x8450
	Size: 0x633
	Parameters: 0
	Flags: None
*/
function function_6e922340()
{
	level endon("hash_cdd1ff1a");
	level.var_986e1af6 = function_6ada35ba("skybridge_flyby_vtol_ea", "targetname") namespace_2f06d687::function_9b7fda5e();
	level.var_b68f1f5e = function_6ada35ba("skybridge_flyby_hunter_nrc", "targetname") namespace_2f06d687::function_9b7fda5e();
	level.var_b68f1f5e function_e0a794cf(125);
	level.var_b68f1f5e namespace_72ee5da4::function_81b6f1ac();
	level.var_b68f1f5e namespace_d84e54db::function_c9e45d52(1);
	var_26778947 = function_6ada35ba("trig_industrial_outside", "targetname");
	var_1a9e6c60 = var_26778947 function_e59527c1();
	var_26778947 waittill("hash_4dbf3ae3");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_skybridge_hunter_intro_bundle");
	var_4b9443a2 = function_243bb261("skybridge_flyby_vtol_opening_chaser_start", "targetname");
	var_377191e4 = function_243bb261("skybridge_flyby_vtol_opening_chased_start", "targetname");
	var_780ea365 = level.var_986e1af6;
	var_cbe20803 = level.var_b68f1f5e;
	var_780ea365 function_5c586b0b(var_4b9443a2);
	var_780ea365 function_d142a882();
	wait(0.5);
	function_9cf04c2e(0.45, 0.75, var_1a9e6c60, 256);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("grenade_rumble");
	}
	wait(1);
	var_cbe20803 function_5c586b0b(var_377191e4);
	var_cbe20803 function_d142a882();
	wait(0.5);
	function_9cf04c2e(0.45, 0.75, var_1a9e6c60, 256);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("grenade_rumble");
	}
	var_780ea365 waittill("hash_6cf6ac7e");
	var_1969d6b4 = function_72a94f05(2, 3.5);
	while(1)
	{
		var_6c6f2d1e = function_dc99997a(1, 4);
		var_4b9443a2 = function_243bb261("skybridge_flyby_vtol_" + var_6c6f2d1e + "_chaser_start", "targetname");
		var_377191e4 = function_243bb261("skybridge_flyby_vtol_" + var_6c6f2d1e + "_chased_start", "targetname");
		var_aa5679bb = function_26299103(1);
		switch(var_aa5679bb)
		{
			case 0:
			{
				var_780ea365 = level.var_986e1af6;
				var_cbe20803 = level.var_b68f1f5e;
				break;
			}
			case 1:
			{
				var_780ea365 = level.var_b68f1f5e;
				var_cbe20803 = level.var_986e1af6;
				break;
			}
			case 2:
			{
				var_780ea365 = level.var_986e1af6;
				var_cbe20803 = undefined;
				break;
			}
			case 3:
			{
				var_780ea365 = level.var_b68f1f5e;
				var_cbe20803 = undefined;
				break;
			}
		}
		var_780ea365 function_5c586b0b(var_4b9443a2);
		var_780ea365 function_d142a882();
		wait(function_72a94f05(1, 1.5));
		if(isdefined(var_cbe20803))
		{
			var_cbe20803 function_5c586b0b(var_377191e4);
			var_cbe20803 function_d142a882();
		}
		var_780ea365 waittill("hash_6cf6ac7e");
		wait(var_1969d6b4);
		var_1969d6b4 = function_72a94f05(2, 3.5);
	}
}

/*
	Name: function_fdb69d4a
	Namespace: namespace_da5cdb0c
	Checksum: 0x94E11ECC
	Offset: 0x8A90
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_fdb69d4a()
{
	self endon("hash_128f8789");
	level.var_36f2abde = (-2636, -1390, 15832);
	if(!level namespace_ad23e503::function_7922262b("play_wwz_vtol_crash"))
	{
		if(!level namespace_ad23e503::function_7922262b("sb1_initial_battle_done"))
		{
			self function_3ab6abff();
			wait(2);
		}
		self thread function_d6f89ec3();
		function_af70fd8a(0, (-2636, -1390, 15832));
		level waittill("hash_72b07ac2");
	}
	if(!level namespace_ad23e503::function_7922262b("wwz_vtol_crash_done"))
	{
		function_af70fd8a(1);
		level waittill("hash_8e9d93f4");
		wait(2);
	}
	if(!level namespace_ad23e503::function_7922262b("jumpdown_to_cross_vtol"))
	{
		function_af70fd8a(0, (2327, -966, 15603.06));
		level waittill("hash_6fe7650a");
	}
	function_af70fd8a(0, (-997, 1966, 15136));
}

/*
	Name: function_af70fd8a
	Namespace: namespace_da5cdb0c
	Checksum: 0xF5C3A08B
	Offset: 0x8C18
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_af70fd8a(var_8972488e, var_81647593)
{
	if(!isdefined(var_81647593))
	{
		var_81647593 = undefined;
	}
	if(isdefined(var_81647593))
	{
		level.var_36f2abde = var_81647593;
	}
	if(!var_8972488e)
	{
		function_5e17f9d3();
	}
	level.var_941f173a = !var_8972488e;
}

/*
	Name: function_3ab6abff
	Namespace: namespace_da5cdb0c
	Checksum: 0xC24207AA
	Offset: 0x8C88
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_3ab6abff()
{
	self endon("hash_128f8789");
	level endon("hash_624fe616");
	namespace_4dbf3ae3::function_1ab5ebec("start_dawdler_check", "targetname", self);
}

/*
	Name: function_d6f89ec3
	Namespace: namespace_da5cdb0c
	Checksum: 0x59039B2C
	Offset: 0x8CD0
	Size: 0x3CB
	Parameters: 0
	Flags: None
*/
function function_d6f89ec3()
{
	var_7be70491 = 20 * 0.2;
	var_b77bdab = function_b6b79a0(1 / 0.2);
	var_acd23ae0 = 2 * var_b77bdab;
	var_e95d58b2 = 3 * var_b77bdab;
	var_e4609c20 = 12 * var_b77bdab;
	var_9a176c0c = 3 * var_b77bdab;
	var_a6b5a5f2 = 8 * var_b77bdab;
	self endon("hash_128f8789");
	level endon("hash_16e710ad");
	function_5e17f9d3();
	while(1)
	{
		if(level.var_941f173a)
		{
			if(level.var_d87b4b0e > 0)
			{
				level.var_d87b4b0e--;
			}
			if(level.var_3d810458 > 0)
			{
				level.var_3d810458--;
			}
			var_48529301 = function_87ea89a(self.var_722885f3, level.var_36f2abde);
			var_50a0147f = level.var_272cec8f - var_48529301;
			namespace_84970cc4::function_c3545e51(level.var_757ec91f, var_50a0147f);
			level.var_272cec8f = var_48529301;
			if(level.var_757ec91f.size > var_acd23ae0)
			{
				function_6c668988(level.var_757ec91f, var_acd23ae0, 0);
			}
			var_97147322 = namespace_d73b9283::function_28df0c2c(level.var_757ec91f);
			if(var_97147322 < 0)
			{
				level.var_6f5f5ea0 = level.var_6f5f5ea0 + 2;
			}
			else if(var_97147322 < var_7be70491)
			{
				level.var_6f5f5ea0++;
			}
			else if(level.var_6f5f5ea0 > 0)
			{
				level.var_6f5f5ea0 = level.var_6f5f5ea0 - 4;
			}
			level.var_6f5f5ea0 = namespace_d73b9283::function_31931862(level.var_6f5f5ea0, 0, var_e4609c20);
			/#
				function_d52b076d("Dev Block strings are not supported" + var_97147322 + "Dev Block strings are not supported" + level.var_6f5f5ea0);
			#/
			if(level.var_6f5f5ea0 >= var_e4609c20)
			{
				if(level.var_d87b4b0e <= 0)
				{
					/#
						function_d52b076d("Dev Block strings are not supported");
					#/
					self thread function_98cf27e0();
					level.var_d87b4b0e = var_a6b5a5f2;
				}
			}
			else if(level.var_6f5f5ea0 > var_e95d58b2)
			{
				if(level.var_3d810458 <= 0)
				{
					/#
						function_d52b076d("Dev Block strings are not supported");
					#/
					self thread function_2806a9b0(level.var_d1f071b6);
					level.var_3d810458 = var_9a176c0c;
					level.var_d1f071b6++;
				}
			}
		}
		wait(0.2);
	}
}

/*
	Name: function_5e17f9d3
	Namespace: namespace_da5cdb0c
	Checksum: 0xA0E02BE9
	Offset: 0x90A8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_5e17f9d3()
{
	level.var_6f5f5ea0 = 0;
	level.var_d87b4b0e = 0;
	level.var_3d810458 = 0;
	level.var_d1f071b6 = 0;
	level.var_757ec91f = [];
	level.var_272cec8f = function_87ea89a(self.var_722885f3, level.var_36f2abde);
}

/*
	Name: function_2806a9b0
	Namespace: namespace_da5cdb0c
	Checksum: 0xCDFAA67D
	Offset: 0x9120
	Size: 0x2F5
	Parameters: 1
	Flags: None
*/
function function_2806a9b0(var_d1f071b6)
{
	self endon("hash_128f8789");
	var_f49de915 = 2 + var_d1f071b6;
	if(function_dc99997a(0, 100) < 40)
	{
		var_73aa72ef = function_c4d5ec1f("launcher_standard");
		var_6788cc47 = 1;
		var_eb493f55 = 2;
		var_39dd968a = 1;
	}
	else
	{
		var_73aa72ef = function_c4d5ec1f("lmg_light");
		var_6788cc47 = 6;
		var_eb493f55 = 20;
		var_39dd968a = 0.1;
	}
	var_fda0d24 = namespace_14b42b8a::function_7faf4c39("warn_dawdler_magicbullet_source", "targetname");
	var_f49de915 = namespace_d73b9283::function_31931862(var_f49de915, 2, var_fda0d24.size);
	for(var_c957f6b6 = var_f49de915; var_c957f6b6 > 0; var_c957f6b6--)
	{
		var_3fa4cbc4 = namespace_84970cc4::function_47d18840(var_fda0d24);
		var_4b9c2228 = function_dc99997a(var_6788cc47, var_eb493f55);
		do
		{
			var_8bfbf121 = function_dc99997a(50, 250);
			var_b1a681f4 = function_dc99997a(50, 250);
			if(function_26299103(100) < 50)
			{
			}
			else
			{
			}
			var_8bfbf121 = var_8bfbf121 * -1;
			if(function_26299103(100) < 50)
			{
			}
			else
			{
			}
			var_b1a681f4 = var_b1a681f4 * -1;
			function_87f3c622(var_73aa72ef, var_3fa4cbc4.var_722885f3, self.var_722885f3 + (var_8bfbf121, var_b1a681f4, 0));
			wait(function_72a94f05(0, var_39dd968a));
			var_4b9c2228--;
		}
		while(!var_4b9c2228 > 0);
		namespace_84970cc4::function_d010fbb9(var_fda0d24, var_3fa4cbc4);
	}
}

/*
	Name: function_98cf27e0
	Namespace: namespace_da5cdb0c
	Checksum: 0xD813CE2D
	Offset: 0x9420
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_98cf27e0()
{
	var_db68bd31 = namespace_14b42b8a::function_7faf4c39("hunter_crash_kill_lagger_impact_point", "targetname");
	var_4edc1532 = function_e7bdc1a1(self.var_722885f3, var_db68bd31);
	if(var_4edc1532.var_8202763a < 10)
	{
	}
	else
	{
	}
	var_8d8f9222 = "hunter_crash_kill_lagger";
	var_f4e069ec = namespace_14b42b8a::function_7922262b(var_8d8f9222 + var_4edc1532.var_8202763a, "script_noteworthy");
	var_1346ba83 = namespace_82b91a51::function_b9fd52a4("veh_t7_drone_hunter_nrc");
	var_f4e069ec thread function_d07395cc(var_1346ba83);
	var_b58ae759 = var_1346ba83 namespace_82b91a51::function_9fcf3cd8(5, "hunter_crash_impact");
	if(var_b58ae759 === "hunter_crash_impact")
	{
		if(!function_27c72c1b())
		{
			function_eac31668(var_4edc1532.var_722885f3, 500, self.var_3a90f16b * 2, self.var_3a90f16b, undefined, "MOD_EXPLOSIVE");
		}
	}
}

/*
	Name: function_fbd7205
	Namespace: namespace_da5cdb0c
	Checksum: 0xDECDDF3A
	Offset: 0x95D0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_fbd7205()
{
	var_eb48c16a = namespace_14b42b8a::function_7faf4c39("p7_fxanim_cp_lotus_dogfight_bundle", "scriptbundlename");
	namespace_84970cc4::function_966ecb29(var_eb48c16a, &namespace_cc27597::function_43718187);
}

/*
	Name: function_c9c1e189
	Namespace: namespace_da5cdb0c
	Checksum: 0x32CF61F7
	Offset: 0x9630
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_c9c1e189(var_c335265b)
{
	var_6d37f6c1 = namespace_96fa87af::function_22356ba7(var_c335265b);
	var_6d37f6c1[0] namespace_82b91a51::function_958c7633();
	return var_6d37f6c1[0];
}

/*
	Name: function_ec3fbb5c
	Namespace: namespace_da5cdb0c
	Checksum: 0x75292EF2
	Offset: 0x9690
	Size: 0x1F3
	Parameters: 4
	Flags: None
*/
function function_ec3fbb5c(var_cbb15570, var_b793b0f2, var_3882bd7, var_c871e91e)
{
	var_e8cd1704 = var_b793b0f2;
	var_e5e24312 = 0;
	self.var_d700fcda = 1;
	while(var_e8cd1704 <= var_3882bd7 && self.var_d700fcda)
	{
		var_4acb8b18 = function_243bb261(var_cbb15570 + "_path0" + var_e8cd1704, "targetname");
		self function_5c586b0b(var_4acb8b18);
		self function_d142a882();
		self waittill("hash_6cf6ac7e");
		var_506b336f = function_72a94f05(6, 12);
		var_c1ced5dc = var_506b336f * 0.3 * var_e5e24312;
		var_c1ced5dc = namespace_d73b9283::function_31931862(var_c1ced5dc, 0, 60);
		wait(var_506b336f + var_c1ced5dc);
		var_e8cd1704++;
		if(var_c871e91e)
		{
			if(var_e8cd1704 > var_3882bd7)
			{
				var_e8cd1704 = var_b793b0f2;
				var_e5e24312++;
			}
		}
	}
	self namespace_82b91a51::function_4b741fdc();
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_8175b0d4
	Namespace: namespace_da5cdb0c
	Checksum: 0x48200FE0
	Offset: 0x9890
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_8175b0d4(var_aa750b18)
{
	level notify("hash_5de07fa5");
	level endon("hash_5de07fa5");
	var_824105f2 = namespace_14b42b8a::function_7faf4c39("hunter_crash_ambient", "script_noteworthy");
	wait(var_aa750b18);
	while(1)
	{
		var_2e29ca4a = namespace_84970cc4::function_47d18840(var_824105f2);
		var_2e29ca4a namespace_cc27597::function_43718187(var_2e29ca4a.var_1157a889);
		var_824105f2 = namespace_84970cc4::function_d010fbb9(var_824105f2, var_2e29ca4a);
		var_8643fc8a = function_72a94f05(2, 10);
		wait(var_8643fc8a);
		if(var_824105f2.size == 0)
		{
			var_824105f2 = namespace_14b42b8a::function_7faf4c39("hunter_crash_ambient", "script_noteworthy");
		}
	}
}

/*
	Name: function_5fcdf0e7
	Namespace: namespace_da5cdb0c
	Checksum: 0xEE7963E9
	Offset: 0x99D0
	Size: 0x16D
	Parameters: 4
	Flags: None
*/
function function_5fcdf0e7(var_4bc288a0, var_e34a0fe5, var_1d010b6f, var_f0a36608)
{
	if(!isdefined(var_e34a0fe5))
	{
		var_e34a0fe5 = undefined;
	}
	var_63ef22cf = namespace_14b42b8a::function_7faf4c39("hunter_crash_group0" + var_4bc288a0, "script_noteworthy");
	namespace_4dbf3ae3::function_1ab5ebec("hunter_crash_group0" + var_4bc288a0, "script_noteworthy");
	foreach(var_f4e069ec in var_63ef22cf)
	{
		var_1346ba83 = namespace_82b91a51::function_b9fd52a4("veh_t7_drone_hunter_nrc");
		var_f4e069ec thread function_d07395cc(var_1346ba83);
		if(isdefined(var_e34a0fe5) && var_7ca663de == var_e34a0fe5)
		{
			var_1346ba83 thread [[var_1d010b6f]](var_f0a36608);
		}
	}
}

/*
	Name: function_d07395cc
	Namespace: namespace_da5cdb0c
	Checksum: 0xD7C3D4CD
	Offset: 0x9B48
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_d07395cc(var_79ddcc8b)
{
	self namespace_82b91a51::function_eb328a48();
	self namespace_cc27597::function_43718187(var_79ddcc8b);
}

/*
	Name: function_56782c4
	Namespace: namespace_da5cdb0c
	Checksum: 0x60225955
	Offset: 0x9B90
	Size: 0xE1
	Parameters: 2
	Flags: None
*/
function function_56782c4(var_87b2bbe5, var_f139af58)
{
	var_5ab883a0 = function_fe0cfd2e(var_87b2bbe5, "targetname");
	foreach(var_3c54858a in var_5ab883a0)
	{
		if(var_f139af58)
		{
			function_47d28a09(var_3c54858a);
			continue;
		}
		function_9ab58e36(var_3c54858a);
	}
}

/*
	Name: function_8b154406
	Namespace: namespace_da5cdb0c
	Checksum: 0x549B23DE
	Offset: 0x9C80
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_8b154406(var_74cd64bc, var_778cc6bb)
{
	namespace_d0ef8521::function_45d1556(var_778cc6bb);
}

/*
	Name: function_8bb390e5
	Namespace: namespace_da5cdb0c
	Checksum: 0x61B93979
	Offset: 0x9CB8
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_8bb390e5(var_864a3d55)
{
	if(var_864a3d55)
	{
	}
	else
	{
	}
	var_9dff5377 = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("skybridge_sand_fx", var_9dff5377);
	}
}

/*
	Name: function_2bf854b3
	Namespace: namespace_da5cdb0c
	Checksum: 0xE7B07945
	Offset: 0x9D80
	Size: 0x23B
	Parameters: 1
	Flags: None
*/
function function_2bf854b3(var_c77d2837)
{
	var_d27e665b = var_c77d2837["lot_10_02_skybridge_vign_wwzfinale_robot01"];
	var_6076f720 = var_c77d2837["lot_10_02_skybridge_vign_wwzfinale_robot02"];
	var_86797189 = var_c77d2837["lot_10_02_skybridge_vign_wwzfinale_robot03"];
	var_4485d596 = var_c77d2837["lot_10_02_skybridge_vign_wwzfinale_robot04"];
	var_6a884fff = var_c77d2837["lot_10_02_skybridge_vign_wwzfinale_robot05"];
	if(isdefined(var_d27e665b))
	{
		var_d27e665b namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 1);
	}
	if(isdefined(var_6076f720))
	{
		var_6076f720 namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 1);
	}
	if(isdefined(var_86797189))
	{
		var_86797189 namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 1);
	}
	if(isdefined(var_4485d596))
	{
		var_4485d596 namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 1);
	}
	if(isdefined(var_6a884fff))
	{
		var_6a884fff namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 1);
	}
	level waittill("hash_2989fcfb");
	if(isdefined(var_d27e665b))
	{
		var_d27e665b namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 0);
	}
	if(isdefined(var_6076f720))
	{
		var_6076f720 namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 0);
	}
	if(isdefined(var_86797189))
	{
		var_86797189 namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 0);
	}
	if(isdefined(var_4485d596))
	{
		var_4485d596 namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 0);
	}
	if(isdefined(var_6a884fff))
	{
		var_6a884fff namespace_71e9cb84::function_74d6b22f("rogue_bot_fx", 0);
	}
}

/*
	Name: function_e50bbb52
	Namespace: namespace_da5cdb0c
	Checksum: 0xB416E94C
	Offset: 0x9FC8
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_e50bbb52()
{
	var_a974bdb4 = function_6ada35ba("trigger_skybridge_umbra_gate", "targetname");
	while(1)
	{
		while(namespace_82b91a51::function_f08b9be6(var_a974bdb4, "allies"))
		{
			wait(0.25);
		}
		namespace_431cac9::function_3b6587d6(1, "lotus1_industrial_zone_umbra_gate");
		var_a974bdb4 namespace_4dbf3ae3::function_1ab5ebec();
		namespace_431cac9::function_3b6587d6(0, "lotus1_industrial_zone_umbra_gate");
	}
}

