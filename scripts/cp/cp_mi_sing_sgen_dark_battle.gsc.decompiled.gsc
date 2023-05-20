#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_fallen_soldiers;
#using scripts\cp\cp_mi_sing_sgen_pallas;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_testing_lab_igc;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_4c73eafb;

/*
	Name: function_32dc1c24
	Namespace: namespace_4c73eafb
	Checksum: 0x47F0AB80
	Offset: 0x1408
	Size: 0x40B
	Parameters: 2
	Flags: None
*/
function function_32dc1c24(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		level thread namespace_a5e80dc::function_652f4022();
		level notify("hash_92687102");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_goto_server_room");
		level thread namespace_cc27597::function_5c143f59("cin_sgen_14_humanlab_3rd_sh200");
		namespace_d7916d65::function_a2995f22();
	}
	var_77725d68 = function_99201f25("interference_on_trig", "targetname");
	namespace_84970cc4::function_966ecb29(var_77725d68, &function_d791b0a9, 1);
	var_4edbd293 = function_99201f25("interference_off_trig", "targetname");
	namespace_84970cc4::function_966ecb29(var_4edbd293, &function_d791b0a9, 0);
	level thread namespace_cc27597::function_43718187("cin_sgen_14_01_humanlab_vign_deadbodies");
	level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 1);
	namespace_2f06d687::function_2b37a3c9("dark_battle_jumpdown_bot", "script_noteworthy", &function_5e6c249b);
	namespace_84970cc4::function_966ecb29(function_99201f25("surgical_facility_interior_door_trigger", "targetname"), &function_69df7be3);
	level thread namespace_cc27597::function_c35e6aab("cin_sgen_15_01_darkbattle_vign_new_flare_decayedmen");
	level thread namespace_cba4cc55::function_423cfae8("surgical_catwalk_top_door", "open");
	level thread namespace_cba4cc55::function_423cfae8("dark_battle_end_door", "close");
	level.var_c1aa5253["water_rise"] = "water/fx_water_rise_splash_md";
	level thread function_e5d88bbd();
	level thread function_3cc9e129();
	var_acb9c8b6 = function_b4cb3503("hendricks_post_dni_lab", "targetname");
	level.var_2fd26037 function_169cc712(var_acb9c8b6, 1, 16);
	namespace_4dbf3ae3::function_1ab5ebec("dark_battle_end");
	level notify("hash_a254d667");
	var_64e85e6d = function_99201f25("surgical_facility_spawner_ai", "targetname");
	namespace_84970cc4::function_1ab5ebec(var_64e85e6d, "death");
	level thread namespace_cba4cc55::function_423cfae8("dark_battle_end_door", "open");
}

/*
	Name: function_3cc9e129
	Namespace: namespace_4c73eafb
	Checksum: 0x46BC6120
	Offset: 0x1820
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_3cc9e129()
{
	namespace_4dbf3ae3::function_1ab5ebec("pre_electromagnetic_room_trigger", undefined, undefined, 0);
	level namespace_71b8dba1::function_a463d127("kane_power_s_out_ahead_s_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_copy_that_1", 1);
	namespace_4dbf3ae3::function_1ab5ebec("electromagnetic_room_trigger", undefined, undefined, 0);
	level namespace_71b8dba1::function_a463d127("kane_picking_up_radiation_0");
	level namespace_ad23e503::function_1ab5ebec("hendricks_door_open");
	level namespace_71b8dba1::function_13b3b16a("plrf_good_job_hendricks_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_uh_i_didn_t_do_th_0", 2);
	namespace_4dbf3ae3::function_1ab5ebec("plyr_shit_2", undefined, undefined, 0);
	level namespace_71b8dba1::function_13b3b16a("plyr_more_test_subjects_0", 0.75);
	level namespace_ad23e503::function_1ab5ebec("water_robot_spawned");
	level thread namespace_d40478f6::function_34465ae6();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_they_re_in_the_water_0", 4);
	level namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_d791b0a9
	Namespace: namespace_4c73eafb
	Checksum: 0xCCF7CCF8
	Offset: 0x1A00
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_d791b0a9(var_ca4b1dc7)
{
	level endon("hash_6a9c5cb5");
	while(isdefined(self))
	{
		self waittill("hash_4dbf3ae3", var_6bfe1586);
		var_6bfe1586 namespace_71e9cb84::function_e9c3870b("oed_interference", var_ca4b1dc7);
	}
}

/*
	Name: function_5d8d8c7a
	Namespace: namespace_4c73eafb
	Checksum: 0x41F7BB4D
	Offset: 0x1A68
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_5d8d8c7a()
{
	level endon("hash_fe2135f");
	wait(8);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_need_a_hand_i_ain_t_0");
	wait(function_dc99997a(10, 15));
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_gimme_boost_we_need_0");
}

/*
	Name: function_5e6c249b
	Namespace: namespace_4c73eafb
	Checksum: 0xDC0965AF
	Offset: 0x1AE0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_5e6c249b()
{
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
	self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
}

/*
	Name: function_bbb54b1a
	Namespace: namespace_4c73eafb
	Checksum: 0x7F77C158
	Offset: 0x1B40
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_bbb54b1a(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_6b91309b
	Namespace: namespace_4c73eafb
	Checksum: 0x6F2411B4
	Offset: 0x1B70
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_6b91309b()
{
	var_7667766b = function_6ada35ba("player_raise_hendricks_trigger", "targetname");
	var_7667766b function_175e6b8e(0);
	level namespace_ad23e503::function_1ab5ebec("player_raise_hendricks_hendricks_ready");
	var_7667766b function_175e6b8e(1);
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_lift_hendricks", level.var_2fd26037.var_722885f3);
	var_7667766b waittill("hash_4dbf3ae3", var_5243a970);
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_lift_hendricks");
	level namespace_ad23e503::function_74d6b22f("player_raise_hendricks_hendricks");
	var_cd9c6d30 = [];
	level namespace_cc27597::function_8f9f34e0("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_climb", &function_f45def6e, "done", var_cd9c6d30);
	level thread namespace_cc27597::function_43718187("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_climb", var_5243a970);
	level namespace_ad23e503::function_74d6b22f("player_raise_hendricks_player_ready");
}

/*
	Name: function_f45def6e
	Namespace: namespace_4c73eafb
	Checksum: 0x9EDB1EBE
	Offset: 0x1D18
	Size: 0xB1
	Parameters: 1
	Flags: None
*/
function function_f45def6e(var_cd9c6d30)
{
	foreach(var_a3d46ee4 in var_cd9c6d30)
	{
		if(function_65f192a6(var_a3d46ee4))
		{
			wait(1);
			var_a3d46ee4 namespace_175490fb::function_6c141a2d();
		}
	}
}

/*
	Name: function_e5d88bbd
	Namespace: namespace_4c73eafb
	Checksum: 0x4ADBE80E
	Offset: 0x1DD8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e5d88bbd()
{
	level thread function_731772d9();
	level thread function_c760c273();
	level thread function_3e856999();
	level thread function_26c8bae0();
}

/*
	Name: function_731772d9
	Namespace: namespace_4c73eafb
	Checksum: 0xE4E25E8B
	Offset: 0x1E48
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_731772d9()
{
	namespace_d0ef8521::function_45d1556("dark_battle_breadcrumb");
}

/*
	Name: function_26c8bae0
	Namespace: namespace_4c73eafb
	Checksum: 0x29314443
	Offset: 0x1E70
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_26c8bae0()
{
	level thread namespace_cc27597::function_c35e6aab("door_dark_battle", "targetname");
	var_f2c7e89 = function_6ada35ba("hendricks_dark_battle_top_door", "targetname");
	level namespace_ad23e503::function_1ab5ebec("dark_battle_hendricks_above");
	wait(2);
	var_f2c7e89 function_21d0da55(-90, 2);
	wait(2);
	level thread namespace_cc27597::function_43718187("door_dark_battle", "targetname");
	var_e09dab06 = function_6ada35ba("dark_room_entrance_door_clip", "targetname");
	var_e09dab06 function_921a1574("evt_dark_door_open");
	wait(1.5);
	var_e09dab06 function_8bdea13c(-144, 1);
	wait(1.5);
	var_e09dab06 function_dc8c8404();
	level namespace_ad23e503::function_74d6b22f("hendricks_door_open");
	namespace_9f824288::function_5d2cdd99();
	level thread function_f229e2b5();
	level waittill("hash_77aa39f6");
	level thread namespace_cba4cc55::function_423cfae8("surgical_catwalk_top_door", "close");
}

/*
	Name: function_3e856999
	Namespace: namespace_4c73eafb
	Checksum: 0xD60714EB
	Offset: 0x2048
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_3e856999()
{
	namespace_4dbf3ae3::function_1ab5ebec("dark_battle_down_stairs", "script_noteworthy", undefined, 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 1);
	level.var_2fd26037.var_7dfaf62 = 8;
	level thread function_6b91309b();
	level namespace_cc27597::function_43718187("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_pre_arrive");
	level namespace_cc27597::function_43718187("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_arrive");
	level namespace_ad23e503::function_74d6b22f("player_raise_hendricks_hendricks_ready");
	level thread function_5d8d8c7a();
	level namespace_ad23e503::function_1ab5ebec("player_raise_hendricks_player_ready");
	level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_arrive");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_a", &function_86c3565d, "play");
	level namespace_cc27597::function_8f9f34e0("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlea", &function_acc5d0c6, "play");
}

/*
	Name: function_86c3565d
	Namespace: namespace_4c73eafb
	Checksum: 0xAF9C0FF6
	Offset: 0x21E8
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_86c3565d(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("dark_battle_hendricks_above");
	function_37cbcf1a("evt_hend_door_beep", (4141, -3845, -5073));
}

/*
	Name: function_acc5d0c6
	Namespace: namespace_4c73eafb
	Checksum: 0x2DA38BFD
	Offset: 0x2248
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_acc5d0c6(var_c77d2837)
{
	namespace_4dbf3ae3::function_1ab5ebec("dark_battle_hendricks_flarecarry_b_trigger", undefined, undefined, 0);
	if(level namespace_ad23e503::function_7922262b("pallas_start"))
	{
	}
	else
	{
		level namespace_cc27597::function_8f9f34e0("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idleb", &function_d2c84b2f, "play");
		level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlea");
		level namespace_cc27597::function_43718187("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_b");
	}
}

/*
	Name: function_d2c84b2f
	Namespace: namespace_4c73eafb
	Checksum: 0x4741E1B
	Offset: 0x2318
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_d2c84b2f(var_c77d2837)
{
	namespace_4dbf3ae3::function_1ab5ebec("dark_battle_hendricks_flarecarry_c_trigger", undefined, undefined, 0);
	if(level namespace_ad23e503::function_7922262b("pallas_start"))
	{
	}
	else
	{
		level namespace_cc27597::function_8f9f34e0("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlec", &function_c8b6f250, "play");
		level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idleb");
		level namespace_cc27597::function_43718187("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_c");
	}
}

/*
	Name: function_c8b6f250
	Namespace: namespace_4c73eafb
	Checksum: 0xF259C933
	Offset: 0x23E8
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_c8b6f250(var_c77d2837)
{
	level namespace_ad23e503::function_1ab5ebec("dark_battle_hendricks_flarecarry_end");
	level thread function_9a64520();
	level namespace_76d95162::function_d9f49fba(0);
	level namespace_ad23e503::function_74d6b22f("dark_battle_hendricks_ambush");
	level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlec");
	level thread namespace_cc27597::function_43718187("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_d");
	level thread namespace_d40478f6::function_973b77f9();
	level namespace_82b91a51::function_67520c6a(30, undefined, &namespace_80983c42::function_67e7a937, "dark_battle_flare2");
}

/*
	Name: function_9a64520
	Namespace: namespace_4c73eafb
	Checksum: 0x92F43E3
	Offset: 0x24F8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_9a64520()
{
	level waittill("hash_391cc978");
	var_7d7c0d45 = "hendricks_backpack";
	if(!isdefined(level.var_6a876531["hendricks_backpack"]))
	{
		var_7d7c0d45 = "hendricks";
	}
	level.var_2fd26037 namespace_82b91a51::function_c49ce021(var_7d7c0d45);
	level.var_2fd26037 namespace_82b91a51::function_20ffc8ff();
}

/*
	Name: function_a8cfe9ae
	Namespace: namespace_4c73eafb
	Checksum: 0x86027323
	Offset: 0x2580
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_a8cfe9ae()
{
	level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlea");
	level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_b");
	level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idleb");
	level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_c");
	level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_idlec");
	level namespace_cc27597::function_fcf56ab5("cin_sgen_15_01_darkbattle_vign_new_flare_hendricks_d");
}

/*
	Name: function_40fa24f4
	Namespace: namespace_4c73eafb
	Checksum: 0x3183195C
	Offset: 0x2650
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_40fa24f4(var_c77d2837)
{
	level.var_2fd26037 namespace_cc27597::function_fcf56ab5();
}

/*
	Name: function_c760c273
	Namespace: namespace_4c73eafb
	Checksum: 0xEFADF028
	Offset: 0x2680
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_c760c273()
{
	var_bcabda32 = function_99201f25("surgical_facility_spawn_trigger", "targetname");
	namespace_84970cc4::function_966ecb29(var_bcabda32, &function_fed6294);
	var_62a3a7da = namespace_14b42b8a::function_7faf4c39("hendricks_riser");
	namespace_84970cc4::function_966ecb29(var_62a3a7da, &function_80aab711);
}

/*
	Name: function_80aab711
	Namespace: namespace_4c73eafb
	Checksum: 0x18E0E2A3
	Offset: 0x2728
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_80aab711()
{
	var_dc854c29 = function_6ada35ba("surgical_facility_spawner", "targetname");
	var_687222b4 = function_dc99997a(1, 3);
	var_f6c5842 = var_dc854c29 namespace_2f06d687::function_9b7fda5e(1);
	var_f6c5842 endon("hash_128f8789");
	self namespace_cc27597::function_c35e6aab("cin_sgen_15_04_robot_ambush_aie_arise_robot0" + var_687222b4 + "_water", var_f6c5842);
	var_f6c5842 namespace_ed09da6e::function_fbd51610();
	var_f6c5842.var_170527fb = "hendricks_riser_ai";
	level namespace_ad23e503::function_1ab5ebec("dark_battle_hendricks_ambush");
	wait(function_72a94f05(0.1, 1));
	var_f6c5842 thread namespace_ed09da6e::function_89ba9422();
	self namespace_cc27597::function_43718187("cin_sgen_15_04_robot_ambush_aie_arise_robot0" + var_687222b4 + "_water", var_f6c5842);
	var_713e715e = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	wait(10);
	var_f6c5842 function_2992720d();
}

/*
	Name: function_fed6294
	Namespace: namespace_4c73eafb
	Checksum: 0x91380E6B
	Offset: 0x28E8
	Size: 0x45B
	Parameters: 0
	Flags: None
*/
function function_fed6294()
{
	level endon("hash_a254d667");
	var_67825717 = undefined;
	var_b11bb32e = function_99201f25("surgical_facility_dark_battle_volume", "targetname");
	var_8272a926 = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6);
	var_b71ed4a2 = self.var_722885f3;
	var_562b538e = self.var_f8456b37;
	var_be1f149f = function_9b7fda5e("script_origin", self.var_722885f3 + VectorScale((0, 0, 1), 10));
	foreach(var_95b9818c in var_b11bb32e)
	{
		if(var_be1f149f function_32fa5072(var_95b9818c))
		{
			var_67825717 = var_95b9818c;
		}
	}
	var_be1f149f namespace_82b91a51::function_20ffc8ff();
	var_8272a926 = namespace_84970cc4::function_8332f7f6(var_8272a926);
	self waittill("hash_4dbf3ae3");
	var_fa08d055 = 0;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a function_32fa5072(var_67825717))
		{
			var_fa08d055++;
		}
	}
	switch(var_fa08d055)
	{
		case 1:
		{
			var_3548bc79 = 2;
			break;
		}
		case 2:
		{
			var_3548bc79 = 3;
			break;
		}
		case 3:
		{
			var_3548bc79 = 5;
			break;
		}
		case 4:
		{
			var_3548bc79 = 7;
			break;
		}
	}
	var_f66bfce8 = 0;
	var_64e85e6d = function_24e95264("all", "robot");
	foreach(var_f6c5842 in var_64e85e6d)
	{
		if(var_f6c5842 function_32fa5072(var_95b9818c))
		{
			var_f66bfce8++;
		}
	}
	foreach(var_e6b4a27f in var_8272a926)
	{
		if(var_4bc288a0 < var_3548bc79 && var_f66bfce8 < 24)
		{
			level thread function_454f9298(var_e6b4a27f, var_4bc288a0);
		}
	}
	level namespace_ad23e503::function_74d6b22f("water_robot_spawned");
}

/*
	Name: function_454f9298
	Namespace: namespace_4c73eafb
	Checksum: 0x278191CB
	Offset: 0x2D50
	Size: 0x173
	Parameters: 2
	Flags: None
*/
function function_454f9298(var_e6b4a27f, var_4bc288a0)
{
	var_dc854c29 = function_6ada35ba("surgical_facility_spawner", "targetname");
	if(var_4bc288a0 > 0)
	{
		wait(var_4bc288a0 + function_72a94f05(0.5, 1.5));
	}
	function_fd4ba5e1(level.var_c1aa5253["water_rise"], var_e6b4a27f.var_722885f3);
	var_f6c5842 = var_dc854c29 namespace_2f06d687::function_9b7fda5e(1);
	var_f6c5842 namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
	var_e6b4a27f namespace_cc27597::function_43718187("cin_sgen_15_04_robot_ambush_aie_arise_robot0" + function_dc99997a(1, 3) + "_water", var_f6c5842);
	var_f6c5842 thread namespace_cba4cc55::function_c22db411(2);
	var_f6c5842 namespace_71e9cb84::function_74d6b22f("sndStepSet", 1);
}

/*
	Name: function_69df7be3
	Namespace: namespace_4c73eafb
	Checksum: 0xF2D63946
	Offset: 0x2ED0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_69df7be3()
{
	var_a0b86a77 = self.var_b07228b6;
	level thread namespace_cba4cc55::function_423cfae8(var_a0b86a77, "open");
	self waittill("hash_4dbf3ae3", var_a3d46ee4);
	if(!isdefined(level.var_b5a36ce0))
	{
		level.var_b5a36ce0 = 1;
	}
	else
	{
		level.var_b5a36ce0++;
	}
	if(level.var_b5a36ce0 < 3)
	{
		level namespace_cc27597::function_fcf56ab5("cin_sgen_14_01_humanlab_vign_deadbodies", 1);
		level thread namespace_cba4cc55::function_423cfae8(var_a0b86a77, "close");
	}
}

/*
	Name: function_5f76850f
	Namespace: namespace_4c73eafb
	Checksum: 0x172EF5FB
	Offset: 0x2FA8
	Size: 0x393
	Parameters: 2
	Flags: None
*/
function function_5f76850f(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		level thread function_f229e2b5();
		namespace_d7916d65::function_a2995f22();
	}
	level thread function_bed8321d();
	level.var_b0d148eb = 6 + level.var_2395e945.size * 4;
	level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 1);
	level namespace_82b91a51::function_ef3f75eb("sndRHStart");
	level thread function_683fbc9();
	level thread function_cc91d61d();
	level thread function_6027d85b();
	namespace_646f304f::function_4ef8cf79();
	namespace_4dbf3ae3::function_1ab5ebec("weapons_research_vo");
	level namespace_ad23e503::function_74d6b22f("weapons_research_vo_start");
	level namespace_ad23e503::function_1ab5ebec("weapons_research_vo_done");
	var_e3b635fb = function_b8494651("team3");
	var_d11bed07 = [];
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(isdefined(var_d84e54db.var_55bed05e) && var_d84e54db.var_55bed05e)
		{
			if(!isdefined(var_d11bed07))
			{
				var_d11bed07 = [];
			}
			else if(!function_6e2770d8(var_d11bed07))
			{
				var_d11bed07 = function_84970cc4(var_d11bed07);
			}
			var_d11bed07[var_d11bed07.size] = var_d84e54db;
		}
	}
	if(var_d11bed07.size)
	{
		namespace_84970cc4::function_eaab05dc(var_d11bed07, &namespace_d84e54db::function_ceb883cd, "rogue_control_speed", "sprint");
		namespace_84970cc4::function_1ab5ebec(var_d11bed07, "death");
		wait(2);
	}
	namespace_1d795d47::function_be8adfb8("charging_station");
}

/*
	Name: function_9724b9d5
	Namespace: namespace_4c73eafb
	Checksum: 0x83768FF4
	Offset: 0x3348
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_9724b9d5(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_bed8321d
	Namespace: namespace_4c73eafb
	Checksum: 0x80718A3B
	Offset: 0x3378
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_bed8321d()
{
	var_3067ee68 = function_b8494651("axis", "team3");
	foreach(var_9b203de1 in var_3067ee68)
	{
		if(function_5b49d38c(var_9b203de1))
		{
			var_9b203de1 function_2992720d();
			namespace_82b91a51::function_76f13293();
		}
	}
}

/*
	Name: function_683fbc9
	Namespace: namespace_4c73eafb
	Checksum: 0xCAB63431
	Offset: 0x3460
	Size: 0x843
	Parameters: 0
	Flags: None
*/
function function_683fbc9()
{
	namespace_84970cc4::function_eaab05dc(function_99201f25("charging_station_flood_trigger", "script_noteworthy"), &function_8c1f7070);
	namespace_84970cc4::function_966ecb29(function_d35375b8("charging_station_corner_spawner", "script_noteworthy"), &namespace_2f06d687::function_994832bd, &function_e55310df);
	var_7082999f = namespace_14b42b8a::function_7faf4c39("charging_station_spawn_point");
	var_e95eb09f = function_6ada35ba("charging_station_trigger", "targetname");
	foreach(var_e6b4a27f in var_7082999f)
	{
		var_e6b4a27f function_471a9c28();
		if(var_4bc288a0 % 2 == 0)
		{
			namespace_82b91a51::function_76f13293();
		}
	}
	var_8b8ed7a5 = namespace_82b91a51::function_b9fd52a4("tag_origin");
	var_e95eb09f.var_7082999f = [];
	var_e95eb09f.var_7082999f["left"] = [];
	var_e95eb09f.var_7082999f["right"] = [];
	var_e95eb09f.var_57783f19 = [];
	var_e95eb09f.var_426817d3 = [];
	var_e95eb09f.var_426817d3["right"] = [];
	var_e95eb09f.var_426817d3["left"] = [];
	var_e95eb09f.var_f5d2f02a = function_99201f25(var_e95eb09f.var_b07228b6, "targetname");
	foreach(var_e6b4a27f in var_7082999f)
	{
		var_8b8ed7a5.var_722885f3 = var_e6b4a27f.var_722885f3;
		foreach(var_67825717 in var_e95eb09f.var_f5d2f02a)
		{
			if(var_8b8ed7a5 function_32fa5072(var_67825717) && var_e6b4a27f.var_caae374e === "real")
			{
				if(var_67825717.var_caae374e == "left_volume")
				{
					if(!isdefined(var_e95eb09f.var_7082999f["left"]))
					{
						var_e95eb09f.var_7082999f["left"] = [];
					}
					else if(!function_6e2770d8(var_e95eb09f.var_7082999f["left"]))
					{
						var_e95eb09f.var_7082999f["left"] = function_84970cc4(var_e95eb09f.var_7082999f["left"]);
					}
					var_e95eb09f.var_7082999f["left"][var_e95eb09f.var_7082999f["left"].size] = var_e6b4a27f;
				}
				else if(!isdefined(var_e95eb09f.var_7082999f["right"]))
				{
					var_e95eb09f.var_7082999f["right"] = [];
				}
				else if(!function_6e2770d8(var_e95eb09f.var_7082999f["right"]))
				{
					var_e95eb09f.var_7082999f["right"] = function_84970cc4(var_e95eb09f.var_7082999f["right"]);
				}
				var_e95eb09f.var_7082999f["right"][var_e95eb09f.var_7082999f["right"].size] = var_e6b4a27f;
				if(var_e6b4a27f.var_db7bb468 === "timed_start")
				{
					if(!isdefined(var_e95eb09f.var_57783f19))
					{
						var_e95eb09f.var_57783f19 = [];
					}
					else if(!function_6e2770d8(var_e95eb09f.var_57783f19))
					{
						var_e95eb09f.var_57783f19 = function_84970cc4(var_e95eb09f.var_57783f19);
					}
					var_e95eb09f.var_57783f19[var_e95eb09f.var_57783f19.size] = var_e6b4a27f;
					continue;
				}
				if(var_e6b4a27f.var_db7bb468 === "left_solo_start")
				{
					if(!isdefined(var_e95eb09f.var_426817d3["left"]))
					{
						var_e95eb09f.var_426817d3["left"] = [];
					}
					else if(!function_6e2770d8(var_e95eb09f.var_426817d3["left"]))
					{
						var_e95eb09f.var_426817d3["left"] = function_84970cc4(var_e95eb09f.var_426817d3["left"]);
					}
					var_e95eb09f.var_426817d3["left"][var_e95eb09f.var_426817d3["left"].size] = var_e6b4a27f;
					continue;
				}
				if(var_e6b4a27f.var_db7bb468 === "right_solo_start")
				{
					if(!isdefined(var_e95eb09f.var_426817d3["right"]))
					{
						var_e95eb09f.var_426817d3["right"] = [];
					}
					else if(!function_6e2770d8(var_e95eb09f.var_426817d3["right"]))
					{
						var_e95eb09f.var_426817d3["right"] = function_84970cc4(var_e95eb09f.var_426817d3["right"]);
					}
					var_e95eb09f.var_426817d3["right"][var_e95eb09f.var_426817d3["right"].size] = var_e6b4a27f;
				}
			}
		}
	}
	var_8b8ed7a5 namespace_82b91a51::function_20ffc8ff();
	var_e95eb09f thread function_14ae62b8();
}

/*
	Name: function_f229e2b5
	Namespace: namespace_4c73eafb
	Checksum: 0xC1420EB
	Offset: 0x3CB0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f229e2b5()
{
	namespace_d0ef8521::function_45d1556("charging_station_breadcrumb");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_goto_server_room_indicator", namespace_14b42b8a::function_7922262b("pallas_elevator_descent_objective"));
}

/*
	Name: function_cc91d61d
	Namespace: namespace_4c73eafb
	Checksum: 0xFE5F8C8A
	Offset: 0x3D08
	Size: 0x429
	Parameters: 0
	Flags: None
*/
function function_cc91d61d()
{
	var_26db055e = namespace_14b42b8a::function_7922262b("charging_station_power_on");
	var_197d929 = namespace_14b42b8a::function_7922262b(var_26db055e.var_b07228b6);
	namespace_4dbf3ae3::function_1ab5ebec("enter_charging_station", undefined, undefined, 0);
	namespace_82b91a51::function_67520c6a(1.5, undefined, &function_54efd092);
	namespace_82b91a51::function_67520c6a(0.25, undefined, &function_fe4282f);
	var_64e85e6d = function_99201f25("charging_station_ai", "targetname");
	var_fbbef3a = function_99201f25("charging_station_mdl", "targetname");
	var_35590ba = function_525ae497(var_64e85e6d, var_fbbef3a, 0, 0);
	var_bd95641e = [];
	foreach(var_6104a93b in var_35590ba)
	{
		var_4bc288a0 = namespace_cba4cc55::function_deb49c87(function_b6b79a0(var_6104a93b.var_722885f3[0]));
		if(!isdefined(var_bd95641e[var_4bc288a0]))
		{
			var_bd95641e[var_4bc288a0] = [];
		}
		if(!isdefined(var_bd95641e[var_4bc288a0]))
		{
			var_bd95641e[var_4bc288a0] = [];
		}
		else if(!function_6e2770d8(var_bd95641e[var_4bc288a0]))
		{
			var_bd95641e[var_4bc288a0] = function_84970cc4(var_bd95641e[var_4bc288a0]);
		}
		var_bd95641e[var_4bc288a0][var_bd95641e[var_4bc288a0].size] = var_6104a93b;
	}
	var_6572010 = function_391512da(var_bd95641e);
	var_d6c4ab70 = namespace_84970cc4::function_dd7191d(var_6572010);
	foreach(var_983c9e79 in var_d6c4ab70)
	{
		foreach(var_6104a93b in var_bd95641e[var_983c9e79])
		{
			if(function_e70ab977(var_6104a93b))
			{
				var_6104a93b namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_1");
				continue;
			}
			var_6104a93b namespace_71e9cb84::function_74d6b22f("turn_fake_robot_eye", 1);
		}
		wait(0.2);
	}
}

/*
	Name: function_fe4282f
	Namespace: namespace_4c73eafb
	Checksum: 0xD627A063
	Offset: 0x4140
	Size: 0x91
	Parameters: 0
	Flags: None
*/
function function_fe4282f()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("damage_light");
	}
}

/*
	Name: function_e55310df
	Namespace: namespace_4c73eafb
	Checksum: 0x70D462E9
	Offset: 0x41E0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e55310df()
{
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_2");
	self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "sprint");
}

/*
	Name: function_5e9ba6b0
	Namespace: namespace_4c73eafb
	Checksum: 0xF1F8A564
	Offset: 0x4240
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_5e9ba6b0(var_4ac85f5f)
{
	self endon("hash_4dbf3ae3");
	if(!level namespace_ad23e503::function_dbca4c5d(var_4ac85f5f))
	{
		level namespace_ad23e503::function_c35e6aab(var_4ac85f5f);
	}
	level namespace_ad23e503::function_1ab5ebec(var_4ac85f5f);
}

/*
	Name: function_14ae62b8
	Namespace: namespace_4c73eafb
	Checksum: 0x66DD27D7
	Offset: 0x42A8
	Size: 0x515
	Parameters: 0
	Flags: None
*/
function function_14ae62b8()
{
	level endon("hash_8b1af0b6");
	if(!level namespace_ad23e503::function_dbca4c5d("charging_chamber_spawn_gate"))
	{
		level namespace_ad23e503::function_c35e6aab("charging_chamber_spawn_gate");
	}
	self thread function_16c18dca();
	self waittill("hash_4dbf3ae3", var_6bfe1586);
	if(level.var_2395e945.size == 1 && !var_6bfe1586 function_f3b38c23())
	{
		namespace_4dbf3ae3::function_1ab5ebec("trig_solo_walk_spawns");
	}
	level thread namespace_d40478f6::function_29597dc9();
	level namespace_82b91a51::function_ef3f75eb("sndRHStop");
	level.var_65e3a64d = 0;
	var_72c8d114 = 0;
	var_63f2fbaf = 0;
	while(level.var_b0d148eb > 0)
	{
		var_e6b4a27f = undefined;
		var_7082999f = [];
		if(self.var_ba18db07 == "right" && self.var_7082999f["right"].size > 0)
		{
			var_7082999f = function_41f575c3(self.var_7082999f["right"]);
		}
		else if(self.var_ba18db07 == "left" && self.var_7082999f["left"].size > 0)
		{
			var_7082999f = function_41f575c3(self.var_7082999f["left"]);
		}
		else
		{
			var_7082999f = function_525ae497(self.var_7082999f["left"], self.var_7082999f["right"], 0, 0);
		}
		if(var_7082999f.size == 0)
		{
			break;
		}
		if(!var_72c8d114 && level.var_2395e945.size == 1 && self.var_ba18db07 != "both" && self.var_426817d3[self.var_ba18db07].size > 0)
		{
			var_e6b4a27f = namespace_84970cc4::function_47d18840(self.var_426817d3[self.var_ba18db07]);
			function_81403b2f(self.var_426817d3[self.var_ba18db07], var_e6b4a27f);
			if(self.var_426817d3[self.var_ba18db07].size == 0)
			{
				var_72c8d114 = 1;
			}
		}
		if(var_72c8d114 && !var_63f2fbaf)
		{
			foreach(var_3bfe0114 in self.var_57783f19)
			{
				function_81403b2f(self.var_7082999f["right"], var_3bfe0114);
				function_81403b2f(self.var_7082999f["left"], var_3bfe0114);
			}
			var_63f2fbaf = 1;
		}
		if(!isdefined(var_e6b4a27f))
		{
			var_e6b4a27f = namespace_84970cc4::function_47d18840(var_7082999f);
		}
		if(!(isdefined(var_e6b4a27f.var_55bed05e) && var_e6b4a27f.var_55bed05e))
		{
			var_e6b4a27f notify("hash_c6c70474");
			level.var_65e3a64d++;
			if(level.var_65e3a64d < 4)
			{
				wait(0.1 + 0.1 * level.var_65e3a64d);
			}
			else
			{
				wait(1.5 / level.var_2395e945.size);
			}
		}
		function_81403b2f(self.var_7082999f["right"], var_e6b4a27f);
		function_81403b2f(self.var_7082999f["left"], var_e6b4a27f);
		wait(0.05);
	}
	self notify("hash_dd4c949f");
}

/*
	Name: function_16c18dca
	Namespace: namespace_4c73eafb
	Checksum: 0x52C97F92
	Offset: 0x47C8
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_16c18dca()
{
	self endon("hash_128f8789");
	self endon("hash_dd4c949f");
	self.var_ba18db07 = "";
	while(1)
	{
		self.var_ba18db07 = "";
		var_57da092c = 0;
		var_e738900b = 0;
		foreach(var_67825717 in self.var_f5d2f02a)
		{
			foreach(var_6bfe1586 in level.var_9b1393e7)
			{
				if(var_6bfe1586 function_32fa5072(var_67825717))
				{
					if(var_67825717.var_caae374e == "left_volume")
					{
						var_57da092c = 1;
					}
					else
					{
						var_e738900b = 1;
					}
					break;
				}
			}
		}
		if(var_e738900b && var_57da092c)
		{
			self.var_ba18db07 = "both";
		}
		else if(var_e738900b)
		{
			self.var_ba18db07 = "right";
		}
		else
		{
			self.var_ba18db07 = "left";
		}
		wait(0.25);
	}
}

/*
	Name: function_54efd092
	Namespace: namespace_4c73eafb
	Checksum: 0x36751B4A
	Offset: 0x49C8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_54efd092()
{
	namespace_80983c42::function_80983c42("charging_station_001");
	wait(0.5);
	namespace_80983c42::function_80983c42("charging_station_002");
	wait(0.5);
	namespace_80983c42::function_80983c42("charging_station_005");
	wait(0.5);
	namespace_80983c42::function_80983c42("charging_station_006");
	wait(0.5);
	namespace_80983c42::function_80983c42("charging_station_003");
	wait(0.5);
	namespace_80983c42::function_80983c42("charging_station_007");
	wait(0.5);
	namespace_80983c42::function_80983c42("charging_station_004");
	wait(0.5);
	namespace_80983c42::function_80983c42("charging_station_008");
}

/*
	Name: function_e95882dc
	Namespace: namespace_4c73eafb
	Checksum: 0xBF3FCC2F
	Offset: 0x4AD0
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_e95882dc(var_c910f140)
{
	if(!isdefined(var_c910f140))
	{
		var_c910f140 = 1;
	}
	var_dc854c29 = function_6ada35ba("charging_station_spawner", "targetname");
	if(isdefined(var_c910f140) && var_c910f140)
	{
		self.var_f6c5842 = var_dc854c29 namespace_2f06d687::function_9b7fda5e(1);
		self.var_f6c5842.var_170527fb = "charging_station_ai";
		self.var_f6c5842 function_9869ab67(self.var_722885f3, self.var_6ab6f4fd);
		self.var_f6c5842.var_ff1f6868 = "descent";
		self thread function_ccf8a1e1();
	}
	else
	{
		self.var_1479fabb = namespace_82b91a51::function_b9fd52a4("c_cia_robot_grunt_1", self.var_722885f3, self.var_6ab6f4fd);
		self.var_1479fabb.var_170527fb = "charging_station_mdl";
		self.var_1479fabb.var_ff1f6868 = "descent";
		self thread function_ef879c87();
	}
}

/*
	Name: function_471a9c28
	Namespace: namespace_4c73eafb
	Checksum: 0xB44E0DD1
	Offset: 0x4C50
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_471a9c28()
{
	self.var_6ab6f4fd = self.var_6ab6f4fd * -1;
	self.var_722885f3 = self.var_722885f3 + VectorScale((0, 0, -1), 5.5);
	self.var_95fa96af = self.var_722885f3[2] > -5025;
	if(self.var_caae374e === "fail")
	{
		self function_e95882dc(0);
	}
	else if(self.var_caae374e === "real")
	{
		self function_e95882dc();
		if(!(isdefined(self.var_95fa96af) && self.var_95fa96af))
		{
			var_bfd88f7f = namespace_14b42b8a::function_7922262b(self.var_b07228b6);
			self.var_1a2b55a5 = namespace_82b91a51::function_b9fd52a4("p7_fxanim_cp_sgen_charging_station_doors_mod", var_bfd88f7f.var_722885f3, var_bfd88f7f.var_6ab6f4fd);
			self.var_1a2b55a5.var_ff1f6868 = "flood_combat";
			self.var_1a2b55a5.var_170527fb = "pod_track_model";
		}
		self.var_f6c5842 thread namespace_cc27597::function_43718187("cin_sgen_16_01_charging_station_aie_idle_robot01", self.var_f6c5842);
		self.var_f6c5842 thread namespace_cba4cc55::function_359855();
	}
	else if(self.var_caae374e === "static")
	{
		self.var_256c1ec4 = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self.var_6ab6f4fd);
		self.var_256c1ec4.var_ff1f6868 = "charging_station";
		self.var_256c1ec4.var_170527fb = "charging_station_mdl";
	}
}

/*
	Name: function_ef879c87
	Namespace: namespace_4c73eafb
	Checksum: 0xBF34770B
	Offset: 0x4E68
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_ef879c87()
{
	var_119839ea = self.var_722885f3[0] + function_dc99997a(64, 200);
	self.var_1479fabb function_4f87e1b9(-1);
	self.var_1479fabb function_5d64f4b4("idle_robot01", self.var_722885f3, self.var_6ab6f4fd + VectorScale((0, 1, 0), 180), "ch_sgen_16_01_charging_station_aie_idle_robot01");
	var_602f3c61 = 0;
	while(!var_602f3c61)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a.var_722885f3[0] < var_119839ea)
			{
				var_602f3c61 = 1;
				break;
			}
		}
		wait(0.2);
	}
	self.var_1479fabb function_5d64f4b4("fail_robot01", self.var_722885f3, self.var_6ab6f4fd + VectorScale((0, 1, 0), 180), "ch_sgen_16_01_charging_station_aie_fail_robot01");
}

/*
	Name: function_ccf8a1e1
	Namespace: namespace_4c73eafb
	Checksum: 0x960E602D
	Offset: 0x5020
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_ccf8a1e1()
{
	level endon("hash_38764c78");
	var_5a8fe35b = self namespace_82b91a51::function_45ce26d("awaken", "post_pallas");
	self.var_55bed05e = 1;
	self.var_f6c5842.var_55bed05e = 1;
	if(var_5a8fe35b === "awaken")
	{
		/#
			if(isdefined(level.var_65e3a64d))
			{
				function_d52b076d("Dev Block strings are not supported" + level.var_65e3a64d);
			}
		#/
		level.var_b0d148eb--;
		if(isdefined(self.var_1a2b55a5))
		{
			self.var_1a2b55a5 function_e48f905e("p7_fxanim_cp_sgen_charging_station_doors_break_mod");
		}
		var_e2f27339 = "cin_sgen_16_01_charging_station_aie_awaken_robot0";
		if(isdefined(level.var_65e3a64d) && level.var_65e3a64d < 3)
		{
			if(self.var_6ab6f4fd[1] == -90)
			{
			}
			else
			{
			}
			var_e2f27339 = 3 + 6;
		}
		else if(self.var_6ab6f4fd[1] == -90)
		{
		}
		else
		{
		}
		var_e2f27339 = function_dc99997a(1, 4) + function_dc99997a(4, 7);
		if(isdefined(self.var_1a2b55a5))
		{
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_e0dc8ecf = "p7_fxanim_cp_sgen_charging_station_break_03_bundle";
			if(isdefined(self.var_95fa96af) && self.var_95fa96af)
			{
			}
			else
			{
			}
			var_e0dc8ecf = var_e0dc8ecf;
			self thread function_b9349771(var_e0dc8ecf);
		}
		if(isdefined(self.var_95fa96af) && self.var_95fa96af)
		{
		}
		else
		{
		}
		var_e2f27339 = var_e2f27339;
		self.var_f6c5842 thread namespace_cc27597::function_43718187(var_e2f27339, self.var_f6c5842);
		self.var_f6c5842 thread namespace_cba4cc55::function_c22db411(2);
		wait(3);
		level namespace_ad23e503::function_74d6b22f("pod_robot_spawned");
	}
}

/*
	Name: function_b9349771
	Namespace: namespace_4c73eafb
	Checksum: 0x4E87AAF3
	Offset: 0x52E0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_b9349771(var_e0dc8ecf)
{
	self.var_f6c5842 endon("hash_128f8789");
	self.var_f6c5842 waittill("hash_81b40ff2");
	self.var_1a2b55a5 thread namespace_cc27597::function_43718187(var_e0dc8ecf, self.var_1a2b55a5);
}

/*
	Name: function_6027d85b
	Namespace: namespace_4c73eafb
	Checksum: 0x62CC186D
	Offset: 0x5340
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_6027d85b()
{
	thread function_a022fef1();
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_optics_back_on_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_copy_that_i_m_pic_0", 0.7);
	namespace_4dbf3ae3::function_1ab5ebec("enter_charging_station", undefined, undefined, 0);
	level namespace_71b8dba1::function_13b3b16a("plyr_robot_charging_stora_0");
	level namespace_71b8dba1::function_a463d127("kane_easy_take_your_ti_0");
	level namespace_71b8dba1::function_a463d127("hend_kane_i_got_separate_0");
	level namespace_ad23e503::function_1ab5ebec("pod_robot_spawned");
	level namespace_71b8dba1::function_a463d127("kane_get_outta_there_i_g_0", 2);
	wait(5);
	level namespace_ad23e503::function_d266a8b4(15, "weapons_research_vo_start");
	level thread namespace_d40478f6::function_89871797();
	level namespace_71b8dba1::function_13b3b16a("plyr_you_know_this_is_sta_0");
	level namespace_71b8dba1::function_a463d127("kane_the_chemicals_releas_0", 1);
	level namespace_71b8dba1::function_a463d127("hend_anyone_else_sense_a_0", 0.5);
	level namespace_ad23e503::function_74d6b22f("weapons_research_vo_done");
}

/*
	Name: function_a022fef1
	Namespace: namespace_4c73eafb
	Checksum: 0xF5225253
	Offset: 0x5530
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a022fef1()
{
	wait(0.5);
	function_37cbcf1a("gdt_oed_on", (0, 0, 0));
}

