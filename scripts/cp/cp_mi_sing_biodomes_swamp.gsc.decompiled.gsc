#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_supertrees;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes2_sound;
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
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\teamgather_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_a660d427;

/*
	Name: function_d290ebfa
	Namespace: namespace_a660d427
	Checksum: 0x34E365EC
	Offset: 0x1F98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_80f24610();
	namespace_2f06d687::function_2b37a3c9("attacking_wasp", "script_noteworthy", &function_2297c05c);
	function_7b244c18();
}

/*
	Name: function_7b244c18
	Namespace: namespace_a660d427
	Checksum: 0xD46E7321
	Offset: 0x1FF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_7b244c18()
{
	namespace_cc27597::function_8f9f34e0("cin_bio_15_02_player_vign_ontoboat_portnear", &function_4a242f62, "play");
	namespace_cc27597::function_8f9f34e0("cin_bio_15_02_player_vign_ontoboat_starboardnear", &function_4a242f62, "play");
}

/*
	Name: function_80f24610
	Namespace: namespace_a660d427
	Checksum: 0xADEBB4F9
	Offset: 0x2068
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_80f24610()
{
	level.var_c141dfcb = [];
	level.var_de54cf10 = 0;
	level.var_242afa66 = 0;
	level.var_197b567a = 0;
	level.var_1205b0f3 = [];
	level.var_1205b0f3["boat1_seat1"] = function_6ada35ba("trigger_boat_1_seat1", "targetname");
	level.var_1205b0f3["boat1_seat2"] = function_6ada35ba("trigger_boat_1_seat2", "targetname");
	level.var_1205b0f3["boat2_seat1"] = function_6ada35ba("trigger_boat_2_seat1", "targetname");
	level.var_1205b0f3["boat2_seat2"] = function_6ada35ba("trigger_boat_2_seat2", "targetname");
	namespace_769dc23f::function_b5aa3655();
	namespace_769dc23f::function_10fc44d8();
}

/*
	Name: function_46a6d6ab
	Namespace: namespace_a660d427
	Checksum: 0xD166B023
	Offset: 0x21A0
	Size: 0x503
	Parameters: 2
	Flags: None
*/
function function_46a6d6ab(var_b04bc952, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_swamps_init");
	namespace_80983c42::function_80983c42("fx_expl_swamp_swim");
	namespace_80983c42::function_80983c42("fx_expl_swamp_rail");
	namespace_80983c42::function_67e7a937("fx_expl_supertree_collapse");
	namespace_80983c42::function_67e7a937("fx_expl_lowerplatform_supertree");
	namespace_80983c42::function_67e7a937("fx_expl_fire_boat_explode");
	level thread function_2ebccf5();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_27a45d31::function_bff1a867(var_b04bc952);
		level.var_2fd26037 thread function_dd9ded92();
		level namespace_ad23e503::function_74d6b22f("player_dive_done");
		level namespace_ad23e503::function_74d6b22f("hendricks_dive");
		level namespace_ad23e503::function_74d6b22f("player_reached_bottom_finaltree");
		level namespace_ad23e503::function_74d6b22f("player_reached_top_finaltree");
		level namespace_ad23e503::function_74d6b22f("any_player_reached_bottom_finaltree");
		level namespace_ad23e503::function_74d6b22f("hendricks_played_supertree_takedown");
		level thread function_b52b6eac();
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_39af75ef, "boats_go");
		var_57a51f3c = function_6ada35ba("vista_water", "targetname");
		var_57a51f3c function_dc8c8404();
		namespace_d7916d65::function_a2995f22();
	}
	if(level.var_adcba170 !== 1)
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_jump_from_supertree");
		namespace_d0ef8521::function_31cd1834("cp_level_biodomes_jump_from_supertree");
		level.var_adcba170 = 1;
	}
	level thread function_59212f01();
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_dock_hendricks", namespace_14b42b8a::function_7922262b("dock_waypoint"));
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a namespace_82b91a51::function_32d40124(&"COOP_SWIM_INSTRUCTIONS");
	}
	namespace_4dbf3ae3::function_1ab5ebec("t_player_dock");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_dock_hendricks");
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_secure_the_dock");
	level waittill("hash_691476e5");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_secure_the_dock");
	if(level.var_2395e945.size == 1)
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_escape", namespace_14b42b8a::function_7922262b("airboat_waypoint_solo"));
		function_310b4b12(0, 0, level.var_2395e945.size);
		level thread function_1f65dbfc();
	}
	else
	{
		namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_escape", namespace_14b42b8a::function_7922262b("airboat_waypoint"));
		function_310b4b12(0, 0);
	}
	if(level.var_2395e945.size > 2)
	{
		function_310b4b12(1, 0);
	}
}

/*
	Name: function_1f65dbfc
	Namespace: namespace_a660d427
	Checksum: 0x6AB4FD9A
	Offset: 0x26B0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_1f65dbfc()
{
	while(level.var_2395e945.size == 1)
	{
		wait(0.05);
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_escape", namespace_14b42b8a::function_7922262b("airboat_waypoint"));
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_escape", namespace_14b42b8a::function_7922262b("airboat_waypoint_solo"));
	function_310b4b12(0, 0);
}

/*
	Name: function_7220010f
	Namespace: namespace_a660d427
	Checksum: 0x35D9891F
	Offset: 0x2758
	Size: 0x1BB
	Parameters: 2
	Flags: None
*/
function function_7220010f(var_b04bc952, var_74cd64bc)
{
	level.var_3599083d = 1;
	function_6c1294b8("phys_buoyancy", 1);
	function_6c1294b8("cg_viewVehicleInfluenceGunner_mode", 1);
	namespace_27a45d31::function_ddb0eeea("objective_swamps_init");
	namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_escape", namespace_14b42b8a::function_7922262b("airboat_waypoint"));
	namespace_27a45d31::function_bff1a867(var_b04bc952);
	level namespace_ad23e503::function_74d6b22f("hendricks_dive");
	function_d343057f(1);
	level thread function_2ebccf5();
	level.var_2fd26037 thread function_b7409d73();
	function_310b4b12(0, 0);
	function_310b4b12(1, 0);
	var_57a51f3c = function_6ada35ba("vista_water", "targetname");
	var_57a51f3c function_dc8c8404();
	namespace_4dbf3ae3::function_1ab5ebec("dev_trig_checkpoint");
	namespace_9f824288::function_5d2cdd99();
}

/*
	Name: function_b52b6eac
	Namespace: namespace_a660d427
	Checksum: 0x736A5301
	Offset: 0x2920
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_b52b6eac()
{
	function_6c1294b8("phys_buoyancy", 1);
	function_6c1294b8("cg_viewVehicleInfluenceGunner_mode", 1);
	level thread function_5c8dbd1b();
	level thread function_d343057f();
	level thread function_1d4f0199();
	function_9e3608e3("fxanim_supertree");
}

/*
	Name: function_2ebccf5
	Namespace: namespace_a660d427
	Checksum: 0x907D7425
	Offset: 0x29D0
	Size: 0x563
	Parameters: 0
	Flags: None
*/
function function_2ebccf5()
{
	level.var_6a118559["hunter"] = &function_32bc987b;
	namespace_80983c42::function_80983c42("grd_twr_01");
	namespace_80983c42::function_80983c42("grd_twr_02");
	namespace_80983c42::function_80983c42("grd_twr_03");
	namespace_80983c42::function_80983c42("grd_twr_04");
	function_36e4a4e3("tall_grass_boat");
	function_35a6217a("guard_tower_1", &function_963be5f4);
	function_35a6217a("guard_tower_2", &function_a59a792b);
	function_35a6217a("guard_tower_3", &function_2f957a8e);
	function_35a6217a("guard_tower_4", &function_a101398d);
	function_3f50cfab(1);
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_biodomes_sky_bridge_bundle");
	level thread function_71c5569c();
	level thread function_f06f5bf7();
	level thread function_24ae79ca();
	level thread function_fc1824d4();
	level thread function_4195b656();
	level thread function_d0b5b3de();
	level thread function_22ebbed();
	level thread function_12ca763f();
	level thread function_beedc0e7();
	level thread function_b3f809ee();
	level thread function_28313656();
	level thread function_2eee0c9c();
	level thread function_a903f6c1();
	level thread function_eff4afac();
	level thread function_9dd4818b();
	level thread function_95d3fd43();
	level thread function_c4fa2d2a();
	level thread function_72c5c9fd();
	level thread function_d8a75b5f();
	level thread function_dffe67b3();
	level thread function_d54492e();
	level thread function_2b6be7f7();
	level thread function_7f6a680f();
	level thread function_6111ddb4();
	level thread function_cfcdf5f4();
	level thread function_97247f7c();
	level thread function_81aca4ee();
	level thread function_452c817b();
	level thread function_9051a477();
	level thread function_c211eb0f();
	level thread function_5d6e5b81();
	level thread function_e2a7176();
	level thread function_70d3e476();
	level thread function_bfeb301d();
	level thread function_dacdabc9();
	level thread function_e5f905bd();
	level thread function_400cc8f4();
	level thread function_7fea5e8b();
	level thread function_daab7239();
	level thread function_ca115f5b();
	level thread function_2b558db7();
	level thread function_d665973f();
}

/*
	Name: function_df945144
	Namespace: namespace_a660d427
	Checksum: 0x54971ECF
	Offset: 0x2F40
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_df945144()
{
	var_60b2e0dc = function_99201f25("t_hendricks_boat_anim", "targetname");
	foreach(var_83a975fc in var_60b2e0dc)
	{
		var_83a975fc thread function_e46e9d15();
	}
}

/*
	Name: function_e46e9d15
	Namespace: namespace_a660d427
	Checksum: 0x61DC88CC
	Offset: 0x3000
	Size: 0x1A5
	Parameters: 0
	Flags: None
*/
function function_e46e9d15()
{
	while(1)
	{
		self namespace_4dbf3ae3::function_1ab5ebec();
		if(self.var_aef176e7 == level.var_2fd26037)
		{
			switch(self.var_caae374e)
			{
				case "left":
				{
					level thread namespace_cc27597::function_c35e6aab("cin_bio_15_03_waterpark_vign_lean_left");
					break;
				}
				case "left_exit":
				{
					level namespace_cc27597::function_43718187("cin_bio_15_03_waterpark_vign_lean_left");
					level thread namespace_cc27597::function_43718187("cin_bio_15_03_waterpark_vign_lean_center");
					break;
				}
				case "right":
				{
					level thread namespace_cc27597::function_c35e6aab("cin_bio_15_03_waterpark_vign_lean_right");
					break;
				}
				case "right_exit":
				{
					level namespace_cc27597::function_43718187("cin_bio_15_03_waterpark_vign_lean_right");
					level thread namespace_cc27597::function_43718187("cin_bio_15_03_waterpark_vign_lean_center");
					break;
				}
				case "shoot":
				{
					level thread namespace_cc27597::function_c35e6aab("cin_bio_15_03_waterpark_vign_shoot");
					break;
				}
				case "shoot_exit":
				{
					level namespace_cc27597::function_43718187("cin_bio_15_03_waterpark_vign_shoot");
					level thread namespace_cc27597::function_43718187("cin_bio_15_03_waterpark_vign_lean_center");
					break;
				}
			}
			break;
		}
	}
}

/*
	Name: function_5c8dbd1b
	Namespace: namespace_a660d427
	Checksum: 0xBFB56B9
	Offset: 0x31B0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_5c8dbd1b()
{
	level endon("hash_7dbaf7af");
	var_28159fea = function_6ada35ba("t_murky_water", "targetname");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a function_32fa5072(var_28159fea) || (isdefined(var_5dc5e20a.var_1611b636) && var_5dc5e20a.var_1611b636))
			{
				var_5dc5e20a.var_255b9315 = 1;
				continue;
			}
			var_5dc5e20a.var_255b9315 = 0;
		}
		wait(0.3);
	}
}

/*
	Name: function_e5f905bd
	Namespace: namespace_a660d427
	Checksum: 0x2566878A
	Offset: 0x32E0
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_e5f905bd()
{
	var_9ffce615 = function_6ada35ba("trigger_store_crash", "targetname");
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_53ae4df(var_9ffce615);
	}
}

/*
	Name: function_7f6a680f
	Namespace: namespace_a660d427
	Checksum: 0xB00D4CD1
	Offset: 0x33A8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_7f6a680f()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_stop_swamp_fire");
	namespace_80983c42::function_67e7a937("fx_expl_swamp_fire_tanker");
	namespace_80983c42::function_67e7a937("fx_expl_fire_prehunter_supertree");
	namespace_80983c42::function_67e7a937("fx_expl_fire_posthunter_supertree");
	namespace_80983c42::function_67e7a937("fx_expl_fire_arrivetop_supertree");
	namespace_80983c42::function_67e7a937("fx_expl_fire_deathtop_supertree");
	namespace_80983c42::function_67e7a937("fx_expl_fire_descendlast_supertree");
}

/*
	Name: function_3f50cfab
	Namespace: namespace_a660d427
	Checksum: 0x64A5BEA
	Offset: 0x3460
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_3f50cfab(var_b49e0088)
{
	if(!isdefined(var_b49e0088))
	{
		var_b49e0088 = 1;
	}
	var_8cc31d7a = function_99201f25("ferris_wheel_debris", "targetname");
	foreach(var_f79d1dda in var_8cc31d7a)
	{
		if(var_b49e0088 == 1)
		{
			var_f79d1dda function_50ccee8d();
			continue;
		}
		var_f79d1dda function_48f26766();
	}
}

/*
	Name: function_d2e5a108
	Namespace: namespace_a660d427
	Checksum: 0x77012315
	Offset: 0x3568
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_d2e5a108(var_c77d2837)
{
	function_3f50cfab(0);
}

/*
	Name: function_cfcdf5f4
	Namespace: namespace_a660d427
	Checksum: 0xC671BF7F
	Offset: 0x3598
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_cfcdf5f4()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_ferriswheel_collapse");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_biodomes_ferris_wheel_bundle", &function_d2e5a108, "done");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_ferris_wheel_bundle");
	level waittill("hash_55a06ec6");
	var_65d8b9a4 = namespace_14b42b8a::function_7922262b("s_ferris_wheel_rumble", "targetname");
	function_5e09918e("cp_biodomes_ferris_wheel_rumble", var_65d8b9a4.var_722885f3);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a function_c3945cd5(71, var_65d8b9a4.var_722885f3);
	}
}

/*
	Name: function_b898dce1
	Namespace: namespace_a660d427
	Checksum: 0x7BF2E56C
	Offset: 0x3708
	Size: 0x63
	Parameters: 4
	Flags: None
*/
function function_b898dce1(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_27a45d31::function_ddb0eeea("objective_swamps_done");
	namespace_769dc23f::function_a057c38f();
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_extract");
}

/*
	Name: function_ff8ed5e2
	Namespace: namespace_a660d427
	Checksum: 0x3E9061BE
	Offset: 0x3778
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_ff8ed5e2(var_26aaa5cc)
{
	self waittill("hash_128f8789");
	namespace_5753664b::function_43718187("depth_charge", var_26aaa5cc.var_722885f3);
}

/*
	Name: function_d343057f
	Namespace: namespace_a660d427
	Checksum: 0xF9E9C569
	Offset: 0x37C0
	Size: 0x283
	Parameters: 1
	Flags: None
*/
function function_d343057f(var_3599083d)
{
	if(!isdefined(var_3599083d))
	{
		var_3599083d = 0;
	}
	level.var_c141dfcb[0] = function_90baa7b5("airboat_1");
	level.var_c141dfcb[1] = function_90baa7b5("airboat_2");
	level thread function_bba989c4(var_3599083d);
	level thread function_247e9ab0();
	level thread function_3bb88e47();
	level thread function_381c90d7();
	function_312d4b85();
	level.var_c141dfcb[0] thread function_3d026c12();
	if(level.var_2395e945.size <= 2 && var_3599083d == 0)
	{
		function_c98db861(1);
	}
	level.var_78a73398 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 2; var_c957f6b6++)
	{
		level.var_78a73398[var_c957f6b6] = namespace_82b91a51::function_b9fd52a4("tag_origin", level.var_c141dfcb[var_c957f6b6].var_722885f3, level.var_c141dfcb[var_c957f6b6].var_6ab6f4fd);
		level.var_78a73398[var_c957f6b6] function_37f7858a(level.var_c141dfcb[var_c957f6b6], "tag_origin", (350, 0, 30));
		level.var_78a73398[var_c957f6b6].var_3e94206a = "allies";
		level.var_78a73398[var_c957f6b6].var_3a90f16b = 10000;
		level.var_78a73398[var_c957f6b6].var_2dd707 = 0;
	}
	level namespace_ad23e503::function_74d6b22f("boats_init");
	/#
		level thread function_73defa42();
	#/
}

/*
	Name: function_73defa42
	Namespace: namespace_a660d427
	Checksum: 0x6A98EA5D
	Offset: 0x3A50
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_73defa42()
{
	/#
		while(1)
		{
			foreach(var_3929e8a2 in level.var_78a73398)
			{
				namespace_f96f74aa::function_351b2d2a(var_3929e8a2.var_722885f3, var_3929e8a2.var_6ab6f4fd);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_c98db861
	Namespace: namespace_a660d427
	Checksum: 0x821FDA70
	Offset: 0x3B10
	Size: 0x1F7
	Parameters: 1
	Flags: None
*/
function function_c98db861(var_b49e0088)
{
	var_ec8cfe95 = function_6ada35ba("boat_bottom_clip_02", "targetname");
	if(var_b49e0088 == 1)
	{
		if(level.var_de54cf10 == 0)
		{
			var_ec8cfe95 function_422037f5();
			level.var_c141dfcb[1] function_422037f5();
			level.var_c141dfcb[1] function_8c8e79fe();
			level.var_c141dfcb[1] function_9ed72b0c();
			level.var_c141dfcb[1] namespace_71e9cb84::function_74d6b22f("boat_disable_sfx", 1);
			function_310b4b12(1, 1);
			level.var_de54cf10 = 1;
		}
	}
	else if(level.var_de54cf10 == 1)
	{
		var_ec8cfe95 function_4083a98e();
		level.var_c141dfcb[1] function_4083a98e();
		level.var_c141dfcb[1] function_48f26766();
		level.var_c141dfcb[1] function_991ad231();
		level.var_c141dfcb[1] namespace_71e9cb84::function_74d6b22f("boat_disable_sfx", 0);
		function_310b4b12(1, 0);
		level.var_de54cf10 = 0;
	}
}

/*
	Name: function_e5108e73
	Namespace: namespace_a660d427
	Checksum: 0x84EB7BA5
	Offset: 0x3D10
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_e5108e73(var_b49e0088)
{
	if(var_b49e0088 == 1)
	{
		if(level.var_de54cf10 == 0)
		{
			level.var_c141dfcb[1] function_8c8e79fe();
			level.var_c141dfcb[1] namespace_71e9cb84::function_74d6b22f("boat_disable_sfx", 1);
			level.var_de54cf10 = 1;
		}
	}
	else if(level.var_de54cf10 == 1)
	{
		level.var_c141dfcb[1] function_48f26766();
		level.var_c141dfcb[1] namespace_71e9cb84::function_74d6b22f("boat_disable_sfx", 0);
		level.var_de54cf10 = 0;
	}
}

/*
	Name: function_90baa7b5
	Namespace: namespace_a660d427
	Checksum: 0xA3A01296
	Offset: 0x3E28
	Size: 0xBF
	Parameters: 2
	Flags: None
*/
function function_90baa7b5(var_be93bd02, var_886ca8c3)
{
	var_886ca8c3 = namespace_96fa87af::function_7387a40a(var_be93bd02);
	var_886ca8c3 function_8d63f8d0(0);
	var_886ca8c3 function_991ad231();
	var_886ca8c3 thread function_5175e36a();
	var_886ca8c3 function_917f75ac(1, 1);
	var_886ca8c3 function_917f75ac(2, 1);
	return var_886ca8c3;
}

/*
	Name: function_3bb88e47
	Namespace: namespace_a660d427
	Checksum: 0x48AD48F6
	Offset: 0x3EF0
	Size: 0x129
	Parameters: 0
	Flags: None
*/
function function_3bb88e47()
{
	var_27c4935 = (0, 0, 0);
	foreach(var_f2684ab8 in level.var_1205b0f3)
	{
		var_f2684ab8 function_48f26766();
		var_f2684ab8.var_5356d2cc = namespace_82b91a51::function_14518e76(var_f2684ab8, &"cp_prompt_entervehicle_biodomes_boat", &"CP_MI_SING_BIODOMES_AIRBOAT", &function_5e1bcb15);
		var_f2684ab8.var_5356d2cc thread namespace_a230c2b1::function_e0e2d0fe((1, 1, 1), 600, 0);
		var_f2684ab8.var_5356d2cc namespace_a230c2b1::function_e54c54c3();
	}
}

/*
	Name: function_5e1bcb15
	Namespace: namespace_a660d427
	Checksum: 0x5BF13247
	Offset: 0x4028
	Size: 0x361
	Parameters: 1
	Flags: None
*/
function function_5e1bcb15(var_6bfe1586)
{
	switch(self.var_4dbf3ae3.var_170527fb)
	{
		case "trigger_boat_1_seat1":
		{
			level.var_c141dfcb[0] function_917f75ac(1, 0);
			self namespace_a230c2b1::function_e54c54c3();
			var_6bfe1586.var_462738ee = level.var_c141dfcb[0].var_8202763a;
			var_6bfe1586.var_8b449b0f = 1;
			var_6bfe1586 thread function_d53a8683(level.var_c141dfcb[0]);
			var_6bfe1586 thread function_b7a3f7a0(1, self, level.var_c141dfcb[0]);
			break;
		}
		case "trigger_boat_1_seat2":
		{
			level.var_c141dfcb[0] function_917f75ac(2, 0);
			var_6bfe1586.var_462738ee = level.var_c141dfcb[0].var_8202763a;
			var_6bfe1586.var_8b449b0f = 2;
			var_6bfe1586 thread function_d53a8683(level.var_c141dfcb[0]);
			self namespace_a230c2b1::function_e54c54c3();
			var_6bfe1586 thread function_b7a3f7a0(2, self, level.var_c141dfcb[0]);
			break;
		}
		case "trigger_boat_2_seat1":
		{
			level.var_c141dfcb[1] function_917f75ac(1, 0);
			var_6bfe1586.var_462738ee = level.var_c141dfcb[1].var_8202763a;
			var_6bfe1586.var_8b449b0f = 1;
			var_6bfe1586 thread function_d53a8683(level.var_c141dfcb[1]);
			self namespace_a230c2b1::function_e54c54c3();
			var_6bfe1586 thread function_b7a3f7a0(1, self, level.var_c141dfcb[1]);
			break;
		}
		case "trigger_boat_2_seat2":
		{
			level.var_c141dfcb[1] function_917f75ac(2, 0);
			var_6bfe1586.var_462738ee = level.var_c141dfcb[1].var_8202763a;
			var_6bfe1586.var_8b449b0f = 2;
			var_6bfe1586 thread function_d53a8683(level.var_c141dfcb[1]);
			self namespace_a230c2b1::function_e54c54c3();
			var_6bfe1586 thread function_b7a3f7a0(2, self, level.var_c141dfcb[1]);
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_b7a3f7a0
	Namespace: namespace_a660d427
	Checksum: 0xDFA0BFC9
	Offset: 0x4398
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_b7a3f7a0(var_8b449b0f, var_bfe9d19a, var_3608e520)
{
	level endon("hash_1f82cbf");
	namespace_82b91a51::function_76f13293();
	self function_218bb1a9();
	var_3608e520 function_917f75ac(var_8b449b0f, 1);
	var_bfe9d19a namespace_a230c2b1::function_ed0abeee();
	level namespace_ad23e503::function_9d134160("all_players_on_boats");
}

/*
	Name: function_218bb1a9
	Namespace: namespace_a660d427
	Checksum: 0xE8B2CA0C
	Offset: 0x4450
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function function_218bb1a9()
{
	self endon("hash_128f8789");
	self waittill("hash_133288a0");
	self.var_1554f271 = undefined;
}

/*
	Name: function_381c90d7
	Namespace: namespace_a660d427
	Checksum: 0xE5D90A75
	Offset: 0x4480
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_381c90d7()
{
	level namespace_ad23e503::function_1ab5ebec("boats_go");
	foreach(var_f2684ab8 in level.var_1205b0f3)
	{
		var_f2684ab8.var_5356d2cc namespace_a230c2b1::function_c5a39495();
		var_f2684ab8 function_dc8c8404();
	}
}

/*
	Name: function_310b4b12
	Namespace: namespace_a660d427
	Checksum: 0x9E8E7949
	Offset: 0x4558
	Size: 0x105
	Parameters: 3
	Flags: None
*/
function function_310b4b12(var_62f1cf67, var_b49e0088, var_52c8d3d6)
{
	if(!isdefined(var_52c8d3d6))
	{
		var_52c8d3d6 = 2;
	}
	var_462738ee = var_62f1cf67 + 1;
	for(var_c957f6b6 = 1; var_c957f6b6 <= var_52c8d3d6; var_c957f6b6++)
	{
		if(var_b49e0088)
		{
			level.var_1205b0f3["boat" + var_462738ee + "_seat" + var_c957f6b6].var_5356d2cc namespace_a230c2b1::function_e54c54c3();
			continue;
		}
		level.var_1205b0f3["boat" + var_462738ee + "_seat" + var_c957f6b6].var_5356d2cc namespace_a230c2b1::function_ed0abeee();
	}
}

/*
	Name: function_f06f5bf7
	Namespace: namespace_a660d427
	Checksum: 0xCE9A6E6D
	Offset: 0x4668
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_f06f5bf7()
{
	var_20f79745 = function_99201f25("trigger_boat_rumble", "targetname");
	foreach(var_4e47ece5 in var_20f79745)
	{
		var_4e47ece5 thread function_b2aec1cf();
	}
}

/*
	Name: function_b2aec1cf
	Namespace: namespace_a660d427
	Checksum: 0xC2A6C192
	Offset: 0x4728
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_b2aec1cf()
{
	level endon("hash_9c7f20b4");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_5dc5e20a);
		if(function_65f192a6(var_5dc5e20a))
		{
			var_5dc5e20a function_e2af603e("cp_biodomes_airboat_start_rumble");
			var_5dc5e20a namespace_71e9cb84::function_688ed188("sound_evt_boat_rattle");
			wait(0.3);
			while(var_5dc5e20a function_32fa5072(self))
			{
				var_5dc5e20a function_e2af603e("cp_biodomes_airboat_rumble");
				wait(0.1);
			}
			var_5dc5e20a function_e2af603e("cp_biodomes_airboat_stop_rumble");
		}
	}
}

/*
	Name: function_b3f809ee
	Namespace: namespace_a660d427
	Checksum: 0x12992C54
	Offset: 0x4820
	Size: 0x13F
	Parameters: 0
	Flags: None
*/
function function_b3f809ee()
{
	var_f2684ab8 = function_6ada35ba("trigger_boat_scrape", "targetname");
	var_f2684ab8 waittill("hash_4dbf3ae3");
	level.var_c141dfcb[1] namespace_71e9cb84::function_331efedc("sound_evt_boat_scrape_impact");
	while(level.var_c141dfcb[1] function_32fa5072(var_f2684ab8))
	{
		var_d230ad83 = level.var_c141dfcb[1].var_722885f3 + function_bc7ce905(level.var_c141dfcb[1].var_6ab6f4fd) * 150;
		var_c55dcd82 = level.var_c141dfcb[1].var_722885f3 + var_d230ad83;
		if(level.var_de54cf10 == 0)
		{
			namespace_5753664b::function_43718187("boat_sparks", var_d230ad83);
		}
		wait(0.1);
	}
}

/*
	Name: function_1bd42852
	Namespace: namespace_a660d427
	Checksum: 0xCBACC870
	Offset: 0x4968
	Size: 0x3CB
	Parameters: 0
	Flags: None
*/
function function_1bd42852()
{
	var_233fafd3 = [];
	var_233fafd3 = level.var_c141dfcb[0] function_a7ebe3e4();
	var_b1384098 = [];
	var_b1384098 = level.var_c141dfcb[1] function_a7ebe3e4();
	if(!var_233fafd3.size)
	{
		self.var_462738ee = level.var_c141dfcb[0].var_8202763a;
		self.var_8b449b0f = 1;
		level.var_c141dfcb[0] function_917f75ac(1, 0);
		level.var_c141dfcb[0] function_16337f9e(self, 1);
	}
	else if(var_233fafd3.size < 2)
	{
		self.var_462738ee = level.var_c141dfcb[0].var_8202763a;
		var_8b449b0f = level.var_c141dfcb[0] function_6f256229(var_233fafd3[0]);
		if(var_8b449b0f == 1)
		{
			self.var_8b449b0f = 2;
			level.var_c141dfcb[0] function_917f75ac(2, 0);
			level.var_c141dfcb[0] function_16337f9e(self, 2);
		}
		else
		{
			self.var_8b449b0f = 1;
			level.var_c141dfcb[0] function_917f75ac(1, 0);
			level.var_c141dfcb[0] function_16337f9e(self, 1);
		}
	}
	else if(!var_b1384098.size)
	{
		self.var_462738ee = level.var_c141dfcb[1].var_8202763a;
		self.var_8b449b0f = 1;
		level.var_c141dfcb[1] function_917f75ac(1, 0);
		level.var_c141dfcb[1] function_16337f9e(self, 1);
	}
	else
	{
		self.var_462738ee = level.var_c141dfcb[1].var_8202763a;
		var_8b449b0f = level.var_c141dfcb[1] function_6f256229(var_b1384098[0]);
		if(var_8b449b0f == 1)
		{
			self.var_8b449b0f = 2;
			level.var_c141dfcb[1] function_917f75ac(2, 0);
			level.var_c141dfcb[1] function_16337f9e(self, 2);
		}
		else
		{
			self.var_8b449b0f = 1;
			level.var_c141dfcb[1] function_917f75ac(1, 0);
			level.var_c141dfcb[1] function_16337f9e(self, 1);
		}
	}
}

/*
	Name: function_ef3ef43d
	Namespace: namespace_a660d427
	Checksum: 0xFA81D17D
	Offset: 0x4D40
	Size: 0x103
	Parameters: 5
	Flags: None
*/
function function_ef3ef43d(var_ce657c90, var_6203c1b5, var_a60475e6, var_db803bcf, var_ee7dbbc9)
{
	if(!isdefined(var_ee7dbbc9))
	{
		var_ee7dbbc9 = 0;
	}
	level namespace_ad23e503::function_1ab5ebec(var_ce657c90);
	level thread namespace_cc27597::function_c35e6aab(var_a60475e6);
	namespace_4dbf3ae3::function_1ab5ebec(var_db803bcf);
	if(var_ee7dbbc9 > 0)
	{
		wait(var_ee7dbbc9);
	}
	level namespace_cc27597::function_43718187(var_a60475e6);
	level namespace_ad23e503::function_74d6b22f(var_6203c1b5);
	var_c4a1b346 = function_6ada35ba(var_db803bcf, "targetname");
	var_c4a1b346 function_dc8c8404();
}

/*
	Name: function_dd9ded92
	Namespace: namespace_a660d427
	Checksum: 0x68454987
	Offset: 0x4E50
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_dd9ded92()
{
	self notify("hash_93bef291");
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_b4f5e3b9(1);
	level namespace_cc27597::function_c35e6aab("cin_bio_15_01_waterpark_swim");
	level namespace_ad23e503::function_1ab5ebec("player_dive_done");
	level namespace_cc27597::function_43718187("cin_bio_15_01_waterpark_swim");
	self function_eb8032ff();
	self function_b7409d73();
}

/*
	Name: function_b7409d73
	Namespace: namespace_a660d427
	Checksum: 0x10573584
	Offset: 0x4F30
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b7409d73()
{
	level endon("hash_389c5c5a");
	level notify("hash_691476e5");
	var_d83dec8d = namespace_14b42b8a::function_7922262b("hendricks_board");
	self function_12803ed9(var_d83dec8d, 3);
	self thread function_ee9bef99();
}

/*
	Name: function_eb8032ff
	Namespace: namespace_a660d427
	Checksum: 0x2237BF23
	Offset: 0x4FB0
	Size: 0x1DF
	Parameters: 0
	Flags: None
*/
function function_eb8032ff()
{
	self function_e11ce512();
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_d84e54db::function_b4f5e3b9(0);
	level notify("hash_f0f605b4");
	level namespace_ad23e503::function_74d6b22f("dock_enemies_take_cover");
	if(level namespace_ad23e503::function_7922262b("all_players_on_boats"))
	{
		return;
	}
	level endon("hash_c10dcc73");
	var_1ba0b1df = function_b4cb3503("nd_dock_hendricks", "targetname");
	self.var_7dfaf62 = 16;
	self function_169cc712(var_1ba0b1df);
	level namespace_ad23e503::function_1ab5ebec("dock_enemies_retreat");
	var_1ba0b1df = function_b4cb3503("nd_dock_hendricks_2", "targetname");
	self function_169cc712(var_1ba0b1df);
	while(1)
	{
		var_d61030ed = function_c20c2e8("dock_guard_ai", "targetname");
		var_291a362b = function_c20c2e8("water_guard_ai", "targetname");
		if(var_d61030ed.size + var_291a362b.size == 0)
		{
			break;
		}
		else
		{
			wait(1);
		}
	}
}

/*
	Name: function_12803ed9
	Namespace: namespace_a660d427
	Checksum: 0x56E3AFE0
	Offset: 0x5198
	Size: 0x283
	Parameters: 2
	Flags: None
*/
function function_12803ed9(var_713e715e, var_637636ed)
{
	self namespace_d84e54db::function_b4f5e3b9(1);
	self.var_7dfaf62 = 4;
	self function_169cc712(var_713e715e.var_722885f3, 1);
	self endon("hash_41d1aaf0");
	wait(var_637636ed);
	level namespace_ad23e503::function_1ab5ebec("all_players_on_boats");
	var_8c9eabdb = 1;
	while(var_8c9eabdb)
	{
		var_8c9eabdb = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_f4f2d282 = var_5dc5e20a function_52b8ab2b();
			if(isdefined(var_f4f2d282))
			{
				var_8b449b0f = var_f4f2d282 function_6f256229(var_5dc5e20a);
				var_38340604 = var_f4f2d282 function_63ee40c1(var_8b449b0f);
				var_28ec750e = function_f679a325(var_38340604);
				var_f2311802 = var_5dc5e20a function_501eb072();
				var_d35bd1db = function_f679a325(self.var_722885f3 - var_f2311802);
				if(function_5f9a4869(var_28ec750e, var_d35bd1db) < 0.7)
				{
					var_8c9eabdb = 1;
				}
			}
		}
		wait(0.1);
	}
	wait(1);
	self function_9869ab67(var_713e715e.var_722885f3, var_713e715e.var_6ab6f4fd);
}

/*
	Name: function_ee9bef99
	Namespace: namespace_a660d427
	Checksum: 0x2DD8898D
	Offset: 0x5428
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_ee9bef99()
{
	self namespace_d84e54db::function_c9e45d52(1);
	self.var_2dd707 = 0;
	self function_e11ce512();
	level namespace_cc27597::function_c35e6aab("cin_bio_15_02_hendricks_vign_ontoboat");
	level namespace_ad23e503::function_74d6b22f("hendricks_boat_waiting");
	level thread function_23901dfa();
	level namespace_ad23e503::function_1ab5ebec("boats_ready_to_depart");
	if(isdefined(level.var_9910c090))
	{
		level thread [[level.var_9910c090]]();
	}
	level namespace_cc27597::function_43718187("cin_bio_15_02_hendricks_vign_ontoboat");
	self function_37f7858a(level.var_c141dfcb[0]);
	level namespace_ad23e503::function_74d6b22f("hendricks_onboard");
	level namespace_cc27597::function_43718187("cin_bio_15_03_waterpark_vign_lean_center");
}

/*
	Name: function_85800b08
	Namespace: namespace_a660d427
	Checksum: 0xACEA7FA
	Offset: 0x5580
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_85800b08()
{
	if(level namespace_ad23e503::function_7922262b("boats_init"))
	{
		var_b0fe27c9 = level.var_c141dfcb[0] function_a7ebe3e4();
		var_1cc0c750 = level.var_c141dfcb[1] function_a7ebe3e4();
		if(level.var_9b1393e7.size == 1 && var_b0fe27c9.size == 1 || (level.var_9b1393e7.size == 2 && var_b0fe27c9.size == 2) || (level.var_9b1393e7.size == 3 && var_b0fe27c9.size + var_1cc0c750.size == 3) || (level.var_9b1393e7.size == 4 && var_b0fe27c9.size + var_1cc0c750.size == 4) || (level.var_31aefea8 == "dev_swamp_rail" && level.var_9b1393e7.size == 1 && (var_b0fe27c9.size == 1 || var_1cc0c750.size == 1)))
		{
			level namespace_ad23e503::function_74d6b22f("all_players_on_boats");
		}
	}
}

/*
	Name: function_7c14c2de
	Namespace: namespace_a660d427
	Checksum: 0xCDCAE35D
	Offset: 0x5710
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_7c14c2de()
{
	var_afe3ada7 = 0;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a namespace_ad23e503::function_dbca4c5d("player_on_boat"))
		{
			if(var_5dc5e20a namespace_ad23e503::function_7922262b("player_on_boat"))
			{
				var_afe3ada7++;
			}
		}
	}
	return var_afe3ada7;
}

/*
	Name: function_9850e9ee
	Namespace: namespace_a660d427
	Checksum: 0x35BCB2F5
	Offset: 0x57E8
	Size: 0x23F
	Parameters: 0
	Flags: None
*/
function function_9850e9ee()
{
	self endon("hash_128f8789");
	level endon("hash_dae0a828");
	while(1)
	{
		if(self namespace_ad23e503::function_7922262b("player_on_boat"))
		{
			var_6af83013 = self function_dd4657f1();
			if(var_6af83013 === level.var_c141dfcb[0] || var_6af83013 === level.var_c141dfcb[1])
			{
				if(level namespace_ad23e503::function_7922262b("all_players_on_boats"))
				{
					level.var_c141dfcb[0] function_9ed72b0c();
					level.var_c141dfcb[1] function_9ed72b0c();
				}
			}
		}
		else if(!self function_cb8df3d0() && self namespace_ad23e503::function_7922262b("player_on_boat"))
		{
			self namespace_ad23e503::function_9d134160("player_on_boat");
		}
		if(var_6af83013 === level.var_c141dfcb[0] || var_6af83013 === level.var_c141dfcb[1])
		{
			if(level namespace_ad23e503::function_7922262b("all_players_on_boats") && level namespace_ad23e503::function_7922262b("hendricks_boat_waiting"))
			{
				level.var_c141dfcb[0] function_9ed72b0c();
				level.var_c141dfcb[1] function_9ed72b0c();
				while(level.var_9b1393e7.size != function_7c14c2de())
				{
					wait(0.05);
				}
				level namespace_ad23e503::function_74d6b22f("boats_ready_to_depart");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d53a8683
	Namespace: namespace_a660d427
	Checksum: 0x3079334C
	Offset: 0x5A30
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_d53a8683(var_3608e520)
{
	self endon("hash_128f8789");
	var_8b449b0f = self.var_8b449b0f;
	self thread function_8f2be4cc(var_3608e520, var_8b449b0f);
	if(var_8b449b0f == 1)
	{
		var_3608e520 namespace_cc27597::function_43718187("cin_bio_15_02_player_vign_ontoboat_portnear", self);
	}
	else
	{
		var_3608e520 namespace_cc27597::function_43718187("cin_bio_15_02_player_vign_ontoboat_starboardnear", self);
	}
	self.var_1554f271 = &function_654111e3;
	var_3608e520 function_917f75ac(var_8b449b0f, 0);
	var_3608e520 function_16337f9e(self, var_8b449b0f);
	self namespace_ad23e503::function_74d6b22f("player_on_boat");
	function_85800b08();
}

/*
	Name: function_654111e3
	Namespace: namespace_a660d427
	Checksum: 0xAA99D34E
	Offset: 0x5B60
	Size: 0x9B
	Parameters: 13
	Flags: None
*/
function function_654111e3(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_4b40c1d0, var_7419ba1f)
{
	if(var_dfcc01fd == function_c4d5ec1f("turret_mil_boat_mg"))
	{
		var_f9a179ed = 0;
	}
	return var_f9a179ed;
}

/*
	Name: function_4a242f62
	Namespace: namespace_a660d427
	Checksum: 0x7FD8EDE9
	Offset: 0x5C08
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_4a242f62(var_c77d2837)
{
	var_c77d2837["player 1"] notify("hash_b0451c8f");
}

/*
	Name: function_8f2be4cc
	Namespace: namespace_a660d427
	Checksum: 0xE6DCCCD5
	Offset: 0x5C38
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_8f2be4cc(var_886ca8c3, var_8b449b0f)
{
	self waittill("hash_b0451c8f");
	var_886ca8c3 function_917f75ac(var_8b449b0f, 1);
}

/*
	Name: function_bba989c4
	Namespace: namespace_a660d427
	Checksum: 0x6487AB5F
	Offset: 0x5C80
	Size: 0x167
	Parameters: 1
	Flags: None
*/
function function_bba989c4(var_3599083d)
{
	while(1)
	{
		var_afe3ada7 = function_7c14c2de();
		if(level.var_9b1393e7.size > 0)
		{
			if(var_afe3ada7 == level.var_9b1393e7.size || (var_3599083d == 1 && var_afe3ada7 == 1) && level namespace_ad23e503::function_7922262b("hendricks_onboard"))
			{
				level namespace_ad23e503::function_74d6b22f("boats_go");
				function_df945144();
				var_765f8a2f = function_6ada35ba("t_swamp_oob", "targetname");
				var_765f8a2f function_dc8c8404();
				namespace_d0ef8521::function_74d6b22f("cp_level_biodomes_extract");
				break;
			}
			else if(level namespace_ad23e503::function_7922262b("boats_go"))
			{
				level namespace_ad23e503::function_9d134160("boats_go");
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_5175e36a
	Namespace: namespace_a660d427
	Checksum: 0x738404D3
	Offset: 0x5DF0
	Size: 0x2B1
	Parameters: 0
	Flags: None
*/
function function_5175e36a()
{
	level namespace_ad23e503::function_1ab5ebec("hendricks_onboard");
	level namespace_ad23e503::function_1ab5ebec("boats_go");
	namespace_76d95162::function_d9f49fba(0);
	self namespace_71e9cb84::function_331efedc("sound_veh_airboat_start");
	level thread namespace_76133733::function_11139d81();
	self.var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
	function_9e3608e3("fxanim_fish");
	level namespace_cc27597::function_fcf56ab5("cin_bio_15_03_waterpark_vign_lean_center");
	level thread namespace_cc27597::function_43718187("cin_bio_15_03_waterpark_vign_lean_center");
	self thread namespace_96fa87af::function_edb3a94e(self.var_3c54858a);
	function_c5f21db5();
	wait(3);
	level.var_c141dfcb[0] function_e48f905e("veh_t7_mil_boat_fan_54i_wet");
	level.var_c141dfcb[1] function_e48f905e("veh_t7_mil_boat_fan_54i_wet");
	self namespace_4dbf3ae3::function_1ab5ebec("t_grass_fx_on");
	if(self.var_170527fb == "airboat_2_vh")
	{
		level.var_197b567a = 1;
	}
	if(self.var_170527fb == "airboat_2_vh")
	{
		if(level.var_de54cf10 == 0)
		{
			self namespace_5753664b::function_43718187("boat_grass", undefined, undefined, "remove_boat_grass", 1, "tag_origin_animate");
		}
	}
	else
	{
		self namespace_5753664b::function_43718187("boat_grass", undefined, undefined, "remove_boat_grass", 1, "tag_origin_animate");
	}
	self namespace_4dbf3ae3::function_1ab5ebec("t_grass_fx_off");
	if(self.var_170527fb == "airboat_2_vh")
	{
		level.var_197b567a = 0;
	}
	self notify("hash_76925259");
}

/*
	Name: function_71c5569c
	Namespace: namespace_a660d427
	Checksum: 0x7AFC29D1
	Offset: 0x60B0
	Size: 0xAD
	Parameters: 0
	Flags: None
*/
function function_71c5569c()
{
	level namespace_ad23e503::function_1ab5ebec("boats_go");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_1554f271 = &function_a4e31a4a;
	}
}

/*
	Name: function_a4e31a4a
	Namespace: namespace_a660d427
	Checksum: 0xF55118A7
	Offset: 0x6168
	Size: 0x79
	Parameters: 13
	Flags: None
*/
function function_a4e31a4a(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_4b40c1d0, var_7419ba1f)
{
	var_f9a179ed = 1;
	return var_f9a179ed;
}

/*
	Name: function_247e9ab0
	Namespace: namespace_a660d427
	Checksum: 0xEC3BFD2A
	Offset: 0x61F0
	Size: 0x2B9
	Parameters: 0
	Flags: None
*/
function function_247e9ab0()
{
	var_5ee9a746 = function_99201f25("trigger_ramp_start", "targetname");
	var_24944fc2 = function_99201f25("trigger_ramp_end", "targetname");
	var_1c2fed59 = function_99201f25("trigger_ramp_land", "targetname");
	foreach(var_8b856a66 in var_5ee9a746)
	{
		var_8b856a66 thread function_27b8574f(level.var_c141dfcb[0]);
		var_8b856a66 thread function_27b8574f(level.var_c141dfcb[1]);
	}
	foreach(var_7ee296e2 in var_24944fc2)
	{
		var_7ee296e2 thread function_3b6e15a3(level.var_c141dfcb[0]);
		var_7ee296e2 thread function_3b6e15a3(level.var_c141dfcb[1]);
	}
	foreach(var_c358c3f9 in var_1c2fed59)
	{
		var_c358c3f9 thread function_7ae7a0f6(level.var_c141dfcb[0]);
		var_c358c3f9 thread function_7ae7a0f6(level.var_c141dfcb[1]);
	}
}

/*
	Name: function_27b8574f
	Namespace: namespace_a660d427
	Checksum: 0xA42297E2
	Offset: 0x64B8
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_27b8574f(var_3608e520)
{
	level endon("hash_9c7f20b4");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_f92a03e7);
		if(var_f92a03e7 == var_3608e520)
		{
			var_3608e520 namespace_71e9cb84::function_331efedc("sound_veh_airboat_ramp_hit");
			var_3608e520 namespace_71e9cb84::function_331efedc("sound_veh_airboat_jump");
			var_3608e520 notify("hash_22e59eef");
			if(var_3608e520.var_170527fb == "airboat_2_vh")
			{
				level.var_242afa66 = 1;
			}
			break;
		}
	}
}

/*
	Name: function_3b6e15a3
	Namespace: namespace_a660d427
	Checksum: 0xBC57D6EA
	Offset: 0x6588
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_3b6e15a3(var_3608e520)
{
	level endon("hash_9c7f20b4");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_f92a03e7);
		if(var_f92a03e7 == var_3608e520)
		{
			var_3608e520 namespace_71e9cb84::function_331efedc("sound_veh_airboat_jump_air");
			break;
		}
	}
}

/*
	Name: function_7ae7a0f6
	Namespace: namespace_a660d427
	Checksum: 0xC21820E9
	Offset: 0x6600
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_7ae7a0f6(var_3608e520)
{
	level endon("hash_9c7f20b4");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_f92a03e7);
		if(var_f92a03e7 == var_3608e520)
		{
			var_3608e520 namespace_71e9cb84::function_331efedc("sound_veh_airboat_land");
			if(var_3608e520.var_170527fb == "airboat_2_vh")
			{
				if(level.var_de54cf10 == 0)
				{
					var_3608e520 namespace_5753664b::function_43718187("boat_land_splash", undefined, undefined, 4, 1, "tag_origin_animate");
				}
			}
			else
			{
				var_3608e520 namespace_5753664b::function_43718187("boat_land_splash", undefined, undefined, 4, 1, "tag_origin_animate");
			}
			if(var_3608e520.var_170527fb == "airboat_2_vh")
			{
				level.var_242afa66 = 0;
			}
			break;
		}
	}
}

/*
	Name: function_af6241e9
	Namespace: namespace_a660d427
	Checksum: 0xB21F11E0
	Offset: 0x6730
	Size: 0x2CD
	Parameters: 6
	Flags: None
*/
function function_af6241e9(var_9eb6bd2f, var_4b32b0cc, var_be93bd02, var_8b453fd2, var_5acf21e7, var_f1faa031)
{
	if(!isdefined(var_8b453fd2))
	{
		var_8b453fd2 = undefined;
	}
	if(!isdefined(var_5acf21e7))
	{
		var_5acf21e7 = 1;
	}
	if(!isdefined(var_f1faa031))
	{
		var_f1faa031 = 0;
	}
	namespace_4dbf3ae3::function_1ab5ebec(var_9eb6bd2f);
	if(isdefined(var_8b453fd2))
	{
		level notify(var_8b453fd2);
	}
	var_a2258aa5 = function_8f8fb3b0(var_4b32b0cc, "targetname");
	var_1d54629 = var_a2258aa5.size;
	var_c8d85832 = [];
	for(var_a3557c4d = 0; var_a3557c4d < var_5acf21e7; var_a3557c4d++)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1d54629; var_c957f6b6++)
		{
			var_b94e7fe0 = var_a3557c4d * var_1d54629 + var_c957f6b6;
			if(!isdefined(var_c8d85832))
			{
				var_c8d85832 = [];
			}
			else if(!function_6e2770d8(var_c8d85832))
			{
				var_c8d85832 = function_84970cc4(var_c8d85832);
			}
			var_c8d85832[var_c8d85832.size] = namespace_2f06d687::function_7387a40a(var_be93bd02);
			var_c8d85832[var_b94e7fe0] function_fef374cd();
			if(var_4b32b0cc == "nd_wheel_wasp_start" && var_b94e7fe0 == 1)
			{
				var_c8d85832[1] function_921a1574("evt_wasp_group_wheel_flyby");
			}
			if(var_4b32b0cc == "nd_bridge_wasp_start" && var_b94e7fe0 == 1)
			{
				var_c8d85832[1] function_921a1574("evt_wasp_group_bridge_flyby");
			}
			wait(0.05);
			var_c8d85832[var_b94e7fe0] namespace_72ee5da4::function_81b6f1ac();
			var_c8d85832[var_b94e7fe0] thread function_38257688();
			var_c8d85832[var_b94e7fe0] thread namespace_96fa87af::function_edb3a94e(var_a2258aa5[var_c957f6b6]);
		}
		wait(var_f1faa031);
	}
}

/*
	Name: function_38257688
	Namespace: namespace_a660d427
	Checksum: 0x2808ECE6
	Offset: 0x6A08
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_38257688()
{
	self endon("hash_128f8789");
	self waittill("hash_6cf6ac7e");
	self namespace_72ee5da4::function_efe9815e("combat");
	wait(function_72a94f05(0, 0.25));
	self function_dc8c8404();
}

/*
	Name: function_12ca763f
	Namespace: namespace_a660d427
	Checksum: 0x7CAF0ED9
	Offset: 0x6A88
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_12ca763f()
{
	function_af6241e9("t_bridge_wasps", "nd_bridge_wasp_start", "sp_bridge_wasp", undefined, 2, 1);
}

/*
	Name: function_2eee0c9c
	Namespace: namespace_a660d427
	Checksum: 0x18243857
	Offset: 0x6AC8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2eee0c9c()
{
	function_af6241e9("t_bridge_wasps_2", "nd_bridge_wasp_2_start", "sp_bridge_wasp_2", undefined, 1, 0);
}

/*
	Name: function_beedc0e7
	Namespace: namespace_a660d427
	Checksum: 0x136B8830
	Offset: 0x6B08
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_beedc0e7()
{
	function_af6241e9("t_wheel_wasps", "nd_wheel_wasp_start", "sp_wheel_wasp", "wheel_attack");
}

/*
	Name: function_6111ddb4
	Namespace: namespace_a660d427
	Checksum: 0xDE435CFB
	Offset: 0x6B48
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6111ddb4()
{
	function_af6241e9("t_wheel_wasps_2", "nd_wheel_wasp_2_start", "sp_wheel_wasp_2", undefined, 2, 1.5);
}

/*
	Name: function_97247f7c
	Namespace: namespace_a660d427
	Checksum: 0x93E4E3AB
	Offset: 0x6B90
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_97247f7c()
{
	function_af6241e9("t_plane_wasps", "nd_plane_wasp_start", "sp_plane_wasp", undefined, 3, 1.25);
}

/*
	Name: function_81aca4ee
	Namespace: namespace_a660d427
	Checksum: 0x7D53E37E
	Offset: 0x6BD8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_81aca4ee()
{
	function_af6241e9("t_fuselage_wasps", "nd_fuselage_wasp_start", "sp_fuselage_wasp", undefined, 1, 0);
}

/*
	Name: function_1d4f0199
	Namespace: namespace_a660d427
	Checksum: 0x9671DBB2
	Offset: 0x6C18
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_1d4f0199()
{
	namespace_2f06d687::function_22356ba7("water_guard", &function_248ab21b);
	level namespace_82b91a51::function_564f2d81("hendricks_on_dock", "dock_enemies_take_cover");
	namespace_2f06d687::function_22356ba7("dock_guard", &function_7e16f75d);
}

/*
	Name: function_7e16f75d
	Namespace: namespace_a660d427
	Checksum: 0xA4BE75CE
	Offset: 0x6CA0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7e16f75d()
{
	self endon("hash_128f8789");
	var_ab891f49 = function_6ada35ba("dock_retreat", "targetname");
	self function_169cc712(var_ab891f49, 1);
}

/*
	Name: function_248ab21b
	Namespace: namespace_a660d427
	Checksum: 0x65A2AF4F
	Offset: 0x6D00
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_248ab21b()
{
	self endon("hash_128f8789");
	self.var_c5e3e899 = self.var_7dfaf62;
	self.var_7dfaf62 = 16;
	self thread function_2c27934b();
	self thread function_9a7ec3e7();
	level namespace_ad23e503::function_1ab5ebec("dock_enemies_take_cover");
	wait(function_72a94f05(0.15, 0.95));
	self.var_7dfaf62 = self.var_c5e3e899;
	var_ab891f49 = function_6ada35ba("dock_goal_volume", "targetname");
	self function_169cc712(var_ab891f49, 1);
	level namespace_ad23e503::function_1ab5ebec("dock_enemies_retreat");
	var_ab891f49 = function_6ada35ba("dock_retreat", "targetname");
	self function_169cc712(var_ab891f49, 1);
	wait(5);
	namespace_4dbf3ae3::function_42e87952("trig_dock_playerspawns", "targetname");
}

/*
	Name: function_9a7ec3e7
	Namespace: namespace_a660d427
	Checksum: 0xF6FC6778
	Offset: 0x6E88
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_9a7ec3e7()
{
	self endon("hash_128f8789");
	level endon("hash_f1832a99");
	var_3b7123fc = function_6ada35ba("t_player_dock", "targetname");
	while(1)
	{
		self waittill("hash_f9348fda", var_74d0774f, var_677b3e78);
		if(var_677b3e78 function_32fa5072(var_3b7123fc))
		{
			level namespace_ad23e503::function_74d6b22f("dock_enemies_take_cover");
		}
	}
}

/*
	Name: function_bad78721
	Namespace: namespace_a660d427
	Checksum: 0xEAE82D1E
	Offset: 0x6F40
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_bad78721(var_9eb6bd2f)
{
	self endon("hash_128f8789");
	self.var_7dfaf62 = 16;
	if(self.var_db7bb468 === "rocket_guard_boat_1")
	{
		self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", level.var_78a73398[0]);
	}
	else if(self.var_db7bb468 === "rocket_guard_boat_2")
	{
		self thread namespace_d84e54db::function_d104c596("shoot_until_target_dead", level.var_78a73398[1]);
	}
	namespace_4dbf3ae3::function_1ab5ebec(var_9eb6bd2f);
	wait(function_72a94f05(0.1, 0.15));
	self function_dc8c8404();
}

/*
	Name: function_59212f01
	Namespace: namespace_a660d427
	Checksum: 0xEF69E033
	Offset: 0x7038
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_59212f01()
{
	level namespace_71b8dba1::function_a463d127("kane_stay_with_it_beat_0", 3);
	level waittill("hash_691476e5");
	namespace_76d95162::function_d9f49fba(0);
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_we_re_commande_0");
	level namespace_71b8dba1::function_a463d127("kane_copy_that_overwatch_0", 1.2);
	namespace_76d95162::function_d9f49fba(1);
}

/*
	Name: function_5441f2aa
	Namespace: namespace_a660d427
	Checksum: 0x46FBBA15
	Offset: 0x70E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5441f2aa()
{
	level namespace_71b8dba1::function_13b3b16a("plyr_you_better_drive_fas_0", 0.3);
}

/*
	Name: function_7fea5e8b
	Namespace: namespace_a660d427
	Checksum: 0xED0CD7DA
	Offset: 0x7120
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_7fea5e8b()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_vo_hend_kane_that_ferris_wh_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_kane_that_ferris_wh_0");
	level namespace_71b8dba1::function_a463d127("kane_on_it_hang_on_0", 0.6);
}

/*
	Name: function_ca115f5b
	Namespace: namespace_a660d427
	Checksum: 0x698A4933
	Offset: 0x7190
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_ca115f5b()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_vo_hend_go_right_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_go_right_0");
}

/*
	Name: function_daab7239
	Namespace: namespace_a660d427
	Checksum: 0xC14D575
	Offset: 0x71D8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_daab7239()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_vo_hend_go_left_go_left_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_go_left_go_left_0");
}

/*
	Name: function_2b558db7
	Namespace: namespace_a660d427
	Checksum: 0x7CC748AC
	Offset: 0x7220
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2b558db7()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_vo_hend_left_left_left_le_0");
	level.var_2fd26037 namespace_71b8dba1::function_81141386("hend_left_left_left_le_0");
}

/*
	Name: function_d665973f
	Namespace: namespace_a660d427
	Checksum: 0xD1C10FE2
	Offset: 0x7268
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d665973f()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_vo_kane_hey_do_you_wanna_dr_0");
	level namespace_71b8dba1::function_a463d127("kane_hey_do_you_wanna_dr_0");
}

/*
	Name: function_23901dfa
	Namespace: namespace_a660d427
	Checksum: 0x8BA0331E
	Offset: 0x72B0
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_23901dfa()
{
	level endon("hash_7dbaf7af");
	level namespace_ad23e503::function_1ab5ebec("hendricks_boat_waiting");
	wait(10);
	var_9662b5b4 = function_84970cc4("hend_let_s_go_get_on_a_t_0", "hend_what_are_you_waiting_5", "hend_get_on_the_turret_w_0");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_9662b5b4.size; var_c957f6b6++)
	{
		level.var_2fd26037 namespace_71b8dba1::function_81141386(var_9662b5b4[var_c957f6b6]);
		wait(function_72a94f05(10, 15));
	}
}

/*
	Name: function_fc2f856
	Namespace: namespace_a660d427
	Checksum: 0x96951A6B
	Offset: 0x7388
	Size: 0xD3
	Parameters: 3
	Flags: None
*/
function function_fc2f856(var_d48a5688, var_1c74455b, var_5dfe8937)
{
	namespace_96fa87af::function_994832bd(var_1c74455b, &function_c37f005a, var_5dfe8937);
	var_77f2b279 = namespace_96fa87af::function_7387a40a(var_1c74455b);
	var_77f2b279 namespace_96fa87af::function_3762fc40();
	var_cf0db380 = namespace_2f06d687::function_7387a40a(var_d48a5688, &function_c59c5367, var_5dfe8937);
	var_cf0db380 namespace_96fa87af::function_230eadd7(var_77f2b279, "gunner1", 1);
}

/*
	Name: function_c59c5367
	Namespace: namespace_a660d427
	Checksum: 0xEF349324
	Offset: 0x7468
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_c59c5367(var_9eb6bd2f)
{
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec(var_9eb6bd2f);
	self function_dc8c8404();
}

/*
	Name: function_c37f005a
	Namespace: namespace_a660d427
	Checksum: 0x99665537
	Offset: 0x74B8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_c37f005a(var_9eb6bd2f)
{
	self endon("hash_128f8789");
	if(isdefined(self.var_b07228b6))
	{
		self.var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
		self thread namespace_96fa87af::function_edb3a94e(self.var_3c54858a);
	}
	namespace_4dbf3ae3::function_1ab5ebec(var_9eb6bd2f);
	self function_dc8c8404();
}

/*
	Name: function_12771210
	Namespace: namespace_a660d427
	Checksum: 0xEE093E3
	Offset: 0x7560
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_12771210()
{
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_outpost_1_1", "t_cleanup_tech_outpost_1");
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_outpost_1_2", "t_cleanup_tech_outpost_1");
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_outpost_1_3", "t_cleanup_tech_outpost_1");
}

/*
	Name: function_22ebbed
	Namespace: namespace_a660d427
	Checksum: 0xC9F7AD38
	Offset: 0x7600
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_22ebbed()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_tech_bridge_1");
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_bridge_1", "t_cleanup_tech_bridge_1");
}

/*
	Name: function_28313656
	Namespace: namespace_a660d427
	Checksum: 0x2B1F9F7D
	Offset: 0x7658
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_28313656()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_tech_bridge_2");
	level thread function_fc2f856("sp_tech_gunner", "sp_tech_bridge_2", "t_cleanup_tech_bridge_2");
}

/*
	Name: function_a903f6c1
	Namespace: namespace_a660d427
	Checksum: 0xA24FF7F9
	Offset: 0x76B0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_a903f6c1()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_guard_tower_1_tech");
	level thread function_fc2f856("sp_tech_gunner", "sp_guard_tower_1_tech", "t_cleanup_guard_tower_1_tech");
}

/*
	Name: function_eff4afac
	Namespace: namespace_a660d427
	Checksum: 0x1B071B3
	Offset: 0x7708
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_eff4afac()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_guard_tower_2_tech");
	level thread function_fc2f856("sp_tech_gunner", "sp_guard_tower_2_tech", "t_cleanup_guard_tower_2_tech");
}

/*
	Name: function_9dd4818b
	Namespace: namespace_a660d427
	Checksum: 0x129B07D3
	Offset: 0x7760
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_9dd4818b()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_guard_tower_3_tech");
	level thread function_fc2f856("sp_tech_gunner", "sp_guard_tower_3_tech", "t_cleanup_guard_tower_3_tech");
}

/*
	Name: function_95d3fd43
	Namespace: namespace_a660d427
	Checksum: 0xEE4510E5
	Offset: 0x77B8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_95d3fd43()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_guard_tower_1_spawn");
	namespace_2f06d687::function_22356ba7("sp_guard_tower_1", &function_bad78721, "t_cleanup_guard_tower_1");
}

/*
	Name: function_c4fa2d2a
	Namespace: namespace_a660d427
	Checksum: 0x326FF9E4
	Offset: 0x7810
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c4fa2d2a()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_guard_tower_2_spawn");
	namespace_2f06d687::function_22356ba7("sp_guard_tower_2", &function_bad78721, "t_cleanup_guard_tower_2");
}

/*
	Name: function_72c5c9fd
	Namespace: namespace_a660d427
	Checksum: 0x5F22193A
	Offset: 0x7868
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_72c5c9fd()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_guard_tower_3_spawn");
	namespace_2f06d687::function_22356ba7("sp_guard_tower_3", &function_bad78721, "t_cleanup_guard_tower_3");
}

/*
	Name: function_4195b656
	Namespace: namespace_a660d427
	Checksum: 0xA9776BE4
	Offset: 0x78C0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4195b656()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_outpost_1_guards");
	level thread function_12771210();
	namespace_2f06d687::function_22356ba7("outpost_1_guard", &function_bad78721, "t_cleanup_outpost_1_guard");
}

/*
	Name: function_c211eb0f
	Namespace: namespace_a660d427
	Checksum: 0x7B56F2FA
	Offset: 0x7930
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_c211eb0f()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_outpost_2_guards");
	namespace_2f06d687::function_22356ba7("outpost_2_guard", &function_bad78721, "t_cleanup_outpost_2_guard");
}

/*
	Name: function_d8a75b5f
	Namespace: namespace_a660d427
	Checksum: 0x9A71EFD5
	Offset: 0x7988
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_d8a75b5f()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_building_roof_guards");
	namespace_2f06d687::function_22356ba7("building_roof_guard", &function_bad78721, "t_cleanup_building_roof_guards");
}

/*
	Name: function_dffe67b3
	Namespace: namespace_a660d427
	Checksum: 0xA882FFC7
	Offset: 0x79E0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_dffe67b3()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_building_roof_guards_ragdoll");
	function_d16125f3("building_roof_guard", (function_dc99997a(-10, 10), function_dc99997a(-10, 10), function_dc99997a(0, 10)));
}

/*
	Name: function_452c817b
	Namespace: namespace_a660d427
	Checksum: 0x86B21A23
	Offset: 0x7A68
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_452c817b()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_guard_plane");
	namespace_2f06d687::function_22356ba7("sp_guard_plane", &function_bad78721, "t_cleanup_guard_plane");
}

/*
	Name: function_5d6e5b81
	Namespace: namespace_a660d427
	Checksum: 0x34EF4B7E
	Offset: 0x7AC0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_5d6e5b81()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_outpost_2_guard_lower_a_ragdoll");
	function_d16125f3("outpost_2_guard_lower_a", (function_dc99997a(-10, 10), function_dc99997a(-10, 10), function_dc99997a(0, 10)));
}

/*
	Name: function_e2a7176
	Namespace: namespace_a660d427
	Checksum: 0x2342179C
	Offset: 0x7B48
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e2a7176()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_outpost_2_guard_lower_b_ragdoll");
	function_d16125f3("outpost_2_guard_lower_b", (function_dc99997a(-10, 10), function_dc99997a(-10, 10), function_dc99997a(0, 10)));
}

/*
	Name: function_70d3e476
	Namespace: namespace_a660d427
	Checksum: 0x9FD4C094
	Offset: 0x7BD0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_70d3e476()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_outpost_2_guard_upper_ragdoll");
	function_d16125f3("outpost_2_guard_upper", (function_dc99997a(-10, 10), function_dc99997a(-10, 10), function_dc99997a(0, 10)));
}

/*
	Name: function_fc1824d4
	Namespace: namespace_a660d427
	Checksum: 0x2046D421
	Offset: 0x7C58
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_fc1824d4()
{
	level thread function_f0265b78("t_outpost_01_s01", "p7_fxanim_cp_biodomes_outpost_01_s01_bundle", &function_ba87a724);
	level thread function_f0265b78("t_outpost_01_s02", "p7_fxanim_cp_biodomes_outpost_01_s02_bundle", &function_14648c5b);
	level thread function_f0265b78("t_outpost_01_s03", "p7_fxanim_cp_biodomes_outpost_01_s03_bundle", &function_1632053e);
}

/*
	Name: function_9051a477
	Namespace: namespace_a660d427
	Checksum: 0x55183BBE
	Offset: 0x7CF8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9051a477()
{
	level thread function_f0265b78("t_outpost_02", "p7_fxanim_cp_biodomes_outpost_01_s04_bundle", &function_444a6a70);
}

/*
	Name: function_f0265b78
	Namespace: namespace_a660d427
	Checksum: 0x4B657420
	Offset: 0x7D38
	Size: 0x143
	Parameters: 3
	Flags: None
*/
function function_f0265b78(var_5fffe0e3, var_88676d, var_65f020d3)
{
	if(!isdefined(var_65f020d3))
	{
		var_65f020d3 = undefined;
	}
	var_2eb20475 = function_6ada35ba(var_5fffe0e3, "targetname");
	if(isdefined(var_65f020d3))
	{
		namespace_cc27597::function_8f9f34e0(var_88676d, var_65f020d3, "play");
	}
	while(1)
	{
		var_2eb20475 waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_102e3d58, var_dd89f865, var_fe311e35, var_cd9517d2, var_f10f645, var_f105c26b, var_dfcc01fd);
		if(function_65f192a6(var_a0ad4f34))
		{
			level thread namespace_cc27597::function_43718187(var_88676d);
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_963be5f4
	Namespace: namespace_a660d427
	Checksum: 0x7FC27333
	Offset: 0x7E88
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_963be5f4(var_c77d2837)
{
	function_5bd584eb("tower_guard_1");
}

/*
	Name: function_a59a792b
	Namespace: namespace_a660d427
	Checksum: 0xBFEE7F41
	Offset: 0x7EB8
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a59a792b(var_c77d2837)
{
	function_5bd584eb("tower_guard_2");
	namespace_80983c42::function_67e7a937("grd_twr_02");
}

/*
	Name: function_2f957a8e
	Namespace: namespace_a660d427
	Checksum: 0x48B3D4B0
	Offset: 0x7F00
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_2f957a8e(var_c77d2837)
{
	function_5bd584eb("tower_guard_3");
	namespace_80983c42::function_67e7a937("grd_twr_03");
}

/*
	Name: function_a101398d
	Namespace: namespace_a660d427
	Checksum: 0x4F754E07
	Offset: 0x7F48
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a101398d(var_c77d2837)
{
	function_5bd584eb("tower_guard_4");
	namespace_80983c42::function_67e7a937("grd_twr_01");
}

/*
	Name: function_ba87a724
	Namespace: namespace_a660d427
	Checksum: 0x2DC216AD
	Offset: 0x7F90
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_ba87a724(var_c77d2837)
{
	function_5bd584eb("outpost_guard_s1");
}

/*
	Name: function_14648c5b
	Namespace: namespace_a660d427
	Checksum: 0xD71D654D
	Offset: 0x7FC0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_14648c5b(var_c77d2837)
{
	function_5bd584eb("outpost_guard_s2");
}

/*
	Name: function_1632053e
	Namespace: namespace_a660d427
	Checksum: 0x77DD61FF
	Offset: 0x7FF0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_1632053e(var_c77d2837)
{
	function_5bd584eb("outpost_guard_s3");
}

/*
	Name: function_444a6a70
	Namespace: namespace_a660d427
	Checksum: 0xF9348149
	Offset: 0x8020
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_444a6a70(var_c77d2837)
{
	function_5bd584eb("tower_2_guard");
	namespace_80983c42::function_67e7a937("grd_twr_04");
	namespace_769dc23f::function_b5cf7b68();
}

/*
	Name: function_d16125f3
	Namespace: namespace_a660d427
	Checksum: 0x38E6ED96
	Offset: 0x8078
	Size: 0xF1
	Parameters: 2
	Flags: None
*/
function function_d16125f3(var_525ec887, var_14341d4d)
{
	var_e3b635fb = function_99201f25(var_525ec887, "script_noteworthy", 1);
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d84e54db function_d7a0a9d8();
			var_d84e54db function_8461d2b1(var_14341d4d);
		}
	}
}

/*
	Name: function_5bd584eb
	Namespace: namespace_a660d427
	Checksum: 0x80F0667A
	Offset: 0x8178
	Size: 0x18F
	Parameters: 1
	Flags: None
*/
function function_5bd584eb(var_525ec887)
{
	var_e3b635fb = function_99201f25(var_525ec887, "script_noteworthy", 1);
	foreach(var_d84e54db in var_e3b635fb)
	{
		if(function_5b49d38c(var_d84e54db))
		{
			var_d7f9ac76 = function_dc99997a(1, 4);
			switch(var_d7f9ac76)
			{
				case 1:
				{
					var_d84e54db thread namespace_cc27597::function_43718187("cin_gen_xplode_death_1", var_d84e54db);
					break;
				}
				case 2:
				{
					var_d84e54db thread namespace_cc27597::function_43718187("cin_gen_xplode_death_2", var_d84e54db);
					break;
				}
				case 3:
				{
					var_d84e54db thread namespace_cc27597::function_43718187("cin_gen_xplode_death_3", var_d84e54db);
					break;
				}
				case default:
				{
					break;
				}
			}
		}
	}
}

/*
	Name: function_2c27934b
	Namespace: namespace_a660d427
	Checksum: 0x9B656FA9
	Offset: 0x8310
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_2c27934b()
{
	self endon("hash_128f8789");
	level endon("hash_f0f605b4");
	var_e32e572f = namespace_14b42b8a::function_7faf4c39("s_murky_water_target", "targetname");
	var_377a9c22 = function_9b7fda5e("script_model", (0, 0, 0));
	var_377a9c22 function_e48f905e("tag_origin");
	var_377a9c22.var_3a90f16b = 1000;
	var_377a9c22.var_2dd707 = 0;
	while(1)
	{
		if(!isdefined(self.var_6050ab17))
		{
			var_5908c36e = function_26299103(var_e32e572f.size);
			var_f05509e4 = function_72a94f05(0.5, 1.5);
			var_377a9c22.var_722885f3 = var_e32e572f[var_5908c36e].var_722885f3;
			self thread namespace_d84e54db::function_d104c596("normal", var_377a9c22, "tag_origin", var_f05509e4);
			wait(var_f05509e4);
			wait(function_72a94f05(0.2, 0.8));
		}
		else
		{
			wait(0.1);
		}
	}
}

/*
	Name: function_d0b5b3de
	Namespace: namespace_a660d427
	Checksum: 0x1CDC09E
	Offset: 0x84B8
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_d0b5b3de()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_swamp_rail_rpg_warning");
	var_dfcc01fd = function_c4d5ec1f("smaw");
	var_11fd5f3f = namespace_14b42b8a::function_7922262b("swamp_rail_rpg_warning_launch", "targetname");
	var_6beedec9 = namespace_14b42b8a::function_7922262b("swamp_rail_rpg_warning_target", "targetname");
	var_3c91fda1 = function_87f3c622(var_dfcc01fd, var_11fd5f3f.var_722885f3, var_6beedec9.var_722885f3);
}

/*
	Name: function_32bc987b
	Namespace: namespace_a660d427
	Checksum: 0x1BCB35C9
	Offset: 0x8598
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_32bc987b()
{
	self endon("hash_128f8789");
	function_7a078777(self, (0, 0, 0));
	self function_4f87e1b9(-1);
	self.var_3a90f16b = self.var_38a62b0e;
	self namespace_96fa87af::function_da276961();
	self.var_2dd707 = 0;
	self function_8dafb866();
	self function_500dc2f7(50);
	self function_42cddf81(15, 100, 40);
	self.var_d6bc5905 = function_f3087faa("g_quadrotorFlyHeight");
	self.var_a1f56f1f = 0;
	self.var_bea11b80 = 0.574;
	self.var_ffaa44f = 1;
	self.var_b1eb9a34 = self.var_9d34dca7;
	self.var_c1239d26 = namespace_14b42b8a::function_b7af54ae("vehiclecustomsettings", self.var_279dd9e7);
	self.var_7dfaf62 = 300;
	self.var_a1ed1ed1 = 512;
	self function_49e9f3ca();
	self.var_dc29a320 = &function_8fff56d4;
	self thread namespace_72ee5da4::function_21f990bf();
	self namespace_37b990db::function_13bb7eb3(1);
	self namespace_37b990db::function_13bb7eb3(2);
	self namespace_37b990db::function_f4546867(1, 2, 1, 2, 1);
	self namespace_37b990db::function_f4546867(1, 2, 1, 2, 2);
	self namespace_37b990db::function_109c9f9(3, 1);
	self namespace_37b990db::function_109c9f9(3, 2);
}

/*
	Name: function_8fff56d4
	Namespace: namespace_a660d427
	Checksum: 0xB05B822F
	Offset: 0x8808
	Size: 0xB3
	Parameters: 15
	Flags: None
*/
function function_8fff56d4(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_6eb5fc54, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b, var_7419ba1f)
{
	var_7aaca1e8 = namespace_96fa87af::function_53f8d258(self.var_3a90f16b, var_f9a179ed, self.var_38a62b0e);
	return var_f9a179ed;
}

/*
	Name: function_49e9f3ca
	Namespace: namespace_a660d427
	Checksum: 0xFD0D9E96
	Offset: 0x88C8
	Size: 0xED
	Parameters: 0
	Flags: None
*/
function function_49e9f3ca()
{
	self.var_db89a3f4 = [];
	if(!isdefined(self.var_db89a3f4))
	{
		self.var_db89a3f4 = [];
	}
	else if(!function_6e2770d8(self.var_db89a3f4))
	{
		self.var_db89a3f4 = function_84970cc4(self.var_db89a3f4);
	}
	self.var_db89a3f4[self.var_db89a3f4.size] = "tag_rocket1";
	if(!isdefined(self.var_db89a3f4))
	{
		self.var_db89a3f4 = [];
	}
	else if(!function_6e2770d8(self.var_db89a3f4))
	{
		self.var_db89a3f4 = function_84970cc4(self.var_db89a3f4);
	}
	self.var_db89a3f4[self.var_db89a3f4.size] = "tag_rocket2";
}

/*
	Name: function_24ae79ca
	Namespace: namespace_a660d427
	Checksum: 0x9519681F
	Offset: 0x89C0
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_24ae79ca()
{
	level namespace_ad23e503::function_1ab5ebec("boats_ready_to_depart");
	level namespace_ad23e503::function_74d6b22f("boat_rail_begin");
	namespace_d0ef8521::function_31cd1834("cp_level_biodomes_escape");
	var_a03a2e28 = namespace_2f06d687::function_7387a40a("sp_hunter_fuel_truck", &function_fb738343);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a.var_32218fc7 = 1;
	}
}

/*
	Name: function_d54492e
	Namespace: namespace_a660d427
	Checksum: 0xF72119C1
	Offset: 0x8AE0
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_d54492e()
{
	level waittill("hash_b9e8dab9");
	var_a03a2e28 = namespace_2f06d687::function_7387a40a("sp_hunter_wheel_attack", &function_243196a7);
}

/*
	Name: function_2b6be7f7
	Namespace: namespace_a660d427
	Checksum: 0xAEB55B41
	Offset: 0x8B30
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_2b6be7f7()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_hunter_water_explosion");
	var_a03a2e28 = namespace_2f06d687::function_7387a40a("sp_hunter_water_explosion", &function_ce0e4988);
}

/*
	Name: function_dacdabc9
	Namespace: namespace_a660d427
	Checksum: 0x329EB1EA
	Offset: 0x8B88
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_dacdabc9()
{
	namespace_4dbf3ae3::function_1ab5ebec("t_hunter_final_pursuit");
	var_a03a2e28 = namespace_2f06d687::function_7387a40a("sp_hunter_final_pursuit", &function_e0476b5e);
}

/*
	Name: function_fb738343
	Namespace: namespace_a660d427
	Checksum: 0xCA50A10C
	Offset: 0x8BE0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_fb738343()
{
	self endon("hash_128f8789");
	self function_fef374cd();
	var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
	self thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
	self waittill("hash_730b35d8");
	level thread function_5441f2aa();
	self function_bb5ef028("fuel_truck_missile", &function_1393a04d);
	self waittill("hash_df3c116a");
	self function_8f87de5f(0);
	self function_dc8c8404();
}

/*
	Name: function_243196a7
	Namespace: namespace_a660d427
	Checksum: 0x59B7309
	Offset: 0x8CD8
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_243196a7()
{
	self endon("hash_128f8789");
	self function_fef374cd();
	var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
	self thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
	self waittill("hash_36d05dc6");
	wait(0.1);
	self function_bb5ef028("so_ferris_wheel_missiles_1", &function_3cbc42d6);
	wait(0.15);
	self function_bb5ef028("so_ferris_wheel_missiles_1", &function_3cbc42d6);
	wait(0.15);
	self function_bb5ef028("so_ferris_wheel_missiles_2", &function_3cbc42d6);
	wait(0.15);
	self function_bb5ef028("so_ferris_wheel_missiles_3", &function_3cbc42d6);
	wait(0.15);
	self waittill("hash_df3c116a");
	self function_8f87de5f(0);
	self function_dc8c8404();
}

/*
	Name: function_ce0e4988
	Namespace: namespace_a660d427
	Checksum: 0x19DD8516
	Offset: 0x8E60
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_ce0e4988()
{
	self endon("hash_128f8789");
	self function_fef374cd();
	var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
	self thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
	self waittill("hash_48964163");
	self function_bb5ef028("so_swamp_water_explosion_1", &function_8bc51e36);
	self waittill("hash_d68ed228");
	self function_bb5ef028("so_swamp_water_explosion_2", &function_8bc51e36);
	self waittill("hash_fc914c91");
	self function_bb5ef028("so_swamp_water_explosion_3", &function_8bc51e36);
	self waittill("hash_df3c116a");
	self function_8f87de5f(0);
	self function_dc8c8404();
}

/*
	Name: function_bb5ef028
	Namespace: namespace_a660d427
	Checksum: 0x729103C
	Offset: 0x8FB8
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_bb5ef028(var_4e9a9978, var_5d4391a4)
{
	var_377a9c22 = function_99201f25(var_4e9a9978, "targetname");
	self function_3488d445(var_377a9c22[0]);
	self thread function_fd8ffa73(0, var_377a9c22[0], undefined, 0, 0);
	var_973828cf = self thread function_fd8ffa73(1, var_377a9c22[1], undefined, 0, 0);
	var_973828cf thread [[var_5d4391a4]](var_377a9c22[0], var_4e9a9978);
}

/*
	Name: function_e0476b5e
	Namespace: namespace_a660d427
	Checksum: 0x316F76F3
	Offset: 0x9098
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_e0476b5e()
{
	self endon("hash_128f8789");
	self function_fef374cd();
	var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
	self thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
	self waittill("hash_5e08d59e");
	self function_bb5ef028("so_swamp_final_water_explosion_1", &function_8bc51e36);
	self function_bb5ef028("so_swamp_final_water_explosion_1_b", &function_8bc51e36);
	self waittill("hash_38065b35");
	self function_bb5ef028("so_swamp_final_water_explosion_2", &function_8bc51e36);
	self waittill("hash_1203e0cc");
	self function_bb5ef028("so_swamp_final_water_explosion_3", &function_8bc51e36);
	self waittill("hash_df3c116a");
	self function_8f87de5f(0);
	self function_dc8c8404();
}

/*
	Name: function_fd8ffa73
	Namespace: namespace_a660d427
	Checksum: 0x33236FF2
	Offset: 0x9218
	Size: 0x16D
	Parameters: 5
	Flags: None
*/
function function_fd8ffa73(var_e569678c, var_b07228b6, var_a4e8111c, var_d5ccbff6, var_8d0a485e)
{
	self endon("hash_128f8789");
	if(!isdefined(var_a4e8111c))
	{
		var_a4e8111c = VectorScale((0, 0, -1), 10);
	}
	var_34f02e16 = self.var_db89a3f4[var_e569678c];
	var_722885f3 = self function_d48f2ab3(var_34f02e16);
	var_6ab6f4fd = self function_cd1d99bd(var_34f02e16);
	var_1a859714 = function_bc7ce905(var_6ab6f4fd);
	var_b5f6560e = function_aba60185(var_6ab6f4fd);
	if(isdefined(var_34f02e16))
	{
		var_dfcc01fd = function_c4d5ec1f("hunter_rocket_turret_biodomes_cinematic");
		var_4a93c703 = function_87f3c622(var_dfcc01fd, var_722885f3, var_b07228b6.var_722885f3, self, var_b07228b6, var_a4e8111c);
		return var_4a93c703;
	}
}

/*
	Name: function_1393a04d
	Namespace: namespace_a660d427
	Checksum: 0xE8B72ED6
	Offset: 0x9390
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_1393a04d(var_377a9c22, var_deb1fb4d)
{
	self waittill("hash_128f8789");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_swamp_tanker_bundle");
	function_5e09918e("cp_biodomes_fuel_truck_rumble", var_377a9c22.var_722885f3);
	level namespace_ad23e503::function_74d6b22f("swamp_tanker_exploded");
}

/*
	Name: function_8bc51e36
	Namespace: namespace_a660d427
	Checksum: 0x328DCD6D
	Offset: 0x9420
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_8bc51e36(var_377a9c22, var_deb1fb4d)
{
	self waittill("hash_128f8789");
	function_74d7b8e4(var_deb1fb4d, "explosions/fx_exp_rocket_water_lg");
}

/*
	Name: function_3cbc42d6
	Namespace: namespace_a660d427
	Checksum: 0xB65C61D5
	Offset: 0x9468
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_3cbc42d6(var_377a9c22, var_deb1fb4d)
{
	self waittill("hash_128f8789");
	function_74d7b8e4(var_deb1fb4d, "explosions/fx_vexp_hunter_death");
}

/*
	Name: function_36910f4
	Namespace: namespace_a660d427
	Checksum: 0x12C9521B
	Offset: 0x94B0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_36910f4(var_377a9c22, var_deb1fb4d)
{
	self waittill("hash_128f8789");
	function_74d7b8e4(var_deb1fb4d, "explosions/fx_exp_impact_ferriswheel_biodomes");
}

/*
	Name: function_74d7b8e4
	Namespace: namespace_a660d427
	Checksum: 0x24138277
	Offset: 0x94F8
	Size: 0xBD
	Parameters: 2
	Flags: None
*/
function function_74d7b8e4(var_deb1fb4d, var_71ba10df)
{
	var_38fa6e84 = function_99201f25(var_deb1fb4d, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_38fa6e84.size; var_c957f6b6++)
	{
		function_fd4ba5e1(var_71ba10df, var_38fa6e84[var_c957f6b6].var_722885f3, function_bc7ce905(var_38fa6e84[var_c957f6b6].var_6ab6f4fd), (0, 0, 1));
	}
}

/*
	Name: function_2297c05c
	Namespace: namespace_a660d427
	Checksum: 0x8EA9FCF3
	Offset: 0x95C0
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function function_2297c05c()
{
	self endon("hash_128f8789");
	while(1)
	{
		if(isdefined(self.var_6050ab17) && self function_4246bc05(self.var_6050ab17))
		{
			if(function_72a94f05(0, 1) < 0.45)
			{
				if(function_cb3d1c9b(self.var_6050ab17.var_722885f3, self.var_722885f3) < 0.5 * self.var_c1239d26.var_4d52f4f4 + self.var_c1239d26.var_ca67b2ea * 3 * 0.5 * self.var_c1239d26.var_4d52f4f4 + self.var_c1239d26.var_ca67b2ea * 3)
				{
					self function_3488d445(self.var_6050ab17);
					self namespace_72ee5da4::function_afb82faf(function_72a94f05(0.2, 0.4));
				}
			}
		}
		wait(0.45);
	}
}

/*
	Name: function_bfeb301d
	Namespace: namespace_a660d427
	Checksum: 0x71FB3860
	Offset: 0x9720
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_bfeb301d()
{
	namespace_4dbf3ae3::function_1ab5ebec("trigger_outpost");
	var_41063076 = function_99201f25("outpost_clips", "script_noteworthy");
	foreach(var_b340b98b in var_41063076)
	{
		var_b340b98b function_dc8c8404();
	}
	var_a8ebd745 = function_6ada35ba("outpost_crash", "targetname");
	if(isdefined(var_a8ebd745))
	{
		var_a8ebd745 function_dc8c8404();
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_outpost_boat_crash_bundle");
}

/*
	Name: function_53ae4df
	Namespace: namespace_a660d427
	Checksum: 0x366D259F
	Offset: 0x9868
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_53ae4df(var_c358c3f9)
{
	self endon("hash_643a7daf");
	var_c358c3f9 waittill("hash_4dbf3ae3");
	self function_e2af603e("cp_biodomes_jump_land_rumble");
	self namespace_71e9cb84::function_688ed188("sound_evt_boat_rattle");
}

/*
	Name: function_aa88dfc2
	Namespace: namespace_a660d427
	Checksum: 0x7D8C0A10
	Offset: 0x98D8
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_aa88dfc2(var_c77d2837)
{
	if(level.var_9b1393e7.size < 3 && (!isdefined(level.var_3599083d) && level.var_3599083d))
	{
		var_c77d2837["boat2"] function_50ccee8d();
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_a44e19db = "boat" + var_5dc5e20a.var_462738ee;
		var_294306eb = function_6150ee85(var_a44e19db, var_5dc5e20a.var_8b449b0f);
		if(isdefined(var_294306eb))
		{
			level thread namespace_cc27597::function_43718187(var_294306eb, var_5dc5e20a);
		}
	}
}

/*
	Name: function_6150ee85
	Namespace: namespace_a660d427
	Checksum: 0x345DF16C
	Offset: 0x9A28
	Size: 0xF3
	Parameters: 2
	Flags: None
*/
function function_6150ee85(var_a44e19db, var_8b449b0f)
{
	var_294306eb = undefined;
	if(var_a44e19db == "boat1" && var_8b449b0f == 1)
	{
		var_294306eb = "cin_bio_16_01_slide_1st_slammed_p1";
	}
	else if(var_a44e19db == "boat1" && var_8b449b0f == 2)
	{
		var_294306eb = "cin_bio_16_01_slide_1st_slammed_p3";
	}
	else if(var_a44e19db == "boat2" && var_8b449b0f == 1)
	{
		var_294306eb = "cin_bio_16_01_slide_1st_slammed_p2";
	}
	else if(var_a44e19db == "boat2" && var_8b449b0f == 2)
	{
		var_294306eb = "cin_bio_16_01_slide_1st_slammed_p4";
	}
	return var_294306eb;
}

/*
	Name: function_3d026c12
	Namespace: namespace_a660d427
	Checksum: 0x80EBBF1D
	Offset: 0x9B28
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function function_3d026c12()
{
	var_91904b90 = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < 2; var_c957f6b6++)
	{
		var_841b0143 = namespace_82b91a51::function_b9fd52a4("veh_t7_mil_boat_fan_54i_wet");
		var_841b0143 function_50ccee8d();
		if(!isdefined(var_91904b90))
		{
			var_91904b90 = [];
		}
		else if(!function_6e2770d8(var_91904b90))
		{
			var_91904b90 = function_84970cc4(var_91904b90);
		}
		var_91904b90[var_91904b90.size] = var_841b0143;
		wait(0.05);
	}
	self waittill("hash_81b0321b");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	level thread namespace_4fe3eef1::function_9908d262("mus_biodomes_battle_intro");
	level thread function_245722ce();
	level.var_2fd26037 function_dc8c8404();
	level.var_2fd26037 = undefined;
	var_cd9c6d30 = [];
	var_cd9c6d30["boat1"] = var_91904b90[0];
	var_cd9c6d30["boat1"] function_48f26766();
	if(level.var_c141dfcb.size > 1)
	{
		var_cd9c6d30["boat2"] = var_91904b90[1];
		var_cd9c6d30["boat2"] function_48f26766();
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_91c8e9a9) && var_5dc5e20a.var_91c8e9a9 && isdefined(var_5dc5e20a.var_ef4daaa5))
		{
			var_5dc5e20a.var_ef4daaa5 function_16337f9e(var_5dc5e20a, 0);
		}
	}
	thread function_7e40793c();
	level namespace_cc27597::function_fcf56ab5("cin_bio_15_03_waterpark_vign_lean_center");
	if(isdefined(level.var_167fa382))
	{
		level thread [[level.var_167fa382]]();
	}
	level thread namespace_76133733::function_a6bf2d53();
	level namespace_cc27597::function_8f9f34e0("cin_bio_16_01_slide_1st_slammed", &function_aa88dfc2, "play");
	level thread namespace_cc27597::function_43718187("cin_bio_16_01_slide_1st_slammed", var_cd9c6d30);
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_biodomes_sky_bridge_bundle");
}

/*
	Name: function_7e40793c
	Namespace: namespace_a660d427
	Checksum: 0x9B916054
	Offset: 0x9ED0
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_7e40793c()
{
	foreach(var_3608e520 in level.var_c141dfcb)
	{
		if(isdefined(var_3608e520))
		{
			var_3608e520 function_8c8e79fe();
			var_3608e520 function_422037f5();
		}
	}
	wait(1);
	foreach(var_3608e520 in level.var_c141dfcb)
	{
		if(isdefined(var_3608e520))
		{
			var_3608e520 function_dc8c8404();
		}
	}
}

/*
	Name: function_863f4586
	Namespace: namespace_a660d427
	Checksum: 0x9C2FD8E5
	Offset: 0xA018
	Size: 0x8D
	Parameters: 1
	Flags: None
*/
function function_863f4586(var_c77d2837)
{
	if(isdefined(var_c77d2837["sp_hunter_sky_bridge"]))
	{
		wait(0.5);
		for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
		{
			var_c77d2837["sp_hunter_sky_bridge"] function_bb5ef028("so_sky_bridge_missiles_1", &function_36910f4);
			wait(0.5);
		}
	}
}

/*
	Name: function_245722ce
	Namespace: namespace_a660d427
	Checksum: 0xF50346B3
	Offset: 0xA0B0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_245722ce()
{
	namespace_769dc23f::function_ed573577();
	level waittill("hash_8fd3985");
	function_6c1294b8("phys_buoyancy", 0);
	function_6c1294b8("cg_viewVehicleInfluenceGunner_mode", 0);
	namespace_82b91a51::function_7e61de2b(1);
	wait(0.5);
	namespace_1d795d47::function_be8adfb8("objective_swamps");
}

/*
	Name: function_36e4a4e3
	Namespace: namespace_a660d427
	Checksum: 0xE3E2B02D
	Offset: 0xA148
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_36e4a4e3(var_ef7c9f46)
{
	var_c917e48d = namespace_14b42b8a::function_7faf4c39(var_ef7c9f46, "targetname");
	level thread namespace_84970cc4::function_57dd1fd4(var_c917e48d, &function_ea7f9b48);
}

/*
	Name: function_ea7f9b48
	Namespace: namespace_a660d427
	Checksum: 0x60CBC522
	Offset: 0xA1B8
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_ea7f9b48()
{
	namespace_cc27597::function_c35e6aab(self.var_1157a889);
	if(!isdefined(self.var_f8456b37))
	{
		self.var_f8456b37 = 448;
	}
	if(!isdefined(self.var_e363b850))
	{
		self.var_e363b850 = 400;
	}
	var_8b856a66 = function_5ec7eb7d(self.var_722885f3, self.var_f8456b37, self.var_e363b850);
	while(1)
	{
		var_8b856a66 waittill("hash_4dbf3ae3", var_886ca8c3);
		if(var_886ca8c3.var_170527fb == "airboat_2_vh" && level.var_de54cf10)
		{
			continue;
		}
		namespace_cc27597::function_43718187(self.var_1157a889);
		var_8b856a66 function_dc8c8404();
		break;
	}
}

/*
	Name: function_35a6217a
	Namespace: namespace_a660d427
	Checksum: 0x70F80B96
	Offset: 0xA2C8
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_35a6217a(var_cbb15570, var_65f020d3)
{
	if(!isdefined(var_65f020d3))
	{
		var_65f020d3 = undefined;
	}
	var_461bd72d = namespace_14b42b8a::function_7922262b(var_cbb15570, "targetname");
	var_461bd72d thread function_81e1861d(var_65f020d3);
}

/*
	Name: function_81e1861d
	Namespace: namespace_a660d427
	Checksum: 0x6191CE1F
	Offset: 0xA340
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_81e1861d(var_65f020d3)
{
	namespace_cc27597::function_c35e6aab(self.var_1157a889);
	var_2eb20475 = function_6ada35ba("t_" + self.var_170527fb + "_damage", "targetname");
	while(1)
	{
		var_2eb20475 waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_102e3d58, var_dd89f865, var_fe311e35, var_cd9517d2, var_f10f645, var_f105c26b, var_dfcc01fd);
		if(function_65f192a6(var_a0ad4f34))
		{
			if(isdefined(var_65f020d3))
			{
				level thread [[var_65f020d3]]();
			}
			namespace_cc27597::function_43718187(self.var_1157a889);
			namespace_769dc23f::function_b5cf7b68();
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_5ec7eb7d
	Namespace: namespace_a660d427
	Checksum: 0xDF8CDA40
	Offset: 0xA4A0
	Size: 0x1A7
	Parameters: 5
	Flags: None
*/
function function_5ec7eb7d(var_88fd65d, var_562b538e, var_5b1ebb35, var_9a868e4d, var_694b7da)
{
	if(!isdefined(var_9a868e4d))
	{
		var_9a868e4d = 0;
	}
	if(!isdefined(var_694b7da))
	{
		var_694b7da = "trigger_radius";
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_88fd65d), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_562b538e), "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_5b1ebb35), "Dev Block strings are not supported");
	#/
	var_da697227 = function_9b7fda5e(var_694b7da, var_88fd65d, function_d4a3aef4(), var_562b538e, var_5b1ebb35);
	var_da697227 function_1d5013fa();
	var_da697227 function_bb863f19();
	var_da697227 function_dc378587("none");
	var_da697227 function_1f80b3d5();
	if(var_694b7da == "trigger_radius_use")
	{
		var_da697227 function_e68ee88a("HINT_NOICON");
	}
	return var_da697227;
}

/*
	Name: function_1f3c3c34
	Namespace: namespace_a660d427
	Checksum: 0xDDDC7C52
	Offset: 0xA650
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_1f3c3c34(var_ef7c9f46)
{
	namespace_cc27597::function_c35e6aab(self.var_1157a889);
	level waittill(var_ef7c9f46);
	namespace_cc27597::function_43718187(self.var_1157a889);
}

/*
	Name: function_39af75ef
	Namespace: namespace_a660d427
	Checksum: 0x3D7AA528
	Offset: 0xA6A0
	Size: 0x18F
	Parameters: 1
	Flags: None
*/
function function_39af75ef(var_aa686173)
{
	self endon("hash_643a7daf");
	while(1)
	{
		if(isdefined(self.var_564407fb) && self.var_564407fb || !function_5b49d38c(self))
		{
			while(isdefined(self.var_564407fb) && self.var_564407fb || !function_5b49d38c(self))
			{
				wait(0.05);
			}
			self.var_5ea9c8b7 = undefined;
		}
		if(self function_8213df59() && (!isdefined(self.var_5ea9c8b7) && self.var_5ea9c8b7))
		{
			self.var_5ea9c8b7 = 1;
			self thread namespace_71e9cb84::function_e9c3870b("set_underwater_fx", 1);
			self thread namespace_419e977d::function_e9b126ef();
		}
		else if(!self function_8213df59() && (isdefined(self.var_5ea9c8b7) && self.var_5ea9c8b7))
		{
			self.var_5ea9c8b7 = undefined;
			self thread namespace_71e9cb84::function_e9c3870b("set_underwater_fx", 0);
			self thread namespace_419e977d::function_60455f28("o2");
		}
		wait(0.05);
	}
}

/*
	Name: function_400cc8f4
	Namespace: namespace_a660d427
	Checksum: 0xF08EE328
	Offset: 0xA838
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_400cc8f4()
{
	namespace_4dbf3ae3::function_1ab5ebec("trig_hide_dock_fxanims", "targetname");
	function_9e3608e3("fxanim_swamp01");
}

/*
	Name: function_312d4b85
	Namespace: namespace_a660d427
	Checksum: 0x772EE117
	Offset: 0xA880
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_312d4b85()
{
	level.var_c141dfcb[0] namespace_96fa87af::function_2d1ff508(1, 1);
	level.var_c141dfcb[1] namespace_96fa87af::function_2d1ff508(1, 1);
	level.var_c141dfcb[0] namespace_96fa87af::function_2d1ff508(2, 0);
	level.var_c141dfcb[1] namespace_96fa87af::function_2d1ff508(2, 0);
}

/*
	Name: function_c5f21db5
	Namespace: namespace_a660d427
	Checksum: 0xAFE0F617
	Offset: 0xA930
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_c5f21db5()
{
	level.var_c141dfcb[0] namespace_96fa87af::function_2d1ff508(1, 0);
	level.var_c141dfcb[1] namespace_96fa87af::function_2d1ff508(1, 0);
	level.var_c141dfcb[0] namespace_96fa87af::function_2d1ff508(2, 1);
	level.var_c141dfcb[1] namespace_96fa87af::function_2d1ff508(2, 1);
}

