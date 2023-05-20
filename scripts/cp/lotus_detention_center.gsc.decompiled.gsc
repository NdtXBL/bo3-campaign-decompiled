#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_elevator;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_accolades;
#using scripts\cp\lotus_util;
#using scripts\shared\ai\phalanx;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
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
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_20a6d5c1;

/*
	Name: function_ddf518df
	Namespace: namespace_20a6d5c1
	Checksum: 0xF34561A3
	Offset: 0x1F60
	Size: 0x77B
	Parameters: 2
	Flags: None
*/
function function_ddf518df(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level namespace_cc27597::function_c35e6aab("vtol_hallway_ravens", "targetname");
		namespace_cc27597::function_5c143f59("p7_fxanim_cp_lotus_security_station_door_bundle");
		namespace_cc27597::function_5c143f59("p7_fxanim_cp_lotus_monitor_security_bundle");
		namespace_cc27597::function_6c130337("cin_lot_04_09_security_1st_kickgrate");
		var_2820f5e9 = function_99201f25("security_door_intact", "targetname");
		namespace_84970cc4::function_eaab05dc(var_2820f5e9, &function_dc8c8404);
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		level thread function_80318e87();
		namespace_431cac9::function_e58f5689();
		level thread namespace_cc27597::function_43718187("to_detention_center1_initial_bodies", "targetname");
		namespace_d7916d65::function_a2995f22();
	}
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("useGrenades", 0);
	level thread namespace_431cac9::function_e577c596("vtol_hallway_ravens", function_6ada35ba("trig_vtol_hallway_ravens", "targetname"), "vtol_hallway_raven_decals", "cp_lotus_projection_ravengrafitti3");
	if(function_27c72c1b())
	{
		thread function_383b165b();
	}
	level namespace_431cac9::function_484bc3aa(0);
	namespace_76d95162::function_d9f49fba(0);
	namespace_2f06d687::function_2b37a3c9("zipline_guy", "script_noteworthy", &namespace_82b91a51::function_958c7633);
	namespace_2f06d687::function_2b37a3c9("zipline_guy", "script_noteworthy", &namespace_d84e54db::function_ceb883cd, "useGrenades", 0);
	namespace_2f06d687::function_2b37a3c9("zipline_victims", "targetname", &function_cba3d0d4);
	namespace_2f06d687::function_2b37a3c9("vtol_hallway_enemy", "script_noteworthy", &function_f2e34115);
	namespace_2f06d687::function_2b37a3c9("vtol_shooting_victim", "targetname", &function_f2e34115);
	namespace_2f06d687::function_2b37a3c9("vtol_shooting_victim_robot", "targetname", &function_f2e34115);
	namespace_2f06d687::function_2b37a3c9("landing_area_ally_victim", "targetname", &function_959c5937);
	namespace_96fa87af::function_994832bd("detention_center_vtol", &function_e907511f);
	namespace_96fa87af::function_994832bd("lotus_vtol_hallway_destruction_vtol", &function_d3a1377e);
	var_1083f981 = function_6ada35ba("vtol_hallway_open_door", "targetname");
	var_1083f981 function_175e6b8e(0);
	level namespace_ad23e503::function_74d6b22f("prometheus_otr_cleared");
	level thread function_6ed44248(var_74cd64bc);
	level.var_2fd26037 namespace_d84e54db::function_90d3ed43("hendricks_door_node", "targetname", 1);
	level.var_2fd26037 thread function_ec8c4d64();
	namespace_d5067552::function_bae40a28("sm_vtol_shooting_victims");
	namespace_d5067552::function_bae40a28("sm_vtol_hallway_robot_spawns");
	level namespace_ad23e503::function_1ab5ebec("hendricks_reached_vtol_hallway_door");
	level thread function_bad9594a();
	var_1083f981 = function_6ada35ba("vtol_hallway_open_door", "targetname");
	var_1083f981 function_175e6b8e(1);
	var_1083f981 waittill("hash_4dbf3ae3");
	level thread function_df5da340();
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_friendlys_repelling_0", 2.4);
	level waittill("hash_8c18560c");
	level namespace_ad23e503::function_74d6b22f("zipline_done");
	if(!function_27c72c1b())
	{
		function_383b165b();
	}
	namespace_4dbf3ae3::function_42e87952("hendricks_shooting_starts_color_trigger");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("coverIdleOnly", 0);
	level waittill("hash_facd74a1");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_vtol_hallway_destruction_01_bundle");
	namespace_96fa87af::function_7387a40a("lotus_vtol_hallway_destruction_vtol", 1);
	level thread function_613df5d9(13.3);
	var_4c24b478 = function_99201f25("ammo_cache", "script_noteworthy");
	foreach(var_dee1c358 in var_4c24b478)
	{
		var_dee1c358.var_e119970e namespace_a230c2b1::function_5815ab75();
	}
	function_2143f8c4();
}

/*
	Name: function_bad9594a
	Namespace: namespace_20a6d5c1
	Checksum: 0x9BD30B78
	Offset: 0x26E8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_bad9594a()
{
	function_37cbcf1a("evt_vtolhallway_walla", (-5564, 2906, 4158));
	level waittill("hash_e54c697");
	function_37cbcf1a("evt_vtolhallway_walla_death", (-5564, 2906, 4158));
}

/*
	Name: function_ec8c4d64
	Namespace: namespace_20a6d5c1
	Checksum: 0xADD72DA5
	Offset: 0x2750
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_ec8c4d64()
{
	level endon("hash_1e0c171f");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("coverIdleOnly", 1);
}

/*
	Name: function_383b165b
	Namespace: namespace_20a6d5c1
	Checksum: 0x4C3C2A1C
	Offset: 0x27B8
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_383b165b()
{
	var_58576bff = function_6ada35ba("vtol_hallway_door_left", "targetname");
	var_bbc00d9a = function_6ada35ba("vtol_hallway_door_right", "targetname");
	var_58576bff function_fde61077(100, 1);
	var_bbc00d9a function_fde61077(-100, 1);
	var_bbc00d9a waittill("hash_a21db68a");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level notify("hash_1e0c171f");
}

/*
	Name: function_80318e87
	Namespace: namespace_20a6d5c1
	Checksum: 0x8A308EAC
	Offset: 0x2898
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_80318e87(var_6dc777dc)
{
	if(!isdefined(var_6dc777dc))
	{
		var_6dc777dc = 0;
	}
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_vtol_hallway_flyby_bundle");
	if(var_6dc777dc)
	{
		namespace_ad23e503::function_1ab5ebec("security_station_breach_ai_cleared");
	}
	level thread function_9e1bef17();
	namespace_4dbf3ae3::function_1ab5ebec("vtol_fly_by");
	function_37cbcf1a("evt_vtolhallway_flyby", (-7235, 3447, 4079));
	level namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_lotus_vtol_hallway_flyby_bundle", &function_bb4e63f9, "play");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_vtol_hallway_flyby_bundle");
}

/*
	Name: function_bb4e63f9
	Namespace: namespace_20a6d5c1
	Checksum: 0x5C745FA9
	Offset: 0x29A8
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_bb4e63f9(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("cp_lotus_rumble_vtol_hallway_flyby");
	}
}

/*
	Name: function_9e1bef17
	Namespace: namespace_20a6d5c1
	Checksum: 0xAC27B4E4
	Offset: 0x2A50
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_9e1bef17()
{
	level namespace_71b8dba1::function_a463d127("kane_lieutenant_khalil_d_0");
	level namespace_71b8dba1::function_a463d127("khal_confirmed_air_suppo_0", 0.5);
}

/*
	Name: function_6ed44248
	Namespace: namespace_20a6d5c1
	Checksum: 0xA050CDA7
	Offset: 0x2AA8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_6ed44248(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_taylor_prison_cell");
	}
	namespace_d0ef8521::function_45d1556("vtol_hallway_obj_breadcrumb");
}

/*
	Name: function_df5da340
	Namespace: namespace_20a6d5c1
	Checksum: 0xA27421E
	Offset: 0x2AF8
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_df5da340()
{
	level thread function_199e4429();
	level namespace_cc27597::function_c35e6aab("cin_lot_07_02_detcenter_vign_zipline");
	level waittill("hash_99ffe550");
	namespace_d5067552::function_bae40a28("sm_vtol_hallway_innocent_runners");
	namespace_d5067552::function_bae40a28("sm_zipline_victims");
	level thread function_6047a747();
	namespace_4dbf3ae3::function_42e87952("zipline_guys_start_color_trigger");
	level thread namespace_cc27597::function_43718187("cin_lot_07_02_detcenter_vign_zipline");
	level waittill("hash_facd74a1");
	var_2caa2879 = function_6ada35ba("zipline_vtol", "targetname");
	var_6cac4ba4 = var_2caa2879.var_6ab6f4fd;
	var_2caa2879 function_470f7e4c();
	wait(0.05);
	var_2caa2879 namespace_1fb6a2e5::function_43718187("v_lot_07_02_detcenter_vign_zipline_vtol_depart", namespace_14b42b8a::function_7922262b("align_event_7_2_zipline"), undefined, undefined, undefined, undefined, undefined, undefined, undefined, 0);
	var_2caa2879.var_6ab6f4fd = var_6cac4ba4;
	var_2caa2879 function_8bdea13c(4500, 4);
	var_2caa2879 waittill("hash_a21db68a");
	var_2caa2879 function_dc8c8404();
}

/*
	Name: function_cba3d0d4
	Namespace: namespace_20a6d5c1
	Checksum: 0xD4AC371
	Offset: 0x2CE0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_cba3d0d4()
{
	self.var_d937392f = 0;
	var_d3f6be49 = function_c20c2e8("vtol_hallway_innocent_runners", "targetname");
	var_377a9c22 = namespace_84970cc4::function_47d18840(var_d3f6be49);
	if(isdefined(var_377a9c22))
	{
		self namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_377a9c22);
	}
}

/*
	Name: function_199e4429
	Namespace: namespace_20a6d5c1
	Checksum: 0x665B8782
	Offset: 0x2D78
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_199e4429()
{
	var_b28eb61c = namespace_14b42b8a::function_7922262b("vtol_zipline_break_glass_struct");
	level waittill("hash_ea9c6f10");
	function_be97adee(var_b28eb61c.var_722885f3, 200, 1000, 1000);
}

/*
	Name: function_6047a747
	Namespace: namespace_20a6d5c1
	Checksum: 0xE1FED5B9
	Offset: 0x2DE0
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_6047a747()
{
	level waittill("hash_8c18560c");
	var_c4b22a77 = function_c20c2e8("zipline_victims", "targetname");
	var_c033ff4 = function_c20c2e8("zipline_guy", "targetname");
	foreach(var_5eade0e9 in var_c033ff4)
	{
		var_5eade0e9 thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", var_c4b22a77[var_4bc288a0]);
	}
}

/*
	Name: function_e907511f
	Namespace: namespace_20a6d5c1
	Checksum: 0x396718CA
	Offset: 0x2EF0
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_e907511f()
{
	self namespace_37b990db::function_5988902d(1, 0);
	level.var_338f6013 = self;
}

/*
	Name: function_d3a1377e
	Namespace: namespace_20a6d5c1
	Checksum: 0x6B85199F
	Offset: 0x2F20
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_d3a1377e()
{
	level.var_c35e5e91 = self;
	level.var_c35e5e91 namespace_37b990db::function_3cf7ce0e(0.1, 0);
	level.var_c35e5e91.var_bab9655e = 0;
}

/*
	Name: function_613df5d9
	Namespace: namespace_20a6d5c1
	Checksum: 0x8480DE93
	Offset: 0x2F70
	Size: 0x6AB
	Parameters: 1
	Flags: None
*/
function function_613df5d9(var_9597a744)
{
	wait(2.66);
	var_db25489f = 0;
	var_9cb86044 = 0;
	var_38059b19 = level.var_c35e5e91.var_b888d69a[0];
	var_38059b19 namespace_ad23e503::function_74d6b22f("turret manual");
	level.var_c35e5e91 thread namespace_37b990db::function_afb82faf(var_9597a744, 0);
	level namespace_82b91a51::function_ef3f75eb("sndDSTR");
	level thread namespace_76d95162::function_d9f49fba(0);
	level thread function_f37f019c();
	level thread function_facc6349(4);
	level thread function_1e3790ff(2);
	level thread function_5d7e677d(4);
	level thread function_7126ab6f("allies_move_up");
	wait(2.4);
	var_db25489f = 2.4;
	var_6356aeef = var_9597a744 - 2.4 / 13;
	while(var_db25489f < var_9597a744)
	{
		var_4bc288a0 = function_b6b79a0(var_db25489f - 2.4 / var_6356aeef) + 1;
		var_4bc288a0 = namespace_d73b9283::function_31931862(var_4bc288a0, 1, 13);
		if(var_4bc288a0 < 10)
		{
		}
		else
		{
		}
		var_e4b1b0d6 = "vtol_shooting_area";
		var_5003a2bd = function_6ada35ba(var_e4b1b0d6 + var_4bc288a0, "targetname");
		var_e3b635fb = [];
		var_e3b635fb = function_b8494651("axis");
		var_3dd4b11c = namespace_84970cc4::function_3d5de9eb(var_e3b635fb, 0, &function_67fe0ba5, var_5003a2bd);
		foreach(var_446ec2f6 in var_3dd4b11c)
		{
			if(function_5b49d38c(var_446ec2f6))
			{
				if(isdefined(var_446ec2f6.var_958c7633) && var_446ec2f6.var_958c7633)
				{
					var_446ec2f6 namespace_82b91a51::function_4b741fdc();
				}
				if(!isdefined(var_446ec2f6.var_968edb1e))
				{
					var_446ec2f6.var_968edb1e = 1;
					var_446ec2f6 thread function_8f8d0072();
				}
			}
		}
		var_93abd77c = namespace_84970cc4::function_3d5de9eb(level.var_2395e945, 0, &function_67fe0ba5, var_5003a2bd);
		foreach(var_5dc5e20a in var_93abd77c)
		{
			var_5dc5e20a function_c3945cd5(var_5dc5e20a.var_3a90f16b, var_5dc5e20a.var_722885f3, undefined, undefined, undefined, "MOD_EXPLOSIVE");
		}
		var_446ac0ad = var_4bc288a0 - 1;
		var_446ac0ad = namespace_d73b9283::function_31931862(var_446ac0ad, 1, 13 - 1);
		var_ade4e252 = function_dbfa70cf(var_446ac0ad);
		var_a8364a58 = namespace_84970cc4::function_3d5de9eb(level.var_2395e945, 0, &function_67fe0ba5, var_ade4e252);
		foreach(var_5dc5e20a in var_a8364a58)
		{
			function_9cf04c2e(1, 0.1, var_5dc5e20a.var_722885f3, 32, var_5dc5e20a);
			var_5dc5e20a function_e2af603e("slide_loop");
		}
		wait(0.1);
		var_db25489f = var_db25489f + 0.1;
	}
	level thread namespace_76d95162::function_d9f49fba(1);
	level namespace_82b91a51::function_ef3f75eb("sndDSTRe");
	level thread namespace_a92ad484::function_51e72857();
	level.var_c35e5e91 namespace_82b91a51::function_4b741fdc();
	level.var_c35e5e91 thread namespace_37b990db::function_fcf56ab5(0);
	function_76bada8a(1);
}

/*
	Name: function_8f8d0072
	Namespace: namespace_20a6d5c1
	Checksum: 0x77F40F04
	Offset: 0x3628
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_8f8d0072()
{
	wait(function_72a94f05(0, 0.4));
	if(function_26299103(100) < 25)
	{
	}
	else
	{
	}
	var_3cce4ae7 = "MOD_UNKNOWN";
	self function_921a1574("evt_vtolhallway_dstr_bullet_imp_enemy");
	self function_c3945cd5(self.var_3a90f16b, self.var_722885f3, undefined, undefined, undefined, var_3cce4ae7);
	function_534b3cba(self.var_722885f3, 32, 16, 100);
}

/*
	Name: function_67fe0ba5
	Namespace: namespace_20a6d5c1
	Checksum: 0xBB41E8CF
	Offset: 0x3710
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_67fe0ba5(var_315e324, var_8c2d8a7f)
{
	if(!function_6e2770d8(var_8c2d8a7f))
	{
		var_8c2d8a7f = function_84970cc4(var_8c2d8a7f);
	}
	foreach(var_67825717 in var_8c2d8a7f)
	{
		if(var_315e324 function_32fa5072(var_67825717))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_dbfa70cf
	Namespace: namespace_20a6d5c1
	Checksum: 0x5F06CD87
	Offset: 0x37F8
	Size: 0x11D
	Parameters: 1
	Flags: None
*/
function function_dbfa70cf(var_65346df)
{
	var_46fcd4c = [];
	for(var_f852a368 = 2; var_65346df > 0 && var_f852a368 > 0; var_f852a368--)
	{
		if(var_65346df < 10)
		{
		}
		else
		{
		}
		var_84f20f7 = "vtol_shooting_area";
		var_e318ffa6 = function_6ada35ba(var_84f20f7 + var_65346df, "targetname");
		if(!isdefined(var_46fcd4c))
		{
			var_46fcd4c = [];
		}
		else if(!function_6e2770d8(var_46fcd4c))
		{
			var_46fcd4c = function_84970cc4(var_46fcd4c);
		}
		var_46fcd4c[var_46fcd4c.size] = var_e318ffa6;
		var_65346df--;
	}
	return var_46fcd4c;
}

/*
	Name: function_f37f019c
	Namespace: namespace_20a6d5c1
	Checksum: 0x784F46CA
	Offset: 0x3920
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_f37f019c()
{
	for(var_3b86078d = 1; var_3b86078d <= 4; var_3b86078d++)
	{
		var_b28eb61c = namespace_14b42b8a::function_7922262b("vtol_hallway_break_glass_struct0" + var_3b86078d, "targetname");
		function_be97adee(var_b28eb61c.var_722885f3, 200, 1000, 1000);
		wait(3.3);
	}
}

/*
	Name: function_7126ab6f
	Namespace: namespace_20a6d5c1
	Checksum: 0x58814917
	Offset: 0x39C8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_7126ab6f(var_8b453fd2)
{
	level waittill(var_8b453fd2);
	function_76bada8a(0);
	namespace_4dbf3ae3::function_42e87952("hendricks_exit_vtol_hallway_color_trigger");
}

/*
	Name: function_1e3790ff
	Namespace: namespace_20a6d5c1
	Checksum: 0x5AC4E725
	Offset: 0x3A18
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_1e3790ff(var_ee7dbbc9)
{
	wait(var_ee7dbbc9);
	namespace_d5067552::function_2992720d("sm_vtol_shooting_victims", 1);
	namespace_d5067552::function_2992720d("sm_vtol_hallway_robot_spawns", 1);
}

/*
	Name: function_76bada8a
	Namespace: namespace_20a6d5c1
	Checksum: 0x570D22B
	Offset: 0x3A70
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_76bada8a(var_2dd3286b)
{
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", var_2dd3286b);
	namespace_84970cc4::function_966ecb29(function_99201f25("zipline_guy", "script_noteworthy", 1), &namespace_d84e54db::function_ceb883cd, "sprint", var_2dd3286b);
}

/*
	Name: function_f2e34115
	Namespace: namespace_20a6d5c1
	Checksum: 0xDB138508
	Offset: 0x3B00
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f2e34115()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_d937392f = 0;
	level namespace_ad23e503::function_1ab5ebec("zipline_done");
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_facc6349
	Namespace: namespace_20a6d5c1
	Checksum: 0xF5E4FA4D
	Offset: 0x3B70
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_facc6349(var_35342f72)
{
	namespace_4dbf3ae3::function_4ab4cb6(var_35342f72, "supplemental_vtol_hallway_victims");
	var_a08b9452 = function_99201f25("supplemental_vtol_hallway_victim", "script_noteworthy");
	namespace_2f06d687::function_22356ba7(var_a08b9452, &function_f2e34115);
}

/*
	Name: function_5d7e677d
	Namespace: namespace_20a6d5c1
	Checksum: 0xAE2A397C
	Offset: 0x3BF8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_5d7e677d(var_ee7dbbc9)
{
	wait(var_ee7dbbc9);
	namespace_d5067552::function_bae40a28("sm_vtol_hallway_final_spawns");
}

/*
	Name: function_959c5937
	Namespace: namespace_20a6d5c1
	Checksum: 0xFAC40C2B
	Offset: 0x3C30
	Size: 0x2C1
	Parameters: 0
	Flags: None
*/
function function_959c5937()
{
	var_98a5836 = function_99201f25("landing_area_ally_victim_ai", "targetname");
	var_94607bce = var_98a5836.size - 1;
	if(var_94607bce > 1)
	{
	}
	else
	{
	}
	var_7a9b47b6 = 2.5;
	self namespace_82b91a51::function_958c7633();
	self.var_d937392f = 0;
	level waittill("hash_bb05f4d0");
	namespace_4dbf3ae3::function_4ab4cb6(var_7a9b47b6, "kill_landing_area_allies", "targetname");
	self namespace_82b91a51::function_4b741fdc();
	self.var_3a90f16b = 1;
	var_d320e401 = namespace_14b42b8a::function_7faf4c39("landing_area_magic_bullet_source", "targetname");
	var_24bbf032 = function_b8494651("axis");
	var_dfcc01fd = function_c4d5ec1f("lmg_light");
	var_484a53d8 = self.var_722885f3 + VectorScale((0, 0, 1), 32);
	foreach(var_6757c7e1 in var_d320e401)
	{
		var_4b9c2228 = function_dc99997a(1, 5);
		do
		{
			function_87f3c622(var_dfcc01fd, var_6757c7e1.var_722885f3, var_484a53d8);
			wait(function_72a94f05(0, 0.1));
			var_4b9c2228--;
		}
		while(!var_4b9c2228 > 0);
		wait(function_72a94f05(0, 0.2));
	}
}

/*
	Name: function_2143f8c4
	Namespace: namespace_20a6d5c1
	Checksum: 0xB16C0D5D
	Offset: 0x3F00
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_2143f8c4()
{
	level namespace_cc27597::function_c35e6aab("cin_merch_interior_lower", "targetname");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("sm_sm_vtol_hallway_final_spawns01_cleared", "sm_sm_vtol_hallway_final_spawns02_cleared"));
	level notify("hash_c243f1de");
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	level thread function_29458b95();
	namespace_1d795d47::function_be8adfb8("vtol_hallway");
}

/*
	Name: function_eef4fda8
	Namespace: namespace_20a6d5c1
	Checksum: 0x4A663555
	Offset: 0x3FC0
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_eef4fda8(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_82b91a51::function_67520c6a(1, undefined, &namespace_431cac9::function_6fc3995f);
	function_6ada35ba("pursuit_oob", "targetname") function_175e6b8e(0);
}

/*
	Name: function_9c0f8169
	Namespace: namespace_20a6d5c1
	Checksum: 0xF8F4CA23
	Offset: 0x4050
	Size: 0x443
	Parameters: 2
	Flags: None
*/
function function_9c0f8169(var_b04bc952, var_74cd64bc)
{
	level.var_f2bcf341 = namespace_14b42b8a::function_7922262b("cin_merch_interior_lower", "targetname");
	level.var_38d7d98e = namespace_14b42b8a::function_7922262b("cin_merch_interior_upper", "targetname");
	level thread function_97787d8d("open");
	namespace_76d95162::function_d9f49fba(0);
	if(function_27c72c1b())
	{
		level thread function_3257371f();
	}
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_cc27597::function_c35e6aab("cin_merch_interior_lower", "targetname");
		level namespace_cc27597::function_c35e6aab("mobile_shop2_ravens", "targetname");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_lotus_vtol_hallway_destruction_01_bundle");
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
		namespace_d7916d65::function_a2995f22();
		level thread function_29458b95(var_74cd64bc);
	}
	else
	{
		level namespace_cc27597::function_c35e6aab("mobile_shop2_ravens", "targetname");
	}
	level namespace_431cac9::function_484bc3aa(1);
	var_4c24b478 = function_99201f25("ammo_cache", "script_noteworthy");
	foreach(var_dee1c358 in var_4c24b478)
	{
		var_dee1c358.var_e119970e namespace_a230c2b1::function_76a3ab20();
	}
	level thread namespace_d0ef8521::function_45d1556("breadcrumb_mobile_ride_2");
	namespace_ad23e503::function_1ab5ebec("long_mobile_shop_start");
	function_d4f82627("set", "cp_mi_cairo_lotus_shop_ride");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_mobile_shops_merch_rpg_hit_bundle");
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_go_to_taylor_prison_cell");
	namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_taylor_holding_room");
	level waittill("hash_a6da966f");
	level.var_f2bcf341 namespace_cc27597::function_fcf56ab5();
	level.var_38d7d98e thread namespace_cc27597::function_43718187();
	function_c92f487e();
	level thread function_9a0b8bc1();
	namespace_4dbf3ae3::function_1ab5ebec("mobile_shop_ride2_done");
	function_d4f82627("clear");
	namespace_1d795d47::function_be8adfb8("mobile_shop_ride2");
}

/*
	Name: function_29458b95
	Namespace: namespace_20a6d5c1
	Checksum: 0x8A48C5CA
	Offset: 0x44A0
	Size: 0x57B
	Parameters: 1
	Flags: None
*/
function function_29458b95(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	namespace_76d95162::function_d9f49fba(0);
	if(!var_74cd64bc)
	{
		level.var_2fd26037 thread function_edd237d9();
	}
	level thread namespace_a92ad484::function_614dc783();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_okay_kane_enough_0");
	level namespace_71b8dba1::function_a463d127("kane_take_that_shop_up_to_0");
	level thread function_aa17eb00();
	level namespace_ad23e503::function_74d6b22f("mobile_shop_ride_ready");
	level thread function_c24a19de();
	level namespace_ad23e503::function_1ab5ebec("long_mobile_shop_start");
	if(isdefined(level.var_c027307f))
	{
		level thread [[level.var_c027307f]]();
	}
	var_d8cfd4dc = function_6ada35ba("mobile_ride_2_playerclip", "targetname");
	var_d8cfd4dc function_a96a2721(var_d8cfd4dc.var_722885f3 + VectorScale((0, 0, 1), 100), 0.05);
	level namespace_71e9cb84::function_74d6b22f("vtol_hallway_destruction_cleanup", 1);
	var_d26fd6e5 = function_6ada35ba("lotus_vtol_hallway_destruction01", "targetname");
	var_d26fd6e5 function_dc8c8404();
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level thread namespace_cc27597::function_43718187("cin_lot_07_05_detcenter_vign_observation", level.var_2fd26037);
	namespace_4dbf3ae3::function_1ab5ebec("hendricks_in_mobile_shop_2", "targetname", level.var_2fd26037);
	level thread function_97787d8d("close");
	wait(1.5);
	level thread namespace_431cac9::function_e577c596("mobile_shop2_ravens", undefined, "raven_decal_mobile_shop2", "cp_lotus_projection_ravengrafitti1");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	var_1c4260d1 = function_9b7fda5e("script_origin", (0, 0, 0));
	var_1c4260d1 function_921a1574("veh_mobile_shop_ride_start");
	var_1c4260d1 function_c2931a36("veh_mobile_shop_ride_loop");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_lotus_rumble_mobile_shop_ride_2");
	}
	level thread namespace_cc27597::function_43718187("cin_merch_interior_lower", "targetname");
	level waittill("hash_4e6f08ff");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("explosion_generic_no_broadcast");
	}
	level notify("hash_a6da966f");
	var_1c4260d1 function_eaa69754(0.3);
	var_1c4260d1 function_dc8c8404();
	wait(0.3);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_e2af603e("explosion_generic_no_broadcast");
	}
	namespace_4dbf3ae3::function_42e87952("bridge_battle_more_enemies_here", "script_flag_set");
}

/*
	Name: function_c24a19de
	Namespace: namespace_20a6d5c1
	Checksum: 0xB39E3A9A
	Offset: 0x4A28
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_c24a19de()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_175490fb.var_46a37937))
		{
			foreach(var_f6c5842 in var_5dc5e20a.var_175490fb.var_46a37937)
			{
				if(function_5b49d38c(var_f6c5842))
				{
					var_f6c5842 function_2992720d();
				}
			}
		}
	}
}

/*
	Name: function_edd237d9
	Namespace: namespace_20a6d5c1
	Checksum: 0xF1B698CC
	Offset: 0x4B70
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_edd237d9()
{
	var_350c27ef = function_b4cb3503("hendricks_preshop_node", "targetname");
	self function_169cc712(var_350c27ef, 1);
}

/*
	Name: function_c92f487e
	Namespace: namespace_20a6d5c1
	Checksum: 0x5BD7472D
	Offset: 0x4BC8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_c92f487e()
{
	var_bd1043f3 = namespace_14b42b8a::function_7922262b("mobile_shop_ride_lower").var_722885f3;
	var_fd7210d4 = namespace_14b42b8a::function_7922262b("mobile_shop_ride_upper").var_722885f3;
	var_44f2aa45 = var_fd7210d4 - var_bd1043f3;
	level.var_2fd26037 function_9869ab67(level.var_2fd26037.var_722885f3 + var_44f2aa45, level.var_2fd26037.var_6ab6f4fd);
	level thread namespace_cc27597::function_43718187("cin_lot_07_05_detcenter_vign_mantle");
	level thread function_36957bfb(var_44f2aa45);
	if(isdefined(level.var_b55b2c5f))
	{
		level.var_b55b2c5f namespace_cc27597::function_fcf56ab5();
	}
	level.var_bd992b54 = namespace_14b42b8a::function_7922262b("cin_merch_exterior_upper", "targetname");
	if(isdefined(level.var_bd992b54))
	{
		level.var_bd992b54 namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_36957bfb
	Namespace: namespace_20a6d5c1
	Checksum: 0xDC52E9CD
	Offset: 0x4D38
	Size: 0x191
	Parameters: 1
	Flags: None
*/
function function_36957bfb(var_44f2aa45)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a.var_d75e3361 = var_5dc5e20a.var_722885f3 + var_44f2aa45;
		var_5dc5e20a function_a30814d(var_5dc5e20a.var_d75e3361);
	}
	wait(0.15);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_8c7da3ec = var_5dc5e20a.var_d75e3361[2] - 64;
		if(var_5dc5e20a.var_722885f3[2] < var_8c7da3ec)
		{
			var_5dc5e20a thread function_7a2fdad9(var_8c7da3ec);
		}
	}
}

/*
	Name: function_7a2fdad9
	Namespace: namespace_20a6d5c1
	Checksum: 0xCA12C0F1
	Offset: 0x4ED8
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_7a2fdad9(var_8c7da3ec)
{
	self endon("hash_128f8789");
	while(self.var_722885f3[2] < var_8c7da3ec)
	{
		self function_a30814d(self.var_d75e3361);
		wait(0.05);
	}
}

/*
	Name: function_97787d8d
	Namespace: namespace_20a6d5c1
	Checksum: 0x47AE2335
	Offset: 0x4F38
	Size: 0x233
	Parameters: 1
	Flags: None
*/
function function_97787d8d(var_7f0b037)
{
	if(!isdefined(var_7f0b037))
	{
		var_7f0b037 = "open";
	}
	var_5b3fe023 = function_6ada35ba("mobile_door_left", "targetname");
	var_d758a83d = function_6ada35ba("mobile_door_right", "targetname");
	var_50de9d38 = 100;
	if(isdefined(var_5b3fe023) && isdefined(var_d758a83d))
	{
		if(var_7f0b037 === "open")
		{
			var_5b3fe023 function_a96a2721(var_5b3fe023.var_722885f3 + (var_50de9d38 * -1, 0, 0), 2, 0.1, 0.1);
			var_d758a83d function_a96a2721(var_d758a83d.var_722885f3 + (var_50de9d38, 0, 0), 2, 0.1, 0.1);
			var_5b3fe023 function_921a1574("evt_mobile_shop_doors_open");
		}
		else
		{
			var_5b3fe023 function_a96a2721(var_5b3fe023.var_722885f3 + (var_50de9d38, 0, 0), 1, 0.1, 0.1);
			var_d758a83d function_a96a2721(var_d758a83d.var_722885f3 + (var_50de9d38 * -1, 0, 0), 1, 0.1, 0.1);
			var_5b3fe023 function_921a1574("evt_mobile_shop_doors_close");
		}
	}
	else
	{
		function_2e4b8c78("Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_9a0b8bc1
	Namespace: namespace_20a6d5c1
	Checksum: 0x60E617E7
	Offset: 0x5178
	Size: 0x403
	Parameters: 0
	Flags: None
*/
function function_9a0b8bc1()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("frost_post_fx", 0);
	}
	var_a87110ed = function_6ada35ba("mobile_shop_hatchdoor", "targetname");
	var_a87110ed function_921a1574("wpn_rocket_explode_mobile_shop");
	self thread namespace_5753664b::function_43718187("mobile_shop_fall_explosion", var_a87110ed.var_722885f3, (0, 0, 0));
	wait(0.3);
	self thread namespace_5753664b::function_43718187("mobile_shop_fall_explosion", var_a87110ed.var_722885f3 - VectorScale((0, 1, 0), 200), (0, 0, 0));
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_lotus_mobile_shops_merch_rpg_hit_bundle");
	function_9cf04c2e(0.85, 1.75, var_a87110ed.var_722885f3, 1200);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_e2af603e, "damage_heavy");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", namespace_14b42b8a::function_7922262b("mobile_shop_ride2_last_objective"));
	level notify("hash_e0df7237");
	level thread namespace_cc27597::function_43718187("cin_lot_07_05_detcenter_vign_mantle_hatch");
	var_72a1d37e = namespace_2f06d687::function_7387a40a("mobile_ride_2_end_rocketrobot");
	var_72a1d37e namespace_d84e54db::function_b4f5e3b9(1);
	var_72a1d37e function_169cc712(var_72a1d37e.var_722885f3, 1);
	var_72a1d37e.var_7dfaf62 = 64;
	wait(3);
	var_26aaa5cc = namespace_14b42b8a::function_7922262b("rocketshooter_target");
	var_3929e8a2 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_26aaa5cc.var_722885f3 + VectorScale((0, 0, 1), 80), var_26aaa5cc.var_6ab6f4fd);
	var_3929e8a2.var_3a90f16b = 9999;
	var_3929e8a2.var_bab9655e = 0;
	var_72a1d37e thread namespace_d84e54db::function_d104c596("normal", var_3929e8a2, "tag_origin", 16);
	var_72a1d37e namespace_82b91a51::function_9fcf3cd8(16, "damage", "death");
	if(function_5b49d38c(var_72a1d37e))
	{
		var_72a1d37e.var_2a48f7ab = 1;
		var_72a1d37e namespace_d84e54db::function_b4f5e3b9(0);
	}
	var_3929e8a2 function_dc8c8404();
}

/*
	Name: function_aa17eb00
	Namespace: namespace_20a6d5c1
	Checksum: 0x17935C1C
	Offset: 0x5588
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_aa17eb00()
{
	level namespace_71b8dba1::function_a463d127("kane_it_s_routed_to_the_d_0");
	level namespace_ad23e503::function_1ab5ebec("long_mobile_shop_start");
	level namespace_71b8dba1::function_a463d127("kane_watch_hendricks_he_0", 0.5);
	level thread namespace_71b8dba1::function_13b3b16a("plyr_copy_that_0");
	level waittill("hash_e0df7237");
	level thread namespace_a92ad484::function_8ca46216();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_rpg_0", 0.5);
	wait(2);
	level namespace_71b8dba1::function_13b3b16a("plyr_looks_like_this_is_o_0");
	if(!level namespace_ad23e503::function_7922262b("trig_player_out_of_mobile_shop_ride_2"))
	{
		level namespace_71b8dba1::function_a463d127("kane_you_re_just_shy_of_t_0");
	}
	level namespace_ad23e503::function_74d6b22f("mobile_shop_2_vo_done");
}

/*
	Name: function_dffbb166
	Namespace: namespace_20a6d5c1
	Checksum: 0xAEE4EFE
	Offset: 0x56E8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_dffbb166(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_lotus_go_to_taylor_prison_cell");
		namespace_d0ef8521::function_74d6b22f("cp_level_lotus_go_to_taylor_holding_room");
	}
	level thread namespace_cc27597::function_c35e6aab("to_security_station_mobile_shop_fall", "targetname");
}

/*
	Name: function_296e8ec0
	Namespace: namespace_20a6d5c1
	Checksum: 0x59914688
	Offset: 0x5778
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_296e8ec0()
{
	var_a36ea22c = function_6ada35ba("hallway_gate_06", "targetname");
	var_a36ea22c function_de8377bf();
	var_a36ea22c function_dc8c8404();
}

/*
	Name: function_f6e4f19a
	Namespace: namespace_20a6d5c1
	Checksum: 0x474DC36B
	Offset: 0x57E0
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_f6e4f19a()
{
	self endon("hash_128f8789");
	self notify("hash_56d2c5b2");
	self endon("hash_56d2c5b2");
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	var_240a3804 = 0;
	wait(5);
	while(1)
	{
		wait(function_72a94f05(0.6666666, 1.333333));
		var_e7ddff6 = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_d7e98a7d = 0;
			var_4c7d3716 = 0;
			var_a0d5568b = var_5dc5e20a function_501eb072();
			var_c975b582 = function_bc7ce905(var_5dc5e20a function_89c87c9c());
			var_e5a3f7c1 = function_f679a325(self.var_722885f3 - var_a0d5568b);
			var_82a044f1 = function_5f9a4869(var_c975b582, var_e5a3f7c1);
			if(var_82a044f1 > 0.67)
			{
				var_d7e98a7d = 1;
			}
			else
			{
				var_4c7d3716 = self function_87e955a4(var_a0d5568b, var_5dc5e20a);
			}
			if(!var_4c7d3716 && !var_d7e98a7d)
			{
				var_e7ddff6++;
			}
		}
		if(var_e7ddff6 == level.var_2395e945.size)
		{
			var_240a3804++;
			if(var_240a3804 < 5)
			{
				continue;
			}
			self notify("hash_ada1252a");
			self function_dc8c8404();
		}
		else
		{
			var_240a3804 = 0;
		}
	}
}

/*
	Name: function_57e7a8c9
	Namespace: namespace_20a6d5c1
	Checksum: 0xC7A7F7D4
	Offset: 0x5A78
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_57e7a8c9(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_4dbf3ae3::function_42e87952("trig_bridge_battle_initial_spawns");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_d7916d65::function_a2995f22();
	}
	level namespace_431cac9::function_484bc3aa(1);
	level thread namespace_431cac9::function_fda257c3();
	level thread function_e1c21e07();
	level thread function_1143b3b4();
	level thread function_2c257bff();
	level thread function_77e481f6();
	level thread function_10a2b6f2();
	level thread function_bebbfc6f();
	level thread function_3257371f(1);
	level thread function_8b9937fd();
	level thread function_f43bc1f8();
	level thread namespace_431cac9::function_14be4cad(1);
	level thread function_32049a32(var_74cd64bc);
	level thread function_44dd1b45();
	level thread function_94f75664();
	var_1e913765 = function_6ada35ba("dc4_enemy_sponge", "script_noteworthy");
	var_1e913765 namespace_2f06d687::function_994832bd(&function_904f994);
	level thread namespace_cc27597::function_43718187("bridge_battle_falling_shop1", "targetname");
	level namespace_ad23e503::function_1ab5ebec("bridge_battle_done");
	namespace_1d795d47::function_be8adfb8("bridge_battle");
}

/*
	Name: function_94f75664
	Namespace: namespace_20a6d5c1
	Checksum: 0x305E1F2D
	Offset: 0x5D28
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_94f75664()
{
	level namespace_ad23e503::function_1ab5ebec("player_crossed_bridge");
	var_9008f0c7 = function_6ada35ba("bridge_battle_across_gv", "targetname");
	var_56dd1913 = namespace_2f06d687::function_289e6fd1("bridge_end_enemies");
	foreach(var_6050ab17 in var_56dd1913)
	{
		var_6050ab17 function_169cc712(var_9008f0c7);
	}
}

/*
	Name: function_e1c21e07
	Namespace: namespace_20a6d5c1
	Checksum: 0x68DA9069
	Offset: 0x5E38
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e1c21e07()
{
	level endon("hash_800cbac6");
	level thread function_c928a4b5("bridge_end_enemies");
	level thread function_c928a4b5("police_station_enemies");
}

/*
	Name: function_c928a4b5
	Namespace: namespace_20a6d5c1
	Checksum: 0xDC57BDD2
	Offset: 0x5E90
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_c928a4b5(var_69e64c43)
{
	level endon("hash_800cbac6");
	namespace_2f06d687::function_72214789(var_69e64c43);
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_32049a32
	Namespace: namespace_20a6d5c1
	Checksum: 0xB0C57F9E
	Offset: 0x5ED8
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_32049a32(var_74cd64bc)
{
	namespace_76d95162::function_d9f49fba(0);
	if(!var_74cd64bc)
	{
		level namespace_ad23e503::function_1ab5ebec("mobile_shop_2_vo_done");
	}
	namespace_71b8dba1::function_a463d127("kane_follow_the_marker_0", 1);
	namespace_71b8dba1::function_13b3b16a("plyr_copy_that_kane_0", 0.25);
	namespace_76d95162::function_d9f49fba(1);
	namespace_ad23e503::function_1ab5ebec("bridge_battle_police_station_opened");
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_raps_comin_in_hot_0", 0.5);
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_44dd1b45
	Namespace: namespace_20a6d5c1
	Checksum: 0x1D8B3D52
	Offset: 0x5FF8
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_44dd1b45()
{
	namespace_2f06d687::function_c0434ff5("bb_start_enemies", 2);
	var_67ac5172 = function_6ada35ba("cult_center_door_left", "targetname");
	var_43ecc01c = function_6ada35ba("cult_center_door_right", "targetname");
	var_46f41a3b = 100;
	var_7d6af5ea = 1;
	var_67ac5172 function_a96a2721(var_67ac5172.var_722885f3 + (0, var_46f41a3b, 0), var_7d6af5ea, 0.1, 0.1);
	var_43ecc01c function_a96a2721(var_43ecc01c.var_722885f3 + (0, var_46f41a3b * -1, 0), var_7d6af5ea, 0.1, 0.1);
	wait(var_7d6af5ea);
	namespace_d5067552::function_bae40a28("bb_nolull_spawn_manager");
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	level namespace_ad23e503::function_1ab5ebec("player_crossed_bridge");
	namespace_d5067552::function_54bdb053("bb_nolull_spawn_manager");
	var_67ac5172 function_a96a2721(var_67ac5172.var_722885f3 + (0, var_46f41a3b * -1, 0), var_7d6af5ea, 0.1, 0.1);
	var_43ecc01c function_a96a2721(var_43ecc01c.var_722885f3 + (0, var_46f41a3b, 0), var_7d6af5ea, 0.1, 0.1);
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
}

/*
	Name: function_1143b3b4
	Namespace: namespace_20a6d5c1
	Checksum: 0x1B48072F
	Offset: 0x6250
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_1143b3b4()
{
	namespace_d0ef8521::function_45d1556("bridge_battle_breadcrumb01");
}

/*
	Name: function_2c257bff
	Namespace: namespace_20a6d5c1
	Checksum: 0x2EA4F5E2
	Offset: 0x6278
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_2c257bff()
{
	var_8cc44767 = function_b4cb3503("cover_endbridge_trashbin", "targetname");
	function_d224409e(var_8cc44767, 0);
	namespace_ad23e503::function_1ab5ebec("flag_coverpush_endbridge");
	function_f423b892("coverpush_endbridge_pos", "coverpush_endbridge_enemy", "coverpush_endbridge_bin");
	function_d224409e(var_8cc44767, 1);
	namespace_ad23e503::function_1ab5ebec("bridge_battle_police_station_opened");
	function_f423b892("coverpush_pos2", "coverpush_enemy2", "coverpush_trash_bin2");
}

/*
	Name: function_f423b892
	Namespace: namespace_20a6d5c1
	Checksum: 0x810398EE
	Offset: 0x6368
	Size: 0x16B
	Parameters: 3
	Flags: None
*/
function function_f423b892(var_9bc566d8, var_7fadc70c, var_e7daaecc)
{
	var_a6ebc7b = function_6ada35ba(var_e7daaecc, "targetname");
	var_f43c5188 = function_6ada35ba(var_e7daaecc + "_col", "targetname");
	var_f43c5188 function_37f7858a(var_a6ebc7b);
	var_781c2249 = namespace_14b42b8a::function_7922262b(var_9bc566d8, "targetname");
	var_b429251f = namespace_2f06d687::function_7387a40a(var_7fadc70c);
	var_781c2249 namespace_cc27597::function_c35e6aab("cin_gen_aie_push_cover_sideways_no_dynpath", function_84970cc4(var_b429251f, var_a6ebc7b));
	var_781c2249 namespace_cc27597::function_43718187("cin_gen_aie_push_cover_sideways_no_dynpath");
	var_f43c5188 function_52fddbd0();
	var_f43c5188 function_14c24d9d(0, 0);
}

/*
	Name: function_10a2b6f2
	Namespace: namespace_20a6d5c1
	Checksum: 0xD9976470
	Offset: 0x64E0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_10a2b6f2()
{
	level thread function_e90c24f8();
	namespace_ad23e503::function_1ab5ebec("flag_grand_entrances");
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	namespace_2f06d687::function_2b37a3c9("robo_entrant01", "targetname", &function_87c91b1b);
	namespace_2f06d687::function_2b37a3c9("robo_entrant02", "targetname", &function_87c91b1b);
	namespace_2f06d687::function_2b37a3c9("robo_entrant03", "targetname", &function_87c91b1b);
	namespace_2f06d687::function_2b37a3c9("robo_entrant04", "targetname", &function_87c91b1b);
	level thread namespace_431cac9::function_99514074("robo_entrance01", "robo_entrant01");
	wait(0.75);
	level thread namespace_431cac9::function_99514074("robo_entrance02", "robo_entrant02");
	wait(1.5);
	level thread namespace_431cac9::function_99514074("robo_entrance04", "robo_entrant04");
	wait(1.5);
	level thread namespace_431cac9::function_99514074("robo_entrance03", "robo_entrant03");
	wait(1.5);
}

/*
	Name: function_e90c24f8
	Namespace: namespace_20a6d5c1
	Checksum: 0x6703F64B
	Offset: 0x66C0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_e90c24f8()
{
	level endon("hash_92e00f70");
	level namespace_ad23e503::function_1ab5ebec("player_crossed_bridge");
	namespace_2f06d687::function_371d219c("bridge_end_enemies", 3);
	level namespace_ad23e503::function_74d6b22f("flag_grand_entrances");
}

/*
	Name: function_87c91b1b
	Namespace: namespace_20a6d5c1
	Checksum: 0xC9E690D9
	Offset: 0x6738
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_87c91b1b()
{
	var_45db3dab = function_6ada35ba("bridge_battle_ge_gv", "targetname");
	self function_169cc712(var_45db3dab);
}

/*
	Name: function_f43bc1f8
	Namespace: namespace_20a6d5c1
	Checksum: 0xB8BE0EE2
	Offset: 0x6790
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f43bc1f8()
{
	var_adc17f12 = function_84970cc4("wall_run_enemies_cleared", "bridge_battle_done");
	level namespace_ad23e503::function_43ac000b(var_adc17f12);
	level thread function_e7a8c6b();
}

/*
	Name: function_77e481f6
	Namespace: namespace_20a6d5c1
	Checksum: 0x2AFD2D8B
	Offset: 0x6800
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_77e481f6()
{
	var_412a98c7 = namespace_2f06d687::function_7387a40a("dc3_friendly_scarifice");
	namespace_82b91a51::function_958c7633(var_412a98c7);
	level namespace_ad23e503::function_1ab5ebec("friendly_sacrifice");
	var_a3f0d6d = function_b4cb3503("scarifice_goal", "targetname");
	var_412a98c7 thread namespace_d84e54db::function_19e98020(var_a3f0d6d, 64, undefined, undefined, undefined, undefined);
	var_412a98c7 namespace_d84e54db::function_b4f5e3b9(1);
	namespace_4dbf3ae3::function_1ab5ebec("trig_sacrifice_death");
	var_412a98c7 namespace_d84e54db::function_b4f5e3b9(0);
	namespace_82b91a51::function_4b741fdc(var_412a98c7);
	var_56dd1913 = function_b8494651("axis");
	namespace_84970cc4::function_966ecb29(var_56dd1913, &namespace_d84e54db::function_d104c596, "kill_within_time", var_412a98c7, undefined, 0.05);
}

/*
	Name: function_3257371f
	Namespace: namespace_20a6d5c1
	Checksum: 0xB9429A21
	Offset: 0x6970
	Size: 0x1E1
	Parameters: 1
	Flags: None
*/
function function_3257371f(var_729354f4)
{
	if(!(isdefined(level.var_38c1711f) && level.var_38c1711f))
	{
		level.var_38c1711f = 1;
		var_a7b48bf5 = function_6ada35ba("police_door_01", "targetname");
		var_a7b48bf5 function_a96a2721(var_a7b48bf5.var_722885f3 + VectorScale((0, 0, -1), 144), 3);
		var_cdb7065e = function_6ada35ba("police_door_02", "targetname");
		var_cdb7065e function_a96a2721(var_cdb7065e.var_722885f3 + VectorScale((0, 0, -1), 144), 3);
	}
	if(isdefined(var_729354f4) && var_729354f4)
	{
		namespace_4dbf3ae3::function_1ab5ebec("trig_kill_sniper");
		var_34c1b22f = function_c20c2e8("dc3_police_sniper", "script_noteworthy");
		foreach(var_7244fa9b in var_34c1b22f)
		{
			level.var_2fd26037 namespace_d84e54db::function_d104c596("kill_within_time", var_7244fa9b, undefined, 0.05);
		}
	}
}

/*
	Name: function_8b9937fd
	Namespace: namespace_20a6d5c1
	Checksum: 0x3F036CAC
	Offset: 0x6B60
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_8b9937fd()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_rollunder");
	level thread function_61700635();
	var_3170fbf = namespace_2f06d687::function_7387a40a("rollunder_smg");
	level namespace_cc27597::function_43718187("detention_center3_rollunder", "targetname", var_3170fbf);
	var_45db3dab = function_6ada35ba("bridge_battle_ge_gv", "targetname");
	var_3170fbf function_169cc712(var_45db3dab);
}

/*
	Name: function_bebbfc6f
	Namespace: namespace_20a6d5c1
	Checksum: 0x22C7C1AF
	Offset: 0x6C38
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_bebbfc6f()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_slide");
	var_7cfde525 = namespace_2f06d687::function_7387a40a("slide_smg");
	level namespace_cc27597::function_43718187("detention_center3_slide", "targetname", var_7cfde525);
	var_45db3dab = function_6ada35ba("bridge_battle_ge_gv", "targetname");
	var_7cfde525 function_169cc712(var_45db3dab);
}

/*
	Name: function_61700635
	Namespace: namespace_20a6d5c1
	Checksum: 0xE7422162
	Offset: 0x6CF8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_61700635()
{
	var_adad709 = function_6ada35ba("spawn_door7_5_1", "targetname");
	var_adad709 function_a96a2721(var_adad709.var_722885f3 + VectorScale((0, 0, -1), 136), 6);
	var_adad709 waittill("hash_a21db68a");
	var_adad709 function_14c24d9d();
}

/*
	Name: function_800cbac6
	Namespace: namespace_20a6d5c1
	Checksum: 0x48D7E2FE
	Offset: 0x6D90
	Size: 0x9B
	Parameters: 4
	Flags: None
*/
function function_800cbac6(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	var_15aaf918 = namespace_14b42b8a::function_7922262b("s_glass_squib", "targetname");
	if(isdefined(var_15aaf918))
	{
		/#
			function_2e4b8c78("Dev Block strings are not supported");
		#/
		function_be97adee(var_15aaf918.var_722885f3, 150, 50, 50);
	}
}

/*
	Name: function_5b4279a3
	Namespace: namespace_20a6d5c1
	Checksum: 0x6766CC3C
	Offset: 0x6E38
	Size: 0x40B
	Parameters: 2
	Flags: None
*/
function function_5b4279a3(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		var_1e913765 = function_6ada35ba("dc4_enemy_sponge", "script_noteworthy");
		var_1e913765 namespace_2f06d687::function_994832bd(&function_904f994);
		level thread function_3257371f();
		level thread function_61700635();
		level thread function_e7a8c6b();
		level thread namespace_431cac9::function_fda257c3();
		level thread namespace_431cac9::function_14be4cad();
		namespace_d7916d65::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
	}
	level function_17ceabc9();
	namespace_431cac9::function_fe64b86b("falling_nrc", namespace_14b42b8a::function_7922262b("wallrun_corpse1"), 0);
	level thread function_3dcaa53a();
	level thread function_f31848ce();
	level thread function_8267fad4();
	level thread function_dcd3f360();
	level thread function_974bbb6b();
	level thread function_3604a049();
	level thread function_2ff2c34();
	level thread function_4753f046();
	level thread function_cb2b9cbf();
	namespace_2f06d687::function_2b37a3c9("siegebot_hospital", "script_noteworthy", &function_fd8c0654);
	namespace_2f06d687::function_2b37a3c9("siegebot_hospital", "script_noteworthy", &function_dce6e561);
	namespace_2f06d687::function_2b37a3c9("siegebot_hospital", "script_noteworthy", &function_1cd5a72e);
	level namespace_ad23e503::function_c35e6aab("hospital_door_up");
	level namespace_ad23e503::function_c35e6aab("dc4_dead_siegebots");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("siegebot_fans", 1);
	}
	level namespace_ad23e503::function_1ab5ebec("up_to_detention_center_done");
	namespace_1d795d47::function_be8adfb8("up_to_detention_center");
}

/*
	Name: function_17ceabc9
	Namespace: namespace_20a6d5c1
	Checksum: 0x1E5D0996
	Offset: 0x7250
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_17ceabc9()
{
	var_b6a97ee5 = function_99201f25("infirmary_glass_triggers", "script_noteworthy");
	foreach(var_799e4c3a in var_b6a97ee5)
	{
		var_799e4c3a thread function_aa11d0bb();
	}
}

/*
	Name: function_aa11d0bb
	Namespace: namespace_20a6d5c1
	Checksum: 0xAEDF253A
	Offset: 0x7310
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_aa11d0bb()
{
	self namespace_4dbf3ae3::function_1ab5ebec();
	var_25cdefbd = namespace_14b42b8a::function_7922262b(self.var_b07228b6);
	function_be97adee(var_25cdefbd.var_722885f3, 20, 200, 200);
}

/*
	Name: function_2ff2c34
	Namespace: namespace_20a6d5c1
	Checksum: 0xEE818E8E
	Offset: 0x7388
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_2ff2c34()
{
	level endon("hash_cbbe14bc");
	namespace_4dbf3ae3::function_1ab5ebec("use_up_to_detention_center_triggers");
	var_e9ddc8f2 = function_99201f25("up_to_detention_center_triggers", "script_noteworthy");
	foreach(var_4dbf3ae3 in var_e9ddc8f2)
	{
		var_4dbf3ae3 namespace_4dbf3ae3::function_42e87952(undefined, undefined, undefined, 0);
	}
}

/*
	Name: function_3604a049
	Namespace: namespace_20a6d5c1
	Checksum: 0x15962B3F
	Offset: 0x7470
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_3604a049()
{
	var_489b2980 = namespace_14b42b8a::function_7922262b("s_dc_phalanx_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b("s_dc_phalanx_end").var_722885f3;
	var_f835ddae = function_6ada35ba("sp_dc_phalanx", "targetname");
	function_9b385ca5();
	var_de3c864 = var_2f359655;
	function_e6cab0ff(var_de3c864, "phalanx_reverse_wedge", var_489b2980, var_491bc153, 2, 5, var_f835ddae);
	level namespace_ad23e503::function_1ab5ebec("dc4_dead_siegebots");
	var_de3c864 namespace_2f359655::function_da4b4a9();
	var_f835ddae function_dc8c8404();
}

/*
	Name: function_dce6e561
	Namespace: namespace_20a6d5c1
	Checksum: 0x962589EB
	Offset: 0x75A8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_dce6e561()
{
	if(!isdefined(level.var_922b7c07))
	{
		level.var_922b7c07 = 0;
	}
	level.var_922b7c07++;
	level endon("hash_a8d150b1");
	self waittill("hash_128f8789");
	level.var_922b7c07--;
	if(level.var_922b7c07 <= 0)
	{
		level namespace_ad23e503::function_74d6b22f("dc4_dead_siegebots");
	}
}

/*
	Name: function_fd8c0654
	Namespace: namespace_20a6d5c1
	Checksum: 0xE1C717D4
	Offset: 0x7620
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_fd8c0654()
{
	self namespace_72ee5da4::function_81b6f1ac();
	level namespace_ad23e503::function_1ab5ebec("hospital_door_up");
	self namespace_72ee5da4::function_efe9815e();
}

/*
	Name: function_1cd5a72e
	Namespace: namespace_20a6d5c1
	Checksum: 0xBE342864
	Offset: 0x7680
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_1cd5a72e()
{
	self thread function_d818b993();
	self endon("hash_e4020782");
	self waittill("hash_bda2a10e");
	level waittill("hash_91737d19", var_11ee1e64);
	var_11ee1e64 waittill("hash_128f8789");
	var_d9d5499a = (-8483, -783, 14848);
	var_3b6d07e9 = 312;
	if(function_cb3d1c9b(var_11ee1e64.var_722885f3, var_d9d5499a) < var_3b6d07e9 * var_3b6d07e9)
	{
		var_11ee1e64 function_422037f5();
		wait(5);
		if(isdefined(var_11ee1e64))
		{
			var_11ee1e64 function_dc8c8404();
		}
	}
}

/*
	Name: function_d818b993
	Namespace: namespace_20a6d5c1
	Checksum: 0x4FD1EB36
	Offset: 0x7788
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_d818b993()
{
	self endon("hash_bda2a10e");
	self waittill("hash_128f8789");
	self notify("hash_e4020782");
}

/*
	Name: function_cb2b9cbf
	Namespace: namespace_20a6d5c1
	Checksum: 0xCE410578
	Offset: 0x77C0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_cb2b9cbf()
{
	level endon("hash_cbbe14bc");
	namespace_76d95162::function_d9f49fba(0);
	namespace_ad23e503::function_1ab5ebec("start_up_to_detention_center");
	namespace_76d95162::function_d9f49fba(1);
	namespace_ad23e503::function_1ab5ebec("trig_spawn_detention_center_kicked_guy");
	namespace_76d95162::function_d9f49fba(0);
}

/*
	Name: function_4753f046
	Namespace: namespace_20a6d5c1
	Checksum: 0x640E4BE4
	Offset: 0x7850
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_4753f046()
{
	namespace_d0ef8521::function_45d1556("up_to_detention_center_breadcrumb01");
}

/*
	Name: function_cbbe14bc
	Namespace: namespace_20a6d5c1
	Checksum: 0xE1C7D483
	Offset: 0x7878
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_cbbe14bc(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_go_to_taylor_prison_cell");
}

/*
	Name: function_39a310be
	Namespace: namespace_20a6d5c1
	Checksum: 0x818B5258
	Offset: 0x78C0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_39a310be()
{
	namespace_ad23e503::function_1ab5ebec("spawn_doomed_rapper");
	var_d031ee03 = namespace_2f06d687::function_7387a40a("doomed_rapper");
	var_d031ee03.var_44a68a57 = &function_f0ce2a2f;
	namespace_ad23e503::function_1ab5ebec("rapper_is_doomed");
	if(function_5b49d38c(var_d031ee03))
	{
		var_d031ee03 function_5c93563b();
	}
}

/*
	Name: function_5c93563b
	Namespace: namespace_20a6d5c1
	Checksum: 0xE4DFFEF6
	Offset: 0x7970
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_5c93563b()
{
	self endon("hash_128f8789");
	var_29839a5c = function_b4cb3503("doomed_rapper_pos", "targetname");
	self namespace_d84e54db::function_19e98020(var_29839a5c.var_722885f3, 5, 1, undefined, undefined, 1);
	while(function_87ea89a(self.var_722885f3, var_29839a5c.var_722885f3) > 100)
	{
		wait(1);
	}
	var_3e32f05a = namespace_2f06d687::function_7387a40a("raps_doomer");
	var_3e32f05a function_333fd8f0(19);
	foreach(var_5c4b8c35 in level.var_2395e945)
	{
		self function_76aa5b30(var_5c4b8c35, 1);
	}
	var_3e32f05a function_21f41d11(self);
	self thread function_b80c1b50(var_3e32f05a);
}

/*
	Name: function_f0ce2a2f
	Namespace: namespace_20a6d5c1
	Checksum: 0x4DDD300E
	Offset: 0x7B20
	Size: 0x9B
	Parameters: 12
	Flags: None
*/
function function_f0ce2a2f(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_2ffd9881, var_10e30246, var_a080d759, var_ffd2636b, var_269779a, var_a5cf2304, var_fe8d5ebb)
{
	if(var_fb19c839.var_8fc0e50e === "raps")
	{
		var_74d0774f = self.var_3a90f16b;
	}
	else
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_b80c1b50
	Namespace: namespace_20a6d5c1
	Checksum: 0x4EA5ECC3
	Offset: 0x7BC8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_b80c1b50(var_3e32f05a)
{
	if(isdefined(var_3e32f05a) && var_3e32f05a.var_8fc0e50e === "raps")
	{
		self waittill("hash_128f8789", var_f9a179ed, var_ba36487d, var_dfcc01fd, var_a77ad8eb, var_e8bb43ee);
		if(isdefined(var_3e32f05a))
		{
			var_a080d759 = function_bc7ce905(var_3e32f05a.var_6ab6f4fd) + function_aba60185(var_3e32f05a.var_6ab6f4fd) * 0.5;
			var_a080d759 = var_a080d759 * 64;
			self function_d7a0a9d8();
			self function_8461d2b1((var_a080d759[0], var_a080d759[1], var_a080d759[2] + 32));
			if(function_5b49d38c(var_3e32f05a))
			{
				var_3e32f05a function_2992720d();
			}
		}
	}
}

/*
	Name: function_8267fad4
	Namespace: namespace_20a6d5c1
	Checksum: 0x2BEB2F19
	Offset: 0x7D40
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_8267fad4()
{
	var_2eecd77a = namespace_2f06d687::function_7387a40a("dc4_jump_out");
	var_2eecd77a namespace_d84e54db::function_b4f5e3b9(1);
	namespace_4dbf3ae3::function_1ab5ebec("trig_fleeing_enemy");
	if(isdefined(var_2eecd77a))
	{
		var_2eecd77a namespace_d84e54db::function_b4f5e3b9(0);
		var_8b91eab7 = function_b4cb3503("jump_out_dest", "targetname");
		var_2eecd77a function_169cc712(var_8b91eab7, 0, 64);
	}
}

/*
	Name: function_e7a8c6b
	Namespace: namespace_20a6d5c1
	Checksum: 0x91C67C5C
	Offset: 0x7E18
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function function_e7a8c6b()
{
	if(namespace_ad23e503::function_7922262b("wall_run_enemies_cleared"))
	{
		var_ad0cc537 = namespace_14b42b8a::function_7922262b("hendricks_uptodc_wallrun_waitpos", "targetname");
		level.var_2fd26037 function_169cc712(var_ad0cc537.var_722885f3, 1);
		if(level namespace_ad23e503::function_7922262b("all_players_spawned"))
		{
			var_72bda784 = function_87ea89a(level.var_2395e945[0].var_722885f3, level.var_2fd26037.var_722885f3);
			var_cf29ba8c = 300;
			while(var_72bda784 > var_cf29ba8c)
			{
				/#
				#/
				wait(0.5);
				var_72bda784 = function_87ea89a(level.var_2395e945[0].var_722885f3, level.var_2fd26037.var_722885f3);
			}
		}
		else
		{
			level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		}
	}
	namespace_82b91a51::function_67520c6a(function_72a94f05(2, 4), undefined, &namespace_431cac9::function_fe64b86b, "falling_nrc", namespace_14b42b8a::function_7922262b("wallrun_corpse2"), 0);
	level thread namespace_cc27597::function_43718187("to_security_station_mobile_shop_fall", "targetname");
	level thread namespace_cc27597::function_43718187("cin_lot_07_05_detcenter_vign_wallrun_hendricks");
	level.var_2fd26037 waittill("hash_41d1aaf0");
	namespace_82b91a51::function_67520c6a(function_62e4226e(2), undefined, &namespace_431cac9::function_fe64b86b, "falling_nrc", namespace_14b42b8a::function_7922262b("wallrun_corpse3"), 0);
	var_64dbd70a = function_6ada35ba("trig_dc4_hendricks", "targetname");
	if(isdefined(var_64dbd70a))
	{
		var_64dbd70a namespace_4dbf3ae3::function_42e87952();
	}
	namespace_431cac9::function_fe64b86b("falling_nrc", namespace_14b42b8a::function_7922262b("wallrun_corpse3"), 0);
}

/*
	Name: function_904f994
	Namespace: namespace_20a6d5c1
	Checksum: 0x819D1F14
	Offset: 0x8128
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_904f994()
{
	self.var_44a68a57 = &function_5f1eb24b;
}

/*
	Name: function_5f1eb24b
	Namespace: namespace_20a6d5c1
	Checksum: 0xE3576FE8
	Offset: 0x8150
	Size: 0x89
	Parameters: 12
	Flags: None
*/
function function_5f1eb24b(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_dfcc01fd, var_10e30246, var_a080d759, var_ffd2636b, var_a5cf2304, var_faf17161, var_269779a)
{
	if(!function_65f192a6(var_677b3e78))
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_3dcaa53a
	Namespace: namespace_20a6d5c1
	Checksum: 0x19B2E581
	Offset: 0x81E8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_3dcaa53a()
{
	var_412a98c7 = namespace_2f06d687::function_7387a40a("dc4_friendly_sacrifice");
	var_412a98c7.var_44a68a57 = &function_98c4a0b7;
	var_412a98c7 namespace_d84e54db::function_c9e45d52(1);
	var_9999ca8a = namespace_2f06d687::function_7387a40a("dc4_deadly_rap", &function_ca258604);
	level namespace_cc27597::function_c35e6aab("cin_lot_07_05_detcenter_vign_rapsdeath", function_84970cc4(var_9999ca8a, var_412a98c7));
	namespace_ad23e503::function_1ab5ebec("dc4_friendly_sacrifice");
	level thread namespace_cc27597::function_5c143f59("cin_lot_07_05_detcenter_vign_rapsdeath", undefined, undefined, 0.4);
	var_190535de = namespace_2f06d687::function_7387a40a("rapsdeath_shooter");
	if(function_5b49d38c(var_412a98c7))
	{
		var_190535de thread namespace_d84e54db::function_d104c596("normal", var_412a98c7, undefined, 2);
	}
	namespace_4dbf3ae3::function_42e87952("trig_hendricks_r01utd", "targetname");
}

/*
	Name: function_ca258604
	Namespace: namespace_20a6d5c1
	Checksum: 0x647D465C
	Offset: 0x8378
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_ca258604()
{
	var_9999ca8a = self;
	var_9999ca8a namespace_d84e54db::function_b4f5e3b9(1);
	namespace_82b91a51::function_958c7633(var_9999ca8a);
	level waittill("hash_c1151572");
	var_9999ca8a namespace_d84e54db::function_b4f5e3b9(0);
	namespace_82b91a51::function_4b741fdc(var_9999ca8a);
}

/*
	Name: function_98c4a0b7
	Namespace: namespace_20a6d5c1
	Checksum: 0xA26D29A
	Offset: 0x8408
	Size: 0xAD
	Parameters: 12
	Flags: None
*/
function function_98c4a0b7(var_fb19c839, var_677b3e78, var_74d0774f, var_6aee7fe9, var_394451d8, var_dfcc01fd, var_10e30246, var_a080d759, var_ffd2636b, var_a5cf2304, var_faf17161, var_269779a)
{
	if(isdefined(var_677b3e78.var_8fc0e50e) && var_677b3e78.var_8fc0e50e == "raps")
	{
		var_74d0774f = 100;
	}
	else
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_4acf6164
	Namespace: namespace_20a6d5c1
	Checksum: 0x730BED3E
	Offset: 0x84C0
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_4acf6164(var_412a98c7)
{
	self endon("hash_128f8789");
	while(1)
	{
		if(isdefined(var_412a98c7))
		{
			var_1237bd50 = function_316422d1(var_412a98c7.var_722885f3, self.var_722885f3);
			if(var_1237bd50 < 4096)
			{
				self function_c3945cd5(self.var_3a90f16b, self.var_722885f3);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d086631d
	Namespace: namespace_20a6d5c1
	Checksum: 0xF4B6DCA0
	Offset: 0x8568
	Size: 0xE1
	Parameters: 15
	Flags: None
*/
function function_d086631d(var_fb19c839, var_677b3e78, var_74d0774f, var_36537420, var_394451d8, var_dfcc01fd, var_10e30246, var_a080d759, var_ffd2636b, var_46043680, var_d42b9169, var_3bc96147, var_269779a, var_829b9480, var_eca96ec1)
{
	if(isdefined(var_394451d8) && var_394451d8 == "MOD_UNKNOWN")
	{
		var_74d0774f = var_74d0774f;
	}
	else if(function_65f192a6(var_677b3e78))
	{
		var_74d0774f = var_74d0774f * 0.09;
	}
	else
	{
		var_74d0774f = 0;
	}
	return var_74d0774f;
}

/*
	Name: function_f31848ce
	Namespace: namespace_20a6d5c1
	Checksum: 0xD4B8A631
	Offset: 0x8658
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_f31848ce()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_fleeing_enemy");
	var_2eecd77a = namespace_2f06d687::function_7387a40a("dc4_fleeing_enemy");
	var_2eecd77a endon("hash_128f8789");
	var_5249b1c2 = function_b4cb3503("fleeing_enemy_path", "targetname");
	var_2eecd77a namespace_d84e54db::function_19e98020(var_5249b1c2, 64, 0, undefined, undefined, 1);
	var_2eecd77a waittill("hash_41d1aaf0");
	var_5249b1c2 = function_b4cb3503("fleeing_enemy_node", "targetname");
	var_2eecd77a namespace_d84e54db::function_19e98020(var_5249b1c2, 64, 0, undefined, undefined, 1);
}

/*
	Name: function_dcd3f360
	Namespace: namespace_20a6d5c1
	Checksum: 0xF665C386
	Offset: 0x8768
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_dcd3f360()
{
	var_adad709 = function_6ada35ba("spawn_door7_5_2", "targetname");
	var_adad709 function_a96a2721(var_adad709.var_722885f3 - (0, 0, 144), 0.1);
	namespace_4dbf3ae3::function_1ab5ebec("trig_dc4_door");
	level namespace_80983c42::function_80983c42("fx_interior_sentry_reveal");
	var_adad709 = function_6ada35ba("spawn_door7_5_2", "targetname");
	var_adad709 function_a96a2721(var_adad709.var_722885f3 + (0, 0, 12), 1);
	var_adad709 waittill("hash_a21db68a");
	var_adad709 function_921a1574("evt_siegebot_door_buzz");
	wait(1.25);
	var_adad709 function_921a1574("evt_siegebot_door");
	var_adad709 function_a96a2721(var_adad709.var_722885f3 + (0, 0, 144 - 12), 3);
	var_adad709 waittill("hash_a21db68a");
	level namespace_ad23e503::function_74d6b22f("hospital_door_up");
}

/*
	Name: function_974bbb6b
	Namespace: namespace_20a6d5c1
	Checksum: 0x281B569E
	Offset: 0x8948
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_974bbb6b()
{
	var_adad709 = function_6ada35ba("hosp_hall_gate_10", "targetname");
	if(isdefined(var_adad709))
	{
		var_adad709 function_a96a2721(var_adad709.var_722885f3 + VectorScale((0, 0, 1), 145), 1);
	}
	var_50de9d38 = 100;
	var_58576bff = function_6ada35ba("hosp_hall_gate_10_L", "targetname");
	var_58576bff function_a96a2721(var_58576bff.var_722885f3 + (0, var_50de9d38 * -1, 0), 1);
	var_bbc00d9a = function_6ada35ba("hosp_hall_gate_10_R", "targetname");
	var_bbc00d9a function_a96a2721(var_bbc00d9a.var_722885f3 + (0, var_50de9d38, 0), 1);
}

/*
	Name: function_acdf71f3
	Namespace: namespace_20a6d5c1
	Checksum: 0x9B642554
	Offset: 0x8AA0
	Size: 0x5C3
	Parameters: 2
	Flags: None
*/
function function_acdf71f3(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
		namespace_d7916d65::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
	}
	namespace_431cac9::function_3b6587d6(0, "lotus2_standdown_igc_umbra_gate");
	namespace_f4ff722a::function_a2c4c634();
	var_d6cea0d7 = function_6ada35ba("trig_kick_door", "targetname");
	if(isdefined(var_d6cea0d7))
	{
		var_d6cea0d7 function_175e6b8e(0);
	}
	level thread function_3699620f();
	level thread function_896c40b9();
	level thread function_ab3d9328();
	var_58576bff = function_6ada35ba("det_door_prometheus_01_L", "targetname");
	var_bbc00d9a = function_6ada35ba("det_door_prometheus_01_R", "targetname");
	var_58576bff function_a96a2721(var_58576bff.var_722885f3 + VectorScale((0, 1, 0), 54), 1, 0.25, 0.25);
	var_bbc00d9a function_a96a2721(var_bbc00d9a.var_722885f3 + VectorScale((0, -1, 0), 54), 1, 0.25, 0.25);
	namespace_76d95162::function_d9f49fba(0);
	level thread function_14273be5();
	level thread function_d371cec6("dc_fallback_0");
	level thread function_d371cec6("dc_fallback_1");
	level thread function_d371cec6("dc_fallback_2");
	level thread function_7d9b9de2();
	level thread function_795646b8();
	level thread function_f7887a52();
	level thread function_fefb4f44();
	wait(1);
	level thread function_19cafdb6();
	level notify("hash_1206d494");
	var_c77d7d8e = function_6ada35ba("trig_go_hendricks_after_kick", "targetname");
	if(isdefined(var_c77d7d8e))
	{
		var_c77d7d8e namespace_4dbf3ae3::function_42e87952();
	}
	var_e09dab06 = function_6ada35ba("detention_center_door_clip", "targetname");
	var_e09dab06 function_422037f5();
	level namespace_cc27597::function_c35e6aab("cin_lot_08_01_standdown_sh010");
	namespace_4dbf3ae3::function_1ab5ebec("trig_all_players_at_stand_down", "targetname", level.var_2fd26037);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("siegebot_fans", 0);
	}
	var_e09dab06 function_4083a98e();
	var_58576bff function_a96a2721(var_58576bff.var_722885f3 + VectorScale((0, -1, 0), 54), 1, 0.25, 0.25);
	var_bbc00d9a function_a96a2721(var_bbc00d9a.var_722885f3 + VectorScale((0, 1, 0), 54), 1, 0.25, 0.25);
	var_bbc00d9a function_921a1574("evt_standdown_door_close");
	namespace_1d795d47::function_be8adfb8("detention_center");
	level notify("hash_5730accc");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_14273be5
	Namespace: namespace_20a6d5c1
	Checksum: 0xC6D16C80
	Offset: 0x9070
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_14273be5()
{
	level endon("hash_5730accc");
	level namespace_ad23e503::function_1ab5ebec("players_made_it_to_stand_down");
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("sprint", 1);
	level.var_2fd26037 function_169cc712(function_b4cb3503("hendricks_stand_down_door_node", "targetname"), 0, 32);
	level.var_2fd26037.var_ca3202d["bc"] = 0;
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("coverIdleOnly", 1);
}

/*
	Name: function_3699620f
	Namespace: namespace_20a6d5c1
	Checksum: 0x3DDDB34
	Offset: 0x9168
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_3699620f()
{
	namespace_76d95162::function_d9f49fba(0);
	namespace_ad23e503::function_1ab5ebec("start_detention_center_action");
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_896c40b9
	Namespace: namespace_20a6d5c1
	Checksum: 0x5A62BA27
	Offset: 0x91C0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_896c40b9()
{
	level endon("hash_5730accc");
	level thread function_ca30eede("aigroup_detention_center");
	level thread function_c928a4b5("dc_wave_1");
	level thread function_c928a4b5("dc_wave_2");
}

/*
	Name: function_ca30eede
	Namespace: namespace_20a6d5c1
	Checksum: 0x1EBE7E58
	Offset: 0x9238
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_ca30eede(var_69e64c43)
{
	level endon("hash_5730accc");
	namespace_2f06d687::function_72214789(var_69e64c43);
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_ab3d9328
	Namespace: namespace_20a6d5c1
	Checksum: 0xAEF884AC
	Offset: 0x9280
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_ab3d9328()
{
	namespace_76d95162::function_d9f49fba(0);
	level namespace_71b8dba1::function_a463d127("kane_entrance_is_ahead_on_0", 0.75);
	namespace_ad23e503::function_1ab5ebec("entering_detention_center");
	level thread namespace_82b91a51::function_d8eaed3d(2, 1);
	level namespace_71b8dba1::function_a463d127("kane_reinforcements_have_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_tell_us_something_we_0", 0.25);
	namespace_76d95162::function_d9f49fba(1);
	namespace_ad23e503::function_1ab5ebec("flag_nrc_hounds_moving_in");
	level namespace_71b8dba1::function_a463d127("kane_taylor_s_secured_the_0", 0.25);
	level namespace_71b8dba1::function_a463d127("kane_hang_tight_few_more_0", 3);
	level namespace_71b8dba1::function_a463d127("kane_access_restored_0", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_copy_that_kane_we_0", 0.5);
}

/*
	Name: function_fefb4f44
	Namespace: namespace_20a6d5c1
	Checksum: 0x92CC1882
	Offset: 0x9410
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_fefb4f44()
{
	var_87248a54 = function_6ada35ba("trig_end_enemies", "targetname");
	var_87248a54 endon("hash_4dbf3ae3");
	namespace_2f06d687::function_72214789("dc_wave_1");
	namespace_4dbf3ae3::function_42e87952("trig_end_enemies");
}

/*
	Name: function_19cafdb6
	Namespace: namespace_20a6d5c1
	Checksum: 0xD63DAD14
	Offset: 0x9488
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_19cafdb6()
{
	namespace_d0ef8521::function_45d1556("detention_center_breadcrumb01");
}

/*
	Name: function_d371cec6
	Namespace: namespace_20a6d5c1
	Checksum: 0x5B22E3A6
	Offset: 0x94B0
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_d371cec6(var_db803bcf)
{
	if(function_27c72c1b())
	{
		return;
	}
	var_82fc0698 = function_6ada35ba(var_db803bcf, "targetname");
	var_82fc0698 waittill("hash_4dbf3ae3");
	var_ab891f49 = function_6ada35ba(var_82fc0698.var_b07228b6, "targetname");
	var_56dd1913 = function_c20c2e8("dc_bottom", "script_noteworthy");
	foreach(var_2eecd77a in var_56dd1913)
	{
		var_2eecd77a function_169cc712(var_ab891f49, 1);
	}
}

/*
	Name: function_7d9b9de2
	Namespace: namespace_20a6d5c1
	Checksum: 0xD1648288
	Offset: 0x9600
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_7d9b9de2()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_dc_pamws_enemies");
	wait(2);
	var_935a64f = function_6ada35ba("dc_stair_2_monster_clip", "targetname");
	var_935a64f function_de8377bf();
	var_935a64f function_dc8c8404();
}

/*
	Name: function_795646b8
	Namespace: namespace_20a6d5c1
	Checksum: 0x9334D1FD
	Offset: 0x9688
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_795646b8()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_dc_pamws");
	var_58576bff = function_6ada35ba("detention_security_door_01_L", "targetname");
	var_bbc00d9a = function_6ada35ba("detention_security_door_01_R", "targetname");
	var_58576bff function_a96a2721(var_58576bff.var_722885f3 + VectorScale((-1, 0, 0), 100), 3);
	var_bbc00d9a function_a96a2721(var_bbc00d9a.var_722885f3 + VectorScale((1, 0, 0), 100), 3);
}

/*
	Name: function_f7887a52
	Namespace: namespace_20a6d5c1
	Checksum: 0x38534DF7
	Offset: 0x9778
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_f7887a52()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_dc_phalanx");
	var_489b2980 = namespace_14b42b8a::function_7922262b("dc_phalanx_wedge_start").var_722885f3;
	var_491bc153 = namespace_14b42b8a::function_7922262b("dc_phalanx_wedge_end").var_722885f3;
	var_1b6ee6b2 = 3;
	if(level.var_2395e945.size > 2)
	{
		var_1b6ee6b2 = 5;
	}
	var_7947347f = function_6ada35ba("phalanx_spawner_01", "targetname", 0);
	var_73fc544 = function_6ada35ba("phalanx_spawner_02", "targetname", 0);
	function_9b385ca5();
	var_52fcc5ab = var_3bc9e3b7;
	function_e6cab0ff(var_52fcc5ab, "phanalx_wedge", var_489b2980, var_491bc153, 1, var_1b6ee6b2, var_7947347f);
}

/*
	Name: function_ab3ac518
	Namespace: namespace_20a6d5c1
	Checksum: 0x3EA3FFB8
	Offset: 0x98D8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_ab3ac518()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 16;
	self waittill("hash_41d1aaf0");
	wait(1);
	var_ae8309eb = function_6ada35ba("detention_security_door_01", "targetname");
	var_ae8309eb function_a96a2721(var_ae8309eb function_e59527c1() - VectorScale((0, 0, 1), 128), 1);
	var_ae8309eb function_de8377bf();
	namespace_d5067552::function_bae40a28("sm_detention_center_control_panel_cobra");
}

/*
	Name: function_5730accc
	Namespace: namespace_20a6d5c1
	Checksum: 0xA6DA6BEE
	Offset: 0x99B0
	Size: 0x7B
	Parameters: 4
	Flags: None
*/
function function_5730accc(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_lotus_go_to_taylor_holding_room");
	level namespace_82b91a51::function_ef3f75eb("riot_on");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_lotus_interrogation_room_glass_bundle");
}

/*
	Name: function_c35e6aab
	Namespace: namespace_20a6d5c1
	Checksum: 0xA4AF18C0
	Offset: 0x9A38
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	namespace_2f06d687::function_2b37a3c9("auto_delete", "script_string", &function_f6e4f19a);
}

