#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_accolades;
#using scripts\cp\cp_mi_cairo_aquifer_aitest;
#using scripts\cp\cp_mi_cairo_aquifer_ambience;
#using scripts\cp\cp_mi_cairo_aquifer_boss;
#using scripts\cp\cp_mi_cairo_aquifer_fx;
#using scripts\cp\cp_mi_cairo_aquifer_interior;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\cp_mi_cairo_aquifer_water_room;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\_oob;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_84eb777e;

/*
	Name: function_5025ad5
	Namespace: namespace_84eb777e
	Checksum: 0x3441791B
	Offset: 0x2BC8
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_5025ad5()
{
	/#
		level notify("hash_17a0d3bd");
		level endon("hash_17a0d3bd");
		wait(8);
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			level.var_f2898bd7 = "Dev Block strings are not supported";
			var_5dc5e20a notify("hash_7b06f432");
		}
	#/
}

/*
	Name: function_52b34f9f
	Namespace: namespace_84eb777e
	Checksum: 0x7CBA6699
	Offset: 0x2C90
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_52b34f9f()
{
	level namespace_71b8dba1::function_a463d127("khal_the_nrc_has_already_0", 0);
	level namespace_71b8dba1::function_a463d127("kane_copy_that_khalil_w_0", 0.2);
	level namespace_71b8dba1::function_a463d127("hend_what_about_taylor_1", 0.15);
	level namespace_71b8dba1::function_13b3b16a("plyr_one_thing_at_a_time_0", 0.2);
	level namespace_ad23e503::function_74d6b22f("intro_dialog_finished");
}

/*
	Name: function_419ee614
	Namespace: namespace_84eb777e
	Checksum: 0x4AF9DB32
	Offset: 0x2D60
	Size: 0x2AB
	Parameters: 2
	Flags: None
*/
function function_419ee614(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "scripted";
	namespace_786319bb::function_61b71c43();
	var_24223342 = function_6ada35ba("hendricks_intro", "targetname") namespace_2f06d687::function_9b7fda5e(1);
	namespace_d7916d65::function_c32ba481();
	thread namespace_786319bb::function_2c69b4a0(var_24223342);
	thread namespace_786319bb::function_fe17c18();
	namespace_d0ef8521::function_74d6b22f("cp_level_aquifer_locate_aquifer");
	thread function_52b34f9f();
	level namespace_ad23e503::function_1ab5ebec("intro_chryon_done");
	wait(0.5);
	if(isdefined(level.var_157b8ef6))
	{
		level thread [[level.var_157b8ef6]]();
	}
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_c1bd6415("oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	thread function_61034146(1);
	wait(0.5);
	level namespace_ad23e503::function_1ab5ebec("intro_finished");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
	thread namespace_786319bb::function_c1bd6415("oob_trig", 1);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_61034146
	Namespace: namespace_84eb777e
	Checksum: 0xF8E47ADD
	Offset: 0x3018
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_61034146(var_2e076071)
{
	if(var_2e076071)
	{
		namespace_80983c42::function_80983c42("amb_ext_sand_vtol");
		namespace_80983c42::function_80983c42("amb_ext_deck_fire01");
		namespace_80983c42::function_80983c42("amb_ext_deck_fire02");
		namespace_80983c42::function_80983c42("amb_ext_deck_fire03");
		namespace_80983c42::function_80983c42("amb_ext_deck_fire04");
		namespace_80983c42::function_80983c42("amb_ext_ground");
		namespace_80983c42::function_80983c42("amb_ext_vista_war");
		namespace_80983c42::function_80983c42("amb_ext_lights");
		namespace_80983c42::function_80983c42("amb_ext_underwater");
	}
	else
	{
		namespace_80983c42::function_593e8a39("amb_ext_sand_vtol");
		namespace_80983c42::function_593e8a39("amb_ext_deck_fire01");
		namespace_80983c42::function_593e8a39("amb_ext_deck_fire02");
		namespace_80983c42::function_593e8a39("amb_ext_deck_fire03");
		namespace_80983c42::function_593e8a39("amb_ext_deck_fire04");
		namespace_80983c42::function_593e8a39("amb_ext_ground");
		namespace_80983c42::function_593e8a39("amb_ext_vista_war");
		namespace_80983c42::function_593e8a39("amb_ext_lights");
		namespace_80983c42::function_593e8a39("amb_ext_underwater");
	}
}

/*
	Name: function_b3ed487d
	Namespace: namespace_84eb777e
	Checksum: 0x59D23404
	Offset: 0x31F0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_b3ed487d(var_2e076071)
{
	if(var_2e076071)
	{
		namespace_80983c42::function_80983c42("amb_underwater");
	}
	else
	{
		namespace_80983c42::function_dfc351df("amb_underwater");
	}
}

/*
	Name: function_e2d8799f
	Namespace: namespace_84eb777e
	Checksum: 0x5852A447
	Offset: 0x3248
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_e2d8799f(var_2e076071)
{
	if(var_2e076071)
	{
		namespace_80983c42::function_80983c42("amb_vtol_breach");
	}
	else
	{
		namespace_80983c42::function_593e8a39("amb_vtol_breach");
	}
}

/*
	Name: function_5d32874c
	Namespace: namespace_84eb777e
	Checksum: 0x138E1C1C
	Offset: 0x32A0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_5d32874c(var_2e076071)
{
	if(var_2e076071)
	{
		namespace_80983c42::function_80983c42("amb_int_post_breach");
	}
	else
	{
		namespace_80983c42::function_593e8a39("amb_int_post_breach");
	}
}

/*
	Name: function_f67ca613
	Namespace: namespace_84eb777e
	Checksum: 0xFD5FA569
	Offset: 0x32F8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_f67ca613(var_2e076071)
{
	if(var_2e076071)
	{
		namespace_80983c42::function_80983c42("amb_int_runout");
	}
	else
	{
		namespace_80983c42::function_593e8a39("amb_int_runout");
	}
}

/*
	Name: function_1e131fea
	Namespace: namespace_84eb777e
	Checksum: 0x9419C5F1
	Offset: 0x3350
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_1e131fea(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_aqu_war_airassault_bundle");
}

/*
	Name: function_ef5a929e
	Namespace: namespace_84eb777e
	Checksum: 0xA1EB8498
	Offset: 0x33A8
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_ef5a929e(var_5d686f5c)
{
	if(!isdefined(level.var_c8595f3e) && var_5d686f5c)
	{
		return;
	}
	var_f521672b = "v_aqu_01_10_intro_1st_flyin_player" + self.var_1e9fba3;
	var_da5db022 = function_e1c7a0c8(var_f521672b);
	self namespace_786319bb::function_3d7bb92e();
	self namespace_6ece97b7::function_113a0740(1);
	if(var_5d686f5c)
	{
		var_31bd831a = GetTime() - level.var_c8595f3e / 1000;
		var_5e1f5b2 = var_31bd831a / var_da5db022;
		var_94db6e7c = namespace_d73b9283::function_31931862(var_5e1f5b2, 0, 0.45);
	}
	else
	{
		var_94db6e7c = 0;
	}
	var_71824009 = function_6ada35ba("intro_scene", "targetname");
	self namespace_786319bb::function_d683f26a();
	self.var_8fedf36c thread namespace_1fb6a2e5::function_43718187("v_aqu_01_10_intro_1st_flyin_player" + self.var_1e9fba3, var_71824009, undefined, 1, 0, 0, 0, var_94db6e7c);
	thread namespace_786319bb::function_b7cf4d2d(self);
	self thread namespace_786319bb::function_af376a0e("v_aqu_01_10_intro_1st_flyin_player" + self.var_1e9fba3, self.var_1e9fba3 - 1, "v_aqu_dogfight_intro_enemy" + self.var_1e9fba3, "intro_dogfight_global_active");
}

/*
	Name: function_c28ce61e
	Namespace: namespace_84eb777e
	Checksum: 0x2B01440F
	Offset: 0x35B0
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_c28ce61e(var_60db70fa)
{
	wait(var_60db70fa);
	level namespace_ad23e503::function_9d134160("dogfighting");
	level namespace_957e94ce::function_9d134160("dogfight_ending");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a notify("hash_b4a5f622");
	}
}

/*
	Name: function_9239cf5c
	Namespace: namespace_84eb777e
	Checksum: 0x76575DEE
	Offset: 0x3688
	Size: 0x283
	Parameters: 2
	Flags: None
*/
function function_9239cf5c(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "scripted";
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread function_5025ad5();
	if(var_74cd64bc)
	{
		thread function_61034146(1);
		namespace_d7916d65::function_a2995f22();
	}
	level namespace_ad23e503::function_1ab5ebec("dogfighting");
	wait(50);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_3dca6783) && var_5dc5e20a.var_3dca6783 > 0)
		{
			break;
		}
		namespace_82b91a51::function_207f8667(&"CP_MI_CAIRO_AQUIFER_VTOL_DOGFIGHT_FAIL", &"CP_MI_CAIRO_AQUIFER_VTOL_DOGFIGHT_FAIL_HINT");
		return;
	}
	level notify("hash_982117a3");
	wait(3);
	level namespace_71b8dba1::function_a463d127("hend_we_re_taking_heavy_f_1", 0.25, "dni");
	level namespace_957e94ce::function_74d6b22f("dogfight_ending");
	level namespace_ad23e503::function_74d6b22f("intro_dogfight_global_active");
	level thread namespace_71b8dba1::function_a463d127("kane_copy_that_we_re_cle_0", 0, "dni");
	var_60db70fa = 10;
	level thread function_c28ce61e(var_60db70fa);
	level namespace_82b91a51::function_9fcf3cd8(var_60db70fa, "dogfight_finished");
	wait(1);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_b3635282
	Namespace: namespace_84eb777e
	Checksum: 0xA94783C2
	Offset: 0x3918
	Size: 0x93
	Parameters: 4
	Flags: None
*/
function function_b3635282(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_10_intro_1st_flyin_main");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_10_intro_3rd_flyin_main");
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_locate_aquifer");
	}
}

/*
	Name: function_3230f09a
	Namespace: namespace_84eb777e
	Checksum: 0x2892B9CB
	Offset: 0x39B8
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_3230f09a(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_74d6b22f("level_long_fly_in_completed");
	level namespace_ad23e503::function_74d6b22f("inside_aquifer");
	level namespace_ad23e503::function_c35e6aab("vtol_display_target_distance", 1);
	thread function_61034146(1);
	for(var_c957f6b6 = 1; var_c957f6b6 <= 4; var_c957f6b6++)
	{
		namespace_786319bb::function_1215f9e4(var_c957f6b6);
	}
	thread namespace_786319bb::function_c1bd6415("oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	level namespace_ad23e503::function_1ab5ebec("player_active_in_level");
	namespace_786319bb::function_465b0eba();
	thread namespace_786319bb::function_dbe3d86f();
}

/*
	Name: function_a02afda4
	Namespace: namespace_84eb777e
	Checksum: 0x7B736F3
	Offset: 0x3BB8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_a02afda4(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_bfb165f3
	Namespace: namespace_84eb777e
	Checksum: 0x1C6B2D05
	Offset: 0x3BE8
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_bfb165f3(var_6b00ee7)
{
	/#
		self endon("hash_128f8789");
		var_d900369a = (1, 1, 1);
		var_982bfcf2 = 12;
		while(1)
		{
			function_8f3e0f73(self.var_722885f3, var_6b00ee7, var_d900369a, 1, var_982bfcf2);
			wait(0.05);
		}
	#/
}

/*
	Name: function_457fd4b
	Namespace: namespace_84eb777e
	Checksum: 0x6836B015
	Offset: 0x3C68
	Size: 0xFB
	Parameters: 4
	Flags: None
*/
function function_457fd4b(var_4458affc, var_56fd354c, var_a3d46ee4, var_d5639cb)
{
	var_a3d46ee4 waittill("hash_128f8789");
	level namespace_ad23e503::function_74d6b22f("can_spawn_hunters");
	namespace_786319bb::function_7aa64289(var_56fd354c.var_722885f3);
	if(function_85e4c3b3(var_a3d46ee4))
	{
		function_37cbcf1a("evt_vehicle_explosion_lyr", var_a3d46ee4.var_722885f3);
	}
	function_5ec99c19(var_4458affc, var_56fd354c, 0);
	level notify(var_d5639cb);
	wait(20);
	if(isdefined(var_56fd354c))
	{
		var_56fd354c function_dc8c8404();
	}
}

/*
	Name: function_cbc6522f
	Namespace: namespace_84eb777e
	Checksum: 0x25AB6F7E
	Offset: 0x3D70
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_cbc6522f()
{
	/#
		wait(8);
		var_33d3c892 = level.var_79168bae.size;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_33d3c892; var_c957f6b6++)
		{
			wait(20 / var_33d3c892);
			level.var_79168bae[var_c957f6b6] function_dc8c8404();
		}
	#/
}

/*
	Name: function_9a0a7c64
	Namespace: namespace_84eb777e
	Checksum: 0x34033ACD
	Offset: 0x3DF8
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_9a0a7c64(var_dc822a23)
{
	if(!(isdefined(var_dc822a23) && var_dc822a23))
	{
		level namespace_957e94ce::function_d3de6822("dogfight_ending");
	}
	level namespace_71b8dba1::function_a463d127("hend_alright_squad_we_ne_1", 2);
	level namespace_957e94ce::function_d266a8b4(10, "common_defense_objectives_complete");
	if(level.var_153e45b8 == 0)
	{
		level namespace_71b8dba1::function_a463d127("hend_hit_those_quad_units_0", 2);
	}
	level namespace_957e94ce::function_1ab5ebec("common_defense_objectives_complete");
	level namespace_71b8dba1::function_a463d127("kane_good_job_khalil_ai_0", 1);
	level namespace_71b8dba1::function_a463d127("khal_thanks_for_the_assis_0", 1);
	level namespace_71b8dba1::function_a463d127("plyr_solid_copy_we_re_on_0", 1);
	level namespace_71b8dba1::function_a463d127("hend_enemy_comms_this_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_we_ll_find_em_just_0", 1);
	level notify("hash_a3351a62");
}

/*
	Name: function_de74737
	Namespace: namespace_84eb777e
	Checksum: 0x9FE11CA4
	Offset: 0x3F80
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_de74737(var_4be20d44)
{
	var_d8e7bbc = function_6ada35ba(var_4be20d44, "targetname");
	var_ab1f9ea1 = var_d8e7bbc namespace_2f06d687::function_9b7fda5e(1, undefined, undefined, undefined, 1);
	return var_ab1f9ea1;
}

/*
	Name: function_a45989aa
	Namespace: namespace_84eb777e
	Checksum: 0x387FFE3A
	Offset: 0x3FF8
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function function_a45989aa(var_a87ad6ce)
{
	var_a3d46ee4 = function_6ada35ba(var_a87ad6ce, "targetname");
	if(isdefined(var_a3d46ee4) && function_eddad593(var_a3d46ee4))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_f5924bbd
	Namespace: namespace_84eb777e
	Checksum: 0xC739B447
	Offset: 0x4068
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_f5924bbd()
{
	self waittill("hash_128f8789", var_677b3e78);
	if(isdefined(var_677b3e78))
	{
		var_2c3a4ffd = function_9b7fda5e("script_origin", self.var_722885f3);
		var_2c3a4ffd endon("hash_128f8789");
		var_2c0ee386 = function_bdcdc423(var_677b3e78.var_722885f3 - var_2c3a4ffd.var_722885f3);
		var_2c0ee386 = (function_64dbcbf2(var_2c0ee386[0]), var_2c0ee386[1], 0);
		var_2c3a4ffd.var_6ab6f4fd = var_2c0ee386;
		var_2c3a4ffd namespace_cc27597::function_43718187("p7_fxanim_cp_aqu_smoke_raven");
		wait(0.5);
		var_2c3a4ffd function_dc8c8404();
	}
}

/*
	Name: function_f4ecd13f
	Namespace: namespace_84eb777e
	Checksum: 0x43850DC2
	Offset: 0x4188
	Size: 0x4A9
	Parameters: 6
	Flags: None
*/
function function_f4ecd13f(var_3ce30dc, var_2b4368ec, var_c91af2ba, var_d5639cb, var_396d9d43, var_a4981390)
{
	level.var_79168bae = [];
	var_74952a22 = 1;
	level namespace_957e94ce::function_9d134160("common_defense_objectives_complete");
	namespace_786319bb::function_25207b76();
	while(function_a45989aa(var_3ce30dc + var_74952a22))
	{
		var_e78c0153 = function_de74737(var_3ce30dc + var_74952a22);
		var_e78c0153.var_c2fc9418 = 0;
		level.var_79168bae[level.var_79168bae.size] = var_e78c0153;
		if(isdefined(var_e78c0153.var_a6216360) && var_e78c0153.var_a6216360 == "rocketpod")
		{
			var_e78c0153.var_de9eba31 = 4;
			var_e78c0153 namespace_3fc75f50::function_dd8d3882();
			namespace_d0ef8521::function_66c6f97b("cp_quadtank_rocket_icon", var_e78c0153);
			var_e78c0153 thread function_f5924bbd();
			var_e78c0153 thread namespace_786319bb::function_68714b99();
		}
		var_74952a22++;
		namespace_82b91a51::function_76f13293();
	}
	thread namespace_786319bb::function_6e0553f9();
	if(isdefined(var_396d9d43) && var_396d9d43)
	{
		return;
	}
	if(level.var_79168bae.size == 0)
	{
		wait(0.5);
		level namespace_957e94ce::function_74d6b22f("common_defense_objectives_complete");
		return;
	}
	level.var_153e45b8 = 0;
	var_a916cf26 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_79168bae.size; var_c957f6b6++)
	{
		var_a916cf26[var_c957f6b6] = level.var_79168bae[var_c957f6b6];
	}
	if(isdefined(var_a4981390))
	{
		namespace_ad23e503::function_1ab5ebec(var_a4981390);
	}
	function_4d816f2c(var_2b4368ec);
	function_4d816f2c(var_c91af2ba, var_a916cf26);
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_79168bae.size; var_c957f6b6++)
	{
		thread function_457fd4b(var_c91af2ba, var_a916cf26[var_c957f6b6], level.var_79168bae[var_c957f6b6], var_d5639cb);
	}
	wait(0.05);
	var_b8a196f4 = level.var_79168bae.size;
	var_3a3bf933 = [];
	var_3a3bf933[var_3a3bf933.size] = "hend_keep_hitting_them_w_1";
	var_3a3bf933[var_3a3bf933.size] = "kane_that_s_another_one_d_0";
	var_3a3bf933[var_3a3bf933.size] = "hend_target_down_2";
	var_3a3bf933[var_3a3bf933.size] = "kane_good_kill_keep_it_0";
	var_3a3bf933[var_3a3bf933.size] = "hend_he_s_not_coming_back_0";
	while(level.var_153e45b8 < var_b8a196f4)
	{
		level waittill(var_d5639cb);
		level.var_153e45b8++;
		if(var_b8a196f4 - level.var_153e45b8 == 1)
		{
			level thread namespace_71b8dba1::function_a463d127("hend_only_one_more_left_0");
		}
		else if(level.var_153e45b8 == 1)
		{
			level thread namespace_71b8dba1::function_a463d127("hend_one_down_1");
		}
		else if(var_b8a196f4 - level.var_153e45b8 > 1)
		{
			level thread namespace_71b8dba1::function_a463d127(var_3a3bf933[function_26299103(var_3a3bf933.size)]);
		}
	}
	level namespace_957e94ce::function_74d6b22f("common_defense_objectives_complete");
	level notify("hash_194eb1ad");
}

/*
	Name: function_4c421c48
	Namespace: namespace_84eb777e
	Checksum: 0x40A51DB0
	Offset: 0x4640
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_4c421c48(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	thread function_61034146(1);
	namespace_786319bb::function_beb1031a();
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_77fde091(0);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_eb387afa
	Namespace: namespace_84eb777e
	Checksum: 0x1C421C8B
	Offset: 0x4780
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_eb387afa(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_e57c5192
	Namespace: namespace_84eb777e
	Checksum: 0x13B8C696
	Offset: 0x47B0
	Size: 0x27B
	Parameters: 2
	Flags: None
*/
function function_e57c5192(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	namespace_1d1d22be::function_de37a122();
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	thread function_9a0a7c64(var_74cd64bc);
	level thread namespace_71a63eac::function_bdb99f05();
	thread function_61034146(1);
	thread namespace_4a128b5f::function_25dcb860();
	thread namespace_786319bb::function_96450f49("hen_def_front_", 0);
	var_d5639cb = "target_down";
	thread function_f4ecd13f("quadtank_obj_", "cp_level_aquifer_destroy_defenses", "cp_level_aquifer_destroyme", var_d5639cb);
	wait(0.1);
	namespace_786319bb::function_465b0eba();
	if(isdefined(level.var_9510693a))
	{
		level thread [[level.var_9510693a]]();
	}
	level namespace_957e94ce::function_1ab5ebec("common_defense_objectives_complete");
	level waittill("hash_a3351a62");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_676b4c2c
	Namespace: namespace_84eb777e
	Checksum: 0x37B65F3D
	Offset: 0x4A38
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_676b4c2c(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_destroy_defenses");
	}
}

/*
	Name: function_7f764399
	Namespace: namespace_84eb777e
	Checksum: 0x714E8625
	Offset: 0x4A88
	Size: 0x195
	Parameters: 3
	Flags: None
*/
function function_7f764399(var_3e94206a, var_a3d46ee4, var_f8456b37)
{
	if(!isdefined(var_a3d46ee4))
	{
		return;
	}
	var_35ef0ec1 = [];
	if(var_3e94206a == "allies")
	{
		var_35ef0ec1 = level.var_2395e945;
	}
	else
	{
		var_35ef0ec1 = function_b8494651(var_3e94206a);
	}
	var_5d74e4a2 = [];
	if(!isdefined(var_f8456b37))
	{
		var_f8456b37 = 256;
	}
	var_35ef0ec1 = function_f926d8e8(var_35ef0ec1, var_a3d46ee4.var_722885f3, 1, 16, var_f8456b37);
	foreach(var_643a4c5 in var_35ef0ec1)
	{
		if(!isdefined(var_643a4c5) || !function_5b49d38c(var_643a4c5))
		{
			continue;
		}
		if(function_85e4c3b3(var_643a4c5))
		{
			continue;
		}
		var_5d74e4a2[var_5d74e4a2.size] = var_643a4c5;
	}
	return var_5d74e4a2;
}

/*
	Name: function_10d2d1c3
	Namespace: namespace_84eb777e
	Checksum: 0x5BDC48AE
	Offset: 0x4C28
	Size: 0x2CB
	Parameters: 4
	Flags: None
*/
function function_10d2d1c3(var_4458affc, var_56fd354c, var_a3d46ee4, var_d5639cb)
{
	var_eae60027 = 1 + level.var_2395e945.size - 1 * 0.5;
	var_30e0b999 = 80000;
	var_f721d9a5 = GetTime();
	if(level.var_79481939)
	{
		if(level.var_79481939 > 1)
		{
			var_30e0b999 = level.var_79481939;
		}
		else
		{
			var_30e0b999 = 0;
		}
	}
	var_ce0179c6 = var_30e0b999;
	var_dfd71aec = namespace_d0ef8521::function_e95d8ccb(var_4458affc, var_56fd354c);
	while(var_30e0b999 > 0)
	{
		var_9966222c = function_7f764399("allies", var_a3d46ee4, level.var_3fe6078c);
		if(var_9966222c.size > 0)
		{
			var_30e0b999 = var_30e0b999 - 50;
		}
		var_a40ea223 = 1 - var_30e0b999 / var_ce0179c6;
		var_a3d46ee4.var_a220f04a = var_a40ea223 * 100;
		function_2ac014c2(var_dfd71aec, var_a40ea223);
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a namespace_71e9cb84::function_cc4d5165("hackUpload.percent", var_a40ea223);
		}
		wait(0.05);
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_cc4d5165("hackUpload.percent", 0);
	}
	var_a3d46ee4 function_dc8c8404();
}

/*
	Name: function_b7f8aff0
	Namespace: namespace_84eb777e
	Checksum: 0x20118B6D
	Offset: 0x4F00
	Size: 0x22B
	Parameters: 5
	Flags: None
*/
function function_b7f8aff0(var_4458affc, var_56fd354c, var_afd6c3c7, var_a3d46ee4, var_d5639cb)
{
	if(var_4458affc == "cp_level_aquifer_defendme" || var_4458affc == "cp_level_aquifer_defendme2")
	{
		var_dfd71aec = namespace_d0ef8521::function_e95d8ccb(var_afd6c3c7, var_56fd354c);
		function_2ac014c2(var_dfd71aec, 0);
	}
	if(var_a3d46ee4.var_170527fb == "exterior_hack_trig_right_1")
	{
		level namespace_ad23e503::function_1ab5ebec("flag_player_started_right_tower");
	}
	if(var_a3d46ee4.var_170527fb == "exterior_hack_trig_left_1")
	{
		level namespace_ad23e503::function_1ab5ebec("flag_player_started_left_tower");
	}
	var_b43079a5 = var_a3d46ee4.var_170527fb;
	var_a3d46ee4 namespace_ac959fba::function_7373f13d();
	var_8cefba83 = var_b43079a5 + "_started";
	if(namespace_ad23e503::function_dbca4c5d(var_8cefba83))
	{
		namespace_ad23e503::function_74d6b22f(var_8cefba83);
	}
	var_a3d46ee4 function_175e6b8e(0);
	function_4d816f2c(var_afd6c3c7, var_56fd354c);
	function_10d2d1c3(var_afd6c3c7, var_56fd354c, var_a3d46ee4, var_d5639cb);
	var_8cefba83 = var_b43079a5 + "_finished";
	if(namespace_ad23e503::function_dbca4c5d(var_8cefba83))
	{
		namespace_ad23e503::function_74d6b22f(var_8cefba83);
	}
	level notify(var_d5639cb);
	thread function_e2cebeb6(var_56fd354c, var_afd6c3c7);
}

/*
	Name: function_e2cebeb6
	Namespace: namespace_84eb777e
	Checksum: 0x7A3A78A6
	Offset: 0x5138
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_e2cebeb6(var_56fd354c, var_afd6c3c7)
{
	wait(5);
	function_5ec99c19(var_afd6c3c7, var_56fd354c);
}

/*
	Name: function_3207fe78
	Namespace: namespace_84eb777e
	Checksum: 0x2A2ADAA9
	Offset: 0x5178
	Size: 0x95
	Parameters: 1
	Flags: None
*/
function function_3207fe78(var_3ce30dc)
{
	var_338b3066 = [];
	var_c630dc9a = 1;
	while(1)
	{
		var_5948b3df = function_6ada35ba(var_3ce30dc + var_c630dc9a, "targetname");
		if(!isdefined(var_5948b3df))
		{
			break;
		}
		var_338b3066[var_338b3066.size] = var_5948b3df;
		var_c630dc9a++;
	}
	return var_338b3066;
}

/*
	Name: function_f1e1d63
	Namespace: namespace_84eb777e
	Checksum: 0xCDB6E005
	Offset: 0x5218
	Size: 0x2D9
	Parameters: 8
	Flags: None
*/
function function_f1e1d63(var_3ce30dc, var_2b4368ec, var_c91af2ba, var_afd6c3c7, var_d5639cb, var_f9d3d7f2, var_368eea5, var_d66abd8d)
{
	level namespace_ad23e503::function_74d6b22f("can_spawn_hunters");
	if(!isdefined(var_f9d3d7f2))
	{
		var_f9d3d7f2 = (0, 0, 0);
	}
	level.var_7e2f5eca = function_3207fe78(var_3ce30dc);
	if(level.var_7e2f5eca.size == 0)
	{
		wait(0.5);
		level notify("hash_ae36b621");
		return;
	}
	var_a916cf26 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_7e2f5eca.size; var_c957f6b6++)
	{
		var_a916cf26[var_c957f6b6] = level.var_7e2f5eca[var_c957f6b6].var_722885f3 + var_f9d3d7f2;
	}
	thread function_4d816f2c(var_2b4368ec, var_a916cf26);
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_7e2f5eca.size; var_c957f6b6++)
	{
		thread function_b7f8aff0(var_c91af2ba, var_a916cf26[var_c957f6b6], var_afd6c3c7, level.var_7e2f5eca[var_c957f6b6], var_d5639cb);
	}
	while(isdefined(var_368eea5))
	{
		if(namespace_82b91a51::function_f08b9be6(var_368eea5, "allies"))
		{
			break;
		}
		wait(0.1);
	}
	thread function_5ec99c19(var_2b4368ec, var_a916cf26);
	foreach(var_5948b3df in level.var_7e2f5eca)
	{
		var_5948b3df thread namespace_786319bb::function_b86ff37e(1, var_c91af2ba, var_d66abd8d);
	}
	var_b8a196f4 = level.var_7e2f5eca.size;
	for(var_fd3a0f1e = 0; var_fd3a0f1e < var_b8a196f4; var_fd3a0f1e++)
	{
		level waittill(var_d5639cb);
	}
	level notify("hash_ae36b621");
}

/*
	Name: function_2ccd041c
	Namespace: namespace_84eb777e
	Checksum: 0xA7E89753
	Offset: 0x5500
	Size: 0x35
	Parameters: 0
	Flags: None
*/
function function_2ccd041c()
{
	if(isdefined(self.var_8fedf36c) && self function_c7e339d1(self.var_8fedf36c))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_34231419
	Namespace: namespace_84eb777e
	Checksum: 0x210DFE59
	Offset: 0x5540
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_34231419()
{
	if(!isdefined(level.var_740a45ce) || !isdefined(level.var_cc9e08f))
	{
		return;
	}
	self thread function_eb911c76(level.var_740a45ce, level.var_cc9e08f);
}

/*
	Name: function_eb911c76
	Namespace: namespace_84eb777e
	Checksum: 0x6617798B
	Offset: 0x5598
	Size: 0x259
	Parameters: 2
	Flags: None
*/
function function_eb911c76(var_740a45ce, var_cc9e08f)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level endon("hash_c42b010f");
	while(!self function_2ccd041c())
	{
		wait(0.05);
	}
	if(isdefined(var_cc9e08f))
	{
		self waittill("hash_fd4242d1", var_7e8d0707);
		level notify("hash_f3cbe351", var_7e8d0707);
		if(level.var_b91023ce.size > 1)
		{
			namespace_786319bb::function_fc653485();
			namespace_786319bb::function_1215f9e4(var_7e8d0707);
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				if(var_5dc5e20a != self)
				{
					if(self namespace_786319bb::function_5c971cb7())
					{
						var_5dc5e20a namespace_786319bb::function_22a0413d("landing_mode");
					}
				}
			}
			if(!isdefined(level.var_710bdaa1))
			{
				level.var_710bdaa1 = "left";
				level.var_d18b7098 = 0;
				if(var_7e8d0707 == 2)
				{
					level.var_710bdaa1 = "right";
					level.var_d18b7098 = 1;
					function_5ec99c19(var_740a45ce, var_cc9e08f[0]);
				}
				else
				{
					function_5ec99c19(var_740a45ce, var_cc9e08f[1]);
				}
				wait(0.05);
			}
		}
	}
	while(self function_2ccd041c())
	{
		wait(0.05);
	}
	level notify("hash_f56c8f4d");
}

/*
	Name: function_a5b8f98
	Namespace: namespace_84eb777e
	Checksum: 0xC7281377
	Offset: 0x5800
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a5b8f98()
{
	if(isdefined(level.var_4712f308))
	{
		namespace_d0ef8521::function_50ccee8d(level.var_4712f308, self);
	}
}

/*
	Name: function_8c1f2dbc
	Namespace: namespace_84eb777e
	Checksum: 0x8B6FB7A8
	Offset: 0x5838
	Size: 0x173
	Parameters: 3
	Flags: None
*/
function function_8c1f2dbc(var_740a45ce, var_cc9e08f, var_36fcba17)
{
	wait(0.5);
	if(!isdefined(var_36fcba17))
	{
		var_36fcba17 = 0;
	}
	namespace_ad23e503::function_74d6b22f("enable_vtol_landing_zones");
	level endon("hash_c42b010f");
	thread namespace_786319bb::function_191fff49("landing_mode");
	level.var_740a45ce = var_740a45ce;
	level.var_cc9e08f = var_cc9e08f;
	level namespace_dabbe128::function_356a4ee1(&function_34231419);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_eb911c76(var_740a45ce, var_cc9e08f);
	}
	level waittill("hash_f56c8f4d");
	level.var_740a45ce = undefined;
	level.var_cc9e08f = undefined;
	namespace_dabbe128::function_a0ac4434(&function_34231419);
}

/*
	Name: function_2e932d4f
	Namespace: namespace_84eb777e
	Checksum: 0x363808EC
	Offset: 0x59B8
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_2e932d4f(var_565ac03, var_740a45ce)
{
	self endon("hash_643a7daf");
	level endon("hash_fdb2d846");
	while(!self function_2ccd041c())
	{
		wait(0.05);
	}
	self function_44b0ba69();
	level notify("hash_101cf3f7");
}

/*
	Name: function_31e37f85
	Namespace: namespace_84eb777e
	Checksum: 0x36BC1587
	Offset: 0x5A38
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_31e37f85()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_44b0ba69();
	}
	level notify("hash_fdb2d846");
}

/*
	Name: function_44b0ba69
	Namespace: namespace_84eb777e
	Checksum: 0x68BCD155
	Offset: 0x5AD8
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_44b0ba69()
{
	if(isdefined(self.var_bd96c96f))
	{
		function_2524c620(self.var_bd96c96f, "done");
		namespace_a230c2b1::function_6cde6b52(self.var_bd96c96f);
		self.var_bd96c96f = undefined;
	}
}

/*
	Name: function_da18861f
	Namespace: namespace_84eb777e
	Checksum: 0xBBBDFBB6
	Offset: 0x5B38
	Size: 0x23F
	Parameters: 3
	Flags: None
*/
function function_da18861f(var_565ac03, var_740a45ce, var_7e8d0707)
{
	level endon("hash_fdb2d846");
	wait(0.05);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a.var_719c336f = function_72a94f05(0, 3);
		var_5dc5e20a.var_23a61090 = function_72a94f05(0.8, 1.2);
	}
	thread namespace_786319bb::function_191fff49("call", var_7e8d0707);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a function_2ccd041c())
		{
			level notify("hash_101cf3f7");
			if(isdefined(var_5dc5e20a.var_bd96c96f))
			{
				function_2524c620(var_5dc5e20a.var_bd96c96f, "done");
				namespace_a230c2b1::function_6cde6b52(var_5dc5e20a.var_bd96c96f);
				var_5dc5e20a.var_bd96c96f = undefined;
			}
			continue;
		}
		var_5dc5e20a thread function_2e932d4f(var_565ac03, var_740a45ce);
	}
	level waittill("hash_101cf3f7");
}

/*
	Name: function_7f0d6133
	Namespace: namespace_84eb777e
	Checksum: 0x98882A23
	Offset: 0x5D80
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_7f0d6133(var_646c369)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a function_2ccd041c())
		{
			continue;
		}
		var_5dc5e20a namespace_786319bb::function_d683f26a();
		var_5dc5e20a.var_bd96c96f = namespace_a230c2b1::function_27962b29();
		function_42bd3d1e(var_5dc5e20a.var_bd96c96f, "active", var_5dc5e20a.var_dda84f1a[var_646c369].var_722885f3 + VectorScale((0, 0, 1), 240), function_483c3c51("cp_level_aquifer_takeoff"));
		function_daebb750(var_5dc5e20a.var_bd96c96f);
		function_fe955f9f(var_5dc5e20a.var_bd96c96f, var_5dc5e20a);
	}
}

/*
	Name: function_ec898691
	Namespace: namespace_84eb777e
	Checksum: 0xE8A0DCFF
	Offset: 0x5F08
	Size: 0x33
	Parameters: 4
	Flags: None
*/
function function_ec898691(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	thread function_4e30545e();
}

/*
	Name: function_4e30545e
	Namespace: namespace_84eb777e
	Checksum: 0xCB493E42
	Offset: 0x5F48
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_4e30545e()
{
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_20_towerright_1st_panelrip");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_20_towerright_vign_overload_enter");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_20_towerleft_1st_panelrip");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_20_towerleft_vign_overload_enter");
	wait(3);
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_20_towerleft_vign_overload_main");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_20_towerleft_vign_overload_exit");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_20_towerright_vign_overload_main");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_01_20_towerright_vign_overload_exit");
}

/*
	Name: function_a4dc564e
	Namespace: namespace_84eb777e
	Checksum: 0x57C514B0
	Offset: 0x6060
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a4dc564e()
{
	thread namespace_4a128b5f::function_2d0258ff();
	level namespace_71b8dba1::function_a463d127("hend_don_t_you_realize_wh_0");
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_negative_hendricks_0", 0.25);
	level.var_89ea8991 namespace_71b8dba1::function_81141386("kane_we_can_overload_the_0", 0.25);
	level namespace_ad23e503::function_74d6b22f("finished_first_landing_vo");
}

/*
	Name: function_b1b04e52
	Namespace: namespace_84eb777e
	Checksum: 0xE43089DE
	Offset: 0x6110
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b1b04e52()
{
	level namespace_71b8dba1::function_a463d127("kane_there_s_the_next_com_0");
}

/*
	Name: function_e3e7229d
	Namespace: namespace_84eb777e
	Checksum: 0x891A894E
	Offset: 0x6140
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_e3e7229d()
{
	level namespace_ad23e503::function_1ab5ebec("flight_to_water_vo_cleared");
	level namespace_71b8dba1::function_a463d127("khal_i_can_still_read_you_0");
}

/*
	Name: function_60c28440
	Namespace: namespace_84eb777e
	Checksum: 0x5D6C5AF4
	Offset: 0x6190
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_60c28440()
{
	level waittill("hash_571aa0aa");
	if(isdefined(level.var_a0be1689))
	{
		level thread [[level.var_a0be1689]]();
	}
	level.var_7e2f5eca[0] notify("hash_1253961", level.var_9b1393e7[0]);
}

/*
	Name: function_6a7fa9c7
	Namespace: namespace_84eb777e
	Checksum: 0xD8DC29F4
	Offset: 0x61E8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_6a7fa9c7(var_148fb98c)
{
	self endon("hash_d5da096");
	self endon("hash_128f8789");
	self waittill("hash_aa1618b0", var_148fb98c);
	wait(0.7);
	if(isdefined(var_148fb98c))
	{
		var_148fb98c function_7847c931(undefined);
	}
	wait(4);
	if(isdefined(var_148fb98c))
	{
		var_148fb98c function_dc8c8404();
	}
}

/*
	Name: function_386c647b
	Namespace: namespace_84eb777e
	Checksum: 0x8FFE2A12
	Offset: 0x6278
	Size: 0x703
	Parameters: 2
	Flags: None
*/
function function_386c647b(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	if(isdefined(level.var_710bdaa1))
	{
		level.var_a6f85f47 = 1;
	}
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	level namespace_ad23e503::function_74d6b22f("finished_first_landing_vo");
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	thread function_61034146(1);
	namespace_786319bb::function_465b0eba();
	var_a63b7eae = [];
	var_a63b7eae["left"] = "exterior_hack_trig_left_";
	var_a63b7eae["right"] = "exterior_hack_trig_right_";
	var_cd0b05cb = [];
	var_cd0b05cb["left"] = "left_hack_use_trig";
	var_cd0b05cb["right"] = "right_hack_use_trig";
	var_3f85d402 = 1;
	if(!isdefined(level.var_710bdaa1) || level.var_710bdaa1 == "left")
	{
		level.var_710bdaa1 = "right";
		namespace_786319bb::function_c897523d("respawn_right_hack");
	}
	else
	{
		var_3f85d402 = 0;
		level.var_710bdaa1 = "left";
		namespace_786319bb::function_c897523d("respawn_left_hack");
	}
	var_c04363eb = function_6ada35ba("start_spawning_zone01_enemies", "targetname");
	var_c04363eb function_175e6b8e(0);
	thread namespace_786319bb::function_96450f49("hen_" + level.var_710bdaa1 + "_", 1);
	namespace_ad23e503::function_74d6b22f("destroy_defenses_completed");
	level notify("hash_4af9ae51");
	namespace_1d1d22be::function_de37a122();
	if(var_74cd64bc)
	{
		wait(1);
	}
	namespace_786319bb::function_fc653485();
	var_368eea5 = undefined;
	if(level.var_710bdaa1 == "right")
	{
		namespace_786319bb::function_1215f9e4(2);
		var_368eea5 = function_6ada35ba("vol_res_defend_kayne", "targetname");
	}
	else
	{
		namespace_786319bb::function_1215f9e4(1);
		var_368eea5 = function_6ada35ba("vol_port_defend_kayne", "targetname");
	}
	var_97a3d1c2 = [];
	var_97a3d1c2["left"] = "exterior_hack_trig_left_land";
	var_97a3d1c2["right"] = "exterior_hack_trig_right_land";
	var_82279926 = [];
	var_82279926[var_82279926.size] = namespace_14b42b8a::function_7922262b(var_97a3d1c2[level.var_710bdaa1]);
	function_4d816f2c("cp_level_aquifer_hack_terminals3");
	function_4d816f2c("cp_level_aquifer_land", var_82279926);
	level.var_4712f308 = "cp_level_aquifer_land";
	thread function_33fdc686(2);
	function_8c1f2dbc("cp_level_aquifer_land", var_82279926);
	if(isdefined(level.var_f52d0fa7))
	{
		level thread [[level.var_f52d0fa7]]();
	}
	function_5ec99c19("cp_level_aquifer_land");
	level.var_4712f308 = undefined;
	function_5ec99c19("cp_level_aquifer_hack_terminals3");
	thread function_204cfb5c(var_82279926);
	level thread namespace_71a63eac::function_e703f818();
	thread function_60c28440();
	var_d5639cb = "trigger_hacked";
	thread function_f1e1d63(var_a63b7eae[level.var_710bdaa1], "cp_level_aquifer_goto_comms", "cp_level_aquifer_hackme", "cp_level_aquifer_defendme2", var_d5639cb, VectorScale((0, 0, -1), 256), var_368eea5, var_cd0b05cb[level.var_710bdaa1]);
	level waittill("hash_ae36b621");
	if(isdefined(level.var_125de22d))
	{
		level thread [[level.var_125de22d]]();
	}
	wait(0.05);
	thread function_7f0d6133(var_3f85d402);
	thread function_da18861f(var_97a3d1c2[level.var_710bdaa1], "cp_level_aquifer_takeoff", var_3f85d402 + 1);
	level namespace_82b91a51::function_5b7e3888("player_tookoff", "hotjoin_hack");
	thread namespace_786319bb::function_c6b73822("hendrix_delteme_spot");
	level.var_a6f85f47 = undefined;
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_116a8e4e
	Namespace: namespace_84eb777e
	Checksum: 0x47F63435
	Offset: 0x6988
	Size: 0x7D3
	Parameters: 2
	Flags: None
*/
function function_116a8e4e(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
		namespace_82b91a51::function_67520c6a(4, undefined, &namespace_786319bb::function_465b0eba, 1);
		thread namespace_786319bb::function_96450f49("hen_left_", 1);
	}
	else
	{
		namespace_786319bb::function_465b0eba();
	}
	namespace_ad23e503::function_74d6b22f("destroy_defenses_completed");
	level notify("hash_4af9ae51");
	thread function_61034146(1);
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_77fde091(0);
	namespace_1d1d22be::function_de37a122();
	var_82279926 = [];
	var_82279926[var_82279926.size] = namespace_14b42b8a::function_7922262b("exterior_hack_trig_left_land");
	var_82279926[var_82279926.size] = namespace_14b42b8a::function_7922262b("exterior_hack_trig_right_land");
	var_c04363eb = function_6ada35ba("start_spawning_zone01_enemies", "targetname");
	var_c04363eb function_175e6b8e(0);
	function_4d816f2c("cp_level_aquifer_disrupt_comms");
	function_4d816f2c("cp_level_aquifer_hack_terminals");
	namespace_786319bb::function_fc653485();
	namespace_786319bb::function_1215f9e4(1);
	namespace_786319bb::function_1215f9e4(2);
	level.var_710bdaa1 = undefined;
	level.var_d18b7098 = 0;
	function_4d816f2c("cp_level_aquifer_land", var_82279926);
	level.var_4712f308 = "cp_level_aquifer_land";
	thread function_33fdc686(1);
	function_8c1f2dbc("cp_level_aquifer_land", var_82279926);
	if(isdefined(level.var_a3bdbc66))
	{
		level thread [[level.var_a3bdbc66]]();
	}
	thread function_204cfb5c(var_82279926);
	level thread namespace_71a63eac::function_e703f818();
	var_a63b7eae = [];
	var_a63b7eae["left"] = "exterior_hack_trig_left_";
	var_a63b7eae["right"] = "exterior_hack_trig_right_";
	var_cd0b05cb = [];
	var_cd0b05cb["left"] = "left_hack_use_trig";
	var_cd0b05cb["right"] = "right_hack_use_trig";
	var_368eea5 = undefined;
	if(level.var_710bdaa1 == "right")
	{
		var_368eea5 = function_6ada35ba("vol_res_defend_kayne", "targetname");
	}
	else
	{
		var_368eea5 = function_6ada35ba("vol_port_defend_kayne", "targetname");
	}
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders_1", "hack_01_1_volume");
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders_2", "hack_01_2_volume");
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders_3", "hack_01_1_volume");
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders_4", "hack_01_2_volume");
	thread function_60c28440();
	function_5ec99c19("cp_level_aquifer_hack_terminals");
	var_d5639cb = "trigger_hacked";
	thread function_f1e1d63(var_a63b7eae[level.var_710bdaa1], "cp_level_aquifer_goto_comms", "cp_level_aquifer_hackme", "cp_level_aquifer_defendme", var_d5639cb, VectorScale((0, 0, -1), 256), var_368eea5, var_cd0b05cb[level.var_710bdaa1]);
	if(level.var_710bdaa1 == "left")
	{
		namespace_786319bb::function_c897523d("respawn_left_hack");
		namespace_786319bb::function_e1e437cb(2);
	}
	else
	{
		namespace_786319bb::function_e1e437cb(1);
		namespace_786319bb::function_c897523d("respawn_right_hack");
	}
	thread namespace_786319bb::function_96450f49("hen_" + level.var_710bdaa1 + "_", 1);
	level waittill("hash_ae36b621");
	var_210cc013 = namespace_14b42b8a::function_7922262b("exterior_hack_trig_left_land");
	if(level.var_710bdaa1 == "right")
	{
		var_210cc013 = namespace_14b42b8a::function_7922262b("exterior_hack_trig_right_land");
	}
	var_97a3d1c2 = [];
	var_97a3d1c2["left"] = "exterior_hack_trig_left_land";
	var_97a3d1c2["right"] = "exterior_hack_trig_right_land";
	thread function_7f0d6133(level.var_d18b7098);
	if(isdefined(level.var_9d3cd2ac))
	{
		level thread [[level.var_9d3cd2ac]]();
	}
	thread function_da18861f(var_97a3d1c2[level.var_710bdaa1], "cp_level_aquifer_takeoff", level.var_d18b7098 + 1);
	level namespace_82b91a51::function_5b7e3888("player_tookoff", "hotjoin_hack");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_204cfb5c
	Namespace: namespace_84eb777e
	Checksum: 0x2468BB8B
	Offset: 0x7168
	Size: 0x219
	Parameters: 1
	Flags: None
*/
function function_204cfb5c(var_82279926)
{
	function_5ec99c19("cp_level_aquifer_land");
	level.var_4712f308 = undefined;
	var_12fe08d7 = level namespace_82b91a51::function_45ce26d("hack_at_fifty_percent", "common_hacking_objectives_complete");
	if(isdefined(var_12fe08d7) && var_12fe08d7 == "hack_at_fifty_percent")
	{
		level.var_4063f562 = undefined;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_cc98a8ec = isdefined(var_5dc5e20a.var_8fedf36c) && isdefined(var_5dc5e20a.var_8fedf36c.var_86c93e40) && var_5dc5e20a.var_8fedf36c.var_86c93e40 == "landing_mode";
			if(var_5dc5e20a namespace_786319bb::function_5c971cb7() && !var_cc98a8ec)
			{
				var_5dc5e20a thread namespace_786319bb::function_22a0413d("piloted");
			}
			var_5dc5e20a.var_8fedf36c notify("hash_c38e4003");
			var_5dc5e20a.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_active_landing_zone_num", 0);
			var_5dc5e20a namespace_71e9cb84::function_cc4d5165("vehicle.showLandHint", 0);
		}
	}
	namespace_ad23e503::function_9d134160("enable_vtol_landing_zones");
	level notify("hash_c42b010f");
}

/*
	Name: function_33fdc686
	Namespace: namespace_84eb777e
	Checksum: 0x38BD7625
	Offset: 0x7390
	Size: 0x74D
	Parameters: 1
	Flags: None
*/
function function_33fdc686(var_52055f73)
{
	var_7e8d0707 = 1;
	level waittill("hash_f3cbe351", var_7e8d0707);
	var_961abda = function_99201f25("landing_zone_kane", "targetname");
	var_16d4a623 = undefined;
	foreach(var_69a0da3b in var_961abda)
	{
		var_60156652 = function_b6b79a0(function_d6df1f20(var_69a0da3b.var_caae374e, "landing_zone_")[0]);
		if(var_7e8d0707 == var_60156652)
		{
			var_16d4a623 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_69a0da3b.var_722885f3, var_69a0da3b.var_6ab6f4fd);
			break;
		}
	}
	if(!isdefined(var_16d4a623))
	{
		/#
			function_d52b076d("Dev Block strings are not supported");
		#/
		return;
	}
	if(!isdefined(level.var_ae4620ba))
	{
		level.var_ae4620ba = namespace_96fa87af::function_7387a40a("kane_vtol");
	}
	if(var_7e8d0707 == 4)
	{
		level.var_89ea8991 = function_30343b22("kayne_pre_water");
	}
	else
	{
		level.var_89ea8991 = function_30343b22("kayne_hack" + var_7e8d0707);
	}
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 function_c7708f99("players_ground");
	}
	var_9ba68f7b = level.var_ae4620ba function_d48f2ab3("tag_driver") - level.var_ae4620ba.var_722885f3;
	var_9ba68f7b = (0, 0, var_9ba68f7b[2]);
	var_fbb25d33 = var_16d4a623.var_722885f3 + VectorScale((0, 0, 1), 120);
	var_f08dfc9c = var_fbb25d33 + VectorScale((0, 0, 1), 3000);
	level.var_ae4620ba.var_722885f3 = var_f08dfc9c;
	level.var_ae4620ba.var_6ab6f4fd = var_16d4a623.var_6ab6f4fd;
	wait(0.05);
	if(isdefined(level.var_39c3b76e))
	{
		level.var_39c3b76e namespace_71e9cb84::function_74d6b22f("vtol_engines_state", 0);
	}
	level.var_ae4620ba namespace_71e9cb84::function_74d6b22f("vtol_engines_state", 0);
	level.var_ae4620ba namespace_71e9cb84::function_74d6b22f("vtol_canopy_state", 1);
	level.var_ae4620ba namespace_71e9cb84::function_74d6b22f("vtol_enable_wash_fx", 1);
	level.var_ae4620ba function_333fd8f0(600, 1200, 1200);
	level.var_ae4620ba function_b53ebe89(59, 360, 360);
	level.var_ae4620ba function_c985552d(var_fbb25d33, 1);
	level.var_ae4620ba function_e3efbe09(var_16d4a623.var_6ab6f4fd[1]);
	level.var_ae4620ba function_500dc2f7(60);
	level.var_ae4620ba function_42cddf81(0);
	var_41d1aaf0 = level.var_ae4620ba namespace_82b91a51::function_9fcf3cd8(5, "goal", "near_goal");
	level.var_1226dab0 = 1;
	switch(var_52055f73)
	{
		case 1:
		{
			level.var_89ea8991 namespace_6f7b2095::function_1b497663("r");
			var_16d4a623 thread namespace_cc27597::function_43718187("cin_aqu_05_01_enter_vign_clamber", level.var_89ea8991);
			thread function_a4dc564e();
			break;
		}
		case 2:
		{
			level.var_89ea8991 namespace_6f7b2095::function_1b497663("r");
			var_16d4a623 thread namespace_cc27597::function_43718187("cin_aqu_05_01_enter_vign_clamber", level.var_89ea8991);
			thread function_b1b04e52();
			break;
		}
		case default:
		{
			var_16d4a623 thread namespace_cc27597::function_43718187("cin_aqu_05_01_enter_vign_clamber", level.var_89ea8991);
			level thread function_e3e7229d();
			break;
		}
	}
	namespace_1d1d22be::function_de37a122(0);
	wait(2);
	level.var_ae4620ba namespace_71e9cb84::function_74d6b22f("vtol_canopy_state", 0);
	wait(2);
	level.var_ae4620ba function_333fd8f0(70, 150, 150);
	level.var_ae4620ba function_c985552d(var_f08dfc9c + VectorScale((0, 0, 1), 2048), 1);
	var_41d1aaf0 = level.var_ae4620ba namespace_82b91a51::function_9fcf3cd8(5, "goal", "near_goal");
	thread function_4d13a94b();
	level.var_ae4620ba namespace_71e9cb84::function_74d6b22f("vtol_enable_wash_fx", 0);
	wait(2);
	var_16d4a623 function_dc8c8404();
	level.var_ae4620ba function_dc8c8404();
	level.var_ae4620ba = undefined;
}

/*
	Name: function_4d13a94b
	Namespace: namespace_84eb777e
	Checksum: 0xDA1B4C32
	Offset: 0x7AE8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_4d13a94b()
{
	namespace_d84e54db::function_85668ce6(level.var_89ea8991);
	level.var_89ea8991 namespace_d84e54db::function_ceb883cd("cqb", 1);
	wait(3);
	level.var_89ea8991 namespace_d84e54db::function_ceb883cd("cqb", 0);
}

/*
	Name: function_c34c108
	Namespace: namespace_84eb777e
	Checksum: 0x81C7AD27
	Offset: 0x7B60
	Size: 0x2D
	Parameters: 4
	Flags: None
*/
function function_c34c108(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		return;
	}
}

/*
	Name: function_e7f9ddde
	Namespace: namespace_84eb777e
	Checksum: 0x2F56D10D
	Offset: 0x7B98
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_e7f9ddde()
{
	var_5948b3df = function_6ada35ba("vision_hint_exit_water", "targetname");
	var_aef176e7 = var_5948b3df;
	while(var_aef176e7 != self)
	{
		var_5948b3df waittill("hash_4dbf3ae3", var_aef176e7);
	}
	self namespace_4d476a30::function_80eacd67(&"CP_MI_CAIRO_AQUIFER_ENHANCED_VISION", 5);
}

/*
	Name: function_dcbdf6db
	Namespace: namespace_84eb777e
	Checksum: 0x5BD3EF37
	Offset: 0x7C28
	Size: 0xF3
	Parameters: 3
	Flags: None
*/
function function_dcbdf6db(var_b53947c0, var_229b55c0, var_74cd64bc)
{
	if(isdefined(var_74cd64bc) && var_74cd64bc)
	{
		wait(2);
	}
	namespace_786319bb::function_fc653485();
	namespace_786319bb::function_1215f9e4(var_229b55c0);
	namespace_ad23e503::function_74d6b22f("enable_vtol_landing_zones");
	var_82279926 = [];
	var_82279926[var_82279926.size] = namespace_14b42b8a::function_7922262b(var_b53947c0);
	function_4d816f2c("cp_level_aquifer_land", var_82279926);
	level.var_4712f308 = "cp_level_aquifer_land";
	function_8c1f2dbc("cp_level_aquifer_land", var_82279926, 1);
}

/*
	Name: function_d0068cf8
	Namespace: namespace_84eb777e
	Checksum: 0xD8671180
	Offset: 0x7D28
	Size: 0xE1
	Parameters: 3
	Flags: None
*/
function function_d0068cf8(var_b53947c0, var_229b55c0, var_74cd64bc)
{
	if(isdefined(var_74cd64bc) && var_74cd64bc)
	{
		wait(2);
	}
	namespace_786319bb::function_fc653485();
	namespace_786319bb::function_1215f9e4(var_229b55c0);
	namespace_ad23e503::function_9d134160("enable_vtol_landing_zones");
	var_82279926 = namespace_14b42b8a::function_7922262b(var_b53947c0);
	function_4d816f2c("cp_level_aquifer_takeoff", var_82279926);
	function_da18861f(var_b53947c0, "cp_level_aquifer_takeoff");
	level notify("hash_5062a9ba");
}

/*
	Name: function_ac5573a8
	Namespace: namespace_84eb777e
	Checksum: 0x81435072
	Offset: 0x7E18
	Size: 0x4BB
	Parameters: 2
	Flags: None
*/
function function_ac5573a8(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	thread namespace_967f4af8::function_d290ebfa();
	thread function_5025ad5();
	namespace_786319bb::function_5497473c();
	namespace_1d1d22be::function_de37a122();
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_77fde091(1);
	namespace_786319bb::function_c897523d("respawn_ext_water_room");
	function_5ec99c19("cp_level_aquifer_disrupt_comms");
	function_4d816f2c("cp_level_aquifer_waterroom");
	function_4d816f2c("cp_level_aquifer_waterroom_land");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
		function_61034146(1);
		function_b3ed487d(0);
	}
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	level thread function_50ad9d6a();
	level thread namespace_71a63eac::function_ca2c6d9f();
	thread function_33fdc686(3);
	function_dcbdf6db("water_room_land", 4, var_74cd64bc);
	function_5ec99c19("cp_level_aquifer_land");
	level.var_4712f308 = undefined;
	namespace_1d1d22be::function_de37a122(0);
	function_5ec99c19("cp_level_aquifer_waterroom_land");
	function_4d816f2c("cp_level_aquifer_waterroom_enter");
	level thread function_eee7cf7e();
	namespace_d0ef8521::function_45d1556("breadcrumb_water_room_a");
	namespace_786319bb::function_ae0b01fe();
	level notify("hash_7e64f485");
	level namespace_ad23e503::function_1ab5ebec("flag_enter_water_moment");
	level notify("hash_9fc8580a");
	level thread namespace_71a63eac::function_bb8ce831();
	wait(0.5);
	function_5ec99c19("cp_level_aquifer_waterroom_enter");
	namespace_82b91a51::function_67520c6a(5, undefined, &function_4d816f2c, "cp_level_aquifer_waterroom_last_known");
	namespace_d0ef8521::function_45d1556("breadcrumb_in_water_start");
	wait(0.5);
	level namespace_ad23e503::function_1ab5ebec("flag_kayne_water_moment");
	level.var_89ea8991 notify("hash_5670f4e8");
	namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "player_cam_bubbles", 0);
	namespace_786319bb::function_c897523d("respawn_in_data_center");
	foreach(var_7f95eaf7 in level.var_9b1393e7)
	{
		var_7f95eaf7 namespace_71e9cb84::function_e9c3870b("player_bubbles_fx", 0);
	}
	level waittill("hash_b580186f");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_50ad9d6a
	Namespace: namespace_84eb777e
	Checksum: 0x3C7A2812
	Offset: 0x82E0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_50ad9d6a()
{
	level namespace_71b8dba1::function_a463d127("kane_khalil_what_s_our_0");
	wait(0.2);
	level thread namespace_ce7c3ed5::function_8f7bd062("cp_aquifer_pip_HeroLocation", "pip");
	level namespace_71b8dba1::function_a463d127("khal_nrc_radio_chatter_su_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_we_can_still_get_the_0", 0.25);
	level namespace_ad23e503::function_74d6b22f("flight_to_water_vo_cleared");
}

/*
	Name: function_eee7cf7e
	Namespace: namespace_84eb777e
	Checksum: 0x93519DD7
	Offset: 0x83A8
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_eee7cf7e()
{
	level endon("hash_5067c11a");
	while(1)
	{
		var_dcc47e98 = namespace_4dbf3ae3::function_1ab5ebec("to_water1");
		namespace_4dbf3ae3::function_42e87952("breadcrumb_water_room_a", "targetname", var_dcc47e98.var_aef176e7);
	}
}

/*
	Name: function_e2e38eb
	Namespace: namespace_84eb777e
	Checksum: 0x922442F9
	Offset: 0x8418
	Size: 0x643
	Parameters: 2
	Flags: None
*/
function function_e2e38eb(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "scripted";
	thread function_5025ad5();
	namespace_786319bb::function_beb1031a();
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_77fde091(0);
	namespace_786319bb::function_c897523d("respawn_water_room_exit");
	level namespace_cc27597::function_c35e6aab("cin_aqu_03_01_platform_1st_secureplatform");
	namespace_71e9cb84::function_74d6b22f("water_room_exit_scenes", 1);
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
		level namespace_ad23e503::function_c35e6aab("flag_door_explodes");
		level namespace_ad23e503::function_c35e6aab("flag_kayne_ready_trap");
		level namespace_ad23e503::function_74d6b22f("water_room_checkpoint");
		level namespace_ad23e503::function_74d6b22f("flag_door_explodes");
		level namespace_ad23e503::function_74d6b22f("flag_kayne_ready_trap");
		namespace_1d1d22be::function_de37a122(0);
		level.var_89ea8991 = function_30343b22("kaynewaterexit");
		namespace_2f06d687::function_2b37a3c9("water_robots", "targetname", &namespace_967f4af8::function_a527e6f9);
		namespace_2f06d687::function_2b37a3c9("water_robots2", "targetname", &namespace_967f4af8::function_a527e6f9);
		thread namespace_967f4af8::function_18af354a();
		thread namespace_967f4af8::function_ee430caa();
		var_31b9fd4a = function_6ada35ba("doubledoor_sbm", "targetname");
		var_31b9fd4a function_dc8c8404();
		namespace_d5067552::function_bae40a28("spawn_manager_flood_robots");
		namespace_d5067552::function_bae40a28("spawn_manager_water_robots");
		var_14b42b8a = function_6ada35ba("igc_kane_water", "targetname");
		var_14b42b8a thread namespace_cc27597::function_5c143f59("cin_aqu_03_21_server_room_doors_open");
	}
	var_5948b3df = function_6ada35ba("water_room_trigger", "targetname");
	var_14b42b8a = namespace_14b42b8a::function_7922262b(var_5948b3df.var_b07228b6, "targetname");
	foreach(var_7f95eaf7 in level.var_9b1393e7)
	{
		var_7f95eaf7 namespace_71e9cb84::function_e9c3870b("player_bubbles_fx", 0);
	}
	level namespace_ad23e503::function_1ab5ebec("flag_kayne_ready_trap");
	function_5ec99c19("cp_level_aquifer_waterroom_last_known");
	function_4d816f2c("cp_level_aquifer_waterroom_regroup", var_14b42b8a);
	level namespace_ad23e503::function_1ab5ebec("flag_door_explodes");
	level thread namespace_71a63eac::function_a2d40521();
	function_5ec99c19("cp_level_aquifer_waterroom_regroup", var_14b42b8a);
	function_5ec99c19("cp_level_aquifer_waterroom");
	level thread function_a9d852c2();
	level namespace_ad23e503::function_1ab5ebec("water_room_checkpoint");
	thread namespace_967f4af8::function_b563cc38();
	namespace_ad23e503::function_9d134160("enable_vtol_landing_zones");
	namespace_d0ef8521::function_45d1556("breadcrumb_exit_water");
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 notify("hash_5670f4e8");
	}
	function_5ec99c19("cp_level_aquifer_ambush_escape");
	level namespace_ad23e503::function_1ab5ebec("flag_khalil_water_exit");
	namespace_1d1d22be::function_de37a122(0);
	namespace_82b91a51::function_5b7e3888("water_exit_fade_out", "platform_scenes_done");
	level thread function_a2ba5afd();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_a2ba5afd
	Namespace: namespace_84eb777e
	Checksum: 0xD92FC028
	Offset: 0x8A68
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_a2ba5afd()
{
	level namespace_ce7c3ed5::function_7e61de2b(0, "black", "water_igc_done");
	namespace_82b91a51::function_76f13293(2);
	namespace_786319bb::function_8bf8a765(0);
	thread namespace_786319bb::function_191fff49("call", 4, 1, 0);
	namespace_82b91a51::function_76f13293(2);
	level thread namespace_ce7c3ed5::function_593c2af4(0.3, "black", "water_igc_done");
}

/*
	Name: function_a9d852c2
	Namespace: namespace_84eb777e
	Checksum: 0x7E1F3F62
	Offset: 0x8B38
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_a9d852c2()
{
	level namespace_ad23e503::function_1ab5ebec("flag_kane_start_water_escape");
	function_4d816f2c("cp_level_aquifer_ambush_escape");
}

/*
	Name: function_90eea052
	Namespace: namespace_84eb777e
	Checksum: 0xA8284D1C
	Offset: 0x8B80
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_90eea052()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_931550b9();
	}
}

/*
	Name: function_931550b9
	Namespace: namespace_84eb777e
	Checksum: 0x3750B67C
	Offset: 0x8C18
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_931550b9()
{
	if(!self function_2ccd041c())
	{
		var_da1bd38e = self.var_dda84f1a[2].var_722885f3 + function_bc7ce905(self.var_dda84f1a[2].var_6ab6f4fd) * 250 + function_298b8148(self.var_dda84f1a[2].var_6ab6f4fd) * 48 + VectorScale((0, 0, 1), 60);
		self function_a30814d(var_da1bd38e);
		self function_eda2be50(self.var_dda84f1a[2].var_6ab6f4fd + VectorScale((0, 1, 0), 180));
		self function_c05708b5();
	}
}

/*
	Name: function_1802814e
	Namespace: namespace_84eb777e
	Checksum: 0x5CFA014F
	Offset: 0x8D48
	Size: 0xD3
	Parameters: 4
	Flags: None
*/
function function_1802814e(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		return;
	}
	wait(5);
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_05_01_enter_1st_look");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_02_01_floodroom_1st_dragged");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_02_01_floodroom_1st_dragged_pt2");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_19_pre_water_room_kane");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_19_pre_water_room_wait_kane");
}

/*
	Name: function_829aa821
	Namespace: namespace_84eb777e
	Checksum: 0xFFD1378
	Offset: 0x8E28
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_829aa821(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		return;
	}
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_21_server_room_enter");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_20_water_room");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_20_water_room_idle");
}

/*
	Name: function_1b47ae1f
	Namespace: namespace_84eb777e
	Checksum: 0x3D263A46
	Offset: 0x8EC0
	Size: 0x2B3
	Parameters: 1
	Flags: None
*/
function function_1b47ae1f(var_dc822a23)
{
	self endon("hash_643a7daf");
	self thread namespace_786319bb::function_3d7bb92e(1);
	self namespace_786319bb::function_d683f26a(0);
	if(isdefined(var_dc822a23) && var_dc822a23)
	{
		if(level namespace_ad23e503::function_7922262b("dogfighting"))
		{
			if(isdefined(level.var_4063f562) && (level.var_4063f562 == "scripted" || level.var_4063f562 == "piloted"))
			{
				self namespace_786319bb::function_22a0413d(level.var_4063f562);
			}
			else
			{
				self namespace_786319bb::function_22a0413d();
			}
		}
		else
		{
			self thread function_931550b9();
			wait(0.05);
			self thread namespace_786319bb::function_22a0413d("call", 4, 1);
		}
	}
	else
	{
		self function_8c1f7070();
		namespace_82b91a51::function_67520c6a(0.5, undefined, &function_bb863f19);
	}
	if(!(isdefined(var_dc822a23) && var_dc822a23 && level namespace_ad23e503::function_7922262b("dogfighting")))
	{
		self waittill("hash_8d91bdcf");
	}
	while(!self function_c7e339d1(self.var_8fedf36c))
	{
		wait(0.05);
	}
	if(level.var_fee90489[0] != "post_water_room_dogfight")
	{
		return;
	}
	var_71824009 = function_6ada35ba("dogfighting_scene", "targetname");
	self namespace_6ece97b7::function_113a0740(1);
	self.var_8fedf36c thread namespace_1fb6a2e5::function_43718187("v_aqu_03_10_platform_1st_enterdogfight_player" + self.var_1e9fba3, var_71824009);
	self thread namespace_786319bb::function_af376a0e("v_aqu_03_10_platform_1st_enterdogfight_player" + self.var_1e9fba3, self.var_1e9fba3 - 1, "v_aqu_03_10_platform_1st_enterdogfight_enemy" + self.var_1e9fba3, "enter_dogfight_global_active");
}

/*
	Name: function_5b113d76
	Namespace: namespace_84eb777e
	Checksum: 0x8B2F8E97
	Offset: 0x9180
	Size: 0x3E3
	Parameters: 2
	Flags: None
*/
function function_5b113d76(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "scripted";
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	namespace_1d1d22be::function_de37a122();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
		thread function_61034146(1);
		break;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread function_1b47ae1f(0);
	}
	function_4d816f2c("cp_level_aquifer_dogfight2");
	level namespace_ad23e503::function_1ab5ebec("dogfighting");
	wait(50);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_3dca6783) && var_5dc5e20a.var_3dca6783 > 0)
		{
			break;
		}
		namespace_82b91a51::function_207f8667(&"CP_MI_CAIRO_AQUIFER_VTOL_DOGFIGHT_FAIL", &"CP_MI_CAIRO_AQUIFER_VTOL_DOGFIGHT_FAIL_HINT");
		return;
	}
	level notify("hash_982117a3");
	level namespace_957e94ce::function_74d6b22f("dogfight_ending");
	level namespace_ad23e503::function_74d6b22f("enter_dogfight_global_active");
	wait(10);
	level namespace_ad23e503::function_9d134160("dogfighting");
	level namespace_957e94ce::function_9d134160("dogfight_ending");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a notify("hash_b4a5f622");
	}
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_427463e0
	Namespace: namespace_84eb777e
	Checksum: 0x36207990
	Offset: 0x9570
	Size: 0x1C3
	Parameters: 4
	Flags: None
*/
function function_427463e0(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_dogfight2");
	}
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_21_server_room_explosion");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_21_server_room_idle");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_01_platform_1st_secureplatform_vtol");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_01_platform_1st_secureplatform_ambient");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_01_platform_1st_secureplatform");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_01_platform_1st_secureplatform_exit");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_10_platform_1st_enterdogfight");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_21_server_room_doors_open");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_22_water_room_escape_start");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_22_water_room_escape_fire_loop");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_22_water_room_escape_end");
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_03_22_water_room_escape_end_loop");
}

/*
	Name: function_fb03103d
	Namespace: namespace_84eb777e
	Checksum: 0x6E4B9283
	Offset: 0x9740
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_fb03103d(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	namespace_786319bb::function_465b0eba();
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	namespace_1d1d22be::function_de37a122();
	thread function_61034146(1);
	function_db369178("quadtank_zone_mid_");
	var_d5639cb = "target_down";
	thread function_f4ecd13f("quadtank_zone_mid_", "cp_level_aquifer_destroy_defenses3", "cp_level_aquifer_destroyme", var_d5639cb, undefined, "show_defenses_mid_objectives");
	thread namespace_786319bb::function_96450f49("hen_def_mid_", 0);
	thread function_380b183b();
	level thread namespace_71a63eac::function_bdb99f05();
	namespace_d5067552::function_bae40a28("spawn_manager_mid_defenses");
	namespace_d5067552::function_bae40a28("spawn_manager_mid_defenses_2");
	namespace_2f06d687::function_c6ffd13e("mid_defense_rpgs", &function_c0f2d8b9);
	thread function_91c91014();
	level namespace_957e94ce::function_1ab5ebec("common_defense_objectives_complete");
	level.var_1226dab0 = 0;
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_c0f2d8b9
	Namespace: namespace_84eb777e
	Checksum: 0xA3C4BB40
	Offset: 0x99F0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c0f2d8b9()
{
	self.var_84edac03 = 1;
}

/*
	Name: function_db369178
	Namespace: namespace_84eb777e
	Checksum: 0x7B8A5FAB
	Offset: 0x9A08
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function function_db369178(var_3ce30dc)
{
	var_dd21345d = 6 + 2 + 1;
	while(level.var_9b1393e7.size == 0)
	{
		wait(0.2);
	}
	var_b0a654bc = namespace_d73b9283::function_31931862(3 - level.var_9b1393e7.size * 2, 0, 6);
	while(var_b0a654bc >= 0)
	{
		var_b0a654bc--;
		var_b5f355c6 = var_3ce30dc + var_dd21345d - var_b0a654bc;
		var_2f06d687 = function_6ada35ba(var_b5f355c6, "targetname");
		if(isdefined(var_2f06d687))
		{
			var_2f06d687 function_dc8c8404();
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_380b183b
	Namespace: namespace_84eb777e
	Checksum: 0xB3C754FC
	Offset: 0x9B30
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_380b183b()
{
	level namespace_ad23e503::function_74d6b22f("show_defenses_mid_objectives");
	level namespace_957e94ce::function_1ab5ebec("common_defense_objectives_complete");
	level namespace_71b8dba1::function_a463d127("hend_that_s_all_of_em_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_good_work_we_ve_got_0", 0.25);
}

/*
	Name: function_91c91014
	Namespace: namespace_84eb777e
	Checksum: 0x9E901A93
	Offset: 0x9BC8
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_91c91014(var_c82fd082)
{
	level waittill("hash_2e0c12cd", var_5dc5e20a);
	var_35ef0ec1 = namespace_2f06d687::function_289e6fd1("mid_defense_rpgs");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e))
		{
			var_6b45b25e function_dc8c8404();
		}
	}
}

/*
	Name: function_46151925
	Namespace: namespace_84eb777e
	Checksum: 0x3D721BC9
	Offset: 0x9CB0
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_46151925(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_destroy_defenses3");
	}
}

/*
	Name: function_2887cd74
	Namespace: namespace_84eb777e
	Checksum: 0xB618BEA8
	Offset: 0x9D00
	Size: 0x6A3
	Parameters: 2
	Flags: None
*/
function function_2887cd74(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	namespace_786319bb::function_beb1031a();
	namespace_1d1d22be::function_de37a122();
	thread function_61034146(1);
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_77fde091(0);
	thread namespace_786319bb::function_287ca2ad(1);
	level namespace_ad23e503::function_74d6b22f("water_room_checkpoint");
	namespace_cc27597::function_c35e6aab("cin_aqu_04_securityfeed_3rd_sh010");
	if(var_74cd64bc)
	{
		level thread namespace_71a63eac::function_bdb99f05();
	}
	thread namespace_4a128b5f::function_44e145d1("flag_egyptian_hacking_completed");
	var_d5639cb = "target_down";
	thread function_f4ecd13f("quadtank_zone03_", "cp_level_aquifer_destroy_defenses2", "cp_level_aquifer_destroyme", var_d5639cb, 1);
	namespace_80983c42::function_80983c42("amb_front_defend");
	level namespace_ad23e503::function_74d6b22f("disable_player_exit_vtol");
	function_bfe402a1();
	level namespace_ad23e503::function_9d134160("disable_player_exit_vtol");
	level waittill("hash_476bcf62");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_474771df();
	}
	wait(1.5);
	thread function_efd791ac();
	wait(2);
	namespace_80983c42::function_593e8a39("amb_front_defend");
	var_9c7cecce = function_6ada35ba("hangar_blast_door_right", "targetname");
	var_9c7cecce function_50ccee8d();
	var_7aec779b = function_6ada35ba("hangar_blast_door_left", "targetname");
	var_7aec779b function_50ccee8d();
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_83fd42b5();
		var_5dc5e20a namespace_82b91a51::function_56cee95(1);
		var_5dc5e20a.var_8fedf36c function_c6a7810e();
	}
	if(isdefined(level.var_51694477))
	{
		level thread [[level.var_51694477]]();
	}
	thread namespace_786319bb::function_ae0b01fe(1);
	namespace_1d795d47::function_552e05fb("side_combat_teleport");
	level namespace_ad23e503::function_74d6b22f("flag_force_off_dust");
	namespace_80983c42::function_80983c42("lighting_hangar_a");
	var_d8e7bbc = function_6ada35ba("breach_scene_origin", "targetname");
	var_d8e7bbc namespace_cc27597::function_43718187("cin_aqu_04_securityfeed_3rd_sh010");
	var_d8e7bbc namespace_cc27597::function_fcf56ab5(1);
	var_9c7cecce function_48f26766();
	var_7aec779b function_48f26766();
	namespace_80983c42::function_67e7a937("lighting_hangar_a");
	level notify("hash_dc2436e4");
	namespace_82b91a51::function_a0938376();
	level namespace_ad23e503::function_9d134160("flag_force_off_dust");
	thread namespace_786319bb::function_191fff49("piloted");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_82b91a51::function_56cee95(0);
	}
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_474771df
	Namespace: namespace_84eb777e
	Checksum: 0xFB1E479C
	Offset: 0xA3B0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_474771df()
{
	self endon("hash_643a7daf");
	var_1df81780 = self function_2f6b6a4c("SecurityCameraOverlay");
	wait(2);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1);
	wait(1.5);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
	level waittill("hash_dc2436e4");
	self function_2b74b70a(var_1df81780);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1);
	wait(1);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
}

/*
	Name: function_efd791ac
	Namespace: namespace_84eb777e
	Checksum: 0x81A62186
	Offset: 0xA4B0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_efd791ac()
{
	level namespace_71b8dba1::function_a463d127("kane_we_re_too_late_he_0", 2.4);
	level thread namespace_71a63eac::function_55376eeb();
	level namespace_71b8dba1::function_13b3b16a("plyr_wait_beat_when_it_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_lock_it_down_khalil_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_there_s_still_marett_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_well_those_securi_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_you_got_a_suggestion_0", 1);
	level namespace_71b8dba1::function_a463d127("kane_maretti_s_still_in_t_0", 1);
	level namespace_71b8dba1::function_13b3b16a("plyr_copy_we_re_joining_0", 1);
}

/*
	Name: function_bfe402a1
	Namespace: namespace_84eb777e
	Checksum: 0xD9A80A5D
	Offset: 0xA5E0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_bfe402a1()
{
	level.var_3fe6078c = 4096;
	var_18d84fad = level.var_3fe6078c * level.var_3fe6078c;
	level.var_3fe6078c = 8192;
	thread function_e5d81c9();
	var_d5639cb = "trigger_hacked";
	wait(3);
	level.var_79481939 = 50000;
	/#
	#/
	var_547ef388 = function_6ada35ba("hack_zone03_1", "targetname");
	function_4d816f2c("cp_level_aquifer_security", var_547ef388.var_722885f3);
	level namespace_ad23e503::function_1ab5ebec("egyptian_defend_reached");
	wait(50);
	function_5ec99c19("cp_level_aquifer_security");
	level namespace_ad23e503::function_74d6b22f("flag_egyptian_hacking_completed");
}

/*
	Name: function_e5d81c9
	Namespace: namespace_84eb777e
	Checksum: 0x775C3F5F
	Offset: 0xA718
	Size: 0x171
	Parameters: 0
	Flags: None
*/
function function_e5d81c9()
{
	level namespace_71b8dba1::function_a463d127("kane_hendricks_what_s_yo_0");
	level namespace_71b8dba1::function_a463d127("hend_khalil_s_men_are_bei_0");
	level namespace_71b8dba1::function_a463d127("plyr_we_re_not_gonna_let_0");
	level namespace_71b8dba1::function_a463d127("kane_khalil_we_ll_cover_0");
	level namespace_71b8dba1::function_a463d127("khal_we_re_being_overwhel_0", 5);
	level namespace_71b8dba1::function_a463d127("khal_we_re_pinned_down_g_0", 16);
	level namespace_ad23e503::function_1ab5ebec("hack_zone03_1_finished");
	namespace_1d1d22be::function_de37a122(0);
	level namespace_71b8dba1::function_a463d127("khal_kane_we_have_the_c_0", 1);
	level namespace_71b8dba1::function_a463d127("khal_we_re_in_i_m_patch_0", 0.25);
	level namespace_71b8dba1::function_a463d127("kane_send_me_the_security_0");
	level notify("hash_476bcf62");
}

/*
	Name: function_c5734389
	Namespace: namespace_84eb777e
	Checksum: 0x3550D5FB
	Offset: 0xA898
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_c5734389()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_8fedf36c) && var_5dc5e20a function_c7e339d1(var_5dc5e20a.var_8fedf36c))
		{
			var_5dc5e20a.var_8fedf36c function_c6a7810e();
			wait(0.05);
			var_da1bd38e = var_5dc5e20a.var_dda84f1a[3].var_722885f3 + VectorScale((0, 0, 1), 900);
			var_5dc5e20a.var_8fedf36c.var_722885f3 = var_da1bd38e;
			var_5dc5e20a.var_8fedf36c.var_6ab6f4fd = var_5dc5e20a.var_dda84f1a[3].var_6ab6f4fd;
			var_5dc5e20a.var_8fedf36c function_34ef7d07();
		}
	}
}

/*
	Name: function_e5c63786
	Namespace: namespace_84eb777e
	Checksum: 0x74188E1A
	Offset: 0xAA20
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_e5c63786(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_04_securityfeed_3rd_sh010");
}

/*
	Name: function_724496b1
	Namespace: namespace_84eb777e
	Checksum: 0xF625970E
	Offset: 0xAA78
	Size: 0x41B
	Parameters: 2
	Flags: None
*/
function function_724496b1(var_b04bc952, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	var_f13bfa4a = [];
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	namespace_786319bb::function_287ca2ad(1);
	thread namespace_786319bb::function_77fde091(0);
	thread namespace_786319bb::function_191fff49("landing_mode");
	namespace_cc27597::function_8f9f34e0("cin_aqu_04_20_breach_1st_rappel_main_enemies", &function_418127ed, "init");
	namespace_cc27597::function_c35e6aab("cin_aqu_04_20_breach_1st_rappel_main");
	namespace_cc27597::function_c35e6aab("cin_aqu_04_20_breach_1st_rappel_main_enemies");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_a2995f22();
	}
	level.var_79481939 = 1;
	namespace_1d1d22be::function_de37a122();
	level namespace_ad23e503::function_74d6b22f("flag_egyptian_hacking_completed");
	level namespace_ad23e503::function_74d6b22f("hack_terminals3");
	function_43f446e3("lcombat_air_attack");
	thread function_aa49745a();
	thread function_408c7d50();
	namespace_786319bb::function_c897523d("respawn_lcombat");
	namespace_786319bb::function_9cea70b7();
	thread namespace_786319bb::function_9cf1804b();
	thread namespace_786319bb::function_fd0dbe22();
	thread namespace_786319bb::function_367616d8();
	thread function_61034146(1);
	level notify("hash_7725d2f1");
	level thread namespace_71a63eac::function_b1ee6c2d();
	if(var_74cd64bc)
	{
		while(!isdefined(level.var_9b1393e7[0].var_8fedf36c))
		{
			wait(0.05);
		}
	}
	namespace_786319bb::function_fc653485();
	namespace_786319bb::function_1215f9e4(3);
	wait(0.05);
	function_dcbdf6db("exterior_support_land", 3);
	level namespace_ad23e503::function_74d6b22f("lcombat_respawn_ground");
	function_5ec99c19("cp_level_aquifer_land");
	level.var_4712f308 = undefined;
	level notify("hash_6da3f34c");
	namespace_ad23e503::function_74d6b22f("player_really_landed");
	level thread namespace_71a63eac::function_36cd6ee8();
	level namespace_ad23e503::function_1ab5ebec("start_pre_breach");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_aa49745a
	Namespace: namespace_84eb777e
	Checksum: 0xE3135DE1
	Offset: 0xAEA0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_aa49745a()
{
	var_d8e7bbc = namespace_14b42b8a::function_7922262b("breadcrumb_side_2");
	function_4d816f2c("cp_level_aquifer_capture");
	level waittill("hash_6da3f34c");
	function_4d816f2c("cp_level_aquifer_capture_defend", var_d8e7bbc.var_722885f3);
	level namespace_ad23e503::function_d266a8b4(40, "side_combat_advance");
	function_5ec99c19("cp_level_aquifer_capture_defend", var_d8e7bbc.var_722885f3);
	function_4d816f2c("cp_level_aquifer_capture_hangar");
	thread namespace_d0ef8521::function_45d1556("breadcrumb_side_combat");
}

/*
	Name: function_3cff89e8
	Namespace: namespace_84eb777e
	Checksum: 0x66E33583
	Offset: 0xAF98
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_3cff89e8()
{
	var_3865186 = 1;
	wait(var_3865186);
	level namespace_71b8dba1::function_13b3b16a("plyr_you_got_a_suggestion_0");
	wait(var_3865186);
	level namespace_71b8dba1::function_a463d127("kane_maretti_s_still_in_t_0");
	wait(var_3865186);
	level namespace_71b8dba1::function_13b3b16a("plyr_copy_we_re_joining_0");
	wait(var_3865186);
}

/*
	Name: function_408c7d50
	Namespace: namespace_84eb777e
	Checksum: 0x16D05F29
	Offset: 0xB028
	Size: 0x433
	Parameters: 0
	Flags: None
*/
function function_408c7d50()
{
	level.var_6657ee03 = [];
	var_14edd77e = function_99201f25("egyptian_redshirt_hack_defends", "targetname");
	foreach(var_d8e7bbc in var_14edd77e)
	{
		var_6b45b25e = var_d8e7bbc namespace_2f06d687::function_9b7fda5e(1);
		var_6b45b25e namespace_82b91a51::function_958c7633();
		level.var_6657ee03[level.var_6657ee03.size] = var_6b45b25e;
	}
	level.var_6657ee03[level.var_6657ee03.size] = function_25604491("khalil_hack_defends");
	level.var_24223342 = function_eb16c4f5("hendricks_hack_defends");
	if(isdefined(level.var_24223342))
	{
		level.var_24223342 namespace_82b91a51::function_958c7633();
	}
	namespace_d5067552::function_bae40a28("spawn_manager_lcombat_trans_wave1");
	thread namespace_786319bb::function_3ba6e66c();
	thread namespace_786319bb::function_dfc31fd4();
	level namespace_ad23e503::function_1ab5ebec("player_really_landed");
	namespace_d5067552::function_2992720d("spawn_manager_lcombat_trans_wave1");
	namespace_d5067552::function_bae40a28("spawn_manager_hack_zone02_4");
	namespace_4dbf3ae3::function_42e87952("lcombat_start_backwave", "targetname");
	level namespace_ad23e503::function_d266a8b4(50, "side_combat_advance");
	namespace_d5067552::function_2992720d("spawn_manager_hack_zone02_4");
	namespace_4dbf3ae3::function_42e87952("lcombat_ally_move_1", "targetname");
	thread namespace_786319bb::function_7d76ae16("volume_hack_zone02_4", "volume_hack_zone02_5");
	namespace_d5067552::function_bae40a28("spawn_manager_hack_zone02_5");
	level namespace_ad23e503::function_d266a8b4(50, "side_combat_advance2");
	namespace_4dbf3ae3::function_42e87952("lcombat_ally_move_2", "targetname");
	thread namespace_786319bb::function_7d76ae16("volume_hack_zone02_5", "retreat_right_side");
	namespace_d5067552::function_2992720d("spawn_manager_hack_zone02_5");
	namespace_4dbf3ae3::function_42e87952("lcombat_wasp_spawntrig", "targetname");
	level namespace_ad23e503::function_d266a8b4(50, "side_combat_stop");
	thread namespace_786319bb::function_7d76ae16("retreat_right_side", "volume_hack_zone02_6");
	namespace_4dbf3ae3::function_42e87952("lcombat_ally_move_4", "targetname");
	namespace_d5067552::function_bae40a28("spawn_manager_hack_zone02_6");
	namespace_4dbf3ae3::function_42e87952("egyptian_redshirt_hack_defends_2ndwave_trig", "targetname");
	namespace_4dbf3ae3::function_4ab4cb6(35, "lcombat_cleanup_start_trig");
	thread namespace_786319bb::function_5a160fe7();
	namespace_d5067552::function_2992720d("spawn_manager_hack_zone02_6");
	thread namespace_786319bb::function_f8243869();
}

/*
	Name: function_113af563
	Namespace: namespace_84eb777e
	Checksum: 0x5A0E58CB
	Offset: 0xB468
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_113af563(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_14b42b8a::function_368120a1("scene", "cin_aqu_04_07_lowerplatform_1st_flight_main");
}

/*
	Name: function_45fe5e11
	Namespace: namespace_84eb777e
	Checksum: 0xBC7EBD9D
	Offset: 0xB4B8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_45fe5e11()
{
	level.var_684a8d37 = function_3ed36777("breach_enemies");
}

/*
	Name: function_af4fc2de
	Namespace: namespace_84eb777e
	Checksum: 0x58BC10D9
	Offset: 0xB4E8
	Size: 0x933
	Parameters: 2
	Flags: None
*/
function function_af4fc2de(var_b04bc952, var_74cd64bc)
{
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	namespace_786319bb::function_287ca2ad(1);
	if(var_74cd64bc)
	{
		namespace_cc27597::function_8f9f34e0("cin_aqu_04_20_breach_1st_rappel_main_enemies", &function_418127ed, "init");
		namespace_cc27597::function_c35e6aab("cin_aqu_04_20_breach_1st_rappel_main");
		namespace_cc27597::function_c35e6aab("cin_aqu_04_20_breach_1st_rappel_main_enemies");
		namespace_1d1d22be::function_de37a122(0);
		level namespace_ad23e503::function_74d6b22f("side_combat_stop");
		function_4d816f2c("cp_level_aquifer_capture");
		namespace_d7916d65::function_a2995f22();
	}
	level notify("hash_7725d2f1");
	namespace_786319bb::function_c897523d("none");
	function_eb16c4f5("hendricks_pre_breach");
	level.var_24223342 namespace_82b91a51::function_958c7633();
	var_14b42b8a = function_6ada35ba("breach_scene_origin", "targetname");
	level namespace_ad23e503::function_1ab5ebec("start_pre_breach");
	level namespace_ad23e503::function_74d6b22f("breach_hangar_active");
	thread function_b9f6cf69();
	thread namespace_d0ef8521::function_45d1556("pre_breach_breadcrumb");
	namespace_4dbf3ae3::function_42e87952("hendricks_final_run_lcombat", "targetname");
	level namespace_ad23e503::function_d266a8b4(60, "on_hangar_exterior");
	level namespace_ad23e503::function_74d6b22f("on_hangar_exterior");
	namespace_1d1d22be::function_de37a122(0);
	namespace_80983c42::function_67e7a937("lighting_hangar_hallways_perf_lights");
	namespace_80983c42::function_80983c42("lighting_hangar_a");
	level namespace_ad23e503::function_74d6b22f("disable_player_enter_vtol");
	level.var_24223342 = function_eb16c4f5("hendricks_hangar");
	thread function_5b97b8ac();
	level namespace_ad23e503::function_9d134160("start_pre_breach");
	level notify("hash_409a1fc1");
	wait(0.1);
	thread namespace_786319bb::function_8c7dc4c3();
	thread function_b2a5e2c2();
	level namespace_ad23e503::function_1ab5ebec("just_breach_it");
	level thread namespace_71a63eac::function_5ac17e2c();
	var_791757 = 1;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_44578351 = function_9b7fda5e("script_model", var_14b42b8a.var_722885f3);
		var_44578351 function_e48f905e("p7_ven_carabiner");
		if(isdefined(var_791757))
		{
		}
		else
		{
		}
		var_44578351.var_170527fb = "" + var_791757 + "";
		var_791757++;
	}
	var_c89e148a = function_6ada35ba("hangar_vtol_01", "targetname");
	if(isdefined(var_c89e148a))
	{
		var_c89e148a function_7d0838b3(0.8);
	}
	thread namespace_786319bb::function_75ab4ede(1);
	thread function_70e17249();
	level thread namespace_1d1d22be::function_4e875e0d();
	level thread namespace_1d1d22be::function_16a46955();
	level thread namespace_71a63eac::function_4de42644();
	thread function_2fcfc76(level.var_24223342, "stop_chase_bullets");
	namespace_786319bb::function_ae0b01fe(1);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_6ece97b7::function_113a0740, 1);
	if(isdefined(level.var_2570f267))
	{
		level thread [[level.var_2570f267]]();
	}
	var_88ade69e = function_6ada35ba("pre_breach_breadcrumb", "targetname").var_aef176e7;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_88ade69e) && var_5dc5e20a == var_88ade69e)
		{
			continue;
		}
		if(level.var_9b1393e7.size == 1)
		{
			var_b0633588 = function_6ada35ba("pre_breach_zone", "targetname");
			if(var_5dc5e20a function_32fa5072(var_b0633588))
			{
				var_5dc5e20a.var_af68e56e = 1;
			}
		}
		var_5dc5e20a.var_1aefe698 = 1;
	}
	namespace_cc27597::function_8f9f34e0("cin_aqu_04_20_breach_1st_rappel_main_enemies", &function_f9027bac, "play");
	namespace_cc27597::function_8f9f34e0("cin_aqu_04_20_breach_1st_rappel_main", &function_3a12692e, "play");
	var_14b42b8a thread namespace_cc27597::function_43718187("cin_aqu_04_20_breach_1st_rappel_main_enemies");
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_04_20_breach_1st_rappel_main", level.var_24223342);
	namespace_84970cc4::function_966ecb29(level.var_9b1393e7, &namespace_6ece97b7::function_113a0740, 0);
	level notify("hash_e137bd35");
	if(isdefined(level.var_24223342))
	{
		namespace_82b91a51::function_958c7633(level.var_24223342);
		level.var_24223342 namespace_6f7b2095::function_1b497663("r");
	}
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
	function_5ec99c19("cp_level_aquifer_capture_hangar");
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_4890e520);
}

/*
	Name: function_48728eb8
	Namespace: namespace_84eb777e
	Checksum: 0x213FB249
	Offset: 0xBE28
	Size: 0x11B
	Parameters: 4
	Flags: None
*/
function function_48728eb8(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	var_c89e148a = function_6ada35ba("hangar_vtol_01", "targetname");
	if(isdefined(var_c89e148a))
	{
		var_c89e148a function_7d0838b3(0.8);
	}
	if(var_74cd64bc)
	{
		function_4d816f2c("cp_level_aquifer_capture");
	}
	thread function_5d32874c(1);
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_04_20_breach_1st_rappel_main");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_04_20_breach_1st_rappel_main_enemies");
	level namespace_ad23e503::function_74d6b22f("inside_aquifer");
}

/*
	Name: function_f9027bac
	Namespace: namespace_84eb777e
	Checksum: 0x5A36F900
	Offset: 0xBF50
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function function_f9027bac(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("play_breach");
	foreach(var_e98b4e9b in var_c77d2837)
	{
		var_e98b4e9b.var_fb7ce72a = &function_c5926a75;
	}
}

/*
	Name: function_3a12692e
	Namespace: namespace_84eb777e
	Checksum: 0xC4826B47
	Offset: 0xC010
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_3a12692e(var_c77d2837)
{
	level waittill("hash_48b02987");
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &function_83fd42b5);
}

/*
	Name: function_418127ed
	Namespace: namespace_84eb777e
	Checksum: 0xC76065C4
	Offset: 0xC060
	Size: 0x169
	Parameters: 1
	Flags: None
*/
function function_418127ed(var_c77d2837)
{
	foreach(var_2eecd77a in var_c77d2837)
	{
		namespace_82b91a51::function_958c7633(var_2eecd77a);
		var_2eecd77a namespace_71e9cb84::function_74d6b22f("toggle_enemy_highlight", 1);
	}
	level namespace_ad23e503::function_1ab5ebec("play_breach");
	foreach(var_2eecd77a in var_c77d2837)
	{
		namespace_82b91a51::function_4b741fdc(var_2eecd77a);
		var_2eecd77a namespace_71e9cb84::function_74d6b22f("toggle_enemy_highlight", 0);
	}
}

/*
	Name: function_c5926a75
	Namespace: namespace_84eb777e
	Checksum: 0x708045B1
	Offset: 0xC1D8
	Size: 0x17
	Parameters: 2
	Flags: None
*/
function function_c5926a75(var_5dc5e20a, var_d7b19111)
{
	return 1;
}

/*
	Name: function_70e17249
	Namespace: namespace_84eb777e
	Checksum: 0x4852EF60
	Offset: 0xC1F8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_70e17249()
{
	wait(3);
	level notify("hash_d18ea658");
	wait(2.4);
	var_f96bc9fe = function_6ada35ba("breach_exploder", "script_parameters");
	if(isdefined(var_f96bc9fe))
	{
		var_d3694f95 = function_6ada35ba("breach_exploder_victim", "targetname");
		var_d3694f95 = var_d3694f95 namespace_2f06d687::function_9b7fda5e(1);
		wait(0.5);
		var_f96bc9fe function_2992720d();
	}
}

/*
	Name: function_bd6a294
	Namespace: namespace_84eb777e
	Checksum: 0x3AA4CCC3
	Offset: 0xC2C8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_bd6a294()
{
	level namespace_ad23e503::function_1ab5ebec("init_run");
	if(level namespace_ad23e503::function_7922262b("start_pre_breach"))
	{
		level endon("hash_409a1fc1");
		wait(6);
		level namespace_71b8dba1::function_a463d127("kane_get_into_position_w_0");
		wait(8);
		level namespace_71b8dba1::function_a463d127("hend_push_forward_maret_0");
	}
}

/*
	Name: function_b2a5e2c2
	Namespace: namespace_84eb777e
	Checksum: 0x1029692D
	Offset: 0xC368
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b2a5e2c2()
{
	level endon("hash_39437403");
	level namespace_ad23e503::function_1ab5ebec("breach_vo_complete");
	level namespace_ad23e503::function_74d6b22f("just_breach_it");
}

/*
	Name: function_5b97b8ac
	Namespace: namespace_84eb777e
	Checksum: 0x1E0DAF65
	Offset: 0xC3C0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_5b97b8ac()
{
	level waittill("hash_502b1395");
	function_b8d9ad6e(1, 0.4, 0.3);
	level waittill("hash_2e794221");
	function_b8d9ad6e(0.4, 1, 0.3);
	level waittill("hash_5ba6634c");
	function_b8d9ad6e(1, 0.3, 0.3);
	wait(2.6);
	function_b8d9ad6e(0.5, 1, 0.2);
	wait(0.3);
}

/*
	Name: function_3ed36777
	Namespace: namespace_84eb777e
	Checksum: 0xC4206109
	Offset: 0xC498
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_3ed36777(var_4be20d44)
{
	var_657b1773 = [];
	var_14edd77e = function_99201f25(var_4be20d44, "script_noteworthy");
	foreach(var_2f06d687 in var_14edd77e)
	{
		var_2f06d687 namespace_2f06d687::function_994832bd(&function_abc982c8);
		var_6b45b25e = var_2f06d687 namespace_2f06d687::function_9b7fda5e(1, var_2f06d687.var_170527fb);
		var_657b1773[var_657b1773.size] = var_6b45b25e;
	}
	return var_657b1773;
}

/*
	Name: function_abc982c8
	Namespace: namespace_84eb777e
	Checksum: 0x64F903FC
	Offset: 0xC5C8
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_abc982c8()
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_82b91a51::function_958c7633();
	level namespace_ad23e503::function_1ab5ebec("just_breach_it");
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_82b91a51::function_4b741fdc();
	self waittill("hash_128f8789");
}

/*
	Name: function_8888ffc6
	Namespace: namespace_84eb777e
	Checksum: 0x5F577C08
	Offset: 0xC690
	Size: 0x171
	Parameters: 0
	Flags: None
*/
function function_8888ffc6()
{
	var_5948b3df = function_6ada35ba("pre_breach_zone", "targetname");
	while(level namespace_ad23e503::function_7922262b("start_pre_breach"))
	{
		var_5948b3df waittill("hash_4dbf3ae3", var_aef176e7);
		if(!(isdefined(var_aef176e7.var_cfe457fd) && var_aef176e7.var_cfe457fd))
		{
			if(function_65f192a6(var_aef176e7))
			{
				var_aef176e7.var_cfe457fd = 1;
				var_aef176e7 namespace_71e9cb84::function_e9c3870b("highlight_ai", 1);
			}
		}
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("highlight_ai", 0);
	}
}

/*
	Name: function_b9f6cf69
	Namespace: namespace_84eb777e
	Checksum: 0x6ABC71FC
	Offset: 0xC810
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b9f6cf69()
{
	level namespace_ad23e503::function_1ab5ebec("start_pre_breach");
	thread function_bba73196();
	level namespace_ad23e503::function_74d6b22f("init_run");
	level namespace_ad23e503::function_1ab5ebec("on_hangar_exterior");
}

/*
	Name: function_bba73196
	Namespace: namespace_84eb777e
	Checksum: 0xCF7F42B
	Offset: 0xC890
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_bba73196()
{
	level endon("hash_409a1fc1");
	level namespace_71b8dba1::function_a463d127("kane_damn_it_nrc_forces_0");
	level namespace_71b8dba1::function_13b3b16a("plyr_kane_what_s_your_pl_0");
	level namespace_71b8dba1::function_a463d127("kane_rappel_over_the_edge_0", 0.1);
	level namespace_71b8dba1::function_13b3b16a("plyr_there_s_still_a_rein_0", 0.1);
	level namespace_71b8dba1::function_a463d127("kane_i_ll_take_care_it_0", 0.2);
	level namespace_ad23e503::function_74d6b22f("breach_vo_complete");
	thread function_bd6a294();
}

/*
	Name: function_597495c8
	Namespace: namespace_84eb777e
	Checksum: 0xC3B0700B
	Offset: 0xC990
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_597495c8()
{
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_remember_we_need_hy_0");
	level.var_24223342 namespace_71b8dba1::function_81141386("hend_ready_go_0");
}

/*
	Name: function_d22b2659
	Namespace: namespace_84eb777e
	Checksum: 0x71C5DDBB
	Offset: 0xC9E0
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_d22b2659(var_b04bc952, var_74cd64bc)
{
	var_c89e148a = function_6ada35ba("hangar_vtol_01", "targetname");
	if(isdefined(var_c89e148a))
	{
		var_c89e148a function_7d0838b3(0.8);
	}
	function_4d816f2c("cp_level_aquifer_capture_pursue");
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_287ca2ad(1);
	if(var_74cd64bc)
	{
		namespace_1d1d22be::function_de37a122(0);
		namespace_d7916d65::function_a2995f22();
	}
	level namespace_ad23e503::function_1ab5ebec("inside_aquifer");
	level notify("hash_7725d2f1");
	namespace_786319bb::function_8bf8a765();
	thread function_61034146(0);
	thread function_e2d8799f(1);
	thread function_5d32874c(1);
	level thread namespace_e2cb8359::function_2fc2978c();
	thread namespace_e2cb8359::function_608c4683();
	level namespace_ad23e503::function_1ab5ebec("inroom");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_b8af1c13
	Namespace: namespace_84eb777e
	Checksum: 0x713DDCE3
	Offset: 0xCC40
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_b8af1c13(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_1ab5ebec("inroom");
}

/*
	Name: function_53d54ffb
	Namespace: namespace_84eb777e
	Checksum: 0x626FFD4
	Offset: 0xCC90
	Size: 0x483
	Parameters: 2
	Flags: None
*/
function function_53d54ffb(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_74d6b22f("inside_aquifer");
	level notify("hash_7725d2f1");
	level.var_24223342 = function_eb16c4f5("hendricks_boss_intro");
	level.var_24223342 namespace_82b91a51::function_958c7633();
	level.var_24223342 namespace_76d95162::function_d9f49fba(0);
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_287ca2ad(1);
	if(var_74cd64bc)
	{
		namespace_1d1d22be::function_de37a122(0);
		thread function_61034146(0);
		thread function_e2d8799f(1);
		thread function_5d32874c(1);
		function_4d816f2c("cp_level_aquifer_capture");
		namespace_d7916d65::function_a2995f22();
		namespace_cc27597::function_c35e6aab("cin_aqu_07_not_yourself_3rd_shot010");
	}
	level thread function_6a11f4cb();
	var_d3888511 = namespace_4dbf3ae3::function_1ab5ebec("sniper_intro_igc");
	thread function_e2d8799f(0);
	thread function_5d32874c(0);
	if(isdefined(level.var_ffddda4a))
	{
		level thread [[level.var_ffddda4a]]();
	}
	level thread namespace_71a63eac::function_1a168f0c();
	namespace_cc27597::function_8f9f34e0("cin_aqu_07_not_yourself_3rd_shot010", &function_9480ffc2, "play");
	namespace_cc27597::function_8f9f34e0("cin_aqu_07_not_yourself_3rd_shot130", &function_cd553ae9, "done");
	namespace_cc27597::function_8f9f34e0("cin_aqu_07_not_yourself_3rd_shot010", &function_d90541d7, "skip_completed");
	var_c77d2837 = [];
	if(!isdefined(var_c77d2837))
	{
		var_c77d2837 = [];
	}
	else if(!function_6e2770d8(var_c77d2837))
	{
		var_c77d2837 = function_84970cc4(var_c77d2837);
	}
	var_c77d2837[var_c77d2837.size] = var_d3888511.var_aef176e7;
	var_c77d2837["hendricks"] = level.var_24223342;
	level thread namespace_cc27597::function_43718187("cin_aqu_07_not_yourself_3rd_shot010", var_c77d2837);
	level waittill("hash_9f84cee3");
	var_a3d46ee4 = function_6ada35ba("intro_exploder", "script_noteworthy");
	if(isdefined(var_a3d46ee4))
	{
		var_a3d46ee4 function_2992720d();
	}
	level waittill("hash_cd553ae9");
	level thread namespace_71a63eac::function_99caac9d();
	wait(0.2);
	namespace_9f824288::function_5d2cdd99();
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_7f27211
	Namespace: namespace_84eb777e
	Checksum: 0x1D0278A7
	Offset: 0xD120
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_7f27211(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_cd553ae9
	Namespace: namespace_84eb777e
	Checksum: 0x4E0C4DCD
	Offset: 0xD150
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_cd553ae9(var_c77d2837)
{
	level notify("hash_cd553ae9");
	namespace_82b91a51::function_93831e79("post_boss_intro");
}

/*
	Name: function_9480ffc2
	Namespace: namespace_84eb777e
	Checksum: 0xCDBE005E
	Offset: 0xD190
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_9480ffc2(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a thread namespace_786319bb::function_89eaa1b3(1.5);
	}
}

/*
	Name: function_d90541d7
	Namespace: namespace_84eb777e
	Checksum: 0xDB0966B5
	Offset: 0xD238
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_d90541d7(var_c77d2837)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
	}
}

/*
	Name: function_6a11f4cb
	Namespace: namespace_84eb777e
	Checksum: 0xE8168A33
	Offset: 0xD2E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6a11f4cb()
{
	var_ce043be7 = namespace_4dbf3ae3::function_1ab5ebec("sniper_mosh");
	var_ce043be7.var_aef176e7 thread namespace_786319bb::function_89eaa1b3(1);
}

/*
	Name: function_8a28a59e
	Namespace: namespace_84eb777e
	Checksum: 0xFFEE2C21
	Offset: 0xD338
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_8a28a59e(var_b04bc952, var_74cd64bc)
{
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	if(var_74cd64bc)
	{
		namespace_1d1d22be::function_de37a122(0);
		function_4d816f2c("cp_level_aquifer_capture");
		namespace_d7916d65::function_a2995f22();
	}
	level.var_24223342 = function_eb16c4f5("hendricks_boss");
	level.var_24223342 namespace_d84e54db::function_b4f5e3b9(0);
	level namespace_ad23e503::function_74d6b22f("inside_aquifer");
	level namespace_ad23e503::function_74d6b22f("inroom");
	thread function_61034146(0);
	thread function_e2d8799f(0);
	thread function_5d32874c(0);
	namespace_80983c42::function_67e7a937("lighting_hangar_a");
	thread namespace_cac6a05e::function_998c817d();
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_287ca2ad(1);
	namespace_786319bb::function_2085bf94("debris_clip", 1);
	level namespace_ad23e503::function_1ab5ebec("hyperion_start_tree_scene");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_33c36478
	Namespace: namespace_84eb777e
	Checksum: 0xBA245C30
	Offset: 0xD5A0
	Size: 0x263
	Parameters: 4
	Flags: None
*/
function function_33c36478(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_capture_pursue");
	}
	function_5ec99c19("cp_level_aquifer_capture");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot010");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot020");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot030");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot040");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot050");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot060");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot070");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot080");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot090");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot100");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot110");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot120");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_not_yourself_3rd_shot130");
}

/*
	Name: function_d6b95c0b
	Namespace: namespace_84eb777e
	Checksum: 0x7BCB5D6A
	Offset: 0xD810
	Size: 0x35B
	Parameters: 2
	Flags: None
*/
function function_d6b95c0b(var_b04bc952, var_74cd64bc)
{
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(1);
	function_eb16c4f5("hendricks_hideout");
	if(var_74cd64bc)
	{
		namespace_cc27597::function_c35e6aab("cin_aqu_16_outro_3rd_sh010", level.var_24223342);
		namespace_1d1d22be::function_de37a122(0);
		thread namespace_cac6a05e::function_510d0407();
		level namespace_ad23e503::function_74d6b22f("inside_aquifer");
	}
	level namespace_ad23e503::function_74d6b22f("hyperion_start_tree_scene");
	namespace_786319bb::function_75ab4ede(0);
	level notify("hash_7725d2f1");
	thread function_61034146(0);
	thread function_e2d8799f(1);
	thread function_5d32874c(1);
	if(var_74cd64bc)
	{
		level.var_24223342 namespace_82b91a51::function_958c7633();
	}
	level.var_24223342 namespace_d84e54db::function_ceb883cd("cqb", 0);
	level.var_24223342 namespace_d84e54db::function_ceb883cd("sprint", 1);
	var_c8a3ac29 = namespace_14b42b8a::function_7922262b("hideout_obj_struct", "targetname");
	namespace_4dbf3ae3::function_42e87952("leave_hideout", "targetname");
	namespace_71e9cb84::function_74d6b22f("toggle_pbg_banks", 1);
	if(var_74cd64bc)
	{
		namespace_786319bb::function_2085bf94("hideout_door", 1);
		namespace_786319bb::function_2085bf94("hideout_doors_closed", 1);
		namespace_d7916d65::function_a2995f22();
		namespace_e2cb8359::function_1d5b05a(var_74cd64bc);
	}
	else
	{
		level namespace_ad23e503::function_1ab5ebec("hyperion_start_tree_scene");
		level waittill("hash_a35499d1");
	}
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_48ab6241
	Namespace: namespace_84eb777e
	Checksum: 0x1CF19B46
	Offset: 0xDB78
	Size: 0x11D
	Parameters: 4
	Flags: None
*/
function function_48ab6241(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_07_01_maretti_1st_dropit");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_05_20_boss_3rd_death_main");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_05_20_boss_3rd_death_sh010");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_05_20_boss_3rd_death_sh020");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_05_20_boss_3rd_death_debris");
	level namespace_14b42b8a::function_368120a1("scene", "cin_aqu_16_outro_3rd_sh010");
	if(var_74cd64bc)
	{
		return;
	}
}

/*
	Name: function_95463da0
	Namespace: namespace_84eb777e
	Checksum: 0x28FC00C1
	Offset: 0xDCA0
	Size: 0x333
	Parameters: 2
	Flags: None
*/
function function_95463da0(var_b04bc952, var_74cd64bc)
{
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	if(var_74cd64bc)
	{
		namespace_1d1d22be::function_de37a122(0);
		thread namespace_cac6a05e::function_510d0407();
		level namespace_ad23e503::function_74d6b22f("inside_aquifer");
		namespace_d7916d65::function_a2995f22();
	}
	function_4d816f2c("cp_level_aquifer_exfil");
	namespace_71e9cb84::function_74d6b22f("toggle_pbg_banks", 1);
	level namespace_ad23e503::function_74d6b22f("hyperion_start_tree_scene");
	namespace_786319bb::function_75ab4ede(0);
	if(var_74cd64bc)
	{
		thread namespace_786319bb::function_2085bf94("hideout_door", 0);
		thread namespace_786319bb::function_2085bf94("hideout_doors_closed", 0);
	}
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(1);
	level notify("hash_7725d2f1");
	thread function_61034146(0);
	thread function_e2d8799f(1);
	thread function_5d32874c(1);
	namespace_80983c42::function_80983c42("lighting_hangar_b");
	thread namespace_786319bb::function_44287aa3();
	function_eb16c4f5("hendricks_hideout");
	namespace_4dbf3ae3::function_42e87952("leave_hideout", "targetname");
	if(var_74cd64bc)
	{
		level.var_24223342 namespace_82b91a51::function_958c7633();
		level namespace_ad23e503::function_1ab5ebec("in_hideout");
		namespace_82b91a51::function_93831e79("post_hideout_igc");
	}
	thread namespace_d0ef8521::function_45d1556("start_runout_breadcrumbs");
	thread namespace_e2cb8359::function_ff024877();
	level namespace_ad23e503::function_1ab5ebec("runout_done");
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_fb8ad8d6
	Namespace: namespace_84eb777e
	Checksum: 0x1D7DDDFA
	Offset: 0xDFE0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_fb8ad8d6(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
}

/*
	Name: function_df17401b
	Namespace: namespace_84eb777e
	Checksum: 0x56AA7B4B
	Offset: 0xE010
	Size: 0x593
	Parameters: 2
	Flags: None
*/
function function_df17401b(var_b04bc952, var_74cd64bc)
{
	level namespace_ad23e503::function_74d6b22f("hyperion_start_tree_scene");
	level namespace_ad23e503::function_74d6b22f("inside_aquifer");
	namespace_786319bb::function_75ab4ede(0);
	thread namespace_786319bb::function_2085bf94("hideout_door", 0);
	thread namespace_786319bb::function_2085bf94("hideout_doors_closed", 0);
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(1);
	level notify("hash_7725d2f1");
	level.var_24223342 = function_eb16c4f5("escape_hendricks");
	if(var_74cd64bc)
	{
		thread function_61034146(0);
		thread function_e2d8799f(1);
		thread function_5d32874c(1);
		namespace_80983c42::function_80983c42("lighting_hangar_b");
		namespace_71e9cb84::function_74d6b22f("toggle_pbg_banks", 1);
		namespace_d7916d65::function_a2995f22();
	}
	level namespace_ad23e503::function_d3de6822("hold_for_debug_splash");
	var_48bcb988 = namespace_4dbf3ae3::function_1ab5ebec("start_exfil_igc");
	level thread namespace_71a63eac::function_ae6b41cd();
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	if(isdefined(level.var_736b3d3c))
	{
		level thread [[level.var_736b3d3c]]();
	}
	namespace_82b91a51::function_67520c6a(15, undefined, &function_5ec99c19, "cp_level_aquifer_exfil", undefined, 0);
	namespace_84970cc4::function_eaab05dc(level.var_9b1393e7, &function_83fd42b5);
	thread function_11b7a408();
	var_14b42b8a = function_6ada35ba("breach_scene_origin", "targetname");
	level notify("hash_a384e425");
	level.var_24223342 function_470f7e4c();
	function_f67ca613(0);
	level.var_24223342.var_6f71f124 = undefined;
	namespace_786319bb::function_2085bf94("crane_arm_off", 1);
	var_de878e17 = function_99201f25("hangar_doors", "targetname");
	foreach(var_a3d46ee4 in var_de878e17)
	{
		var_a3d46ee4 function_8c8e79fe();
	}
	namespace_786319bb::function_2085bf94("hangar_support", 1);
	level thread namespace_4fe3eef1::function_9908d262("mus_aquifer_comm_tower_intro");
	level thread namespace_1d1d22be::function_850c7ab7();
	level.var_24223342 thread namespace_71b8dba1::function_81141386("hend_the_hangar_is_this_w_0", 0.5);
	var_c77d2837 = [];
	if(!isdefined(var_c77d2837))
	{
		var_c77d2837 = [];
	}
	else if(!function_6e2770d8(var_c77d2837))
	{
		var_c77d2837 = function_84970cc4(var_c77d2837);
	}
	var_c77d2837[var_c77d2837.size] = var_48bcb988.var_aef176e7;
	var_c77d2837["hendricks"] = level.var_24223342;
	var_14b42b8a namespace_cc27597::function_43718187("cin_aqu_07_20_outro_1st_finale_main", var_c77d2837);
	namespace_1d795d47::function_be8adfb8(var_b04bc952);
}

/*
	Name: function_11b7a408
	Namespace: namespace_84eb777e
	Checksum: 0xE48B7B7B
	Offset: 0xE5B0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_11b7a408()
{
	level waittill("hash_944e29c7");
	level namespace_71e9cb84::function_74d6b22f("sndIGCsnapshot", 4);
	thread namespace_82b91a51::function_7e61de2b(2);
}

/*
	Name: function_647ae831
	Namespace: namespace_84eb777e
	Checksum: 0x2E652AFD
	Offset: 0xE608
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_647ae831(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		return;
	}
	namespace_1d795d47::function_552e05fb("breach_hangar_teleport", undefined);
	/#
		var_6b00ee7 = [];
		var_6b00ee7[var_6b00ee7.size] = "Dev Block strings are not supported";
		namespace_f96f74aa::function_8e158224(var_6b00ee7, 6);
	#/
}

/*
	Name: function_4d816f2c
	Namespace: namespace_84eb777e
	Checksum: 0x2665E2BD
	Offset: 0xE6A0
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_4d816f2c(var_4458affc, var_25c27e55)
{
	namespace_d0ef8521::function_74d6b22f(var_4458affc, var_25c27e55);
	if(!isdefined(level.var_d0cbcc7b))
	{
		level.var_d0cbcc7b = [];
	}
	if(!isdefined(level.var_d0cbcc7b[var_4458affc]))
	{
		level.var_d0cbcc7b[var_4458affc] = 1;
	}
	else
	{
		level.var_d0cbcc7b[var_4458affc]++;
		namespace_d0ef8521::function_48f26766(var_4458affc);
	}
}

/*
	Name: function_5ec99c19
	Namespace: namespace_84eb777e
	Checksum: 0xC39E2F74
	Offset: 0xE740
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_5ec99c19(var_4458affc, var_25c27e55, var_748e8423)
{
	if(!isdefined(var_748e8423))
	{
		var_748e8423 = 1;
	}
	if(var_748e8423 && isdefined(level.var_d0cbcc7b) && isdefined(level.var_d0cbcc7b[var_4458affc]) && level.var_d0cbcc7b[var_4458affc] > 0)
	{
		level.var_d0cbcc7b[var_4458affc]--;
		namespace_d0ef8521::function_50ccee8d(var_4458affc);
	}
	namespace_d0ef8521::function_31cd1834(var_4458affc, var_25c27e55);
}

/*
	Name: function_eb16c4f5
	Namespace: namespace_84eb777e
	Checksum: 0x6C78BD46
	Offset: 0xE7F8
	Size: 0x89
	Parameters: 1
	Flags: None
*/
function function_eb16c4f5(var_ebcf423f)
{
	if(!isdefined(level.var_24223342) || !function_5b49d38c(level.var_24223342))
	{
		var_d8e7bbc = function_6ada35ba(var_ebcf423f, "targetname");
		level.var_24223342 = var_d8e7bbc namespace_2f06d687::function_9b7fda5e(1);
	}
	return level.var_24223342;
}

/*
	Name: function_25604491
	Namespace: namespace_84eb777e
	Checksum: 0x4A6BDCE6
	Offset: 0xE890
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_25604491(var_ebcf423f)
{
	if(!isdefined(level.var_3c272574) || !function_5b49d38c(level.var_3c272574))
	{
		var_d8e7bbc = function_6ada35ba(var_ebcf423f, "targetname");
		level.var_3c272574 = var_d8e7bbc namespace_2f06d687::function_9b7fda5e(1);
		level.var_3c272574 namespace_82b91a51::function_958c7633();
	}
	return level.var_3c272574;
}

/*
	Name: function_30343b22
	Namespace: namespace_84eb777e
	Checksum: 0x171ECF83
	Offset: 0xE940
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_30343b22(var_ebcf423f)
{
	if(!isdefined(level.var_89ea8991) || !function_5b49d38c(level.var_89ea8991))
	{
		var_d8e7bbc = function_6ada35ba(var_ebcf423f, "targetname");
		level.var_89ea8991 = var_d8e7bbc namespace_2f06d687::function_9b7fda5e(1);
		level.var_89ea8991 namespace_82b91a51::function_958c7633();
		level.var_89ea8991.var_15dfd6c = 0.4;
		if(function_27c72c1b())
		{
			level.var_89ea8991.var_5cae3e73 = 1;
		}
	}
	return level.var_89ea8991;
}

/*
	Name: function_2fcfc76
	Namespace: namespace_84eb777e
	Checksum: 0x264967A2
	Offset: 0xEA30
	Size: 0x11F
	Parameters: 2
	Flags: None
*/
function function_2fcfc76(var_aef176e7, var_199e0d00)
{
	level endon(var_199e0d00);
	var_dfcc01fd = function_c4d5ec1f("ar_standard");
	wait(0.05);
	var_ab7e1bd7 = -500 * function_bc7ce905(var_aef176e7.var_6ab6f4fd) + VectorScale((0, 0, 1), 60);
	while(1)
	{
		var_55829ed5 = var_aef176e7.var_722885f3 + (function_dc99997a(-50, 50), function_dc99997a(-50, 50), 0);
		function_87f3c622(var_dfcc01fd, var_aef176e7.var_722885f3 + var_ab7e1bd7, var_55829ed5);
		wait(0.05);
	}
}

