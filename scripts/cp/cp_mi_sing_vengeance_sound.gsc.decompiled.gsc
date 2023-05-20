#using scripts\codescripts\struct;
#using scripts\cp\voice\voice_vengeance;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\music_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_vo;
#using scripts\shared\util_shared;

#namespace namespace_7c587e3e;

/*
	Name: function_d290ebfa
	Namespace: namespace_7c587e3e
	Checksum: 0x301D9DD6
	Offset: 0xB20
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_7578736::function_e230521c();
	namespace_71e9cb84::function_50f16166("toplayer", "slowmo_duck_active", 1, 2, "int");
	level.var_4b1f7bfc = function_9b7fda5e("script_origin", (0, 0, 0));
	thread function_36f2421a();
	level thread function_13172f06();
	level thread function_6ab7f285();
}

/*
	Name: function_6ab7f285
	Namespace: namespace_7c587e3e
	Checksum: 0x72028708
	Offset: 0xBD8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_6ab7f285()
{
	level waittill("hash_dcd7454a");
	namespace_82b91a51::function_ef3f75eb("sndCafe");
	level thread function_bf4fd572();
	level waittill("hash_654ba091");
	namespace_82b91a51::function_ef3f75eb("sndCafeEnd");
}

/*
	Name: function_bf4fd572
	Namespace: namespace_7c587e3e
	Checksum: 0xA40F1012
	Offset: 0xC50
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_bf4fd572()
{
	level waittill("hash_cdfdddaf");
	namespace_82b91a51::function_ef3f75eb("sndCafeOR");
}

/*
	Name: function_4368969a
	Namespace: namespace_7c587e3e
	Checksum: 0x99EC1590
	Offset: 0xC88
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_4368969a()
{
}

/*
	Name: function_7fe43b36
	Namespace: namespace_7c587e3e
	Checksum: 0x3B322BBC
	Offset: 0xC98
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7fe43b36()
{
	namespace_ad06727a::function_76c2ffe4("unaware");
}

/*
	Name: function_7be69db9
	Namespace: namespace_7c587e3e
	Checksum: 0xACAC7BBB
	Offset: 0xCC0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7be69db9()
{
	namespace_ad06727a::function_76c2ffe4("unaware");
}

/*
	Name: function_749aad88
	Namespace: namespace_7c587e3e
	Checksum: 0x4375DA3A
	Offset: 0xCE8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_749aad88()
{
	namespace_ad06727a::function_76c2ffe4("unaware");
	level thread namespace_9fd035::function_e18f629a();
}

/*
	Name: function_34d7007d
	Namespace: namespace_7c587e3e
	Checksum: 0x99EC1590
	Offset: 0xD28
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_34d7007d()
{
}

/*
	Name: function_ea4f2f1b
	Namespace: namespace_7c587e3e
	Checksum: 0x6E165EAC
	Offset: 0xD38
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ea4f2f1b()
{
	level thread namespace_9fd035::function_f64b08fb();
	level thread namespace_9fd035::function_46333a8a();
}

/*
	Name: function_d56e8ba6
	Namespace: namespace_7c587e3e
	Checksum: 0xD7745F20
	Offset: 0xD78
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d56e8ba6()
{
	thread function_9d83fdd3("mus_combat", 1, 3);
}

/*
	Name: function_1fc1836b
	Namespace: namespace_7c587e3e
	Checksum: 0x34C6BA81
	Offset: 0xDA8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_1fc1836b()
{
	thread function_9d83fdd3("mus_medium", 1, 3);
}

/*
	Name: function_1a02fe3
	Namespace: namespace_7c587e3e
	Checksum: 0xFBD558F1
	Offset: 0xDD8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_1a02fe3()
{
	thread function_9d83fdd3("mus_stealth_high_temp", 1);
}

/*
	Name: function_eb9cdcd9
	Namespace: namespace_7c587e3e
	Checksum: 0x934FE6FC
	Offset: 0xE08
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_eb9cdcd9()
{
	namespace_ad06727a::function_76c2ffe4("unaware");
}

/*
	Name: function_6dcacaf4
	Namespace: namespace_7c587e3e
	Checksum: 0x5031548B
	Offset: 0xE30
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6dcacaf4()
{
	function_37cbcf1a("evt_intro_trucks_by", (18398, -4638, 324));
}

/*
	Name: function_677a24e2
	Namespace: namespace_7c587e3e
	Checksum: 0x21BB1F9F
	Offset: 0xE68
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_677a24e2()
{
	function_37cbcf1a("evt_apt_upstairs_fight", (19517, -5375, 475));
	function_37cbcf1a("evt_apt_int_panic_1", (19517, -5375, 475));
	wait(2);
	function_37cbcf1a("evt_apt_win_gunfire_1", (19517, -5375, 475));
}

/*
	Name: function_13172f06
	Namespace: namespace_7c587e3e
	Checksum: 0x7C5E7687
	Offset: 0xEF8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_13172f06()
{
	var_4dbf3ae3 = function_6ada35ba("trigger_wood_creak", "targetname");
	if(!isdefined(var_4dbf3ae3))
	{
		return;
	}
	var_4dbf3ae3 waittill("hash_4dbf3ae3");
	function_37cbcf1a("evt_apt_wood_creak", (19421, -5113, 347));
}

/*
	Name: function_afc6fda4
	Namespace: namespace_7c587e3e
	Checksum: 0x4F786B0F
	Offset: 0xF78
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_afc6fda4()
{
	function_37cbcf1a("evt_apt_upstairs_thud", (19536, -5447, 467));
	function_37cbcf1a("evt_apt_int_panic_2", (19517, -5375, 475));
}

/*
	Name: function_57ec1ad7
	Namespace: namespace_7c587e3e
	Checksum: 0xE461DB5F
	Offset: 0xFD8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_57ec1ad7()
{
	function_37cbcf1a("evt_apt_int_panic_3", (19517, -5375, 475));
}

/*
	Name: function_4ac99079
	Namespace: namespace_7c587e3e
	Checksum: 0x975D2BAB
	Offset: 0x1010
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_4ac99079()
{
	var_d47e142e = function_3f10449f();
	foreach(var_5dc5e20a in var_d47e142e)
	{
		thread function_a66aea7e(var_5dc5e20a);
		thread function_fe8ea4c4(var_5dc5e20a);
	}
	level.var_2fd26037 waittill("hash_bfcece7d");
	thread function_4f84abfa();
	level.var_2fd26037 waittill("hash_955d6809");
	thread function_a339da70();
}

/*
	Name: function_a66aea7e
	Namespace: namespace_7c587e3e
	Checksum: 0x9559238F
	Offset: 0x1128
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_a66aea7e(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a endon("hash_643a7daf");
	var_5dc5e20a waittill("hash_b8988b75");
	if(!isdefined(var_5dc5e20a.var_79dfa64c))
	{
		return;
	}
	if(var_5dc5e20a.var_79dfa64c == "player 1")
	{
		var_5dc5e20a function_b8862210("evt_takedown_setup_player1", var_5dc5e20a);
	}
	else if(var_5dc5e20a.var_79dfa64c == "player 2")
	{
		var_5dc5e20a function_b8862210("evt_takedown_setup_player2", var_5dc5e20a);
	}
	else if(var_5dc5e20a.var_79dfa64c == "player 3")
	{
		var_5dc5e20a function_b8862210("evt_takedown_setup_player3", var_5dc5e20a);
	}
	else if(var_5dc5e20a.var_79dfa64c == "player 4")
	{
		var_5dc5e20a function_b8862210("evt_takedown_setup_player4", var_5dc5e20a);
	}
}

/*
	Name: function_fe8ea4c4
	Namespace: namespace_7c587e3e
	Checksum: 0xC7ED4C2F
	Offset: 0x1278
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_fe8ea4c4(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a endon("hash_643a7daf");
	level.var_2fd26037 waittill("hash_bfcece7d");
	if(!isdefined(var_5dc5e20a.var_79dfa64c))
	{
		return;
	}
	if(var_5dc5e20a.var_79dfa64c == "player 1")
	{
		var_5dc5e20a function_b8862210("evt_takedown_player1_slide", var_5dc5e20a);
		var_5dc5e20a function_b8862210("evt_takedown_player1_foley", var_5dc5e20a);
		var_5dc5e20a function_b8862210("evt_takedown_player1", var_5dc5e20a);
	}
	else if(var_5dc5e20a.var_79dfa64c == "player 2")
	{
		var_5dc5e20a function_b8862210("evt_takedown_player2_foley", var_5dc5e20a);
		var_5dc5e20a function_b8862210("evt_takedown_player2", var_5dc5e20a);
	}
	else if(var_5dc5e20a.var_79dfa64c == "player 3")
	{
		var_5dc5e20a function_b8862210("evt_takedown_player3_foley", var_5dc5e20a);
		var_5dc5e20a function_b8862210("evt_takedown_player3", var_5dc5e20a);
	}
	else if(var_5dc5e20a.var_79dfa64c == "player 4")
	{
		var_5dc5e20a function_b8862210("evt_takedown_player4_foley", var_5dc5e20a);
		var_5dc5e20a function_b8862210("evt_takedown_player4", var_5dc5e20a);
	}
}

/*
	Name: function_4f84abfa
	Namespace: namespace_7c587e3e
	Checksum: 0x891DFED5
	Offset: 0x1468
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_4f84abfa()
{
	thread function_9430961e(1.5);
	namespace_ad06727a::function_862e861f(1.5);
	var_d47e142e = function_3f10449f();
	foreach(var_5dc5e20a in var_d47e142e)
	{
		var_5dc5e20a function_b8862210("evt_takedown_slowmo_01", var_5dc5e20a);
		var_5dc5e20a function_b8862210("evt_takedown_hendricks_shot_low", var_5dc5e20a);
	}
	function_37cbcf1a("evt_takedown_hendricks_shot", (20387, -4854, 401));
	level thread namespace_9fd035::function_fedfbdb0();
	wait(0.6);
	function_37cbcf1a("veh_siege_bot_disable", (20692, -4683, 224));
}

/*
	Name: function_a339da70
	Namespace: namespace_7c587e3e
	Checksum: 0x96B3E6FF
	Offset: 0x15E8
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_a339da70()
{
	var_d47e142e = function_3f10449f();
	foreach(var_5dc5e20a in var_d47e142e)
	{
		var_5dc5e20a function_b8862210("evt_takedown_slowmo_02", var_5dc5e20a);
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("slowmo_duck_active", 1);
	}
}

/*
	Name: function_69fc18eb
	Namespace: namespace_7c587e3e
	Checksum: 0x1ABE3464
	Offset: 0x16C8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_69fc18eb()
{
	var_d47e142e = function_3f10449f();
	foreach(var_5dc5e20a in var_d47e142e)
	{
		var_5dc5e20a function_b8862210("evt_takedown_slowmo_exit", var_5dc5e20a);
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("slowmo_duck_active", 0);
	}
	thread function_9d83fdd3("mus_combat", 1);
	level waittill("hash_3d3af5a5");
	function_9430961e(3);
	namespace_ad06727a::function_76c2ffe4("unaware");
}

/*
	Name: function_a8117e53
	Namespace: namespace_7c587e3e
	Checksum: 0x4D6E7CC
	Offset: 0x17F8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_a8117e53(var_3bae1206)
{
	var_3bae1206 waittill("hash_76ee36bc");
	function_37cbcf1a("evt_siegebot_death_anim", var_3bae1206.var_722885f3);
	function_37cbcf1a("evt_siegebot_powerdown", var_3bae1206.var_722885f3);
}

/*
	Name: function_68da61d9
	Namespace: namespace_7c587e3e
	Checksum: 0xC247D519
	Offset: 0x1870
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_68da61d9()
{
	function_37cbcf1a("evt_civ_running", (20892, -2913, 204));
	wait(1.2);
	function_37cbcf1a("wpn_sfb_fire_npc", (20971, -2670, 187));
}

/*
	Name: function_b3768e28
	Namespace: namespace_7c587e3e
	Checksum: 0x12CEB6A4
	Offset: 0x18D8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_b3768e28()
{
	wait(0.5);
	function_37cbcf1a("amb_alley_ambient_expl", (22979, 1285, 162));
}

/*
	Name: function_2afbdce
	Namespace: namespace_7c587e3e
	Checksum: 0x70C1126D
	Offset: 0x1918
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_2afbdce()
{
	function_37cbcf1a("amb_alley_gate_rattle", (22103, 1982, 135));
}

/*
	Name: function_10de79ba
	Namespace: namespace_7c587e3e
	Checksum: 0xCE35C726
	Offset: 0x1950
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_10de79ba()
{
	function_9430961e(3);
	wait(3);
	function_9d83fdd3("mus_stealth_high_temp", 1);
}

/*
	Name: function_af95bc45
	Namespace: namespace_7c587e3e
	Checksum: 0x45DEACA1
	Offset: 0x1998
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_af95bc45()
{
	thread function_a2c917e3();
	wait(2.9);
	function_9430961e(0.25);
	function_37cbcf1a("evt_quad_tank_approach", (-18946, -17409, 151));
}

/*
	Name: function_a2c917e3
	Namespace: namespace_7c587e3e
	Checksum: 0x70D3A74D
	Offset: 0x1A00
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_a2c917e3()
{
	function_37cbcf1a("evt_quad_tank_step_approach", (-18946, -17409, 151));
	wait(1);
	function_37cbcf1a("evt_quad_tank_step_approach", (-18946, -17409, 151));
	wait(1);
	function_37cbcf1a("evt_quad_tank_step_approach", (-18946, -17409, 151));
	wait(1);
	function_37cbcf1a("evt_quad_tank_step_approach", (-18946, -17409, 151));
}

/*
	Name: function_5bd9fe4
	Namespace: namespace_7c587e3e
	Checksum: 0x85AEFAD4
	Offset: 0x1AC8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_5bd9fe4()
{
	wait(0.5);
	function_37cbcf1a("evt_quad_tank_enter", (-18946, -17409, 151));
	level thread namespace_9fd035::function_8d18c8bc();
	level namespace_ad23e503::function_1ab5ebec("quad_tank_dead");
	level thread namespace_9fd035::function_fa2e45b8();
}

/*
	Name: function_a34878f1
	Namespace: namespace_7c587e3e
	Checksum: 0x89BB28BC
	Offset: 0x1B58
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_a34878f1(var_5dc5e20a)
{
	var_5dc5e20a function_8a20e55d("dst_rock_quake");
}

/*
	Name: function_f3b31be1
	Namespace: namespace_7c587e3e
	Checksum: 0x73FBCF68
	Offset: 0x1B90
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_f3b31be1(var_22ae8d39)
{
	function_37cbcf1a("amb_fire_burst", var_22ae8d39);
	var_a3d46ee4 = function_9b7fda5e("script_origin", var_22ae8d39);
	var_a3d46ee4 function_c2931a36("amb_fire_medium");
}

/*
	Name: function_c4ece2ab
	Namespace: namespace_7c587e3e
	Checksum: 0x436BC2EA
	Offset: 0x1C10
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_c4ece2ab()
{
	function_37cbcf1a("dst_rock_quake_big", (-19005, -12018, 119));
	wait(1);
	function_37cbcf1a("evt_stairwell_shake_02", (-19005, -12018, 119));
	function_37cbcf1a("evt_stairwell_shake_04", (-18981, -11953, 95));
	wait(0.25);
	function_37cbcf1a("evt_stairwell_shake_03", (-19022, -12075, 102));
	wait(0.35);
	function_37cbcf1a("evt_stairwell_shake_01", (-18923, -12014, 14));
}

/*
	Name: function_47d9d5db
	Namespace: namespace_7c587e3e
	Checksum: 0xD5A35A16
	Offset: 0x1D00
	Size: 0x3A3
	Parameters: 0
	Flags: None
*/
function function_47d9d5db()
{
	namespace_234a4910::function_5714528b("enemy_right", "hend_on_your_right_1");
	namespace_234a4910::function_5714528b("enemy_left", "hend_on_your_left_1");
	namespace_234a4910::function_5714528b("enemy_ahead", "hend_tango_directly_ahead_1");
	namespace_234a4910::function_5714528b("enemy_behind", "hend_tango_behind_you_1");
	namespace_234a4910::function_5714528b("enemy_above", "hend_enemy_above_you_1");
	namespace_234a4910::function_5714528b("enemy_below", "hend_below_you_1");
	namespace_234a4910::function_5714528b("good_kill", "hend_good_kill_1");
	namespace_234a4910::function_5714528b("good_kill_bullet", "hend_nice_shot_1");
	namespace_234a4910::function_5714528b("good_kill_impressive", "hend_impressive_0");
	namespace_234a4910::function_5714528b("close_call", "hend_that_was_close_1");
	namespace_234a4910::function_5714528b("investigating", "hend_they_re_looking_arou_1");
	namespace_234a4910::function_5714528b("investigating", "hend_get_outta_sight_1");
	namespace_234a4910::function_5714528b("investigating", "hend_you_spooked_em_hid_1");
	namespace_234a4910::function_5714528b("returning", "hend_you_re_clear_threat_0");
	namespace_234a4910::function_5714528b("returning", "hend_all_clear_they_re_m_1");
	namespace_234a4910::function_5714528b("spotted", "hend_kill_em_quick_0");
	namespace_234a4910::function_5714528b("spotted", "hend_take_em_down_quick_1");
	namespace_234a4910::function_5714528b("spotted_sniper", "hend_sniper_spotted_you_1");
	namespace_234a4910::function_5714528b("spotted_sniper", "hend_snipers_on_the_roofs_1");
	namespace_234a4910::function_5714528b("spotted_drone", "hend_drone_has_you_target_1");
	namespace_234a4910::function_5714528b("spotted_drone", "hend_drone_is_tracking_yo_1");
	namespace_234a4910::function_5714528b("careful", "hend_easy_wait_till_no_o_1");
	namespace_234a4910::function_5714528b("careful_hack", "hend_that_drone_could_be_1");
	namespace_234a4910::function_5714528b("careful_hunter", "hend_don_t_even_think_abo_1");
	namespace_234a4910::function_5714528b("careful_tricky", "hend_that_s_too_tricky_i_0");
	namespace_ad06727a::function_8bb61d8e("unaware", "mus_stealth_low_temp");
	namespace_ad06727a::function_8bb61d8e("low_alert", "mus_stealth_high_temp");
	namespace_ad06727a::function_8bb61d8e("high_alert", "mus_stealth_high_temp");
	namespace_ad06727a::function_8bb61d8e("combat", "mus_highalert_temp");
}

/*
	Name: function_9d83fdd3
	Namespace: namespace_7c587e3e
	Checksum: 0x58398536
	Offset: 0x20B0
	Size: 0x109
	Parameters: 3
	Flags: None
*/
function function_9d83fdd3(var_48b937ab, var_37004b6e, var_aa56a49b)
{
	if(var_37004b6e)
	{
		var_dc7ff543 = 0;
		if(isdefined(var_aa56a49b))
		{
			var_dc7ff543 = var_aa56a49b;
		}
		level.var_4b1f7bfc function_c2931a36(var_48b937ab, var_dc7ff543);
		break;
	}
	foreach(var_5dc5e20a in function_3f10449f())
	{
		var_5dc5e20a function_b8862210(var_48b937ab, var_5dc5e20a);
	}
}

/*
	Name: function_9430961e
	Namespace: namespace_7c587e3e
	Checksum: 0x40B82029
	Offset: 0x21C8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_9430961e(var_dc7ff543)
{
	level.var_4b1f7bfc function_eaa69754(var_dc7ff543);
}

/*
	Name: function_36f2421a
	Namespace: namespace_7c587e3e
	Checksum: 0x99EC1590
	Offset: 0x2200
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_36f2421a()
{
}

/*
	Name: function_6fd5af18
	Namespace: namespace_7c587e3e
	Checksum: 0xD0865FE2
	Offset: 0x2210
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_6fd5af18()
{
	level waittill("hash_126ce70b");
	function_2e4b8c78("anim1 started");
}

/*
	Name: function_e1dd1e53
	Namespace: namespace_7c587e3e
	Checksum: 0x748E5B68
	Offset: 0x2248
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_e1dd1e53()
{
	level waittill("hash_a06577d0");
	function_2e4b8c78("anim2 started");
}

/*
	Name: function_bbdaa3ea
	Namespace: namespace_7c587e3e
	Checksum: 0x3C15954C
	Offset: 0x2280
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_bbdaa3ea()
{
	level waittill("hash_c667f239");
	function_2e4b8c78("anim3 started");
}

#namespace namespace_9fd035;

/*
	Name: function_973b77f9
	Namespace: namespace_9fd035
	Checksum: 0x7B32AE2F
	Offset: 0x22B8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_973b77f9()
{
	namespace_ccb8d056::function_c1cdedfb("none");
}

/*
	Name: function_7dc66faa
	Namespace: namespace_9fd035
	Checksum: 0x63D19081
	Offset: 0x22E0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7dc66faa()
{
	namespace_ccb8d056::function_c1cdedfb("igc_1_intro");
}

/*
	Name: function_d4c52995
	Namespace: namespace_9fd035
	Checksum: 0x723D011C
	Offset: 0x2308
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_d4c52995()
{
	namespace_ccb8d056::function_c1cdedfb("tension_loop");
}

/*
	Name: function_fedfbdb0
	Namespace: namespace_9fd035
	Checksum: 0xD9C7A69C
	Offset: 0x2330
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fedfbdb0()
{
	namespace_ccb8d056::function_c1cdedfb("igc_2_zipline");
}

/*
	Name: function_9b52c0fa
	Namespace: namespace_9fd035
	Checksum: 0x8D18BDB4
	Offset: 0x2358
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9b52c0fa()
{
	namespace_ccb8d056::function_c1cdedfb("skirmish");
}

/*
	Name: function_e18f629a
	Namespace: namespace_9fd035
	Checksum: 0x8B346E3D
	Offset: 0x2380
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_e18f629a()
{
	wait(3);
	namespace_ccb8d056::function_c1cdedfb("tension_loop_2");
}

/*
	Name: function_862430bd
	Namespace: namespace_9fd035
	Checksum: 0x54A75695
	Offset: 0x23B0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_862430bd()
{
	namespace_ccb8d056::function_c1cdedfb("igc_3_open_door");
}

/*
	Name: function_791dd03
	Namespace: namespace_9fd035
	Checksum: 0x7BFB56AB
	Offset: 0x23D8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_791dd03()
{
	namespace_ccb8d056::function_c1cdedfb("tension_loop_3");
}

/*
	Name: function_fa2e45b8
	Namespace: namespace_9fd035
	Checksum: 0xCBD3722B
	Offset: 0x2400
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fa2e45b8()
{
	namespace_ccb8d056::function_c1cdedfb("battle_1");
}

/*
	Name: function_c270e327
	Namespace: namespace_9fd035
	Checksum: 0xC91BACDF
	Offset: 0x2428
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c270e327()
{
	wait(3);
	namespace_ccb8d056::function_c1cdedfb("igc_4_goh");
}

/*
	Name: function_8d18c8bc
	Namespace: namespace_9fd035
	Checksum: 0xE65FC318
	Offset: 0x2458
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_8d18c8bc()
{
	namespace_ccb8d056::function_c1cdedfb("quad_battle");
}

/*
	Name: function_58779b4
	Namespace: namespace_9fd035
	Checksum: 0xA12229DB
	Offset: 0x2480
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_58779b4()
{
	namespace_ccb8d056::function_c1cdedfb("sniper_battle");
}

/*
	Name: function_46333a8a
	Namespace: namespace_9fd035
	Checksum: 0xE1709C93
	Offset: 0x24A8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_46333a8a()
{
	namespace_ccb8d056::function_c1cdedfb("battle_3");
}

/*
	Name: function_83763d08
	Namespace: namespace_9fd035
	Checksum: 0xFF6FCE
	Offset: 0x24D0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_83763d08()
{
	namespace_ccb8d056::function_c1cdedfb("igc_5_statue");
}

/*
	Name: function_b83aa9c5
	Namespace: namespace_9fd035
	Checksum: 0xAA889593
	Offset: 0x24F8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b83aa9c5()
{
	namespace_ccb8d056::function_c1cdedfb("battle_4");
}

/*
	Name: function_c8bfdb76
	Namespace: namespace_9fd035
	Checksum: 0x39B2DCFB
	Offset: 0x2520
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_c8bfdb76()
{
	wait(1);
	namespace_ccb8d056::function_c1cdedfb("igc_6_outro");
}

/*
	Name: function_14592f48
	Namespace: namespace_9fd035
	Checksum: 0x2F896350
	Offset: 0x2550
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_14592f48()
{
	namespace_ccb8d056::function_c1cdedfb("dyn_battle");
}

/*
	Name: function_e6a33cb1
	Namespace: namespace_9fd035
	Checksum: 0x2B31FD2E
	Offset: 0x2578
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e6a33cb1()
{
	namespace_ccb8d056::function_c1cdedfb("rachael_underscore");
}

/*
	Name: function_dad71f51
	Namespace: namespace_9fd035
	Checksum: 0x90567200
	Offset: 0x25A0
	Size: 0x197
	Parameters: 1
	Flags: None
*/
function function_dad71f51(var_86c93e40)
{
	level endon("hash_d3bbbf2c");
	if(isdefined(var_86c93e40))
	{
		namespace_ccb8d056::function_c1cdedfb(var_86c93e40);
	}
	level thread function_484281f1();
	while(1)
	{
		level namespace_ad23e503::function_43ac000b(function_84970cc4("stealth_combat", "stealth_alert", "stealth_discovered"));
		wait(0.05);
		if(level namespace_ad23e503::function_7922262b("stealth_discovered"))
		{
			level namespace_ad23e503::function_d3de6822("stealth_discovered");
		}
		else if(level namespace_ad23e503::function_7922262b("stealth_combat"))
		{
			wait(0.5);
			if(level namespace_ad23e503::function_7922262b("stealth_combat"))
			{
				wait(5);
			}
		}
		else if(level namespace_ad23e503::function_7922262b("stealth_alert"))
		{
			wait(0.5);
			if(level namespace_ad23e503::function_7922262b("stealth_alert"))
			{
				namespace_ccb8d056::function_c1cdedfb("dyn_aware");
				wait(1);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_f64b08fb
	Namespace: namespace_9fd035
	Checksum: 0x8A6B37A6
	Offset: 0x2740
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_f64b08fb(var_86c93e40)
{
	level notify("hash_d3bbbf2c");
	if(isdefined(var_86c93e40))
	{
		namespace_ccb8d056::function_c1cdedfb(var_86c93e40);
	}
}

/*
	Name: function_484281f1
	Namespace: namespace_9fd035
	Checksum: 0xB59839F0
	Offset: 0x2788
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_484281f1()
{
	level endon("hash_d3bbbf2c");
	while(1)
	{
		level namespace_ad23e503::function_c8ca818a(function_84970cc4("stealth_combat", "stealth_alert", "stealth_discovered"));
		wait(2);
		if(level namespace_ad23e503::function_7922262b("stealth_combat") || level namespace_ad23e503::function_7922262b("stealth_alert") || level namespace_ad23e503::function_7922262b("stealth_discovered"))
		{
			continue;
		}
		namespace_ccb8d056::function_c1cdedfb("tension_loop_2");
	}
}

/*
	Name: function_6c2fa1d0
	Namespace: namespace_9fd035
	Checksum: 0x71B78B98
	Offset: 0x2868
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6c2fa1d0()
{
	wait(1);
	function_37cbcf1a("mus_assassination_stinger", (0, 0, 0));
}

