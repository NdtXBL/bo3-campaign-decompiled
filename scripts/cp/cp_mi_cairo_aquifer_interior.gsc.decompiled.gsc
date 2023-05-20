#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_e2cb8359;

/*
	Name: function_608c4683
	Namespace: namespace_e2cb8359
	Checksum: 0xA6C0236F
	Offset: 0xA20
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_608c4683()
{
	namespace_786319bb::function_75ab4ede(1);
	var_6b45b25e = namespace_84eb777e::function_eb16c4f5("hendricks_hangar");
	var_6b45b25e namespace_82b91a51::function_958c7633();
	var_6b45b25e.var_9a6e8567 = 1;
	var_6b45b25e.var_d8cc1a6d = 0.25;
	level.var_24223342 thread namespace_71b8dba1::function_81141386("hend_maretti_s_escaping_t_0");
	namespace_71e9cb84::function_74d6b22f("hide_sand_storm", 1);
	thread function_afb6fe67();
	thread function_a8f7f041();
	thread function_2fde871a();
	thread function_3a330f78();
}

/*
	Name: function_afb6fe67
	Namespace: namespace_e2cb8359
	Checksum: 0x10AE76FE
	Offset: 0xB28
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_afb6fe67()
{
	thread function_bd50ac83();
	namespace_82b91a51::function_67520c6a(5, undefined, &namespace_cc27597::function_c35e6aab, "cin_aqu_07_not_yourself_3rd_shot010");
	namespace_d5067552::function_347e835a("main_hangar_enemies");
	var_35ef0ec1 = namespace_d5067552::function_423eae50("main_hangar_enemies");
	namespace_d5067552::function_27bf2e8("main_hangar_enemies", function_b6b79a0(function_aaeec8c5(2, function_b6b79a0(var_35ef0ec1.size / 3))));
	thread namespace_786319bb::function_9f296d9f("extras_exposed");
	thread namespace_786319bb::function_9f296d9f("hendricks_move_up_hangar");
	namespace_82b91a51::function_67520c6a(1, undefined, &namespace_4dbf3ae3::function_42e87952, "hangar_enemies_exposed", "targetname");
	namespace_d5067552::function_72e3dd35("main_hangar_enemies");
	level.var_24223342.var_d8cc1a6d = 10;
	namespace_d5067552::function_72e3dd35("hangar_breach_extras");
	level namespace_ad23e503::function_74d6b22f("start_interior_breadcrumbs");
	namespace_4dbf3ae3::function_42e87952("hendricks_leave_hangar", "targetname");
	level.var_24223342 namespace_76d95162::function_d9f49fba(0);
	level.var_24223342.var_d8cc1a6d = 0.25;
}

/*
	Name: function_2fde871a
	Namespace: namespace_e2cb8359
	Checksum: 0x2FD97059
	Offset: 0xD30
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2fde871a()
{
	level namespace_ad23e503::function_43ac000b(function_84970cc4("start_interior_breadcrumbs", "chase_vo1"));
	namespace_d0ef8521::function_45d1556("start_interior_breadcrumbs");
}

/*
	Name: function_2fc2978c
	Namespace: namespace_e2cb8359
	Checksum: 0xACB8793D
	Offset: 0xD88
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_2fc2978c()
{
	var_2b309d3d = function_99201f25("spawn_manager", "classname");
	foreach(var_1109dfe1 in var_2b309d3d)
	{
		if(var_1109dfe1.var_4be20d44 === "pre_boss_enemies")
		{
			var_1109dfe1.var_85057f6d = 1.5;
		}
	}
}

/*
	Name: function_a4c59129
	Namespace: namespace_e2cb8359
	Checksum: 0x27AAC76
	Offset: 0xE60
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_a4c59129()
{
	namespace_82b91a51::function_958c7633(self);
	namespace_d84e54db::function_85668ce6(self);
	self namespace_d84e54db::function_ceb883cd("sprint", 1);
	self namespace_d84e54db::function_3c155012();
	namespace_4dbf3ae3::function_42e87952("promethius_flee_hangar", "targetname");
	self waittill("hash_41d1aaf0");
	self function_dc8c8404();
}

/*
	Name: function_bd50ac83
	Namespace: namespace_e2cb8359
	Checksum: 0xE6E19F7A
	Offset: 0xF18
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_bd50ac83()
{
	namespace_d5067552::function_bae40a28("hangar_breach_extras");
	namespace_d5067552::function_347e835a("hangar_breach_extras");
	namespace_d5067552::function_27bf2e8("hangar_breach_extras", 2);
	namespace_4dbf3ae3::function_42e87952("extras_exposed");
}

/*
	Name: function_3fd5eb17
	Namespace: namespace_e2cb8359
	Checksum: 0xEA546A42
	Offset: 0xF90
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_3fd5eb17()
{
	namespace_82b91a51::function_7e61de2b(0.25, "white");
	wait(0.25);
	namespace_82b91a51::function_593c2af4(2, "white");
}

/*
	Name: function_3a330f78
	Namespace: namespace_e2cb8359
	Checksum: 0x28AA47DC
	Offset: 0xFE8
	Size: 0x313
	Parameters: 0
	Flags: None
*/
function function_3a330f78()
{
	var_87942fa5 = function_99201f25("icy", "targetname");
	namespace_84970cc4::function_eaab05dc(var_87942fa5, &function_50ccee8d);
	level namespace_ad23e503::function_1ab5ebec("snow_vo");
	namespace_9f824288::function_5d2cdd99();
	level thread namespace_71b8dba1::function_a463d127("corv_let_your_mind_relax_2", undefined, "corvus");
	level namespace_ad23e503::function_1ab5ebec("flag_snow_room");
	if(isdefined(level.var_d08c6690))
	{
		level thread [[level.var_d08c6690]]();
	}
	namespace_80983c42::function_80983c42("amb_int_tank_room");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_786319bb::function_89eaa1b3, 1);
	wait(1);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_786319bb::function_716b5d66, 1);
	wait(5);
	level namespace_ad23e503::function_d3de6822("flag_snow_room");
	namespace_80983c42::function_593e8a39("amb_int_tank_room");
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_786319bb::function_89eaa1b3, 1);
	wait(1);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_786319bb::function_716b5d66, 0);
	level.var_24223342 namespace_76d95162::function_d9f49fba(1);
	level namespace_ad23e503::function_1ab5ebec("exit_round_room");
	level.var_24223342 namespace_76d95162::function_d9f49fba(0);
	level.var_24223342 namespace_d84e54db::function_b4f5e3b9(1);
	var_e27965fa = namespace_d5067552::function_423eae50("roundroom_allies");
	var_bc76eb91 = namespace_d5067552::function_423eae50("roundroom_enemies");
	var_35ef0ec1 = function_525ae497(var_e27965fa, var_bc76eb91, 1, 1);
	namespace_84970cc4::function_966ecb29(var_35ef0ec1, &namespace_786319bb::function_ce276271);
}

/*
	Name: function_1d5b05a
	Namespace: namespace_e2cb8359
	Checksum: 0x26F720B3
	Offset: 0x1308
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_1d5b05a(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	if(!var_74cd64bc)
	{
		namespace_786319bb::function_2085bf94("hideout_door", 1);
		namespace_786319bb::function_2085bf94("hideout_doors_closed", 1);
	}
	if(isdefined(level.var_5bfe1c70))
	{
		level thread [[level.var_5bfe1c70]]();
	}
	namespace_84eb777e::function_f67ca613(1);
	namespace_cc27597::function_43718187("cin_aqu_16_outro_3rd_sh010", level.var_24223342);
	level waittill("hash_a35499d1");
	level thread namespace_71a63eac::function_a1e074db();
	namespace_82b91a51::function_93831e79("post_hideout_igc");
}

/*
	Name: function_ff024877
	Namespace: namespace_e2cb8359
	Checksum: 0x9642F7C4
	Offset: 0x1400
	Size: 0x275
	Parameters: 0
	Flags: None
*/
function function_ff024877()
{
	thread namespace_786319bb::function_2085bf94("hideout_door", 0);
	thread namespace_786319bb::function_2085bf94("hideout_doors_closed", 0);
	thread namespace_84eb777e::function_e2d8799f(1);
	thread namespace_84eb777e::function_5d32874c(1);
	thread function_397e963e();
	namespace_1d795d47::function_be8adfb8("hideout");
	namespace_9f824288::function_5d2cdd99();
	namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_5a7dd25d, 0.7);
	thread function_291b34c9();
	thread function_c48c4f99();
	thread function_25357c2e();
	thread function_3a77d1bf();
	var_8a6d11 = function_246476fd(0, "cin_aqu_07_10_escape_vign_run_hendricks_a", "cin_aqu_07_10_escape_vign_wait_hendricks_a", "cin_aqu_07_10_escape_vign_wait_loop_hendricks_a", "run_out_cinematic1", 1, "hend_runout_a");
	var_8a6d11 = function_246476fd(var_8a6d11, "cin_aqu_07_10_escape_vign_run_hendricks_b", "cin_aqu_07_10_escape_vign_wait_hendricks_b", "cin_aqu_07_10_escape_vign_wait_loop_hendricks_a", "run_out_cinematic1", 1, "hend_runout_b");
	var_8a6d11 = function_246476fd(var_8a6d11, "cin_aqu_07_10_escape_vign_run_hendricks_c", "cin_aqu_07_10_escape_vign_wait_hendricks_c", "cin_aqu_07_10_escape_vign_wait_loop_hendricks_a", "run_out_cinematic1", 1, "hend_runout_c");
	var_8a6d11 = function_246476fd(var_8a6d11, "cin_aqu_07_10_escape_vign_run_hendricks_d", "cin_aqu_07_10_escape_vign_wait_hendricks_d", "cin_aqu_07_10_escape_vign_wait_loop_hendricks_a", "run_out_cinematic2", 1, "hend_runout_d");
	if(var_8a6d11)
	{
		var_8a6d11 = function_246476fd(var_8a6d11, "cin_aqu_07_10_escape_vign_run_hendricks_e", undefined, undefined, "run_out_cinematic2", 0, undefined);
	}
	level.var_24223342.var_6f71f124 = undefined;
}

/*
	Name: function_3a77d1bf
	Namespace: namespace_e2cb8359
	Checksum: 0x541D4435
	Offset: 0x1680
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_3a77d1bf()
{
	var_14b42b8a = function_6ada35ba("run_out_cinematic2", "targetname");
	var_14b42b8a namespace_cc27597::function_c35e6aab("cin_aqu_07_10_escape_vign_crush_death_ally");
	level waittill("hash_d3fa654c");
	thread namespace_786319bb::function_2085bf94("ceiling_ac_unit", 1);
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_07_10_escape_vign_crush_death_ally");
}

/*
	Name: function_64386226
	Namespace: namespace_e2cb8359
	Checksum: 0xC5A082EF
	Offset: 0x1720
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_64386226()
{
	level endon("hash_a384e425");
	while(1)
	{
		level waittill("hash_d3fa654c");
		function_2e4b8c78("COLLAPSE START");
	}
}

/*
	Name: function_291b34c9
	Namespace: namespace_e2cb8359
	Checksum: 0x2DFEDA84
	Offset: 0x1768
	Size: 0x277
	Parameters: 0
	Flags: None
*/
function function_291b34c9()
{
	level endon("hash_a384e425");
	while(1)
	{
		level waittill("hash_cac38b31");
		function_9cf04c2e(0.5, 2, level.var_24223342.var_722885f3, 1000);
		level thread namespace_1d1d22be::function_5d0cee98();
		var_e817acd1 = function_84970cc4("pb_aqu_07_10_escape_vign_stagger_l_player", "pb_aqu_07_10_escape_vign_stagger_r_player");
		namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_5a7dd25d, 0.5);
		namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_6fa6b424, 0);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_ccd2da90 = namespace_84970cc4::function_47d18840(var_e817acd1);
			var_5dc5e20a thread namespace_1fb6a2e5::function_43718187(var_ccd2da90, var_5dc5e20a.var_722885f3, var_5dc5e20a.var_6ab6f4fd, 1, 0, 0, 0);
		}
		namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_5a7dd25d, 0.2);
		wait(0.8);
		namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_5a7dd25d, 0.7);
		namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_6fa6b424, 1);
	}
}

/*
	Name: function_c48c4f99
	Namespace: namespace_e2cb8359
	Checksum: 0x3C046076
	Offset: 0x19E8
	Size: 0x1E9
	Parameters: 0
	Flags: None
*/
function function_c48c4f99()
{
	level endon("hash_a384e425");
	while(1)
	{
		level namespace_82b91a51::function_6729b6ba(function_72a94f05(2, 5), "minishake", "shake");
		var_5d74e4a2 = level namespace_82b91a51::function_45ce26d("shake", "minishake");
		if(var_5d74e4a2 == "minishake")
		{
			namespace_80983c42::function_80983c42("cin_runout_rattles");
			function_9cf04c2e(function_72a94f05(0.3, 0.4), 1.25, level.var_24223342.var_722885f3, 1000);
			level thread namespace_1d1d22be::function_f8835fe9();
			namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_5a7dd25d, 0.5);
			namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_6fa6b424, 0);
			wait(0.25);
			namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_5a7dd25d, 0.7);
			namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_6fa6b424, 1);
		}
		else
		{
			wait(3);
		}
	}
}

/*
	Name: function_e916ac0e
	Namespace: namespace_e2cb8359
	Checksum: 0x2E4FB903
	Offset: 0x1BE0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e916ac0e()
{
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_kane_we_re_uploadin_0");
	level namespace_71b8dba1::function_a463d127("kane_got_it_good_work_0");
	level namespace_71b8dba1::function_a463d127("kane_the_nrc_have_capture_0");
}

/*
	Name: function_397e963e
	Namespace: namespace_e2cb8359
	Checksum: 0xB2F4EC3B
	Offset: 0x1C50
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_397e963e()
{
	level thread namespace_1d1d22be::function_b01c9f8();
	level namespace_71b8dba1::function_a463d127("kane_the_nrc_have_launche_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_don_t_need_to_tell_u_1");
}

/*
	Name: function_246476fd
	Namespace: namespace_e2cb8359
	Checksum: 0x1D736380
	Offset: 0x1CB8
	Size: 0x291
	Parameters: 7
	Flags: None
*/
function function_246476fd(var_8a6d11, var_f17304b7, var_75422735, var_b6b983f4, var_426bda58, var_2d3b4a98, var_6bf6eac8)
{
	var_14b42b8a = function_6ada35ba(var_426bda58, "targetname");
	var_482ba61c = 1.2;
	level.var_24223342.var_6f71f124 = var_482ba61c;
	if(var_8a6d11)
	{
		var_14b42b8a namespace_cc27597::function_c35e6aab(var_f17304b7, level.var_24223342);
		level waittill("hash_20aa8e12");
	}
	namespace_cc27597::function_8f9f34e0(var_f17304b7, &function_8ed6a39f, "done");
	var_14b42b8a thread namespace_cc27597::function_43718187(var_f17304b7, level.var_24223342);
	var_5d74e4a2 = level namespace_82b91a51::function_45ce26d(var_6bf6eac8, "splice", "run_scene_done");
	if(isdefined(var_75422735) && isdefined(var_b6b983f4) && isdefined(var_6bf6eac8) && (var_5d74e4a2 == "splice" || var_5d74e4a2 == "run_scene_done") && !level namespace_ad23e503::function_7922262b(var_6bf6eac8))
	{
		var_14b42b8a namespace_cc27597::function_fcf56ab5(var_f17304b7, 0);
		var_14b42b8a namespace_cc27597::function_43718187(var_75422735, level.var_24223342);
		level.var_24223342.var_6f71f124 = undefined;
		if(var_2d3b4a98)
		{
			level.var_24223342 thread namespace_cc27597::function_43718187(var_b6b983f4, level.var_24223342);
		}
		else
		{
			var_14b42b8a thread namespace_cc27597::function_43718187(var_b6b983f4, level.var_24223342);
		}
		level namespace_ad23e503::function_1ab5ebec(var_6bf6eac8);
		level.var_24223342 function_470f7e4c();
		return 1;
	}
	else
	{
		var_14b42b8a waittill("hash_accb9cfa");
		return 0;
	}
}

/*
	Name: function_8ed6a39f
	Namespace: namespace_e2cb8359
	Checksum: 0xF132EA5C
	Offset: 0x1F58
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_8ed6a39f(var_c77d2837)
{
	level notify("hash_81d7addc");
}

/*
	Name: function_a8f7f041
	Namespace: namespace_e2cb8359
	Checksum: 0x27FCAFD7
	Offset: 0x1F80
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_a8f7f041()
{
	level namespace_ad23e503::function_1ab5ebec("chase_vo1");
	namespace_9f824288::function_5d2cdd99();
	level.var_24223342 thread namespace_71b8dba1::function_81141386("hend_maretti_went_this_wa_0");
	level namespace_ad23e503::function_1ab5ebec("chase_vo2");
	level.var_24223342 thread namespace_71b8dba1::function_81141386("hend_move_faster_we_can_0");
	level namespace_ad23e503::function_1ab5ebec("chase_vo3");
	level namespace_71b8dba1::function_13b3b16a("plyr_hendricks_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_slow_down_0", 2);
	level namespace_71b8dba1::function_13b3b16a("plyr_hey_listen_to_me_0", 2);
}

/*
	Name: function_25357c2e
	Namespace: namespace_e2cb8359
	Checksum: 0xA760B906
	Offset: 0x20A0
	Size: 0x34D
	Parameters: 0
	Flags: None
*/
function function_25357c2e()
{
	var_296988d3 = [];
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!function_6e2770d8(var_296988d3))
	{
		var_296988d3 = function_84970cc4(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "plyr_we_need_to_get_back_0";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!function_6e2770d8(var_296988d3))
	{
		var_296988d3 = function_84970cc4(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "kane_you_need_to_get_out_0";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!function_6e2770d8(var_296988d3))
	{
		var_296988d3 = function_84970cc4(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "hend_keep_moving_this_pl_0";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!function_6e2770d8(var_296988d3))
	{
		var_296988d3 = function_84970cc4(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "skip";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!function_6e2770d8(var_296988d3))
	{
		var_296988d3 = function_84970cc4(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "hend_watch_out_1";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!function_6e2770d8(var_296988d3))
	{
		var_296988d3 = function_84970cc4(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "hend_keep_up_0";
	for(var_c957f6b6 = 0; var_c957f6b6 < var_296988d3.size; var_c957f6b6++)
	{
		level waittill("hash_cac38b31");
		wait(2);
		if(var_296988d3[var_c957f6b6] != "skip")
		{
			if(var_c957f6b6 == 0)
			{
				namespace_71b8dba1::function_13b3b16a(var_296988d3[var_c957f6b6]);
				continue;
			}
			if(var_c957f6b6 == 1)
			{
				level namespace_71b8dba1::function_a463d127(var_296988d3[var_c957f6b6]);
				var_c957f6b6++;
				level.var_24223342 namespace_71b8dba1::function_81141386(var_296988d3[var_c957f6b6]);
				continue;
			}
			level.var_24223342 namespace_71b8dba1::function_81141386(var_296988d3[var_c957f6b6]);
		}
	}
}

