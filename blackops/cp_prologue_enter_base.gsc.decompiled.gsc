#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_enter_base;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_robot_reveal;
#using scripts\cp\cp_prologue_security_camera;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\voice\voice_prologue;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\doors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_bd91a0fd;

/*
	Name: function_1605fd36
	Namespace: namespace_bd91a0fd
	Checksum: 0x68A04D2F
	Offset: 0x16A8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1605fd36()
{
	function_f6fcb9d5();
	level thread function_69685279();
}

/*
	Name: function_f6fcb9d5
	Namespace: namespace_bd91a0fd
	Checksum: 0x99EC1590
	Offset: 0x16E0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f6fcb9d5()
{
}

/*
	Name: function_69685279
	Namespace: namespace_bd91a0fd
	Checksum: 0x6EE6BBE3
	Offset: 0x16F0
	Size: 0x373
	Parameters: 0
	Flags: None
*/
function function_69685279()
{
	level namespace_2cb3876f::function_6a5f89cb("skipto_nrc_knocking");
	if(isdefined(level.var_f22c67b))
	{
		level thread [[level.var_f22c67b]]();
	}
	foreach(var_e4463170 in level.var_681ad194)
	{
		var_e4463170.var_7dfaf62 = 16;
		var_e4463170 function_169cc712(function_b4cb3503("ally0" + var_e4463170.var_a89679b6 + "_start_node", "targetname"));
	}
	namespace_76d95162::function_d9f49fba(0);
	namespace_2cb3876f::function_47a62798(1);
	namespace_2cb3876f::function_25e841ea();
	level thread function_599e2f36();
	namespace_82b91a51::function_67520c6a(2, undefined, &function_b206d9a7);
	level thread function_e4486a45();
	if(isdefined(level.var_a8f1dac7))
	{
		level thread [[level.var_a8f1dac7]]();
	}
	namespace_2f06d687::function_72214789("tower_guards");
	namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &namespace_82b91a51::function_16c71b8, 1);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_4dc8633b::function_7072c5d8);
	level thread function_63075f1d();
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037.var_ca3202d["bc"] = 1;
	level thread function_127fb1fb();
	level thread function_5dc7beec();
	level thread function_a7dec0e7();
	namespace_cc27597::function_8f9f34e0("cin_pro_03_01_blendin_vign_movedown_tower_hendricks", &function_c9e3016d, "play");
	namespace_cc27597::function_8f9f34e0("cin_pro_03_01_blendin_vign_movedown_tower_hendricks", &function_fe6bccbc, "play");
	level namespace_cc27597::function_43718187("cin_pro_03_01_blendin_vign_movedown_tower_hendricks");
	level namespace_ad23e503::function_1ab5ebec("player_reached_tower_bottom");
	namespace_1d795d47::function_be8adfb8("skipto_nrc_knocking");
}

/*
	Name: function_fe6bccbc
	Namespace: namespace_bd91a0fd
	Checksum: 0xD7177934
	Offset: 0x1A70
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_fe6bccbc(var_c77d2837)
{
	level waittill("hash_948ccb30");
	level thread namespace_71b8dba1::function_13b3b16a("plyr_so_as_long_as_we_d_0");
}

/*
	Name: function_e4486a45
	Namespace: namespace_bd91a0fd
	Checksum: 0xDF2D7E0E
	Offset: 0x1AB0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_e4486a45()
{
	level namespace_cc27597::function_c35e6aab("cin_pro_02_01_knocking_vign_nrc_breach_soldiers");
	level thread namespace_cc27597::function_43718187("cin_pro_02_01_knocking_vign_approach_opendoor", level.var_2fd26037);
	level.var_2fd26037 waittill("hash_7b386e04");
	level.var_2fd26037 function_169cc712(function_b4cb3503("nd_nrc_knocking_hendrics_retreat", "targetname"), 1);
	level.var_2fd26037 thread namespace_71b8dba1::function_81141386("hend_let_s_get_this_done_0");
	level thread namespace_21b2c1f2::function_e245d17f();
	level.var_2fd26037.var_ca3202d["bc"] = 0;
	namespace_76d95162::function_d9f49fba(1);
	level thread function_d511e678();
	level thread namespace_cc27597::function_43718187("cin_pro_02_01_knocking_vign_nrc_breach_soldiers");
}

/*
	Name: function_d511e678
	Namespace: namespace_bd91a0fd
	Checksum: 0x806C8C85
	Offset: 0x1C00
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_d511e678()
{
	var_b0b3b56f = namespace_14b42b8a::function_7922262b("prologue_nrc_kocking_door1", "targetname");
	function_5a36b2c5();
	function_c4c41a9();
	var_3eac4634 = namespace_14b42b8a::function_7922262b("prologue_nrc_kocking_door2", "targetname");
	function_5a36b2c5();
	function_c4c41a9();
	var_a2da988e = function_6ada35ba("nrc_knocking_door_sight_clip", "targetname");
	var_a2da988e function_dc8c8404();
}

/*
	Name: function_b206d9a7
	Namespace: namespace_bd91a0fd
	Checksum: 0x305AC48
	Offset: 0x1D10
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_b206d9a7()
{
	namespace_2cb3876f::function_d1f1caad("trig_control_room_exit");
	level thread namespace_cc27597::function_43718187("cin_pro_03_01_blendin_vign_vtol_sweep");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_control_tower_ceiling_tiles_02_bundle");
	var_2ef9d306 = function_6ada35ba("sp_vtol_sweep_at_start_ai", "targetname");
	if(isdefined(var_2ef9d306))
	{
		var_2ef9d306 thread namespace_2cb3876f::function_c56034b7();
	}
	wait(1.2);
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.var_722885f3, 0.1, 0.1, 1000, 20, "buzz_high");
	level thread namespace_cc27597::function_43718187("dead_turret_01", "targetname");
	level thread namespace_cc27597::function_43718187("dead_turret_02", "targetname");
	level thread namespace_cc27597::function_43718187("dead_turret_03", "targetname");
}

/*
	Name: function_568a781d
	Namespace: namespace_bd91a0fd
	Checksum: 0xC3957239
	Offset: 0x1E90
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_568a781d()
{
	function_f2908b1c();
	namespace_2f06d687::function_2b37a3c9("start_through_take_out_guards", "script_aigroup", &function_654eeb65);
	level thread function_bc06f066();
	level thread function_b3440908();
}

/*
	Name: function_f2908b1c
	Namespace: namespace_bd91a0fd
	Checksum: 0x99EC1590
	Offset: 0x1F10
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f2908b1c()
{
}

/*
	Name: function_b3440908
	Namespace: namespace_bd91a0fd
	Checksum: 0xBE3019D4
	Offset: 0x1F20
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_b3440908()
{
	level namespace_2cb3876f::function_6a5f89cb("skipto_blend_in");
	foreach(var_e4463170 in level.var_681ad194)
	{
		var_e4463170 namespace_d84e54db::function_c9e45d52(1);
		var_e4463170 namespace_d84e54db::function_7bf590dd(1);
	}
	level thread function_be42a33f();
	if(isdefined(level.var_4d823ef7))
	{
		level thread [[level.var_4d823ef7]]();
	}
	namespace_2cb3876f::function_25e841ea();
	level thread function_e2ed5f34();
	namespace_2cb3876f::function_47a62798(1);
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_destruction_putoutfire");
	level thread function_4358b88b();
	level thread function_11855253();
	level namespace_ad23e503::function_1ab5ebec("tower_doors_open");
	level namespace_82b91a51::function_ef3f75eb("sndCloseFT");
	level namespace_ad23e503::function_1ab5ebec("player_entering_tunnel");
	function_374cf6ee();
	namespace_1d795d47::function_be8adfb8("skipto_blend_in");
}

/*
	Name: function_e2ed5f34
	Namespace: namespace_bd91a0fd
	Checksum: 0x428C610F
	Offset: 0x2140
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e2ed5f34()
{
	self endon("hash_128f8789");
	self endon("hash_beaa69f3");
	level waittill("hash_c52fa561");
	wait(1.5);
	level thread namespace_d0ef8521::function_45d1556("blending_in_breadcrumb_3");
}

/*
	Name: function_bc06f066
	Namespace: namespace_bd91a0fd
	Checksum: 0xF16258A1
	Offset: 0x2198
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_bc06f066()
{
	level thread function_5b8bdfba();
	level namespace_ad23e503::function_1ab5ebec("tower_doors_open");
	namespace_76d95162::function_d9f49fba(1);
	var_4faefc23 = "t_tarmac_vo_need_medic";
	var_1a7dfed0 = function_84970cc4("need_medic");
	var_61ae76d5 = function_84970cc4("tarmac_soldier_ai");
	var_9e3b0b67 = function_84970cc4(0);
	level thread function_bafd79f6(var_4faefc23, var_1a7dfed0, var_61ae76d5, var_9e3b0b67);
	var_4faefc23 = "t_tarmac_vo_get_the_fire_out";
	var_1a7dfed0 = function_84970cc4("put_out_fire_hurry");
	var_61ae76d5 = function_84970cc4("tarmac_soldier_f_ai");
	var_9e3b0b67 = function_84970cc4(0);
	level thread function_bafd79f6(var_4faefc23, var_1a7dfed0, var_61ae76d5, var_9e3b0b67);
	var_4faefc23 = "t_tarmac_vo_truck_conversation";
	var_1a7dfed0 = function_84970cc4("what_happened", "dead_malfuctioned");
	var_61ae76d5 = function_84970cc4("tarmac_soldier_truck_02_ai", "tarmac_soldier_truck_03_ai");
	var_9e3b0b67 = function_84970cc4(0, 1.5);
	level thread function_bafd79f6(var_4faefc23, var_1a7dfed0, var_61ae76d5, var_9e3b0b67);
	level thread function_bf532adb();
	level thread function_3eb38d8d();
	level waittill("hash_c52fa561");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_shit_keep_your_hea_0");
	var_49b32118 = function_6ada35ba("pa_vox_tarmac", "targetname");
	var_49b32118 thread namespace_71b8dba1::function_81141386("nrcp_all_available_person_0", 2);
	level thread function_637dbd55();
}

/*
	Name: function_5b8bdfba
	Namespace: namespace_bd91a0fd
	Checksum: 0xB6CF90D3
	Offset: 0x2490
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_5b8bdfba()
{
	wait(3);
	var_216b2dcb = function_9b7fda5e("script_origin", (-1001, -1422, 215));
	var_216b2dcb namespace_71b8dba1::function_81141386("nrcp_all_available_person_0");
	wait(1);
	var_216b2dcb function_dc8c8404();
}

/*
	Name: function_e5670bf5
	Namespace: namespace_bd91a0fd
	Checksum: 0x6C697AA6
	Offset: 0x2518
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_e5670bf5()
{
	self endon("hash_128f8789");
	self notify("hash_2605e152", "get_to_control_tower");
	wait(2);
	self notify("hash_2605e152", "move_move");
	wait(1.5);
	self notify("hash_2605e152", "more_men");
	wait(2);
	self notify("hash_c80e029a", "put_out_fire_men");
}

/*
	Name: function_bf532adb
	Namespace: namespace_bd91a0fd
	Checksum: 0x756A47AA
	Offset: 0x25A0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_bf532adb()
{
	level endon("hash_f70290fd");
	var_46100e43 = function_6ada35ba("t_tarmac_vo_firetruck", "targetname");
	var_46100e43 endon("hash_128f8789");
	var_46100e43 namespace_4dbf3ae3::function_1ab5ebec();
	var_46100e43 function_921a1574("nrcm0_put_out_that_fire_w_0");
}

/*
	Name: function_bafd79f6
	Namespace: namespace_bd91a0fd
	Checksum: 0xD1C484DB
	Offset: 0x2628
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function function_bafd79f6(var_d72a94c2, var_1a7dfed0, var_61ae76d5, var_9e3b0b67)
{
	self endon("hash_128f8789");
	level endon("hash_f70290fd");
	var_46100e43 = function_6ada35ba(var_d72a94c2, "targetname");
	var_a939b0c9 = var_46100e43.var_722885f3;
	level namespace_4dbf3ae3::function_1ab5ebec(var_d72a94c2, "targetname", undefined, 0);
	function_f9be6553(var_a939b0c9, var_1a7dfed0, var_61ae76d5, var_9e3b0b67);
}

/*
	Name: function_f9be6553
	Namespace: namespace_bd91a0fd
	Checksum: 0x41EA3D8F
	Offset: 0x26F8
	Size: 0xED
	Parameters: 4
	Flags: None
*/
function function_f9be6553(var_97fbbd0a, var_1a7dfed0, var_61ae76d5, var_9e3b0b67)
{
	level endon("hash_f70290fd");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_1a7dfed0.size; var_c957f6b6++)
	{
		var_79cf4848 = function_99201f25(var_61ae76d5[var_c957f6b6], "targetname");
		if(isdefined(var_79cf4848) && var_79cf4848.size > 0)
		{
			var_58c5eb41 = function_e7bdc1a1(var_97fbbd0a, var_79cf4848);
			wait(var_9e3b0b67[var_c957f6b6]);
			var_58c5eb41 notify("hash_2605e152", var_1a7dfed0[var_c957f6b6]);
		}
	}
}

/*
	Name: function_3eb38d8d
	Namespace: namespace_bd91a0fd
	Checksum: 0x5DF209EF
	Offset: 0x27F0
	Size: 0x2AF
	Parameters: 0
	Flags: None
*/
function function_3eb38d8d()
{
	var_459dddeb = 0;
	var_5f00f64d = 12;
	var_1f9b6382 = 0;
	var_38fe7be4 = 35;
	var_f998e919 = 0;
	var_ab05eb1f = 50;
	var_ebe66fdc = namespace_14b42b8a::function_7922262b("s_player_exits_tower", "targetname");
	var_d230ad83 = function_bc7ce905(var_ebe66fdc.var_6ab6f4fd);
	var_f721d9a5 = GetTime();
	while(1)
	{
		var_5ddef2e5 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
		{
			var_a080d759 = function_f679a325(var_ebe66fdc.var_722885f3 - var_5ddef2e5[var_c957f6b6].var_722885f3);
			var_c6c121c9 = function_5f9a4869(var_d230ad83, var_a080d759);
			if(var_c6c121c9 < 0)
			{
				return;
			}
		}
		var_60db70fa = GetTime();
		var_5ecb0b6d = var_60db70fa - var_f721d9a5 / 1000;
		if(var_5ecb0b6d > var_5f00f64d && var_459dddeb == 0)
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_on_me_nice_and_easy_0");
			var_459dddeb = 1;
		}
		if(var_5ecb0b6d > var_38fe7be4 && var_1f9b6382 == 0)
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_security_station_is_0");
			var_1f9b6382 = 1;
		}
		if(var_5ecb0b6d > var_ab05eb1f && var_f998e919 == 0)
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_keep_moving_don_t_b_0");
			var_f998e919 = 1;
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_637dbd55
	Namespace: namespace_bd91a0fd
	Checksum: 0x64716D96
	Offset: 0x2AA8
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_637dbd55()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_tarmac_we_need_a_medic");
	var_459dddeb = 0;
	var_5f00f64d = 30;
	var_1f9b6382 = 0;
	var_38fe7be4 = 50;
	var_f721d9a5 = GetTime();
	while(level namespace_ad23e503::function_7922262b("player_entering_tunnel") == 0)
	{
		var_60db70fa = GetTime();
		var_5ecb0b6d = var_60db70fa - var_f721d9a5 / 1000;
		if(var_5ecb0b6d > var_5f00f64d && var_459dddeb == 0)
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_stay_on_me_we_need_0");
			var_459dddeb = 1;
		}
		if(var_5ecb0b6d > var_38fe7be4 && var_1f9b6382 == 0)
		{
			level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_clock_s_ticking_we_0");
			var_1f9b6382 = 1;
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_4358b88b
	Namespace: namespace_bd91a0fd
	Checksum: 0x45A58CC9
	Offset: 0x2C10
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_4358b88b()
{
	level thread function_599e2f36();
	level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_attendfire");
	level thread function_b49762e5();
	level thread function_12fd44e1();
	level thread function_42e6212a();
}

/*
	Name: function_11855253
	Namespace: namespace_bd91a0fd
	Checksum: 0x4B49E2F7
	Offset: 0x2CA0
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_11855253()
{
	level thread function_ae8c8b7b();
	level thread namespace_cc27597::function_8f9f34e0("cin_pro_03_02_blendin_vign_call_for_help", &function_9b773ab2);
	level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_call_for_help");
	namespace_cc27597::function_8f9f34e0("cin_pro_03_02_blendin_vign_tarmac_cross", &function_cdc39276, "play");
	level namespace_cc27597::function_43718187("cin_pro_03_01_blendin_vign_movedown_tower_exit_hendr");
	level waittill("hash_c64e52db");
	level namespace_ad23e503::function_74d6b22f("hendr_crossed_tarmac");
}

/*
	Name: function_c9e3016d
	Namespace: namespace_bd91a0fd
	Checksum: 0xDF86CD19
	Offset: 0x2D88
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_c9e3016d(var_c77d2837)
{
	level waittill("hash_23c82471");
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_tarmac_cross");
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_call_for_help");
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_destruction_injured");
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_attendfire");
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_destruction_help");
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_destruction_putoutfire");
	level namespace_cc27597::function_c35e6aab("tarmac_guys_on_fire");
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_destruction_onfire_guy01");
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_destruction_onfire_guy03");
	level namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_destruction_onfire_guy02");
}

/*
	Name: function_9b773ab2
	Namespace: namespace_bd91a0fd
	Checksum: 0x3E8EC1BC
	Offset: 0x2EE8
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_9b773ab2(var_c77d2837)
{
	var_5d7f4f0f = var_c77d2837["tarmac_soldier_seek_help_m"];
	var_5d7f4f0f namespace_71b8dba1::function_81141386("nrcg_hurry_come_quickly_0", 2);
	var_5d7f4f0f namespace_d84e54db::function_b4f5e3b9(1);
	var_5d7f4f0f namespace_d84e54db::function_c9e45d52(1);
	var_5d7f4f0f function_169cc712(function_b4cb3503("tarmac_help_goal", "targetname"), 1);
	var_5d7f4f0f thread function_e5670bf5();
	var_5d7f4f0f waittill("hash_41d1aaf0");
	var_5d7f4f0f function_dc8c8404();
}

/*
	Name: function_cdc39276
	Namespace: namespace_bd91a0fd
	Checksum: 0xB5965F6D
	Offset: 0x2FE0
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function function_cdc39276(var_c77d2837)
{
	level thread namespace_71b8dba1::function_13b3b16a("plyr_i_ll_follow_your_lea_0");
	level thread function_e78eadc4();
	level.var_fdb31b75 = var_c77d2837["tarmac_cross_truck_02"];
	var_c77d2837["hendricks"] waittill("hash_d9dc5e2b");
	level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_destruction_onfire_guy01");
	var_c77d2837["hendricks"] waittill("hash_8dd76959");
	level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_destruction_onfire_guy03");
	var_c77d2837["hendricks"] waittill("hash_67d4eef0");
	level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_destruction_onfire_guy02");
	var_c77d2837["hendricks"] waittill("hash_18dec1ef");
	wait(0.5);
	if(!namespace_cc27597::function_367f8966("cin_pro_03_02_blendin_vign_destruction_putoutfire"))
	{
		level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_destruction_putoutfire");
	}
	var_22752fde = function_b4cb3503("hendricks_tunnel_goal", "targetname");
	var_c77d2837["hendricks"] function_169cc712(var_22752fde, 1);
}

/*
	Name: function_e78eadc4
	Namespace: namespace_bd91a0fd
	Checksum: 0x6CB5E4A0
	Offset: 0x3198
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_e78eadc4()
{
	level namespace_ad23e503::function_1ab5ebec("show_crash_victims");
	if(!namespace_cc27597::function_367f8966("cin_pro_03_02_blendin_vign_destruction_putoutfire"))
	{
		level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_destruction_putoutfire");
	}
}

/*
	Name: function_a7dec0e7
	Namespace: namespace_bd91a0fd
	Checksum: 0x3C280724
	Offset: 0x3200
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_a7dec0e7()
{
	level thread function_a87bddf2();
	level.var_2fd26037.var_25bfbf8e = 1;
	level.var_2fd26037.var_255b9315 = 1;
	foreach(var_e4463170 in level.var_681ad194)
	{
		var_e4463170 namespace_d84e54db::function_c9e45d52(1);
		var_e4463170 namespace_d84e54db::function_7bf590dd(1);
	}
	level namespace_ad23e503::function_1ab5ebec("tower_doors_open");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("cqb", 0);
	var_3ced446f = namespace_2cb3876f::function_6ee0e1a5();
	namespace_84970cc4::function_966ecb29(var_3ced446f, &namespace_d84e54db::function_ceb883cd, "cqb", 0);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_4dc8633b::function_7072c5d8);
}

/*
	Name: function_a87bddf2
	Namespace: namespace_bd91a0fd
	Checksum: 0xAB5BA019
	Offset: 0x33D0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_a87bddf2()
{
	namespace_4dbf3ae3::function_42e87952("t_tower_y301");
	level waittill("hash_809b0d82");
	wait(3);
	namespace_4dbf3ae3::function_42e87952("t_tower_y302");
	wait(14);
	namespace_4dbf3ae3::function_42e87952("t_tower_y303");
}

/*
	Name: function_be42a33f
	Namespace: namespace_bd91a0fd
	Checksum: 0xC54DF9E
	Offset: 0x3440
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_be42a33f()
{
	namespace_4dbf3ae3::function_1ab5ebec("tarmac_move_friendies");
	foreach(var_e4463170 in level.var_681ad194)
	{
		var_e4463170 thread function_15dea196("ally0" + var_e4463170.var_a89679b6 + "_tunnel_goal", "security_cam_active");
	}
}

/*
	Name: function_ae8c8b7b
	Namespace: namespace_bd91a0fd
	Checksum: 0x8C1D5715
	Offset: 0x3518
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_ae8c8b7b()
{
	level waittill("hash_c4d700a5");
	var_280d5f68 = function_6ada35ba("controltower_exitdoor_l", "targetname");
	var_3c301126 = function_6ada35ba("controltower_exitdoor_r", "targetname");
	var_280d5f68 function_c0b6566f(var_280d5f68.var_6ab6f4fd + VectorScale((0, -1, 0), 90), 0.75);
	var_3c301126 function_c0b6566f(var_3c301126.var_6ab6f4fd + VectorScale((0, 1, 0), 90), 0.75);
	var_3c301126 function_921a1574("evt_towerdoor_open");
	level thread namespace_2cb3876f::function_2747b8e1("damage_light", 0.05, 2, var_3c301126);
	level namespace_ad23e503::function_74d6b22f("tower_doors_open");
}

/*
	Name: function_15dea196
	Namespace: namespace_bd91a0fd
	Checksum: 0x9FAFA1AC
	Offset: 0x3678
	Size: 0xAB
	Parameters: 2
	Flags: None
*/
function function_15dea196(var_90ca1fdd, var_143df2c2)
{
	if(!isdefined(var_143df2c2))
	{
		var_143df2c2 = "none";
	}
	var_c0a4c975 = function_b4cb3503(var_90ca1fdd, "targetname");
	self function_169cc712(var_c0a4c975, 1);
	self namespace_82b91a51::function_564f2d81("goal", var_143df2c2);
	self function_dc8c8404();
}

/*
	Name: function_42e6212a
	Namespace: namespace_bd91a0fd
	Checksum: 0x708A651A
	Offset: 0x3730
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_42e6212a()
{
	var_c620461c = function_6ada35ba("tunnel_entrance_guard", "targetname");
	level.var_9e8c7aef = var_c620461c namespace_2f06d687::function_9b7fda5e(1);
	level.var_9e8c7aef.var_255b9315 = 1;
	level.var_9e8c7aef.var_c584775c = 1;
}

/*
	Name: function_b49762e5
	Namespace: namespace_bd91a0fd
	Checksum: 0x2A391479
	Offset: 0x37B8
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_b49762e5()
{
	level thread function_d5fbb820("tarmac_wounded_1");
	level thread function_d5fbb820("tarmac_wounded_2");
	level thread namespace_cc27597::function_43718187("tarmac_deathpose");
	var_197aede3 = namespace_14b42b8a::function_7922262b("injured_carried2", "targetname");
	var_197aede3 namespace_cc27597::function_8f9f34e0(var_197aede3.var_1157a889, &function_28d9b6cd, "play");
	var_197aede3 thread namespace_cc27597::function_43718187(var_197aede3.var_1157a889);
	namespace_cc27597::function_8f9f34e0("cin_pro_03_02_blendin_vign_destruction_help", &function_28d9b6cd, "play");
	level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_destruction_help");
	var_a7737ea8 = namespace_14b42b8a::function_7922262b("injured_carried1", "targetname");
	var_a7737ea8 namespace_cc27597::function_8f9f34e0(var_a7737ea8.var_1157a889, &function_28d9b6cd, "play");
	var_a7737ea8 thread namespace_cc27597::function_43718187(var_a7737ea8.var_1157a889);
}

/*
	Name: function_d70eb0dd
	Namespace: namespace_bd91a0fd
	Checksum: 0x70644923
	Offset: 0x3988
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_d70eb0dd(var_c77d2837)
{
	/#
		function_2e4b8c78("Dev Block strings are not supported");
	#/
	var_cbd11028 = function_84970cc4("need_medic", "get_him_out", "more_men");
	var_3fe3c7c8 = namespace_84970cc4::function_47d18840(var_cbd11028);
	var_c77d2837["tarmac_soldier"] thread function_c4ada726(var_3fe3c7c8, 400);
}

/*
	Name: function_28d9b6cd
	Namespace: namespace_bd91a0fd
	Checksum: 0x1012AC83
	Offset: 0x3A40
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_28d9b6cd(var_c77d2837)
{
	var_c77d2837["tarmac_soldier"] thread function_c4ada726("what_happened", 400);
}

/*
	Name: function_c4ada726
	Namespace: namespace_bd91a0fd
	Checksum: 0x6BA0B7DE
	Offset: 0x3A88
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function function_c4ada726(var_417ec882, var_a972c5dd)
{
	self endon("hash_128f8789");
	level endon("hash_beaa69f3");
	self function_92e75cce(var_a972c5dd);
	self notify("hash_2605e152", var_417ec882);
}

/*
	Name: function_92e75cce
	Namespace: namespace_bd91a0fd
	Checksum: 0x7FDADD24
	Offset: 0x3AE8
	Size: 0x11B
	Parameters: 2
	Flags: None
*/
function function_92e75cce(var_e8ea412b, var_b0ecff80)
{
	if(!isdefined(var_b0ecff80))
	{
		var_b0ecff80 = 1;
	}
	self endon("hash_128f8789");
	var_a972c5dd = var_e8ea412b * var_e8ea412b;
	do
	{
		var_df983850 = 0;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_df983850 = var_df983850 || function_cb3d1c9b(self.var_722885f3, var_5dc5e20a.var_722885f3) <= var_a972c5dd;
		}
		if(!var_df983850)
		{
			wait(var_b0ecff80);
		}
	}
	while(!!var_df983850);
}

/*
	Name: function_cbd1cf8b
	Namespace: namespace_bd91a0fd
	Checksum: 0x6B45DE17
	Offset: 0x3C10
	Size: 0x15B
	Parameters: 1
	Flags: None
*/
function function_cbd1cf8b(var_294306eb)
{
	var_e4d0f603 = function_6ada35ba("spawner_tsa_guard", "targetname");
	var_446ec2f6 = namespace_2f06d687::function_7387a40a(var_e4d0f603);
	var_446ec2f6 function_80765127();
	var_446ec2f6 namespace_d84e54db::function_b4f5e3b9(1);
	var_446ec2f6 namespace_d84e54db::function_c9e45d52(1);
	var_446ec2f6.var_3a90f16b = function_b6b79a0(var_446ec2f6.var_3a90f16b * 0.25);
	var_446ec2f6 thread function_b79bfbce();
	level thread namespace_cc27597::function_43718187(var_294306eb, var_446ec2f6);
	var_446ec2f6 namespace_82b91a51::function_67520c6a(0.5, undefined, &function_2992720d);
	var_446ec2f6 waittill("hash_128f8789");
	if(isdefined(var_446ec2f6))
	{
		var_446ec2f6 function_d7a0a9d8(1);
	}
}

/*
	Name: function_b79bfbce
	Namespace: namespace_bd91a0fd
	Checksum: 0x140EDA35
	Offset: 0x3D78
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_b79bfbce()
{
	self endon("hash_128f8789");
	level waittill("hash_b33ab531");
	self function_2992720d();
}

/*
	Name: function_d5fbb820
	Namespace: namespace_bd91a0fd
	Checksum: 0x9EB0842B
	Offset: 0x3DB8
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_d5fbb820(var_294306eb)
{
	var_e4d0f603 = function_6ada35ba("tarmac_soldier", "targetname");
	if(function_26299103(100) > 70)
	{
		var_e4d0f603 = function_6ada35ba("tarmac_soldier_f", "targetname");
	}
	var_446ec2f6 = namespace_2f06d687::function_7387a40a(var_e4d0f603);
	var_446ec2f6 function_80765127();
	level thread namespace_cc27597::function_43718187(var_294306eb, var_446ec2f6);
}

/*
	Name: function_654eeb65
	Namespace: namespace_bd91a0fd
	Checksum: 0x3811A99B
	Offset: 0x3E90
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_654eeb65()
{
	self.var_255b9315 = 1;
	self.var_c584775c = 1;
}

/*
	Name: function_12fd44e1
	Namespace: namespace_bd91a0fd
	Checksum: 0x6FF8B28A
	Offset: 0x3EB8
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function function_12fd44e1()
{
	level namespace_ad23e503::function_1ab5ebec("tower_doors_open");
	namespace_80983c42::function_80983c42("fx_exploder_glass_tower");
	if(!namespace_cc27597::function_444aea32("p7_fxanim_cp_prologue_control_tower_tarmac_turbine_bundle"))
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_control_tower_tarmac_turbine_bundle");
	}
	level thread function_d5fbb820("wounded_crawl_1");
	level thread function_d5fbb820("wounded_crawl_2");
	level thread function_d5fbb820("wounded_crawl_3");
	level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_destruction_injured");
	wait(6);
	level thread namespace_cc27597::function_43718187("tarmac_guys_on_fire");
	level waittill("hash_f3f03044");
	level namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_prologue_control_tower_tarmac_turbine_bundle");
	level namespace_cc27597::function_fcf56ab5("cin_pro_03_02_blendin_vign_destruction_injured");
	level namespace_cc27597::function_fcf56ab5("cin_pro_03_02_blendin_vign_attendfire");
	level namespace_cc27597::function_fcf56ab5("tarmac_deathpose");
	level namespace_cc27597::function_fcf56ab5("cin_pro_03_02_blendin_vign_destruction_help");
	level namespace_cc27597::function_fcf56ab5("tarmac_wounded_1");
	level namespace_cc27597::function_fcf56ab5("tarmac_wounded_2");
	level namespace_cc27597::function_fcf56ab5("injured_carried2", "targetname");
	level namespace_cc27597::function_fcf56ab5("injured_carried1", "targetname");
	level namespace_cc27597::function_fcf56ab5("cin_pro_03_02_blendin_vign_destruction_putoutfire");
	wait(0.1);
	level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_prologue_control_tower_tarmac_turbine_bundle");
	level namespace_14b42b8a::function_368120a1("scene", "cin_pro_03_02_blendin_vign_destruction_injured");
	level namespace_14b42b8a::function_368120a1("scene", "cin_pro_03_02_blendin_vign_attendfire");
	level namespace_14b42b8a::function_368120a1("scene", "cin_pro_03_02_blendin_vign_destruction_help");
	level namespace_14b42b8a::function_368120a1("scene", "cin_pro_03_02_blendin_vign_destruction_putoutfire");
}

/*
	Name: function_1a72a604
	Namespace: namespace_bd91a0fd
	Checksum: 0x85BCE191
	Offset: 0x4200
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_1a72a604(var_6c5c89e1, var_5e550f5)
{
	if(!isdefined(var_5e550f5))
	{
		var_5e550f5 = 1;
	}
	self function_422037f5();
	var_51a35d76 = function_243bb261(var_6c5c89e1, "targetname");
	self.var_c1535232 = var_5e550f5;
	self.var_6ab6f4fd = var_51a35d76.var_6ab6f4fd;
	self thread namespace_96fa87af::function_edb3a94e(var_51a35d76);
	self waittill("hash_6cf6ac7e");
	self function_dc8c8404();
}

/*
	Name: function_374cf6ee
	Namespace: namespace_bd91a0fd
	Checksum: 0x1C424965
	Offset: 0x42D0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_374cf6ee()
{
	level namespace_71e9cb84::function_74d6b22f("blend_in_cleanup", 1);
}

/*
	Name: function_599e2f36
	Namespace: namespace_bd91a0fd
	Checksum: 0x142C430A
	Offset: 0x4300
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_599e2f36()
{
	if(isdefined(level.var_8d6df5cb))
	{
		return;
	}
	level.var_8d6df5cb = 1;
	var_838bd816 = [];
	var_838bd816[var_838bd816.size] = "tarmac_cargo_short";
	var_838bd816[var_838bd816.size] = "tarmac_cargo_long";
	var_838bd816[var_838bd816.size] = "tarmac_humvee";
	for(var_c957f6b6 = 0; var_c957f6b6 < 12; var_c957f6b6++)
	{
		var_5e76f0af = function_dc99997a(0, var_838bd816.size);
		var_39eb2d3a = var_838bd816[var_5e76f0af] + "_far";
		var_6be5d72c = namespace_96fa87af::function_7387a40a(var_39eb2d3a);
		var_6be5d72c thread function_1a72a604("tunnel_truck2_node");
		var_465e9706 = function_72a94f05(10, 15);
		wait(var_465e9706);
		if(level namespace_ad23e503::function_7922262b("stop_tunnel_spawns"))
		{
			break;
		}
	}
}

/*
	Name: function_71f51761
	Namespace: namespace_bd91a0fd
	Checksum: 0xD0A37482
	Offset: 0x4478
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_71f51761()
{
	var_a9e0425 = [];
	var_a9e0425[var_a9e0425.size] = 1.75;
	var_a9e0425[var_a9e0425.size] = 7.5;
	var_a9e0425[var_a9e0425.size] = 12;
	var_a9e0425[var_a9e0425.size] = 8;
	var_a9e0425[var_a9e0425.size] = 12;
	for(var_791757 = 0; var_791757 < 2; var_791757++)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_a9e0425.size; var_c957f6b6++)
		{
			var_5e344df1 = namespace_96fa87af::function_7387a40a("tarmac_cargo_enter_far_base");
			var_5e344df1 thread function_1a72a604("nd_tarmac_cargo_enter_far_base");
			wait(var_a9e0425[var_c957f6b6]);
		}
	}
}

/*
	Name: function_63075f1d
	Namespace: namespace_bd91a0fd
	Checksum: 0x605DEFBE
	Offset: 0x4598
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_63075f1d()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_3f3cae8c();
	}
}

/*
	Name: function_3f3cae8c
	Namespace: namespace_bd91a0fd
	Checksum: 0x5A84390
	Offset: 0x4630
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_3f3cae8c()
{
	self endon("hash_128f8789");
	var_1dd38210 = function_6ada35ba("info_crouch_tutorial", "targetname");
	self namespace_ad23e503::function_1ab5ebec("tutorial_allowed");
	self namespace_ad23e503::function_2698b54f("tutorial_allowed", 0);
	while(!self function_32fa5072(var_1dd38210))
	{
		wait(0.1);
	}
	self namespace_82b91a51::function_32d40124(&"CP_MI_ETH_PROLOGUE_TUTORIAL_CROUCH", 0, undefined, 10);
	self.var_9db68ebf = 0;
	while(!self.var_9db68ebf)
	{
		if(self function_ed1dcfa1())
		{
			self namespace_82b91a51::function_f9e5537b();
			self.var_9db68ebf = 1;
			self namespace_ad23e503::function_2698b54f("tutorial_allowed", 1);
		}
		else
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_127fb1fb
	Namespace: namespace_bd91a0fd
	Checksum: 0x13759BD2
	Offset: 0x4780
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_127fb1fb()
{
	level thread function_cf7b5db7();
	level thread function_11ec608d();
	level thread function_809b0d82();
	level thread function_3e901e16();
}

/*
	Name: function_5dc7beec
	Namespace: namespace_bd91a0fd
	Checksum: 0xBAA7C33F
	Offset: 0x47F0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_5dc7beec()
{
	level thread function_cbd1cf8b("tsa_guard_wound_1");
	level thread function_cbd1cf8b("tsa_guard_wound_2");
	level thread function_cbd1cf8b("tsa_guard_wound_3");
	level thread function_cbd1cf8b("tsa_guard_wound_4");
	level thread function_cbd1cf8b("tsa_guard_wound_5");
	namespace_4dbf3ae3::function_1ab5ebec("close_security_door_trig");
	level namespace_cc27597::function_fcf56ab5("tsa_guard_wound_1");
	level namespace_cc27597::function_fcf56ab5("tsa_guard_wound_2");
	level namespace_cc27597::function_fcf56ab5("tsa_guard_wound_3");
	level namespace_cc27597::function_fcf56ab5("tsa_guard_wound_4");
	level namespace_cc27597::function_fcf56ab5("tsa_guard_wound_5");
}

/*
	Name: function_cf7b5db7
	Namespace: namespace_bd91a0fd
	Checksum: 0xB118B3F9
	Offset: 0x4958
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_cf7b5db7()
{
	namespace_ad23e503::function_1ab5ebec("player_trigger_gear_drop");
	level thread namespace_cc27597::function_43718187("landing_gear_anim", "targetname");
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.var_722885f3, 0.3, 0.6, 600, 3);
	namespace_80983c42::function_80983c42("light_exploder_controltower_inset_red");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_control_tower_debris_01_bundle");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_control_tower_tarmac_turbine_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("trig_plane_tail_explosion");
	function_4a0fb95e("cp_prologue_env_post_crash");
	level thread namespace_cc27597::function_43718187("plane_tail_explosion", "targetname");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_control_tower_ceiling_tiles_03_bundle");
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.var_722885f3, 0.4, 1.2, 10000, 6);
	level thread function_4febd2da();
	function_6bad1a34();
}

/*
	Name: function_4febd2da
	Namespace: namespace_bd91a0fd
	Checksum: 0xCB25F13A
	Offset: 0x4B20
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4febd2da()
{
	wait(2);
	function_37cbcf1a("amb_tower_shake", (0, 0, 0));
}

/*
	Name: function_6bad1a34
	Namespace: namespace_bd91a0fd
	Checksum: 0x263403DA
	Offset: 0x4B50
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_6bad1a34()
{
	level waittill("hash_c52fa561");
	level thread namespace_cc27597::function_43718187("plane_cockpit_explosion", "targetname");
	namespace_80983c42::function_80983c42("fx_exploder_plane_exp");
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.var_722885f3, 0.5, 1.2, 10000, 4);
	level.var_fdb31b75 namespace_cc27597::function_43718187("cin_pro_03_01_blendin_vign_truck_spray", level.var_fdb31b75);
}

/*
	Name: function_397b8620
	Namespace: namespace_bd91a0fd
	Checksum: 0x93BF681D
	Offset: 0x4C10
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_397b8620()
{
	level namespace_ad23e503::function_1ab5ebec("explosion_fallback_flag");
	namespace_4dbf3ae3::function_42e87952("trig_lookat_explosion");
}

/*
	Name: function_11ec608d
	Namespace: namespace_bd91a0fd
	Checksum: 0xB19CDC8F
	Offset: 0x4C58
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_11ec608d()
{
	while(!level namespace_ad23e503::function_7922262b("tower_doors_open"))
	{
		wait(function_72a94f05(5, 12));
		level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.var_722885f3, 0.4, 0.5, 800, 2);
		function_37cbcf1a("amb_tower_shake", (0, 0, 0));
		level notify("hash_c988e5af");
	}
	level notify("hash_f8e975b8");
}

/*
	Name: function_809b0d82
	Namespace: namespace_bd91a0fd
	Checksum: 0x8502D45
	Offset: 0x4D28
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_809b0d82()
{
	var_92e538d1 = namespace_4dbf3ae3::function_1ab5ebec("t_glass_floor_cracks");
	level notify("hash_809b0d82");
	level notify("hash_fc089399");
	var_92e538d1.var_aef176e7 function_e2af603e("damage_heavy");
}

/*
	Name: function_3e901e16
	Namespace: namespace_bd91a0fd
	Checksum: 0xE26BDE0
	Offset: 0x4D98
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_3e901e16()
{
	level thread function_f494e193();
	namespace_4dbf3ae3::function_1ab5ebec("t_tower_wheels");
	wait(0.5);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_control_tower_ceiling_tiles_01_bundle");
	level waittill("hash_809b0d82");
	level namespace_ad23e503::function_1ab5ebec("player_entering_tunnel");
	namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_prologue_control_tower_debris_01_bundle");
	namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_prologue_control_tower_ceiling_tiles_01_bundle");
}

/*
	Name: function_f494e193
	Namespace: namespace_bd91a0fd
	Checksum: 0x4A9B94BE
	Offset: 0x4E58
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_f494e193()
{
	level endon("hash_5893f877");
	level namespace_ad23e503::function_1ab5ebec("control_tower_debris");
	level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_prologue_control_tower_debris_01_bundle", undefined, undefined, 0.15, 0);
}

/*
	Name: function_e38f7be3
	Namespace: namespace_bd91a0fd
	Checksum: 0x85706C66
	Offset: 0x4EB8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_e38f7be3()
{
	level thread function_381bb7f6();
}

/*
	Name: function_381bb7f6
	Namespace: namespace_bd91a0fd
	Checksum: 0xA5FFFA4A
	Offset: 0x4EE0
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_381bb7f6()
{
	namespace_2cb3876f::function_25e841ea();
	namespace_76d95162::function_d9f49fba(0);
	namespace_2cb3876f::function_47a62798(1);
	level.var_2fd26037.var_25bfbf8e = 1;
	level.var_2fd26037.var_255b9315 = 1;
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_4dc8633b::function_7072c5d8);
	level thread function_8292daf3();
	level thread function_e8173f7f();
	level thread function_65e80b9e();
	level thread function_d095f82f();
	level thread function_e6ec4fe5();
	level thread function_21dd3be1();
	level.var_2fd26037 function_1978850f();
}

/*
	Name: function_1978850f
	Namespace: namespace_bd91a0fd
	Checksum: 0x293F0888
	Offset: 0x5058
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_1978850f()
{
	level namespace_cc27597::function_c35e6aab("cin_pro_04_01_takeout_vign_kiosk_kill");
	level namespace_ad23e503::function_1ab5ebec("hendr_crossed_tarmac");
	level namespace_ad23e503::function_1ab5ebec("start_hendr_kill");
	level thread function_f126566f();
	level thread function_eb28ee9b();
	level namespace_cc27597::function_8f9f34e0("cin_pro_04_01_takeout_vign_keycard", &namespace_e09822e3::function_30b1de21);
	level namespace_cc27597::function_8f9f34e0("cin_pro_05_01_securitycam_1st_stealth_kill_prepare", &namespace_e09822e3::function_d6557dc4);
	level namespace_cc27597::function_8f9f34e0("cin_pro_05_01_securitycam_1st_stealth_kill_prepare", &namespace_e09822e3::function_9887d555, "done");
	level namespace_cc27597::function_8f9f34e0("cin_pro_04_01_takeout_vign_kiosk_kill", &function_6f98f3af, "play");
	level namespace_cc27597::function_43718187("cin_pro_04_01_takeout_vign_kiosk_kill");
}

/*
	Name: function_eb28ee9b
	Namespace: namespace_bd91a0fd
	Checksum: 0x25B10EC6
	Offset: 0x51C8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_eb28ee9b()
{
	level waittill("hash_eb28ee9b");
	var_7e130296 = function_6ada35ba("blend_security_door_lt", "targetname");
	var_2a3f9df8 = function_6ada35ba("blend_security_door_rt", "targetname");
	var_7e130296 function_21d0da55(89, 0.5);
	var_2a3f9df8 function_21d0da55(90 * -1, 0.5);
	function_37cbcf1a("evt_tunnel_gate_open", var_2a3f9df8.var_722885f3);
	level thread function_60b83ce9();
	level waittill("hash_2170cc63");
	level thread namespace_d0ef8521::function_45d1556("blending_in_breadcrumb_4");
	level waittill("hash_7a8dce93");
	level namespace_ad23e503::function_74d6b22f("activate_bc_5");
}

/*
	Name: function_60b83ce9
	Namespace: namespace_bd91a0fd
	Checksum: 0x7AC802CA
	Offset: 0x5338
	Size: 0x185
	Parameters: 0
	Flags: None
*/
function function_60b83ce9()
{
	var_e4f2f922 = function_6ada35ba("kiosk_guard_door", "targetname");
	level thread namespace_2cb3876f::function_21f52196("kiosk_doors", var_e4f2f922, "t_regroup_past_guards");
	while(!namespace_2cb3876f::function_cdd726fb("kiosk_doors"))
	{
		wait(0.5);
	}
	var_7e130296 = function_6ada35ba("blend_security_door_lt", "targetname");
	var_2a3f9df8 = function_6ada35ba("blend_security_door_rt", "targetname");
	var_7e130296 function_21d0da55(89 * -1, 0.25);
	var_2a3f9df8 function_21d0da55(90, 0.25);
	function_37cbcf1a("evt_tunnel_gate_open", var_2a3f9df8.var_722885f3);
	level notify("hash_b5e3e8ba");
	level notify("hash_f3f03044");
}

/*
	Name: function_8292daf3
	Namespace: namespace_bd91a0fd
	Checksum: 0x6FA01FF1
	Offset: 0x54C8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8292daf3()
{
	level thread function_7f967b5b();
	level thread function_3921e3de();
}

/*
	Name: function_587c5a03
	Namespace: namespace_bd91a0fd
	Checksum: 0xF2E95919
	Offset: 0x5508
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_587c5a03(var_1c4260d1)
{
	self waittill("hash_128f8789");
	var_1c4260d1 function_dc8c8404();
}

/*
	Name: function_3921e3de
	Namespace: namespace_bd91a0fd
	Checksum: 0x167875ED
	Offset: 0x5540
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3921e3de()
{
	level notify("hash_62797210");
	level namespace_cc27597::function_c35e6aab("forkilft_anim");
	namespace_4dbf3ae3::function_1ab5ebec("trigger_obj_enter_tunnels_end");
	level thread namespace_cc27597::function_5c143f59("forkilft_anim", undefined, undefined, 0.33);
}

/*
	Name: function_d095f82f
	Namespace: namespace_bd91a0fd
	Checksum: 0x29908445
	Offset: 0x55B8
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_d095f82f()
{
	var_76bcdea7 = namespace_2f06d687::function_7387a40a("tunnel_turret_1");
	var_76bcdea7 thread function_927f3ae0(0.1);
	var_76bcdea7.var_62787ec9 = 30;
	var_76bcdea7 = namespace_2f06d687::function_7387a40a("tunnel_turret_2");
	var_76bcdea7 thread function_927f3ae0(0.5);
	var_76bcdea7.var_62787ec9 = 30;
}

/*
	Name: function_927f3ae0
	Namespace: namespace_bd91a0fd
	Checksum: 0x92B0F6BB
	Offset: 0x5668
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_927f3ae0(var_5232cb44)
{
	self namespace_37b990db::function_c8f12004(0, 0);
	var_5ddef2e5 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
	{
		var_5ddef2e5[var_c957f6b6].var_255b9315 = 1;
	}
	level.var_2fd26037.var_255b9315 = 1;
	level thread function_3d9b2dbc();
	level waittill("hash_1a6eba1f");
	var_5ddef2e5 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
	{
		var_5ddef2e5[var_c957f6b6].var_255b9315 = 0;
	}
	level.var_2fd26037.var_255b9315 = 0;
	wait(var_5232cb44);
	self function_dc8c8404();
}

/*
	Name: function_3d9b2dbc
	Namespace: namespace_bd91a0fd
	Checksum: 0xC8542712
	Offset: 0x57A8
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_3d9b2dbc()
{
	level endon("hash_f70290fd");
	while(1)
	{
		level waittill("hash_25ea191a");
		var_5ddef2e5 = function_3f10449f();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_5ddef2e5.size; var_c957f6b6++)
		{
			var_5ddef2e5[var_c957f6b6].var_255b9315 = 1;
		}
	}
}

/*
	Name: function_65e80b9e
	Namespace: namespace_bd91a0fd
	Checksum: 0x794FCD19
	Offset: 0x5838
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_65e80b9e()
{
	function_173d3769("close", 1);
	var_813b7ee8 = namespace_96fa87af::function_7387a40a("sp_truck_tarmac_enter_base");
	var_813b7ee8 thread function_1a72a604("nd_truck_tarmac_enter_base", 0);
	var_813b7ee8 function_c2931a36("evt_tunnel_truck_script_drive_lp");
	level waittill("hash_3bc05b4");
	var_813b7ee8 function_333fd8f0(0, 15, 15);
	var_813b7ee8 function_921a1574("evt_tunnel_truck_brake");
	var_813b7ee8 thread function_8677e162();
	level thread function_790e40ec();
	level waittill("hash_236f4ebe");
	var_813b7ee8 function_333fd8f0(20, 15, 15);
	var_813b7ee8 function_6ae7eead(20);
	var_813b7ee8 function_c2931a36("evt_tunnel_truck_script_drive_lp", 0.2);
	namespace_82b91a51::function_67520c6a(2, undefined, &function_173d3769, "open");
	level waittill("hash_bed7581c");
	function_173d3769("close");
}

/*
	Name: function_8677e162
	Namespace: namespace_bd91a0fd
	Checksum: 0x221C05A2
	Offset: 0x5A10
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_8677e162()
{
	self function_eaa69754(0.75);
	wait(0.25);
	self function_c2931a36("evt_tunnel_truck_script_idle_lp", 0.25);
}

/*
	Name: function_790e40ec
	Namespace: namespace_bd91a0fd
	Checksum: 0x5B121789
	Offset: 0x5A70
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_790e40ec()
{
	var_b8823447 = function_99201f25("tunnel_traffic_barrier", "targetname");
	var_ecbf6327 = var_b8823447[0];
	var_ecbf6327 function_921a1574("evt_tunnel_truck_trafficarm");
	var_ecbf6327 function_5613042d(60, 1.5, 0.5, 0.3);
	var_ecbf6327 waittill("hash_6654e4f4");
	level notify("hash_236f4ebe");
	level waittill("hash_a4ce8e72");
	var_ecbf6327 function_921a1574("evt_tunnel_truck_trafficarm");
	var_ecbf6327 function_5613042d(60 * -1, 1.5, 0.5, 0.3);
	var_ecbf6327 waittill("hash_6654e4f4");
}

/*
	Name: function_173d3769
	Namespace: namespace_bd91a0fd
	Checksum: 0x87795512
	Offset: 0x5BC0
	Size: 0x293
	Parameters: 2
	Flags: None
*/
function function_173d3769(var_d51654a4, var_abf03d83)
{
	if(!isdefined(var_abf03d83))
	{
		var_abf03d83 = 0;
	}
	var_3c301126 = function_6ada35ba("tunnel_vault_door_r", "targetname");
	var_280d5f68 = function_6ada35ba("tunnel_vault_door_l", "targetname");
	if(!var_abf03d83)
	{
		var_3c301126 function_921a1574("evt_tunnel_door_start");
		var_3c301126 function_c2931a36("evt_tunnel_door_loop", 1);
	}
	if(var_d51654a4 == "open")
	{
		if(var_abf03d83)
		{
			var_3c301126 function_21d0da55(90, 0.05);
			var_280d5f68 function_21d0da55(90 * -1, 0.05);
		}
		else
		{
			var_3c301126 function_21d0da55(90, 6, 1, 1);
			var_280d5f68 function_21d0da55(90 * -1, 6, 1, 1);
		}
	}
	else if(var_abf03d83)
	{
		var_3c301126 function_21d0da55(90 * -1, 0.05);
		var_280d5f68 function_21d0da55(90, 0.05);
	}
	else
	{
		var_3c301126 function_21d0da55(90 * -1, 6, 1, 1);
		var_280d5f68 function_21d0da55(90, 6, 1, 1);
	}
	var_3c301126 waittill("hash_6654e4f4");
	var_3c301126 function_eaa69754(0.5);
	var_3c301126 function_921a1574("evt_tunnel_door_stop");
}

/*
	Name: function_e8173f7f
	Namespace: namespace_bd91a0fd
	Checksum: 0x28FB498C
	Offset: 0x5E60
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_e8173f7f()
{
	level waittill("hash_81d6c615");
	var_98f0d423 = function_c20c2e8("start_through_take_out_guards", "script_aigroup");
	foreach(var_480743 in var_98f0d423)
	{
		if(function_5b49d38c(var_480743))
		{
			var_480743 function_dc8c8404();
		}
	}
}

/*
	Name: function_7f967b5b
	Namespace: namespace_bd91a0fd
	Checksum: 0x3375A590
	Offset: 0x5F48
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_7f967b5b()
{
	level namespace_cc27597::function_c35e6aab("cin_pro_04_01_takeout_vign_vault_doors");
	level waittill("hash_f199baa");
	level thread namespace_cc27597::function_43718187("cin_pro_04_01_takeout_vign_vault_doors");
	namespace_4dbf3ae3::function_1ab5ebec("close_security_door_trig");
	level namespace_cc27597::function_fcf56ab5("cin_pro_04_01_takeout_vign_vault_doors");
}

/*
	Name: function_f126566f
	Namespace: namespace_bd91a0fd
	Checksum: 0xA452BA64
	Offset: 0x5FD8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_f126566f()
{
	wait(2);
	level thread namespace_cc27597::function_c35e6aab("cin_pro_04_01_takeout_vign_truck_prisoners");
	wait(4);
	level thread namespace_cc27597::function_c35e6aab("cin_pro_04_02_takeout_vign_truck_unload");
	level namespace_ad23e503::function_1ab5ebec("start_tunnel_trucks");
	level thread namespace_cc27597::function_43718187("cin_pro_04_01_takeout_vign_truck_prisoners");
	wait(4);
	level thread namespace_cc27597::function_43718187("cin_pro_04_02_takeout_vign_truck_unload");
	level waittill("hash_81d6c615");
	namespace_cc27597::function_fcf56ab5("cin_pro_04_01_takeout_vign_truck_prisoners");
	namespace_cc27597::function_fcf56ab5("cin_pro_04_02_takeout_vign_truck_unload");
}

/*
	Name: function_6f98f3af
	Namespace: namespace_bd91a0fd
	Checksum: 0x360C9F7
	Offset: 0x60C8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_6f98f3af(var_c77d2837)
{
	level waittill("hash_1a725b50");
	wait(10);
	var_4c9c8550 = function_6ada35ba("pa_vox_security_cameras", "targetname");
	var_4c9c8550 namespace_71b8dba1::function_81141386("nrcp_emergency_protocol_0");
}

/*
	Name: function_e6ec4fe5
	Namespace: namespace_bd91a0fd
	Checksum: 0xF5F80212
	Offset: 0x6138
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_e6ec4fe5()
{
	var_dd4fa3f4 = namespace_2f06d687::function_7387a40a("balcony_guy1");
	var_dd4fa3f4 namespace_d84e54db::function_7bf590dd(1);
	var_dd4fa3f4 thread namespace_d84e54db::function_99e190ff(function_b4cb3503("tunnel_patrol_1", "targetname"));
	var_4f57132f = namespace_2f06d687::function_7387a40a("balcony_guy2");
	var_4f57132f namespace_d84e54db::function_7bf590dd(1);
	var_4f57132f thread namespace_d84e54db::function_99e190ff(function_b4cb3503("tunnel_patrol_2", "targetname"));
	namespace_4dbf3ae3::function_1ab5ebec("spawn_balcony_patrol");
	var_295498c6 = namespace_2f06d687::function_7387a40a("balcony_guy3");
	var_295498c6 namespace_d84e54db::function_7bf590dd(1);
	var_295498c6 thread namespace_d84e54db::function_99e190ff(function_b4cb3503("tunnel_patrol_3", "targetname"));
}

/*
	Name: function_21dd3be1
	Namespace: namespace_bd91a0fd
	Checksum: 0x31210D35
	Offset: 0x62B0
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_21dd3be1()
{
	var_e4f2f922 = function_6ada35ba("tunnel_keycard_door", "targetname");
	level thread namespace_2cb3876f::function_21f52196("keycard_doors", var_e4f2f922);
	var_b794c985 = function_6ada35ba("tunnel_vault_upperdoor_L", "targetname");
	var_43eea8e5 = function_298b8148(var_b794c985.var_6ab6f4fd);
	var_d5e2118 = function_6ada35ba("tunnel_vault_upperdoor_R", "targetname");
	var_cbe6253d = 52;
	var_33219fd6 = var_b794c985.var_722885f3 + var_43eea8e5 * var_cbe6253d * -1;
	var_b794c985 function_a96a2721(var_33219fd6, 0.1);
	var_dac99ad = var_d5e2118.var_722885f3 + var_43eea8e5 * var_cbe6253d;
	var_d5e2118 function_a96a2721(var_dac99ad, 0.1);
	level waittill("hash_2170cc63");
	function_37cbcf1a("evt_tunnel_upper_door", var_b794c985.var_722885f3);
	var_33219fd6 = var_b794c985.var_722885f3 + var_43eea8e5 * var_cbe6253d;
	var_b794c985 function_a96a2721(var_33219fd6, 1.5);
	var_dac99ad = var_d5e2118.var_722885f3 + var_43eea8e5 * var_cbe6253d * -1;
	var_d5e2118 function_a96a2721(var_dac99ad, 1.5);
	while(!namespace_2cb3876f::function_cdd726fb("keycard_doors"))
	{
		wait(0.5);
	}
	var_33219fd6 = var_b794c985.var_722885f3 + var_43eea8e5 * var_cbe6253d * -1;
	var_b794c985 function_a96a2721(var_33219fd6, 0.1);
	var_dac99ad = var_d5e2118.var_722885f3 + var_43eea8e5 * var_cbe6253d;
	var_d5e2118 function_a96a2721(var_dac99ad, 0.1);
}

