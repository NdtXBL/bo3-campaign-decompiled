#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_newworld;
#using scripts\cp\cp_mi_zurich_newworld_accolades;
#using scripts\cp\cp_mi_zurich_newworld_sound;
#using scripts\cp\cp_mi_zurich_newworld_util;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_f8b9e1f8;

/*
	Name: function_e0b1e88a
	Namespace: namespace_f8b9e1f8
	Checksum: 0x80E5EF9E
	Offset: 0x2F58
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_e0b1e88a(var_b04bc952, var_74cd64bc)
{
	level thread function_97f60350();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d7916d65::function_c32ba481(undefined, (1, 1, 1));
		level thread namespace_ce0e5f06::function_30ec5bf7(1);
	}
	namespace_ce0e5f06::function_3383b379();
	namespace_76d95162::function_d9f49fba(0);
	level function_99ea7a88();
	function_fcf3b18d();
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_54113b74
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDEE80F76
	Offset: 0x3060
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_54113b74(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_fcf3b18d
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA3DB1167
	Offset: 0x3090
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_fcf3b18d()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_25b39be3(1);
	}
	level.var_6cb8b7a = namespace_82b91a51::function_740f8516("diaz");
	level.var_6cb8b7a function_8c8e79fe();
	level.var_6cb8b7a function_25b39be3(1);
	level.var_1c26230b = namespace_82b91a51::function_740f8516("taylor");
	level.var_1c26230b function_8c8e79fe();
	level.var_1c26230b function_25b39be3(1);
	level namespace_cc27597::function_c35e6aab("cin_new_02_01_pallasintro_vign_appear_player");
	level namespace_cc27597::function_c35e6aab("cin_new_02_01_pallasintro_vign_appear");
	namespace_82b91a51::function_d8eaed3d(2);
	namespace_ce0e5f06::function_83a7d040();
	namespace_82b91a51::function_11a89b44();
	level namespace_ad23e503::function_9d134160("infinite_white_transition");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_ce0e5f06::function_737d2864, &"CP_MI_ZURICH_NEWWORLD_LOCATION_FACTORY", &"CP_MI_ZURICH_NEWWORLD_TIME_FACTORY");
	function_20bc4cca();
	namespace_82b91a51::function_a0938376();
	namespace_80983c42::function_593e8a39("fx_exterior_igc_tracer_intro");
}

/*
	Name: function_20bc4cca
	Namespace: namespace_f8b9e1f8
	Checksum: 0x34943F9E
	Offset: 0x32E8
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_20bc4cca()
{
	namespace_80983c42::function_80983c42("fx_exterior_igc_tracer_intro");
	level namespace_cc27597::function_9e5b8cdb("cin_new_02_01_pallasintro_vign_appear");
	level namespace_cc27597::function_8f9f34e0("cin_new_02_01_pallasintro_vign_appear", &function_453b588c);
	level namespace_cc27597::function_8f9f34e0("cin_new_02_01_pallasintro_vign_appear", &function_b0753d7b);
	level thread namespace_cc27597::function_43718187("cin_new_02_01_pallasintro_vign_appear");
	if(isdefined(level.var_1745db58))
	{
		level thread [[level.var_1745db58]]();
	}
	level namespace_cc27597::function_8f9f34e0("cin_new_02_01_pallasintro_vign_appear_player", &function_1b440643);
	level namespace_cc27597::function_8f9f34e0("cin_new_02_01_pallasintro_vign_appear_player", &function_b1896f5, "players_done");
	level namespace_cc27597::function_43718187("cin_new_02_01_pallasintro_vign_appear_player");
	level thread namespace_e38c3c58::function_973b77f9();
}

/*
	Name: function_b1896f5
	Namespace: namespace_f8b9e1f8
	Checksum: 0x108DAC33
	Offset: 0x3450
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_b1896f5(var_c77d2837)
{
	namespace_82b91a51::function_93831e79("factory_factory_exterior");
}

/*
	Name: function_97f60350
	Namespace: namespace_f8b9e1f8
	Checksum: 0x37500F89
	Offset: 0x3480
	Size: 0x1C1
	Parameters: 0
	Flags: None
*/
function function_97f60350()
{
	var_e1b54d68 = [];
	namespace_84970cc4::function_69554b3e(var_e1b54d68, namespace_14b42b8a::function_9b7fda5e((22428.9, -10169.4, -7248), VectorScale((0, 1, 0), 86.7993)));
	namespace_84970cc4::function_69554b3e(var_e1b54d68, namespace_14b42b8a::function_9b7fda5e((22505.6, -10169.9, -7249), VectorScale((0, 1, 0), 86.3997)));
	namespace_84970cc4::function_69554b3e(var_e1b54d68, namespace_14b42b8a::function_9b7fda5e((22627, -10173.8, -7252), VectorScale((0, 1, 0), 91.7998)));
	namespace_84970cc4::function_69554b3e(var_e1b54d68, namespace_14b42b8a::function_9b7fda5e((22704.9, -10172.7, -7252), VectorScale((0, 1, 0), 91.3996)));
	foreach(var_14b42b8a in var_e1b54d68)
	{
		var_14b42b8a.var_170527fb = "factory_factory_exterior";
		var_14b42b8a namespace_14b42b8a::function_c35e6aab();
	}
}

/*
	Name: function_453b588c
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5464549E
	Offset: 0x3650
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_453b588c(var_c77d2837)
{
	level thread function_8db0ac1a(var_c77d2837);
	level thread function_94d27(var_c77d2837);
}

/*
	Name: function_b0753d7b
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2E0E23D3
	Offset: 0x3698
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_b0753d7b(var_c77d2837)
{
	var_c77d2837["factory_intro_truck_01"] thread function_69cfc912();
	var_c77d2837["factory_intro_truck_01"] thread function_788efb3b();
}

/*
	Name: function_69cfc912
	Namespace: namespace_f8b9e1f8
	Checksum: 0x3EE6F866
	Offset: 0x36F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_69cfc912()
{
	self waittill("hash_4fe13a89");
	self function_e48f905e("veh_t7_civ_truck_pickup_tech_zdf_dead");
}

/*
	Name: function_788efb3b
	Namespace: namespace_f8b9e1f8
	Checksum: 0x211F797C
	Offset: 0x3728
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_788efb3b()
{
	self waittill("hash_d3a494b6");
	self function_14c24d9d();
}

/*
	Name: function_8db0ac1a
	Namespace: namespace_f8b9e1f8
	Checksum: 0x61F446E2
	Offset: 0x3758
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_8db0ac1a(var_c77d2837)
{
	level waittill("hash_caecba47");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		function_bea2b721(1);
		namespace_ce0e5f06::function_85d8906c();
		level namespace_71e9cb84::function_74d6b22f("factory_exterior_vents", 1);
	}
}

/*
	Name: function_94d27
	Namespace: namespace_f8b9e1f8
	Checksum: 0x81698FD6
	Offset: 0x37D8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_94d27(var_c77d2837)
{
	level.var_6cb8b7a waittill("hash_2fc79de1");
	var_d874dcf = function_6ada35ba("snow_umbrella_factory_intro_igc", "targetname");
	var_d874dcf function_dc8c8404();
	function_bea2b721(0);
	namespace_ce0e5f06::function_3383b379();
	level namespace_71e9cb84::function_74d6b22f("factory_exterior_vents", 0);
}

/*
	Name: function_1b440643
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBB684B37
	Offset: 0x3888
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_1b440643(var_c77d2837)
{
	level thread function_921c1035(var_c77d2837);
	level thread function_8af70712(var_c77d2837);
	level thread function_86604714(var_c77d2837);
}

/*
	Name: function_921c1035
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD3E0A0A9
	Offset: 0x38E8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_921c1035(var_c77d2837)
{
	var_c77d2837["taylor"] waittill("hash_f855e936");
	var_c77d2837["taylor"] thread namespace_ce0e5f06::function_c949a8ed(1);
}

/*
	Name: function_8af70712
	Namespace: namespace_f8b9e1f8
	Checksum: 0x4CB036F3
	Offset: 0x3940
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_8af70712(var_c77d2837)
{
	var_c77d2837["diaz"] waittill("hash_f855e936");
	var_c77d2837["diaz"] thread namespace_ce0e5f06::function_c949a8ed(1);
}

/*
	Name: function_86604714
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC1AD7BF
	Offset: 0x3998
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_86604714(var_c77d2837)
{
	var_c77d2837["taylor"] waittill("hash_51f5dc71");
	var_c77d2837["taylor"] thread namespace_ce0e5f06::function_4943984c();
}

/*
	Name: function_5c3934c2
	Namespace: namespace_f8b9e1f8
	Checksum: 0x92803BBB
	Offset: 0x39E8
	Size: 0x22B
	Parameters: 2
	Flags: None
*/
function function_5c3934c2(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		function_11a66a73(var_b04bc952);
		level function_99ea7a88();
		level namespace_cc27597::function_6c130337("cin_new_02_01_pallasintro_vign_appear");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_newworld_truck_flip_factory_igc_bundle");
		var_337db322 = function_6ada35ba("factory_intro_truck_01", "targetname");
		var_337db322 function_e48f905e("veh_t7_civ_truck_pickup_tech_zdf_dead");
		var_337db322 function_14c24d9d();
		namespace_d5067552::function_bae40a28("sm_intro_area_ally_skipto");
		namespace_d7916d65::function_a2995f22();
	}
	namespace_82b91a51::function_67520c6a(0.6, undefined, &namespace_ce0e5f06::function_3e37f48b, 0);
	level thread function_c5eadf67();
	namespace_76d95162::function_d9f49fba(1);
	level thread namespace_e38c3c58::function_fa2e45b8();
	level thread function_1f377ec7();
	namespace_4dbf3ae3::function_1ab5ebec("alley_start");
	level thread namespace_e38c3c58::function_92eefdb3();
	namespace_84970cc4::function_966ecb29(namespace_2f06d687::function_289e6fd1("intro_area_enemy"), &namespace_ce0e5f06::function_95132241);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_8b155bc
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCBC4FADF
	Offset: 0x3C20
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_8b155bc(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_8392bfa
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCD039290
	Offset: 0x3C50
	Size: 0x213
	Parameters: 2
	Flags: None
*/
function function_8392bfa(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d5067552::function_bae40a28("sm_alley_area_ally");
		namespace_4dbf3ae3::function_42e87952("alley_color_trigger_start");
		level thread namespace_ce0e5f06::function_3e37f48b(0);
		level thread function_c5eadf67();
		function_11a66a73(var_b04bc952);
		level thread namespace_d0ef8521::function_45d1556("factory_intro_breadcrumb");
		namespace_d0ef8521::function_74d6b22f("cp_level_newworld_factory_subobj_goto_hideout");
		namespace_d7916d65::function_a2995f22();
		level thread namespace_e38c3c58::function_92eefdb3();
	}
	level namespace_ad23e503::function_c35e6aab("player_completed_alley");
	namespace_76d95162::function_d9f49fba(0);
	level thread function_9662a9b0();
	level namespace_ad23e503::function_1ab5ebec("player_completed_silo");
	namespace_9f824288::function_5d2cdd99();
	level namespace_d0ef8521::function_45d1556("alley_breadcrumb");
	level namespace_ad23e503::function_74d6b22f("player_completed_alley");
	namespace_84970cc4::function_966ecb29(namespace_2f06d687::function_289e6fd1("alley_enemies"), &namespace_ce0e5f06::function_95132241);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_76333904
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2E0443CB
	Offset: 0x3E70
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_76333904(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_beff78dc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x844C3280
	Offset: 0x3EA0
	Size: 0x10B
	Parameters: 2
	Flags: None
*/
function function_beff78dc(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_ce0e5f06::function_3e37f48b(0);
		level thread function_c5eadf67();
		function_11a66a73(var_b04bc952);
		namespace_d0ef8521::function_74d6b22f("cp_level_newworld_factory_subobj_goto_hideout");
		namespace_d7916d65::function_a2995f22();
	}
	level thread function_ab1cd196();
	level thread namespace_d0ef8521::function_45d1556("warehouse_breadcrumb");
	namespace_4dbf3ae3::function_1ab5ebec("foundry_start", undefined, undefined, 0);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_e028fc02
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFA50C59F
	Offset: 0x3FB8
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_e028fc02(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_factory_subobj_goto_hideout");
	namespace_dabbe128::function_bcd31c2c(&function_2c49b262);
}

/*
	Name: function_e886dd9a
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF1297B15
	Offset: 0x4020
	Size: 0xE9
	Parameters: 2
	Flags: None
*/
function function_e886dd9a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_ce0e5f06::function_3e37f48b(0);
		function_11a66a73(var_b04bc952);
		level thread function_adcc83a3(var_74cd64bc);
		namespace_d7916d65::function_a2995f22();
	}
	namespace_76d95162::function_d9f49fba(0);
	level thread namespace_e38c3c58::function_d8182956();
	function_81354ca4();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
	level notify("hash_7aa3c9ce");
}

/*
	Name: function_5680eaa4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x240BC3A7
	Offset: 0x4118
	Size: 0x63
	Parameters: 4
	Flags: None
*/
function function_5680eaa4(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc === 1)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_newworld_factory_subobj_hijack_drone");
		namespace_d0ef8521::function_31cd1834("cp_level_newworld_foundry_subobj_destroy_generator");
	}
}

/*
	Name: function_6aeb594c
	Namespace: namespace_f8b9e1f8
	Checksum: 0x7ED4B27A
	Offset: 0x4188
	Size: 0x1AB
	Parameters: 2
	Flags: None
*/
function function_6aeb594c(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_b7a27741 = 1;
		function_11a66a73(var_b04bc952);
		level.var_6cb8b7a namespace_d84e54db::function_ceb883cd("sprint", 0);
		level.var_6cb8b7a namespace_d84e54db::function_ceb883cd("cqb", 1);
		namespace_4dbf3ae3::function_42e87952("vat_room_color_trigger_start");
		namespace_d7916d65::function_a2995f22();
		level thread namespace_e38c3c58::function_ccafa212();
	}
	level thread namespace_37a1dc33::function_f7dd9b2c();
	namespace_76d95162::function_d9f49fba(0);
	function_bab1ff00("umbra_gate_vat_room_door_01", 0);
	if(function_27c72c1b())
	{
		var_d874dcf = function_6ada35ba("vat_room_flank_route_monster_clip", "targetname");
		var_d874dcf function_dc8c8404();
	}
	function_46d1131c();
	level thread namespace_82b91a51::function_d8eaed3d(3);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_19fb5452
	Namespace: namespace_f8b9e1f8
	Checksum: 0x45314032
	Offset: 0x4340
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_19fb5452(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc === 1)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_newworld_vat_room_subobj_locate_command_ctr");
		namespace_d0ef8521::function_31cd1834("cp_level_newworld_vat_room_subobj_hack_door");
	}
	namespace_dabbe128::function_bcd31c2c(&function_5e3e5d06);
}

/*
	Name: function_1f377ec7
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB6756FB5
	Offset: 0x43D0
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_1f377ec7()
{
	namespace_2f06d687::function_2b37a3c9("friendly_left", "script_string", &function_2ec32332);
	namespace_2f06d687::function_2b37a3c9("friendly_right", "script_string", &function_2ec32332);
	namespace_2f06d687::function_2b37a3c9("left_flank", "script_string", &function_2ec32332);
	namespace_2f06d687::function_2b37a3c9("right_flank", "script_string", &function_2ec32332);
	var_f91ba6e1 = function_6ada35ba("diaz_factory_first_target", "script_noteworthy");
	var_f91ba6e1 namespace_2f06d687::function_994832bd(&function_e9ba1a28);
	namespace_d5067552::function_bae40a28("sm_intro_area_ally");
	namespace_d5067552::function_bae40a28("sm_intro_initial_enemies_left");
	namespace_d5067552::function_bae40a28("sm_intro_initial_enemies_right");
	namespace_d5067552::function_bae40a28("sm_center_path_enemies");
	namespace_d5067552::function_bae40a28("sm_hi_lo_area_enemies");
	namespace_d5067552::function_bae40a28("sm_intro_initial_enemies_center_1");
	namespace_d5067552::function_bae40a28("sm_intro_initial_enemies_catwalk");
	namespace_4dbf3ae3::function_42e87952("intro_color_trigger_start");
	level thread function_738d040b();
	level thread function_cdca03a4();
	level thread function_6cc0f04e();
	level thread namespace_d0ef8521::function_45d1556("factory_intro_breadcrumb");
	level thread namespace_d0ef8521::function_74d6b22f("cp_level_newworld_factory_subobj_goto_hideout");
}

/*
	Name: function_6cc0f04e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x4FA58D89
	Offset: 0x4638
	Size: 0x229
	Parameters: 0
	Flags: None
*/
function function_6cc0f04e()
{
	namespace_4dbf3ae3::function_1ab5ebec("intro_factory_start_retreat");
	foreach(var_412a98c7 in namespace_2f06d687::function_289e6fd1("factory_allies"))
	{
		if(var_412a98c7.var_caae374e === "expendable")
		{
			var_412a98c7 thread function_900831e2();
		}
	}
	var_57825414 = function_6ada35ba("intro_factory_retreat", "targetname");
	var_1f6e1fda = namespace_2f06d687::function_289e6fd1("intro_area_enemy");
	foreach(var_2eecd77a in var_1f6e1fda)
	{
		if(function_5b49d38c(var_2eecd77a) && !var_2eecd77a function_32fa5072(var_57825414) && var_2eecd77a.var_caae374e !== "no_retreat")
		{
			var_2eecd77a function_169cc712(var_57825414);
			wait(function_72a94f05(0.5, 1.5));
		}
	}
}

/*
	Name: function_900831e2
	Namespace: namespace_f8b9e1f8
	Checksum: 0x786C836B
	Offset: 0x4870
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_900831e2()
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_4b741fdc();
	wait(function_72a94f05(10, 20));
	var_2540d664 = 0;
	while(var_2540d664 == 0)
	{
		wait(1);
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			if(var_6bfe1586 namespace_82b91a51::function_d61b846f(self.var_722885f3) == 0)
			{
				var_2540d664 = 1;
				continue;
			}
			var_2540d664 = 0;
		}
	}
	self function_2992720d();
}

/*
	Name: function_cdca03a4
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA5143EFB
	Offset: 0x49A8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_cdca03a4()
{
	namespace_4dbf3ae3::function_1ab5ebec("intro_factory_start_tac_mode");
	if(function_27c72c1b())
	{
		return;
	}
	level thread function_2fa20b5d();
	namespace_4dbf3ae3::function_1ab5ebec("intro_factory_retreat");
	namespace_d5067552::function_bae40a28("sm_intro_tac_mode");
	namespace_cc27597::function_8f9f34e0("cin_new_03_01_factoryraid_aie_break_glass", &function_877af88d, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_03_01_factoryraid_aie_break_glass", &function_8bd7bfb0, "play");
	level thread namespace_cc27597::function_43718187("cin_new_03_01_factoryraid_aie_break_glass");
}

/*
	Name: function_877af88d
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB51312AA
	Offset: 0x4AA8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_877af88d(var_c77d2837)
{
	level waittill("hash_877af88d");
	var_d6e89d77 = namespace_14b42b8a::function_7922262b("factory_exterior_break_glass_left", "targetname");
	function_be97adee(var_d6e89d77.var_722885f3, 50, 500, 500);
}

/*
	Name: function_8bd7bfb0
	Namespace: namespace_f8b9e1f8
	Checksum: 0x27E8FE41
	Offset: 0x4B28
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_8bd7bfb0(var_c77d2837)
{
	level waittill("hash_8bd7bfb0");
	var_d6e89d77 = namespace_14b42b8a::function_7922262b("factory_exterior_break_glass_right", "targetname");
	function_be97adee(var_d6e89d77.var_722885f3, 50, 500, 500);
}

/*
	Name: function_2fa20b5d
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8575D8DC
	Offset: 0x4BA8
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_2fa20b5d()
{
	level.var_6cb8b7a thread namespace_71b8dba1::function_81141386("diaz_your_dni_can_provide_0");
	level.var_9ef26e4f = 1;
	namespace_ce0e5f06::function_3196eaee(1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread function_972f9cf5();
		var_5dc5e20a thread function_a77545da();
	}
}

/*
	Name: function_e9ba1a28
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1A1B9DD6
	Offset: 0x4CB8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_e9ba1a28()
{
	self.var_3a90f16b = 10;
	level.var_6cb8b7a namespace_d84e54db::function_d104c596("shoot_until_target_dead", self);
	var_84f1697a = function_99201f25("no_retreat", "script_noteworthy", 1);
	if(isdefined(var_84f1697a) && function_5b49d38c(var_84f1697a[0]))
	{
		level.var_6cb8b7a namespace_d84e54db::function_d104c596("kill_within_time", var_84f1697a[0], undefined, 3);
	}
	namespace_4dbf3ae3::function_42e87952("t_color_diaz_right_flank_quick_start");
}

/*
	Name: function_99ea7a88
	Namespace: namespace_f8b9e1f8
	Checksum: 0x4374DF7B
	Offset: 0x4D98
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_99ea7a88()
{
	function_43f446e3("factory_intro_threatbias_friendly_left");
	function_43f446e3("factory_intro_threatbias_enemy_left");
	function_43f446e3("factory_intro_threatbias_friendly_right");
	function_43f446e3("factory_intro_threatbias_enemy_right");
	function_49e95dc0("factory_intro_threatbias_friendly_left", "factory_intro_threatbias_enemy_right", -5000);
	function_49e95dc0("factory_intro_threatbias_enemy_right", "factory_intro_threatbias_friendly_left", -5000);
	function_49e95dc0("factory_intro_threatbias_friendly_right", "factory_intro_threatbias_enemy_left", -5000);
	function_49e95dc0("factory_intro_threatbias_enemy_left", "factory_intro_threatbias_friendly_right", -5000);
}

/*
	Name: function_2ec32332
	Namespace: namespace_f8b9e1f8
	Checksum: 0x24FA2768
	Offset: 0x4EA8
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_2ec32332()
{
	var_bb94a349 = self.var_db7bb468;
	switch(var_bb94a349)
	{
		case "right_flank":
		{
			self function_c7708f99("factory_intro_threatbias_enemy_right");
			break;
		}
		case "left_flank":
		{
			self function_c7708f99("factory_intro_threatbias_enemy_left");
			break;
		}
		case "friendly_left":
		{
			self function_c7708f99("factory_intro_threatbias_friendly_left");
			break;
		}
		case "friendly_right":
		{
			self function_c7708f99("factory_intro_threatbias_friendly_right");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_9662a9b0
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD32A2C96
	Offset: 0x4F88
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_9662a9b0()
{
	level thread function_5f94cc0();
	level thread function_8774b593();
	level thread function_84b0c4c4();
	level namespace_ad23e503::function_1ab5ebec("player_completed_silo");
	namespace_d5067552::function_bae40a28("sm_alley_front_left_enemies");
	namespace_d5067552::function_bae40a28("sm_alley_front_right_enemies");
	namespace_2f06d687::function_7387a40a("diaz_wallrun_target");
	namespace_4dbf3ae3::function_1ab5ebec("alley_half_way");
	namespace_d5067552::function_bae40a28("sm_alley_rear_left");
	namespace_d5067552::function_bae40a28("sm_alley_rear_right");
	namespace_4dbf3ae3::function_1ab5ebec("alley_reinforcements");
	namespace_d5067552::function_bae40a28("sm_alley_reinforcements");
	level thread function_b9d42d14();
	level.var_6cb8b7a thread namespace_71b8dba1::function_81141386("diaz_reinforcements_at_th_0", 2);
	namespace_2f06d687::function_45679edd("alley_enemies", 2);
	if(!level namespace_ad23e503::function_7922262b("player_completed_alley"))
	{
		namespace_4dbf3ae3::function_42e87952("alley_end_diaz_color");
	}
}

/*
	Name: function_b9d42d14
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1152E31
	Offset: 0x5158
	Size: 0x1E1
	Parameters: 0
	Flags: None
*/
function function_b9d42d14()
{
	foreach(var_412a98c7 in namespace_2f06d687::function_289e6fd1("factory_allies"))
	{
		var_412a98c7 thread function_900831e2();
	}
	var_57825414 = function_6ada35ba("back_of_alley", "targetname");
	var_1f6e1fda = namespace_2f06d687::function_289e6fd1("alley_enemies");
	foreach(var_2eecd77a in var_1f6e1fda)
	{
		if(function_5b49d38c(var_2eecd77a) && !var_2eecd77a function_32fa5072(var_57825414))
		{
			var_2eecd77a function_169cc712(var_57825414);
			wait(function_72a94f05(0.5, 1.5));
		}
	}
}

/*
	Name: function_9fb5e88f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x26C37F6D
	Offset: 0x5348
	Size: 0x113
	Parameters: 3
	Flags: None
*/
function function_9fb5e88f(var_2ad5d7ab, var_ee7dbbc9, var_294306eb)
{
	if(isdefined(var_ee7dbbc9))
	{
		wait(var_ee7dbbc9);
	}
	var_90911853 = function_c4d5ec1f("launcher_standard_magic_bullet");
	var_10729d99 = namespace_14b42b8a::function_7922262b(var_2ad5d7ab, "targetname");
	var_96eed922 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6, "targetname");
	var_973828cf = function_87f3c622(var_90911853, var_10729d99.var_722885f3, var_96eed922.var_722885f3);
	var_973828cf waittill("hash_128f8789");
	if(isdefined(var_294306eb))
	{
		level thread namespace_cc27597::function_43718187(var_294306eb);
	}
}

/*
	Name: function_8774b593
	Namespace: namespace_f8b9e1f8
	Checksum: 0x7BF53D58
	Offset: 0x5468
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_8774b593()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_alley_pipes_bundle");
	level namespace_ad23e503::function_1ab5ebec("player_completed_silo");
	namespace_4dbf3ae3::function_1ab5ebec("t_tmode_explosive_lookat");
	level notify("hash_3cb382c8");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread function_972f9cf5();
	}
	level thread function_9fb5e88f("alley_rocket_01");
	level thread function_9fb5e88f("alley_rocket_02", 1.7, "p7_fxanim_cp_newworld_alley_pipes_bundle");
	level thread function_9fb5e88f("alley_rocket_03", 3.6);
	if(!function_27c72c1b())
	{
		level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_tac_mode_will_highli_0");
	}
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_84b0c4c4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x517AC475
	Offset: 0x5640
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_84b0c4c4()
{
	if(function_27c72c1b())
	{
		return;
	}
	namespace_4dbf3ae3::function_1ab5ebec("t_tmode_tutorial_hotzones");
	level.var_6cb8b7a thread namespace_71b8dba1::function_81141386("diaz_see_the_red_and_yell_0");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread function_972f9cf5();
	}
}

/*
	Name: function_5f94cc0
	Namespace: namespace_f8b9e1f8
	Checksum: 0x40486026
	Offset: 0x5748
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_5f94cc0()
{
	level namespace_ad23e503::function_1ab5ebec("init_wallrun_tutorial");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread function_b64491f1();
		var_5dc5e20a thread function_af28d0ba();
	}
	level.var_6cb8b7a namespace_ce0e5f06::function_4943984c();
	level thread function_8b723eb();
	if(isdefined(level.var_de05e4eb))
	{
		level thread [[level.var_de05e4eb]]();
	}
	level namespace_cc27597::function_8f9f34e0("cin_new_03_03_factoryraid_vign_wallrunright_diaz", &function_574f2ed1, "done");
	level namespace_cc27597::function_8f9f34e0("cin_new_03_03_factoryraid_vign_wallrunright_diaz_pt2", &function_9e64a31f);
	level thread namespace_cc27597::function_43718187("cin_new_03_03_factoryraid_vign_wallrunright_diaz");
	level waittill("hash_7c8ade1b");
	namespace_4dbf3ae3::function_42e87952("set_diaz_color_post_wallrun", "targetname");
	level thread function_ff4d4f4e();
}

/*
	Name: function_574f2ed1
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCF2B6435
	Offset: 0x5948
	Size: 0x89
	Parameters: 1
	Flags: None
*/
function function_574f2ed1(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a notify("hash_342714c9");
	}
}

/*
	Name: function_9e64a31f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC684EAF7
	Offset: 0x59E0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_9e64a31f(var_c77d2837)
{
	var_c77d2837["diaz"] waittill("hash_f1bd9c60");
	level.var_6cb8b7a namespace_71e9cb84::function_74d6b22f("wall_run_fx", 1);
	var_c77d2837["diaz"] waittill("hash_fdd1c32");
	level.var_6cb8b7a namespace_71e9cb84::function_74d6b22f("wall_run_fx", 0);
}

/*
	Name: function_8b723eb
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCBDDBEB4
	Offset: 0x5A70
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8b723eb()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_wallrunright_diaz_visible_lookat");
	level.var_6cb8b7a namespace_ce0e5f06::function_c949a8ed();
}

/*
	Name: function_b64491f1
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC7E49F4C
	Offset: 0x5AB0
	Size: 0x167
	Parameters: 0
	Flags: None
*/
function function_b64491f1()
{
	self endon("hash_128f8789");
	level endon("hash_3cb382c8");
	self thread function_823ff83e();
	self waittill("hash_342714c9");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	self namespace_ad23e503::function_c35e6aab("wallrun_tutorial_complete");
	self thread function_f72a6585();
	while(!self namespace_ad23e503::function_7922262b("wallrun_tutorial_complete"))
	{
		self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_WALLRUN_TUTORIAL", 0, undefined, 4);
		self namespace_ad23e503::function_d266a8b4(4, "wallrun_tutorial_complete");
		self thread namespace_82b91a51::function_f9e5537b(1);
		self namespace_ad23e503::function_d266a8b4(3, "wallrun_tutorial_complete");
	}
}

/*
	Name: function_823ff83e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x6EEA4EE8
	Offset: 0x5C20
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_823ff83e()
{
	self endon("hash_128f8789");
	self endon("hash_342714c9");
	level endon("hash_3cb382c8");
	namespace_4dbf3ae3::function_1ab5ebec("player_at_wallrun_ledge", "targetname", self);
	self notify("hash_342714c9");
}

/*
	Name: function_f72a6585
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD1F0A3A9
	Offset: 0x5C88
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f72a6585()
{
	self endon("hash_128f8789");
	level endon("hash_3cb382c8");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	while(1)
	{
		if(self function_ad7e8c32())
		{
			self namespace_ad23e503::function_74d6b22f("wallrun_tutorial_complete");
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_ff4d4f4e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8C0CA26B
	Offset: 0x5D50
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function function_ff4d4f4e()
{
	var_10d6597a = function_fe0cfd2e("diaz_wallrun_attack_traversal", "script_noteworthy");
	foreach(var_90ca1fdd in var_10d6597a)
	{
		function_d224409e(var_90ca1fdd, 0);
	}
	var_377a9c22 = function_6ada35ba("diaz_wallrun_target_ai", "targetname");
	if(isdefined(var_377a9c22) && function_5b49d38c(var_377a9c22))
	{
		var_377a9c22 namespace_d84e54db::function_c9e45d52(1);
	}
	level namespace_ad23e503::function_1ab5ebec("player_completed_silo");
	if(isdefined(var_377a9c22) && function_5b49d38c(var_377a9c22))
	{
		level namespace_cc27597::function_43718187("cin_new_03_01_factoryraid_vign_wallrun_attack_attack");
	}
	else
	{
		level namespace_cc27597::function_43718187("cin_new_03_01_factoryraid_vign_wallrun_attack_landing");
	}
	namespace_4dbf3ae3::function_42e87952("post_wall_run_diaz_color");
	foreach(var_90ca1fdd in var_10d6597a)
	{
		function_d224409e(var_90ca1fdd, 1);
	}
	level thread namespace_e38c3c58::function_fa2e45b8();
}

/*
	Name: function_972f9cf5
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD4D2EEA6
	Offset: 0x5FB0
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_972f9cf5()
{
	if(function_27c72c1b())
	{
		return;
	}
	self endon("hash_128f8789");
	level endon("hash_827eb14f");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	while(!self namespace_ad23e503::function_7922262b("tactical_mode_used"))
	{
		if(!self namespace_564407fb::function_38a9aff8())
		{
			self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_USE_TACTICAL_VISION", 0, undefined, 4);
			self namespace_ad23e503::function_d266a8b4(4, "tactical_mode_used");
			self thread namespace_82b91a51::function_f9e5537b(1);
			if(!self namespace_ad23e503::function_7922262b("tactical_mode_used"))
			{
				self namespace_ad23e503::function_d266a8b4(3, "tactical_mode_used");
			}
		}
		else
		{
			wait(10);
		}
	}
}

/*
	Name: function_c5eadf67
	Namespace: namespace_f8b9e1f8
	Checksum: 0x99DBE4F
	Offset: 0x6128
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_c5eadf67()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_2c49b262();
	}
	namespace_82b91a51::function_76f13293();
	namespace_dabbe128::function_eb99da89(&function_2c49b262);
}

/*
	Name: function_2c49b262
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDC270904
	Offset: 0x6210
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_2c49b262()
{
	self endon("hash_128f8789");
	level endon("hash_827eb14f");
	self namespace_ad23e503::function_c35e6aab("tactical_mode_used");
	self thread function_859fc69a();
	self thread function_b085bdaf();
}

/*
	Name: function_859fc69a
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC5B9070A
	Offset: 0x6280
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_859fc69a()
{
	self endon("hash_128f8789");
	level endon("hash_68b78be8");
	while(1)
	{
		self waittill("hash_8d6266d8");
		self namespace_ad23e503::function_74d6b22f("tactical_mode_used");
	}
}

/*
	Name: function_b085bdaf
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDFD7BC6F
	Offset: 0x62D8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_b085bdaf()
{
	self endon("hash_128f8789");
	level endon("hash_68b78be8");
	while(1)
	{
		self waittill("hash_e0fad893");
		self namespace_ad23e503::function_9d134160("tactical_mode_used");
	}
}

/*
	Name: function_10ecac98
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD3BF3237
	Offset: 0x6330
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_10ecac98()
{
	var_3ced446f = namespace_2f06d687::function_289e6fd1("factory_intro_allies");
	foreach(var_d84e54db in var_3ced446f)
	{
		var_d84e54db thread function_90d66dc7();
	}
}

/*
	Name: function_90d66dc7
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE371A0AC
	Offset: 0x63E8
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_90d66dc7()
{
	self endon("hash_128f8789");
	wait(function_72a94f05(1, 5));
	self.var_3a90f16b = 1;
}

/*
	Name: function_ab1cd196
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9CCBBCA9
	Offset: 0x6428
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_ab1cd196()
{
	level namespace_ad23e503::function_c35e6aab("tac_mode_LOS_start");
	level thread function_f7e76a4c();
	level thread function_adcc83a3();
	level thread function_b11050e5();
	namespace_d5067552::function_bae40a28("sm_warehouse_bottom");
	namespace_d5067552::function_bae40a28("sm_warehouse_top_left");
	namespace_d5067552::function_bae40a28("sm_warehouse_top_right");
	level thread namespace_e38c3c58::function_fa2e45b8();
	namespace_4dbf3ae3::function_1ab5ebec("warehouse_fallback");
	namespace_d5067552::function_bae40a28("sm_warehouse_last_enemies");
	namespace_4dbf3ae3::function_1ab5ebec("warehouse_last_stand");
	level thread function_7ed63742();
	namespace_2f06d687::function_72214789("warehouse_enemy");
	level namespace_ad23e503::function_74d6b22f("foundry_remote_hijack_enabled");
}

/*
	Name: function_8696052d
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9048D0BA
	Offset: 0x6598
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_8696052d()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_tmode_tutorial_LOS_lookat");
	if(!level namespace_ad23e503::function_7922262b("tac_mode_LOS_start"))
	{
		level namespace_ad23e503::function_74d6b22f("tac_mode_LOS_start");
		level notify("hash_3630df59");
	}
}

/*
	Name: function_2d26442b
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2AFD92C7
	Offset: 0x6610
	Size: 0x69
	Parameters: 0
	Flags: None
*/
function function_2d26442b()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_tmode_tutorial_LOS");
	if(!level namespace_ad23e503::function_7922262b("tac_mode_LOS_start"))
	{
		level namespace_ad23e503::function_74d6b22f("tac_mode_LOS_start");
		level notify("hash_3630df59");
	}
}

/*
	Name: function_f7e76a4c
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA848EF7C
	Offset: 0x6688
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_f7e76a4c()
{
	if(function_27c72c1b())
	{
		return;
	}
	level thread function_8696052d();
	level thread function_2d26442b();
	level waittill("hash_3630df59");
	level.var_6cb8b7a thread namespace_71b8dba1::function_81141386("diaz_tac_mode_info_is_syn_0");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread function_972f9cf5();
	}
	namespace_76d95162::function_d9f49fba(1);
	level thread function_da86d58f();
	level thread function_14da3d31();
}

/*
	Name: function_da86d58f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2D8FDE23
	Offset: 0x67F8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_da86d58f()
{
	level endon("hash_e2b9ed35");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_keep_moving_up_0", 15);
}

/*
	Name: function_14da3d31
	Namespace: namespace_f8b9e1f8
	Checksum: 0xAA23AC6C
	Offset: 0x6838
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_14da3d31()
{
	level endon("hash_e2b9ed35");
	while(1)
	{
		var_da5600e3 = function_99201f25("warehouse_ammo", "targetname");
		foreach(var_4abed703 in var_da5600e3)
		{
			foreach(var_6bfe1586 in level.var_9b1393e7)
			{
				if(function_87ea89a(var_6bfe1586.var_722885f3, var_4abed703.var_722885f3) < 100)
				{
					level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_check_your_ammo_gra_0");
					return;
				}
			}
		}
		wait(1);
	}
}

/*
	Name: function_4fbc759
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC7427E2F
	Offset: 0x69C0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_4fbc759(var_b9229bcd)
{
	namespace_cc27597::function_8f9f34e0("cin_new_03_03_factoryraid_vign_startup_flee", &function_6f46b3ee, "init");
	namespace_cc27597::function_8f9f34e0("cin_new_03_03_factoryraid_vign_startup_flee", &function_54cce95e);
	level thread namespace_cc27597::function_c35e6aab("cin_new_03_03_factoryraid_vign_startup_flee", var_b9229bcd);
	namespace_cc27597::function_8f9f34e0("cin_new_03_03_factoryraid_vign_startup", &function_43764348, "init");
	var_3d2988cc = namespace_14b42b8a::function_7faf4c39("warehouse_startup_scene", "targetname");
	foreach(var_1cbcb46d in var_3d2988cc)
	{
		var_1cbcb46d thread function_4432ae41();
	}
	level namespace_ad23e503::function_1ab5ebec("trigger_warehouse_worker_vignettes");
	level thread namespace_cc27597::function_43718187("cin_new_03_03_factoryraid_vign_startup_flee", var_b9229bcd);
}

/*
	Name: function_4432ae41
	Namespace: namespace_f8b9e1f8
	Checksum: 0x14BCA9FF
	Offset: 0x6B68
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_4432ae41()
{
	wait(function_72a94f05(0.1, 1.5));
	self namespace_cc27597::function_c35e6aab();
	level namespace_ad23e503::function_1ab5ebec("trigger_warehouse_worker_vignettes");
	wait(function_72a94f05(0.1, 1.5));
	self thread namespace_cc27597::function_43718187();
}

/*
	Name: function_6f46b3ee
	Namespace: namespace_f8b9e1f8
	Checksum: 0x18F2DE85
	Offset: 0x6C18
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_6f46b3ee(var_c77d2837)
{
	var_c77d2837["factoryraid_vign_startup_flee_soldier_a"] namespace_82b91a51::function_958c7633();
	var_c77d2837["factoryraid_vign_startup_flee_soldier_b"] namespace_82b91a51::function_958c7633();
}

/*
	Name: function_54cce95e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBE60083D
	Offset: 0x6C70
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_54cce95e(var_c77d2837)
{
	level notify("hash_549286bb");
	level waittill("hash_a54f8e97");
	var_c77d2837["factoryraid_vign_startup_flee_soldier_a"] namespace_82b91a51::function_4b741fdc();
	var_c77d2837["factoryraid_vign_startup_flee_soldier_b"] namespace_82b91a51::function_4b741fdc();
}

/*
	Name: function_43764348
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5CF92A04
	Offset: 0x6CE8
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_43764348(var_c77d2837)
{
	var_2eecd77a = var_c77d2837["ai_warehouse_startup"];
	var_2eecd77a endon("hash_128f8789");
	level endon("hash_a495f22c");
	var_c9ae457a = function_6ada35ba("warehouse_end_goalvolume", "targetname");
	var_2eecd77a function_169cc712(var_c9ae457a);
	var_2eecd77a namespace_82b91a51::function_5b7e3888("damage", "bulletwhizby");
	level namespace_ad23e503::function_74d6b22f("trigger_warehouse_worker_vignettes");
}

/*
	Name: function_b11050e5
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC0EE12A
	Offset: 0x6DC0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_b11050e5(var_c77d2837)
{
	level thread function_8c12b9e9();
	level waittill("hash_549286bb");
	wait(10);
	level thread function_8f6cc6c9();
}

/*
	Name: function_8c12b9e9
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD7BA8A58
	Offset: 0x6E18
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_8c12b9e9()
{
	var_5548791a = function_6ada35ba("warehouse_exit_door_right", "targetname");
	var_8c7e827f = function_6ada35ba("warehouse_exit_door_left", "targetname");
	var_5548791a function_21d0da55(75 * -1, 0.05);
	var_8c7e827f function_21d0da55(75, 0.05);
	function_bab1ff00("umbra_gate_factory_door_01", 1);
	var_cecf22e2 = function_6ada35ba("ug_factory_hideme", "targetname");
	var_cecf22e2 function_50ccee8d();
}

/*
	Name: function_7ed63742
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB649E5AF
	Offset: 0x6F38
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function function_7ed63742()
{
	var_e3b635fb = namespace_2f06d687::function_289e6fd1("warehouse_enemy");
	var_c9ae457a = function_6ada35ba("warehouse_end_goalvolume", "targetname");
	var_c873bdb2 = 0;
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(function_5b49d38c(var_d84e54db) && !var_d84e54db function_32fa5072(var_c9ae457a))
		{
			var_c873bdb2++;
			if(var_c873bdb2 <= 8)
			{
				var_d84e54db function_169cc712(var_c9ae457a);
			}
			else
			{
				var_d84e54db thread namespace_ce0e5f06::function_95132241();
			}
			wait(function_72a94f05(0.5, 2));
		}
	}
}

/*
	Name: function_8f6cc6c9
	Namespace: namespace_f8b9e1f8
	Checksum: 0x87D91A05
	Offset: 0x70D0
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_8f6cc6c9(var_750e4b2a)
{
	if(!isdefined(var_750e4b2a))
	{
		var_750e4b2a = 0;
	}
	var_5548791a = function_6ada35ba("warehouse_exit_door_right", "targetname");
	var_8c7e827f = function_6ada35ba("warehouse_exit_door_left", "targetname");
	var_5548791a function_21d0da55(75, 5, 0.25, 0.3);
	var_8c7e827f function_21d0da55(75 * -1, 5, 0.25, 0.3);
	var_5548791a waittill("hash_6654e4f4");
	function_bab1ff00("umbra_gate_factory_door_01", 0);
	var_cecf22e2 = function_6ada35ba("ug_factory_hideme", "targetname");
	var_cecf22e2 function_48f26766();
	var_cecf22e2 function_4083a98e();
}

/*
	Name: function_81354ca4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x240F69B2
	Offset: 0x7258
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_81354ca4()
{
	level namespace_ad23e503::function_c35e6aab("flag_hijack_complete");
	level namespace_ad23e503::function_c35e6aab("junkyard_door_open");
	level namespace_ad23e503::function_c35e6aab("player_returned_to_body_post_foundry");
	level namespace_ad23e503::function_c35e6aab("foundry_objective_complete");
	function_211925e6("foundry");
	function_33ccaeb6("foundry");
	namespace_76d95162::function_d9f49fba(0);
	level thread function_29f8003e();
	level thread function_84cfbff7();
	level thread function_465602a1();
	level thread function_254442e();
	level waittill("hash_fa1f139b");
	namespace_76d95162::function_d9f49fba(1);
	level thread function_3a211205();
	namespace_84970cc4::function_966ecb29(function_99201f25("vehicle_triggered", "script_noteworthy"), &function_8df847d);
	namespace_d5067552::function_bae40a28("sm_foundry_reactor_balcony_1");
	namespace_d5067552::function_bae40a28("sm_foundry_front_vat_left");
	namespace_d5067552::function_bae40a28("sm_foundry_front_vat_right");
	level thread function_4263aa02();
	level thread function_3fd07e2f();
	function_d4b28fef();
	function_f0e7bd1b();
	level namespace_ad23e503::function_1ab5ebec("player_moving_to_vat_room");
}

/*
	Name: function_d4b28fef
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD6DC832E
	Offset: 0x74C0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d4b28fef()
{
	namespace_d0ef8521::function_74d6b22f("cp_level_newworld_foundry_subobj_locate_generator");
	namespace_d0ef8521::function_45d1556("foundry_breadcrumbs");
	namespace_d0ef8521::function_50ccee8d("cp_level_newworld_foundry_subobj_locate_generator");
}

/*
	Name: function_29f8003e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCF56F6C9
	Offset: 0x7518
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_29f8003e()
{
	var_1066b4e5 = function_6ada35ba("foundry_generator_dmg", "targetname");
	var_1066b4e5 function_8c8e79fe();
}

/*
	Name: function_84cfbff7
	Namespace: namespace_f8b9e1f8
	Checksum: 0x803F7013
	Offset: 0x7568
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_84cfbff7()
{
	level.var_6cb8b7a function_cea50a94(1);
	level.var_6cb8b7a namespace_ce0e5f06::function_d0aa2f4f();
	if(isdefined(level.var_e6b1a7ee))
	{
		level thread [[level.var_e6b1a7ee]]();
	}
	namespace_cc27597::function_8f9f34e0("cin_new_03_02_factoryraid_vign_explaindrones", &function_3f145e58);
	level thread namespace_cc27597::function_43718187("cin_new_03_02_factoryraid_vign_explaindrones");
	level waittill("hash_b14420d1");
	namespace_d0ef8521::function_74d6b22f("cp_level_newworld_factory_subobj_hijack_drone");
	if(!namespace_ce0e5f06::function_81acf083())
	{
		level thread function_1fff53ca();
		level namespace_ad23e503::function_1ab5ebec("flag_hijack_complete");
	}
	else
	{
		level thread function_341b5959(0);
	}
	namespace_cc27597::function_8f9f34e0("cin_new_03_02_factoryraid_vign_explaindrones_open_door", &function_8aa7e247);
	namespace_cc27597::function_8f9f34e0("cin_new_03_02_factoryraid_vign_explaindrones_open_door", &function_190c4318);
	level thread namespace_cc27597::function_43718187("cin_new_03_02_factoryraid_vign_explaindrones_open_door");
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_factory_subobj_hijack_drone");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_8aa7e247
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC5B3973C
	Offset: 0x7738
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_8aa7e247(var_c77d2837)
{
	var_c77d2837["diaz"] waittill("hash_a1b55a28");
	level.var_6cb8b7a function_cea50a94(0);
	var_c77d2837["diaz"] function_9110a277(1);
}

/*
	Name: function_190c4318
	Namespace: namespace_f8b9e1f8
	Checksum: 0x67E2DCDD
	Offset: 0x77A8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_190c4318(var_c77d2837)
{
	level waittill("hash_140f40e1");
	var_c77d2837["diaz"] namespace_175490fb::function_f8669cbf(1);
}

/*
	Name: function_8de037ed
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA9CFDBC8
	Offset: 0x77F0
	Size: 0x22B
	Parameters: 0
	Flags: None
*/
function function_8de037ed()
{
	level.var_b7a27741 = 1;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_3460d45c();
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		if(!function_27c72c1b())
		{
			var_5dc5e20a namespace_d00ec32::function_a724d44("cybercom_hijack", 0);
			var_5dc5e20a namespace_d00ec32::function_eb512967("cybercom_hijack", 1);
		}
		var_5dc5e20a thread function_70704b5f();
	}
	namespace_dabbe128::function_eb99da89(&function_3460d45c);
	if(!namespace_ce0e5f06::function_81acf083())
	{
		level thread function_dafdc95e();
	}
	level notify("hash_68b78be8");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			continue;
		}
		var_5dc5e20a thread function_6eff1530();
	}
	level thread function_341b5959();
}

/*
	Name: function_341b5959
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD4CD3149
	Offset: 0x7A28
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_341b5959(var_5e4ad50b)
{
	if(!isdefined(var_5e4ad50b))
	{
		var_5e4ad50b = 1;
	}
	if(var_5e4ad50b)
	{
		level waittill("hash_8ac3077f");
	}
	level thread namespace_e38c3c58::function_964ce03c();
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_factory_subobj_hijack_drone");
}

/*
	Name: function_1fff53ca
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5A04AF77
	Offset: 0x7A98
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_1fff53ca()
{
	level endon("hash_98760f9c");
	while(1)
	{
		if(namespace_ce0e5f06::function_70aba08e())
		{
			wait(0.1);
			continue;
		}
		else
		{
			level thread function_341b5959(0);
			level namespace_ad23e503::function_74d6b22f("flag_hijack_complete");
			return;
		}
	}
}

/*
	Name: function_6eff1530
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF5A711EB
	Offset: 0x7B20
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_6eff1530()
{
	self endon("hash_128f8789");
	level endon("hash_8db6922a");
	level endon("hash_45205ed8");
	self endon("hash_cf0ffa56");
	if(function_27c72c1b())
	{
		return;
	}
	self function_a0b29c50(0, 100);
	self function_a0b29c50(1, 100);
	self thread function_c3c54cd1();
	while(!self namespace_ad23e503::function_7922262b("player_hijacked_vehicle"))
	{
		self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_DRONE_TARGET", 0, undefined, -1);
		self waittill("hash_50db7e6");
		self thread function_40c6f0a4();
		self waittill("hash_8216024");
	}
	self thread namespace_82b91a51::function_f9e5537b(1);
}

/*
	Name: function_40c6f0a4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x67E0EDE9
	Offset: 0x7C58
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_40c6f0a4()
{
	self endon("hash_8216024");
	level endon("hash_8db6922a");
	level endon("hash_45205ed8");
	self endon("hash_cf0ffa56");
	self namespace_82b91a51::function_f9e5537b(1);
	while(!self namespace_ad23e503::function_7922262b("player_hijacked_vehicle"))
	{
		level waittill("hash_92698df4", var_a3d46ee4, var_6bfe1586);
		if(var_6bfe1586 == self)
		{
			self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_DRONE_RELEASE", 0, undefined, -1);
			level waittill("hash_de3c9ffe", var_a3d46ee4, var_6bfe1586);
			if(var_6bfe1586 == self)
			{
				self namespace_82b91a51::function_f9e5537b(1);
				continue;
			}
		}
	}
}

/*
	Name: function_c3c54cd1
	Namespace: namespace_f8b9e1f8
	Checksum: 0x4692FAF9
	Offset: 0x7D68
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_c3c54cd1()
{
	self endon("hash_128f8789");
	level endon("hash_8db6922a");
	level endon("hash_45205ed8");
	self endon("hash_8ac3077f");
	namespace_4dbf3ae3::function_1ab5ebec("player_entering_foundry_on_foot", "targetname", self);
	self notify("hash_cf0ffa56");
	self namespace_82b91a51::function_f9e5537b(1);
}

/*
	Name: function_3460d45c
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD7FD0C3C
	Offset: 0x7DF0
	Size: 0x3CF
	Parameters: 0
	Flags: None
*/
function function_3460d45c()
{
	self endon("hash_643a7daf");
	level endon("hash_7aa3c9ce");
	if(!self namespace_ad23e503::function_dbca4c5d("player_hijacked_vehicle"))
	{
		self namespace_ad23e503::function_c35e6aab("player_hijacked_vehicle");
	}
	if(!self namespace_ad23e503::function_dbca4c5d("player_hijacked_wasp"))
	{
		self namespace_ad23e503::function_c35e6aab("player_hijacked_wasp");
	}
	if(function_27c72c1b())
	{
		level namespace_ad23e503::function_74d6b22f("flag_hijack_complete");
		self namespace_ad23e503::function_74d6b22f("player_hijacked_vehicle");
		level notify("hash_8ac3077f");
		break;
	}
	while(1)
	{
		self waittill("hash_91737d19", var_52b4a338);
		if(var_52b4a338.var_170527fb === "foundry_hackable_vehicle_ai")
		{
			self namespace_7cb6cd95::function_6c745562(function_6ada35ba("hijacked_vehicle_range", "targetname"));
			var_52b4a338.var_dc29a320 = &function_54e29111;
			var_52b4a338 thread function_eab20b60();
			level namespace_ad23e503::function_74d6b22f("flag_hijack_complete");
			self namespace_ad23e503::function_74d6b22f("player_hijacked_vehicle");
			level notify("hash_8ac3077f");
			if(!level namespace_ad23e503::function_7922262b("foundry_objective_complete"))
			{
				namespace_d0ef8521::function_50ccee8d("cp_level_newworld_factory_hijack", self);
			}
			if(var_52b4a338.var_fd67e920 === "wasp")
			{
				var_52b4a338.var_66ff806d = 1;
				if(!self namespace_ad23e503::function_7922262b("player_hijacked_wasp"))
				{
					self thread function_baeddf9e();
				}
			}
			self waittill("hash_c68b15c8");
			self waittill("hash_58a3879b");
			wait(0.1);
			self function_822aa28(0, 100);
			self function_822aa28(1, 100);
			if(!level namespace_ad23e503::function_7922262b("foundry_objective_complete"))
			{
				namespace_d0ef8521::function_48f26766("cp_level_newworld_factory_hijack", self);
				if(level.var_8474061e.size > 0)
				{
					if(self namespace_ce0e5f06::function_c633d8fe())
					{
						continue;
					}
					self thread function_c3c54cd1();
					var_65d6d111 = function_84970cc4("foundry_generator_destroyed", "foundry_all_vehicles_hijacked");
					self thread namespace_ce0e5f06::function_6062e90("cybercom_hijack", 0, "foundry_generator_destroyed", 1, "CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_DRONE_TARGET", "CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_DRONE_RELEASE", undefined, "player_entering_foundry_on_foot");
				}
			}
		}
	}
}

/*
	Name: function_baeddf9e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x74516109
	Offset: 0x81C8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_baeddf9e()
{
	self endon("hash_128f8789");
	self namespace_ad23e503::function_74d6b22f("player_hijacked_wasp");
	if(self namespace_ce0e5f06::function_c633d8fe())
	{
		return;
	}
	wait(0.5);
	self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_WASP_CONTROL_TUTORIAL", 0, undefined, 4);
}

/*
	Name: function_dafdc95e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA5997DC5
	Offset: 0x8248
	Size: 0x241
	Parameters: 0
	Flags: None
*/
function function_dafdc95e()
{
	if(function_27c72c1b())
	{
		return;
	}
	level.var_8474061e = namespace_84970cc4::function_5c13fae0(level.var_8474061e);
	foreach(var_6fd8b42c in level.var_8474061e)
	{
		if(var_6fd8b42c.var_8fc0e50e == "amws")
		{
			var_6fd8b42c.var_1ab87762 = var_6fd8b42c.var_722885f3 + (0, 0, 44);
		}
		else if(var_6fd8b42c.var_8fc0e50e == "wasp")
		{
			if(function_27c72c1b())
			{
				continue;
			}
			var_6fd8b42c.var_1ab87762 = var_6fd8b42c.var_722885f3 + (0, 0, 18);
		}
		var_6fd8b42c thread function_483e8906();
		namespace_d0ef8521::function_74d6b22f("cp_level_newworld_factory_hijack", var_6fd8b42c.var_1ab87762);
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe())
		{
			namespace_d0ef8521::function_50ccee8d("cp_level_newworld_factory_hijack", var_5dc5e20a);
		}
	}
}

/*
	Name: function_483e8906
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9F8B2313
	Offset: 0x8498
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_483e8906()
{
	level endon("hash_8db6922a");
	self waittill("hash_bda2a10e");
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_factory_hijack", self.var_1ab87762);
}

/*
	Name: function_a18dda0f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1B6F48BE
	Offset: 0x84E0
	Size: 0x87
	Parameters: 15
	Flags: None
*/
function function_a18dda0f(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f)
{
	var_f9a179ed = 0;
	return var_f9a179ed;
}

/*
	Name: function_54e29111
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1DD73805
	Offset: 0x8570
	Size: 0x15D
	Parameters: 15
	Flags: None
*/
function function_54e29111(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f)
{
	if(function_27c72c1b())
	{
		return var_f9a179ed;
	}
	var_14a49e9c = function_b8494651("axis").size;
	if(var_dfcc01fd.var_f4ae8e42 == "rocketlauncher")
	{
		var_f9a179ed = var_f9a179ed * 0.018;
		return var_f9a179ed;
	}
	if(var_14a49e9c < 15)
	{
		var_f9a179ed = var_f9a179ed * 0.1;
	}
	else if(var_14a49e9c < 25)
	{
		var_f9a179ed = var_f9a179ed * 0.3;
	}
	return var_f9a179ed;
}

/*
	Name: function_eab20b60
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8FB02289
	Offset: 0x86D8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_eab20b60()
{
	self waittill("hash_128f8789");
	if(isdefined(self.var_5e36fd2e))
	{
		self.var_5e36fd2e function_822aa28(0, 100);
		self.var_5e36fd2e function_822aa28(1, 100);
		if(self.var_8fc0e50e == "wasp")
		{
			self function_921a1574("gdt_cybercore_wasp_shutdown");
		}
		if(self.var_8fc0e50e == "amws")
		{
			self function_921a1574("gdt_cybercore_amws_shutdown");
		}
	}
}

/*
	Name: function_3929ac3c
	Namespace: namespace_f8b9e1f8
	Checksum: 0x7FE21053
	Offset: 0x87A0
	Size: 0x36B
	Parameters: 0
	Flags: None
*/
function function_3929ac3c()
{
	namespace_82b91a51::function_958c7633(self);
	self.var_342d9e3a = 1;
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_72ee5da4::function_fa59cc99("combat");
	wait(0.05);
	self function_169cc712(namespace_14b42b8a::function_7922262b("diaz_wasp_start_pos", "targetname").var_722885f3, 1);
	level namespace_ad23e503::function_1ab5ebec("junkyard_door_open");
	self function_169cc712(function_6ada35ba("diaz_wasp_junkyard_goalvolume", "targetname"));
	level namespace_ad23e503::function_1ab5ebec("foundry_junkyard_enemies_retreat");
	self function_169cc712(function_6ada35ba("foundry_diaz_wasp_area_1", "targetname"));
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self thread function_d0cde060();
	function_83d084fe("foundry_area_1_moveup");
	self function_169cc712(function_6ada35ba("foundry_diaz_wasp_area_2", "targetname"));
	function_83d084fe("foundry_area_2_moveup");
	self function_169cc712(function_6ada35ba("foundry_diaz_wasp_area_3", "targetname"));
	function_83d084fe("foundry_area_3_moveup");
	self function_9f084580();
	self function_169cc712(function_6ada35ba("foundry_diaz_wasp_area_4", "targetname"));
	level namespace_ad23e503::function_1ab5ebec("foundry_objective_complete");
	self namespace_71e9cb84::function_74d6b22f("name_diaz_wasp", 0);
	namespace_82b91a51::function_4b741fdc(self);
	self function_c3945cd5(self.var_3a90f16b, self.var_722885f3);
	self namespace_71e9cb84::function_74d6b22f("emp_vehicles_fx", 1);
	self namespace_82b91a51::function_67520c6a(8, undefined, &namespace_71e9cb84::function_74d6b22f, "emp_vehicles_fx", 0);
}

/*
	Name: function_d0cde060
	Namespace: namespace_f8b9e1f8
	Checksum: 0x95290BDB
	Offset: 0x8B18
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_d0cde060()
{
	if(level.var_9b1393e7.size > 1)
	{
		return;
	}
	function_83d084fe("foundry_entered");
	var_7c78ee9e = function_6ada35ba("s1_01", "script_string");
	if(var_7c78ee9e.var_b47f27c9 !== 1)
	{
		self namespace_d84e54db::function_d104c596("normal", var_7c78ee9e, "fx_spill_middle_jnt", 3);
		var_7c78ee9e function_c3945cd5(500, self.var_722885f3, self);
		wait(2);
	}
	level notify("hash_d3038698");
}

/*
	Name: function_9f084580
	Namespace: namespace_f8b9e1f8
	Checksum: 0x505779F4
	Offset: 0x8BF8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_9f084580()
{
	if(level.var_9b1393e7.size > 1)
	{
		return;
	}
	var_7c78ee9e = function_6ada35ba("bridge", "script_string");
	if(var_7c78ee9e.var_b47f27c9 !== 1)
	{
		self namespace_d84e54db::function_d104c596("normal", var_7c78ee9e, "fx_spill_middle_jnt", 5);
		var_7c78ee9e function_c3945cd5(500, self.var_722885f3, self);
	}
}

/*
	Name: function_465602a1
	Namespace: namespace_f8b9e1f8
	Checksum: 0x72A436D8
	Offset: 0x8CB0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_465602a1()
{
	level waittill("hash_fa1f139b");
	var_9b668c87 = function_6ada35ba("fake_foundry_door", "targetname");
	var_9b668c87 function_8bdea13c(128, 3, 1, 0.5);
	var_9b668c87 function_921a1574("evt_junkyard_door_open");
	var_9b668c87 waittill("hash_a21db68a");
	level namespace_ad23e503::function_74d6b22f("junkyard_door_open");
}

/*
	Name: function_254442e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x67807085
	Offset: 0x8D90
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_254442e()
{
	level namespace_ad23e503::function_c35e6aab("foundry_junkyard_enemies_retreat");
	namespace_cc27597::function_8f9f34e0("cin_new_03_03_factoryraid_vign_junkyard", &function_dd0bd7eb, "init");
	level namespace_cc27597::function_c35e6aab("cin_new_03_03_factoryraid_vign_junkyard");
	var_4161ad80 = function_83d084fe("player_enters_junkyard");
	if(var_4161ad80.var_8fc0e50e === "amws")
	{
		wait(3);
	}
	level namespace_ad23e503::function_74d6b22f("foundry_junkyard_enemies_retreat");
	namespace_cc27597::function_8f9f34e0("cin_new_03_03_factoryraid_vign_junkyard", &function_328f9079, "done");
	level namespace_cc27597::function_43718187("cin_new_03_03_factoryraid_vign_junkyard");
}

/*
	Name: function_dd0bd7eb
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5554DB6
	Offset: 0x8EC8
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_dd0bd7eb(var_c77d2837)
{
	foreach(var_d84e54db in var_c77d2837)
	{
		var_d84e54db namespace_d84e54db::function_b4f5e3b9(1);
		var_d84e54db namespace_d84e54db::function_c9e45d52(1);
		var_d84e54db thread function_ae816470();
	}
}

/*
	Name: function_ae816470
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF2CDDDA2
	Offset: 0x8F98
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_ae816470()
{
	self endon("hash_128f8789");
	level endon("hash_c8ac660c");
	self namespace_82b91a51::function_5b7e3888("damage", "bulletwhizby", "pain", "proximity");
	level namespace_ad23e503::function_74d6b22f("foundry_junkyard_enemies_retreat");
}

/*
	Name: function_328f9079
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFB9F6CF4
	Offset: 0x9010
	Size: 0x111
	Parameters: 1
	Flags: None
*/
function function_328f9079(var_c77d2837)
{
	var_46700fc3 = function_fe0cfd2e("foundry_retreat_vignette_nodes", "targetname");
	foreach(var_d84e54db in var_c77d2837)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_9de10fe3 = namespace_84970cc4::function_47d18840(var_46700fc3);
			function_81403b2f(var_46700fc3, var_9de10fe3);
			var_d84e54db thread function_ff59cf8(var_9de10fe3);
		}
	}
}

/*
	Name: function_ff59cf8
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1BEC4E27
	Offset: 0x9130
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_ff59cf8(var_9de10fe3)
{
	self endon("hash_128f8789");
	self function_169cc712(var_9de10fe3, 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_83d084fe
	Namespace: namespace_f8b9e1f8
	Checksum: 0x52BB45E1
	Offset: 0x91A8
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_83d084fe(var_a0b86a77)
{
	var_b5b0f408 = function_6ada35ba(var_a0b86a77, "targetname");
	var_b5b0f408 endon("hash_128f8789");
	while(1)
	{
		var_b5b0f408 waittill("hash_4dbf3ae3", var_4161ad80);
		if(function_65f192a6(var_4161ad80) || isdefined(var_4161ad80.var_5e36fd2e))
		{
			if(isdefined(var_4161ad80.var_5e36fd2e))
			{
				var_b5b0f408 namespace_4dbf3ae3::function_42e87952(undefined, var_4161ad80.var_5e36fd2e);
			}
			return var_4161ad80;
		}
	}
}

/*
	Name: function_8df847d
	Namespace: namespace_f8b9e1f8
	Checksum: 0x38763218
	Offset: 0x9288
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_8df847d()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_4161ad80);
		if(function_65f192a6(var_4161ad80) || isdefined(var_4161ad80.var_5e36fd2e))
		{
			if(isdefined(var_4161ad80.var_5e36fd2e))
			{
				self function_4fdc0e7d(var_4161ad80.var_5e36fd2e);
			}
		}
	}
}

/*
	Name: function_763f6f1c
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA275EF3F
	Offset: 0x9320
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_763f6f1c(var_eb8dfada)
{
	self endon("hash_128f8789");
	self thread namespace_ce7c3ed5::function_7e61de2b(1);
	level namespace_82b91a51::function_67520c6a(1, undefined, &namespace_ad23e503::function_74d6b22f, "player_returned_to_body_post_foundry");
	self function_faf8f736(1);
	self waittill("hash_c68b15c8");
	self waittill("hash_58a3879b");
	self function_a30814d(var_eb8dfada.var_722885f3);
	self function_eda2be50(var_eb8dfada.var_6ab6f4fd);
	self function_fe722fcf("stand");
	namespace_82b91a51::function_76f13293();
	self namespace_ce7c3ed5::function_593c2af4(0.5);
	self function_faf8f736(0);
}

/*
	Name: function_f0e7bd1b
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE70DAC0C
	Offset: 0x9470
	Size: 0x5BB
	Parameters: 0
	Flags: None
*/
function function_f0e7bd1b()
{
	level thread function_9729c7a4();
	function_d1055ea4();
	level notify("hash_8db6922a");
	level namespace_ad23e503::function_74d6b22f("foundry_objective_complete");
	level.var_6cb8b7a function_cea50a94(1);
	wait(2);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		if(isdefined(var_6bfe1586.var_a03af093))
		{
			var_9f7fd4a1 = var_6bfe1586.var_a03af093;
			var_9f7fd4a1.var_dc29a320 = undefined;
			var_9f7fd4a1 namespace_71e9cb84::function_74d6b22f("emp_vehicles_fx", 1);
			var_9f7fd4a1 namespace_82b91a51::function_67520c6a(8, undefined, &namespace_71e9cb84::function_74d6b22f, "emp_vehicles_fx", 0);
			var_9f7fd4a1 namespace_96fa87af::function_54055cfb();
			var_9f7fd4a1 function_c3945cd5(var_9f7fd4a1.var_3a90f16b + 100, var_9f7fd4a1.var_722885f3);
			if(var_9f7fd4a1.var_8fc0e50e == "wasp")
			{
				var_9f7fd4a1 function_921a1574("gdt_cybercore_wasp_shutdown");
			}
			if(var_9f7fd4a1.var_8fc0e50e == "amws")
			{
				var_9f7fd4a1 function_921a1574("gdt_cybercore_amws_shutdown");
			}
			var_9943597a = namespace_14b42b8a::function_7faf4c39("post_hijack_player_warpto");
			var_bfa0f33f = namespace_84970cc4::function_20b382ca(var_9943597a);
			var_6bfe1586 thread function_763f6f1c(var_bfa0f33f);
		}
	}
	level thread function_29537dff();
	foreach(var_c82fd082 in level.var_8474061e)
	{
		if(isdefined(var_c82fd082))
		{
			namespace_d0ef8521::function_31cd1834("cp_level_newworld_factory_hijack", var_c82fd082.var_1ab87762);
			var_c82fd082.var_d3f57f67 = 1;
			var_c82fd082 namespace_71e9cb84::function_74d6b22f("emp_vehicles_fx", 1);
			var_c82fd082 namespace_82b91a51::function_67520c6a(8, undefined, &namespace_71e9cb84::function_74d6b22f, "emp_vehicles_fx", 0);
		}
	}
	var_adc17f12 = function_84970cc4("player_returned_to_body_post_foundry", "player_moving_to_vat_room");
	level namespace_ad23e503::function_1ff63c0f(10, var_adc17f12);
	namespace_76d95162::function_d9f49fba(0);
	namespace_84970cc4::function_966ecb29(function_b8494651("axis"), &namespace_ce0e5f06::function_95132241);
	level namespace_cc27597::function_fcf56ab5("cin_new_03_02_factoryraid_vign_explaindrones_open_door");
	level.var_6cb8b7a thread function_9110a277(0);
	level.var_6cb8b7a namespace_d84e54db::function_ceb883cd("sprint", 0);
	level.var_6cb8b7a namespace_d84e54db::function_ceb883cd("cqb", 1);
	level thread namespace_cc27597::function_43718187("cin_new_03_03_factoryraid_vign_pry_open");
	var_d874dcf = function_6ada35ba("warehouse_door_clip", "targetname");
	var_d874dcf function_dc8c8404();
	function_bab1ff00("umbra_gate_factory_door_01", 1);
	var_cecf22e2 = function_6ada35ba("ug_factory_hideme", "targetname");
	var_cecf22e2 function_50ccee8d();
	level.var_6cb8b7a function_cea50a94(0);
	level thread function_777a44b6();
}

/*
	Name: function_777a44b6
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5A095022
	Offset: 0x9A38
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_777a44b6()
{
	wait(2);
	namespace_4dbf3ae3::function_42e87952("vat_room_color_trigger_start");
	level thread function_5dfc077c();
}

/*
	Name: function_d1055ea4
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD4C37B66
	Offset: 0x9A80
	Size: 0x413
	Parameters: 0
	Flags: None
*/
function function_d1055ea4()
{
	level namespace_ad23e503::function_c35e6aab("player_destroyed_foundry");
	namespace_d0ef8521::function_74d6b22f("cp_level_newworld_foundry_subobj_destroy_generator", namespace_14b42b8a::function_7922262b("foundry_generator_objective_struct", "targetname"));
	var_74d0774f = 0;
	var_5c2b0988 = function_6ada35ba("foundry_generator", "targetname");
	var_1066b4e5 = function_6ada35ba("foundry_generator_dmg", "targetname");
	var_5c2b0988 namespace_71e9cb84::function_74d6b22f("weakpoint", 1);
	var_5c2b0988 namespace_88a69b2f::function_8ee5a301(&"tag_weakpoint", 2600, 5000);
	var_5c2b0988 function_8d63f8d0(1);
	while(var_74d0774f < 1000)
	{
		var_5c2b0988 waittill("hash_f9348fda", var_f9a179ed, var_96133235, var_d3ca3e9c, var_88482219, var_cc0e8874, var_cdb050ee, var_581b856d, var_920085b5);
		if(function_65f192a6(var_96133235))
		{
			if(var_cc0e8874 === "MOD_PROJECTILE_SPLASH")
			{
				var_f9a179ed = var_f9a179ed * 2;
			}
			var_74d0774f = var_74d0774f + var_f9a179ed;
		}
	}
	var_5c2b0988 namespace_71e9cb84::function_74d6b22f("weakpoint", 0);
	var_5c2b0988 namespace_88a69b2f::function_d66e4079(&"tag_weakpoint");
	var_5c2b0988 function_8d63f8d0(0);
	function_eac31668(var_5c2b0988.var_722885f3, 500, 200, 60, undefined, "MOD_EXPLOSIVE");
	function_5e09918e("cp_newworld_rumble_factory_generator_destroyed", var_5c2b0988.var_722885f3);
	var_5c2b0988 function_921a1574("evt_generator_explo");
	var_5c2b0988 namespace_71e9cb84::function_74d6b22f("emp_generator_fx", 1);
	var_1066b4e5 function_48f26766();
	var_5c2b0988 function_8c8e79fe();
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_generator_debris_bundle", &function_11114c92, "play");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_generator_debris_bundle");
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_foundry_subobj_destroy_generator", namespace_14b42b8a::function_7922262b("foundry_generator_objective_struct", "targetname"));
	level namespace_ad23e503::function_74d6b22f("player_destroyed_foundry");
	level thread function_9641f186();
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_3a211205
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF73F2132
	Offset: 0x9EA0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3a211205()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_generator_debris_bundle", &function_cd6bcaad, "init");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_newworld_generator_debris_bundle");
}

/*
	Name: function_cd6bcaad
	Namespace: namespace_f8b9e1f8
	Checksum: 0x686423F8
	Offset: 0x9F00
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_cd6bcaad(var_c77d2837)
{
	var_c77d2837["newworld_generator_debris"] function_50ccee8d();
}

/*
	Name: function_11114c92
	Namespace: namespace_f8b9e1f8
	Checksum: 0xADC21E6F
	Offset: 0x9F38
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_11114c92(var_c77d2837)
{
	var_c77d2837["newworld_generator_debris"] function_48f26766();
}

/*
	Name: function_29537dff
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB00D9EF2
	Offset: 0x9F70
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_29537dff()
{
	function_bab1ff00("umbra_gate_foundry_door_01", 1);
	var_cecf22e2 = function_6ada35ba("ug_foundry_hideme", "targetname");
	var_cecf22e2 function_50ccee8d();
	var_5548791a = function_6ada35ba("foundry_exit_door_right", "targetname");
	var_5548791a function_21d0da55(-55, 3, 1.5, 0.5);
}

/*
	Name: function_3fd07e2f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFEECD259
	Offset: 0xA058
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_3fd07e2f()
{
	function_83d084fe("foundry_entered");
	namespace_d5067552::function_bae40a28("sm_foundry_far_side_bottom");
	function_83d084fe("foundry_area_1_moveup");
	namespace_d5067552::function_bae40a28("sm_foundry_far_side_balcony");
	function_83d084fe("foundry_area_2_moveup");
	namespace_d5067552::function_bae40a28("sm_foundry_fxanim_catwalk");
	namespace_d5067552::function_bae40a28("sm_foundry_middle");
	function_83d084fe("foundry_area_3_moveup");
	namespace_d5067552::function_bae40a28("sm_foundry_back_corner");
	level thread function_ff771cc8("foundry_spawn_01", "foundry_end_reinforcements_1");
	function_83d084fe("foundry_area_4_moveup");
	namespace_d5067552::function_bae40a28("sm_foundry_generator");
	level thread function_ff771cc8("foundry_spawn_02", "foundry_end_reinforcements_2");
	level thread function_ff771cc8("foundry_spawn_03", "foundry_end_reinforcements_3", 1.5);
}

/*
	Name: function_ff771cc8
	Namespace: namespace_f8b9e1f8
	Checksum: 0x78CD933D
	Offset: 0xA1F0
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_ff771cc8(var_9b54f311, var_f3a8e7d6, var_ee7dbbc9)
{
	if(isdefined(var_ee7dbbc9))
	{
		wait(var_ee7dbbc9);
	}
	var_adad709 = function_6ada35ba(var_9b54f311, "targetname");
	var_adad709 function_8bdea13c(98, 1);
	var_adad709 waittill("hash_a21db68a");
	namespace_d5067552::function_bae40a28(var_f3a8e7d6);
}

/*
	Name: function_46d1131c
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8C181E4
	Offset: 0xA2A8
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_46d1131c()
{
	var_e0da8e0f = function_6ada35ba("vat_room_exit_door_trigger", "targetname");
	var_e0da8e0f function_175e6b8e(0);
	if(isdefined(level.var_26086075))
	{
		level thread [[level.var_26086075]]();
	}
	function_33ccaeb6("vat_room");
	level thread function_b56ffd69();
	level thread function_2a38ab40();
	level thread function_1ad208();
	level thread function_b83baf6f("take_out_turret_1", "vat_turret_1");
	level thread function_b83baf6f("take_out_turret_2", "vat_turret_2");
	level thread function_fc0bd7c9();
	namespace_d0ef8521::function_45d1556("vat_room_breadcrumb");
	namespace_2f06d687::function_72214789("vat_room_enemy");
	if(!function_27c72c1b())
	{
		namespace_2f06d687::function_72214789("vat_room_turret");
	}
	level notify("hash_3bfba96f");
	level thread namespace_e38c3c58::function_d942ea3b();
}

/*
	Name: function_fc0bd7c9
	Namespace: namespace_f8b9e1f8
	Checksum: 0x78238EB9
	Offset: 0xA460
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_fc0bd7c9()
{
	namespace_2f06d687::function_371d219c("vat_room_enemy", 2);
	namespace_4dbf3ae3::function_42e87952("vat_room_clean_up_diaz");
}

/*
	Name: function_b83baf6f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD71D38A9
	Offset: 0xA4A8
	Size: 0xCB
	Parameters: 2
	Flags: None
*/
function function_b83baf6f(var_db803bcf, var_3199aef)
{
	namespace_4dbf3ae3::function_1ab5ebec(var_db803bcf);
	var_c316ad54 = function_6ada35ba(var_3199aef, "script_noteworthy", 1);
	if(function_5b49d38c(var_c316ad54))
	{
		level.var_6cb8b7a namespace_d84e54db::function_d104c596("normal", var_c316ad54, "tag_barrel_animate", 3);
		if(function_5b49d38c(var_c316ad54))
		{
			var_c316ad54 function_2992720d();
		}
	}
}

/*
	Name: function_1ad208
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF7F32C3F
	Offset: 0xA580
	Size: 0x201
	Parameters: 0
	Flags: None
*/
function function_1ad208()
{
	namespace_4dbf3ae3::function_1ab5ebec("vat_room_start_enemies");
	namespace_9f824288::function_5d2cdd99();
	level thread function_c61a6c0a();
	namespace_d5067552::function_bae40a28("sm_vat_room_enemies");
	level thread function_dda86f5a();
	namespace_4dbf3ae3::function_1ab5ebec("vat_room_second_wave");
	namespace_d5067552::function_bae40a28("sm_vat_room_final_suppressors");
	namespace_4dbf3ae3::function_1ab5ebec("vat_room_spawn_closet");
	level thread function_f2c01307();
	level thread function_d9482ef9();
	var_9b15e92e = function_6ada35ba("gv_vat_room_back", "targetname");
	foreach(var_d84e54db in namespace_2f06d687::function_289e6fd1("vat_room_enemy"))
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_169cc712(var_9b15e92e);
			wait(function_72a94f05(0.5, 2));
		}
	}
}

/*
	Name: function_dda86f5a
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9C45CE0F
	Offset: 0xA790
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_dda86f5a()
{
	wait(3);
	namespace_2f06d687::function_45679edd("vat_room_enemy", 3);
	namespace_4dbf3ae3::function_42e87952("vat_room_second_wave");
	wait(3);
	namespace_2f06d687::function_45679edd("vat_room_enemy", 3);
	namespace_4dbf3ae3::function_42e87952("vat_room_spawn_closet");
}

/*
	Name: function_b56ffd69
	Namespace: namespace_f8b9e1f8
	Checksum: 0x40836978
	Offset: 0xA818
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_b56ffd69()
{
	namespace_4dbf3ae3::function_1ab5ebec("factory_vat_room_ammo_vo");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_grab_fresh_ammo_when_0");
	namespace_d0ef8521::function_74d6b22f("cp_level_newworld_vat_room_subobj_locate_command_ctr");
}

/*
	Name: function_f2c01307
	Namespace: namespace_f8b9e1f8
	Checksum: 0x99792DF2
	Offset: 0xA878
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_f2c01307()
{
	var_f2c7e89 = function_6ada35ba("vat_room_spawn_door", "targetname");
	var_f2c7e89 function_8bdea13c(136, 2, 0.5, 0.3);
	var_f2c7e89 waittill("hash_a21db68a");
	namespace_d5067552::function_bae40a28("sm_vat_room_closet");
	namespace_d5067552::function_347e835a("sm_vat_room_closet");
	var_13cfcc3e = function_6ada35ba("gv_vat_room_spawn_closet", "targetname");
	var_13cfcc3e endon("hash_128f8789");
	var_84fda8df = 0;
	while(!var_84fda8df)
	{
		var_84fda8df = 1;
		foreach(var_d84e54db in namespace_2f06d687::function_289e6fd1("vat_room_enemy"))
		{
			if(var_d84e54db.var_caae374e === "vat_spawn_closet" && var_d84e54db function_32fa5072(var_13cfcc3e))
			{
				var_84fda8df = 0;
			}
		}
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			if(var_6bfe1586 function_32fa5072(var_13cfcc3e))
			{
				var_84fda8df = 0;
			}
		}
		wait(0.05);
	}
	var_f2c7e89 function_8bdea13c(136 * -1, 2, 0.5, 0.3);
}

/*
	Name: function_2a38ab40
	Namespace: namespace_f8b9e1f8
	Checksum: 0x713EC8B7
	Offset: 0xAB30
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_2a38ab40()
{
	if(function_27c72c1b())
	{
		return;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_5e3e5d06();
	}
	namespace_82b91a51::function_76f13293();
	namespace_dabbe128::function_eb99da89(&function_5e3e5d06);
	namespace_4dbf3ae3::function_1ab5ebec("vat_room_hijack_tutorial");
	namespace_76d95162::function_d9f49fba(1);
	level thread function_451d7f3e();
	level thread function_8b7ac3d();
}

/*
	Name: function_5e3e5d06
	Namespace: namespace_f8b9e1f8
	Checksum: 0x2E08AF6E
	Offset: 0xAC70
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_5e3e5d06()
{
	self endon("hash_128f8789");
	level endon("hash_f03001f9");
	self namespace_ad23e503::function_c35e6aab("vat_room_turret_hijacked");
	if(function_27c72c1b())
	{
		self namespace_ad23e503::function_74d6b22f("vat_room_turret_hijacked");
		break;
	}
	while(1)
	{
		self waittill("hash_91737d19", var_52b4a338);
		if(var_52b4a338.var_170527fb === "vat_room_auto_turret_ai")
		{
			self namespace_ad23e503::function_74d6b22f("vat_room_turret_hijacked");
		}
	}
}

/*
	Name: function_10195ade
	Namespace: namespace_f8b9e1f8
	Checksum: 0x11A06AD
	Offset: 0xAD40
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_10195ade()
{
	if(namespace_2f06d687::function_289e6fd1("vat_room_turret") > 0)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_13458178
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF853D900
	Offset: 0xAD78
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_13458178()
{
	self endon("hash_128f8789");
	level endon("hash_f03001f9");
	if(isdefined(30))
	{
		var_a78a7a9e = function_a8fb77bd();
		var_a78a7a9e endon("hash_4573206");
		var_a78a7a9e namespace_82b91a51::function_6729b6ba(30, "timeout");
	}
	while(!self namespace_ad23e503::function_7922262b("vat_room_turret_hijacked"))
	{
		if(function_10195ade() && !self namespace_564407fb::function_38a9aff8())
		{
			self thread namespace_82b91a51::function_32d40124(&"CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_TUTORIAL", 0, undefined, 4);
			self namespace_ad23e503::function_d266a8b4(4, "vat_room_turret_hijacked");
			self thread namespace_82b91a51::function_f9e5537b(1);
			if(!self namespace_ad23e503::function_7922262b("vat_room_turret_hijacked"))
			{
				self namespace_ad23e503::function_d266a8b4(3, "vat_room_turret_hijacked");
			}
		}
		else
		{
			wait(10);
		}
	}
}

/*
	Name: function_c61a6c0a
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE032A98E
	Offset: 0xAEF0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_c61a6c0a()
{
	level namespace_ad23e503::function_c35e6aab("vat_room_turrets_all_dead");
	if(!function_27c72c1b())
	{
		namespace_2f06d687::function_22356ba7("vat_room_auto_turret");
		foreach(var_76bcdea7 in namespace_2f06d687::function_289e6fd1("vat_room_turret"))
		{
			var_76bcdea7.var_32fb62ff = 0.25;
		}
		namespace_2f06d687::function_72214789("vat_room_turret");
	}
	level namespace_ad23e503::function_74d6b22f("vat_room_turrets_all_dead");
}

/*
	Name: function_6d9440c2
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFB73B9E9
	Offset: 0xB018
	Size: 0x223
	Parameters: 2
	Flags: None
*/
function function_6d9440c2(var_b04bc952, var_74cd64bc)
{
	level thread namespace_cc27597::function_c35e6aab("cin_new_04_01_insideman_1st_hack_sh010");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_b7a27741 = 1;
		function_11a66a73(var_b04bc952);
		namespace_d0ef8521::function_31cd1834("cp_level_newworld_factory_subobj_goto_hideout");
		namespace_d0ef8521::function_31cd1834("cp_level_newworld_factory_subobj_hijack_drone");
		namespace_d0ef8521::function_31cd1834("cp_level_newworld_foundry_subobj_destroy_generator");
		level thread function_d9482ef9();
		function_bab1ff00("umbra_gate_vat_room_door_01", 0);
		namespace_d7916d65::function_a2995f22();
		level thread namespace_e38c3c58::function_d942ea3b();
	}
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_vat_room_subobj_locate_command_ctr");
	namespace_4dbf3ae3::function_42e87952("vat_room_hack_door_color_trigger");
	function_9e3608e3("charging_station_glass_doors");
	function_9e3608e3("charging_station_robot");
	var_6bfe1586 = function_61a9d0c7();
	level notify("hash_ecac2aac");
	var_cecf22e2 = function_6ada35ba("ug_vat_room_hide_me", "targetname");
	var_cecf22e2 function_50ccee8d();
	function_bab1ff00("umbra_gate_vat_room_door_01", 1);
	function_df0933fe(var_6bfe1586);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_1a0c61bc
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD09A4199
	Offset: 0xB248
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_1a0c61bc(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_74d6b22f("cp_level_newworld_rooftop_chase");
	function_6ca75594();
}

/*
	Name: function_6ca75594
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD6A56BD4
	Offset: 0xB2A0
	Size: 0x54B
	Parameters: 0
	Flags: None
*/
function function_6ca75594()
{
	namespace_ce0e5f06::function_bbd12ed2("cin_new_02_01_pallasintro_vign_appear");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_02_01_pallasintro_vign_appear_player");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_01_factoryraid_aie_break_glass");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_alley_pipes_bundle");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_wallrunright_diaz");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_wallrunright_diaz_pt2");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_01_factoryraid_vign_wallrun_attack_attack");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_01_factoryraid_vign_wallrun_attack_landing");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_startup_flee");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_startup");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_02_factoryraid_vign_explaindrones");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_02_factoryraid_vign_explaindrones_open_door");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_junkyard");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_03_03_factoryraid_vign_pry_open");
	wait(3);
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh010");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh020");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh030");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh040");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh050");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh060");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh070");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh080");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh090");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh100");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh110");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh120");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh130");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh140");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh150");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh160");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh170");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh180");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh190");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh200");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh210");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh220");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh230");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh240");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh250");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh260");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh270");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh280");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh290");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh300");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh310");
	namespace_ce0e5f06::function_bbd12ed2("cin_new_04_01_insideman_1st_hack_sh320");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_sgen_charging_station_break_02_bundle");
	namespace_ce0e5f06::function_bbd12ed2("cin_sgen_16_01_charging_station_aie_awaken_robot03");
	namespace_ce0e5f06::function_bbd12ed2("cin_sgen_16_01_charging_station_aie_awaken_robot04");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_fall_01_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_fall_02_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_bridge_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_gp_cauldron_hit_s3_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_fall_s1_01_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_fall_s1_02_bundle");
	namespace_ce0e5f06::function_bbd12ed2("p7_fxanim_cp_newworld_cauldron_bridge_s1_bundle");
}

/*
	Name: function_61a9d0c7
	Namespace: namespace_f8b9e1f8
	Checksum: 0x97B72205
	Offset: 0xB7F8
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_61a9d0c7()
{
	namespace_76d95162::function_d9f49fba(0);
	level thread function_7fb08868();
	namespace_d0ef8521::function_74d6b22f("cp_level_newworld_vat_room_subobj_hack_door");
	thread namespace_ce0e5f06::function_16dd8c5f("vat_room_exit_door_trigger", &"cp_level_newworld_access_door", &"CP_MI_ZURICH_NEWWORLD_HACK", "vat_room_door_panel", "vat_room_door_hacked");
	namespace_d0ef8521::function_31cd1834("cp_level_newworld_vat_room_subobj_hack_door");
	level waittill("hash_d7559b12", var_6bfe1586);
	return var_6bfe1586;
}

/*
	Name: function_df0933fe
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD8347A19
	Offset: 0xB8B8
	Size: 0x373
	Parameters: 1
	Flags: None
*/
function function_df0933fe(var_6bfe1586)
{
	if(isdefined(level.var_9fc39c85))
	{
		level thread [[level.var_9fc39c85]]();
	}
	level thread namespace_e38c3c58::function_57c68b7b();
	namespace_cc27597::function_8f9f34e0("cin_sgen_16_01_charging_station_aie_awaken_robot03", &function_453c36ed, "play");
	namespace_cc27597::function_8f9f34e0("cin_sgen_16_01_charging_station_aie_awaken_robot04", &function_453c36ed, "play");
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh010", &function_f25ee153);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh010", &function_d9753c8f);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh010", &function_676dcd54);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh010", &function_8d7047bd);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh010", &function_1736807e);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh010", &function_85526de2);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh320", &function_2cd7e04e);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh320", &function_ed4818dc);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh300", &function_86e62a41);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh320", &function_1f576299);
	namespace_cc27597::function_8f9f34e0("cin_new_04_01_insideman_1st_hack_sh320", &namespace_ce0e5f06::function_43dfaf16, "skip_started");
	level thread namespace_cc27597::function_43718187("cin_new_04_01_insideman_1st_hack_sh010", var_6bfe1586);
	wait(1);
	var_f5bb3a9b = function_6ada35ba("vat_room_exit_door", "targetname");
	var_f5bb3a9b function_8bdea13c(98, 1, 0.3, 0.3);
	var_f5bb3a9b function_921a1574("evt_insider_door_open");
	level waittill("hash_51eebdcb");
	namespace_82b91a51::function_a0938376();
	level.var_6cb8b7a namespace_82b91a51::function_c49ce021("diaz");
	level.var_6cb8b7a namespace_82b91a51::function_20ffc8ff();
}

/*
	Name: function_f25ee153
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF5F761E
	Offset: 0xBC38
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_f25ee153(var_c77d2837)
{
	namespace_ce0e5f06::function_2eded728(1);
	var_c77d2837["player 1"] waittill("hash_c827463");
	namespace_ce0e5f06::function_2eded728(0);
}

/*
	Name: function_1f576299
	Namespace: namespace_f8b9e1f8
	Checksum: 0x15431B2
	Offset: 0xBC98
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_1f576299(var_c77d2837)
{
	wait(0.2);
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_ce0e5f06::function_2eded728(1);
	}
}

/*
	Name: function_d9753c8f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x547D06B6
	Offset: 0xBCE0
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_d9753c8f(var_c77d2837)
{
	level waittill("hash_7c7cfa5");
	var_7e421bd8 = namespace_14b42b8a::function_7faf4c39("inside_man_robot", "script_noteworthy");
	foreach(var_1cbcb46d in var_7e421bd8)
	{
		if(var_1cbcb46d.var_8202763a === 1)
		{
			var_1cbcb46d thread namespace_cc27597::function_43718187();
		}
	}
}

/*
	Name: function_676dcd54
	Namespace: namespace_f8b9e1f8
	Checksum: 0x32C6D6F9
	Offset: 0xBDD0
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_676dcd54()
{
	level waittill("hash_e6b5302a");
	var_7e421bd8 = namespace_14b42b8a::function_7faf4c39("inside_man_robot", "script_noteworthy");
	foreach(var_1cbcb46d in var_7e421bd8)
	{
		if(var_1cbcb46d.var_8202763a === 2)
		{
			var_1cbcb46d thread namespace_cc27597::function_43718187();
		}
	}
}

/*
	Name: function_8d7047bd
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBFD7D3EB
	Offset: 0xBEB8
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_8d7047bd()
{
	level waittill("hash_cb7aa93");
	var_7e421bd8 = namespace_14b42b8a::function_7faf4c39("inside_man_robot", "script_noteworthy");
	foreach(var_1cbcb46d in var_7e421bd8)
	{
		if(var_1cbcb46d.var_8202763a === 3)
		{
			var_1cbcb46d thread namespace_cc27597::function_43718187();
			wait(0.2);
		}
	}
}

/*
	Name: function_1736807e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBFAEBB28
	Offset: 0xBFA8
	Size: 0x269
	Parameters: 1
	Flags: None
*/
function function_1736807e(var_c77d2837)
{
	level waittill("hash_761cb65f");
	function_6ddd4fa4("charging_station_glass_doors");
	function_6ddd4fa4("charging_station_robot");
	var_7e421bd8 = namespace_14b42b8a::function_7faf4c39("inside_man_robot", "script_noteworthy");
	var_7da8df42 = namespace_14b42b8a::function_7faf4c39("inside_man_charging_station", "script_noteworthy");
	foreach(var_809fd273 in var_7da8df42)
	{
		var_809fd273 namespace_cc27597::function_fcf56ab5(1);
	}
	foreach(var_f13cf991 in var_7e421bd8)
	{
		var_f13cf991 namespace_cc27597::function_fcf56ab5(1);
	}
	var_64e85e6d = function_99201f25("inside_man_robot_ai", "targetname");
	foreach(var_d84e54db in var_64e85e6d)
	{
		var_d84e54db function_dc8c8404();
	}
}

/*
	Name: function_453c36ed
	Namespace: namespace_f8b9e1f8
	Checksum: 0xD198AD6
	Offset: 0xC220
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_453c36ed(var_c77d2837)
{
	foreach(var_a3d46ee4 in var_c77d2837)
	{
		var_f6c5842 = var_a3d46ee4;
		break;
	}
	var_f6c5842 waittill("hash_81b40ff2");
	var_809fd273 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	var_809fd273 thread namespace_cc27597::function_43718187();
}

/*
	Name: function_85526de2
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA52D9304
	Offset: 0xC308
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_85526de2(var_c77d2837)
{
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_ce7c3ed5::function_2222cd4f("cp_newworld_fs_robothallwayflash");
	}
	var_c77d2837["player 1"] waittill("hash_d83e5e3a");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_ce0e5f06::function_eaf9c027("cp_newworld_fs_robothallwayflash", "fullscreen_additive", 1);
	}
}

/*
	Name: function_2cd7e04e
	Namespace: namespace_f8b9e1f8
	Checksum: 0xAFD8879B
	Offset: 0xC3A0
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_2cd7e04e(var_c77d2837)
{
	level thread namespace_ce0e5f06::function_30ec5bf7();
	var_c77d2837["taylor"] function_8c8e79fe();
	var_c77d2837["taylor"] waittill("hash_d7d448a5");
	var_c77d2837["taylor"] thread namespace_ce0e5f06::function_c949a8ed(1);
	var_c77d2837["diaz"] waittill("hash_3223f495");
	var_c77d2837["diaz"] thread namespace_ce0e5f06::function_4943984c();
	var_c77d2837["taylor"] waittill("hash_7f12e524");
	var_c77d2837["taylor"] thread namespace_ce0e5f06::function_4943984c();
}

/*
	Name: function_ed4818dc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x97CF90E2
	Offset: 0xC4A0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_ed4818dc(var_c77d2837)
{
	var_c77d2837["player 1"] waittill("hash_f39fff1a");
	level namespace_ad23e503::function_74d6b22f("infinite_white_transition");
}

/*
	Name: function_86e62a41
	Namespace: namespace_f8b9e1f8
	Checksum: 0x336FD05
	Offset: 0xC4F0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_86e62a41(var_c77d2837)
{
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_ce7c3ed5::function_2222cd4f("cp_newworld_fs_informant");
	}
	var_c77d2837["player 1"] waittill("hash_13a0d5b7");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_ce0e5f06::function_eaf9c027("cp_newworld_fs_informant", "fullscreen_additive");
	}
}

/*
	Name: function_d9482ef9
	Namespace: namespace_f8b9e1f8
	Checksum: 0xC8861BA8
	Offset: 0xC580
	Size: 0x1F1
	Parameters: 0
	Flags: None
*/
function function_d9482ef9()
{
	var_7da8df42 = namespace_14b42b8a::function_7faf4c39("inside_man_charging_station", "script_noteworthy");
	foreach(var_1cbcb46d in var_7da8df42)
	{
		var_1cbcb46d namespace_cc27597::function_c35e6aab();
		namespace_82b91a51::function_76f13293();
	}
	var_7e421bd8 = namespace_14b42b8a::function_7faf4c39("inside_man_robot", "script_noteworthy");
	foreach(var_1cbcb46d in var_7e421bd8)
	{
		var_f6c5842 = namespace_2f06d687::function_7387a40a("inside_man_robot");
		var_f6c5842 namespace_d84e54db::function_c9e45d52(1);
		var_f6c5842 namespace_d84e54db::function_b4f5e3b9(1);
		var_1cbcb46d namespace_cc27597::function_c35e6aab(var_f6c5842);
		var_1cbcb46d.var_f6c5842 = var_f6c5842;
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_11a66a73
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5FDD057E
	Offset: 0xC780
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_11a66a73(var_b04bc952)
{
	level.var_6cb8b7a = namespace_82b91a51::function_740f8516("diaz");
	level.var_6cb8b7a thread namespace_ce0e5f06::function_921d7387();
	namespace_1d795d47::function_3096a6fd(var_b04bc952);
}

/*
	Name: function_2dbbd9b1
	Namespace: namespace_f8b9e1f8
	Checksum: 0x31F11B64
	Offset: 0xC7E8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_2dbbd9b1(var_c9ae457a)
{
	self endon("hash_128f8789");
	if(!function_e70ab977(self) || !function_5b49d38c(self))
	{
		return;
	}
	wait(function_72a94f05(0, 5));
	self function_169cc712(var_c9ae457a, 1);
}

/*
	Name: function_adcc83a3
	Namespace: namespace_f8b9e1f8
	Checksum: 0x6DA560F4
	Offset: 0xC880
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_adcc83a3(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	level.var_8474061e = namespace_2f06d687::function_22356ba7("foundry_hackable_vehicle", &function_5981eff1);
	namespace_96fa87af::function_a379ac50("foundry_hackable_vehicle", &function_e0b67a17);
	if(!var_74cd64bc)
	{
		var_b9229bcd = [];
		foreach(var_92218239 in level.var_8474061e)
		{
			if(var_92218239.var_caae374e === "amws_pushed")
			{
				var_b9229bcd[var_b9229bcd.size] = var_92218239;
			}
		}
		level thread function_4fbc759(var_b9229bcd);
	}
	namespace_cc27597::function_8f9f34e0("cin_new_03_02_factoryraid_vign_explaindrones", &function_9ea16200, "init");
	level namespace_cc27597::function_c35e6aab("cin_new_03_02_factoryraid_vign_explaindrones");
}

/*
	Name: function_e0b67a17
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB7992525
	Offset: 0xCA20
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_e0b67a17()
{
	function_81403b2f(level.var_8474061e, self);
	if(level.var_8474061e.size == 0)
	{
		level notify("hash_45205ed8");
	}
}

/*
	Name: function_9ea16200
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5711638D
	Offset: 0xCA68
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_9ea16200(var_c77d2837)
{
	var_86b029e3 = var_c77d2837["hijack_diaz_wasp_spawnpoint"];
	var_86b029e3 namespace_d84e54db::function_b4f5e3b9(1);
	var_86b029e3 namespace_d84e54db::function_c9e45d52(1);
	var_86b029e3.var_3e94206a = "allies";
}

/*
	Name: function_9110a277
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA80CCE12
	Offset: 0xCAE0
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_9110a277(var_e33a0786)
{
	self endon("hash_128f8789");
	self namespace_71e9cb84::function_74d6b22f("diaz_camo_shader", 2);
	wait(2);
	self namespace_71e9cb84::function_74d6b22f("diaz_camo_shader", var_e33a0786);
	if(var_e33a0786 == 1)
	{
		self namespace_d84e54db::function_c9e45d52(1);
		self namespace_d84e54db::function_b4f5e3b9(1);
	}
	else
	{
		self namespace_d84e54db::function_c9e45d52(0);
		self namespace_d84e54db::function_b4f5e3b9(0);
		self notify("hash_a6476729");
	}
}

/*
	Name: function_211925e6
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5D6EB991
	Offset: 0xCBC8
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_211925e6(var_95456b04)
{
	level.var_e4124849 = function_c4d5ec1f("rocket_wasp_launcher_turret_player");
	level.var_7e8adada = function_c4d5ec1f("amws_launcher_turret_player");
	level.var_3e8a5e10 = function_c4d5ec1f("pamws_launcher_turret_player");
	var_313d91e1 = namespace_14b42b8a::function_7faf4c39(var_95456b04 + "_destroyable_vat", "targetname");
	namespace_84970cc4::function_966ecb29(var_313d91e1, &function_aef915b2);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_newworld_cauldron_bridge_bundle", &function_2aec5af4, "play");
}

/*
	Name: function_aef915b2
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDAF21027
	Offset: 0xCCC8
	Size: 0x43B
	Parameters: 0
	Flags: None
*/
function function_aef915b2()
{
	self endon("hash_128f8789");
	switch(self.var_db7bb468)
	{
		case "s1_01":
		{
			var_7c78ee9e = namespace_82b91a51::function_b9fd52a4("p7_fxanim_cp_newworld_cauldron_fall_01_mod", self.var_722885f3, self.var_6ab6f4fd);
			var_7c78ee9e.var_f3e8791a = function_6ada35ba("cauldron_1_hang", "targetname");
			var_7c78ee9e.var_8406755b = function_6ada35ba("cauldron_1_fall", "targetname");
			var_7c78ee9e.var_77996abe = "fx_interior_cauldron_right";
			var_7c78ee9e.var_84d67e66 = function_6ada35ba("fire_hazard_right_cauldron", "targetname");
			break;
		}
		case "s1_02":
		{
			var_7c78ee9e = namespace_82b91a51::function_b9fd52a4("p7_fxanim_cp_newworld_cauldron_fall_02_mod", self.var_722885f3, self.var_6ab6f4fd);
			var_7c78ee9e.var_f3e8791a = function_6ada35ba("cauldron_2_hang", "targetname");
			var_7c78ee9e.var_8406755b = function_6ada35ba("cauldron_2_fall", "targetname");
			var_7c78ee9e.var_77996abe = "fx_interior_cauldron_left";
			var_7c78ee9e.var_84d67e66 = function_6ada35ba("fire_hazard_left_cauldron", "targetname");
			break;
		}
		case "bridge":
		{
			var_7c78ee9e = namespace_82b91a51::function_b9fd52a4("p7_fxanim_cp_newworld_cauldron_bridge_mod", self.var_722885f3, self.var_6ab6f4fd);
			var_7c78ee9e.var_f3e8791a = function_6ada35ba("cauldron_bridge_hang", "targetname");
			var_7c78ee9e.var_8406755b = function_6ada35ba("cauldron_bridge_fall", "targetname");
			var_7c78ee9e.var_3d0b54ab = function_6ada35ba("foundry_catwalk_clip", "targetname");
			var_7c78ee9e.var_cb14c98c = function_6ada35ba("foundry_catwalk_ai_clip", "targetname");
			var_7c78ee9e.var_84d67e66 = function_6ada35ba("fire_hazard_bridge", "targetname");
			var_77f0f8f6 = function_99201f25("cauldron_bridge_fxanim_clip", "targetname");
			foreach(var_d874dcf in var_77f0f8f6)
			{
				var_d874dcf function_422037f5();
			}
			break;
		}
	}
	var_7c78ee9e.var_84d67e66 function_175e6b8e(0);
	var_7c78ee9e.var_b07228b6 = self.var_b07228b6;
	var_7c78ee9e.var_db7bb468 = self.var_db7bb468;
	var_7c78ee9e.var_caae374e = self.var_caae374e;
	var_7c78ee9e.var_ff1f6868 = self.var_ff1f6868;
	var_7c78ee9e function_3c0b8c41();
}

/*
	Name: function_33ccaeb6
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5474E142
	Offset: 0xD110
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_33ccaeb6(var_95456b04)
{
	var_8fec5fad = namespace_14b42b8a::function_7faf4c39(var_95456b04 + "_destroyable_conveyor_belt_vat", "targetname");
	foreach(var_9006610d in var_8fec5fad)
	{
		var_9006610d thread function_c9c147cb(var_95456b04);
	}
}

/*
	Name: function_c9c147cb
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDDE7D107
	Offset: 0xD1E8
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_c9c147cb(var_95456b04)
{
	level endon("hash_ecac2aac");
	while(1)
	{
		wait(function_72a94f05(12, 20));
		var_7c78ee9e = namespace_82b91a51::function_b9fd52a4("p7_fxanim_gp_cauldron_hit_s3_mod", self.var_722885f3, self.var_6ab6f4fd);
		var_7c78ee9e thread function_3c0b8c41();
		var_7c78ee9e thread function_5ccfae48(var_95456b04);
		var_7c78ee9e thread function_35fa6de(self.var_b07228b6);
	}
}

/*
	Name: function_35fa6de
	Namespace: namespace_f8b9e1f8
	Checksum: 0xAB538CAA
	Offset: 0xD2C0
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_35fa6de(var_b3db89e0)
{
	var_ae451748 = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	self function_37f7858a(var_ae451748);
	var_ae451748 function_c2931a36("evt_vat_move_loop");
	var_b9722704 = namespace_14b42b8a::function_7922262b(var_b3db89e0, "targetname");
	var_c26efe11 = function_7d15e2f8(self.var_722885f3, var_b9722704.var_722885f3) / 80;
	var_ae451748 function_a96a2721(var_b9722704.var_722885f3, var_c26efe11);
	var_ae451748 waittill("hash_a21db68a");
	var_ae451748 function_dc8c8404();
	self function_dc8c8404();
}

/*
	Name: function_3c0b8c41
	Namespace: namespace_f8b9e1f8
	Checksum: 0x20F03DDB
	Offset: 0xD418
	Size: 0x68F
	Parameters: 0
	Flags: None
*/
function function_3c0b8c41()
{
	self endon("hash_128f8789");
	self function_8d63f8d0(1);
	self.var_3a90f16b = 10000;
	self.var_3d36f95b = 0;
	self.var_4d71f01a = 0;
	if(self.var_caae374e === "static_vat")
	{
		self.var_af5fda8a = 1;
	}
	else
	{
		self.var_af5fda8a = 0;
	}
	self namespace_5753664b::function_43718187("smk_idle_cauldron", undefined, undefined, "stop_static_fx", 1, "fx_spill_middle_jnt");
	while(1)
	{
		self waittill("hash_f9348fda", var_f9a179ed, var_96133235, var_d3ca3e9c, var_88482219, var_fe311e35, var_f10f645, var_cd9517d2, var_f105c26b, var_dfcc01fd, var_bf827987);
		self.var_3a90f16b = 10000;
		if(var_dfcc01fd === level.var_e4124849 || var_dfcc01fd === level.var_7e8adada || var_dfcc01fd === level.var_3e8a5e10)
		{
			var_f9a179ed = 350;
		}
		self.var_4d71f01a = self.var_4d71f01a + var_f9a179ed;
		self.var_3d36f95b++;
		if(!self.var_af5fda8a)
		{
			self thread function_75d4f3c6();
		}
		if(self.var_4d71f01a >= 350)
		{
			if(self.var_af5fda8a)
			{
				self.var_b47f27c9 = 1;
				self namespace_cc27597::function_fcf56ab5();
				self.var_2dd707 = 0;
				switch(self.var_db7bb468)
				{
					case "s1_01":
					{
						self thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_cauldron_fall_01_bundle", self);
						break;
					}
					case "s1_02":
					{
						self thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_cauldron_fall_02_bundle", self);
						break;
					}
					case "bridge":
					{
						level thread function_191c39fc();
						self thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_cauldron_bridge_bundle", self);
						break;
					}
				}
				self notify("hash_36ff97f");
				if(isdefined(self.var_77996abe))
				{
					namespace_82b91a51::function_67520c6a(1.5, undefined, &namespace_80983c42::function_80983c42, self.var_77996abe);
				}
				wait(0.5);
				self thread function_528ae2fd(var_96133235);
				self.var_84d67e66 function_175e6b8e(1);
				self.var_f3e8791a function_dc8c8404();
				self.var_8406755b function_8bdea13c(256, 0.05);
				self.var_8406755b waittill("hash_a21db68a");
				foreach(var_d84e54db in function_b8494651("axis"))
				{
					if(var_d84e54db function_32fa5072(self.var_8406755b))
					{
						var_d84e54db function_2992720d();
					}
				}
				if(isdefined(self.var_3d0b54ab))
				{
					self.var_cb14c98c function_8bdea13c(256, 0.05);
					self.var_cb14c98c waittill("hash_a21db68a");
					foreach(var_d84e54db in function_b8494651("axis"))
					{
						if(var_d84e54db function_32fa5072(self.var_cb14c98c))
						{
							var_d84e54db function_2992720d();
						}
					}
					self.var_3d0b54ab function_dc8c8404();
				}
			}
			else
			{
				self namespace_cc27597::function_fcf56ab5();
				self thread namespace_cc27597::function_43718187("p7_fxanim_gp_cauldron_hit_s3_bundle", self);
				wait(0.5);
				self thread function_528ae2fd(var_96133235);
			}
			self.var_4d71f01a = 0;
		}
		else if(self.var_af5fda8a)
		{
			switch(self.var_db7bb468)
			{
				case "s1_01":
				{
					self thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_cauldron_fall_s1_01_bundle", self);
					break;
				}
				case "s1_02":
				{
					self thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_cauldron_fall_s1_02_bundle", self);
					break;
				}
				case "bridge":
				{
					self thread namespace_cc27597::function_43718187("p7_fxanim_cp_newworld_cauldron_bridge_s1_bundle", self);
					break;
				}
			}
		}
		else
		{
			self thread namespace_cc27597::function_43718187("p7_fxanim_gp_cauldron_hit_s1_bundle", self);
		}
	}
}

/*
	Name: function_191c39fc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x10AE10E4
	Offset: 0xDAB0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_191c39fc()
{
	level endon("hash_ecac2aac");
	level waittill("hash_bd02d60e");
	namespace_80983c42::function_80983c42("fx_interior_fire_pipeburst");
}

/*
	Name: function_528ae2fd
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8C499448
	Offset: 0xDAF0
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_528ae2fd(var_96133235)
{
	var_4a29baa2 = self function_d48f2ab3("cables_02_jnt");
	var_bcb6d0c9 = var_4a29baa2 - VectorScale((0, 0, 1), 2000);
	var_f3539266 = function_e1dc201c(var_4a29baa2, var_bcb6d0c9, 0, self);
	var_2eb20475 = function_9b7fda5e("trigger_radius", var_f3539266["position"], 27, 150, 150);
	var_2eb20475 thread function_91f1c249();
	wait(7);
	var_2eb20475 function_dc8c8404();
}

/*
	Name: function_91f1c249
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9CA2F73B
	Offset: 0xDC00
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_91f1c249()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_ef6539d1);
		if(var_ef6539d1.var_6ce47035 === 1)
		{
			continue;
		}
		if(var_ef6539d1 namespace_82b91a51::function_d3426abc())
		{
			continue;
		}
		if(function_85e4c3b3(var_ef6539d1))
		{
			var_ef6539d1 function_c3945cd5(10, var_ef6539d1.var_722885f3, self, self, "none");
		}
		else if(function_5b49d38c(var_ef6539d1))
		{
			var_ef6539d1 thread function_9e51be07(4, 6);
			var_ef6539d1.var_6ce47035 = 1;
			level notify("hash_9fbe018c");
		}
	}
}

/*
	Name: function_5ccfae48
	Namespace: namespace_f8b9e1f8
	Checksum: 0x34EAA54F
	Offset: 0xDD28
	Size: 0x15F
	Parameters: 1
	Flags: None
*/
function function_5ccfae48(var_95456b04)
{
	self endon("hash_128f8789");
	level endon("hash_ecac2aac");
	var_b414ae3d = function_99201f25(var_95456b04 + "_vat_door_trigger", "targetname");
	while(1)
	{
		foreach(var_1ecb5e9d in var_b414ae3d)
		{
			if(self function_32fa5072(var_1ecb5e9d))
			{
				self namespace_71e9cb84::function_74d6b22f("open_vat_doors", 1);
				while(self function_32fa5072(var_1ecb5e9d))
				{
					wait(0.05);
				}
				self namespace_71e9cb84::function_74d6b22f("open_vat_doors", 0);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_2aec5af4
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9274B6D8
	Offset: 0xDE90
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_2aec5af4(var_c77d2837)
{
	var_c77d2837["newworld_cauldron_bridge"] waittill("hash_bc75666f");
	var_77f0f8f6 = function_99201f25("cauldron_bridge_fxanim_clip", "targetname");
	foreach(var_d874dcf in var_77f0f8f6)
	{
		var_d874dcf function_4083a98e();
	}
}

/*
	Name: function_9e51be07
	Namespace: namespace_f8b9e1f8
	Checksum: 0xFDB6B9BC
	Offset: 0xDF70
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_9e51be07(var_77afe3ba, var_2c1a9668)
{
	self endon("hash_128f8789");
	var_62240a71 = function_72a94f05(var_77afe3ba, var_2c1a9668);
	wait(function_72a94f05(0.1, 0.75));
	self namespace_71e9cb84::function_74d6b22f("arch_actor_fire_fx", 1);
	self thread function_48516b3d();
	self thread function_8823cee2(function_c4d5ec1f("gadget_firefly_swarm_upgraded"), var_62240a71);
	self namespace_82b91a51::function_9fcf3cd8(var_62240a71, "firedeath_time_to_die");
	self function_2992720d(self.var_722885f3);
}

/*
	Name: function_48516b3d
	Namespace: namespace_f8b9e1f8
	Checksum: 0x80E040CC
	Offset: 0xE090
	Size: 0x3B
	Parameters: 0
	Flags: Private
*/
function private function_48516b3d()
{
	self waittill("hash_c67510f3", var_1e25855);
	var_1e25855 namespace_71e9cb84::function_74d6b22f("arch_actor_fire_fx", 2);
}

/*
	Name: function_8823cee2
	Namespace: namespace_f8b9e1f8
	Checksum: 0xCA3B8872
	Offset: 0xE0D8
	Size: 0xC1
	Parameters: 2
	Flags: Private
*/
function private function_8823cee2(var_dfcc01fd, var_62240a71)
{
	self endon("hash_128f8789");
	self notify("hash_b64936fe", "scream");
	var_e48beec7 = GetTime() + var_62240a71 * 1000;
	while(GetTime() < var_e48beec7)
	{
		self function_c3945cd5(5, self.var_722885f3, undefined, undefined, "none", "MOD_RIFLE_BULLET", 0, var_dfcc01fd, -1, 1);
		self waittillmatch("hash_5270341e");
	}
	self notify("hash_235a51d2", "specialpain");
}

/*
	Name: function_75d4f3c6
	Namespace: namespace_f8b9e1f8
	Checksum: 0x3E9197A0
	Offset: 0xE1A8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_75d4f3c6()
{
	self endon("hash_128f8789");
	var_69a8fe07 = self.var_3d36f95b;
	wait(0.4);
	if(var_69a8fe07 == self.var_3d36f95b)
	{
		self.var_4d71f01a = 0;
	}
}

/*
	Name: function_5981eff1
	Namespace: namespace_f8b9e1f8
	Checksum: 0xAD587D9F
	Offset: 0xE200
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_5981eff1()
{
	self.var_d3f57f67 = 1;
	self.var_3e94206a = "allies";
	self.var_7dfaf62 = 64;
	self function_80765127();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_dc29a320 = &function_a18dda0f;
}

/*
	Name: function_3f145e58
	Namespace: namespace_f8b9e1f8
	Checksum: 0x8E0DCF2C
	Offset: 0xE298
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_3f145e58(var_c77d2837)
{
	level waittill("hash_e8e1b9b8");
	var_c77d2837["hijack_diaz_wasp_spawnpoint"] namespace_72ee5da4::function_81b6f1ac();
	var_c77d2837["hijack_diaz_wasp_spawnpoint"] namespace_71e9cb84::function_74d6b22f("name_diaz_wasp", 1);
	level waittill("hash_b1973b1b");
	var_c77d2837["hijack_diaz_wasp_spawnpoint"] thread function_3929ac3c();
	namespace_ce0e5f06::function_3e37f48b(1);
	level thread function_8de037ed();
	foreach(var_6fd8b42c in level.var_8474061e)
	{
		if(function_27c72c1b())
		{
			if(isdefined(var_6fd8b42c.var_8fc0e50e) && var_6fd8b42c.var_8fc0e50e == "wasp")
			{
				continue;
			}
		}
		var_6fd8b42c.var_d3f57f67 = undefined;
	}
}

/*
	Name: function_738d040b
	Namespace: namespace_f8b9e1f8
	Checksum: 0x7F93A692
	Offset: 0xE438
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_738d040b()
{
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_okay_weapons_hot_1");
	level namespace_ad23e503::function_c35e6aab("diaz_factory_exterior_follow_up_vo");
	var_e4159f5 = function_6ada35ba("factory_exterior_left_path_vo", "targetname");
	var_cec0e1d8 = function_6ada35ba("factory_exterior_right_path_vo", "targetname");
	var_7d32135d = function_6ada35ba("factory_exterior_center_path_vo", "targetname");
	level thread function_e8db2799(var_e4159f5, "left");
	level thread function_e8db2799(var_cec0e1d8, "right");
	level thread function_e8db2799(var_7d32135d, "center");
}

/*
	Name: function_e8db2799
	Namespace: namespace_f8b9e1f8
	Checksum: 0xDBEBBF17
	Offset: 0xE578
	Size: 0x141
	Parameters: 2
	Flags: None
*/
function function_e8db2799(var_46100e43, var_c11c02b4)
{
	self endon("hash_128f8789");
	level endon("hash_e8db2799");
	while(1)
	{
		var_46100e43 waittill("hash_4dbf3ae3", var_a3d46ee4);
		if(function_65f192a6(var_a3d46ee4) && function_5b49d38c(var_a3d46ee4))
		{
			switch(var_c11c02b4)
			{
				case "left":
				{
					var_a3d46ee4 namespace_71b8dba1::function_13b3b16a("plyr_taking_left_flank_c_0");
					break;
				}
				case "right":
				{
					var_a3d46ee4 namespace_71b8dba1::function_13b3b16a("plyr_moving_right_on_me_0");
					break;
				}
				case "center":
				{
					var_a3d46ee4 namespace_71b8dba1::function_13b3b16a("plyr_taking_center_path_0");
					break;
				}
				case default:
				{
					break;
				}
			}
			break;
		}
	}
	level.var_6cb8b7a thread function_87c7c17f();
	level notify("hash_e8db2799");
}

/*
	Name: function_87c7c17f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x368F93CF
	Offset: 0xE6C8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_87c7c17f()
{
	if(!level namespace_ad23e503::function_7922262b("diaz_factory_exterior_follow_up_vo"))
	{
		level namespace_ad23e503::function_74d6b22f("diaz_factory_exterior_follow_up_vo");
		self namespace_71b8dba1::function_81141386("diaz_there_s_never_just_o_0", 0.5);
	}
}

/*
	Name: function_a77545da
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE2E2A2AA
	Offset: 0xE740
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a77545da()
{
	self thread function_cd561d8f();
	self thread function_a96367c2();
}

/*
	Name: function_cd561d8f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xF3BB474
	Offset: 0xE780
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_cd561d8f()
{
	level endon("hash_48600f62");
	self endon("hash_128f8789");
	self namespace_ad23e503::function_1ab5ebec("tactical_mode_used");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_like_opening_your_ey_0", undefined, undefined, self);
}

/*
	Name: function_a96367c2
	Namespace: namespace_f8b9e1f8
	Checksum: 0x9B9FA207
	Offset: 0xE7E8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a96367c2()
{
	level endon("hash_48600f62");
	self endon("hash_bffdb6cc");
	self endon("hash_128f8789");
	wait(15);
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_don_t_got_all_day_n_0", undefined, undefined, self);
}

/*
	Name: function_af28d0ba
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA3E59609
	Offset: 0xE848
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_af28d0ba()
{
	self thread function_f83d1fd6();
	self thread function_5b31eadc();
	self thread function_d0776ef();
}

/*
	Name: function_f83d1fd6
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBFBCFC70
	Offset: 0xE8A0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f83d1fd6()
{
	self endon("hash_70797a3a");
	self endon("hash_d67cc85b");
	level endon("hash_3cb382c8");
	self endon("hash_128f8789");
	wait(30);
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_you_gotta_wall_run_t_0", undefined, undefined, self);
	wait(30);
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_let_s_see_that_wall_0", undefined, undefined, self);
	wait(30);
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_hey_i_ain_t_waiting_0", undefined, undefined, self);
}

/*
	Name: function_5b31eadc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x48DDB1F4
	Offset: 0xE968
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_5b31eadc()
{
	self endon("hash_70797a3a");
	level endon("hash_3cb382c8");
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("wallrun_tutorial_fail_VO", "targetname", self);
	self notify("hash_d67cc85b");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_yeah_i_messed_up_my_0", undefined, undefined, self);
}

/*
	Name: function_d0776ef
	Namespace: namespace_f8b9e1f8
	Checksum: 0xE8B08C23
	Offset: 0xE9F8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_d0776ef()
{
	self endon("hash_d67cc85b");
	level endon("hash_3cb382c8");
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("wallrun_tutorial_success_vo", "targetname", self);
	self notify("hash_70797a3a");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_not_bad_newbie_not_0", undefined, undefined, self);
}

/*
	Name: function_70704b5f
	Namespace: namespace_f8b9e1f8
	Checksum: 0xA62EFB51
	Offset: 0xEA88
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_70704b5f()
{
	self thread function_a4ef4f4f();
	self thread function_76f95fc();
}

/*
	Name: function_a4ef4f4f
	Namespace: namespace_f8b9e1f8
	Checksum: 0x3139FCA4
	Offset: 0xEAC8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a4ef4f4f()
{
	self endon("hash_8ac3077f");
	level endon("hash_7aa3c9ce");
	self endon("hash_128f8789");
	wait(15);
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_let_s_get_moving_hi_0", undefined, undefined, self);
}

/*
	Name: function_76f95fc
	Namespace: namespace_f8b9e1f8
	Checksum: 0x56A30A30
	Offset: 0xEB28
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_76f95fc()
{
	level endon("hash_7aa3c9ce");
	level endon("hash_c24bd1ea");
	self endon("hash_128f8789");
	self namespace_ad23e503::function_1ab5ebec("player_hijacked_vehicle");
	wait(1);
	level.var_6cb8b7a thread namespace_71b8dba1::function_81141386("diaz_fits_like_a_glove_r_0");
	level notify("hash_c24bd1ea");
}

/*
	Name: function_4263aa02
	Namespace: namespace_f8b9e1f8
	Checksum: 0x5C525DED
	Offset: 0xEBB0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_4263aa02()
{
	function_83d084fe("foundry_entered");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_you_wanna_see_someth_0");
	level waittill("hash_d3038698");
	level waittill("hash_9fbe018c");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_you_re_a_maniac_jok_0");
}

/*
	Name: function_9729c7a4
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB60DDD60
	Offset: 0xEC30
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_9729c7a4()
{
	if(!level namespace_ad23e503::function_dbca4c5d("player_destroyed_foundry") || !level namespace_ad23e503::function_7922262b("player_destroyed_foundry"))
	{
		level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_there_she_is_blow_t_0");
	}
}

/*
	Name: function_9641f186
	Namespace: namespace_f8b9e1f8
	Checksum: 0xBD68C9B6
	Offset: 0xECA8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_9641f186()
{
	wait(1.5);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		if(isdefined(var_6bfe1586.var_a03af093))
		{
			level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_i_m_afraid_the_emp_b_0", 1);
			break;
		}
	}
	level thread namespace_e38c3c58::function_973b77f9();
}

/*
	Name: function_5dfc077c
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB9365D69
	Offset: 0xED80
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5dfc077c()
{
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_c_mon_let_s_go_0", 1.5);
	level thread namespace_e38c3c58::function_ccafa212();
}

/*
	Name: function_451d7f3e
	Namespace: namespace_f8b9e1f8
	Checksum: 0x70EC9C24
	Offset: 0xEDD0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_451d7f3e()
{
	level endon("hash_128f8789");
	level endon("hash_7fb08868");
	if(function_27c72c1b())
	{
		return;
	}
	level endon("hash_3bfba96f");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_suppressors_second_0", 1);
	if(namespace_ce0e5f06::function_70aba08e())
	{
		level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_if_you_want_to_get_c_0", 2);
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a namespace_ce0e5f06::function_c633d8fe() || isdefined(var_5dc5e20a.var_a03af093))
		{
			continue;
		}
		if(!var_5dc5e20a namespace_ad23e503::function_7922262b("vat_room_turret_hijacked") && !level namespace_ad23e503::function_7922262b("vat_room_turrets_all_dead"))
		{
			var_5dc5e20a thread namespace_ce0e5f06::function_6062e90("cybercom_hijack", 0, "vat_room_turrets_all_dead", 1, "CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_TURRET_TARGET", "CP_MI_ZURICH_NEWWORLD_REMOTE_HIJACK_TURRET_RELEASE");
		}
	}
	if(namespace_ce0e5f06::function_70aba08e())
	{
		level thread function_6199a2b7();
	}
	wait(15);
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_use_your_environment_0");
}

/*
	Name: function_8b7ac3d
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB59225E2
	Offset: 0xEFE0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8b7ac3d()
{
	self endon("hash_128f8789");
	self endon("hash_7fb08868");
	level waittill("hash_76cbcc2f");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_your_cyber_abilities_0", 1);
}

/*
	Name: function_6199a2b7
	Namespace: namespace_f8b9e1f8
	Checksum: 0xB884ACCD
	Offset: 0xF038
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_6199a2b7()
{
	level endon("hash_7fb08868");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_4ff24fae);
	level waittill("hash_16f7f7c4");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_nice_going_now_tur_0", 1);
	level waittill("hash_96bdb9d9");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_dumb_asses_thought_t_0");
}

/*
	Name: function_4ff24fae
	Namespace: namespace_f8b9e1f8
	Checksum: 0x93BEABA0
	Offset: 0xF0D8
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_4ff24fae()
{
	level endon("hash_7fb08868");
	self endon("hash_128f8789");
	if(!isdefined(self.var_a03af093))
	{
		self waittill("hash_91737d19");
	}
	level notify("hash_16f7f7c4");
	self waittill("hash_c68b15c8");
	level notify("hash_96bdb9d9");
}

/*
	Name: function_7fb08868
	Namespace: namespace_f8b9e1f8
	Checksum: 0x1DD85DE7
	Offset: 0xF140
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_7fb08868()
{
	level notify("hash_7fb08868");
	level.var_6cb8b7a namespace_71b8dba1::function_81141386("diaz_the_faction_s_hideou_0");
	level thread namespace_e38c3c58::function_bb8ce831();
}

