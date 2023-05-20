#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_accolades;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_subway;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_concussive_wave;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai\systems\animation_state_machine_notetracks;
#using scripts\shared\ai\systems\animation_state_machine_utility;
#using scripts\shared\ai\systems\behavior_tree_utility;
#using scripts\shared\ai_shared;
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
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_8b9f718f;

/*
	Name: function_d290ebfa
	Namespace: namespace_8b9f718f
	Checksum: 0x81C3071B
	Offset: 0x2000
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread namespace_79e1cd97::function_9ad97cf7();
	level thread function_8c158bf0();
}

/*
	Name: function_bd209495
	Namespace: namespace_8b9f718f
	Checksum: 0xB8FD1D20
	Offset: 0x2040
	Size: 0x353
	Parameters: 2
	Flags: None
*/
function function_bd209495(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_anchor_intro");
		level thread namespace_79e1cd97::function_5d4fc658();
		level thread function_21f63154();
		level thread namespace_d0ef8521::function_45d1556("anchor_intro_breadcrumb", "cp_level_blackstation_climb");
		level thread function_109329ae();
		level thread namespace_79e1cd97::function_46dd77b0();
		namespace_d7916d65::function_a2995f22();
		wait(0.2);
		level thread namespace_79e1cd97::function_d1dc735f();
	}
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_boatroom_bundle");
	if(isdefined(level.var_ceae7aca))
	{
		level thread [[level.var_ceae7aca]]();
	}
	level thread function_b7f1a1f6();
	level thread namespace_79e1cd97::function_6778ea09("med_se");
	level thread function_ab78d20a();
	level thread namespace_79e1cd97::function_e7bf1516();
	level thread namespace_79e1cd97::function_3a563d3();
	level thread namespace_79e1cd97::function_cb28102c();
	level thread function_9ea179d0();
	level thread function_d9713ae3();
	level thread function_af475f02(1);
	level thread function_94ff5bc0();
	level thread namespace_79e1cd97::function_70aaf37b(0);
	var_3be169e6 = function_6ada35ba("anchor_intro_wind", "targetname");
	var_3be169e6 namespace_4dbf3ae3::function_1ab5ebec();
	var_3be169e6 thread namespace_79e1cd97::function_3c6fc4cb();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_79e1cd97::function_f2e7ba4b();
	}
	level namespace_ad23e503::function_1ab5ebec("anchor_intro_done");
	namespace_1d795d47::function_be8adfb8("objective_anchor_intro");
}

/*
	Name: function_88ddfb38
	Namespace: namespace_8b9f718f
	Checksum: 0xF265AED9
	Offset: 0x23A0
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_88ddfb38(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_umbrella_outdoor_worn_01_bundle");
}

/*
	Name: function_7a0b2bc4
	Namespace: namespace_8b9f718f
	Checksum: 0xBA465469
	Offset: 0x23F0
	Size: 0x54B
	Parameters: 2
	Flags: None
*/
function function_7a0b2bc4(var_b04bc952, var_74cd64bc)
{
	namespace_2f06d687::function_ef554cf7("axis", &function_13e164f4);
	namespace_2f06d687::function_2b37a3c9("port_enemy", "script_noteworthy", &function_f3d4c95b);
	namespace_2f06d687::function_2b37a3c9("wind_rpg", "script_string", &function_6a0ccfd);
	namespace_96fa87af::function_994832bd("port_assault_tech", &function_17894e22);
	level thread function_17c457d7();
	level thread namespace_d0ef8521::function_45d1556("port_assault_breadcrumb");
	level thread namespace_79e1cd97::function_6778ea09("med_se");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_80983c42::function_80983c42("fx_expl_hotel_rain_windows");
		namespace_79e1cd97::function_bff1a867("objective_port_assault");
		level thread namespace_79e1cd97::function_70aaf37b(1);
		level thread function_9ea179d0();
		level thread namespace_79e1cd97::function_5d4fc658();
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_blackstation_boatroom_bundle");
		namespace_4dbf3ae3::function_42e87952("trigger_hendricks_anchor_done");
		namespace_d7916d65::function_a2995f22();
		level namespace_ad23e503::function_74d6b22f("anchor_intro_done");
		level thread function_af475f02(0);
	}
	else
	{
		level thread function_925a5c0b();
	}
	level thread function_8ff7652d();
	level thread function_e00d64fc();
	level thread function_d66d3847();
	level thread function_6cf315c1();
	level thread function_b8500bb1();
	level thread function_5b85480f();
	level.var_2fd26037.var_f005c227 = 0;
	level thread function_b73344f6();
	var_12377408 = function_6ada35ba("port_assault_low_surge", "targetname");
	level thread namespace_79e1cd97::function_d3e22b53(var_12377408);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_79e1cd97::function_55221935);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "toggle_rain_sprite", 0);
	if(isdefined(level.var_eec0b3fd))
	{
		level thread [[level.var_eec0b3fd]]();
	}
	namespace_4dbf3ae3::function_42e87952("port_assault_start", "targetname", undefined, 0);
	namespace_4dbf3ae3::function_1ab5ebec("surge_tutorial");
	level namespace_ad23e503::function_74d6b22f("end_surge_start");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_these_waves_are_gonn_0");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_79e1cd97::function_3ceb3ad7();
	}
	level thread function_3e1b1aaa();
	namespace_ad23e503::function_1ab5ebec("start_barge");
	level thread function_3916ca15();
	level thread function_b28ad6d2();
	namespace_4dbf3ae3::function_1ab5ebec("end_port_assault");
	level namespace_1d795d47::function_be8adfb8("objective_port_assault");
}

/*
	Name: function_93433fef
	Namespace: namespace_8b9f718f
	Checksum: 0x9C507B34
	Offset: 0x2948
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_93433fef(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_goto_docks");
}

/*
	Name: function_43296c4c
	Namespace: namespace_8b9f718f
	Checksum: 0x92423B05
	Offset: 0x2990
	Size: 0x3AB
	Parameters: 2
	Flags: None
*/
function function_43296c4c(var_b04bc952, var_74cd64bc)
{
	function_6c1294b8("phys_gravity_dir", (0, -0.5, 0.9));
	level thread function_281ee5c2(var_74cd64bc);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread function_9ea179d0();
		level thread function_b8500bb1();
		level thread function_3916ca15();
		level thread function_5fc4b0f9(var_74cd64bc);
		namespace_79e1cd97::function_bff1a867("objective_barge_assault");
		level thread namespace_79e1cd97::function_70aaf37b(1);
		level.var_2fd26037.var_f005c227 = 0;
		var_12377408 = function_6ada35ba("port_assault_low_surge", "targetname");
		level thread namespace_79e1cd97::function_d3e22b53(var_12377408);
		namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_79e1cd97::function_55221935);
		namespace_2f06d687::function_ef554cf7("axis", &function_13e164f4);
		level namespace_ad23e503::function_8870cfa8(function_84970cc4("all_players_spawned", "start_objective_barge_assault"));
		namespace_4dbf3ae3::function_42e87952("move_to_pier");
	}
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "toggle_rain_sprite", 1);
	level thread namespace_d0ef8521::function_45d1556("barge_assault_breadcrumb");
	level thread namespace_79e1cd97::function_6778ea09("drench_se");
	level thread function_6bb14aef();
	level thread function_fd4da71();
	level thread function_2124978a();
	level thread function_ec409848();
	level thread function_22a0015b();
	level thread function_30f43af6();
	level thread function_7a7390dd();
	namespace_84970cc4::function_966ecb29(function_99201f25("barge_current", "targetname"), &namespace_79e1cd97::function_76b75dc7, "objective_storm_surge_terminate", -60, 300);
	level namespace_ad23e503::function_1ab5ebec("breached");
	level namespace_1d795d47::function_be8adfb8("objective_barge_assault");
}

/*
	Name: function_c57c7177
	Namespace: namespace_8b9f718f
	Checksum: 0xCFC0284F
	Offset: 0x2D48
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_c57c7177(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_board_ship");
}

/*
	Name: function_f93ea5f3
	Namespace: namespace_8b9f718f
	Checksum: 0x5282CA39
	Offset: 0x2D90
	Size: 0x20B
	Parameters: 2
	Flags: None
*/
function function_f93ea5f3(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_storm_surge");
		level thread namespace_79e1cd97::function_70aaf37b(1);
		level thread function_b8500bb1();
		level thread function_9ea179d0();
		level function_3916ca15();
		level thread function_3483fad0(var_74cd64bc);
		level thread function_5fc4b0f9(var_74cd64bc);
		level thread function_22a0015b();
		while(!level namespace_cc27597::function_92591589("p7_fxanim_cp_blackstation_barge_roof_break_bundle"))
		{
			namespace_82b91a51::function_76f13293();
		}
		namespace_d7916d65::function_a2995f22();
		namespace_4dbf3ae3::function_42e87952("hendricks_breach");
		namespace_84970cc4::function_966ecb29(function_99201f25("barge_current", "targetname"), &namespace_79e1cd97::function_76b75dc7, "objective_storm_surge_terminate", -60, 300);
	}
	namespace_2f06d687::function_d5e942a4("axis", &function_13e164f4);
	level namespace_ad23e503::function_1ab5ebec("tanker_ride_done");
	level namespace_1d795d47::function_be8adfb8("objective_storm_surge");
}

/*
	Name: function_7cde31a6
	Namespace: namespace_8b9f718f
	Checksum: 0x9E58FB7A
	Offset: 0x2FA8
	Size: 0x1D9
	Parameters: 4
	Flags: None
*/
function function_7cde31a6(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	var_30f598ff = function_99201f25("barge_ents", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_30f598ff, &namespace_82b91a51::function_20ffc8ff);
	var_4da28b01 = function_99201f25("barge_roof", "targetname");
	namespace_84970cc4::function_966ecb29(var_4da28b01, &namespace_82b91a51::function_20ffc8ff);
	var_ef0ea28e = function_99201f25("wharf_debris", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_ef0ea28e, &namespace_82b91a51::function_20ffc8ff);
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_wheelhouse");
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_intercept");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(isdefined(var_5dc5e20a.var_c4ed51d5))
		{
			var_5dc5e20a.var_c4ed51d5 function_dc8c8404();
		}
	}
}

/*
	Name: function_d9713ae3
	Namespace: namespace_8b9f718f
	Checksum: 0x564E754E
	Offset: 0x3190
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_d9713ae3()
{
	level endon("hash_34a87292");
	var_cbd11028 = function_84970cc4("hend_brace_yourself_0", "hend_wind_s_picking_up_0", "hend_anchor_now_0", "hend_use_your_anchor_0");
	while(1)
	{
		level waittill("hash_5dd3aa3a");
		if(!namespace_ad23e503::function_7922262b("warning_vo_played"))
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_wind_s_picking_up_0");
			namespace_ad23e503::function_74d6b22f("warning_vo_played");
		}
		else if(var_cbd11028.size)
		{
			var_3fe3c7c8 = namespace_84970cc4::function_47d18840(var_cbd11028);
			level.var_2fd26037 namespace_71b8dba1::function_81141386(var_3fe3c7c8);
			function_81403b2f(var_cbd11028, var_3fe3c7c8);
		}
		else
		{
			level notify("hash_34a87292");
		}
		wait(0.1);
	}
}

/*
	Name: function_b8735762
	Namespace: namespace_8b9f718f
	Checksum: 0x9ED0B9BC
	Offset: 0x32D0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_b8735762()
{
	switch(function_dc99997a(0, 2))
	{
		case 0:
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_wind_s_picking_up_0");
			break;
		}
		case 1:
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_anchor_now_0");
			break;
		}
		case default:
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_use_your_anchor_0");
			break;
		}
	}
}

/*
	Name: function_b7f1a1f6
	Namespace: namespace_8b9f718f
	Checksum: 0xBAD15DB2
	Offset: 0x3390
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_b7f1a1f6()
{
	level thread function_e774fcfd();
	level namespace_ad23e503::function_1ab5ebec("hendricks_debris_traversal_ready");
	level namespace_ad23e503::function_1ab5ebec("debris_path_one_ready");
	level thread namespace_cc27597::function_43718187("cin_bla_05_01_debristraversal_vign_useanchor_first_climb");
	level waittill("hash_6087df83");
	level function_e60704dd("debris_path_two_ready");
	level thread namespace_cc27597::function_43718187("cin_bla_05_01_debristraversal_vign_useanchor_second_climb");
	level waittill("hash_c52658cf");
	level function_e60704dd("debris_path_three_ready");
	var_294306eb = "cin_bla_05_01_debristraversal_vign_useanchor_splitpath_path_a_first";
	level thread namespace_cc27597::function_43718187(var_294306eb);
	level waittill("hash_6ec92f04");
	level function_e60704dd("debris_path_four_ready");
	var_294306eb = "cin_bla_05_01_debristraversal_vign_useanchor_splitpath_path_a_second";
	level thread namespace_cc27597::function_43718187(var_294306eb);
	level waittill("hash_9871d9f3");
	level function_e60704dd("debris_path_five_ready");
	level thread namespace_cc27597::function_43718187("cin_bla_05_01_debristraversal_vign_useanchor_end_climb");
	level waittill("hash_9871d9f3");
	level namespace_ad23e503::function_74d6b22f("allow_wind_gust");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_e60704dd
	Namespace: namespace_8b9f718f
	Checksum: 0x749F2A0A
	Offset: 0x3590
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_e60704dd(var_530a613c)
{
	level namespace_ad23e503::function_74d6b22f("end_gust_warning");
	level namespace_ad23e503::function_1ab5ebec(var_530a613c);
	wait(0.05);
	level namespace_ad23e503::function_9d134160("allow_wind_gust");
	level namespace_ad23e503::function_1ab5ebec("kill_weather");
}

/*
	Name: function_e774fcfd
	Namespace: namespace_8b9f718f
	Checksum: 0xB8873EB0
	Offset: 0x3628
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_e774fcfd()
{
	level namespace_ad23e503::function_1ab5ebec("debris_path_one_ready");
	if(!level namespace_ad23e503::function_7922262b("hendricks_anchor_close"))
	{
		level namespace_ad23e503::function_74d6b22f("allow_wind_gust");
		level namespace_ad23e503::function_1ab5ebec("hendricks_anchor_close");
		level namespace_ad23e503::function_9d134160("allow_wind_gust");
	}
}

/*
	Name: function_21f63154
	Namespace: namespace_8b9f718f
	Checksum: 0x91E0047C
	Offset: 0x36D8
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_21f63154()
{
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_anchor_beginning_event_back_bundle");
	namespace_82b91a51::function_76f13293();
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_anchor_beginning_event_left_bundle");
	namespace_82b91a51::function_76f13293();
	level thread function_e3f6a644("left");
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_anchor_beginning_event_right_bundle");
	namespace_82b91a51::function_76f13293();
	level thread function_e3f6a644("right");
	namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_anchor_beginning_car_debris_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_hendricks_hotel_approach");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_anchor_beginning_event_back_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("anchor_arch");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_anchor_beginning_car_debris_bundle");
}

/*
	Name: function_e3f6a644
	Namespace: namespace_8b9f718f
	Checksum: 0xC7D74AD2
	Offset: 0x3828
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_e3f6a644(var_19321990)
{
	var_ffa6bda7 = "anchor_fxanim_" + var_19321990;
	var_2818e4cc = function_6ada35ba(var_ffa6bda7, "targetname");
	var_2818e4cc endon("hash_128f8789");
	var_2818e4cc waittill("hash_4dbf3ae3");
	var_a3d1f031 = "p7_fxanim_cp_blackstation_anchor_beginning_event_" + var_19321990 + "_bundle";
	namespace_cc27597::function_43718187(var_a3d1f031);
}

/*
	Name: function_925a5c0b
	Namespace: namespace_8b9f718f
	Checksum: 0x69DF8F81
	Offset: 0x38D8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_925a5c0b()
{
	level namespace_ad23e503::function_1ab5ebec("setup_hotel_blocker");
	level thread namespace_79e1cd97::function_70aaf37b(1);
}

/*
	Name: function_af475f02
	Namespace: namespace_8b9f718f
	Checksum: 0xF34764DE
	Offset: 0x3920
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function function_af475f02(var_f47b4e2b)
{
	namespace_2f06d687::function_2b37a3c9("substation_enemy", "script_noteworthy", &function_ee4f2519);
	if(var_f47b4e2b)
	{
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_missile_building_bundle");
		namespace_4dbf3ae3::function_1ab5ebec("trigger_hendricks_anchor_done");
		level namespace_cc27597::function_c35e6aab("cin_bla_06_02_portassault_vign_roof_workers");
		level namespace_71b8dba1::function_a463d127("kane_we_are_a_go_on_dro_0");
		level thread namespace_71b8dba1::function_a463d127("dops_we_re_live_strike_i_0");
		namespace_4dbf3ae3::function_1ab5ebec("port_assault_start");
	}
	else
	{
		level namespace_cc27597::function_c35e6aab("cin_bla_06_02_portassault_vign_roof_workers");
		level thread function_b0f369dc();
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_missile_building_bundle");
	namespace_4dbf3ae3::function_42e87952("hotel_wait");
	level waittill("hash_97e1a565");
	level thread function_eabab8e4();
	level namespace_71b8dba1::function_a463d127("dops_negative_effect_inc_0");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	if(!level namespace_ad23e503::function_7922262b("hotel_exit"))
	{
		level namespace_cc27597::function_8f9f34e0("cin_bla_06_02_portassault_vign_drone_react", &function_84be5124);
		level namespace_cc27597::function_43718187("cin_bla_06_02_portassault_vign_drone_react");
	}
	else if(level namespace_cc27597::function_444aea32("cin_bla_06_02_portassault_vign_drone_react"))
	{
		level namespace_cc27597::function_fcf56ab5("cin_bla_06_02_portassault_vign_drone_react");
	}
	level thread namespace_4297372::function_91146001();
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level namespace_ad23e503::function_74d6b22f("drone_strike");
}

/*
	Name: function_eabab8e4
	Namespace: namespace_8b9f718f
	Checksum: 0x717708D5
	Offset: 0x3BE8
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_eabab8e4()
{
	var_c6dce143 = namespace_14b42b8a::function_7922262b("objective_port_assault_ai");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(function_316422d1(var_5dc5e20a.var_722885f3, var_c6dce143.var_722885f3) <= 490000)
		{
			var_5dc5e20a function_e2af603e("cp_blackstation_tanker_building_rumble");
		}
	}
}

/*
	Name: function_84be5124
	Namespace: namespace_8b9f718f
	Checksum: 0x4C94D2E3
	Offset: 0x3CE0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_84be5124(var_c77d2837)
{
	wait(1);
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_42e87952("triggercolor_drone_strike");
}

/*
	Name: function_b0f369dc
	Namespace: namespace_8b9f718f
	Checksum: 0x380F830
	Offset: 0x3D30
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b0f369dc()
{
	var_fd585438 = function_b4cb3503("anchor_end_wait", "targetname");
	level.var_2fd26037 function_169cc712(var_fd585438, 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level namespace_cc27597::function_c35e6aab("cin_bla_06_02_portassault_vign_drone_react");
}

/*
	Name: function_9ba20f95
	Namespace: namespace_8b9f718f
	Checksum: 0xF229AC55
	Offset: 0x3DC0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9ba20f95()
{
	level endon("hash_99060364");
	level thread namespace_79e1cd97::function_c2d8b452("lightning_port", "surge_done");
}

/*
	Name: function_17c457d7
	Namespace: namespace_8b9f718f
	Checksum: 0xC2386656
	Offset: 0x3E00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_17c457d7()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_roof_vent_bundle");
	level waittill("hash_1718ca4b");
	level thread namespace_cc27597::function_43718187("cin_bla_06_02_portassault_vign_roof_workers");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_roof_vent_bundle");
}

/*
	Name: function_ee4f2519
	Namespace: namespace_8b9f718f
	Checksum: 0xC8CEB17
	Offset: 0x3E78
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_ee4f2519(var_695fdfde)
{
	self endon("hash_128f8789");
	self.var_284432c3 = 0;
	self thread namespace_23567e72::function_af8faf92();
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 1;
	self function_169cc712(self.var_722885f3);
	level waittill("hash_1718ca4b");
	self thread function_eb6b6084();
}

/*
	Name: function_eb6b6084
	Namespace: namespace_8b9f718f
	Checksum: 0x67CA62AF
	Offset: 0x3F50
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_eb6b6084()
{
	self endon("hash_128f8789");
	wait(function_72a94f05(0.3, 1));
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	var_10729d99 = namespace_14b42b8a::function_7922262b("retreat_pt1");
	var_9c34d7b = namespace_14b42b8a::function_7922262b("retreat_pt2");
	var_96eed922 = namespace_14b42b8a::function_7922262b("retreat_pt3");
	var_c3b4c42a = function_6ada35ba("vol_port_building", "targetname");
	self.var_7dfaf62 = 2048;
	self function_169cc712(var_10729d99.var_722885f3 + (function_26299103(80), function_26299103(80), 0), 1);
	self waittill("hash_41d1aaf0");
	self function_169cc712(var_9c34d7b.var_722885f3 + (function_26299103(80), function_26299103(80), 0), 1);
	self waittill("hash_41d1aaf0");
	self function_169cc712(var_96eed922.var_722885f3 + (function_26299103(120), function_26299103(120), 0), 1);
	self waittill("hash_41d1aaf0");
	self function_e11ce512();
	self function_169cc712(var_c3b4c42a);
}

/*
	Name: function_d66d3847
	Namespace: namespace_8b9f718f
	Checksum: 0x13074DDB
	Offset: 0x41C8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_d66d3847()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_surge_debris1");
	var_8b856a66 = function_6ada35ba("surge_port_start", "script_noteworthy");
	var_64dd962c = function_99201f25("debris_surge_0", "targetname");
	level thread namespace_79e1cd97::function_3c57957(var_8b856a66, var_64dd962c, "start_barge");
}

/*
	Name: function_6cf315c1
	Namespace: namespace_8b9f718f
	Checksum: 0x1551FCE2
	Offset: 0x4270
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_6cf315c1()
{
	level namespace_ad23e503::function_1ab5ebec("start_barge");
	var_8b856a66 = function_6ada35ba("surge_port_restaurant", "script_noteworthy");
	while(level namespace_ad23e503::function_7922262b("surge_active"))
	{
		wait(0.05);
	}
	level thread namespace_79e1cd97::function_3c57957(var_8b856a66, undefined, "end_surge_rest");
}

/*
	Name: function_5fc4b0f9
	Namespace: namespace_8b9f718f
	Checksum: 0xF752D68B
	Offset: 0x4318
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_5fc4b0f9(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	var_8b856a66 = function_6ada35ba("surge_port_authority", "script_noteworthy");
	var_ef0ea28e = function_99201f25("wharf_debris", "script_noteworthy");
	foreach(var_97a8ad2e in var_ef0ea28e)
	{
		var_97a8ad2e thread namespace_79e1cd97::function_98c7a42();
	}
	level thread namespace_79e1cd97::function_3c57957(var_8b856a66, var_ef0ea28e, "barge_breach_cleared");
	if(!var_74cd64bc)
	{
		level thread function_d37a023d();
	}
}

/*
	Name: function_d37a023d
	Namespace: namespace_8b9f718f
	Checksum: 0xFA0E5036
	Offset: 0x4460
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_d37a023d()
{
	level endon("hash_f2113aa5");
	var_4beb42a4 = [];
	var_c891e2e5 = function_b4cb3503("covernode_surge_1", "script_noteworthy");
	var_ee945d4e = function_b4cb3503("covernode_surge_2", "script_noteworthy");
	if(!isdefined(var_4beb42a4))
	{
		var_4beb42a4 = [];
	}
	else if(!function_6e2770d8(var_4beb42a4))
	{
		var_4beb42a4 = function_84970cc4(var_4beb42a4);
	}
	var_4beb42a4[var_4beb42a4.size] = var_ee945d4e;
	var_1496d7b7 = function_b4cb3503("covernode_surge_3", "script_noteworthy");
	if(!isdefined(var_4beb42a4))
	{
		var_4beb42a4 = [];
	}
	else if(!function_6e2770d8(var_4beb42a4))
	{
		var_4beb42a4 = function_84970cc4(var_4beb42a4);
	}
	var_4beb42a4[var_4beb42a4.size] = var_1496d7b7;
	var_a857ed8 = function_b4cb3503("covernode_surge_4", "script_noteworthy");
	if(!isdefined(var_4beb42a4))
	{
		var_4beb42a4 = [];
	}
	else if(!function_6e2770d8(var_4beb42a4))
	{
		var_4beb42a4 = function_84970cc4(var_4beb42a4);
	}
	var_4beb42a4[var_4beb42a4.size] = var_a857ed8;
	foreach(var_974cc07 in var_4beb42a4)
	{
		function_d224409e(var_974cc07, 0);
	}
	function_41eafef6(var_ee945d4e, var_c891e2e5, "triggercolor_port_cover2");
	function_41eafef6(var_1496d7b7, var_ee945d4e, "triggercolor_port_cover3");
	function_41eafef6(var_a857ed8, var_1496d7b7, "triggercolor_port_cover4");
}

/*
	Name: function_41eafef6
	Namespace: namespace_8b9f718f
	Checksum: 0x519FA99B
	Offset: 0x4738
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_41eafef6(var_4b32b0bd, var_64fcc6c4, var_72001283)
{
	level namespace_ad23e503::function_1ab5ebec("cover_switch");
	function_d224409e(var_4b32b0bd, 1);
	wait(0.1);
	namespace_4dbf3ae3::function_42e87952(var_72001283);
	function_d224409e(var_64fcc6c4, 0);
	level namespace_ad23e503::function_9d134160("cover_switch");
}

/*
	Name: function_8ff7652d
	Namespace: namespace_8b9f718f
	Checksum: 0xD987D920
	Offset: 0x47F0
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_8ff7652d()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_port_sniper");
	level namespace_ad23e503::function_74d6b22f("end_surge_rest");
	level thread function_83fc27b8();
	namespace_d5067552::function_bae40a28("sm_pa_sniper");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_port_building", "script_noteworthy");
	level thread function_5fc4b0f9();
	level thread function_a5f89f57();
	level thread function_7ef21283();
	level thread function_9e33130c();
	namespace_d5067552::function_bae40a28("sm_port_authority");
	wait(3);
	namespace_d5067552::function_bae40a28("sm_rooftop_suppressor");
	if(level.var_2395e945.size > 1)
	{
		namespace_d5067552::function_72e3dd35("sm_pa_sniper");
	}
	level namespace_ad23e503::function_74d6b22f("swept_away");
	namespace_d5067552::function_72e3dd35("sm_rooftop_suppressor");
	namespace_d5067552::function_27bf2e8("sm_port_authority", 3);
	namespace_4dbf3ae3::function_42e87952("trigger_truck_port", "targetname", undefined, 0);
	wait(4);
	level namespace_ad23e503::function_74d6b22f("enter_port");
}

/*
	Name: function_9e33130c
	Namespace: namespace_8b9f718f
	Checksum: 0xF73A8777
	Offset: 0x49E8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9e33130c()
{
	level namespace_ad23e503::function_1ab5ebec("swept_away");
	namespace_2f06d687::function_22356ba7("port_authority_swept");
}

/*
	Name: function_83fc27b8
	Namespace: namespace_8b9f718f
	Checksum: 0x86EFDC37
	Offset: 0x4A30
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_83fc27b8()
{
	var_746111be = namespace_82b91a51::function_b9fd52a4("tag_origin");
	var_746111be.var_170527fb = "wind_target";
	var_746111be.var_ff1f6868 = "objective_barge_assault";
	var_746111be endon("hash_128f8789");
	var_e32e572f = namespace_14b42b8a::function_7faf4c39("wind_target");
	while(1)
	{
		var_26aaa5cc = var_e32e572f[function_26299103(var_e32e572f.size)];
		var_746111be.var_722885f3 = var_26aaa5cc.var_722885f3;
		wait(2);
	}
}

/*
	Name: function_f3d4c95b
	Namespace: namespace_8b9f718f
	Checksum: 0x1CCD35B3
	Offset: 0x4B18
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f3d4c95b()
{
	self endon("hash_128f8789");
	self.var_d937392f = 0;
	self.var_284432c3 = 0;
}

/*
	Name: function_6a0ccfd
	Namespace: namespace_8b9f718f
	Checksum: 0xBE17680E
	Offset: 0x4B48
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_6a0ccfd()
{
	var_92f29fd5 = function_c4d5ec1f("launcher_guided_blackstation_ai");
	self namespace_d84e54db::function_7901ac63(var_92f29fd5, "right");
	self thread namespace_79e1cd97::function_ef275fb3();
}

/*
	Name: function_a5f89f57
	Namespace: namespace_8b9f718f
	Checksum: 0x6432843F
	Offset: 0x4BB8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_a5f89f57()
{
	level namespace_ad23e503::function_1ab5ebec("enter_port");
	namespace_4dbf3ae3::function_42e87952("triggercolor_port_building");
}

/*
	Name: function_e00d64fc
	Namespace: namespace_8b9f718f
	Checksum: 0x6F74CD12
	Offset: 0x4C00
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_e00d64fc()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_truck_port");
	var_45900c37 = namespace_96fa87af::function_7387a40a("port_assault_tech");
	var_3c54858a = function_243bb261(var_45900c37.var_b07228b6, "targetname");
	var_45900c37 thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
}

/*
	Name: function_7ef21283
	Namespace: namespace_8b9f718f
	Checksum: 0x8B64CC48
	Offset: 0x4C98
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_7ef21283()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_port_interior");
	namespace_2f06d687::function_2b37a3c9("port_interior", "targetname", &function_da7b81a5);
	namespace_d5067552::function_bae40a28("sm_port_interior");
}

/*
	Name: function_da7b81a5
	Namespace: namespace_8b9f718f
	Checksum: 0x60AAF0DD
	Offset: 0x4D08
	Size: 0x115
	Parameters: 0
	Flags: None
*/
function function_da7b81a5()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_port_advance");
	while(1)
	{
		var_377a9c22 = namespace_82b91a51::function_fa8a28f1(self.var_722885f3, "allies");
		var_3aa9c6b0 = function_eed6dab7(var_377a9c22.var_722885f3, 82, 32);
		if(isdefined(var_3aa9c6b0))
		{
			var_72237359 = namespace_82b91a51::function_ee78923e(var_3aa9c6b0, self.var_bdf12110, self.var_a01aef5a, 70, 40, self);
			if(var_72237359.size > 0)
			{
				self function_169cc712(namespace_84970cc4::function_47d18840(var_72237359), 1);
			}
		}
		wait(3);
	}
}

/*
	Name: function_3e1b1aaa
	Namespace: namespace_8b9f718f
	Checksum: 0x80C5590
	Offset: 0x4E28
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_3e1b1aaa()
{
	level endon("hash_9bfd16b7");
	level waittill("hash_81a3b4e0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_waves_hitting_now_0");
}

/*
	Name: function_3916ca15
	Namespace: namespace_8b9f718f
	Checksum: 0x31BA2012
	Offset: 0x4E70
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_3916ca15()
{
	level endon("hash_b36ffbd");
	var_83067764 = function_6ada35ba("bs_dock_tugboat", "targetname");
	var_83067764 function_c5ca9512();
	level thread function_f8ff4031();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_barge_idle_storm_bundle");
	var_83067764 thread function_a56a2ed2();
}

/*
	Name: function_c5ca9512
	Namespace: namespace_8b9f718f
	Checksum: 0x81212BA5
	Offset: 0x4F18
	Size: 0x7E3
	Parameters: 0
	Flags: None
*/
function function_c5ca9512()
{
	var_b9264a5 = function_b4cb3503("deck_traversal", "targetname");
	function_47d28a09(var_b9264a5);
	var_6df191e = namespace_14b42b8a::function_7922262b("tag_align_hendricks_barge");
	var_197f1988 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_6df191e.var_722885f3, var_6df191e.var_6ab6f4fd);
	var_197f1988.var_170527fb = "barge_align";
	var_197f1988.var_ff1f6868 = "objective_storm_surge";
	var_197f1988 function_37f7858a(self);
	var_13335379 = function_99201f25("barge_trigger", "script_noteworthy");
	foreach(var_4dbf3ae3 in var_13335379)
	{
		var_4dbf3ae3 function_8f279593();
		var_4dbf3ae3 function_37f7858a(self);
	}
	var_8ca0a44f = function_6ada35ba("barge_wave_fx", "targetname");
	var_8ca0a44f function_37f7858a(self);
	var_d5005d3f = function_6ada35ba("barge_container_door_left", "targetname");
	var_d5005d3f function_c0b6566f(VectorScale((0, -1, 0), 5), 0.05);
	var_d5005d3f waittill("hash_6654e4f4");
	var_d5005d3f function_37f7858a(self);
	var_d9350cda = function_6ada35ba("barge_container_door_right", "targetname");
	var_d9350cda function_c0b6566f(VectorScale((0, 1, 0), 5), 0.05);
	var_d9350cda waittill("hash_6654e4f4");
	var_d9350cda function_37f7858a(self);
	var_30f598ff = function_99201f25("barge_ents", "script_noteworthy");
	foreach(var_541ddd5c in var_30f598ff)
	{
		var_541ddd5c function_37f7858a(self);
	}
	var_cf82ed09 = function_99201f25("player_breach_trigger", "script_noteworthy");
	level.var_5b610bbd = [];
	foreach(var_4dbf3ae3 in var_cf82ed09)
	{
		var_4bc288a0 = function_b6b79a0(var_4dbf3ae3.var_6604b19f) - 1;
		var_7345ca74 = function_6ada35ba(var_4dbf3ae3.var_b07228b6, "targetname");
		var_fba28ca1 = function_6ada35ba(var_7345ca74.var_b07228b6, "targetname");
		var_4dbf3ae3 function_8f279593();
		var_4dbf3ae3 function_37f7858a(self);
		level.var_5b610bbd[var_4bc288a0] = namespace_82b91a51::function_14518e76(var_4dbf3ae3, &"cp_level_blackstation_interact_breach", &"CP_MI_SING_BLACKSTATION_BREACH", &function_f686643b);
		level.var_5b610bbd[var_4bc288a0] function_173b4bfe();
		level.var_5b610bbd[var_4bc288a0] thread function_307c2864();
		level.var_5b610bbd[var_4bc288a0].var_b07228b6 = var_4dbf3ae3.var_170527fb;
		level.var_5b610bbd[var_4bc288a0] function_37f7858a(self);
		var_7345ca74 function_37f7858a(self);
		var_fba28ca1 function_37f7858a(self);
	}
	var_52a2c714 = function_99201f25("barge_lights", "targetname");
	foreach(var_7c14d90b in var_52a2c714)
	{
		var_7c14d90b function_37f7858a(self);
	}
	var_70eb06cf = function_fe0cfd2e("wheelhouse_node", "script_noteworthy");
	foreach(var_16758b6f in var_70eb06cf)
	{
		function_d224409e(var_16758b6f, 0);
	}
	function_da6acfd2(level.var_c1aa5253["barge_sheeting"], self, "tag_wheelhouse_fxanim_jnt");
	level thread function_8dc0d020();
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_b3d8d3f5);
}

/*
	Name: function_b3d8d3f5
	Namespace: namespace_8b9f718f
	Checksum: 0x4DE34ABD
	Offset: 0x5708
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_b3d8d3f5()
{
	self notify("hash_ec691523");
	self endon("hash_ec691523");
	level endon("hash_9bfd16b7");
	self endon("hash_128f8789");
	var_83067764 = function_6ada35ba("bs_dock_tugboat", "targetname");
	var_83067764 endon("hash_128f8789");
	var_7a15f6e6 = function_6ada35ba("barge_ground_ref", "targetname");
	var_7a15f6e6 endon("hash_128f8789");
	while(1)
	{
		if(self function_32fa5072(var_7a15f6e6) && !self.var_20aea9e5)
		{
			self.var_20aea9e5 = 1;
			self function_ff57a1a9(var_83067764);
		}
		else if(!self function_32fa5072(var_7a15f6e6) && self.var_20aea9e5)
		{
			self function_ff57a1a9(undefined);
			self.var_20aea9e5 = 0;
		}
		wait(0.05);
	}
}

/*
	Name: function_f8ff4031
	Namespace: namespace_8b9f718f
	Checksum: 0x21C62B8
	Offset: 0x5870
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f8ff4031()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_pier_event_01_bundle");
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_pier_event_03_bundle");
}

/*
	Name: function_a56a2ed2
	Namespace: namespace_8b9f718f
	Checksum: 0x958218F2
	Offset: 0x58D0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_a56a2ed2()
{
	var_b12b2cfc = self.var_6ab6f4fd;
	var_c6f2fa46 = self.var_722885f3;
	level namespace_ad23e503::function_1ab5ebec("tanker_smash");
	level notify("hash_b36ffbd");
	wait(1);
	level namespace_ad23e503::function_74d6b22f("tanker_face");
}

/*
	Name: function_6bb14aef
	Namespace: namespace_8b9f718f
	Checksum: 0xB9C5AB8A
	Offset: 0x5958
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_6bb14aef()
{
	level thread function_36dfb0a2();
}

/*
	Name: function_ec409848
	Namespace: namespace_8b9f718f
	Checksum: 0x7E704B0F
	Offset: 0x5980
	Size: 0x2CB
	Parameters: 1
	Flags: None
*/
function function_ec409848(var_6e2f783e)
{
	if(!isdefined(var_6e2f783e))
	{
		var_6e2f783e = 0;
	}
	var_f4520dcf = function_b4cb3503("container_node", "targetname");
	level thread function_42df2efb();
	level thread function_d091f076();
	wait(1);
	namespace_d5067552::function_72e3dd35("sm_barge");
	namespace_d5067552::function_72e3dd35("sm_barge_cqb");
	level thread function_2a6c042b();
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_board_ship");
	level namespace_71b8dba1::function_13b3b16a("plyr_all_clear_0");
	level namespace_ad23e503::function_1ab5ebec("hendricks_on_barge");
	level.var_2fd26037 function_169cc712(var_f4520dcf);
	wait(2);
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_we_ve_reached_0");
	level namespace_71b8dba1::function_a463d127("kane_interface_with_the_p_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_can_do_that_0");
	level namespace_71b8dba1::function_a463d127("kane_your_dni_is_connecte_0");
	level function_d1996775();
	level namespace_71b8dba1::function_a463d127("kane_files_secured_and_re_0");
	level notify("hash_4561e3f");
	namespace_4dbf3ae3::function_42e87952("hendricks_breach");
	level namespace_71b8dba1::function_a463d127("kane_storm_s_getting_wors_0", 0.1);
	level namespace_71b8dba1::function_13b3b16a("plyr_got_it_thanks_kane_0");
	level thread namespace_4297372::function_973b77f9();
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_i_ll_take_the_upper_0");
	level thread function_77531405();
	level thread function_3483fad0();
}

/*
	Name: function_2a6c042b
	Namespace: namespace_8b9f718f
	Checksum: 0x545E27A3
	Offset: 0x5C58
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_2a6c042b()
{
	var_24bbf032 = function_b8494651("axis");
	foreach(var_2eecd77a in var_24bbf032)
	{
		if(function_5b49d38c(var_2eecd77a))
		{
			var_2eecd77a function_2992720d();
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_d091f076
	Namespace: namespace_8b9f718f
	Checksum: 0xF8171A59
	Offset: 0x5D38
	Size: 0x1A1
	Parameters: 0
	Flags: None
*/
function function_d091f076()
{
	namespace_d5067552::function_27bf2e8("sm_barge", 2);
	namespace_d5067552::function_27bf2e8("sm_barge_cqb", 2);
	var_a6abef8a = function_525ae497(namespace_d5067552::function_423eae50("sm_barge"), namespace_d5067552::function_423eae50("sm_barge_cqb"), 0, 0);
	foreach(var_8d4ec191 in var_a6abef8a)
	{
		var_8d4ec191 function_169cc712(function_6ada35ba("vol_center", "targetname"), 1, 16);
		var_8d4ec191 namespace_82b91a51::function_67520c6a(function_dc99997a(15, 18), undefined, &namespace_d84e54db::function_8c969347, function_dc99997a(5, 15), "neck");
	}
}

/*
	Name: function_d1996775
	Namespace: namespace_8b9f718f
	Checksum: 0xA0B6E11A
	Offset: 0x5EE8
	Size: 0x18F
	Parameters: 0
	Flags: None
*/
function function_d1996775()
{
	level thread function_5edd0266();
	level namespace_ad23e503::function_74d6b22f("container_console_active");
	var_83067764 = function_6ada35ba("bs_dock_tugboat", "targetname");
	var_da697227 = function_6ada35ba("container_hack", "targetname");
	var_376507c0 = &"cp_hacking_console";
	var_f6e313be = &"CP_MI_SING_BLACKSTATION_CONSOLE_HACK";
	var_2661661a = var_da697227 namespace_ac959fba::function_68df65d8(6, var_376507c0, var_f6e313be, undefined, undefined, var_83067764);
	var_2661661a.var_bca3110 = 1;
	var_2661661a.var_b07228b6 = var_da697227.var_170527fb;
	var_2661661a function_37f7858a(var_83067764);
	var_da697227 namespace_ac959fba::function_7373f13d();
	var_da697227 function_175e6b8e(0);
	if(isdefined(level.var_2acebcf0))
	{
		level thread [[level.var_2acebcf0]]();
	}
}

/*
	Name: function_5edd0266
	Namespace: namespace_8b9f718f
	Checksum: 0x32B38ACB
	Offset: 0x6080
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_5edd0266()
{
	level.var_ac959fba namespace_ad23e503::function_1ab5ebec("in_progress");
	function_6ada35ba("barge_monitor_on", "targetname") function_dc8c8404();
	function_6ada35ba("barge_monitor_glitch_1", "targetname") function_48f26766();
	wait(1.5);
	function_6ada35ba("barge_monitor_glitch_1", "targetname") function_dc8c8404();
	function_6ada35ba("barge_monitor_glitch_2", "targetname") function_48f26766();
	wait(1.5);
	function_6ada35ba("barge_monitor_glitch_2", "targetname") function_dc8c8404();
	function_6ada35ba("barge_monitor_off", "targetname") function_48f26766();
}

/*
	Name: function_42df2efb
	Namespace: namespace_8b9f718f
	Checksum: 0xFA5C2F06
	Offset: 0x61E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_42df2efb()
{
	namespace_4dbf3ae3::function_1ab5ebec("barge_ground_ref");
	namespace_d5067552::function_2992720d("sm_barge");
	namespace_d5067552::function_2992720d("sm_barge_cqb");
}

/*
	Name: function_3483fad0
	Namespace: namespace_8b9f718f
	Checksum: 0xC3D13C3E
	Offset: 0x6238
	Size: 0x20B
	Parameters: 1
	Flags: None
*/
function function_3483fad0(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_wheelhouse");
	var_70eb06cf = function_fe0cfd2e("wheelhouse_node", "script_noteworthy");
	foreach(var_16758b6f in var_70eb06cf)
	{
		function_d224409e(var_16758b6f, 1);
	}
	if(!var_74cd64bc)
	{
		namespace_9f824288::function_5d2cdd99();
	}
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		function_ad89287b();
	}
	namespace_dabbe128::function_356a4ee1(&function_ad89287b);
	namespace_dabbe128::function_95670def(&function_b5455e18);
	level namespace_ad23e503::function_74d6b22f("breach_active");
}

/*
	Name: function_f686643b
	Namespace: namespace_8b9f718f
	Checksum: 0x3600A4AE
	Offset: 0x6450
	Size: 0x117
	Parameters: 1
	Flags: None
*/
function function_f686643b(var_6bfe1586)
{
	self.var_4dbf3ae3 endon("hash_128f8789");
	level endon("hash_e1526d21");
	var_6bfe1586 namespace_79e1cd97::function_ed7faf05();
	var_6bfe1586.var_d6f82ae7 = self.var_4dbf3ae3.var_6604b19f;
	var_a3d1f031 = "cin_bla_06_06_portassault_position0" + var_6bfe1586.var_d6f82ae7 + "_breach";
	var_6bfe1586 thread namespace_cc27597::function_c35e6aab(var_a3d1f031, var_6bfe1586);
	self namespace_a230c2b1::function_e54c54c3(1);
	self.var_3fe3140 = 1;
	if(level.var_467c7a9c + 1 == level.var_9b1393e7.size)
	{
		wait(0.5);
	}
	level.var_467c7a9c++;
	var_6bfe1586 waittill("hash_643a7daf");
	level.var_467c7a9c--;
	self.var_ff712655 = 0;
}

/*
	Name: function_ad89287b
	Namespace: namespace_8b9f718f
	Checksum: 0x182A88C7
	Offset: 0x6570
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_ad89287b()
{
	for(var_4f8217af = 0; var_4f8217af < level.var_5b610bbd.size; var_4f8217af++)
	{
		if(!level.var_5b610bbd[var_4f8217af].var_ff712655)
		{
			level.var_5b610bbd[var_4f8217af] function_13dde3bd();
			return;
		}
	}
}

/*
	Name: function_b5455e18
	Namespace: namespace_8b9f718f
	Checksum: 0xACBBC79B
	Offset: 0x65E8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_b5455e18()
{
	if(!isdefined(self.var_d6f82ae7))
	{
		for(var_4f8217af = level.var_5b610bbd.size - 1; var_4f8217af >= 0; var_4f8217af--)
		{
			if(!level.var_5b610bbd[var_4f8217af].var_3fe3140)
			{
				level.var_5b610bbd[var_4f8217af] function_173b4bfe();
				return;
			}
		}
	}
}

/*
	Name: function_13dde3bd
	Namespace: namespace_8b9f718f
	Checksum: 0xF3448743
	Offset: 0x6670
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_13dde3bd()
{
	self namespace_a230c2b1::function_ed0abeee(1);
	self.var_ff712655 = 1;
	self.var_3fe3140 = 0;
}

/*
	Name: function_173b4bfe
	Namespace: namespace_8b9f718f
	Checksum: 0x45D3494A
	Offset: 0x66B0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_173b4bfe()
{
	self namespace_a230c2b1::function_e54c54c3(1);
	self.var_ff712655 = 0;
	self.var_3fe3140 = 1;
}

/*
	Name: function_307c2864
	Namespace: namespace_8b9f718f
	Checksum: 0x33CB5544
	Offset: 0x66F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_307c2864()
{
	level waittill("hash_e1526d21");
	self namespace_a230c2b1::function_c5a39495(1, 1);
}

/*
	Name: function_7c39aa7b
	Namespace: namespace_8b9f718f
	Checksum: 0x73849D6C
	Offset: 0x6728
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_7c39aa7b()
{
	level endon("hash_e1526d21");
	self waittill("hash_128f8789");
	var_a8a66403 = level.var_2395e945.size + 1;
	for(var_4f8217af = var_a8a66403; var_4f8217af <= 4; var_4f8217af++)
	{
		var_e48342b = function_6ada35ba("breach_player_" + var_4f8217af, "targetname");
		if(isdefined(var_e48342b))
		{
			level namespace_ad23e503::function_74d6b22f(var_e48342b.var_62978788);
			var_7345ca74 = function_6ada35ba(var_e48342b.var_b07228b6, "targetname");
			var_7345ca74 function_dc8c8404();
			var_e48342b function_dc8c8404();
		}
	}
}

/*
	Name: function_77531405
	Namespace: namespace_8b9f718f
	Checksum: 0xBDEA3898
	Offset: 0x6858
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_77531405()
{
	level endon("hash_e1526d21");
	wait(15);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_get_ready_stack_up_0");
}

/*
	Name: function_8dc0d020
	Namespace: namespace_8b9f718f
	Checksum: 0x1A67F1DF
	Offset: 0x6898
	Size: 0x54B
	Parameters: 0
	Flags: None
*/
function function_8dc0d020()
{
	var_6609c808 = function_6ada35ba("barge_align", "targetname");
	var_fbbc4fa6 = function_6ada35ba("barge_wheelhouse", "targetname");
	var_3d8da684 = function_6ada35ba("dock_assault_tanker", "targetname");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_barge_roof_break_bundle");
	function_a3eced7();
	function_6c1294b8("phys_gravity_dir", (0, 0, 1));
	var_fbbc4fa6 function_dc8c8404();
	level notify("hash_e1526d21");
	level namespace_ad23e503::function_74d6b22f("breached");
	level thread function_9a8b2deb();
	var_3d8da684 function_dc8c8404();
	namespace_2f06d687::function_2b37a3c9("wheelhouse_target1", "targetname", &function_69d65c98, 0);
	namespace_2f06d687::function_2b37a3c9("wheelhouse_target2", "targetname", &function_69d65c98, 0);
	namespace_2f06d687::function_2b37a3c9("wheelhouse_target3", "targetname", &function_69d65c98, 0);
	namespace_2f06d687::function_2b37a3c9("wheelhouse_enemy", "targetname", &function_69d65c98, 1);
	namespace_d5067552::function_bae40a28("sm_wheelhouse");
	wait(0.1);
	var_1dda34f0 = function_6ada35ba("barge_door_rt", "targetname");
	var_1dda34f0 thread function_dd6beda2("right");
	var_55174cd2 = function_6ada35ba("barge_door_lt", "targetname");
	var_55174cd2 thread function_dd6beda2("left");
	var_1dda34f0 function_921a1574("fxa_door_breach_r");
	var_55174cd2 function_921a1574("fxa_door_breach_l");
	wait(0.2);
	namespace_80983c42::function_593e8a39("barge_destroy_lgt");
	namespace_80983c42::function_80983c42("barge_destroy_interior_lgt");
	level thread function_b9184c9a();
	level.var_2fd26037 thread function_e7b216fb();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_f3ea3cc7();
		var_5dc5e20a thread namespace_5dc5e20a::function_2734b5fd();
	}
	if(isdefined(level.var_cb28e353))
	{
		level thread [[level.var_cb28e353]]();
	}
	level namespace_cc27597::function_43718187("cin_bla_06_06_portassault_1st_breach_pound_react");
	var_d53fdaad = function_99201f25("barge_hurt_trigger", "targetname");
	namespace_84970cc4::function_eaab05dc(var_d53fdaad, &function_dc8c8404);
	namespace_2f06d687::function_45679edd("group_wheelhouse", 0);
	namespace_2f06d687::function_45679edd("group_wheelhouse_backup", 0);
	if(isdefined(level.var_c4dba52c))
	{
		[[level.var_c4dba52c]]();
	}
	level namespace_ad23e503::function_74d6b22f("barge_breach_cleared");
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_wheelhouse");
	namespace_d0ef8521::function_31cd1834("cp_level_blackstation_intercept");
	level namespace_ad23e503::function_74d6b22f("tanker_smash");
}

/*
	Name: function_a3eced7
	Namespace: namespace_8b9f718f
	Checksum: 0x9A10BD41
	Offset: 0x6DF0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a3eced7()
{
	level.var_467c7a9c = 0;
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	while(level.var_467c7a9c < level.var_9b1393e7.size || level.var_9b1393e7.size == 0)
	{
		wait(0.05);
	}
	namespace_dabbe128::function_a0ac4434(&function_ad89287b);
	namespace_dabbe128::function_1f1cf008(&function_b5455e18);
}

/*
	Name: function_e7b216fb
	Namespace: namespace_8b9f718f
	Checksum: 0x82D3ACE3
	Offset: 0x6EA0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_e7b216fb()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	level waittill("hash_f7949f45");
	level thread namespace_cc27597::function_43718187("cin_bla_06_06_portassault_1st_breach_hendricks_concussive");
	level waittill("hash_3a30e06");
	namespace_4dbf3ae3::function_42e87952("hendricks_wheelhouse");
	function_37cbcf1a("evt_breachassault_concussive_walla", self.var_722885f3);
	self function_9ba0286c();
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_9ba0286c
	Namespace: namespace_8b9f718f
	Checksum: 0x5C9E78A9
	Offset: 0x6F68
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_9ba0286c()
{
	var_24bbf032 = function_525ae497(function_24e95264("axis", "all"), function_24e95264("team3", "all"), 0, 0);
	self.var_175490fb = function_a8fb77bd();
	self.var_175490fb.var_e6fa6e38 = 150;
	self.var_175490fb.var_4e92078e = 5;
	level thread namespace_687c8387::function_ffd5ab29(100, level.var_2fd26037);
	if(isdefined(var_24bbf032) && var_24bbf032.size)
	{
		foreach(var_6050ab17 in var_24bbf032)
		{
			if(!isdefined(var_6050ab17) || !isdefined(var_6050ab17.var_722885f3))
			{
				continue;
			}
			if(!(isdefined(var_6050ab17.var_915fc074) && var_6050ab17.var_915fc074))
			{
				var_6050ab17 thread function_b53bbcfb();
			}
		}
	}
}

/*
	Name: function_797ee2de
	Namespace: namespace_8b9f718f
	Checksum: 0xC8143275
	Offset: 0x7128
	Size: 0x12B
	Parameters: 2
	Flags: None
*/
function function_797ee2de(var_c4fe4fc7, var_c6107c9b)
{
	self endon("hash_50daddc6");
	while(!isdefined(var_c4fe4fc7))
	{
		self waittill("hash_f9348fda", var_74d0774f, var_677b3e78, var_c4fe4fc7, var_10e30246, var_7b81749, var_c6107c9b, var_748c4478, var_fbcf7972, var_2ffd9881);
	}
	if(!level namespace_ad23e503::function_7922262b("slow_mo_finished"))
	{
		self function_d7a0a9d8();
		self function_8461d2b1(100 * function_f679a325(self.var_722885f3 - var_677b3e78.var_722885f3), var_c6107c9b);
		wait(0.05);
		self function_2992720d();
	}
}

/*
	Name: function_b53bbcfb
	Namespace: namespace_8b9f718f
	Checksum: 0x1CAC254F
	Offset: 0x7260
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b53bbcfb()
{
	self endon("hash_128f8789");
	self notify("hash_50daddc6");
	self function_921a1574("gdt_concussivewave_imp_human");
	self namespace_cc27597::function_43718187("cin_gen_xplode_death_" + function_dc99997a(1, 4), self);
	self function_2992720d();
}

/*
	Name: function_f3ea3cc7
	Namespace: namespace_8b9f718f
	Checksum: 0x55F15E0A
	Offset: 0x72F0
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_f3ea3cc7()
{
	self endon("hash_128f8789");
	var_1c175d5c = function_6ada35ba("bs_dock_tugboat", "targetname");
	if(isdefined(self.var_d6f82ae7))
	{
		switch(function_b6b79a0(self.var_d6f82ae7))
		{
			case 1:
			{
				var_8f33cbc7 = 15;
				var_ecd1354e = 65;
				break;
			}
			case 2:
			{
				var_8f33cbc7 = 65;
				var_ecd1354e = 15;
				break;
			}
			case 3:
			{
				var_8f33cbc7 = 35;
				var_ecd1354e = 35;
				break;
			}
			case 4:
			{
				var_8f33cbc7 = 30;
				var_ecd1354e = 45;
				break;
			}
			case default:
			{
				var_8f33cbc7 = 45;
				var_ecd1354e = 45;
				break;
			}
		}
	}
	self.var_d13f855e = self function_48c6a3a2();
	if(!namespace_f996a5bc::function_afc1125(self.var_d13f855e) && self.var_d13f855e != function_c4d5ec1f("micromissile_launcher"))
	{
		self namespace_5dc5e20a::function_51bdb647(1);
	}
	if(isdefined(self.var_d6f82ae7))
	{
		var_a3d1f031 = "cin_bla_06_06_portassault_position0" + self.var_d6f82ae7 + "_breach";
	}
	if(isdefined(var_a3d1f031))
	{
		self namespace_cc27597::function_43718187(var_a3d1f031, self);
	}
	level notify("hash_4f70b2fc");
	self function_6fa6b424(0);
	self function_ed04153c(0);
}

/*
	Name: function_dd6beda2
	Namespace: namespace_8b9f718f
	Checksum: 0xBE0A63E7
	Offset: 0x7530
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_dd6beda2(var_19321990)
{
	var_dfd3f00d = namespace_82b91a51::function_b9fd52a4(self.var_6df9264, self.var_722885f3, self.var_6ab6f4fd);
	self function_50ccee8d();
	if(var_19321990 == "left")
	{
		var_dfd3f00d function_fde61077(96 * -1, 0.3);
		var_dfd3f00d waittill("hash_a21db68a");
		var_dfd3f00d function_dc8c8404();
		level waittill("hash_ac9ddf0");
		self function_48f26766();
	}
	else
	{
		var_dfd3f00d function_fde61077(96, 0.3);
		var_dfd3f00d waittill("hash_a21db68a");
		var_dfd3f00d function_dc8c8404();
		level waittill("hash_ac9ddf0");
		self function_48f26766();
	}
}

/*
	Name: function_69d65c98
	Namespace: namespace_8b9f718f
	Checksum: 0x5D7BE801
	Offset: 0x7690
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_69d65c98(var_98c3e352)
{
	self endon("hash_128f8789");
	self thread namespace_d84e54db::function_ceb883cd("useGrenades", 0);
	self.var_915fc074 = var_98c3e352;
	self.var_daf3a648 = 0;
	self.var_84edac03 = 1;
	self thread function_797ee2de();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 1;
	self.var_178c815f = 1;
	self.var_44a68a57 = &function_4a2ffb52;
	level waittill("hash_4f70b2fc");
	wait(0.05);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_4a2ffb52
	Namespace: namespace_8b9f718f
	Checksum: 0xC2FB6228
	Offset: 0x7778
	Size: 0xBB
	Parameters: 12
	Flags: None
*/
function function_4a2ffb52(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161, var_ae725cb8)
{
	if(isdefined(var_dfcc01fd) && isdefined(var_dfcc01fd.var_8c02d299) && var_dfcc01fd.var_8c02d299 == function_c4d5ec1f("ar_accurate"))
	{
		var_f9a179ed = var_f9a179ed * 2;
	}
	return var_f9a179ed;
}

/*
	Name: function_b9184c9a
	Namespace: namespace_8b9f718f
	Checksum: 0xCC95F4D
	Offset: 0x7840
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_b9184c9a()
{
	level endon("hash_ba8f6561");
	level waittill("hash_4f70b2fc");
	level thread namespace_4297372::function_a339da70();
	function_b8d9ad6e(1, 0.3, 0.3);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_5a7dd25d(0.3);
	}
	level thread function_c1dce6c0(0.3, 1, 0.3);
}

/*
	Name: function_c1dce6c0
	Namespace: namespace_8b9f718f
	Checksum: 0x890BA33E
	Offset: 0x7978
	Size: 0x121
	Parameters: 3
	Flags: None
*/
function function_c1dce6c0(var_bce6643, var_f1be99bb, var_78962fff)
{
	namespace_82b91a51::function_9fcf3cd8(4, "barge_breach_cleared");
	level namespace_ad23e503::function_74d6b22f("slow_mo_finished");
	level thread namespace_4297372::function_69fc18eb();
	function_b8d9ad6e(var_bce6643, var_f1be99bb, var_78962fff);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_5a7dd25d(var_f1be99bb);
	}
}

/*
	Name: function_b28ad6d2
	Namespace: namespace_8b9f718f
	Checksum: 0x91AA132F
	Offset: 0x7AA8
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_b28ad6d2()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_port_sniper");
	wait(2);
	if(level.var_2395e945.size > 1)
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_snipers_3_o_clock_0");
	}
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_if_you_ve_got_any_ro_0", 0.5);
	level namespace_71b8dba1::function_13b3b16a("plyr_copy_that_hendricks_1", 0.7);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_c03736ba::function_e9f7384d);
	level namespace_ad23e503::function_1ab5ebec("exit_wharf");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_storm_s_getting_wors_0");
}

/*
	Name: function_2124978a
	Namespace: namespace_8b9f718f
	Checksum: 0x8ACE696B
	Offset: 0x7BC0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_2124978a()
{
	level thread function_c5a827ee();
	namespace_4dbf3ae3::function_1ab5ebec("hendricks_hurry");
	namespace_d0ef8521::function_74d6b22f("cp_level_blackstation_board_ship");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_pier_event_01_bundle");
	wait(0.1);
	if(namespace_cc27597::function_444aea32("cin_bla_06_04_portassault_vign_react"))
	{
		level namespace_cc27597::function_43718187("cin_bla_06_04_portassault_vign_react");
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_visibility_s_getting_0");
	}
	else
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_visibility_s_getting_0");
	}
}

/*
	Name: function_c5a827ee
	Namespace: namespace_8b9f718f
	Checksum: 0xBC5CC436
	Offset: 0x7CC0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_c5a827ee()
{
	level endon("hash_90702351");
	if(!level namespace_ad23e503::function_7922262b("hendricks_hurry"))
	{
		level namespace_ad23e503::function_1ab5ebec("surge_done");
		level.var_2fd26037 waittill("hash_41d1aaf0");
		level namespace_cc27597::function_c35e6aab("cin_bla_06_04_portassault_vign_react");
	}
}

/*
	Name: function_36dfb0a2
	Namespace: namespace_8b9f718f
	Checksum: 0x6D1361D6
	Offset: 0x7D48
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_36dfb0a2()
{
	var_fcc4e588 = namespace_14b42b8a::function_7922262b("wave_technical", "script_noteworthy");
	var_32cdba86 = function_6ada35ba("temp_pier_wave", "targetname");
	var_59ed1f41 = function_6ada35ba(var_32cdba86.var_b07228b6, "targetname");
	var_32cdba86 function_8c8e79fe();
	level waittill("hash_293c72b4");
	var_59ed1f41 thread namespace_79e1cd97::function_e5633001();
	var_32cdba86.var_722885f3 = var_fcc4e588.var_722885f3;
	var_32cdba86.var_6ab6f4fd = var_fcc4e588.var_6ab6f4fd;
	var_32cdba86 function_a96a2721(var_32cdba86.var_722885f3 + VectorScale((0, 0, 1), 150), 0.1);
	var_32cdba86 waittill("hash_a21db68a");
	var_32cdba86 function_a96a2721(var_32cdba86.var_722885f3 + VectorScale((-1, 0, 0), 450), 2);
	var_32cdba86 thread namespace_79e1cd97::function_4083c129();
	var_32cdba86 waittill("hash_a21db68a");
	var_32cdba86 function_a96a2721(var_32cdba86.var_722885f3 + VectorScale((0, 0, -1), 150), 0.1);
}

/*
	Name: function_17894e22
	Namespace: namespace_8b9f718f
	Checksum: 0x6DBB58DD
	Offset: 0x7F30
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_17894e22()
{
	self endon("hash_128f8789");
	self namespace_37b990db::function_bae40a28(1, 1);
	self waittill("hash_6cf6ac7e");
	self thread namespace_79e1cd97::function_fae23684("passenger1");
	self thread namespace_79e1cd97::function_fae23684("driver");
	while(isdefined(self function_b4980289(0)))
	{
		wait(0.1);
	}
	self function_991ad231();
	self function_917f75ac(0);
	self thread namespace_79e1cd97::function_d01267bd(level.var_2395e945.size - 1, level.var_2395e945.size, "activate_barge_ai");
}

/*
	Name: function_b8500bb1
	Namespace: namespace_8b9f718f
	Checksum: 0xEA5F85CA
	Offset: 0x8040
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b8500bb1()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_gp_debris_float_01_s4_bundle");
}

/*
	Name: function_8c158bf0
	Namespace: namespace_8b9f718f
	Checksum: 0xE2B591AC
	Offset: 0x8070
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_8c158bf0()
{
	var_da579d3c = function_fe0cfd2e("barge_roof", "script_linkname");
	foreach(var_5898c5c in var_da579d3c)
	{
		function_d224409e(var_5898c5c, 0);
	}
	level namespace_ad23e503::function_1ab5ebec("breach_active");
	foreach(var_5898c5c in var_da579d3c)
	{
		function_d224409e(var_5898c5c, 1);
	}
}

/*
	Name: function_425c4977
	Namespace: namespace_8b9f718f
	Checksum: 0x253C7644
	Offset: 0x81D0
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_425c4977()
{
	level endon("hash_eb78e4c5");
	level namespace_ad23e503::function_1ab5ebec("activate_barge_ai");
	wait(function_72a94f05(0.5, 1.5));
	while(1)
	{
		level namespace_80983c42::function_3ab4ff7d("lightning_barge", 1);
		level namespace_5753664b::function_43718187("lightning_strike", namespace_14b42b8a::function_7922262b("lightning_boat").var_722885f3, VectorScale((-1, 0, 0), 90));
		function_37cbcf1a("amb_thunder_strike", namespace_14b42b8a::function_7922262b("lightning_boat").var_722885f3);
		wait(function_72a94f05(6, 7.5));
	}
}

/*
	Name: function_ecebfb25
	Namespace: namespace_8b9f718f
	Checksum: 0x58A99E77
	Offset: 0x82F0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ecebfb25()
{
	level namespace_ad23e503::function_1ab5ebec("breach_active");
	level thread namespace_79e1cd97::function_c2d8b452("lightning_pier", "wheelhouse_breached");
}

/*
	Name: function_281ee5c2
	Namespace: namespace_8b9f718f
	Checksum: 0x12CCBDC6
	Offset: 0x8348
	Size: 0x2BB
	Parameters: 1
	Flags: None
*/
function function_281ee5c2(var_74cd64bc)
{
	namespace_2f06d687::function_2b37a3c9("barge_ai", "targetname", &function_d4e6feff);
	if(!var_74cd64bc)
	{
		level namespace_ad23e503::function_1ab5ebec("move_to_pier");
	}
	namespace_2f06d687::function_22356ba7("pier_guard", &function_16bb7db4);
	if(var_74cd64bc)
	{
		level namespace_ad23e503::function_74d6b22f("start_objective_barge_assault");
		namespace_d7916d65::function_a2995f22();
	}
	namespace_4dbf3ae3::function_1ab5ebec("trigger_pier_retreat");
	level thread function_6dffaa41();
	namespace_4dbf3ae3::function_1ab5ebec("trigger_dock");
	namespace_2f06d687::function_22356ba7("dock_guard", &function_a27055f8);
	namespace_4dbf3ae3::function_1ab5ebec("trigger_barge");
	namespace_d5067552::function_bae40a28("sm_barge");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_barge_cqb");
	namespace_2f06d687::function_2b37a3c9("barge_cqb", "targetname", &function_840ba109);
	namespace_d5067552::function_bae40a28("sm_barge_cqb");
	level namespace_ad23e503::function_1ab5ebec("surge_done");
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level namespace_cc27597::function_c35e6aab("cin_bla_06_05_portassault_vign_traversal");
	level waittill("hash_232dc1e1");
	level waittill("hash_498028de");
	level namespace_cc27597::function_43718187("cin_bla_06_05_portassault_vign_traversal");
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	level namespace_ad23e503::function_74d6b22f("hendricks_on_barge");
	level.var_2fd26037.var_178c815f = 1;
	namespace_4dbf3ae3::function_42e87952("triggercolor_barge");
}

/*
	Name: function_30f43af6
	Namespace: namespace_8b9f718f
	Checksum: 0x4AA0BF89
	Offset: 0x8610
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_30f43af6()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_dock");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_pier_event_03_bundle");
}

/*
	Name: function_7a7390dd
	Namespace: namespace_8b9f718f
	Checksum: 0xB1D188BE
	Offset: 0x8658
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_7a7390dd()
{
	var_107bf0f7 = function_6ada35ba("barge_assault_kill", "targetname");
	var_107bf0f7 endon("hash_128f8789");
	while(1)
	{
		var_107bf0f7 waittill("hash_4dbf3ae3", var_df09ae6a);
		if(function_e70ab977(var_df09ae6a))
		{
			var_df09ae6a function_2992720d();
		}
	}
}

/*
	Name: function_d4e6feff
	Namespace: namespace_8b9f718f
	Checksum: 0xD19F3490
	Offset: 0x86F0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_d4e6feff()
{
	self endon("hash_128f8789");
	self.var_178c815f = 1;
	self thread function_a27055f8();
}

/*
	Name: function_840ba109
	Namespace: namespace_8b9f718f
	Checksum: 0x9ED2EF06
	Offset: 0x8730
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_840ba109()
{
	self endon("hash_128f8789");
	self.var_178c815f = 1;
	self thread function_a27055f8();
	self namespace_d84e54db::function_ceb883cd("cqb", 1);
	self namespace_d84e54db::function_ceb883cd("can_initiateaivsaimelee", 0);
}

/*
	Name: function_16bb7db4
	Namespace: namespace_8b9f718f
	Checksum: 0xD22BB767
	Offset: 0x87B0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_16bb7db4()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 4;
	self namespace_d84e54db::function_c9e45d52(1);
	self thread function_a27055f8();
	namespace_4dbf3ae3::function_1ab5ebec("hendricks_hurry");
	self namespace_d84e54db::function_c9e45d52(0);
	namespace_4dbf3ae3::function_1ab5ebec("trigger_pier_retreat");
	self namespace_d84e54db::function_c9e45d52(1);
	self function_169cc712(function_6ada35ba("vol_dock", "targetname"), 1, 1024);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_c9e45d52(0);
	self function_e11ce512();
}

/*
	Name: function_dc7a0285
	Namespace: namespace_8b9f718f
	Checksum: 0x3AEC5927
	Offset: 0x88D8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_dc7a0285()
{
	self endon("hash_128f8789");
	self namespace_d84e54db::function_ceb883cd("can_initiateaivsaimelee", 0);
	self thread function_a27055f8();
}

/*
	Name: function_a27055f8
	Namespace: namespace_8b9f718f
	Checksum: 0x489CC222
	Offset: 0x8928
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_a27055f8()
{
	self endon("hash_128f8789");
	while(1)
	{
		var_6bfe1586 = namespace_82b91a51::function_fa8a28f1(self.var_722885f3, "allies");
		if(isdefined(var_6bfe1586))
		{
			var_6389ab3d = function_cb3d1c9b(self.var_722885f3, var_6bfe1586.var_722885f3);
			if(var_6389ab3d < 360000)
			{
				self.var_15dfd6c = 1;
				return;
			}
			else
			{
				self.var_15dfd6c = namespace_d73b9283::function_31931862(360000 / var_6389ab3d, 0.7, 1);
			}
		}
		wait(0.2);
	}
}

/*
	Name: function_fd4da71
	Namespace: namespace_8b9f718f
	Checksum: 0x46ACF24D
	Offset: 0x8A28
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_fd4da71()
{
	var_45900c37 = namespace_96fa87af::function_7387a40a("truck_pier");
	var_45900c37 namespace_82b91a51::function_958c7633();
	var_45900c37 thread function_e0fdd63d();
	var_45900c37 endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("dock_fxanim_truck");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_pier_event_02_bundle");
	var_45900c37 namespace_37b990db::function_bae40a28(1, 1);
	var_dfb53de7 = var_45900c37 namespace_96fa87af::function_ad4ec07a("gunner1");
	if(function_5b49d38c(var_dfb53de7))
	{
		var_dfb53de7 thread function_41ef060b();
	}
	level waittill("hash_6b81763");
	wait(2);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_pier_event_02_bundle");
	level notify("hash_51074fa2");
}

/*
	Name: function_41ef060b
	Namespace: namespace_8b9f718f
	Checksum: 0x1A4ACBC7
	Offset: 0x8B88
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_41ef060b()
{
	self endon("hash_128f8789");
	wait(4.5);
	self function_2992720d();
}

/*
	Name: function_7913f320
	Namespace: namespace_8b9f718f
	Checksum: 0x967161FD
	Offset: 0x8BC0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_7913f320()
{
	var_3c54858a = function_243bb261("node_cargo_truck", "targetname");
	self thread namespace_96fa87af::function_b6b0ca71(var_3c54858a);
	self namespace_82b91a51::function_958c7633();
	namespace_4dbf3ae3::function_1ab5ebec("trigger_dock_truck");
	self thread namespace_96fa87af::function_ff72658f();
}

/*
	Name: function_cc32bd24
	Namespace: namespace_8b9f718f
	Checksum: 0xC6A20CF9
	Offset: 0x8C60
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_cc32bd24()
{
	self endon("hash_128f8789");
	level endon("hash_eb78e4c5");
	var_59ed1f41 = function_6ada35ba("truck_wave", "targetname");
	while(!self function_32fa5072(var_59ed1f41))
	{
		wait(0.05);
	}
	self notify("hash_a4952fb2");
}

/*
	Name: function_e0fdd63d
	Namespace: namespace_8b9f718f
	Checksum: 0xD3C87407
	Offset: 0x8CF0
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_e0fdd63d()
{
	self endon("hash_128f8789");
	while(self.var_d925663e.size < 2)
	{
		wait(0.05);
	}
	foreach(var_402c598a in self.var_d925663e)
	{
		var_402c598a namespace_d84e54db::function_c9e45d52(1);
	}
	namespace_4dbf3ae3::function_1ab5ebec("hendricks_hurry");
	foreach(var_402c598a in self.var_d925663e)
	{
		var_402c598a namespace_d84e54db::function_c9e45d52(0);
	}
}

/*
	Name: function_6dffaa41
	Namespace: namespace_8b9f718f
	Checksum: 0xE5BA5169
	Offset: 0x8E50
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_6dffaa41()
{
	level namespace_ad23e503::function_1ab5ebec("trigger_wave_dock");
	var_24bbf032 = function_b8494651("axis");
	var_dfb53de7 = function_6ada35ba("pier_truck_guy_ai", "targetname");
	if(function_5b49d38c(var_dfb53de7))
	{
		function_81403b2f(var_24bbf032, var_dfb53de7);
	}
	var_fcc4e588 = namespace_14b42b8a::function_7922262b("wave_dockleft", "script_noteworthy");
	var_32cdba86 = function_6ada35ba("pier_wave_dockleft", "targetname");
	level thread function_2723af5e(var_fcc4e588, var_32cdba86, "left", var_24bbf032);
}

/*
	Name: function_2723af5e
	Namespace: namespace_8b9f718f
	Checksum: 0xF5E127C
	Offset: 0x8F90
	Size: 0x1C3
	Parameters: 4
	Flags: None
*/
function function_2723af5e(var_fcc4e588, var_32cdba86, var_19321990, var_e3b635fb)
{
	var_59ed1f41 = function_6ada35ba(var_32cdba86.var_b07228b6, "targetname");
	var_32cdba86 function_8c8e79fe();
	var_32cdba86.var_722885f3 = var_fcc4e588.var_722885f3;
	var_32cdba86.var_6ab6f4fd = var_fcc4e588.var_6ab6f4fd;
	var_59ed1f41 thread namespace_79e1cd97::function_e5633001();
	if(var_19321990 == "right")
	{
		var_ccd4343c = 450;
	}
	else
	{
		var_ccd4343c = -450;
	}
	var_32cdba86 function_a96a2721(var_32cdba86.var_722885f3 + VectorScale((0, 0, 1), 150), 0.1);
	var_32cdba86 waittill("hash_a21db68a");
	var_32cdba86 function_a96a2721(var_32cdba86.var_722885f3 + (var_ccd4343c, 0, 0), 2);
	var_32cdba86 thread namespace_79e1cd97::function_4083c129();
	var_32cdba86 waittill("hash_a21db68a");
	var_32cdba86 function_a96a2721(var_32cdba86.var_722885f3 + VectorScale((0, 0, -1), 150), 0.1);
}

/*
	Name: function_b73344f6
	Namespace: namespace_8b9f718f
	Checksum: 0x719EA6F9
	Offset: 0x9160
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_b73344f6()
{
	level endon("hash_72fc0350");
	namespace_4dbf3ae3::function_1ab5ebec("hero_catchup");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_9ea179d0
	Namespace: namespace_8b9f718f
	Checksum: 0x14C74295
	Offset: 0x91A0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9ea179d0()
{
	level thread function_7a88d2cd();
}

/*
	Name: function_7a88d2cd
	Namespace: namespace_8b9f718f
	Checksum: 0xD324F502
	Offset: 0x91C8
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_7a88d2cd()
{
	namespace_82b91a51::function_39b48811(level, "slow_mo_finished", level, "barge_breach_cleared");
	if(level namespace_ad23e503::function_7922262b("barge_breach_cleared"))
	{
		wait(0.5);
	}
	var_95a38450 = function_99201f25("ocean_boundary", "targetname");
	namespace_84970cc4::function_eaab05dc(var_95a38450, &function_dc8c8404);
	level thread function_96f48ea4();
	level namespace_ad23e503::function_74d6b22f("tanker_go");
	level.var_2fd26037 thread function_c713e5a9();
	level thread function_948e3399();
	level thread namespace_4297372::function_11139d81();
	level thread namespace_4297372::function_fcea1d9();
}

/*
	Name: function_c713e5a9
	Namespace: namespace_8b9f718f
	Checksum: 0x2AAE7D8D
	Offset: 0x9318
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_c713e5a9()
{
	level namespace_ad23e503::function_1ab5ebec("tanker_ride");
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037.var_178c815f = 0;
}

/*
	Name: function_4b773508
	Namespace: namespace_8b9f718f
	Checksum: 0x78226D96
	Offset: 0x9370
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_4b773508()
{
	self endon("hash_128f8789");
	self function_6fa6b424(1);
	self function_ed04153c(1);
	self function_83fd42b5();
	self function_ff57a1a9(undefined);
	level namespace_ad23e503::function_1ab5ebec("tanker_ride_done");
	self.var_eb7c5a24 = 0;
	self thread namespace_79e1cd97::function_2c33b48e();
	wait(2);
	self function_4890e520();
}

/*
	Name: function_948e3399
	Namespace: namespace_8b9f718f
	Checksum: 0xE56B8F0C
	Offset: 0x9440
	Size: 0x3C3
	Parameters: 0
	Flags: None
*/
function function_948e3399()
{
	level namespace_cc27597::function_8f9f34e0("cin_bla_07_02_stormsurge_1st_leap_ride", &function_423548cd);
	level namespace_cc27597::function_8f9f34e0("cin_bla_07_02_stormsurge_1st_leap_ride_latched", &function_f60d2cfb, "play");
	level namespace_cc27597::function_8f9f34e0("cin_bla_07_02_stormsurge_1st_leap_ride_latched", &function_407abab8, "done");
	level namespace_cc27597::function_8f9f34e0("cin_bla_07_02_stormsurge_1st_leap_landing", &function_236c19c3, "done");
	level namespace_cc27597::function_8f9f34e0("cin_bla_07_02_stormsurge_1st_leap_landing_hendricks", &function_18898abd, "done");
	var_8ca0a44f = function_6ada35ba("barge_wave_fx", "targetname");
	var_8ca0a44f thread namespace_5753664b::function_43718187("wave_pier", var_8ca0a44f.var_722885f3, undefined, 2, 1);
	var_8ca0a44f function_e2af603e("bs_ride_start");
	namespace_84970cc4::function_eaab05dc(function_bd90138e(), &function_dc8c8404);
	var_da1764fd = function_c20c2e8("wheelhouse_enemy_ai", "targetname");
	foreach(var_eb410c1d in var_da1764fd)
	{
		var_eb410c1d function_dc8c8404();
	}
	if(level namespace_cc27597::function_367f8966("p7_fxanim_cp_blackstation_barge_idle_storm_bundle"))
	{
		level namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_blackstation_barge_idle_storm_bundle");
	}
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "toggle_water_fx", 1);
	level namespace_cc27597::function_43718187("cin_bla_07_02_stormsurge_1st_leap_ride");
	level namespace_cc27597::function_43718187("cin_bla_07_02_stormsurge_1st_leap_ride_latched");
	level thread namespace_cc27597::function_43718187("cin_bla_07_02_stormsurge_1st_leap_landing");
	level thread namespace_cc27597::function_43718187("cin_bla_07_02_stormsurge_1st_leap_landing_hendricks");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_4b773508);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "rumble_loop", 0);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "toggle_water_fx", 0);
}

/*
	Name: function_f60d2cfb
	Namespace: namespace_8b9f718f
	Checksum: 0x4184DB25
	Offset: 0x9810
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_f60d2cfb(var_c77d2837)
{
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_blackstation_barge_sink_bundle");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "wind_blur", 1);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_622eb918);
	level thread function_fcb18964();
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_tanker_building_smash_debris_bundle");
	wait(5);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_barge_sink_bundle");
}

/*
	Name: function_407abab8
	Namespace: namespace_8b9f718f
	Checksum: 0x9AE3A417
	Offset: 0x9900
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_407abab8(var_c77d2837)
{
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "wind_blur", 0);
}

/*
	Name: function_423548cd
	Namespace: namespace_8b9f718f
	Checksum: 0x3A32D598
	Offset: 0x9948
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_423548cd(var_c77d2837)
{
	level waittill("hash_fe33f1ed");
	namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_e2af603e, "damage_heavy");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "rumble_loop", 0);
}

/*
	Name: function_fcb18964
	Namespace: namespace_8b9f718f
	Checksum: 0xFE19CD5
	Offset: 0x99D0
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_fcb18964()
{
	level endon("hash_407abab8");
	while(1)
	{
		level waittill("hash_b465620d");
		namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_e2af603e, "cp_blackstation_tanker_building_rumble");
	}
}

/*
	Name: function_622eb918
	Namespace: namespace_8b9f718f
	Checksum: 0x42F336CD
	Offset: 0x9A30
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_622eb918()
{
	namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_e2af603e, "cp_blackstation_tanker_anchor_rumble");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "rumble_loop", 1);
}

/*
	Name: function_18898abd
	Namespace: namespace_8b9f718f
	Checksum: 0xFBC78A06
	Offset: 0x9AA8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_18898abd(var_c77d2837)
{
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
}

/*
	Name: function_236c19c3
	Namespace: namespace_8b9f718f
	Checksum: 0x6953D3FF
	Offset: 0x9AD8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_236c19c3(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("tanker_ride_done");
	level notify("hash_b36ffbd");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_3dc5b645::function_99f304f0);
}

/*
	Name: function_96f48ea4
	Namespace: namespace_8b9f718f
	Checksum: 0xA595F2F6
	Offset: 0x9B48
	Size: 0x1C9
	Parameters: 0
	Flags: None
*/
function function_96f48ea4()
{
	level waittill("hash_383b9104");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_blackstation_barge_roof_break_bundle");
	namespace_80983c42::function_593e8a39("barge_destroy_interior_lgt");
	var_486aa363 = function_6ada35ba("barge_wheelhouse_interior", "targetname");
	var_486aa363 function_e2af603e("bs_ride_start");
	function_37cbcf1a("evt_barge_shake", var_486aa363.var_722885f3);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_71e9cb84::function_e9c3870b, "rumble_loop", 1);
	function_9cf04c2e(0.3, 21, var_486aa363.var_722885f3, 999999);
	var_8e44646a = function_99201f25("barge_wheelhouse_roof", "targetname");
	foreach(var_6baa4cfd in var_8e44646a)
	{
		var_6baa4cfd function_dc8c8404();
	}
}

/*
	Name: function_ab78d20a
	Namespace: namespace_8b9f718f
	Checksum: 0x5C2A6D58
	Offset: 0x9D20
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_ab78d20a()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_toilet");
	var_a7307e7e = function_6ada35ba("debris_toilet", "targetname");
	var_a7307e7e thread namespace_79e1cd97::function_f5cdc056();
	var_a7307e7e thread namespace_79e1cd97::function_2d329cdb();
	var_a7307e7e function_a96a2721(var_a7307e7e.var_722885f3 + (0, 6000, 200), 8);
	var_a7307e7e waittill("hash_a21db68a");
	var_a7307e7e function_dc8c8404();
}

/*
	Name: function_13e164f4
	Namespace: namespace_8b9f718f
	Checksum: 0x33E47E9C
	Offset: 0x9E00
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_13e164f4()
{
	self.var_1b3b1022 = 1;
	self namespace_d84e54db::function_ceb883cd("useAnimationOverride", 1);
}

/*
	Name: function_22a0015b
	Namespace: namespace_8b9f718f
	Checksum: 0x5EC313A6
	Offset: 0x9E40
	Size: 0xFD
	Parameters: 0
	Flags: None
*/
function function_22a0015b()
{
	while(!level namespace_ad23e503::function_7922262b("breach_active"))
	{
		level notify("hash_2b462d33");
		wait(0.5);
		if(namespace_d73b9283::function_d2c92ee7())
		{
			level thread namespace_79e1cd97::function_bd1bfce2("exp_lightning_pier_l_01", "exp_lightning_pier_l_02", "exp_lightning_pier_l_03", 2, "end_lightning");
		}
		else
		{
			level thread namespace_79e1cd97::function_bd1bfce2("exp_lightning_pier_r_01", "exp_lightning_pier_r_02", "exp_lightning_pier_r_03", 1, "end_lightning");
		}
		wait(function_72a94f05(2.5, 5));
	}
	wait(0.5);
	level notify("hash_2b462d33");
}

/*
	Name: function_109329ae
	Namespace: namespace_8b9f718f
	Checksum: 0xF9F4EB2E
	Offset: 0x9F48
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_109329ae()
{
	namespace_4dbf3ae3::function_1ab5ebec("anchor_intro_breadcrumb");
	level thread namespace_d0ef8521::function_45d1556("debris_mound_breadcrumb");
}

/*
	Name: function_94ff5bc0
	Namespace: namespace_8b9f718f
	Checksum: 0x3AB3B64B
	Offset: 0x9F90
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_94ff5bc0()
{
	namespace_4dbf3ae3::function_1ab5ebec("debris_mound_breadcrumb");
	level thread function_3b4b0a17();
	level namespace_ad23e503::function_1ab5ebec("debris_path_four_ready");
	level thread function_3b4b0a17();
	level namespace_ad23e503::function_1ab5ebec("debris_path_five_ready");
	level thread function_3b4b0a17();
	namespace_4dbf3ae3::function_1ab5ebec("trigger_toilet");
	level thread function_3b4b0a17();
}

/*
	Name: function_3b4b0a17
	Namespace: namespace_8b9f718f
	Checksum: 0x3A30D223
	Offset: 0xA070
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_3b4b0a17()
{
	var_92471baa = function_dc99997a(1, 5);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_92471baa; var_c957f6b6++)
	{
		namespace_80983c42::function_80983c42("exp_lightning_anchor_l_01");
		wait(function_72a94f05(0.1, 0.5));
	}
}

/*
	Name: function_9a8b2deb
	Namespace: namespace_8b9f718f
	Checksum: 0xAA27DB23
	Offset: 0xA100
	Size: 0x171
	Parameters: 0
	Flags: None
*/
function function_9a8b2deb()
{
	var_4a27984b = namespace_4a43ba8::function_93d52c4f(1);
	foreach(var_68ea4ac0 in var_4a27984b)
	{
		if(var_68ea4ac0.var_ff844e3f === "10")
		{
			var_68ea4ac0 namespace_4a43ba8::function_82c857e9(0);
		}
	}
	wait(0.05);
	foreach(var_68ea4ac0 in var_4a27984b)
	{
		if(var_68ea4ac0.var_ff3739ca === "23")
		{
			var_68ea4ac0 namespace_4a43ba8::function_82c857e9(1);
		}
	}
}

/*
	Name: function_5b85480f
	Namespace: namespace_8b9f718f
	Checksum: 0x75DD5A94
	Offset: 0xA280
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_5b85480f()
{
	var_b9528c52 = namespace_4dbf3ae3::function_1ab5ebec("hendricks_hurry");
	var_6bfe1586 = var_b9528c52.var_aef176e7;
	if(function_316422d1(var_6bfe1586.var_722885f3, level.var_2fd26037.var_722885f3) > 2250000)
	{
		level.var_2fd26037 function_9869ab67((2282, -3646, 64), VectorScale((0, 1, 0), 180), 0);
	}
}

