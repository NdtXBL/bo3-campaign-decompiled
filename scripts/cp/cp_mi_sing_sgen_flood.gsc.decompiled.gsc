#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_accolades;
#using scripts\cp\cp_mi_sing_sgen_pallas;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
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
#using scripts\shared\util_shared;

#namespace namespace_caee6f4a;

/*
	Name: function_37c559db
	Namespace: namespace_caee6f4a
	Checksum: 0xF7FA6828
	Offset: 0x17D0
	Size: 0x4B3
	Parameters: 2
	Flags: None
*/
function function_37c559db(var_b04bc952, var_74cd64bc)
{
	function_37af8a07();
	namespace_d5067552::function_41cd3a68(30);
	namespace_2f06d687::function_2b37a3c9("flood_combat_runners", "script_noteworthy", &function_ac25b5d5);
	namespace_84970cc4::function_eaab05dc(function_99201f25("floor_door_hint_trigger", "targetname"), &function_175e6b8e, 0);
	if(var_74cd64bc)
	{
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_646f304f::function_4ef8cf79();
		function_6ada35ba("pallas_lift_front", "targetname") namespace_82b91a51::function_20ffc8ff();
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_confront_pallas");
		namespace_84970cc4::function_eaab05dc(function_b8494651("axis"), &function_dc8c8404);
		namespace_d7916d65::function_a2995f22();
		if(level.var_31aefea8 === "dev_flood_combat")
		{
			level.var_2395e945[0] function_a30814d((1152, -3864, -4876));
			level.var_2395e945[0] function_eda2be50((0, 0, 0));
		}
	}
	else
	{
		namespace_82b91a51::function_11a89b44(undefined, 1, 3);
		level namespace_82b91a51::function_f7beb173();
		namespace_82b91a51::function_593c2af4(0.5, "black", "hide_trans_flood");
	}
	level thread namespace_cba4cc55::function_423cfae8("charging_station_entrance", "open");
	level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 1);
	function_6c1294b8("phys_buoyancy", 1);
	namespace_2f06d687::function_2b37a3c9("flood_reinforcement_robot", "script_noteworthy", &function_ae51faf3);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("can_melee", 0);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("can_be_meleed", 0);
	level thread function_aa1d0311();
	function_74594539();
	var_7082999f = namespace_14b42b8a::function_7faf4c39("charging_station_spawn_point");
	namespace_84970cc4::function_966ecb29(var_7082999f, &namespace_82b91a51::function_6729b6ba, 5, "post_pallas");
	namespace_84970cc4::function_966ecb29(function_99201f25("water_spout_trigger", "targetname"), &function_80012633);
	namespace_84970cc4::function_966ecb29(function_99201f25("stumble_trigger", "targetname"), &namespace_cba4cc55::function_aef08215);
	function_d290ebfa();
	namespace_1d795d47::function_be8adfb8("flood_combat");
}

/*
	Name: function_ebe27bf1
	Namespace: namespace_caee6f4a
	Checksum: 0x4D186642
	Offset: 0x1C90
	Size: 0x33
	Parameters: 4
	Flags: None
*/
function function_ebe27bf1(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_99202726::function_bc2458f5();
}

/*
	Name: function_ba34fbda
	Namespace: namespace_caee6f4a
	Checksum: 0xFA89452F
	Offset: 0x1CD0
	Size: 0x4BB
	Parameters: 2
	Flags: None
*/
function function_ba34fbda(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level namespace_ad23e503::function_c35e6aab("hendricks_defend_started");
		level namespace_ad23e503::function_c35e6aab("flood_defend_hendricks_at_door");
		namespace_84970cc4::function_eaab05dc(function_99201f25("floor_door_hint_trigger", "targetname"), &function_175e6b8e, 0);
		namespace_fa13d4ba::function_bff1a867(var_b04bc952);
		namespace_646f304f::function_4ef8cf79();
		function_6ada35ba("pallas_lift_front", "targetname") namespace_82b91a51::function_20ffc8ff();
		level namespace_ad23e503::function_74d6b22f("pallas_lift_front_open");
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
		namespace_84970cc4::function_eaab05dc(function_b8494651("axis"), &function_dc8c8404);
		if(level.var_31aefea8 === "dev_flood_combat")
		{
			level.var_2395e945[0] function_a30814d((1152, -3864, -4876));
			level.var_2395e945[0] function_eda2be50((0, 0, 0));
		}
		level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 1);
		function_6c1294b8("phys_buoyancy", 1);
		namespace_2f06d687::function_2b37a3c9("flood_reinforcement_robot", "script_noteworthy", &function_ae51faf3);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("can_melee", 0);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("can_be_meleed", 0);
		function_61810cbd();
		namespace_84970cc4::function_966ecb29(function_99201f25("water_spout_trigger", "targetname"), &function_80012633);
		level thread function_e9256bf8();
		level thread function_e9c576dc();
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_confront_pallas");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_get_to_surface");
		level thread namespace_d0ef8521::function_45d1556("flood_combat_breadcrumb_end_trig");
		level thread function_73cf7557();
		var_c3f856f0 = function_6ada35ba("flood_defend_out_of_boundary_trig", "targetname");
		var_c3f856f0 function_bb863f19();
		namespace_d7916d65::function_a2995f22();
	}
	namespace_2f06d687::function_2b37a3c9("flood_defend_catwalk_spawn_zone_robot", "targetname", &function_1348c36b);
	function_7c4f794b(var_74cd64bc);
	namespace_d5067552::function_41cd3a68(32);
	namespace_1d795d47::function_be8adfb8("flood_defend");
}

/*
	Name: function_1348c36b
	Namespace: namespace_caee6f4a
	Checksum: 0x8513749E
	Offset: 0x2198
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_1348c36b()
{
	var_e0b7400e = 2;
	var_10fcb680 = namespace_cba4cc55::function_411dc61b(15, 11);
	if(var_10fcb680 > function_dc99997a(0, 100))
	{
		var_e0b7400e = 3;
	}
	self.var_7dfaf62 = 256;
	self namespace_d84e54db::function_ceb883cd("rogue_control", "forced_level_" + var_e0b7400e);
}

/*
	Name: function_e2a342e4
	Namespace: namespace_caee6f4a
	Checksum: 0x94DAAFC6
	Offset: 0x2258
	Size: 0x18B
	Parameters: 4
	Flags: None
*/
function function_e2a342e4(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	var_e3b635fb = function_b8494651("axis", "team3");
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(!(isdefined(var_d84e54db.var_8fc0e50e) && var_d84e54db.var_8fc0e50e == "robot"))
		{
			var_d84e54db.var_c584775c = 1;
			var_d84e54db namespace_cba4cc55::function_ceda7454();
			continue;
		}
		var_d84e54db namespace_82b91a51::function_20ffc8ff();
	}
	if(isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("can_melee", 1);
		level.var_2fd26037 namespace_d84e54db::function_ceb883cd("can_be_meleed", 1);
	}
}

/*
	Name: function_37af8a07
	Namespace: namespace_caee6f4a
	Checksum: 0x97AEA088
	Offset: 0x23F0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("hendricks_defend_started");
	level namespace_ad23e503::function_c35e6aab("flood_combat_nag_playing");
	level namespace_ad23e503::function_c35e6aab("flood_defend_hendricks_at_door");
}

/*
	Name: function_4234be51
	Namespace: namespace_caee6f4a
	Checksum: 0x90E62A93
	Offset: 0x2460
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_4234be51(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("pallas_lift_front_open");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_get_to_surface");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_caee6f4a
	Checksum: 0x8EF44569
	Offset: 0x24B0
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	var_46cf12c3 = function_6ada35ba("surgical_room_entrance_close", "targetname");
	level thread function_6cfe8da3();
	level thread function_7541af2d();
	level thread function_ab5cee74();
	level thread function_e9c576dc();
	level thread function_6e0718d8();
	level thread function_ef6ea5f9();
	level thread function_1d0ccf06();
	level thread function_28b80c6f();
	level namespace_82b91a51::function_ef3f75eb("escp");
	namespace_cc27597::function_8f9f34e0("cin_sgen_20_02_twinrevenge_1st_elevator", &function_4234be51, "done");
	level thread namespace_cc27597::function_43718187("cin_sgen_20_02_twinrevenge_1st_elevator");
	namespace_4dbf3ae3::function_1ab5ebec("surprised_54i_trigger");
	level thread function_324a038c();
	level thread function_d62206d0();
	level thread function_3aaf91d3();
	level namespace_ad23e503::function_1ab5ebec("flood_combat_surgical_room_door_close");
	namespace_d5067552::function_bae40a28("flood_combat_defend_room_fallback_spawns");
	level thread function_f6ac14bc();
	level thread function_8f417d1b();
	level thread function_a86ae95d();
	level namespace_ad23e503::function_d266a8b4(10, "flood_defend_zone_started");
	level notify("hash_5bea2226");
	namespace_d5067552::function_2992720d("flood_combat_defend_room_fallback_spawns", 1);
	level namespace_ad23e503::function_d266a8b4(30, "flood_defend_reached");
	level namespace_ad23e503::function_74d6b22f("flood_defend_reached");
}

/*
	Name: function_3aaf91d3
	Namespace: namespace_caee6f4a
	Checksum: 0xA6AD6441
	Offset: 0x27A0
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_3aaf91d3()
{
	if(function_27c72c1b())
	{
		level namespace_ad23e503::function_1ab5ebec("hendricks_defend_started");
	}
	else
	{
		level namespace_ad23e503::function_1ab5ebec("flood_combat_charging_zone_cleared");
	}
	var_3f8b1d18 = function_6ada35ba("flood_combat_charging_zone_trig", "targetname");
	var_c3f856f0 = function_6ada35ba("flood_defend_out_of_boundary_trig", "targetname");
	var_c3f856f0 function_bb863f19();
	namespace_cba4cc55::function_423cfae8("flood_robot_room_door_open", "close");
	namespace_d5067552::function_2992720d("flood_combat_charging_room_spawnmanager", 1);
	namespace_d5067552::function_2992720d("flood_combat_robot_room_spawnmanager", 1);
	wait(0.05);
	var_b8a74cba = function_b8494651("axis");
	foreach(var_37ba03da in var_b8a74cba)
	{
		if(function_5b49d38c(var_37ba03da) && var_37ba03da function_32fa5072(var_3f8b1d18))
		{
			var_37ba03da function_2992720d();
		}
	}
	function_82fd0598();
}

/*
	Name: function_7c4f794b
	Namespace: namespace_caee6f4a
	Checksum: 0x6C5ECBB6
	Offset: 0x29C8
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_7c4f794b(var_74cd64bc)
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	level namespace_ad23e503::function_74d6b22f("flood_combat_charging_zone_cleared");
	namespace_d5067552::function_2992720d("flood_combat_defend_room_fallback2_spawns", 1);
	level thread function_73858979();
	level thread function_d8208c5();
	function_fa1f6da6(var_74cd64bc);
}

/*
	Name: function_1d0ccf06
	Namespace: namespace_caee6f4a
	Checksum: 0x556B338B
	Offset: 0x2A88
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_1d0ccf06()
{
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037.var_7dfaf62 = 16;
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	level namespace_ad23e503::function_1ab5ebec("pallas_lift_front_open");
	level namespace_cc27597::function_43718187("cin_sgen_21_01_releasetorrent_vign_pushdown_hendricks", level.var_2fd26037);
	level.var_2fd26037 function_169cc712(function_b4cb3503("flood_combat_hendricks_intro_node", "targetname"));
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_4dbf3ae3::function_1ab5ebec("flood_combat_windows_start", undefined);
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037 function_169cc712(function_b4cb3503("flood_combat_hendricks_catwalk_node", "targetname"));
	function_b9f4384b("flood_combat_catwalk_front_zone_trig", undefined, 0.75);
	level.var_2fd26037 function_763735d3("flood_combat_catwalk_front_zone_trig", undefined, undefined, 0.74, "cancel_hendricks_safe_zone");
	level thread function_1459984a();
	namespace_cc27597::function_8f9f34e0("cin_sgen_21_02_floodcombat_vign_traverse_hendricks", &function_235df37, "play");
	level namespace_cc27597::function_43718187("cin_sgen_21_02_floodcombat_vign_traverse_hendricks");
	function_5d06f10b();
	var_9de10fe3 = function_b4cb3503("flood_defend_hendricks_ready_node", "targetname");
	level.var_2fd26037 function_169cc712(var_9de10fe3);
}

/*
	Name: function_1459984a
	Namespace: namespace_caee6f4a
	Checksum: 0x6C8AC535
	Offset: 0x2CF8
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function function_1459984a()
{
	var_c90f67ac = function_b8494651("axis");
	var_bdf5e96c = function_6ada35ba("flood_combat_catwalk_front_zone_trig", "targetname");
	foreach(var_7d41f0cd in var_c90f67ac)
	{
		if(function_5b49d38c(var_7d41f0cd) && var_7d41f0cd function_32fa5072(var_bdf5e96c))
		{
			var_7d41f0cd.var_3a90f16b = 1;
		}
	}
}

/*
	Name: function_b9f4384b
	Namespace: namespace_caee6f4a
	Checksum: 0x86B76276
	Offset: 0x2E10
	Size: 0xC7
	Parameters: 3
	Flags: None
*/
function function_b9f4384b(var_5e953b6, var_64f5eece, var_ee7dbbc9)
{
	if(!isdefined(var_64f5eece))
	{
		var_64f5eece = "targetname";
	}
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0;
	}
	level endon("hash_98c5027e");
	var_bdf5e96c = function_6ada35ba(var_5e953b6, var_64f5eece);
	var_bdf5e96c endon("hash_128f8789");
	do
	{
		var_bdf5e96c waittill("hash_4dbf3ae3", var_df09ae6a);
		if(function_65f192a6(var_df09ae6a))
		{
		}
	}
	while(!1);
	else
	{
	}
	wait(var_ee7dbbc9);
}

/*
	Name: function_763735d3
	Namespace: namespace_caee6f4a
	Checksum: 0x2B12845A
	Offset: 0x2EE0
	Size: 0x1D5
	Parameters: 5
	Flags: None
*/
function function_763735d3(var_5e953b6, var_64f5eece, var_26fc0075, var_ee7dbbc9, var_53e4687d)
{
	if(!isdefined(var_64f5eece))
	{
		var_64f5eece = "targetname";
	}
	if(!isdefined(var_26fc0075))
	{
		var_26fc0075 = "robot";
	}
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0;
	}
	self endon("hash_128f8789");
	level endon("hash_98c5027e");
	if(isdefined(var_53e4687d))
	{
		level endon(var_53e4687d);
	}
	var_68d8f035 = function_6ada35ba(var_5e953b6, var_64f5eece);
	var_68d8f035 endon("hash_128f8789");
	do
	{
		var_68d8f035 waittill("hash_4dbf3ae3");
		var_f580cae3 = 0;
		var_24bbf032 = function_24e95264("axis", var_26fc0075);
		foreach(var_2eecd77a in var_24bbf032)
		{
			if(function_5b49d38c(var_2eecd77a) && var_2eecd77a function_32fa5072(self))
			{
				var_f580cae3++;
			}
		}
		wait(1.5);
	}
	while(!var_f580cae3 > 0);
	wait(var_ee7dbbc9);
}

/*
	Name: function_235df37
	Namespace: namespace_caee6f4a
	Checksum: 0xBF49A5E7
	Offset: 0x30C0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_235df37(var_c77d2837)
{
	level.var_2fd26037 waittill("hash_c1e3417f");
	namespace_d5067552::function_2992720d("flood_combat_defend_room_fallback_spawns", 1);
}

/*
	Name: function_74594539
	Namespace: namespace_caee6f4a
	Checksum: 0x221B91D0
	Offset: 0x3108
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_74594539()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_door_bursting_01_bundle");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_door", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_0", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_1", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_2", "open");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_close", "close");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_open", "open");
}

/*
	Name: function_61810cbd
	Namespace: namespace_caee6f4a
	Checksum: 0xACA87392
	Offset: 0x3228
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_61810cbd()
{
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_0", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_1", "open");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_interior_entrance_doors_2", "open");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_close", "close");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_crush_door", "close");
	level thread namespace_cba4cc55::function_423cfae8("surgical_room_door", "close");
}

/*
	Name: function_e9c576dc
	Namespace: namespace_caee6f4a
	Checksum: 0x3E687323
	Offset: 0x3328
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_e9c576dc()
{
	level endon("hash_756f21e5");
	level namespace_cba4cc55::function_40077528(0.5, 1.5, namespace_cba4cc55::function_d455824c(), 5000, 4, 7);
	while(1)
	{
		if(namespace_d73b9283::function_d2c92ee7())
		{
			var_b71ed4a2 = level.var_2fd26037.var_722885f3;
		}
		else
		{
			var_b71ed4a2 = namespace_cba4cc55::function_d455824c();
		}
		if(isdefined(var_b71ed4a2))
		{
			var_86bb0546 = function_72a94f05(0.15, 0.25);
			var_f05509e4 = function_72a94f05(0.75, 1.78);
			var_e8ea412b = 5000;
			var_637636ed = function_72a94f05(8, 15);
			level namespace_cba4cc55::function_40077528(var_86bb0546, var_f05509e4, var_b71ed4a2, var_e8ea412b);
			wait(var_637636ed + var_f05509e4);
		}
	}
}

/*
	Name: function_ef6ea5f9
	Namespace: namespace_caee6f4a
	Checksum: 0x4D870F84
	Offset: 0x34A8
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_ef6ea5f9()
{
	level endon("hash_d55f5f70");
	var_aa79ca36 = function_6ada35ba("flood_combat_flood_hall_cleanup_trig", "targetname");
	while(1)
	{
		var_aa79ca36 waittill("hash_4dbf3ae3", var_67440414);
		level namespace_ad23e503::function_74d6b22f("flood_runner_escaped");
		var_67440414 function_dc8c8404();
		wait(0.05);
	}
}

/*
	Name: function_3957dfeb
	Namespace: namespace_caee6f4a
	Checksum: 0x1C2DC1A7
	Offset: 0x3548
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_3957dfeb()
{
	level.var_977a4717 = 1;
	var_6cb15f43 = function_24e95264("axis", "human");
	foreach(var_3f3a4339 in var_6cb15f43)
	{
		var_506b336f = function_72a94f05(0.15, 0.45);
		wait(var_506b336f);
		if(function_5b49d38c(var_3f3a4339))
		{
			var_3f3a4339 thread function_49ba1bae();
		}
	}
}

/*
	Name: function_ad3546e0
	Namespace: namespace_caee6f4a
	Checksum: 0x14AE7B3E
	Offset: 0x3678
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_ad3546e0()
{
	level.var_977a4717 = 0;
	var_6cb15f43 = function_24e95264("axis", "human");
	foreach(var_3f3a4339 in var_6cb15f43)
	{
		var_506b336f = function_72a94f05(0.15, 0.45);
		if(function_5b49d38c(var_3f3a4339))
		{
			var_3f3a4339 namespace_d84e54db::function_ceb883cd("sprint", 0);
			var_3f3a4339 notify("hash_ad3546e0");
			var_3f3a4339.var_7dfaf62 = 768;
			var_3f3a4339 thread function_cf14779(undefined, 768, 512);
		}
	}
}

/*
	Name: function_cf14779
	Namespace: namespace_caee6f4a
	Checksum: 0xE1C890B5
	Offset: 0x3800
	Size: 0x1B3
	Parameters: 4
	Flags: None
*/
function function_cf14779(var_b71ed4a2, var_f7da2b48, var_12cf56f6, var_eba6249a)
{
	if(!isdefined(var_b71ed4a2))
	{
		var_b71ed4a2 = self.var_722885f3;
	}
	if(!isdefined(var_f7da2b48))
	{
		var_f7da2b48 = 256;
	}
	if(!isdefined(var_12cf56f6))
	{
		var_12cf56f6 = 512;
	}
	if(!isdefined(var_eba6249a))
	{
		var_eba6249a = 0;
	}
	self endon("hash_128f8789");
	var_ea52a6de = function_406081ba(var_b71ed4a2, var_f7da2b48, var_12cf56f6, 128);
	if(var_eba6249a && var_ea52a6de.size > 1)
	{
		var_ea52a6de = namespace_84970cc4::function_6449a8e1(var_ea52a6de);
	}
	foreach(var_974cc07 in var_ea52a6de)
	{
		if(!function_4eb15419(var_974cc07) && function_5b49d38c(self))
		{
			self function_169cc712(var_974cc07);
			return;
		}
	}
	self function_169cc712(self.var_722885f3);
}

/*
	Name: function_e45d59cc
	Namespace: namespace_caee6f4a
	Checksum: 0xDC2D3818
	Offset: 0x39C0
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_e45d59cc()
{
	level endon("hash_8a67e7d4");
	var_40f8cd43 = function_6ada35ba("flood_combat_prelab_zone_aitrig", "targetname");
	var_33dce9d8 = function_6ada35ba("flood_combat_defend_upper_goaltrig", "targetname");
	var_40f8cd43 endon("hash_128f8789");
	var_33dce9d8 endon("hash_128f8789");
	var_40f8cd43 function_8c1f7070();
	while(1)
	{
		var_40f8cd43 waittill("hash_4dbf3ae3", var_df09ae6a);
		if(function_5b49d38c(var_df09ae6a) && var_df09ae6a.var_caae374e !== "ignore_last_stand")
		{
			var_df09ae6a notify("hash_ad3546e0");
			var_df09ae6a function_169cc712(var_33dce9d8);
		}
	}
}

/*
	Name: function_f879cf37
	Namespace: namespace_caee6f4a
	Checksum: 0x6D9ED88F
	Offset: 0x3AE0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f879cf37()
{
	level endon("hash_8a67e7d4");
	level waittill("hash_b7eaf12a");
	function_ad3546e0();
	function_b4ed3055();
}

/*
	Name: function_b4ed3055
	Namespace: namespace_caee6f4a
	Checksum: 0xF9890F93
	Offset: 0x3B28
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_b4ed3055()
{
	var_b8a74cba = function_b8494651("axis");
	var_33dce9d8 = function_6ada35ba("flood_combat_defend_upper_goaltrig", "targetname");
	var_40f8cd43 = function_6ada35ba("flood_combat_prelab_zone_aitrig", "targetname");
	var_150c4640 = namespace_14b42b8a::function_7922262b("flood_defend_flee_center");
	foreach(var_37ba03da in var_b8a74cba)
	{
		var_506b336f = function_72a94f05(0.15, 0.45);
		if(function_5b49d38c(var_37ba03da) && !var_37ba03da function_32fa5072(var_33dce9d8) && !var_37ba03da function_32fa5072(var_40f8cd43))
		{
			var_37ba03da.var_2b04bf92 = 0.1;
			var_37ba03da.var_3a90f16b = 1;
			var_37ba03da thread function_cf14779(var_150c4640.var_722885f3, var_150c4640.var_f8456b37, var_150c4640.var_f8456b37, 1);
		}
	}
}

/*
	Name: function_6e0718d8
	Namespace: namespace_caee6f4a
	Checksum: 0xBA12D6AE
	Offset: 0x3D50
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_6e0718d8()
{
	namespace_4dbf3ae3::function_1ab5ebec("flood_combat_intro_fallback_trig");
	level thread function_3957dfeb();
	namespace_4dbf3ae3::function_1ab5ebec("flood_combat_charging_room_spawn_trig");
	level thread function_ad3546e0();
	level namespace_ad23e503::function_1ab5ebec("flood_defend_start_flood_fallback");
	namespace_4dbf3ae3::function_42e87952("flood_combat_door_burst_trig");
	level thread function_3957dfeb();
	namespace_4dbf3ae3::function_1ab5ebec("flood_combat_robot_crushed_door_trig");
	level thread function_ad3546e0();
	namespace_4dbf3ae3::function_1ab5ebec("flood_combat_prelab_spawn_trig");
	level thread function_3957dfeb();
	level namespace_ad23e503::function_1ab5ebec("flood_combat_surgical_room_door_close");
	function_e45d59cc();
}

/*
	Name: function_ac25b5d5
	Namespace: namespace_caee6f4a
	Checksum: 0x2BB1BFB8
	Offset: 0x3EA0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ac25b5d5()
{
	if(isdefined(level.var_977a4717) && level.var_977a4717)
	{
		self function_49ba1bae();
	}
}

/*
	Name: function_49ba1bae
	Namespace: namespace_caee6f4a
	Checksum: 0x1AFD23FA
	Offset: 0x3ED8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_49ba1bae()
{
	var_9de10fe3 = function_b4cb3503("flood_combat_fallback_node", "targetname");
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self namespace_d84e54db::function_19e98020(var_9de10fe3, 256, 0, "cancel_fallback");
}

/*
	Name: function_6cfe8da3
	Namespace: namespace_caee6f4a
	Checksum: 0x849421A0
	Offset: 0x3F60
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6cfe8da3()
{
	namespace_84970cc4::function_966ecb29(function_99201f25("alarm_sound", "targetname"), &function_2f80e7e2);
}

/*
	Name: function_2f80e7e2
	Namespace: namespace_caee6f4a
	Checksum: 0x5F946CE0
	Offset: 0x3FB0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2f80e7e2()
{
	self function_c2931a36("evt_flood_alarm_" + self.var_caae374e);
	self waittill("hash_67907d63");
	self function_eaa69754(0.5);
	self namespace_82b91a51::function_20ffc8ff();
}

/*
	Name: function_8f417d1b
	Namespace: namespace_caee6f4a
	Checksum: 0x2A641DF0
	Offset: 0x4028
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_8f417d1b()
{
	level thread namespace_cc27597::function_43718187("water_lt_01", "targetname");
	level namespace_cc27597::function_43718187("water_rt_02", "targetname");
}

/*
	Name: function_a86ae95d
	Namespace: namespace_caee6f4a
	Checksum: 0xCA6C922B
	Offset: 0x4088
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_a86ae95d()
{
	level namespace_cc27597::function_c35e6aab("dividerl_lt_01", "targetname");
	level namespace_cc27597::function_c35e6aab("divider_rt_02", "targetname");
	level namespace_ad23e503::function_1ab5ebec("flood_combat_start_flooding");
	level thread function_60041a78();
	level thread function_13a96c2b();
	level thread function_d253868c();
	level thread function_82a20786();
}

/*
	Name: function_d253868c
	Namespace: namespace_caee6f4a
	Checksum: 0xD6820327
	Offset: 0x4168
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_d253868c()
{
	level namespace_71e9cb84::function_74d6b22f("w_flood_combat_windows_b", 1);
	wait(1.2);
	level thread namespace_cc27597::function_fcf56ab5("water_lt_01", "targetname", 1);
	level thread namespace_cc27597::function_43718187("water_lt_01_spill", "targetname");
	level thread namespace_cc27597::function_43718187("dividerl_lt_01", "targetname");
}

/*
	Name: function_82a20786
	Namespace: namespace_caee6f4a
	Checksum: 0xAB97AF3B
	Offset: 0x4218
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_82a20786()
{
	level namespace_71e9cb84::function_74d6b22f("w_flood_combat_windows_c", 1);
	wait(0.93);
	level thread namespace_cc27597::function_fcf56ab5("water_rt_02", "targetname", 1);
	level thread namespace_cc27597::function_43718187("water_rt_02_spill", "targetname");
	level thread namespace_cc27597::function_43718187("divider_rt_02", "targetname");
}

/*
	Name: function_e9256bf8
	Namespace: namespace_caee6f4a
	Checksum: 0x4A4CE791
	Offset: 0x42C8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_e9256bf8()
{
	level thread function_60041a78();
	level thread function_13a96c2b();
	level namespace_71e9cb84::function_74d6b22f("w_flood_combat_windows_b", 1);
	level thread namespace_cc27597::function_5c143f59("dividerl_lt_01", "targetname");
	level namespace_71e9cb84::function_74d6b22f("w_flood_combat_windows_c", 1);
	level thread namespace_cc27597::function_5c143f59("divider_rt_02", "targetname");
}

/*
	Name: function_60041a78
	Namespace: namespace_caee6f4a
	Checksum: 0xD7946167
	Offset: 0x4398
	Size: 0x34B
	Parameters: 0
	Flags: None
*/
function function_60041a78()
{
	wait(1);
	var_3a7682f2 = function_6ada35ba("flooding_start_1", "targetname");
	var_14740889 = function_6ada35ba("flooding_start_2", "targetname");
	var_2d385a13 = function_6ada35ba("evt_torrent_gush_left", "targetname");
	var_cb0d3686 = function_6ada35ba("evt_torrent_gush_right", "targetname");
	var_853c208b = function_6ada35ba("evt_torrent_gush_surface_l", "targetname");
	var_1899b97e = function_6ada35ba("evt_torrent_gush_surface_r", "targetname");
	if(isdefined(var_3a7682f2) && isdefined(var_14740889))
	{
		function_37cbcf1a("evt_flood_start_1", var_3a7682f2.var_722885f3);
		function_37cbcf1a("evt_flood_start_2", var_14740889.var_722885f3);
	}
	if(isdefined(var_2d385a13) && isdefined(var_cb0d3686) && isdefined(var_853c208b) && isdefined(var_1899b97e))
	{
		var_2d385a13 function_c2931a36("evt_torrent_gush");
		var_cb0d3686 function_c2931a36("evt_torrent_gush");
		var_853c208b function_c2931a36("evt_torrent_gush_surface");
		var_1899b97e function_c2931a36("evt_torrent_gush_surface");
		level waittill("hash_67907d63");
		var_2d385a13 function_eaa69754(0.5);
		var_2d385a13 function_dc8c8404();
		var_cb0d3686 function_eaa69754(0.5);
		var_cb0d3686 function_dc8c8404();
		var_853c208b function_eaa69754(0.5);
		var_853c208b function_dc8c8404();
		var_1899b97e function_eaa69754(0.5);
		var_1899b97e function_dc8c8404();
		var_3a7682f2 function_dc8c8404();
		var_14740889 function_dc8c8404();
	}
}

/*
	Name: function_13a96c2b
	Namespace: namespace_caee6f4a
	Checksum: 0xDF0A59CF
	Offset: 0x46F0
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_13a96c2b()
{
	level endon("hash_5d38bbf8");
	var_67825717 = function_6ada35ba("flood_combat_water_sheeting", "targetname");
	var_67825717 endon("hash_128f8789");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_32fa5072(var_67825717))
			{
				if(!(isdefined(var_5dc5e20a.var_42102683) && var_5dc5e20a.var_42102683))
				{
					var_5dc5e20a namespace_71e9cb84::function_e9c3870b("tp_water_sheeting", 1);
					var_5dc5e20a.var_42102683 = 1;
				}
				continue;
			}
			if(isdefined(var_5dc5e20a.var_42102683) && var_5dc5e20a.var_42102683)
			{
				var_5dc5e20a namespace_71e9cb84::function_e9c3870b("tp_water_sheeting", 0);
				var_5dc5e20a.var_42102683 = 0;
			}
		}
		wait(1);
	}
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "tp_water_sheeting", 0);
}

/*
	Name: function_80012633
	Namespace: namespace_caee6f4a
	Checksum: 0xE7103540
	Offset: 0x48C8
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_80012633()
{
	level endon("hash_d55f5f70");
	var_3b889aff = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
	var_a080d759 = function_bc7ce905((0, var_3b889aff[0].var_6ab6f4fd[1], 0));
	var_c6f2fa46 = var_3b889aff[0].var_722885f3;
	var_81234140 = 128;
	namespace_84970cc4::function_966ecb29(var_3b889aff, &function_d4c5fb8e, self);
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(!var_5dc5e20a function_8029a253() && isdefined(var_5dc5e20a.var_fca98bd1) && GetTime() - var_5dc5e20a.var_fca98bd1 < 1000)
		{
			continue;
		}
		var_6389ab3d = function_87ea89a(var_c6f2fa46, var_5dc5e20a.var_722885f3);
		if(var_6389ab3d > var_81234140)
		{
			continue;
		}
		if(var_5dc5e20a function_f3b38c23() && var_6389ab3d > var_81234140 * 0.4)
		{
			continue;
		}
		var_b9492de8 = function_34bf0601(0, var_81234140, 80, 0, var_6389ab3d);
		var_740386b3 = var_5dc5e20a function_1439c75a();
		var_5dc5e20a function_f5df04e6(var_740386b3 + var_a080d759 * var_b9492de8);
		if(!var_5dc5e20a function_8029a253())
		{
			var_5dc5e20a.var_fca98bd1 = GetTime();
		}
	}
}

/*
	Name: function_d4c5fb8e
	Namespace: namespace_caee6f4a
	Checksum: 0xBF30C7B
	Offset: 0x4B30
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_d4c5fb8e(var_4dbf3ae3)
{
	level endon("hash_d55f5f70");
	var_7a88c258 = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self.var_6ab6f4fd);
	var_7a88c258.var_ff1f6868 = "flood_defend";
	namespace_4dbf3ae3::function_1ab5ebec(self.var_b07228b6, undefined, undefined, 0);
	if(isdefined(var_4dbf3ae3.var_db7bb468))
	{
		level thread namespace_cc27597::function_43718187(var_4dbf3ae3.var_db7bb468);
		level thread namespace_cba4cc55::function_40077528(0.35, function_72a94f05(0.8, 1.4), namespace_cba4cc55::function_d455824c(), 5000, 1, 2);
	}
	var_7a88c258 function_921a1574("evt_pipe_break");
	var_7a88c258 function_c2931a36("evt_water_pipe_flow");
}

/*
	Name: function_f6ac14bc
	Namespace: namespace_caee6f4a
	Checksum: 0x3AFB4EBA
	Offset: 0x4C88
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_f6ac14bc()
{
	var_fa42e2ca = namespace_2f06d687::function_7387a40a("surgical_room_door_close_guy_spawner");
	level namespace_82b91a51::function_67520c6a(2, "death", &namespace_cba4cc55::function_423cfae8, "surgical_room_door", "close");
	if(function_5b49d38c(var_fa42e2ca))
	{
		var_fa42e2ca function_49ba1bae();
	}
}

/*
	Name: function_f899badb
	Namespace: namespace_caee6f4a
	Checksum: 0x47D21C5
	Offset: 0x4D30
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_f899badb()
{
	level thread function_cb3a24c5();
	level waittill("hash_65ca45df");
	namespace_d5067552::function_54bdb053("flood_combat_reinforcements");
	namespace_d5067552::function_2992720d("flood_combat_reinforcements_human");
}

/*
	Name: function_cb3a24c5
	Namespace: namespace_caee6f4a
	Checksum: 0x9EEA502
	Offset: 0x4D98
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_cb3a24c5()
{
	level endon("hash_65ca45df");
	while(1)
	{
		level namespace_cba4cc55::function_40077528(0.35, function_72a94f05(0.8, 1.4), namespace_cba4cc55::function_d455824c(), 5000, 1, 2);
		wait(function_dc99997a(8, 15));
	}
}

/*
	Name: function_fa1f6da6
	Namespace: namespace_caee6f4a
	Checksum: 0x39F72F0C
	Offset: 0x4E28
	Size: 0x2C3
	Parameters: 1
	Flags: None
*/
function function_fa1f6da6(var_74cd64bc)
{
	level thread function_d6ee7c7d();
	level thread function_e9bcb005();
	level thread function_f879cf37();
	namespace_2f06d687::function_2b37a3c9("flood_defend_runner", "script_noteworthy", &function_3ed2d232);
	if(var_74cd64bc)
	{
		level thread function_5d06f10b();
	}
	level namespace_ad23e503::function_1ab5ebec("defend_ready");
	level namespace_ad23e503::function_74d6b22f("flood_defend_enemies_spawning");
	namespace_d5067552::function_bae40a28("flood_combat_reinforcements");
	level thread function_5d080bdb();
	level namespace_ad23e503::function_1ab5ebec("hendricks_defend_started");
	namespace_d5067552::function_bae40a28("flood_combat_reinforcements_human");
	level thread namespace_d40478f6::function_72ef07c3();
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level thread function_f899badb();
	wait(18);
	level notify("hash_5097097b");
	wait(12);
	level notify("hash_3b0cb580");
	wait(7);
	level namespace_ad23e503::function_74d6b22f("defend_time_expired");
	var_fbee94bb = function_6ada35ba("floor_door_hint_trigger", "targetname");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_use_door", var_fbee94bb.var_722885f3);
	var_8ad7c437 = namespace_82b91a51::function_14518e76(var_fbee94bb, &"cp_prompt_enter_sgen_door", &"CP_MI_SING_SGEN_FLOOD_USE_DOOR", &function_d0378b1a);
	level waittill("hash_37c452a9");
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_use_door");
	namespace_d0ef8521::function_74d6b22f("cp_level_sgen_get_to_surface");
}

/*
	Name: function_3ed2d232
	Namespace: namespace_caee6f4a
	Checksum: 0x88C91EAF
	Offset: 0x50F8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_3ed2d232()
{
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_ceb883cd("sprint", 0);
	self namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
}

/*
	Name: function_d0378b1a
	Namespace: namespace_caee6f4a
	Checksum: 0x1B9A06F1
	Offset: 0x5178
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_d0378b1a(var_6bfe1586)
{
	level notify("hash_65ca45df");
	level thread namespace_d40478f6::function_973b77f9();
	self namespace_a230c2b1::function_e54c54c3();
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_use_door");
	if(isdefined(level.var_723afba))
	{
		level thread [[level.var_723afba]]();
	}
	namespace_cc27597::function_8f9f34e0("cin_sgen_22_01_release_torrent_1st_flood_hendricks", &function_89f9dea6, "play");
	level thread namespace_cc27597::function_43718187("cin_sgen_22_01_release_torrent_1st_flood_hendricks", level.var_2fd26037);
	namespace_cc27597::function_8f9f34e0("cin_sgen_22_01_release_torrent_1st_flood_player", &function_7ade3b88, "play");
	level namespace_cc27597::function_43718187("cin_sgen_22_01_release_torrent_1st_flood_player", var_6bfe1586);
	wait(0.05);
	if(!isdefined(level.var_5580212f))
	{
		level notify("hash_f8576d57");
		function_581db5d8();
	}
	level notify("hash_67907d63");
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(0);
	level.var_2fd26037 namespace_6f7b2095::function_bae40a28();
	namespace_d5067552::function_2992720d("flood_defend_catwalk_spawn_zone_spawnmanager", 1);
	level notify("hash_37c452a9");
	self namespace_a230c2b1::function_c5a39495(1);
}

/*
	Name: function_7ade3b88
	Namespace: namespace_caee6f4a
	Checksum: 0xE656627E
	Offset: 0x5368
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_7ade3b88(var_c77d2837)
{
	level endon("hash_f8576d57");
	wait(1.5);
	function_581db5d8();
}

/*
	Name: function_581db5d8
	Namespace: namespace_caee6f4a
	Checksum: 0x37B10C4F
	Offset: 0x53A8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_581db5d8()
{
	if(!isdefined(level.var_5580212f))
	{
		level.var_5580212f = GetTime();
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("water_teleport", 1);
	}
}

/*
	Name: function_82311a3e
	Namespace: namespace_caee6f4a
	Checksum: 0x37F907AF
	Offset: 0x5460
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_82311a3e(var_c77d2837)
{
	while(GetTime() - level.var_5580212f < 1000)
	{
		wait(0.1);
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("water_teleport", 0);
	}
}

/*
	Name: function_28b80c6f
	Namespace: namespace_caee6f4a
	Checksum: 0x1E4130A3
	Offset: 0x5530
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_28b80c6f()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_hallway_ceiling_collapse_01");
	level namespace_71e9cb84::function_74d6b22f("ceiling_collapse", 1);
	namespace_4dbf3ae3::function_1ab5ebec("trig_hallway_ceiling_collapse_02");
	level namespace_71e9cb84::function_74d6b22f("ceiling_collapse", 2);
	namespace_4dbf3ae3::function_1ab5ebec("trig_hallway_ceiling_collapse_03");
	level namespace_71e9cb84::function_74d6b22f("ceiling_collapse", 3);
	namespace_4dbf3ae3::function_1ab5ebec("trig_hallway_ceiling_collapse_04");
	level namespace_71e9cb84::function_74d6b22f("ceiling_collapse", 4);
}

/*
	Name: function_5d06f10b
	Namespace: namespace_caee6f4a
	Checksum: 0x305F56A6
	Offset: 0x5620
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_5d06f10b()
{
	var_350c27ef = function_b4cb3503("hendricks_flood_combat_wait", "targetname");
	level.var_2fd26037 function_169cc712(var_350c27ef.var_722885f3);
	level namespace_ad23e503::function_1ab5ebec("defend_ready");
	var_421ccb2d = function_6ada35ba("flood_defend_defend_room_zone_trig", "targetname");
	var_a3eb613f = 1;
	while(var_a3eb613f)
	{
		var_a3eb613f = 0;
		var_24bbf032 = function_b8494651("axis");
		foreach(var_2eecd77a in var_24bbf032)
		{
			if(var_2eecd77a function_32fa5072(var_421ccb2d))
			{
				var_a3eb613f = 1;
				break;
			}
		}
		wait(0.2);
	}
	level namespace_cc27597::function_43718187("cin_sgen_22_01_release_torrent_vign_flood_new_hendricks_hackdoor", level.var_2fd26037);
	level namespace_ad23e503::function_74d6b22f("hendricks_defend_started");
	level thread namespace_cc27597::function_43718187("cin_sgen_22_01_release_torrent_vign_flood_new_hendricks_grabdoor", level.var_2fd26037);
}

/*
	Name: function_73cf7557
	Namespace: namespace_caee6f4a
	Checksum: 0x229E5A42
	Offset: 0x5828
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_73cf7557()
{
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037.var_7dfaf62 = 16;
	var_9de10fe3 = function_b4cb3503("flood_defend_hendricks_ready_node", "targetname");
	level.var_2fd26037 function_169cc712(var_9de10fe3);
}

/*
	Name: function_82fd0598
	Namespace: namespace_caee6f4a
	Checksum: 0x31DA5BBE
	Offset: 0x58B0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_82fd0598()
{
	level thread namespace_cba4cc55::function_423cfae8("charging_station_entrance", "close");
	namespace_84970cc4::function_966ecb29(function_99201f25("pod_track_model", "targetname"), &namespace_82b91a51::function_20ffc8ff);
}

/*
	Name: function_ae51faf3
	Namespace: namespace_caee6f4a
	Checksum: 0xAC7E2D14
	Offset: 0x5928
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_ae51faf3()
{
	self namespace_d84e54db::function_ceb883cd("force_cover", 1);
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
}

/*
	Name: function_5d080bdb
	Namespace: namespace_caee6f4a
	Checksum: 0xC80D405F
	Offset: 0x59A0
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function function_5d080bdb()
{
	var_bdf5e96c = function_6ada35ba("flood_defend_catwalk_spawn_zone_trig", "targetname");
	var_408caf2f = function_6ada35ba(var_bdf5e96c.var_b07228b6, "targetname");
	var_bdf5e96c endon("hash_128f8789");
	var_bdf5e96c waittill("hash_4dbf3ae3");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_close", "open");
	level thread namespace_cba4cc55::function_423cfae8("flood_robot_room_door_open", "close");
	while(isdefined(var_bdf5e96c))
	{
		var_bdf5e96c waittill("hash_4dbf3ae3");
		if(!namespace_d5067552::function_56a7483f(var_408caf2f.var_170527fb))
		{
			namespace_d5067552::function_bae40a28(var_408caf2f.var_170527fb);
		}
		function_5d5cec4b("flood_defend_catwalk_spawn_zone_robot", undefined, 0);
		level namespace_ad23e503::function_1ab5ebec("flood_defend_catwalk_spawn_zone_unoccupied");
		function_5d5cec4b("flood_defend_catwalk_spawn_zone_robot");
		namespace_d5067552::function_54bdb053(var_408caf2f.var_170527fb);
		var_bdf5e96c thread function_718c6e08();
	}
}

/*
	Name: function_718c6e08
	Namespace: namespace_caee6f4a
	Checksum: 0x37F4109E
	Offset: 0x5B58
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_718c6e08()
{
	self endon("hash_128f8789");
	self endon("hash_4dbf3ae3");
	wait(4);
	var_64e85e6d = function_99201f25("flood_defend_catwalk_spawn_zone_robot" + "_ai", "targetname");
	foreach(var_73be40d2 in var_64e85e6d)
	{
		var_73be40d2 function_2992720d();
	}
}

/*
	Name: function_5d5cec4b
	Namespace: namespace_caee6f4a
	Checksum: 0xA1D7F2F
	Offset: 0x5C40
	Size: 0x9B
	Parameters: 3
	Flags: None
*/
function function_5d5cec4b(var_c335265b, var_5e953b6, var_aa7b6eee)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	if(!isdefined(var_aa7b6eee))
	{
		var_aa7b6eee = 1;
	}
	var_6bc905f9 = function_99201f25(var_c335265b + "_ai", var_5e953b6);
	namespace_84970cc4::function_966ecb29(var_6bc905f9, &namespace_d84e54db::function_b4f5e3b9, var_aa7b6eee);
}

/*
	Name: function_324a038c
	Namespace: namespace_caee6f4a
	Checksum: 0xDE4D2B89
	Offset: 0x5CE8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_324a038c()
{
	level namespace_cc27597::function_43718187("cin_sgen_21_03_floodcombat_vign_rejoin");
}

/*
	Name: function_d62206d0
	Namespace: namespace_caee6f4a
	Checksum: 0x8404B878
	Offset: 0x5D18
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_d62206d0()
{
	level namespace_ad23e503::function_1ab5ebec("flood_combat_door_crush_robot_start");
	level thread namespace_cc27597::function_43718187("cin_sgen_21_02_floodcombat_vign_escape_robot01");
	level waittill("hash_14bc1e1c");
	namespace_4dbf3ae3::function_42e87952("sgen_robot_crushed_water_trig");
}

/*
	Name: function_d6ee7c7d
	Namespace: namespace_caee6f4a
	Checksum: 0x96C0719D
	Offset: 0x5D90
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d6ee7c7d()
{
	var_16e2c3f6 = namespace_2f06d687::function_7387a40a("flood_defend_flood_door_guy");
	level namespace_cc27597::function_c35e6aab("cin_sgen_21_03_surgical_room_vign_closedoor_54i01", var_16e2c3f6);
	namespace_4dbf3ae3::function_1ab5ebec("flood_defend_defend_area_trig");
	if(function_5b49d38c(var_16e2c3f6))
	{
		var_16e2c3f6 namespace_d84e54db::function_b4f5e3b9(1);
		var_16e2c3f6 namespace_d84e54db::function_c9e45d52(1);
		level namespace_cc27597::function_43718187("cin_sgen_21_03_surgical_room_vign_closedoor_54i01", var_16e2c3f6);
	}
}

/*
	Name: function_e9bcb005
	Namespace: namespace_caee6f4a
	Checksum: 0xE55B1909
	Offset: 0x5E70
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_e9bcb005()
{
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_debris_hallway_flood_bundle");
	level namespace_71e9cb84::function_74d6b22f("flood_defend_hallway_flood_siege", 1);
	level thread function_5b17f290();
	level waittill("hash_b6f74de7");
	level thread function_ccc97d5();
	level namespace_cc27597::function_c35e6aab("fxanim_flooded_lab_door", "targetname");
}

/*
	Name: function_ccc97d5
	Namespace: namespace_caee6f4a
	Checksum: 0x6847604D
	Offset: 0x5F20
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_ccc97d5()
{
	var_6117374 = function_9b7fda5e("script_origin", (26380, 1589, -6604));
	var_fcca8f52 = function_9b7fda5e("script_origin", (26380, 1589, -6604));
	var_fcca8f52 function_921a1574("evt_sgen_flood_door_close");
	level waittill("hash_deaf06de");
	var_6117374 function_921a1574("evt_flood_door_impact");
	var_6117374 function_c2931a36("evt_flood_metal_stress", 2);
	level waittill("hash_65ca45df");
	var_6117374 function_eaa69754(3);
	wait(3);
	var_6117374 function_dc8c8404();
	var_fcca8f52 function_dc8c8404();
}

/*
	Name: function_5b17f290
	Namespace: namespace_caee6f4a
	Checksum: 0xBBBA27B0
	Offset: 0x6058
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_5b17f290()
{
	var_af9cb339 = namespace_14b42b8a::function_7922262b("flood_defend_wave_source_spot");
	level waittill("hash_401b5f85");
	var_b8a74cba = function_24e95264("axis", "human");
	var_b8a74cba = function_57efbe1(var_b8a74cba, var_af9cb339.var_722885f3);
	foreach(var_37ba03da in var_b8a74cba)
	{
		wait(function_72a94f05(0.2, 0.32));
		if(function_5b49d38c(var_37ba03da) && function_87ea89a(var_37ba03da.var_722885f3, var_af9cb339.var_722885f3) <= var_af9cb339.var_f8456b37)
		{
			var_37ba03da function_2992720d();
		}
	}
	level namespace_ad23e503::function_74d6b22f("flood_defend_flood_hallway_kill_zone_enabled");
}

/*
	Name: function_aa1d0311
	Namespace: namespace_caee6f4a
	Checksum: 0xDAAAE9D0
	Offset: 0x6208
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_aa1d0311()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_pipes_bursting_01_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_pipes_bursting_02_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_pipes_bursting_03_bundle");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_sgen_pipes_bursting_04_bundle");
}

/*
	Name: function_89f9dea6
	Namespace: namespace_caee6f4a
	Checksum: 0x68C97FD2
	Offset: 0x6298
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_89f9dea6(var_c77d2837)
{
	level waittill("hash_b1ecfdaa");
	level namespace_cc27597::function_43718187("fxanim_flooded_lab_door", "targetname");
}

/*
	Name: function_7541af2d
	Namespace: namespace_caee6f4a
	Checksum: 0xDDEFCDB3
	Offset: 0x62E0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_7541af2d()
{
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_what_the_hell_was_0", function_72a94f05(0.2, 0.3));
	level.var_2fd26037 namespace_71b8dba1::function_81141386("plyr_sounds_like_taylor_s_0", function_72a94f05(0.2, 0.3));
	level namespace_ad23e503::function_1ab5ebec("pallas_lift_front_open");
	level namespace_71b8dba1::function_a463d127("kane_hendricks_we_have_m_0", function_72a94f05(0.1, 0.25));
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_you_heard_her_let_0", function_72a94f05(0.2, 0.3));
	level namespace_71b8dba1::function_a463d127("kane_overwatch_drone_show_0", function_72a94f05(0.5, 0.76));
	level thread function_19acbb90();
	namespace_4dbf3ae3::function_1ab5ebec("flood_combat_charging_station_zone_trig");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_get_through_them_we_0");
	level thread function_b5c83759();
	level thread function_f69bf247();
}

/*
	Name: function_19acbb90
	Namespace: namespace_caee6f4a
	Checksum: 0x3BE449F1
	Offset: 0x64C0
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_19acbb90()
{
	level endon("hash_d55f5f70");
	var_846737f = 3;
	var_5b1de241 = 4;
	var_4bc288a0 = 0;
	var_d44c15f4 = [];
	var_d44c15f4[0] = "hend_keep_moving_the_wh_0";
	var_d44c15f4[1] = "hend_go_go_go_0";
	while(var_4bc288a0 < var_d44c15f4.size)
	{
		namespace_4dbf3ae3::function_1ab5ebec("flood_combat_security_room_zone_trig");
		if(!level namespace_ad23e503::function_7922262b("flood_combat_nag_playing"))
		{
			level namespace_ad23e503::function_74d6b22f("flood_combat_nag_playing");
			level.var_2fd26037 namespace_71b8dba1::function_81141386(var_d44c15f4[var_4bc288a0]);
			var_4bc288a0++;
			level namespace_ad23e503::function_9d134160("flood_combat_nag_playing");
			var_3d70d73e = function_72a94f05(var_846737f, var_5b1de241);
			wait(var_3d70d73e);
		}
	}
}

/*
	Name: function_b5c83759
	Namespace: namespace_caee6f4a
	Checksum: 0xA471778B
	Offset: 0x6618
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_b5c83759()
{
	level endon("hash_d55f5f70");
	var_846737f = 3;
	var_5b1de241 = 6;
	var_4bc288a0 = 0;
	var_d44c15f4 = [];
	var_d44c15f4[0] = "hend_get_through_them_we_0";
	var_d44c15f4[1] = "hend_don_t_stop_move_m_0";
	var_d44c15f4[2] = "hend_fucking_move_0";
	while(var_4bc288a0 < var_d44c15f4.size)
	{
		var_3d70d73e = function_72a94f05(var_846737f, var_5b1de241);
		wait(var_3d70d73e);
		namespace_4dbf3ae3::function_1ab5ebec("flood_combat_charging_station_zone_trig");
		if(!level namespace_ad23e503::function_7922262b("flood_combat_nag_playing"))
		{
			level namespace_ad23e503::function_74d6b22f("flood_combat_nag_playing");
			level.var_2fd26037 namespace_71b8dba1::function_81141386(var_d44c15f4[var_4bc288a0]);
			var_4bc288a0++;
			level namespace_ad23e503::function_9d134160("flood_combat_nag_playing");
		}
	}
}

/*
	Name: function_f69bf247
	Namespace: namespace_caee6f4a
	Checksum: 0xEB5F5E6D
	Offset: 0x6780
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_f69bf247()
{
	namespace_4dbf3ae3::function_1ab5ebec("important_story_vo", "targetname");
	level namespace_71b8dba1::function_81141386("plyr_start_scanning_for_t_0", function_72a94f05(0.5, 0.76));
	level namespace_71b8dba1::function_a463d127("kane_i_m_scanning_file_tr_0", function_72a94f05(0.75, 1.25));
}

/*
	Name: function_73858979
	Namespace: namespace_caee6f4a
	Checksum: 0xC4E6E608
	Offset: 0x6820
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function function_73858979()
{
	namespace_4dbf3ae3::function_4ab4cb6(20, "flood_defend_defend_area_trig");
	level thread namespace_82b91a51::function_ef3f75eb("escps");
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_i_hope_you_go_0");
	level namespace_71b8dba1::function_a463d127("kane_alright_i_ll_talk_y_0", function_72a94f05(0.1, 0.25));
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_what_are_you_insan_0", function_72a94f05(0.1, 0.25));
	level namespace_71b8dba1::function_a463d127("kane_not_if_this_works_y_0", function_72a94f05(0.1, 0.25));
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_okay_okay_but_if_t_0", function_72a94f05(0.1, 0.25));
	level namespace_ad23e503::function_74d6b22f("defend_ready");
	level waittill("hash_5097097b");
	level namespace_71b8dba1::function_a463d127("kane_i_ve_id_d_the_surviv_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_all_in_good_time_ka_0", 0.3);
	level waittill("hash_3b0cb580");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_just_a_few_more_seco_0", function_72a94f05(0.1, 0.25));
	level waittill("hash_756f21e5");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_give_me_a_hand_0");
	level.var_2fd26037 thread function_3d56a972();
}

/*
	Name: function_3d56a972
	Namespace: namespace_caee6f4a
	Checksum: 0xD1E1C574
	Offset: 0x6A88
	Size: 0x131
	Parameters: 0
	Flags: None
*/
function function_3d56a972()
{
	level endon("hash_65ca45df");
	var_d44c15f4 = [];
	var_d44c15f4[0] = "hend_c_mon_we_gotta_get_o_0";
	var_d44c15f4[1] = "hend_the_whole_building_s_0";
	var_d44c15f4[2] = "hend_what_are_you_waiting_3";
	var_d44c15f4[3] = "hend_help_me_with_the_doo_0";
	foreach(var_385eca05 in var_d44c15f4)
	{
		wait(function_72a94f05(3, 6));
		level.var_2fd26037 namespace_71b8dba1::function_81141386(var_d44c15f4[var_4bc288a0], function_72a94f05(0.1, 0.25));
	}
}

/*
	Name: function_ab5cee74
	Namespace: namespace_caee6f4a
	Checksum: 0x7DC3BA54
	Offset: 0x6BC8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ab5cee74()
{
	namespace_d0ef8521::function_45d1556("flood_combat_start_breadcrumb_trig");
}

/*
	Name: function_d8208c5
	Namespace: namespace_caee6f4a
	Checksum: 0xD88B6DE9
	Offset: 0x6BF0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d8208c5()
{
	level thread namespace_d0ef8521::function_45d1556("flood_combat_breadcrumb_end_trig");
	level namespace_ad23e503::function_1ab5ebec("hendricks_defend_started");
	namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb");
	level namespace_ad23e503::function_1ab5ebec("defend_time_expired");
}

