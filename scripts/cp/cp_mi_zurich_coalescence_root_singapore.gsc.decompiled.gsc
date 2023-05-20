#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_zurich_coalescence_accolades;
#using scripts\cp\cp_mi_zurich_coalescence_root_cinematics;
#using scripts\cp\cp_mi_zurich_coalescence_sound;
#using scripts\cp\cp_mi_zurich_coalescence_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_3d19ef22;

/*
	Name: function_d290ebfa
	Namespace: namespace_3d19ef22
	Checksum: 0xAECDAC17
	Offset: 0xEA0
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	level namespace_ad23e503::function_c35e6aab("sing_root_depthcharges");
	var_b2a6f229 = function_99201f25("root_singapore_spawners", "script_noteworthy");
	level.var_c1aa5253["depth_charge_explosion"] = "explosions/fx_exp_underwater_depth_charge";
	level.var_c1aa5253["depth_charge_spawn"] = "player/fx_ai_raven_teleport";
	level.var_c1aa5253["vortex_explode"] = "player/fx_ai_dni_rez_in_hero_clean";
	level.var_c1aa5253["blood_impact_xsm"] = "blood/fx_blood_splash_furn_drop_xsm";
	level.var_c1aa5253["dirt_impact_xsm"] = "dirt/fx_dust_furn_drop_sm";
	level.var_c1aa5253["blood_impact_sm"] = "blood/fx_blood_splash_furn_drop_xsm";
	level.var_c1aa5253["dirt_impact_sm"] = "dirt/fx_dust_furn_drop_sm";
	level.var_c1aa5253["blood_impact_md"] = "blood/fx_blood_splash_furn_drop_md";
	level.var_c1aa5253["dirt_impact_md"] = "dirt/fx_dust_furn_drop_md";
	level.var_c1aa5253["blood_impact_lg"] = "blood/fx_blood_splash_furn_drop_lg";
	level.var_c1aa5253["dirt_impact_lg"] = "dirt/fx_dust_furn_drop_lg";
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_ferris_wheel_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "root_singapore_start_done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_container_collapse_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "root_singapore_start_done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_car_slide_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "root_singapore_start_done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_ferris_wheel_wave_bundle", &function_8fbe0681, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_ferris_wheel_wave_bundle", &namespace_8e9083ff::function_9f90bc0f, "done", "root_singapore_start_done");
}

/*
	Name: function_2ea898a8
	Namespace: namespace_3d19ef22
	Checksum: 0xBD1180DC
	Offset: 0x1150
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("scriptmover", "sm_depth_charge_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "water_disturbance", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "umbra_tome_singapore", 1, 2, "counter");
}

/*
	Name: function_9c1fc2fd
	Namespace: namespace_3d19ef22
	Checksum: 0x97DB506
	Offset: 0x11F0
	Size: 0x3C1
	Parameters: 2
	Flags: None
*/
function function_9c1fc2fd(var_b04bc952, var_74cd64bc)
{
	namespace_d7916d65::function_73adcefc();
	if(var_74cd64bc)
	{
		level namespace_82b91a51::function_7e61de2b(0);
	}
	namespace_82b91a51::function_d8eaed3d(8);
	function_acdfe1fe("cp_zurich_env_corvusmonitor", 1);
	var_4ccf970 = namespace_8e9083ff::function_a00fa665(var_b04bc952);
	namespace_8e9083ff::function_4d032f25(1, 0.5);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_8e9083ff::function_39af75ef, "singapore_root_completed");
	namespace_2f06d687::function_2b37a3c9("raven_ambush_ai", "script_parameters", &namespace_8e9083ff::function_aceff870);
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_ferris_wheel_bundle");
	level thread function_29073d62();
	level thread function_eb271a4b(var_b04bc952);
	namespace_d7916d65::function_a2995f22();
	namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
	level thread function_23a51944();
	level thread function_54fbadd1();
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &function_db4d091);
	namespace_dabbe128::function_356a4ee1(&function_db4d091);
	level.var_1895e0f9 = &function_1aeafdf8;
	level thread function_4402ab63();
	level thread function_95353712();
	level thread function_8842e57d();
	level thread function_a0e6701b();
	level thread function_3893ad5c(var_b04bc952);
	level thread function_c9c3556c(var_b04bc952);
	level thread namespace_8e9083ff::function_a03f30f2(var_b04bc952, "root_singapore_vortex", "root_singapore_regroup");
	level thread namespace_8e9083ff::function_dd842585(var_b04bc952, "root_singapore_vortex", "t_root_singapore_vortex");
	level waittill(var_b04bc952 + "enter_vortex");
	level thread function_95b88092("root_singapore_vortex", 0);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_82b91a51::function_c72856fc(1);
	}
}

/*
	Name: function_db4d091
	Namespace: namespace_3d19ef22
	Checksum: 0xE22E16CF
	Offset: 0x15C0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_db4d091()
{
	level endon("hash_73b00182");
	self notify("hash_db4d091");
	self endon("hash_db4d091");
	self thread function_52ac3a61();
	self waittill("hash_a71a53c4");
	self namespace_71e9cb84::function_688ed188("umbra_tome_singapore");
	level thread function_252e350();
	level namespace_82b91a51::function_ef3f75eb("stSINmus");
}

/*
	Name: function_52ac3a61
	Namespace: namespace_3d19ef22
	Checksum: 0x8FA0440A
	Offset: 0x1668
	Size: 0x155
	Parameters: 0
	Flags: None
*/
function function_52ac3a61()
{
	level endon("hash_73b00182");
	self endon("hash_643a7daf");
	self endon("hash_a71a53c4");
	self notify("hash_52ac3a61");
	self endon("hash_52ac3a61");
	var_4d85762b = self function_c7f3ce11();
	self waittill("hash_128f8789");
	wait(0.5);
	if(isdefined(self.var_beee0485) && self.var_beee0485 >= 0 && var_4d85762b != self.var_beee0485)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_c7f3ce11() == self.var_beee0485)
			{
				var_5dc5e20a namespace_71e9cb84::function_688ed188("umbra_tome_singapore");
				break;
			}
		}
	}
}

/*
	Name: function_1aeafdf8
	Namespace: namespace_3d19ef22
	Checksum: 0xDAD2D249
	Offset: 0x17C8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_1aeafdf8()
{
	self namespace_71e9cb84::function_688ed188("umbra_tome_singapore");
}

/*
	Name: function_c38b8260
	Namespace: namespace_3d19ef22
	Checksum: 0xF2D0C906
	Offset: 0x17F8
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_c38b8260()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	namespace_82b91a51::function_76f13293();
	namespace_82b91a51::function_76f13293();
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 namespace_71e9cb84::function_688ed188("umbra_tome_singapore");
	}
}

/*
	Name: function_95b88092
	Namespace: namespace_3d19ef22
	Checksum: 0xBC99FB18
	Offset: 0x18D8
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_95b88092(var_b04bc952, var_74cd64bc)
{
	if(isdefined(var_74cd64bc) && var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d7916d65::function_a2995f22();
		namespace_1d795d47::function_552e05fb(var_b04bc952, 0);
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_8e9083ff::function_39af75ef, "singapore_root_completed");
		level thread function_252e350();
		namespace_8e9083ff::function_4d032f25(1, 0.5);
		level thread namespace_8e9083ff::function_c90e23b6(var_b04bc952);
	}
	if(isdefined(level.var_aeb7161b))
	{
		level thread [[level.var_aeb7161b]]();
	}
	level thread namespace_cc27597::function_c35e6aab("singapore_fxanim_heart_ceiling", "targetname");
	namespace_80983c42::function_80983c42("heartLightsSing");
	level thread namespace_67110270::function_973b77f9();
	self namespace_8e9083ff::function_b0f0dd1f(0);
	level thread function_4b2f6f7();
	if(level.var_2395e945 === 1)
	{
		namespace_9f824288::function_5d2cdd99();
	}
	var_8fb0849a = namespace_8e9083ff::function_a1851f86(var_b04bc952);
	var_8fb0849a waittill("hash_40b1a9d9");
	level thread namespace_bbb4ee72::function_b319df2(var_b04bc952, var_8fb0849a.var_90971f20.var_6bfe1586);
	if(isdefined(level.var_3e0291d0))
	{
		[[level.var_3e0291d0]]();
	}
	function_4a0fb95e("cp_zurich_env_corvusmonitor");
	namespace_82b91a51::function_ef3f75eb("stp_mus");
}

/*
	Name: function_c68a0705
	Namespace: namespace_3d19ef22
	Checksum: 0xC4EB2684
	Offset: 0x1B38
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_c68a0705(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread function_c38b8260();
	var_ef0ea28e = function_99201f25("singapore_cover", "targetname");
	namespace_84970cc4::function_eaab05dc(var_ef0ea28e, &function_dc8c8404);
}

/*
	Name: function_53a05865
	Namespace: namespace_3d19ef22
	Checksum: 0x493158DB
	Offset: 0x1BD0
	Size: 0x7B
	Parameters: 4
	Flags: None
*/
function function_53a05865(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level notify("hash_73b00182");
	namespace_dabbe128::function_a0ac4434(&function_db4d091);
	level.var_1895e0f9 = undefined;
	level thread namespace_8e9083ff::function_4a00a473("root_singapore");
}

/*
	Name: function_efc52a3e
	Namespace: namespace_3d19ef22
	Checksum: 0xAE3F5CE2
	Offset: 0x1C58
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function function_efc52a3e()
{
	level endon("hash_8ba64bc4");
	level namespace_ad23e503::function_1ab5ebec("flag_singapore_root_monologue_01");
	level namespace_71b8dba1::function_13b3b16a("plyr_listen_only_to_the_s_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_your_mind_relax_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_your_thoughts_dr_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_the_bad_memories_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_peace_be_upon_yo_2", 3);
	level namespace_ad23e503::function_1ab5ebec("flag_singapore_root_monologue_02");
	level namespace_71b8dba1::function_13b3b16a("plyr_surrender_yourself_t_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_let_them_wash_over_y_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_imagine_somewhere_ca_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_imagine_somewhere_sa_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_imagine_yourself_2", 3);
	level namespace_ad23e503::function_74d6b22f("flag_singapore_root_monologue_02_done");
	level namespace_ad23e503::function_8870cfa8(function_84970cc4("flag_salim_cognititve_neural_vo_done", "flag_singapore_root_monologue_03"));
	level namespace_71b8dba1::function_13b3b16a("plyr_you_are_standing_in_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_the_trees_around_you_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_pure_white_snowflake_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_can_feel_them_me_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_are_not_cold_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_it_cannot_overcome_t_2", 3);
	level namespace_ad23e503::function_1ab5ebec("flag_singapore_root_monologue_04");
	level namespace_71b8dba1::function_13b3b16a("plyr_can_you_hear_it_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_only_have_to_lis_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_do_you_hear_it_slowi_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_are_slowing_it_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_are_in_control_4", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_calm_2", 3);
	level namespace_71b8dba1::function_13b3b16a("plyr_at_peace_2", 3);
	level namespace_ad23e503::function_74d6b22f("flag_singapore_root_monologue_04_done");
}

/*
	Name: function_23a51944
	Namespace: namespace_3d19ef22
	Checksum: 0x302BDDF1
	Offset: 0x2020
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_23a51944()
{
	wait(2);
	level namespace_71b8dba1::function_a463d127("hcor_rachel_kane_never_ha_0", 1, "NO_DNI");
	level thread namespace_67110270::function_65e1e4b4();
	level namespace_71b8dba1::function_a463d127("hcor_but_you_can_still_ma_0", 1, "NO_DNI");
	level namespace_ad23e503::function_74d6b22f("flag_hall_sing_intro_vo_done");
}

/*
	Name: function_49b9e027
	Namespace: namespace_3d19ef22
	Checksum: 0x2DD7B72
	Offset: 0x20C8
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_49b9e027(var_b04bc952)
{
	level endon(var_b04bc952 + "enter_vortex");
	level namespace_ad23e503::function_1ab5ebec("flag_hall_sing_intro_vo_done");
	wait(3);
	level notify("hash_d3c69346");
	level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_you_ve_just_got_to_h_0");
	level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_if_we_can_breach_the_0", 1);
	wait(5);
	level thread function_efc52a3e();
	level namespace_ad23e503::function_1ab5ebec("flag_taylor_vo_just_stay_with_me");
	if(namespace_ad23e503::function_7922262b("flag_singapore_root_monologue_02_done"))
	{
		level.var_1c26230b namespace_71b8dba1::function_81141386("tayr_just_stay_with_me_1");
	}
}

/*
	Name: function_4b2f6f7
	Namespace: namespace_3d19ef22
	Checksum: 0xCBE6D28
	Offset: 0x21D8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_4b2f6f7()
{
	level endon("hash_8ba64bc4");
	level namespace_ad23e503::function_1ab5ebec("flag_singapore_root_monologue_04_done");
	level namespace_71b8dba1::function_a463d127("salm_as_with_any_ground_b_0", 4, "NO_DNI");
	level namespace_71b8dba1::function_a463d127("salm_should_the_internati_0", 1, "NO_DNI");
}

/*
	Name: function_54fbadd1
	Namespace: namespace_3d19ef22
	Checksum: 0xD2EC553E
	Offset: 0x2270
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_54fbadd1()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_sing_swim_salim_vo");
	if(namespace_ad23e503::function_7922262b("flag_singapore_root_monologue_02_done"))
	{
		level namespace_71b8dba1::function_a463d127("salm_cognitive_neural_int_0", 1, "NO_DNI");
	}
	level namespace_ad23e503::function_74d6b22f("flag_salim_cognititve_neural_vo_done");
}

/*
	Name: function_c9c3556c
	Namespace: namespace_3d19ef22
	Checksum: 0x70BA8342
	Offset: 0x2300
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_c9c3556c(var_b04bc952)
{
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_faf8f736, 1);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_83fd42b5);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_c72856fc, 0);
	wait(2);
	level thread namespace_82b91a51::function_593c2af4(1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_688ed188, "postfx_transition");
	function_37cbcf1a("evt_clearing_trans_in", (0, 0, 0));
	level namespace_8e9083ff::function_c90e23b6(var_b04bc952, "breadcrumb_singroot_3");
	level.var_1c26230b namespace_d84e54db::function_b4f5e3b9(1);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_faf8f736, 0);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_4890e520);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_c72856fc, 1);
	namespace_82b91a51::function_a0938376();
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_3893ad5c
	Namespace: namespace_3d19ef22
	Checksum: 0x34D56DC1
	Offset: 0x24E8
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_3893ad5c(var_b04bc952)
{
	var_6a61d135 = 1;
	wait(1);
	if(isdefined(level.var_4354053d))
	{
		level thread [[level.var_4354053d]]();
	}
	while(var_6a61d135)
	{
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			if(!var_6bfe1586 function_8213df59())
			{
				var_6a61d135 = 0;
			}
		}
		wait(0.05);
	}
	level.var_1c26230b namespace_d84e54db::function_b4f5e3b9(0);
	level thread function_49b9e027(var_b04bc952);
}

/*
	Name: function_eb271a4b
	Namespace: namespace_3d19ef22
	Checksum: 0x31D8E255
	Offset: 0x2610
	Size: 0x155
	Parameters: 1
	Flags: None
*/
function function_eb271a4b(var_b04bc952)
{
	level endon(var_b04bc952 + "_done");
	level endon("hash_73b00182");
	var_b1cdbf1d = 0;
	while(1)
	{
		var_f6e695c0 = namespace_14b42b8a::function_7922262b("breadcrumb_singroot_" + var_b1cdbf1d, "targetname");
		var_b1fe230f = function_6ada35ba("t_singroot_" + var_b1cdbf1d, "script_noteworthy");
		if(!isdefined(var_f6e695c0) || !isdefined(var_b1fe230f))
		{
			return;
		}
		namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", var_f6e695c0);
		var_b1fe230f waittill("hash_4dbf3ae3");
		level notify("hash_431e9a83");
		namespace_9f824288::function_5d2cdd99();
		if(var_b1cdbf1d == 2)
		{
			level thread function_26f61e7c();
		}
		namespace_d0ef8521::function_31cd1834("cp_waypoint_breadcrumb", var_f6e695c0);
		var_b1cdbf1d++;
	}
}

/*
	Name: function_26f61e7c
	Namespace: namespace_3d19ef22
	Checksum: 0x22834404
	Offset: 0x2770
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_26f61e7c()
{
	level namespace_8e9083ff::function_b0f0dd1f(1, "red_rain");
}

/*
	Name: function_8842e57d
	Namespace: namespace_3d19ef22
	Checksum: 0xA012B0C0
	Offset: 0x27A0
	Size: 0x57
	Parameters: 0
	Flags: None
*/
function function_8842e57d()
{
	var_d5aeed2b = function_99201f25("root_sing_cover", "targetname");
	var_d5aeed2b = namespace_84970cc4::function_966ecb29(var_d5aeed2b, &function_258afdfc);
}

/*
	Name: function_258afdfc
	Namespace: namespace_3d19ef22
	Checksum: 0x5078D27C
	Offset: 0x2800
	Size: 0x279
	Parameters: 0
	Flags: None
*/
function function_258afdfc()
{
	var_482d5204 = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_482d5204), "Dev Block strings are not supported");
	#/
	foreach(var_19966f24 in var_482d5204)
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_19966f24.var_6df9264), "Dev Block strings are not supported");
		#/
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_19966f24.var_b07228b6), "Dev Block strings are not supported");
		#/
		if(isdefined(var_19966f24.var_db7bb468))
		{
			var_a8a64a67 = function_fe0cfd2e(var_19966f24.var_db7bb468, "targetname");
			foreach(var_974cc07 in var_a8a64a67)
			{
				function_d224409e(var_974cc07, 0);
			}
		}
	}
	self waittill("hash_4dbf3ae3");
	foreach(var_19966f24 in var_482d5204)
	{
		var_19966f24 thread function_375f158a();
	}
}

/*
	Name: function_375f158a
	Namespace: namespace_3d19ef22
	Checksum: 0xB6848F2A
	Offset: 0x2A88
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_375f158a()
{
	wait(function_62e4226e(2));
	var_4b1dfeae = namespace_82b91a51::function_b9fd52a4(self.var_6df9264, self.var_722885f3, self.var_6ab6f4fd);
	var_4b1dfeae.var_1069f2d4 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	var_4b1dfeae.var_170527fb = "singapore_cover";
	if(isdefined(self.var_fc5ff01a))
	{
		var_4b1dfeae.var_fc5ff01a = self.var_fc5ff01a;
	}
	if(isdefined(self.var_db7bb468))
	{
		var_4b1dfeae.var_db7bb468 = self.var_db7bb468;
		var_4b1dfeae thread function_e8047245();
	}
	var_4b1dfeae thread function_14bb726e();
	var_4b1dfeae thread function_1bf4af4f();
}

/*
	Name: function_14bb726e
	Namespace: namespace_3d19ef22
	Checksum: 0xCB72C4FA
	Offset: 0x2BB0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_14bb726e()
{
	var_c26efe11 = function_72a94f05(0.5, 1.25);
	self function_a96a2721(self.var_1069f2d4.var_722885f3, var_c26efe11);
	self function_c0b6566f(self.var_1069f2d4.var_6ab6f4fd, var_c26efe11);
	self waittill("hash_a21db68a");
	self function_4083a98e();
	self function_e2af603e("damage_heavy");
	function_37cbcf1a("evt_floor_debris_big", self.var_722885f3);
	if(isdefined(self.var_fc5ff01a))
	{
		function_da6acfd2(level.var_c1aa5253[self.var_fc5ff01a], self, "tag_origin");
	}
	else
	{
		function_da6acfd2(level.var_c1aa5253["dirt_impact_lg"], self, "tag_origin");
	}
}

/*
	Name: function_e8047245
	Namespace: namespace_3d19ef22
	Checksum: 0x11E1E97D
	Offset: 0x2D08
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_e8047245()
{
	var_a8a64a67 = function_fe0cfd2e(self.var_db7bb468, "targetname");
	self waittill("hash_a21db68a");
	foreach(var_974cc07 in var_a8a64a67)
	{
		function_d224409e(var_974cc07, 1);
	}
}

/*
	Name: function_1bf4af4f
	Namespace: namespace_3d19ef22
	Checksum: 0x44BFB5F2
	Offset: 0x2DD8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_1bf4af4f()
{
	self endon("hash_dc8c8404");
	level waittill("hash_4bb2007e");
	if(isdefined(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_a0e6701b
	Namespace: namespace_3d19ef22
	Checksum: 0xFE6BCC06
	Offset: 0x2E20
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a0e6701b()
{
	var_95ff9697 = function_99201f25("sing_falling_destructible", "script_noteworthy");
	namespace_84970cc4::function_966ecb29(var_95ff9697, &function_514e0b2e);
}

/*
	Name: function_514e0b2e
	Namespace: namespace_3d19ef22
	Checksum: 0xF333BD19
	Offset: 0x2E80
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_514e0b2e()
{
	if(self.var_e6e9b8de === "script_model")
	{
		var_c26efe11 = function_72a94f05(0.75, 1.5);
		self function_50ccee8d();
		self.var_64852f68 = function_9b7fda5e("trigger_radius", self.var_722885f3, 0, 1024, 128);
		self function_8bdea13c(1024, 0.05);
		self.var_64852f68 waittill("hash_4dbf3ae3");
		self.var_64852f68 function_dc8c8404();
		self function_48f26766();
		self function_8bdea13c(-1024, var_c26efe11);
		self waittill("hash_a21db68a");
		self function_e2af603e("damage_heavy");
		function_37cbcf1a("evt_floor_debris_big", self.var_722885f3);
		function_da6acfd2(level.var_c1aa5253["dirt_impact_md"], self, "tag_origin");
	}
}

/*
	Name: function_29073d62
	Namespace: namespace_3d19ef22
	Checksum: 0xA2697D14
	Offset: 0x3010
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_29073d62()
{
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_container_collapse_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("container_fxanim", "script_noteworthy");
	level namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_container_collapse_bundle");
}

/*
	Name: function_4402ab63
	Namespace: namespace_3d19ef22
	Checksum: 0x7DE8D6A
	Offset: 0x3080
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_4402ab63()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_singroot_1", "script_noteworthy");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_ferris_wheel_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_ferris_wheel_wave_bundle");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("damage_heavy");
	}
	level waittill("hash_55a06ec6");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_e2af603e("cp_zurich_ferris_wheel_fall");
	}
}

/*
	Name: function_8fbe0681
	Namespace: namespace_3d19ef22
	Checksum: 0xA060D1C3
	Offset: 0x3210
	Size: 0x22B
	Parameters: 1
	Flags: None
*/
function function_8fbe0681(var_c77d2837)
{
	var_32cdba86 = var_c77d2837["zurich_ferris_wheel_wave"];
	var_29f7937 = "zur_wave_jnt";
	var_8b856a66 = function_9b7fda5e("trigger_box", var_32cdba86 function_d48f2ab3(var_29f7937), 0, 128, 1200, 128);
	var_8b856a66.var_6ab6f4fd = var_32cdba86 function_cd1d99bd(var_29f7937);
	var_8b856a66 function_8f279593();
	var_8b856a66 function_37f7858a(var_32cdba86, var_29f7937, (0, 0, 0), VectorScale((0, 1, 0), 30));
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_8b856a66 thread function_32d3b286(var_5dc5e20a);
	}
	var_8b856a66 thread function_9ea9bed();
	wait(0.05);
	var_32cdba86 namespace_71e9cb84::function_74d6b22f("water_disturbance", 1);
	level waittill("hash_99c4740a");
	var_32cdba86 namespace_71e9cb84::function_74d6b22f("water_disturbance", 0);
	level notify("hash_eb78e4c5");
	var_8b856a66 function_dc8c8404();
}

/*
	Name: function_32d3b286
	Namespace: namespace_3d19ef22
	Checksum: 0x188F5A06
	Offset: 0x3448
	Size: 0x13B
	Parameters: 1
	Flags: None
*/
function function_32d3b286(var_5dc5e20a)
{
	self endon("hash_128f8789");
	self endon("hash_4735ec09");
	var_5dc5e20a endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_4a36ffac);
		if(var_4a36ffac == var_5dc5e20a && (!isdefined(var_5dc5e20a.var_1cd4d4e6) && var_5dc5e20a.var_1cd4d4e6))
		{
			var_5dc5e20a.var_1cd4d4e6 = 1;
			var_5dc5e20a thread function_b8c35195(self);
			if(function_65f192a6(var_5dc5e20a) && var_5dc5e20a function_32fa5072(self))
			{
				var_5dc5e20a thread function_c61ca0be(self);
				var_5dc5e20a thread function_adade905(self);
				var_5dc5e20a function_921a1574("evt_surge_impact");
				break;
			}
		}
	}
}

/*
	Name: function_b8c35195
	Namespace: namespace_3d19ef22
	Checksum: 0x1C3029DA
	Offset: 0x3590
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_b8c35195(var_12377408)
{
	self endon("hash_128f8789");
	while(isdefined(var_12377408) && self function_32fa5072(var_12377408))
	{
		wait(0.05);
	}
	self.var_1cd4d4e6 = 0;
	if(isdefined(var_12377408))
	{
		var_12377408 notify("hash_4735ec09");
	}
}

/*
	Name: function_adade905
	Namespace: namespace_3d19ef22
	Checksum: 0x80AB015B
	Offset: 0x3608
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_adade905(var_59ed1f41)
{
	self endon("hash_128f8789");
	var_59ed1f41 endon("hash_4735ec09");
	while(1)
	{
		self function_e2af603e("damage_heavy");
		wait(0.1);
	}
}

/*
	Name: function_c61ca0be
	Namespace: namespace_3d19ef22
	Checksum: 0x3983BA0D
	Offset: 0x3668
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_c61ca0be(var_59ed1f41)
{
	self endon("hash_128f8789");
	var_59ed1f41 endon("hash_4735ec09");
	while(1)
	{
		if(!(isdefined(self.var_564407fb) && self.var_564407fb))
		{
			self function_f5df04e6(function_bc7ce905(VectorScale((0, 1, 0), 345)) * 200);
		}
		wait(0.05);
	}
}

/*
	Name: function_9ea9bed
	Namespace: namespace_3d19ef22
	Checksum: 0xBE8C53FF
	Offset: 0x3700
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_9ea9bed()
{
	self endon("hash_128f8789");
	self endon("hash_4735ec09");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_480743);
		if(function_5b49d38c(var_480743) && var_480743.var_3e94206a == "axis" && (!isdefined(var_480743.var_284432c3) && var_480743.var_284432c3))
		{
			var_480743.var_284432c3 = 1;
			var_480743 thread function_3de3b792(self);
		}
	}
}

/*
	Name: function_3de3b792
	Namespace: namespace_3d19ef22
	Checksum: 0xCDBD8854
	Offset: 0x37D0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_3de3b792(var_12377408)
{
	self endon("hash_128f8789");
	var_a080d759 = function_f679a325(self.var_722885f3 - var_12377408.var_722885f3);
	self function_d7a0a9d8();
	self function_8461d2b1(var_a080d759 * 75);
	self function_2992720d();
}

/*
	Name: function_95353712
	Namespace: namespace_3d19ef22
	Checksum: 0x3C5D06B0
	Offset: 0x3870
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_95353712()
{
	var_c44abb6a = function_6ada35ba("t_singroot_car1", "targetname");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_car_slide_bundle");
	var_c44abb6a waittill("hash_4dbf3ae3");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_car_slide_bundle");
}

/*
	Name: function_252e350
	Namespace: namespace_3d19ef22
	Checksum: 0xB988EE19
	Offset: 0x38F0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_252e350()
{
	if(level namespace_ad23e503::function_7922262b("sing_root_depthcharges"))
	{
		return;
	}
	level namespace_ad23e503::function_74d6b22f("sing_root_depthcharges");
	level thread namespace_e9d9fb34::function_62b0213a();
	var_8edc0313 = namespace_14b42b8a::function_7faf4c39("singapore_depth_charge", "targetname");
	namespace_84970cc4::function_966ecb29(var_8edc0313, &function_26a0a902);
	level thread function_1c297ab3();
}

/*
	Name: function_26a0a902
	Namespace: namespace_3d19ef22
	Checksum: 0x79AF2C93
	Offset: 0x39C0
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_26a0a902()
{
	level endon("hash_cc8de88d");
	self endon("hash_f9256645");
	self thread function_6a938164();
	var_2f08d7ce = 0;
	wait(1);
	while(3 > var_2f08d7ce)
	{
		var_2d4569cf = self function_dabb79d8();
		var_2f08d7ce++;
		if(isdefined(var_2d4569cf))
		{
			var_26aaa5cc = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
			if(isdefined(var_26aaa5cc))
			{
				var_2d4569cf thread function_c51242e1(var_26aaa5cc);
			}
			var_2d4569cf.var_170527fb = "depth_charger_dive";
			var_2d4569cf thread function_f788b8ae();
			var_2d4569cf thread function_c775e8da(200);
			var_2d4569cf waittill("hash_6c758a84");
			wait(function_72a94f05(1.5, 3));
		}
		else
		{
			return;
		}
	}
}

/*
	Name: function_1c297ab3
	Namespace: namespace_3d19ef22
	Checksum: 0x55EB819F
	Offset: 0x3B18
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1c297ab3()
{
	namespace_4dbf3ae3::function_1ab5ebec("stop_depth_charges");
	level notify("hash_cc8de88d");
	level namespace_ad23e503::function_9d134160("sing_root_depthcharges");
}

/*
	Name: function_6a938164
	Namespace: namespace_3d19ef22
	Checksum: 0x8D27AD79
	Offset: 0x3B68
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_6a938164()
{
	self endon("hash_f9256645");
	level endon("hash_cc8de88d");
	while(1)
	{
		var_6bfe1586 = function_e7bdc1a1(self.var_722885f3, level.var_9b1393e7);
		if(isdefined(var_6bfe1586) && function_7d15e2f8(var_6bfe1586.var_722885f3, self.var_722885f3) < 256)
		{
			self notify("hash_f9256645");
		}
		wait(0.1);
	}
}

/*
	Name: function_dabb79d8
	Namespace: namespace_3d19ef22
	Checksum: 0x8FFE6D03
	Offset: 0x3C10
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_dabb79d8()
{
	function_fd4ba5e1(level.var_c1aa5253["depth_charge_spawn"], self.var_722885f3);
	wait(0.2);
	var_2d4569cf = namespace_82b91a51::function_b9fd52a4("veh_t7_drone_depth_charge", self.var_722885f3, (function_26299103(360), function_26299103(360), function_26299103(360)));
	if(isdefined(var_2d4569cf))
	{
		var_2d4569cf.var_caae374e = "depth_charge_model";
		var_2d4569cf function_8d63f8d0(1);
		var_2d4569cf.var_3a90f16b = 999999;
		var_2d4569cf namespace_71e9cb84::function_74d6b22f("sm_depth_charge_fx", 1);
		var_2d4569cf thread function_9e34c3b5();
	}
	return var_2d4569cf;
}

/*
	Name: function_c51242e1
	Namespace: namespace_3d19ef22
	Checksum: 0x8AF3B017
	Offset: 0x3D58
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_c51242e1(var_26aaa5cc, var_253d1f97)
{
	self endon("hash_128f8789");
	while(isdefined(var_26aaa5cc))
	{
		var_6389ab3d = function_7d15e2f8(self.var_722885f3, var_26aaa5cc.var_722885f3);
		var_78962fff = var_6389ab3d / 100;
		self function_a96a2721(var_26aaa5cc.var_722885f3, var_78962fff);
		self waittill("hash_a21db68a");
		if(isdefined(var_26aaa5cc.var_b07228b6))
		{
			var_26aaa5cc = namespace_14b42b8a::function_7922262b(var_26aaa5cc.var_b07228b6, "targetname");
		}
		else
		{
			var_26aaa5cc = undefined;
		}
	}
	level.var_e83d53e9 = 1;
	self function_6493f00e();
}

/*
	Name: function_9e34c3b5
	Namespace: namespace_3d19ef22
	Checksum: 0x28870AFB
	Offset: 0x3E78
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_9e34c3b5()
{
	self endon("hash_128f8789");
	self waittill("hash_f9348fda", var_f9348fda, var_677b3e78);
	self function_6493f00e(isdefined(var_677b3e78) && function_65f192a6(var_677b3e78));
}

/*
	Name: function_f788b8ae
	Namespace: namespace_3d19ef22
	Checksum: 0x34B205DA
	Offset: 0x3EE8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_f788b8ae()
{
	self endon("hash_128f8789");
	var_b28ba731 = function_72a94f05(12, 32);
	wait(var_b28ba731);
	level.var_e83d53e9 = 1;
	self function_6493f00e();
}

/*
	Name: function_6493f00e
	Namespace: namespace_3d19ef22
	Checksum: 0x522E707C
	Offset: 0x3F58
	Size: 0x1F9
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
	self function_eac31668(var_b71ed4a2, 200, 80, 40, self);
	function_5e09918e("depth_charge_rumble", var_b71ed4a2);
	self notify("hash_6c758a84");
	if(self.var_e6e9b8de === "script_model")
	{
		function_fd4ba5e1(level.var_c1aa5253["depth_charge_explosion"], var_b71ed4a2);
		function_37cbcf1a("exp_drone_underwater", var_b71ed4a2);
		self namespace_82b91a51::function_20ffc8ff();
	}
	wait(0.1);
	if(isdefined(var_e0c598de) && var_e0c598de)
	{
		var_f83c5536 = function_99201f25("depth_charge_model", "script_noteworthy");
		var_f83c5536 = function_57efbe1(var_f83c5536, var_b71ed4a2, undefined, 0, 120);
		foreach(var_2d4569cf in var_f83c5536)
		{
			var_2d4569cf function_6493f00e();
		}
	}
}

/*
	Name: function_c775e8da
	Namespace: namespace_3d19ef22
	Checksum: 0x8F994307
	Offset: 0x4160
	Size: 0x1F7
	Parameters: 1
	Flags: None
*/
function function_c775e8da(var_7a998a01)
{
	if(!isdefined(var_7a998a01))
	{
		var_7a998a01 = 200;
	}
	self endon("hash_128f8789");
	while(1)
	{
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			if(!var_6bfe1586 function_b6b4f2ae("ufo", "noclip"))
			{
				if(function_cb3d1c9b(var_6bfe1586.var_722885f3, self.var_722885f3) < var_7a998a01 * var_7a998a01 && !var_6bfe1586 namespace_564407fb::function_38a9aff8())
				{
					self.var_ab9199df = var_6bfe1586;
					level.var_e83d53e9 = 1;
					self function_6493f00e();
				}
			}
			if(self.var_e6e9b8de === "script_model")
			{
				if(function_cb3d1c9b(self.var_722885f3, var_6bfe1586.var_722885f3) < var_7a998a01 * 1.8 * var_7a998a01 * 1.8)
				{
					self namespace_71e9cb84::function_74d6b22f("sm_depth_charge_fx", 0);
					continue;
				}
				self namespace_71e9cb84::function_74d6b22f("sm_depth_charge_fx", 1);
			}
		}
		wait(0.1);
	}
}

