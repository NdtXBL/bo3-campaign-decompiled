#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_accolades;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_da397ec0;

/*
	Name: function_d64c7d65
	Namespace: namespace_da397ec0
	Checksum: 0x254C14B5
	Offset: 0xDD8
	Size: 0x283
	Parameters: 2
	Flags: None
*/
function function_d64c7d65(var_468a2e2f, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level namespace_71e9cb84::function_74d6b22f("w_underwater_state", 1);
		namespace_2f06d687::function_ef554cf7("axis", &namespace_cba4cc55::function_a527e6f9);
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_enter_sgen_no_pointer");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_investigate_sgen");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_locate_emf");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_descend_into_core");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_signal_source");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_goto_server_room");
		namespace_d0ef8521::function_31cd1834("cp_level_sgen_confront_pallas");
		namespace_d0ef8521::function_74d6b22f("cp_level_sgen_get_to_surface");
		namespace_d7916d65::function_a2995f22();
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a namespace_71e9cb84::function_e9c3870b("water_motes", 1);
			var_5dc5e20a thread namespace_419e977d::function_e9b126ef(15, 0.25);
		}
	}
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	level.var_2fd26037 namespace_6f7b2095::function_1b497663("r");
	function_6c1294b8("player_swimTime", 5000);
	level thread function_d290ebfa();
	namespace_99202726::function_f3915502();
	namespace_80983c42::function_80983c42("lights_sgen_swimup");
}

/*
	Name: function_9670e43f
	Namespace: namespace_da397ec0
	Checksum: 0xD097A419
	Offset: 0x1068
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_9670e43f(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_get_to_surface");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_da397ec0
	Checksum: 0x69C04BFE
	Offset: 0x10B0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level thread function_454f17f5();
	level thread function_adfc879d();
	level thread function_5faf4875();
	level thread function_931453ff();
	level thread function_e5892d8b();
	level thread function_ed258e83();
	level thread function_141e6fb1();
	level thread function_4479a58d();
	level thread function_38a41822();
	level thread function_13a4841b();
	level thread function_732b54da();
	level thread function_78227c49();
	level namespace_ad23e503::function_1ab5ebec("player_in_fan_vent");
	level thread function_1b1cd649();
}

/*
	Name: function_141e6fb1
	Namespace: namespace_da397ec0
	Checksum: 0xDA1DF5FE
	Offset: 0x1218
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_141e6fb1()
{
	namespace_d0ef8521::function_45d1556("silo_swim_breadcrumb");
}

/*
	Name: function_732b54da
	Namespace: namespace_da397ec0
	Checksum: 0x15E2343B
	Offset: 0x1240
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_732b54da()
{
	wait(3);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_82b91a51::function_32d40124(&"COOP_SWIM_INSTRUCTIONS", 0, undefined, 2);
	}
}

/*
	Name: function_adfc879d
	Namespace: namespace_da397ec0
	Checksum: 0x9A385379
	Offset: 0x12F0
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_adfc879d()
{
	var_26e0d148 = VectorScale((0, 1, 0), 30);
	var_339ee53e = function_6ada35ba("trig_water_flow", "targetname");
	while(1)
	{
		var_339ee53e waittill("hash_4dbf3ae3", var_6bfe1586);
		var_8cd5b0c5 = var_6bfe1586 function_1439c75a();
		var_8cd5b0c5 = var_8cd5b0c5 + var_26e0d148;
		var_6bfe1586 function_f5df04e6(var_8cd5b0c5);
	}
}

/*
	Name: function_4479a58d
	Namespace: namespace_da397ec0
	Checksum: 0xC179F91
	Offset: 0x13B8
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_4479a58d()
{
	level endon("hash_df299fe4");
	level thread function_72e5fd1f();
	level namespace_ad23e503::function_74d6b22f("important_vo_playing");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_alright_stay_on_my_0");
	level namespace_71b8dba1::function_a463d127("kane_heads_up_spotted_a_0", 0.5);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_take_out_those_charg_0", 0.7);
	level namespace_ad23e503::function_9d134160("important_vo_playing");
	level namespace_ad23e503::function_1ab5ebec("silo_swim_bridge_collapse");
	level namespace_ad23e503::function_74d6b22f("important_vo_playing");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_bridge_coming_down_0");
	level namespace_71b8dba1::function_a463d127("kane_hang_on_something_s_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_futz_we_hav_0", 0.5);
	level namespace_ad23e503::function_9d134160("important_vo_playing");
}

/*
	Name: function_72e5fd1f
	Namespace: namespace_da397ec0
	Checksum: 0x2CEA2FAA
	Offset: 0x1560
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function function_72e5fd1f()
{
	var_c2758464 = 0.2;
	var_eb553ac9 = 0;
	while(!level namespace_ad23e503::function_7922262b("silo_complete"))
	{
		if(level.var_9b1393e7.size == 0)
		{
			return;
		}
		var_60abd92a = level.var_9b1393e7[0] namespace_419e977d::function_b78a859e("o2");
		if(var_60abd92a > var_c2758464)
		{
			if(!level namespace_ad23e503::function_7922262b("important_vo_playing"))
			{
				switch(var_eb553ac9)
				{
					case 0:
					{
						level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_we_gotta_get_up_ther_0");
						break;
					}
					case 1:
					{
						level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_your_o2_levels_are_d_0");
						break;
					}
					case 2:
					{
						level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_your_o2_level_s_crit_0");
						break;
					}
					case 3:
					{
						level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_go_go_go_1");
						break;
					}
				}
			}
			var_eb553ac9++;
			var_c2758464 = var_c2758464 + 0.2;
		}
		wait(1);
	}
}

/*
	Name: function_e5892d8b
	Namespace: namespace_da397ec0
	Checksum: 0xC192C088
	Offset: 0x1718
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_e5892d8b()
{
	namespace_84970cc4::function_966ecb29(function_99201f25("drowning_trigger", "targetname"), &function_48cb67f6);
	level namespace_ad23e503::function_43ac000b(function_84970cc4("ai_drowning", "hendricks_move_up_5"));
	namespace_82b91a51::function_67520c6a(function_72a94f05(0.5, 1), undefined, &namespace_cc27597::function_43718187, "cin_sgen_25_02_siloswim_vign_windowbang_54i02_drowning");
	namespace_82b91a51::function_67520c6a(function_72a94f05(2, 3), undefined, &namespace_cc27597::function_43718187, "cin_sgen_25_02_siloswim_vign_windowbang_54i03_drowning");
}

/*
	Name: function_5faf4875
	Namespace: namespace_da397ec0
	Checksum: 0xF56469BF
	Offset: 0x1820
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_5faf4875()
{
	level.var_ebb3767b = function_6ada35ba("silo_swim_safe_area", "targetname");
	var_94dd2adf = namespace_14b42b8a::function_7faf4c39("static_depth_charge", "targetname");
	foreach(var_cb85ae7c in var_94dd2adf)
	{
		var_cb85ae7c thread function_da28fd56();
		namespace_82b91a51::function_76f13293();
	}
	var_15c854f8 = namespace_96fa87af::function_7387a40a("depth_charge_carrier");
	var_15c854f8 namespace_82b91a51::function_958c7633();
	var_15c854f8 function_42cddf81(10, 10, 10);
	var_15c854f8 thread function_267dcc4e();
	level namespace_ad23e503::function_1ab5ebec("silo_complete");
	wait(3);
	var_15c854f8 namespace_82b91a51::function_4b741fdc();
	var_15c854f8 namespace_82b91a51::function_20ffc8ff();
}

/*
	Name: function_931453ff
	Namespace: namespace_da397ec0
	Checksum: 0x11CAA9B9
	Offset: 0x19E0
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_931453ff()
{
	level endon("hash_df299fe4");
	var_c568c095 = function_6ada35ba("hendricks_kill_bot", "script_noteworthy");
	var_c568c095 namespace_2f06d687::function_994832bd(&function_9d7c6fb3);
	namespace_d5067552::function_bae40a28("sm_under_silo_swim_robots");
	namespace_4dbf3ae3::function_1ab5ebec("silo_hendricks_start_trigger", undefined, undefined, 0);
	level namespace_cc27597::function_43718187("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_1st_point");
	var_64e85e6d = function_24e95264("axis", "robot");
	namespace_84970cc4::function_1ab5ebec(var_64e85e6d, "death");
	if(!namespace_ad23e503::function_7922262b("hendricks_move_to_under_fan"))
	{
		level thread namespace_cc27597::function_43718187("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_1st_point_wait");
		level namespace_ad23e503::function_1ab5ebec("hendricks_move_to_under_fan");
	}
	level namespace_cc27597::function_43718187("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_shaft");
	level namespace_ad23e503::function_1ab5ebec("player_in_fan_vent");
	level namespace_cc27597::function_43718187("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_thru_shaft");
	level thread namespace_cc27597::function_43718187("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_upper_tunnel");
	level namespace_ad23e503::function_1ab5ebec("hendricks_move_up_4");
	level namespace_cc27597::function_43718187("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_balconies");
	level namespace_ad23e503::function_1ab5ebec("hendricks_move_up_5");
	level namespace_cc27597::function_43718187("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_rocks");
	level namespace_cc27597::function_43718187("cin_sgen_25_01_siloswim_vign_coverswim_hendricks_surface");
}

/*
	Name: function_9d7c6fb3
	Namespace: namespace_da397ec0
	Checksum: 0xE16C225B
	Offset: 0x1C60
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_9d7c6fb3()
{
	self endon("hash_128f8789");
	self function_65453879(level.var_2fd26037);
	level.var_2fd26037 waittill("hash_f4673288");
	self function_2992720d();
}

/*
	Name: function_267dcc4e
	Namespace: namespace_da397ec0
	Checksum: 0xCC030BD7
	Offset: 0x1CC0
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_267dcc4e()
{
	level endon("hash_df299fe4");
	var_fe6e315e = namespace_14b42b8a::function_7faf4c39("moving_depth_charge", "targetname");
	var_fe6e315e = namespace_84970cc4::function_4219028b(self.var_722885f3, var_fe6e315e);
	var_afd8b3ef = 0;
	var_ee7dbbc9 = 1 - level.var_2395e945.size - 1 * 0.17;
	while(1)
	{
		if(var_afd8b3ef < var_fe6e315e.size)
		{
		}
		else
		{
		}
		var_afd8b3ef = 0;
		if(isdefined(var_fe6e315e[var_afd8b3ef]))
		{
			self thread function_26a0a902("script_model", var_fe6e315e[var_afd8b3ef]);
		}
		wait(var_ee7dbbc9);
	}
}

/*
	Name: function_da28fd56
	Namespace: namespace_da397ec0
	Checksum: 0xA9206E91
	Offset: 0x1DD0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_da28fd56()
{
	var_2d4569cf = self function_26a0a902("script_model", undefined);
	return var_2d4569cf;
}

/*
	Name: function_26a0a902
	Namespace: namespace_da397ec0
	Checksum: 0x989FCC29
	Offset: 0x1E10
	Size: 0x21F
	Parameters: 3
	Flags: None
*/
function function_26a0a902(var_7b81749, var_10729d99, var_253d1f97)
{
	if(!isdefined(var_7b81749))
	{
		var_7b81749 = "script_model";
	}
	if(!isdefined(var_253d1f97))
	{
		var_253d1f97 = 0;
	}
	self endon("hash_128f8789");
	if(level namespace_ad23e503::function_7922262b("silo_complete"))
	{
		return;
	}
	if(!isdefined(self))
	{
		return;
	}
	var_2d4569cf = undefined;
	if(var_7b81749 === "script_model")
	{
		var_2d4569cf = self function_dabb79d8();
		if(isdefined(var_10729d99))
		{
			var_2d4569cf.var_170527fb = "depth_charger_dive";
			var_2d4569cf thread function_c51242e1(var_10729d99, var_253d1f97);
		}
		else
		{
			var_2d4569cf.var_170527fb = "depth_charger_static";
			var_2d4569cf thread namespace_82b91a51::function_67520c6a(function_72a94f05(0.5, 5), undefined, &function_607790f9, 5, 8, 18);
		}
		if(!var_253d1f97)
		{
			var_2d4569cf thread function_c775e8da(400);
		}
	}
	else
	{
		var_2d4569cf = self function_f51a7ebb();
		var_2d4569cf.var_722885f3 = self.var_722885f3;
		var_2d4569cf.var_6ab6f4fd = self.var_6ab6f4fd;
		var_2d4569cf thread function_66b2e4a2();
		var_2d4569cf thread function_c51242e1(var_10729d99, var_253d1f97);
		if(self.var_e6e9b8de === "script_model")
		{
			self namespace_82b91a51::function_20ffc8ff();
		}
	}
	return var_2d4569cf;
}

/*
	Name: function_f51a7ebb
	Namespace: namespace_da397ec0
	Checksum: 0x8634C5B5
	Offset: 0x2038
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_f51a7ebb(var_b71ed4a2)
{
	var_25e2c218 = undefined;
	while(!isdefined(var_25e2c218))
	{
		var_25e2c218 = namespace_96fa87af::function_7387a40a("depth_charge_spawner", 1);
		namespace_82b91a51::function_76f13293();
	}
	var_25e2c218 thread function_d2d42898();
	var_25e2c218 function_500dc2f7(105 / 2);
	var_25e2c218 namespace_16f9ecd3::function_b3ce91e0();
	var_25e2c218 namespace_71e9cb84::function_74d6b22f("sm_depth_charge_fx", 2);
	return var_25e2c218;
}

/*
	Name: function_dabb79d8
	Namespace: namespace_da397ec0
	Checksum: 0x46872E14
	Offset: 0x2118
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function function_dabb79d8()
{
	var_5a16524f = namespace_82b91a51::function_b9fd52a4("veh_t7_drone_depth_charge", self.var_722885f3, (function_26299103(360), function_26299103(360), function_26299103(360)));
	if(isdefined(var_5a16524f))
	{
		var_5a16524f.var_caae374e = "depth_charge_model";
		var_5a16524f function_8d63f8d0(1);
		var_5a16524f.var_3a90f16b = 999999;
		var_5a16524f namespace_71e9cb84::function_74d6b22f("sm_depth_charge_fx", 1);
		var_5a16524f function_8dafb866();
		var_5a16524f thread function_9e34c3b5();
		var_5a16524f namespace_16f9ecd3::function_b3ce91e0();
	}
	return var_5a16524f;
}

/*
	Name: function_c51242e1
	Namespace: namespace_da397ec0
	Checksum: 0x2306A7C4
	Offset: 0x2258
	Size: 0x35B
	Parameters: 2
	Flags: None
*/
function function_c51242e1(var_26aaa5cc, var_253d1f97)
{
	self endon("hash_128f8789");
	self endon("hash_75409bb6");
	if(!function_85e4c3b3(self))
	{
		if(isdefined(var_253d1f97) && var_253d1f97)
		{
			self thread function_46012050();
		}
	}
	else if(!isdefined(var_26aaa5cc))
	{
		if(isdefined(self.var_ab9199df))
		{
		}
		else
		{
		}
		var_26aaa5cc = namespace_84970cc4::function_47d18840(level.var_2395e945);
	}
	if(function_85e4c3b3(self))
	{
		var_b28ba731 = GetTime() + 3000;
	}
	while(isdefined(var_26aaa5cc))
	{
		var_6389ab3d = function_7d15e2f8(self.var_722885f3, var_26aaa5cc.var_722885f3);
		var_78962fff = var_6389ab3d / 200;
		if(function_85e4c3b3(self))
		{
			if(self function_32fa5072(level.var_ebb3767b) || GetTime() >= var_b28ba731)
			{
				break;
			}
			if(function_65f192a6(var_26aaa5cc))
			{
				self function_c985552d(self function_8790dc2e(var_26aaa5cc function_501eb072(), 512), 1, 1);
			}
			else
			{
				self function_c985552d(var_26aaa5cc.var_722885f3, 1, 1);
			}
			wait(0.5);
			if(function_cb3d1c9b(self.var_722885f3, var_26aaa5cc.var_722885f3) <= 30625)
			{
				break;
			}
		}
		else if(var_78962fff)
		{
			self function_a96a2721(var_26aaa5cc.var_722885f3, var_78962fff);
			self waittill("hash_a21db68a");
		}
		if(function_85e4c3b3(self))
		{
			if(!isdefined(var_26aaa5cc) || (!function_65f192a6(var_26aaa5cc) && (!isdefined(var_253d1f97) && var_253d1f97)))
			{
				if(isdefined(self.var_ab9199df))
				{
				}
				else
				{
				}
				var_26aaa5cc = namespace_84970cc4::function_47d18840(level.var_2395e945);
			}
		}
		else if(isdefined(var_26aaa5cc.var_b07228b6))
		{
		}
		else
		{
		}
		var_26aaa5cc = undefined;
	}
	self thread function_6493f00e();
}

/*
	Name: function_9e34c3b5
	Namespace: namespace_da397ec0
	Checksum: 0x97CB6474
	Offset: 0x25C0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_9e34c3b5()
{
	self endon("hash_128f8789");
	self waittill("hash_f9348fda", var_f9348fda, var_677b3e78);
	if(function_65f192a6(var_677b3e78))
	{
		namespace_99202726::function_e85e2afd(var_677b3e78);
	}
	self thread function_6493f00e(isdefined(var_677b3e78) && function_65f192a6(var_677b3e78));
}

/*
	Name: function_46012050
	Namespace: namespace_da397ec0
	Checksum: 0x2D6521C0
	Offset: 0x2660
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_46012050()
{
	self endon("hash_128f8789");
	self endon("hash_75409bb6");
	var_c4ebe9e7 = -10000;
	var_94db6e7c = GetTime();
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a.var_722885f3[2] > var_c4ebe9e7)
			{
				var_c4ebe9e7 = var_5dc5e20a.var_722885f3[2];
			}
		}
		if(self.var_722885f3[2] <= var_c4ebe9e7 + 512)
		{
			break;
		}
		wait(1);
	}
	var_90462d11 = var_c4ebe9e7;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a.var_722885f3[2] < var_90462d11)
		{
			var_90462d11 = var_5dc5e20a.var_722885f3[2];
		}
	}
	var_6389ab3d = self.var_722885f3[2] - var_90462d11 - 128;
	var_78962fff = var_6389ab3d / 200;
	if(var_78962fff > 0)
	{
		wait(function_62e4226e(var_78962fff));
	}
	self thread function_6493f00e();
}

/*
	Name: function_c775e8da
	Namespace: namespace_da397ec0
	Checksum: 0x613CE4C8
	Offset: 0x28B8
	Size: 0x16F
	Parameters: 1
	Flags: None
*/
function function_c775e8da(var_7a998a01)
{
	if(!isdefined(var_7a998a01))
	{
		var_7a998a01 = 400;
	}
	level endon("hash_df299fe4");
	self endon("hash_75409bb6");
	self endon("hash_128f8789");
	self thread function_207a5a6f();
	while(1)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(!var_5dc5e20a function_32fa5072(level.var_ebb3767b) && !var_5dc5e20a function_b6b4f2ae("ufo", "noclip"))
			{
				if(function_cb3d1c9b(var_5dc5e20a.var_722885f3, self.var_722885f3) < var_7a998a01 * var_7a998a01)
				{
					self.var_ab9199df = var_5dc5e20a;
					self notify("hash_75409bb6");
				}
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_207a5a6f
	Namespace: namespace_da397ec0
	Checksum: 0xD03F9294
	Offset: 0x2A30
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_207a5a6f()
{
	self endon("hash_128f8789");
	self waittill("hash_75409bb6");
	self function_921a1574("veh_depth_charge_locked");
	self function_c2931a36("veh_depth_charge_chase", 0.5);
	if(!level namespace_ad23e503::function_7922262b("silo_complete"))
	{
		self thread function_26a0a902("script_vehicle");
	}
	else
	{
		self thread function_6493f00e();
	}
}

/*
	Name: function_6493f00e
	Namespace: namespace_da397ec0
	Checksum: 0xA9BDEC3D
	Offset: 0x2AF8
	Size: 0x2B1
	Parameters: 1
	Flags: None
*/
function function_6493f00e(var_e0c598de)
{
	if(!isdefined(var_e0c598de))
	{
		var_e0c598de = 0;
	}
	if(!isdefined(self))
	{
		return;
	}
	var_b71ed4a2 = self.var_722885f3;
	function_eac31668(var_b71ed4a2, 175, 50, 15, self);
	function_5e09918e("grenade_rumble", var_b71ed4a2);
	function_9cf04c2e(0.5, 0.5, var_b71ed4a2, 150);
	if(self.var_e6e9b8de === "script_model")
	{
		function_fd4ba5e1(level.var_c1aa5253["depth_charge_explosion"], var_b71ed4a2);
		function_37cbcf1a("exp_drone_underwater", var_b71ed4a2);
		self namespace_82b91a51::function_20ffc8ff();
	}
	else
	{
		self function_c3945cd5(self.var_3a90f16b + 1000, self.var_722885f3, undefined, self, "none", "MOD_EXPLOSIVE");
	}
	wait(0.1);
	if(isdefined(var_e0c598de) && var_e0c598de)
	{
		var_f83c5536 = function_525ae497(function_99201f25("depth_charge_model", "script_noteworthy"), function_99201f25("dept_charge_spawner_vh", "targetname"), 0, 0);
		var_f83c5536 = function_57efbe1(var_f83c5536, var_b71ed4a2, 5, 0, 105);
		foreach(var_2d4569cf in var_f83c5536)
		{
			if(isdefined(var_2d4569cf))
			{
				var_2d4569cf thread function_6493f00e();
				namespace_82b91a51::function_76f13293();
			}
		}
	}
}

/*
	Name: function_78227c49
	Namespace: namespace_da397ec0
	Checksum: 0xA1AF1995
	Offset: 0x2DB8
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_78227c49()
{
	function_9e3608e3("silo_bridge_collapse_static");
	level namespace_cc27597::function_c35e6aab("bridge_collapse", "targetname");
	level namespace_ad23e503::function_1ab5ebec("player_in_fan_vent");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_sgen_bridge_silo_collapse_bundle", &function_38bb8243, "play");
	var_e32e572f = namespace_14b42b8a::function_7faf4c39("bridge_collapse_dp_target", "targetname");
	foreach(var_26aaa5cc in var_e32e572f)
	{
		function_fd4ba5e1(level.var_c1aa5253["depth_charge_explosion"], var_26aaa5cc.var_722885f3);
		function_37cbcf1a("exp_drone_underwater", var_26aaa5cc.var_722885f3);
		wait(0.1 + function_26299103(3) * 0.1);
	}
	level namespace_ad23e503::function_1ab5ebec("silo_swim_take_out");
	level namespace_ad23e503::function_74d6b22f("silo_swim_bridge_collapse");
	level namespace_cc27597::function_43718187("bridge_collapse", "targetname");
	function_6ddd4fa4("silo_bridge_collapse_static");
}

/*
	Name: function_38bb8243
	Namespace: namespace_da397ec0
	Checksum: 0xEE4CB166
	Offset: 0x2FF8
	Size: 0x233
	Parameters: 1
	Flags: None
*/
function function_38bb8243(var_c77d2837)
{
	var_edef565e = function_6ada35ba("bridge_side1", "targetname");
	var_edef565e function_8f279593();
	var_edef565e function_37f7858a(var_c77d2837["bridge_silo_collapse"], "bridge_main_fall_01_jnt");
	var_c7ecdbf5 = function_6ada35ba("bridge_side2", "targetname");
	var_c7ecdbf5 function_8f279593();
	var_c7ecdbf5 function_37f7858a(var_c77d2837["bridge_silo_collapse"], "bridge_main_fall_02_jnt");
	while(level namespace_cc27597::function_367f8966("p7_fxanim_cp_sgen_bridge_silo_collapse_bundle"))
	{
		var_5d11d4ef = function_99201f25("depth_charger_static", "targetname");
		foreach(var_2d4569cf in var_5d11d4ef)
		{
			if(var_2d4569cf function_32fa5072(var_edef565e) || var_2d4569cf function_32fa5072(var_c7ecdbf5))
			{
				var_2d4569cf thread function_6493f00e();
			}
		}
		wait(0.05);
	}
	var_edef565e function_dc8c8404();
	var_c7ecdbf5 function_dc8c8404();
}

/*
	Name: function_1b1cd649
	Namespace: namespace_da397ec0
	Checksum: 0x2110F413
	Offset: 0x3238
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_1b1cd649()
{
	var_10729d99 = namespace_14b42b8a::function_7922262b("rock_suicide_drone");
	var_5a16524f = var_10729d99 function_da28fd56();
	level namespace_ad23e503::function_1ab5ebec("hendricks_move_up_4");
	var_2eb20475 = function_6ada35ba("rock_slide_trigger", "targetname");
	var_2eb20475 function_175e6b8e(0);
	var_3067ee68 = namespace_2f06d687::function_22356ba7("rock_fall_bots");
	foreach(var_9b203de1 in var_3067ee68)
	{
		var_9b203de1.var_24eff8a4 = 562500;
		var_9b203de1.var_15dfd6c = 0.5;
	}
	namespace_4dbf3ae3::function_1ab5ebec("trig_rock_slide");
	if(isdefined(var_5a16524f))
	{
		var_5a16524f thread function_6493f00e();
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_boulder_silo_depth_charge_bundle");
		level waittill("hash_fbf5202b");
		var_2eb20475 function_175e6b8e(1);
		level waittill("hash_562dd11c");
		var_2eb20475 function_dc8c8404();
	}
}

/*
	Name: function_13a4841b
	Namespace: namespace_da397ec0
	Checksum: 0x97E1D16F
	Offset: 0x3448
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_13a4841b()
{
	level namespace_ad23e503::function_74d6b22f("silo_swim_take_out");
	level thread namespace_d40478f6::function_5d6d7c60();
	var_493378a9 = namespace_14b42b8a::function_7faf4c39("under_silo_depth_charge", "targetname");
	var_8c2654e3 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_493378a9.size; var_c957f6b6++)
	{
		var_456985ba = 0;
		if(var_493378a9[var_c957f6b6].var_caae374e === "ignore_player")
		{
			var_456985ba = 1;
		}
		var_8c2654e3[var_c957f6b6] = var_493378a9[var_c957f6b6] function_26a0a902("script_model", undefined, var_456985ba);
		if(isdefined(var_493378a9[var_c957f6b6].var_b07228b6))
		{
			var_26aaa5cc = namespace_14b42b8a::function_7922262b(var_493378a9[var_c957f6b6].var_b07228b6, "targetname");
			var_8c2654e3[var_c957f6b6] thread function_dd461d67(var_26aaa5cc);
		}
		wait(0.3);
	}
	namespace_84970cc4::function_1ab5ebec(var_8c2654e3, "death");
	level namespace_ad23e503::function_74d6b22f("hendricks_move_to_under_fan");
}

/*
	Name: function_dd461d67
	Namespace: namespace_da397ec0
	Checksum: 0x4E254A13
	Offset: 0x3620
	Size: 0x1D3
	Parameters: 1
	Flags: None
*/
function function_dd461d67(var_26aaa5cc)
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("depth_charge_swarm_trigger");
	var_6389ab3d = function_7d15e2f8(self.var_722885f3, var_26aaa5cc.var_722885f3);
	var_78962fff = var_6389ab3d / 200;
	self notify("hash_34674350");
	self function_a96a2721(var_26aaa5cc.var_722885f3, var_78962fff);
	self waittill("hash_a21db68a");
	if(var_26aaa5cc.var_caae374e === "detonate")
	{
		var_c1470355 = function_b8494651("axis");
		foreach(var_d84e54db in var_c1470355)
		{
			if(function_5b49d38c(var_d84e54db) && function_7d15e2f8(var_d84e54db.var_722885f3, self.var_722885f3) < 400)
			{
				var_d84e54db function_2992720d();
			}
		}
		self thread function_6493f00e();
	}
}

/*
	Name: function_7cf2db52
	Namespace: namespace_da397ec0
	Checksum: 0x79ACE14F
	Offset: 0x3800
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_7cf2db52(var_aa2d33b, var_25f54188)
{
	if(!isdefined(var_aa2d33b))
	{
		var_aa2d33b = 0.6;
	}
	if(!isdefined(var_25f54188))
	{
		var_25f54188 = 1;
	}
	level namespace_ce7c3ed5::function_3f0b2996(var_aa2d33b, var_25f54188, 0, "black", 0);
	wait(var_aa2d33b);
}

/*
	Name: function_1e6ee4b9
	Namespace: namespace_da397ec0
	Checksum: 0x1078635E
	Offset: 0x3880
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_1e6ee4b9(var_4b1adf24, var_25f54188)
{
	if(!isdefined(var_4b1adf24))
	{
		var_4b1adf24 = 0.4;
	}
	if(!isdefined(var_25f54188))
	{
		var_25f54188 = 1;
	}
	level namespace_ce7c3ed5::function_3f0b2996(var_4b1adf24, 0, var_25f54188, "black", 1);
	wait(var_4b1adf24);
}

/*
	Name: function_38a41822
	Namespace: namespace_da397ec0
	Checksum: 0x9D546AF9
	Offset: 0x3900
	Size: 0x2F1
	Parameters: 0
	Flags: None
*/
function function_38a41822()
{
	namespace_ad23e503::function_1ab5ebec("silo_complete");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	namespace_d0ef8521::function_31cd1834("cp_level_sgen_get_to_surface");
	namespace_99202726::function_fde8c3ce();
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_55b80798);
	level function_7cf2db52();
	namespace_84970cc4::function_966ecb29(function_b8494651("axis"), &namespace_82b91a51::function_20ffc8ff);
	level namespace_82b91a51::function_d8eaed3d(5);
	level thread function_ff4696f8();
	level thread namespace_d40478f6::function_973b77f9();
	level namespace_82b91a51::function_ef3f75eb("tuwco");
	wait(2);
	if(isdefined(level.var_649f9c84))
	{
		level thread [[level.var_649f9c84]]();
	}
	level thread function_1e6ee4b9();
	level namespace_82b91a51::function_67520c6a("fade_out_grab", undefined, &function_7cf2db52);
	namespace_cc27597::function_8f9f34e0("cin_sgen_26_01_lobbyexit_1st_escape_grab", &function_bd2c7078, "done");
	level thread namespace_cc27597::function_43718187("cin_sgen_26_01_lobbyexit_1st_escape_grab");
	level waittill("hash_2567a90b");
	if(!namespace_cc27597::function_b1f75ee9())
	{
		namespace_82b91a51::function_7e61de2b(0.6);
	}
	else
	{
		namespace_82b91a51::function_7e61de2b(0);
	}
	level waittill("hash_bffd177e");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_3c64a65b();
		var_5dc5e20a function_518a4a08();
	}
}

/*
	Name: function_bd2c7078
	Namespace: namespace_da397ec0
	Checksum: 0x2D5B14F3
	Offset: 0x3C00
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_bd2c7078(var_c77d2837)
{
	level thread function_1e6ee4b9();
	level namespace_82b91a51::function_67520c6a("final_fade_out", undefined, &function_88c4a050);
	level thread namespace_d40478f6::function_e71fc67f();
	level thread namespace_4fe3eef1::function_9908d262("mus_sgen_diaz_theme_intro");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_sgen_end_building_collapse_debris_bundle");
}

/*
	Name: function_55b80798
	Namespace: namespace_da397ec0
	Checksum: 0x32D5C529
	Offset: 0x3CB0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_55b80798()
{
	self function_83fd42b5();
	self function_e2af603e("damage_heavy");
	self namespace_71e9cb84::function_e9c3870b("water_motes", 0);
	self namespace_419e977d::function_60455f28("o2");
	self namespace_419e977d::function_12231466("o2");
}

/*
	Name: function_ff4696f8
	Namespace: namespace_da397ec0
	Checksum: 0x1AE5585C
	Offset: 0x3D58
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ff4696f8()
{
	namespace_80983c42::function_dfc351df("lights_sgen_swimup");
	namespace_80983c42::function_80983c42("lights_sgen_afterswim");
}

/*
	Name: function_88c4a050
	Namespace: namespace_da397ec0
	Checksum: 0xE43B419
	Offset: 0x3D98
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_88c4a050(var_c77d2837)
{
	level namespace_82b91a51::function_7e61de2b(0.6);
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	namespace_82b91a51::function_a0938376();
	namespace_1d795d47::function_be8adfb8("silo_swim");
}

/*
	Name: function_d2d42898
	Namespace: namespace_da397ec0
	Checksum: 0x4AB370C1
	Offset: 0x3E18
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_d2d42898()
{
	level endon("hash_df299fe4");
	self waittill("hash_128f8789");
	if(!isdefined(self))
	{
		return;
	}
	self function_8c8e79fe();
	wait(1);
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_66b2e4a2
	Namespace: namespace_da397ec0
	Checksum: 0x83262783
	Offset: 0x3E88
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_66b2e4a2()
{
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("silo_complete");
	self function_dc8c8404();
}

/*
	Name: function_ed258e83
	Namespace: namespace_da397ec0
	Checksum: 0xDB0F1186
	Offset: 0x3ED8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_ed258e83()
{
	level thread function_a025b41e();
	namespace_4dbf3ae3::function_1ab5ebec("start_silo_fx_debris");
	level namespace_71e9cb84::function_74d6b22f("silo_debris", 1);
	namespace_82b91a51::function_76f13293();
	namespace_4dbf3ae3::function_1ab5ebec("silo_debris");
	level namespace_71e9cb84::function_74d6b22f("silo_debris", 2);
	namespace_82b91a51::function_76f13293();
	level namespace_ad23e503::function_1ab5ebec("hendricks_move_up_4");
	level namespace_71e9cb84::function_74d6b22f("silo_debris", 3);
	namespace_82b91a51::function_76f13293();
	level namespace_ad23e503::function_1ab5ebec("hendricks_move_up_5");
	level namespace_71e9cb84::function_74d6b22f("silo_debris", 4);
	namespace_82b91a51::function_76f13293();
	level namespace_ad23e503::function_1ab5ebec("silo_complete");
	level namespace_71e9cb84::function_74d6b22f("silo_debris", 6);
}

/*
	Name: function_a025b41e
	Namespace: namespace_da397ec0
	Checksum: 0xB3C0D357
	Offset: 0x4070
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a025b41e()
{
	level namespace_ad23e503::function_1ab5ebec("ai_drowning");
	level namespace_71e9cb84::function_74d6b22f("silo_debris", 5);
	namespace_82b91a51::function_76f13293();
}

/*
	Name: function_607790f9
	Namespace: namespace_da397ec0
	Checksum: 0xBDE6CEB9
	Offset: 0x40D0
	Size: 0x235
	Parameters: 3
	Flags: None
*/
function function_607790f9(var_78962fff, var_f7da2b48, var_12cf56f6)
{
	if(!isdefined(var_78962fff))
	{
		var_78962fff = 10;
	}
	if(!isdefined(var_f7da2b48))
	{
		var_f7da2b48 = 1;
	}
	if(!isdefined(var_12cf56f6))
	{
		var_12cf56f6 = 3;
	}
	level endon("hash_df299fe4");
	self endon("hash_128f8789");
	self endon("hash_34674350");
	var_61cf9b22 = self.var_722885f3;
	var_175d1224 = self.var_6ab6f4fd;
	while(1)
	{
		var_f0e902b3 = (function_dc99997a(var_f7da2b48, var_12cf56f6), function_dc99997a(var_f7da2b48, var_12cf56f6), function_dc99997a(var_f7da2b48, var_12cf56f6)) * 0.75;
		var_7df56dbe = (function_dc99997a(var_f7da2b48, var_12cf56f6), function_dc99997a(var_f7da2b48, var_12cf56f6), function_dc99997a(var_f7da2b48, var_12cf56f6));
		self function_a96a2721(var_61cf9b22 + var_f0e902b3, var_78962fff, 0.5, 0.5);
		self function_c0b6566f(var_175d1224 + var_7df56dbe, var_78962fff, 0.5, 0.5);
		wait(var_78962fff);
		self function_a96a2721(var_61cf9b22 - var_f0e902b3, var_78962fff, 0.5, 0.5);
		self function_c0b6566f(var_175d1224 - var_7df56dbe, var_78962fff, 0.5, 0.5);
		wait(var_78962fff);
	}
}

/*
	Name: function_48cb67f6
	Namespace: namespace_da397ec0
	Checksum: 0xDA058504
	Offset: 0x4310
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_48cb67f6()
{
	var_eb48c16a = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6);
	namespace_84970cc4::function_966ecb29(var_eb48c16a, &namespace_cc27597::function_c35e6aab);
	self namespace_4dbf3ae3::function_1ab5ebec();
	foreach(var_c248e0ab in var_eb48c16a)
	{
		var_c248e0ab thread namespace_82b91a51::function_67520c6a(var_4bc288a0 + 1 / 5, undefined, &namespace_cc27597::function_43718187);
	}
}

/*
	Name: function_454f17f5
	Namespace: namespace_da397ec0
	Checksum: 0x3BF00B71
	Offset: 0x4428
	Size: 0x1F1
	Parameters: 0
	Flags: None
*/
function function_454f17f5()
{
	level namespace_ad23e503::function_1ab5ebec("player_in_fan_vent");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_419e977d::function_e9b126ef(20, 0.6);
	}
	level namespace_ad23e503::function_1ab5ebec("hendricks_move_up_5");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_419e977d::function_e9b126ef(25, 0.9);
	}
	level namespace_ad23e503::function_1ab5ebec("final_breath");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread namespace_419e977d::function_e9b126ef(5, 1);
	}
}

