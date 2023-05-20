#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_market;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;

#namespace namespace_ce9d9fc1;

/*
	Name: function_26524bc8
	Namespace: namespace_ce9d9fc1
	Checksum: 0xD49AE26
	Offset: 0xEA8
	Size: 0x1BB
	Parameters: 2
	Flags: None
*/
function function_26524bc8(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_63b4601c::function_66773296("hendricks", var_b04bc952);
		level.var_2fd26037 namespace_76d95162::function_d9f49fba(0);
		level namespace_cc27597::function_c35e6aab("cin_ven_11_safehouse_3rd_sh010");
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b9785164);
		level thread namespace_63b4601c::function_6bd25628();
		namespace_82b91a51::function_d8eaed3d(5);
		namespace_d7916d65::function_a2995f22();
	}
	if(isdefined(level.var_ad06727a))
	{
		level namespace_ad06727a::function_fcf56ab5();
	}
	namespace_63b4601c::function_4e8207e9("safehouse_explodes");
	function_429957e0();
	thread namespace_7c587e3e::function_1fc1836b();
	namespace_2f06d687::function_2b37a3c9("sniper", "script_noteworthy", &function_422af9d);
	function_bb642ec0(var_b04bc952, var_74cd64bc);
}

/*
	Name: function_683ab16e
	Namespace: namespace_ce9d9fc1
	Checksum: 0xBB82059F
	Offset: 0x1070
	Size: 0x2D3
	Parameters: 4
	Flags: None
*/
function function_683ab16e(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	var_56dd1913 = function_b8494651("axis");
	if(isdefined(var_56dd1913))
	{
		foreach(var_e98b4e9b in var_56dd1913)
		{
			if(isdefined(var_e98b4e9b))
			{
				var_e98b4e9b function_dc8c8404();
			}
		}
	}
	namespace_82b91a51::function_459ff829();
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh010");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh020");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh030");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh040");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh050");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh060");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh070");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh080");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh090");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_11_safehouse_3rd_sh100");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_08_20_balconyexplosion_vign");
	level namespace_14b42b8a::function_368120a1("scene", "cin_ven_08_30_agentlaststand_vign");
}

/*
	Name: function_429957e0
	Namespace: namespace_ce9d9fc1
	Checksum: 0x79467AD4
	Offset: 0x1350
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_429957e0()
{
	level thread function_8fbe8f97();
	namespace_63b4601c::function_ac2b4535("cin_ven_11_safehouse_3rd_sh100", "safehouse_explosion_post_igc");
	var_286c5204 = namespace_14b42b8a::function_7922262b("tag_align_safehouse_explosion", "targetname");
	level thread namespace_9fd035::function_83763d08();
	if(isdefined(level.var_143ab0c7))
	{
		level thread [[level.var_143ab0c7]]();
	}
	if(!isdefined(level.var_4c62d05f))
	{
		level.var_4c62d05f = level.var_2395e945[0];
	}
	var_286c5204 thread namespace_cc27597::function_43718187("cin_ven_11_safehouse_3rd_sh010", level.var_4c62d05f);
	level waittill("hash_ffdc982b");
	level thread function_4e237f5c();
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_d5d199aa
	Namespace: namespace_ce9d9fc1
	Checksum: 0xD909FD9F
	Offset: 0x1468
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_d5d199aa()
{
	level waittill("hash_15bf2587");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_now_what_0");
	level waittill("hash_6039f21b");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_fuck_2");
	level waittill("hash_816104fe");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_i_guess_the_rescue_m_0");
	level waittill("hash_100456bb");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_you_re_kidding_me_r_0");
	level waittill("hash_2971a10c");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_hey_do_you_hear_me_0");
	level waittill("hash_cf9e18be");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_accept_it_0");
}

/*
	Name: function_52dabe42
	Namespace: namespace_ce9d9fc1
	Checksum: 0x70AFDE47
	Offset: 0x1598
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_52dabe42()
{
	level waittill("hash_e2d6e01a");
	level namespace_71b8dba1::function_13b3b16a("plyr_now_we_get_kane_0");
	level waittill("hash_d330121");
	level namespace_71b8dba1::function_13b3b16a("plyr_find_us_transport_fo_0");
	level waittill("hash_882063bf");
	level namespace_71b8dba1::function_13b3b16a("plyr_no_there_s_still_a_0");
}

/*
	Name: function_8fbe8f97
	Namespace: namespace_ce9d9fc1
	Checksum: 0x40BBBF56
	Offset: 0x1620
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_8fbe8f97()
{
	level waittill("hash_8ed78163");
	var_a9009014 = function_99201f25("safehouse_ext_door", "targetname");
	namespace_84970cc4::function_7e64f710(var_a9009014);
}

/*
	Name: function_4e237f5c
	Namespace: namespace_ce9d9fc1
	Checksum: 0xA4291D66
	Offset: 0x1680
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_4e237f5c()
{
	var_40ccaf9f = function_99201f25("safehouse_entry_door_rubble", "targetname");
	foreach(var_4e29c01c in var_40ccaf9f)
	{
		var_4e29c01c function_8bdea13c(128, 0.05);
	}
	namespace_80983c42::function_80983c42("sh_int_lobby_door_fire_01");
	level thread namespace_cc27597::function_43718187("fxanims_safehouse_explodes", "targetname");
	namespace_80983c42::function_80983c42("sh_int_lobby_door_fire_02");
	var_3c8ec8e = function_6ada35ba("lobby_door_fire_trigger", "targetname");
	var_3c8ec8e function_175e6b8e(1);
}

/*
	Name: function_29dad6e8
	Namespace: namespace_ce9d9fc1
	Checksum: 0x3CB81176
	Offset: 0x17F0
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function function_29dad6e8(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b9785164);
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		level thread function_4e237f5c();
		var_a9009014 = function_99201f25("safehouse_ext_door", "targetname");
		namespace_84970cc4::function_7e64f710(var_a9009014);
		level namespace_ad23e503::function_1ab5ebec("all_players_spawned");
	}
	if(isdefined(level.var_ad06727a))
	{
		level namespace_ad06727a::function_fcf56ab5();
	}
	thread namespace_7c587e3e::function_1fc1836b();
	namespace_2f06d687::function_2b37a3c9("sniper", "script_noteworthy", &function_422af9d);
	function_bb642ec0(var_b04bc952, var_74cd64bc);
}

/*
	Name: function_6bc33c8e
	Namespace: namespace_ce9d9fc1
	Checksum: 0xD63A9BE3
	Offset: 0x1960
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_6bc33c8e(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_bb642ec0
	Namespace: namespace_ce9d9fc1
	Checksum: 0xA2ACB5D2
	Offset: 0x1990
	Size: 0x173
	Parameters: 2
	Flags: None
*/
function function_bb642ec0(var_b04bc952, var_74cd64bc)
{
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_go_to_panic_room");
	level thread function_be8594ba();
	level thread function_33ebc91e();
	level thread function_4f5d8ae9();
	level thread function_c50ccfbd();
	level thread function_7d2a7231();
	level thread function_fb60b7ca();
	level thread namespace_9fd035::function_b83aa9c5();
	wait(3);
	level namespace_d0ef8521::function_45d1556("find_kayne_breadcrumb");
	namespace_4dbf3ae3::function_1ab5ebec("obj_safehouse_int", "targetname");
	if(var_b04bc952 == "safehouse_explodes")
	{
		namespace_1d795d47::function_be8adfb8("safehouse_explodes");
	}
	else
	{
		namespace_1d795d47::function_be8adfb8("dev_safehouse_interior");
	}
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_go_to_panic_room");
}

/*
	Name: function_33ebc91e
	Namespace: namespace_ce9d9fc1
	Checksum: 0x1E79EFFA
	Offset: 0x1B10
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_33ebc91e()
{
	namespace_4dbf3ae3::function_1ab5ebec("start_safehouse_vo");
	level namespace_63b4601c::function_ee75acde("xiu0_your_friend_she_s_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_what_did_you_do_to_h_0");
	level namespace_63b4601c::function_ee75acde("xiu0_she_won_t_be_talking_0");
	level namespace_63b4601c::function_ee75acde("xiu0_now_she_is_being_q_0");
	level namespace_63b4601c::function_ee75acde("xiu0_you_will_see_0");
	namespace_4dbf3ae3::function_1ab5ebec("spawn_safehouse_wave_3");
	level namespace_63b4601c::function_ee75acde("hend_you_d_better_pick_up_0");
	namespace_4dbf3ae3::function_1ab5ebec("spawn_panic_room");
	level namespace_63b4601c::function_ee75acde("hend_dammit_are_you_list_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_stay_where_you_are_h_0");
}

/*
	Name: function_4f5d8ae9
	Namespace: namespace_ce9d9fc1
	Checksum: 0x93966A5C
	Offset: 0x1C68
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_4f5d8ae9()
{
	namespace_2f06d687::function_c6ffd13e("sh_robots", &function_c6fb453d);
	namespace_4dbf3ae3::function_1ab5ebec("spawn_safehouse_wave_1", "targetname");
	namespace_d5067552::function_bae40a28("safehouse_wave1");
	namespace_4dbf3ae3::function_1ab5ebec("spawn_safehouse_wave_1a", "targetname");
	namespace_d5067552::function_bae40a28("safehouse_wave1a");
	namespace_4dbf3ae3::function_1ab5ebec("spawn_safehouse_wave_2", "targetname");
	namespace_2f06d687::function_22356ba7("safehouse_robots_wave_2");
	namespace_4dbf3ae3::function_1ab5ebec("spawn_safehouse_wave_3", "targetname");
	namespace_63b4601c::function_a084a58f();
	namespace_d5067552::function_bae40a28("safehouse_robots_wave_3");
}

/*
	Name: function_be8594ba
	Namespace: namespace_ce9d9fc1
	Checksum: 0x4873CA29
	Offset: 0x1D90
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_be8594ba()
{
	var_ee392d90 = function_6ada35ba("last_stand_agent1", "targetname");
	var_ee392d90 namespace_2f06d687::function_994832bd(&function_8d0196a7);
	var_60409ccb = function_6ada35ba("last_stand_agent2", "targetname");
	var_60409ccb namespace_2f06d687::function_994832bd(&function_8d0196a7);
	var_3a3e2262 = function_6ada35ba("panicroom_cia1", "targetname");
	var_3a3e2262 namespace_2f06d687::function_994832bd(&function_8d0196a7);
	level thread function_2196c10e("cin_ven_08_30_agentlaststand_vign", "safehouse_hall_script_node", undefined, 2, "last_stand_done");
	level thread function_2196c10e("cin_ven_08_60_panicroom_bodies", "panic_room_hall_animnode", "shake_ready_room", undefined);
}

/*
	Name: function_2196c10e
	Namespace: namespace_ce9d9fc1
	Checksum: 0x7877F49A
	Offset: 0x1EF8
	Size: 0x117
	Parameters: 5
	Flags: None
*/
function function_2196c10e(var_f4a44050, var_2d7613bb, var_4dbf3ae3, var_67520c6a, var_199e0d00)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_f4a44050), "Dev Block strings are not supported");
	#/
	if(isdefined(var_2d7613bb))
	{
		var_5b01a37b = namespace_14b42b8a::function_7922262b(var_2d7613bb, "targetname");
	}
	if(isdefined(var_4dbf3ae3))
	{
		namespace_4dbf3ae3::function_1ab5ebec(var_4dbf3ae3);
	}
	if(isdefined(var_67520c6a))
	{
		wait(var_67520c6a);
	}
	if(isdefined(var_5b01a37b))
	{
		var_5b01a37b namespace_cc27597::function_43718187(var_f4a44050);
	}
	else
	{
		level namespace_cc27597::function_43718187(var_f4a44050);
	}
	if(isdefined(var_199e0d00))
	{
		level notify(var_199e0d00);
	}
}

/*
	Name: function_8d0196a7
	Namespace: namespace_ce9d9fc1
	Checksum: 0xB00891EB
	Offset: 0x2018
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8d0196a7()
{
	self function_454720a3(self.var_c11924ba);
}

/*
	Name: function_15d46e2e
	Namespace: namespace_ce9d9fc1
	Checksum: 0x26C5F7F9
	Offset: 0x2048
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_15d46e2e()
{
	var_f0488808 = function_6ada35ba("sh_lobby_case_frame", "targetname");
	var_8f75db49 = namespace_14b42b8a::function_7922262b("sh_case_impact_spot", "targetname");
	level waittill("hash_22368350");
	var_f0488808 function_dc8c8404();
	namespace_80983c42::function_80983c42("sh_lobby_case_glass");
	wait(0.1);
	function_a45fee8b(var_8f75db49.var_722885f3, 48, 40, 3);
}

/*
	Name: function_c6fb453d
	Namespace: namespace_ce9d9fc1
	Checksum: 0xA087D560
	Offset: 0x2120
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_c6fb453d()
{
	if(isdefined(self.var_a33b36db) && self.var_a33b36db == "laser")
	{
		self function_62a7329();
	}
}

/*
	Name: function_422af9d
	Namespace: namespace_ce9d9fc1
	Checksum: 0x7A7C99C0
	Offset: 0x2168
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_422af9d()
{
	self.var_7dfaf62 = 8;
}

/*
	Name: function_c50ccfbd
	Namespace: namespace_ce9d9fc1
	Checksum: 0x4BF060EF
	Offset: 0x2180
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_c50ccfbd()
{
	wait(1);
	level thread function_2d58165a();
	wait(3);
	level thread function_d39f39b7();
	namespace_4dbf3ae3::function_1ab5ebec("shake_stairwell", "targetname");
	thread namespace_7c587e3e::function_c4ece2ab();
	level namespace_82b91a51::function_ef3f75eb("start_debris_fall");
	level notify("hash_9bd485a5");
	level thread function_2d58165a();
	wait(1.5);
	var_136e3a27 = function_99201f25("sh_stairs_glass_remove", "targetname");
	namespace_84970cc4::function_7e64f710(var_136e3a27);
	var_f9fdee53 = namespace_14b42b8a::function_7922262b("sh_stairwell_glass_damage", "targetname");
	function_be97adee(var_f9fdee53.var_722885f3, 128, 200, 175);
	wait(1.5);
	level thread function_d39f39b7();
	namespace_4dbf3ae3::function_1ab5ebec("shake_ready_room", "targetname");
	level notify("hash_9bd485a5");
	level thread function_2d58165a();
	wait(3);
	level thread function_d39f39b7();
}

/*
	Name: function_d39f39b7
	Namespace: namespace_ce9d9fc1
	Checksum: 0x21659CBC
	Offset: 0x2348
	Size: 0x18D
	Parameters: 0
	Flags: None
*/
function function_d39f39b7()
{
	level endon("hash_9bd485a5");
	while(1)
	{
		wait(function_dc99997a(15, 25));
		var_ab2048f4 = function_72a94f05(2, 3);
		var_68397497 = function_72a94f05(2.5, 4);
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			thread namespace_7c587e3e::function_a34878f1(var_6bfe1586);
			function_4d3e98ed(var_6bfe1586.var_722885f3, var_ab2048f4, var_ab2048f4 / 3, var_ab2048f4 / 3, var_68397497, 0, -1, 100, 7, 1, 1, 1, var_6bfe1586);
			var_6bfe1586 function_e2af603e("cp_vengeance_rumble_sh_ran_shake");
		}
	}
}

/*
	Name: function_2d58165a
	Namespace: namespace_ce9d9fc1
	Checksum: 0x57289EA7
	Offset: 0x24E0
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_2d58165a()
{
	var_ab2048f4 = function_72a94f05(4, 5);
	var_68397497 = 4.5;
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		thread namespace_7c587e3e::function_a34878f1(var_6bfe1586);
		function_4d3e98ed(var_6bfe1586.var_722885f3, var_ab2048f4, var_ab2048f4 / 3, var_ab2048f4 / 3, var_68397497, 0, -1, 100, 8, 2, 2, 1, var_6bfe1586);
		var_6bfe1586 function_e2af603e("cp_vengeance_rumble_sh_big_shake");
	}
}

/*
	Name: function_7d2a7231
	Namespace: namespace_ce9d9fc1
	Checksum: 0x5AABACED
	Offset: 0x2628
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_7d2a7231()
{
	level thread function_f3b31be1("spawn_safehouse_wave_1", 0.5, 1.75, "sh_backdraft_01", "backdraft_01_struct", "backdraft_1_siege");
	level thread function_f3b31be1("start_backdraft_2", 0, 0.25, "sh_backdraft_02", "backdraft_02_struct", "backdraft_2_siege");
	level thread function_f3b31be1("find_kayne_breadcrumb", 0, 0.75, "sh_backdraft_03", "backdraft_03_struct", "backdraft_3_siege");
	level thread function_f3b31be1("start_backdraft_4", 0, 0.5, "sh_backdraft_04");
	level thread function_f3b31be1("shake_ready_room", 0, 0.25, "sh_backdraft_05");
}

/*
	Name: function_f3b31be1
	Namespace: namespace_ce9d9fc1
	Checksum: 0x21A76B24
	Offset: 0x2768
	Size: 0x11B
	Parameters: 6
	Flags: None
*/
function function_f3b31be1(var_4dbf3ae3, var_946cffe7, var_39c72159, var_80983c42, var_14b42b8a, var_d5e92f6a)
{
	namespace_4dbf3ae3::function_1ab5ebec(var_4dbf3ae3, "targetname");
	wait(function_72a94f05(var_946cffe7, var_39c72159));
	namespace_80983c42::function_80983c42(var_80983c42);
	if(isdefined(var_d5e92f6a))
	{
		level namespace_82b91a51::function_ef3f75eb(var_d5e92f6a);
	}
	if(isdefined(var_14b42b8a))
	{
		var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_14b42b8a, "targetname");
		thread namespace_7c587e3e::function_f3b31be1(var_ebe66fdc.var_722885f3);
		function_be97adee(var_ebe66fdc.var_722885f3, 96, 150, 125);
	}
}

/*
	Name: function_fb60b7ca
	Namespace: namespace_ce9d9fc1
	Checksum: 0xB72ADBEA
	Offset: 0x2890
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_fb60b7ca(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc) || var_74cd64bc == 0)
	{
		namespace_4dbf3ae3::function_1ab5ebec("spawn_panic_room");
	}
	level.var_3d556bcd = namespace_2f06d687::function_7387a40a("rachel", &function_87298438);
	wait(1);
	var_35a1e4f8 = namespace_14b42b8a::function_7922262b("tag_align_panic_room", "targetname");
	var_35a1e4f8 thread namespace_cc27597::function_c35e6aab("cin_ven_08_80_enter_panicroom_1st");
	var_35a1e4f8 thread namespace_cc27597::function_c35e6aab("cin_ven_12_01_1st_kane_rescue");
}

/*
	Name: function_6d9a830c
	Namespace: namespace_ce9d9fc1
	Checksum: 0xC3D732FF
	Offset: 0x2978
	Size: 0x183
	Parameters: 2
	Flags: None
*/
function function_6d9a830c(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b627f9ac);
		namespace_dabbe128::function_356a4ee1(&namespace_63b4601c::function_b9785164);
		namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_rescue_kane");
		var_1178f0f3 = function_6ada35ba("panicroom_cia1", "targetname");
		var_1178f0f3 namespace_2f06d687::function_994832bd(&function_8d0196a7);
		level thread function_2196c10e("cin_ven_08_60_panicroom_bodies", "panic_room_hall_animnode", "shake_ready_room", undefined);
		level function_fb60b7ca(var_74cd64bc);
		level namespace_82b91a51::function_d8eaed3d(6);
		namespace_d7916d65::function_a2995f22();
		namespace_4dbf3ae3::function_42e87952("shake_ready_room");
	}
	thread namespace_7c587e3e::function_1a02fe3();
	function_d128fa92(var_b04bc952);
}

/*
	Name: function_c328b12
	Namespace: namespace_ce9d9fc1
	Checksum: 0xFA46698A
	Offset: 0x2B08
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_c328b12(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_d128fa92
	Namespace: namespace_ce9d9fc1
	Checksum: 0x3BD32849
	Offset: 0x2B38
	Size: 0x503
	Parameters: 1
	Flags: None
*/
function function_d128fa92(var_b04bc952)
{
	var_f92a03e7 = function_6ada35ba("obj_panic", "targetname");
	var_ca0e9b65 = namespace_82b91a51::function_14518e76(var_f92a03e7, &"cp_prompt_enter_ven_door", &"CP_MI_SING_VENGEANCE_HINT_OPEN", &function_69ff4ffa);
	namespace_d0ef8521::function_74d6b22f("cp_level_vengeance_open_panic_room_menu");
	level waittill("hash_9644b953");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	level thread namespace_9fd035::function_c8bfdb76();
	level thread namespace_4fe3eef1::function_9908d262("mus_vengeance_alerted_intro");
	level namespace_ad23e503::function_74d6b22f("starting_igc_12");
	var_ca0e9b65 namespace_a230c2b1::function_e54c54c3();
	namespace_d0ef8521::function_50ccee8d("cp_level_vengeance_open_panic_room_menu");
	namespace_d0ef8521::function_31cd1834("cp_level_vengeance_rescue_kane");
	var_56dd1913 = function_b8494651("axis");
	if(isdefined(var_56dd1913))
	{
		foreach(var_e98b4e9b in var_56dd1913)
		{
			if(isdefined(var_e98b4e9b))
			{
				var_e98b4e9b function_dc8c8404();
			}
		}
	}
	namespace_cc27597::function_8f9f34e0("cin_ven_12_01_1st_kane_rescue", &function_63cf4f49);
	namespace_cc27597::function_8f9f34e0("cin_ven_12_01_1st_kane_rescue", &function_965c6db8, "play");
	namespace_cc27597::function_8f9f34e0("cin_ven_12_01_1st_kane_rescue", &function_724dd06d, "skip_started");
	namespace_cc27597::function_8f9f34e0("cin_ven_12_kane_3rd_sh010", &function_724dd06d, "skip_started");
	namespace_cc27597::function_8f9f34e0("cin_ven_12_kane_3rd_sh010_female", &function_724dd06d, "skip_started");
	namespace_cc27597::function_8f9f34e0("cin_ven_12_kane_3rd_sh020", &function_724dd06d, "skip_started");
	namespace_cc27597::function_8f9f34e0("cin_ven_12_kane_3rd_sh030_female", &function_724dd06d, "skip_started");
	namespace_cc27597::function_8f9f34e0("cin_ven_12_kane_3rd_sh040", &function_724dd06d, "skip_started");
	level thread function_58c9be50();
	if(isdefined(level.var_e9d4ea4))
	{
		level thread [[level.var_e9d4ea4]]();
	}
	if(!function_5b49d38c(level.var_3d556bcd))
	{
	}
	else
	{
		level thread namespace_82b91a51::function_d8eaed3d(6);
		var_35a1e4f8 = namespace_14b42b8a::function_7922262b("tag_align_panic_room", "targetname");
		var_35a1e4f8 namespace_cc27597::function_43718187("cin_ven_08_80_enter_panicroom_1st", level.var_4c62d05f);
		level waittill("hash_30b302a6");
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			var_6bfe1586 function_1271a73e();
		}
		namespace_1d795d47::function_be8adfb8("panic_room");
	}
}

/*
	Name: function_965c6db8
	Namespace: namespace_ce9d9fc1
	Checksum: 0x59939E0E
	Offset: 0x3048
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_965c6db8(var_c77d2837)
{
	level endon("hash_ec2539d3");
	level waittill("hash_b718ebe8");
	level thread namespace_82b91a51::function_7e61de2b(1, "black");
	level notify("hash_2bfbbe4d");
	level waittill("hash_207b5ccf");
	namespace_80983c42::function_80983c42("sh_ex_igc");
	level thread namespace_82b91a51::function_593c2af4(2, "black");
	if(isdefined(level.var_69b67781))
	{
		level thread [[level.var_69b67781]]();
	}
	level.var_6e1075a2 = 0;
	level waittill("hash_9bedfeb8");
	level thread namespace_82b91a51::function_7e61de2b(1.5, "black", "end_level_fade");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
}

/*
	Name: function_724dd06d
	Namespace: namespace_ce9d9fc1
	Checksum: 0xC9710601
	Offset: 0x3170
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_724dd06d(var_c77d2837)
{
	level notify("hash_ec2539d3");
	level notify("hash_2bfbbe4d");
	if(!isdefined(level.var_6e1075a2) || level.var_6e1075a2)
	{
		level thread namespace_82b91a51::function_7e61de2b(0.05, "black", "end_level_fade");
	}
}

/*
	Name: function_69ff4ffa
	Namespace: namespace_ce9d9fc1
	Checksum: 0xCE9F6B68
	Offset: 0x31E8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_69ff4ffa(var_6bfe1586)
{
	level.var_4c62d05f = var_6bfe1586;
	level notify("hash_9644b953");
	namespace_d0ef8521::function_31cd1834("cp_level_vengeance_open_panic_room");
}

/*
	Name: function_63cf4f49
	Namespace: namespace_ce9d9fc1
	Checksum: 0x4C4A5113
	Offset: 0x3230
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_63cf4f49(var_c77d2837)
{
	level.var_bc7418fa = var_c77d2837["goxiulan"];
}

/*
	Name: function_58c9be50
	Namespace: namespace_ce9d9fc1
	Checksum: 0xB353E4D
	Offset: 0x3258
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_58c9be50()
{
	level waittill("hash_fcbf624f");
	level.var_bc7418fa namespace_71e9cb84::function_74d6b22f("xiulan_face_burn", 1);
}

/*
	Name: function_87298438
	Namespace: namespace_ce9d9fc1
	Checksum: 0x236AD7BF
	Offset: 0x3298
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_87298438()
{
	level endon("hash_2bfbbe4d");
	self waittill("hash_128f8789");
	var_f92a03e7 = function_6ada35ba("obj_panic", "targetname");
	var_f92a03e7 function_175e6b8e(0);
	if(!level namespace_ad23e503::function_7922262b("starting_igc_12"))
	{
		wait(2.5);
	}
	var_35a1e4f8 = namespace_14b42b8a::function_7922262b("tag_align_panic_room", "targetname");
	var_35a1e4f8 thread namespace_cc27597::function_fcf56ab5("cin_ven_08_80_enter_panicroom_1st");
	var_35a1e4f8 thread namespace_cc27597::function_fcf56ab5("cin_ven_12_01_1st_kane_rescue");
	namespace_82b91a51::function_207f8667(&"CP_MI_SING_VENGEANCE_KANE_KILLED", &"CP_MI_SING_VENGEANCE_KANE_KILLED_HINT");
}

