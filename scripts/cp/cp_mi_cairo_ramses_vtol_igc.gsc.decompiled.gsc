#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_quad_tank_plaza;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\cp_mi_cairo_ramses2_fx;
#using scripts\cp\cp_mi_cairo_ramses2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_raps;

#namespace namespace_d7ca6f18;

/*
	Name: function_f72dae68
	Namespace: namespace_d7ca6f18
	Checksum: 0x8FAFBC82
	Offset: 0xC58
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_f72dae68(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	function_f7046c76();
	level namespace_ad23e503::function_c35e6aab("vtol_igc_robots_alerted");
	level namespace_ad23e503::function_c35e6aab("vtol_igc_robots_dead");
	level namespace_ad23e503::function_c35e6aab("hendricks_at_vtol_igc");
	function_4e0519ce(var_74cd64bc);
}

/*
	Name: function_f7046c76
	Namespace: namespace_d7ca6f18
	Checksum: 0x99EC1590
	Offset: 0xD10
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
}

/*
	Name: function_fc9630cb
	Namespace: namespace_d7ca6f18
	Checksum: 0xB3D043BC
	Offset: 0xD20
	Size: 0x221
	Parameters: 0
	Flags: None
*/
function function_fc9630cb()
{
	var_b0c95322 = function_99201f25("hide_me", "script_noteworthy");
	foreach(var_ee522bae in var_b0c95322)
	{
		if(isdefined(var_ee522bae))
		{
			var_ee522bae function_50ccee8d();
		}
	}
	var_b0c95322 = function_99201f25("hide_vtol_robots", "script_noteworthy");
	foreach(var_ee522bae in var_b0c95322)
	{
		if(isdefined(var_ee522bae))
		{
			var_ee522bae function_50ccee8d();
		}
	}
	var_2e9e64b6 = function_99201f25("alley_bridge_destroyed", "targetname");
	foreach(var_12061b40 in var_2e9e64b6)
	{
		var_12061b40 function_50ccee8d();
	}
}

/*
	Name: function_4e0519ce
	Namespace: namespace_d7ca6f18
	Checksum: 0x287CB7D5
	Offset: 0xF50
	Size: 0x6F3
	Parameters: 1
	Flags: None
*/
function function_4e0519ce(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	level thread function_f3a727ef();
	level thread function_35210922();
	level notify("hash_57a23805");
	level thread function_31a2724a();
	level thread function_3659e172();
	var_e8fa0050 = function_9b7fda5e("script_origin", (8190, -16469, 418));
	var_9cf50b7e = function_9b7fda5e("script_origin", (7934, -15639, 351));
	var_e8fa0050 function_c2931a36("evt_outside_battle_l", 0.25);
	var_9cf50b7e function_c2931a36("evt_outside_battle_r", 0.25);
	namespace_84970cc4::function_eaab05dc(function_99201f25("lgt_vtol_block", "targetname"), &function_50ccee8d);
	if(!var_74cd64bc)
	{
		level namespace_cc27597::function_c35e6aab("cin_ram_06_05_safiya_1st_friendlydown_init");
	}
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("cin_ram_06_05_safiya_aie_breakin_pilotshoots");
	namespace_cc27597::function_8f9f34e0("cin_ram_06_05_safiya_1st_friendlydown", &function_e78f7ba0, "play");
	namespace_cc27597::function_8f9f34e0("cin_ram_06_05_safiya_1st_friendlydown", &function_9585cf3, "done");
	var_99b57ecf = function_6ada35ba("trig_use_vtol_igc", "targetname");
	var_99b57ecf function_8c1f7070();
	namespace_82b91a51::function_76f13293();
	level thread function_db3c9568();
	namespace_4dbf3ae3::function_1ab5ebec("trig_spawn_vtol_igc");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_go_to_safiya");
	level thread function_6cbfd0c6();
	namespace_94c82dbc::function_ffea6b5();
	level thread function_a2be882d();
	level thread function_baa2531();
	namespace_2f06d687::function_72214789("vtol_robots");
	level namespace_ad23e503::function_74d6b22f("vtol_igc_robots_dead");
	level.var_2fd26037 thread function_a64605e5();
	level thread namespace_82b91a51::function_d8eaed3d(3);
	level namespace_cc27597::function_c35e6aab("cin_ram_06_05_safiya_1st_friendlydown");
	level namespace_ad23e503::function_1ab5ebec("hendricks_at_vtol_igc");
	var_99b57ecf function_bb863f19();
	var_12cc0227 = namespace_82b91a51::function_14518e76(var_99b57ecf, &"cp_level_ramses_vtol_use", &"CP_MI_CAIRO_RAMSES_VTOL_IGC_TRIG", &function_468dd319);
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_trigger_used");
	if(isdefined(level.var_3211f2c6))
	{
		level thread [[level.var_3211f2c6]]();
	}
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_vtol_use");
	var_e8fa0050 function_eaa69754(2);
	var_9cf50b7e function_eaa69754(2);
	level namespace_82b91a51::function_ef3f75eb("vtligc");
	level thread namespace_a6a248fc::function_bb3105cf();
	namespace_76d95162::function_d9f49fba(0);
	var_12cc0227 namespace_a230c2b1::function_c5a39495();
	level thread function_6ee65e7a();
	var_1cad09db = function_99201f25("alley_egypt_intro_guy_ai", "targetname");
	foreach(var_5abbae22 in var_1cad09db)
	{
		var_5abbae22 function_dc8c8404();
	}
	var_d63952d7 = function_99201f25("alley_egypt_mid_guy_ai", "targetname");
	foreach(var_5abbae22 in var_d63952d7)
	{
		var_5abbae22 function_dc8c8404();
	}
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_done");
	var_e8fa0050 function_dc8c8404();
	var_9cf50b7e function_dc8c8404();
	level namespace_82b91a51::function_ef3f75eb("pst");
	namespace_1d795d47::function_be8adfb8("vtol_igc");
}

/*
	Name: function_6ee65e7a
	Namespace: namespace_d7ca6f18
	Checksum: 0x2526F047
	Offset: 0x1650
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_6ee65e7a(var_c77d2837)
{
	level waittill("hash_8456258f");
	var_dfcbd82b = function_b4cb3503("qtp_hendricks_start_node", "targetname");
	level.var_2fd26037 function_169cc712(var_dfcbd82b, 0, 32);
}

/*
	Name: function_2e3a3b68
	Namespace: namespace_d7ca6f18
	Checksum: 0x7922BA71
	Offset: 0x16C8
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_2e3a3b68(var_c77d2837)
{
	var_2aa82b86 = var_c77d2837["cin_ram_06_05_safiya_1st_friendlydown_vtol01"];
	var_748c4478 = "veh_t7_mil_vtol_egypt_nose_glass_d1";
	var_2aa82b86 function_1e5c6903(1, "");
	var_2aa82b86 function_1e5c6903(0, "_d1");
	var_2aa82b86 function_1e5c6903(1, "_d2");
	var_2aa82b86 function_db20c8d6("tag_glass4_d3_animate", var_748c4478, 1);
	level waittill("hash_495be65c");
	var_2aa82b86 function_1e5c6903(1, "_d1");
	var_2aa82b86 function_1e5c6903(0, "_d2");
	level waittill("hash_6f5e60c5");
	var_2aa82b86 function_db20c8d6("tag_glass4_d2_animate", var_748c4478, 1);
	var_2aa82b86 function_123d36d9("tag_glass4_d3_animate", var_748c4478, 1);
}

/*
	Name: function_1e5c6903
	Namespace: namespace_d7ca6f18
	Checksum: 0xBA89D409
	Offset: 0x1840
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_1e5c6903(var_b49e0088, var_d51654a4)
{
	if(!isdefined(var_b49e0088))
	{
		var_b49e0088 = 1;
	}
	if(!isdefined(var_d51654a4))
	{
		var_d51654a4 = "";
	}
	var_748c4478 = "veh_t7_mil_vtol_egypt_nose_glass_d1";
	if(var_b49e0088)
	{
		self function_db20c8d6("tag_glass" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_db20c8d6("tag_glass1" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_db20c8d6("tag_glass2" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_db20c8d6("tag_glass3" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_db20c8d6("tag_glass4" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_db20c8d6("tag_glass5" + var_d51654a4 + "_animate", var_748c4478, 1);
	}
	else
	{
		self function_123d36d9("tag_glass" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_123d36d9("tag_glass1" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_123d36d9("tag_glass2" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_123d36d9("tag_glass3" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_123d36d9("tag_glass4" + var_d51654a4 + "_animate", var_748c4478, 1);
		self function_123d36d9("tag_glass5" + var_d51654a4 + "_animate", var_748c4478, 1);
	}
}

/*
	Name: function_3659e172
	Namespace: namespace_d7ca6f18
	Checksum: 0x385609BA
	Offset: 0x1AF0
	Size: 0x27F
	Parameters: 0
	Flags: None
*/
function function_3659e172()
{
	var_4e03b768 = namespace_14b42b8a::function_7922262b("vtol_objective");
	namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_4e03b768);
	level waittill("hash_ca2d8f8");
	namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb");
	while(!level namespace_ad23e503::function_7922262b("vtol_igc_robots_dead"))
	{
		wait(0.5);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(!isdefined(var_5dc5e20a.var_fbf99626))
			{
				var_5dc5e20a.var_fbf99626 = 0;
			}
			if(function_7d15e2f8(var_4e03b768.var_722885f3, var_5dc5e20a.var_722885f3) > 1000)
			{
				if(var_5dc5e20a.var_fbf99626 == 0)
				{
					namespace_d0ef8521::function_48f26766("cp_waypoint_breadcrumb", var_5dc5e20a);
					var_5dc5e20a.var_fbf99626 = 1;
				}
				continue;
			}
			if(var_5dc5e20a.var_fbf99626 == 1)
			{
				namespace_d0ef8521::function_50ccee8d("cp_waypoint_breadcrumb", var_5dc5e20a);
				var_5dc5e20a.var_fbf99626 = 0;
			}
		}
	}
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_4e03b768);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_fbf99626 = undefined;
	}
}

/*
	Name: function_468dd319
	Namespace: namespace_d7ca6f18
	Checksum: 0xDD3BFED6
	Offset: 0x1D78
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_468dd319(var_6bfe1586)
{
	level namespace_ad23e503::function_74d6b22f("vtol_igc_trigger_used");
	namespace_cc27597::function_8f9f34e0("cin_ram_06_05_safiya_1st_friendlydown", &function_2e3a3b68, "play");
	level thread namespace_cc27597::function_43718187("cin_ram_06_05_safiya_1st_friendlydown", var_6bfe1586);
	self namespace_a230c2b1::function_e54c54c3();
}

/*
	Name: function_f3a727ef
	Namespace: namespace_d7ca6f18
	Checksum: 0x8E4B8832
	Offset: 0x1E18
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_f3a727ef(var_bd047092)
{
	if(!isdefined(var_bd047092))
	{
		var_bd047092 = 0;
	}
	level namespace_ad23e503::function_c35e6aab("vtol_igc_started");
	namespace_391e4301::function_ac2b4535("cin_ram_06_05_safiya_1st_friendlydown", "vtol_igc_teleport");
	namespace_cc27597::function_8f9f34e0("cin_ram_06_05_safiya_1st_friendlydown", &function_672d14aa, "play");
	level thread function_c6b9db();
	namespace_80983c42::function_80983c42("fx_expl_vtol_int");
	if(!var_bd047092)
	{
		level thread function_fc1660c3();
		namespace_80983c42::function_80983c42("fx_expl_igc_vtol_ext_smoke");
		level thread function_33108db5();
	}
	level thread function_c887803();
	level thread function_85f7b3f4();
}

/*
	Name: function_672d14aa
	Namespace: namespace_d7ca6f18
	Checksum: 0x6EB84DB5
	Offset: 0x1F60
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_672d14aa(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("vtol_igc_started");
	namespace_84970cc4::function_eaab05dc(function_99201f25("lgt_vtol_block", "targetname"), &function_48f26766);
}

/*
	Name: function_e78f7ba0
	Namespace: namespace_d7ca6f18
	Checksum: 0xD0394E3C
	Offset: 0x1FD8
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_e78f7ba0(var_c77d2837)
{
	level waittill("hash_1560247e");
	function_6ddd4fa4("qtp_vtol_nose");
	var_2ef9d306 = var_c77d2837["cin_ram_06_05_safiya_1st_friendlydown_vtol01"];
	var_2ef9d306 function_db20c8d6("tag_nose_animate", "veh_t7_mil_vtol_egypt_igc_nose", 1);
	var_2ef9d306 function_db20c8d6("tag_nose_animate", "veh_t7_mil_vtol_egypt_cockpit_d0", 1);
	var_2ef9d306 function_db20c8d6("tag_nose_animate", "veh_t7_mil_vtol_egypt_nose_d1", 1);
	var_2ef9d306 function_db20c8d6("tag_nose_animate", "veh_t7_mil_vtol_egypt_nose_glass_d1", 1);
	var_2ef9d306 function_db20c8d6("tag_nose_animate", "veh_t7_mil_vtol_egypt_nose_d0", 1);
	var_2ef9d306 function_db20c8d6("tag_nose_animate", "veh_t7_mil_vtol_egypt_screens_d1", 1);
}

/*
	Name: function_9585cf3
	Namespace: namespace_d7ca6f18
	Checksum: 0xF0239E60
	Offset: 0x2120
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_9585cf3(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("vtol_igc_done");
	namespace_80983c42::function_593e8a39("fx_expl_qtplaza_hotel");
	namespace_84970cc4::function_eaab05dc(function_99201f25("lgt_vtol_block", "targetname"), &function_50ccee8d);
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_db3c9568
	Namespace: namespace_d7ca6f18
	Checksum: 0x4FF78203
	Offset: 0x21C0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_db3c9568()
{
	namespace_cc27597::function_8f9f34e0("cin_ram_06_05_safiya_aie_breakin_02", &function_9cafdc73, "init");
	level thread namespace_cc27597::function_c35e6aab("cin_ram_06_05_safiya_aie_breakin_02");
}

/*
	Name: function_baa2531
	Namespace: namespace_d7ca6f18
	Checksum: 0x970C0AE3
	Offset: 0x2220
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_baa2531()
{
	namespace_cc27597::function_8f9f34e0("cin_ram_06_05_safiya_aie_breakin_pilotshoots", &function_c4dc56eb, "done");
	var_adc17f12 = [];
	var_adc17f12[0] = "player_looking_at_vtol_igc";
	var_adc17f12[1] = "vtol_igc_robots_alerted";
	level namespace_ad23e503::function_43ac000b(var_adc17f12);
	level notify("hash_ca2d8f8");
	level namespace_cc27597::function_43718187("cin_ram_06_05_safiya_aie_breakin_pilotshoots");
}

/*
	Name: function_c4dc56eb
	Namespace: namespace_d7ca6f18
	Checksum: 0x85E3DDA4
	Offset: 0x22D0
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_c4dc56eb(var_c77d2837)
{
	var_a15d7eed = function_391512da(var_c77d2837);
	foreach(var_5e953b6 in var_a15d7eed)
	{
		if(function_5dbf7eca(var_5e953b6, "robot"))
		{
			var_f6c5842 = var_c77d2837[var_5e953b6];
			if(function_5b49d38c(var_f6c5842))
			{
				var_f6c5842 function_2992720d();
			}
		}
	}
}

/*
	Name: function_a2be882d
	Namespace: namespace_d7ca6f18
	Checksum: 0xB9DDE961
	Offset: 0x23E0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_a2be882d()
{
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	var_3c54858a = function_b4cb3503("vtol_igc_hendricks_start", "targetname");
	wait(1);
	level.var_2fd26037 namespace_d84e54db::function_19e98020(var_3c54858a);
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_robots_alerted");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_9cafdc73
	Namespace: namespace_d7ca6f18
	Checksum: 0xD1A4DD8C
	Offset: 0x2498
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_9cafdc73(var_c77d2837)
{
	var_a15d7eed = function_391512da(var_c77d2837);
	foreach(var_5e953b6 in var_a15d7eed)
	{
		if(function_5dbf7eca(var_5e953b6, "robot"))
		{
			var_c77d2837[var_5e953b6] thread function_e9454b97();
		}
	}
}

/*
	Name: function_e9454b97
	Namespace: namespace_d7ca6f18
	Checksum: 0x8782EC9F
	Offset: 0x2580
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_e9454b97()
{
	self endon("hash_128f8789");
	level endon("hash_d1ac8f57");
	self thread function_bc906046();
	self namespace_82b91a51::function_5b7e3888("damage", "bulletwhizby", "pain", "proximity", "player_near_vtol_igc");
	level namespace_ad23e503::function_74d6b22f("vtol_igc_robots_alerted");
	level thread namespace_cc27597::function_43718187("cin_ram_06_05_safiya_aie_breakin_02");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	namespace_4dbf3ae3::function_42e87952("trig_spawn_vtol_igc");
	level notify("hash_d1ac8f57");
}

/*
	Name: function_bc906046
	Namespace: namespace_d7ca6f18
	Checksum: 0xC1B0808D
	Offset: 0x2678
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_bc906046()
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("vtol_igc_near_robots", "targetname");
	self notify("hash_d51f3d07");
}

/*
	Name: function_a64605e5
	Namespace: namespace_d7ca6f18
	Checksum: 0x69D8F8C3
	Offset: 0x26C0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a64605e5()
{
	self waittill("hash_1de32fa2");
	level namespace_ad23e503::function_74d6b22f("hendricks_at_vtol_igc");
}

/*
	Name: function_c6b9db
	Namespace: namespace_d7ca6f18
	Checksum: 0x64C31482
	Offset: 0x26F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c6b9db()
{
	level waittill("hash_30c9a209");
	level thread namespace_94c82dbc::function_5a4025b4();
}

/*
	Name: function_85f7b3f4
	Namespace: namespace_d7ca6f18
	Checksum: 0xF40948DE
	Offset: 0x2728
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_85f7b3f4()
{
	level namespace_ad23e503::function_1ab5ebec("vtol_igc_started");
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("truck_flip_vtol", "targetname");
	var_1cbcb46d thread namespace_cc27597::function_c35e6aab();
	level waittill("hash_c4f59e60");
	var_1cbcb46d thread namespace_cc27597::function_43718187();
	level waittill("hash_67926c8d");
	var_5abbae22 = function_6ada35ba("cin_ram_06_05_safiya_1st_friendlydown_guy06", "targetname");
	var_5abbae22 function_dc8c8404();
}

/*
	Name: function_c887803
	Namespace: namespace_d7ca6f18
	Checksum: 0x5ABCA539
	Offset: 0x2808
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c887803()
{
	level waittill("hash_3eedd8a9");
	namespace_94c82dbc::function_899f8822();
}

/*
	Name: function_33108db5
	Namespace: namespace_d7ca6f18
	Checksum: 0xC0211A40
	Offset: 0x2838
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_33108db5()
{
	level waittill("hash_33108db5");
	namespace_80983c42::function_593e8a39("fx_expl_igc_vtol_ext_smoke");
}

/*
	Name: function_fc1660c3
	Namespace: namespace_d7ca6f18
	Checksum: 0x2A0A5A6D
	Offset: 0x2870
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_fc1660c3()
{
	level waittill("hash_fc1660c3");
	namespace_80983c42::function_593e8a39("fx_expl_vtol_int");
}

/*
	Name: function_35210922
	Namespace: namespace_d7ca6f18
	Checksum: 0x3544CDC2
	Offset: 0x28A8
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_35210922()
{
	var_2ef9d306 = undefined;
	while(!isdefined(var_2ef9d306))
	{
		var_2ef9d306 = function_6ada35ba("cin_ram_06_05_safiya_1st_friendlydown_vtol01", "targetname");
		wait(1);
	}
	var_633b96c9 = function_84970cc4("veh_t7_mil_vtol_egypt_igc_nose", "veh_t7_mil_vtol_egypt_int_slice");
	foreach(var_fbcf7972 in var_633b96c9)
	{
		var_2ef9d306 function_db20c8d6("tag_wing_left_animate", var_fbcf7972, 1);
		var_2ef9d306 function_db20c8d6("tag_wing_right_animate", var_fbcf7972, 1);
		var_2ef9d306 function_db20c8d6("tag_wing_l_midbreak_animate", var_fbcf7972, 1);
		var_2ef9d306 function_db20c8d6("tag_wing_r_midbreak_animate", var_fbcf7972, 1);
	}
	var_43807dc4 = function_99201f25("vtol_cockpit_probe", "script_noteworthy");
	foreach(var_133e9095 in var_43807dc4)
	{
		var_133e9095 function_37f7858a(var_2ef9d306, "tag_cockpit_lgt");
	}
	var_2ef9d306 function_db20c8d6("tag_console_center_screen_animate_d0", "veh_t7_mil_vtol_egypt_cockpit_d0");
	var_2ef9d306 function_db20c8d6("tag_console_left_screen_animate_d0", "veh_t7_mil_vtol_egypt_cockpit_d0");
	var_2ef9d306 function_db20c8d6("tag_console_right_screen_animate_d0", "veh_t7_mil_vtol_egypt_cockpit_d0");
	var_2ef9d306 function_8ff2374e("veh_t7_mil_vtol_egypt_screens_d1", "tag_nose_animate");
	var_2ef9d306 function_8ff2374e("veh_t7_mil_vtol_egypt_cabin_details_attch", "tag_body_animate");
	var_2ef9d306 function_422037f5();
}

/*
	Name: function_31a2724a
	Namespace: namespace_d7ca6f18
	Checksum: 0x96590079
	Offset: 0x2BD0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_31a2724a()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	wait(1);
	level namespace_82b91a51::function_ef3f75eb("pres");
}

/*
	Name: function_6cbfd0c6
	Namespace: namespace_d7ca6f18
	Checksum: 0x996447C2
	Offset: 0x2C20
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_6cbfd0c6()
{
	var_a7d1013f = function_6ada35ba("trig_hendricks_sees_vtol", "targetname");
	while(1)
	{
		var_a7d1013f namespace_4dbf3ae3::function_1ab5ebec();
		if(var_a7d1013f.var_aef176e7 === level.var_2fd26037 || function_65f192a6(var_a7d1013f.var_aef176e7))
		{
			break;
		}
	}
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_we_got_a_frie_0", 0.5);
	level namespace_71b8dba1::function_a463d127("kane_scanning_for_lifesig_0");
	var_239be310 = function_6ada35ba("cin_ram_06_05_safiya_1st_friendlydown_guy01", "targetname");
	var_239be310 namespace_71b8dba1::function_81141386("plyr_screams_from_inside_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_that_s_lifesign_enou_0");
}

