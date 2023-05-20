#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_arena_defend;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses2_fx;
#using scripts\cp\cp_mi_cairo_ramses2_patch_c;
#using scripts\cp\cp_mi_cairo_ramses2_sound;
#using scripts\shared\array_shared;
#using scripts\shared\beam_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_22a8c92;

/*
	Name: function_d290ebfa
	Namespace: namespace_22a8c92
	Checksum: 0x151A3E8F
	Offset: 0xAA8
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 5);
	function_2ea898a8();
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_01_bundle", &function_33783216, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_02_bundle", &function_d75b7ad, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_02_bundle", &function_519a7da5, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_03_bundle", &function_e7733d44, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_04_bundle", &function_c170c2db, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_05_bundle", &function_9b6e4872, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_06_bundle", &function_756bce09, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_07_bundle", &function_4f6953a0, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_08_bundle", &function_898e7fc7, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_qt_plaza_palace_wall_collapse_bundle", &function_66424409, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_07_vtol_igc_bundle", &function_a8ab3d99, "play");
	namespace_9c179137::function_d290ebfa();
	namespace_b16ee55e::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	level.var_10d89562 = function_de7504ea("destroyed_interior");
	level.var_c6e7f081 = function_de7504ea("mobile_wall_sidewalk_smash_after");
	namespace_c24f62ab::function_7403e82b();
	namespace_82b91a51::function_44333182(0);
}

/*
	Name: function_2ea898a8
	Namespace: namespace_22a8c92
	Checksum: 0x526982B2
	Offset: 0xD98
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "player_spike_plant_postfx", 1, 1, "counter", &function_8adb399a, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "alley_fog_banks", 1, 1, "int", &function_ca3fa001, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "arena_defend_fxanim_hunters", 1, 1, "int", &function_4457150d, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "alley_fxanim_hunters", 1, 1, "int", &function_f348768a, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "alley_fxanim_curtains", 1, 1, "int", &function_dc700b1c, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "vtol_igc_fxanim_hunter", 1, 1, "int", &function_ac82c57e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "qt_plaza_fxanim_hunters", 1, 1, "int", &function_fdac20d, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "theater_fxanim_swap", 1, 1, "int", &function_b230d19c, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "qt_plaza_outro_exposure", 1, 1, "int", &function_be694d80, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "arena_defend_mobile_wall_damage", 1, 1, "int", &function_e3a0ff9c, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "hide_statue_rubble", 1, 1, "int", &function_1272aa35, 0, 0);
}

/*
	Name: function_71f88fc
	Namespace: namespace_22a8c92
	Checksum: 0xECCD4871
	Offset: 0x10C0
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_7d372786)
{
	switch(var_7d372786)
	{
		case 1:
		{
			function_834b41f9("p7_fxanim_gp_drone_hunter_swarm_large_sanim");
			break;
		}
		case 2:
		{
			function_2e76fa01("c_hro_khalil_egypt_fb");
			break;
		}
		case 3:
		{
			function_834b41f9("p7_fxanim_gp_drone_hunter_swarm_large_sanim");
			break;
		}
		case 4:
		{
			function_834b41f9("p7_fxanim_gp_drone_hunter_swarm_large_sanim");
		}
		case 5:
		{
			function_834b41f9("p7_fxanim_gp_drone_hunter_swarm_large_sanim");
			break;
		}
	}
}

/*
	Name: function_33783216
	Namespace: namespace_22a8c92
	Checksum: 0x16A60EA8
	Offset: 0x11A0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_33783216(var_c77d2837)
{
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_01_link_jnt", "dead_turret_beam");
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_01_link_jnt", "dead_turret_beam");
}

/*
	Name: function_d75b7ad
	Namespace: namespace_22a8c92
	Checksum: 0x678088D9
	Offset: 0x1288
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_d75b7ad(var_c77d2837)
{
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_02_link_jnt", "dead_turret_beam");
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_02_link_jnt", "dead_turret_beam");
}

/*
	Name: function_519a7da5
	Namespace: namespace_22a8c92
	Checksum: 0x7637D993
	Offset: 0x1370
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_519a7da5(var_c77d2837)
{
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["hunter"], "tag_fx_b_jnt", var_c77d2837["hunter"], "drone_02_b_link_jnt", "dead_turret_beam");
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["hunter"], "tag_fx_b_jnt", var_c77d2837["hunter"], "drone_02_b_link_jnt", "dead_turret_beam");
}

/*
	Name: function_e7733d44
	Namespace: namespace_22a8c92
	Checksum: 0x3601BCE8
	Offset: 0x1458
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_e7733d44(var_c77d2837)
{
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_03_link_jnt", "dead_turret_beam");
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_03_link_jnt", "dead_turret_beam");
}

/*
	Name: function_c170c2db
	Namespace: namespace_22a8c92
	Checksum: 0xD4AAF9D3
	Offset: 0x1540
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_c170c2db(var_c77d2837)
{
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_04_link_jnt", "dead_turret_beam");
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_04_link_jnt", "dead_turret_beam");
}

/*
	Name: function_9b6e4872
	Namespace: namespace_22a8c92
	Checksum: 0xC9917148
	Offset: 0x1628
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_9b6e4872(var_c77d2837)
{
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_05_link_jnt", "dead_turret_beam");
	var_c77d2837["hunter"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["hunter"], "tag_fx_jnt", var_c77d2837["hunter"], "drone_05_link_jnt", "dead_turret_beam");
}

/*
	Name: function_756bce09
	Namespace: namespace_22a8c92
	Checksum: 0x861D6D95
	Offset: 0x1710
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_756bce09(var_c77d2837)
{
	var_c77d2837["turret"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["turret"], "tag_fx_01_jnt", var_c77d2837["hunter"], "tag_body", "dead_turret_beam");
	var_c77d2837["turret"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["turret"], "tag_fx_01_jnt", var_c77d2837["hunter"], "tag_body", "dead_turret_beam");
}

/*
	Name: function_4f6953a0
	Namespace: namespace_22a8c92
	Checksum: 0x22ECA3C1
	Offset: 0x17F8
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_4f6953a0(var_c77d2837)
{
	var_c77d2837["turret"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["turret"], "tag_fx_01_jnt", var_c77d2837["hunter"], "tag_body", "dead_turret_beam");
	var_c77d2837["turret"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["turret"], "tag_fx_01_jnt", var_c77d2837["hunter"], "tag_body", "dead_turret_beam");
}

/*
	Name: function_898e7fc7
	Namespace: namespace_22a8c92
	Checksum: 0xE9EAEA5F
	Offset: 0x18E0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_898e7fc7(var_c77d2837)
{
	var_c77d2837["turret"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["turret"], "tag_fx_01_jnt", var_c77d2837["hunter"], "tag_body", "dead_turret_beam");
	var_c77d2837["turret"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["turret"], "tag_fx_01_jnt", var_c77d2837["hunter"], "tag_body", "dead_turret_beam");
}

/*
	Name: function_66424409
	Namespace: namespace_22a8c92
	Checksum: 0xD6D2C069
	Offset: 0x19C8
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_66424409(var_c77d2837)
{
	var_2ef9d306 = var_c77d2837["qt_plaza_palace_wall_vtol"];
	var_c77d2837["turret_palace_wall_collapse"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["turret_palace_wall_collapse"], "tag_fx_01_jnt", var_2ef9d306, "tag_origin", "dead_turret_beam");
	var_c77d2837["turret_palace_wall_collapse"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["turret_palace_wall_collapse"], "tag_fx_01_jnt", var_2ef9d306, "tag_origin", "dead_turret_beam");
}

/*
	Name: function_a8ab3d99
	Namespace: namespace_22a8c92
	Checksum: 0x848CA0E3
	Offset: 0x1AB8
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_a8ab3d99(var_c77d2837)
{
	var_c77d2837["turret_vtol_igc"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_dbc82b90(var_c77d2837["turret_vtol_igc"], "tag_fx_01_jnt", var_c77d2837["hunter"], "tag_body", "dead_turret_beam");
	var_c77d2837["turret_vtol_igc"] waittillmatch("hash_c5324794");
	level namespace_242a37f8::function_2992720d(var_c77d2837["turret_vtol_igc"], "tag_fx_01_jnt", var_c77d2837["hunter"], "tag_body", "dead_turret_beam");
}

/*
	Name: function_4457150d
	Namespace: namespace_22a8c92
	Checksum: 0xBEA7A267
	Offset: 0x1BA0
	Size: 0x6D
	Parameters: 7
	Flags: None
*/
function function_4457150d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread function_63225685();
	}
	else
	{
		level notify("hash_73b6a63a");
	}
}

/*
	Name: function_63225685
	Namespace: namespace_22a8c92
	Checksum: 0x2EFEF394
	Offset: 0x1C18
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_63225685()
{
	level endon("hash_73b6a63a");
	level thread function_23a3a4e5();
	while(1)
	{
		wait(function_72a94f05(1, 3));
		while(1)
		{
			var_85e76a39 = function_dc99997a(1, 6);
			if(!namespace_cc27597::function_367f8966("p7_fxanim_cp_ramses_lotus_towers_hunters_0" + var_85e76a39 + "_bundle"))
			{
				break;
			}
			wait(0.1);
		}
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_lotus_towers_hunters_0" + var_85e76a39 + "_bundle");
	}
}

/*
	Name: function_23a3a4e5
	Namespace: namespace_22a8c92
	Checksum: 0xFBBD1C9A
	Offset: 0x1D08
	Size: 0x167
	Parameters: 0
	Flags: None
*/
function function_23a3a4e5()
{
	level endon("hash_73b6a63a");
	while(1)
	{
		wait(function_72a94f05(1, 3));
		while(1)
		{
			var_85e76a39 = function_dc99997a(1, 5);
			if(var_85e76a39 == 4)
			{
				if(!namespace_cc27597::function_367f8966("p7_fxanim_cp_ramses_lotus_towers_hunters_peel_off_01_bundle") && !namespace_cc27597::function_367f8966("p7_fxanim_cp_ramses_lotus_towers_hunters_peel_off_02_bundle"))
				{
					break;
				}
			}
			else if(!namespace_cc27597::function_367f8966("p7_fxanim_cp_ramses_lotus_towers_hunters_peel_off_0" + var_85e76a39 + "_bundle"))
			{
				break;
			}
			wait(0.05);
		}
		if(var_85e76a39 == 4)
		{
			level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_lotus_towers_hunters_peel_off_01_bundle");
			namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_lotus_towers_hunters_peel_off_02_bundle");
		}
		else
		{
			namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_lotus_towers_hunters_0" + var_85e76a39 + "_bundle");
		}
	}
}

/*
	Name: function_f348768a
	Namespace: namespace_22a8c92
	Checksum: 0x1B09D6F2
	Offset: 0x1E78
	Size: 0x6D
	Parameters: 7
	Flags: None
*/
function function_f348768a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread function_3988a9a2();
	}
	else
	{
		level notify("hash_e72998db");
	}
}

/*
	Name: function_3988a9a2
	Namespace: namespace_22a8c92
	Checksum: 0x5410CCC3
	Offset: 0x1EF0
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_3988a9a2()
{
	level endon("hash_e72998db");
	while(1)
	{
		wait(function_72a94f05(5, 10));
		while(1)
		{
			var_85e76a39 = function_dc99997a(6, 9);
			if(!namespace_cc27597::function_367f8966("p7_fxanim_cp_ramses_lotus_towers_hunters_0" + var_85e76a39 + "_bundle"))
			{
				break;
			}
			wait(0.1);
		}
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_lotus_towers_hunters_0" + var_85e76a39 + "_bundle");
	}
}

/*
	Name: function_dc700b1c
	Namespace: namespace_22a8c92
	Checksum: 0xC6E6D0B3
	Offset: 0x1FC8
	Size: 0x113
	Parameters: 7
	Flags: None
*/
function function_dc700b1c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_curtain_torn_center_01_s3_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_curtain_torn_left_01_s3_bundle");
		level thread namespace_cc27597::function_43718187("p7_fxanim_gp_curtain_torn_right_01_s3_bundle");
	}
	else if(var_9193c732 == 0)
	{
		level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_curtain_torn_center_01_s3_bundle", 1);
		level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_curtain_torn_left_01_s3_bundle", 1);
		level thread namespace_cc27597::function_fcf56ab5("p7_fxanim_gp_curtain_torn_right_01_s3_bundle", 1);
	}
}

/*
	Name: function_ac82c57e
	Namespace: namespace_22a8c92
	Checksum: 0xF5349DF9
	Offset: 0x20E8
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_ac82c57e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_eff8c94a = namespace_14b42b8a::function_7922262b("vtol_igc_fxanim_hunter", "targetname");
		var_eff8c94a namespace_cc27597::function_43718187();
		var_eff8c94a namespace_cc27597::function_fcf56ab5(1);
	}
}

/*
	Name: function_fdac20d
	Namespace: namespace_22a8c92
	Checksum: 0xCF9498A6
	Offset: 0x2198
	Size: 0x6D
	Parameters: 7
	Flags: None
*/
function function_fdac20d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		level thread function_21f5125d();
	}
	else
	{
		level notify("hash_7b9f74d6");
	}
}

/*
	Name: function_21f5125d
	Namespace: namespace_22a8c92
	Checksum: 0x936C1B8D
	Offset: 0x2210
	Size: 0xCF
	Parameters: 0
	Flags: None
*/
function function_21f5125d()
{
	level endon("hash_7b9f74d6");
	var_c02e0aaa = namespace_14b42b8a::function_7faf4c39("qt_plaza_hunters", "targetname");
	while(1)
	{
		wait(function_72a94f05(5, 10));
		while(1)
		{
			var_eff8c94a = namespace_84970cc4::function_47d18840(var_c02e0aaa);
			if(!var_eff8c94a namespace_cc27597::function_367f8966())
			{
				break;
			}
			wait(0.05);
		}
		var_eff8c94a namespace_cc27597::function_43718187();
	}
}

/*
	Name: function_b230d19c
	Namespace: namespace_22a8c92
	Checksum: 0xB3D7D6C9
	Offset: 0x22E8
	Size: 0x1A1
	Parameters: 7
	Flags: None
*/
function function_b230d19c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_10d89562), "Dev Block strings are not supported");
	#/
	if(var_9193c732 == 1)
	{
		foreach(var_6df9264 in level.var_10d89562)
		{
			function_201670be(var_6df9264);
			if(var_c957f6b6 % 25 == 0)
			{
				wait(0.016);
			}
		}
		break;
	}
	foreach(var_6df9264 in level.var_10d89562)
	{
		function_28aac069(var_6df9264);
	}
}

/*
	Name: function_8adb399a
	Namespace: namespace_22a8c92
	Checksum: 0x71E5D4C0
	Offset: 0x2498
	Size: 0x9B
	Parameters: 7
	Flags: None
*/
function function_8adb399a(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_dust_chalk");
		self thread namespace_bdde9225::function_bca12b73("pstfx_dust_concrete");
	}
	else
	{
		self thread namespace_bdde9225::function_3d1a8db5();
	}
}

/*
	Name: function_be694d80
	Namespace: namespace_22a8c92
	Checksum: 0x8BCD5C59
	Offset: 0x2540
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_be694d80(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_2f183a94(var_ec74b091, 2);
	}
}

/*
	Name: function_e3a0ff9c
	Namespace: namespace_22a8c92
	Checksum: 0x6EBA078E
	Offset: 0x25B0
	Size: 0x1A1
	Parameters: 7
	Flags: None
*/
function function_e3a0ff9c(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(level.var_c6e7f081), "Dev Block strings are not supported");
	#/
	if(var_9193c732 == 1)
	{
		foreach(var_6df9264 in level.var_c6e7f081)
		{
			function_201670be(var_6df9264);
			if(var_c957f6b6 % 25 == 0)
			{
				wait(0.016);
			}
		}
		break;
	}
	foreach(var_6df9264 in level.var_c6e7f081)
	{
		function_28aac069(var_6df9264);
	}
}

/*
	Name: function_1272aa35
	Namespace: namespace_22a8c92
	Checksum: 0x447627AE
	Offset: 0x2760
	Size: 0xB3
	Parameters: 7
	Flags: None
*/
function function_1272aa35(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_98ad2cfe = function_6ada35ba(var_ec74b091, "quadtank_statue_chunks", "targetname");
	if(isdefined(var_98ad2cfe))
	{
		if(var_9193c732 == 1)
		{
			var_98ad2cfe function_50ccee8d();
		}
		else
		{
			var_98ad2cfe function_48f26766();
		}
	}
}

/*
	Name: function_ca3fa001
	Namespace: namespace_22a8c92
	Checksum: 0x6F8E45
	Offset: 0x2820
	Size: 0x7D
	Parameters: 7
	Flags: None
*/
function function_ca3fa001(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	for(var_ec74b091 = 0; var_ec74b091 < level.var_ec485aa4.size; var_ec74b091++)
	{
		function_c1dc0657(var_ec74b091, 1);
	}
}

