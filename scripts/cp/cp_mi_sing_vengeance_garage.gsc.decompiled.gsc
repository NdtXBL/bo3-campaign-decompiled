#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_accolades;
#using scripts\cp\cp_mi_sing_vengeance_market;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_22334037;

/*
	Name: function_b17357cc
	Namespace: namespace_22334037
	Checksum: 0x2892177
	Offset: 0xCB0
	Size: 0x3BB
	Parameters: 2
	Flags: None
*/
function function_b17357cc(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_63b4601c::function_e00864bd("rear_garage_umbra_gate", 1, "rear_garage_gate");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
		function_e46237c7();
		namespace_cc27597::function_c35e6aab("cin_ven_06_15_parkingstructure_deadbodies");
		namespace_cc27597::function_c35e6aab("cin_ven_06_10_parkingstructure_1st_shot01");
		level namespace_82b91a51::function_d8eaed3d(4);
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3);
		namespace_d7916d65::function_a2995f22();
	}
	namespace_63b4601c::function_4e8207e9("garage_igc");
	if(isdefined(level.var_ad06727a))
	{
		level namespace_ad06727a::function_fcf56ab5();
	}
	level thread function_9ca09589();
	level thread namespace_e6a038a0::function_3ae8447c();
	var_5b01a37b = namespace_14b42b8a::function_7922262b("quad_battle_script_node", "targetname");
	var_5b01a37b thread namespace_cc27597::function_c35e6aab("cin_ven_07_11_openpath_wall_vign");
	var_ecf5f255 = function_99201f25("quad_tank_color_triggers", "script_noteworthy");
	foreach(var_f7ebb04b in var_ecf5f255)
	{
		var_f7ebb04b function_175e6b8e(0);
		var_f7ebb04b.var_8ccee908 = 1;
	}
	level thread namespace_7c587e3e::function_34d7007d();
	level thread namespace_9fd035::function_c270e327();
	function_2636a01c();
	namespace_9f824288::function_5d2cdd99();
	namespace_523da15d::function_2c3bbf49();
	level thread namespace_7c587e3e::function_ea4f2f1b();
	function_2480a40a(var_b04bc952, var_74cd64bc);
}

/*
	Name: function_608352d2
	Namespace: namespace_22334037
	Checksum: 0x9FEF77F7
	Offset: 0x1078
	Size: 0x13B
	Parameters: 4
	Flags: None
*/
function function_608352d2(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_10_parkingstructure_1st_shot01");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_10_parkingstructure_3rd_shot02");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_10_parkingstructure_3rd_shot03");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_10_parkingstructure_3rd_shot04");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_10_parkingstructure_3rd_shot05");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_10_parkingstructure_3rd_shot06");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_06_10_parkingstructure_3rd_shot07");
}

/*
	Name: function_2636a01c
	Namespace: namespace_22334037
	Checksum: 0x32B66BB4
	Offset: 0x11C0
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_2636a01c()
{
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3);
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 thread namespace_63b4601c::function_b9785164();
	}
	level thread function_fb6f8da();
	namespace_63b4601c::function_e00864bd("rear_garage_umbra_gate", 1, "rear_garage_gate");
	thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
	thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
	var_f2c7e89 = function_6ada35ba("dogleg_2_exit_door_static", "targetname");
	var_f2c7e89 function_50ccee8d();
	if(isdefined(level.var_1e559ca2))
	{
		level thread [[level.var_1e559ca2]]();
	}
	if(!isdefined(level.var_e82cf2ee))
	{
		level.var_e82cf2ee = level.var_2395e945[0];
	}
	var_70f21d83 = namespace_14b42b8a::function_7922262b("garage_igc_script_node", "targetname");
	var_70f21d83 thread namespace_cc27597::function_43718187("cin_ven_06_15_parkingstructure_deadbodies");
	var_70f21d83 thread namespace_cc27597::function_43718187("cin_ven_06_10_parkingstructure_1st_shot01", level.var_e82cf2ee);
	namespace_63b4601c::function_ac2b4535("cin_ven_06_10_parkingstructure_1st_shot08", "garage", 0);
	wait(1);
	level thread namespace_63b4601c::function_5dbf4126();
	level waittill("hash_b0ca54ea");
	var_f2c7e89 function_48f26766();
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
	level namespace_ad23e503::function_74d6b22f("garage_igc_done");
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_e46237c7
	Namespace: namespace_22334037
	Checksum: 0xEBBB8A4C
	Offset: 0x14C0
	Size: 0x413
	Parameters: 0
	Flags: None
*/
function function_e46237c7()
{
	level thread function_f0f8ed9f();
	level thread function_d933bb38();
	level.var_29061a49 = namespace_96fa87af::function_7387a40a("garage_technical_01");
	level.var_29061a49 namespace_96fa87af::function_3762fc40();
	level.var_4f0894b2 = namespace_96fa87af::function_7387a40a("garage_technical_02");
	level.var_4f0894b2.var_b691b9cf = "technical_truck_2";
	level.var_4f0894b2 namespace_96fa87af::function_3762fc40();
	level.var_4f0894b2 function_50ccee8d();
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "garage_civilian_a";
	var_6a07eb6c[1] = "garage_civilian_b";
	var_6a07eb6c[2] = "garage_civilian_c";
	var_6a07eb6c[3] = "garage_civilian_female_a";
	var_6a07eb6c[4] = "garage_civilian_female_b";
	var_6a07eb6c[5] = "noose_1";
	var_6a07eb6c[6] = "noose_2";
	namespace_cc27597::function_8f9f34e0("cin_ven_06_10_parkingstructure_1st_shot01", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_06_10_parkingstructure_1st_shot01", &function_159c75e4, "done");
	namespace_cc27597::function_8f9f34e0("cin_ven_06_10_parkingstructure_3rd_shot02", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_06_10_parkingstructure_3rd_shot03", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_06_10_parkingstructure_3rd_shot04", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_06_10_parkingstructure_3rd_shot05", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_06_10_parkingstructure_3rd_shot06", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_06_10_parkingstructure_3rd_shot07", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_cc27597::function_8f9f34e0("cin_ven_06_10_parkingstructure_1st_shot08", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	namespace_2f06d687::function_c6ffd13e("garage_enemies", &function_724be02d);
	var_b84d2ab = function_99201f25("garage_police_cars", "script_noteworthy");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_b84d2ab.size; var_c957f6b6++)
	{
		var_b84d2ab[var_c957f6b6] thread function_2b37bfcd();
	}
	namespace_2f06d687::function_c6ffd13e("garage_police", &function_d3d4580d);
}

/*
	Name: function_159c75e4
	Namespace: namespace_22334037
	Checksum: 0x839DEBFC
	Offset: 0x18E0
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_159c75e4(var_c77d2837)
{
	level notify("hash_d933bb38");
}

/*
	Name: function_d933bb38
	Namespace: namespace_22334037
	Checksum: 0xF7F22C62
	Offset: 0x1908
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_d933bb38()
{
	level waittill("hash_d933bb38");
	wait(1);
	level.var_2fd26037 function_169cc712(level.var_2fd26037.var_722885f3, 1);
	level.var_2fd26037 namespace_d84e54db::function_b4f5e3b9(1);
	level.var_2fd26037 namespace_d84e54db::function_c9e45d52(1);
}

/*
	Name: function_fb6f8da
	Namespace: namespace_22334037
	Checksum: 0xAAB78166
	Offset: 0x1998
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_fb6f8da()
{
	level thread function_d20f6512();
	level thread function_ac0ceaa9();
	level thread function_860a7040();
	level thread function_901bc91f();
	level thread function_6a194eb6();
	level thread function_4416d44d();
	level thread function_1e1459e4();
	level thread function_2825b2c3();
	level thread function_223385a();
	level thread function_601474c6();
	level thread function_8616ef2f();
}

/*
	Name: function_d20f6512
	Namespace: namespace_22334037
	Checksum: 0x7E80FE3A
	Offset: 0x1AB0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d20f6512()
{
	level waittill("hash_9daf57a0");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_71b8dba1::function_a463d127("xiu0_i_swore_vengeance_0");
	}
}

/*
	Name: function_ac0ceaa9
	Namespace: namespace_22334037
	Checksum: 0x44380485
	Offset: 0x1B00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ac0ceaa9()
{
	level waittill("hash_a14e508d");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_71b8dba1::function_a463d127("xiu0_you_built_your_walls_0", 0, "no_dni");
	}
}

/*
	Name: function_860a7040
	Namespace: namespace_22334037
	Checksum: 0xF636AC63
	Offset: 0x1B58
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_860a7040()
{
	level waittill("hash_1bf8f970");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_71b8dba1::function_a463d127("xiu0_today_the_children_0", 0, "no_dni");
	}
}

/*
	Name: function_901bc91f
	Namespace: namespace_22334037
	Checksum: 0x1B88DB9E
	Offset: 0x1BB0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_901bc91f()
{
	level waittill("hash_51de5a01");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_71b8dba1::function_a463d127("xiu0_you_brought_this_upo_0", 0, "no_dni");
	}
}

/*
	Name: function_6a194eb6
	Namespace: namespace_22334037
	Checksum: 0x41389371
	Offset: 0x1C08
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6a194eb6()
{
	level waittill("hash_d03db37a");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_71b8dba1::function_13b3b16a("plyr_goh_xiulan_how_0");
	}
}

/*
	Name: function_4416d44d
	Namespace: namespace_22334037
	Checksum: 0x85165221
	Offset: 0x1C58
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4416d44d()
{
	level waittill("hash_8f6177c0");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_71b8dba1::function_a463d127("tayr_i_gave_her_access_to_0", 0, "no_dni");
	}
}

/*
	Name: function_1e1459e4
	Namespace: namespace_22334037
	Checksum: 0x6645ABE6
	Offset: 0x1CB0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1e1459e4()
{
	level waittill("hash_a60e4185");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level.var_2fd26037 thread namespace_63b4601c::function_5fbec645("hend_taylor_what_do_you_0");
	}
}

/*
	Name: function_2825b2c3
	Namespace: namespace_22334037
	Checksum: 0xC2BE46E1
	Offset: 0x1D00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2825b2c3()
{
	level waittill("hash_cd7ed345");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_71b8dba1::function_a463d127("tayr_the_decision_the_r_0", 0, "no_dni");
	}
}

/*
	Name: function_223385a
	Namespace: namespace_22334037
	Checksum: 0xA57DD9DA
	Offset: 0x1D58
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_223385a()
{
	level waittill("hash_44d70a3");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_71b8dba1::function_a463d127("tayr_i_want_to_find_them_0", 0, "no_dni");
	}
}

/*
	Name: function_601474c6
	Namespace: namespace_22334037
	Checksum: 0xE09E57C1
	Offset: 0x1DB0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_601474c6()
{
	level waittill("hash_ea9a5e57");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level.var_2fd26037 thread namespace_63b4601c::function_5fbec645("hend_why_0");
	}
}

/*
	Name: function_8616ef2f
	Namespace: namespace_22334037
	Checksum: 0xB9CF3980
	Offset: 0x1E00
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8616ef2f()
{
	level waittill("hash_af6fa39");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		level thread namespace_71b8dba1::function_a463d127("tayr_i_need_to_know_how_d_0", 0, "no_dni");
	}
}

/*
	Name: function_20c804af
	Namespace: namespace_22334037
	Checksum: 0x69E089B4
	Offset: 0x1E58
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_20c804af()
{
	function_e46237c7();
	var_70f21d83 = namespace_14b42b8a::function_7922262b("garage_igc_script_node", "targetname");
	var_70f21d83 namespace_cc27597::function_5c143f59("cin_ven_06_10_parkingstructure_1st_shot08");
	wait(0.1);
	level namespace_ad23e503::function_74d6b22f("garage_igc_done");
}

/*
	Name: function_63a4033a
	Namespace: namespace_22334037
	Checksum: 0x8922221A
	Offset: 0x1EE8
	Size: 0x3BB
	Parameters: 2
	Flags: None
*/
function function_63a4033a(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b9785164);
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		level thread namespace_e6a038a0::function_3ae8447c();
		namespace_63b4601c::function_e00864bd("rear_garage_umbra_gate", 1, "rear_garage_gate");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_umbra_gate", "bathroom_gate", "noflag");
		thread namespace_63b4601c::function_ffaf4723("quad_tank_wall_umbra_vol", "bathroom_ceiling_umbra_gate", "bathroom_ceiling_gate", "noflag");
		level thread function_f0f8ed9f();
		level thread namespace_63b4601c::function_5dbf4126();
		level thread function_9ca09589();
		var_5b01a37b = namespace_14b42b8a::function_7922262b("quad_battle_script_node", "targetname");
		var_5b01a37b thread namespace_cc27597::function_c35e6aab("cin_ven_07_11_openpath_wall_vign");
		var_ecf5f255 = function_99201f25("quad_tank_color_triggers", "script_noteworthy");
		foreach(var_f7ebb04b in var_ecf5f255)
		{
			var_f7ebb04b function_175e6b8e(0);
			var_f7ebb04b.var_8ccee908 = 1;
		}
		level function_20c804af();
		level.var_29061a49 = namespace_96fa87af::function_7387a40a("garage_technical_01");
		level.var_29061a49 namespace_96fa87af::function_3762fc40();
		level.var_4f0894b2 = namespace_96fa87af::function_7387a40a("garage_technical_02");
		level.var_4f0894b2 namespace_96fa87af::function_3762fc40();
		level.var_4f0894b2 function_50ccee8d();
		level.var_4f0894b2 function_422037f5();
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	}
	namespace_523da15d::function_2c3bbf49();
	level thread namespace_7c587e3e::function_ea4f2f1b();
	function_2480a40a(var_b04bc952, var_74cd64bc);
}

/*
	Name: function_a55eff44
	Namespace: namespace_22334037
	Checksum: 0xF65201F8
	Offset: 0x22B0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_a55eff44(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_2480a40a
	Namespace: namespace_22334037
	Checksum: 0xDBBF399D
	Offset: 0x22E0
	Size: 0x1AB
	Parameters: 2
	Flags: None
*/
function function_2480a40a(var_b04bc952, var_74cd64bc)
{
	level.var_2fd26037 thread function_7347e2f2();
	level thread function_b09f1ac3();
	level thread function_41ffa9ef();
	level thread function_c3851a97();
	level thread function_5d001b91();
	level thread function_8d0e1d4c();
	level thread function_65592384();
	var_77d44b28 = function_6ada35ba("garage_player_gather_trigger", "targetname");
	var_77d44b28 function_175e6b8e(0);
	if(function_27c72c1b())
	{
		level waittill("hash_d72a35d0");
	}
	else
	{
		level namespace_82b91a51::function_8e66bc6("garage_snipers_dead", "garage_enemies_dead");
	}
	if(var_b04bc952 == "garage_igc")
	{
		namespace_1d795d47::function_be8adfb8("garage_igc");
	}
	else
	{
		namespace_1d795d47::function_be8adfb8("dev_garage");
	}
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_clear_garage");
}

/*
	Name: function_7347e2f2
	Namespace: namespace_22334037
	Checksum: 0xBFFCCA6F
	Offset: 0x2498
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_7347e2f2()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_7dfaf62 = 16;
	self function_c7708f99("garage_hendricks");
	var_a392d7f9 = function_b4cb3503("hendricks_garage_start_node", "targetname");
	self function_169cc712(var_a392d7f9, 1);
	self waittill("hash_41d1aaf0");
	level namespace_ad23e503::function_1ab5ebec("start_obj_technicals");
	self namespace_6f7b2095::function_bae40a28();
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	wait(0.05);
	namespace_4dbf3ae3::function_42e87952("hendricks_sniper_color");
}

/*
	Name: function_f0f8ed9f
	Namespace: namespace_22334037
	Checksum: 0x53CB9A8B
	Offset: 0x25D8
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_f0f8ed9f(var_74cd64bc)
{
	function_43f446e3("garage_police");
	function_43f446e3("garage_snipers");
	function_43f446e3("garage_hendricks");
	function_43f446e3("garage_players");
	function_43f446e3("garage_ground");
	if(!isdefined(var_74cd64bc))
	{
		level namespace_ad23e503::function_1ab5ebec("start_obj_technicals");
	}
	function_49e95dc0("garage_hendricks", "garage_snipers", 10);
	function_49e95dc0("garage_hendricks", "garage_ground", 10);
	function_49e95dc0("garage_police", "garage_snipers", 10000);
}

/*
	Name: function_b09f1ac3
	Namespace: namespace_22334037
	Checksum: 0xC3F183F3
	Offset: 0x2708
	Size: 0x2F1
	Parameters: 0
	Flags: None
*/
function function_b09f1ac3()
{
	namespace_2f06d687::function_22356ba7("garage_snipers", &function_f181f6aa);
	namespace_2f06d687::function_22356ba7("garage_ground_enemies", &function_724be02d);
	level thread function_c0e699ed();
	wait(1);
	namespace_d5067552::function_bae40a28("garage_lower_sm");
	namespace_d5067552::function_27bf2e8("garage_lower_sm", 3);
	var_5171fbdf = namespace_2f06d687::function_289e6fd1("garage_enemies");
	if(var_5171fbdf.size > 0)
	{
		foreach(var_11b61923 in var_5171fbdf)
		{
			if(function_5b49d38c(var_11b61923))
			{
				var_11b61923 thread namespace_e6a038a0::function_47370bbe();
			}
		}
	}
	var_56dd1913 = namespace_2f06d687::function_289e6fd1("garage_enemies");
	var_9c169a5c = function_6ada35ba("garage_enemies_final_volume", "targetname");
	foreach(var_e98b4e9b in var_56dd1913)
	{
		if(function_5b49d38c(var_e98b4e9b))
		{
			var_e98b4e9b namespace_d84e54db::function_ceb883cd("move_mode", "rambo");
			var_e98b4e9b function_e11ce512();
			var_e98b4e9b function_fb5720f7();
			var_e98b4e9b function_169cc712(var_9c169a5c, 1);
		}
	}
	namespace_d5067552::function_72e3dd35("garage_lower_sm");
	level notify("hash_d72a35d0");
}

/*
	Name: function_724be02d
	Namespace: namespace_22334037
	Checksum: 0x89EB987
	Offset: 0x2A08
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_724be02d()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 32;
	self function_c7708f99("garage_ground");
	var_9c169a5c = function_6ada35ba("garage_enemy_n_goalvolume", "targetname");
	if(!isdefined(self.var_b07228b6))
	{
		self function_169cc712(var_9c169a5c, 1);
	}
}

/*
	Name: function_c0e699ed
	Namespace: namespace_22334037
	Checksum: 0xADF4D016
	Offset: 0x2AA8
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_c0e699ed()
{
	namespace_2f06d687::function_c0434ff5("garage_snipers", 1);
	namespace_2f06d687::function_22356ba7("garage_snipers_reinforcements_1", &function_f181f6aa);
	namespace_2f06d687::function_c0434ff5("garage_snipers", 3);
	namespace_2f06d687::function_22356ba7("garage_snipers_reinforcements_2", &function_f181f6aa);
	namespace_2f06d687::function_c0434ff5("garage_snipers", 1);
	namespace_d5067552::function_bae40a28("garage_snipers_reinforcements_extra");
	level thread namespace_d5067552::function_16c424d1("garage_snipers_reinforcements_extra", &function_74ca52d5);
	wait(0.1);
	level thread function_6ad5d4b6();
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("garage_main_snipers_cleared", "garage_extra_snipers_cleared"));
	level namespace_523da15d::function_f766f1e0();
	level notify("hash_11d44cc4");
}

/*
	Name: function_6ad5d4b6
	Namespace: namespace_22334037
	Checksum: 0x6EC77BE9
	Offset: 0x2C20
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6ad5d4b6()
{
	namespace_2f06d687::function_45679edd("garage_snipers", 0);
	level namespace_ad23e503::function_74d6b22f("garage_main_snipers_cleared");
}

/*
	Name: function_74ca52d5
	Namespace: namespace_22334037
	Checksum: 0xDBB6CD67
	Offset: 0x2C68
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_74ca52d5()
{
	level namespace_ad23e503::function_74d6b22f("garage_extra_snipers_cleared");
}

/*
	Name: function_f181f6aa
	Namespace: namespace_22334037
	Checksum: 0xE36FE866
	Offset: 0x2C98
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_f181f6aa()
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 8;
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_15dfd6c = 3.5;
	self function_c7708f99("garage_snipers");
	self function_80765127();
	self.var_44a68a57 = &function_c95d9be1;
	self waittill("hash_41d1aaf0");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self.var_bbd5dba4 = 1;
	self function_dc89c930();
}

/*
	Name: function_dc89c930
	Namespace: namespace_22334037
	Checksum: 0xC914B430
	Offset: 0x2DA8
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_dc89c930()
{
	self endon("hash_128f8789");
	while(1)
	{
		if(function_65f192a6(self.var_6050ab17))
		{
			if(self.var_6050ab17 function_cb8df3d0())
			{
				self namespace_d84e54db::function_d104c596("normal", self.var_6050ab17, "j_head", 3);
				wait(5);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_c95d9be1
	Namespace: namespace_22334037
	Checksum: 0xB68EAF6B
	Offset: 0x2E38
	Size: 0x93
	Parameters: 12
	Flags: None
*/
function function_c95d9be1(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_ae725cb8, var_a5cf2304, var_5d7e7ac2)
{
	if(isdefined(var_3a212fd7) && !function_65f192a6(var_3a212fd7))
	{
		var_f9a179ed = 0;
	}
	return var_f9a179ed;
}

/*
	Name: function_41ffa9ef
	Namespace: namespace_22334037
	Checksum: 0x9BDEAEF0
	Offset: 0x2ED8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_41ffa9ef()
{
	level.var_e32979bf = namespace_2f06d687::function_22356ba7("garage_police");
	wait(0.1);
	function_49e95dc0("garage_snipers", "garage_police", 100000);
	function_49e95dc0("garage_ground", "garage_police", 10);
}

/*
	Name: function_d3d4580d
	Namespace: namespace_22334037
	Checksum: 0x42389393
	Offset: 0x2F60
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d3d4580d()
{
	self.var_7dfaf62 = 8;
	self.var_25d14901 = 1;
	self function_c7708f99("garage_police");
}

/*
	Name: function_2b37bfcd
	Namespace: namespace_22334037
	Checksum: 0xFBAE50CD
	Offset: 0x2FA8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_2b37bfcd()
{
	self.var_b1482eb5 = self.var_722885f3;
	self.var_38a1d6db = self.var_6ab6f4fd;
	level namespace_ad23e503::function_1ab5ebec("garage_igc_done");
	self.var_722885f3 = self.var_b1482eb5;
	self.var_6ab6f4fd = self.var_38a1d6db;
	if(self.var_170527fb == "cop_car_2")
	{
		self function_2992720d();
	}
}

/*
	Name: function_5d001b91
	Namespace: namespace_22334037
	Checksum: 0x5889288C
	Offset: 0x3040
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_5d001b91()
{
	level endon("hash_11d44cc4");
	level.var_4f0894b2 function_48f26766();
	wait(0.75);
	level.var_4f0894b2 function_4083a98e();
	level namespace_ad23e503::function_1ab5ebec("start_obj_technicals");
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_clear_garage");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 thread function_a28bf30a(level.var_29061a49, "technical_01_entered");
		var_6bfe1586 thread function_a28bf30a(level.var_4f0894b2, "technical_02_entered");
	}
	level namespace_ad23e503::function_43ac000b(function_84970cc4("technical_01_entered", "technical_02_entered"));
	level notify("hash_ede342ab");
}

/*
	Name: function_a28bf30a
	Namespace: namespace_22334037
	Checksum: 0xA65DAEED
	Offset: 0x31C8
	Size: 0x121
	Parameters: 2
	Flags: None
*/
function function_a28bf30a(var_66ec49de, var_ad23e503)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_66ec49de endon("hash_128f8789");
	var_96fa87af = undefined;
	var_f1709cab = 0;
	if(self function_cb8df3d0())
	{
		var_96fa87af = self function_dd4657f1();
		if(isdefined(var_96fa87af) && var_96fa87af == var_66ec49de)
		{
			var_f1709cab = 1;
		}
	}
	if(var_f1709cab == 1)
	{
		level namespace_ad23e503::function_74d6b22f(var_ad23e503);
	}
	else
	{
		var_66ec49de waittill("hash_80eb92fc", var_5dc5e20a, var_7b3da062);
		level namespace_ad23e503::function_74d6b22f(var_ad23e503);
	}
	level notify("hash_8a50cf52");
}

/*
	Name: function_8d0e1d4c
	Namespace: namespace_22334037
	Checksum: 0x1DE4015F
	Offset: 0x32F8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_8d0e1d4c()
{
	level thread function_66454e44();
	namespace_82b91a51::function_5b7e3888("sniper_killed", "technical_used");
	level waittill("hash_11d44cc4");
	level namespace_ad23e503::function_74d6b22f("kill_sniper_nags");
}

/*
	Name: function_66454e44
	Namespace: namespace_22334037
	Checksum: 0xA191BD7
	Offset: 0x3368
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_66454e44()
{
	namespace_2f06d687::function_c0434ff5("garage_snipers", 1);
	level notify("hash_ee4cd834");
}

/*
	Name: function_9ca09589
	Namespace: namespace_22334037
	Checksum: 0xB19E63BE
	Offset: 0x33A8
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_9ca09589()
{
	var_ab57d34a = function_99201f25("garage_balcony_damage", "script_noteworthy");
	foreach(var_e6bb4686 in var_ab57d34a)
	{
		var_e6bb4686 function_50ccee8d();
		var_e6bb4686 function_422037f5();
	}
}

/*
	Name: function_c3851a97
	Namespace: namespace_22334037
	Checksum: 0x9A4A31A6
	Offset: 0x3480
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_c3851a97()
{
	var_e9ddc8f2 = function_99201f25("garage_damage_trigger", "targetname");
	foreach(var_f92a03e7 in var_e9ddc8f2)
	{
		var_f92a03e7 thread function_f0f6fdf7();
	}
}

/*
	Name: function_f0f6fdf7
	Namespace: namespace_22334037
	Checksum: 0x7467AE11
	Offset: 0x3540
	Size: 0x35B
	Parameters: 0
	Flags: None
*/
function function_f0f6fdf7()
{
	var_2c3a4ffd = function_9b7fda5e("script_origin", self.var_722885f3 + VectorScale((0, 0, 1), 64));
	var_ec523dd5 = function_6ada35ba(self.var_b07228b6, "targetname");
	var_83442ffa = function_99201f25(self.var_caae374e, "targetname");
	var_7d044b82 = namespace_14b42b8a::function_7922262b(var_ec523dd5.var_b07228b6, "targetname");
	self waittill("hash_4dbf3ae3", var_aca0d97d);
	function_37cbcf1a("evt_garage_debris", self.var_722885f3);
	namespace_80983c42::function_80983c42(self.var_caae374e);
	foreach(var_e6bb4686 in var_83442ffa)
	{
		var_e6bb4686 function_48f26766();
		var_e6bb4686 function_4083a98e();
	}
	level namespace_82b91a51::function_ef3f75eb(self.var_caae374e);
	if(namespace_d73b9283::function_d2c92ee7())
	{
		var_56dd1913 = namespace_2f06d687::function_289e6fd1("garage_snipers");
		foreach(var_e98b4e9b in var_56dd1913)
		{
			if(function_5b49d38c(var_e98b4e9b) && function_87ea89a(var_7d044b82.var_722885f3, var_e98b4e9b.var_722885f3) < 100)
			{
				var_e98b4e9b thread function_ddff6a02(var_7d044b82);
			}
		}
	}
	else
	{
		function_eac31668(var_2c3a4ffd.var_722885f3, 100, 500, 500, var_aca0d97d);
	}
	var_ec523dd5 function_422037f5();
	var_ec523dd5 function_dc8c8404();
	var_2c3a4ffd function_dc8c8404();
}

/*
	Name: function_ddff6a02
	Namespace: namespace_22334037
	Checksum: 0x9E4EA1EE
	Offset: 0x38A8
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_ddff6a02(var_14b42b8a)
{
	var_a080d759 = function_bc7ce905(var_14b42b8a.var_6ab6f4fd) + function_aba60185(var_14b42b8a.var_6ab6f4fd) * 0.5;
	var_a080d759 = var_a080d759 * 40;
	self.var_eddbd1e2 = 1;
	self function_d7a0a9d8();
	self function_8461d2b1((var_a080d759[0], var_a080d759[1], var_a080d759[2] + 32));
	self function_2992720d();
}

/*
	Name: function_65592384
	Namespace: namespace_22334037
	Checksum: 0xCC36E4FF
	Offset: 0x3998
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_65592384()
{
	level namespace_ad23e503::function_74d6b22f("start_obj_technicals");
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		if(var_6bfe1586 function_cb8df3d0())
		{
			level namespace_ad23e503::function_74d6b22f("in_veh_before_vo");
		}
	}
	level thread function_1fab88a();
	if(!level namespace_ad23e503::function_7922262b("in_veh_before_vo"))
	{
		level.var_2fd26037 function_73a79ca0("hend_we_re_not_going_to_l_0", 6);
	}
	level.var_2fd26037 namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_1fab88a
	Namespace: namespace_22334037
	Checksum: 0xF0E891E0
	Offset: 0x3AE8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1fab88a()
{
	level waittill("hash_11d44cc4");
	var_56dd1913 = namespace_2f06d687::function_289e6fd1("garage_enemies");
	if(var_56dd1913.size > 0)
	{
		level.var_2fd26037 notify("hash_6f33cd57");
		level.var_2fd26037.var_5d9fbd2d = 0;
		level.var_2fd26037 function_73a79ca0("hend_let_s_clear_out_the_0");
	}
}

/*
	Name: function_73a79ca0
	Namespace: namespace_22334037
	Checksum: 0xC4EDAF24
	Offset: 0x3B80
	Size: 0xD7
	Parameters: 2
	Flags: None
*/
function function_73a79ca0(var_58863c39, var_ee7dbbc9)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0;
	}
	self endon("hash_6f33cd57");
	self namespace_76d95162::function_d9f49fba(0);
	if(!isdefined(self.var_5d9fbd2d) || self.var_5d9fbd2d == 0)
	{
		self.var_5d9fbd2d = 1;
		break;
	}
	while(self.var_5d9fbd2d == 1)
	{
		wait(2.5);
	}
	self namespace_63b4601c::function_5fbec645(var_58863c39, var_ee7dbbc9);
	self namespace_76d95162::function_d9f49fba(1);
	self.var_5d9fbd2d = 0;
}

