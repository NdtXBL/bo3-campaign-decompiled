#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_siegebot_theia;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_accolades;
#using scripts\cp\cp_mi_cairo_infection_sim_reality_starts;
#using scripts\cp\cp_mi_cairo_infection_sound;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\coop;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_c3900363;

/*
	Name: function_d290ebfa
	Namespace: namespace_c3900363
	Checksum: 0xB7F95371
	Offset: 0x1340
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_7b244c18();
	level namespace_ad23e503::function_c35e6aab("player_exiting_downed_vtol");
	level namespace_ad23e503::function_c35e6aab("vtol_intro_complete");
	level namespace_ad23e503::function_c35e6aab("sarah_battle_friendly_spawned");
	level namespace_ad23e503::function_c35e6aab("sarah_defeated");
	level namespace_ad23e503::function_c35e6aab("sarah_interface_started");
	level namespace_ad23e503::function_c35e6aab("sarah_interface_done");
	level.var_b9a15c1e = function_99201f25("inf_wrecked_vtol", "targetname");
	level.var_377e3a8 = function_6ada35ba("sarah_bash2_clip", "targetname");
	if(isdefined(level.var_377e3a8))
	{
		level.var_377e3a8 function_422037f5();
		level.var_377e3a8 function_de8377bf();
	}
	function_2ea898a8();
	level.var_c1aa5253["crashed_vtol_exp_fx"] = "explosions/fx_exp_quadtank_death_sm";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_c3900363
	Checksum: 0xAC6C0BA8
	Offset: 0x14D8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	var_80bea535 = function_eaa48678(8);
	namespace_71e9cb84::function_50f16166("world", "building_destruction_callback", 1, var_80bea535, "int");
	namespace_71e9cb84::function_50f16166("world", "building_end_callback", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "vtol_fog_bank", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "sarah_tac_mode_disable", 1, 1, "int");
}

/*
	Name: function_7b244c18
	Namespace: namespace_c3900363
	Checksum: 0x7F618689
	Offset: 0x15D0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_7b244c18()
{
	namespace_cc27597::function_8f9f34e0("cin_inf_03_01_interface_1st_dni_02", &function_3a66ee4d);
	namespace_cc27597::function_8f9f34e0("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_c087a5cf);
	namespace_cc27597::function_8f9f34e0("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_1bb0323c);
	namespace_cc27597::function_8f9f34e0("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_45d8cfab);
	namespace_cc27597::function_8f9f34e0("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_56c9a7f3);
	namespace_cc27597::function_8f9f34e0("cin_inf_02_01_vign_interface_siegebot_bash", &function_68861104);
	namespace_cc27597::function_8f9f34e0("cin_inf_02_01_vign_interface_siegebot_bash_2", &function_24b31974);
}

/*
	Name: function_b127971
	Namespace: namespace_c3900363
	Checksum: 0x55883963
	Offset: 0x16F8
	Size: 0x28B
	Parameters: 0
	Flags: None
*/
function function_b127971()
{
	var_2aa82b86 = function_6ada35ba("vtol_intro", "targetname");
	var_2aa82b86 function_123d36d9("tag_console_center_screen_animate_d0");
	var_2aa82b86 function_123d36d9("tag_console_left_screen_animate_d0");
	var_2aa82b86 function_123d36d9("tag_console_right_screen_animate_d0");
	var_2aa82b86 function_8ff2374e("veh_t7_mil_vtol_egypt_cabin_details_attch", "tag_body_animate");
	var_2aa82b86 function_8ff2374e("veh_t7_mil_vtol_egypt_cabin_details_attch_screenglows", "tag_body_animate");
	var_b2c5be8 = function_6ada35ba("vtol_nose", "targetname");
	var_b2c5be8 function_8f279593();
	var_b2c5be8 function_37f7858a(var_2aa82b86);
	var_b2c5be8 thread function_d147e0e1();
	var_5c4b60ce = function_99201f25("light_vtol_flyin", "targetname");
	foreach(var_7c14d90b in var_5c4b60ce)
	{
		var_7c14d90b function_37f7858a(var_2aa82b86);
		var_7c14d90b thread function_5a717a52();
	}
	var_785aaccf = function_6ada35ba("light_vtol_flyin_spotlight", "targetname");
	if(isdefined(var_785aaccf))
	{
		var_785aaccf function_37f7858a(var_2aa82b86, "tag_winch");
		var_785aaccf thread function_5a717a52();
	}
}

/*
	Name: function_5a717a52
	Namespace: namespace_c3900363
	Checksum: 0x597B6FC8
	Offset: 0x1990
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5a717a52()
{
	level namespace_ad23e503::function_1ab5ebec("player_exiting_downed_vtol");
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_d147e0e1
	Namespace: namespace_c3900363
	Checksum: 0x89CA2F8E
	Offset: 0x19E0
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_d147e0e1()
{
	var_edff213c = 5;
	self function_db20c8d6("tag_glass_d1_animate");
	for(var_c957f6b6 = 1; var_c957f6b6 <= var_edff213c; var_c957f6b6++)
	{
		self function_db20c8d6("tag_glass" + var_c957f6b6 + "_d1_animate");
	}
	self function_db20c8d6("tag_glass_d2_animate");
	for(var_c957f6b6 = 1; var_c957f6b6 <= var_edff213c; var_c957f6b6++)
	{
		self function_db20c8d6("tag_glass" + var_c957f6b6 + "_d2_animate");
	}
	self function_db20c8d6("tag_glass4_d3_animate");
	level waittill("hash_3692720b");
	self function_8ff2374e("veh_t7_mil_vtol_egypt_screens_d1", "tag_nose_animate");
	self function_db20c8d6("tag_glass_animate");
	for(var_c957f6b6 = 1; var_c957f6b6 <= var_edff213c; var_c957f6b6++)
	{
		self function_db20c8d6("tag_glass" + var_c957f6b6 + "_animate");
	}
	self function_123d36d9("tag_glass_d2_animate");
	for(var_c957f6b6 = 1; var_c957f6b6 <= var_edff213c; var_c957f6b6++)
	{
		self function_123d36d9("tag_glass" + var_c957f6b6 + "_d2_animate");
	}
	level namespace_ad23e503::function_1ab5ebec("player_exiting_downed_vtol");
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_674469e5
	Namespace: namespace_c3900363
	Checksum: 0x8F23112E
	Offset: 0x1C38
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_674469e5()
{
	while(1)
	{
		level waittill("hash_380ae1f4");
		if(function_26299103(100) > 60)
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_javelin_missiles_inc_0", 1);
		}
		else if(function_26299103(100) < 40)
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_javelin_s_inbound_0", 1);
		}
	}
}

/*
	Name: function_65daad32
	Namespace: namespace_c3900363
	Checksum: 0xC5C7589D
	Offset: 0x1CE8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_65daad32()
{
	if(!level.var_a2488e6f)
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_explosive_spikes_inc_0", 1);
	}
}

/*
	Name: function_dd8a78c6
	Namespace: namespace_c3900363
	Checksum: 0xC46DDC74
	Offset: 0x1D28
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_dd8a78c6()
{
	level.var_42189297 endon("hash_128f8789");
	level waittill("hash_9f92e1e");
	level.var_42189297 thread function_179a0141();
	level.var_42189297 thread function_d47c7e44();
	level thread function_674469e5();
}

/*
	Name: function_179a0141
	Namespace: namespace_c3900363
	Checksum: 0xCACE8CBF
	Offset: 0x1DA0
	Size: 0x1E9
	Parameters: 0
	Flags: None
*/
function function_179a0141()
{
	self endon("hash_128f8789");
	var_2c8bd13b = 0;
	while(1)
	{
		while(self namespace_72ee5da4::function_4b5a00cb() == "groundCombat")
		{
			wait(2);
		}
		while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
		{
			wait(0.1);
		}
		level.var_a2488e6f = 1;
		var_d51654a4 = self namespace_72ee5da4::function_4b5a00cb();
		if(var_d51654a4 == "combat" || var_d51654a4 == "prepareDeath")
		{
			var_2c8bd13b++;
			if(var_2c8bd13b == 1)
			{
				level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_eyes_up_hall_s_take_0", 2);
				continue;
			}
			while(self namespace_72ee5da4::function_4b5a00cb() == "combat" || self namespace_72ee5da4::function_4b5a00cb() == "pain" || self namespace_72ee5da4::function_4b5a00cb() == "prepareDeath")
			{
				wait(2);
			}
		}
		else if(var_d51654a4 == "jumpUp" || var_d51654a4 == "jumpDown")
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_she_s_on_the_move_0", 1);
		}
		level.var_a2488e6f = 0;
		wait(1);
	}
}

/*
	Name: function_d47c7e44
	Namespace: namespace_c3900363
	Checksum: 0x8CE46970
	Offset: 0x1F98
	Size: 0x25F
	Parameters: 0
	Flags: None
*/
function function_d47c7e44()
{
	self endon("hash_128f8789");
	self thread function_7ef9b3ab();
	var_7884b12d = self.var_3a90f16b;
	self thread function_3d8d9969();
	while(self.var_3a90f16b > var_7884b12d * 0.7)
	{
		wait(0.1);
	}
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.1);
	}
	level.var_a2488e6f = 1;
	level namespace_71b8dba1::function_a463d127("kane_siege_bot_operating_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_get_through_0", 1);
	level.var_a2488e6f = 0;
	while(self.var_3a90f16b > var_7884b12d * 0.4)
	{
		wait(0.1);
	}
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.1);
	}
	level.var_a2488e6f = 1;
	level namespace_71b8dba1::function_a463d127("kane_siege_bot_now_operat_0", 1);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_her_shields_won_t_ho_0", 1);
	level.var_a2488e6f = 0;
	while(self.var_3a90f16b > var_7884b12d * 0.1)
	{
		wait(0.1);
	}
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.1);
	}
	level.var_a2488e6f = 1;
	level namespace_71b8dba1::function_a463d127("kane_siege_bot_energy_dow_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_she_s_our_only_lead_0", 1);
	level.var_a2488e6f = 0;
}

/*
	Name: function_7ef9b3ab
	Namespace: namespace_c3900363
	Checksum: 0x3D4A0DF8
	Offset: 0x2200
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_7ef9b3ab()
{
	self waittill("hash_128f8789");
	wait(3);
	level.var_a2488e6f = 0;
}

/*
	Name: function_3d8d9969
	Namespace: namespace_c3900363
	Checksum: 0xC14D54BF
	Offset: 0x2228
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_3d8d9969()
{
	self waittill("hash_128f8789");
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.1);
	}
	level.var_a2488e6f = 1;
	level namespace_71b8dba1::function_a463d127("kane_she_s_down_she_s_do_0", 1);
	level.var_a2488e6f = 0;
}

/*
	Name: function_6e5389
	Namespace: namespace_c3900363
	Checksum: 0xA9BF52BD
	Offset: 0x22A0
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_6e5389(var_c77d2837)
{
	level.var_42189297 endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("sarah_battle_friendly_spawned");
	namespace_76d95162::function_d9f49fba(0);
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_mech_suit_hostile_h_0");
	level namespace_71b8dba1::function_a463d127("kane_looks_like_sarah_hal_0", 0.5);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_got_a_fix_on_tay_0", 2);
	level namespace_71b8dba1::function_a463d127("kane_negative_0", 0.7);
	level namespace_71b8dba1::function_13b3b16a("plyr_then_the_only_way_to_0", 1);
	level notify("hash_9f92e1e");
	level.var_9e921465 = 1;
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_2ffaa595
	Namespace: namespace_c3900363
	Checksum: 0x15330A3B
	Offset: 0x23F0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_2ffaa595()
{
	while(isdefined(level.var_a2488e6f) && level.var_a2488e6f)
	{
		wait(0.05);
	}
	level namespace_71b8dba1::function_a463d127("kane_hurry_you_have_to_0", 0.5);
	function_b38700c3("kane_we_need_a_full_extra_0", 1);
	function_b38700c3("kane_i_know_this_isn_t_ea_0", 7);
	function_b38700c3("kane_no_sign_of_taylor_an_0", 8);
	function_b38700c3("kane_her_systems_are_fail_0", 5);
}

/*
	Name: function_b38700c3
	Namespace: namespace_c3900363
	Checksum: 0x148515C6
	Offset: 0x24C8
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_b38700c3(var_96896ff5, var_ee7dbbc9)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0;
	}
	if(!level namespace_ad23e503::function_7922262b("sarah_interface_started"))
	{
		wait(var_ee7dbbc9);
		if(!level namespace_ad23e503::function_7922262b("sarah_interface_started"))
		{
			level namespace_71b8dba1::function_a463d127(var_96896ff5);
		}
	}
}

/*
	Name: function_3a66ee4d
	Namespace: namespace_c3900363
	Checksum: 0xCD9D7D21
	Offset: 0x2558
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_3a66ee4d(var_c77d2837)
{
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level waittill("hash_4ad123af");
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_175490fb::function_f8669cbf(1);
			var_5dc5e20a namespace_71e9cb84::function_688ed188("hack_dni_fx");
		}
		level.var_2395e945[0] waittill("hash_814598ff");
		level thread namespace_36cbf523::function_eaf9c027("cp_infection_fs_interface");
	}
}

/*
	Name: function_45d8cfab
	Namespace: namespace_c3900363
	Checksum: 0x291CA292
	Offset: 0x2670
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_45d8cfab(var_c77d2837)
{
	level waittill("hash_45d8cfab");
	level namespace_cc27597::function_c35e6aab("cin_inf_02_01_vign_interface_siegebot_bash");
}

/*
	Name: function_56c9a7f3
	Namespace: namespace_c3900363
	Checksum: 0x51F52440
	Offset: 0x26B0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_56c9a7f3(var_c77d2837)
{
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level waittill("hash_9903f6a6");
		level namespace_82b91a51::function_67520c6a(1, undefined, &function_f508734c);
	}
	else
	{
		level thread function_f508734c();
	}
}

/*
	Name: function_e25e4f9
	Namespace: namespace_c3900363
	Checksum: 0x8D1F352C
	Offset: 0x2728
	Size: 0x393
	Parameters: 2
	Flags: None
*/
function function_e25e4f9(var_b04bc952, var_74cd64bc)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	namespace_d7916d65::function_73adcefc();
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_find_dr");
	level function_b127971();
	function_516efb66();
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level namespace_cc27597::function_c35e6aab("cin_inf_01_01_vtolarrival_1st_encounter_wires");
	level namespace_cc27597::function_c35e6aab("cin_inf_01_01_vtolarrival_1st_encounter_v2");
	function_48e3f00e();
	level namespace_71e9cb84::function_74d6b22f("vtol_fog_bank", 1);
	level thread function_69d9e05d();
	level thread function_4dd97558();
	level thread function_3513c0b9();
	level namespace_82b91a51::function_d8eaed3d(1);
	namespace_d7916d65::function_c32ba481();
	namespace_82b91a51::function_46d3a558(&"CP_MI_CAIRO_INFECTION_INTRO_LINE_1_FULL", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_1_SHORT", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_2_FULL", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_2_SHORT", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_3_FULL", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_3_SHORT", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_4_FULL", &"CP_MI_CAIRO_INFECTION_INTRO_LINE_4_SHORT");
	if(isdefined(level.var_9e37b96))
	{
		level thread [[level.var_9e37b96]]();
	}
	level thread namespace_eccdd5d1::function_2c69b4a0();
	level namespace_cc27597::function_8f9f34e0("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_8b952c00);
	level namespace_cc27597::function_8f9f34e0("cin_inf_01_01_vtolarrival_1st_encounter_v2", &function_3cb73539, "skip_completed");
	level thread namespace_cc27597::function_43718187("cin_inf_01_01_vtolarrival_1st_encounter_wires");
	level thread namespace_cc27597::function_43718187("cin_inf_01_01_vtolarrival_1st_encounter_sarah_cockpit_loop");
	level thread namespace_cc27597::function_43718187("cin_inf_01_01_vtolarrival_1st_encounter_v2");
	level namespace_ad23e503::function_1ab5ebec("player_exiting_downed_vtol");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	function_99e62b85();
	level namespace_cc27597::function_fcf56ab5("cin_inf_01_01_vtolarrival_1st_encounter_wires");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_find_dr");
	namespace_cc27597::function_f69c7a83();
	namespace_82b91a51::function_76f13293();
	level thread namespace_82b91a51::function_a0938376();
	namespace_1d795d47::function_be8adfb8("vtol_arrival");
}

/*
	Name: function_8b952c00
	Namespace: namespace_c3900363
	Checksum: 0xC214A475
	Offset: 0x2AC8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_8b952c00(var_c77d2837)
{
	level waittill("hash_552e05fb");
	level namespace_ad23e503::function_74d6b22f("player_exiting_downed_vtol");
	namespace_82b91a51::function_93831e79("vtol_arrival_coop_teleport");
}

/*
	Name: function_3cb73539
	Namespace: namespace_c3900363
	Checksum: 0xB2F02B5F
	Offset: 0x2B20
	Size: 0x469
	Parameters: 1
	Flags: None
*/
function function_3cb73539(var_c77d2837)
{
	var_cca89d10 = function_84970cc4("intro_friendly_vtol", "vtol_intro_veh1", "vtol_intro_veh3", "intro_friendly_vtol_vh");
	foreach(var_1c74455b in var_cca89d10)
	{
		var_838bd816 = function_99201f25(var_1c74455b, "targetname");
		foreach(var_91e835c9 in var_838bd816)
		{
			if(isdefined(var_91e835c9))
			{
				var_91e835c9.var_3e3a41eb = 1;
				var_91e835c9 notify("hash_128f8789");
				if(!function_5b49d38c(var_91e835c9))
				{
					var_91e835c9 function_dc8c8404();
				}
			}
		}
	}
	var_8da4fac5 = function_99201f25("vtol_intro_veh1", "targetname");
	var_b3a7752e = function_99201f25("vtol_intro_veh2", "targetname");
	var_d9a9ef97 = function_99201f25("vtol_intro_veh3", "targetname");
	foreach(var_a66cc9c4 in var_8da4fac5)
	{
		var_a66cc9c4.var_3e3a41eb = 1;
		var_a66cc9c4 notify("hash_128f8789");
		if(!function_5b49d38c(var_a66cc9c4))
		{
			var_a66cc9c4 function_dc8c8404();
		}
	}
	foreach(var_a66cc9c4 in var_b3a7752e)
	{
		var_a66cc9c4.var_3e3a41eb = 1;
		var_a66cc9c4 notify("hash_128f8789");
		if(!function_5b49d38c(var_a66cc9c4))
		{
			var_a66cc9c4 function_dc8c8404();
		}
	}
	foreach(var_a66cc9c4 in var_d9a9ef97)
	{
		var_a66cc9c4.var_3e3a41eb = 1;
		var_a66cc9c4 notify("hash_128f8789");
		if(!function_5b49d38c(var_a66cc9c4))
		{
			var_a66cc9c4 function_dc8c8404();
		}
	}
}

/*
	Name: function_69d9e05d
	Namespace: namespace_c3900363
	Checksum: 0x70E4D20E
	Offset: 0x2F98
	Size: 0x381
	Parameters: 0
	Flags: None
*/
function function_69d9e05d()
{
	foreach(var_56ef6b49 in level.var_b9a15c1e)
	{
		var_56ef6b49 function_50ccee8d();
	}
	var_5ff14e42 = function_99201f25("sarah_battle_launcher", "targetname");
	foreach(var_7e2968b3 in var_5ff14e42)
	{
		var_7e2968b3 function_8c8e79fe();
	}
	var_f0770462 = function_99201f25("sarah_battle_destructible", "script_noteworthy");
	foreach(var_6a147d3 in var_f0770462)
	{
		var_6a147d3 function_8c8e79fe();
	}
	var_da5600e3 = function_99201f25("sarah_battle_ammo", "targetname");
	foreach(var_4abed703 in var_da5600e3)
	{
		if(isdefined(var_4abed703.var_e119970e))
		{
			var_4abed703.var_e119970e namespace_a230c2b1::function_a0acef0(0);
		}
	}
	level waittill("hash_9903f6a6");
	var_5865e335 = namespace_2f06d687::function_289e6fd1("intro_friendly");
	foreach(var_bba6ddda in var_5865e335)
	{
		if(isdefined(var_bba6ddda))
		{
			var_bba6ddda function_dc8c8404();
		}
	}
}

/*
	Name: function_4dd97558
	Namespace: namespace_c3900363
	Checksum: 0x6652AD1B
	Offset: 0x3328
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function function_4dd97558()
{
	level waittill("hash_29e5a5dd");
	foreach(var_56ef6b49 in level.var_b9a15c1e)
	{
		var_56ef6b49 function_48f26766();
	}
	function_a081beb1();
	var_5ff14e42 = function_99201f25("sarah_battle_launcher", "targetname");
	foreach(var_7e2968b3 in var_5ff14e42)
	{
		var_7e2968b3 function_48f26766();
		namespace_82b91a51::function_76f13293();
	}
	var_f0770462 = function_99201f25("sarah_battle_destructible", "script_noteworthy");
	foreach(var_6a147d3 in var_f0770462)
	{
		var_6a147d3 function_48f26766();
		namespace_82b91a51::function_76f13293();
	}
	var_da5600e3 = function_99201f25("sarah_battle_ammo", "targetname");
	foreach(var_4abed703 in var_da5600e3)
	{
		if(isdefined(var_4abed703.var_e119970e))
		{
			var_4abed703.var_e119970e namespace_a230c2b1::function_a0acef0(1);
		}
		namespace_82b91a51::function_76f13293();
	}
	namespace_80983c42::function_80983c42("sarah_battle_fire");
}

/*
	Name: function_1bb0323c
	Namespace: namespace_c3900363
	Checksum: 0x3F8FAB0E
	Offset: 0x3658
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_1bb0323c(var_c77d2837)
{
	if(!namespace_cc27597::function_b1f75ee9())
	{
		if(level.var_c0e97bd == "vtol_arrival")
		{
			var_c77d2837["sarah_siegebot"] namespace_96fa87af::function_3762fc40();
			var_c77d2837["sarah_siegebot"] waittill("hash_c83ef708");
			var_c77d2837["sarah_siegebot"] namespace_96fa87af::function_e103651a();
		}
	}
}

/*
	Name: function_c087a5cf
	Namespace: namespace_c3900363
	Checksum: 0x39D1FA54
	Offset: 0x36F0
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c087a5cf(var_c77d2837)
{
	var_edc6e0e1 = var_c77d2837["vtol_intro"];
	if(level.var_c0e97bd == "vtol_arrival")
	{
		level waittill("hash_9903f6a6");
	}
	var_edc6e0e1 function_db20c8d6("tag_wing_left_animate", var_edc6e0e1.var_6df9264, 1);
}

/*
	Name: function_99e62b85
	Namespace: namespace_c3900363
	Checksum: 0xAA2E82
	Offset: 0x3770
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_99e62b85()
{
	var_f2fdc837 = namespace_14b42b8a::function_7922262b("s_sarah_battle_hendricks_start_pos");
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_2fd26037 function_9869ab67(var_f2fdc837.var_722885f3, var_f2fdc837.var_6ab6f4fd);
}

/*
	Name: function_8721a9e0
	Namespace: namespace_c3900363
	Checksum: 0x1A6CD674
	Offset: 0x37F8
	Size: 0x3FB
	Parameters: 2
	Flags: None
*/
function function_8721a9e0(var_b04bc952, var_74cd64bc)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	if(!var_74cd64bc)
	{
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_36cbf523::function_e905c73c);
	}
	level.var_9e921465 = 0;
	level.var_a2488e6f = 0;
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_1554f271 = &function_6255dfdc;
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_80983c42::function_80983c42("sarah_battle_fire");
		function_48e3f00e();
		level thread function_8f97d54e(1);
		function_516efb66(var_74cd64bc);
		level thread namespace_cc27597::function_c35e6aab("cin_inf_02_01_vign_interface_siegebot_bash");
		level thread namespace_cc27597::function_c35e6aab("cin_inf_01_01_vtolarrival_1st_encounter_v2");
		level namespace_ad23e503::function_74d6b22f("vtol_intro_complete");
		level thread function_3513c0b9();
		namespace_d7916d65::function_a2995f22();
		level thread namespace_cc27597::function_5c143f59("cin_inf_01_01_vtolarrival_1st_encounter_v2", undefined, undefined, 0.85, 1);
		level waittill("hash_29e5a5dd");
		level thread function_f508734c();
		level namespace_ad23e503::function_1ab5ebec("player_exiting_downed_vtol");
		namespace_82b91a51::function_93831e79("vtol_arrival_coop_teleport");
		function_99e62b85();
	}
	level thread namespace_eccdd5d1::function_97020766();
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_c03736ba::function_e9f7384d);
	namespace_80983c42::function_80983c42("sarah_battle_vtol_crash_fire");
	level.var_42189297 namespace_d84e54db::function_c9e45d52(0);
	level thread function_90de550e();
	level thread function_6e5389();
	level thread function_dd8a78c6();
	level thread function_a6425c73();
	function_96914e16();
	namespace_d0ef8521::function_74d6b22f("cp_level_infection_defeat_sarah", level.var_42189297);
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		level.var_2395e945[var_c957f6b6] function_4890e520();
		level.var_2395e945[var_c957f6b6] namespace_f25bd8c8::function_ad15914d();
	}
	level namespace_ad23e503::function_1ab5ebec("sarah_battle_friendly_spawned");
	level.var_2fd26037 thread function_a2d6949a();
	level.var_9db406db thread function_a2d6949a();
}

/*
	Name: function_516efb66
	Namespace: namespace_c3900363
	Checksum: 0x3F5772AA
	Offset: 0x3C00
	Size: 0x30B
	Parameters: 1
	Flags: None
*/
function function_516efb66(var_6e2f783e)
{
	if(!isdefined(var_6e2f783e))
	{
		var_6e2f783e = 0;
	}
	level.var_42189297 = namespace_2f06d687::function_7387a40a("sarah_boss");
	level.var_42189297 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_42189297 namespace_d84e54db::function_c9e45d52(1);
	level.var_42189297.var_170527fb = "sarah_siegebot";
	level.var_42189297 namespace_72ee5da4::function_81b6f1ac();
	var_729f9335 = level.var_42189297 function_d48f2ab3("tag_driver");
	var_febde835 = level.var_42189297 function_cd1d99bd("tag_driver");
	level.var_156d60f = namespace_82b91a51::function_b9fd52a4("c_hro_sarah_base", var_729f9335, var_febde835);
	level.var_156d60f function_cea50a94(0);
	level.var_156d60f.var_170527fb = "sarah_driver";
	level.var_156d60f namespace_71e9cb84::function_74d6b22f("sarah_tac_mode_disable", 1);
	if(var_6e2f783e)
	{
		level.var_156d60f function_76887c27();
	}
	function_43f446e3("sarah_battle_seigebot");
	function_43f446e3("players");
	function_49e95dc0("players", "sarah_battle_seigebot", 1000);
	level thread function_f5fcb226();
	namespace_dabbe128::function_356a4ee1(&function_72a45412);
	level.var_42189297 function_c7708f99("sarah_battle_seigebot");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_c7708f99("players");
		var_5dc5e20a.var_47b86c9b = GetTime();
	}
	function_70662d17();
}

/*
	Name: function_70662d17
	Namespace: namespace_c3900363
	Checksum: 0xBA1B36A0
	Offset: 0x3F18
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_70662d17()
{
	if(level.var_2395e945.size <= 1)
	{
		var_d28ae602 = 900;
	}
	else
	{
		var_d28ae602 = 1000 + 300 * level.var_2395e945.size - 1;
	}
	function_49e95dc0("players", "sarah_battle_seigebot", var_d28ae602);
}

/*
	Name: function_72a45412
	Namespace: namespace_c3900363
	Checksum: 0x9DFBC2B
	Offset: 0x3F98
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_72a45412()
{
	self function_c7708f99("players");
	self.var_47b86c9b = GetTime();
	function_70662d17();
}

/*
	Name: function_f5fcb226
	Namespace: namespace_c3900363
	Checksum: 0x5116A90F
	Offset: 0x3FE8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f5fcb226()
{
	level.var_42189297 endon("hash_128f8789");
	level waittill("hash_91737d19", var_11ee1e64);
	var_11ee1e64 function_c7708f99("players");
}

/*
	Name: function_24cf26d5
	Namespace: namespace_c3900363
	Checksum: 0xB2CE1887
	Offset: 0x4040
	Size: 0x32F
	Parameters: 0
	Flags: None
*/
function function_24cf26d5()
{
	level.var_42189297 endon("hash_128f8789");
	var_cda8dd73 = [];
	namespace_84970cc4::function_69554b3e(var_cda8dd73, level.var_2fd26037, 0);
	namespace_84970cc4::function_69554b3e(var_cda8dd73, level.var_9db406db, 0);
	while(1)
	{
		level waittill("hash_879719b9", var_49992acb);
		var_a4a6d439 = function_e7bdc1a1(var_49992acb, var_cda8dd73);
		if(level.var_9e921465)
		{
			level thread function_65daad32();
		}
		var_974cc07 = function_9c1377d2(var_49992acb);
		if(var_a4a6d439 == level.var_2fd26037)
		{
			var_3e94206a = "team_hendricks";
		}
		else
		{
			var_3e94206a = "team_khalil";
		}
		var_3ced446f = function_99201f25(var_3e94206a, "script_noteworthy");
		foreach(var_d84e54db in var_3ced446f)
		{
			var_d84e54db.var_4cb70d71 = var_d84e54db.var_7dfaf62;
			var_d84e54db.var_7dfaf62 = 512;
		}
		var_a4a6d439 namespace_d84e54db::function_b4f5e3b9(1);
		var_a4a6d439 namespace_d84e54db::function_19e98020(var_974cc07, 32);
		var_a4a6d439 waittill("hash_41d1aaf0");
		var_a4a6d439 function_e11ce512();
		var_a4a6d439 namespace_d84e54db::function_b4f5e3b9(0);
		var_3ced446f = function_99201f25(var_3e94206a, "script_noteworthy");
		foreach(var_d84e54db in var_3ced446f)
		{
			if(isdefined(var_d84e54db.var_4cb70d71))
			{
				var_d84e54db.var_7dfaf62 = var_d84e54db.var_4cb70d71;
				var_d84e54db.var_4cb70d71 = undefined;
			}
		}
	}
}

/*
	Name: function_3513c0b9
	Namespace: namespace_c3900363
	Checksum: 0xBC4867B
	Offset: 0x4378
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_3513c0b9()
{
	var_10364988 = function_99201f25("building_trigs", "targetname");
	var_10364988 namespace_84970cc4::function_966ecb29(var_10364988, &function_19bda85d);
	if(level.var_c0e97bd == "vtol_arrival")
	{
		level thread function_ef7f1d9f();
	}
}

/*
	Name: function_19bda85d
	Namespace: namespace_c3900363
	Checksum: 0x64A5FC4E
	Offset: 0x4408
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function function_19bda85d()
{
	self.var_10f44b5 = 0;
	self.var_e848e1ba = 1;
	if(isdefined(self.var_8202763a))
	{
		self.var_e848e1ba = self.var_8202763a;
	}
	level.var_42189297 endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("vtol_intro_complete");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aef176e7);
		if(var_aef176e7 == level.var_42189297)
		{
			if(self.var_caae374e === "building_b" && self.var_10f44b5 == 0)
			{
				level notify("hash_f5d02307");
				level.var_42189297.var_a92e753f = 1;
			}
			if(self.var_e848e1ba <= 2)
			{
				level thread function_3c458698(self.var_e848e1ba);
			}
			else
			{
				level namespace_71e9cb84::function_74d6b22f("building_destruction_callback", self.var_e848e1ba);
			}
			self.var_10f44b5++;
			self.var_e848e1ba++;
			if(self.var_10f44b5 == 2)
			{
				return;
			}
			while(var_aef176e7 function_32fa5072(self))
			{
				wait(0.1);
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_ef7f1d9f
	Namespace: namespace_c3900363
	Checksum: 0xD2F8526C
	Offset: 0x4590
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_ef7f1d9f()
{
	var_db07a21e = function_6ada35ba("building_a", "script_noteworthy");
	var_db07a21e.var_10f44b5 = 0;
	var_db07a21e.var_e848e1ba = 1;
	level waittill("hash_3692720b");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level function_3c458698(var_db07a21e.var_e848e1ba);
	}
	else
	{
		level thread function_8f97d54e(1);
	}
	var_db07a21e.var_10f44b5++;
	var_db07a21e.var_e848e1ba++;
	level waittill("hash_76c03f01");
	level namespace_ad23e503::function_74d6b22f("vtol_intro_complete");
}

/*
	Name: function_a081beb1
	Namespace: namespace_c3900363
	Checksum: 0xBB17F1C6
	Offset: 0x46A0
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_a081beb1()
{
	var_b6b51414 = function_99201f25("sarah_battle_launcher", "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_b6b51414.size; var_c957f6b6++)
	{
		if(isdefined(var_b6b51414[var_c957f6b6].var_8202763a) && var_b6b51414[var_c957f6b6].var_8202763a > level.var_2395e945.size)
		{
			var_b6b51414[var_c957f6b6] function_dc8c8404();
		}
	}
}

/*
	Name: function_a5a3b915
	Namespace: namespace_c3900363
	Checksum: 0xF183C349
	Offset: 0x4758
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_a5a3b915()
{
	level.var_42189297 endon("hash_128f8789");
	var_8d2625e1 = namespace_14b42b8a::function_7faf4c39("sarah_battle_magic_rpg", "targetname");
	var_dfcc01fd = function_c4d5ec1f("launcher_standard");
	while(1)
	{
		var_26db055e = namespace_84970cc4::function_47d18840(var_8d2625e1);
		var_3185a0cf = level.var_42189297.var_722885f3;
		var_19b59544 = (var_3185a0cf[0] + function_72a94f05(100 * -1, 100), var_3185a0cf[1] + function_72a94f05(100 * -1, 100), var_3185a0cf[2] + function_72a94f05(100 * -1, 100));
		function_87f3c622(var_dfcc01fd, var_26db055e.var_722885f3, var_19b59544);
		wait(function_72a94f05(2, 6));
	}
}

/*
	Name: function_a6425c73
	Namespace: namespace_c3900363
	Checksum: 0xE9ECDA7
	Offset: 0x48F8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_a6425c73()
{
	var_6748b62b = namespace_14b42b8a::function_7922262b("crashed_vtol_explosion", "targetname");
	if(!isdefined(var_6748b62b))
	{
		return;
	}
	var_1a859714 = function_bc7ce905(var_6748b62b.var_6ab6f4fd);
	var_5dc5e20a = namespace_84970cc4::function_47d18840(level.var_2395e945);
	while(1)
	{
		if(var_5dc5e20a namespace_36cbf523::function_a84dcdf8(var_6748b62b))
		{
			function_fd4ba5e1(level.var_c1aa5253["crashed_vtol_exp_fx"], var_6748b62b.var_722885f3, var_1a859714);
			return;
		}
		wait(0.1);
		if(!isdefined(var_5dc5e20a))
		{
			var_5dc5e20a = namespace_84970cc4::function_47d18840(level.var_2395e945);
		}
	}
}

/*
	Name: function_f508734c
	Namespace: namespace_c3900363
	Checksum: 0x7852668A
	Offset: 0x4A28
	Size: 0x227
	Parameters: 0
	Flags: None
*/
function function_f508734c()
{
	level.var_42189297 endon("hash_128f8789");
	level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
	level thread function_acea9315();
	level thread function_cc12870c();
	level thread function_5acf54bf();
	namespace_2f06d687::function_c6ffd13e("initial_egypt_army", &function_278b6566);
	namespace_2f06d687::function_c6ffd13e("reinforce_egypt_army", &function_ed2505ff);
	namespace_2f06d687::function_22356ba7("sp_ally_egypt_army");
	level namespace_ad23e503::function_74d6b22f("sarah_battle_friendly_spawned");
	namespace_2f06d687::function_c0434ff5("initial_egypt_army", 4);
	var_e2f02570 = function_99201f25("t_reinforce", "targetname");
	var_e2f02570 = namespace_84970cc4::function_8332f7f6(var_e2f02570);
	foreach(var_b75ca74d in var_e2f02570)
	{
		var_b75ca74d namespace_4dbf3ae3::function_42e87952();
		wait(function_72a94f05(7, 12));
		level notify("hash_d8096db5");
	}
}

/*
	Name: function_278b6566
	Namespace: namespace_c3900363
	Checksum: 0x8E262280
	Offset: 0x4C58
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_278b6566()
{
	self function_169cc712(level.var_9db406db, 0, 1024);
	self.var_caae374e = "team_khalil";
}

/*
	Name: function_ed2505ff
	Namespace: namespace_c3900363
	Checksum: 0x6A78B7EC
	Offset: 0x4C98
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_ed2505ff()
{
	self endon("hash_128f8789");
	self.var_44a68a57 = &function_1853d81a;
	self.var_2b04bf92 = 0.2;
	self namespace_d84e54db::function_c9e45d52(1);
	self waittill("hash_7ac7d963");
	var_ab891f49 = function_6ada35ba("goal_volume_" + self.var_db7bb468, "targetname");
	self function_169cc712(var_ab891f49);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_c9e45d52(0);
	wait(10);
	if(namespace_d73b9283::function_d2c92ee7())
	{
		self function_169cc712(level.var_9db406db, 0, 1024);
		self.var_caae374e = "team_khalil";
	}
	else
	{
		self function_169cc712(level.var_2fd26037, 0, 1024);
		self.var_caae374e = "team_hendricks";
	}
}

/*
	Name: function_1853d81a
	Namespace: namespace_c3900363
	Checksum: 0xFB768831
	Offset: 0x4DF8
	Size: 0xA5
	Parameters: 13
	Flags: None
*/
function function_1853d81a(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	if(var_dfcc01fd == function_c4d5ec1f("spike_charge_siegebot_theia"))
	{
		var_f9a179ed = self.var_3a90f16b + 100;
	}
	return var_f9a179ed;
}

/*
	Name: function_acea9315
	Namespace: namespace_c3900363
	Checksum: 0xD234A773
	Offset: 0x4EA8
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_acea9315()
{
	namespace_2f06d687::function_c6ffd13e("friendly_wasp", &function_6c7a52c3);
	while(!level namespace_ad23e503::function_7922262b("sarah_defeated"))
	{
		if(namespace_2f06d687::function_41e09b9("friendly_wasp") < 3)
		{
			namespace_2f06d687::function_7387a40a("mg_wasp_ally");
		}
		wait(function_72a94f05(3, 8));
	}
}

/*
	Name: function_6c7a52c3
	Namespace: namespace_c3900363
	Checksum: 0x4B9F7656
	Offset: 0x4F68
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_6c7a52c3()
{
	self endon("hash_128f8789");
	self.var_66ff806d = 1;
	self.var_32fb62ff = 0.2;
	self.var_ea719658 = 1;
	self function_ca711294("allies");
	wait(function_72a94f05(15, 25));
	if(!level namespace_ad23e503::function_7922262b("sarah_defeated"))
	{
		self function_2992720d();
	}
}

/*
	Name: function_b3d20adf
	Namespace: namespace_c3900363
	Checksum: 0x624881E2
	Offset: 0x5028
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_b3d20adf()
{
	level namespace_ad23e503::function_1ab5ebec("sarah_defeated");
	var_6e403395 = function_99201f25("amws_ally_intro_ai", "targetname");
	var_6e403395 = function_525ae497(var_6e403395, function_99201f25("amws_ally_ai", "targetname"), 0, 0);
	foreach(var_69837b75 in var_6e403395)
	{
		var_69837b75 namespace_d84e54db::function_b4f5e3b9(1);
		var_69837b75.var_7dfaf62 = 16;
		var_69837b75 namespace_72ee5da4::function_81b6f1ac();
	}
}

/*
	Name: function_cc12870c
	Namespace: namespace_c3900363
	Checksum: 0x1F1F1D5
	Offset: 0x5170
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_cc12870c()
{
	level thread function_b3d20adf();
	while(!level namespace_ad23e503::function_7922262b("sarah_defeated"))
	{
		if(namespace_2f06d687::function_41e09b9("friendly_amws") < 2)
		{
			var_31e90922 = namespace_2f06d687::function_7387a40a("amws_ally");
			var_31e90922.var_32fb62ff = 0.2;
			var_31e90922.var_3a90f16b = 130;
			var_31e90922 function_ca711294("allies");
		}
		wait(function_72a94f05(10, 20));
	}
}

/*
	Name: function_a2d6949a
	Namespace: namespace_c3900363
	Checksum: 0x244F543D
	Offset: 0x5270
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_a2d6949a()
{
	self endon("hash_128f8789");
	level.var_42189297 endon("hash_128f8789");
	while(1)
	{
		var_ccd4343c = function_7d15e2f8(self.var_722885f3, level.var_42189297.var_722885f3);
		if(var_ccd4343c < 256 || var_ccd4343c > 1200)
		{
			self namespace_d84e54db::function_b4f5e3b9(1);
			var_974cc07 = function_9c1377d2(level.var_42189297.var_722885f3);
			self namespace_d84e54db::function_19e98020(var_974cc07, 32, 1);
			self waittill("hash_41d1aaf0");
			self function_e11ce512();
			self namespace_d84e54db::function_b4f5e3b9(0);
		}
		wait(1);
	}
}

/*
	Name: function_9c1377d2
	Namespace: namespace_c3900363
	Checksum: 0x50EC6321
	Offset: 0x53A0
	Size: 0x15D
	Parameters: 1
	Flags: None
*/
function function_9c1377d2(var_c55dcd82)
{
	var_9b71f11e = function_fe0cfd2e("hero_cover", "targetname");
	var_8cc07584 = var_9b71f11e[0];
	var_ccd4343c = 0;
	foreach(var_90ca1fdd in var_9b71f11e)
	{
		var_c4e1f800 = function_7d15e2f8(var_c55dcd82, var_90ca1fdd.var_722885f3);
		if(var_c4e1f800 > var_ccd4343c && var_c4e1f800 > 256 && var_c4e1f800 < 1200 && !function_4eb15419(var_90ca1fdd))
		{
			var_8cc07584 = var_90ca1fdd;
			var_ccd4343c = var_c4e1f800;
		}
	}
	return var_8cc07584;
}

/*
	Name: function_5acf54bf
	Namespace: namespace_c3900363
	Checksum: 0x7CFD0313
	Offset: 0x5508
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_5acf54bf()
{
	level.var_42189297 endon("hash_128f8789");
	level waittill("hash_f5d02307");
	level thread function_e2f2e8a7("veh_spawn_technical_1", 1);
	namespace_2f06d687::function_45679edd("initial_egypt_army", 4);
	level thread function_e2f2e8a7("veh_spawn_technical_2");
}

/*
	Name: function_e2f2e8a7
	Namespace: namespace_c3900363
	Checksum: 0x4829C9F6
	Offset: 0x5598
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_e2f2e8a7(var_7edf3031, var_473f0c60)
{
	if(!isdefined(var_473f0c60))
	{
		var_473f0c60 = 0;
	}
	if(!isdefined(var_7edf3031))
	{
		return;
	}
	var_1178f0f3 = function_6ada35ba(var_7edf3031, "targetname");
	var_3ed4170d = namespace_2f06d687::function_7387a40a(var_1178f0f3);
	if(!isdefined(var_3ed4170d))
	{
		return;
	}
	var_44762fa4 = namespace_2f06d687::function_7387a40a("technical_driver");
	var_44762fa4 thread namespace_96fa87af::function_230eadd7(var_3ed4170d, "driver", 1);
	var_dfb53de7 = namespace_2f06d687::function_7387a40a("technical_gunner");
	var_dfb53de7 thread namespace_96fa87af::function_230eadd7(var_3ed4170d, "gunner1", 1);
	var_e2a955ea = function_243bb261(var_7edf3031 + "_start", "targetname");
	var_3ed4170d thread namespace_96fa87af::function_edb3a94e(var_e2a955ea);
	var_3ed4170d namespace_82b91a51::function_958c7633();
	var_3ed4170d waittill("hash_6cf6ac7e");
	if(isdefined(var_473f0c60) && var_473f0c60)
	{
		var_3ed4170d.var_ec01147f = var_44762fa4;
		var_3ed4170d.var_d8aedacc = var_dfb53de7;
		level.var_42189297 thread function_36b2a27b(var_3ed4170d);
		return;
	}
	var_3ed4170d namespace_82b91a51::function_4b741fdc();
	if(function_5b49d38c(var_44762fa4))
	{
		var_44762fa4 thread namespace_96fa87af::function_dca9dba2();
	}
	if(function_5b49d38c(var_dfb53de7))
	{
		var_dfb53de7 thread namespace_96fa87af::function_dca9dba2();
	}
}

/*
	Name: function_36b2a27b
	Namespace: namespace_c3900363
	Checksum: 0xAC61AACE
	Offset: 0x5800
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_36b2a27b(var_96fa87af)
{
	var_96fa87af.var_d8aedacc.var_170527fb = "truck_gunner";
	level namespace_82b91a51::function_564f2d81("theia_finished_platform_attack", "theia_preparing_javelin_attack");
	var_96fa87af function_dc8c8404();
	var_96fa87af.var_ec01147f function_dc8c8404();
	self namespace_72ee5da4::function_81b6f1ac();
	self namespace_cc27597::function_43718187("cin_inf_02_01_vign_interface_siegebot_bash_2", self);
	self namespace_72ee5da4::function_fa59cc99("groundCombat");
	self.var_a92e753f = 0;
	if(isdefined(level.var_377e3a8))
	{
		level.var_377e3a8 function_4083a98e();
		level.var_377e3a8 function_14c24d9d();
	}
}

/*
	Name: function_24b31974
	Namespace: namespace_c3900363
	Checksum: 0x57E61823
	Offset: 0x5930
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_24b31974(var_c77d2837)
{
	var_c77d2837["sarah_siegebot"] waittill("hash_fc589d16");
	var_c77d2837["truck_bash"] function_e48f905e("veh_t7_civ_truck_pickup_tech_egypt_dead");
}

/*
	Name: function_6255dfdc
	Namespace: namespace_c3900363
	Checksum: 0x49515AD5
	Offset: 0x5988
	Size: 0xCB
	Parameters: 11
	Flags: None
*/
function function_6255dfdc(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161)
{
	var_bdc821cf = 3;
	if(var_dfcc01fd == function_c4d5ec1f("spike_charge_siegebot_theia"))
	{
		if(isdefined(self.var_16bcd6ff) && self.var_16bcd6ff + var_bdc821cf * 1000 > GetTime())
		{
			return 0;
		}
		else
		{
			self.var_16bcd6ff = GetTime();
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_6714d6be
	Namespace: namespace_c3900363
	Checksum: 0xFB77BFDB
	Offset: 0x5A60
	Size: 0x323
	Parameters: 2
	Flags: None
*/
function function_6714d6be(var_b04bc952, var_74cd64bc)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		var_6de1bb68 = namespace_14b42b8a::function_7922262b("hendricks_start_pos_sarah_battle_end", "targetname");
		level.var_2fd26037 function_9869ab67(var_6de1bb68.var_722885f3, var_6de1bb68.var_6ab6f4fd);
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		var_28daa962 = namespace_14b42b8a::function_7922262b("khalil_start_pos_sarah_battle_end", "targetname");
		level.var_9db406db function_9869ab67(var_28daa962.var_722885f3, var_28daa962.var_6ab6f4fd);
		function_516efb66(var_74cd64bc);
		level.var_42189297 namespace_72ee5da4::function_fa59cc99("groundCombat");
		level.var_42189297 namespace_82b91a51::function_4b741fdc();
		level.var_42189297 namespace_a28cc5ab::function_d56305c8(0);
		level.var_42189297 namespace_96fa87af::function_3762fc40();
		level.var_42189297 function_c3945cd5(level.var_42189297.var_3a90f16b + 10000, level.var_42189297.var_722885f3, level.var_2395e945[0]);
	}
	level thread function_d7904bda();
	if(var_74cd64bc)
	{
		function_48e3f00e();
		namespace_80983c42::function_80983c42("sarah_battle_vtol_crash_fire");
		namespace_80983c42::function_80983c42("sarah_battle_fire");
		level namespace_ad23e503::function_74d6b22f("vtol_intro_complete");
		level namespace_71e9cb84::function_74d6b22f("building_end_callback", 1);
		level thread function_8f97d54e(1);
		level thread function_8f97d54e(2);
		level thread function_c05c7cfe();
		namespace_d7916d65::function_a2995f22();
	}
	namespace_76d95162::function_d9f49fba(0);
}

/*
	Name: function_cbf00d30
	Namespace: namespace_c3900363
	Checksum: 0xC10D79CC
	Offset: 0x5D90
	Size: 0xA5
	Parameters: 1
	Flags: None
*/
function function_cbf00d30(var_f4fd4814)
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586.var_3e317885 = var_6bfe1586 function_2f6b6a4c(var_f4fd4814);
	}
}

/*
	Name: function_96914e16
	Namespace: namespace_c3900363
	Checksum: 0x2A3A51E7
	Offset: 0x5E40
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_96914e16()
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		if(isdefined(var_6bfe1586.var_3e317885))
		{
			var_6bfe1586 function_2b74b70a(var_6bfe1586.var_3e317885);
			var_6bfe1586.var_3e317885 = undefined;
		}
	}
}

/*
	Name: function_f72443b3
	Namespace: namespace_c3900363
	Checksum: 0x27A62C40
	Offset: 0x5F00
	Size: 0x93
	Parameters: 4
	Flags: None
*/
function function_f72443b3(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	level namespace_71e9cb84::function_74d6b22f("vtol_fog_bank", 0);
	namespace_d0ef8521::function_31cd1834("cp_level_infection_find_dr");
	function_cf47c514(0);
}

/*
	Name: function_eaebdc16
	Namespace: namespace_c3900363
	Checksum: 0x9A6FFE0
	Offset: 0x5FA0
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function function_eaebdc16(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	namespace_82b91a51::function_67520c6a(0.1, undefined, &function_cf47c514, 1);
}

/*
	Name: function_e6eaed98
	Namespace: namespace_c3900363
	Checksum: 0x8F6092E8
	Offset: 0x6020
	Size: 0xAD
	Parameters: 4
	Flags: None
*/
function function_e6eaed98(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	var_5f60144f = function_b8494651("allies");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5f60144f.size; var_c957f6b6++)
	{
		var_5f60144f[var_c957f6b6] function_dc8c8404();
	}
}

/*
	Name: function_4305af9c
	Namespace: namespace_c3900363
	Checksum: 0xD1C14C54
	Offset: 0x60D8
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_4305af9c()
{
	level.var_1554f271 = undefined;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		self.var_16bcd6ff = undefined;
		self.var_47b86c9b = undefined;
	}
}

/*
	Name: function_cf47c514
	Namespace: namespace_c3900363
	Checksum: 0xF7AD56D7
	Offset: 0x6170
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_cf47c514(var_864a3d55)
{
	var_2a95256 = function_6ada35ba("sarah_siegebot_death_clip", "targetname");
	if(isdefined(var_2a95256))
	{
		if(var_864a3d55)
		{
			var_2a95256 function_48f26766();
		}
		else
		{
			var_2a95256 function_50ccee8d();
		}
	}
}

/*
	Name: function_d7904bda
	Namespace: namespace_c3900363
	Checksum: 0x7AF243D8
	Offset: 0x61F8
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_d7904bda()
{
	var_b1a4293e = namespace_82b91a51::function_b9fd52a4("tag_origin", level.var_42189297.var_722885f3, level.var_42189297.var_6ab6f4fd);
	var_b1a4293e.var_170527fb = "tag_align_sarah";
	function_4305af9c();
	namespace_cc27597::function_8f9f34e0("cin_inf_03_01_interface_1st_dni_02", &function_ed02c344, "init");
	level namespace_cc27597::function_c35e6aab("cin_inf_03_01_interface_1st_dni_02");
	level thread function_2ffaa595();
	level namespace_ad23e503::function_1ab5ebec("sarah_interface_done");
	level.var_2fd26037 namespace_82b91a51::function_c49ce021("hendricks");
	level.var_2fd26037 namespace_82b91a51::function_20ffc8ff();
	level.var_9db406db namespace_82b91a51::function_c49ce021("khalil");
	level.var_9db406db namespace_82b91a51::function_20ffc8ff();
	if(isdefined(level.var_156d60f))
	{
		level.var_156d60f function_dc8c8404();
	}
	var_b1a4293e function_dc8c8404();
	namespace_1d795d47::function_be8adfb8("sarah_battle_end");
}

/*
	Name: function_ed02c344
	Namespace: namespace_c3900363
	Checksum: 0x50111CB4
	Offset: 0x63C0
	Size: 0x301
	Parameters: 1
	Flags: None
*/
function function_ed02c344(var_c77d2837)
{
	wait(1);
	var_7d116593 = namespace_14b42b8a::function_7922262b("s_sim_reality_lighting_hint", "targetname");
	level thread namespace_36cbf523::function_7aca917c(var_7d116593.var_722885f3);
	var_b7f41419 = function_9b7fda5e("trigger_radius_use", var_c77d2837["sarah_driver"].var_722885f3 + VectorScale((0, 0, 1), 15), 0, 125, 144);
	var_b7f41419 function_1d5013fa();
	var_b7f41419 function_bb863f19();
	var_b7f41419 function_dc378587("none");
	var_b7f41419 function_1f80b3d5();
	/#
		function_617f6eba(var_b7f41419.var_722885f3, 1000, (1, 0, 0));
	#/
	var_b7f41419.var_bfe9d19a = namespace_82b91a51::function_14518e76(var_b7f41419, &"cp_level_infection_interface_sarah", &"CP_MI_CAIRO_INFECTION_T_DNI", &function_795efef);
	while(1)
	{
		var_b7f41419 waittill("hash_6453bafb", var_5dc5e20a);
		level thread namespace_eccdd5d1::function_a693b757();
		if(function_65f192a6(var_5dc5e20a))
		{
			var_b7f41419.var_bfe9d19a namespace_a230c2b1::function_e54c54c3();
			var_b7f41419 function_dc8c8404();
			namespace_d0ef8521::function_31cd1834("cp_level_infection_interface_sarah");
			level namespace_ad23e503::function_74d6b22f("sarah_interface_started");
			if(isdefined(level.var_612d3f9))
			{
				level thread [[level.var_612d3f9]]();
			}
			level.var_efa959f1 = 0;
			namespace_cc27597::function_8f9f34e0("cin_inf_03_01_interface_1st_dni_02", &function_271fa79e, "skip_completed");
			level thread namespace_cc27597::function_43718187("cin_inf_03_01_interface_1st_dni_02", var_5dc5e20a);
			level thread namespace_b2b18209::function_f6fce5f1();
			function_3b4ccd2e();
			level namespace_ad23e503::function_74d6b22f("sarah_interface_done");
			return;
		}
	}
}

/*
	Name: function_271fa79e
	Namespace: namespace_c3900363
	Checksum: 0x9A2C7470
	Offset: 0x66D0
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_271fa79e(var_c77d2837)
{
	level.var_efa959f1 = 1;
}

/*
	Name: function_3b4ccd2e
	Namespace: namespace_c3900363
	Checksum: 0xB59CB62F
	Offset: 0x66F0
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_3b4ccd2e()
{
	for(var_85c195bd = 0; var_85c195bd < 24 && !level.var_efa959f1;  = 0)
	{
		wait(0.1);
	}
}

/*
	Name: function_795efef
	Namespace: namespace_c3900363
	Checksum: 0xEE762A10
	Offset: 0x6748
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_795efef(var_5dc5e20a)
{
	self.var_4dbf3ae3 notify("hash_6453bafb", var_5dc5e20a);
}

/*
	Name: function_90de550e
	Namespace: namespace_c3900363
	Checksum: 0x646223ED
	Offset: 0x6778
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_90de550e()
{
	level namespace_cc27597::function_43718187("cin_inf_02_01_vign_interface_siegebot_bash");
	level namespace_cc27597::function_c35e6aab("cin_inf_02_01_vign_interface_siegebot_death");
	level.var_156d60f thread function_76887c27();
	level.var_42189297 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_42189297 namespace_72ee5da4::function_efe9815e("groundCombat");
	level thread function_a5a3b915();
	level thread function_24cf26d5();
	level.var_42189297 waittill("hash_128f8789");
	level thread namespace_eccdd5d1::function_973b77f9();
	level namespace_ad23e503::function_74d6b22f("sarah_defeated");
	namespace_d0ef8521::function_31cd1834("cp_level_infection_defeat_sarah");
	level namespace_cc27597::function_43718187("cin_inf_02_01_vign_interface_siegebot_death");
	namespace_1d795d47::function_be8adfb8("sarah_battle");
	level thread function_c05c7cfe();
}

/*
	Name: function_76887c27
	Namespace: namespace_c3900363
	Checksum: 0x921E6B1E
	Offset: 0x68F8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_76887c27()
{
	level.var_42189297 thread namespace_cc27597::function_43718187("cin_inf_01_01_vtolarrival_1st_encounter_sarah_cockpit_loop", self);
}

/*
	Name: function_68861104
	Namespace: namespace_c3900363
	Checksum: 0xF406617B
	Offset: 0x6928
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_68861104(var_c77d2837)
{
	var_1e13503b = var_c77d2837["sarah_truck_bash"];
	var_1e13503b.var_aab0d56f = 0;
	var_1e13503b.var_2b61d4a7 = 1;
	var_1e13503b waittill("hash_3c655080");
	var_1e13503b notify("hash_128f8789");
	var_1e13503b function_e48f905e(var_1e13503b.var_c8e6ad50);
	var_bead0234 = namespace_14b42b8a::function_7922262b("s_siegebot_bash_explosion", "targetname");
	level.var_42189297 function_ecf27a98(function_c4d5ec1f("frag_grenade"), var_bead0234.var_722885f3, (0, 0, 1), 0);
}

/*
	Name: function_c05c7cfe
	Namespace: namespace_c3900363
	Checksum: 0x305A1E52
	Offset: 0x6A30
	Size: 0x379
	Parameters: 0
	Flags: None
*/
function function_c05c7cfe()
{
	var_3ced446f = function_24e95264("allies", "human");
	var_87840852 = function_fe0cfd2e("nd_post_sarah", "script_noteworthy");
	var_51c45f53 = function_fe0cfd2e("nd_post_sarah_hendricks", "script_noteworthy");
	var_a7b9f562 = var_87840852.size + 1;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_3ced446f.size; var_c957f6b6++)
	{
		if(function_5b49d38c(var_3ced446f[var_c957f6b6]) && !var_3ced446f[var_c957f6b6] namespace_82b91a51::function_d3426abc())
		{
			var_2540d664 = 1;
			foreach(var_6bfe1586 in level.var_9b1393e7)
			{
				if(var_6bfe1586 namespace_82b91a51::function_d61b846f(var_3ced446f[var_c957f6b6].var_722885f3 + VectorScale((0, 0, 1), 40)))
				{
					var_2540d664 = 0;
				}
			}
			if(var_2540d664)
			{
				var_3ced446f[var_c957f6b6] function_2992720d();
			}
		}
	}
	var_bc0bb597 = 0;
	foreach(var_3b8db917 in var_3ced446f)
	{
		if(function_5b49d38c(var_3b8db917))
		{
			var_3b8db917.var_7dfaf62 = 128;
			var_3b8db917 function_dec5be9a();
			var_3b8db917 function_fb5720f7();
			var_3b8db917 function_e11ce512();
			var_3b8db917 namespace_d84e54db::function_b4f5e3b9(1);
			if(var_3b8db917 == level.var_2fd26037)
			{
				var_3b8db917 function_169cc712(var_51c45f53[0], 1);
				continue;
			}
			var_3b8db917 function_169cc712(var_87840852[var_bc0bb597], 1, 128, 128);
			var_bc0bb597++;
			if(var_bc0bb597 == var_87840852.size)
			{
				return;
			}
		}
	}
}

/*
	Name: function_5ee3bff5
	Namespace: namespace_c3900363
	Checksum: 0xB97747CB
	Offset: 0x6DB8
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_5ee3bff5(var_679a97b7)
{
	self endon("hash_128f8789");
	self endon("hash_41d1aaf0");
	level endon("hash_eeb362cc");
	var_7e5d2524 = function_dc99997a(128, 256);
	var_e73aacd3 = function_f679a325(self.var_722885f3 - var_679a97b7) * var_7e5d2524;
	var_2188bf75 = var_679a97b7 + var_e73aacd3;
	self function_e65887e4(var_2188bf75, 1);
}

/*
	Name: function_48e3f00e
	Namespace: namespace_c3900363
	Checksum: 0x1FE9E2A
	Offset: 0x6E88
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_48e3f00e()
{
	for(var_c957f6b6 = 1; var_c957f6b6 <= 2; var_c957f6b6++)
	{
		var_cbb15570 = "p7_fxanim_cp_infection_sarah_building_0" + var_c957f6b6 + "_bundle";
		var_666ebfcb = namespace_14b42b8a::function_7922262b(var_cbb15570, "scriptbundlename");
		if(isdefined(var_666ebfcb))
		{
			level thread namespace_cc27597::function_c35e6aab(var_cbb15570);
		}
		function_6712dcb2("m_sarah_building_0" + var_c957f6b6, 0);
	}
}

/*
	Name: function_3c458698
	Namespace: namespace_c3900363
	Checksum: 0x33590271
	Offset: 0x6F50
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_3c458698(var_b6dcd715)
{
	var_cbb15570 = "p7_fxanim_cp_infection_sarah_building_0" + var_b6dcd715 + "_bundle";
	var_666ebfcb = namespace_14b42b8a::function_7922262b(var_cbb15570, "scriptbundlename");
	if(isdefined(var_666ebfcb))
	{
		level namespace_cc27597::function_43718187(var_cbb15570);
		function_6712dcb2("m_sarah_building_0" + var_b6dcd715, 1);
	}
}

/*
	Name: function_8f97d54e
	Namespace: namespace_c3900363
	Checksum: 0xD91448BA
	Offset: 0x7000
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_8f97d54e(var_b6dcd715)
{
	var_cbb15570 = "p7_fxanim_cp_infection_sarah_building_0" + var_b6dcd715 + "_bundle";
	var_666ebfcb = namespace_14b42b8a::function_7922262b(var_cbb15570, "scriptbundlename");
	if(isdefined(var_666ebfcb))
	{
		level thread namespace_cc27597::function_5c143f59(var_cbb15570);
	}
}

/*
	Name: function_6712dcb2
	Namespace: namespace_c3900363
	Checksum: 0x6CB4BB41
	Offset: 0x7088
	Size: 0x159
	Parameters: 2
	Flags: None
*/
function function_6712dcb2(var_a0b86a77, var_ed6b2f03)
{
	if(!isdefined(var_ed6b2f03))
	{
		var_ed6b2f03 = 1;
	}
	var_5cee1345 = function_99201f25(var_a0b86a77, "targetname");
	if(var_ed6b2f03)
	{
		foreach(var_6df9264 in var_5cee1345)
		{
			var_6df9264 function_48f26766();
		}
		break;
	}
	foreach(var_6df9264 in var_5cee1345)
	{
		var_6df9264 function_8c8e79fe();
	}
}

